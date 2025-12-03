@interface AppEventSearchResultContentView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation AppEventSearchResultContentView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultContentView();
  [(AppEventSearchResultContentView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000170E8();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31AppEventSearchResultContentView_appEventViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1000195C8(touchCopy);

  return v9 & 1;
}

@end