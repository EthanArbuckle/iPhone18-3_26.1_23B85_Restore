@interface _BKEndOfBookToastBlurEffectView
- (_BKEndOfBookToastBlurEffectView)initWithFrame:(CGRect)frame;
@end

@implementation _BKEndOfBookToastBlurEffectView

- (_BKEndOfBookToastBlurEffectView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _BKEndOfBookToastBlurEffectView;
  v3 = [(_BKEndOfBookToastBlurEffectView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_BKEndOfBookToastBlurEffectView *)v3 setAutoresizingMask:18];
    [(_BKEndOfBookToastBlurEffectView *)v4 setOpaque:0];
    backdropLayer = [(_BKEndOfBookToastBlurEffectView *)v4 backdropLayer];
    [backdropLayer setEnabled:1];

    v6 = [CAFilter filterWithType:kCAFilterColorSaturate];
    [v6 setValue:&off_100A43EC8 forKey:@"inputAmount"];
    [v6 setName:@"colorSaturate"];
    v7 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v7 setValue:&off_100A43698 forKey:@"inputRadius"];
    [v7 setValue:&__kCFBooleanTrue forKey:@"inputHardEdges"];
    [v7 setName:@"gaussianBlur"];
    v12[0] = v6;
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    layer = [(_BKEndOfBookToastBlurEffectView *)v4 layer];
    [layer setFilters:v8];
  }

  return v4;
}

@end