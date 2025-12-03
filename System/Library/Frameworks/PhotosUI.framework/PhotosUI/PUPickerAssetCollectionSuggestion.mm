@interface PUPickerAssetCollectionSuggestion
- (NSString)localIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerAssetCollectionSuggestion

- (NSString)localIdentifier
{
  PickerAssetCollectionSuggestion.localIdentifier.getter();
  v2 = sub_1D21530BC();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PickerAssetCollectionSuggestion.encode(with:)(coderCopy);
}

@end