@interface NonTruncatingUsageCell
- (NonTruncatingUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation NonTruncatingUsageCell

- (NonTruncatingUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = NonTruncatingUsageCell;
  v5 = [(NonTruncatingUsageCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    titleLabel = [(NonTruncatingUsageCell *)v5 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = NonTruncatingUsageCell;
  [(NonTruncatingUsageCell *)&v37 layoutSubviews];
  contentView = [(NonTruncatingUsageCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  textLabel = [(NonTruncatingUsageCell *)self textLabel];
  [textLabel frame];
  v33 = v10;
  v35 = v9;
  v12 = v11;
  v14 = v13;

  detailTextLabel = [(NonTruncatingUsageCell *)self detailTextLabel];
  [detailTextLabel frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  detailTextLabel2 = [(NonTruncatingUsageCell *)self detailTextLabel];
  [detailTextLabel2 sizeThatFits:{v5, v7}];
  v26 = v25;

  if (v21 < v26)
  {
    v27 = +[UIScreen mainScreen];
    [v27 scale];
    v29 = v28;

    v30 = ceil((v26 - v21) * v29) / v29;
    v21 = v21 + v30;
    v17 = v17 - v30;
    v12 = v12 - v30;
  }

  v31 = [(NonTruncatingUsageCell *)self detailTextLabel:v33];
  [v31 setFrame:{v17, v19, v21, v23}];

  textLabel2 = [(NonTruncatingUsageCell *)self textLabel];
  [textLabel2 setFrame:{v36, v34, v12, v14}];
}

@end