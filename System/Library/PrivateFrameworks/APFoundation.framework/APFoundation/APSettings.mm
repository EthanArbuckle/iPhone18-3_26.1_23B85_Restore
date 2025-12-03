@interface APSettings
+ (NSMapTable)mapTable;
+ (id)settings;
+ (id)storageWithDefaultValues:(id)values;
- (APSettings)init;
- (id)_gatherSubclassProperties;
- (id)_namespacedKey:(id)key;
- (id)_propertyNameFromSetSelectorString:(id)string;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (void)forwardInvocation:(id)invocation;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)synchronize;
@end

@implementation APSettings

+ (id)settings
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8 = objc_msgSend_mapTable(self, v5, v6, v7);
  objc_sync_enter(v8);
  v11 = objc_msgSend_objectForKey_(v8, v9, v4, v10);
  if (!v11)
  {
    v11 = objc_alloc_init(objc_opt_class());
    if (v11)
    {
      objc_msgSend_setObject_forKey_(v8, v12, v11, v4);
    }

    else
    {
      v13 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "Failed to initialize settings storage.", v15, 2u);
      }

      v11 = 0;
    }
  }

  objc_sync_exit(v8);

  return v11;
}

+ (NSMapTable)mapTable
{
  if (qword_1EDBA4118 != -1)
  {
    sub_1BAF8DDD4();
  }

  v3 = qword_1EDBA41D0;

  return v3;
}

- (id)_gatherSubclassProperties
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyPropertyList(v2, &outCount);
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_initWithCapacity_(v4, v5, outCount, v6);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = MEMORY[0x1E696AEC0];
      Name = property_getName(v3[i]);
      v13 = objc_msgSend_stringWithUTF8String_(v9, v11, Name, v12);
      objc_msgSend_addObject_(v7, v14, v13, v15);
    }
  }

  free(v3);

  return v7;
}

- (APSettings)init
{
  v14.receiver = self;
  v14.super_class = APSettings;
  v2 = [(APSettings *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v7 = objc_msgSend_defaultValues(v3, v4, v5, v6);
    v8 = objc_opt_class();
    v11 = objc_msgSend_storageWithDefaultValues_(v8, v9, v7, v10);
    storage = v2->_storage;
    v2->_storage = v11;
  }

  return v2;
}

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [APSettingsStorageFile alloc];
  v7 = objc_msgSend_initWithDefaultValues_(v4, v5, valuesCopy, v6);

  return v7;
}

- (void)synchronize
{
  v7 = objc_msgSend_storage(self, a2, v2, v3);
  objc_msgSend_synchronize(v7, v4, v5, v6);
}

- (id)_namespacedKey:(id)key
{
  v3 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = objc_msgSend_stringWithFormat_(v3, v7, @"%@%@%@", v8, v6, @".", keyCopy);

  return v9;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend__gatherSubclassProperties(self, v5, v6, v7);
  if (objc_msgSend_containsObject_(v8, v9, keyCopy, v10))
  {
    v14 = objc_msgSend_storage(self, v11, v12, v13);
    v17 = objc_msgSend__namespacedKey_(self, v15, keyCopy, v16);
    v20 = objc_msgSend_valueForKey_(v14, v18, v17, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v10 = objc_msgSend__gatherSubclassProperties(self, v7, v8, v9);
  if (objc_msgSend_containsObject_(v10, v11, keyCopy, v12))
  {
    v16 = objc_msgSend_storage(self, v13, v14, v15);
    v19 = objc_msgSend__namespacedKey_(self, v17, keyCopy, v18);
    objc_msgSend_setValue_forKey_(v16, v20, valueCopy, v19);
  }
}

- (id)_propertyNameFromSetSelectorString:(id)string
{
  v4 = objc_msgSend_substringFromIndex_(string, a2, 3, v3);
  v8 = objc_msgSend_length(v4, v5, v6, v7);
  v11 = objc_msgSend_substringToIndex_(v4, v9, v8 - 1, v10);

  v14 = objc_msgSend_substringToIndex_(v11, v12, 1, v13);
  v18 = objc_msgSend_lowercaseString(v14, v15, v16, v17);
  v21 = objc_msgSend_substringFromIndex_(v11, v19, 1, v20);
  v24 = objc_msgSend_stringByAppendingString_(v18, v22, v21, v23);

  return v24;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v8 = objc_msgSend_selector(invocationCopy, v5, v6, v7);
  v9 = NSStringFromSelector(v8);
  if (objc_msgSend_hasPrefix_(v9, v10, @"set", v11))
  {
    v14 = objc_msgSend__propertyNameFromSetSelectorString_(self, v12, v9, v13);
    v22 = 0;
    objc_msgSend_getArgument_atIndex_(invocationCopy, v15, &v22, 2);

    objc_msgSend_setValue_forUndefinedKey_(self, v16, v22, v14);
  }

  else
  {
    v22 = objc_msgSend_valueForUndefinedKey_(self, v12, v9, v13);
    objc_msgSend_retainArguments(invocationCopy, v17, v18, v19);
    objc_msgSend_setReturnValue_(invocationCopy, v20, &v22, v21);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = NSStringFromSelector(selector);
  v9 = objc_msgSend__gatherSubclassProperties(self, v6, v7, v8);
  if (objc_msgSend_hasPrefix_(v5, v10, @"set", v11))
  {
    v14 = objc_msgSend__propertyNameFromSetSelectorString_(self, v12, v5, v13);
    if (objc_msgSend_containsObject_(v9, v15, v14, v16))
    {
      v19 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v17, "v@:@", v18);

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!objc_msgSend_containsObject_(v9, v12, v5, v13))
  {
LABEL_7:
    v24.receiver = self;
    v24.super_class = APSettings;
    v22 = [(APSettings *)&v24 methodSignatureForSelector:selector];
    goto LABEL_8;
  }

  v22 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v20, "@@:", v21);
LABEL_8:
  v19 = v22;
LABEL_9:

  return v19;
}

@end