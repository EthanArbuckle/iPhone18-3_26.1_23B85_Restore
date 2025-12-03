@interface VOTUIRotorDisplay
- (VOTUIRotorDisplay)initWithFrame:(CGRect)frame;
- (void)hide;
- (void)setTitle:(id)title;
- (void)show;
@end

@implementation VOTUIRotorDisplay

- (VOTUIRotorDisplay)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v56.receiver = self;
  v56.super_class = VOTUIRotorDisplay;
  v4 = [(VOTUIRotorDisplay *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = UIFontTextStyleHeadline;
  v6 = 10.0;
  if (_UISolariumEnabled())
  {
    AXCornerRadiusForBackgroundWithSize();
    v6 = v7;
  }

  layer = [(VOTUIRotorDisplay *)v4 layer];
  [layer setCornerRadius:v6];

  v9 = [UIBlurEffect effectWithStyle:1203];
  if (_UISolariumEnabled())
  {

    v9 = 0;
  }

  v55 = v9;
  v10 = [[UIVisualEffectView alloc] initWithEffect:v9];
  backdropView = v4->_backdropView;
  v4->_backdropView = v10;

  [(VOTUIRotorDisplay *)v4 _setOverrideUserInterfaceStyle:2];
  layer2 = [(UIVisualEffectView *)v4->_backdropView layer];
  [layer2 setCornerRadius:v6];

  [(UIVisualEffectView *)v4->_backdropView ax_setWantsGlassAppearance:1];
  [(VOTUIRotorDisplay *)v4 addSubview:v4->_backdropView];
  v13 = +[UIColor clearColor];
  [(VOTUIRotorDisplay *)v4 setBackgroundColor:v13];

  [(VOTUIRotorDisplay *)v4 setAlpha:0.0];
  v4->_title1Active = 1;
  v14 = objc_allocWithZone(UILabel);
  y = CGRectZero.origin.y;
  v16 = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, v16, height}];
  title1Label = v4->_title1Label;
  v4->_title1Label = v18;

  [(UILabel *)v4->_title1Label setNumberOfLines:0];
  v20 = [UIFont preferredFontForTextStyle:v5];
  [(UILabel *)v4->_title1Label setFont:v20];

  v21 = +[UIColor clearColor];
  [(UILabel *)v4->_title1Label setBackgroundColor:v21];

  v22 = +[UIColor whiteColor];
  [(UILabel *)v4->_title1Label setTextColor:v22];

  [(UILabel *)v4->_title1Label setTextAlignment:1];
  [(UILabel *)v4->_title1Label setLineBreakMode:0];
  [(UILabel *)v4->_title1Label setAdjustsFontForContentSizeCategory:1];
  [(VOTUIRotorDisplay *)v4 addSubview:v4->_title1Label];
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{CGRectZero.origin.x, y, v16, height}];
  title2Label = v4->_title2Label;
  v4->_title2Label = v23;

  v25 = [UIFont preferredFontForTextStyle:v5];
  [(UILabel *)v4->_title2Label setFont:v25];

  v26 = +[UIColor clearColor];
  [(UILabel *)v4->_title2Label setBackgroundColor:v26];

  v27 = +[UIColor whiteColor];
  [(UILabel *)v4->_title2Label setTextColor:v27];

  [(UILabel *)v4->_title2Label setTextAlignment:1];
  [(UILabel *)v4->_title2Label setLineBreakMode:0];
  [(UILabel *)v4->_title2Label setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v4->_title2Label setNumberOfLines:0];
  [(VOTUIRotorDisplay *)v4 addSubview:v4->_title2Label];
  v28 = [objc_allocWithZone(VOTUIRotorKnob) initWithFrame:{CGRectZero.origin.x, y, v16, height}];
  rotorKnob = v4->_rotorKnob;
  v4->_rotorKnob = v28;

  [(VOTUIRotorDisplay *)v4 addSubview:v4->_rotorKnob];
  [(UILabel *)v4->_title1Label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VOTUIRotorKnob *)v4->_rotorKnob setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v4->_title2Label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)v4->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [NSLayoutConstraint constraintWithItem:v4->_title1Label attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  title1LabelCenterConstraint = v4->_title1LabelCenterConstraint;
  v4->_title1LabelCenterConstraint = v30;

  v32 = [NSLayoutConstraint constraintWithItem:v4->_title2Label attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:width * -1.5];
  title2LabelCenterConstraint = v4->_title2LabelCenterConstraint;
  v4->_title2LabelCenterConstraint = v32;

  v34 = [NSLayoutConstraint constraintWithItem:v4->_rotorKnob attribute:3 relatedBy:0 toItem:v4->_title1Label attribute:11 multiplier:1.0 constant:2.0];
  v54 = v5;
  rotorKnobPinnedToTitle1Label = v4->_rotorKnobPinnedToTitle1Label;
  v4->_rotorKnobPinnedToTitle1Label = v34;

  v36 = [NSLayoutConstraint constraintWithItem:v4->_rotorKnob attribute:3 relatedBy:0 toItem:v4->_title2Label attribute:11 multiplier:1.0 constant:2.0];
  rotorKnobPinnedToTitle2Label = v4->_rotorKnobPinnedToTitle2Label;
  v4->_rotorKnobPinnedToTitle2Label = v36;

  v53 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:160.0];
  v57[0] = v53;
  v52 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
  v57[1] = v52;
  v51 = [NSLayoutConstraint constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v4->_rotorKnob attribute:4 multiplier:1.0 constant:5.0];
  v57[2] = v51;
  v50 = [NSLayoutConstraint constraintWithItem:v4->_backdropView attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:1.0 constant:0.0];
  v57[3] = v50;
  v49 = [NSLayoutConstraint constraintWithItem:v4->_backdropView attribute:8 relatedBy:0 toItem:v4 attribute:8 multiplier:1.0 constant:0.0];
  v57[4] = v49;
  v48 = [NSLayoutConstraint constraintWithItem:v4->_backdropView attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  v57[5] = v48;
  v38 = [NSLayoutConstraint constraintWithItem:v4->_backdropView attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
  v57[6] = v38;
  v39 = [NSLayoutConstraint constraintWithItem:v4->_title1Label attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:0.9 constant:0.0];
  v57[7] = v39;
  v57[8] = v4->_title1LabelCenterConstraint;
  v40 = [NSLayoutConstraint constraintWithItem:v4->_title1Label attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:5.0];
  v57[9] = v40;
  v41 = [NSLayoutConstraint constraintWithItem:v4->_title2Label attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:0.9 constant:0.0];
  v57[10] = v41;
  v42 = [NSLayoutConstraint constraintWithItem:v4->_title2Label attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:5.0];
  v57[11] = v42;
  v57[12] = v4->_title2LabelCenterConstraint;
  v57[13] = v4->_rotorKnobPinnedToTitle1Label;
  v43 = [NSLayoutConstraint constraintWithItem:v4->_rotorKnob attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:0.95 constant:0.0];
  v57[14] = v43;
  v44 = [NSLayoutConstraint constraintWithItem:v4->_rotorKnob attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:140.0];
  v57[15] = v44;
  v45 = [NSLayoutConstraint constraintWithItem:v4->_rotorKnob attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  v57[16] = v45;
  v46 = [NSArray arrayWithObjects:v57 count:17];
  [NSLayoutConstraint activateConstraints:v46];

  [(VOTUIRotorDisplay *)v4 setClipsToBounds:1];
  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_title1Label text];
  if ([titleCopy isEqualToString:text] && self->_title1Active)
  {
  }

  else
  {
    text2 = [(UILabel *)self->_title2Label text];
    if ([titleCopy isEqualToString:text2])
    {
      title1Active = self->_title1Active;

      if (!title1Active)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v8 = VOTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_title1Active;
      *buf = 67109120;
      v25 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Title 1 active: %d", buf, 8u);
    }

    v10 = self->_title1Active;
    wasRotorMovementClockwise = self->_wasRotorMovementClockwise;
    [(VOTUIRotorDisplay *)self frame];
    v13 = -v12;
    if (!wasRotorMovementClockwise)
    {
      v13 = v12;
    }

    v14 = v13 * 1.5;
    if (v10)
    {
      v15 = &OBJC_IVAR___VOTUIRotorDisplay__title2LabelCenterConstraint;
    }

    else
    {
      v15 = &OBJC_IVAR___VOTUIRotorDisplay__title1LabelCenterConstraint;
    }

    [*(&self->super.super.super.isa + *v15) setConstant:v14];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_E1A0;
    v23[3] = &unk_3D218;
    v23[4] = self;
    [UIView animateWithDuration:v23 animations:0.0];
    [(NSLayoutConstraint *)self->_rotorKnobPinnedToTitle1Label setActive:!self->_title1Active];
    [(NSLayoutConstraint *)self->_rotorKnobPinnedToTitle2Label setActive:self->_title1Active];
    if (self->_title1Active)
    {
      v16 = &OBJC_IVAR___VOTUIRotorDisplay__title2LabelCenterConstraint;
    }

    else
    {
      v16 = &OBJC_IVAR___VOTUIRotorDisplay__title1LabelCenterConstraint;
    }

    if (self->_title1Active)
    {
      v17 = &OBJC_IVAR___VOTUIRotorDisplay__title1LabelCenterConstraint;
    }

    else
    {
      v17 = &OBJC_IVAR___VOTUIRotorDisplay__title2LabelCenterConstraint;
    }

    [*(&self->super.super.super.isa + *v16) setConstant:0.0];
    v18 = self->_wasRotorMovementClockwise;
    [(VOTUIRotorDisplay *)self frame];
    v20 = -v19;
    if (v18)
    {
      v20 = v19;
    }

    [*(&self->super.super.super.isa + *v17) setConstant:v20 * 1.5];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_E1A8;
    v21[3] = &unk_3D380;
    v21[4] = self;
    v22 = titleCopy;
    [UIView animateWithDuration:v21 animations:0.400000006];
  }

LABEL_24:
}

- (void)show
{
  [(VOTUIRotorDisplay *)self alpha];
  if (v3 == 0.0)
  {

    [(VOTUIRotorDisplay *)self setAlpha:1.0];
  }
}

- (void)hide
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_E328;
  v2[3] = &unk_3D218;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.5];
}

@end