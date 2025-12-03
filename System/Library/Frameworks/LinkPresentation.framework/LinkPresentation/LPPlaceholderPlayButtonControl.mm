@interface LPPlaceholderPlayButtonControl
- (LPPlaceholderPlayButtonControl)initWithStyle:(id)style theme:(id)theme;
@end

@implementation LPPlaceholderPlayButtonControl

- (LPPlaceholderPlayButtonControl)initWithStyle:(id)style theme:(id)theme
{
  styleCopy = style;
  themeCopy = theme;
  v12.receiver = self;
  v12.super_class = LPPlaceholderPlayButtonControl;
  v8 = [(LPPlayButtonControl *)&v12 initWithStyle:styleCopy theme:themeCopy];
  v9 = v8;
  if (v8)
  {
    [(LPPlaceholderPlayButtonControl *)v8 setHidden:1];
    [(LPPlaceholderPlayButtonControl *)v9 setUserInteractionEnabled:0];
    v10 = v9;
  }

  return v9;
}

@end