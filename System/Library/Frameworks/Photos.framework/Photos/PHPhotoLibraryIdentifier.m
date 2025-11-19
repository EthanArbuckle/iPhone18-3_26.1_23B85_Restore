@interface PHPhotoLibraryIdentifier
+ (NSString)defaultApplicationContainerIdentifier;
+ (id)defaultApplicationLibraryIdentifierWithContainerIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)archivalStringRepresentation;
- (PHPhotoLibraryIdentifier)initWithArchivalStringRepresentation:(id)a3;
- (PHPhotoLibraryIdentifier)initWithCoder:(id)a3;
- (PHPhotoLibraryIdentifier)initWithPLLibraryIdentifier:(id)a3;
- (PLPhotoLibrarySearchCriteria)librarySearchCriteria;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHPhotoLibraryIdentifier

- (PLPhotoLibrarySearchCriteria)librarySearchCriteria
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE6A0]);
  v4 = [(PHPhotoLibraryIdentifier *)self uuid];
  [v3 setUuid:v4];

  [v3 setDomain:{-[PHPhotoLibraryIdentifier domain](self, "domain")}];
  v5 = [(PHPhotoLibraryIdentifier *)self containerIdentifier];
  [v3 setContainerIdentifier:v5];

  return v3;
}

- (PHPhotoLibraryIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PHPhotoLibraryIdentifier;
  v5 = [(PHPhotoLibraryIdentifier *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pl_libraryIdentifier"];
    pl_libraryIdentifier = v5->_pl_libraryIdentifier;
    v5->_pl_libraryIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    v5->_domain = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pl_libraryIdentifier = self->_pl_libraryIdentifier;
  v5 = a3;
  [v5 encodeObject:pl_libraryIdentifier forKey:@"pl_libraryIdentifier"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_domain];
  [v5 encodeObject:v6 forKey:@"domain"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PHPhotoLibraryIdentifier;
  v3 = [(PHPhotoLibraryIdentifier *)&v7 description];
  v4 = [(PHPhotoLibraryIdentifier *)self archivalStringRepresentation];
  v5 = [v3 stringByAppendingFormat:@": [%@]", v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PHPhotoLibraryIdentifier *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHPhotoLibraryIdentifier *)self uuid];
      v7 = [(PHPhotoLibraryIdentifier *)v5 uuid];
      IsEqual = PLObjectIsEqual();

      if (IsEqual && ([(PHPhotoLibraryIdentifier *)self containerIdentifier], v9 = objc_claimAutoreleasedReturnValue(), [(PHPhotoLibraryIdentifier *)v5 containerIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = PLObjectIsEqual(), v10, v9, v11))
      {
        v12 = [(PHPhotoLibraryIdentifier *)self domain];
        v13 = v12 == [(PHPhotoLibraryIdentifier *)v5 domain];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (PHPhotoLibraryIdentifier)initWithPLLibraryIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PHPhotoLibraryIdentifier;
  v6 = [(PHPhotoLibraryIdentifier *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pl_libraryIdentifier, a3);
    v8 = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier uuid];
    uuid = v7->_uuid;
    v7->_uuid = v8;

    v10 = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier containerIdentifier];
    containerIdentifier = v7->_containerIdentifier;
    v7->_containerIdentifier = v10;

    v7->_domain = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier domain];
  }

  return v7;
}

- (PHPhotoLibraryIdentifier)initWithArchivalStringRepresentation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PHPhotoLibraryIdentifier;
  v5 = [(PHPhotoLibraryIdentifier *)&v11 init];
  if (v5)
  {
    v6 = PLPhotoLibraryIdentifierDecodeIdentifierPropertiesFromArchivalStringRepresentation();
    v7 = 0;
    v8 = 0;
    if (v6)
    {
      objc_storeStrong(&v5->_uuid, 0);
      objc_storeStrong(&v5->_containerIdentifier, 0);
      v5->_domain = 0;
    }

    if (!v5->_uuid)
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to create identifier from invalid string encoding: %@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (NSString)archivalStringRepresentation
{
  v3 = [(PHPhotoLibraryIdentifier *)self uuid];
  v4 = [(PHPhotoLibraryIdentifier *)self containerIdentifier];
  [(PHPhotoLibraryIdentifier *)self domain];
  v5 = PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties();

  return v5;
}

+ (id)defaultApplicationLibraryIdentifierWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 defaultApplicationContainerIdentifier];
  }

  v7 = v6;
  v8 = PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties();
  v9 = [[a1 alloc] initWithArchivalStringRepresentation:v8];

  return v9;
}

+ (NSString)defaultApplicationContainerIdentifier
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end