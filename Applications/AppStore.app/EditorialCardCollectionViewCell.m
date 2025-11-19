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
  sub_10025E740();
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10025F10C(v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10025BB58();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10025FB68(a3);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10025FE80(v6, v7);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end