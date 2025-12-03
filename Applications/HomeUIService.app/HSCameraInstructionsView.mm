@interface HSCameraInstructionsView
- (BOOL)_isShowingNFCInstructions;
- (BOOL)_shouldStackIcons;
- (HSCameraInstructionsView)initWithCoder:(id)coder;
- (HSCameraInstructionsView)initWithFrame:(CGRect)frame;
- (HSCameraInstructionsView)initWithNFCStartFuture:(id)future;
- (id)_nfcCodeImageAssetForCurrentTraitEnvironment;
- (id)_scanCodeImageAssetForCurrentTraitEnvironment;
- (void)_setupFontsForCurrentTraitCollection;
- (void)_updateScanCodeIcon;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HSCameraInstructionsView

- (HSCameraInstructionsView)initWithFrame:(CGRect)frame
{
  v5 = [NSAssertionHandler currentHandler:frame.origin.x];
  v6 = NSStringFromSelector("initWithNFCStartFuture:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSCameraInstructionsView.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HSCameraInstructionsView initWithFrame:]", v6}];

  return 0;
}

- (HSCameraInstructionsView)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithNFCStartFuture:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSCameraInstructionsView.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HSCameraInstructionsView initWithCoder:]", v6}];

  return 0;
}

- (HSCameraInstructionsView)initWithNFCStartFuture:(id)future
{
  futureCopy = future;
  v85.receiver = self;
  v85.super_class = HSCameraInstructionsView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(HSCameraInstructionsView *)&v85 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = height;
  if (height)
  {
    objc_storeStrong(&height->_nfcStartFuture, future);
    v11 = +[UIColor systemBackgroundColor];
    [(HSCameraInstructionsView *)v10 setBackgroundColor:v11];

    [(HSCameraInstructionsView *)v10 setPreservesSuperviewLayoutMargins:1];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setScanCodeTitleLabel:v12];

    scanCodeTitleLabel = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [scanCodeTitleLabel setAdjustsFontSizeToFitWidth:1];

    scanCodeTitleLabel2 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [scanCodeTitleLabel2 setMinimumScaleFactor:0.01];

    scanCodeTitleLabel3 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [scanCodeTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    scanCodeTitleLabel4 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [scanCodeTitleLabel4 setNumberOfLines:0];

    v17 = HULocalizedString();
    scanCodeTitleLabel5 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [scanCodeTitleLabel5 setText:v17];

    v19 = +[UIColor labelColor];
    scanCodeBodyLabel = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel setTextColor:v19];

    scanCodeTitleLabel6 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [(HSCameraInstructionsView *)v10 addSubview:scanCodeTitleLabel6];

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setScanCodeBodyLabel:v22];

    scanCodeBodyLabel2 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel2 setAdjustsFontSizeToFitWidth:1];

    scanCodeBodyLabel3 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel3 setMinimumScaleFactor:0.01];

    scanCodeBodyLabel4 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    scanCodeBodyLabel5 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel5 setNumberOfLines:0];

    v27 = HULocalizedString();
    scanCodeBodyLabel6 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel6 setText:v27];

    v29 = +[UIColor secondaryLabelColor];
    scanCodeBodyLabel7 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [scanCodeBodyLabel7 setTextColor:v29];

    scanCodeBodyLabel8 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [(HSCameraInstructionsView *)v10 addSubview:scanCodeBodyLabel8];

    v32 = objc_opt_new();
    [(HSCameraInstructionsView *)v10 setScanCodeIconView:v32];

    _scanCodeImageAssetForCurrentTraitEnvironment = [(HSCameraInstructionsView *)v10 _scanCodeImageAssetForCurrentTraitEnvironment];
    scanCodeIconView = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [scanCodeIconView setImage:_scanCodeImageAssetForCurrentTraitEnvironment];

    v35 = +[UIColor labelColor];
    scanCodeIconView2 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [scanCodeIconView2 setTintColor:v35];

    scanCodeIconView3 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    LODWORD(v38) = 1148846080;
    [scanCodeIconView3 setContentCompressionResistancePriority:0 forAxis:v38];

    scanCodeIconView4 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    LODWORD(v40) = 1148846080;
    [scanCodeIconView4 setContentHuggingPriority:0 forAxis:v40];

    scanCodeIconView5 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [scanCodeIconView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    scanCodeIconView6 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [(HSCameraInstructionsView *)v10 addSubview:scanCodeIconView6];

    v43 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setNfcTitleLabel:v43];

    nfcTitleLabel = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel setAdjustsFontSizeToFitWidth:1];

    nfcTitleLabel2 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel2 setMinimumScaleFactor:0.01];

    nfcTitleLabel3 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    nfcTitleLabel4 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel4 setNumberOfLines:0];

    v48 = HULocalizedString();
    nfcTitleLabel5 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel5 setText:v48];

    nfcTitleLabel6 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [nfcTitleLabel6 setHidden:1];

    nfcTitleLabel7 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [(HSCameraInstructionsView *)v10 addSubview:nfcTitleLabel7];

    v52 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setNfcBodyLabel:v52];

    nfcBodyLabel = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel setAdjustsFontSizeToFitWidth:1];

    nfcBodyLabel2 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel2 setMinimumScaleFactor:0.01];

    nfcBodyLabel3 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    nfcBodyLabel4 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel4 setNumberOfLines:0];

    v57 = HULocalizedString();
    nfcBodyLabel5 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel5 setText:v57];

    v59 = +[UIColor secondaryLabelColor];
    nfcBodyLabel6 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel6 setTextColor:v59];

    nfcBodyLabel7 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [nfcBodyLabel7 setHidden:1];

    nfcBodyLabel8 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [(HSCameraInstructionsView *)v10 addSubview:nfcBodyLabel8];

    v63 = objc_opt_new();
    [(HSCameraInstructionsView *)v10 setNfcIconView:v63];

    _nfcCodeImageAssetForCurrentTraitEnvironment = [(HSCameraInstructionsView *)v10 _nfcCodeImageAssetForCurrentTraitEnvironment];
    nfcIconView = [(HSCameraInstructionsView *)v10 nfcIconView];
    [nfcIconView setImage:_nfcCodeImageAssetForCurrentTraitEnvironment];

    v66 = +[UIColor labelColor];
    nfcIconView2 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [nfcIconView2 setTintColor:v66];

    nfcIconView3 = [(HSCameraInstructionsView *)v10 nfcIconView];
    LODWORD(v69) = 1148846080;
    [nfcIconView3 setContentCompressionResistancePriority:0 forAxis:v69];

    nfcIconView4 = [(HSCameraInstructionsView *)v10 nfcIconView];
    LODWORD(v71) = 1148846080;
    [nfcIconView4 setContentHuggingPriority:0 forAxis:v71];

    nfcIconView5 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [nfcIconView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    nfcIconView6 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [nfcIconView6 setHidden:1];

    nfcIconView7 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [(HSCameraInstructionsView *)v10 addSubview:nfcIconView7];

    [(HSCameraInstructionsView *)v10 _setupFontsForCurrentTraitCollection];
    [(HSCameraInstructionsView *)v10 layoutMargins];
    [(HSCameraInstructionsView *)v10 setLayoutMargins:?];
    objc_initWeak(&location, v10);
    v75 = [NAUILayoutConstraintSet alloc];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100061E34;
    v82[3] = &unk_1000C6620;
    objc_copyWeak(&v83, &location);
    v76 = [v75 initWithOwningView:v10 constraintBuilder:v82];
    [(HSCameraInstructionsView *)v10 setConstraintSet:v76];

    nfcStartFuture = v10->_nfcStartFuture;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_10006257C;
    v80[3] = &unk_1000C7348;
    objc_copyWeak(&v81, &location);
    v78 = [(NAFuture *)nfcStartFuture addSuccessBlock:v80];
    objc_destroyWeak(&v81);
    objc_destroyWeak(&v83);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)updateConstraints
{
  constraintSet = [(HSCameraInstructionsView *)self constraintSet];
  [constraintSet activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HSCameraInstructionsView;
  [(HSCameraInstructionsView *)&v4 updateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = HSCameraInstructionsView;
  changeCopy = change;
  [(HSCameraInstructionsView *)&v7 traitCollectionDidChange:changeCopy];
  [(HSCameraInstructionsView *)self _updateScanCodeIcon];
  v6.receiver = self;
  v6.super_class = HSCameraInstructionsView;
  [(HSCameraInstructionsView *)&v6 traitCollectionDidChange:changeCopy];

  constraintSet = [(HSCameraInstructionsView *)self constraintSet];
  [constraintSet invalidate];

  [(HSCameraInstructionsView *)self _setupFontsForCurrentTraitCollection];
}

- (void)_updateScanCodeIcon
{
  _scanCodeImageAssetForCurrentTraitEnvironment = [(HSCameraInstructionsView *)self _scanCodeImageAssetForCurrentTraitEnvironment];
  scanCodeIconView = [(HSCameraInstructionsView *)self scanCodeIconView];
  image = [scanCodeIconView image];
  v5 = [_scanCodeImageAssetForCurrentTraitEnvironment isEqual:image];

  if ((v5 & 1) == 0)
  {
    scanCodeIconView2 = [(HSCameraInstructionsView *)self scanCodeIconView];
    [scanCodeIconView2 setImage:_scanCodeImageAssetForCurrentTraitEnvironment];

    constraintSet = [(HSCameraInstructionsView *)self constraintSet];
    [constraintSet invalidate];
  }
}

- (id)_scanCodeImageAssetForCurrentTraitEnvironment
{
  v2 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle1 scale:2];
  v3 = [UIImage systemImageNamed:@"qrcode" withConfiguration:v2];

  return v3;
}

- (id)_nfcCodeImageAssetForCurrentTraitEnvironment
{
  v2 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle1 scale:2];
  v3 = [UIImage _systemImageNamed:@"nfc" withConfiguration:v2];

  return v3;
}

