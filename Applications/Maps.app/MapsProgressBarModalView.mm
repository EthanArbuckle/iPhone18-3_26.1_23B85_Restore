@interface MapsProgressBarModalView
- (MapsProgressBarModalView)initWithCoder:(id)coder;
- (MapsProgressBarModalView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
@end

@implementation MapsProgressBarModalView

- (void)_commonInit
{
  v3 = +[UIColor systemBackgroundColor];
  v4 = [v3 colorWithAlphaComponent:0.95];
  [(MapsProgressBarModalView *)self setBackgroundColor:v4];

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = self->_contentView;
  self->_contentView = v9;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [[UIProgressView alloc] initWithProgressViewStyle:1];
  progressView = self->_progressView;
  self->_progressView = v11;

  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  progressLabel = self->_progressLabel;
  self->_progressLabel = v13;

  [(UILabel *)self->_progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_progressLabel setTextAlignment:1];
  v15 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_progressLabel setTextColor:v15];

  [(MapsProgressBarModalView *)self addSubview:self->_contentView];
  [(UIView *)self->_contentView addSubview:self->_progressLabel];
  [(UIView *)self->_contentView addSubview:self->_progressView];
  topAnchor = [(UILabel *)self->_progressLabel topAnchor];
  topAnchor2 = [(UIView *)self->_contentView topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[0] = v53;
  bottomAnchor = [(UILabel *)self->_progressLabel bottomAnchor];
  topAnchor3 = [(UIProgressView *)self->_progressView topAnchor];
  v50 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v56[1] = v50;
  bottomAnchor2 = [(UIProgressView *)self->_progressView bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_contentView bottomAnchor];
  v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v56[2] = v47;
  leadingAnchor = [(UILabel *)self->_progressLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_contentView leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[3] = v44;
  trailingAnchor = [(UILabel *)self->_progressLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_contentView trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[4] = v41;
  leadingAnchor3 = [(UIProgressView *)self->_progressView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[5] = v38;
  trailingAnchor3 = [(UIProgressView *)self->_progressView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_contentView trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[6] = v35;
  centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
  centerYAnchor2 = [(MapsProgressBarModalView *)self centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[7] = v32;
  topAnchor4 = [(UIView *)self->_contentView topAnchor];
  topAnchor5 = [(MapsProgressBarModalView *)self topAnchor];
  v29 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v56[8] = v29;
  bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor5 = [(MapsProgressBarModalView *)self bottomAnchor];
  v26 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5];
  v56[9] = v26;
  centerXAnchor = [(UIView *)self->_contentView centerXAnchor];
  centerXAnchor2 = [(MapsProgressBarModalView *)self centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[10] = v18;
  leadingAnchor5 = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor6 = [(MapsProgressBarModalView *)self leadingAnchor];
  v21 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
  v56[11] = v21;
  trailingAnchor5 = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor6 = [(MapsProgressBarModalView *)self trailingAnchor];
  v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
  v56[12] = v24;
  v25 = [NSArray arrayWithObjects:v56 count:13];
  [NSLayoutConstraint activateConstraints:v25];
}

- (MapsProgressBarModalView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MapsProgressBarModalView;
  v3 = [(MapsProgressBarModalView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarModalView *)v3 _commonInit];
  }

  return v4;
}

- (MapsProgressBarModalView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MapsProgressBarModalView;
  v3 = [(MapsProgressBarModalView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarModalView *)v3 _commonInit];
  }

  return v4;
}

@end