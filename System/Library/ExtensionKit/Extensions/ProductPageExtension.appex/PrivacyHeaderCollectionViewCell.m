@interface PrivacyHeaderCollectionViewCell
- (NSArray)accessibilitySupplementaryItemLabels;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyHeaderCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100107240();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100107684();
}

- (NSArray)accessibilitySupplementaryItemLabels
{
  swift_beginAccess();
  type metadata accessor for DynamicTypeLinkedLabel();

  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

@end