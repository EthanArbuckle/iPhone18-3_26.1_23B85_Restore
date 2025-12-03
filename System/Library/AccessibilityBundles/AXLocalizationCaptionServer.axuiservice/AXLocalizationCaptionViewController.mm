@interface AXLocalizationCaptionViewController
- (AXLocalizationCaptionViewControllerDelegate)delegate;
- (void)_processNextTextDisplayTimer;
- (void)_updateNumeratorDenominator;
- (void)_updateTextDisplay;
- (void)loadView;
- (void)showString:(id)string;
- (void)uiLockPressed:(id)pressed;
- (void)updateText:(id)text;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXLocalizationCaptionViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXLocalizationCaptionViewController *)self setView:v3];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  changeDisplayTimer = self->_changeDisplayTimer;
  self->_changeDisplayTimer = v5;

  objc_initWeak(&location, self);
  v7 = +[AXSettings sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2F14;
  v14[3] = &unk_8438;
  objc_copyWeak(&v15, &location);
  [v7 registerUpdateBlock:v14 forRetrieveSelector:"localizationQACaptionShowFilePath" withListener:self];

  objc_destroyWeak(&v15);
  v8 = +[AXSettings sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2F6C;
  v12[3] = &unk_8438;
  objc_copyWeak(&v13, &location);
  [v8 registerUpdateBlock:v12 forRetrieveSelector:"localizationQACaptionShowUSString" withListener:self];

  objc_destroyWeak(&v13);
  v9 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2FC4;
  v10[3] = &unk_8438;
  objc_copyWeak(&v11, &location);
  [v9 registerUpdateBlock:v10 forRetrieveSelector:"localizationQACaptionShowLocalizedString" withListener:self];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = AXLocalizationCaptionViewController;
  [(AXLocalizationCaptionViewController *)&v54 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXLocalizationCaptionViewController *)self setBackgroundView:v7];

  v8 = +[UIColor blackColor];
  v9 = [v8 colorWithAlphaComponent:0.649999976];
  backgroundView = [(AXLocalizationCaptionViewController *)self backgroundView];
  [backgroundView setBackgroundColor:v9];

  view = [(AXLocalizationCaptionViewController *)self view];
  [view setAccessibilityElementsHidden:1];

  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  stringCountLabelNumerator = self->_stringCountLabelNumerator;
  self->_stringCountLabelNumerator = v12;

  v14 = +[UIColor clearColor];
  [(UILabel *)self->_stringCountLabelNumerator setBackgroundColor:v14];

  v15 = self->_stringCountLabelNumerator;
  v16 = +[UIColor yellowColor];
  [(UILabel *)v15 setTextColor:v16];

  [(UILabel *)self->_stringCountLabelNumerator setTextAlignment:0];
  v17 = self->_stringCountLabelNumerator;
  v18 = [UIFont systemFontOfSize:6.0];
  [(UILabel *)v17 setFont:v18];

  [(UILabel *)self->_stringCountLabelNumerator setNumberOfLines:1];
  backgroundView2 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [backgroundView2 addSubview:self->_stringCountLabelNumerator];

  v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  stringCountLabelDenominator = self->_stringCountLabelDenominator;
  self->_stringCountLabelDenominator = v20;

  v22 = +[UIColor clearColor];
  [(UILabel *)self->_stringCountLabelDenominator setBackgroundColor:v22];

  v23 = self->_stringCountLabelDenominator;
  v24 = +[UIColor whiteColor];
  [(UILabel *)v23 setTextColor:v24];

  [(UILabel *)self->_stringCountLabelDenominator setTextAlignment:0];
  v25 = self->_stringCountLabelDenominator;
  v26 = [UIFont systemFontOfSize:6.0];
  [(UILabel *)v25 setFont:v26];

  [(UILabel *)self->_stringCountLabelDenominator setNumberOfLines:1];
  backgroundView3 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [backgroundView3 addSubview:self->_stringCountLabelDenominator];

  v28 = +[UIColor clearColor];
  view2 = [(AXLocalizationCaptionViewController *)self view];
  [view2 setBackgroundColor:v28];

  v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXLocalizationCaptionViewController *)self setCaptionPanelText:v30];

  v31 = +[UIColor clearColor];
  captionPanelText = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText setBackgroundColor:v31];

  captionPanelText2 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  v34 = +[UIColor whiteColor];
  [captionPanelText2 setTextColor:v34];

  captionPanelText3 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText3 setTextAlignment:0];

  captionPanelText4 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  v37 = [UIFont systemFontOfSize:9.0];
  [captionPanelText4 setFont:v37];

  captionPanelText5 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText5 setLineBreakMode:2];

  captionPanelText6 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText6 setNumberOfLines:2];

  backgroundView4 = [(AXLocalizationCaptionViewController *)self backgroundView];
  captionPanelText7 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [backgroundView4 addSubview:captionPanelText7];

  height = [[AXLocCaptionPanelUILockButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  uiLockButton = self->_uiLockButton;
  self->_uiLockButton = height;

  v44 = +[UIColor clearColor];
  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setBackgroundColor:v44];

  backgroundView5 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [backgroundView5 addSubview:self->_uiLockButton];

  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton addTarget:self action:"uiLockPressed:" forControlEvents:64];
  v46 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXLocalizationCaptionViewController *)self setLineView:v46];

  lineView = [(AXLocalizationCaptionViewController *)self lineView];
  v48 = +[UIColor whiteColor];
  [lineView setBackgroundColor:v48];

  view3 = [(AXLocalizationCaptionViewController *)self view];
  backgroundView6 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [view3 addSubview:backgroundView6];

  view4 = [(AXLocalizationCaptionViewController *)self view];
  lineView2 = [(AXLocalizationCaptionViewController *)self lineView];
  [view4 addSubview:lineView2];

  view5 = [(AXLocalizationCaptionViewController *)self view];
  [view5 setNeedsLayout];
}

