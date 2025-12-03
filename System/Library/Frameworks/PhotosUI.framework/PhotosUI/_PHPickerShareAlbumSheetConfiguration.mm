@interface _PHPickerShareAlbumSheetConfiguration
- (BOOL)isEqual:(id)equal;
- (_PHPickerShareAlbumSheetConfiguration)initWithCoder:(id)coder;
- (id)_initWithDefaultAlbumIdentifier:(id)identifier itemIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PHPickerShareAlbumSheetConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
LABEL_16:

    return v11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v5 = equalCopy;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      defaultAlbumIdentifier = v5->_defaultAlbumIdentifier;
      v8 = self->_defaultAlbumIdentifier;
      v9 = v8;
      if (v8 == defaultAlbumIdentifier)
      {
      }

      else
      {
        v10 = [(NSString *)v8 isEqual:defaultAlbumIdentifier];

        if (!v10)
        {
          v11 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      itemIdentifiers = self->_itemIdentifiers;
      v13 = v5->_itemIdentifiers;
      v14 = itemIdentifiers;
      v15 = v14;
      if (v14 == v13)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(NSArray *)v14 isEqual:v13];
      }

      goto LABEL_15;
    }

    v17 = objc_opt_class();
    NSStringFromClass(v17);
    objc_claimAutoreleasedReturnValue();
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v19 = _PFAssertFailHandler();
  return [(_PHPickerShareAlbumSheetConfiguration *)v19 copyWithZone:v20, v21];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PHPickerShareAlbumSheetConfiguration alloc];
  defaultAlbumIdentifier = self->_defaultAlbumIdentifier;
  itemIdentifiers = self->_itemIdentifiers;

  return [(_PHPickerShareAlbumSheetConfiguration *)v4 _initWithDefaultAlbumIdentifier:defaultAlbumIdentifier itemIdentifiers:itemIdentifiers];
}

- (_PHPickerShareAlbumSheetConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_PHPickerShareAlbumSheetConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHPickerShareAlbumSheetConfigurationDefaultAlbumIdentifierKey"];
    defaultAlbumIdentifier = v5->_defaultAlbumIdentifier;
    v5->_defaultAlbumIdentifier = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHPickerShareAlbumSheetConfigurationItemIdentifiersKey"];
    itemIdentifiers = v5->_itemIdentifiers;
    v5->_itemIdentifiers = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  defaultAlbumIdentifier = self->_defaultAlbumIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:defaultAlbumIdentifier forKey:@"PHPickerShareAlbumSheetConfigurationDefaultAlbumIdentifierKey"];
  [coderCopy encodeObject:self->_itemIdentifiers forKey:@"PHPickerShareAlbumSheetConfigurationItemIdentifiersKey"];
}

- (id)_initWithDefaultAlbumIdentifier:(id)identifier itemIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = _PHPickerShareAlbumSheetConfiguration;
  v9 = [(_PHPickerShareAlbumSheetConfiguration *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_defaultAlbumIdentifier, identifier);
    objc_storeStrong(p_isa + 2, identifiers);
  }

  return p_isa;
}

@end