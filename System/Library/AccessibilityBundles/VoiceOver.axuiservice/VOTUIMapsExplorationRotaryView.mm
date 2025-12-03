@interface VOTUIMapsExplorationRotaryView
- (VOTUIMapsExplorationRotaryView)initWithFrame:(CGRect)frame atCenter:(CGPoint)center;
- (id)_constraintsToCenterItem:(id)item withItem:(id)withItem;
- (id)_segmentImageFrom:(double)from to:(double)to;
- (void)addSubviewsFromExplorationSegments:(id)segments;
- (void)handleHighlightChangeWithLastIndex:(int64_t)index andNewIndex:(int64_t)newIndex;
@end

@implementation VOTUIMapsExplorationRotaryView

- (VOTUIMapsExplorationRotaryView)initWithFrame:(CGRect)frame atCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v10.receiver = self;
  v10.super_class = VOTUIMapsExplorationRotaryView;
  v6 = [(VOTUIMapsExplorationRotaryView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    [(VOTUIMapsExplorationRotaryView *)v6 setCenter:x, y];
    v8 = v7;
  }

  return v7;
}

- (void)addSubviewsFromExplorationSegments:(id)segments
{
  segmentsCopy = segments;
  segmentViews = [(VOTUIMapsExplorationRotaryView *)self segmentViews];
  [segmentViews makeObjectsPerformSelector:"removeFromSuperview"];

  v5 = objc_opt_new();
  [(VOTUIMapsExplorationRotaryView *)self setSegmentViews:v5];

  v6 = objc_opt_new();
  v7 = [segmentsCopy count];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [segmentsCopy objectAtIndex:i];
      v11 = [UIImageView alloc];
      firstObject = [v10 firstObject];
      [firstObject floatValue];
      v14 = v13;
      v15 = [v10 objectAtIndex:1];
      [v15 floatValue];
      v17 = [(VOTUIMapsExplorationRotaryView *)self _segmentImageFrom:v14 to:v16];
      v18 = [v11 initWithImage:v17];

      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 setAlpha:0.300000012];
      [v18 setClipsToBounds:0];
      [(VOTUIMapsExplorationRotaryView *)self addSubview:v18];
      segmentViews2 = [(VOTUIMapsExplorationRotaryView *)self segmentViews];
      [segmentViews2 addObject:v18];

      v20 = [(VOTUIMapsExplorationRotaryView *)self _constraintsToCenterItem:v18 withItem:self];
      [v6 addObjectsFromArray:v20];
    }
  }

  [(VOTUIMapsExplorationRotaryView *)self addConstraints:v6];
}

- (id)_segmentImageFrom:(double)from to:(double)to
{
  [(VOTUIMapsExplorationRotaryView *)self frame];
  v8 = v7;
  [(VOTUIMapsExplorationRotaryView *)self frame];
  v10 = v9;
  fromCopy = from;
  v12 = __sincosf_stret(fromCopy);
  v38 = v10 + (v12.__sinval * 50.0);
  v39 = v8 + (v12.__cosval * 50.0);
  toCopy = to;
  v14 = __sincosf_stret(toCopy);
  v15 = (to - from) * 0.5;
  v16 = v15;
  v40 = (tanf(v16) * 50.0);
  v17 = v15;
  v18 = (50.0 / cosf(v17));
  v19 = v15 + from;
  v20 = __sincosf_stret(v19);
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v23 = v22;
  v43.width = v8 + v8;
  v43.height = v10 + v10;
  UIGraphicsBeginImageContextWithOptions(v43, 0, v23);

  v24 = +[UIBezierPath bezierPath];
  [v24 moveToPoint:{v39, v38}];
  [v24 addArcWithCenter:1 radius:v8 startAngle:v10 endAngle:? clockwise:?];
  [v24 addLineToPoint:{v8 + (v14.__cosval * 50.0), v10 + (v14.__sinval * 50.0)}];
  [v24 addArcWithCenter:1 radius:v8 + v18 * v20.__cosval startAngle:v10 + v18 * v20.__sinval endAngle:v40 clockwise:{0.0, 6.28318531}];
  [v24 addLineToPoint:{v39, v38}];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CurrentContext = UIGraphicsGetCurrentContext();
  v27 = +[UIColor redColor];
  v28 = [v27 colorWithAlphaComponent:1.0];
  cGColor = [v28 CGColor];
  v30 = +[UIColor whiteColor];
  v31 = [v30 colorWithAlphaComponent:0.0];
  v32 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, [v31 CGColor], 0);

  *locations = xmmword_2D160;
  v33 = CGGradientCreateWithColors(DeviceRGB, v32, locations);
  CGContextSaveGState(CurrentContext);
  v34 = +[UIColor whiteColor];
  v35 = [v34 colorWithAlphaComponent:0.0];
  [v35 set];

  [v24 fill];
  [v24 addClip];
  v44.x = v8;
  v44.y = v10;
  v45.x = v8;
  v45.y = v10;
  CGContextDrawRadialGradient(CurrentContext, v33, v44, 0.0, v45, 450.0, 2u);
  v36 = UIGraphicsGetImageFromCurrentImageContext();
  CGColorSpaceRelease(DeviceRGB);
  CGGradientRelease(v33);
  UIGraphicsEndImageContext();

  return v36;
}

- (id)_constraintsToCenterItem:(id)item withItem:(id)withItem
{
  withItemCopy = withItem;
  itemCopy = item;
  v7 = [NSLayoutConstraint constraintWithItem:itemCopy attribute:9 relatedBy:0 toItem:withItemCopy attribute:9 multiplier:1.0 constant:0.0];
  v11[0] = v7;
  v8 = [NSLayoutConstraint constraintWithItem:itemCopy attribute:10 relatedBy:0 toItem:withItemCopy attribute:10 multiplier:1.0 constant:0.0];

  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (void)handleHighlightChangeWithLastIndex:(int64_t)index andNewIndex:(int64_t)newIndex
{
  if (index != -1)
  {
    segmentViews = [(VOTUIMapsExplorationRotaryView *)self segmentViews];
    v8 = [segmentViews objectAtIndex:index];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1167C;
    v15[3] = &unk_3D218;
    v16 = v8;
    v9 = v8;
    [UIView animateWithDuration:v15 animations:0.5];
  }

  if (newIndex != -1)
  {
    segmentViews2 = [(VOTUIMapsExplorationRotaryView *)self segmentViews];
    v11 = [segmentViews2 objectAtIndex:newIndex];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1168C;
    v13[3] = &unk_3D218;
    v14 = v11;
    v12 = v11;
    [UIView animateWithDuration:v13 animations:0.5];
  }
}

@end