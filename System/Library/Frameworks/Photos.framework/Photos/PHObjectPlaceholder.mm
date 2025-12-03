@interface PHObjectPlaceholder
- (BOOL)isEqual:(id)equal;
- (PHObjectPlaceholder)initWithLocalIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation PHObjectPlaceholder

- (unint64_t)hash
{
  localIdentifier = [(PHObjectPlaceholder *)self localIdentifier];
  v3 = [localIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localIdentifier = [(PHObjectPlaceholder *)self localIdentifier];
      localIdentifier2 = [(PHObjectPlaceholder *)v5 localIdentifier];

      IsEqual = PLObjectIsEqual();
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (PHObjectPlaceholder)initWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PHObjectPlaceholder;
  v5 = [(PHObjectPlaceholder *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v6;

    v8 = [PHObject uuidFromLocalIdentifier:v5->_localIdentifier];
    uuid = v5->super._uuid;
    v5->super._uuid = v8;

    v10 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v10;
  }

  return v5;
}

@end