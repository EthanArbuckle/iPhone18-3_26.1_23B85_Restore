@interface TextSettingsViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CGPoint)watchScreenInsetForDeviceSize:(unint64_t)a3 screenScale:(double)a4;
- (CGSize)watchScreenSizeForDeviceSize:(unint64_t)a3 screenScale:(double)a4;
- (TextSettingsObserver)observer;
- (TextSettingsViewController)initWithDevice:(id)a3 observer:(id)a4;
- (id)_sliderTextImageWithSystemImageName:(id)a3;
- (id)detailString;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)alternateButtonPressed:(id)a3;
- (void)setSelectedContentSizeValue:(unint64_t)a3;
- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4;
- (void)suggestedButtonPressed:(id)a3;
- (void)switchToggled:(id)a3;
- (void)updateWatchScreenImageViewAndNotifyObserver:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TextSettingsViewController

- (TextSettingsViewController)initWithDevice:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TextSettingsViewController;
  v9 = [(TextSettingsViewController *)&v14 initWithTitle:&stru_C520 detailText:0 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeWeak(&v10->_observer, v8);
    [(TextSettingsViewController *)v10 setStyle:10];
    v11 = [(TextSettingsViewController *)v10 device];
    [(TextSettingsViewController *)v10 setDefaultContentSizeValue:contentSizeValueOnDevice(v11)];

    [(TextSettingsViewController *)v10 setSelectedContentSizeValue:[(TextSettingsViewController *)v10 defaultContentSizeValue]];
    v12 = [(TextSettingsViewController *)v10 device];
    [(TextSettingsViewController *)v10 setSelectedBoldTextEnabled:boldTextIsEnabledOnDevice(v12)];
  }

  return v10;
}

