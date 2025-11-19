@interface AVTColorWheelView
+ (BOOL)colorItems:(id)a3 containColorItem:(id)a4;
+ (id)buildCircleViewWithDiameter:(double)a3;
+ (id)colorItemsFrom:(id)a3 excluding:(id)a4;
- (AVTColorWheelView)initWithFrame:(CGRect)a3;
- (CGPoint)rotatePoint:(CGPoint)a3 aroundCenter:(CGPoint)a4 withAngle:(double)a5;
- (id)buildAllCircleViews;
- (void)updateWithPrimaryItems:(id)a3 extendedItems:(id)a4;
@end

@implementation AVTColorWheelView

+ (id)buildCircleViewWithDiameter:(double)a3
{
  v3 = [[AVTCircularView alloc] initWithFrame:0.0, 0.0, a3, a3];

  return v3;
}

- (AVTColorWheelView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AVTColorWheelView;
  v3 = [(AVTAttributeValueView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTColorWheelView *)v3 bounds];
    v12 = CGRectInset(v11, 8.0, 8.0);
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
    [(AVTColorWheelView *)v4 setContainerView:v5];

    v6 = [(AVTColorWheelView *)v4 containerView];
    [v6 setAutoresizingMask:18];

    v7 = [(AVTColorWheelView *)v4 containerView];
    [(AVTColorWheelView *)v4 addSubview:v7];

    v8 = [(AVTColorWheelView *)v4 buildAllCircleViews];
    [(AVTColorWheelView *)v4 setCircleViews:v8];
  }

  return v4;
}

- (id)buildAllCircleViews
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVTColorWheelView *)self containerView];
  [v4 bounds];
  MidX = CGRectGetMidX(v21);
  v6 = [(AVTColorWheelView *)self containerView];
  [v6 bounds];
  MidY = CGRectGetMidY(v22);

  v8 = [(AVTColorWheelView *)self containerView];
  [v8 bounds];
  v9 = CGRectGetHeight(v23) * 0.25;

  v10 = [objc_opt_class() buildCircleViewWithDiameter:v9];
  [v10 setCenter:{MidX, MidY}];
  [v10 setAutoresizingMask:63];
  v11 = [(AVTColorWheelView *)self containerView];
  [v11 addSubview:v10];

  [v3 addObject:v10];
  v12 = v9 * 0.5;
  v13 = 6;
  v14 = MidX;
  do
  {
    v15 = [objc_opt_class() buildCircleViewWithDiameter:v9];
    [v15 setCenter:{v14, v12}];
    [v15 setAutoresizingMask:63];
    v16 = [(AVTColorWheelView *)self containerView];
    [v16 addSubview:v15];

    [v3 addObject:v15];
    [(AVTColorWheelView *)self rotatePoint:v14 aroundCenter:v12 withAngle:MidX, MidY, 60.0];
    v14 = v17;
    v12 = v18;

    --v13;
  }

  while (v13);

  return v3;
}

- (CGPoint)rotatePoint:(CGPoint)a3 aroundCenter:(CGPoint)a4 withAngle:(double)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.x - a4.x;
  v8 = a3.y - a4.y;
  v9 = __sincos_stret(a5 * 3.14159265 / 180.0);
  v10 = x + v7 * v9.__cosval - v8 * v9.__sinval;
  v11 = y + v7 * v9.__sinval + v8 * v9.__cosval;
  result.y = v11;
  result.x = v10;
  return result;
}

+ (BOOL)colorItems:(id)a3 containColorItem:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AVTColorWheelView_colorItems_containColorItem___block_invoke;
  v8[3] = &unk_1E7F3CCC8;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return a3;
}

uint64_t __49__AVTColorWheelView_colorItems_containColorItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 color];
  v4 = [*(a1 + 32) color];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (id)colorItemsFrom:(id)a3 excluding:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __46__AVTColorWheelView_colorItemsFrom_excluding___block_invoke;
  v16 = &unk_1E7F3CCF0;
  v17 = v6;
  v18 = a1;
  v8 = v6;
  v9 = a3;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [v9 filteredArrayUsingPredicate:{v10, v13, v14, v15, v16}];

  return v11;
}

uint64_t __46__AVTColorWheelView_colorItemsFrom_excluding___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [objc_opt_class() colorItems:*(a1 + 32) containColorItem:v3];

  return a1 ^ 1;
}

- (void)updateWithPrimaryItems:(id)a3 extendedItems:(id)a4
{
  v25 = a3;
  v24 = a4;
  v6 = [objc_opt_class() colorItemsFrom:v24 excluding:v25];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  v9 = [(AVTColorWheelView *)self circleViews];
  v10 = [v9 count];

  if (v8 < v10)
  {
    [v7 addObjectsFromArray:v25];
  }

  v11 = [(AVTColorWheelView *)self circleViews];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(AVTColorWheelView *)self circleViews];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [v7 objectAtIndexedSubscript:v13];
      v17 = [v16 layerContentProvider];
      v18 = [v16 color];
      v19 = [v18 baseColorPreset];
      v20 = [v16 skinColor];
      v21 = [v15 layer];
      (v17)[2](v17, v19, v20, v21);

      ++v13;
      v22 = [(AVTColorWheelView *)self circleViews];
      v23 = [v22 count];
    }

    while (v13 < v23);
  }
}

@end