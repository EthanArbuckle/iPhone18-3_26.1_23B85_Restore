@interface PBASimpleLockScreenView
- (PBASimpleLockScreenView)initWithFrame:(CGRect)frame;
- (double)_contentHorizontalInset;
- (void)_hideCallToAction;
- (void)_layoutCallToActionLabel;
- (void)_layoutContent;
- (void)_layoutHomeAffordance;
- (void)_layoutInternalUIWarningLabel;
- (void)_screenDidBlank:(id)blank;
- (void)_screenWillUnblank:(id)unblank;
- (void)_showCallToAction;
- (void)_updateContentWidthConstraint;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setIconSystemName:(id)name;
- (void)setMessage:(id)message;
- (void)setShowInternalUIWarning:(BOOL)warning;
- (void)setStackItems:(id)items;
- (void)setTitle:(id)title;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)window;
@end

@implementation PBASimpleLockScreenView

- (PBASimpleLockScreenView)initWithFrame:(CGRect)frame
{
  v49.receiver = self;
  v49.super_class = PBASimpleLockScreenView;
  v3 = [(PBASimpleLockScreenView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(PBASimpleLockScreenView *)v3 setBackgroundColor:v4];

    v5 = [[SBUICallToActionLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    callToAction = v3->_callToAction;
    v3->_callToAction = v5;

    v7 = v3->_callToAction;
    v8 = [_UILegibilitySettings sharedInstanceForStyle:2];
    [(SBUICallToActionLabel *)v7 setLegibilitySettings:v8];

    [(PBASimpleLockScreenView *)v3 addSubview:v3->_callToAction];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_screenDidBlank:" name:@"PBAScreenDidBlankNotification" object:0];
    v48 = v9;
    [v9 addObserver:v3 selector:"_screenWillUnblank:" name:@"PBAScreenWillUnblankNotification" object:0];
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v10 = [MTLumaDodgePillView alloc];
      [(PBASimpleLockScreenView *)v3 bounds];
      v11 = [v10 initWithFrame:?];
      homeAffordance = v3->_homeAffordance;
      v3->_homeAffordance = v11;

      [(MTLumaDodgePillView *)v3->_homeAffordance setStyle:3];
      [(PBASimpleLockScreenView *)v3 addSubview:v3->_homeAffordance];
    }

    v13 = objc_alloc_init(UIScrollView);
    contentScrollView = v3->_contentScrollView;
    v3->_contentScrollView = v13;

    [(UIScrollView *)v3->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBASimpleLockScreenView *)v3 addSubview:v3->_contentScrollView];
    leadingAnchor = [(UIScrollView *)v3->_contentScrollView leadingAnchor];
    leadingAnchor2 = [(PBASimpleLockScreenView *)v3 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v42;
    trailingAnchor = [(UIScrollView *)v3->_contentScrollView trailingAnchor];
    trailingAnchor2 = [(PBASimpleLockScreenView *)v3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v15;
    topAnchor = [(UIScrollView *)v3->_contentScrollView topAnchor];
    topAnchor2 = [(PBASimpleLockScreenView *)v3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v18;
    bottomAnchor = [(UIScrollView *)v3->_contentScrollView bottomAnchor];
    topAnchor3 = [(SBUICallToActionLabel *)v3->_callToAction topAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-24.0];
    v51[3] = v21;
    v22 = [NSArray arrayWithObjects:v51 count:4];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = objc_alloc_init(UIStackView);
    contentStackView = v3->_contentStackView;
    v3->_contentStackView = v23;

    [(UIStackView *)v3->_contentStackView setAxis:1];
    [(UIStackView *)v3->_contentStackView setDistribution:0];
    [(UIStackView *)v3->_contentStackView setAlignment:3];
    [(UIStackView *)v3->_contentStackView setSpacing:16.0];
    [(UIStackView *)v3->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v3->_contentScrollView addSubview:v3->_contentStackView];
    widthAnchor = [(UIStackView *)v3->_contentStackView widthAnchor];
    widthAnchor2 = [(UIScrollView *)v3->_contentScrollView widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    contentStackViewWidth = v3->_contentStackViewWidth;
    v3->_contentStackViewWidth = v27;

    leadingAnchor3 = [(UIStackView *)v3->_contentStackView leadingAnchor];
    leadingAnchor4 = [(UIScrollView *)v3->_contentScrollView leadingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v50[0] = v43;
    trailingAnchor3 = [(UIStackView *)v3->_contentStackView trailingAnchor];
    trailingAnchor4 = [(UIScrollView *)v3->_contentScrollView trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v50[1] = v29;
    topAnchor4 = [(UIStackView *)v3->_contentStackView topAnchor];
    topAnchor5 = [(UIScrollView *)v3->_contentScrollView topAnchor];
    v32 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v50[2] = v32;
    bottomAnchor2 = [(UIStackView *)v3->_contentStackView bottomAnchor];
    bottomAnchor3 = [(UIScrollView *)v3->_contentScrollView bottomAnchor];
    v35 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v50[3] = v35;
    v50[4] = v3->_contentStackViewWidth;
    v36 = [NSArray arrayWithObjects:v50 count:5];
    [NSLayoutConstraint activateConstraints:v36];
  }

  return v3;
}

- (void)setIconSystemName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_iconSystemName] & 1) == 0)
  {
    objc_storeStrong(&self->_iconSystemName, name);
    iconImageView = self->_iconImageView;
    if (nameCopy)
    {
      if (!iconImageView)
      {
        v7 = objc_alloc_init(UIImageView);
        v8 = self->_iconImageView;
        self->_iconImageView = v7;

        [(UIImageView *)self->_iconImageView setContentMode:2];
        [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIStackView *)self->_contentStackView insertArrangedSubview:self->_iconImageView atIndex:0];
        heightAnchor = [(UIImageView *)self->_iconImageView heightAnchor];
        v10 = [heightAnchor constraintEqualToConstant:80.0];
        v15[0] = v10;
        widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
        v12 = [widthAnchor constraintEqualToConstant:80.0];
        v15[1] = v12;
        v13 = [NSArray arrayWithObjects:v15 count:2];
        [NSLayoutConstraint activateConstraints:v13];

        iconImageView = self->_iconImageView;
      }

      v14 = [UIImage _systemImageNamed:nameCopy];
      [(UIImageView *)iconImageView setImage:v14];
    }

    else
    {
      [(UIImageView *)self->_iconImageView removeFromSuperview];
      v14 = self->_iconImageView;
      self->_iconImageView = 0;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(PBASimpleLockScreenView *)self title];
  v5 = [title isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    v7 = titleCopy;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v8 = objc_alloc_init(UILabel);
        v9 = self->_titleLabel;
        self->_titleLabel = v8;

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v10 = self->_titleLabel;
        v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
        [(UILabel *)v10 setFont:v11];

        [(UIStackView *)self->_contentStackView insertArrangedSubview:self->_titleLabel atIndex:self->_iconImageView != 0];
        v7 = titleCopy;
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v7];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v12 = self->_titleLabel;
      self->_titleLabel = 0;
    }
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  message = [(PBASimpleLockScreenView *)self message];
  v5 = [message isEqualToString:messageCopy];

  if ((v5 & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    v7 = messageCopy;
    if (messageCopy)
    {
      if (!messageLabel)
      {
        v8 = objc_alloc_init(UILabel);
        v9 = self->_messageLabel;
        self->_messageLabel = v8;

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v10 = self->_messageLabel;
        v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightRegular];
        [(UILabel *)v10 setFont:v11];

        if (self->_iconImageView)
        {
          v12 = (self->_titleLabel != 0) + 1;
        }

        else
        {
          v12 = self->_titleLabel != 0;
        }

        [(UIStackView *)self->_contentStackView insertArrangedSubview:self->_messageLabel atIndex:v12];
        v7 = messageCopy;
        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:v7];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v13 = self->_messageLabel;
      self->_messageLabel = 0;
    }
  }
}

- (void)setStackItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_stackItems isEqualToArray:itemsCopy])
  {
    v5 = [itemsCopy copy];
    stackItems = self->_stackItems;
    self->_stackItems = v5;

    if ([(NSArray *)self->_stackItems count]&& !self->_itemStackView)
    {
      v7 = objc_alloc_init(UIStackView);
      itemStackView = self->_itemStackView;
      self->_itemStackView = v7;

      v9 = self->_itemStackView;
      v10 = +[UIColor secondarySystemBackgroundColor];
      [(UIStackView *)v9 setBackgroundColor:v10];

      [(UIStackView *)self->_itemStackView setAxis:1];
      [(UIStackView *)self->_itemStackView setDistribution:0];
      layer = [(UIStackView *)self->_itemStackView layer];
      [layer setCornerRadius:12.0];

      arrangedSubviews = [(UIStackView *)self->_contentStackView arrangedSubviews];
      lastObject = [arrangedSubviews lastObject];

      if (lastObject)
      {
        [(UIStackView *)self->_contentStackView setCustomSpacing:lastObject afterView:32.0];
      }

      [(UIStackView *)self->_itemStackView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIStackView *)self->_contentStackView addArrangedSubview:self->_itemStackView];
      leadingAnchor = [(UIStackView *)self->_itemStackView leadingAnchor];
      leadingAnchor2 = [(UIStackView *)self->_contentStackView leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-12.0];
      v16 = v30 = lastObject;
      v36[0] = v16;
      trailingAnchor = [(UIStackView *)self->_itemStackView trailingAnchor];
      trailingAnchor2 = [(UIStackView *)self->_contentStackView trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
      v36[1] = v19;
      v20 = [NSArray arrayWithObjects:v36 count:2];
      [NSLayoutConstraint activateConstraints:v20];
    }

    if ([(NSArray *)self->_stackItems count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      arrangedSubviews2 = [(UIStackView *)self->_itemStackView arrangedSubviews];
      v22 = [arrangedSubviews2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(arrangedSubviews2);
            }

            [(UIStackView *)self->_itemStackView removeArrangedSubview:*(*(&v31 + 1) + 8 * i)];
          }

          v23 = [arrangedSubviews2 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v23);
      }

      if ([(NSArray *)self->_stackItems count])
      {
        v26 = 0;
        do
        {
          v27 = [(NSArray *)self->_stackItems objectAtIndexedSubscript:v26];
          v28 = objc_alloc_init(PBASimpleLockScreenStackItemView);
          [(PBASimpleLockScreenStackItemView *)v28 setItem:v27];
          [(PBASimpleLockScreenStackItemView *)v28 setShowSeparator:v26 < [(NSArray *)self->_stackItems count]- 1];
          [(UIStackView *)self->_itemStackView addArrangedSubview:v28];

          ++v26;
        }

        while (v26 < [(NSArray *)self->_stackItems count]);
      }
    }

    else
    {
      [(UIStackView *)self->_itemStackView removeFromSuperview];
      v29 = self->_itemStackView;
      self->_itemStackView = 0;
    }
  }
}

