@interface CACCommandDetailController
- (id)_attributedStringDescriptionForCommandIdentifier:(id)identifier textViewWidth:(double)width;
- (id)_commandConfirmationRequired:(id)required;
- (id)_commandEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setCommandConfirmationRequired:(id)required specifier:(id)specifier;
- (void)_setCommandEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CACCommandDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = settingsLocString(@"COMMAND_ENABLED", @"CommandAndControlSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setCommandEnabled:specifier:" get:"_commandEnabled:" detail:0 cell:6 edit:0];

    [v5 addObject:v8];
    v9 = settingsLocString(@"COMMAND_CONFIRMATION_REQUIRED", @"CommandAndControlSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setCommandConfirmationRequired:specifier:" get:"_commandConfirmationRequired:" detail:0 cell:6 edit:0];

    [v5 addObject:v10];
    v11 = [PSSpecifier groupSpecifierWithName:0];
    [v5 addObject:v11];
    v12 = [PSSpecifier preferenceSpecifierNamed:&stru_29500 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    v16 = @"CACSpecifierIsAlternateKey";
    v17 = &off_2AA80;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v12 setProperties:v13];

    [v5 addObject:v12];
    v14 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CACCommandDetailController;
  [(CACCommandDetailController *)&v6 viewDidLoad];
  specifier = [(CACCommandDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"CACCommandItem"];
  commandItem = self->_commandItem;
  self->_commandItem = v4;

  [(CACCommandDetailController *)self reloadSpecifiers];
}

- (void)_setCommandEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  commandItem = [(CACCommandDetailController *)self commandItem];
  [commandItem setIsEnabled:bOOLValue];

  commandItem2 = [(CACCommandDetailController *)self commandItem];
  [commandItem2 saveToPreferences];
}

- (id)_commandEnabled:(id)enabled
{
  commandItem = [(CACCommandDetailController *)self commandItem];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [commandItem isEnabled]);

  return v4;
}

- (void)_setCommandConfirmationRequired:(id)required specifier:(id)specifier
{
  bOOLValue = [required BOOLValue];
  commandItem = [(CACCommandDetailController *)self commandItem];
  [commandItem setIsConfirmationRequired:bOOLValue];

  commandItem2 = [(CACCommandDetailController *)self commandItem];
  [commandItem2 saveToPreferences];
}

- (id)_commandConfirmationRequired:(id)required
{
  commandItem = [(CACCommandDetailController *)self commandItem];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [commandItem isConfirmationRequired]);

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CACCommandDetailController *)self specifierAtIndexPath:pathCopy];
  properties = [v8 properties];
  v10 = [properties valueForKey:@"CACSpecifierIsAlternateKey"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"DescriptionCellReuseIdentifier"];
    if (!v12)
    {
      v12 = [[PSTableCell alloc] initWithStyle:0 reuseIdentifier:@"DescriptionCellReuseIdentifier"];
    }

    v13 = +[UIColor clearColor];
    [v12 setBackgroundColor:v13];

    [v12 setSeparatorInset:{0.0, -10000.0, 0.0, 10000.0}];
    textLabel = [v12 textLabel];
    [textLabel setNumberOfLines:0];
    commandItem = [(CACCommandDetailController *)self commandItem];
    identifier = [commandItem identifier];
    [viewCopy frame];
    v18 = [(CACCommandDetailController *)self _attributedStringDescriptionForCommandIdentifier:identifier textViewWidth:v17 + -5.0];
    [textLabel setAttributedText:v18];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CACCommandDetailController;
    v12 = [(CACCommandDetailController *)&v20 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v12;
}

