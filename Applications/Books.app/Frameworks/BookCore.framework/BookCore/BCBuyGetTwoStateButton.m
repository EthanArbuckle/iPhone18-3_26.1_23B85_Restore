@interface BCBuyGetTwoStateButton
- (BCBuyGetTwoStateButton)initWithCoder:(id)a3;
- (BCBuyGetTwoStateButton)initWithFrame:(CGRect)a3;
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
- (CGSize)alignmentSizeThatFits:(CGSize)a3;
- (id)description;
- (void)_commonInit;
- (void)buttonTouched:(id)a3 event:(id)a4;
- (void)buyPressed;
- (void)preorderPressed;
- (void)pricePressed;
- (void)readOrProductPressed;
- (void)resetButtonState;
- (void)setAlignmentFrame:(CGRect)a3;
- (void)setAsset:(id)a3;
- (void)setButtonState:(unint64_t)a3;
- (void)setProductProfile:(id)a3;
- (void)updateButton;
- (void)updateConfiguration;
@end

@implementation BCBuyGetTwoStateButton

- (BCBuyGetTwoStateButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BCBuyGetTwoStateButton *)v3 _commonInit];
  }

  return v4;
}

- (BCBuyGetTwoStateButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v6 initWithCoder:a3];
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

- (void)setAlignmentFrame:(CGRect)a3
{
  [(BCBuyGetTwoStateButton *)self frameForAlignmentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(BCBuyGetTwoStateButton *)self setFrame:?];
}

