@interface FlyoverStatusToastView
+ (CGSize)preferredSize;
- (FlyoverStatusToastView)initWithTrackingStateReason:(unint64_t)a3;
- (void)dismissWithCompletionHandler:(id)a3;
- (void)present;
@end

@implementation FlyoverStatusToastView

- (void)dismissWithCompletionHandler:(id)a3
{
  v4 = a3;
  self->_didDismiss = 1;
  [(NSLayoutConstraint *)self->_backgroundTopConstraint setConstant:5.0];
  [(NSLayoutConstraint *)self->_backgroundLeftConstraint setConstant:5.0];
  [(NSLayoutConstraint *)self->_backgroundBottomConstraint setConstant:-5.0];
  [(NSLayoutConstraint *)self->_backgroundRightConstraint setConstant:-5.0];
  v5 = CACurrentMediaTime();
  [(FlyoverGlyphView *)self->_glyphView stopAnimating];
  v7 = -0.266666667 - v5 + v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D0B3F0;
  v11[3] = &unk_101661B18;
  v11[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D0B454;
  v9[3] = &unk_10165F438;
  v10 = v4;
  v8 = v4;
  [UIView animateWithDuration:0 delay:v11 options:v9 animations:0.23 completion:v7];
}

- (void)present
{
  self->_didPresent = 1;
  [(NSLayoutConstraint *)self->_backgroundTopConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_backgroundLeftConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_backgroundBottomConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_backgroundRightConstraint setConstant:0.0];
  [(FlyoverGlyphView *)self->_glyphView startAnimating];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100D0B570;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [UIView animateWithDuration:0 delay:v3 options:0 animations:0.23 completion:0.0];
}

- (FlyoverStatusToastView)initWithTrackingStateReason:(unint64_t)a3
{
  v67.receiver = self;
  v67.super_class = FlyoverStatusToastView;
  v4 = [(FlyoverStatusToastView *)&v67 initWithFrame:0.0, 0.0, 235.0, 60.0];
  v5 = v4;
  if (v4)
  {
    v6 = [(FlyoverStatusToastView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

    [(FlyoverStatusToastView *)v5 setAccessibilityIdentifier:@"FlyoverStatusToastView"];
    v7 = [UIVisualEffectView alloc];
    v8 = [UIBlurEffect effectWithStyle:1];
    v9 = [v7 initWithEffect:v8];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v9;

    [(UIVisualEffectView *)v5->_backgroundView setAlpha:0.0];
    [(UIVisualEffectView *)v5->_backgroundView _setContinuousCornerRadius:7.5];
    [(UIVisualEffectView *)v5->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(UIVisualEffectView *)v5->_backgroundView topAnchor];
    v12 = [(FlyoverStatusToastView *)v5 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:5.0];
    backgroundTopConstraint = v5->_backgroundTopConstraint;
    v5->_backgroundTopConstraint = v13;

    v15 = [(UIVisualEffectView *)v5->_backgroundView leftAnchor];
    v16 = [(FlyoverStatusToastView *)v5 leftAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:5.0];
    backgroundLeftConstraint = v5->_backgroundLeftConstraint;
    v5->_backgroundLeftConstraint = v17;

    v19 = [(UIVisualEffectView *)v5->_backgroundView bottomAnchor];
    v20 = [(FlyoverStatusToastView *)v5 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-5.0];
    backgroundBottomConstraint = v5->_backgroundBottomConstraint;
    v5->_backgroundBottomConstraint = v21;

    v23 = [(UIVisualEffectView *)v5->_backgroundView rightAnchor];
    v24 = [(FlyoverStatusToastView *)v5 rightAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-5.0];
    backgroundRightConstraint = v5->_backgroundRightConstraint;
    v5->_backgroundRightConstraint = v25;

    [(UIVisualEffectView *)v5->_backgroundView setAccessibilityIdentifier:@"FlyoverStatusToastBackground"];
    [(FlyoverStatusToastView *)v5 addSubview:v5->_backgroundView];
    v27 = [FlyoverGlyphView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v31 = [(FlyoverGlyphView *)v27 initWithFrame:CGRectZero.origin.x, y, width, height];
    glyphView = v5->_glyphView;
    v5->_glyphView = v31;

    [(FlyoverGlyphView *)v5->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FlyoverStatusToastView *)v5 addSubview:v5->_glyphView];
    v33 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v5->_label;
    v5->_label = v33;

    [(UILabel *)v5->_label setAlpha:0.0];
    [(UILabel *)v5->_label setTextAlignment:1];
    [(UILabel *)v5->_label setNumberOfLines:2];
    v35 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v5->_label setTextColor:v35];

    v36 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightMedium];
    [(UILabel *)v5->_label setFont:v36];

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = kCAFilterPlusD;
    v38 = [(UILabel *)v5->_label layer];
    [v38 setCompositingFilter:v37];

    [(UILabel *)v5->_label setAccessibilityIdentifier:@"FlyoverStatusToastLabel"];
    [(FlyoverStatusToastView *)v5 addSubview:v5->_label];
    if (a3 - 2 <= 2)
    {
      v39 = off_1016513D8[a3 - 2];
      v40 = +[NSBundle mainBundle];
      v41 = [v40 localizedStringForKey:v39 value:@"localized string not found" table:0];
      [(UILabel *)v5->_label setText:v41];
    }

    v68[0] = v5->_backgroundTopConstraint;
    v68[1] = v5->_backgroundLeftConstraint;
    v68[2] = v5->_backgroundBottomConstraint;
    v68[3] = v5->_backgroundRightConstraint;
    v66 = [(FlyoverGlyphView *)v5->_glyphView widthAnchor];
    v65 = [v66 constraintEqualToConstant:50.0];
    v68[4] = v65;
    v64 = [(FlyoverGlyphView *)v5->_glyphView heightAnchor];
    v63 = [v64 constraintEqualToConstant:50.0];
    v68[5] = v63;
    v62 = [(FlyoverGlyphView *)v5->_glyphView leadingAnchor];
    v61 = [(FlyoverStatusToastView *)v5 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:6.0];
    v68[6] = v60;
    v59 = [(FlyoverGlyphView *)v5->_glyphView centerYAnchor];
    v58 = [(FlyoverStatusToastView *)v5 centerYAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v68[7] = v57;
    v56 = [(UILabel *)v5->_label topAnchor];
    v55 = [(FlyoverStatusToastView *)v5 topAnchor];
    v54 = [v56 constraintEqualToAnchor:v55 constant:5.0];
    v68[8] = v54;
    v53 = [(UILabel *)v5->_label leftAnchor];
    v42 = [(FlyoverStatusToastView *)v5 leftAnchor];
    v43 = [v53 constraintEqualToAnchor:v42 constant:55.0];
    v68[9] = v43;
    v44 = [(UILabel *)v5->_label bottomAnchor];
    v45 = [(FlyoverStatusToastView *)v5 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-5.0];
    v68[10] = v46;
    v47 = [(UILabel *)v5->_label rightAnchor];
    v48 = [(FlyoverStatusToastView *)v5 rightAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-15.0];
    v68[11] = v49;
    v50 = [NSArray arrayWithObjects:v68 count:12];
    [NSLayoutConstraint activateConstraints:v50];

    [(FlyoverStatusToastView *)v5 layoutIfNeeded];
    v51 = v5;
  }

  return v5;
}

+ (CGSize)preferredSize
{
  v2 = 235.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end