- (id)_attributedStringDescriptionForCommandIdentifier:(id)identifier textViewWidth:(double)width
{
  v105[0] = kSRCSCommandDescriptionsSectionTitleValue;
  identifierCopy = identifier;
  v89 = +[UIFontMetrics defaultMetrics];
  v85 = [UIFont _opticalBoldSystemFontOfSize:16.0];
  v83 = [v89 scaledFontForFont:v85];
  v106[0] = v83;
  v105[1] = kSRCSCommandDescriptionsSectionSubTitleValue;
  v81 = +[UIFontMetrics defaultMetrics];
  v79 = [UIFont _opticalBoldSystemFontOfSize:16.0];
  v78 = [v81 scaledFontForFont:v79];
  v106[1] = v78;
  v105[2] = kSRCSCommandDescriptionsSectionDescValue;
  v76 = +[UIFontMetrics defaultMetrics];
  v74 = [UIFont systemFontOfSize:16.0];
  v72 = [v76 scaledFontForFont:v74];
  v106[2] = v72;
  v105[3] = kSRCSCommandDescriptionsSectionDescBoldValue;
  v5 = +[UIFontMetrics defaultMetrics];
  v6 = [UIFont _opticalBoldSystemFontOfSize:16.0];
  v7 = [v5 scaledFontForFont:v6];
  v106[3] = v7;
  v105[4] = kSRCSCommandDescriptionsPuncCommentValue;
  v8 = +[UIFontMetrics defaultMetrics];
  v9 = [UIFont systemFontOfSize:16.0];
  v10 = [v8 scaledFontForFont:v9];
  v106[4] = v10;
  v105[5] = kSRCSCommandDescriptionsPuncDividerValue;
  v11 = +[UIFontMetrics defaultMetrics];
  v12 = [UIFont systemFontOfSize:8.0];
  v13 = [v11 scaledFontForFont:v12];
  v106[5] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:6];

  v86 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v86 bestLocaleIdentifier];
  v15 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  v16 = [v15 commandStringsTableForLocaleIdentifier:bestLocaleIdentifier];

  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_47D4;
  v91[3] = &unk_28E90;
  v92 = v16;
  v93 = v14;
  v17 = v14;
  v90 = v17;
  v18 = v16;
  v19 = [v18 mutableAttributedStringCommandDescriptionForCommandIdentifier:identifierCopy calculateDisplayedAttributedStringWidthBlock:v91];

  v20 = [v19 attribute:kSRCSCommandDescriptionsMaxParameterLengthPlaceholderAttributeName atIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(v19, "length")}];
  [v20 floatValue];
  v22 = v21;

  [v19 removeAttribute:kSRCSCommandDescriptionsMaxParameterLengthPlaceholderAttributeName range:{0, objc_msgSend(v19, "length")}];
  v23 = [v19 attribute:kSRCSCommandDescriptionsMaxEmbeddedCommandLengthPlaceholderAttributeName atIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(v19, "length")}];
  [v23 floatValue];
  v25 = v24;

  [v19 removeAttribute:kSRCSCommandDescriptionsMaxEmbeddedCommandLengthPlaceholderAttributeName range:{0, objc_msgSend(v19, "length")}];
  v26 = (width * 0.3);
  if (width * 0.3 <= v25)
  {
    v26 = v25;
  }

  v27 = v26 + 20;
  if (v27 + 20.0 >= width * 0.7)
  {
    v28 = width * 0.7;
  }

  else
  {
    v28 = v27 + 20.0;
  }

  v70 = v22;
  v29 = [v18 mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsFontPlaceholderAttributeName withAttributeName:NSFontAttributeName inAttributedString:v19 withValueTable:v17];

  v103[0] = kSRCSCommandDescriptionsSectionTitleValue;
  v30 = +[UIColor labelColor];
  v104[0] = v30;
  v103[1] = kSRCSCommandDescriptionsSectionSubTitleValue;
  v31 = +[UIColor secondaryLabelColor];
  v104[1] = v31;
  v103[2] = kSRCSCommandDescriptionsSectionDescValue;
  v32 = +[UIColor labelColor];
  v104[2] = v32;
  v103[3] = kSRCSCommandDescriptionsPuncCommentValue;
  v33 = +[UIColor secondaryLabelColor];
  v104[3] = v33;
  v103[4] = kSRCSCommandDescriptionsPuncDividerValue;
  v34 = +[UIColor separatorColor];
  v104[4] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:5];

  v82 = v35;
  v36 = [v18 mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsColorPlaceholderAttributeName withAttributeName:NSForegroundColorAttributeName inAttributedString:v29 withValueTable:v35];

  v37 = [v18 mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsStrikethroughColorPlaceholderAttributeName withAttributeName:NSStrikethroughColorAttributeName inAttributedString:v36 withValueTable:v35];

  v101[0] = kSRCSCommandDescriptionsSectionDescValue;
  v101[1] = kSRCSCommandDescriptionsPuncDividerValue;
  v102[0] = &off_2AA80;
  v102[1] = &off_2AA80;
  v80 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:2];
  v77 = [v18 mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsStrikethroughStylePlaceholderAttributeName withAttributeName:NSStrikethroughStyleAttributeName inAttributedString:v37 withValueTable:v80];

  v38 = [v90 objectForKey:kSRCSCommandDescriptionsSectionDescValue];
  [v38 pointSize];
  v40 = v39;

  v41 = +[NSParagraphStyle defaultParagraphStyle];
  v88 = [v41 mutableCopy];

  [v88 setParagraphSpacing:v40 * 0.5];
  [v88 setParagraphSpacingBefore:v40 * 0.75];
  v42 = +[NSParagraphStyle defaultParagraphStyle];
  v75 = [v42 mutableCopy];

  [v75 setParagraphSpacing:v40 * 0.5];
  v43 = +[NSParagraphStyle defaultParagraphStyle];
  v44 = [v43 mutableCopy];

  v73 = v44;
  [v44 setFirstLineHeadIndent:20.0];
  [v44 setHeadIndent:32.0];
  [v44 setParagraphSpacing:v40 * 0.3];
  v45 = v70 + 20.0 + 10.0;
  v46 = +[NSParagraphStyle defaultParagraphStyle];
  v47 = [v46 mutableCopy];

  [v47 setFirstLineHeadIndent:20.0];
  v48 = [[NSTextTab alloc] initWithTextAlignment:0 location:&__NSDictionary0__struct options:v45];
  v100 = v48;
  v49 = [NSArray arrayWithObjects:&v100 count:1];
  [v47 setTabStops:v49];

  [v47 setHeadIndent:v45];
  v50 = v47;
  [v47 setParagraphSpacing:v40 * 0.3];
  v51 = +[NSParagraphStyle defaultParagraphStyle];
  v52 = [v51 mutableCopy];

  v71 = v52;
  [v52 setFirstLineHeadIndent:20.0];
  v53 = [[NSTextTab alloc] initWithTextAlignment:0 location:&__NSDictionary0__struct options:v28];
  v99 = v53;
  v54 = [NSArray arrayWithObjects:&v99 count:1];
  [v52 setTabStops:v54];

  [v52 setHeadIndent:v28];
  [v52 setParagraphSpacing:v40 * 0.1];
  v55 = +[NSParagraphStyle defaultParagraphStyle];
  v56 = [v55 mutableCopy];

  [v56 setFirstLineHeadIndent:20.0];
  v57 = [[NSTextTab alloc] initWithTextAlignment:0 location:&__NSDictionary0__struct options:v28];
  v98 = v57;
  v58 = [NSArray arrayWithObjects:&v98 count:1];
  [v56 setTabStops:v58];

  [v56 setHeadIndent:v28];
  [v56 setParagraphSpacing:v40 * 0.25];
  [v56 setParagraphSpacingBefore:v40 * 0.1];
  v59 = +[NSParagraphStyle defaultParagraphStyle];
  v60 = [v59 mutableCopy];

  [v60 setFirstLineHeadIndent:20.0];
  v61 = [[NSTextTab alloc] initWithTextAlignment:0 location:&__NSDictionary0__struct options:v28];
  v97 = v61;
  v62 = [NSArray arrayWithObjects:&v97 count:1];
  [v60 setTabStops:v62];

  v63 = +[NSParagraphStyle defaultParagraphStyle];
  v64 = [v63 mutableCopy];

  [v64 setFirstLineHeadIndent:15.0];
  v65 = [[NSTextTab alloc] initWithTextAlignment:2 location:&__NSDictionary0__struct options:width + -20.0];
  v96 = v65;
  v66 = [NSArray arrayWithObjects:&v96 count:1];
  [v64 setTabStops:v66];

  [v64 setAlignment:1];
  v94[0] = kSRCSCommandDescriptionsSectionTitleValue;
  v94[1] = kSRCSCommandDescriptionsSectionSubTitleValue;
  v95[0] = v88;
  v95[1] = v56;
  v94[2] = kSRCSCommandDescriptionsSectionDescValue;
  v94[3] = kSRCSCommandDescriptionsPuncDividerValue;
  v95[2] = v75;
  v95[3] = v64;
  v94[4] = kSRCSCommandDescriptionsVariantValue;
  v94[5] = kSRCSCommandDescriptionsParameterValue;
  v95[4] = v73;
  v95[5] = v50;
  v94[6] = kSRCSCommandDescriptionsItemValue;
  v94[7] = kSRCSCommandDescriptionsHeaderValue;
  v95[6] = v71;
  v95[7] = v60;
  v67 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:8];
  v69 = [v18 mutableAttributedStringByReplacingPlaceholderAttribute:kSRCSCommandDescriptionsParagraphPlaceholderAttributeName withAttributeName:NSParagraphStyleAttributeName inAttributedString:v77 withValueTable:v67];

  return v69;
}

@end