@interface HNDMousePointerAppearance
- (HNDMousePointerAppearance)init;
- (double)fingerInnerCircleInnerRadius;
- (double)fingerInnerRadius;
- (double)innerCircleStrokeWidth;
- (double)strokeOutlineWidth;
- (double)strokeWidth;
- (id)_uiColorForCursorColor:(int64_t)a3;
- (id)deselectedStrokeColor;
- (id)selectedStrokeColor;
- (void)setCursorColor:(int64_t)a3;
@end

@implementation HNDMousePointerAppearance

- (HNDMousePointerAppearance)init
{
  v4.receiver = self;
  v4.super_class = HNDMousePointerAppearance;
  v2 = [(HNDMousePointerAppearance *)&v4 init];
  [(HNDMousePointerAppearance *)v2 setSizeMultiplier:1.0];
  return v2;
}

- (void)setCursorColor:(int64_t)a3
{
  if (self->_cursorColor != a3)
  {
    self->_cursorColor = a3;
    v5 = [(HNDMousePointerAppearance *)self _uiColorForCursorColor:?];
    pointerUIColorRepresentation = self->_pointerUIColorRepresentation;
    self->_pointerUIColorRepresentation = v5;

    _objc_release_x1(v5, pointerUIColorRepresentation);
  }
}

- (id)_uiColorForCursorColor:(int64_t)a3
{
  v3 = AXSAssistiveTouchCursorColor();
  if (v3)
  {
    v3 = [UIColor colorWithCGColor:v3];
  }

  return v3;
}

- (id)selectedStrokeColor
{
  if ([(HNDMousePointerAppearance *)self cursorColor]== 1)
  {
    v3 = +[UIColor whiteColor];
LABEL_8:
    v4 = v3;
    goto LABEL_9;
  }

  if ([(HNDMousePointerAppearance *)self cursorColor]!= 2 || ([(HNDMousePointerAppearance *)self _uiColorForCursorColor:1], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(HNDMousePointerAppearance *)self pointerUIColorRepresentation];

    if (v5)
    {
      v6 = [(HNDMousePointerAppearance *)self pointerUIColorRepresentation];
      v4 = AXSlightlyBrighterColorForColor();

      goto LABEL_9;
    }

    v8.receiver = self;
    v8.super_class = HNDMousePointerAppearance;
    v3 = [(HNDMousePointerAppearance *)&v8 selectedStrokeColor];
    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

- (id)deselectedStrokeColor
{
  v3 = [(HNDMousePointerAppearance *)self pointerUIColorRepresentation];

  if (v3)
  {
    v4 = [(HNDMousePointerAppearance *)self pointerUIColorRepresentation];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HNDMousePointerAppearance;
    v4 = [(HNDMousePointerAppearance *)&v6 deselectedStrokeColor];
  }

  return v4;
}

- (double)strokeWidth
{
  v7.receiver = self;
  v7.super_class = HNDMousePointerAppearance;
  [(HNDMousePointerAppearance *)&v7 strokeWidth];
  v4 = v3;
  [(HNDMousePointerAppearance *)self sizeMultiplier];
  return v4 * v5;
}

- (double)strokeOutlineWidth
{
  v7.receiver = self;
  v7.super_class = HNDMousePointerAppearance;
  [(HNDMousePointerAppearance *)&v7 strokeOutlineWidth];
  v4 = v3;
  [(HNDMousePointerAppearance *)self sizeMultiplier];
  return v4 * v5;
}

- (double)innerCircleStrokeWidth
{
  v7.receiver = self;
  v7.super_class = HNDMousePointerAppearance;
  [(HNDMousePointerAppearance *)&v7 innerCircleStrokeWidth];
  v4 = v3;
  [(HNDMousePointerAppearance *)self sizeMultiplier];
  return v4 * v5;
}

- (double)fingerInnerRadius
{
  v7.receiver = self;
  v7.super_class = HNDMousePointerAppearance;
  [(HNDMousePointerAppearance *)&v7 fingerInnerRadius];
  v4 = v3;
  [(HNDMousePointerAppearance *)self sizeMultiplier];
  return v4 * v5;
}

- (double)fingerInnerCircleInnerRadius
{
  v7.receiver = self;
  v7.super_class = HNDMousePointerAppearance;
  [(HNDMousePointerAppearance *)&v7 fingerInnerCircleInnerRadius];
  v4 = v3;
  [(HNDMousePointerAppearance *)self sizeMultiplier];
  return v4 * v5;
}

@end