@interface DetailCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTapWithAccessoryView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)wasTapped;
@end

@implementation DetailCollectionViewCell

- (void)wasTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002FC5E4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1002FCEF0(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didTapWithAccessoryView:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v8[3] = sub_100016C60(0, &qword_100928A80);
    v8[0] = a3;
    v6 = a3;
    v7 = self;
    sub_10001B5AC(v3);
    v3(v8);
    sub_1000164A8(v3);
    sub_10000C8CC(v8, &unk_100923520);
  }
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1002FDA50();
}

@end