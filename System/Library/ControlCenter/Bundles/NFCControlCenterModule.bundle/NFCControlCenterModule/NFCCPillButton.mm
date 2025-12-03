@interface NFCCPillButton
- (NFCCPillButton)initWithFrame:(CGRect)frame;
- (void)_contentSizeCategoryDidChange;
- (void)_setUp;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCPillButton

- (NFCCPillButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NFCCPillButton;
  v3 = [(NFCCPillButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NFCCPillButton *)v3 _setUp];
    v5 = v4;
  }

  return v4;
}

- (void)_setUp
{
  [(NFCCPillButton *)self setClipsToBounds:1];
  v3 = +[CCUIControlCenterMaterialView controlCenterTertiaryCapturingMaterial];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  [(NFCCPillButton *)self addSubview:self->_backgroundView];
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCPillButton *)self addSubview:self->_titleLabel];
  [(NFCCPillButton *)self _contentSizeCategoryDidChange];
  heightAnchor = [(NFCCPillButton *)self heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:44.0];

  LODWORD(v8) = 1132068864;
  [v25 setPriority:v8];
  v26[0] = v25;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(NFCCPillButton *)self leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v26[1] = v22;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(NFCCPillButton *)self topAnchor];
  v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:11.0];
  v26[2] = v19;
  centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
  centerYAnchor2 = [(NFCCPillButton *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v26[3] = v11;
  trailingAnchor = [(NFCCPillButton *)self trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
  v26[4] = v14;
  bottomAnchor = [(NFCCPillButton *)self bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v17 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:11.0];
  v26[5] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:6];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = NFCCPillButton;
  [(NFCCPillButton *)&v6 didMoveToWindow];
  window = [(NFCCPillButton *)self window];

  if (window)
  {
    v4 = [(NFCCPillButton *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_titleLabel];
      objc_storeStrong(&self->_visualStylingProvider, v4);
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_titleLabel withStyle:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NFCCPillButton;
  changeCopy = change;
  [(NFCCPillButton *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(NFCCPillButton *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
    [(NFCCPillButton *)self _contentSizeCategoryDidChange];
  }
}

- (void)updateOrientationIfNeeded
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != [UIApp activeInterfaceOrientation])
  {

    [(NFCCPillButton *)self _contentSizeCategoryDidChange];
  }
}

- (void)_contentSizeCategoryDidChange
{
  traitCollection = [(NFCCPillButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  activeInterfaceOrientation = [UIApp activeInterfaceOrientation];
  self->_interfaceOrientation = activeInterfaceOrientation;
  if (sub_5758(preferredContentSizeCategory, activeInterfaceOrientation))
  {
    v5 = UIContentSizeCategoryAccessibilityLarge;

    v6 = v5;
  }

  else
  {
    v6 = preferredContentSizeCategory;
  }

  v9 = v6;
  v7 = [UIFont bsui_preferredFontForTextStyle:UIFontTextStyleBody hiFontStyle:8 contentSizeCategory:v6];
  [(UILabel *)self->_titleLabel setFont:v7];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NFCCPillButton;
  [(NFCCPillButton *)&v8 layoutSubviews];
  [(NFCCPillButton *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v7 = CGRectGetHeight(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [(NFCCPillButton *)self _setContinuousCornerRadius:fmin(v7, CGRectGetWidth(v10)) * 0.5];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = NFCCPillButton;
  [(NFCCPillButton *)&v7 setHighlighted:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_61AC;
  v5[3] = &unk_C500;
  v5[4] = self;
  highlightedCopy = highlighted;
  [UIView _animateUsingSpringInteractive:1 animations:v5 completion:0];
}

@end