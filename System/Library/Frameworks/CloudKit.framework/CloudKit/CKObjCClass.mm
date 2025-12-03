@interface CKObjCClass
+ (id)classForHandle:(Class)handle;
+ (id)classForObject:(id)object;
- (CKObjCClass)initWithHandle:(Class)handle;
- (id)description;
- (id)propertyForName:(id)name;
@end

@implementation CKObjCClass

+ (id)classForHandle:(Class)handle
{
  v4 = NSStringFromClass(handle);
  if (qword_1ED4B6298 != -1)
  {
    dispatch_once(&qword_1ED4B6298, &unk_1EFA2F4A8);
  }

  v5 = qword_1ED4B62A0;
  objc_sync_enter(v5);
  v7 = objc_msgSend_objectForKey_(qword_1ED4B62A0, v6, v4);
  if (!v7)
  {
    v8 = [CKObjCClass alloc];
    v7 = objc_msgSend_initWithHandle_(v8, v9, handle);
    objc_msgSend_setObject_forKey_(qword_1ED4B62A0, v10, v7, v4);
  }

  objc_sync_exit(v5);

  return v7;
}

+ (id)classForObject:(id)object
{
  v4 = objc_opt_class();

  return objc_msgSend_classForHandle_(CKObjCClass, v3, v4);
}

- (CKObjCClass)initWithHandle:(Class)handle
{
  v5 = NSStringFromClass(handle);
  outCount = 0;
  v6 = class_copyPropertyList(handle, &outCount);
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = objc_msgSend_initWithCapacity_(v7, v8, outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v11 = sub_1885B0468([CKObjCProperty alloc], handle, v6[i]);
      objc_msgSend_addObject_(v9, v12, v11);
    }
  }

  free(v6);
  v20.receiver = self;
  v20.super_class = CKObjCClass;
  v13 = [(CKObjCClass *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_handle, handle);
    objc_storeStrong(&v14->_name, v5);
    v17 = objc_msgSend_copy(v9, v15, v16);
    properties = v14->_properties;
    v14->_properties = v17;
  }

  return v14;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_name(self, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"<%@: %p>", v5, self);

  return v7;
}

- (id)propertyForName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_properties(self, v5, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885B03C4;
  v12[3] = &unk_1E70BEA70;
  v13 = nameCopy;
  v8 = nameCopy;
  v10 = objc_msgSend_CKFirstObjectPassingTest_(v7, v9, v12);

  return v10;
}

@end