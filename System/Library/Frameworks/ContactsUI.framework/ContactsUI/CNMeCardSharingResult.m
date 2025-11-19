@interface CNMeCardSharingResult
- (CNMeCardSharingResult)initWithGivenName:(id)a3 familyName:(id)a4 contactImage:(id)a5 wallpaper:(id)a6 watchWallpaperImageData:(id)a7 didSaveImageToMeCard:(BOOL)a8;
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
  v10 = [v3 build];

  return v10;
}

- (CNMeCardSharingResult)initWithGivenName:(id)a3 familyName:(id)a4 contactImage:(id)a5 wallpaper:(id)a6 watchWallpaperImageData:(id)a7 didSaveImageToMeCard:(BOOL)a8
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = CNMeCardSharingResult;
  v18 = [(CNMeCardSharingResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_givenName, a3);
    objc_storeStrong(&v19->_familyName, a4);
    objc_storeStrong(&v19->_contactImage, a5);
    objc_storeStrong(&v19->_wallpaper, a6);
    objc_storeStrong(&v19->_watchWallpaperImageData, a7);
    v19->_didSaveImageToMeCard = a8;
    v20 = v19;
  }

  return v19;
}

@end