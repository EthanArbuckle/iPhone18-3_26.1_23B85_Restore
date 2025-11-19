@interface PKTextInputDebugTargetsView
- (PKTextInputDebugTargetsView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setVisualizationElements:(id)a3;
@end

@implementation PKTextInputDebugTargetsView

- (PKTextInputDebugTargetsView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKTextInputDebugTargetsView;
  v3 = [(PKTextInputDebugTargetsView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputDebugTargetsView *)v3 setBackgroundColor:v4];

    [(PKTextInputDebugTargetsView *)v3 setUserInteractionEnabled:0];
    visualizationElements = v3->_visualizationElements;
    v3->_visualizationElements = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)setVisualizationElements:(id)a3
{
  if (self->_visualizationElements != a3)
  {
    v4 = [a3 copy];
    visualizationElements = self->_visualizationElements;
    self->_visualizationElements = v4;

    self->_dashLinePhase = self->_dashLinePhase + 2.0;

    [(PKTextInputDebugTargetsView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PKTextInputDebugTargetsView;
  [(PKTextInputDebugTargetsView *)&v35 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.8 blue:0.0 alpha:0.15];
  v6 = [v5 colorWithAlphaComponent:0.3];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [(PKTextInputDebugTargetsView *)self visualizationElements];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [(PKTextInputElement *)v12 coordinateSpace];

        if (v13)
        {
          v14 = [(PKTextInputElement *)v12 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [(PKTextInputElement *)v12 coordinateSpace];
          v22 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v21, self, v14, v16, v18, v20);
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v39.origin.x = v22;
          v39.origin.y = v24;
          v39.size.width = v26;
          v39.size.height = v28;
          v29 = CGPathCreateWithRoundedRect(v39, 4.0, 4.0, 0);
          CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);
          CGContextAddPath(CurrentContext, v29);
          CGContextFillPath(CurrentContext);
          CGContextSetStrokeColorWithColor(CurrentContext, [v6 CGColor]);
          CGContextSetLineWidth(CurrentContext, 1.0);
          CGContextAddPath(CurrentContext, v29);
          CGContextStrokePath(CurrentContext);
          CGPathRelease(v29);
          v40.origin.x = [(PKTextInputElement *)v12 hitToleranceFrameFromElementFrame:v22, v24, v26, v28];
          v30 = CGPathCreateWithRoundedRect(v40, 4.0, 4.0, 0);
          CGContextAddPath(CurrentContext, v30);
          CGContextSetLineWidth(CurrentContext, 2.0);
          CGContextSetStrokeColorWithColor(CurrentContext, [v6 CGColor]);
          *lengths = xmmword_1C801C7C0;
          CGContextSetLineDash(CurrentContext, self->_dashLinePhase, lengths, 2uLL);
          CGContextStrokePath(CurrentContext);
          CGPathRelease(v30);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }
}

@end