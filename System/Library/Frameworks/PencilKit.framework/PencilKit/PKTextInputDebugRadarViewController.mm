@interface PKTextInputDebugRadarViewController
- (PKTextInputDebugRadarViewController)initWithSharpenerLog:(id)log;
- (PKTextInputDebugRadarViewControllerDelegate)delegate;
- (id)_accumulatedLogEntryTextsForRadar;
- (id)_buildString;
- (id)_deviceString;
- (id)_generateLaunchURLWithLogFilename:(id)filename;
- (id)_logEntryTextForRadarTitle;
- (id)_loggedMainLocaleDescription;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_selectedContentLevel;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_configureCell:(id)cell atIndexPath:(id)path;
- (void)_dismiss;
- (void)_handleDetailControlChanged:(id)changed;
- (void)_handleKeyboardWillShow:(id)show;
- (void)_handleSubmitRadarButton:(id)button;
- (void)_launchTTRAndDismiss;
- (void)_loadIntendedTexts;
- (void)_setKeyboardVerticalOverlap:(double)overlap;
- (void)_setupViews;
- (void)_toggleSysdiagnoseButton;
- (void)_updateScrollView;
- (void)_updateSubmitButton;
- (void)_updateSysdiagnoseButton;
- (void)entryCellIncludedEntryDidChange:(id)change;
- (void)entryCellIntendedTextDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKTextInputDebugRadarViewController

- (PKTextInputDebugRadarViewController)initWithSharpenerLog:(id)log
{
  logCopy = log;
  v15.receiver = self;
  v15.super_class = PKTextInputDebugRadarViewController;
  v6 = [(PKTextInputDebugRadarViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharpenerLog, log);
    logEntries = [logCopy logEntries];
    v9 = [logEntries count];

    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
    intendedTexts = v7->__intendedTexts;
    v7->__intendedTexts = v10;

    v12 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, v9}];
    includedEntryIndexes = v7->__includedEntryIndexes;
    v7->__includedEntryIndexes = v12;

    [(PKTextInputDebugRadarViewController *)v7 setModalInPresentation:1];
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugRadarViewController;
  [(PKTextInputDebugRadarViewController *)&v5 viewDidLoad];
  [(PKTextInputDebugRadarViewController *)self _loadIntendedTexts];
  [(PKTextInputDebugRadarViewController *)self _setupViews];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleKeyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleKeyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugRadarViewController;
  [(PKTextInputDebugRadarViewController *)&v5 viewDidAppear:appear];
  _entriesCollectionView = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView setContentOffset:{0.0, -1.0}];
}

