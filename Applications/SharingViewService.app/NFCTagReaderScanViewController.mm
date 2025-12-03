@interface NFCTagReaderScanViewController
- (NFCTagReaderMainController)mainController;
- (void)dismissEventually;
- (void)nfcTagScanned;
- (void)showFailureUI;
- (void)updateButtonText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NFCTagReaderScanViewController

- (NFCTagReaderMainController)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

- (void)updateButtonText:(id)text
{
  textCopy = text;
  [(NFCTagReaderScanViewController *)self mainController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F997C;
  v9 = v8[3] = &unk_1001952B0;
  v5 = v9;
  v6 = [PRXAction actionWithTitle:textCopy style:0 handler:v8];

  [(NFCTagReaderScanViewController *)self replaceAction:self->_primaryAction withNewAction:v6];
  primaryAction = self->_primaryAction;
  self->_primaryAction = v6;
}

- (void)dismissEventually
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  [WeakRetained setDismissing:1];

  timer = self->_timer;
  if (timer)
  {
    v5 = timer;
    dispatch_source_cancel(v5);
    v6 = self->_timer;
    self->_timer = 0;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v8 = self->_timer;
  self->_timer = v7;

  v9 = self->_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F9B30;
  handler[3] = &unk_100195AC0;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  SFDispatchTimerSet();
  dispatch_resume(self->_timer);
}

- (void)nfcTagScanned
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    dismissing = [WeakRetained dismissing];
    LogPrintF();
  }

  if (([WeakRetained dismissing] & 1) == 0)
  {
    [WeakRetained uiOperationBegin];
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    inCompletionBlock[0] = _NSConcreteStackBlock;
    inCompletionBlock[1] = 3221225472;
    inCompletionBlock[2] = sub_1000F9E30;
    inCompletionBlock[3] = &unk_100195AC0;
    v4 = WeakRetained;
    v11 = v4;
    AudioServicesPlaySystemSoundWithCompletion(0x488u, inCompletionBlock);
    if (self->_mode == 20)
    {
      [(NFCTagReaderScanViewController *)self dismissEventually];
    }

    else if ([v4 tagCount] == 1 || objc_msgSend(v4, "tagCount") >= 2)
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"DONE" value:&stru_100195CA8 table:@"Localizable"];
      [(NFCTagReaderScanViewController *)self updateButtonText:v6];
    }

    [(PKGlyphView *)self->_nfcAnimationView setColorMode:2 animated:1];
    nfcAnimationView = self->_nfcAnimationView;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F9F10;
    v9[3] = &unk_1001957D0;
    v9[4] = self;
    [(PKGlyphView *)nfcAnimationView setState:11 animated:1 completionHandler:v9];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8.receiver = self;
  v8.super_class = NFCTagReaderScanViewController;
  [(NFCTagReaderScanViewController *)&v8 viewDidDisappear:disappearCopy];
  timer = self->_timer;
  if (timer)
  {
    v6 = timer;
    dispatch_source_cancel(v6);
    v7 = self->_timer;
    self->_timer = 0;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7.receiver = self;
  v7.super_class = NFCTagReaderScanViewController;
  [(NFCTagReaderScanViewController *)&v7 viewDidAppear:appearCopy];
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  [WeakRetained setAppeared:1];
  purpose = [WeakRetained purpose];
  [(NFCTagReaderScanViewController *)self setSubtitle:purpose];

  if ([WeakRetained tagCount] >= 1)
  {
    if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(NFCTagReaderScanViewController *)self nfcTagScanned];
    [WeakRetained uiOperationEnd];
  }
}

