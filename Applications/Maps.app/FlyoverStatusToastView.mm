@interface FlyoverStatusToastView
+ (CGSize)preferredSize;
- (FlyoverStatusToastView)initWithTrackingStateReason:(unint64_t)reason;
- (void)dismissWithCompletionHandler:(id)handler;
- (void)present;
@end

@implementation FlyoverStatusToastView

- (void)dismissWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
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

- (FlyoverStatusToastView)initWithTrackingStateReason:(unint64_t)reason
{
  v67.receiver = self;
  v67.super_class = FlyoverStatusToastView;
  v4 = [(FlyoverStatusToastView *)&v67 initWithFrame:0.0, 0.0, 235.0, 60.0];
  v5 = v4;
  if (v4)
  {
    layer = [(FlyoverStatusToastView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    [(FlyoverStatusToastView *)v5 setAccessibilityIdentifier:@"FlyoverStatusToastView"];
    v7 = [UIVisualEffectView alloc];
    v8 = [UIBlurEffect effectWithStyle:1];
    v9 = [v7 initWithEffect:v8];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v9;

    [(UIVisualEffectView *)v5->_backgroundView setAlpha:0.0];
    [(UIVisualEffectView *)v5->_backgroundView _setContinuousCornerRadius:7.5];
    [(UIVisualEffectView *)v5->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIVisualEffectView *)v5->_backgroundView topAnchor];
    topAnchor2 = [(FlyoverStatusToastView *)v5 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    backgroundTopConstraint = v5->_backgroundTopConstraint;
    v5->_backgroundTopConstraint = v13;

    leftAnchor = [(UIVisualEffectView *)v5->_backgroundView leftAnchor];
    leftAnchor2 = [(FlyoverStatusToastView *)v5 leftAnchor];
    v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
    backgroundLeftConstraint = v5->_backgroundLeftConstraint;
    v5->_backgroundLeftConstraint = v17;

    bottomAnchor = [(UIVisualEffectView *)v5->_backgroundView bottomAnchor];
    bottomAnchor2 = [(FlyoverStatusToastView *)v5 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    backgroundBottomConstraint = v5->_backgroundBottomConstraint;
    v5->_backgroundBottomConstraint = v21;

    rightAnchor = [(UIVisualEffectView *)v5->_backgroundView rightAnchor];
    rightAnchor2 = [(FlyoverStatusToastView *)v5 rightAnchor];
    v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    backgroundRightConstraint = v5->_backgroundRightConstraint;
    v5->_backgroundRightConstraint = v25;

    [(UIVisualEffectView *)v5->_backgroundView setAccessibilityIdentifier:@"FlyoverStatusToastBackground"];
    [(FlyoverStatusToastView *)v5 addSubview:v5->_backgroundView];
    v27 = [FlyoverGlyphView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(FlyoverGlyphView *)v27 initWithFrame:CGRectZero.origin.x, y, width, height];
    glyphView = v5->_glyphView;
    v5->_glyphView = height;

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
    layer2 = [(UILabel *)v5->_label layer];
    [layer2 setCompositingFilter:v37];

    [(UILabel *)v5->_label setAccessibilityIdentifier:@"FlyoverStatusToastLabel"];
    [(FlyoverStatusToastView *)v5 addSubview:v5->_label];
    if (reason - 2 <= 2)
    {
      v39 = off_1016513D8[reason - 2];
      v40 = +[NSBundle mainBundle];
      v41 = [v40 localizedStringForKey:v39 value:@"localized string not found" table:0];
      [(UILabel *)v5->_label setText:v41];
    }

    v68[0] = v5->_backgroundTopConstraint;
    v68[1] = v5->_backgroundLeftConstraint;
    v68[2] = v5->_backgroundBottomConstraint;
    v68[3] = v5->_backgroundRightConstraint;
    widthAnchor = [(FlyoverGlyphView *)v5->_glyphView widthAnchor];
    v65 = [widthAnchor constraintEqualToConstant:50.0];
    v68[4] = v65;
    heightAnchor = [(FlyoverGlyphView *)v5->_glyphView heightAnchor];
    v63 = [heightAnchor constraintEqualToConstant:50.0];
    v68[5] = v63;
    leadingAnchor = [(FlyoverGlyphView *)v5->_glyphView leadingAnchor];
    leadingAnchor2 = [(FlyoverStatusToastView *)v5 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v68[6] = v60;
    centerYAnchor = [(FlyoverGlyphView *)v5->_glyphView centerYAnchor];
    centerYAnchor2 = [(FlyoverStatusToastView *)v5 centerYAnchor];
    v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v68[7] = v57;
    topAnchor3 = [(UILabel *)v5->_label topAnchor];
    topAnchor4 = [(FlyoverStatusToastView *)v5 topAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];
    v68[8] = v54;
    leftAnchor3 = [(UILabel *)v5->_label leftAnchor];
    leftAnchor4 = [(FlyoverStatusToastView *)v5 leftAnchor];
    v43 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:55.0];
    v68[9] = v43;
    bottomAnchor3 = [(UILabel *)v5->_label bottomAnchor];
    bottomAnchor4 = [(FlyoverStatusToastView *)v5 bottomAnchor];
    v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
    v68[10] = v46;
    rightAnchor3 = [(UILabel *)v5->_label rightAnchor];
    rightAnchor4 = [(FlyoverStatusToastView *)v5 rightAnchor];
    v49 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-15.0];
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