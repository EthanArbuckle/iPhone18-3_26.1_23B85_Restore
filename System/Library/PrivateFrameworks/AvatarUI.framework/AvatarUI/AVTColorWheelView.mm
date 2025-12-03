@interface AVTColorWheelView
+ (BOOL)colorItems:(id)items containColorItem:(id)item;
+ (id)buildCircleViewWithDiameter:(double)diameter;
+ (id)colorItemsFrom:(id)from excluding:(id)excluding;
- (AVTColorWheelView)initWithFrame:(CGRect)frame;
- (CGPoint)rotatePoint:(CGPoint)point aroundCenter:(CGPoint)center withAngle:(double)angle;
- (id)buildAllCircleViews;
- (void)updateWithPrimaryItems:(id)items extendedItems:(id)extendedItems;
@end

@implementation AVTColorWheelView

+ (id)buildCircleViewWithDiameter:(double)diameter
{
  diameter = [[AVTCircularView alloc] initWithFrame:0.0, 0.0, diameter, diameter];

  return diameter;
}

- (AVTColorWheelView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = AVTColorWheelView;
  v3 = [(AVTAttributeValueView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTColorWheelView *)v3 bounds];
    v12 = CGRectInset(v11, 8.0, 8.0);
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
    [(AVTColorWheelView *)v4 setContainerView:v5];

    containerView = [(AVTColorWheelView *)v4 containerView];
    [containerView setAutoresizingMask:18];

    containerView2 = [(AVTColorWheelView *)v4 containerView];
    [(AVTColorWheelView *)v4 addSubview:containerView2];

    buildAllCircleViews = [(AVTColorWheelView *)v4 buildAllCircleViews];
    [(AVTColorWheelView *)v4 setCircleViews:buildAllCircleViews];
  }

  return v4;
}

- (id)buildAllCircleViews
{
  array = [MEMORY[0x1E695DF70] array];
  containerView = [(AVTColorWheelView *)self containerView];
  [containerView bounds];
  MidX = CGRectGetMidX(v21);
  containerView2 = [(AVTColorWheelView *)self containerView];
  [containerView2 bounds];
  MidY = CGRectGetMidY(v22);

  containerView3 = [(AVTColorWheelView *)self containerView];
  [containerView3 bounds];
  v9 = CGRectGetHeight(v23) * 0.25;

  v10 = [objc_opt_class() buildCircleViewWithDiameter:v9];
  [v10 setCenter:{MidX, MidY}];
  [v10 setAutoresizingMask:63];
  containerView4 = [(AVTColorWheelView *)self containerView];
  [containerView4 addSubview:v10];

  [array addObject:v10];
  v12 = v9 * 0.5;
  v13 = 6;
  v14 = MidX;
  do
  {
    v15 = [objc_opt_class() buildCircleViewWithDiameter:v9];
    [v15 setCenter:{v14, v12}];
    [v15 setAutoresizingMask:63];
    containerView5 = [(AVTColorWheelView *)self containerView];
    [containerView5 addSubview:v15];

    [array addObject:v15];
    [(AVTColorWheelView *)self rotatePoint:v14 aroundCenter:v12 withAngle:MidX, MidY, 60.0];
    v14 = v17;
    v12 = v18;

    --v13;
  }

  while (v13);

  return array;
}

- (CGPoint)rotatePoint:(CGPoint)point aroundCenter:(CGPoint)center withAngle:(double)angle
{
  y = center.y;
  x = center.x;
  v7 = point.x - center.x;
  v8 = point.y - center.y;
  v9 = __sincos_stret(angle * 3.14159265 / 180.0);
  v10 = x + v7 * v9.__cosval - v8 * v9.__sinval;
  v11 = y + v7 * v9.__sinval + v8 * v9.__cosval;
  result.y = v11;
  result.x = v10;
  return result;
}

+ (BOOL)colorItems:(id)items containColorItem:(id)item
{
  itemCopy = item;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AVTColorWheelView_colorItems_containColorItem___block_invoke;
  v8[3] = &unk_1E7F3CCC8;
  v9 = itemCopy;
  v6 = itemCopy;
  LOBYTE(items) = [items indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return items;
}

uint64_t __49__AVTColorWheelView_colorItems_containColorItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 color];
  v4 = [*(a1 + 32) color];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (id)colorItemsFrom:(id)from excluding:(id)excluding
{
  excludingCopy = excluding;
  v7 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __46__AVTColorWheelView_colorItemsFrom_excluding___block_invoke;
  v16 = &unk_1E7F3CCF0;
  v17 = excludingCopy;
  selfCopy = self;
  v8 = excludingCopy;
  fromCopy = from;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [fromCopy filteredArrayUsingPredicate:{v10, v13, v14, v15, v16}];

  return v11;
}

uint64_t __46__AVTColorWheelView_colorItemsFrom_excluding___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [objc_opt_class() colorItems:*(a1 + 32) containColorItem:v3];

  return a1 ^ 1;
}

- (void)updateWithPrimaryItems:(id)items extendedItems:(id)extendedItems
{
  itemsCopy = items;
  extendedItemsCopy = extendedItems;
  v6 = [objc_opt_class() colorItemsFrom:extendedItemsCopy excluding:itemsCopy];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  circleViews = [(AVTColorWheelView *)self circleViews];
  v10 = [circleViews count];

  if (v8 < v10)
  {
    [v7 addObjectsFromArray:itemsCopy];
  }

  circleViews2 = [(AVTColorWheelView *)self circleViews];
  v12 = [circleViews2 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      circleViews3 = [(AVTColorWheelView *)self circleViews];
      v15 = [circleViews3 objectAtIndexedSubscript:v13];

      v16 = [v7 objectAtIndexedSubscript:v13];
      layerContentProvider = [v16 layerContentProvider];
      color = [v16 color];
      baseColorPreset = [color baseColorPreset];
      skinColor = [v16 skinColor];
      layer = [v15 layer];
      (layerContentProvider)[2](layerContentProvider, baseColorPreset, skinColor, layer);

      ++v13;
      circleViews4 = [(AVTColorWheelView *)self circleViews];
      v23 = [circleViews4 count];
    }

    while (v13 < v23);
  }
}

@end