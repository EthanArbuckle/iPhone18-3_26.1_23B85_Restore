@interface PHCarPlayInCallButton
- (CGSize)intrinsicContentSize;
- (id)initForButtonType:(int)type callState:(int64_t)state;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setEnabled:(BOOL)enabled;
- (void)setHasRingView:(BOOL)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setToggledOn:(BOOL)on;
- (void)traitCollectionDidChange:(id)change;
- (void)updateToProperIconColor;
@end

@implementation PHCarPlayInCallButton

- (id)initForButtonType:(int)type callState:(int64_t)state
{
  v80.receiver = self;
  v80.super_class = PHCarPlayInCallButton;
  v6 = [(PHCarPlayInCallButton *)&v80 initWithFrame:0.0, 0.0, 115.0, 130.0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_63;
  }

  v6->_callState = state;
  v6->_inCallButtonType = type;
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
  [v12 setText:&stru_10028F310];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];
  [v12 setUserInteractionEnabled:0];
  [v12 setAdjustsFontSizeToFitWidth:1];
  [(PHCarPlayInCallButton *)v7 addSubview:v12];
  [(PHCarPlayInCallButton *)v7 setButtonLabel:v12];
  v15 = +[UIColor whiteColor];
  [(PHCarPlayInCallButton *)v7 setTintColor:v15];

  buttonLabel = [(PHCarPlayInCallButton *)v7 buttonLabel];
  LODWORD(v17) = 1132068864;
  [buttonLabel setContentCompressionResistancePriority:0 forAxis:v17];

  if (type > 0x13)
  {
    goto LABEL_10;
  }

  v18 = 10.0;
  if (((1 << type) & 0x3C000) != 0)
  {
    v20 = 0.0;
    v21 = 20.0;
    v19 = 1;
    goto LABEL_7;
  }

  if (((1 << type) & 0x83800) == 0)
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
  switch(type)
  {
    case 0:
      if (state == 1)
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
      specialRingView4 = v25;
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
      if (state == 1)
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
      specialRingView4 = v25;
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
      if (state == 1)
      {
        v23 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_answer_glyph_voip"];
        v24 = [v23 imageWithRenderingMode:2];
      }

      else
      {
        v24 = [(PHCarPlayInCallButton *)v7 carPlayInCallImageForSymbolType:1];
      }

      [(PHCarPlayInCallButton *)v7 setImage:v24 forState:0];
      if (type != 8)
      {
        goto LABEL_59;
      }

      v25 = +[NSBundle mainBundle];
      specialRingView4 = v25;
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
      if ((state - 1) > 3)
      {
        v28 = 0;
      }

      else
      {
        v28 = off_100286890[state - 1];
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v28];
      v61 = [UIImage phCarPlayImageNamed:v28];
      [(PHCarPlayInCallButton *)v7 setImage:v61 forState:0];

      v62 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v62 forState:8];

      v63 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v63 forState:4];

      v25 = +[NSBundle mainBundle];
      specialRingView4 = v25;
      v27 = @"CARPLAY_END_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 12:
      if ((state - 1) > 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = off_1002868B0[state - 1];
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v29];
      v64 = [UIImage phCarPlayImageNamed:v29];
      [(PHCarPlayInCallButton *)v7 setImage:v64 forState:0];

      v65 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v65 forState:8];

      v66 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v66 forState:4];

      v25 = +[NSBundle mainBundle];
      specialRingView4 = v25;
      v27 = @"CARPLAY_HOLD_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 13:
      if ((state - 1) > 3)
      {
        v37 = 0;
      }

      else
      {
        v37 = off_1002868D0[state - 1];
      }

      v24 = [NSString stringWithFormat:@"%@_selected", v37];
      v67 = [UIImage phCarPlayImageNamed:v37];
      [(PHCarPlayInCallButton *)v7 setImage:v67 forState:0];

      v68 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v68 forState:8];

      v69 = [UIImage phCarPlayImageNamed:v24];
      [(PHCarPlayInCallButton *)v7 setImage:v69 forState:4];

      v25 = +[NSBundle mainBundle];
      specialRingView4 = v25;
      v27 = @"CARPLAY_END_HOLD_CALL_AND_ANSWER_BUTTON";
      goto LABEL_56;
    case 14:
      v24 = 0;
      if (state > 2)
      {
        if (state == 4)
        {
          goto LABEL_54;
        }

        if (state != 3)
        {
          goto LABEL_55;
        }

LABEL_53:
        v70 = [UIImage phCarPlayImageNamed:@"carplay_incall_button_decline_glyph_voip"];
        v24 = [v70 imageWithRenderingMode:2];

        goto LABEL_55;
      }

      if (state == 1)
      {
        goto LABEL_53;
      }

      if (state != 2)
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
      specialRingView4 = v25;
      v27 = @"CARPLAY_IGNORE_BUTTON";
