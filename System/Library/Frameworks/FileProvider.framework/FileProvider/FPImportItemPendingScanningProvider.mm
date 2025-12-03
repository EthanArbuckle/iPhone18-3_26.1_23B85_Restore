@interface FPImportItemPendingScanningProvider
- (FPImportItemPendingScanningProvider)initWithCoder:(id)coder;
- (id)json;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPImportItemPendingScanningProvider

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [coderCopy encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [coderCopy encodeInteger:self->_itemPendingScanningProviderEnumerationStatus forKey:@"_itemPendingScanningProviderEnumerationStatus"];
  [coderCopy encodeBool:self->_itemPendingScanningProviderHasMultiplePagesEnumeration forKey:@"_itemPendingScanningProviderHasMultiplePagesEnumeration"];
  [coderCopy encodeInteger:self->_itemPendingScanningProviderNumberOfChildren forKey:@"_itemPendingScanningProviderNumberOfChildren"];
  [coderCopy encodeInteger:self->_itemPendingScanningProviderNumberOfChildrenPendingCreation forKey:@"_itemPendingScanningProviderNumberOfChildrenPendingCreation"];
  [coderCopy encodeInteger:self->_itemPendingScanningProviderNumberOfChildrenFailingCreation forKey:@"_itemPendingScanningProviderNumberOfChildrenFailingCreation"];
  [coderCopy encodeInteger:self->_itemPendingScanningProviderRemovalOfDatalessBitStatus forKey:@"_itemPendingScanningProviderRemovalOfDatalessBitStatus"];
}

- (FPImportItemPendingScanningProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPImportItemPendingScanningProvider;
  v5 = [(FPImportItemPendingScanningProvider *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v8;

    v5->_itemPendingScanningProviderEnumerationStatus = [coderCopy decodeIntegerForKey:@"_itemPendingScanningProviderEnumerationStatus"];
    v5->_itemPendingScanningProviderHasMultiplePagesEnumeration = [coderCopy decodeBoolForKey:@"_itemPendingScanningProviderHasMultiplePagesEnumeration"];
    v5->_itemPendingScanningProviderNumberOfChildren = [coderCopy decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildren"];
    v5->_itemPendingScanningProviderNumberOfChildrenPendingCreation = [coderCopy decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildrenPendingCreation"];
    v5->_itemPendingScanningProviderNumberOfChildrenFailingCreation = [coderCopy decodeIntegerForKey:@"_itemPendingScanningProviderNumberOfChildrenFailingCreation"];
    v5->_itemPendingScanningProviderRemovalOfDatalessBitStatus = [coderCopy decodeIntegerForKey:@"_itemPendingScanningProviderRemovalOfDatalessBitStatus"];
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