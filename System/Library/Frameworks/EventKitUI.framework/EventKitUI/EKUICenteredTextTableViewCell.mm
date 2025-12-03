@interface EKUICenteredTextTableViewCell
- (EKUICenteredTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation EKUICenteredTextTableViewCell

- (EKUICenteredTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = EKUICenteredTextTableViewCell;
  v4 = [(EKUITableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(EKUICenteredTextTableViewCell *)v4 textLabel];
    [textLabel setTextAlignment:1];

    detailTextLabel = [(EKUICenteredTextTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setTextAlignment:1];
  }

  return v5;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = EKUICenteredTextTableViewCell;
  [(EKUITableViewCell *)&v33 layoutSubviews];
  textLabel = [(EKUICenteredTextTableViewCell *)self textLabel];
  superview = [textLabel superview];
  contentView = [(EKUICenteredTextTableViewCell *)self contentView];
  [superview convertPoint:contentView fromView:{0.0, 0.0}];
  v7 = v6;

  textLabel2 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [textLabel2 frame];
  v10 = v9;
  contentView2 = [(EKUICenteredTextTableViewCell *)self contentView];
  [contentView2 frame];
  v13 = v12;
  textLabel3 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [textLabel3 frame];
  v16 = v15;
  textLabel4 = [(EKUICenteredTextTableViewCell *)self textLabel];
  [textLabel4 setFrame:{v7, v10, v13, v16}];

  detailTextLabel = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  superview2 = [detailTextLabel superview];
  contentView3 = [(EKUICenteredTextTableViewCell *)self contentView];
  [superview2 convertPoint:contentView3 fromView:{0.0, 0.0}];
  v22 = v21;

  detailTextLabel2 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [detailTextLabel2 frame];
  v25 = v24;
  contentView4 = [(EKUICenteredTextTableViewCell *)self contentView];
  [contentView4 frame];
  v28 = v27;
  detailTextLabel3 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [detailTextLabel3 frame];
  v31 = v30;
  detailTextLabel4 = [(EKUICenteredTextTableViewCell *)self detailTextLabel];
  [detailTextLabel4 setFrame:{v22, v25, v28, v31}];
}

@end