@interface PKRecognitionOverlayView
- (CGAffineTransform)drawingTransform;
- (PKRecognitionOverlayView)initWithFrame:(CGRect)a3 visualizationManager:(id)a4;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setDrawingTransform:(CGAffineTransform *)a3;
@end

@implementation PKRecognitionOverlayView

- (PKRecognitionOverlayView)initWithFrame:(CGRect)a3 visualizationManager:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PKRecognitionOverlayView;
  v10 = [(PKRecognitionOverlayView *)&v15 initWithFrame:x, y, width, height];
  visualizationManager = v10->_visualizationManager;
  v10->_visualizationManager = v9;
  v12 = v9;

  [(CHVisualizationManager *)v12 setDelegate:v10];
  v13 = [MEMORY[0x1E69DC888] clearColor];

  [(PKRecognitionOverlayView *)v10 setBackgroundColor:v13];
  return v10;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(PKRecognitionOverlayView *)self drawingTransform];
  CGContextConcatCTM(CurrentContext, &v14);
  v9 = [(PKRecognitionOverlayView *)self visualizationManager];
  [(PKRecognitionOverlayView *)self bounds];
  [v9 drawVisualizationInRect:CurrentContext context:x viewBounds:{y, width, height, v10, v11, v12, v13}];

  CGContextRestoreGState(CurrentContext);
}

- (void)dealloc
{
  v3 = [(PKRecognitionOverlayView *)self visualizationManager];
  [v3 setDelegate:0];

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

- (void)setDrawingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_drawingTransform.a = *&a3->a;
  *&self->_drawingTransform.c = v4;
  *&self->_drawingTransform.tx = v3;
}

@end