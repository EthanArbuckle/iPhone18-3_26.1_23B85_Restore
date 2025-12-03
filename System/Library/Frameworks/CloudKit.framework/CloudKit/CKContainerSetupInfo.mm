@interface CKContainerSetupInfo
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CKAccountOverrideInfo)accountOverrideInfo;
- (CKContainerSetupInfo)initWithCoder:(id)coder;
- (CKContainerSetupInfo)initWithContainerID:(id)d options:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutAccountInfo;
- (id)hashString;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)_stripAccountInfo;
- (void)encodeWithCoder:(id)coder;
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

- (CKContainerSetupInfo)initWithContainerID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = CKContainerSetupInfo;
  v10 = [(CKContainerSetupInfo *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(dCopy, v8, v9);
    containerID = v10->_containerID;
    v10->_containerID = v11;

    v15 = objc_msgSend_copy(optionsCopy, v13, v14);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_containerID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"containerID", v7, 0);

  v11 = objc_msgSend_containerOptions(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"containerOptions", v11, 0);

  v16 = objc_msgSend_accountOverrideInfo(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v15, @"accountOverrideInfo", v16, 1);
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

- (id)copyWithZone:(_NSZone *)zone
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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v8 = objc_opt_class();
  v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v9, v8, dataCopy, error);

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

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = 0;
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, self, 1, &v10);
  v8 = v10;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7, v8);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerID(self, v5, v6);
  v8 = NSStringFromSelector(sel_containerID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_containerOptions(self, v10, v11);
  v13 = NSStringFromSelector(sel_containerOptions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  objc_autoreleasePoolPop(v4);
}

- (CKContainerSetupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_containerID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_containerOptions);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v9, v10);

  v14 = objc_msgSend_initWithContainerID_options_(self, v13, v8, v12);
  return v14;
}

@end