- (void)_loadIntendedTexts
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];

  v5 = [logEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(logEntries);
        }

        resultCommittedText = [*(*(&v14 + 1) + 8 * i) resultCommittedText];
        v10 = resultCommittedText;
        if (resultCommittedText)
        {
          v11 = resultCommittedText;
        }

        else
        {
          v11 = &stru_1F476BD20;
        }

        v12 = v11;

        _intendedTexts = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
        [_intendedTexts addObject:v12];
      }

      v6 = [logEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_setupViews
{
  v204[3] = *MEMORY[0x1E69E9840];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PKTextInputDebugRadarViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v200 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  navigationItem = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v200];

  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Create Radar" value:@"Create Radar" table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel__handleSubmitRadarButton_];
  [(PKTextInputDebugRadarViewController *)self set_submitButton:v11];

  _submitButton = [(PKTextInputDebugRadarViewController *)self _submitButton];
  navigationItem2 = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:_submitButton];

  v14 = _PencilKitBundle();
  v15 = [v14 localizedStringForKey:@"Report a Problem with Scribble" value:@"Report a Problem with Scribble" table:@"Localizable"];
  navigationItem3 = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [navigationItem3 setTitle:v15];

  v17 = objc_alloc(MEMORY[0x1E69DCC10]);
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  v202 = [v17 initWithFrame:{*MEMORY[0x1E695F058], v19, v20, v21}];
  v22 = _PencilKitBundle();
  v23 = [v22 localizedStringForKey:@"Surrounding text to include:" value:@"Surrounding text to include:" table:@"Localizable"];
  [v202 setText:v23];

  [v202 setFont:v5];
  [v202 setTextColor:secondaryLabelColor];
  [v202 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v202 setAdjustsFontSizeToFitWidth:1];
  [v202 setMinimumScaleFactor:0.7];
  [v202 setLineBreakMode:4];
  v24 = _PencilKitBundle();
  v25 = [v24 localizedStringForKey:@"None" value:@"None" table:@"Localizable"];
  v204[0] = v25;
  v26 = _PencilKitBundle();
  v27 = [v26 localizedStringForKey:@"Minimal" value:@"Minimal" table:@"Localizable"];
  v204[1] = v27;
  v28 = _PencilKitBundle();
  v29 = [v28 localizedStringForKey:@"Full" value:@"Full" table:@"Localizable"];
  v204[2] = v29;
  v199 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:3];

  v30 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v199];
  [(PKTextInputDebugRadarViewController *)self set_contextDetailControl:v30];

  _contextDetailControl = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [_contextDetailControl setSelectedSegmentIndex:2];

  _contextDetailControl2 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [_contextDetailControl2 addTarget:self action:sel__handleDetailControlChanged_ forControlEvents:4096];

  _contextDetailControl3 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [_contextDetailControl3 setTranslatesAutoresizingMaskIntoConstraints:0];

  _contextDetailControl4 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  LODWORD(v35) = 1148846080;
  [_contextDetailControl4 setContentCompressionResistancePriority:0 forAxis:v35];

  v201 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  v36 = _PencilKitBundle();
  v37 = [v36 localizedStringForKey:@"Include Sysdiagnose:" value:@"Include Sysdiagnose:" table:@"Localizable"];
  [v201 setText:v37];

  v195 = v5;
  [v201 setFont:v5];
  v194 = secondaryLabelColor;
  [v201 setTextColor:secondaryLabelColor];
  [v201 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v201 setAdjustsFontSizeToFitWidth:1];
  [v201 setMinimumScaleFactor:0.7];
  [v201 setLineBreakMode:4];
  v38 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(PKTextInputDebugRadarViewController *)self set_sysdiagnoseButton:v38];

  _sysdiagnoseButton = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  _sysdiagnoseButton2 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  titleLabel = [_sysdiagnoseButton2 titleLabel];
  [titleLabel setFont:v40];

  _sysdiagnoseButton3 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  layer = [_sysdiagnoseButton3 layer];
  [layer setBorderWidth:1.0];

  _sysdiagnoseButton4 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  layer2 = [_sysdiagnoseButton4 layer];
  [layer2 setCornerRadius:12.0];

  _sysdiagnoseButton5 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton5 setContentEdgeInsets:{4.5, 10.0, 4.5, 9.0}];

  _sysdiagnoseButton6 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton6 setImageEdgeInsets:{0.0, -5.0, 0.0, 0.0}];

  _sysdiagnoseButton7 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton7 setTitleEdgeInsets:{0.0, 1.0, 0.0, -1.0}];

  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  _sysdiagnoseButton8 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton8 setBackgroundColor:systemBackgroundColor2];

  _sysdiagnoseButton9 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  LODWORD(v53) = 1148846080;
  [_sysdiagnoseButton9 setContentHuggingPriority:0 forAxis:v53];

  _sysdiagnoseButton10 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  LODWORD(v55) = 1148846080;
  [_sysdiagnoseButton10 setContentCompressionResistancePriority:0 forAxis:v55];

  _sysdiagnoseButton11 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v57 = _PencilKitBundle();
  v58 = [v57 localizedStringForKey:@"Excluded" value:@"Excluded" table:@"Localizable"];
  [_sysdiagnoseButton11 setTitle:v58 forState:0];

  _sysdiagnoseButton12 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v60 = _PencilKitBundle();
  v61 = [v60 localizedStringForKey:@"Included" value:@"Included" table:@"Localizable"];
  [_sysdiagnoseButton12 setTitle:v61 forState:4];

  v62 = MEMORY[0x1E69DCAD8];
  _sysdiagnoseButton13 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  titleLabel2 = [_sysdiagnoseButton13 titleLabel];
  font = [titleLabel2 font];
  v66 = [v62 configurationWithFont:font];

  v198 = v66;
  v197 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v66];
  v196 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v66];
  _sysdiagnoseButton14 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton14 setImage:v197 forState:0];

  _sysdiagnoseButton15 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton15 setImage:v196 forState:4];

  _sysdiagnoseButton16 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [_sysdiagnoseButton16 setTitleColor:systemGrayColor forState:0];

  _sysdiagnoseButton17 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [_sysdiagnoseButton17 setTitleColor:systemBlueColor forState:4];

  _sysdiagnoseButton18 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [_sysdiagnoseButton18 addTarget:self action:sel__toggleSysdiagnoseButton forControlEvents:64];

  v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v74 setBackgroundColor:separatorColor];

  v76 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  v77 = _PencilKitBundle();
  v78 = [v77 localizedStringForKey:@"Specify the text you intended to write:" value:@"Specify the text you intended to write:" table:@"Localizable"];
  [v76 setText:v78];

  [v76 setFont:v5];
  [v76 setTextColor:secondaryLabelColor];
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v79 = MEMORY[0x1E6995588];
  v80 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v81 = [MEMORY[0x1E6995558] estimatedDimension:80.0];
  v82 = [v79 sizeWithWidthDimension:v80 heightDimension:v81];

  v193 = v82;
  v192 = [MEMORY[0x1E6995578] itemWithLayoutSize:v82];
  v191 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v82 subitem:v192 count:1];
  [v191 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  v190 = [MEMORY[0x1E6995580] sectionWithGroup:v191];
  v189 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSection:v190];
  v83 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v189 collectionViewLayout:{v18, v19, v20, v21}];
  [(PKTextInputDebugRadarViewController *)self set_entriesCollectionView:v83];

  _entriesCollectionView = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView setDataSource:self];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  _entriesCollectionView2 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView2 setBackgroundColor:clearColor];

  _entriesCollectionView3 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView3 setAlwaysBounceVertical:1];

  _entriesCollectionView4 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"logEntry"];

  _entriesCollectionView5 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [_entriesCollectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(PKTextInputDebugRadarViewController *)self view];
  [view2 addSubview:v202];

  view3 = [(PKTextInputDebugRadarViewController *)self view];
  _contextDetailControl5 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [view3 addSubview:_contextDetailControl5];

  view4 = [(PKTextInputDebugRadarViewController *)self view];
  [view4 addSubview:v201];

  view5 = [(PKTextInputDebugRadarViewController *)self view];
  _sysdiagnoseButton19 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [view5 addSubview:_sysdiagnoseButton19];

  view6 = [(PKTextInputDebugRadarViewController *)self view];
  [view6 addSubview:v74];

  view7 = [(PKTextInputDebugRadarViewController *)self view];
  [view7 addSubview:v76];

  view8 = [(PKTextInputDebugRadarViewController *)self view];
  _entriesCollectionView6 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [view8 addSubview:_entriesCollectionView6];

  [(PKTextInputDebugRadarViewController *)self _updateSubmitButton];
  [(PKTextInputDebugRadarViewController *)self _updateScrollView];
  [(PKTextInputDebugRadarViewController *)self set_includeSysdiagnose:1];
  [(PKTextInputDebugRadarViewController *)self _updateSysdiagnoseButton];
  view9 = [(PKTextInputDebugRadarViewController *)self view];
  layoutMarginsGuide = [view9 layoutMarginsGuide];

  v154 = MEMORY[0x1E696ACD8];
  _contextDetailControl6 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  topAnchor = [_contextDetailControl6 topAnchor];
  v143 = layoutMarginsGuide;
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v185 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  v203[0] = v185;
  _contextDetailControl7 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  trailingAnchor = [_contextDetailControl7 trailingAnchor];
  view10 = [(PKTextInputDebugRadarViewController *)self view];
  trailingAnchor2 = [view10 trailingAnchor];
  v180 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v203[1] = v180;
  centerYAnchor = [v202 centerYAnchor];
  _contextDetailControl8 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  centerYAnchor2 = [_contextDetailControl8 centerYAnchor];
  v176 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v203[2] = v176;
  leadingAnchor = [v202 leadingAnchor];
  view11 = [(PKTextInputDebugRadarViewController *)self view];
  leadingAnchor2 = [view11 leadingAnchor];
  v172 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v203[3] = v172;
  trailingAnchor3 = [v202 trailingAnchor];
  _contextDetailControl9 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  leadingAnchor3 = [_contextDetailControl9 leadingAnchor];
  v168 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3];
  v203[4] = v168;
  _sysdiagnoseButton20 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  topAnchor3 = [_sysdiagnoseButton20 topAnchor];
  _contextDetailControl10 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  bottomAnchor = [_contextDetailControl10 bottomAnchor];
  v163 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  v203[5] = v163;
  _sysdiagnoseButton21 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  trailingAnchor4 = [_sysdiagnoseButton21 trailingAnchor];
  view12 = [(PKTextInputDebugRadarViewController *)self view];
  trailingAnchor5 = [view12 trailingAnchor];
  v158 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
  v203[6] = v158;
  centerYAnchor3 = [v201 centerYAnchor];
  _sysdiagnoseButton22 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  centerYAnchor4 = [_sysdiagnoseButton22 centerYAnchor];
  v152 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v203[7] = v152;
  leadingAnchor4 = [v201 leadingAnchor];
  view13 = [(PKTextInputDebugRadarViewController *)self view];
  leadingAnchor5 = [view13 leadingAnchor];
  v147 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:20.0];
  v203[8] = v147;
  trailingAnchor6 = [v201 trailingAnchor];
  _sysdiagnoseButton23 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  leadingAnchor6 = [_sysdiagnoseButton23 leadingAnchor];
  v142 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor6];
  v203[9] = v142;
  topAnchor4 = [v74 topAnchor];
  _sysdiagnoseButton24 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  bottomAnchor2 = [_sysdiagnoseButton24 bottomAnchor];
  v138 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:12.0];
  v203[10] = v138;
  heightAnchor = [v74 heightAnchor];
  v136 = [heightAnchor constraintEqualToConstant:1.0];
  v203[11] = v136;
  leadingAnchor7 = [v74 leadingAnchor];
  view14 = [(PKTextInputDebugRadarViewController *)self view];
  leadingAnchor8 = [view14 leadingAnchor];
  v132 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:20.0];
  v203[12] = v132;
  v157 = v74;
  trailingAnchor7 = [v74 trailingAnchor];
  view15 = [(PKTextInputDebugRadarViewController *)self view];
  trailingAnchor8 = [view15 trailingAnchor];
  v128 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v203[13] = v128;
  topAnchor5 = [v76 topAnchor];
  bottomAnchor3 = [v74 bottomAnchor];
  v125 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:12.0];
  v203[14] = v125;
  v149 = v76;
  leadingAnchor9 = [v76 leadingAnchor];
  view16 = [(PKTextInputDebugRadarViewController *)self view];
  leadingAnchor10 = [view16 leadingAnchor];
  v121 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:20.0];
  v203[15] = v121;
  _entriesCollectionView7 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  topAnchor6 = [_entriesCollectionView7 topAnchor];
  bottomAnchor4 = [v76 bottomAnchor];
  v117 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:12.0];
  v203[16] = v117;
  _entriesCollectionView8 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  bottomAnchor5 = [_entriesCollectionView8 bottomAnchor];
  bottomAnchor6 = [layoutMarginsGuide bottomAnchor];
  v113 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v203[17] = v113;
  _entriesCollectionView9 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  leadingAnchor11 = [_entriesCollectionView9 leadingAnchor];
  view17 = [(PKTextInputDebugRadarViewController *)self view];
  leadingAnchor12 = [view17 leadingAnchor];
  v105 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v203[18] = v105;
  _entriesCollectionView10 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  trailingAnchor9 = [_entriesCollectionView10 trailingAnchor];
  view18 = [(PKTextInputDebugRadarViewController *)self view];
  trailingAnchor10 = [view18 trailingAnchor];
  v110 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v203[19] = v110;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:20];
  [v154 activateConstraints:v111];
}

