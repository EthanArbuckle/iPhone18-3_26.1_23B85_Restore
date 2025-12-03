@interface PKDetectionView
- (BOOL)hitTest:(CGPoint)test;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)drawingTransform;
- (CGRect)drawingBounds;
- (PKDetectionItem)item;
- (PKDetectionView)init;
- (double)_underlineThickness;
- (id)_underlineColor;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)drawRect:(CGRect)rect;
- (void)setDrawingTransform:(CGAffineTransform *)transform;
- (void)tapHandler:(id)handler;
@end

@implementation PKDetectionView

- (PKDetectionView)init
{
  v7.receiver = self;
  v7.super_class = PKDetectionView;
  v2 = [(PKDetectionView *)&v7 init];
  [(PKDetectionView *)v2 setOpaque:0];
  [(PKDetectionView *)v2 setContentMode:3];
  [(PKDetectionView *)v2 setTintAdjustmentMode:1];
  v3 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v2];
  menuInteraction = v2->_menuInteraction;
  v2->_menuInteraction = v3;

  [(PKDetectionView *)v2 addInteraction:v2->_menuInteraction];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_tapHandler_];
  [v5 setAllowedTouchTypes:&unk_1F47C1EE0];
  [(PKDetectionView *)v2 addGestureRecognizer:v5];

  return v2;
}

- (PKDetectionItem)item
{
  v2 = objc_opt_new();

  return v2;
}

- (CGRect)drawingBounds
{
  item = [(PKDetectionView *)self item];
  [item _frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)_underlineThickness
{
  item = [(PKDetectionView *)self item];
  [item _strokeWidth];
  v4 = v3 * 0.5;

  result = fmin(v4, 10.0);
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

- (id)_underlineColor
{
  item = [(PKDetectionView *)self item];
  strokeColor = [item strokeColor];
  v5 = strokeColor;
  if (strokeColor)
  {
    tintColor = strokeColor;
  }

  else
  {
    tintColor = [(PKDetectionView *)self tintColor];
  }

  v7 = tintColor;

  return v7;
}

- (void)drawRect:(CGRect)rect
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(PKDetectionView *)self _underlineColor:rect.origin.x];
  item = [(PKDetectionView *)self item];
  strokeColor = [item strokeColor];

  traitCollection = [(PKDetectionView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (strokeColor)
  {
    if (userInterfaceStyle == 2)
    {
      *&v23 = 0;
      v27 = 0.0;
      *&v28 = 0;
      v26 = 0.0;
      if ([v4 getHue:&v23 saturation:&v28 brightness:&v27 alpha:&v26])
      {
        v9 = fmin(v27 + 0.7, 1.0);
        v10 = 0.0;
        if (*&v28 + -0.1 >= 0.0)
        {
          v10 = *&v28 + -0.1;
        }

        v27 = v9;
        *&v28 = v10;
        v26 = fmin(v26 + 0.2, 1.0);
        v11 = [MEMORY[0x1E69DC888] colorWithHue:*&v23 saturation:? brightness:? alpha:?];

        v4 = v11;
      }
    }
  }

  [v4 set];
  item2 = [(PKDetectionView *)self item];
  itemSpaceBaselinePath = [item2 itemSpaceBaselinePath];
  v14 = [itemSpaceBaselinePath copy];

  [(PKDetectionView *)self _setLineDashFor:v14];
  [(PKDetectionView *)self _underlineThickness];
  [v14 setLineWidth:?];
  [v14 setLineCapStyle:1];
  [v14 setLineJoinStyle:1];
  p_drawingTransform = &self->_drawingTransform;
  v16 = *&self->_drawingTransform.c;
  v23 = *&self->_drawingTransform.a;
  v24 = v16;
  v25 = *&self->_drawingTransform.tx;
  [v14 applyTransform:&v23];
  [v14 stroke];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  LODWORD(itemSpaceBaselinePath) = [standardUserDefaults BOOLForKey:@"internalSettings.datadetectors.showBounds"];

  if (itemSpaceBaselinePath)
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
    [blueColor set];

    item3 = [(PKDetectionView *)self item];
    itemSpaceBoundsPath = [item3 itemSpaceBoundsPath];
    v21 = [itemSpaceBoundsPath copy];

    [v21 setLineWidth:0.5];
    v28 = xmmword_1C801C7C0;
    [v21 setLineDash:&v28 count:2 phase:0.0];
    v22 = *&p_drawingTransform->c;
    v23 = *&p_drawingTransform->a;
    v24 = v22;
    v25 = *&p_drawingTransform->tx;
    [v21 applyTransform:&v23];
    [v21 stroke];
  }
}

- (BOOL)hitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  if (([(PKDetectionView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(PKDetectionView *)self alpha];
  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = *&self->_drawingTransform.c;
  *&v13.a = *&self->_drawingTransform.a;
  *&v13.c = v5;
  *&v13.tx = *&self->_drawingTransform.tx;
  CGAffineTransformInvert(&v14, &v13);
  v12 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, y), *&v14.a, x));
  item = [(PKDetectionView *)self item];
  itemSpaceBoundsPath = [item itemSpaceBoundsPath];
  v8 = [itemSpaceBoundsPath containsPoint:*&v12];

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = PKDetectionView;
  v8 = [(PKDetectionView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 && ([eventCopy PK_isEventFromPencil] & 1) == 0 && -[PKDetectionView hitTest:](self, "hitTest:", x, y))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = PKDetectionView;
  v8 = -[PKDetectionView pointInside:withEvent:](&v10, sel_pointInside_withEvent_, eventCopy, x, y) && ([eventCopy PK_isEventFromPencil] & 1) == 0 && -[PKDetectionView hitTest:](self, "hitTest:", x, y);

  return v8;
}

- (void)tapHandler:(id)handler
{
  [handler locationInView:self];
  if ([(PKDetectionView *)self hitTest:?])
  {
    [(PKDetectionView *)self bounds];
    MidX = CGRectGetMidX(v11);
    [(PKDetectionView *)self bounds];
    MaxY = CGRectGetMaxY(v12);
    item = [(PKDetectionView *)self item];
    menuInteraction = [(PKDetectionView *)self menuInteraction];
    [(PKDetectionView *)self drawingTransform];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v9[0] = *MEMORY[0x1E695EFD0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x1E695EFD0] + 32);
    [item handleTapForMenuForInteraction:menuInteraction location:self view:v9 viewTransform:v10 drawingTransform:{MidX, MaxY}];
  }
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