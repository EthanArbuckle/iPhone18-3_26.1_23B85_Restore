@interface NCALRichComplicationPillView
- (NCALRichComplicationPillView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setPillColors:(id)colors;
@end

@implementation NCALRichComplicationPillView

- (NCALRichComplicationPillView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NCALRichComplicationPillView;
  v3 = [(NCALRichComplicationPillView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCALRichComplicationPillView *)v3 setNeedsDisplayOnBoundsChange:1];
    layer = [(NCALRichComplicationPillView *)v4 layer];
    [layer setMasksToBounds:1];
  }

  return v4;
}

- (void)setPillColors:(id)colors
{
  colorsCopy = colors;
  v5 = [colorsCopy count];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [colorsCopy subarrayWithRange:{0, v6}];

  pillColors = self->_pillColors;
  self->_pillColors = v7;

  [(NCALRichComplicationPillView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(NSArray *)self->_pillColors count];
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetHeight(v31);
  v9 = +[CLKRenderingContext sharedRenderingContext];
  device = [v9 device];

  CLKRoundForDevice();
  v12 = v11;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = v12;
  MaxY = CGRectGetMaxY(v32);
  if (v8)
  {
    v14 = MaxY;
    for (i = 0; i != v8; ++i)
    {
      v16 = [(NSArray *)self->_pillColors objectAtIndexedSubscript:i];
      [v16 setFill];

      CurrentContext = UIGraphicsGetCurrentContext();
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = v12;
      CGContextFillRect(CurrentContext, v33);
      v18 = +[UIColor blackColor];
      [v18 setFill];

      v19 = UIGraphicsGetCurrentContext();
      v34.size.height = 1.0;
      v34.origin.x = x;
      v34.origin.y = v14;
      v34.size.width = width;
      CGContextFillRect(v19, v34);
      v35.size.height = 1.0;
      v35.origin.x = x;
      v35.origin.y = v14;
      v35.size.width = width;
      y = CGRectGetMaxY(v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = v12;
      v14 = CGRectGetMaxY(v36);
    }
  }

  else
  {
    v20 = ncs_log_complication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v21 = NSStringFromCGRect(v37);
      pillColors = self->_pillColors;
      v23 = 138544130;
      selfCopy = self;
      v25 = 2114;
      v26 = v21;
      v27 = 2048;
      v28 = v12;
      v29 = 2114;
      v30 = pillColors;
      _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ Zero slices (zero _pillColors) in drawRect: %{public}@, %0.2f heightPer, _pillColors %{public}@", &v23, 0x2Au);
    }
  }
}

@end