- (void)_updateSubmitButton
{
  _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  v4 = [_includedEntryIndexes count] != 0;

  _submitButton = [(PKTextInputDebugRadarViewController *)self _submitButton];
  [_submitButton setEnabled:v4];
}

- (void)_updateScrollView
{
  [(PKTextInputDebugRadarViewController *)self _keyboardVerticalOverlap];
  entriesCollectionView = self->__entriesCollectionView;

  [(UICollectionView *)entriesCollectionView setContentInset:0.0, 0.0, v3, 0.0];
}

- (void)_toggleSysdiagnoseButton
{
  [(PKTextInputDebugRadarViewController *)self set_includeSysdiagnose:[(PKTextInputDebugRadarViewController *)self _includeSysdiagnose]^ 1];

  [(PKTextInputDebugRadarViewController *)self _updateSysdiagnoseButton];
}

- (void)_updateSysdiagnoseButton
{
  _sysdiagnoseButton = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  if ([(PKTextInputDebugRadarViewController *)self _includeSysdiagnose])
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [_sysdiagnoseButton setTintColor:systemBlueColor];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [_sysdiagnoseButton setTintColor:systemGrayColor];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v5 = ;
  cGColor = [v5 CGColor];
  layer = [_sysdiagnoseButton layer];
  [layer setBorderColor:cGColor];

  [_sysdiagnoseButton setSelected:{-[PKTextInputDebugRadarViewController _includeSysdiagnose](self, "_includeSysdiagnose")}];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PKTextInputDebugRadarViewController *)self sharpenerLog:view];
  logEntries = [v4 logEntries];
  v6 = [logEntries count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"logEntry" forIndexPath:pathCopy];
  [(PKTextInputDebugRadarViewController *)self _configureCell:v7 atIndexPath:pathCopy];

  return v7;
}