- (BOOL)_shouldStackIcons
{
  largeContentSizeCategories = [objc_opt_class() largeContentSizeCategories];
  traitCollection = [(HSCameraInstructionsView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = [largeContentSizeCategories containsObject:preferredContentSizeCategory];

  return v6;
}

- (BOOL)_isShowingNFCInstructions
{
  nfcTitleLabel = [(HSCameraInstructionsView *)self nfcTitleLabel];
  isHidden = [nfcTitleLabel isHidden];

  return isHidden ^ 1;
}

- (void)_setupFontsForCurrentTraitCollection
{
  v3 = sub_100005750();
  nfcTitleLabel = [(HSCameraInstructionsView *)self nfcTitleLabel];
  [nfcTitleLabel setFont:v3];

  v5 = sub_100005750();
  scanCodeTitleLabel = [(HSCameraInstructionsView *)self scanCodeTitleLabel];
  [scanCodeTitleLabel setFont:v5];

  v7 = sub_1000057C8();
  nfcBodyLabel = [(HSCameraInstructionsView *)self nfcBodyLabel];
  [nfcBodyLabel setFont:v7];

  v10 = sub_1000057C8();
  scanCodeBodyLabel = [(HSCameraInstructionsView *)self scanCodeBodyLabel];
  [scanCodeBodyLabel setFont:v10];
}

@end