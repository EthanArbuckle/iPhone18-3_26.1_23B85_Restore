@interface CRLiOSInspectorDividerView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CRLiOSInspectorDividerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CRLiOSInspectorDividerView

- (CRLiOSInspectorDividerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CRLiOSInspectorDividerView;
  v3 = [(CRLiOSInspectorDividerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    divider = v3->_divider;
    v3->_divider = v4;

    defaultDividerColor = [objc_opt_class() defaultDividerColor];
    [(UIView *)v3->_divider setBackgroundColor:defaultDividerColor];

    [(CRLiOSInspectorDividerView *)v3 addSubview:v3->_divider];
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CRLiOSInspectorDividerView;
  [(CRLiOSInspectorDividerView *)&v17 layoutSubviews];
  [(CRLiOSInspectorDividerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v14 = 2.0;
  }

  else
  {
    v14 = 0.5;
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v15 = CGRectGetWidth(v18) - 16.0 - 16.0;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (CGRectGetHeight(v19) == v14)
  {
    [(UIView *)self->_divider setFrame:16.0, 0.0, v15, v14];
  }

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  if (CGRectGetHeight(v20) <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 8.0;
  }

  [(UIView *)self->_divider setFrame:16.0, v16, v15, v14];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v5 = 16.0;
  result.height = v5;
  return result;
}

@end