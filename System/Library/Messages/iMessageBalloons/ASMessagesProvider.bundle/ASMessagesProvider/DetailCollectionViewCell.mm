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
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_340310();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_340C1C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didTapWithAccessoryView:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v8[3] = sub_BE70(0, &unk_948000);
    v8[0] = a3;
    v6 = a3;
    v7 = self;
    sub_F714(v3);
    v3(v8);
    sub_F704(v3);
    sub_10A2C(v8, &unk_93FBD0);
  }
}

- (void)prepareForReuse
{
  v2 = self;
  sub_34177C();
}

@end