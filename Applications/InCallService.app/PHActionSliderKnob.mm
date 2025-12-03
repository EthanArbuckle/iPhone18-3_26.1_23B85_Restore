@interface PHActionSliderKnob
- (PHActionSliderKnob)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PHActionSliderKnob

- (PHActionSliderKnob)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PHActionSliderKnob;
  v3 = [(PHActionSliderKnob *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    knobColor = v3->_knobColor;
    v3->_knobColor = v4;

    if (_UISolariumEnabled())
    {
      [(PHActionSliderKnob *)v3 setOverrideUserInterfaceStyle:1];
      [(PHActionSliderKnob *)v3 applyClearGlassBackground];
    }
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  v7 = [(PHActionSliderKnob *)self knobColor:rect.origin.x];
  if (_UISolariumEnabled())
  {
    [(PHActionSliderKnob *)self applyRegularGlassBackgroundWithTintColor:v7];
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    if (v7)
    {
      CGContextSetFillColorWithColor(CurrentContext, [v7 CGColor]);
    }

    else
    {
      CGContextSetRGBFillColor(CurrentContext, 1.0, 1.0, 1.0, 1.0);
    }

    [(PHActionSliderKnob *)self bounds];
    CGContextFillRect(CurrentContext, v9);
    UIGraphicsPopContext();
  }

  layer = [(PHActionSliderKnob *)self layer];
  [layer setCornerRadius:height * 0.5];
}

@end