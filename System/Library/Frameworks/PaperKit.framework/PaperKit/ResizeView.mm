@interface ResizeView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC8PaperKit10ResizeView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dragMoved:(id)moved;
- (void)layoutSubviews;
- (void)resizeHandleMoved:(id)moved;
- (void)rotate:(id)rotate;
@end

@implementation ResizeView

- (void)layoutSubviews
{
  selfCopy = self;
  ResizeView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if ([(ResizeView *)selfCopy isHidden])
  {

LABEL_3:
    selfCopy = 0;
    goto LABEL_7;
  }

  v9.value.super.isa = eventCopy;
  ResizeView.hitTestChrome(_:with:)(v10, __PAIR128__(*&y, *&x), v9);
  if (v11)
  {
    v12 = v11;

    selfCopy = v12;
  }

  else
  {
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8PaperKit10ResizeView_borderView) frame];
    v16.x = x;
    v16.y = y;
    v13 = CGRectContainsPoint(v17, v16);

    if (!v13)
    {
      goto LABEL_3;
    }
  }

LABEL_7:

  return selfCopy;
}

- (void)resizeHandleMoved:(id)moved
{
  movedCopy = moved;
  selfCopy = self;
  ResizeView.resizeHandleMoved(_:)(movedCopy);
}

- (void)dragMoved:(id)moved
{
  movedCopy = moved;
  selfCopy = self;
  ResizeView.dragMoved(_:)(movedCopy);
}

- (void)rotate:(id)rotate
{
  rotateCopy = rotate;
  selfCopy = self;
  ResizeView.rotate(_:)(rotateCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = ResizeView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = ResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (_TtC8PaperKit10ResizeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end