- (void)viewDidLoad
{
  v100.receiver = self;
  v100.super_class = TextSettingsViewController;
  [(TextSettingsViewController *)&v100 viewDidLoad];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[TextSettingsViewController] view did load", buf, 2u);
  }

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [(TextSettingsViewController *)self alternateChoiceButton];
  v8 = [v7 titleLabel];
  [v8 setNumberOfLines:0];

  v9 = [(TextSettingsViewController *)self alternateChoiceButton];
  v10 = [v9 titleLabel];
  [v10 setLineBreakMode:0];

  v11 = [AXContentSizedTableView alloc];
  v12 = [(TextSettingsViewController *)self contentView];
  [v12 bounds];
  v13 = [(AXContentSizedTableView *)v11 initWithFrame:2 style:?];
  [(TextSettingsViewController *)self setTableView:v13];

  v14 = [(TextSettingsViewController *)self tableView];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AXBoldTextCellReuseIdentifier"];

  v15 = [(TextSettingsViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[AXSliderValueTableViewCell cellReuseIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = [(TextSettingsViewController *)self tableView];
  [v18 setRowHeight:UITableViewAutomaticDimension];

  v19 = [(TextSettingsViewController *)self tableView];
  [v19 setDelegate:self];

  v20 = [(TextSettingsViewController *)self tableView];
  [v20 setDataSource:self];

  v21 = BPSSeparatorColor();
  v22 = [(TextSettingsViewController *)self tableView];
  [v22 setSeparatorColor:v21];

  v23 = [(TextSettingsViewController *)self tableView];
  [v23 setScrollEnabled:0];

  v24 = [(TextSettingsViewController *)self tableView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  buf[0] = 0;
  v25 = [(TextSettingsViewController *)self device];
  v26 = contentSizeCategoryOnDeviceOrCompanion(v25, buf);

  v27 = objc_alloc_init(UILabel);
  [(TextSettingsViewController *)self setDefaultTextSizeLabel:v27];

  if (buf[0])
  {
    v28 = @"companion.suggested.text.size";
  }

  else
  {
    v28 = @"default.suggested.text.size";
  }

  v29 = textSettingsLocalizedString(v28);
  v30 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v30 setText:v29];

  v31 = +[UIColor clearColor];
  v32 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v32 setBackgroundColor:v31];

  v33 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v33 setNumberOfLines:0];

  v34 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v34 setLineBreakMode:0];

  v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v36 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v36 setFont:v35];

  v37 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v37 setAdjustsFontForContentSizeCategory:1];

  v38 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v38 setTextAlignment:1];

  v39 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [(TextSettingsViewController *)self device];
  v41 = [PBBridgeWatchAttributeController sizeFromDevice:v40];

  v42 = [(TextSettingsViewController *)self device];
  v43 = [PBBridgeWatchAttributeController materialFromDevice:v42];

  v44 = [[UIImageView alloc] initWithImage:0];
  [(TextSettingsViewController *)self setWatchScreenImageView:v44];

  v45 = [(TextSettingsViewController *)self watchScreenImageView];
  [v45 setContentMode:1];

  if (_os_feature_enabled_impl())
  {
    v46 = [[BPSIllustratedWatchView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TextSettingsViewController *)self setTextPreviewIllustratedWatchView:v46];

    v47 = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    v48 = [(TextSettingsViewController *)self watchScreenImageView];
    [v47 addSubview:v48];

    v49 = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    [v49 watchScreenInsetGuide];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v58 = [(TextSettingsViewController *)self watchScreenImageView];
    [v58 setFrame:{v51, v53, v55, v57}];

    v59 = [UIStackView alloc];
    v60 = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    v103 = v60;
    v61 = &v103;
  }

  else
  {
    v62 = [[BPSWatchView alloc] initWithStyle:2];
    [(TextSettingsViewController *)self setTextPreviewWatchView:v62];

    v63 = [(TextSettingsViewController *)self textPreviewWatchView];
    [v63 overrideMaterial:v43 size:v41];

    v64 = [(TextSettingsViewController *)self textPreviewWatchView];
    [v64 setTranslatesAutoresizingMaskIntoConstraints:0];

    v65 = [(TextSettingsViewController *)self textPreviewWatchView];
    v66 = [(TextSettingsViewController *)self watchScreenImageView];
    [v65 addSubview:v66];

    [(TextSettingsViewController *)self watchScreenSizeForDeviceSize:v41 screenScale:v6];
    v68 = v67;
    v70 = v69;
    [(TextSettingsViewController *)self watchScreenInsetForDeviceSize:v41 screenScale:v6];
    v72 = v71;
    v74 = v73;
    v75 = [(TextSettingsViewController *)self watchScreenImageView];
    [v75 setFrame:{v72, v74, v68, v70}];

    v59 = [UIStackView alloc];
    v60 = [(TextSettingsViewController *)self textPreviewWatchView];
    v102 = v60;
    v61 = &v102;
  }

  v76 = [(TextSettingsViewController *)self tableView];
  v61[1] = v76;
  v77 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  v61[2] = v77;
  v78 = [NSArray arrayWithObjects:v61 count:3];
  v79 = [v59 initWithArrangedSubviews:v78];

  [v79 setAxis:1];
  [v79 setAlignment:3];
  [v79 setBaselineRelativeArrangement:1];
  [v79 setSpacing:2.0];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = [(TextSettingsViewController *)self contentView];
  [v80 addSubview:v79];

  v98 = [(TextSettingsViewController *)self contentView];
  v97 = [v98 topAnchor];
  v96 = [v79 topAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v101[0] = v95;
  v94 = [(TextSettingsViewController *)self contentView];
  v93 = [v94 leadingAnchor];
  v92 = [v79 leadingAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v101[1] = v91;
  v90 = [(TextSettingsViewController *)self contentView];
  v81 = [v90 trailingAnchor];
  v82 = [v79 trailingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  v101[2] = v83;
  v84 = [(TextSettingsViewController *)self contentView];
  v85 = [v84 bottomAnchor];
  v86 = [v79 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];
  v101[3] = v87;
  v88 = [NSArray arrayWithObjects:v101 count:4];
  [NSLayoutConstraint activateConstraints:v88];

  v89 = [(TextSettingsViewController *)self tableView];
  [v89 reloadData];

  [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
}

- (void)setSelectedContentSizeValue:(unint64_t)a3
{
  self->_selectedContentSizeValue = a3;
  v4 = [(TextSettingsViewController *)self defaultContentSizeValue]!= a3;
  v5 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [v5 setHidden:v4];
}

- (CGPoint)watchScreenInsetForDeviceSize:(unint64_t)a3 screenScale:(double)a4
{
  if (a4 <= 2.0)
  {
    if (a3 == 2)
    {
      v5 = 56.0;
      v4 = 25.5;
      goto LABEL_17;
    }

    if (a3 == 7)
    {
      v5 = 50.5;
      v4 = 19.5;
      goto LABEL_17;
    }

    if (a3 != 8)
    {
      v5 = 54.0;
      v4 = 24.5;
      goto LABEL_17;
    }

    v5 = 50.5;
    goto LABEL_11;
  }

  switch(a3)
  {
    case 2uLL:
      v5 = 74.0;
      v4 = 32.0;
      break;
    case 7uLL:
      v5 = 65.0;
LABEL_11:
      v4 = 20.5;
      break;
    case 8uLL:
      v4 = 21.0;
      v5 = 66.0;
      break;
    default:
      v4 = 30.0;
      v5 = 71.0;
      break;
  }

LABEL_17:
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)watchScreenSizeForDeviceSize:(unint64_t)a3 screenScale:(double)a4
{
  if (a4 <= 2.0)
  {
    switch(a3)
    {
      case 2uLL:
        v4 = 85.0;
        v6 = 0x4051000000000000;
        break;
      case 8uLL:
        v4 = 95.0;
        v5 = 78.0;
        goto LABEL_17;
      case 7uLL:
        v4 = 98.0;
        v6 = 0x4054000000000000;
        break;
      default:
        v4 = 89.0;
        v5 = 71.0;
        goto LABEL_17;
    }

    v5 = *&v6;
    goto LABEL_17;
  }

  switch(a3)
  {
    case 2uLL:
      v4 = 108.0;
      v5 = 86.0;
      break;
    case 8uLL:
      v4 = 123.0;
      v5 = 101.0;
      break;
    case 7uLL:
      v4 = 126.0;
      v5 = 103.0;
      break;
    default:
      v4 = 113.0;
      v5 = 90.0;
      break;
  }

LABEL_17:
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)updateWatchScreenImageViewAndNotifyObserver:(BOOL)a3
{
  v3 = a3;
  if (([(TextSettingsViewController *)self isViewLoaded]& 1) != 0)
  {
    v5 = [(TextSettingsViewController *)self device];
    v6 = contentSizeCategoryOnDeviceForValue(v5, [(TextSettingsViewController *)self selectedContentSizeValue]);

    v7 = [(TextSettingsViewController *)self selectedBoldTextEnabled];
    if (v3)
    {
      v8 = [(TextSettingsViewController *)self observer];
      [v8 didSelectContentSizeCategory:v6 boldTextEnabled:v7];
    }

    v9 = cachedTextPreviewImage(v6, v7);
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      AXPerformBlockOnMainThread();
    }

    else
    {
      v11 = AXLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TextSettingsViewController *)v6 updateWatchScreenImageViewAndNotifyObserver:v7, v11];
      }
    }
  }

  else
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[TextSettingsViewController] view is not loaded", buf, 2u);
    }
  }
}

