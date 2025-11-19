@interface AMSBagDataSourceLoadResult
- (AMSBagDataSourceLoadResult)initWithData:(id)a3 expirationDate:(id)a4 loadedBagIdentifier:(id)a5 loadedBagPartialIdentifier:(id)a6;
@end

@implementation AMSBagDataSourceLoadResult

- (AMSBagDataSourceLoadResult)initWithData:(id)a3 expirationDate:(id)a4 loadedBagIdentifier:(id)a5 loadedBagPartialIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = AMSBagDataSourceLoadResult;
  v14 = [(AMSBagDataSourceLoadResult *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    data = v14->_data;
    v14->_data = v15;

    objc_storeStrong(&v14->_expirationDate, a4);
    v17 = [v12 copy];
    loadedBagIdentifier = v14->_loadedBagIdentifier;
    v14->_loadedBagIdentifier = v17;

    v19 = [v13 copy];
    loadedBagPartialIdentifier = v14->_loadedBagPartialIdentifier;
    v14->_loadedBagPartialIdentifier = v19;
  }

  return v14;
}

@end