@interface CNContactPosterUpdateRequest
+ (id)requestToUpdateWatchWallpaper:(id)wallpaper forContactIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CNContactPosterUpdateRequest)initWithCoder:(id)coder;
- (CNContactPosterUpdateRequest)initWithWatchWallpaperImages:(id)images contactIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactPosterUpdateRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (contactIdentifier = self->_contactIdentifier, contactIdentifier | equalCopy->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?]|| (watchWallpaperImages = self->_watchWallpaperImages, watchWallpaperImages | equalCopy->_watchWallpaperImages) && ![(NSArray *)watchWallpaperImages isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CNContactPosterUpdateRequest)initWithWatchWallpaperImages:(id)images contactIdentifier:(id)identifier
{
  imagesCopy = images;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CNContactPosterUpdateRequest;
  v9 = [(CNContactPosterUpdateRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_watchWallpaperImages, images);
    v11 = [identifierCopy copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v13 = v10;
  }

  return v10;
}

+ (id)requestToUpdateWatchWallpaper:(id)wallpaper forContactIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  wallpaperCopy = wallpaper;
  v7 = [CNContactPosterUpdateRequest alloc];
  v11[0] = wallpaperCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactPosterUpdateRequest *)v7 initWithWatchWallpaperImages:v8 contactIdentifier:identifierCopy];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  watchWallpaperImages = self->_watchWallpaperImages;
  coderCopy = coder;
  [coderCopy encodeObject:watchWallpaperImages forKey:@"watchWallpaperImages"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (CNContactPosterUpdateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"watchWallpaperImages"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNContactPosterUpdateRequest *)self initWithWatchWallpaperImages:v5 contactIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end