@interface PHHandsetDialerView
- (BOOL)dialerIsNumericOnly;
- (CGSize)intrinsicContentSize;
- (double)_keypadToCallButtonYSpacing;
- (double)_remoteViewControllerDialerOffset;
- (double)_yOffsetForAddContactButton;
- (double)_yOffsetForKeypadView;
- (double)callButtonDiameter;
- (double)yOffsetFromKeypadToDialerButtonForExplictLayoutDevices;
- (double)yOffsetFromKeypadToLCDViewForExplicitLayoutDevices;
- (id)deleteButtonXImageView;
- (id)newCallButton;
- (id)newDeleteButton;
- (id)newNumberPadView;
- (id)numberPadButtonsForCharacters:(id)a3;
- (void)constraintAddContactButtonForIPad;
- (void)constraintAddContactButtonForNonIPad;
- (void)constraintDualSimPicker;
- (void)createConstraints;
- (void)createDeleteButtonX;
- (void)layoutSubviews;
- (void)setDeleteButtonAlpha:(double)a3;
- (void)setEnableDualSimMenu:(BOOL)a3;
- (void)updateContraintsForStatusBar;
@end

@implementation PHHandsetDialerView

- (void)setEnableDualSimMenu:(BOOL)a3
{
  if (self->_enableDualSimMenu != a3)
  {
    v3 = a3;
    if ([(PHHandsetDialerView *)self appType]== &dword_0 + 1)
    {
      v5 = [(PHHandsetDialerView *)self pillView];

      if (v5)
      {
        self->_enableDualSimMenu = v3;
        v6 = [(PHHandsetDialerView *)self pillView];
        v7 = [v6 superview];

        if (v3)
        {
          if (!v7)
          {
            v8 = [(PHHandsetDialerView *)self pillView];
            [(PHHandsetDialerView *)self addSubview:v8];

            [(PHHandsetDialerView *)self constraintDualSimPicker];
          }
        }

        else if (v7)
        {
          v9 = [(PHHandsetDialerView *)self pillView];
          [v9 removeFromSuperview];
        }
      }
    }
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PHHandsetDialerView;
  [(PHHandsetDialerView *)&v8 layoutSubviews];
  v3 = [(PHHandsetDialerView *)self featureFlags];
  if ([v3 phoneLargeFormatUIEnabled])
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      return;
    }

    [(PHHandsetDialerView *)self _yOffsetForKeypadView];
    v7 = v6;
    v3 = [(PHHandsetDialerView *)self phonePadViewTopConstraint];
    [v3 setConstant:v7];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PHAbstractDialerView *)self lcdView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PHAbstractDialerView *)self deleteButton];
  [v12 frame];
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v15;
  v28.size.height = v16;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v25 = CGRectUnion(v24, v28);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, -32.0, -32.0);
  v21 = v27.size.width;
  v22 = v27.size.height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)createConstraints
{
  v3 = [(PHAbstractDialerView *)self lcdView];
  v4 = [NSLayoutConstraint constraintWithItem:v3 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v4];

  v5 = [(PHAbstractDialerView *)self callButton];
  v6 = [(PHAbstractDialerView *)self phonePadView];
  v7 = [NSLayoutConstraint constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v6 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v7];

  v8 = [(PHAbstractDialerView *)self phonePadView];
  v9 = [NSLayoutConstraint constraintWithItem:v8 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v9];

  v10 = [(PHAbstractDialerView *)self deleteButton];
  v11 = [(PHAbstractDialerView *)self phonePadView];
  v12 = [(PHAbstractDialerView *)self phonePadView];
  [v12 bounds];
  v14 = [NSLayoutConstraint constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v11 attribute:2 multiplier:1.0 constant:v13 / -6.0 + -2.0];
  [(PHHandsetDialerView *)self addConstraint:v14];

  v15 = [(PHAbstractDialerView *)self deleteButton];
  v16 = [(PHAbstractDialerView *)self callButton];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:10 relatedBy:0 toItem:v16 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v17];

  v18 = [(PHAbstractDialerView *)self lcdView];
  v19 = [NSLayoutConstraint constraintWithItem:v18 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v19];

  v20 = [(PHAbstractDialerView *)self lcdView];
  v21 = [v20 widthAnchor];
  v22 = [(PHAbstractDialerView *)self phonePadView];
  [v22 bounds];
  v24 = [v21 constraintEqualToConstant:v23];
  [v24 setActive:1];

  if ([(PHHandsetDialerView *)self appType]== &dword_0 + 1)
  {
    if ([(PHHandsetDialerView *)self enableSmartDialer])
    {
      v25 = +[UIDevice currentDevice];
      v26 = [v25 userInterfaceIdiom];

      if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(PHHandsetDialerView *)self constraintAddContactButtonForIPad];
      }

      else
      {
        [(PHHandsetDialerView *)self constraintAddContactButtonForNonIPad];
      }
    }

    v27 = +[UIDevice currentDevice];
    v28 = [v27 userInterfaceIdiom];

    if (v28 == &dword_4 + 1)
    {

      [(PHHandsetDialerView *)self constraintDualSimPicker];
    }
  }
}

