@interface FKBankConnectImageProvider
- (FKBankConnectImageProvider)init;
- (void)logoForInstitutionID:(id)a3 size:(CGSize)a4 scale:(double)a5 completion:(id)a6;
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

- (void)logoForInstitutionID:(id)a3 size:(CGSize)a4 scale:(double)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  imageProvider = self->_imageProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__FKBankConnectImageProvider_logoForInstitutionID_size_scale_completion___block_invoke;
  v14[3] = &unk_278A54EA0;
  v15 = v11;
  v13 = v11;
  [(BankConnectImageProvider *)imageProvider logoFor:a3 size:v14 scale:width completionHandler:height, a5];
}

@end