@interface AMSBagDataSourceLoadResult
- (AMSBagDataSourceLoadResult)initWithData:(id)data expirationDate:(id)date loadedBagIdentifier:(id)identifier loadedBagPartialIdentifier:(id)partialIdentifier;
@end

@implementation AMSBagDataSourceLoadResult

- (AMSBagDataSourceLoadResult)initWithData:(id)data expirationDate:(id)date loadedBagIdentifier:(id)identifier loadedBagPartialIdentifier:(id)partialIdentifier
{
  dataCopy = data;
  dateCopy = date;
  identifierCopy = identifier;
  partialIdentifierCopy = partialIdentifier;
  v22.receiver = self;
  v22.super_class = AMSBagDataSourceLoadResult;
  v14 = [(AMSBagDataSourceLoadResult *)&v22 init];
  if (v14)
  {
    v15 = [dataCopy copy];
    data = v14->_data;
    v14->_data = v15;

    objc_storeStrong(&v14->_expirationDate, date);
    v17 = [identifierCopy copy];
    loadedBagIdentifier = v14->_loadedBagIdentifier;
    v14->_loadedBagIdentifier = v17;

    v19 = [partialIdentifierCopy copy];
    loadedBagPartialIdentifier = v14->_loadedBagPartialIdentifier;
    v14->_loadedBagPartialIdentifier = v19;
  }

  return v14;
}

@end