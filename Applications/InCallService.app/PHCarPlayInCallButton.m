@interface PHCarPlayInCallButton
- (CGSize)intrinsicContentSize;
- (id)initForButtonType:(int)a3 callState:(int64_t)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHasRingView:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setToggledOn:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateToProperIconColor;
@end

@implementation PHCarPlayInCallButton

- (CGSize)intrinsicContentSize
{
  v2 = [(PHCarPlayInCallButton *)self inCallButtonType];
  v3 = 75.0;
  if (v2 - 8 < 7 || v2 == 4)
  {
    v5 = 104.0;
  }

  else if (v2 == 19)
  {
    v5 = 92.5;
  }

  else
  {
    v5 = 75.0;
    v3 = 75.0;
  }

  result.height = v3;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v42 layoutSubviews];
  [(PHCarPlayInCallButton *)self bounds];
  Width = CGRectGetWidth(v43);
  v4 = [(PHCarPlayInCallButton *)self imageView];
  [v4 sizeThatFits:{Width, 58.0}];

  [(PHCarPlayInCallButton *)self inCallButtonType];
  UIRectCenteredIntegralRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PHCarPlayInCallButton *)self imageView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(PHCarPlayInCallButton *)self specialRingView];

  if (v14)
  {
    v15 = [(PHCarPlayInCallButton *)self specialRingView];
    [v15 sizeThatFits:{Width, 58.0}];

    UIRectCenteredIntegralRect();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(PHCarPlayInCallButton *)self specialRingView];
    [v24 setFrame:{v17, v19, v21, v23}];
  }

  [(PHCarPlayInCallButton *)self bounds];
  v25 = CGRectGetHeight(v44) + -58.0;
  v26 = [(PHCarPlayInCallButton *)self buttonLabel];
  [v26 sizeThatFits:{Width, v25}];
  v28 = v27;

  v29 = [(PHCarPlayInCallButton *)self buttonLabel];
  [v29 setFrame:{0.0, 58.0, Width, v28}];

  v30 = [(PHCarPlayInCallButton *)self ringView];

  if (v30)
  {
    v31 = [(PHCarPlayInCallButton *)self ringView];
    [(PHCarPlayInCallButton *)self sendSubviewToBack:v31];

    v32 = [(PHCarPlayInCallButton *)self ringView];
    [v32 sizeThatFits:{Width, 58.0}];

    UIRectCenteredIntegralRect();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [(PHCarPlayInCallButton *)self ringView];
    [v41 setFrame:{v34, v36, v38, v40}];
  }
}

- (void)updateToProperIconColor
{
  if ([(PHCarPlayInCallButton *)self inCallButtonType]== 17)
  {
    return;
  }

  v3 = [(PHCarPlayInCallButton *)self ringView];

  if (!v3)
  {
    return;
  }

  if ([(PHCarPlayInCallButton *)self toggledOn])
  {
    if ((_UISolariumEnabled() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v5 = +[UIColor dynamicCarQuaternaryColor];
    goto LABEL_15;
  }

  v4 = [(PHCarPlayInCallButton *)self isHighlighted];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (!v4)
    {
      v6 = +[UIColor whiteColor];
LABEL_23:
      v12 = v6;
      [(PHCarPlayInCallButton *)self setTintColor:?];
      goto LABEL_24;
    }

LABEL_10:
    if (_os_feature_enabled_impl())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableBackgroundColor];
    }
    v6 = ;
    goto LABEL_23;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = +[UIColor whiteColor];
LABEL_15:
  v7 = v5;
  v8 = [(PHCarPlayInCallButton *)self ringView];
  v9 = [v8 glassView];
  [v9 setTintColor:v7];

  if ([(PHCarPlayInCallButton *)self inCallButtonType]!= 1)
  {
    if (![(PHCarPlayInCallButton *)self inCallButtonType])
    {
      return;
    }

    goto LABEL_19;
  }

  if (![(PHCarPlayInCallButton *)self toggledOn])
  {
LABEL_19:
    v10 = +[UIColor labelColor];
    goto LABEL_20;
  }

  v10 = +[UIColor redColor];
LABEL_20:
  v12 = v10;
  v11 = [(PHCarPlayInCallButton *)self imageView];
  [v11 setTintColor:v12];

LABEL_24:
}

