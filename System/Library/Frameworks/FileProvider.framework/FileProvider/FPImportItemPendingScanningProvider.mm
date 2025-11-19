@interface FPImportItemPendingScanningProvider
- (FPImportItemPendingScanningProvider)initWithCoder:(id)a3;
- (id)json;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportItemPendingScanningProvider

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v5 encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [v5 encodeInteger:self->_itemPendingScanningProviderEnumerationStatus forKey:@"_itemPendingScanningProviderEnumerationStatus"];
  [v5 encodeBool:self->_itemPendingScanningProviderHasMultiplePagesEnumeration forKey:@"_itemPendingScanningProviderHasMultiplePagesEnumeration"];
  [v5 encodeInteger:self->_itemPendingScanningProviderNumberOfChildren forKey:@"_itemPendingScanningProviderNumberOfChildren"];
  [v5 encodeInteger:self->_itemPendingScanningProviderNumberOfChildrenPendingCreation forKey:@"_itemPendingScanningProviderNumberOfChildrenPendingCreation"];
  [v5 encodeInteger:self->_itemPendingScanningProviderNumberOfChildrenFailingCreation forKey:@"_itemPendingScanningProviderNumberOfChildrenFailingCreation"];
  [v5 encodeInteger:self->_itemPendingScanningProviderRemovalOfDatalessBitStatus forKey:@"_itemPendingScanningProviderRemovalOfDatalessBitStatus"];
}

- (FPImportItemPendingScanningProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPImportItemPendingScanningProvider;
  v5 = [(FPImportItemPendingScanningProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v8;

    v5->_itemPendingScanningProviderEnumerationStatus = [v4 decodeIntegerForKey:@"_itemPendingScanningProviderEnumerationStatus"];
    v5->_itemPendingScanningProviderHasMultiplePagesEnumeration = [v4 decodeBoolForKey:@"_itemPendingScanningProviderHasMultiplePagesEnumeration"];
    v5->_itemPendingScanningProviderNumberOfChildren = [v4 decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildren"];
    v5->_itemPendingScanningProviderNumberOfChildrenPendingCreation = [v4 decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildrenPendingCreation"];
    v5->_itemPendingScanningProviderNumberOfChildrenFailingCreation = [v4 decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildrenFailingCreation"];
    v5->_itemPendingScanningProviderRemovalOfDatalessBitStatus = [v4 decodeIntegerForKey:@"_itemPendingScanningProviderRemovalOfDatalessBitStatus"];
  }

  return v5;
}

- (id)json
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningProviderEnumerationStatus];
  [v3 setObject:v4 forKeyedSubscript:@"itemPendingScanningProviderEnumerationStatus"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_itemPendingScanningProviderHasMultiplePagesEnumeration];
  [v3 setObject:v5 forKeyedSubscript:@"itemPendingScanningProviderHasMultiplePagesEnumeration"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningProviderNumberOfChildren];
  [v3 setObject:v6 forKeyedSubscript:@"itemPendingScanningProviderNumberOfChildren"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningProviderNumberOfChildrenPendingCreation];
  [v3 setObject:v7 forKeyedSubscript:@"itemPendingScanningProviderNumberOfChildrenPendingCreation"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningProviderNumberOfChildrenFailingCreation];
  [v3 setObject:v8 forKeyedSubscript:@"itemPendingScanningProviderNumberOfChildrenFailingCreation"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_itemPendingScanningProviderRemovalOfDatalessBitStatus];
  [v3 setObject:v9 forKeyedSubscript:@"itemPendingScanningProviderRemovalOfDatalessBitStatus"];

  return v3;
}

@end