LABEL_56:
      buttonLabel5 = [v25 localizedStringForKey:v27 value:&stru_10028F310 table:@"PHCarPlay"];
      buttonLabel2 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [buttonLabel2 setText:buttonLabel5];

LABEL_57:
LABEL_58:

LABEL_59:
LABEL_60:
      buttonLabel3 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      text = [buttonLabel3 text];

      if (text)
      {
        buttonLabel4 = [(PHCarPlayInCallButton *)v7 buttonLabel];
        text2 = [buttonLabel4 text];
        v81 = text2;
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
      specialRingView4 = [v32 localizedStringForKey:v33 value:&stru_10028F310 table:@"PHCarPlay"];
      buttonLabel5 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [buttonLabel5 setText:specialRingView4];
      goto LABEL_57;
    case 19:
      v47 = [UIImage phCarPlayImageNamed:@"text_sos_icon_CarPlay"];
      [(PHCarPlayInCallButton *)v7 setImage:v47 forState:0];

      v48 = +[NSBundle mainBundle];
      v49 = [v48 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_10028F310 table:@"Localizable-Stewie"];
      buttonLabel6 = [(PHCarPlayInCallButton *)v7 buttonLabel];
      [buttonLabel6 setText:v49];

      v51 = [UIImage phCarPlayImageNamed:@"text_sos_icon_CarPlay_Focus_Ring"];
      v24 = [v51 imageWithRenderingMode:2];

      v52 = [[UIImageView alloc] initWithImage:v24];
      [(PHCarPlayInCallButton *)v7 setSpecialRingView:v52];

      v53 = +[UIColor dynamicCarFocusedColor];
      specialRingView = [(PHCarPlayInCallButton *)v7 specialRingView];
      [specialRingView setTintColor:v53];

      specialRingView2 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [specialRingView2 setUserInteractionEnabled:0];

      specialRingView3 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [specialRingView3 setHidden:1];

      specialRingView4 = [(PHCarPlayInCallButton *)v7 specialRingView];
      [(PHCarPlayInCallButton *)v7 addSubview:specialRingView4];
      goto LABEL_58;
    default:
      goto LABEL_60;
  }
}

- (CGSize)intrinsicContentSize
{
  inCallButtonType = [(PHCarPlayInCallButton *)self inCallButtonType];
  v3 = 75.0;
  if (inCallButtonType - 8 < 7 || inCallButtonType == 4)
  {
    v5 = 104.0;
  }

  else if (inCallButtonType == 19)
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v15.receiver = self;
  v15.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v15 setHighlighted:?];
  ringView = [(PHCarPlayInCallButton *)self ringView];
  [ringView setHighlighted:highlightedCopy];

  [(PHCarPlayInCallButton *)self updateToProperIconColor];
  unhighlightedBackgroundColor = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];

  if (unhighlightedBackgroundColor)
  {
    if ([(PHCarPlayInCallButton *)self isHighlighted])
    {
      v13 = 0.0;
      v14 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      unhighlightedBackgroundColor2 = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];
      v8 = [unhighlightedBackgroundColor2 getHue:&v14 saturation:&v13 brightness:&v12 alpha:&v11];

      v9 = 0;
      if (!v8)
      {
LABEL_7:
        [(PHCarPlayInCallButton *)self setBackgroundColor:v9];

        return;
      }

      unhighlightedBackgroundColor3 = [UIColor colorWithHue:v14 saturation:v13 brightness:v12 * 0.7 alpha:v11];
    }

    else
    {
      unhighlightedBackgroundColor3 = [(PHCarPlayInCallButton *)self unhighlightedBackgroundColor];
    }

    v9 = unhighlightedBackgroundColor3;
    goto LABEL_7;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 setEnabled:?];
  ringView = [(PHCarPlayInCallButton *)self ringView];
  [ringView setDimmed:!enabledCopy];

  if ([(PHCarPlayInCallButton *)self isEnabled])
  {
    +[UIColor dynamicCarPrimaryColor];
  }

  else
  {
    +[UIColor lightGrayColor];
  }
  v6 = ;
  buttonLabel = [(PHCarPlayInCallButton *)self buttonLabel];
  [buttonLabel setTextColor:v6];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v7 setSelected:?];
  ringView = [(PHCarPlayInCallButton *)self ringView];

  if (ringView)
  {
    ringView2 = [(PHCarPlayInCallButton *)self ringView];
    [ringView2 setSelected:selectedCopy];

    [(PHCarPlayInCallButton *)self updateToProperIconColor];
  }
}

