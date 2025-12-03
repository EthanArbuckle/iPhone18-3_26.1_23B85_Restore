@interface CKPreSharingContext
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (CKPreSharingContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPreSharingContext

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.cloudkit.sharingsupport.pre";
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
  v5[0] = @"com.apple.cloudkit.sharingsupport.pre";
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

- (CKPreSharingContext)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CKPreSharingContext;
  return [(CKSharingContext *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CKPreSharingContext;
  [(CKSharingContext *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CKPreSharingContext;
  return [(CKSharingContext *)&v4 copyWithZone:zone];
}

@end