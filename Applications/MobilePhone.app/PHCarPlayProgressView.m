@interface PHCarPlayProgressView
- (PHCarPlayProgressView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
@end

@implementation PHCarPlayProgressView

- (PHCarPlayProgressView)initWithFrame:(CGRect)a3
{
  v61.receiver = self;
  v61.super_class = PHCarPlayProgressView;
  v3 = [(PHCarPlayProgressView *)&v61 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    elapsedLabel = v3->_elapsedLabel;
    v3->_elapsedLabel = v4;

    [(UILabel *)v3->_elapsedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIFont monospacedDigitSystemFontOfSize:14.0 weight:UIFontWeightRegular];
    [(UILabel *)v3->_elapsedLabel setFont:v6];

    v7 = +[UIColor dynamicSecondaryLabelColor];
    [(UILabel *)v3->_elapsedLabel setTextColor:v7];

    v8 = [NSString localizedStringWithFormat:@"%02d:%02d", 0, 0];
    [(UILabel *)v3->_elapsedLabel setText:v8];

    [(UILabel *)v3->_elapsedLabel setTextAlignment:0];
    v9 = +[UIColor clearColor];
    [(UILabel *)v3->_elapsedLabel setBackgroundColor:v9];

    [(PHCarPlayProgressView *)v3 addSubview:v3->_elapsedLabel];
    v10 = objc_alloc_init(UILabel);
    remainingLabel = v3->_remainingLabel;
    v3->_remainingLabel = v10;

    [(UILabel *)v3->_remainingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [UIFont monospacedDigitSystemFontOfSize:14.0 weight:UIFontWeightRegular];
    [(UILabel *)v3->_remainingLabel setFont:v12];

    v13 = +[UIColor dynamicSecondaryLabelColor];
    [(UILabel *)v3->_remainingLabel setTextColor:v13];

    v14 = [NSString localizedStringWithFormat:@"%02d:%02d", 0, 0];
    [(UILabel *)v3->_remainingLabel setText:v14];

    [(UILabel *)v3->_remainingLabel setTextAlignment:0];
    v15 = +[UIColor clearColor];
    [(UILabel *)v3->_remainingLabel setBackgroundColor:v15];

    [(PHCarPlayProgressView *)v3 addSubview:v3->_remainingLabel];
    v16 = objc_alloc_init(UIView);
    trackView = v3->_trackView;
    v3->_trackView = v16;

    [(UIView *)v3->_trackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor dynamicCarQuaternaryColor];
    [(UIView *)v3->_trackView setBackgroundColor:v18];

    [(PHCarPlayProgressView *)v3 addSubview:v3->_trackView];
    v19 = objc_alloc_init(UIView);
    indicatorView = v3->_indicatorView;
    v3->_indicatorView = v19;

    v21 = +[UIColor dynamicLabelColor];
    [(UIView *)v3->_indicatorView setBackgroundColor:v21];

    [(PHCarPlayProgressView *)v3 addSubview:v3->_indicatorView];
    v60 = [(PHCarPlayProgressView *)v3 trackView];
    v59 = [v60 widthAnchor];
    v58 = [(PHCarPlayProgressView *)v3 widthAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v62[0] = v57;
    v56 = [(PHCarPlayProgressView *)v3 trackView];
    v55 = [v56 heightAnchor];
    v54 = [v55 constraintEqualToConstant:7.0];
    v62[1] = v54;
    v53 = [(PHCarPlayProgressView *)v3 trackView];
    v52 = [v53 centerXAnchor];
    v51 = [(PHCarPlayProgressView *)v3 centerXAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v62[2] = v50;
    v49 = [(PHCarPlayProgressView *)v3 trackView];
    v48 = [v49 topAnchor];
    v47 = [(PHCarPlayProgressView *)v3 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v62[3] = v46;
    v45 = [(PHCarPlayProgressView *)v3 elapsedLabel];
    v44 = [v45 leadingAnchor];
    v43 = [(PHCarPlayProgressView *)v3 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v62[4] = v42;
    v41 = [(PHCarPlayProgressView *)v3 elapsedLabel];
    v39 = [v41 firstBaselineAnchor];
    v40 = [(PHCarPlayProgressView *)v3 trackView];
    v38 = [v40 bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:14.0];
    v62[5] = v37;
    v36 = [(PHCarPlayProgressView *)v3 remainingLabel];
    v35 = [v36 trailingAnchor];
    v34 = [(PHCarPlayProgressView *)v3 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v62[6] = v33;
    v32 = [(PHCarPlayProgressView *)v3 remainingLabel];
    v22 = [v32 firstBaselineAnchor];
    v23 = [(PHCarPlayProgressView *)v3 elapsedLabel];
    v24 = [v23 firstBaselineAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v62[7] = v25;
    v26 = [(PHCarPlayProgressView *)v3 bottomAnchor];
    v27 = [(PHCarPlayProgressView *)v3 remainingLabel];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v62[8] = v29;
    v30 = [NSArray arrayWithObjects:v62 count:9];
    [NSLayoutConstraint activateConstraints:v30];
  }

  return v3;
}

- (void)setProgress:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->_progress = fmin(a3, 1.0);
  [(PHCarPlayProgressView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PHCarPlayProgressView;
  [(PHCarPlayProgressView *)&v8 layoutSubviews];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(PHCarPlayProgressView *)self bounds];
  v4 = v3;
  [(PHCarPlayProgressView *)self progress];
  v6 = v5 * v4;
  v7 = [(PHCarPlayProgressView *)self indicatorView];
  [v7 setFrame:{v6, 0.0, 2.0, 7.0}];

  +[CATransaction commit];
}

@end