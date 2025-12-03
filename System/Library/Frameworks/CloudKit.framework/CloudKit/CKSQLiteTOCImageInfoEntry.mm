@interface CKSQLiteTOCImageInfoEntry
- (BOOL)isEqual:(id)equal;
- (CKSQLiteTOCImageInfoEntry)initWithImageName:(const char *)name uuid:(unsigned __int8)uuid[16];
- (CKSQLiteTOCImageInfoEntry)initWithSharedCache;
@end

@implementation CKSQLiteTOCImageInfoEntry

- (CKSQLiteTOCImageInfoEntry)initWithSharedCache
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CKSQLiteTOCImageInfoEntry;
  v2 = [(CKSQLiteTOCImageInfoEntry *)&v14 init];
  if (v2)
  {
    v15[0] = 0;
    v15[1] = 0;
    if (_dyld_get_shared_cache_uuid())
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      v5 = objc_msgSend_initWithUUIDBytes_(v3, v4, v15);
      uuid = v2->_uuid;
      v2->_uuid = v5;

      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = dyld_shared_cache_file_path();
      v10 = objc_msgSend_initWithUTF8String_(v7, v9, v8);
      name = v2->_name;
      v2->_name = v10;
    }

    else
    {
      name = v2;
      v2 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

- (CKSQLiteTOCImageInfoEntry)initWithImageName:(const char *)name uuid:(unsigned __int8)uuid[16]
{
  v16.receiver = self;
  v16.super_class = CKSQLiteTOCImageInfoEntry;
  v6 = [(CKSQLiteTOCImageInfoEntry *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_msgSend_initWithUTF8String_(v7, v8, name);
    name = v6->_name;
    v6->_name = v9;

    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v13 = objc_msgSend_initWithUUIDBytes_(v11, v12, uuid);
    uuid = v6->_uuid;
    v6->_uuid = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (objc_msgSend_isEqual_(self->_uuid, v5, equalCopy[3]))
  {
    isEqual = objc_msgSend_isEqual_(self->_name, v6, equalCopy[2]);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end