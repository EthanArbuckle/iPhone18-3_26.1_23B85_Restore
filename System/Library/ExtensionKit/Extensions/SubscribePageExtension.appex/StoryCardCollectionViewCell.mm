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
  sub_10031C2B0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10031C834();
}

- (void)handleMuteButtonTapped
{
  selfCopy = self;
  sub_10031CD1C();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_10031D11C();

  if (v3)
  {
    v4.super.isa = sub_100753294().super.isa;
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
    sub_1007532A4();
    selfCopy = self;
    v5.super.isa = sub_100753294().super.isa;
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