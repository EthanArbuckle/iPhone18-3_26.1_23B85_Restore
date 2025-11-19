@interface PHPhotoLibraryCreationOptions
+ (id)creationOptionsForApplicationLibraryWithContainerIdentifier:(id)a3;
+ (id)creationOptionsForDefaultApplicationLibraryWithContainerIdentifier:(id)a3;
+ (id)creationOptionsForUserLibrary;
- (NSString)containerIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContainerIdentifier:(id)a3;
@end

@implementation PHPhotoLibraryCreationOptions

+ (id)creationOptionsForUserLibrary
{
  v2 = objc_alloc_init(a1);
  [v2 setDomain:2];
  [v2 setInternalCreateOptions:32];

  return v2;
}

+ (id)creationOptionsForApplicationLibraryWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setDomain:3];
  if (v4)
  {
    [v5 setContainerIdentifier:v4];
  }

  else
  {
    v6 = +[PHPhotoLibraryIdentifier defaultApplicationContainerIdentifier];
    [v5 setContainerIdentifier:v6];
  }

  [v5 setInternalCreateOptions:115];

  return v5;
}

+ (id)creationOptionsForDefaultApplicationLibraryWithContainerIdentifier:(id)a3
{
  v3 = [a1 creationOptionsForApplicationLibraryWithContainerIdentifier:a3];
  [v3 setUuid:*MEMORY[0x1E69BEC68]];

  return v3;
}

- (void)setContainerIdentifier:(id)a3
{
  self->_containerIdentifier = [a3 copy];

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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(PHPhotoLibraryCreationOptions *)self libraryURL];
  [v4 setLibraryURL:v5];

  [v4 setDomain:{-[PHPhotoLibraryCreationOptions domain](self, "domain")}];
  v6 = [(PHPhotoLibraryCreationOptions *)self userDescription];
  [v4 setUserDescription:v6];

  v7 = [(PHPhotoLibraryCreationOptions *)self containerIdentifier];
  [v4 setContainerIdentifier:v7];

  [v4 setInternalCreateOptions:{-[PHPhotoLibraryCreationOptions internalCreateOptions](self, "internalCreateOptions")}];
  v8 = [(PHPhotoLibraryCreationOptions *)self uuid];
  [v4 setUuid:v8];

  return v4;
}

@end