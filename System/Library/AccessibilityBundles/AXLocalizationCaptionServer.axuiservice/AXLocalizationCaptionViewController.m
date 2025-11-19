@interface AXLocalizationCaptionViewController
- (AXLocalizationCaptionViewControllerDelegate)delegate;
- (void)_processNextTextDisplayTimer;
- (void)_updateNumeratorDenominator;
- (void)_updateTextDisplay;
- (void)loadView;
- (void)showString:(id)a3;
- (void)uiLockPressed:(id)a3;
- (void)updateText:(id)a3;
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
  v10 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v10 setBackgroundColor:v9];

  v11 = [(AXLocalizationCaptionViewController *)self view];
  [v11 setAccessibilityElementsHidden:1];

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
  v19 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v19 addSubview:self->_stringCountLabelNumerator];

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
  v27 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v27 addSubview:self->_stringCountLabelDenominator];

  v28 = +[UIColor clearColor];
  v29 = [(AXLocalizationCaptionViewController *)self view];
  [v29 setBackgroundColor:v28];

  v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXLocalizationCaptionViewController *)self setCaptionPanelText:v30];

  v31 = +[UIColor clearColor];
  v32 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v32 setBackgroundColor:v31];

  v33 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  v34 = +[UIColor whiteColor];
  [v33 setTextColor:v34];

  v35 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v35 setTextAlignment:0];

  v36 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  v37 = [UIFont systemFontOfSize:9.0];
  [v36 setFont:v37];

  v38 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v38 setLineBreakMode:2];

  v39 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v39 setNumberOfLines:2];

  v40 = [(AXLocalizationCaptionViewController *)self backgroundView];
  v41 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v40 addSubview:v41];

  v42 = [[AXLocCaptionPanelUILockButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  uiLockButton = self->_uiLockButton;
  self->_uiLockButton = v42;

  v44 = +[UIColor clearColor];
  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setBackgroundColor:v44];

  v45 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v45 addSubview:self->_uiLockButton];

  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton addTarget:self action:"uiLockPressed:" forControlEvents:64];
  v46 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXLocalizationCaptionViewController *)self setLineView:v46];

  v47 = [(AXLocalizationCaptionViewController *)self lineView];
  v48 = +[UIColor whiteColor];
  [v47 setBackgroundColor:v48];

  v49 = [(AXLocalizationCaptionViewController *)self view];
  v50 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v49 addSubview:v50];

  v51 = [(AXLocalizationCaptionViewController *)self view];
  v52 = [(AXLocalizationCaptionViewController *)self lineView];
  [v51 addSubview:v52];

  v53 = [(AXLocalizationCaptionViewController *)self view];
  [v53 setNeedsLayout];
}