- (void)_configureCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  item = [path item];
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];
  v14 = [logEntries objectAtIndexedSubscript:item];

  _selectedContentLevel = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  [cellCopy setDelegate:self];
  [cellCopy setEntryIndex:item];
  [cellCopy setLogEntry:v14 contentLevel:_selectedContentLevel];
  _intendedTexts = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
  v12 = [_intendedTexts objectAtIndexedSubscript:item];
  [cellCopy setIntendedText:v12];

  _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  [cellCopy setIncludedEntry:{objc_msgSend(_includedEntryIndexes, "containsIndex:", item)}];
}

- (void)entryCellIncludedEntryDidChange:(id)change
{
  changeCopy = change;
  includedEntry = [changeCopy includedEntry];
  _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  entryIndex = [changeCopy entryIndex];

  if (includedEntry)
  {
    [_includedEntryIndexes addIndex:entryIndex];
  }

  else
  {
    [_includedEntryIndexes removeIndex:entryIndex];
  }

  [(PKTextInputDebugRadarViewController *)self _updateSubmitButton];
}

- (void)entryCellIntendedTextDidChange:(id)change
{
  changeCopy = change;
  intendedText = [changeCopy intendedText];
  v6 = intendedText;
  v7 = &stru_1F476BD20;
  if (intendedText)
  {
    v7 = intendedText;
  }

  v8 = v7;

  _intendedTexts = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
  entryIndex = [changeCopy entryIndex];

  [_intendedTexts setObject:v8 atIndexedSubscript:entryIndex];
}

