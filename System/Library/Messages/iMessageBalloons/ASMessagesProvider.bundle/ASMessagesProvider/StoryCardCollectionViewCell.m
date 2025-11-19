@interface StoryCardCollectionViewCell
- (NSArray)accessibilityElements;
- (void)handleMuteButtonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation StoryCardCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_18A090();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_18A614();
}

- (void)handleMuteButtonTapped
{
  v2 = self;
  sub_1883B8();
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_769460();
    v4 = self;
    v5.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6 = self;
    v5.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StoryCardCollectionViewCell();
  [(StoryCardCollectionViewCell *)&v7 setAccessibilityElements:v5.super.isa];
}

@end