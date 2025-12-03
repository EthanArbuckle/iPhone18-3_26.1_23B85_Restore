@interface BaseTodayBrickCollectionViewCell
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setIsAccessibilityElement:(BOOL)element;
@end

@implementation BaseTodayBrickCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001886B8();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001889EC();
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_100188BB0();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  [(BaseTodayBrickCollectionViewCell *)&v4 setAccessibilityTraits:traits];
}

@end