@interface UpdatesLockupCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation UpdatesLockupCollectionViewCell

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  v2 = [(UpdatesLockupCollectionViewCell *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  v4 = a3;
  v5 = v6.receiver;
  [(UpdatesLockupCollectionViewCell *)&v6 setBackgroundColor:v4];
  sub_10042E718();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10042E858();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10042EF28();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_10042F924(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end