- (void)constraintAddContactButtonForIPad
{
  v3 = [(PHAbstractDialerView *)self addContactButton];
  v4 = [(PHAbstractDialerView *)self callButton];
  v5 = [NSLayoutConstraint constraintWithItem:v3 attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerView *)self addConstraint:v5];

  v10 = [(PHAbstractDialerView *)self addContactButton];
  v6 = [(PHAbstractDialerView *)self phonePadView];
  v7 = [(PHAbstractDialerView *)self phonePadView];
  [v7 bounds];
  v9 = [NSLayoutConstraint constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v6 attribute:1 multiplier:1.0 constant:v8 / 6.0 + 2.0];
  [(PHHandsetDialerView *)self addConstraint:v9];
}

- (void)constraintAddContactButtonForNonIPad
{
  v18 = [(PHAbstractDialerView *)self addContactButton];
  v16 = [v18 topAnchor];
  v17 = [(PHHandsetDialerView *)self headerLayoutGuide];
  v15 = [v17 topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v19[0] = v14;
  v13 = [(PHAbstractDialerView *)self addContactButton];
  v3 = [v13 bottomAnchor];
  v4 = [(PHHandsetDialerView *)self headerLayoutGuide];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v19[1] = v6;
  v7 = [(PHAbstractDialerView *)self addContactButton];
  v8 = [v7 trailingAnchor];
  v9 = [(PHHandsetDialerView *)self layoutMarginsGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v19[2] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)constraintDualSimPicker
{
  v13 = [(PHHandsetDialerView *)self pillView];
  v3 = [v13 leadingAnchor];
  v4 = [(PHHandsetDialerView *)self layoutMarginsGuide];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v14[0] = v6;
  v7 = [(PHHandsetDialerView *)self pillView];
  v8 = [v7 centerYAnchor];
  v9 = [(PHHandsetDialerView *)self headerLayoutGuide];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v12];
}

- (BOOL)dialerIsNumericOnly
{
  if (dialerIsNumericOnly_onceToken != -1)
  {
    [PHHandsetDialerView dialerIsNumericOnly];
  }

  return dialerIsNumericOnly_isNumericOnly;
}

void __42__PHHandsetDialerView_dialerIsNumericOnly__block_invoke(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = TUPreferredFaceTimeBundleIdentifier();
  dialerIsNumericOnly_isNumericOnly = [v1 isEqualToString:v2];
}

- (void)updateContraintsForStatusBar
{
  [(PHHandsetDialerView *)self _keypadToCallButtonYSpacing];
  v4 = v3;
  v5 = [(PHHandsetDialerView *)self callButtonKeypadOffsetConstraint];
  [v5 setConstant:v4];

  [(PHHandsetDialerView *)self _yOffsetForKeypadView];
  v7 = v6;
  v8 = [(PHHandsetDialerView *)self phonePadViewTopConstraint];
  [v8 setConstant:v7];

  [(PHHandsetDialerView *)self _yOffsetForAddContactButton];
  v10 = v9;
  v11 = [(PHHandsetDialerView *)self addContactButtonTopConstraint];
  [v11 setConstant:v10];

  v12 = [(PHAbstractDialerView *)self phonePadView];
  [v12 invalidateIntrinsicContentSize];
}

- (id)numberPadButtonsForCharacters:(id)a3
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__PHHandsetDialerView_numberPadButtonsForCharacters___block_invoke;
  v9[3] = &unk_4CBC8;
  v9[4] = self;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __53__PHHandsetDialerView_numberPadButtonsForCharacters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PHHandsetDialerNumberPadButton alloc];
  v7 = [v5 intValue];

  v8 = v7;
  v9 = [*(a1 + 32) traitCollection];
  v10 = -[PHHandsetDialerNumberPadButton initForCharacter:style:](v6, "initForCharacter:style:", v8, [v9 userInterfaceStyle]);

  [*(a1 + 40) insertObject:v10 atIndex:a3];
}