- (void)showFailureUI
{
  [(PKGlyphView *)self->_nfcAnimationView setColorMode:3 animated:0];
  [(PKGlyphView *)self->_nfcAnimationView setState:10 animated:0 completionHandler:0];
  v3 = [UIImage systemImageNamed:@"exclamationmark"];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:70.0];
  v5 = [v3 imageByApplyingSymbolConfiguration:v4];
  primaryColor = [(PKGlyphView *)self->_nfcAnimationView primaryColor];
  v10 = [v5 _flatImageWithColor:primaryColor];

  nfcAnimationView = self->_nfcAnimationView;
  v8 = v10;
  cGImage = [v10 CGImage];
  [v10 alignmentRectInsets];
  [(PKGlyphView *)nfcAnimationView setCustomImage:cGImage withAlignmentEdgeInsets:?];
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  AudioServicesPlaySystemSoundWithCompletion(0x576u, &stru_100194F10);
  [(NFCTagReaderScanViewController *)self dismissEventually];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE808 <= 30 && (dword_1001BE808 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v65.receiver = self;
  v65.super_class = NFCTagReaderScanViewController;
  [(NFCTagReaderScanViewController *)&v65 viewWillAppear:appearCopy];
  [(NFCTagReaderScanViewController *)self setDismissalType:1];
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  userInfo = [WeakRetained userInfo];
  self->_mode = CFDictionaryGetInt64Ranged();

  mode = self->_mode;
  if (mode == 10 || mode == 0)
  {
    self->_mode = 30;
  }

  userInfo2 = [WeakRetained userInfo];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (Int64Ranged)
  {
    v11 = @"HOLD_NEAR_READER";
  }

  else
  {
    v11 = @"READY_TO_SCAN";
  }

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:v11 value:&stru_100195CA8 table:@"Localizable"];
  [(NFCTagReaderScanViewController *)self setTitle:v13];

  purpose = [WeakRetained purpose];
  [(NFCTagReaderScanViewController *)self setSubtitle:purpose];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000FAC00;
  v63[3] = &unk_1001952B0;
  v17 = WeakRetained;
  v64 = v17;
  v18 = [PRXAction actionWithTitle:v16 style:0 handler:v63];
  objc_storeStrong(&self->_primaryAction, v18);
  v19 = [(NFCTagReaderScanViewController *)self addAction:v18];
  if (!self->_nfcAnimationView)
  {
    v20 = [[PKGlyphView alloc] initWithStyle:0];
    nfcAnimationView = self->_nfcAnimationView;
    self->_nfcAnimationView = v20;

    [(PKGlyphView *)self->_nfcAnimationView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKGlyphView *)self->_nfcAnimationView setState:9 animated:0 completionHandler:0];
    v60 = v18;
    v22 = self->_nfcAnimationView;
    +[UIScreen mainScreen];
    v23 = v61 = v17;
    [v23 scale];
    [(PKGlyphView *)v22 updateRasterizationScale:?];

    contentView = [(NFCTagReaderScanViewController *)self contentView];
    [contentView addSubview:self->_nfcAnimationView];

    heightAnchor = [(PKGlyphView *)self->_nfcAnimationView heightAnchor];
    v58 = [heightAnchor constraintEqualToConstant:116.0];
    v66[0] = v58;
    widthAnchor = [(PKGlyphView *)self->_nfcAnimationView widthAnchor];
    v56 = [widthAnchor constraintEqualToConstant:116.0];
    v66[1] = v56;
    centerXAnchor = [(PKGlyphView *)self->_nfcAnimationView centerXAnchor];
    contentView2 = [(NFCTagReaderScanViewController *)self contentView];
    mainContentGuide = [contentView2 mainContentGuide];
    centerXAnchor2 = [mainContentGuide centerXAnchor];
    v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[2] = v51;
    centerYAnchor = [(PKGlyphView *)self->_nfcAnimationView centerYAnchor];
    contentView3 = [(NFCTagReaderScanViewController *)self contentView];
    mainContentGuide2 = [contentView3 mainContentGuide];
    centerYAnchor2 = [mainContentGuide2 centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v66[3] = v46;
    leadingAnchor = [(PKGlyphView *)self->_nfcAnimationView leadingAnchor];
    contentView4 = [(NFCTagReaderScanViewController *)self contentView];
    mainContentGuide3 = [contentView4 mainContentGuide];
    leadingAnchor2 = [mainContentGuide3 leadingAnchor];
    v41 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v66[4] = v41;
    trailingAnchor = [(PKGlyphView *)self->_nfcAnimationView trailingAnchor];
    contentView5 = [(NFCTagReaderScanViewController *)self contentView];
    mainContentGuide4 = [contentView5 mainContentGuide];
    trailingAnchor2 = [mainContentGuide4 trailingAnchor];
    v36 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v66[5] = v36;
    topAnchor = [(PKGlyphView *)self->_nfcAnimationView topAnchor];
    [(NFCTagReaderScanViewController *)self contentView];
    v25 = v62 = v16;
    mainContentGuide5 = [v25 mainContentGuide];
    topAnchor2 = [mainContentGuide5 topAnchor];
    v28 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v66[6] = v28;
    bottomAnchor = [(PKGlyphView *)self->_nfcAnimationView bottomAnchor];
    contentView6 = [(NFCTagReaderScanViewController *)self contentView];
    mainContentGuide6 = [contentView6 mainContentGuide];
    bottomAnchor2 = [mainContentGuide6 bottomAnchor];
    v33 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v66[7] = v33;
    v34 = [NSArray arrayWithObjects:v66 count:8];
    [NSLayoutConstraint activateConstraints:v34];

    v18 = v60;
    v17 = v61;

    v16 = v62;
  }
}

@end