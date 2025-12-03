@interface PUPickerWallpaperSuggestion
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerWallpaperSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PickerWallpaperSuggestion.encode(with:)(coderCopy);
}

@end