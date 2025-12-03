@interface NLCProfileDetailController
- (BOOL)isValid:(id)valid format:(id)format;
- (NLCProfileDetailController)init;
- (id)getProfileName:(id)name;
- (id)getProtocolFamily:(id)family;
- (id)specifiers;
- (void)cancelButtonClicked:(id)clicked;
- (void)deleteConfirm:(id)confirm;
- (void)deleteNLCProfile:(id)profile;
- (void)dupProfile:(id)profile;
- (void)loadValuesFromCurrentProfile;
- (void)loadView;
- (void)saveButtonClicked:(id)clicked;
- (void)saveValuesToCurrentProfile;
- (void)setDNSDelay:(id)delay specifier:(id)specifier;
- (void)setInBandwidth:(id)bandwidth specifier:(id)specifier;
- (void)setInDelay:(id)delay specifier:(id)specifier;
- (void)setInPLR:(id)r specifier:(id)specifier;
- (void)setInterfaceName:(id)name specifier:(id)specifier;
- (void)setOutBandwidth:(id)bandwidth specifier:(id)specifier;
- (void)setOutDelay:(id)delay specifier:(id)specifier;
- (void)setOutPLR:(id)r specifier:(id)specifier;
- (void)setProfileName:(id)name specifier:(id)specifier;
- (void)setProtocolFamily:(id)family specifier:(id)specifier;
- (void)updateDoneButton;
@end

@implementation NLCProfileDetailController

- (NLCProfileDetailController)init
{
  if (dword_49FB0)
  {
    NSLog(@"%s %p", a2, "[NLCProfileDetailController init]", self);
  }

  v33.receiver = self;
  v33.super_class = NLCProfileDetailController;
  v3 = [(NLCProfileDetailController *)&v33 init];
  v4 = v3;
  if (v3)
  {
    v3->_dirty = 0;
    v3->_isNew = 0;
    v3->_isPreset = 0;
    inBandwidth = v3->_inBandwidth;
    v3->_inBandwidth = @"0";

    inPLR = v4->_inPLR;
    v4->_inPLR = @"0";

    inDelay = v4->_inDelay;
    v4->_inDelay = @"0";

    outBandwidth = v4->_outBandwidth;
    v4->_outBandwidth = @"0";

    outPLR = v4->_outPLR;
    v4->_outPLR = @"0";

    outDelay = v4->_outDelay;
    v4->_outDelay = @"0";

    dnsDelay = v4->_dnsDelay;
    v4->_dnsDelay = @"0";

    v12 = [NSString stringWithFormat:@"%d", 0];
    protocolFamily = v4->_protocolFamily;
    v4->_protocolFamily = v12;

    interfaceName = v4->_interfaceName;
    v4->_interfaceName = &stru_3E0D8;

    v15 = +[NLCSettings sharedInstance];
    currentProfile = [v15 currentProfile];
    profileName = v4->_profileName;
    v4->_profileName = currentProfile;

    v18 = objc_alloc_init(NSNumberFormatter);
    bwFmtr = v4->_bwFmtr;
    v4->_bwFmtr = v18;

    [(NSNumberFormatter *)v4->_bwFmtr setNumberStyle:1];
    v20 = v4->_bwFmtr;
    v21 = [NSNumber numberWithInt:0];
    [(NSNumberFormatter *)v20 setMinimum:v21];

    [(NSNumberFormatter *)v4->_bwFmtr setGroupingSize:0];
    v22 = objc_alloc_init(NSNumberFormatter);
    plrFmtr = v4->_plrFmtr;
    v4->_plrFmtr = v22;

    [(NSNumberFormatter *)v4->_plrFmtr setNumberStyle:1];
    v24 = v4->_plrFmtr;
    v25 = [NSNumber numberWithInt:0];
    [(NSNumberFormatter *)v24 setMinimum:v25];

    v26 = v4->_plrFmtr;
    v27 = [NSNumber numberWithInt:100];
    [(NSNumberFormatter *)v26 setMaximum:v27];

    [(NSNumberFormatter *)v4->_plrFmtr setGroupingSize:0];
    [(NSNumberFormatter *)v4->_plrFmtr setAlwaysShowsDecimalSeparator:1];
    v28 = objc_alloc_init(NSNumberFormatter);
    delayFmtr = v4->_delayFmtr;
    v4->_delayFmtr = v28;

    [(NSNumberFormatter *)v4->_delayFmtr setNumberStyle:1];
    v30 = v4->_delayFmtr;
    v31 = [NSNumber numberWithInt:0];
    [(NSNumberFormatter *)v30 setMinimum:v31];

    [(NSNumberFormatter *)v4->_delayFmtr setGroupingSize:0];
    [(NLCProfileDetailController *)v4 loadValuesFromCurrentProfile];
    if ([(NSString *)v4->_profileName isEqualToString:&stru_3E0D8])
    {
      v4->_isNew = 1;
    }
  }

  return v4;
}

