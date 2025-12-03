@interface VoiceOverGestureHelpView
- (VoiceOverGestureHelpView)initWithDelegate:(id)delegate;
- (VoiceOverGestureHelpViewController)delegate;
- (void)_accessibilitySetCurrentGesture:(id)gesture;
- (void)hide;
- (void)layoutSubviews;
- (void)setTitleText:(id)text infoText:(id)infoText;
- (void)show;
@end

@implementation VoiceOverGestureHelpView

- (VoiceOverGestureHelpView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = VoiceOverGestureHelpView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(VoiceOverGestureHelpView *)&v41 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = height;
  if (height)
  {
    [(VoiceOverGestureHelpView *)height setDelegate:delegateCopy];
    v10 = +[UIColor secondarySystemBackgroundColor];
    [(VoiceOverGestureHelpView *)v9 setBackgroundColor:v10];

    v11 = objc_alloc_init(VOGestureMat);
    [(VOGestureMat *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VoiceOverGestureHelpView *)v9 addSubview:v11];
    topAnchor = [(VOGestureMat *)v11 topAnchor];
    safeAreaLayoutGuide = [(VoiceOverGestureHelpView *)v9 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[0] = v35;
    bottomAnchor = [(VOGestureMat *)v11 bottomAnchor];
    bottomAnchor2 = [(VoiceOverGestureHelpView *)v9 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[1] = v13;
    v39 = v11;
    leadingAnchor = [(VOGestureMat *)v11 leadingAnchor];
    leadingAnchor2 = [(VoiceOverGestureHelpView *)v9 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[2] = v16;
    trailingAnchor = [(VOGestureMat *)v11 trailingAnchor];
    trailingAnchor2 = [(VoiceOverGestureHelpView *)v9 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[3] = v19;
    [NSArray arrayWithObjects:v42 count:4];
    v20 = v40 = delegateCopy;
    [NSLayoutConstraint activateConstraints:v20];

    v21 = [objc_allocWithZone(UILabel) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v21;

    v23 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:0];
    v24 = [UIFont fontWithDescriptor:v23 size:0.0];
    [(UILabel *)v9->_titleLabel setFont:v24];

    [(UILabel *)v9->_titleLabel setTextAlignment:1];
    [(UILabel *)v9->_titleLabel setLineBreakMode:0];
    [(UILabel *)v9->_titleLabel setNumberOfLines:0];
    v25 = +[UIColor systemGrayColor];
    [(UILabel *)v9->_titleLabel setTextColor:v25];

    [(UILabel *)v9->_titleLabel setIsAccessibilityElement:0];
    v26 = +[UIColor clearColor];
    [(UILabel *)v9->_titleLabel setBackgroundColor:v26];

    [(VOGestureMat *)v39 addSubview:v9->_titleLabel];
    v27 = [objc_allocWithZone(UILabel) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    infoLabel = v9->_infoLabel;
    v9->_infoLabel = v27;

    v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v9->_infoLabel setFont:v29];

    [(UILabel *)v9->_infoLabel setNumberOfLines:0];
    [(UILabel *)v9->_infoLabel setTextAlignment:1];
    [(UILabel *)v9->_infoLabel setLineBreakMode:0];
    v30 = +[UIColor systemGrayColor];
    [(UILabel *)v9->_infoLabel setTextColor:v30];

    [(UILabel *)v9->_infoLabel setIsAccessibilityElement:0];
    v31 = +[UIColor clearColor];
    [(UILabel *)v9->_infoLabel setBackgroundColor:v31];

    delegateCopy = v40;
    [(VOGestureMat *)v39 addSubview:v9->_infoLabel];
    v32 = v9;
  }

  return v9;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = VoiceOverGestureHelpView;
  [(VoiceOverGestureHelpView *)&v22 layoutSubviews];
  [(VoiceOverGestureHelpView *)self frame];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.height = 20.0;
  v23.size.width = v4 * 0.9;
  width = v23.size.width;
  v24 = CGRectIntegral(v23);
  [(UILabel *)self->_titleLabel setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
  v25.size.height = 65.0;
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = width;
  v26 = CGRectIntegral(v25);
  [(UILabel *)self->_infoLabel setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  [(UILabel *)self->_titleLabel frame];
  v6 = v5;
  [(UILabel *)self->_titleLabel textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_infoLabel frame];
  [(UILabel *)self->_infoLabel textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0];
  v12 = v11;
  v14 = v13;
  v15 = v10 + v13 + 25.0;
  superview = [(UILabel *)self->_infoLabel superview];
  [superview bounds];
  v18 = v17;
  v20 = v19;

  v21 = (v20 - v15) * 0.5;
  v27.origin.x = v6;
  v27.origin.y = v21;
  v27.size.width = v8;
  v27.size.height = v10;
  v28.origin.y = CGRectGetMaxY(v27) + 5.0;
  v28.origin.x = (v18 - v12) * 0.5;
  v28.size.width = v12;
  v28.size.height = v14;
  v29 = CGRectIntegral(v28);
  [(UILabel *)self->_infoLabel setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  v30.origin.x = (v18 - v8) * 0.5;
  v30.origin.y = v21;
  v30.size.width = v8;
  v30.size.height = v10;
  v31 = CGRectIntegral(v30);
  [(UILabel *)self->_titleLabel setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
}

- (void)_accessibilitySetCurrentGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [gestureCopy count];
  if (v5 < 1)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [gestureCopy objectAtIndex:0];
  if (v6 == &dword_0 + 1)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [gestureCopy objectAtIndex:1];
LABEL_6:
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __60__VoiceOverGestureHelpView__accessibilitySetCurrentGesture___block_invoke;
  v11[3] = &unk_2561D8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [UIView animateWithDuration:v11 animations:0.0];
}

- (void)setTitleText:(id)text infoText:(id)infoText
{
  titleLabel = self->_titleLabel;
  infoTextCopy = infoText;
  [(UILabel *)titleLabel setText:text];
  [(UILabel *)self->_infoLabel setText:infoTextCopy];

  [(VoiceOverGestureHelpView *)self layoutSubviews];
}

- (void)show
{
  v3 = settingsLocString(@"VOICEOVER_GESTURE_HELP_BUTTON_TITLE", @"VoiceOverSettings");
  [(VoiceOverGestureHelpView *)self setTitleText:v3 infoText:&stru_25D420];

  v4 = UIAccessibilityScreenChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (void)hide
{
  [(UILabel *)self->_titleLabel setText:&stru_25D420];
  [(UILabel *)self->_infoLabel setText:&stru_25D420];
  v3 = UIAccessibilityScreenChangedNotification;

  UIAccessibilityPostNotification(v3, 0);
}

- (VoiceOverGestureHelpViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end