void __74__TextSettingsViewController_updateWatchScreenImageViewAndNotifyObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) watchScreenImageView];
  [v3 setImage:v2];

  v4 = [*(a1 + 32) watchScreenImageView];
  [v4 setNeedsDisplay];
}

- (id)detailString
{
  v2 = [(TextSettingsViewController *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    textSettingsLocalizedTinkerString(@"text.settings.subtitle");
  }

  else
  {
    textSettingsLocalizedString(@"text.settings.subtitle");
  }
  v5 = ;

  return v5;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithUnsignedInteger:[(TextSettingsViewController *)self selectedContentSizeValue]];
    v6 = [NSNumber numberWithBool:[(TextSettingsViewController *)self selectedBoldTextEnabled]];
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Continue with content size: %@, bold enabled: %@", &v12, 0x16u);
  }

  v7 = [(TextSettingsViewController *)self selectedContentSizeValue];
  v8 = [(TextSettingsViewController *)self device];
  contentSizeSetValueOnDevice(v7, v8);

  v9 = [(TextSettingsViewController *)self selectedBoldTextEnabled];
  v10 = [(TextSettingsViewController *)self device];
  boldTextSetEnabledOnDevice(v9, v10);

  v11 = [(TextSettingsViewController *)self miniFlowDelegate];
  [v11 miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set up text settings later", v9, 2u);
  }

  v5 = [(TextSettingsViewController *)self device];
  [(TextSettingsViewController *)self setSelectedContentSizeValue:contentSizeValueOnDevice(v5)];

  v6 = [(TextSettingsViewController *)self device];
  [(TextSettingsViewController *)self setSelectedBoldTextEnabled:boldTextIsEnabledOnDevice(v6)];

  [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
  v7 = [(TextSettingsViewController *)self tableView];
  [v7 reloadData];

  v8 = [(TextSettingsViewController *)self miniFlowDelegate];
  [v8 miniFlowStepComplete:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row])
  {
    v8 = +[AXSliderValueTableViewCell cellReuseIdentifier];
    v9 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];

    [v9 setDelegate:self];
    [v9 setMinimumValue:0.0];
    v10 = [(TextSettingsViewController *)self device];
    v11 = contentSizeCategoriesOnDevice(v10);
    [v9 setMaximumValue:{(objc_msgSend(v11, "count") - 1)}];

    v12 = [(TextSettingsViewController *)self _sliderTextImageWithSystemImageName:@"textformat.size.smaller"];
    [v9 setMinimumValueImage:v12];

    v13 = [(TextSettingsViewController *)self _sliderTextImageWithSystemImageName:@"textformat.size.larger"];
    [v9 setMaximumValueImage:v13];

    v14 = [(TextSettingsViewController *)self device];
    v15 = contentSizeCategoriesOnDevice(v14);
    [v9 setSegmentCount:{objc_msgSend(v15, "count") - 1}];

    v16 = [(TextSettingsViewController *)self device];
    [v9 setValue:contentSizeValueOnDevice(v16)];
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"AXBoldTextCellReuseIdentifier" forIndexPath:v7];
    v17 = textSettingsLocalizedString(@"bold.text");
    v18 = [v9 textLabel];
    [v18 setText:v17];

    [v9 setSelectionStyle:0];
    v16 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v19 = [(TextSettingsViewController *)self device];
    [v16 setOn:boldTextIsEnabledOnDevice(v19) animated:0];

    [v16 addTarget:self action:"switchToggled:" forControlEvents:4096];
    [v9 setAccessoryView:v16];
  }

  return v9;
}