- (int64_t)_selectedContentLevel
{
  _contextDetailControl = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  selectedSegmentIndex = [_contextDetailControl selectedSegmentIndex];

  if (selectedSegmentIndex == 2)
  {
    return 2;
  }

  else
  {
    return selectedSegmentIndex == 1;
  }
}

- (void)_setKeyboardVerticalOverlap:(double)overlap
{
  if (self->__keyboardVerticalOverlap != overlap)
  {
    self->__keyboardVerticalOverlap = overlap;
    [(PKTextInputDebugRadarViewController *)self _updateScrollView];
  }
}

- (void)_handleDetailControlChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView:changed];
  indexPathsForVisibleItems = [v4 indexPathsForVisibleItems];

  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        _entriesCollectionView = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
        v12 = [_entriesCollectionView cellForItemAtIndexPath:v10];

        [(PKTextInputDebugRadarViewController *)self _configureCell:v12 atIndexPath:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_handleSubmitRadarButton:(id)button
{
  _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  v5 = [_includedEntryIndexes count];

  if (v5)
  {

    [(PKTextInputDebugRadarViewController *)self _launchTTRAndDismiss];
  }
}

- (void)_handleKeyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFC8]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    view = [(PKTextInputDebugRadarViewController *)self view];
    view2 = [(PKTextInputDebugRadarViewController *)self view];
    window = [view2 window];
    [view convertRect:window fromView:{v8, v10, v12, v14}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    _entriesCollectionView = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
    [_entriesCollectionView frame];
    v36.origin.x = v27;
    v36.origin.y = v28;
    v36.size.width = v29;
    v36.size.height = v30;
    v34.origin.x = v19;
    v34.origin.y = v21;
    v34.size.width = v23;
    v34.size.height = v25;
    v35 = CGRectIntersection(v34, v36);
    height = v35.size.height;

    if (height > 0.0)
    {
      [(PKTextInputDebugRadarViewController *)self _setKeyboardVerticalOverlap:height];
    }
  }
}

