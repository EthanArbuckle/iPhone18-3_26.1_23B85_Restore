@interface HangThresholdTableViewCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HangThresholdTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HangThresholdTableViewCell;
  [(HangThresholdTableViewCell *)&v6 refreshCellContentsWithSpecifier:a3];
  v4 = +[UIColor clearColor];
  [(HangThresholdTableViewCell *)self setBackgroundColor:v4];

  v5 = [(HangThresholdTableViewCell *)self hoverStyle];
  [v5 setEnabled:0];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HangThresholdTableViewCell;
  [(HangThresholdTableViewCell *)&v10 layoutSubviews];
  v3 = [(HangThresholdTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v6 = [(HangThresholdTableViewCell *)self control];
  [v6 frame];
  v8 = v7;
  v9 = [(HangThresholdTableViewCell *)self control];
  [v9 setFrame:{0.0, 0.0, v5, v8}];
}

@end