@interface AMSBagNetworkTaskResult
- (AMSBagNetworkTaskResult)initWithData:(id)data expirationDate:(id)date loadedBagIdentifier:(id)identifier loadedBagPartialIdentifier:(id)partialIdentifier storefront:(id)storefront accountIdentifier:(id)accountIdentifier;
- (BOOL)expired;
@end

@implementation AMSBagNetworkTaskResult

- (BOOL)expired
{
  expirationDate = [(AMSBagNetworkTaskResult *)self expirationDate];
  if (expirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [date compare:expirationDate] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (AMSBagNetworkTaskResult)initWithData:(id)data expirationDate:(id)date loadedBagIdentifier:(id)identifier loadedBagPartialIdentifier:(id)partialIdentifier storefront:(id)storefront accountIdentifier:(id)accountIdentifier
{
  dataCopy = data;
  dateCopy = date;
  identifierCopy = identifier;
  partialIdentifierCopy = partialIdentifier;
  storefrontCopy = storefront;
  accountIdentifierCopy = accountIdentifier;
  if (dataCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:60 description:{@"Unexpected nil reference: %s", "expirationDate"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:59 description:{@"Unexpected nil reference: %s", "data"}];

  if (!dateCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:61 description:{@"Unexpected nil reference: %s", "loadedBagIdentifier"}];

LABEL_4:
  v36.receiver = self;
  v36.super_class = AMSBagNetworkTaskResult;
  v21 = [(AMSBagNetworkTaskResult *)&v36 init];
  if (v21)
  {
    v22 = [dataCopy copy];
    data = v21->_data;
    v21->_data = v22;

    v24 = [storefrontCopy copy];
    storefront = v21->_storefront;
    v21->_storefront = v24;

    objc_storeStrong(&v21->_expirationDate, date);
    v26 = [identifierCopy copy];
    loadedBagIdentifier = v21->_loadedBagIdentifier;
    v21->_loadedBagIdentifier = v26;

    v28 = [partialIdentifierCopy copy];
    loadedBagPartialIdentifier = v21->_loadedBagPartialIdentifier;
    v21->_loadedBagPartialIdentifier = v28;

    v30 = [accountIdentifierCopy copy];
    accountIdentifier = v21->_accountIdentifier;
    v21->_accountIdentifier = v30;
  }

  return v21;
}

@end