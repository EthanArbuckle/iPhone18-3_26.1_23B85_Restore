@interface SelectedColorButton
+ (id)buttonWithType:(int64_t)a3 radius:(double)a4 color:(id)a5;
+ (id)imageWithColor:(id)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation SelectedColorButton

+ (id)imageWithColor:(id)a3
{
  v3 = a3;
  v8.width = 1.0;
  v8.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [v3 CGColor]);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1.0;
  v9.size.height = 1.0;
  CGContextFillRect(CurrentContext, v9);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

+ (id)buttonWithType:(int64_t)a3 radius:(double)a4 color:(id)a5
{
  v8 = a5;
  v25.receiver = a1;
  v25.super_class = &OBJC_METACLASS___SelectedColorButton;
  v9 = objc_msgSendSuper2(&v25, "buttonWithType:", a3);
  v10 = [a1 imageWithColor:v8];
  [v9 setImage:v10 forState:0];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setContentHorizontalAlignment:3];
  [v9 setContentVerticalAlignment:3];
  v11 = [v9 layer];
  [v11 setMasksToBounds:1];

  v12 = [v9 layer];
  [v12 setCornerRadius:a4];

  v13 = [v9 widthAnchor];
  v14 = [v13 constraintEqualToConstant:a4 + a4];
  v26[0] = v14;
  v15 = [v9 heightAnchor];
  v16 = [v9 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v26[1] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:2];

  [NSLayoutConstraint activateConstraints:v18];
  v19 = +[CALayer layer];
  v20 = a4 * 2.0 + -5.0;
  [v19 setCornerRadius:v20 * 0.5];
  v21 = +[UIColor clearColor];
  v22 = v21;
  [v19 setBackgroundColor:{objc_msgSend(v21, "CGColor")}];

  [v19 setBorderWidth:2.0];
  [v9 setDonut:v19];
  [v19 setFrame:{2.5, 2.5, v20, v20}];
  v23 = [v9 layer];
  [v23 addSublayer:v19];

  return v9;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SelectedColorButton;
  [(SelectedColorButton *)&v6 layoutSubviews];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [v3 CGColor];
  v5 = [(SelectedColorButton *)self donut];
  [v5 setBorderColor:v4];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SelectedColorButton;
  [(SelectedColorButton *)&v6 setSelected:?];
  v5 = [(SelectedColorButton *)self donut];
  [v5 setHidden:!v3];
}

@end