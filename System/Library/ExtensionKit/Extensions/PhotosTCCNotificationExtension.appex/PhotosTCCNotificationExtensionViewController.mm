@interface PhotosTCCNotificationExtensionViewController
+ (id)_log;
- (void)configureWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PhotosTCCNotificationExtensionViewController

- (void)configureWithCompletion:(id)completion
{
  completionCopy = completion;
  _log = [objc_opt_class() _log];
  extensionContext = [(PhotosTCCNotificationExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  userInfo = [v8 userInfo];
  v10 = kTCCNotificationExtensionDaemonDataKey;
  v11 = kTCCNotificationExtensionDaemonDataInitialPromptKey;
  v12 = kTCCNotificationExtensionDaemonDataSetPromptKey;
  v13 = [userInfo objectForKeyedSubscript:v10];
  v67 = v12;
  v14 = [v13 objectForKeyedSubscript:v12];

  v69 = v10;
  v70 = userInfo;
  v15 = [userInfo objectForKeyedSubscript:v10];
  v68 = v11;
  v16 = [v15 objectForKeyedSubscript:v11];

  v66 = v14;
  if (v14)
  {
    [v14 BOOLValue];
  }

  v71 = v8;
  if (v16)
  {
    [v16 BOOLValue];
  }

  v65 = v16;
  v17 = os_signpost_id_generate(_log);
  v18 = _log;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PhotosTCCNotificationExtensionCounts", &unk_100002DAA, buf, 2u);
  }

  v20 = PXTCCPromptCountTitle();
  countsLabel = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  [countsLabel setText:v20];

  countsLabel2 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  text = [countsLabel2 text];
  v24 = [text length];

  countsLabel3 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  topAnchor = [countsLabel3 topAnchor];
  labelContainer = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  topAnchor2 = [labelContainer topAnchor];
  if (v24)
  {
    [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.5];
  }

  else
  {
    [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  }
  v29 = ;
  [v29 setActive:1];

  v30 = PXTCCPromptCountSubtitle();
  accessLabel = [(PhotosTCCNotificationExtensionViewController *)self accessLabel];
  [accessLabel setText:v30];

  v32 = v19;
  v33 = v32;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v17, "PhotosTCCNotificationExtensionCounts", &unk_100002DAA, buf, 2u);
  }

  v34 = os_signpost_id_generate(v33);
  v35 = v33;
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PhotosTCCNotificationExtensionPhotoGrid", &unk_100002DAA, buf, 2u);
  }

  [(PhotosTCCNotificationExtensionViewController *)self preferredContentSize];
  v37 = [PXTCCPhotoGridView photoGridViewForAlertPromptWithWidth:?];
  v38 = v36;
  v39 = v38;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v34, "PhotosTCCNotificationExtensionPhotoGrid", &unk_100002DAA, buf, 2u);
  }

  if (v37)
  {
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    photoContainer = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    [photoContainer addSubview:v37];

    topAnchor3 = [v37 topAnchor];
    photoContainer2 = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    topAnchor4 = [photoContainer2 topAnchor];
    v60 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v74[0] = v60;
    leadingAnchor = [v37 leadingAnchor];
    [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    v41 = v64 = v39;
    leadingAnchor2 = [v41 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[1] = v43;
    trailingAnchor = [v37 trailingAnchor];
    photoContainer3 = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    trailingAnchor2 = [photoContainer3 trailingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[2] = v47;
    v48 = [NSArray arrayWithObjects:v74 count:3];
    [NSLayoutConstraint activateConstraints:v48];

    v39 = v64;
  }

  countsLabel4 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  [countsLabel4 sizeToFit];

  accessLabel2 = [(PhotosTCCNotificationExtensionViewController *)self accessLabel];
  [accessLabel2 sizeToFit];

  labelContainer2 = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  [labelContainer2 layoutIfNeeded];

  [v37 frame];
  v53 = v52;
  labelContainer3 = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  [labelContainer3 frame];
  v56 = v53 + v55;
  v57 = PXSolariumEnabled();
  v58 = 0.0;
  if (v57)
  {
    v58 = 15.0;
  }

  [(PhotosTCCNotificationExtensionViewController *)self setPreferredContentSize:270.0, v58 + v56];

  completionCopy[2](completionCopy);
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = PhotosTCCNotificationExtensionViewController;
  [(PhotosTCCNotificationExtensionViewController *)&v74 viewDidLoad];
  [(PhotosTCCNotificationExtensionViewController *)self setPreferredContentSize:270.0, 400.0];
  v3 = objc_alloc_init(UIView);
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (PXSolariumEnabled())
  {
    v4 = SBSUIUserNotificationContentCornerRadius;
    layer = [(UIView *)v3 layer];
    [layer setCornerRadius:v4];

    layer2 = [(UIView *)v3 layer];
    [layer2 setMasksToBounds:1];

    layer3 = [(UIView *)v3 layer];
    [layer3 setMaskedCorners:15];
  }

  photoContainer = self->_photoContainer;
  self->_photoContainer = v3;
  v73 = v3;

  v9 = objc_alloc_init(UIView);
  [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelContainer = self->_labelContainer;
  self->_labelContainer = v9;
  v11 = v9;

  v12 = objc_alloc_init(UILabel);
  [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v12 setNumberOfLines:0];
  v72 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:32770 options:0];
  v13 = [UIFont fontWithDescriptor:v72 size:0.0];
  [(UILabel *)v12 setFont:v13];

  if (PXSolariumEnabled())
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  [(UILabel *)v12 setTextAlignment:v14];
  countsLabel = self->_countsLabel;
  self->_countsLabel = v12;
  v16 = v12;

  v17 = objc_alloc_init(UILabel);
  [(UILabel *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v17 setNumberOfLines:0];
  v71 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
  v18 = [UIFont fontWithDescriptor:v71 size:0.0];
  [(UILabel *)v17 setFont:v18];

  if (PXSolariumEnabled())
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  [(UILabel *)v17 setTextAlignment:v19];
  accessLabel = self->_accessLabel;
  self->_accessLabel = v17;
  v21 = v17;

  view = [(PhotosTCCNotificationExtensionViewController *)self view];
  [view addSubview:v73];

  view2 = [(PhotosTCCNotificationExtensionViewController *)self view];
  [view2 addSubview:v11];

  [(UIView *)v11 addSubview:v16];
  [(UIView *)v11 addSubview:v21];
  topAnchor = [(UIView *)v73 topAnchor];
  view3 = [(PhotosTCCNotificationExtensionViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v75[0] = v67;
  leadingAnchor = [(UIView *)v73 leadingAnchor];
  view4 = [(PhotosTCCNotificationExtensionViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[1] = v63;
  widthAnchor = [(UIView *)v73 widthAnchor];
  view5 = [(PhotosTCCNotificationExtensionViewController *)self view];
  widthAnchor2 = [view5 widthAnchor];
  v59 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v75[2] = v59;
  topAnchor3 = [(UIView *)v11 topAnchor];
  bottomAnchor = [(UIView *)v73 bottomAnchor];
  v56 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v75[3] = v56;
  leadingAnchor3 = [(UIView *)v11 leadingAnchor];
  view6 = [(PhotosTCCNotificationExtensionViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v75[4] = v52;
  trailingAnchor = [(UIView *)v11 trailingAnchor];
  view7 = [(PhotosTCCNotificationExtensionViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v75[5] = v48;
  bottomAnchor2 = [(UIView *)v11 bottomAnchor];
  view8 = [(PhotosTCCNotificationExtensionViewController *)self view];
  bottomAnchor3 = [view8 bottomAnchor];
  v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v75[6] = v44;
  leadingAnchor5 = [(UILabel *)v16 leadingAnchor];
  leadingAnchor6 = [(UIView *)v11 leadingAnchor];
  v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
  v75[7] = v41;
  v32 = v16;
  trailingAnchor3 = [(UILabel *)v16 trailingAnchor];
  trailingAnchor4 = [(UIView *)v11 trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v75[8] = v38;
  topAnchor4 = [(UILabel *)v21 topAnchor];
  bottomAnchor4 = [(UILabel *)v16 bottomAnchor];
  v35 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
  v75[9] = v35;
  leadingAnchor7 = [(UILabel *)v21 leadingAnchor];
  leadingAnchor8 = [(UIView *)v11 leadingAnchor];
  v24 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:8.0];
  v75[10] = v24;
  trailingAnchor5 = [(UILabel *)v21 trailingAnchor];
  trailingAnchor6 = [(UIView *)v11 trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v75[11] = v27;
  bottomAnchor5 = [(UIView *)v11 bottomAnchor];
  bottomAnchor6 = [(UILabel *)v21 bottomAnchor];
  v30 = [bottomAnchor5 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor6 multiplier:2.5];
  v75[12] = v30;
  v31 = [NSArray arrayWithObjects:v75 count:13];
  [NSLayoutConstraint activateConstraints:v31];
}

+ (id)_log
{
  if (qword_100008628 != -1)
  {
    dispatch_once(&qword_100008628, &stru_1000041B0);
  }

  v3 = qword_100008620;

  return v3;
}

@end