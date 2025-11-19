@interface PKTextInputDebugRadarViewController
- (PKTextInputDebugRadarViewController)initWithSharpenerLog:(id)a3;
- (PKTextInputDebugRadarViewControllerDelegate)delegate;
- (id)_accumulatedLogEntryTextsForRadar;
- (id)_buildString;
- (id)_deviceString;
- (id)_generateLaunchURLWithLogFilename:(id)a3;
- (id)_logEntryTextForRadarTitle;
- (id)_loggedMainLocaleDescription;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_selectedContentLevel;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4;
- (void)_dismiss;
- (void)_handleDetailControlChanged:(id)a3;
- (void)_handleKeyboardWillShow:(id)a3;
- (void)_handleSubmitRadarButton:(id)a3;
- (void)_launchTTRAndDismiss;
- (void)_loadIntendedTexts;
- (void)_setKeyboardVerticalOverlap:(double)a3;
- (void)_setupViews;
- (void)_toggleSysdiagnoseButton;
- (void)_updateScrollView;
- (void)_updateSubmitButton;
- (void)_updateSysdiagnoseButton;
- (void)entryCellIncludedEntryDidChange:(id)a3;
- (void)entryCellIntendedTextDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKTextInputDebugRadarViewController

- (PKTextInputDebugRadarViewController)initWithSharpenerLog:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PKTextInputDebugRadarViewController;
  v6 = [(PKTextInputDebugRadarViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharpenerLog, a3);
    v8 = [v5 logEntries];
    v9 = [v8 count];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleKeyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__handleKeyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKTextInputDebugRadarViewController;
  [(PKTextInputDebugRadarViewController *)&v5 viewDidAppear:a3];
  v4 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v4 setContentOffset:{0.0, -1.0}];
}

