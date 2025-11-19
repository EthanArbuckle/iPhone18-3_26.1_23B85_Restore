@interface ResizeView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC8PaperKit10ResizeView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dragMoved:(id)a3;
- (void)layoutSubviews;
- (void)resizeHandleMoved:(id)a3;
- (void)rotate:(id)a3;
@end

@implementation ResizeView

- (void)layoutSubviews
{
  v2 = self;
  ResizeView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if ([(ResizeView *)v8 isHidden])
  {

LABEL_3:
    v8 = 0;
    goto LABEL_7;
  }

  v9.value.super.isa = v7;
  ResizeView.hitTestChrome(_:with:)(v10, __PAIR128__(*&y, *&x), v9);
  if (v11)
  {
    v12 = v11;

    v8 = v12;
  }

  else
  {
    [*(&v8->super.super.super.isa + OBJC_IVAR____TtC8PaperKit10ResizeView_borderView) frame];
    v16.x = x;
    v16.y = y;
    v13 = CGRectContainsPoint(v17, v16);

    if (!v13)
    {
      goto LABEL_3;
    }
  }

LABEL_7:

  return v8;
}

- (void)resizeHandleMoved:(id)a3
{
  v4 = a3;
  v5 = self;
  ResizeView.resizeHandleMoved(_:)(v4);
}

- (void)dragMoved:(id)a3
{
  v4 = a3;
  v5 = self;
  ResizeView.dragMoved(_:)(v4);
}

- (void)rotate:(id)a3
{
  v4 = a3;
  v5 = self;
  ResizeView.rotate(_:)(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = ResizeView.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(v6, v7);

  return v9;
}

- (_TtC8PaperKit10ResizeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end