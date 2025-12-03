@interface AppEventSearchResultContentView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation AppEventSearchResultContentView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultContentView();
  [(AppEventSearchResultContentView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001898C();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31AppEventSearchResultContentView_appEventViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10001AE6C(touchCopy);

  return v9 & 1;
}

@end