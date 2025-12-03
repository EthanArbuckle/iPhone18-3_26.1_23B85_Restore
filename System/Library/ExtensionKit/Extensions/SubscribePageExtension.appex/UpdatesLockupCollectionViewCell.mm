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
  sub_10042E718();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10042E858();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10042EF28();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10042F924(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end