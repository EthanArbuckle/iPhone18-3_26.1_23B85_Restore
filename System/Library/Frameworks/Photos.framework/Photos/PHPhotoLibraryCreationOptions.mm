@interface PHPhotoLibraryCreationOptions
+ (id)creationOptionsForApplicationLibraryWithContainerIdentifier:(id)identifier;
+ (id)creationOptionsForDefaultApplicationLibraryWithContainerIdentifier:(id)identifier;
+ (id)creationOptionsForUserLibrary;
- (NSString)containerIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContainerIdentifier:(id)identifier;
@end

@implementation PHPhotoLibraryCreationOptions

+ (id)creationOptionsForUserLibrary
{
  v2 = objc_alloc_init(self);
  [v2 setDomain:2];
  [v2 setInternalCreateOptions:32];

  return v2;
}

+ (id)creationOptionsForApplicationLibraryWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(self);
  [v5 setDomain:3];
  if (identifierCopy)
  {
    [v5 setContainerIdentifier:identifierCopy];
  }

  else
  {
    v6 = +[PHPhotoLibraryIdentifier defaultApplicationContainerIdentifier];
    [v5 setContainerIdentifier:v6];
  }

  [v5 setInternalCreateOptions:115];

  return v5;
}

+ (id)creationOptionsForDefaultApplicationLibraryWithContainerIdentifier:(id)identifier
{
  v3 = [self creationOptionsForApplicationLibraryWithContainerIdentifier:identifier];
  [v3 setUuid:*MEMORY[0x1E69BEC68]];

  return v3;
}

- (void)setContainerIdentifier:(id)identifier
{
  self->_containerIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (NSString)containerIdentifier
{
  v3 = self->_containerIdentifier;
  if (!v3)
  {
    if ([(PHPhotoLibraryCreationOptions *)self domain]== 3)
    {
      v3 = +[PHPhotoLibraryIdentifier defaultApplicationContainerIdentifier];
    }

    else
    {
      v3 = *MEMORY[0x1E69BECA8];
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  libraryURL = [(PHPhotoLibraryCreationOptions *)self libraryURL];
  [v4 setLibraryURL:libraryURL];

  [v4 setDomain:{-[PHPhotoLibraryCreationOptions domain](self, "domain")}];
  userDescription = [(PHPhotoLibraryCreationOptions *)self userDescription];
  [v4 setUserDescription:userDescription];

  containerIdentifier = [(PHPhotoLibraryCreationOptions *)self containerIdentifier];
  [v4 setContainerIdentifier:containerIdentifier];

  [v4 setInternalCreateOptions:{-[PHPhotoLibraryCreationOptions internalCreateOptions](self, "internalCreateOptions")}];
  uuid = [(PHPhotoLibraryCreationOptions *)self uuid];
  [v4 setUuid:uuid];

  return v4;
}

@end