@interface PUPickerStyleablePhotoSuggestion
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerStyleablePhotoSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PickerStyleablePhotoSuggestion.encode(with:)(coderCopy);
}

@end