- (void)_loadIntendedTexts
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v4 = [v3 logEntries];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) resultCommittedText];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_1F476BD20;
        }

        v12 = v11;

        v13 = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
        [v13 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_setupViews
{
  v204[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(PKTextInputDebugRadarViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v200 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v7 = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v200];

  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = _PencilKitBundle();
  v10 = [v9 localizedStringForKey:@"Create Radar" value:@"Create Radar" table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:2 target:self action:sel__handleSubmitRadarButton_];
  [(PKTextInputDebugRadarViewController *)self set_submitButton:v11];

  v12 = [(PKTextInputDebugRadarViewController *)self _submitButton];
  v13 = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = _PencilKitBundle();
  v15 = [v14 localizedStringForKey:@"Report a Problem with Scribble" value:@"Report a Problem with Scribble" table:@"Localizable"];
  v16 = [(PKTextInputDebugRadarViewController *)self navigationItem];
  [v16 setTitle:v15];

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
  [v202 setTextColor:v6];
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

  v31 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [v31 setSelectedSegmentIndex:2];

  v32 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [v32 addTarget:self action:sel__handleDetailControlChanged_ forControlEvents:4096];

  v33 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  LODWORD(v35) = 1148846080;
  [v34 setContentCompressionResistancePriority:0 forAxis:v35];

  v201 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  v36 = _PencilKitBundle();
  v37 = [v36 localizedStringForKey:@"Include Sysdiagnose:" value:@"Include Sysdiagnose:" table:@"Localizable"];
  [v201 setText:v37];

  v195 = v5;
  [v201 setFont:v5];
  v194 = v6;
  [v201 setTextColor:v6];
  [v201 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v201 setAdjustsFontSizeToFitWidth:1];
  [v201 setMinimumScaleFactor:0.7];
  [v201 setLineBreakMode:4];
  v38 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(PKTextInputDebugRadarViewController *)self set_sysdiagnoseButton:v38];

  v39 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v41 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v42 = [v41 titleLabel];
  [v42 setFont:v40];

  v43 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v44 = [v43 layer];
  [v44 setBorderWidth:1.0];

  v45 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v46 = [v45 layer];
  [v46 setCornerRadius:12.0];

  v47 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v47 setContentEdgeInsets:{4.5, 10.0, 4.5, 9.0}];

  v48 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v48 setImageEdgeInsets:{0.0, -5.0, 0.0, 0.0}];

  v49 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v49 setTitleEdgeInsets:{0.0, 1.0, 0.0, -1.0}];

  v50 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v51 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v51 setBackgroundColor:v50];

  v52 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  LODWORD(v53) = 1148846080;
  [v52 setContentHuggingPriority:0 forAxis:v53];

  v54 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  LODWORD(v55) = 1148846080;
  [v54 setContentCompressionResistancePriority:0 forAxis:v55];

  v56 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v57 = _PencilKitBundle();
  v58 = [v57 localizedStringForKey:@"Excluded" value:@"Excluded" table:@"Localizable"];
  [v56 setTitle:v58 forState:0];

  v59 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v60 = _PencilKitBundle();
  v61 = [v60 localizedStringForKey:@"Included" value:@"Included" table:@"Localizable"];
  [v59 setTitle:v61 forState:4];

  v62 = MEMORY[0x1E69DCAD8];
  v63 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v64 = [v63 titleLabel];
  v65 = [v64 font];
  v66 = [v62 configurationWithFont:v65];

  v198 = v66;
  v197 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v66];
  v196 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v66];
  v67 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v67 setImage:v197 forState:0];

  v68 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v68 setImage:v196 forState:4];

  v69 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v70 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v69 setTitleColor:v70 forState:0];

  v71 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v72 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v71 setTitleColor:v72 forState:4];

  v73 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v73 addTarget:self action:sel__toggleSysdiagnoseButton forControlEvents:64];

  v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = [MEMORY[0x1E69DC888] separatorColor];
  [v74 setBackgroundColor:v75];

  v76 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  v77 = _PencilKitBundle();
  v78 = [v77 localizedStringForKey:@"Specify the text you intended to write:" value:@"Specify the text you intended to write:" table:@"Localizable"];
  [v76 setText:v78];

  [v76 setFont:v5];
  [v76 setTextColor:v6];
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

  v84 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v84 setDataSource:self];

  v85 = [MEMORY[0x1E69DC888] clearColor];
  v86 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v86 setBackgroundColor:v85];

  v87 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v87 setAlwaysBounceVertical:1];

  v88 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v88 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"logEntry"];

  v89 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v89 setTranslatesAutoresizingMaskIntoConstraints:0];

  v90 = [(PKTextInputDebugRadarViewController *)self view];
  [v90 addSubview:v202];

  v91 = [(PKTextInputDebugRadarViewController *)self view];
  v92 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  [v91 addSubview:v92];

  v93 = [(PKTextInputDebugRadarViewController *)self view];
  [v93 addSubview:v201];

  v94 = [(PKTextInputDebugRadarViewController *)self view];
  v95 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  [v94 addSubview:v95];

  v96 = [(PKTextInputDebugRadarViewController *)self view];
  [v96 addSubview:v74];

  v97 = [(PKTextInputDebugRadarViewController *)self view];
  [v97 addSubview:v76];

  v98 = [(PKTextInputDebugRadarViewController *)self view];
  v99 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  [v98 addSubview:v99];

  [(PKTextInputDebugRadarViewController *)self _updateSubmitButton];
  [(PKTextInputDebugRadarViewController *)self _updateScrollView];
  [(PKTextInputDebugRadarViewController *)self set_includeSysdiagnose:1];
  [(PKTextInputDebugRadarViewController *)self _updateSysdiagnoseButton];
  v100 = [(PKTextInputDebugRadarViewController *)self view];
  v101 = [v100 layoutMarginsGuide];

  v154 = MEMORY[0x1E696ACD8];
  v188 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v187 = [v188 topAnchor];
  v143 = v101;
  v186 = [v101 topAnchor];
  v185 = [v187 constraintEqualToAnchor:v186 constant:12.0];
  v203[0] = v185;
  v184 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v182 = [v184 trailingAnchor];
  v183 = [(PKTextInputDebugRadarViewController *)self view];
  v181 = [v183 trailingAnchor];
  v180 = [v182 constraintEqualToAnchor:v181 constant:-20.0];
  v203[1] = v180;
  v178 = [v202 centerYAnchor];
  v179 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v177 = [v179 centerYAnchor];
  v176 = [v178 constraintEqualToAnchor:v177];
  v203[2] = v176;
  v174 = [v202 leadingAnchor];
  v175 = [(PKTextInputDebugRadarViewController *)self view];
  v173 = [v175 leadingAnchor];
  v172 = [v174 constraintEqualToAnchor:v173 constant:20.0];
  v203[3] = v172;
  v170 = [v202 trailingAnchor];
  v171 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v169 = [v171 leadingAnchor];
  v168 = [v170 constraintLessThanOrEqualToAnchor:v169];
  v203[4] = v168;
  v167 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v165 = [v167 topAnchor];
  v166 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v164 = [v166 bottomAnchor];
  v163 = [v165 constraintEqualToAnchor:v164 constant:12.0];
  v203[5] = v163;
  v162 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v160 = [v162 trailingAnchor];
  v161 = [(PKTextInputDebugRadarViewController *)self view];
  v159 = [v161 trailingAnchor];
  v158 = [v160 constraintEqualToAnchor:v159 constant:-20.0];
  v203[6] = v158;
  v155 = [v201 centerYAnchor];
  v156 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v153 = [v156 centerYAnchor];
  v152 = [v155 constraintEqualToAnchor:v153];
  v203[7] = v152;
  v150 = [v201 leadingAnchor];
  v151 = [(PKTextInputDebugRadarViewController *)self view];
  v148 = [v151 leadingAnchor];
  v147 = [v150 constraintEqualToAnchor:v148 constant:20.0];
  v203[8] = v147;
  v145 = [v201 trailingAnchor];
  v146 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v144 = [v146 leadingAnchor];
  v142 = [v145 constraintLessThanOrEqualToAnchor:v144];
  v203[9] = v142;
  v140 = [v74 topAnchor];
  v141 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  v139 = [v141 bottomAnchor];
  v138 = [v140 constraintEqualToAnchor:v139 constant:12.0];
  v203[10] = v138;
  v137 = [v74 heightAnchor];
  v136 = [v137 constraintEqualToConstant:1.0];
  v203[11] = v136;
  v134 = [v74 leadingAnchor];
  v135 = [(PKTextInputDebugRadarViewController *)self view];
  v133 = [v135 leadingAnchor];
  v132 = [v134 constraintEqualToAnchor:v133 constant:20.0];
  v203[12] = v132;
  v157 = v74;
  v130 = [v74 trailingAnchor];
  v131 = [(PKTextInputDebugRadarViewController *)self view];
  v129 = [v131 trailingAnchor];
  v128 = [v130 constraintEqualToAnchor:v129];
  v203[13] = v128;
  v127 = [v76 topAnchor];
  v126 = [v74 bottomAnchor];
  v125 = [v127 constraintEqualToAnchor:v126 constant:12.0];
  v203[14] = v125;
  v149 = v76;
  v123 = [v76 leadingAnchor];
  v124 = [(PKTextInputDebugRadarViewController *)self view];
  v122 = [v124 leadingAnchor];
  v121 = [v123 constraintEqualToAnchor:v122 constant:20.0];
  v203[15] = v121;
  v120 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  v119 = [v120 topAnchor];
  v118 = [v76 bottomAnchor];
  v117 = [v119 constraintEqualToAnchor:v118 constant:12.0];
  v203[16] = v117;
  v116 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  v115 = [v116 bottomAnchor];
  v114 = [v101 bottomAnchor];
  v113 = [v115 constraintEqualToAnchor:v114];
  v203[17] = v113;
  v112 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  v102 = [v112 leadingAnchor];
  v103 = [(PKTextInputDebugRadarViewController *)self view];
  v104 = [v103 leadingAnchor];
  v105 = [v102 constraintEqualToAnchor:v104];
  v203[18] = v105;
  v106 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
  v107 = [v106 trailingAnchor];
  v108 = [(PKTextInputDebugRadarViewController *)self view];
  v109 = [v108 trailingAnchor];
  v110 = [v107 constraintEqualToAnchor:v109];
  v203[19] = v110;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:20];
  [v154 activateConstraints:v111];
}

