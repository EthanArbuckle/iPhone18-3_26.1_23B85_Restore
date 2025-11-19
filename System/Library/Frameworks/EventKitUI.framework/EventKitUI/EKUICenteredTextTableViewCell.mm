@interface EKUICenteredTextTableViewCell
- (EKUICenteredTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation EKUICenteredTextTableViewCell

- (EKUICenteredTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = EKUICenteredTextTableViewCell;
  v4 = [(EKUITableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKUICenteredTextTableViewCell *)v4 textLabel];
    [v6 setTextAlignment:1];

    v7 = [(EKUICenteredTextTableViewCell *)v5 detailTextLabel];
    [v7 setTextAlignment:1];
  }

  return v5;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = EKUICenteredTextTableViewCell;
  [(EKUITableViewCell *)&v33 layoutSubviews];
  v3 = [(EKUICenteredTextTableViewCell *)self textLabel];
  v4 = [v3 superview];
  v5 = [(EKUICenteredTextTableViewCell *)self contentView];
  [v4 convertPoint:v5 fromView:{0.0, 0.0}];
  v7 = v6;

  v8 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [v8 frame];
  v10 = v9;
  v11 = [(EKUICenteredTextTableViewCell *)self contentView];
  [v11 frame];
  v13 = v12;
  v14 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [v14 frame];
  v16 = v15;
  v17 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [v17 setFrame:{v7, v10, v13, v16}];

  v18 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  v19 = [v18 superview];
  v20 = [(EKUICenteredTextTableViewCell *)self contentView];
  [v19 convertPoint:v20 fromView:{0.0, 0.0}];
  v22 = v21;

  v23 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [v23 frame];
  v25 = v24;
  v26 = [(EKUICenteredTextTableViewCell *)self contentView];
  [v26 frame];
  v28 = v27;
  v29 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [v29 frame];
  v31 = v30;
  v32 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [v32 setFrame:{v22, v25, v28, v31}];
}

@end