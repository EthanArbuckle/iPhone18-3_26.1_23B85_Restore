@interface _PHPickerCollectionConfiguration
- (BOOL)isEqual:(id)equal;
- (_PHPickerCollectionConfiguration)init;
- (_PHPickerCollectionConfiguration)initWithCoder:(id)coder;
- (_PHPickerCollectionConfiguration)initWithIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PHPickerCollectionConfiguration

- (void)encodeWithCoder:(id)coder
{
  identifiers = self->__identifiers;
  coderCopy = coder;
  [coderCopy encodeObject:identifiers forKey:@"PHPickerCollectionConfigurationCoderIdentifiersKey"];
  [coderCopy encodeObject:self->_suggestedIdentifiers forKey:@"PHPickerCollectionConfigurationCoderSuggestedIdentifiersKey"];
  [coderCopy encodeObject:self->_assetsToAddIdentifiers forKey:@"PHPickerCollectionConfigurationCoderAssetsToAddIdentifiersKey"];
  [coderCopy encodeObject:self->_disabledIdentifiers forKey:@"PHPickerCollectionConfigurationCoderDisabledIdentifiersKey"];
}

- (_PHPickerCollectionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _PHPickerCollectionConfiguration;
  v5 = [(_PHPickerCollectionConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerCollectionConfigurationCoderIdentifiersKey"];
    identifiers = v5->__identifiers;
    v5->__identifiers = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerCollectionConfigurationCoderSuggestedIdentifiersKey"];
    suggestedIdentifiers = v5->_suggestedIdentifiers;
    v5->_suggestedIdentifiers = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerCollectionConfigurationCoderAssetsToAddIdentifiersKey"];
    assetsToAddIdentifiers = v5->_assetsToAddIdentifiers;
    v5->_assetsToAddIdentifiers = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerCollectionConfigurationCoderDisabledIdentifiersKey"];
    disabledIdentifiers = v5->_disabledIdentifiers;
    v5->_disabledIdentifiers = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->__identifiers)
  {
    v4 = [[_PHPickerCollectionConfiguration alloc] initWithIdentifiers:self->__identifiers];
  }

  else
  {
    v4 = objc_alloc_init(_PHPickerCollectionConfiguration);
  }

  v5 = v4;
  v6 = [(NSArray *)self->_suggestedIdentifiers copy];
  suggestedIdentifiers = v5->_suggestedIdentifiers;
  v5->_suggestedIdentifiers = v6;

  v8 = [(NSArray *)self->_assetsToAddIdentifiers copy];
  assetsToAddIdentifiers = v5->_assetsToAddIdentifiers;
  v5->_assetsToAddIdentifiers = v8;

  v10 = [(NSArray *)self->_disabledIdentifiers copy];
  disabledIdentifiers = v5->_disabledIdentifiers;
  v5->_disabledIdentifiers = v10;

  return v5;
}

- (_PHPickerCollectionConfiguration)init
{
  v12.receiver = self;
  v12.super_class = _PHPickerCollectionConfiguration;
  v2 = [(_PHPickerCollectionConfiguration *)&v12 init];
  if (!v2)
  {
    return v2;
  }

  if (([(_PHPickerCollectionConfiguration *)v2 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    identifiers = v2->__identifiers;
    v2->__identifiers = 0;

    suggestedIdentifiers = v2->_suggestedIdentifiers;
    v5 = MEMORY[0x1E695E0F0];
    v2->_suggestedIdentifiers = MEMORY[0x1E695E0F0];

    assetsToAddIdentifiers = v2->_assetsToAddIdentifiers;
    v2->_assetsToAddIdentifiers = v5;

    disabledIdentifiers = v2->_disabledIdentifiers;
    v2->_disabledIdentifiers = v5;

    return v2;
  }

  v9 = _PFAssertFailHandler();
  return [(_PHPickerCollectionConfiguration *)v9 initWithIdentifiers:v10, v11];
}

- (_PHPickerCollectionConfiguration)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v5 = identifiersCopy;
    v16.receiver = self;
    v16.super_class = _PHPickerCollectionConfiguration;
    v6 = [(_PHPickerCollectionConfiguration *)&v16 init];
    if (!v6)
    {
LABEL_5:

      return v6;
    }

    if (([(_PHPickerCollectionConfiguration *)v6 isMemberOfClass:objc_opt_class()]& 1) != 0)
    {
      v7 = [v5 copy];
      identifiers = v6->__identifiers;
      v6->__identifiers = v7;

      suggestedIdentifiers = v6->_suggestedIdentifiers;
      v10 = MEMORY[0x1E695E0F0];
      v6->_suggestedIdentifiers = MEMORY[0x1E695E0F0];

      assetsToAddIdentifiers = v6->_assetsToAddIdentifiers;
      v6->_assetsToAddIdentifiers = v10;

      disabledIdentifiers = v6->_disabledIdentifiers;
      v6->_disabledIdentifiers = v10;

      goto LABEL_5;
    }
  }

  else
  {
    _PFAssertFailHandler();
  }

  v14 = _PFAssertFailHandler();
  return [(_PHPickerCollectionConfiguration *)v14 hash];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->__identifiers hash];
  v4 = [(NSArray *)self->_suggestedIdentifiers hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_assetsToAddIdentifiers hash]- v4 + 32 * v4;
  return [(NSArray *)self->_disabledIdentifiers hash]- v5 + 32 * v5 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
LABEL_13:

    return v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v5 = equalCopy;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      if ([(NSArray *)self->__identifiers isEqual:v5->__identifiers]&& [(NSArray *)self->_suggestedIdentifiers isEqual:v5->_suggestedIdentifiers]&& [(NSArray *)self->_assetsToAddIdentifiers isEqual:v5->_assetsToAddIdentifiers])
      {
        v7 = [(NSArray *)self->_disabledIdentifiers isEqual:v5->_disabledIdentifiers];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_13;
    }

    v9 = objc_opt_class();
    NSStringFromClass(v9);
    objc_claimAutoreleasedReturnValue();
    v10 = objc_opt_class();
    NSStringFromClass(v10);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v11 = _PFAssertFailHandler();
  return +[(_PHPickerCollectionConfiguration *)v11];
}

@end