- (id)initForButtonType:(int)a3 callState:(int64_t)a4
{
  v80.receiver = self;
  v80.super_class = PHCarPlayInCallButton;
  v6 = [(PHCarPlayInCallButton *)&v80 initWithFrame:0.0, 0.0, 115.0, 130.0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_63;
  }

  v6->_callState = a4;
  v6->_inCallButtonType = a3;
  [(PHCarPlayInCallButton *)v6 intrinsicContentSize];
  v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];
  [(PHCarPlayInCallButton *)v7 addConstraint:v9];

  LODWORD(v10) = 1148846080;
  [(PHCarPlayInCallButton *)v7 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [(PHCarPlayInCallButton *)v7 setContentHuggingPriority:0 forAxis:v11];
  [(PHCarPlayInCallButton *)v7 setClipsToBounds:0];
  [(PHCarPlayInCallButton *)v7 setSpecialLayoutType:0];
  [(PHCarPlayInCallButton *)v7 setAdjustsImageWhenDisabled:1];
  [(PHCarPlayInCallButton *)v7 setAdjustsImageWhenHighlighted:0];
  v12 = objc_alloc_init(UILabel);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTextAlignment:1];
  v13 = +[UIColor dynamicCarPrimaryColor];
  [v12 setTextColor:v13];

  v14 = +[UIColor clearColor];
  [v12 setBackgroundColor:v14];

  [v12 setOpaque:0];
  [v12 setText:&stru_100361FD0];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];
  [v12 setUserInteractionEnabled:0];
  [v12 setAdjustsFontSizeToFitWidth:1];
  [(PHCarPlayInCallButton *)v7 addSubview:v12];
  [(PHCarPlayInCallButton *)v7 setButtonLabel:v12];
  v15 = +[UIColor whiteColor];
  [(PHCarPlayInCallButton *)v7 setTintColor:v15];

  v16 = [(PHCarPlayInCallButton *)v7 buttonLabel];
  LODWORD(v17) = 1132068864;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];

  if (a3 > 0x13)
  {
    goto LABEL_10;
  }

  v18 = 10.0;
  if (((1 << a3) & 0x3C000) != 0)
  {
    v20 = 0.0;
    v21 = 20.0;
    v19 = 1;
    goto LABEL_7;
  }

  if (((1 << a3) & 0x83800) == 0)
  {
LABEL_10:
    v20 = 0.0;
    v21 = 20.0;
    v19 = 1;
    v18 = 12.0;
    goto LABEL_7;
  }

  v19 = 0;
  v20 = -20.0;
  v21 = 0.0;
