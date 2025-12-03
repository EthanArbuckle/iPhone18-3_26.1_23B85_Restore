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
  sub_18A090();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_18A614();
}

- (void)handleMuteButtonTapped
{
  selfCopy = self;
  sub_1883B8();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_18A8A0();

  if (v3)
  {
    v4.super.isa = sub_769450().super.isa;
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
    sub_769460();
    selfCopy = self;
    v5.super.isa = sub_769450().super.isa;
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