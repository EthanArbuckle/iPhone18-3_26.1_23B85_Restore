@interface PHCarPlayProgressView
- (PHCarPlayProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
@end

@implementation PHCarPlayProgressView

- (PHCarPlayProgressView)initWithFrame:(CGRect)frame
{
  v61.receiver = self;
  v61.super_class = PHCarPlayProgressView;
  v3 = [(PHCarPlayProgressView *)&v61 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    trackView = [(PHCarPlayProgressView *)v3 trackView];
    widthAnchor = [trackView widthAnchor];
    widthAnchor2 = [(PHCarPlayProgressView *)v3 widthAnchor];
    v57 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v62[0] = v57;
    trackView2 = [(PHCarPlayProgressView *)v3 trackView];
    heightAnchor = [trackView2 heightAnchor];
    v54 = [heightAnchor constraintEqualToConstant:7.0];
    v62[1] = v54;
    trackView3 = [(PHCarPlayProgressView *)v3 trackView];
    centerXAnchor = [trackView3 centerXAnchor];
    centerXAnchor2 = [(PHCarPlayProgressView *)v3 centerXAnchor];
    v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v62[2] = v50;
    trackView4 = [(PHCarPlayProgressView *)v3 trackView];
    topAnchor = [trackView4 topAnchor];
    topAnchor2 = [(PHCarPlayProgressView *)v3 topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v62[3] = v46;
    elapsedLabel = [(PHCarPlayProgressView *)v3 elapsedLabel];
    leadingAnchor = [elapsedLabel leadingAnchor];
    leadingAnchor2 = [(PHCarPlayProgressView *)v3 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[4] = v42;
    elapsedLabel2 = [(PHCarPlayProgressView *)v3 elapsedLabel];
    firstBaselineAnchor = [elapsedLabel2 firstBaselineAnchor];
    trackView5 = [(PHCarPlayProgressView *)v3 trackView];
    bottomAnchor = [trackView5 bottomAnchor];
    v37 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:14.0];
    v62[5] = v37;
    remainingLabel = [(PHCarPlayProgressView *)v3 remainingLabel];
    trailingAnchor = [remainingLabel trailingAnchor];
    trailingAnchor2 = [(PHCarPlayProgressView *)v3 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v62[6] = v33;
    remainingLabel2 = [(PHCarPlayProgressView *)v3 remainingLabel];
    firstBaselineAnchor2 = [remainingLabel2 firstBaselineAnchor];
    elapsedLabel3 = [(PHCarPlayProgressView *)v3 elapsedLabel];
    firstBaselineAnchor3 = [elapsedLabel3 firstBaselineAnchor];
    v25 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
    v62[7] = v25;
    bottomAnchor2 = [(PHCarPlayProgressView *)v3 bottomAnchor];
    remainingLabel3 = [(PHCarPlayProgressView *)v3 remainingLabel];
    bottomAnchor3 = [remainingLabel3 bottomAnchor];
    v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v62[8] = v29;
    v30 = [NSArray arrayWithObjects:v62 count:9];
    [NSLayoutConstraint activateConstraints:v30];
  }

  return v3;
}

- (void)setProgress:(double)progress
{
  if (progress < 0.0)
  {
    progress = 0.0;
  }

  self->_progress = fmin(progress, 1.0);
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
  indicatorView = [(PHCarPlayProgressView *)self indicatorView];
  [indicatorView setFrame:{v6, 0.0, 2.0, 7.0}];

  +[CATransaction commit];
}

@end