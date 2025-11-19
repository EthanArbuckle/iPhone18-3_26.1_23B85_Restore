@interface PUPickerAssetCollectionSuggestion
- (NSString)localIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerAssetCollectionSuggestion

- (NSString)localIdentifier
{
  PickerAssetCollectionSuggestion.localIdentifier.getter();
  v2 = sub_1D21530BC();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PickerAssetCollectionSuggestion.encode(with:)(v4);
}

@end