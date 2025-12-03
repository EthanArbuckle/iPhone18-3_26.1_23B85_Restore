@interface UpdatesLockupCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
@end

@implementation UpdatesLockupCollectionViewCell

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  backgroundColor = [(UpdatesLockupCollectionViewCell *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  colorCopy = color;
  v5 = v6.receiver;
  [(UpdatesLockupCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
  sub_1003E8DA4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003E8EE4();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003E95B4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1003E9FB0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end