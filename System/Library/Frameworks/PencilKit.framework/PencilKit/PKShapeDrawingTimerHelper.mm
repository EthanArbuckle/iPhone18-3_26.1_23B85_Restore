@interface PKShapeDrawingTimerHelper
- (PKShapeDrawingTimerHelper)initWithDelegate:(id)a3;
- (void)addStrokePoint:(CGPoint)a3 inputPoint:(id *)a4;
- (void)beginStrokeAtPoint:(CGPoint)a3;
- (void)shapeDrawingControllerShapeDetectionCancelled:(id)a3;
- (void)shapeDrawingControllerShapeGestureDetected:(id)a3 isFastGesture:(BOOL)a4;
- (void)teardown;
@end

@implementation PKShapeDrawingTimerHelper

- (PKShapeDrawingTimerHelper)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKShapeDrawingTimerHelper;
  v5 = [(PKShapeDrawingTimerHelper *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[PKShapeDrawingController alloc] initWithDelegate:v6];
    shapeDrawingController = v6->_shapeDrawingController;
    v6->_shapeDrawingController = v7;

    v9 = v6->_shapeDrawingController;
    if (v9)
    {
      v9->_shapeRecognitionOn = 1;
    }
  }

  return v6;
}

- (void)beginStrokeAtPoint:(CGPoint)a3
{
  [(PKShapeDrawingController *)self->_shapeDrawingController beginStrokeAtPoint:a3.y];
  shapeDrawingController = self->_shapeDrawingController;
  if (shapeDrawingController)
  {
    [(PKShapeDrawingController *)shapeDrawingController _checkDetectedStroke];
    v5 = self->_shapeDrawingController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PKShapeDrawingTimerHelper_beginStrokeAtPoint___block_invoke;
  v11[3] = &unk_1E82DAAB0;
  v12 = v6;
  v8 = v6;
  v9 = [v7 scheduledTimerWithTimeInterval:1 repeats:v11 block:0.05];
  timer = self->_timer;
  self->_timer = v9;
}

void __48__PKShapeDrawingTimerHelper_beginStrokeAtPoint___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [(PKShapeDrawingController *)v1 _checkDetectedStroke];
  }
}

- (void)addStrokePoint:(CGPoint)a3 inputPoint:(id *)a4
{
  shapeDrawingController = self->_shapeDrawingController;
  v6 = *&a4->var13;
  v11[6] = *&a4->var11;
  v11[7] = v6;
  var15 = a4->var15;
  v7 = *&a4->var5;
  v11[2] = *&a4->var3;
  v11[3] = v7;
  v8 = *&a4->var9;
  v11[4] = *&a4->var7;
  v11[5] = v8;
  v9 = *&a4->var1;
  v11[0] = a4->var0;
  v11[1] = v9;
  [(PKShapeDrawingController *)shapeDrawingController addStrokePoint:v11 inputPoint:a3.x, a3.y];
  v10 = self->_shapeDrawingController;
  if (v10)
  {

    [(PKShapeDrawingController *)v10 _checkDetectedStroke];
  }
}

- (void)teardown
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)shapeDrawingControllerShapeGestureDetected:(id)a3 isFastGesture:(BOOL)a4
{
  v5 = [PKShape alloc];
  v6 = [(PKShape *)v5 initWithShapeType:8 strokes:MEMORY[0x1E695E0F0] originalStroke:0];
  [(PKShapeDrawingController *)self->_shapeDrawingController setDetectedShape:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shapeGestureDetectedOnShapeDrawingTimerHelper:self];
}

- (void)shapeDrawingControllerShapeDetectionCancelled:(id)a3
{
  [(PKShapeDrawingController *)self->_shapeDrawingController setDetectedShape:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shapeGestureCancelledOnShapeDrawingTimerHelper:self];
}

@end