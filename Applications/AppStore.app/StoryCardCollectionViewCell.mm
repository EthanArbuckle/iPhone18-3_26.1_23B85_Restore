@interface StoryCardCollectionViewCell
- (NSArray)accessibilityElements;
- (void)handleMuteButtonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation StoryCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100216128();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002166AC();
}

- (void)handleMuteButtonTapped
{
  selfCopy = self;
  sub_100216B94();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_100216F94();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StoryCardCollectionViewCell();
  [(StoryCardCollectionViewCell *)&v7 setAccessibilityElements:v5.super.isa];
}

@end