- (void)_updateSubmitButton
{
  v3 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  v4 = [v3 count] != 0;

  v5 = [(PKTextInputDebugRadarViewController *)self _submitButton];
  [v5 setEnabled:v4];
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
  v8 = [(PKTextInputDebugRadarViewController *)self _sysdiagnoseButton];
  if ([(PKTextInputDebugRadarViewController *)self _includeSysdiagnose])
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v8 setTintColor:v3];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] systemGrayColor];
    [v8 setTintColor:v4];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v5 = ;
  v6 = [v5 CGColor];
  v7 = [v8 layer];
  [v7 setBorderColor:v6];

  [v8 setSelected:{-[PKTextInputDebugRadarViewController _includeSysdiagnose](self, "_includeSysdiagnose")}];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PKTextInputDebugRadarViewController *)self sharpenerLog:a3];
  v5 = [v4 logEntries];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"logEntry" forIndexPath:v6];
  [(PKTextInputDebugRadarViewController *)self _configureCell:v7 atIndexPath:v6];

  return v7;
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 item];
  v8 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v9 = [v8 logEntries];
  v14 = [v9 objectAtIndexedSubscript:v7];

  v10 = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  [v6 setDelegate:self];
  [v6 setEntryIndex:v7];
  [v6 setLogEntry:v14 contentLevel:v10];
  v11 = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
  v12 = [v11 objectAtIndexedSubscript:v7];
  [v6 setIntendedText:v12];

  v13 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  [v6 setIncludedEntry:{objc_msgSend(v13, "containsIndex:", v7)}];
}

