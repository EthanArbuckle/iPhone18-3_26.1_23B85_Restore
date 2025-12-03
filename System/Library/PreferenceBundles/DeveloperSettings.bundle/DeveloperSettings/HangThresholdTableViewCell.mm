@interface HangThresholdTableViewCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HangThresholdTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = HangThresholdTableViewCell;
  [(HangThresholdTableViewCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  v4 = +[UIColor clearColor];
  [(HangThresholdTableViewCell *)self setBackgroundColor:v4];

  hoverStyle = [(HangThresholdTableViewCell *)self hoverStyle];
  [hoverStyle setEnabled:0];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HangThresholdTableViewCell;
  [(HangThresholdTableViewCell *)&v10 layoutSubviews];
  contentView = [(HangThresholdTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  control = [(HangThresholdTableViewCell *)self control];
  [control frame];
  v8 = v7;
  control2 = [(HangThresholdTableViewCell *)self control];
  [control2 setFrame:{0.0, 0.0, v5, v8}];
}

@end