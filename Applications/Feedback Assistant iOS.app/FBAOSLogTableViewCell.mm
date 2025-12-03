@interface FBAOSLogTableViewCell
- (UILabel)logLabel;
- (void)awakeFromNib;
@end

@implementation FBAOSLogTableViewCell

- (void)awakeFromNib
{
  v8.receiver = self;
  v8.super_class = FBAOSLogTableViewCell;
  [(FBAOSLogTableViewCell *)&v8 awakeFromNib];
  v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
  v4 = [UIFont monospacedSystemFontOfSize:14.0 weight:UIFontWeightRegular];
  v5 = [v3 scaledFontForFont:v4];
  logLabel = [(FBAOSLogTableViewCell *)self logLabel];
  [logLabel setFont:v5];

  logLabel2 = [(FBAOSLogTableViewCell *)self logLabel];
  [logLabel2 setAdjustsFontForContentSizeCategory:1];
}

- (UILabel)logLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_logLabel);

  return WeakRetained;
}

@end