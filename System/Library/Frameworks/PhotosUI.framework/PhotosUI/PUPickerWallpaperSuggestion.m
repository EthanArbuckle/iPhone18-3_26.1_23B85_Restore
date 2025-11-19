@interface PUPickerWallpaperSuggestion
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerWallpaperSuggestion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PickerWallpaperSuggestion.encode(with:)(v4);
}

@end