- (void)createDeleteButtonX
{
  v19 = [(PHHandsetDialerView *)self deleteButtonXImageView];
  v3 = [UIView alloc];
  v4 = [(PHAbstractDialerView *)self deleteButton];
  [v4 frame];
  v6 = v5;
  +[PHHandsetDialerNumberPadButton circleBounds];
  v8 = v6 - (v7 * 0.5 + 2.0);
  v9 = [(PHAbstractDialerView *)self deleteButton];
  [v9 frame];
  v11 = v10 * 0.5;
  [v19 frame];
  v13 = v11 - v12 * 0.5;
  [v19 frame];
  v15 = v14;
  [v19 frame];
  v16 = [v3 initWithFrame:{v8, v13, v15}];
  deleteButtonXView = self->_deleteButtonXView;
  self->_deleteButtonXView = v16;

  [(UIView *)self->_deleteButtonXView setUserInteractionEnabled:0];
  [(UIView *)self->_deleteButtonXView addSubview:v19];
  v18 = [(PHAbstractDialerView *)self deleteButton];
  [v18 addSubview:self->_deleteButtonXView];
}

- (id)deleteButtonXImageView
{
  v2 = [UIImageView alloc];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [UIImage imageNamed:@"keypad-delete-x" inBundle:v3];
  v5 = [v4 imageWithRenderingMode:2];
  v6 = [v2 initWithImage:v5];

  v7 = +[UIColor dynamicLabelColor];
  [v6 setTintColor:v7];

  return v6;
}

- (id)newDeleteButton
{
  v3 = [PHHandsetDialerDeleteButton buttonWithType:1];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setOpaque:0];
  v5 = +[UIColor dynamicLabelColor];
  [v3 setTintColor:v5];

  [v3 setHighlighted:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [(PHHandsetDialerView *)self deleteButtonImageName];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UIImage imageNamed:v7 inBundle:v8];

  [v3 setImage:v9 forState:0];
  +[PHHandsetDialerNumberPadButton circleBounds];
  v11 = v10 * 0.5;
  [v9 size];
  v13 = v11 - v12 * 0.5;
  +[PHHandsetDialerNumberPadButton circleBounds];
  v15 = v14 * 0.5;
  [v9 size];
  v17 = v15 - v16 * 0.5;
  +[PHHandsetDialerNumberPadButton circleBounds];
  v19 = v18 * 0.5;
  [v9 size];
  v21 = v19 - v20 * 0.5;
  +[PHHandsetDialerNumberPadButton circleBounds];
  v23 = v22 * 0.5;
  [v9 size];
  [v3 setContentEdgeInsets:{v13, v17, v21, v23 - v24 * 0.5}];
  +[PHHandsetDialerNumberPadButton circleBounds];
  v26 = v25 * 0.5;
  v27 = [v3 layer];
  [v27 setCornerRadius:v26];

  [v3 sizeToFit];
  return v3;
}

- (void)setDeleteButtonAlpha:(double)a3
{
  v4 = [(PHAbstractDialerView *)self deleteButton];
  [v4 setAlpha:a3];
}