- (void)entryCellIncludedEntryDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 includedEntry];
  v6 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  v7 = [v4 entryIndex];

  if (v5)
  {
    [v6 addIndex:v7];
  }

  else
  {
    [v6 removeIndex:v7];
  }

  [(PKTextInputDebugRadarViewController *)self _updateSubmitButton];
}

- (void)entryCellIntendedTextDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 intendedText];
  v6 = v5;
  v7 = &stru_1F476BD20;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v10 = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
  v9 = [v4 entryIndex];

  [v10 setObject:v8 atIndexedSubscript:v9];
}

- (int64_t)_selectedContentLevel
{
  v2 = [(PKTextInputDebugRadarViewController *)self _contextDetailControl];
  v3 = [v2 selectedSegmentIndex];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

- (void)_setKeyboardVerticalOverlap:(double)a3
{
  if (self->__keyboardVerticalOverlap != a3)
  {
    self->__keyboardVerticalOverlap = a3;
    [(PKTextInputDebugRadarViewController *)self _updateScrollView];
  }
}

- (void)_handleDetailControlChanged:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView:a3];
  v5 = [v4 indexPathsForVisibleItems];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
        v12 = [v11 cellForItemAtIndexPath:v10];

        [(PKTextInputDebugRadarViewController *)self _configureCell:v12 atIndexPath:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_handleSubmitRadarButton:(id)a3
{
  v4 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  v5 = [v4 count];

  if (v5)
  {

    [(PKTextInputDebugRadarViewController *)self _launchTTRAndDismiss];
  }
}

- (void)_handleKeyboardWillShow:(id)a3
{
  v32 = [a3 userInfo];
  v4 = [v32 objectForKeyedSubscript:*MEMORY[0x1E69DDFC8]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v32 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(PKTextInputDebugRadarViewController *)self view];
    v16 = [(PKTextInputDebugRadarViewController *)self view];
    v17 = [v16 window];
    [v15 convertRect:v17 fromView:{v8, v10, v12, v14}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(PKTextInputDebugRadarViewController *)self _entriesCollectionView];
    [v26 frame];
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
  v3 = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  v4 = MEMORY[0x1E695DF70];
  v5 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v6 = [v5 logEntries];
  v7 = [v4 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v9 = [v8 logEntries];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKTextInputDebugRadarViewController__accumulatedLogEntryTextsForRadar__block_invoke;
  v13[3] = &unk_1E82DC828;
  v14 = v7;
  v15 = v3;
  v13[4] = self;
  v10 = v7;
  [v9 enumerateObjectsUsingBlock:v13];

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
  v2 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v3 = [v2 logEntries];
  v4 = [v3 lastObject];

  v5 = [v4 recognitionLocaleIdentifiers];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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
  v3 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v4 = [v3 logEntries];
  v5 = [v4 count];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v7 = [v6 logEntries];

  v8 = [(__CFString *)v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v36 + 1) + 8 * v13);
      v15 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
      v16 = [v15 containsIndex:v10];

      if (v16)
      {
        v17 = v7;
        v18 = [(PKTextInputDebugRadarViewController *)self _intendedTexts];
        v19 = [v18 objectAtIndexedSubscript:v10];

        v20 = [v14 resultCommittedText];
        v21 = v20;
        v22 = &stru_1F476BD20;
        if (v20)
        {
          v22 = v20;
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

        v7 = v17;
        v8 = v34;
      }

      ++v10;
      v13 = v13 + 1;
    }

    while (v8 != v13);
    v26 = [(__CFString *)v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
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

    v7 = v27;
    v28 = [v11 resultCommittedText];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_1F476BD20;
    }

    v31 = v30;

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected: %@, Result: %@", v7, v31];

LABEL_27:
  }

  else
  {
    v8 = v35;
  }

  return v9;
}

