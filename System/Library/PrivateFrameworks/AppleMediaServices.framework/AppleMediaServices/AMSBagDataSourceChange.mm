@interface AMSBagDataSourceChange
- (AMSBagDataSourceChange)initWithProfile:(id)profile profileVersion:(id)version originalData:(id)data originalExpirationDate:(id)date updatedData:(id)updatedData updatedExpirationDate:(id)expirationDate changedKeys:(id)keys loadedBagIdentifier:(id)self0 loadedBagPartialIdentifier:(id)self1 accountIdentifier:(id)self2;
@end

@implementation AMSBagDataSourceChange

- (AMSBagDataSourceChange)initWithProfile:(id)profile profileVersion:(id)version originalData:(id)data originalExpirationDate:(id)date updatedData:(id)updatedData updatedExpirationDate:(id)expirationDate changedKeys:(id)keys loadedBagIdentifier:(id)self0 loadedBagPartialIdentifier:(id)self1 accountIdentifier:(id)self2
{
  profileCopy = profile;
  versionCopy = version;
  dataCopy = data;
  obj = date;
  dateCopy = date;
  v21 = profileCopy;
  v55 = dateCopy;
  updatedDataCopy = updatedData;
  expirationDateCopy = expirationDate;
  expirationDateCopy2 = expirationDate;
  keysCopy = keys;
  identifierCopy = identifier;
  partialIdentifierCopy = partialIdentifier;
  accountIdentifierCopy = accountIdentifier;
  if (!v21)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:26 description:{@"Unexpected nil reference: %s", "profile"}];
  }

  v27 = versionCopy;
  if (!versionCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:27 description:{@"Unexpected nil reference: %s", "profileVersion"}];
  }

  v28 = keysCopy;
  if (updatedDataCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:28 description:{@"Unexpected nil reference: %s", "updatedData"}];

    if (identifierCopy)
    {
      goto LABEL_7;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:29 description:{@"Unexpected nil reference: %s", "loadedBagIdentifier"}];

LABEL_7:
  v57.receiver = self;
  v57.super_class = AMSBagDataSourceChange;
  v29 = [(AMSBagDataSourceChange *)&v57 init];
  if (v29)
  {
    v30 = [v21 copy];
    profile = v29->_profile;
    v29->_profile = v30;

    v32 = [v27 copy];
    profileVersion = v29->_profileVersion;
    v29->_profileVersion = v32;

    v34 = [dataCopy copy];
    originalData = v29->_originalData;
    v29->_originalData = v34;

    objc_storeStrong(&v29->_originalExpirationDate, obj);
    v36 = [updatedDataCopy copy];
    updatedData = v29->_updatedData;
    v29->_updatedData = v36;

    objc_storeStrong(&v29->_updatedExpirationDate, expirationDateCopy);
    v38 = [v28 copy];
    changedKeys = v29->_changedKeys;
    v29->_changedKeys = v38;

    v40 = [identifierCopy copy];
    loadedBagIdentifier = v29->_loadedBagIdentifier;
    v29->_loadedBagIdentifier = v40;

    v42 = [partialIdentifierCopy copy];
    loadedBagPartialIdentifier = v29->_loadedBagPartialIdentifier;
    v29->_loadedBagPartialIdentifier = v42;

    v44 = [accountIdentifierCopy copy];
    accountIdentifier = v29->_accountIdentifier;
    v29->_accountIdentifier = v44;
  }

  return v29;
}

@end