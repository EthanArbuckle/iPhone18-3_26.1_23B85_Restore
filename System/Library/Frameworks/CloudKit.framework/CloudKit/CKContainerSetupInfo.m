@interface CKContainerSetupInfo
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (CKAccountOverrideInfo)accountOverrideInfo;
- (CKContainerSetupInfo)initWithCoder:(id)a3;
- (CKContainerSetupInfo)initWithContainerID:(id)a3 options:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutAccountInfo;
- (id)hashString;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)_stripAccountInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKContainerSetupInfo

- (id)hashString
{
  v12 = 0;
  v4 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, self, 0, &v12);
  v7 = v4;
  if (v12 || (objc_msgSend_CKSHA256(v4, v5, v6), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKContainerSetupInfo.m", 55, @"Couldn't encode %@", self);

    v10 = 0;
  }

  return v10;
}

- (CKAccountOverrideInfo)accountOverrideInfo
{
  v3 = objc_msgSend_containerOptions(self, a2, v2);
  v6 = objc_msgSend_accountOverrideInfo(v3, v4, v5);

  return v6;
}

- (CKContainerSetupInfo)initWithContainerID:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CKContainerSetupInfo;
  v10 = [(CKContainerSetupInfo *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    containerID = v10->_containerID;
    v10->_containerID = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    containerOptions = v10->_containerOptions;
    v10->_containerOptions = v15;
  }

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_containerID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_containerOptions(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_containerID(self, v6, v7);
      v11 = objc_msgSend_containerID(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_containerOptions(self, v13, v14);
        v18 = objc_msgSend_containerOptions(v5, v16, v17);
        isEqual = objc_msgSend_isEqual_(v15, v19, v18);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_containerID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"containerID", v7, 0);

  v11 = objc_msgSend_containerOptions(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v12, @"containerOptions", v11, 0);

  v16 = objc_msgSend_accountOverrideInfo(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v15, @"accountOverrideInfo", v16, 1);
}

- (id)copyWithoutAccountInfo
{
  v3 = objc_msgSend_copy(self, a2, v2);
  objc_msgSend__stripAccountInfo(v3, v4, v5);
  return v3;
}

- (void)_stripAccountInfo
{
  v4 = objc_msgSend_containerOptions(self, a2, v2);
  objc_msgSend_setAccountOverrideInfo_(v4, v5, 0);

  v9 = objc_msgSend_containerOptions(self, v6, v7);
  objc_msgSend_setPersona_(v9, v8, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKContainerSetupInfo alloc];
  v7 = objc_msgSend_containerID(self, v5, v6);
  v10 = objc_msgSend_containerOptions(self, v8, v9);
  v12 = objc_msgSend_initWithContainerID_options_(v4, v11, v7, v10);

  return v12;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.cloudkit.sharingsupport.container";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v5, 1);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = objc_opt_class();
  v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v9, v8, v7, a5);

  return v10;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.cloudkit.sharingsupport.container";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v5, 1);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = a4;
  v10 = 0;
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, self, 1, &v10);
  v8 = v10;
  if (v5)
  {
    v5[2](v5, v7, v8);
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerID(self, v5, v6);
  v8 = NSStringFromSelector(sel_containerID);
  objc_msgSend_encodeObject_forKey_(v15, v9, v7, v8);

  v12 = objc_msgSend_containerOptions(self, v10, v11);
  v13 = NSStringFromSelector(sel_containerOptions);
  objc_msgSend_encodeObject_forKey_(v15, v14, v12, v13);

  objc_autoreleasePoolPop(v4);
}

- (CKContainerSetupInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_containerID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_containerOptions);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v9, v10);

  v14 = objc_msgSend_initWithContainerID_options_(self, v13, v8, v12);
  return v14;
}

@end