- (id)specifiers
{
  if (dword_49FB0)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    NSLog(@"%s %p parent %p", "[NLCProfileDetailController specifiers]", self, WeakRetained);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v119 = v4;
  if (!self->_isPreset)
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v4 addObject:v5];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = LocalizableGTStringKeyForKey();
    v8 = [v6 localizedStringForKey:v7 value:&stru_3E0D8 table:@"NLCSettings"];
    v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v8 target:self set:"setProfileName:specifier:" get:"getProfileName:" detail:0 cell:8 edit:0];

    if (self->_isNew)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = LocalizableGTStringKeyForKey();
      v12 = [v10 localizedStringForKey:v11 value:&stru_3E0D8 table:@"NLCSettings"];
      [v9 setPlaceholder:v12];
    }

    *&v9[OBJC_IVAR___PSSpecifier_keyboardType] = 0;
    *&v9[OBJC_IVAR___PSSpecifier_autoCapsType] = 0;
    *&v9[OBJC_IVAR___PSSpecifier_autoCorrectionType] = 1;
    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v4 = v119;
    [v119 addObject:v9];
    if (dword_49FB0)
    {
      placeholder = [v9 placeholder];
      NSLog(@"nameCell placeHolder: %@", placeholder);
    }
  }

  v14 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  LocalizableGTStringKeyForKey();
  v17 = v16 = v4;
  v18 = [v15 localizedStringForKey:v17 value:&stru_3E0D8 table:@"NLCSettings"];
  [v14 setProperty:v18 forKey:PSFooterTextGroupKey];

  v116 = v14;
  [v16 addObject:v14];
  v115 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v16 addObject:?];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = LocalizableGTStringKeyForKey();
  v21 = [v19 localizedStringForKey:v20 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v22 = 0;
  }

  else
  {
    v22 = "setInBandwidth:specifier:";
  }

  if (self->_isPreset)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  v24 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:v22 get:"getInBandwidth:" detail:0 cell:v23 edit:0];

  *&v24[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
  if (!self->_isPreset)
  {
    [v24 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v114 = v24;
  [v119 addObject:v24];
  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = LocalizableGTStringKeyForKey();
  v27 = [v25 localizedStringForKey:v26 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v28 = 0;
  }

  else
  {
    v28 = "setInPLR:specifier:";
  }

  if (self->_isPreset)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  v30 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:v28 get:"getInPLR:" detail:0 cell:v29 edit:0];

  *&v30[OBJC_IVAR___PSSpecifier_textFieldType] = 6;
  if (!self->_isPreset)
  {
    [v30 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v113 = v30;
  [v119 addObject:v30];
  v31 = [NSBundle bundleForClass:objc_opt_class()];
  v32 = LocalizableGTStringKeyForKey();
  v33 = [v31 localizedStringForKey:v32 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v34 = 0;
  }

  else
  {
    v34 = "setInDelay:specifier:";
  }

  if (self->_isPreset)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  v36 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:v34 get:"getInDelay:" detail:0 cell:v35 edit:0];

  *&v36[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
  if (!self->_isPreset)
  {
    [v36 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v112 = v36;
  [v119 addObject:v36];
  v37 = [NSBundle bundleForClass:objc_opt_class()];
  v38 = LocalizableGTStringKeyForKey();
  v39 = [v37 localizedStringForKey:v38 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v40 = 0;
  }

  else
  {
    v40 = "setOutBandwidth:specifier:";
  }

  if (self->_isPreset)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  v42 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:v40 get:"getOutBandwidth:" detail:0 cell:v41 edit:0];

  *&v42[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
  if (!self->_isPreset)
  {
    [v42 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v111 = v42;
  [v119 addObject:v42];
  v43 = [NSBundle bundleForClass:objc_opt_class()];
  v44 = LocalizableGTStringKeyForKey();
  v45 = [v43 localizedStringForKey:v44 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v46 = 0;
  }

  else
  {
    v46 = "setOutPLR:specifier:";
  }

  if (self->_isPreset)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  v48 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:v46 get:"getOutPLR:" detail:0 cell:v47 edit:0];

  *&v48[OBJC_IVAR___PSSpecifier_textFieldType] = 6;
  if (!self->_isPreset)
  {
    [v48 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v110 = v48;
  [v119 addObject:v48];
  v49 = [NSBundle bundleForClass:objc_opt_class()];
  v50 = LocalizableGTStringKeyForKey();
  v51 = [v49 localizedStringForKey:v50 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v52 = 0;
  }

  else
  {
    v52 = "setOutDelay:specifier:";
  }

  if (self->_isPreset)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  v54 = [PSSpecifier preferenceSpecifierNamed:v51 target:self set:v52 get:"getOutDelay:" detail:0 cell:v53 edit:0];

  *&v54[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
  if (!self->_isPreset)
  {
    [v54 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  v109 = v54;
  [v119 addObject:v54];
  v55 = [NSBundle bundleForClass:objc_opt_class()];
  v56 = LocalizableGTStringKeyForKey();
  v57 = [v55 localizedStringForKey:v56 value:&stru_3E0D8 table:@"NLCSettings"];
  if (self->_isPreset)
  {
    v58 = 0;
  }

  else
  {
    v58 = "setDNSDelay:specifier:";
  }

  if (self->_isPreset)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  v60 = [PSSpecifier preferenceSpecifierNamed:v57 target:self set:v58 get:"getDNSDelay:" detail:0 cell:v59 edit:0];

  *&v60[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
  if (!self->_isPreset)
  {
    [v60 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  [v119 addObject:v60];
  isPreset = self->_isPreset;
  v62 = [NSBundle bundleForClass:objc_opt_class()];
  v63 = LocalizableGTStringKeyForKey();
  v64 = [v62 localizedStringForKey:v63 value:&stru_3E0D8 table:@"NLCSettings"];
  if (isPreset)
  {
    v65 = [PSSpecifier preferenceSpecifierNamed:v64 target:self set:0 get:"getProtocolFamily:" detail:0 cell:4 edit:0];
  }

  else
  {
    v117 = [PSSpecifier preferenceSpecifierNamed:v64 target:self set:"setProtocolFamily:specifier:" get:"getProtocolFamily:" detail:objc_opt_class() cell:2 edit:0];

    v62 = [NSMutableArray arrayWithCapacity:3];
    v66 = [NSBundle bundleForClass:objc_opt_class()];
    v67 = LocalizableGTStringKeyForKey();
    v68 = [v66 localizedStringForKey:v67 value:&stru_3E0D8 table:@"NLCSettings"];
    [v62 insertObject:v68 atIndex:0];

    v69 = [NSBundle bundleForClass:objc_opt_class()];
    v70 = LocalizableGTStringKeyForKey();
    v71 = [v69 localizedStringForKey:v70 value:&stru_3E0D8 table:@"NLCSettings"];
    [v62 insertObject:v71 atIndex:1];

    v72 = [NSBundle bundleForClass:objc_opt_class()];
    v73 = LocalizableGTStringKeyForKey();
    v74 = [v72 localizedStringForKey:v73 value:&stru_3E0D8 table:@"NLCSettings"];
    [v62 insertObject:v74 atIndex:2];

    v63 = [NSMutableArray arrayWithCapacity:3];
    v75 = [NSString stringWithFormat:@"%d", 0];
    [v63 insertObject:v75 atIndex:0];

    v76 = [NSString stringWithFormat:@"%d", 2];
    [v63 insertObject:v76 atIndex:1];

    v77 = [NSString stringWithFormat:@"%d", 30];
    [v63 insertObject:v77 atIndex:2];

    v65 = v117;
    [v117 setValues:v63 titles:v62 shortTitles:0];
  }

  v118 = v65;
  [v119 addObject:v65];
  v78 = self->_isPreset;
  v79 = [NSBundle bundleForClass:objc_opt_class()];
  v80 = LocalizableGTStringKeyForKey();
  v81 = [v79 localizedStringForKey:v80 value:&stru_3E0D8 table:@"NLCSettings"];
  if (v78)
  {
    v82 = [PSSpecifier preferenceSpecifierNamed:v81 target:self set:0 get:"getInterfaceName:" detail:0 cell:4 edit:0];
  }

  else
  {
    v82 = [PSSpecifier preferenceSpecifierNamed:v81 target:self set:"setInterfaceName:specifier:" get:"getInterfaceName:" detail:objc_opt_class() cell:2 edit:0];

    v79 = [NSMutableArray arrayWithCapacity:3];
    v83 = [NSBundle bundleForClass:objc_opt_class()];
    v84 = LocalizableGTStringKeyForKey();
    v85 = [v83 localizedStringForKey:v84 value:&stru_3E0D8 table:@"NLCSettings"];
    [v79 insertObject:v85 atIndex:0];

    v86 = [NSBundle bundleForClass:objc_opt_class()];
    v87 = LocalizableGTStringKeyForKey();
    v88 = [v86 localizedStringForKey:v87 value:&stru_3E0D8 table:@"NLCSettings"];
    [v79 insertObject:v88 atIndex:1];

    v89 = [NSBundle bundleForClass:objc_opt_class()];
    v90 = LocalizableGTStringKeyForKey();
    v91 = [v89 localizedStringForKey:v90 value:&stru_3E0D8 table:@"NLCSettings"];
    [v79 insertObject:v91 atIndex:2];

    v80 = [NSMutableArray arrayWithCapacity:3];
    [v80 insertObject:&stru_3E0D8 atIndex:0];
    [v80 insertObject:@"en0" atIndex:1];
    [v80 insertObject:@"pdp_ip0" atIndex:2];
    [v82 setValues:v80 titles:v79 shortTitles:0];
  }

  v92 = v119;
  [v119 addObject:v82];
  if (!self->_isNew)
  {
    v93 = +[PSSpecifier emptyGroupSpecifier];
    [v119 addObject:v93];

    v94 = [NSBundle bundleForClass:objc_opt_class()];
    v95 = LocalizableGTStringKeyForKey();
    v96 = [v94 localizedStringForKey:v95 value:&stru_3E0D8 table:@"NLCSettings"];
    v97 = [PSSpecifier preferenceSpecifierNamed:v96 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v92 = v119;
    *&v97[OBJC_IVAR___PSSpecifier_action] = "dupProfile:";
    [v119 addObject:v97];
  }

  if (!self->_isPreset && !self->_isNew)
  {
    v98 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v92 addObject:v98];
    v99 = [NSBundle bundleForClass:objc_opt_class()];
    v100 = LocalizableGTStringKeyForKey();
    v101 = [v99 localizedStringForKey:v100 value:&stru_3E0D8 table:@"NLCSettings"];
    v102 = [PSSpecifier deleteButtonSpecifierWithName:v101 target:self action:"deleteConfirm:"];

    v92 = v119;
    [v119 addObject:v102];
  }

  v103 = OBJC_IVAR___PSListController__specifiers;
  v104 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v92;
  v105 = v92;

  v106 = *&self->PSListController_opaque[v103];
  v107 = v106;

  return v106;
}

- (void)deleteConfirm:(id)confirm
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = LocalizableGTStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_3E0D8 table:@"NLCSettings"];
  v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = LocalizableGTStringKeyForKey();
  v9 = [v7 localizedStringForKey:v8 value:&stru_3E0D8 table:@"NLCSettings"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = LocalizableGTStringKeyForKey();
  v13 = [v11 localizedStringForKey:v12 value:&stru_3E0D8 table:@"NLCSettings"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1377C;
  v16[3] = &unk_3D4E8;
  v16[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v16];

  [v6 addAction:v10];
  [v6 addAction:v14];
  [(NLCProfileDetailController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)dupProfile:(id)profile
{
  profileCopy = profile;
  if (dword_49FB0)
  {
    NSLog(@"%s name: %@", "[NLCProfileDetailController dupProfile:]", self->_profileName);
  }

  v4 = [(NSString *)self->_profileName componentsSeparatedByString:@" "];
  lastObject = [v4 lastObject];

  integerValue = [lastObject integerValue];
  v7 = integerValue;
  if (integerValue)
  {
    v8 = integerValue + 1;
    v9 = [(NSString *)self->_profileName substringToIndex:[(NSString *)self->_profileName length]- (log((integerValue + 1)) / 2.30258509 + 2.0)];
  }

  else
  {
    v9 = self->_profileName;
    v8 = 2;
  }

  v10 = [(NSString *)v9 stringByAppendingFormat:@" %ld", v8];
  v11 = [qword_49FB8 profileDictionaryWithName:v10];

  if (v11)
  {
    if (v7 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v7;
    }

    v13 = v12 + 2;
    do
    {
      v14 = [(NSString *)v9 stringByAppendingFormat:@" %ld", v13];

      v15 = [qword_49FB8 profileDictionaryWithName:v14];

      ++v13;
      v10 = v14;
    }

    while (v15);
  }

  else
  {
    v14 = v10;
  }

  if (dword_49FB0)
  {
    NSLog(@"%s new name: %@", "[NLCProfileDetailController dupProfile:]", v14);
  }

  objc_storeStrong(&self->_profileName, v14);
  self->_isPreset = 0;
  v16 = [qword_49FB8 addNewProfile:self->_profileName];

  if (v16)
  {
    [qword_49FB8 setSelectedProfileName:self->_profileName];
    [(NLCProfileDetailController *)self saveValuesToCurrentProfile];
    v17 = +[NLCSettings sharedInstance];
    [v17 setCurrentProfile:self->_profileName];
  }

  v18 = objc_alloc_init(NLCProfileDetailController);
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  [(NLCProfileDetailController *)v18 setRootController:WeakRetained];

  v20 = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [(NLCProfileDetailController *)v18 setParentController:v20];

  v21 = [PSSpecifier preferenceSpecifierNamed:self->_profileName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [(NLCProfileDetailController *)v18 setSpecifier:v21];
  [(NLCProfileDetailController *)self showController:v18];
}

- (void)deleteNLCProfile:(id)profile
{
  profileCopy = profile;
  if (dword_49FB0)
  {
    NSLog(@"%s name: %@", "[NLCProfileDetailController deleteNLCProfile:]", self->_profileName);
  }

  if (![(NSString *)self->_profileName isEqualToString:&stru_3E0D8])
  {
    [qword_49FB8 removeProfileWithName:self->_profileName];
    [qword_49FB8 applyChanges];
    v4 = +[NLCSettings sharedInstance];
    [v4 performSelector:"updateNLCProfilesList" withObject:0];

    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    [WeakRetained dismiss];
  }
}

- (void)saveButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  if (dword_49FB0)
  {
    NSLog(@"%s", "[NLCProfileDetailController saveButtonClicked:]");
  }

  if ([(NSString *)self->_profileName isEqualToString:&stru_3E0D8])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = LocalizableGTStringKeyForKey();
    v6 = [v4 localizedStringForKey:v5 value:&stru_3E0D8 table:@"NLCSettings"];
    v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = LocalizableGTStringKeyForKey();
    v10 = [v8 localizedStringForKey:v9 value:&stru_3E0D8 table:@"NLCSettings"];
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

    [v7 addAction:v11];
    [(NLCProfileDetailController *)self presentViewController:v7 animated:1 completion:0];

LABEL_13:
    goto LABEL_18;
  }

  if (self->_isNew)
  {
    v12 = [qword_49FB8 addNewProfile:self->_profileName];

    if (v12)
    {
      [qword_49FB8 setSelectedProfileName:self->_profileName];
LABEL_16:
      [(NLCProfileDetailController *)self saveValuesToCurrentProfile];
      goto LABEL_17;
    }

LABEL_12:
    v17 = [NSString alloc];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = LocalizableGTStringKeyForKey();
    v20 = [v18 localizedStringForKey:v19 value:&stru_3E0D8 table:@"NLCSettings"];
    v7 = [v17 initWithFormat:v20, self->_profileName];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = LocalizableGTStringKeyForKey();
    v23 = [v21 localizedStringForKey:v22 value:&stru_3E0D8 table:@"NLCSettings"];
    v24 = [UIAlertController alertControllerWithTitle:v7 message:v23 preferredStyle:1];

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = LocalizableGTStringKeyForKey();
    v27 = [v25 localizedStringForKey:v26 value:&stru_3E0D8 table:@"NLCSettings"];
    v28 = [UIAlertAction actionWithTitle:v27 style:1 handler:0];

    [v24 addAction:v28];
    [(NLCProfileDetailController *)self presentViewController:v24 animated:1 completion:0];

    goto LABEL_13;
  }

  profileName = self->_profileName;
  v14 = +[NLCSettings sharedInstance];
  currentProfile = [v14 currentProfile];
  LOBYTE(profileName) = [(NSString *)profileName isEqualToString:currentProfile];

  if (profileName)
  {
    if (!self->_dirty)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = [qword_49FB8 profileDictionaryWithName:self->_profileName];

  if (v16)
  {
    goto LABEL_12;
  }

  v29 = [qword_49FB8 addNewProfile:self->_profileName];

  if (v29)
  {
    v30 = qword_49FB8;
    v31 = +[NLCSettings sharedInstance];
    currentProfile2 = [v31 currentProfile];
    [v30 removeProfileWithName:currentProfile2];

    [qword_49FB8 setSelectedProfileName:self->_profileName];
    v33 = +[NLCSettings sharedInstance];
    [v33 setCurrentProfile:self->_profileName];

    goto LABEL_16;
  }

LABEL_17:
  [(NLCProfileDetailController *)self dismissViewControllerAnimated:1 completion:0];
LABEL_18:
}

- (void)cancelButtonClicked:(id)clicked
{
  if (dword_49FB0)
  {
    NSLog(@"%s", a2, clicked, "[NLCProfileDetailController cancelButtonClicked:]");
  }

  [(NLCProfileDetailController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateDoneButton
{
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  navigationBar = [WeakRetained navigationBar];

  dirty = self->_dirty;
  topItem = [navigationBar topItem];
  rightBarButtonItem = [topItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:dirty];
}

- (void)loadView
{
  if (dword_49FB0)
  {
    NSLog(@"%s", a2, "[NLCProfileDetailController loadView]");
  }

  v8.receiver = self;
  v8.super_class = NLCProfileDetailController;
  [(NLCProfileDetailController *)&v8 loadView];
  navigationItem = [(NLCProfileDetailController *)self navigationItem];
  isPreset = self->_isPreset;
  v5 = [UIBarButtonItem alloc];
  if (isPreset)
  {
    v6 = [v5 initWithBarButtonSystemItem:0 target:self action:"cancelButtonClicked:"];
    [navigationItem setLeftBarButtonItem:v6];
  }

  else
  {
    v7 = [v5 initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
    [navigationItem setLeftBarButtonItem:v7];

    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"saveButtonClicked:"];
    [navigationItem setRightBarButtonItem:v6];
  }
}

- (void)setProfileName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  specifierCopy = specifier;
  if (dword_49FB0)
  {
    NSLog(@"%s %@", "[NLCProfileDetailController setProfileName:specifier:]", nameCopy);
  }

  if (([nameCopy isEqualToString:self->_profileName] & 1) == 0)
  {
    objc_storeStrong(&self->_profileName, name);
    self->_dirty = 1;
    [(NLCProfileDetailController *)self updateDoneButton];
  }
}

- (id)getProfileName:(id)name
{
  if (dword_49FB0)
  {
    NSLog(@"%s", a2, name, "[NLCProfileDetailController getProfileName:]");
  }

  profileName = self->_profileName;

  return profileName;
}

- (BOOL)isValid:(id)valid format:(id)format
{
  validCopy = valid;
  formatCopy = format;
  v8 = [(NSNumberFormatter *)formatCopy numberFromString:validCopy];
  if (v8 || ([validCopy isEqualToString:&stru_3E0D8] & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    if (self->_bwFmtr == formatCopy || self->_plrFmtr == formatCopy || self->_delayFmtr == formatCopy)
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = LocalizableGTStringKeyForKey();
      v11 = [v12 localizedStringForKey:v13 value:&stru_3E0D8 table:@"NLCSettings"];
    }

    else
    {
      v11 = 0;
    }

    v14 = [NSString alloc];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = LocalizableGTStringKeyForKey();
    v17 = [v15 localizedStringForKey:v16 value:&stru_3E0D8 table:@"NLCSettings"];
    validCopy = [v14 initWithFormat:v17, validCopy];

    v18 = v11;
    v19 = [UIAlertController alertControllerWithTitle:validCopy message:v11 preferredStyle:1];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = LocalizableGTStringKeyForKey();
    v22 = [v20 localizedStringForKey:v21 value:&stru_3E0D8 table:@"NLCSettings"];
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:0];

    [v19 addAction:v23];
    [(NLCProfileDetailController *)self presentViewController:v19 animated:1 completion:0];

    v9 = 0;
  }

  return v9;
}

- (void)setInBandwidth:(id)bandwidth specifier:(id)specifier
{
  bandwidthCopy = bandwidth;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:bandwidthCopy format:self->_bwFmtr])
  {
    if (([bandwidthCopy isEqualToString:self->_inBandwidth] & 1) == 0)
    {
      objc_storeStrong(&self->_inBandwidth, bandwidth);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_inBandwidth];
    [v8 setNeedsDisplay];
  }
}

- (void)setInPLR:(id)r specifier:(id)specifier
{
  rCopy = r;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:rCopy format:self->_plrFmtr])
  {
    if (([rCopy isEqualToString:self->_inPLR] & 1) == 0)
    {
      objc_storeStrong(&self->_inPLR, r);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_inPLR];
    [v8 setNeedsDisplay];
  }
}

- (void)setInDelay:(id)delay specifier:(id)specifier
{
  delayCopy = delay;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:delayCopy format:self->_delayFmtr])
  {
    if (([delayCopy isEqualToString:self->_inDelay] & 1) == 0)
    {
      objc_storeStrong(&self->_inDelay, delay);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_inDelay];
    [v8 setNeedsDisplay];
  }
}

- (void)setOutBandwidth:(id)bandwidth specifier:(id)specifier
{
  bandwidthCopy = bandwidth;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:bandwidthCopy format:self->_bwFmtr])
  {
    if (([bandwidthCopy isEqualToString:self->_outBandwidth] & 1) == 0)
    {
      objc_storeStrong(&self->_outBandwidth, bandwidth);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_outBandwidth];
    [v8 setNeedsDisplay];
  }
}

- (void)setOutPLR:(id)r specifier:(id)specifier
{
  rCopy = r;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:rCopy format:self->_plrFmtr])
  {
    if (([rCopy isEqualToString:self->_outPLR] & 1) == 0)
    {
      objc_storeStrong(&self->_outPLR, r);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_outPLR];
    [v8 setNeedsDisplay];
  }
}

- (void)setOutDelay:(id)delay specifier:(id)specifier
{
  delayCopy = delay;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:delayCopy format:self->_delayFmtr])
  {
    if (([delayCopy isEqualToString:self->_outDelay] & 1) == 0)
    {
      objc_storeStrong(&self->_outDelay, delay);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_outDelay];
    [v8 setNeedsDisplay];
  }
}

- (void)setDNSDelay:(id)delay specifier:(id)specifier
{
  delayCopy = delay;
  specifierCopy = specifier;
  if ([(NLCProfileDetailController *)self isValid:delayCopy format:self->_delayFmtr])
  {
    if (([delayCopy isEqualToString:self->_dnsDelay] & 1) == 0)
    {
      objc_storeStrong(&self->_dnsDelay, delay);
      self->_dirty = 1;
      [(NLCProfileDetailController *)self updateDoneButton];
    }
  }

  else
  {
    v8 = [specifierCopy propertyForKey:PSTableCellKey];
    [v8 setValue:self->_dnsDelay];
    [v8 setNeedsDisplay];
  }
}

- (void)setProtocolFamily:(id)family specifier:(id)specifier
{
  familyCopy = family;
  if (([familyCopy isEqualToString:self->_protocolFamily] & 1) == 0)
  {
    objc_storeStrong(&self->_protocolFamily, family);
    self->_dirty = 1;
    [(NLCProfileDetailController *)self updateDoneButton];
  }
}

- (id)getProtocolFamily:(id)family
{
  protocolFamily = self->_protocolFamily;
  if (*(family + OBJC_IVAR___PSSpecifier_cellType) == 4)
  {
    [(NSString *)protocolFamily intValue];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = LocalizableGTStringKeyForKey();
    v6 = [v4 localizedStringForKey:v5 value:&stru_3E0D8 table:@"NLCSettings"];
  }

  else
  {
    v6 = protocolFamily;
  }

  return v6;
}

- (void)setInterfaceName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_interfaceName] & 1) == 0)
  {
    objc_storeStrong(&self->_interfaceName, name);
    self->_dirty = 1;
    [(NLCProfileDetailController *)self updateDoneButton];
  }
}

- (void)saveValuesToCurrentProfile
{
  if (dword_49FB0)
  {
    NSLog(@"%s currentProfileName: %@", a2, "[NLCProfileDetailController saveValuesToCurrentProfile]", self->_profileName);
  }

  if (![(NSString *)self->_profileName isEqualToString:&stru_3E0D8])
  {
    v3 = [qword_49FB8 profileDictionaryWithName:self->_profileName];
    if (v3)
    {
      v18 = v3;
      *&v4 = [(NSString *)self->_inBandwidth intValue];
      v5 = [NSNumber numberWithFloat:v4];
      [v18 setValue:v5 forKey:@"DownlinkBandwidth"];

      [(NSString *)self->_inPLR floatValue];
      v6 = [NSNumber numberWithFloat:?];
      [v18 setValue:v6 forKey:@"DownlinkPacketLossRatio"];

      *&v7 = [(NSString *)self->_inDelay intValue];
      v8 = [NSNumber numberWithFloat:v7];
      [v18 setValue:v8 forKey:@"DownlinkDelay"];

      *&v9 = [(NSString *)self->_outBandwidth intValue];
      v10 = [NSNumber numberWithFloat:v9];
      [v18 setValue:v10 forKey:@"UplinkBandwidth"];

      [(NSString *)self->_outPLR floatValue];
      v11 = [NSNumber numberWithFloat:?];
      [v18 setValue:v11 forKey:@"UplinkPacketLossRatio"];

      *&v12 = [(NSString *)self->_outDelay intValue];
      v13 = [NSNumber numberWithFloat:v12];
      [v18 setValue:v13 forKey:@"UplinkDelay"];

      *&v14 = [(NSString *)self->_dnsDelay intValue];
      v15 = [NSNumber numberWithFloat:v14];
      [v18 setValue:v15 forKey:@"DNSDelayValue"];

      v16 = [NSNumber numberWithInt:[(NSString *)self->_protocolFamily intValue]];
      [v18 setValue:v16 forKey:@"ProtocolFamily"];

      [v18 setValue:self->_interfaceName forKey:@"RunOnInterface"];
      [qword_49FB8 applyChanges];
      v17 = +[NLCSettings sharedInstance];
      [v17 performSelector:"updateNLCProfilesList" withObject:0];

      v3 = v18;
    }
  }
}

- (void)loadValuesFromCurrentProfile
{
  v3 = [qword_49FB8 profileDictionaryWithName:self->_profileName];
  v67 = v3;
  if (dword_49FB0)
  {
    NSLog(@"%s currentProfileName: %@ dict: %p", "[NLCProfileDetailController loadValuesFromCurrentProfile]", self->_profileName, v3);
    v3 = v67;
  }

  if (v3)
  {
    v4 = [v3 objectForKey:@"DownlinkBandwidth"];
    intValue = [v4 intValue];

    v6 = [v67 objectForKey:@"DownlinkBandwidthUnit"];
    intValue2 = [v6 intValue];

    v8 = intValue * 1000.0;
    if (!intValue2)
    {
      v8 = intValue;
    }

    bwFmtr = self->_bwFmtr;
    v10 = [NSNumber numberWithInt:v8];
    v11 = [(NSNumberFormatter *)bwFmtr stringFromNumber:v10];
    inBandwidth = self->_inBandwidth;
    self->_inBandwidth = v11;

    v13 = [v67 objectForKey:@"DownlinkPacketLossRatio"];
    [v13 floatValue];
    v15 = v14;

    v16 = self->_bwFmtr;
    LODWORD(v17) = v15;
    v18 = [NSNumber numberWithFloat:v17];
    v19 = [(NSNumberFormatter *)v16 stringFromNumber:v18];
    inPLR = self->_inPLR;
    self->_inPLR = v19;

    v21 = [v67 objectForKey:@"DownlinkDelay"];
    intValue3 = [v21 intValue];

    v23 = self->_bwFmtr;
    v24 = [NSNumber numberWithInt:intValue3];
    v25 = [(NSNumberFormatter *)v23 stringFromNumber:v24];
    inDelay = self->_inDelay;
    self->_inDelay = v25;

    v27 = [v67 objectForKey:@"UplinkBandwidth"];
    intValue4 = [v27 intValue];

    v29 = [v67 objectForKey:@"UplinkBandwidthUnit"];
    LODWORD(v24) = [v29 intValue];

    v30 = intValue4 * 1000.0;
    if (!v24)
    {
      v30 = intValue4;
    }

    v31 = self->_bwFmtr;
    v32 = [NSNumber numberWithInt:v30];
    v33 = [(NSNumberFormatter *)v31 stringFromNumber:v32];
    outBandwidth = self->_outBandwidth;
    self->_outBandwidth = v33;

    v35 = [v67 objectForKey:@"UplinkPacketLossRatio"];
    [v35 floatValue];
    v37 = v36;

    v38 = self->_bwFmtr;
    LODWORD(v39) = v37;
    v40 = [NSNumber numberWithFloat:v39];
    v41 = [(NSNumberFormatter *)v38 stringFromNumber:v40];
    outPLR = self->_outPLR;
    self->_outPLR = v41;

    v43 = [v67 objectForKey:@"UplinkDelay"];
    intValue5 = [v43 intValue];

    v45 = self->_bwFmtr;
    v46 = [NSNumber numberWithInt:intValue5];
    v47 = [(NSNumberFormatter *)v45 stringFromNumber:v46];
    outDelay = self->_outDelay;
    self->_outDelay = v47;

    v49 = [v67 objectForKey:@"DNSDelayValue"];
    intValue6 = [v49 intValue];

    v51 = self->_bwFmtr;
    v52 = [NSNumber numberWithInt:intValue6];
    v53 = [(NSNumberFormatter *)v51 stringFromNumber:v52];
    dnsDelay = self->_dnsDelay;
    self->_dnsDelay = v53;

    v55 = [v67 objectForKey:@"Preset"];
    v56 = v55;
    if (v55 && ([v55 BOOLValue] & 1) != 0)
    {
      v57 = "YES";
      v58 = 1;
    }

    else
    {
      v58 = 0;
      v57 = "NO";
    }

    self->_isPreset = v58;
    if (dword_49FB0)
    {
      NSLog(@"%s currentProfileName: %@ isPreset %s", "[NLCProfileDetailController loadValuesFromCurrentProfile]", self->_profileName, v57);
    }

    v59 = [v67 objectForKey:@"ProtocolFamily"];
    intValue7 = [v59 intValue];

    v61 = [NSString stringWithFormat:@"%d", intValue7];
    protocolFamily = self->_protocolFamily;
    self->_protocolFamily = v61;

    v63 = [v67 objectForKey:@"RunOnInterface"];
    v64 = v63;
    if (v63 && ![v63 isEqualToString:&stru_3E0D8])
    {
      v66 = v64;
      interfaceName = self->_interfaceName;
      self->_interfaceName = v66;
    }

    else
    {
      interfaceName = self->_interfaceName;
      self->_interfaceName = &stru_3E0D8;
    }

    v3 = v67;
  }
}

@end