@interface LPPlaceholderPlayButtonControl
- (LPPlaceholderPlayButtonControl)initWithStyle:(id)a3 theme:(id)a4;
@end

@implementation LPPlaceholderPlayButtonControl

- (LPPlaceholderPlayButtonControl)initWithStyle:(id)a3 theme:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LPPlaceholderPlayButtonControl;
  v8 = [(LPPlayButtonControl *)&v12 initWithStyle:v6 theme:v7];
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