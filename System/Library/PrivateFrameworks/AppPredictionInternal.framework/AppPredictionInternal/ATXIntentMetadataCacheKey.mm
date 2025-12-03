@interface ATXIntentMetadataCacheKey
- (ATXIntentMetadataCacheKey)initWithIntent:(id)intent includingParameters:(BOOL)parameters includingParameterValues:(BOOL)values localeIdentifier:(id)identifier;
- (id)stringRepresentationForSerialization;
@end

@implementation ATXIntentMetadataCacheKey

- (id)stringRepresentationForSerialization
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  intentClassName = self->_intentClassName;
  v23[0] = self->_bundleId;
  v23[1] = intentClassName;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v6 = [v3 initWithArray:v5];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  nonNilParameters = self->_nonNilParameters;
  v22 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v10 = [(NSSet *)nonNilParameters sortedArrayUsingDescriptors:v9];

  v11 = [v10 componentsJoinedByString:&stru_2839A6058];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2839A6058;
  }

  v14 = v13;

  [v6 addObject:v14];
  if (self->_intentHash)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_intentHash];
    v17 = [v15 initWithFormat:@"%lld", objc_msgSend(v16, "longLongValue")];

    [v6 addObject:v17];
    if (self->_localeIdentifier)
    {
      localeIdentifier = self->_localeIdentifier;
    }

    else
    {
      localeIdentifier = &stru_2839A6058;
    }

    [v6 addObject:localeIdentifier];
  }

  v19 = [v6 componentsJoinedByString:@"-"];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (ATXIntentMetadataCacheKey)initWithIntent:(id)intent includingParameters:(BOOL)parameters includingParameterValues:(BOOL)values localeIdentifier:(id)identifier
{
  valuesCopy = values;
  parametersCopy = parameters;
  intentCopy = intent;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = ATXIntentMetadataCacheKey;
  v12 = [(ATXIntentMetadataCacheKey *)&v24 init];
  if (v12)
  {
    extensionBundleId = [intentCopy extensionBundleId];
    v14 = extensionBundleId;
    if (extensionBundleId)
    {
      launchId = extensionBundleId;
    }

    else
    {
      launchId = [intentCopy launchId];
    }

    v16 = launchId;

    _className = [intentCopy _className];
    if (![v16 length] || !objc_msgSend(_className, "length"))
    {

      v22 = 0;
      goto LABEL_17;
    }

    objc_storeStrong(&v12->_bundleId, v16);
    objc_storeStrong(&v12->_intentClassName, _className);
    if (parametersCopy)
    {
      atx_nonNilParameters = [intentCopy atx_nonNilParameters];
      nonNilParameters = v12->_nonNilParameters;
      v12->_nonNilParameters = atx_nonNilParameters;
    }

    if (valuesCopy)
    {
      atx_backingStoreDataHash = [intentCopy atx_backingStoreDataHash];
      if (atx_backingStoreDataHash <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = atx_backingStoreDataHash;
      }

      v12->_intentHash = v21;
    }

    objc_storeStrong(&v12->_localeIdentifier, identifier);
  }

  v22 = v12;
LABEL_17:

  return v22;
}

@end