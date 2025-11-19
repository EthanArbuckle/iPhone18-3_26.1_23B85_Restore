@interface PHActionSliderKnob
- (PHActionSliderKnob)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation PHActionSliderKnob

- (PHActionSliderKnob)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PHActionSliderKnob;
  v3 = [(PHActionSliderKnob *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  v7 = [(PHActionSliderKnob *)self knobColor:a3.origin.x];
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

  v6 = [(PHActionSliderKnob *)self layer];
  [v6 setCornerRadius:height * 0.5];
}

@end