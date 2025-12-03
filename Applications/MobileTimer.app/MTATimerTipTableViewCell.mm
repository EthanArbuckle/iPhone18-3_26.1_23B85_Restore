@interface MTATimerTipTableViewCell
+ (CGSize)sizeThatFits:(CGSize)fits siriTipView:(id)view;
- (MTATimerTipTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setSiriTipView:(id)view;
@end

@implementation MTATimerTipTableViewCell

- (MTATimerTipTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTATimerTipTableViewCell;
  v4 = [(MTATimerTipTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATimerTipTableViewCell *)v4 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = MTATimerTipTableViewCell;
  [(MTATimerTipTableViewCell *)&v4 prepareForReuse];
  [(UIView *)self->_siriTipView removeFromSuperview];
  siriTipView = self->_siriTipView;
  self->_siriTipView = 0;
}

- (void)setSiriTipView:(id)view
{
  viewCopy = view;
  siriTipView = self->_siriTipView;
  if (siriTipView != viewCopy)
  {
    [(UIView *)siriTipView removeFromSuperview];
    v7 = self->_siriTipView;
    self->_siriTipView = 0;

    if (viewCopy)
    {
      objc_storeStrong(&self->_siriTipView, view);
      [(UIView *)self->_siriTipView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(MTATimerTipTableViewCell *)self contentView];
      [contentView addSubview:self->_siriTipView];
      leadingAnchor = [(UIView *)self->_siriTipView leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v22[0] = v19;
      trailingAnchor = [(UIView *)self->_siriTipView trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
      v22[1] = v9;
      topAnchor = [(UIView *)self->_siriTipView topAnchor];
      topAnchor2 = [contentView topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v22[2] = v12;
      bottomAnchor = [(UIView *)self->_siriTipView bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      v22[3] = v15;
      v16 = [NSArray arrayWithObjects:v22 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }
  }
}

+ (CGSize)sizeThatFits:(CGSize)fits siriTipView:(id)view
{
  LODWORD(v4) = 1112014848;
  [view systemLayoutSizeFittingSize:fits.width + -32.0 withHorizontalFittingPriority:fits.height verticalFittingPriority:{-32.0000082, v4}];
  result.height = v6;
  result.width = v5;
  return result;
}

@end