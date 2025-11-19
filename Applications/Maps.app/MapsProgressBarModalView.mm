@interface MapsProgressBarModalView
- (MapsProgressBarModalView)initWithCoder:(id)a3;
- (MapsProgressBarModalView)initWithFrame:(CGRect)a3;
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
  v55 = [(UILabel *)self->_progressLabel topAnchor];
  v54 = [(UIView *)self->_contentView topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v56[0] = v53;
  v52 = [(UILabel *)self->_progressLabel bottomAnchor];
  v51 = [(UIProgressView *)self->_progressView topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v56[1] = v50;
  v49 = [(UIProgressView *)self->_progressView bottomAnchor];
  v48 = [(UIView *)self->_contentView bottomAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v56[2] = v47;
  v46 = [(UILabel *)self->_progressLabel leadingAnchor];
  v45 = [(UIView *)self->_contentView leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v56[3] = v44;
  v43 = [(UILabel *)self->_progressLabel trailingAnchor];
  v42 = [(UIView *)self->_contentView trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v56[4] = v41;
  v40 = [(UIProgressView *)self->_progressView leadingAnchor];
  v39 = [(UIView *)self->_contentView leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v56[5] = v38;
  v37 = [(UIProgressView *)self->_progressView trailingAnchor];
  v36 = [(UIView *)self->_contentView trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v56[6] = v35;
  v34 = [(UIView *)self->_contentView centerYAnchor];
  v33 = [(MapsProgressBarModalView *)self centerYAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v56[7] = v32;
  v31 = [(UIView *)self->_contentView topAnchor];
  v30 = [(MapsProgressBarModalView *)self topAnchor];
  v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
  v56[8] = v29;
  v28 = [(UIView *)self->_contentView bottomAnchor];
  v27 = [(MapsProgressBarModalView *)self bottomAnchor];
  v26 = [v28 constraintLessThanOrEqualToAnchor:v27];
  v56[9] = v26;
  v16 = [(UIView *)self->_contentView centerXAnchor];
  v17 = [(MapsProgressBarModalView *)self centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v56[10] = v18;
  v19 = [(UIView *)self->_contentView leadingAnchor];
  v20 = [(MapsProgressBarModalView *)self leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:8.0];
  v56[11] = v21;
  v22 = [(UIView *)self->_contentView trailingAnchor];
  v23 = [(MapsProgressBarModalView *)self trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-8.0];
  v56[12] = v24;
  v25 = [NSArray arrayWithObjects:v56 count:13];
  [NSLayoutConstraint activateConstraints:v25];
}

- (MapsProgressBarModalView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MapsProgressBarModalView;
  v3 = [(MapsProgressBarModalView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarModalView *)v3 _commonInit];
  }

  return v4;
}

- (MapsProgressBarModalView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MapsProgressBarModalView;
  v3 = [(MapsProgressBarModalView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsProgressBarModalView *)v3 _commonInit];
  }

  return v4;
}

@end