- (id)_deviceString
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_buildString
{
  v2 = _CFCopySystemVersionDictionaryValue();

  return v2;
}

- (id)_accumulatedLogEntryTextsForRadar
{
  _selectedContentLevel = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  v4 = MEMORY[0x1E695DF70];
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];
  v7 = [v4 arrayWithCapacity:{objc_msgSend(logEntries, "count")}];

  sharpenerLog2 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries2 = [sharpenerLog2 logEntries];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKTextInputDebugRadarViewController__accumulatedLogEntryTextsForRadar__block_invoke;
  v13[3] = &unk_1E82DC828;
  v14 = v7;
  v15 = _selectedContentLevel;
  v13[4] = self;
  v10 = v7;
  [logEntries2 enumerateObjectsUsingBlock:v13];

  v11 = [v10 componentsJoinedByString:@"\n"];

  return v11;
}

void __72__PKTextInputDebugRadarViewController__accumulatedLogEntryTextsForRadar__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = [*(a1 + 32) _includedEntryIndexes];
  v6 = [v5 containsIndex:a3];

  if (v6)
  {
    v7 = [v16 referenceSubstringWithTargetContentLevel:*(a1 + 48)];
    v8 = v7;
    v9 = &stru_1F476BD20;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [*(a1 + 32) _intendedTexts];
    v12 = [v11 objectAtIndexedSubscript:a3];

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v16 resultCommittedText];
    v15 = [v13 stringWithFormat:@"context: %@ result: %@; intended: %@", v10, v14, v12];;

    [*(a1 + 40) addObject:v15];
  }
}

- (id)_loggedMainLocaleDescription
{
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];
  lastObject = [logEntries lastObject];

  recognitionLocaleIdentifiers = [lastObject recognitionLocaleIdentifiers];
  firstObject = [recognitionLocaleIdentifiers firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = @"no locale";
  }

  v9 = v8;

  return v8;
}

- (id)_logEntryTextForRadarTitle
{
  v41 = *MEMORY[0x1E69E9840];
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];
  v5 = [logEntries count];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  sharpenerLog2 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries2 = [sharpenerLog2 logEntries];

  v8 = [(__CFString *)logEntries2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  v9 = &stru_1F476BD20;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_27;
  }

  v10 = 0;
  v35 = 0;
  v11 = 0;
  v12 = *v37;
  v33 = v5 - 1;
  do
  {
    v13 = 0;
    v34 = v8;
    do
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(logEntries2);
      }

      v14 = *(*(&v36 + 1) + 8 * v13);
      _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
      v16 = [_includedEntryIndexes containsIndex:v10];

      if (v16)
      {
        v17 = logEntries2;
        _intendedTexts = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
        v19 = [_intendedTexts objectAtIndexedSubscript:v10];

        resultCommittedText = [v14 resultCommittedText];
        v21 = resultCommittedText;
        v22 = &stru_1F476BD20;
        if (resultCommittedText)
        {
          v22 = resultCommittedText;
        }

        v23 = v22;

        if ([v19 isEqualToString:v23])
        {
          if (!v11)
          {
            if (v33 == v10)
            {
              goto LABEL_12;
            }

            v11 = 0;
          }
        }

        else
        {
LABEL_12:
          v24 = v14;

          v25 = v19;
          v35 = v25;
          v11 = v24;
        }

        logEntries2 = v17;
        v8 = v34;
      }

      ++v10;
      v13 = v13 + 1;
    }

    while (v8 != v13);
    v26 = [(__CFString *)logEntries2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    v8 = v26;
  }

  while (v26);

  v9 = &stru_1F476BD20;
  if (v11)
  {
    v8 = v35;
    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = &stru_1F476BD20;
    }

    logEntries2 = v27;
    resultCommittedText2 = [v11 resultCommittedText];
    v29 = resultCommittedText2;
    if (resultCommittedText2)
    {
      v30 = resultCommittedText2;
    }

    else
    {
      v30 = &stru_1F476BD20;
    }

    v31 = v30;

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected: %@, Result: %@", logEntries2, v31];

