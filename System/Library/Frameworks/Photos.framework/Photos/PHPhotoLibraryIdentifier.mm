@interface PHPhotoLibraryIdentifier
+ (NSString)defaultApplicationContainerIdentifier;
+ (id)defaultApplicationLibraryIdentifierWithContainerIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)archivalStringRepresentation;
- (PHPhotoLibraryIdentifier)initWithArchivalStringRepresentation:(id)representation;
- (PHPhotoLibraryIdentifier)initWithCoder:(id)coder;
- (PHPhotoLibraryIdentifier)initWithPLLibraryIdentifier:(id)identifier;
- (PLPhotoLibrarySearchCriteria)librarySearchCriteria;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHPhotoLibraryIdentifier

- (PLPhotoLibrarySearchCriteria)librarySearchCriteria
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE6A0]);
  uuid = [(PHPhotoLibraryIdentifier *)self uuid];
  [v3 setUuid:uuid];

  [v3 setDomain:{-[PHPhotoLibraryIdentifier domain](self, "domain")}];
  containerIdentifier = [(PHPhotoLibraryIdentifier *)self containerIdentifier];
  [v3 setContainerIdentifier:containerIdentifier];

  return v3;
}

- (PHPhotoLibraryIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PHPhotoLibraryIdentifier;
  v5 = [(PHPhotoLibraryIdentifier *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pl_libraryIdentifier"];
    pl_libraryIdentifier = v5->_pl_libraryIdentifier;
    v5->_pl_libraryIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    v5->_domain = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pl_libraryIdentifier = self->_pl_libraryIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:pl_libraryIdentifier forKey:@"pl_libraryIdentifier"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_domain];
  [coderCopy encodeObject:v6 forKey:@"domain"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PHPhotoLibraryIdentifier;
  v3 = [(PHPhotoLibraryIdentifier *)&v7 description];
  archivalStringRepresentation = [(PHPhotoLibraryIdentifier *)self archivalStringRepresentation];
  v5 = [v3 stringByAppendingFormat:@": [%@]", archivalStringRepresentation];

  return v5;
}

- (unint64_t)hash
{
  uuid = [(PHPhotoLibraryIdentifier *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(PHPhotoLibraryIdentifier *)self uuid];
      uuid2 = [(PHPhotoLibraryIdentifier *)v5 uuid];
      IsEqual = PLObjectIsEqual();

      if (IsEqual && ([(PHPhotoLibraryIdentifier *)self containerIdentifier], v9 = objc_claimAutoreleasedReturnValue(), [(PHPhotoLibraryIdentifier *)v5 containerIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = PLObjectIsEqual(), v10, v9, v11))
      {
        domain = [(PHPhotoLibraryIdentifier *)self domain];
        v13 = domain == [(PHPhotoLibraryIdentifier *)v5 domain];
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

- (PHPhotoLibraryIdentifier)initWithPLLibraryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PHPhotoLibraryIdentifier;
  v6 = [(PHPhotoLibraryIdentifier *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pl_libraryIdentifier, identifier);
    uuid = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier uuid];
    uuid = v7->_uuid;
    v7->_uuid = uuid;

    containerIdentifier = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier containerIdentifier];
    containerIdentifier = v7->_containerIdentifier;
    v7->_containerIdentifier = containerIdentifier;

    v7->_domain = [(PLPhotoLibraryIdentifier *)v7->_pl_libraryIdentifier domain];
  }

  return v7;
}

- (PHPhotoLibraryIdentifier)initWithArchivalStringRepresentation:(id)representation
{
  v14 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
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
        v13 = representationCopy;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to create identifier from invalid string encoding: %@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (NSString)archivalStringRepresentation
{
  uuid = [(PHPhotoLibraryIdentifier *)self uuid];
  containerIdentifier = [(PHPhotoLibraryIdentifier *)self containerIdentifier];
  [(PHPhotoLibraryIdentifier *)self domain];
  v5 = PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties();

  return v5;
}

+ (id)defaultApplicationLibraryIdentifierWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    defaultApplicationContainerIdentifier = identifierCopy;
  }

  else
  {
    defaultApplicationContainerIdentifier = [self defaultApplicationContainerIdentifier];
  }

  v7 = defaultApplicationContainerIdentifier;
  v8 = PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties();
  v9 = [[self alloc] initWithArchivalStringRepresentation:v8];

  return v9;
}

+ (NSString)defaultApplicationContainerIdentifier
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

@end