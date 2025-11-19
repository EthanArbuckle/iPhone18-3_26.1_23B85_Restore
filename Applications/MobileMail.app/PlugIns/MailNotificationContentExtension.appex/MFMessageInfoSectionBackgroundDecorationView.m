@interface MFMessageInfoSectionBackgroundDecorationView
- (MFMessageInfoSectionBackgroundDecorationView)initWithFrame:(CGRect)a3;
@end

@implementation MFMessageInfoSectionBackgroundDecorationView

- (MFMessageInfoSectionBackgroundDecorationView)initWithFrame:(CGRect)a3
{
  [(MFMessageInfoSectionBackgroundDecorationView *)self bounds:a3.origin.x];
  v10 = CGRectInset(v9, 20.0, 20.0);
  v8.receiver = self;
  v8.super_class = MFMessageInfoSectionBackgroundDecorationView;
  v4 = [(MFMessageInfoSectionBackgroundDecorationView *)&v8 initWithFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  if (v4)
  {
    v5 = +[UIColor tableCellGroupedBackgroundColor];
    [(MFMessageInfoSectionBackgroundDecorationView *)v4 setBackgroundColor:v5];

    v6 = [(MFMessageInfoSectionBackgroundDecorationView *)v4 layer];
    [v6 setCornerRadius:10.0];
  }

  return v4;
}

@end