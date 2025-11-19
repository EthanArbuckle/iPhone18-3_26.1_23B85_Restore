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
  sub_10031C2B0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10031C834();
}

- (void)handleMuteButtonTapped
{
  v2 = self;
  sub_10031CD1C();
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    sub_1007532A4();
    v4 = self;
    v5.super.isa = sub_100753294().super.isa;
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