- (void)uiLockPressed:(id)pressed
{
  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setLocked:[(AXLocCaptionPanelUILockButton *)self->_uiLockButton locked]^ 1];
  delegate = [(AXLocalizationCaptionViewController *)self delegate];
  [delegate uiLockStateChanged:{-[AXLocCaptionPanelUILockButton locked](self->_uiLockButton, "locked")}];
}

- (void)_updateTextDisplay
{
  displayedPackage = self->_displayedPackage;
  if (displayedPackage >= [(NSArray *)self->_packages count])
  {
    v4 = 0;
    self->_displayedPackage = 0;
  }

  else
  {
    v4 = self->_displayedPackage;
  }

  v49 = [(NSArray *)self->_packages objectAtIndexedSubscript:v4];
  englishText = [v49 englishText];
  text = [v49 text];
  v47 = [v49 key];
  file = [v49 file];
  bundle = [v49 bundle];
  if (text)
  {
    if (englishText)
    {
      v43 = [englishText isEqualToString:text] ^ 1;
    }

    else
    {
      v43 = 0;
    }

    if ([text length] >= 0x29)
    {
      v7 = [text substringWithRange:{0, 40}];

      text = [v7 stringByAppendingString:@"…"];
    }

    v45 = [NSString stringWithFormat:@" %@", text];

    v8 = [[NSMutableAttributedString alloc] initWithString:&stru_85F8];
    v9 = objc_alloc_init(NSMutableParagraphStyle);
    [v9 setLineSpacing:3.0];
    [v9 setLineHeightMultiple:1.0];
    [v9 setParagraphSpacingBefore:0.0];
    [v9 setMaximumLineHeight:8.0];
    v44 = [bundle hasSuffix:@"axbundle"];
    if ([v47 length])
    {
      v10 = file;
      v11 = [v8 length];
      v12 = [NSAttributedString alloc];
      v13 = [NSString stringWithFormat:@"[%@]", v47];
      v14 = [v12 initWithString:v13];
      [v8 appendAttributedString:v14];

      v15 = +[UIColor whiteColor];
      v16 = ([v8 length] - v11);
      v17 = v11;
      file = v10;
      [v8 addAttribute:NSForegroundColorAttributeName value:v15 range:{v17, v16}];
    }

    if ([v45 length])
    {
      v18 = +[AXSettings sharedInstance];
      localizationQACaptionShowLocalizedString = [v18 localizationQACaptionShowLocalizedString];

      if (localizationQACaptionShowLocalizedString)
      {
        v42 = file;
        if (v44)
        {
          +[UIColor greenColor];
        }

        else
        {
          +[UIColor yellowColor];
        }
        v20 = ;
        v21 = [v8 length];
        v22 = [[NSAttributedString alloc] initWithString:v45];
        [v8 appendAttributedString:v22];

        [v8 addAttribute:NSForegroundColorAttributeName value:v20 range:{v21, objc_msgSend(v8, "length") - v21}];
        file = v42;
      }
    }

    if (v43)
    {
      v23 = +[AXSettings sharedInstance];
      localizationQACaptionShowUSString = [v23 localizationQACaptionShowUSString];

      if (localizationQACaptionShowUSString)
      {
        v25 = [v8 length];
        v26 = [NSAttributedString alloc];
        [NSString stringWithFormat:@" ¦ %@", englishText];
        v28 = v27 = file;
        v29 = [v26 initWithString:v28];
        [v8 appendAttributedString:v29];

        v30 = +[UIColor cyanColor];
        [v8 addAttribute:NSForegroundColorAttributeName value:v30 range:{v25, objc_msgSend(v8, "length") - v25}];

        file = v27;
      }
    }

    if (v44)
    {
      v31 = [v8 length];
      v32 = [[NSAttributedString alloc] initWithString:@" {Accessibility}"];
      [v8 appendAttributedString:v32];

      v33 = +[UIColor greenColor];
      [v8 addAttribute:NSForegroundColorAttributeName value:v33 range:{v31, objc_msgSend(v8, "length") - v31}];
    }

    if ([file length])
    {
      v34 = +[AXSettings sharedInstance];
      localizationQACaptionShowFilePath = [v34 localizationQACaptionShowFilePath];

      if (localizationQACaptionShowFilePath)
      {
        v36 = [v8 length];
        v37 = [NSAttributedString alloc];
        v38 = [NSString stringWithFormat:@"\n%@.strings:%@", file, bundle];
        v39 = [v37 initWithString:v38];
        [v8 appendAttributedString:v39];

        v40 = +[UIColor whiteColor];
        [v8 addAttribute:NSForegroundColorAttributeName value:v40 range:{v36, objc_msgSend(v8, "length") - v36}];
      }
    }

    [v8 addAttribute:NSParagraphStyleAttributeName value:v9 range:{0, objc_msgSend(v8, "length")}];
    captionPanelText = [(AXLocalizationCaptionViewController *)self captionPanelText];
    [captionPanelText setAttributedText:v8];

    [(AXLocalizationCaptionViewController *)self _updateNumeratorDenominator];
    [(AXLocalizationCaptionViewController *)self _processNextTextDisplayTimer];
  }
}