- (id)newNumberPadView
{
  if ([(PHHandsetDialerView *)self dialerIsNumericOnly])
  {
    +[TPDialerNumberPad dialerNumberPadNumericCharacters];
  }

  else
  {
    +[TPDialerNumberPad dialerNumberPadFullCharacters];
  }
  v3 = ;
  v4 = [TPDialerNumberPad alloc];
  v5 = [(PHHandsetDialerView *)self numberPadButtonsForCharacters:v3];
  v6 = [v4 initWithButtons:v5];

  if (_UISolariumEnabled())
  {
    v7 = objc_opt_new();
    [v6 _setBackground:v7];
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

- (id)newCallButton
{
  v3 = [PHBottomBarButtonConfiguration alloc];
  [(PHHandsetDialerView *)self callButtonDiameter];
  v4 = [(PHBottomBarButtonConfiguration *)v3 initWithAction:1 diameter:2 callState:?];
  v5 = [[PHBottomBarButton alloc] initWithConfiguration:v4 appType:[(PHHandsetDialerView *)self appType]];
  [(PHBottomBarButton *)v5 setTitle:0 forState:0];
  [(PHBottomBarButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

- (double)callButtonDiameter
{
  +[PHBottomBarButtonConfiguration defaultWidth];
  v3 = v2;
  if (!+[PHInCallUIUtilities hasMultipleSenderIdentities](PHInCallUIUtilities, "hasMultipleSenderIdentities") || (+[PHUIConfiguration handsetDialerSpacing]| 2) != 2)
  {
    return v3;
  }

  +[PHHandsetDialerNumberPadButton outerCircleDiameter];
  return result;
}

- (double)_yOffsetForAddContactButton
{
  v3 = [(PHHandsetDialerView *)self featureFlags];
  if ([v3 phoneLargeFormatUIEnabled])
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 32.0;
    }
  }

  else
  {
  }

  v6 = 0.0;
  if (+[PHUIConfiguration requiresSmallScreenConfig](PHUIConfiguration, "requiresSmallScreenConfig") && !+[PHInCallUIUtilities hasMultipleSenderIdentities])
  {
    if ([(PHAbstractDialerView *)self isHostedInRemoteViewController])
    {
      return 0.0;
    }

    else
    {
      return 15.0;
    }
  }

  return v6;
}

- (double)_yOffsetForKeypadView
{
  if (![PHUIConfiguration shouldUseExplicitLayoutDimensions:[(PHHandsetDialerView *)self appType]])
  {
    v7 = +[PHUIConfiguration handsetDialerSpacing];
    if (v7 > 2)
    {
      if (v7 <= 4)
      {
        if (v7 != &dword_0 + 3)
        {
          v8 = 87.5;
          goto LABEL_25;
        }

        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 173.5;
        goto LABEL_23;
      }

      if (v7 == &dword_4 + 1)
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 81.0;
        goto LABEL_23;
      }

      if (v7 == &dword_4 + 2)
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v10 = 99.0;
LABEL_23:
        v8 = v10 - v9;
        goto LABEL_25;
      }

LABEL_20:
      v8 = 150.0;
      goto LABEL_25;
    }

    if (!v7)
    {
      v8 = 17.0;
      goto LABEL_25;
    }

    if (v7 == &dword_0 + 1)
    {
      v8 = 84.0;
    }

    else
    {
      if (v7 != &dword_0 + 2)
      {
        goto LABEL_20;
      }

      if (+[PHInCallUIUtilities hasMultipleSenderIdentities])
      {
        v8 = 156.0;
      }

      else
      {
        v8 = 141.0;
      }
    }

LABEL_25:
    [(PHHandsetDialerView *)self _remoteViewControllerDialerOffset];
    v5 = v8 - v11;
    v12 = [(PHHandsetDialerView *)self featureFlags];
    if ([v12 phoneLargeFormatUIEnabled])
    {
      v13 = +[UIDevice currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        return v5;
      }

      v15 = [(PHHandsetDialerView *)self window];
      v12 = [v15 windowScene];

      +[PHUIConfiguration yOffsetForSmartDialerLCDViewForOrientation:](PHUIConfiguration, "yOffsetForSmartDialerLCDViewForOrientation:", [v12 interfaceOrientation]);
      v5 = v5 - v16;
    }

    return v5;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 20.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return v5;
  }

  [(PHHandsetDialerView *)self yOffsetFromKeypadToLCDViewForExplicitLayoutDevices];
  return result;
}

- (double)_remoteViewControllerDialerOffset
{
  v2 = 0.0;
  if ([(PHAbstractDialerView *)self isHostedInRemoteViewController])
  {
    v3 = +[PHUIConfiguration handsetDialerSpacing];
    if (v3 <= 6)
    {
      return dbl_31380[v3];
    }
  }

  return v2;
}

- (double)_keypadToCallButtonYSpacing
{
  if ([PHUIConfiguration shouldUseExplicitLayoutDimensions:[(PHHandsetDialerView *)self appType]])
  {

    [(PHHandsetDialerView *)self yOffsetFromKeypadToDialerButtonForExplictLayoutDevices];
    return result;
  }

  v4 = +[PHUIConfiguration handsetDialerSpacing];
  if (v4 > 2)
  {
    if (v4 == &dword_0 + 3)
    {
      +[PHHandsetDialerNumberPadButton verticalPadding];
      v6 = 17.0;
    }

    else
    {
      if (v4 != &dword_4 + 1)
      {
        return 8.5;
      }

      +[PHHandsetDialerNumberPadButton verticalPadding];
      v6 = 18.0;
    }

    return v6 - v5;
  }

  if (v4)
  {
    if (v4 == &dword_0 + 1)
    {
      return 7.0;
    }

    return 8.5;
  }

  +[PHHandsetDialerNumberPadButton verticalPadding];
  return result;
}

- (double)yOffsetFromKeypadToLCDViewForExplicitLayoutDevices
{
  v3 = +[PHUIConfiguration screenSize];
  result = 38.0;
  if (v3 <= 0xF)
  {
    if (((1 << v3) & 0xA210) != 0)
    {
      v5 = ![(PHAbstractDialerView *)self isHostedInRemoteViewController];
      result = 20.0;
LABEL_4:
      if (!v5)
      {
        return 12.0;
      }

      return result;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v5 = ![(PHAbstractDialerView *)self isHostedInRemoteViewController];
      result = 17.0;
      goto LABEL_4;
    }

    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    result = 3.0;
    if (!v7)
    {
      return -20.0;
    }
  }

  return result;
}

- (double)yOffsetFromKeypadToDialerButtonForExplictLayoutDevices
{
  v2 = +[PHUIConfiguration screenSize];
  v3 = 0.0;
  if (v2 <= 10)
  {
    if (v2 <= 3)
    {
      if (v2)
      {
        if (v2 != (&dword_0 + 1))
        {
          goto LABEL_25;
        }

        +[PHHandsetDialerNumberPadButton verticalPadding];
        v5 = 8.5;
      }

      else
      {
        +[PHHandsetDialerNumberPadButton verticalPadding];
        v5 = 3.5;
      }

      v3 = v4 + v5;
      goto LABEL_25;
    }

    if (v2 != &dword_4)
    {
      if (v2 != (&dword_8 + 1))
      {
        if (v2 == (&dword_8 + 2))
        {
          v3 = 18.0;
        }

        goto LABEL_25;
      }

LABEL_21:
      v3 = 9.0;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if (v2 <= 12)
  {
    v6 = 19.0;
    if (v2 != &dword_C)
    {
      v6 = 0.0;
    }

    if (v2 == (&dword_8 + 3))
    {
      v3 = 9.0;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    if (v2 == (&dword_C + 1))
    {
      goto LABEL_21;
    }

    if (v2 == (&dword_C + 2))
    {
      v3 = 26.0;
      goto LABEL_25;
    }

    if (v2 == (&dword_C + 3))
    {
LABEL_12:
      v3 = 18.0;
    }
  }

LABEL_25:
  +[PHHandsetDialerNumberPadButton verticalPadding];
  return v3 - v7;
}

@end