@interface PUPickerStyleablePhotoSuggestion
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerStyleablePhotoSuggestion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PickerStyleablePhotoSuggestion.encode(with:)(v4);
}

@end