- (void)_updateNumeratorDenominator
{
  v3 = [NSString stringWithFormat:@"%d", (LODWORD(self->_displayedPackage) + 1)];
  [(UILabel *)self->_stringCountLabelNumerator setText:v3];

  v4 = [NSString stringWithFormat:@"%d", [(NSArray *)self->_packages count]];
  [(UILabel *)self->_stringCountLabelDenominator setText:v4];

  [(UILabel *)self->_stringCountLabelNumerator sizeToFit];
  [(UILabel *)self->_stringCountLabelDenominator sizeToFit];
  [(UILabel *)self->_stringCountLabelNumerator frame];
  [(UILabel *)self->_stringCountLabelNumerator setFrame:5.0, 0.0];
  [(UILabel *)self->_stringCountLabelDenominator frame];
  stringCountLabelDenominator = self->_stringCountLabelDenominator;

  [(UILabel *)stringCountLabelDenominator setFrame:5.0, 14.0];
}

- (void)showString:(id)string
{
  stringCopy = string;
  v6 = +[NSMutableArray array];
  v5 = objc_opt_new();
  [v5 setText:stringCopy];

  [v6 addObject:v5];
  [(AXLocalizationCaptionViewController *)self updateText:v6];
}

- (void)_processNextTextDisplayTimer
{
  if ([(NSArray *)self->_packages count]>= 2)
  {
    changeDisplayTimer = self->_changeDisplayTimer;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_3EEC;
    v4[3] = &unk_8348;
    v4[4] = self;
    [(AXDispatchTimer *)changeDisplayTimer afterDelay:v4 processBlock:2.0];
  }
}

- (void)updateText:(id)text
{
  textCopy = text;
  if ([textCopy count])
  {
    objc_storeStrong(&self->_packages, text);
    [(AXDispatchTimer *)self->_changeDisplayTimer cancel];
    self->_displayedPackage = 0;
    view = [(AXLocalizationCaptionViewController *)self view];
    [view setNeedsLayout];

    [(AXLocalizationCaptionViewController *)self _processNextTextDisplayTimer];
    [(AXLocalizationCaptionViewController *)self _updateTextDisplay];
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(AXLocalizationCaptionViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  backgroundView = [(AXLocalizationCaptionViewController *)self backgroundView];
  [backgroundView setFrame:{0.0, v7 + -28.0, v5, 28.0}];

  v9 = [(NSArray *)self->_packages count];
  v10 = v9 < 2;
  if (v9 >= 2)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = 5.0;
  }

  [(UILabel *)self->_stringCountLabelNumerator setHidden:v10];
  [(UILabel *)self->_stringCountLabelDenominator setHidden:v10];
  captionPanelText = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText frame];

  captionPanelText2 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [captionPanelText2 setFrame:{v11, 0.0, v5 + -25.0, 28.0}];

  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setFrame:v5 + -25.0, 4.0, 20.0, 20.0];
  lineView = [(AXLocalizationCaptionViewController *)self lineView];
  [lineView setFrame:{0.0, v7 + -28.25, v5, 0.25}];
}

- (AXLocalizationCaptionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end