@interface HSCameraInstructionsView
- (BOOL)_isShowingNFCInstructions;
- (BOOL)_shouldStackIcons;
- (HSCameraInstructionsView)initWithCoder:(id)a3;
- (HSCameraInstructionsView)initWithFrame:(CGRect)a3;
- (HSCameraInstructionsView)initWithNFCStartFuture:(id)a3;
- (id)_nfcCodeImageAssetForCurrentTraitEnvironment;
- (id)_scanCodeImageAssetForCurrentTraitEnvironment;
- (void)_setupFontsForCurrentTraitCollection;
- (void)_updateScanCodeIcon;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation HSCameraInstructionsView

- (HSCameraInstructionsView)initWithFrame:(CGRect)a3
{
  v5 = [NSAssertionHandler currentHandler:a3.origin.x];
  v6 = NSStringFromSelector("initWithNFCStartFuture:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSCameraInstructionsView.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HSCameraInstructionsView initWithFrame:]", v6}];

  return 0;
}

- (HSCameraInstructionsView)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithNFCStartFuture:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSCameraInstructionsView.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HSCameraInstructionsView initWithCoder:]", v6}];

  return 0;
}

- (HSCameraInstructionsView)initWithNFCStartFuture:(id)a3
{
  v5 = a3;
  v85.receiver = self;
  v85.super_class = HSCameraInstructionsView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(HSCameraInstructionsView *)&v85 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nfcStartFuture, a3);
    v11 = +[UIColor systemBackgroundColor];
    [(HSCameraInstructionsView *)v10 setBackgroundColor:v11];

    [(HSCameraInstructionsView *)v10 setPreservesSuperviewLayoutMargins:1];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setScanCodeTitleLabel:v12];

    v13 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [v13 setAdjustsFontSizeToFitWidth:1];

    v14 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [v14 setMinimumScaleFactor:0.01];

    v15 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [v16 setNumberOfLines:0];

    v17 = HULocalizedString();
    v18 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [v18 setText:v17];

    v19 = +[UIColor labelColor];
    v20 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v20 setTextColor:v19];

    v21 = [(HSCameraInstructionsView *)v10 scanCodeTitleLabel];
    [(HSCameraInstructionsView *)v10 addSubview:v21];

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setScanCodeBodyLabel:v22];

    v23 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v23 setAdjustsFontSizeToFitWidth:1];

    v24 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v24 setMinimumScaleFactor:0.01];

    v25 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v26 setNumberOfLines:0];

    v27 = HULocalizedString();
    v28 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v28 setText:v27];

    v29 = +[UIColor secondaryLabelColor];
    v30 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [v30 setTextColor:v29];

    v31 = [(HSCameraInstructionsView *)v10 scanCodeBodyLabel];
    [(HSCameraInstructionsView *)v10 addSubview:v31];

    v32 = objc_opt_new();
    [(HSCameraInstructionsView *)v10 setScanCodeIconView:v32];

    v33 = [(HSCameraInstructionsView *)v10 _scanCodeImageAssetForCurrentTraitEnvironment];
    v34 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [v34 setImage:v33];

    v35 = +[UIColor labelColor];
    v36 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [v36 setTintColor:v35];

    v37 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    LODWORD(v38) = 1148846080;
    [v37 setContentCompressionResistancePriority:0 forAxis:v38];

    v39 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    LODWORD(v40) = 1148846080;
    [v39 setContentHuggingPriority:0 forAxis:v40];

    v41 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    v42 = [(HSCameraInstructionsView *)v10 scanCodeIconView];
    [(HSCameraInstructionsView *)v10 addSubview:v42];

    v43 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setNfcTitleLabel:v43];

    v44 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v44 setAdjustsFontSizeToFitWidth:1];

    v45 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v45 setMinimumScaleFactor:0.01];

    v46 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

    v47 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v47 setNumberOfLines:0];

    v48 = HULocalizedString();
    v49 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v49 setText:v48];

    v50 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [v50 setHidden:1];

    v51 = [(HSCameraInstructionsView *)v10 nfcTitleLabel];
    [(HSCameraInstructionsView *)v10 addSubview:v51];

    v52 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(HSCameraInstructionsView *)v10 setNfcBodyLabel:v52];

    v53 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v53 setAdjustsFontSizeToFitWidth:1];

    v54 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v54 setMinimumScaleFactor:0.01];

    v55 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];

    v56 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v56 setNumberOfLines:0];

    v57 = HULocalizedString();
    v58 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v58 setText:v57];

    v59 = +[UIColor secondaryLabelColor];
    v60 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v60 setTextColor:v59];

    v61 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [v61 setHidden:1];

    v62 = [(HSCameraInstructionsView *)v10 nfcBodyLabel];
    [(HSCameraInstructionsView *)v10 addSubview:v62];

    v63 = objc_opt_new();
    [(HSCameraInstructionsView *)v10 setNfcIconView:v63];

    v64 = [(HSCameraInstructionsView *)v10 _nfcCodeImageAssetForCurrentTraitEnvironment];
    v65 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [v65 setImage:v64];

    v66 = +[UIColor labelColor];
    v67 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [v67 setTintColor:v66];

    v68 = [(HSCameraInstructionsView *)v10 nfcIconView];
    LODWORD(v69) = 1148846080;
    [v68 setContentCompressionResistancePriority:0 forAxis:v69];

    v70 = [(HSCameraInstructionsView *)v10 nfcIconView];
    LODWORD(v71) = 1148846080;
    [v70 setContentHuggingPriority:0 forAxis:v71];

    v72 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [v72 setTranslatesAutoresizingMaskIntoConstraints:0];

    v73 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [v73 setHidden:1];

    v74 = [(HSCameraInstructionsView *)v10 nfcIconView];
    [(HSCameraInstructionsView *)v10 addSubview:v74];

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
  v3 = [(HSCameraInstructionsView *)self constraintSet];
  [v3 activateIfNeeded];

  v4.receiver = self;
  v4.super_class = HSCameraInstructionsView;
  [(HSCameraInstructionsView *)&v4 updateConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = HSCameraInstructionsView;
  v4 = a3;
  [(HSCameraInstructionsView *)&v7 traitCollectionDidChange:v4];
  [(HSCameraInstructionsView *)self _updateScanCodeIcon];
  v6.receiver = self;
  v6.super_class = HSCameraInstructionsView;
  [(HSCameraInstructionsView *)&v6 traitCollectionDidChange:v4];

  v5 = [(HSCameraInstructionsView *)self constraintSet];
  [v5 invalidate];

  [(HSCameraInstructionsView *)self _setupFontsForCurrentTraitCollection];
}

