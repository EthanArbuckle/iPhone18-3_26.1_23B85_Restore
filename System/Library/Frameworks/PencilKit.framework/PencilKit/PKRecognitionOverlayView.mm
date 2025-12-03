@interface PKRecognitionOverlayView
- (CGAffineTransform)drawingTransform;
- (PKRecognitionOverlayView)initWithFrame:(CGRect)frame visualizationManager:(id)manager;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setDrawingTransform:(CGAffineTransform *)transform;
@end

@implementation PKRecognitionOverlayView

- (PKRecognitionOverlayView)initWithFrame:(CGRect)frame visualizationManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PKRecognitionOverlayView;
  height = [(PKRecognitionOverlayView *)&v15 initWithFrame:x, y, width, height];
  visualizationManager = height->_visualizationManager;
  height->_visualizationManager = managerCopy;
  v12 = managerCopy;

  [(CHVisualizationManager *)v12 setDelegate:height];
  clearColor = [MEMORY[0x1E69DC888] clearColor];

  [(PKRecognitionOverlayView *)height setBackgroundColor:clearColor];
  return height;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(PKRecognitionOverlayView *)self drawingTransform];
  CGContextConcatCTM(CurrentContext, &v14);
  visualizationManager = [(PKRecognitionOverlayView *)self visualizationManager];
  [(PKRecognitionOverlayView *)self bounds];
  [visualizationManager drawVisualizationInRect:CurrentContext context:x viewBounds:{y, width, height, v10, v11, v12, v13}];

  CGContextRestoreGState(CurrentContext);
}

- (void)dealloc
{
  visualizationManager = [(PKRecognitionOverlayView *)self visualizationManager];
  [visualizationManager setDelegate:0];

  v4.receiver = self;
  v4.super_class = PKRecognitionOverlayView;
  [(PKRecognitionOverlayView *)&v4 dealloc];
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&self[9].a;
  *&retstr->a = *&self[8].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].c;
  return self;
}

- (void)setDrawingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_drawingTransform.a = *&transform->a;
  *&self->_drawingTransform.c = v4;
  *&self->_drawingTransform.tx = v3;
}

@end