- (CGSize)alignmentSizeThatFits:(CGSize)a3
{
  [(BCBuyGetTwoStateButton *)self sizeThatFits:a3.width, a3.height];
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

- (void)setButtonState:(unint64_t)a3
{
  buttonState = self->_buttonState;
  if (buttonState != a3)
  {
    self->_buttonState = a3;
    v5 = [(BCBuyGetTwoStateButton *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(BCBuyGetTwoStateButton *)self delegate];
      [v7 buyButton:self stateDidChange:buttonState];
    }

    [(BCBuyGetTwoStateButton *)self updateButton];
  }
}

- (void)buttonTouched:(id)a3 event:(id)a4
{
  v5 = [a4 touchesForView:a3];
  v6 = [v5 anyObject];
  lastTouch = self->_lastTouch;
  self->_lastTouch = v6;

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
  v3 = [(BCBuyGetTwoStateButton *)self buyParameters];
  if (!v3)
  {
    v4 = [(BCBuyGetTwoStateButton *)self asset];
    if (v4)
    {
      v5 = [(BCBuyGetTwoStateButton *)self asset];
      [v5 buyParams];
    }

    else
    {
      v5 = [(BCBuyGetTwoStateButton *)self productProfile];
      [v5 buyParameters];
    }
    v3 = ;
  }

  [(BCBuyGetTwoStateButton *)self setButtonState:7];
  objc_initWeak(&location, self);
  v6 = [(BCBuyGetTwoStateButton *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_163E28;
  v7[3] = &unk_2C9020;
  objc_copyWeak(&v8, &location);
  [v6 buyButton:self initialBuy:v3 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)readOrProductPressed
{
  objc_initWeak(&location, self);
  v3 = [(BCBuyGetTwoStateButton *)self delegate];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_163FE0;
  v4[3] = &unk_2C9020;
  objc_copyWeak(&v5, &location);
  [v3 buyButton:self initialBuy:0 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_asset, a3);
    v6 = [(BFMAsset *)v10 buyParams];
    [(BCBuyGetTwoStateButton *)self setBuyParameters:v6];

    v7 = [(BFMAsset *)v10 priceFormatted];
    if (v7)
    {
      [(BCBuyGetTwoStateButton *)self setPriceString:v7];
    }

    else
    {
      v8 = [BCMAssetWrapper actionTextForType:0 withAsset:v10];
      [(BCBuyGetTwoStateButton *)self setPriceString:v8];

      v9 = [(BFMAsset *)v10 offer];

      if (v9)
      {
        [(BCBuyGetTwoStateButton *)self setIsSingleState:1];
      }
    }

    [(BCBuyGetTwoStateButton *)self resetButtonState];
    [(BCBuyGetTwoStateButton *)self updateButton];

    v5 = v10;
  }
}

- (void)setProductProfile:(id)a3
{
  v5 = a3;
  if (self->_productProfile != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_productProfile, a3);
    v6 = [(AEUserPublishingProductProfile *)v10 buyParameters];
    [(BCBuyGetTwoStateButton *)self setBuyParameters:v6];

    v7 = [(AEUserPublishingProductProfile *)v10 priceString];
    if (v7)
    {
      [(BCBuyGetTwoStateButton *)self setPriceString:v7];
    }

    else
    {
      v8 = [(AEUserPublishingProductProfile *)v10 actionTextWithType:0];
      [(BCBuyGetTwoStateButton *)self setPriceString:v8];

      v9 = [(AEUserPublishingProductProfile *)v10 offer];

      if (v9)
      {
        [(BCBuyGetTwoStateButton *)self setIsSingleState:1];
      }
    }

    [(BCBuyGetTwoStateButton *)self resetButtonState];
    [(BCBuyGetTwoStateButton *)self updateButton];

    v5 = v10;
  }
}

- (void)updateConfiguration
{
  v81.receiver = self;
  v81.super_class = BCBuyGetTwoStateButton;
  [(BCBuyGetTwoStateButton *)&v81 updateConfiguration];
  v3 = [(BCBuyGetTwoStateButton *)self configuration];
  v4 = [v3 copy];

  v5 = [v4 background];
  [v5 setStrokeWidth:0.0];

  v6 = [v4 background];
  [v6 setStrokeColor:0];

  [v4 setImage:0];
  [v4 setPreferredSymbolConfigurationForImage:0];
  v7 = [(BCBuyGetTwoStateButton *)self buttonState];
  v11 = v7;
  v12 = 0;
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if ((v7 - 9) >= 2)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v7 == 6)
      {
        v35 = [(BCBuyGetTwoStateButton *)self titleLabel];
        v36 = [v35 font];

        [v36 pointSize];
        v38 = v37;
        [(BCBuyGetTwoStateButton *)self buttonShrinkFactor];
        v40 = [v36 fontWithSize:v38 * v39];

        v41 = [UIImageSymbolConfiguration configurationWithFont:v40];
        [v4 setPreferredSymbolConfigurationForImage:v41];

        v42 = [UIImage systemImageNamed:@"checkmark"];
        [v4 setImage:v42];

        v12 = +[UIColor whiteColor];
        v13 = [(BCBuyGetTwoStateButton *)self preorderedDefaultTitle];
        v43 = +[UIColor tertiaryLabelColor];
        [(BCBuyGetTwoStateButton *)self setNormalBackgroundColor:v43];

        goto LABEL_59;
      }

      if (v7 != 7 && [(BCBuyGetTwoStateButton *)self buttonShouldBeCanPreorderState])
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (v7 <= 2)
    {
      if (!v7)
      {
        [(BCBuyGetTwoStateButton *)self resetButtonState];
        goto LABEL_68;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_69;
        }

        v12 = [(BCBuyGetTwoStateButton *)self buyStateTextColor];
        v13 = [(BCBuyGetTwoStateButton *)self buyDefaultTitle];
        v14 = [(BCBuyGetTwoStateButton *)self buyStateFrameColor];
        if (v14)
        {
          v15 = v14;
          [(BCBuyGetTwoStateButton *)self frameWidth];
          v17 = vabdd_f64(0.0, v16);

          if (v17 >= 0.00999999978)
          {
            [(BCBuyGetTwoStateButton *)self frameWidth];
            v19 = v18;
            v20 = [v4 background];
            [v20 setStrokeWidth:v19];

            if ([(BCBuyGetTwoStateButton *)self isEnabled])
            {
              [(BCBuyGetTwoStateButton *)self buyStateFrameColor];
            }

            else
            {
              [(BCBuyGetTwoStateButton *)self disabledTextColor];
            }
            v55 = ;
            v56 = [v4 background];
            [v56 setStrokeColor:v55];
          }
        }

        v46 = [(BCBuyGetTwoStateButton *)self buyStateBackgroundFillColor];
        goto LABEL_58;
      }

      goto LABEL_21;
    }

    if (v7 != 3)
    {
      if (v7 != 4)
      {
        v12 = +[UIColor systemOrangeColor];
        v13 = [(BCBuyGetTwoStateButton *)self canPreorderDefaultTitle];
        [(BCBuyGetTwoStateButton *)self frameWidth];
        if (vabdd_f64(0.0, v21) >= 0.00999999978)
        {
          [(BCBuyGetTwoStateButton *)self frameWidth];
          v23 = v22;
          v24 = [v4 background];
          [v24 setStrokeWidth:v23];

          if ([(BCBuyGetTwoStateButton *)self isEnabled])
          {
            +[UIColor systemOrangeColor];
          }

          else
          {
            [(BCBuyGetTwoStateButton *)self disabledTextColor];
          }
          v53 = ;
          v54 = [v4 background];
          [v54 setStrokeColor:v53];
        }

        v46 = +[UIColor whiteColor];
        goto LABEL_58;
      }

LABEL_26:
      v27 = [(BCBuyGetTwoStateButton *)self priceString];
      if ([v27 length])
      {
        [(BCBuyGetTwoStateButton *)self priceString];
      }

      else
      {
        [(BCBuyGetTwoStateButton *)self canPreorderDefaultTitle];
      }
      v13 = ;

      v12 = +[UIColor whiteColor];
      [(BCBuyGetTwoStateButton *)self frameWidth];
      if (vabdd_f64(0.0, v47) >= 0.00999999978)
      {
        [(BCBuyGetTwoStateButton *)self frameWidth];
        v49 = v48;
        v50 = [v4 background];
        [v50 setStrokeWidth:v49];

        if ([(BCBuyGetTwoStateButton *)self isEnabled])
        {
          +[UIColor systemOrangeColor];
        }

        else
        {
          [(BCBuyGetTwoStateButton *)self disabledTextColor];
        }
        v51 = ;
        v52 = [v4 background];
        [v52 setStrokeColor:v51];
      }

      v46 = +[UIColor systemOrangeColor];
      goto LABEL_58;
    }
  }

