@interface CNMeCardSharingResult
- (CNMeCardSharingResult)initWithGivenName:(id)name familyName:(id)familyName contactImage:(id)image wallpaper:(id)wallpaper watchWallpaperImageData:(id)data didSaveImageToMeCard:(BOOL)card;
- (id)description;
@end

@implementation CNMeCardSharingResult

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"givenName" object:self->_givenName];
  v5 = [v3 appendName:@"familyName" object:self->_familyName];
  v6 = [v3 appendName:@"contactImage" object:self->_contactImage];
  v7 = [v3 appendName:@"wallpaper" object:self->_wallpaper];
  v8 = [v3 appendName:@"watchWallpaperImageData" object:self->_watchWallpaperImageData];
  v9 = [v3 appendName:@"didSaveToMeCard" BOOLValue:self->_didSaveImageToMeCard];
  build = [v3 build];

  return build;
}

- (CNMeCardSharingResult)initWithGivenName:(id)name familyName:(id)familyName contactImage:(id)image wallpaper:(id)wallpaper watchWallpaperImageData:(id)data didSaveImageToMeCard:(BOOL)card
{
  nameCopy = name;
  familyNameCopy = familyName;
  imageCopy = image;
  wallpaperCopy = wallpaper;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = CNMeCardSharingResult;
  v18 = [(CNMeCardSharingResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_givenName, name);
    objc_storeStrong(&v19->_familyName, familyName);
    objc_storeStrong(&v19->_contactImage, image);
    objc_storeStrong(&v19->_wallpaper, wallpaper);
    objc_storeStrong(&v19->_watchWallpaperImageData, data);
    v19->_didSaveImageToMeCard = card;
    v20 = v19;
  }

  return v19;
}

@end