LABEL_27:
  }

  else
  {
    v8 = v35;
  }

  return v9;
}

- (id)_generateLaunchURLWithLogFilename:(id)filename
{
  filenameCopy = filename;
  _deviceString = [(PKTextInputDebugRadarViewController *)self _deviceString];
  _buildString = [(PKTextInputDebugRadarViewController *)self _buildString];
  _accumulatedLogEntryTextsForRadar = [(PKTextInputDebugRadarViewController *)self _accumulatedLogEntryTextsForRadar];
  _loggedMainLocaleDescription = [(PKTextInputDebugRadarViewController *)self _loggedMainLocaleDescription];
  _logEntryTextForRadarTitle = [(PKTextInputDebugRadarViewController *)self _logEntryTextForRadarTitle];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Intended Text:\n\n%@\n\n\nAdditional comments:\n\n", _accumulatedLogEntryTextsForRadar];
  uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v22 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

  path = [filenameCopy path];

  uRLHostAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v12 = [path stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet2];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@: [PencilSharpener] %@ (%@)", _deviceString, _buildString, _logEntryTextForRadarTitle, _loggedMainLocaleDescription];
  uRLHostAllowedCharacterSet3 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet3];

  v16 = MEMORY[0x1E696AEC0];
  _includeSysdiagnose = [(PKTextInputDebugRadarViewController *)self _includeSysdiagnose];
  v18 = @"0";
  if (_includeSysdiagnose)
  {
    v18 = @"sysdiagnose-only";
  }

  v19 = [v16 stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&ComponentName=Scribble&ComponentVersion=iOS&ComponentID=1022969&Classification=Other%%20Bug&Reproducibility=Not%%20Applicable&AutoDiagnostics=%@&Attachments=%@", v15, v22, v18, v12];
  v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];

  return v20;
}

- (void)_launchTTRAndDismiss
{
  v3 = MEMORY[0x1E696AD50];
  sharpenerLog = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  logEntries = [sharpenerLog logEntries];
  v6 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(logEntries, "count")}];

  _includedEntryIndexes = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  [v6 removeIndexes:_includedEntryIndexes];

  _selectedContentLevel = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  sharpenerLog2 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v10 = [sharpenerLog2 writeLogToTemporaryDirectoryWithContentLevel:_selectedContentLevel excludeEntyIndexes:v6 error:0];

  v11 = [(PKTextInputDebugRadarViewController *)self _generateLaunchURLWithLogFilename:v10];
  view = [(PKTextInputDebugRadarViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKTextInputDebugRadarViewController__launchTTRAndDismiss__block_invoke;
  v16[3] = &unk_1E82DC850;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [windowScene openURL:v11 options:0 completionHandler:v16];
}

void __59__PKTextInputDebugRadarViewController__launchTTRAndDismiss__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _dismiss];
  v2 = dispatch_time(0, 300000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKTextInputDebugRadarViewController__launchTTRAndDismiss__block_invoke_2;
  block[3] = &unk_1E82D7148;
  v4 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __59__PKTextInputDebugRadarViewController__launchTTRAndDismiss__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v7 = 0;
  [v2 removeItemAtURL:v3 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Couldn't cleanup PencilSharpener log at %@; error = %@", buf, 0x16u);
    }
  }
}

- (void)_dismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__PKTextInputDebugRadarViewController__dismiss__block_invoke;
  v2[3] = &unk_1E82D7148;
  v2[4] = self;
  [(PKTextInputDebugRadarViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __47__PKTextInputDebugRadarViewController__dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 debugRadarViewControllerDidDismiss:*(a1 + 32)];
}

- (PKTextInputDebugRadarViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end