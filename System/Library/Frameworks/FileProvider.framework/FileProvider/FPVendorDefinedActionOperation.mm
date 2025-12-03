@interface FPVendorDefinedActionOperation
- (FPVendorDefinedActionOperation)initWithActionIdentifier:(id)identifier providerDomainID:(id)d itemIdentifiers:(id)identifiers;
- (void)actionMain;
- (void)cancel;
@end

@implementation FPVendorDefinedActionOperation

- (FPVendorDefinedActionOperation)initWithActionIdentifier:(id)identifier providerDomainID:(id)d itemIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  dCopy = d;
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FPVendorDefinedActionOperation initWithActionIdentifier:providerDomainID:itemIdentifiers:];
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  [FPVendorDefinedActionOperation initWithActionIdentifier:providerDomainID:itemIdentifiers:];
LABEL_3:
  v17.receiver = self;
  v17.super_class = FPVendorDefinedActionOperation;
  v12 = [(FPActionOperation *)&v17 initWithProvider:dCopy action:0];
  v13 = v12;
  if (v12)
  {
    [(FPActionOperation *)v12 setSetupRemoteOperationService:1];
    objc_storeStrong(&v13->_actionIdentifier, identifier);
    objc_storeStrong(&v13->_itemIdentifiers, identifiers);
    fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];
    domainIdentifier = v13->_domainIdentifier;
    v13->_domainIdentifier = fp_toDomainIdentifier;
  }

  return v13;
}

- (void)actionMain
{
  remoteServiceProxy = [(FPActionOperation *)self remoteServiceProxy];
  actionIdentifier = self->_actionIdentifier;
  itemIdentifiers = self->_itemIdentifiers;
  domainIdentifier = self->_domainIdentifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__FPVendorDefinedActionOperation_actionMain__block_invoke;
  v9[3] = &unk_1E7939C00;
  v9[4] = self;
  v7 = [remoteServiceProxy performActionWithIdentifier:actionIdentifier onItemsWithIdentifiers:itemIdentifiers domainIdentifier:domainIdentifier completionHandler:v9];
  remoteProgress = self->_remoteProgress;
  self->_remoteProgress = v7;
}

- (void)cancel
{
  [(NSProgress *)self->_remoteProgress cancel];
  remoteProgress = self->_remoteProgress;
  self->_remoteProgress = 0;

  v4.receiver = self;
  v4.super_class = FPVendorDefinedActionOperation;
  [(FPOperation *)&v4 cancel];
}

- (void)initWithActionIdentifier:providerDomainID:itemIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"itemIdentifiers.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithActionIdentifier:providerDomainID:itemIdentifiers:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"providerDomainID != nil" object:? file:? lineNumber:? description:?];
}

@end