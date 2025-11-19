@interface NonTruncatingUsageCell
- (NonTruncatingUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation NonTruncatingUsageCell

- (NonTruncatingUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NonTruncatingUsageCell;
  v5 = [(NonTruncatingUsageCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NonTruncatingUsageCell *)v5 titleLabel];
    [v7 setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = NonTruncatingUsageCell;
  [(NonTruncatingUsageCell *)&v37 layoutSubviews];
  v3 = [(NonTruncatingUsageCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(NonTruncatingUsageCell *)self textLabel];
  [v8 frame];
  v33 = v10;
  v35 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(NonTruncatingUsageCell *)self detailTextLabel];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(NonTruncatingUsageCell *)self detailTextLabel];
  [v24 sizeThatFits:{v5, v7}];
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

  v32 = [(NonTruncatingUsageCell *)self textLabel];
  [v32 setFrame:{v36, v34, v12, v14}];
}

@end