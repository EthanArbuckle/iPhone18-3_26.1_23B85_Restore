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
  sub_1003C8924();
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1003C92F0(forCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003C5D94();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003C9D4C(change);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1003CA064(recognizerCopy, touchCopy);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

@end