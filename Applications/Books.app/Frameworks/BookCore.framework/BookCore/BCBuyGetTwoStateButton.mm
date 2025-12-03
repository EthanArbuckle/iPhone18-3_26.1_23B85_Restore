@interface BCBuyGetTwoStateButton
- (BCBuyGetTwoStateButton)initWithCoder:(id)coder;
- (BCBuyGetTwoStateButton)initWithFrame:(CGRect)frame;
- (BCBuyGetTwoStateButtonDelegate)delegate;
- (BOOL)buttonShouldBeReadState;
- (BOOL)canPreorder;
- (BOOL)isAudiobook;
- (BOOL)isCloud;
- (BOOL)isDownloading;
- (BOOL)isLocal;
- (BOOL)isSample;
- (BOOL)isStore;
- (BOOL)storeReachable;
- (BOOL)wasPreordered;
- (CGRect)alignmentFrame;
- (CGSize)alignmentSizeThatFits:(CGSize)fits;
- (id)description;
- (void)_commonInit;
- (void)buttonTouched:(id)touched event:(id)event;
- (void)buyPressed;
- (void)preorderPressed;
- (void)pricePressed;
- (void)readOrProductPressed;
- (void)resetButtonState;
- (void)setAlignmentFrame:(CGRect)frame;
- (void)setAsset:(id)asset;
- (void)setButtonState:(unint64_t)state;
- (void)setProductProfile:(id)profile;
- (void)updateButton;
- (void)updateConfiguration;
@end

@implementation BCBuyGetTwoStateButton

- (BCBuyGetTwoStateButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BCBuyGetTwoStateButton *)v3 _commonInit];
  }

  return v4;
}

- (BCBuyGetTwoStateButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BCBuyGetTwoStateButton *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(BCBuyGetTwoStateButton *)self addTarget:self action:"buttonTouched:event:" forControlEvents:64];
  [(BCBuyGetTwoStateButton *)self setClipsToBounds:1];
  v3 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
  buttonFont = self->_buttonFont;
  self->_buttonFont = v3;

  v5 = +[UIColor whiteColor];
  textColor = self->_textColor;
  self->_textColor = v5;

  v7 = [UIColor colorWithWhite:1.0 alpha:0.5];
  disabledTextColor = self->_disabledTextColor;
  self->_disabledTextColor = v7;

  v9 = +[UIColor blackColor];
  backgroundFillColor = self->_backgroundFillColor;
  self->_backgroundFillColor = v9;

  v11 = +[UIColor blackColor];
  textHilightColor = self->_textHilightColor;
  self->_textHilightColor = v11;

  v13 = +[UIColor whiteColor];
  backgroundFillHighlightColor = self->_backgroundFillHighlightColor;
  self->_backgroundFillHighlightColor = v13;

  v15 = +[UIColor blackColor];
  frameColor = self->_frameColor;
  self->_frameColor = v15;

  self->_frameWidth = 2.0;
  self->_isSingleState = 1;
  v17 = [UIColor colorWithRed:0.2117647 green:0.580392 blue:0.3843137 alpha:1.0];
  buyStateFrameColor = self->_buyStateFrameColor;
  self->_buyStateFrameColor = v17;

  v19 = [UIColor colorWithRed:0.2117647 green:0.580392 blue:0.3843137 alpha:1.0];
  buyStateTextColor = self->_buyStateTextColor;
  self->_buyStateTextColor = v19;

  v21 = +[UIColor whiteColor];
  buyStateBackgroundFillColor = self->_buyStateBackgroundFillColor;
  self->_buyStateBackgroundFillColor = v21;

  self->_buttonState = 0;
  v23 = IMCommonCoreBundle();
  v24 = [v23 localizedStringForKey:@"READ" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  readDefaultTitle = self->_readDefaultTitle;
  self->_readDefaultTitle = v24;

  v26 = IMCommonCoreBundle();
  v27 = [v26 localizedStringForKey:@"LISTEN" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  listenDefaultTitle = self->_listenDefaultTitle;
  self->_listenDefaultTitle = v27;

  v29 = IMCommonCoreBundle();
  v30 = [v29 localizedStringForKey:@"BUY" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  buyDefaultTitle = self->_buyDefaultTitle;
  self->_buyDefaultTitle = v30;

  v32 = IMCommonCoreBundle();
  v33 = [v32 localizedStringForKey:@"PRE-ORDER" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  canPreorderDefaultTitle = self->_canPreorderDefaultTitle;
  self->_canPreorderDefaultTitle = v33;

  v35 = IMCommonCoreBundle();
  v36 = [v35 localizedStringForKey:@" PRE-ORDERED" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  preorderedDefaultTitle = self->_preorderedDefaultTitle;
  self->_preorderedDefaultTitle = v36;

  v38 = +[UIButtonConfiguration plainButtonConfiguration];
  [v38 setCornerStyle:4];
  [v38 setMacIdiomStyle:1];
  [v38 setButtonSize:3];
  [v38 setContentInsets:{6.0, 20.0, 6.0, 20.0}];
  [(BCBuyGetTwoStateButton *)self setConfiguration:v38];
}

- (CGRect)alignmentFrame
{
  [(BCBuyGetTwoStateButton *)self frame];

  [(BCBuyGetTwoStateButton *)self alignmentRectForFrame:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setAlignmentFrame:(CGRect)frame
{
  [(BCBuyGetTwoStateButton *)self frameForAlignmentRect:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  [(BCBuyGetTwoStateButton *)self setFrame:?];
}

- (CGSize)alignmentSizeThatFits:(CGSize)fits
{
  [(BCBuyGetTwoStateButton *)self sizeThatFits:fits.width, fits.height];
  CGRectMakeWithSize();
  [(BCBuyGetTwoStateButton *)self alignmentRectForFrame:?];
  v5 = v4;
  v7 = v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (BOOL)buttonShouldBeReadState
{
  if (([(BCBuyGetTwoStateButton *)self isCloud]|| [(BCBuyGetTwoStateButton *)self isLocal]|| [(BCBuyGetTwoStateButton *)self isDownloading]|| ![(BCBuyGetTwoStateButton *)self isStore]) && ![(BCBuyGetTwoStateButton *)self isSample]&& ![(BCBuyGetTwoStateButton *)self canPreorder])
  {
    return ![(BCBuyGetTwoStateButton *)self wasPreordered];
  }

  else
  {
    return 0;
  }
}

- (void)resetButtonState
{
  if ([(BCBuyGetTwoStateButton *)self buttonShouldBeReadState])
  {
    v3 = 3;
  }

  else if ([(BCBuyGetTwoStateButton *)self buttonShouldBeWasPreorderedState])
  {
    v3 = 6;
  }

  else if ([(BCBuyGetTwoStateButton *)self buttonShouldBeCanPreorderState])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(BCBuyGetTwoStateButton *)self setButtonState:v3];
}

- (void)setButtonState:(unint64_t)state
{
  buttonState = self->_buttonState;
  if (buttonState != state)
  {
    self->_buttonState = state;
    delegate = [(BCBuyGetTwoStateButton *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(BCBuyGetTwoStateButton *)self delegate];
      [delegate2 buyButton:self stateDidChange:buttonState];
    }

    [(BCBuyGetTwoStateButton *)self updateButton];
  }
}

- (void)buttonTouched:(id)touched event:(id)event
{
  v5 = [event touchesForView:touched];
  anyObject = [v5 anyObject];
  lastTouch = self->_lastTouch;
  self->_lastTouch = anyObject;

  if (![(BCBuyGetTwoStateButton *)self buttonState]|| [(BCBuyGetTwoStateButton *)self buttonState]== &dword_0 + 1)
  {

    [(BCBuyGetTwoStateButton *)self pricePressed];
    return;
  }

  if ([(BCBuyGetTwoStateButton *)self buttonState]== &dword_4)
  {

    [(BCBuyGetTwoStateButton *)self preorderPressed];
    return;
  }

  if ([(BCBuyGetTwoStateButton *)self buttonState]== &dword_4 + 2)
  {
    goto LABEL_11;
  }

  if ([(BCBuyGetTwoStateButton *)self buttonState]== &dword_0 + 2 || [(BCBuyGetTwoStateButton *)self buttonState]== &dword_4 + 1)
  {

    [(BCBuyGetTwoStateButton *)self buyPressed];
  }

  else
  {
    if ([(BCBuyGetTwoStateButton *)self buttonState]!= &dword_4 + 3)
    {
      if ([(BCBuyGetTwoStateButton *)self buttonState]!= &dword_0 + 3)
      {
        return;
      }

LABEL_11:

      [(BCBuyGetTwoStateButton *)self readOrProductPressed];
      return;
    }

    [(BCBuyGetTwoStateButton *)self spinnerPressed];
  }
}

- (void)pricePressed
{
  if ([(BCBuyGetTwoStateButton *)self isSingleState])
  {

    [(BCBuyGetTwoStateButton *)self buyPressed];
  }

  else
  {

    [(BCBuyGetTwoStateButton *)self setButtonState:2];
  }
}

- (void)preorderPressed
{
  if ([(BCBuyGetTwoStateButton *)self isSingleState])
  {

    [(BCBuyGetTwoStateButton *)self buyPressed];
  }

  else
  {

    [(BCBuyGetTwoStateButton *)self setButtonState:5];
  }
}

- (void)buyPressed
{
  buyParameters = [(BCBuyGetTwoStateButton *)self buyParameters];
  if (!buyParameters)
  {
    asset = [(BCBuyGetTwoStateButton *)self asset];
    if (asset)
    {
      asset2 = [(BCBuyGetTwoStateButton *)self asset];
      [asset2 buyParams];
    }

    else
    {
      asset2 = [(BCBuyGetTwoStateButton *)self productProfile];
      [asset2 buyParameters];
    }
    buyParameters = ;
  }

  [(BCBuyGetTwoStateButton *)self setButtonState:7];
  objc_initWeak(&location, self);
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_163E28;
  v7[3] = &unk_2C9020;
  objc_copyWeak(&v8, &location);
  [delegate buyButton:self initialBuy:buyParameters completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)readOrProductPressed
{
  objc_initWeak(&location, self);
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_163FE0;
  v4[3] = &unk_2C9020;
  objc_copyWeak(&v5, &location);
  [delegate buyButton:self initialBuy:0 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v10 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    buyParams = [(BFMAsset *)v10 buyParams];
    [(BCBuyGetTwoStateButton *)self setBuyParameters:buyParams];

    priceFormatted = [(BFMAsset *)v10 priceFormatted];
    if (priceFormatted)
    {
      [(BCBuyGetTwoStateButton *)self setPriceString:priceFormatted];
    }

    else
    {
      v8 = [BCMAssetWrapper actionTextForType:0 withAsset:v10];
      [(BCBuyGetTwoStateButton *)self setPriceString:v8];

      offer = [(BFMAsset *)v10 offer];

      if (offer)
      {
        [(BCBuyGetTwoStateButton *)self setIsSingleState:1];
      }
    }

    [(BCBuyGetTwoStateButton *)self resetButtonState];
    [(BCBuyGetTwoStateButton *)self updateButton];

    assetCopy = v10;
  }
}

- (void)setProductProfile:(id)profile
{
  profileCopy = profile;
  if (self->_productProfile != profileCopy)
  {
    v10 = profileCopy;
    objc_storeStrong(&self->_productProfile, profile);
    buyParameters = [(AEUserPublishingProductProfile *)v10 buyParameters];
    [(BCBuyGetTwoStateButton *)self setBuyParameters:buyParameters];

    priceString = [(AEUserPublishingProductProfile *)v10 priceString];
    if (priceString)
    {
      [(BCBuyGetTwoStateButton *)self setPriceString:priceString];
    }

    else
    {
      v8 = [(AEUserPublishingProductProfile *)v10 actionTextWithType:0];
      [(BCBuyGetTwoStateButton *)self setPriceString:v8];

      offer = [(AEUserPublishingProductProfile *)v10 offer];

      if (offer)
      {
        [(BCBuyGetTwoStateButton *)self setIsSingleState:1];
      }
    }

    [(BCBuyGetTwoStateButton *)self resetButtonState];
    [(BCBuyGetTwoStateButton *)self updateButton];

    profileCopy = v10;
  }
}

- (void)updateConfiguration
{
  v81.receiver = self;
  v81.super_class = BCBuyGetTwoStateButton;
  [(BCBuyGetTwoStateButton *)&v81 updateConfiguration];
  configuration = [(BCBuyGetTwoStateButton *)self configuration];
  v4 = [configuration copy];

  background = [v4 background];
  [background setStrokeWidth:0.0];

  background2 = [v4 background];
  [background2 setStrokeColor:0];

  [v4 setImage:0];
  [v4 setPreferredSymbolConfigurationForImage:0];
  buttonState = [(BCBuyGetTwoStateButton *)self buttonState];
  v11 = buttonState;
  buyStateTextColor = 0;
  if (buttonState > 5)
  {
    if (buttonState > 8)
    {
      if ((buttonState - 9) >= 2)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (buttonState == 6)
      {
        titleLabel = [(BCBuyGetTwoStateButton *)self titleLabel];
        font = [titleLabel font];

        [font pointSize];
        v38 = v37;
        [(BCBuyGetTwoStateButton *)self buttonShrinkFactor];
        v40 = [font fontWithSize:v38 * v39];

        v41 = [UIImageSymbolConfiguration configurationWithFont:v40];
        [v4 setPreferredSymbolConfigurationForImage:v41];

        v42 = [UIImage systemImageNamed:@"checkmark"];
        [v4 setImage:v42];

        buyStateTextColor = +[UIColor whiteColor];
        preorderedDefaultTitle = [(BCBuyGetTwoStateButton *)self preorderedDefaultTitle];
        v43 = +[UIColor tertiaryLabelColor];
        [(BCBuyGetTwoStateButton *)self setNormalBackgroundColor:v43];

        goto LABEL_59;
      }

      if (buttonState != 7 && [(BCBuyGetTwoStateButton *)self buttonShouldBeCanPreorderState])
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (buttonState <= 2)
    {
      if (!buttonState)
      {
        [(BCBuyGetTwoStateButton *)self resetButtonState];
        goto LABEL_68;
      }

      if (buttonState != 1)
      {
        if (buttonState != 2)
        {
          goto LABEL_69;
        }

        buyStateTextColor = [(BCBuyGetTwoStateButton *)self buyStateTextColor];
        preorderedDefaultTitle = [(BCBuyGetTwoStateButton *)self buyDefaultTitle];
        buyStateFrameColor = [(BCBuyGetTwoStateButton *)self buyStateFrameColor];
        if (buyStateFrameColor)
        {
          v15 = buyStateFrameColor;
          [(BCBuyGetTwoStateButton *)self frameWidth];
          v17 = vabdd_f64(0.0, v16);

          if (v17 >= 0.00999999978)
          {
            [(BCBuyGetTwoStateButton *)self frameWidth];
            v19 = v18;
            background3 = [v4 background];
            [background3 setStrokeWidth:v19];

            if ([(BCBuyGetTwoStateButton *)self isEnabled])
            {
              [(BCBuyGetTwoStateButton *)self buyStateFrameColor];
            }

            else
            {
              [(BCBuyGetTwoStateButton *)self disabledTextColor];
            }
            v55 = ;
            background4 = [v4 background];
            [background4 setStrokeColor:v55];
          }
        }

        buyStateBackgroundFillColor = [(BCBuyGetTwoStateButton *)self buyStateBackgroundFillColor];
        goto LABEL_58;
      }

      goto LABEL_21;
    }

    if (buttonState != 3)
    {
      if (buttonState != 4)
      {
        buyStateTextColor = +[UIColor systemOrangeColor];
        preorderedDefaultTitle = [(BCBuyGetTwoStateButton *)self canPreorderDefaultTitle];
        [(BCBuyGetTwoStateButton *)self frameWidth];
        if (vabdd_f64(0.0, v21) >= 0.00999999978)
        {
          [(BCBuyGetTwoStateButton *)self frameWidth];
          v23 = v22;
          background5 = [v4 background];
          [background5 setStrokeWidth:v23];

          if ([(BCBuyGetTwoStateButton *)self isEnabled])
          {
            +[UIColor systemOrangeColor];
          }

          else
          {
            [(BCBuyGetTwoStateButton *)self disabledTextColor];
          }
          v53 = ;
          background6 = [v4 background];
          [background6 setStrokeColor:v53];
        }

        buyStateBackgroundFillColor = +[UIColor whiteColor];
        goto LABEL_58;
      }

LABEL_26:
      priceString = [(BCBuyGetTwoStateButton *)self priceString];
      if ([priceString length])
      {
        [(BCBuyGetTwoStateButton *)self priceString];
      }

      else
      {
        [(BCBuyGetTwoStateButton *)self canPreorderDefaultTitle];
      }
      preorderedDefaultTitle = ;

      buyStateTextColor = +[UIColor whiteColor];
      [(BCBuyGetTwoStateButton *)self frameWidth];
      if (vabdd_f64(0.0, v47) >= 0.00999999978)
      {
        [(BCBuyGetTwoStateButton *)self frameWidth];
        v49 = v48;
        background7 = [v4 background];
        [background7 setStrokeWidth:v49];

        if ([(BCBuyGetTwoStateButton *)self isEnabled])
        {
          +[UIColor systemOrangeColor];
        }

        else
        {
          [(BCBuyGetTwoStateButton *)self disabledTextColor];
        }
        v51 = ;
        background8 = [v4 background];
        [background8 setStrokeColor:v51];
      }

      buyStateBackgroundFillColor = +[UIColor systemOrangeColor];
      goto LABEL_58;
    }
  }

LABEL_21:
  preorderedDefaultTitle = [(BCBuyGetTwoStateButton *)self buyDefaultTitle];
  if (v11 == 3)
  {
    if ([(BCBuyGetTwoStateButton *)self isAudiobook])
    {
      [(BCBuyGetTwoStateButton *)self listenDefaultTitle];
    }

    else
    {
      [(BCBuyGetTwoStateButton *)self readDefaultTitle];
    }

    preorderedDefaultTitle = priceString2 = preorderedDefaultTitle;
  }

  else
  {
    priceString2 = [(BCBuyGetTwoStateButton *)self priceString];
    if ([priceString2 length])
    {
      priceString3 = [(BCBuyGetTwoStateButton *)self priceString];

      preorderedDefaultTitle = priceString3;
    }
  }

  if ([(BCBuyGetTwoStateButton *)self invertedContent])
  {
    [(BCBuyGetTwoStateButton *)self backgroundFillColor];
  }

  else
  {
    [(BCBuyGetTwoStateButton *)self textColor];
  }
  buyStateTextColor = ;
  frameColor = [(BCBuyGetTwoStateButton *)self frameColor];
  if (frameColor)
  {
    v29 = frameColor;
    [(BCBuyGetTwoStateButton *)self frameWidth];
    v31 = vabdd_f64(0.0, v30);

    if (v31 >= 0.00999999978)
    {
      [(BCBuyGetTwoStateButton *)self frameWidth];
      v33 = v32;
      background9 = [v4 background];
      [background9 setStrokeWidth:v33];

      if ([(BCBuyGetTwoStateButton *)self isEnabled])
      {
        [(BCBuyGetTwoStateButton *)self frameColor];
      }

      else
      {
        [(BCBuyGetTwoStateButton *)self disabledTextColor];
      }
      v44 = ;
      background10 = [v4 background];
      [background10 setStrokeColor:v44];
    }
  }

  if ([(BCBuyGetTwoStateButton *)self invertedContent])
  {
    [(BCBuyGetTwoStateButton *)self textColor];
  }

  else
  {
    [(BCBuyGetTwoStateButton *)self backgroundFillColor];
  }
  buyStateBackgroundFillColor = ;
LABEL_58:
  v40 = buyStateBackgroundFillColor;
  [(BCBuyGetTwoStateButton *)self setNormalBackgroundColor:buyStateBackgroundFillColor];
LABEL_59:

  if (!preorderedDefaultTitle)
  {
LABEL_69:
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Views/BCBuyGetTwoStateButton.m", 421, "[BCBuyGetTwoStateButton updateConfiguration]", "buttonTitle", 0, v8, v9, v10, v80);
    preorderedDefaultTitle = 0;
    if (buyStateTextColor)
    {
      goto LABEL_61;
    }

LABEL_70:
    sub_1ED030(v57, v58, v59, v60, v61, v8, v9, v10);
    goto LABEL_61;
  }

  if (!buyStateTextColor)
  {
    goto LABEL_70;
  }

LABEL_61:
  buttonFont = [(BCBuyGetTwoStateButton *)self buttonFont];

  if (!buttonFont)
  {
    sub_1ED068(v63, v64, v65, v66, v67, v68, v69, v70);
  }

  normalBackgroundColor = [(BCBuyGetTwoStateButton *)self normalBackgroundColor];
  background11 = [v4 background];
  [background11 setBackgroundColor:normalBackgroundColor];

  [v4 setBaseForegroundColor:buyStateTextColor];
  v73 = [NSAttributedString alloc];
  v82[0] = NSFontAttributeName;
  buttonFont2 = [(BCBuyGetTwoStateButton *)self buttonFont];
  v83[0] = buttonFont2;
  v82[1] = NSForegroundColorAttributeName;
  isEnabled = [(BCBuyGetTwoStateButton *)self isEnabled];
  disabledTextColor = buyStateTextColor;
  if ((isEnabled & 1) == 0)
  {
    disabledTextColor = [(BCBuyGetTwoStateButton *)self disabledTextColor];
  }

  v83[1] = disabledTextColor;
  v77 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
  v78 = [v73 initWithString:preorderedDefaultTitle attributes:v77];
  [v4 setAttributedTitle:v78];

  if ((isEnabled & 1) == 0)
  {
  }

  [(BCBuyGetTwoStateButton *)self setConfiguration:v4];
  attributedTitle = [v4 attributedTitle];
  [(BCBuyGetTwoStateButton *)self setAccessibilityAttributedLabel:attributedTitle];

LABEL_68:
}

- (void)updateButton
{
  buttonShouldBeReadState = [(BCBuyGetTwoStateButton *)self buttonShouldBeReadState];
  if ((buttonShouldBeReadState & 1) == 0)
  {
    if (![(BCBuyGetTwoStateButton *)self storeReachable])
    {
      [(BCBuyGetTwoStateButton *)self setEnabled:0];
      goto LABEL_13;
    }

    buyParameters = [(BCBuyGetTwoStateButton *)self buyParameters];
    if (![buyParameters length])
    {
      [(BCBuyGetTwoStateButton *)self setEnabled:0];
LABEL_12:

      goto LABEL_13;
    }
  }

  if ([(BCBuyGetTwoStateButton *)self isDownloading]&& ![(BCBuyGetTwoStateButton *)self isAudiobook])
  {
    selfCopy2 = self;
    v5 = 0;
  }

  else
  {
    v5 = +[UIApplication isRunningInStoreDemoMode]^ 1;
    selfCopy2 = self;
  }

  [(BCBuyGetTwoStateButton *)selfCopy2 setEnabled:v5];
  if ((buttonShouldBeReadState & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(BCBuyGetTwoStateButton *)self updateConfiguration];
}

- (BOOL)isStore
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isStore = [delegate isStore];

  return isStore;
}

- (BOOL)isDownloading
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isDownloading = [delegate isDownloading];

  return isDownloading;
}

- (BOOL)isLocal
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isLocal = [delegate isLocal];

  return isLocal;
}

- (BOOL)isCloud
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isCloud = [delegate isCloud];

  return isCloud;
}

- (BOOL)isSample
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isSample = [delegate isSample];

  return isSample;
}

- (BOOL)isAudiobook
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  isAudiobook = [delegate isAudiobook];

  return isAudiobook;
}

- (BOOL)wasPreordered
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  wasPreordered = [delegate wasPreordered];

  return wasPreordered;
}

- (BOOL)canPreorder
{
  asset = [(BCBuyGetTwoStateButton *)self asset];
  if (asset)
  {
    [(BCBuyGetTwoStateButton *)self asset];
  }

  else
  {
    [(BCBuyGetTwoStateButton *)self productProfile];
  }
  v4 = ;
  isPreorder = [v4 isPreorder];

  return isPreorder;
}

- (BOOL)storeReachable
{
  delegate = [(BCBuyGetTwoStateButton *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(BCBuyGetTwoStateButton *)self delegate];
    storeReachable = [delegate2 storeReachable];
  }

  else
  {
    if (+[BKReachability isOffline])
    {
      return 0;
    }

    delegate2 = +[BUAccountsProvider sharedProvider];
    if ([delegate2 isStoreAccountManagedAppleID])
    {
      storeReachable = 0;
    }

    else
    {
      v8 = +[BURestrictionsProvider sharedInstance];
      storeReachable = [v8 isBookStoreAllowed];
    }
  }

  return storeReachable;
}

- (id)description
{
  v22.receiver = self;
  v22.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v22 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" \n"];
  currentAttributedTitle = [(BCBuyGetTwoStateButton *)self currentAttributedTitle];
  string = [currentAttributedTitle string];
  [v4 appendFormat:@"\t currentTitle = %@ \n", string];

  priceString = [(BCBuyGetTwoStateButton *)self priceString];
  [v4 appendFormat:@"\t priceString = %@ \n", priceString];

  buyParameters = [(BCBuyGetTwoStateButton *)self buyParameters];
  [v4 appendFormat:@"\t buyParameters = %@ \n", buyParameters];

  v9 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self invertedContent]];
  [v4 appendFormat:@"\t invertedContent = %@ \n", v9];

  v10 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isSingleState]];
  [v4 appendFormat:@"\t isSingleState = %@ \n", v10];

  v11 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isStore]];
  [v4 appendFormat:@"\t isStore = %@ \n", v11];

  v12 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isLocal]];
  [v4 appendFormat:@"\t isLocal = %@ \n", v12];

  v13 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isCloud]];
  [v4 appendFormat:@"\t isCloud = %@ \n", v13];

  v14 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isSample]];
  [v4 appendFormat:@"\t isSample = %@ \n", v14];

  v15 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isAudiobook]];
  [v4 appendFormat:@"\t isAudiobook = %@ \n", v15];

  v16 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isDownloading]];
  [v4 appendFormat:@"\t isDownloading = %@ \n", v16];

  v17 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self isEnabled]];
  [v4 appendFormat:@"\t button state enabled = %@ \n", v17];

  v18 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self canPreorder]];
  [v4 appendFormat:@"\t canPreorder = %@ \n", v18];

  v19 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self wasPreordered]];
  [v4 appendFormat:@"\t wasPreordered = %@ \n", v19];

  v20 = [NSNumber numberWithBool:[(BCBuyGetTwoStateButton *)self storeReachable]];
  [v4 appendFormat:@"\t storeReachable = %@ \n", v20];

  return v4;
}

- (BCBuyGetTwoStateButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end