- (void)setShowInternalUIWarning:(BOOL)warning
{
  if (self->_showInternalUIWarning != warning)
  {
    self->_showInternalUIWarning = warning;
    if (warning)
    {
      v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      internalUIWarningLabel = self->_internalUIWarningLabel;
      self->_internalUIWarningLabel = v5;

      v14 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
      v7 = [UIFont fontWithDescriptor:v14 size:0.0];
      [(UILabel *)self->_internalUIWarningLabel setFont:v7];
      v8 = self->_internalUIWarningLabel;
      v9 = +[UIColor redColor];
      [(UILabel *)v8 setTextColor:v9];

      v10 = self->_internalUIWarningLabel;
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"PREBOARD_INTERNAL_UI" value:&stru_10001CDA8 table:@"PreBoard"];
      [(UILabel *)v10 setText:v12];

      [(PBASimpleLockScreenView *)self addSubview:self->_internalUIWarningLabel];
      [(PBASimpleLockScreenView *)self setNeedsLayout];

      v13 = v14;
    }

    else
    {
      [(UILabel *)self->_internalUIWarningLabel removeFromSuperview];
      v13 = self->_internalUIWarningLabel;
      self->_internalUIWarningLabel = 0;
    }
  }
}

- (void)layoutSubviews
{
  [(PBASimpleLockScreenView *)self _layoutCallToActionLabel];
  [(PBASimpleLockScreenView *)self _layoutInternalUIWarningLabel];
  [(PBASimpleLockScreenView *)self _layoutHomeAffordance];

  [(PBASimpleLockScreenView *)self _layoutContent];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = PBASimpleLockScreenView;
  [(PBASimpleLockScreenView *)&v3 updateConstraints];
  [(PBASimpleLockScreenView *)self _updateContentWidthConstraint];
}