LABEL_7:
  [(PHCarPlayInCallButton *)v7 setImageEdgeInsets:v20, 0.0, v21, 0.0];
  v22 = [UIFont systemFontOfSize:v18];
  [v12 setFont:v22];

  [(PHCarPlayInCallButton *)v7 setHasRingView:v19];
  switch(a3)
  {
    case 0:
      if (a4 == 1)
      {
        v38 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_end_voip"];
        v24 = [v38 imageWithRenderingMode:2];
      }

      else
      {
        v24 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:2];
      }

      [(PHCarPlayInCallButton *)v7 setImage:v24 forState:0];
      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_END_BUTTON";
      goto LABEL_56;
    case 1:
      v39 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:22];
      [(PHCarPlayInCallButton *)v7 setImage:v39 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_MUTE_BUTTON";
      goto LABEL_40;
    case 2:
      v34 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:19];
      [(PHCarPlayInCallButton *)v7 setImage:v34 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_KEYPAD_BUTTON";
      goto LABEL_40;
    case 3:
      v35 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:17];
      [(PHCarPlayInCallButton *)v7 setImage:v35 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_ADD_CALL_BUTTON";
      goto LABEL_40;
    case 4:
      if (a4 == 1)
      {
        v30 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_decline_glyph_voip"];
        v24 = [v30 imageWithRenderingMode:2];
      }

      else
      {
        v24 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:2];
      }

      [(PHCarPlayInCallButton *)v7 setImage:v24 forState:0];
      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_DECLINE_BUTTON";
      goto LABEL_56;
    case 5:
      v44 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:20];
      [(PHCarPlayInCallButton *)v7 setImage:v44 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_MERGE_CALLS_BUTTON";
      goto LABEL_40;
    case 6:
      v45 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:21];
      [(PHCarPlayInCallButton *)v7 setImage:v45 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_SWAP_BUTTON";
      goto LABEL_40;
    case 7:
      v36 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_split"];
      [(PHCarPlayInCallButton *)v7 setImage:v36 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_SPLIT_BUTTON";
      goto LABEL_40;
    case 8:
    case 9:
      if (a4 == 1)
      {
        v23 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_answer_glyph_voip"];
        v24 = [v23 imageWithRenderingMode:2];
      }

      else
      {
        v24 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:1];
      }

      [(PHCarPlayInCallButton *)v7 setImage:v24 forState:0];
      if (a3 != 8)
      {
        goto LABEL_59;
      }

      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_ANSWER_BUTTON";
      goto LABEL_56;
    case 10:
      v40 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:14];
      [(PHCarPlayInCallButton *)v7 setImage:v40 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_DECLINE_WITH_MESSAGE";
      goto LABEL_40;
    case 11:
      if ((a4 - 1) > 3)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(&off_1003573E8 + a4 - 1);
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v28];
      v61 = [UIImage phCarPlayImageNamed:v28];
      [(PHCarPlayInCallButton *)v7 setImage:v61 forState:0];

      v62 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v62 forState:8];

      v63 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v63 forState:4];

      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_END_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 12:
      if ((a4 - 1) > 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(&off_100357408 + a4 - 1);
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v29];
      v64 = [UIImage phCarPlayImageNamed:v29];
      [(PHCarPlayInCallButton *)v7 setImage:v64 forState:0];

      v65 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v65 forState:8];

      v66 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v66 forState:4];

      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_HOLD_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 13:
      if ((a4 - 1) > 3)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(&off_100357428 + a4 - 1);
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v37];
      v67 = [UIImage phCarPlayImageNamed:v37];
      [(PHCarPlayInCallButton *)v7 setImage:v67 forState:0];

      v68 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v68 forState:8];

      v69 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v69 forState:4];

      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_END_HOLD_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 14:
      v24 = 0;
      if (a4 > 2)
      {
        if (a4 == 4)
        {
          goto LABEL_54;
        }

        if (a4 != 3)
        {
          goto LABEL_55;
        }

LABEL_53:
        v70 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_decline_glyph_voip"];
        v24 = [v70 imageWithRenderingMode:2];

        goto LABEL_55;
      }

      if (a4 == 1)
      {
        goto LABEL_53;
      }

      if (a4 != 2)
      {
        goto LABEL_55;
      }

LABEL_54:
      v24 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:2];
LABEL_55:
      v71 = +[UIColor whiteColor];
      v72 = [v24 _flatImageWithColor:v71];
      [(PHCarPlayInCallButton *)v7 setImage:v72 forState:0];

      v25 = +[NSBundle mainBundle];
      v26 = v25;
      v27 = @"CARPLAY_IGNORE_BUTTON";
LABEL_56:
      v60 = [v25 localizedStringForKey:v27 value:&stru_100361FD0 table:@"PHCarPlay"];
      v73 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [v73 setText:v60];

LABEL_57:
LABEL_58:

LABEL_59:
LABEL_60:
      v74 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      v75 = [v74 text];

      if (v75)
      {
        v76 = [(PHCarPlayInCallButton *)v7 buttonLabel];
        v77 = [v76 text];
        v81 = v77;
        v78 = [NSArray arrayWithObjects:&v81 count:1];
        [(PHCarPlayInCallButton *)v7 setAccessibilityUserInputLabels:v78];
      }

