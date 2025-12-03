@interface EditorialCardCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)stateChangedFor:(id)for;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EditorialCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10025E740();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_10025F10C(forCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10025BB58();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10025FB68(change);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10025FE80(recognizerCopy, touchCopy);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end