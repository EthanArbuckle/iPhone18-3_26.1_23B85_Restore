@interface CenteredTableViewCell
- (CenteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CenteringCellLayoutManager)centeringLayoutManager;
- (UIEdgeInsets)minimumHorizontalMargins;
- (double)maximumContentWidth;
- (void)setMaximumContentWidth:(double)width;
- (void)setMinimumHorizontalMargins:(UIEdgeInsets)margins;
@end

@implementation CenteredTableViewCell

- (UIEdgeInsets)minimumHorizontalMargins
{
  centeringLayoutManager = [(CenteredTableViewCell *)self centeringLayoutManager];
  [centeringLayoutManager minimumHorizontalMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setMinimumHorizontalMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  centeringLayoutManager = [(CenteredTableViewCell *)self centeringLayoutManager];
  [centeringLayoutManager setMinimumHorizontalMargins:{top, left, bottom, right}];
}

- (double)maximumContentWidth
{
  centeringLayoutManager = [(CenteredTableViewCell *)self centeringLayoutManager];
  v3 = centeringLayoutManager;
  if (centeringLayoutManager)
  {
    [centeringLayoutManager maximumCellContentWidth];
    v5 = v4;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  return v5;
}

- (void)setMaximumContentWidth:(double)width
{
  centeringLayoutManager = [(CenteredTableViewCell *)self centeringLayoutManager];
  [centeringLayoutManager setMaximumCellContentWidth:width];
}

- (CenteringCellLayoutManager)centeringLayoutManager
{
  layoutManager = [(CenteredTableViewCell *)self layoutManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    layoutManager2 = [(CenteredTableViewCell *)self layoutManager];
  }

  else
  {
    layoutManager2 = 0;
  }

  return layoutManager2;
}

- (CenteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CenteredTableViewCell;
  v5 = [(CenteredTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v5)
  {
    v6 = [CenteringCellLayoutManager layoutManagerForTableViewCellStyle:style];
    [(CenteredTableViewCell *)v5 setLayoutManager:v6];

    [(CenteredTableViewCell *)v5 setMaximumContentWidth:1.79769313e308];
    v7 = v5;
  }

  return v5;
}

@end