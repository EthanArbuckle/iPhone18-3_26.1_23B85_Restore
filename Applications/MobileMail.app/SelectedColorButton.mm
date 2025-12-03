@interface SelectedColorButton
+ (id)buttonWithType:(int64_t)type radius:(double)radius color:(id)color;
+ (id)imageWithColor:(id)color;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation SelectedColorButton

+ (id)imageWithColor:(id)color
{
  colorCopy = color;
  v8.width = 1.0;
  v8.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1.0;
  v9.size.height = 1.0;
  CGContextFillRect(CurrentContext, v9);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

+ (id)buttonWithType:(int64_t)type radius:(double)radius color:(id)color
{
  colorCopy = color;
  v25.receiver = self;
  v25.super_class = &OBJC_METACLASS___SelectedColorButton;
  v9 = objc_msgSendSuper2(&v25, "buttonWithType:", type);
  v10 = [self imageWithColor:colorCopy];
  [v9 setImage:v10 forState:0];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setContentHorizontalAlignment:3];
  [v9 setContentVerticalAlignment:3];
  layer = [v9 layer];
  [layer setMasksToBounds:1];

  layer2 = [v9 layer];
  [layer2 setCornerRadius:radius];

  widthAnchor = [v9 widthAnchor];
  radius = [widthAnchor constraintEqualToConstant:radius + radius];
  v26[0] = radius;
  heightAnchor = [v9 heightAnchor];
  widthAnchor2 = [v9 widthAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v26[1] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:2];

  [NSLayoutConstraint activateConstraints:v18];
  v19 = +[CALayer layer];
  v20 = radius * 2.0 + -5.0;
  [v19 setCornerRadius:v20 * 0.5];
  v21 = +[UIColor clearColor];
  v22 = v21;
  [v19 setBackgroundColor:{objc_msgSend(v21, "CGColor")}];

  [v19 setBorderWidth:2.0];
  [v9 setDonut:v19];
  [v19 setFrame:{2.5, 2.5, v20, v20}];
  layer3 = [v9 layer];
  [layer3 addSublayer:v19];

  return v9;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SelectedColorButton;
  [(SelectedColorButton *)&v6 layoutSubviews];
  v3 = +[UIColor systemBackgroundColor];
  cGColor = [v3 CGColor];
  donut = [(SelectedColorButton *)self donut];
  [donut setBorderColor:cGColor];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = SelectedColorButton;
  [(SelectedColorButton *)&v6 setSelected:?];
  donut = [(SelectedColorButton *)self donut];
  [donut setHidden:!selectedCopy];
}

@end