@interface FKBankConnectImageProvider
- (FKBankConnectImageProvider)init;
- (void)logoForInstitutionID:(id)d size:(CGSize)size scale:(double)scale completion:(id)completion;
@end

@implementation FKBankConnectImageProvider

- (FKBankConnectImageProvider)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectImageProvider;
  v2 = [(FKBankConnectImageProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageProvider = v2->_imageProvider;
    v2->_imageProvider = v3;
  }

  return v2;
}

- (void)logoForInstitutionID:(id)d size:(CGSize)size scale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  imageProvider = self->_imageProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__FKBankConnectImageProvider_logoForInstitutionID_size_scale_completion___block_invoke;
  v14[3] = &unk_278A54EA0;
  v15 = completionCopy;
  v13 = completionCopy;
  [(BankConnectImageProvider *)imageProvider logoFor:d size:v14 scale:width completionHandler:height, scale];
}

@end