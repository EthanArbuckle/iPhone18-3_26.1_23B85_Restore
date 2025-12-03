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
  sub_1003264A4();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100326E70(forCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100327884();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100327A2C(change);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100327D44(recognizerCopy, touchCopy);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

@end