LABEL_63:
      [(PHCarPlayInCallButton *)v7 updateToProperIconColor];
      return v7;
    case 15:
      v31 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:1];
      [(PHCarPlayInCallButton *)v7 setImage:v31 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_CALL_BACK_BUTTON";
      goto LABEL_40;
    case 16:
      v57 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_decline"];
      v58 = +[UIColor whiteColor];
      v59 = [v57 _flatImageWithColor:v58];
      [(PHCarPlayInCallButton *)v7 setImage:v59 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_CANCEL_BUTTON";
      goto LABEL_40;
    case 17:
      v41 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_decline_to_voicemail"];
      v42 = +[UIColor externalSystemRedColor];
      v43 = [v41 _flatImageWithColor:v42];
      [(PHCarPlayInCallButton *)v7 setImage:v43 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_SEND_TO_VOICEMAIL";
      goto LABEL_40;
    case 18:
      v46 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:26];
      [(PHCarPlayInCallButton *)v7 setImage:v46 forState:0];

      v32 = +[NSBundle mainBundle];
      v24 = v32;
      v33 = @"CARPLAY_HOLD_BUTTON";
LABEL_40:
      v26 = [v32 localizedStringForKey:v33 value:&stru_100361FD0 table:@"PHCarPlay"];
      v60 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [v60 setText:v26];
      goto LABEL_57;
    case 19:
      v47 = [UIImage phCarPlayImageNamed:@"text_sos_icon_CarPlay"];
      [(PHCarPlayInCallButton *)v7 setImage:v47 forState:0];

      v48 = +[NSBundle mainBundle];
      v49 = [v48 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
      v50 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [v50 setText:v49];

      v51 = [UIImage phCarPlayImageNamed:@"text_sos_icon_CarPlay_Focus_Ring"];
      v24 = [v51 imageWithRenderingMode:2];

      v52 = [[UIImageView alloc] initWithImage:v24];
      [(PHCarPlayInCallButton *)v7 setSpecialRingView:v52];

      v53 = +[UIColor dynamicCarFocusedColor];
      v54 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [v54 setTintColor:v53];

      v55 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [v55 setUserInteractionEnabled:0];

      v56 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [v56 setHidden:1];

      v26 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [(PHCarPlayInCallButton *)v7 addSubview:v26];
      goto LABEL_58;
    default:
      goto LABEL_60;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v15 setHighlighted:?];
  v5 = [(PHCarPlayInCallButton *)self ringView];
  [v5 setHighlighted:v3];

  [(PHCarPlayInCallButton *)self updateToProperIconColor];
  v6 = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];

  if (v6)
  {
    if ([(PHCarPlayInCallButton *)self isHighlighted])
    {
      v13 = 0.0;
      v14 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v7 = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];
      v8 = [v7 getHue:&v14 saturation:&v13 brightness:&v12 alpha:&v11];

      v9 = 0;
      if (!v8)
      {
LABEL_7:
        [(PHCarPlayInCallButton *)self setBackgroundColor:v9];

        return;
      }

      v10 = [UIColor colorWithHue:v14 saturation:v13 brightness:v12 * 0.7 alpha:v11];
    }

    else
    {
      v10 = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];
    }

    v9 = v10;
    goto LABEL_7;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 setEnabled:?];
  v5 = [(PHCarPlayInCallButton *)self ringView];
  [v5 setDimmed:!v3];

  if ([(PHCarPlayInCallButton *)self isEnabled])
  {
    +[UIColor dynamicCarPrimaryColor];
  }

  else
  {
    +[UIColor lightGrayColor];
  }
  v6 = ;
  v7 = [(PHCarPlayInCallButton *)self buttonLabel];
  [v7 setTextColor:v6];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v7 setSelected:?];
  v5 = [(PHCarPlayInCallButton *)self ringView];

  if (v5)
  {
    v6 = [(PHCarPlayInCallButton *)self ringView];
    [v6 setSelected:v3];

    [(PHCarPlayInCallButton *)self updateToProperIconColor];
  }
}