LABEL_21:
  v13 = [(BCBuyGetTwoStateButton *)self buyDefaultTitle];
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

    v13 = v25 = v13;
  }

  else
  {
    v25 = [(BCBuyGetTwoStateButton *)self priceString];
    if ([v25 length])
    {
      v26 = [(BCBuyGetTwoStateButton *)self priceString];

      v13 = v26;
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
  v12 = ;
  v28 = [(BCBuyGetTwoStateButton *)self frameColor];
  if (v28)
  {
    v29 = v28;
    [(BCBuyGetTwoStateButton *)self frameWidth];
    v31 = vabdd_f64(0.0, v30);

    if (v31 >= 0.00999999978)
    {
      [(BCBuyGetTwoStateButton *)self frameWidth];
      v33 = v32;
      v34 = [v4 background];
      [v34 setStrokeWidth:v33];

      if ([(BCBuyGetTwoStateButton *)self isEnabled])
      {
        [(BCBuyGetTwoStateButton *)self frameColor];
      }

      else
      {
        [(BCBuyGetTwoStateButton *)self disabledTextColor];
      }
      v44 = ;
      v45 = [v4 background];
      [v45 setStrokeColor:v44];
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
  v46 = ;
LABEL_58:
  v40 = v46;
  [(BCBuyGetTwoStateButton *)self setNormalBackgroundColor:v46];
LABEL_59:

  if (!v13)
  {
LABEL_69:
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Views/BCBuyGetTwoStateButton.m", 421, "[BCBuyGetTwoStateButton updateConfiguration]", "buttonTitle", 0, v8, v9, v10, v80);
    v13 = 0;
    if (v12)
    {
      goto LABEL_61;
    }

LABEL_70:
    sub_1ED030(v57, v58, v59, v60, v61, v8, v9, v10);
    goto LABEL_61;
  }

  if (!v12)
  {
    goto LABEL_70;
  }

LABEL_61:
  v62 = [(BCBuyGetTwoStateButton *)self buttonFont];

  if (!v62)
  {
    sub_1ED068(v63, v64, v65, v66, v67, v68, v69, v70);
  }

  v71 = [(BCBuyGetTwoStateButton *)self normalBackgroundColor];
  v72 = [v4 background];
  [v72 setBackgroundColor:v71];

  [v4 setBaseForegroundColor:v12];
  v73 = [NSAttributedString alloc];
  v82[0] = NSFontAttributeName;
  v74 = [(BCBuyGetTwoStateButton *)self buttonFont];
  v83[0] = v74;
  v82[1] = NSForegroundColorAttributeName;
  v75 = [(BCBuyGetTwoStateButton *)self isEnabled];
  v76 = v12;
  if ((v75 & 1) == 0)
  {
    v76 = [(BCBuyGetTwoStateButton *)self disabledTextColor];
  }

  v83[1] = v76;
  v77 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
  v78 = [v73 initWithString:v13 attributes:v77];
  [v4 setAttributedTitle:v78];

  if ((v75 & 1) == 0)
  {
  }

  [(BCBuyGetTwoStateButton *)self setConfiguration:v4];
  v79 = [v4 attributedTitle];
  [(BCBuyGetTwoStateButton *)self setAccessibilityAttributedLabel:v79];

LABEL_68:
}

- (void)updateButton
{
  v4 = [(BCBuyGetTwoStateButton *)self buttonShouldBeReadState];
  if ((v4 & 1) == 0)
  {
    if (![(BCBuyGetTwoStateButton *)self storeReachable])
    {
      [(BCBuyGetTwoStateButton *)self setEnabled:0];
      goto LABEL_13;
    }

    v2 = [(BCBuyGetTwoStateButton *)self buyParameters];
    if (![v2 length])
    {
      [(BCBuyGetTwoStateButton *)self setEnabled:0];
LABEL_12:

      goto LABEL_13;
    }
  }

  if ([(BCBuyGetTwoStateButton *)self isDownloading]&& ![(BCBuyGetTwoStateButton *)self isAudiobook])
  {
    v6 = self;
    v5 = 0;
  }

  else
  {
    v5 = +[UIApplication isRunningInStoreDemoMode]^ 1;
    v6 = self;
  }

  [(BCBuyGetTwoStateButton *)v6 setEnabled:v5];
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(BCBuyGetTwoStateButton *)self updateConfiguration];
}

- (BOOL)isStore
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isStore];

  return v3;
}