- (id)_generateLaunchURLWithLogFilename:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputDebugRadarViewController *)self _deviceString];
  v6 = [(PKTextInputDebugRadarViewController *)self _buildString];
  v24 = [(PKTextInputDebugRadarViewController *)self _accumulatedLogEntryTextsForRadar];
  v7 = [(PKTextInputDebugRadarViewController *)self _loggedMainLocaleDescription];
  v8 = [(PKTextInputDebugRadarViewController *)self _logEntryTextForRadarTitle];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Intended Text:\n\n%@\n\n\nAdditional comments:\n\n", v24];
  v9 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v22 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v10 = [v4 path];

  v11 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@: [PencilSharpener] %@ (%@)", v5, v6, v8, v7];
  v14 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
  v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(PKTextInputDebugRadarViewController *)self _includeSysdiagnose];
  v18 = @"0";
  if (v17)
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
  v4 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v5 = [v4 logEntries];
  v6 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];

  v7 = [(PKTextInputDebugRadarViewController *)self _includedEntryIndexes];
  [v6 removeIndexes:v7];

  v8 = [(PKTextInputDebugRadarViewController *)self _selectedContentLevel];
  v9 = [(PKTextInputDebugRadarViewController *)self sharpenerLog];
  v10 = [v9 writeLogToTemporaryDirectoryWithContentLevel:v8 excludeEntyIndexes:v6 error:0];

  v11 = [(PKTextInputDebugRadarViewController *)self _generateLaunchURLWithLogFilename:v10];
  v12 = [(PKTextInputDebugRadarViewController *)self view];
  v13 = [v12 window];
  v14 = [v13 windowScene];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKTextInputDebugRadarViewController__launchTTRAndDismiss__block_invoke;
  v16[3] = &unk_1E82DC850;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 openURL:v11 options:0 completionHandler:v16];
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