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
  sub_356380();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_356D4C(forCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_3537F0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3577A8(change);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_357AC0(recognizerCopy, touchCopy);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end