- (BOOL)isDownloading
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isDownloading];

  return v3;
}

- (BOOL)isLocal
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isLocal];

  return v3;
}

- (BOOL)isCloud
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isCloud];

  return v3;
}

- (BOOL)isSample
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isSample];

  return v3;
}

- (BOOL)isAudiobook
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 isAudiobook];

  return v3;
}

- (BOOL)wasPreordered
{
  v2 = [(BCBuyGetTwoStateButton *)self delegate];
  v3 = [v2 wasPreordered];

  return v3;
}

- (BOOL)canPreorder
{
  v3 = [(BCBuyGetTwoStateButton *)self asset];
  if (v3)
  {
    [(BCBuyGetTwoStateButton *)self asset];
  }

  else
  {
    [(BCBuyGetTwoStateButton *)self productProfile];
  }
  v4 = ;
  v5 = [v4 isPreorder];

  return v5;
}

- (BOOL)storeReachable
{
  v3 = [(BCBuyGetTwoStateButton *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BCBuyGetTwoStateButton *)self delegate];
    v6 = [v5 storeReachable];
  }

  else
  {
    if (+[BKReachability isOffline])
    {
      return 0;
    }

    v5 = +[BUAccountsProvider sharedProvider];
    if ([v5 isStoreAccountManagedAppleID])
    {
      v6 = 0;
    }

    else
    {
      v8 = +[BURestrictionsProvider sharedInstance];
      v6 = [v8 isBookStoreAllowed];
    }
  }

  return v6;
}

- (id)description
{
  v22.receiver = self;
  v22.super_class = BCBuyGetTwoStateButton;
  v3 = [(BCBuyGetTwoStateButton *)&v22 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" \n"];
  v5 = [(BCBuyGetTwoStateButton *)self currentAttributedTitle];
  v6 = [v5 string];
  [v4 appendFormat:@"\t currentTitle = %@ \n", v6];

  v7 = [(BCBuyGetTwoStateButton *)self priceString];
  [v4 appendFormat:@"\t priceString = %@ \n", v7];

  v8 = [(BCBuyGetTwoStateButton *)self buyParameters];
  [v4 appendFormat:@"\t buyParameters = %@ \n", v8];

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