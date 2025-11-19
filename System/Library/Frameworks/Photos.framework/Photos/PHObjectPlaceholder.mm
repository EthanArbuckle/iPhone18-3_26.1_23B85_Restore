@interface PHObjectPlaceholder
- (BOOL)isEqual:(id)a3;
- (PHObjectPlaceholder)initWithLocalIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation PHObjectPlaceholder

- (unint64_t)hash
{
  v2 = [(PHObjectPlaceholder *)self localIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHObjectPlaceholder *)self localIdentifier];
      v7 = [(PHObjectPlaceholder *)v5 localIdentifier];

      IsEqual = PLObjectIsEqual();
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (PHObjectPlaceholder)initWithLocalIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PHObjectPlaceholder;
  v5 = [(PHObjectPlaceholder *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
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