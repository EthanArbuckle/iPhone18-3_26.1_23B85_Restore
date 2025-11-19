@interface EditorialCardCollectionViewCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)stateChangedFor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation EditorialCardCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1003264A4();
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100326E70(v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100327884();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100327A2C(a3);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100327D44(v6, v7);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

@end