- (void)setHasRingView:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHCarPlayInCallButton *)self ringView];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v6 = [[PHCarPlayInCallButtonRing alloc] initWithFrame:0.0, 0.0, 54.0, 54.0];
    [(PHCarPlayInCallButton *)self setRingView:v6];

    v7 = [(PHCarPlayInCallButton *)self ringView];
    [v7 setUserInteractionEnabled:0];

    v8 = [(PHCarPlayInCallButton *)self ringView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = +[UIColor clearColor];
    v10 = [(PHCarPlayInCallButton *)self ringView];
    [v10 setBackgroundColor:v9];

    v11 = [(PHCarPlayInCallButton *)self ringView];
    [v11 setOpaque:0];

    v12 = [(PHCarPlayInCallButton *)self ringView];
    [(PHCarPlayInCallButton *)self addSubview:v12];

    v13 = [(PHCarPlayInCallButton *)self inCallButtonType];
    if (v13 > 14)
    {
      if (v13 > 16)
      {
        if (v13 == 19)
        {
          goto LABEL_29;
        }

        if (v13 == 17)
        {
          v15 = +[UIColor whiteColor];
LABEL_30:
          v18 = v15;
          v16 = [(PHCarPlayInCallButton *)self ringView];
          [v16 setFillColor:v18];

LABEL_31:

          return;
        }

LABEL_26:
        if (!_UISolariumEnabled())
        {
          v15 = +[UIColor dynamicCarTertiaryColor];
          goto LABEL_30;
        }

LABEL_29:
        v15 = +[UIColor clearColor];
        goto LABEL_30;
      }

      if (v13 == 15)
      {
        v15 = +[UIColor externalSystemGreenColor];
        goto LABEL_30;
      }
    }

    else if (v13 <= 7)
    {
      if (v13 && v13 != 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v13 - 8) < 2)
      {
        if ([(PHCarPlayInCallButton *)self callState]== 1)
        {
          [UIColor colorWithRed:0.203921569 green:0.470588235 blue:0.964705882 alpha:1.0];
        }

        else
        {
          +[UIColor externalSystemGreenColor];
        }
        v18 = ;
        v17 = [(PHCarPlayInCallButton *)self ringView];
        [v17 setFillColor:v18];

        goto LABEL_31;
      }

      if (v13 != 14)
      {
        goto LABEL_26;
      }
    }

    if (_UISolariumEnabled())
    {
      +[UIColor redColor];
    }

    else
    {
      +[UIColor externalSystemRedColor];
    }
    v15 = ;
    goto LABEL_30;
  }

  if (v5)
  {
    v14 = [(PHCarPlayInCallButton *)self ringView];
    [v14 removeFromSuperview];

    [(PHCarPlayInCallButton *)self setRingView:0];
  }
}

- (void)setToggledOn:(BOOL)a3
{
  if (self->_toggledOn != a3)
  {
    v3 = a3;
    self->_toggledOn = a3;
    if ([(PHCarPlayInCallButton *)self inCallButtonType]== 1 || [(PHCarPlayInCallButton *)self inCallButtonType]== 18)
    {
      v5 = [(PHCarPlayInCallButton *)self ringView];
      [v5 setToggledOn:v3];

      [(PHCarPlayInCallButton *)self updateToProperIconColor];
    }
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100067D5C(v6))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:1];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesBegan:v6 withEvent:v7];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100067D5C(v6))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesEnded:v6 withEvent:v7];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100067D5C(v6))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesCancelled:v6 withEvent:v7];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v16 = a3;
  v5 = [(PHCarPlayInCallButton *)self ringView];

  if (v5)
  {
    v6 = [v16 nextFocusedItem];
    [(PHCarPlayInCallButton *)self setSelected:v6 == self];
  }

  v7 = [(PHCarPlayInCallButton *)self specialRingView];
  if (v7)
  {
    v8 = v7;
    v9 = [(PHCarPlayInCallButton *)self inCallButtonType];

    if (v9 == 19)
    {
      v10 = [v16 nextFocusedItem];

      v11 = [(PHCarPlayInCallButton *)self specialRingView];
      v12 = v11;
      v13 = v10 != self;
      if (v10 == self)
      {
        v14 = @"text_sos_icon_CarPlay_Focused";
      }

      else
      {
        v14 = @"text_sos_icon_CarPlay";
      }

      [v11 setHidden:v13];

      v15 = [UIImage phCarPlayImageNamed:v14];
      [(PHCarPlayInCallButton *)self setImage:v15 forState:0];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v4 traitCollectionDidChange:a3];
  [(PHCarPlayInCallButton *)self updateToProperIconColor];
}

@end