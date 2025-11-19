@interface CNSharingProfileOnboardingFlowResult
- (CGRect)cropRect;
- (id)description;
@end

@implementation CNSharingProfileOnboardingFlowResult

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"givenName" object:self->_givenName];
  v5 = [v3 appendName:@"familyName" object:self->_familyName];
  v6 = [v3 appendName:@"imageData" object:self->_imageData];
  v7 = [v3 appendName:@"wallpaper" object:self->_wallpaper];
  v8 = [v3 appendName:@"watchWallpaperImageData" object:self->_watchWallpaperImageData];
  v9 = NSStringFromCGRect(self->_cropRect);
  v10 = [v3 appendName:@"cropRect" object:v9];

  v11 = [v3 appendName:@"type" object:self->_type];
  v12 = [v3 appendName:@"sharingAudience" integerValue:self->_sharingAudience];
  v13 = [v3 appendName:@"didPersistImageToContact" BOOLValue:self->_didPersistImageToContact];
  v14 = [v3 build];

  return v14;
}

@end