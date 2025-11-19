@interface CKPreSharingContext
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (CKPreSharingContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
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
  v5[0] = @"com.apple.cloudkit.sharingsupport.pre";
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

- (CKPreSharingContext)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPreSharingContext;
  return [(CKSharingContext *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKPreSharingContext;
  [(CKSharingContext *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CKPreSharingContext;
  return [(CKSharingContext *)&v4 copyWithZone:a3];
}

@end