- (void)setHasRingView:(BOOL)view
{
  viewCopy = view;
  ringView = [(PHCarPlayInCallButton *)self ringView];

  if (viewCopy)
  {
    if (ringView)
    {
      return;
    }

    v6 = [[PHCarPlayInCallButtonRing alloc] initWithFrame:0.0, 0.0, 54.0, 54.0];
    [(PHCarPlayInCallButton *)self setRingView:v6];

    ringView2 = [(PHCarPlayInCallButton *)self ringView];
    [ringView2 setUserInteractionEnabled:0];

    ringView3 = [(PHCarPlayInCallButton *)self ringView];
    [ringView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = +[UIColor clearColor];
    ringView4 = [(PHCarPlayInCallButton *)self ringView];
    [ringView4 setBackgroundColor:v9];

    ringView5 = [(PHCarPlayInCallButton *)self ringView];
    [ringView5 setOpaque:0];

    ringView6 = [(PHCarPlayInCallButton *)self ringView];
    [(PHCarPlayInCallButton *)self addSubview:ringView6];

    inCallButtonType = [(PHCarPlayInCallButton *)self inCallButtonType];
    if (inCallButtonType > 14)
    {
      if (inCallButtonType > 16)
      {
        if (inCallButtonType == 19)
        {
          goto LABEL_29;
        }

        if (inCallButtonType == 17)
        {
          v15 = +[UIColor whiteColor];
LABEL_30:
          v18 = v15;
          ringView7 = [(PHCarPlayInCallButton *)self ringView];
          [ringView7 setFillColor:v18];

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

      if (inCallButtonType == 15)
      {
        v15 = +[UIColor externalSystemGreenColor];
        goto LABEL_30;
      }
    }

    else if (inCallButtonType <= 7)
    {
      if (inCallButtonType && inCallButtonType != 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((inCallButtonType - 8) < 2)
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
        ringView8 = [(PHCarPlayInCallButton *)self ringView];
        [ringView8 setFillColor:v18];

        goto LABEL_31;
      }

      if (inCallButtonType != 14)
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

  if (ringView)
  {
    ringView9 = [(PHCarPlayInCallButton *)self ringView];
    [ringView9 removeFromSuperview];

    [(PHCarPlayInCallButton *)self setRingView:0];
  }
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v42 layoutSubviews];
  [(PHCarPlayInCallButton *)self bounds];
  Width = CGRectGetWidth(v43);
  imageView = [(PHCarPlayInCallButton *)self imageView];
  [imageView sizeThatFits:{Width, 58.0}];

  [(PHCarPlayInCallButton *)self inCallButtonType];
  UIRectCenteredIntegralRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  imageView2 = [(PHCarPlayInCallButton *)self imageView];
  [imageView2 setFrame:{v6, v8, v10, v12}];

  specialRingView = [(PHCarPlayInCallButton *)self specialRingView];

  if (specialRingView)
  {
    specialRingView2 = [(PHCarPlayInCallButton *)self specialRingView];
    [specialRingView2 sizeThatFits:{Width, 58.0}];

    UIRectCenteredIntegralRect();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    specialRingView3 = [(PHCarPlayInCallButton *)self specialRingView];
    [specialRingView3 setFrame:{v17, v19, v21, v23}];
  }

  [(PHCarPlayInCallButton *)self bounds];
  v25 = CGRectGetHeight(v44) + -58.0;
  buttonLabel = [(PHCarPlayInCallButton *)self buttonLabel];
  [buttonLabel sizeThatFits:{Width, v25}];
  v28 = v27;

  buttonLabel2 = [(PHCarPlayInCallButton *)self buttonLabel];
  [buttonLabel2 setFrame:{0.0, 58.0, Width, v28}];

  ringView = [(PHCarPlayInCallButton *)self ringView];

  if (ringView)
  {
    ringView2 = [(PHCarPlayInCallButton *)self ringView];
    [(PHCarPlayInCallButton *)self sendSubviewToBack:ringView2];

    ringView3 = [(PHCarPlayInCallButton *)self ringView];
    [ringView3 sizeThatFits:{Width, 58.0}];

    UIRectCenteredIntegralRect();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    ringView4 = [(PHCarPlayInCallButton *)self ringView];
    [ringView4 setFrame:{v34, v36, v38, v40}];
  }
}

- (void)updateToProperIconColor
{
  if ([(PHCarPlayInCallButton *)self inCallButtonType]== 17)
  {
    return;
  }

  ringView = [(PHCarPlayInCallButton *)self ringView];

  if (!ringView)
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

  isHighlighted = [(PHCarPlayInCallButton *)self isHighlighted];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (!isHighlighted)
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

  if (isHighlighted)
  {
    goto LABEL_8;
  }

  v5 = +[UIColor whiteColor];
LABEL_15:
  v7 = v5;
  ringView2 = [(PHCarPlayInCallButton *)self ringView];
  glassView = [ringView2 glassView];
  [glassView setTintColor:v7];

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
  imageView = [(PHCarPlayInCallButton *)self imageView];
  [imageView setTintColor:v12];

LABEL_24:
}

- (void)setToggledOn:(BOOL)on
{
  if (self->_toggledOn != on)
  {
    onCopy = on;
    self->_toggledOn = on;
    if ([(PHCarPlayInCallButton *)self inCallButtonType]== 1 || [(PHCarPlayInCallButton *)self inCallButtonType]== 18)
    {
      ringView = [(PHCarPlayInCallButton *)self ringView];
      [ringView setToggledOn:onCopy];

      [(PHCarPlayInCallButton *)self updateToProperIconColor];
    }
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (_pressesContainSelect(beganCopy))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:1];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (_pressesContainSelect(endedCopy))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (_pressesContainSelect(cancelledCopy))
  {
    [(PHCarPlayInCallButton *)self setHighlighted:0];
  }

  v8.receiver = self;
  v8.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  ringView = [(PHCarPlayInCallButton *)self ringView];

  if (ringView)
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    [(PHCarPlayInCallButton *)self setSelected:nextFocusedItem == self];
  }

  specialRingView = [(PHCarPlayInCallButton *)self specialRingView];
  if (specialRingView)
  {
    v8 = specialRingView;
    inCallButtonType = [(PHCarPlayInCallButton *)self inCallButtonType];

    if (inCallButtonType == 19)
    {
      nextFocusedItem2 = [contextCopy nextFocusedItem];

      specialRingView2 = [(PHCarPlayInCallButton *)self specialRingView];
      v12 = specialRingView2;
      v13 = nextFocusedItem2 != self;
      if (nextFocusedItem2 == self)
      {
        v14 = @"text_sos_icon_CarPlay_Focused";
      }

      else
      {
        v14 = @"text_sos_icon_CarPlay";
      }

      [specialRingView2 setHidden:v13];

      v15 = [UIImage phCarPlayImageNamed:v14];
      [(PHCarPlayInCallButton *)self setImage:v15 forState:0];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PHCarPlayInCallButton;
  [(PHCarPlayInCallButton *)&v4 traitCollectionDidChange:change];
  [(PHCarPlayInCallButton *)self updateToProperIconColor];
}

@end