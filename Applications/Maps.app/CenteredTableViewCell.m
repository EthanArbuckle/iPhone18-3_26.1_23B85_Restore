@interface CenteredTableViewCell
- (CenteredTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CenteringCellLayoutManager)centeringLayoutManager;
- (UIEdgeInsets)minimumHorizontalMargins;
- (double)maximumContentWidth;
- (void)setMaximumContentWidth:(double)a3;
- (void)setMinimumHorizontalMargins:(UIEdgeInsets)a3;
@end

@implementation CenteredTableViewCell

- (UIEdgeInsets)minimumHorizontalMargins
{
  v2 = [(CenteredTableViewCell *)self centeringLayoutManager];
  [v2 minimumHorizontalMargins];
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

- (void)setMinimumHorizontalMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(CenteredTableViewCell *)self centeringLayoutManager];
  [v7 setMinimumHorizontalMargins:{top, left, bottom, right}];
}

- (double)maximumContentWidth
{
  v2 = [(CenteredTableViewCell *)self centeringLayoutManager];
  v3 = v2;
  if (v2)
  {
    [v2 maximumCellContentWidth];
    v5 = v4;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  return v5;
}

- (void)setMaximumContentWidth:(double)a3
{
  v4 = [(CenteredTableViewCell *)self centeringLayoutManager];
  [v4 setMaximumCellContentWidth:a3];
}

- (CenteringCellLayoutManager)centeringLayoutManager
{
  v3 = [(CenteredTableViewCell *)self layoutManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CenteredTableViewCell *)self layoutManager];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CenteredTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CenteredTableViewCell;
  v5 = [(CenteredTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v5)
  {
    v6 = [CenteringCellLayoutManager layoutManagerForTableViewCellStyle:a3];
    [(CenteredTableViewCell *)v5 setLayoutManager:v6];

    [(CenteredTableViewCell *)v5 setMaximumContentWidth:1.79769313e308];
    v7 = v5;
  }

  return v5;
}

@end