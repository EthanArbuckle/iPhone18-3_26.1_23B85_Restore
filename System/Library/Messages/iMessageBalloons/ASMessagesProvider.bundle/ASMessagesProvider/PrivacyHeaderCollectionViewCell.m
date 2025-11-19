@interface PrivacyHeaderCollectionViewCell
- (NSArray)accessibilitySupplementaryItemLabels;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyHeaderCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_4FB924();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_4FA54C();
}

- (NSArray)accessibilitySupplementaryItemLabels
{
  swift_beginAccess();
  type metadata accessor for DynamicTypeLinkedLabel();

  v2.super.isa = sub_769450().super.isa;

  return v2.super.isa;
}

@end