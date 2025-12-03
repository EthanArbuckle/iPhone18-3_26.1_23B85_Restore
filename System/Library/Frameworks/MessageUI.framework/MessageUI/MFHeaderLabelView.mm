@interface MFHeaderLabelView
- (CGPoint)baselinePoint;
- (MFHeaderLabelView)initWithFrame:(CGRect)frame;
- (void)_updateTextColor;
- (void)tintColorDidChange;
@end

@implementation MFHeaderLabelView

- (void)_updateTextColor
{
  v4 = +[MFHeaderLabelView _defaultColor];
  v3 = [(MFHeaderLabelView *)self _accessibilityHigherContrastTintColorForColor:?];
  [(MFHeaderLabelView *)self setTextColor:v3];
}

- (MFHeaderLabelView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFHeaderLabelView;
  v3 = [(MFHeaderLabelView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[MFComposeHeaderView defaultFont];
    [(MFHeaderLabelView *)v3 setFont:v4];

    [(MFHeaderLabelView *)v3 _updateTextColor];
  }

  return v3;
}

- (CGPoint)baselinePoint
{
  [(MFHeaderLabelView *)self frame];
  v4 = v3;
  [(MFHeaderLabelView *)self _baselineOffsetFromBottom];
  v6 = round(v4 - v5);
  v7 = 0.0;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MFHeaderLabelView;
  [(MFHeaderLabelView *)&v3 tintColorDidChange];
  [(MFHeaderLabelView *)self _updateTextColor];
}

@end