- (void)_layoutHomeAffordance
{
  homeAffordance = self->_homeAffordance;
  if (homeAffordance)
  {
    v19 = homeAffordance;
    [(PBASimpleLockScreenView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(MTLumaDodgePillView *)self->_homeAffordance setFrame:?];
    [(MTLumaDodgePillView *)self->_homeAffordance suggestedSizeForContentWidth:v9];
    [(MTLumaDodgePillView *)v19 setBounds:0.0, 0.0, v12, v13];
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    MidX = CGRectGetMidX(v21);
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    Height = CGRectGetHeight(v22);
    [(MTLumaDodgePillView *)v19 bounds];
    v17 = Height + v16 * -0.5;
    [(MTLumaDodgePillView *)self->_homeAffordance suggestedEdgeSpacing];
    [(MTLumaDodgePillView *)v19 setCenter:MidX, v17 - v18];
  }
}

- (void)_layoutCallToActionLabel
{
  [(PBASimpleLockScreenView *)self bounds];
  v7 = v6;
  v8 = 44.0;
  if (!self->_homeAffordance)
  {
    v8 = 40.0;
  }

  callToAction = self->_callToAction;
  [SBFDashBoardViewMetrics suggestedFrameForCallToActionLabel:callToAction yOffset:v8 inBounds:v7, v3, v4, v5];

  [(SBUICallToActionLabel *)callToAction setFrame:?];
}

- (void)_layoutInternalUIWarningLabel
{
  if (self->_internalUIWarningLabel)
  {
    [(PBASimpleLockScreenView *)self bounds];
    [(UILabel *)self->_internalUIWarningLabel sizeToFit];
    [(UILabel *)self->_internalUIWarningLabel frame];
    UIRectCenteredIntegralRectScale();
    internalUIWarningLabel = self->_internalUIWarningLabel;

    [(UILabel *)internalUIWarningLabel setFrame:?];
  }
}

- (double)_contentHorizontalInset
{
  [(PBASimpleLockScreenView *)self bounds];
  [SBFDashBoardViewMetrics suggestedFrameForDateTimeViewInScreenCoordinates:0 centeredX:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PBASimpleLockScreenView *)self bounds];
  Width = CGRectGetWidth(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return (Width - CGRectGetWidth(v14)) * 0.5;
}

- (void)_layoutContent
{
  [(PBASimpleLockScreenView *)self bounds];
  [SBFDashBoardViewMetrics suggestedFrameForDateTimeViewInScreenCoordinates:0 centeredX:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PBASimpleLockScreenView *)self _contentHorizontalInset];
  v12 = v11;
  [(UIScrollView *)self->_contentScrollView contentInset];
  if (v12 != v13)
  {
    contentScrollView = self->_contentScrollView;
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    v15 = CGRectGetMinY(v17) + 40.0;

    [(UIScrollView *)contentScrollView setContentInset:v15, v12, 0.0, v12];
  }
}

