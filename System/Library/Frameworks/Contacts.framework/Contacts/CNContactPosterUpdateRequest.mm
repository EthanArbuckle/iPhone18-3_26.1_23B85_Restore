@interface CNContactPosterUpdateRequest
+ (id)requestToUpdateWatchWallpaper:(id)a3 forContactIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNContactPosterUpdateRequest)initWithCoder:(id)a3;
- (CNContactPosterUpdateRequest)initWithWatchWallpaperImages:(id)a3 contactIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactPosterUpdateRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (contactIdentifier = self->_contactIdentifier, contactIdentifier | v4->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?]|| (watchWallpaperImages = self->_watchWallpaperImages, watchWallpaperImages | v4->_watchWallpaperImages) && ![(NSArray *)watchWallpaperImages isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CNContactPosterUpdateRequest)initWithWatchWallpaperImages:(id)a3 contactIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNContactPosterUpdateRequest;
  v9 = [(CNContactPosterUpdateRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_watchWallpaperImages, a3);
    v11 = [v8 copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v13 = v10;
  }

  return v10;
}

+ (id)requestToUpdateWatchWallpaper:(id)a3 forContactIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [CNContactPosterUpdateRequest alloc];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(CNContactPosterUpdateRequest *)v7 initWithWatchWallpaperImages:v8 contactIdentifier:v5];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  watchWallpaperImages = self->_watchWallpaperImages;
  v5 = a3;
  [v5 encodeObject:watchWallpaperImages forKey:@"watchWallpaperImages"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (CNContactPosterUpdateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"watchWallpaperImages"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];

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
    v8 = 0;
  }

  else
  {
    self = [(CNContactPosterUpdateRequest *)self initWithWatchWallpaperImages:v5 contactIdentifier:v6];
    v8 = self;
  }

  return v8;
}

@end