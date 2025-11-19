@interface FKWalletBankCredentialImporter
- (FKWalletBankCredentialImporter)init;
- (void)insertCredentialFromACHPaymentInformation:(id)a3 bankName:(id)a4 completion:(id)a5;
@end

@implementation FKWalletBankCredentialImporter

- (FKWalletBankCredentialImporter)init
{
  v6.receiver = self;
  v6.super_class = FKWalletBankCredentialImporter;
  v2 = [(FKWalletBankCredentialImporter *)&v6 init];
  if (v2)
  {
    v3 = +[_FKWalletBankCredentialImporter makeImporter];
    wrappedImporter = v2->_wrappedImporter;
    v2->_wrappedImporter = v3;
  }

  return v2;
}

- (void)insertCredentialFromACHPaymentInformation:(id)a3 bankName:(id)a4 completion:(id)a5
{
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__FKWalletBankCredentialImporter_insertCredentialFromACHPaymentInformation_bankName_completion___block_invoke;
  aBlock[3] = &unk_1E7CAA070;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  [(_FKWalletBankCredentialImporter *)self->_wrappedImporter insertCredentialFrom:v11 bankName:v10 completionHandler:v12];
}

uint64_t __96__FKWalletBankCredentialImporter_insertCredentialFromACHPaymentInformation_bankName_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end