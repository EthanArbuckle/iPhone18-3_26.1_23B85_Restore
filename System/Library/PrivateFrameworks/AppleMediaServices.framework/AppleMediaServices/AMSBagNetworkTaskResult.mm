@interface AMSBagNetworkTaskResult
- (AMSBagNetworkTaskResult)initWithData:(id)a3 expirationDate:(id)a4 loadedBagIdentifier:(id)a5 loadedBagPartialIdentifier:(id)a6 storefront:(id)a7 accountIdentifier:(id)a8;
- (BOOL)expired;
@end

@implementation AMSBagNetworkTaskResult

- (BOOL)expired
{
  v2 = [(AMSBagNetworkTaskResult *)self expirationDate];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [v3 compare:v2] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (AMSBagNetworkTaskResult)initWithData:(id)a3 expirationDate:(id)a4 loadedBagIdentifier:(id)a5 loadedBagPartialIdentifier:(id)a6 storefront:(id)a7 accountIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:60 description:{@"Unexpected nil reference: %s", "expirationDate"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:59 description:{@"Unexpected nil reference: %s", "data"}];

  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_9:
  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"AMSBagNetworkTask.m" lineNumber:61 description:{@"Unexpected nil reference: %s", "loadedBagIdentifier"}];

LABEL_4:
  v36.receiver = self;
  v36.super_class = AMSBagNetworkTaskResult;
  v21 = [(AMSBagNetworkTaskResult *)&v36 init];
  if (v21)
  {
    v22 = [v15 copy];
    data = v21->_data;
    v21->_data = v22;

    v24 = [v19 copy];
    storefront = v21->_storefront;
    v21->_storefront = v24;

    objc_storeStrong(&v21->_expirationDate, a4);
    v26 = [v17 copy];
    loadedBagIdentifier = v21->_loadedBagIdentifier;
    v21->_loadedBagIdentifier = v26;

    v28 = [v18 copy];
    loadedBagPartialIdentifier = v21->_loadedBagPartialIdentifier;
    v21->_loadedBagPartialIdentifier = v28;

    v30 = [v20 copy];
    accountIdentifier = v21->_accountIdentifier;
    v21->_accountIdentifier = v30;
  }

  return v21;
}

@end