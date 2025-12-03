@interface AAInheritanceContactController
- (AAInheritanceContactController)initWithContactInfo:(id)info contactType:(int64_t)type;
- (NSString)accessKeyString;
- (NSString)claimTokenString;
- (id)_accessKeyQRCodeImage;
- (id)accessKeyQRCodeImageDataWithSize:(double)size;
- (void)removeContactAsBenefactorWithCompletion:(id)completion;
- (void)removeContactAsBeneficiaryWithCompletion:(id)completion;
- (void)sendInvitationWithCompletion:(id)completion;
@end

@implementation AAInheritanceContactController

- (AAInheritanceContactController)initWithContactInfo:(id)info contactType:(int64_t)type
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = AAInheritanceContactController;
  v8 = [(AAInheritanceContactController *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(AAInheritanceController);
    inheritanceController = v8->_inheritanceController;
    v8->_inheritanceController = v9;

    objc_storeStrong(&v8->_contactInfo, info);
    v8->_contactType = type;
  }

  return v8;
}

- (NSString)claimTokenString
{
  accessKey = [(AAInheritanceContactInfo *)self->_contactInfo accessKey];
  claimTokenString = [accessKey claimTokenString];

  return claimTokenString;
}

- (NSString)accessKeyString
{
  v3 = MEMORY[0x1E696AEC0];
  accessKey = [(AAInheritanceContactInfo *)self->_contactInfo accessKey];
  claimTokenString = [accessKey claimTokenString];
  accessKey2 = [(AAInheritanceContactInfo *)self->_contactInfo accessKey];
  wrappingKeyString = [accessKey2 wrappingKeyString];
  v8 = [v3 stringWithFormat:@"%@-%@", claimTokenString, wrappingKeyString];

  return v8;
}

- (id)accessKeyQRCodeImageDataWithSize:(double)size
{
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, size, size);
  _accessKeyQRCodeImage = [(AAInheritanceContactController *)self _accessKeyQRCodeImage];
  v11 = v12;
  v5 = [_accessKeyQRCodeImage imageByApplyingTransform:&v11];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v6 = getCIContextClass_softClass;
  v16 = getCIContextClass_softClass;
  if (!getCIContextClass_softClass)
  {
    *&v11.a = MEMORY[0x1E69E9820];
    *&v11.b = 3221225472;
    *&v11.c = __getCIContextClass_block_invoke;
    *&v11.d = &unk_1E7C9AE88;
    *&v11.tx = &v13;
    __getCIContextClass_block_invoke(&v11);
    v6 = v14[3];
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);
  v8 = objc_opt_new();
  v9 = [v8 JPEGRepresentationOfImage:v5 colorSpace:CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]) options:MEMORY[0x1E695E0F8]];

  return v9;
}

- (id)_accessKeyQRCodeImage
{
  accessKeyQRCodeImage = self->_accessKeyQRCodeImage;
  if (!accessKeyQRCodeImage)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v4 = getCIFilterClass_softClass;
    v17 = getCIFilterClass_softClass;
    if (!getCIFilterClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getCIFilterClass_block_invoke;
      v13[3] = &unk_1E7C9AE88;
      v13[4] = &v14;
      __getCIFilterClass_block_invoke(v13);
      v4 = v15[3];
    }

    v5 = v4;
    _Block_object_dispose(&v14, 8);
    v6 = [v4 filterWithName:@"CIQRCodeGenerator"];
    accessKey = [(AAInheritanceContactInfo *)self->_contactInfo accessKey];
    wrappingKeyString = [accessKey wrappingKeyString];
    v9 = [wrappingKeyString dataUsingEncoding:1];

    [v6 setValue:v9 forKey:@"inputMessage"];
    outputImage = [v6 outputImage];
    v11 = self->_accessKeyQRCodeImage;
    self->_accessKeyQRCodeImage = outputImage;

    accessKeyQRCodeImage = self->_accessKeyQRCodeImage;
  }

  return accessKeyQRCodeImage;
}

- (void)removeContactAsBeneficiaryWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contactType = self->_contactType;
  v6 = _AALogSystem();
  v7 = v6;
  if ((contactType & 4) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "%@ : Removing Beneficiary...", &v11, 0xCu);
    }

    [(AAInheritanceController *)self->_inheritanceController removeBeneficiary:self->_contactInfo manifest:0 completion:completionCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAInheritanceContactController removeContactAsBeneficiaryWithCompletion:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeContactAsBenefactorWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contactType = self->_contactType;
  v6 = _AALogSystem();
  v7 = v6;
  if ((contactType & 8) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "%@ : Removing Benefactor...", &v11, 0xCu);
    }

    [(AAInheritanceController *)self->_inheritanceController removeBenefactor:self->_contactInfo completion:completionCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAInheritanceContactController removeContactAsBenefactorWithCompletion:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendInvitationWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    handle = [(AAInheritanceContactInfo *)self->_contactInfo handle];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = handle;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "%@ : Sending invitation to %@ ...", &v10, 0x16u);
  }

  [(AAInheritanceController *)self->_inheritanceController sendInvitationToContact:self->_contactInfo completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeContactAsBeneficiaryWithCompletion:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "%@ : The contact is not a beneficiary. Aborting removeBeneficiary call!", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeContactAsBenefactorWithCompletion:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "%@ : The contact is not a benefactor. Aborting removeBenefactor call!", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end