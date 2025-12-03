@interface AppEventSearchResultContentView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation AppEventSearchResultContentView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultContentView();
  [(AppEventSearchResultContentView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003EC0D0();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1003EFB84(touchCopy);

  return v9 & 1;
}

@end