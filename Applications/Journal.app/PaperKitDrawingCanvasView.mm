@interface PaperKitDrawingCanvasView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)bounds;
- (void)didMoveToSuperview;
- (void)handleGesture:(id)gesture;
- (void)layoutSubviews;
- (void)onTap;
- (void)setBounds:(CGRect)bounds;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PaperKitDrawingCanvasView

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  sub_100497A54(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_100497C78();
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = type metadata accessor for PaperKitDrawingCanvasView();
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(PaperKitDrawingCanvasView *)&v19 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(PaperKitDrawingCanvasView *)&v18 setBounds:x, y, width, height];
  sub_100498364(v11, v13, v15, v17);
}

- (void)onTap
{
  selfCopy = self;
  sub_1004996CC();
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_10049A0DC(gestureCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  LOBYTE(self) = sub_10049A820(gestureRecognizerCopy);

  return (self & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  LOBYTE(self) = sub_10049A820(gestureRecognizerCopy);

  return self & 1;
}

@end