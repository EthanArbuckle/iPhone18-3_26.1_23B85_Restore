@interface MFMessageInfoSectionBackgroundDecorationView
- (MFMessageInfoSectionBackgroundDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation MFMessageInfoSectionBackgroundDecorationView

- (MFMessageInfoSectionBackgroundDecorationView)initWithFrame:(CGRect)frame
{
  [(MFMessageInfoSectionBackgroundDecorationView *)self bounds:frame.origin.x];
  v10 = CGRectInset(v9, 20.0, 20.0);
  v8.receiver = self;
  v8.super_class = MFMessageInfoSectionBackgroundDecorationView;
  v4 = [(MFMessageInfoSectionBackgroundDecorationView *)&v8 initWithFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  if (v4)
  {
    v5 = +[UIColor tableCellGroupedBackgroundColor];
    [(MFMessageInfoSectionBackgroundDecorationView *)v4 setBackgroundColor:v5];

    layer = [(MFMessageInfoSectionBackgroundDecorationView *)v4 layer];
    [layer setCornerRadius:10.0];
  }

  return v4;
}

@end