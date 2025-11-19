@interface PhotosTCCNotificationExtensionViewController
+ (id)_log;
- (void)configureWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation PhotosTCCNotificationExtensionViewController

- (void)configureWithCompletion:(id)a3
{
  v72 = a3;
  v4 = [objc_opt_class() _log];
  v5 = [(PhotosTCCNotificationExtensionViewController *)self extensionContext];
  v6 = [v5 inputItems];
  v7 = [v6 firstObject];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 userInfo];
  v10 = kTCCNotificationExtensionDaemonDataKey;
  v11 = kTCCNotificationExtensionDaemonDataInitialPromptKey;
  v12 = kTCCNotificationExtensionDaemonDataSetPromptKey;
  v13 = [v9 objectForKeyedSubscript:v10];
  v67 = v12;
  v14 = [v13 objectForKeyedSubscript:v12];

  v69 = v10;
  v70 = v9;
  v15 = [v9 objectForKeyedSubscript:v10];
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
  v17 = os_signpost_id_generate(v4);
  v18 = v4;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PhotosTCCNotificationExtensionCounts", &unk_100002DAA, buf, 2u);
  }

  v20 = PXTCCPromptCountTitle();
  v21 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  [v21 setText:v20];

  v22 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  v23 = [v22 text];
  v24 = [v23 length];

  v25 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  v26 = [v25 topAnchor];
  v27 = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  v28 = [v27 topAnchor];
  if (v24)
  {
    [v26 constraintEqualToSystemSpacingBelowAnchor:v28 multiplier:1.5];
  }

  else
  {
    [v26 constraintEqualToAnchor:v28 constant:0.0];
  }
  v29 = ;
  [v29 setActive:1];

  v30 = PXTCCPromptCountSubtitle();
  v31 = [(PhotosTCCNotificationExtensionViewController *)self accessLabel];
  [v31 setText:v30];

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
    v40 = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    [v40 addSubview:v37];

    v62 = [v37 topAnchor];
    v63 = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    v61 = [v63 topAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v74[0] = v60;
    v59 = [v37 leadingAnchor];
    [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    v41 = v64 = v39;
    v42 = [v41 leadingAnchor];
    v43 = [v59 constraintEqualToAnchor:v42];
    v74[1] = v43;
    v44 = [v37 trailingAnchor];
    v45 = [(PhotosTCCNotificationExtensionViewController *)self photoContainer];
    v46 = [v45 trailingAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    v74[2] = v47;
    v48 = [NSArray arrayWithObjects:v74 count:3];
    [NSLayoutConstraint activateConstraints:v48];

    v39 = v64;
  }

  v49 = [(PhotosTCCNotificationExtensionViewController *)self countsLabel];
  [v49 sizeToFit];

  v50 = [(PhotosTCCNotificationExtensionViewController *)self accessLabel];
  [v50 sizeToFit];

  v51 = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  [v51 layoutIfNeeded];

  [v37 frame];
  v53 = v52;
  v54 = [(PhotosTCCNotificationExtensionViewController *)self labelContainer];
  [v54 frame];
  v56 = v53 + v55;
  v57 = PXSolariumEnabled();
  v58 = 0.0;
  if (v57)
  {
    v58 = 15.0;
  }

  [(PhotosTCCNotificationExtensionViewController *)self setPreferredContentSize:270.0, v58 + v56];

  v72[2](v72);
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
    v5 = [(UIView *)v3 layer];
    [v5 setCornerRadius:v4];

    v6 = [(UIView *)v3 layer];
    [v6 setMasksToBounds:1];

    v7 = [(UIView *)v3 layer];
    [v7 setMaskedCorners:15];
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

  v22 = [(PhotosTCCNotificationExtensionViewController *)self view];
  [v22 addSubview:v73];

  v23 = [(PhotosTCCNotificationExtensionViewController *)self view];
  [v23 addSubview:v11];

  [(UIView *)v11 addSubview:v16];
  [(UIView *)v11 addSubview:v21];
  v69 = [(UIView *)v73 topAnchor];
  v70 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v68 = [v70 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v75[0] = v67;
  v65 = [(UIView *)v73 leadingAnchor];
  v66 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v64 = [v66 leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v75[1] = v63;
  v61 = [(UIView *)v73 widthAnchor];
  v62 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v60 = [v62 widthAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v75[2] = v59;
  v58 = [(UIView *)v11 topAnchor];
  v57 = [(UIView *)v73 bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v75[3] = v56;
  v54 = [(UIView *)v11 leadingAnchor];
  v55 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v53 = [v55 leadingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v75[4] = v52;
  v50 = [(UIView *)v11 trailingAnchor];
  v51 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v49 = [v51 trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:-8.0];
  v75[5] = v48;
  v46 = [(UIView *)v11 bottomAnchor];
  v47 = [(PhotosTCCNotificationExtensionViewController *)self view];
  v45 = [v47 bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v75[6] = v44;
  v43 = [(UILabel *)v16 leadingAnchor];
  v42 = [(UIView *)v11 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:8.0];
  v75[7] = v41;
  v32 = v16;
  v40 = [(UILabel *)v16 trailingAnchor];
  v39 = [(UIView *)v11 trailingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v75[8] = v38;
  v37 = [(UILabel *)v21 topAnchor];
  v36 = [(UILabel *)v16 bottomAnchor];
  v35 = [v37 constraintEqualToSystemSpacingBelowAnchor:v36 multiplier:1.0];
  v75[9] = v35;
  v34 = [(UILabel *)v21 leadingAnchor];
  v33 = [(UIView *)v11 leadingAnchor];
  v24 = [v34 constraintEqualToAnchor:v33 constant:8.0];
  v75[10] = v24;
  v25 = [(UILabel *)v21 trailingAnchor];
  v26 = [(UIView *)v11 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v75[11] = v27;
  v28 = [(UIView *)v11 bottomAnchor];
  v29 = [(UILabel *)v21 bottomAnchor];
  v30 = [v28 constraintEqualToSystemSpacingBelowAnchor:v29 multiplier:2.5];
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