- (void)uiLockPressed:(id)a3
{
  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setLocked:[(AXLocCaptionPanelUILockButton *)self->_uiLockButton locked]^ 1];
  v4 = [(AXLocalizationCaptionViewController *)self delegate];
  [v4 uiLockStateChanged:{-[AXLocCaptionPanelUILockButton locked](self->_uiLockButton, "locked")}];
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
  v48 = [v49 englishText];
  v5 = [v49 text];
  v47 = [v49 key];
  v6 = [v49 file];
  v46 = [v49 bundle];
  if (v5)
  {
    if (v48)
    {
      v43 = [v48 isEqualToString:v5] ^ 1;
    }

    else
    {
      v43 = 0;
    }

    if ([v5 length] >= 0x29)
    {
      v7 = [v5 substringWithRange:{0, 40}];

      v5 = [v7 stringByAppendingString:@"…"];
    }

    v45 = [NSString stringWithFormat:@" %@", v5];

    v8 = [[NSMutableAttributedString alloc] initWithString:&stru_85F8];
    v9 = objc_alloc_init(NSMutableParagraphStyle);
    [v9 setLineSpacing:3.0];
    [v9 setLineHeightMultiple:1.0];
    [v9 setParagraphSpacingBefore:0.0];
    [v9 setMaximumLineHeight:8.0];
    v44 = [v46 hasSuffix:@"axbundle"];
    if ([v47 length])
    {
      v10 = v6;
      v11 = [v8 length];
      v12 = [NSAttributedString alloc];
      v13 = [NSString stringWithFormat:@"[%@]", v47];
      v14 = [v12 initWithString:v13];
      [v8 appendAttributedString:v14];

      v15 = +[UIColor whiteColor];
      v16 = ([v8 length] - v11);
      v17 = v11;
      v6 = v10;
      [v8 addAttribute:NSForegroundColorAttributeName value:v15 range:{v17, v16}];
    }

    if ([v45 length])
    {
      v18 = +[AXSettings sharedInstance];
      v19 = [v18 localizationQACaptionShowLocalizedString];

      if (v19)
      {
        v42 = v6;
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
        v6 = v42;
      }
    }

    if (v43)
    {
      v23 = +[AXSettings sharedInstance];
      v24 = [v23 localizationQACaptionShowUSString];

      if (v24)
      {
        v25 = [v8 length];
        v26 = [NSAttributedString alloc];
        [NSString stringWithFormat:@" ¦ %@", v48];
        v28 = v27 = v6;
        v29 = [v26 initWithString:v28];
        [v8 appendAttributedString:v29];

        v30 = +[UIColor cyanColor];
        [v8 addAttribute:NSForegroundColorAttributeName value:v30 range:{v25, objc_msgSend(v8, "length") - v25}];

        v6 = v27;
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

    if ([v6 length])
    {
      v34 = +[AXSettings sharedInstance];
      v35 = [v34 localizationQACaptionShowFilePath];

      if (v35)
      {
        v36 = [v8 length];
        v37 = [NSAttributedString alloc];
        v38 = [NSString stringWithFormat:@"\n%@.strings:%@", v6, v46];
        v39 = [v37 initWithString:v38];
        [v8 appendAttributedString:v39];

        v40 = +[UIColor whiteColor];
        [v8 addAttribute:NSForegroundColorAttributeName value:v40 range:{v36, objc_msgSend(v8, "length") - v36}];
      }
    }

    [v8 addAttribute:NSParagraphStyleAttributeName value:v9 range:{0, objc_msgSend(v8, "length")}];
    v41 = [(AXLocalizationCaptionViewController *)self captionPanelText];
    [v41 setAttributedText:v8];

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

- (void)showString:(id)a3
{
  v4 = a3;
  v6 = +[NSMutableArray array];
  v5 = objc_opt_new();
  [v5 setText:v4];

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

- (void)updateText:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    objc_storeStrong(&self->_packages, a3);
    [(AXDispatchTimer *)self->_changeDisplayTimer cancel];
    self->_displayedPackage = 0;
    v5 = [(AXLocalizationCaptionViewController *)self view];
    [v5 setNeedsLayout];

    [(AXLocalizationCaptionViewController *)self _processNextTextDisplayTimer];
    [(AXLocalizationCaptionViewController *)self _updateTextDisplay];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(AXLocalizationCaptionViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(AXLocalizationCaptionViewController *)self backgroundView];
  [v8 setFrame:{0.0, v7 + -28.0, v5, 28.0}];

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
  v12 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v12 frame];

  v13 = [(AXLocalizationCaptionViewController *)self captionPanelText];
  [v13 setFrame:{v11, 0.0, v5 + -25.0, 28.0}];

  [(AXLocCaptionPanelUILockButton *)self->_uiLockButton setFrame:v5 + -25.0, 4.0, 20.0, 20.0];
  v14 = [(AXLocalizationCaptionViewController *)self lineView];
  [v14 setFrame:{0.0, v7 + -28.25, v5, 0.25}];
}

- (AXLocalizationCaptionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end