- (void)switchToggled:(id)a3
{
  v5 = a3;
  v4 = [v5 isOn];
  if (v4 != [(TextSettingsViewController *)self selectedBoldTextEnabled])
  {
    -[TextSettingsViewController setSelectedBoldTextEnabled:](self, "setSelectedBoldTextEnabled:", [v5 isOn]);
    [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
  }
}

- (id)_sliderTextImageWithSystemImageName:(id)a3
{
  v3 = a3;
  v4 = BPSFontWithSize();
  v5 = BPSTextColor();
  v6 = [UIImageSymbolConfiguration configurationWithFont:v4];
  v7 = [UIImage systemImageNamed:v3];

  v8 = [v7 imageByApplyingSymbolConfiguration:v6];
  v9 = [v8 imageWithTintColor:v5 renderingMode:1];

  return v9;
}

- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4
{
  v6 = [(TextSettingsViewController *)self selectedContentSizeValue];
  if (v6 != a4)
  {
    [(TextSettingsViewController *)self setSelectedContentSizeValue:a4, v6];

    [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

- (TextSettingsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)updateWatchScreenImageViewAndNotifyObserver:(NSObject *)a3 .cold.1(uint64_t a1, char a2, NSObject *a3)
{
  v5 = [NSNumber numberWithBool:a2 & 1];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "[TextSettingsViewController] cached image is nil for size category: %@, bold text: %@", &v6, 0x16u);
}

@end