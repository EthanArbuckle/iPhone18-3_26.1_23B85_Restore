@interface PaperKitDrawingCanvasView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)bounds;
- (void)didMoveToSuperview;
- (void)handleGesture:(id)a3;
- (void)layoutSubviews;
- (void)onTap;
- (void)setBounds:(CGRect)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PaperKitDrawingCanvasView

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100497A54(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_100497C78();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100497E44();
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PaperKitDrawingCanvasView();
  [(PaperKitDrawingCanvasView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for PaperKitDrawingCanvasView();
  v19.receiver = self;
  v19.super_class = v8;
  v9 = self;
  [(PaperKitDrawingCanvasView *)&v19 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v9;
  v18.super_class = v8;
  [(PaperKitDrawingCanvasView *)&v18 setBounds:x, y, width, height];
  sub_100498364(v11, v13, v15, v17);
}

- (void)onTap
{
  v2 = self;
  sub_1004996CC();
}

- (void)handleGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10049A0DC(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = self;
  LOBYTE(self) = sub_10049A820(v5);

  return (self & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = self;
  LOBYTE(self) = sub_10049A820(v5);

  return self & 1;
}

@end