- (void)_updateContentWidthConstraint
{
  [(PBASimpleLockScreenView *)self _contentHorizontalInset];
  v4 = v3 * -2.0;
  [(NSLayoutConstraint *)self->_contentStackViewWidth constant];
  if (v4 != v5)
  {
    contentStackViewWidth = self->_contentStackViewWidth;

    [(NSLayoutConstraint *)contentStackViewWidth setConstant:v4];
  }
}

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    [(PBASimpleLockScreenView *)self _hideCallToAction];
  }
}

- (void)didMoveToWindow
{
  window = [(PBASimpleLockScreenView *)self window];

  if (window)
  {
    v5 = NSRunLoopCommonModes;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [(PBASimpleLockScreenView *)self performSelector:"_showCallToAction" withObject:0 afterDelay:v4 inModes:0.5];
  }
}

- (void)_screenDidBlank:(id)blank
{
  window = [(PBASimpleLockScreenView *)self window];

  if (window)
  {

    [(PBASimpleLockScreenView *)self _hideCallToAction];
  }
}

- (void)_screenWillUnblank:(id)unblank
{
  window = [(PBASimpleLockScreenView *)self window];

  if (window)
  {

    [(PBASimpleLockScreenView *)self _showCallToAction];
  }
}

- (void)_showCallToAction
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_hideCallToAction" object:0];
  [(SBUICallToActionLabel *)self->_callToAction setHidden:0];
  callToAction = self->_callToAction;

  [(SBUICallToActionLabel *)callToAction fadeInImmediately:1];
}

- (void)_hideCallToAction
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_showCallToAction" object:0];
  [(SBUICallToActionLabel *)self->_callToAction fadeOut];
  callToAction = self->_callToAction;

  [(SBUICallToActionLabel *)callToAction setHidden:1];
}

@end