- (void)_updateScanCodeIcon
{
  v8 = [(HSCameraInstructionsView *)self _scanCodeImageAssetForCurrentTraitEnvironment];
  v3 = [(HSCameraInstructionsView *)self scanCodeIconView];
  v4 = [v3 image];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(HSCameraInstructionsView *)self scanCodeIconView];
    [v6 setImage:v8];

    v7 = [(HSCameraInstructionsView *)self constraintSet];
    [v7 invalidate];
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
  v3 = [objc_opt_class() largeContentSizeCategories];
  v4 = [(HSCameraInstructionsView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v3 containsObject:v5];

  return v6;
}

- (BOOL)_isShowingNFCInstructions
{
  v2 = [(HSCameraInstructionsView *)self nfcTitleLabel];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)_setupFontsForCurrentTraitCollection
{
  v3 = sub_100005750();
  v4 = [(HSCameraInstructionsView *)self nfcTitleLabel];
  [v4 setFont:v3];

  v5 = sub_100005750();
  v6 = [(HSCameraInstructionsView *)self scanCodeTitleLabel];
  [v6 setFont:v5];

  v7 = sub_1000057C8();
  v8 = [(HSCameraInstructionsView *)self nfcBodyLabel];
  [v8 setFont:v7];

  v10 = sub_1000057C8();
  v9 = [(HSCameraInstructionsView *)self scanCodeBodyLabel];
  [v9 setFont:v10];
}

@end