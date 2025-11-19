@interface PrivacyHeaderCollectionViewCell
- (NSArray)accessibilitySupplementaryItemLabels;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyHeaderCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1003DF658();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003DFA9C();
}

- (NSArray)accessibilitySupplementaryItemLabels
{
  swift_beginAccess();
  type metadata accessor for DynamicTypeLinkedLabel();

  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

@end