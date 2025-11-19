@interface AMSBagDataSourceChange
- (AMSBagDataSourceChange)initWithProfile:(id)a3 profileVersion:(id)a4 originalData:(id)a5 originalExpirationDate:(id)a6 updatedData:(id)a7 updatedExpirationDate:(id)a8 changedKeys:(id)a9 loadedBagIdentifier:(id)a10 loadedBagPartialIdentifier:(id)a11 accountIdentifier:(id)a12;
@end

@implementation AMSBagDataSourceChange

- (AMSBagDataSourceChange)initWithProfile:(id)a3 profileVersion:(id)a4 originalData:(id)a5 originalExpirationDate:(id)a6 updatedData:(id)a7 updatedExpirationDate:(id)a8 changedKeys:(id)a9 loadedBagIdentifier:(id)a10 loadedBagPartialIdentifier:(id)a11 accountIdentifier:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  obj = a6;
  v20 = a6;
  v21 = v17;
  v55 = v20;
  v22 = a7;
  v53 = a8;
  v54 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  if (!v21)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:26 description:{@"Unexpected nil reference: %s", "profile"}];
  }

  v27 = v18;
  if (!v18)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:27 description:{@"Unexpected nil reference: %s", "profileVersion"}];
  }

  v28 = v23;
  if (v22)
  {
    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:28 description:{@"Unexpected nil reference: %s", "updatedData"}];

    if (v24)
    {
      goto LABEL_7;
    }
  }

  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  [v50 handleFailureInMethod:a2 object:self file:@"AMSBagDataSourceChange.m" lineNumber:29 description:{@"Unexpected nil reference: %s", "loadedBagIdentifier"}];

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

    v34 = [v19 copy];
    originalData = v29->_originalData;
    v29->_originalData = v34;

    objc_storeStrong(&v29->_originalExpirationDate, obj);
    v36 = [v22 copy];
    updatedData = v29->_updatedData;
    v29->_updatedData = v36;

    objc_storeStrong(&v29->_updatedExpirationDate, v53);
    v38 = [v28 copy];
    changedKeys = v29->_changedKeys;
    v29->_changedKeys = v38;

    v40 = [v24 copy];
    loadedBagIdentifier = v29->_loadedBagIdentifier;
    v29->_loadedBagIdentifier = v40;

    v42 = [v25 copy];
    loadedBagPartialIdentifier = v29->_loadedBagPartialIdentifier;
    v29->_loadedBagPartialIdentifier = v42;

    v44 = [v26 copy];
    accountIdentifier = v29->_accountIdentifier;
    v29->_accountIdentifier = v44;
  }

  return v29;
}

@end