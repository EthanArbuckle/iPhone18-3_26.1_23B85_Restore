@interface FKWalletBankCredentialImporter
- (FKWalletBankCredentialImporter)init;
- (void)insertCredentialFromACHPaymentInformation:(id)information bankName:(id)name completion:(id)completion;
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

- (void)insertCredentialFromACHPaymentInformation:(id)information bankName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__FKWalletBankCredentialImporter_insertCredentialFromACHPaymentInformation_bankName_completion___block_invoke;
  aBlock[3] = &unk_1E7CAA070;
  v14 = completionCopy;
  v9 = completionCopy;
  nameCopy = name;
  informationCopy = information;
  v12 = _Block_copy(aBlock);
  [(_FKWalletBankCredentialImporter *)self->_wrappedImporter insertCredentialFrom:informationCopy bankName:nameCopy completionHandler:v12];
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