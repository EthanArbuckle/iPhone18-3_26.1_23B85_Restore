@interface TextSettingsViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CGPoint)watchScreenInsetForDeviceSize:(unint64_t)size screenScale:(double)scale;
- (CGSize)watchScreenSizeForDeviceSize:(unint64_t)size screenScale:(double)scale;
- (TextSettingsObserver)observer;
- (TextSettingsViewController)initWithDevice:(id)device observer:(id)observer;
- (id)_sliderTextImageWithSystemImageName:(id)name;
- (id)detailString;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)alternateButtonPressed:(id)pressed;
- (void)setSelectedContentSizeValue:(unint64_t)value;
- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value;
- (void)suggestedButtonPressed:(id)pressed;
- (void)switchToggled:(id)toggled;
- (void)updateWatchScreenImageViewAndNotifyObserver:(BOOL)observer;
- (void)viewDidLoad;
@end

@implementation TextSettingsViewController

- (TextSettingsViewController)initWithDevice:(id)device observer:(id)observer
{
  deviceCopy = device;
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = TextSettingsViewController;
  v9 = [(TextSettingsViewController *)&v14 initWithTitle:&stru_C520 detailText:0 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeWeak(&v10->_observer, observerCopy);
    [(TextSettingsViewController *)v10 setStyle:10];
    device = [(TextSettingsViewController *)v10 device];
    [(TextSettingsViewController *)v10 setDefaultContentSizeValue:contentSizeValueOnDevice(device)];

    [(TextSettingsViewController *)v10 setSelectedContentSizeValue:[(TextSettingsViewController *)v10 defaultContentSizeValue]];
    device2 = [(TextSettingsViewController *)v10 device];
    [(TextSettingsViewController *)v10 setSelectedBoldTextEnabled:boldTextIsEnabledOnDevice(device2)];
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

  alternateChoiceButton = [(TextSettingsViewController *)self alternateChoiceButton];
  titleLabel = [alternateChoiceButton titleLabel];
  [titleLabel setNumberOfLines:0];

  alternateChoiceButton2 = [(TextSettingsViewController *)self alternateChoiceButton];
  titleLabel2 = [alternateChoiceButton2 titleLabel];
  [titleLabel2 setLineBreakMode:0];

  v11 = [AXContentSizedTableView alloc];
  contentView = [(TextSettingsViewController *)self contentView];
  [contentView bounds];
  v13 = [(AXContentSizedTableView *)v11 initWithFrame:2 style:?];
  [(TextSettingsViewController *)self setTableView:v13];

  tableView = [(TextSettingsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AXBoldTextCellReuseIdentifier"];

  tableView2 = [(TextSettingsViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[AXSliderValueTableViewCell cellReuseIdentifier];
  [tableView2 registerClass:v16 forCellReuseIdentifier:v17];

  tableView3 = [(TextSettingsViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(TextSettingsViewController *)self tableView];
  [tableView4 setDelegate:self];

  tableView5 = [(TextSettingsViewController *)self tableView];
  [tableView5 setDataSource:self];

  v21 = BPSSeparatorColor();
  tableView6 = [(TextSettingsViewController *)self tableView];
  [tableView6 setSeparatorColor:v21];

  tableView7 = [(TextSettingsViewController *)self tableView];
  [tableView7 setScrollEnabled:0];

  tableView8 = [(TextSettingsViewController *)self tableView];
  [tableView8 setTranslatesAutoresizingMaskIntoConstraints:0];

  buf[0] = 0;
  device = [(TextSettingsViewController *)self device];
  v26 = contentSizeCategoryOnDeviceOrCompanion(device, buf);

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
  defaultTextSizeLabel = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel setText:v29];

  v31 = +[UIColor clearColor];
  defaultTextSizeLabel2 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel2 setBackgroundColor:v31];

  defaultTextSizeLabel3 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel3 setNumberOfLines:0];

  defaultTextSizeLabel4 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel4 setLineBreakMode:0];

  v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  defaultTextSizeLabel5 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel5 setFont:v35];

  defaultTextSizeLabel6 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel6 setAdjustsFontForContentSizeCategory:1];

  defaultTextSizeLabel7 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel7 setTextAlignment:1];

  defaultTextSizeLabel8 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel8 setTranslatesAutoresizingMaskIntoConstraints:0];

  device2 = [(TextSettingsViewController *)self device];
  v41 = [PBBridgeWatchAttributeController sizeFromDevice:device2];

  device3 = [(TextSettingsViewController *)self device];
  v43 = [PBBridgeWatchAttributeController materialFromDevice:device3];

  v44 = [[UIImageView alloc] initWithImage:0];
  [(TextSettingsViewController *)self setWatchScreenImageView:v44];

  watchScreenImageView = [(TextSettingsViewController *)self watchScreenImageView];
  [watchScreenImageView setContentMode:1];

  if (_os_feature_enabled_impl())
  {
    v46 = [[BPSIllustratedWatchView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TextSettingsViewController *)self setTextPreviewIllustratedWatchView:v46];

    textPreviewIllustratedWatchView = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    watchScreenImageView2 = [(TextSettingsViewController *)self watchScreenImageView];
    [textPreviewIllustratedWatchView addSubview:watchScreenImageView2];

    textPreviewIllustratedWatchView2 = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    [textPreviewIllustratedWatchView2 watchScreenInsetGuide];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    watchScreenImageView3 = [(TextSettingsViewController *)self watchScreenImageView];
    [watchScreenImageView3 setFrame:{v51, v53, v55, v57}];

    v59 = [UIStackView alloc];
    textPreviewIllustratedWatchView3 = [(TextSettingsViewController *)self textPreviewIllustratedWatchView];
    v103 = textPreviewIllustratedWatchView3;
    v61 = &v103;
  }

  else
  {
    v62 = [[BPSWatchView alloc] initWithStyle:2];
    [(TextSettingsViewController *)self setTextPreviewWatchView:v62];

    textPreviewWatchView = [(TextSettingsViewController *)self textPreviewWatchView];
    [textPreviewWatchView overrideMaterial:v43 size:v41];

    textPreviewWatchView2 = [(TextSettingsViewController *)self textPreviewWatchView];
    [textPreviewWatchView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    textPreviewWatchView3 = [(TextSettingsViewController *)self textPreviewWatchView];
    watchScreenImageView4 = [(TextSettingsViewController *)self watchScreenImageView];
    [textPreviewWatchView3 addSubview:watchScreenImageView4];

    [(TextSettingsViewController *)self watchScreenSizeForDeviceSize:v41 screenScale:v6];
    v68 = v67;
    v70 = v69;
    [(TextSettingsViewController *)self watchScreenInsetForDeviceSize:v41 screenScale:v6];
    v72 = v71;
    v74 = v73;
    watchScreenImageView5 = [(TextSettingsViewController *)self watchScreenImageView];
    [watchScreenImageView5 setFrame:{v72, v74, v68, v70}];

    v59 = [UIStackView alloc];
    textPreviewIllustratedWatchView3 = [(TextSettingsViewController *)self textPreviewWatchView];
    v102 = textPreviewIllustratedWatchView3;
    v61 = &v102;
  }

  tableView9 = [(TextSettingsViewController *)self tableView];
  v61[1] = tableView9;
  defaultTextSizeLabel9 = [(TextSettingsViewController *)self defaultTextSizeLabel];
  v61[2] = defaultTextSizeLabel9;
  v78 = [NSArray arrayWithObjects:v61 count:3];
  v79 = [v59 initWithArrangedSubviews:v78];

  [v79 setAxis:1];
  [v79 setAlignment:3];
  [v79 setBaselineRelativeArrangement:1];
  [v79 setSpacing:2.0];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TextSettingsViewController *)self contentView];
  [contentView2 addSubview:v79];

  contentView3 = [(TextSettingsViewController *)self contentView];
  topAnchor = [contentView3 topAnchor];
  topAnchor2 = [v79 topAnchor];
  v95 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v101[0] = v95;
  contentView4 = [(TextSettingsViewController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  leadingAnchor2 = [v79 leadingAnchor];
  v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v101[1] = v91;
  contentView5 = [(TextSettingsViewController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [v79 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v101[2] = v83;
  contentView6 = [(TextSettingsViewController *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v79 bottomAnchor];
  v87 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v101[3] = v87;
  v88 = [NSArray arrayWithObjects:v101 count:4];
  [NSLayoutConstraint activateConstraints:v88];

  tableView10 = [(TextSettingsViewController *)self tableView];
  [tableView10 reloadData];

  [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
}

- (void)setSelectedContentSizeValue:(unint64_t)value
{
  self->_selectedContentSizeValue = value;
  v4 = [(TextSettingsViewController *)self defaultContentSizeValue]!= value;
  defaultTextSizeLabel = [(TextSettingsViewController *)self defaultTextSizeLabel];
  [defaultTextSizeLabel setHidden:v4];
}

- (CGPoint)watchScreenInsetForDeviceSize:(unint64_t)size screenScale:(double)scale
{
  if (scale <= 2.0)
  {
    if (size == 2)
    {
      v5 = 56.0;
      v4 = 25.5;
      goto LABEL_17;
    }

    if (size == 7)
    {
      v5 = 50.5;
      v4 = 19.5;
      goto LABEL_17;
    }

    if (size != 8)
    {
      v5 = 54.0;
      v4 = 24.5;
      goto LABEL_17;
    }

    v5 = 50.5;
    goto LABEL_11;
  }

  switch(size)
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

- (CGSize)watchScreenSizeForDeviceSize:(unint64_t)size screenScale:(double)scale
{
  if (scale <= 2.0)
  {
    switch(size)
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

  switch(size)
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

- (void)updateWatchScreenImageViewAndNotifyObserver:(BOOL)observer
{
  observerCopy = observer;
  if (([(TextSettingsViewController *)self isViewLoaded]& 1) != 0)
  {
    device = [(TextSettingsViewController *)self device];
    v6 = contentSizeCategoryOnDeviceForValue(device, [(TextSettingsViewController *)self selectedContentSizeValue]);

    selectedBoldTextEnabled = [(TextSettingsViewController *)self selectedBoldTextEnabled];
    if (observerCopy)
    {
      observer = [(TextSettingsViewController *)self observer];
      [observer didSelectContentSizeCategory:v6 boldTextEnabled:selectedBoldTextEnabled];
    }

    v9 = cachedTextPreviewImage(v6, selectedBoldTextEnabled);
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
        [(TextSettingsViewController *)v6 updateWatchScreenImageViewAndNotifyObserver:selectedBoldTextEnabled, v11];
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
  device = [(TextSettingsViewController *)self device];
  v3 = [device valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
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

- (void)suggestedButtonPressed:(id)pressed
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

  selectedContentSizeValue = [(TextSettingsViewController *)self selectedContentSizeValue];
  device = [(TextSettingsViewController *)self device];
  contentSizeSetValueOnDevice(selectedContentSizeValue, device);

  selectedBoldTextEnabled = [(TextSettingsViewController *)self selectedBoldTextEnabled];
  device2 = [(TextSettingsViewController *)self device];
  boldTextSetEnabledOnDevice(selectedBoldTextEnabled, device2);

  miniFlowDelegate = [(TextSettingsViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set up text settings later", v9, 2u);
  }

  device = [(TextSettingsViewController *)self device];
  [(TextSettingsViewController *)self setSelectedContentSizeValue:contentSizeValueOnDevice(device)];

  device2 = [(TextSettingsViewController *)self device];
  [(TextSettingsViewController *)self setSelectedBoldTextEnabled:boldTextIsEnabledOnDevice(device2)];

  [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
  tableView = [(TextSettingsViewController *)self tableView];
  [tableView reloadData];

  miniFlowDelegate = [(TextSettingsViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row])
  {
    v8 = +[AXSliderValueTableViewCell cellReuseIdentifier];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

    [v9 setDelegate:self];
    [v9 setMinimumValue:0.0];
    device = [(TextSettingsViewController *)self device];
    v11 = contentSizeCategoriesOnDevice(device);
    [v9 setMaximumValue:{(objc_msgSend(v11, "count") - 1)}];

    v12 = [(TextSettingsViewController *)self _sliderTextImageWithSystemImageName:@"textformat.size.smaller"];
    [v9 setMinimumValueImage:v12];

    v13 = [(TextSettingsViewController *)self _sliderTextImageWithSystemImageName:@"textformat.size.larger"];
    [v9 setMaximumValueImage:v13];

    device2 = [(TextSettingsViewController *)self device];
    v15 = contentSizeCategoriesOnDevice(device2);
    [v9 setSegmentCount:{objc_msgSend(v15, "count") - 1}];

    device3 = [(TextSettingsViewController *)self device];
    [v9 setValue:contentSizeValueOnDevice(device3)];
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"AXBoldTextCellReuseIdentifier" forIndexPath:pathCopy];
    v17 = textSettingsLocalizedString(@"bold.text");
    textLabel = [v9 textLabel];
    [textLabel setText:v17];

    [v9 setSelectionStyle:0];
    device3 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    device4 = [(TextSettingsViewController *)self device];
    [device3 setOn:boldTextIsEnabledOnDevice(device4) animated:0];

    [device3 addTarget:self action:"switchToggled:" forControlEvents:4096];
    [v9 setAccessoryView:device3];
  }

  return v9;
}

- (void)switchToggled:(id)toggled
{
  toggledCopy = toggled;
  isOn = [toggledCopy isOn];
  if (isOn != [(TextSettingsViewController *)self selectedBoldTextEnabled])
  {
    -[TextSettingsViewController setSelectedBoldTextEnabled:](self, "setSelectedBoldTextEnabled:", [toggledCopy isOn]);
    [(TextSettingsViewController *)self updateWatchScreenImageViewAndNotifyObserver:1];
  }
}

- (id)_sliderTextImageWithSystemImageName:(id)name
{
  nameCopy = name;
  v4 = BPSFontWithSize();
  v5 = BPSTextColor();
  v6 = [UIImageSymbolConfiguration configurationWithFont:v4];
  v7 = [UIImage systemImageNamed:nameCopy];

  v8 = [v7 imageByApplyingSymbolConfiguration:v6];
  v9 = [v8 imageWithTintColor:v5 renderingMode:1];

  return v9;
}

- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value
{
  selectedContentSizeValue = [(TextSettingsViewController *)self selectedContentSizeValue];
  if (selectedContentSizeValue != value)
  {
    [(TextSettingsViewController *)self setSelectedContentSizeValue:value, selectedContentSizeValue];

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