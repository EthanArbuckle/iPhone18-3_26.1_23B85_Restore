@interface MTATimerTipTableViewCell
+ (CGSize)sizeThatFits:(CGSize)a3 siriTipView:(id)a4;
- (MTATimerTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setSiriTipView:(id)a3;
@end

@implementation MTATimerTipTableViewCell

- (MTATimerTipTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTATimerTipTableViewCell;
  v4 = [(MTATimerTipTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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

- (void)setSiriTipView:(id)a3
{
  v5 = a3;
  siriTipView = self->_siriTipView;
  if (siriTipView != v5)
  {
    [(UIView *)siriTipView removeFromSuperview];
    v7 = self->_siriTipView;
    self->_siriTipView = 0;

    if (v5)
    {
      objc_storeStrong(&self->_siriTipView, a3);
      [(UIView *)self->_siriTipView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(MTATimerTipTableViewCell *)self contentView];
      [v8 addSubview:self->_siriTipView];
      v21 = [(UIView *)self->_siriTipView leadingAnchor];
      v20 = [v8 leadingAnchor];
      v19 = [v21 constraintEqualToAnchor:v20 constant:16.0];
      v22[0] = v19;
      v18 = [(UIView *)self->_siriTipView trailingAnchor];
      v17 = [v8 trailingAnchor];
      v9 = [v18 constraintEqualToAnchor:v17 constant:-16.0];
      v22[1] = v9;
      v10 = [(UIView *)self->_siriTipView topAnchor];
      v11 = [v8 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
      v22[2] = v12;
      v13 = [(UIView *)self->_siriTipView bottomAnchor];
      v14 = [v8 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
      v22[3] = v15;
      v16 = [NSArray arrayWithObjects:v22 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }
  }
}

+ (CGSize)sizeThatFits:(CGSize)a3 siriTipView:(id)a4
{
  LODWORD(v4) = 1112014848;
  [a4 systemLayoutSizeFittingSize:a3.width + -32.0 withHorizontalFittingPriority:a3.height verticalFittingPriority:{-32.0000082, v4}];
  result.height = v6;
  result.width = v5;
  return result;
}

@end