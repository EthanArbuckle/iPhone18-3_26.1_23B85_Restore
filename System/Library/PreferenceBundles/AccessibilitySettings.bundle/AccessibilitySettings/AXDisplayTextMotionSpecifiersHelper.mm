@interface AXDisplayTextMotionSpecifiersHelper
- (AXUIClient)displayFilterUIClient;
- (AccessibilitySettingsBaseController)settingsController;
- (BOOL)_reduceMotionAvailable;
- (id)_accessibilitySettingsBaseController;
- (id)_generateSpecifierForName:(id)name set:(SEL)set get:(SEL)get inBuddy:(BOOL)buddy;
- (id)autoplayAnimatedImages:(id)images;
- (id)autoplayMessagesEffects:(id)effects;
- (id)autoplayVideoPreviews:(id)previews;
- (id)boldTextEnabled:(id)enabled;
- (id)buttonShapesEnabled:(id)enabled;
- (id)darkenColorsEnabled:(id)enabled;
- (id)differentiateWithoutColor:(id)color;
- (id)displayTextSpecifiersIncludingSmartInvert:(BOOL)invert isPerApp:(BOOL)app;
- (id)largerTextEnabled:(id)enabled;
- (id)motionCuesEnabled:(id)enabled;
- (id)motionSpecifiers;
- (id)onOffLabelsEnabled:(id)enabled;
- (id)preferHorizontalText:(id)text;
- (id)preferNonBlinkingCursor:(id)cursor;
- (id)preferenceValue:(id)value;
- (id)reduceMotionEnabled:(id)enabled;
- (id)reduceMotionReduceSlideTransitionsEnabled:(id)enabled;
- (id)reduceTransparencyEnabled:(id)enabled;
- (id)refreshRateEnabled:(id)enabled;
- (id)smartInvertEnabled:(id)enabled;
- (int)largerTextPerAppValue;
- (void)_motionCuesLearnMoreLinkTapped:(id)tapped;
- (void)_setupSpecifierIfNeeded:(id)needed setBlock:(id)block getBlock:(id)getBlock;
- (void)_updateReduceSlideTransitionsSpecifiersAnimated:(BOOL)animated;
- (void)_updateSpecifierState:(id)state;
- (void)handleGlobalSmartInvertEnabled:(BOOL)enabled;
- (void)setAutoplayAnimatedImages:(id)images specifier:(id)specifier;
- (void)setAutoplayMessagesEffects:(id)effects specifier:(id)specifier;
- (void)setAutoplayVideoPreviews:(id)previews specifier:(id)specifier;
- (void)setBoldTextEnabled:(id)enabled specifier:(id)specifier;
- (void)setButtonShapesEnabled:(id)enabled specifier:(id)specifier;
- (void)setDarkenColorsEnabled:(id)enabled specifier:(id)specifier;
- (void)setDifferentiateWithoutColorEnabled:(id)enabled specifier:(id)specifier;
- (void)setOnOffLabelsEnabled:(id)enabled specifier:(id)specifier;
- (void)setPreferHorizontalText:(id)text specifier:(id)specifier;
- (void)setPreferNonBlinkingCursor:(id)cursor specifier:(id)specifier;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setReduceMotionEnabled:(id)enabled specifier:(id)specifier;
- (void)setReduceMotionReduceSlideTransitionsEnabled:(id)enabled specifier:(id)specifier;
- (void)setReduceTransparencyEnabled:(id)enabled specifier:(id)specifier;
- (void)setRefreshRateEnabled:(id)enabled specifier:(id)specifier;
- (void)setSmartInvertEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation AXDisplayTextMotionSpecifiersHelper

- (id)displayTextSpecifiersIncludingSmartInvert:(BOOL)invert isPerApp:(BOOL)app
{
  invertCopy = invert;
  v62 = [objc_allocWithZone(NSMutableArray) init];
  selfCopy = self;
  objc_initWeak(&location, self);
  selfCopy3 = self;
  self->_isService = [(NSString *)self->_appID isEqualToString:AX_LiveTranscriptionBundleName];
  appID = self->_appID;
  if (appID)
  {
    v7 = settingsLocString(@"DISPLAY_AND_TEXT", @"AccessibilityTitles");
  }

  else
  {
    v7 = 0;
  }

  v61 = [PSSpecifier groupSpecifierWithName:v7];
  if (appID)
  {

    selfCopy3 = self;
  }

  v60 = AXInBuddySetupKey;
  [v61 setProperty:&__kCFBooleanTrue forKey:?];
  v8 = AXTeachableFeatureDisplayTextSize;
  v59 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureDisplayTextSize];
  if ([v59 count])
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v61 setProperty:v10 forKey:PSFooterCellClassGroupKey];

    v58 = [&__NSArray0__struct mutableCopy];
    v118[0] = @"moreLabel";
    v11 = settingsLocString(@"DISPLAY_WHATS_NEW_LINK", @"Accessibility");
    v119[0] = v11;
    v118[1] = @"additionalTitleLabel";
    v12 = settingsLocString(@"DISPLAY_TITLE", @"Accessibility");
    v119[1] = v12;
    v118[2] = @"alreadyLocalized";
    v118[3] = @"symbolName";
    v119[2] = &__kCFBooleanTrue;
    v119[3] = @"textformat.size";
    v13 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
    v57 = [v13 mutableCopy];

    v14 = objc_opt_new();
    v116[0] = @"sectionLabel";
    v15 = [AXTeachableMomentsManager notificationTitleForFeature:v8];
    v116[1] = @"alreadyLocalized";
    v117[0] = v15;
    v117[1] = &__kCFBooleanTrue;
    v16 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
    [v14 addObject:v16];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v17 = v59;
    v18 = [v17 countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v18)
    {
      v19 = *v109;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v109 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v108 + 1) + 8 * i);
          v113[0] = @"headerLabel";
          itemTitle = [v21 itemTitle];
          v114[0] = itemTitle;
          v113[1] = @"contentLabel";
          itemDescription = [v21 itemDescription];
          v113[2] = @"alreadyLocalized";
          v114[1] = itemDescription;
          v114[2] = &__kCFBooleanTrue;
          v24 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];
          [v14 addObject:v24];
        }

        v18 = [v17 countByEnumeratingWithState:&v108 objects:v115 count:16];
      }

      while (v18);
    }

    [v57 setObject:v14 forKey:@"additionalContent"];
    [v58 addObject:v57];
    [v61 setProperty:v58 forKey:@"content"];

    selfCopy3 = selfCopy;
  }

  [v62 addObject:v61];
  v25 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy3 _generateSpecifierForName:@"ENHANCE_TEXT_LEGIBILITY" set:"setBoldTextEnabled:specifier:" get:"boldTextEnabled:" inBuddy:1];

  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke;
  v105[3] = &unk_258530;
  objc_copyWeak(&v107, &location);
  v26 = v25;
  v106 = v26;
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_2;
  v103[3] = &unk_255E60;
  objc_copyWeak(&v104, &location);
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v26 setBlock:v105 getBlock:v103];
  [v62 addObject:v26];
  v27 = settingsLocString(@"LARGER_TEXT", @"Accessibility");
  v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:selfCopy set:0 get:"largerTextEnabled:" detail:objc_opt_class() cell:2 edit:0];

  [v28 setProperty:&__kCFBooleanTrue forKey:v60];
  [v28 setProperty:@"LARGER_TEXT" forKey:PSIDKey];
  [v28 setProperty:selfCopy->_appID forKey:@"BundleIdentifier"];
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_3;
  v100[3] = &unk_258530;
  objc_copyWeak(&v102, &location);
  v29 = v28;
  v101 = v29;
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_4;
  v99[3] = &unk_258558;
  v99[4] = selfCopy;
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v29 setBlock:v100 getBlock:v99];
  [v62 addObject:v29];

  objc_destroyWeak(&v102);
  v30 = selfCopy;
  if (!selfCopy->_isService)
  {
    v31 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"BUTTON_SHAPES" set:"setButtonShapesEnabled:specifier:" get:"buttonShapesEnabled:" inBuddy:0];

    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_5;
    v96[3] = &unk_258530;
    objc_copyWeak(&v98, &location);
    v32 = v31;
    v97 = v32;
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_6;
    v94[3] = &unk_255E60;
    objc_copyWeak(&v95, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v32 setBlock:v96 getBlock:v94];
    [v62 addObject:v32];
    v33 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"ON_OFF_LABELS" set:"setOnOffLabelsEnabled:specifier:" get:"onOffLabelsEnabled:" inBuddy:0];

    if (!selfCopy->_appID)
    {
      [v33 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    }

    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_7;
    v91[3] = &unk_258530;
    objc_copyWeak(&v93, &location);
    v34 = v33;
    v92 = v34;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_8;
    v89[3] = &unk_255E60;
    objc_copyWeak(&v90, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v34 setBlock:v91 getBlock:v89];
    [v34 setProperty:@"OnOffLabels" forKey:PSKeyNameKey];
    [v62 addObject:v34];
    v35 = +[PSSpecifier emptyGroupSpecifier];

    v36 = settingsLocString(@"ReduceTransparencyFooterText", @"Accessibility");
    v37 = PSFooterTextGroupKey;
    [v35 setProperty:v36 forKey:PSFooterTextGroupKey];

    [v35 setProperty:&__kCFBooleanTrue forKey:v60];
    [v62 addObject:v35];
    v38 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"REDUCE_TRANSPARENCY" set:"setReduceTransparencyEnabled:specifier:" get:"reduceTransparencyEnabled:" inBuddy:1];

    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_9;
    v86[3] = &unk_258530;
    objc_copyWeak(&v88, &location);
    v39 = v38;
    v87 = v39;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_10;
    v84[3] = &unk_255E60;
    objc_copyWeak(&v85, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v39 setBlock:v86 getBlock:v84];
    [v62 addObject:v39];
    objc_destroyWeak(&v85);

    objc_destroyWeak(&v88);
    v40 = +[PSSpecifier emptyGroupSpecifier];

    v41 = settingsLocString(@"TEXT_COLORS_DARKEN_FOOTER", @"Accessibility");
    [v40 setProperty:v41 forKey:v37];

    [v40 setProperty:&__kCFBooleanTrue forKey:v60];
    [v62 addObject:v40];
    v42 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"TEXT_COLORS_DARKEN" set:"setDarkenColorsEnabled:specifier:" get:"darkenColorsEnabled:" inBuddy:1];

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_11;
    v81[3] = &unk_258530;
    objc_copyWeak(&v83, &location);
    v43 = v42;
    v82 = v43;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_12;
    v79[3] = &unk_255E60;
    objc_copyWeak(&v80, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v43 setBlock:v81 getBlock:v79];
    [v62 addObject:v43];
    v44 = +[PSSpecifier emptyGroupSpecifier];

    v45 = settingsLocString(@"DIFFERENTIATE_WITHOUT_COLOR_FOOTER", @"Accessibility");
    [v44 setProperty:v45 forKey:v37];

    [v44 setProperty:&__kCFBooleanTrue forKey:v60];
    [v62 addObject:v44];
    v46 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"DIFFERENTIATE_WITHOUT_COLOR" set:"setDifferentiateWithoutColorEnabled:specifier:" get:"differentiateWithoutColor:" inBuddy:1];

    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_13;
    v76[3] = &unk_258530;
    objc_copyWeak(&v78, &location);
    v47 = v46;
    v77 = v47;
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_14;
    v74[3] = &unk_255E60;
    objc_copyWeak(&v75, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v47 setBlock:v76 getBlock:v74];
    [v62 addObject:v47];
    v48 = +[PSSpecifier emptyGroupSpecifier];

    v49 = settingsLocString(@"PREFER_HORIZONTAL_TEXT_FOOTER", @"Accessibility");
    [v48 setProperty:v49 forKey:v37];

    [v48 setProperty:&__kCFBooleanTrue forKey:v60];
    [v62 addObject:v48];
    v50 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"PREFER_HORIZONTAL_TEXT" set:"setPreferHorizontalText:specifier:" get:"preferHorizontalText:" inBuddy:1];

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_15;
    v71[3] = &unk_258530;
    objc_copyWeak(&v73, &location);
    v29 = v50;
    v72 = v29;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_16;
    v69[3] = &unk_255E60;
    objc_copyWeak(&v70, &location);
    [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v29 setBlock:v71 getBlock:v69];
    [v62 addObject:v29];
    if (invertCopy)
    {
      v51 = +[PSSpecifier emptyGroupSpecifier];

      v52 = settingsLocString(@"SmartInvertColorsFooter", @"Accessibility");
      [v51 setProperty:v52 forKey:v37];

      [v51 setProperty:&__kCFBooleanTrue forKey:v60];
      [v62 addObject:v51];
      v53 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"SMART_INVERT" set:"setSmartInvertEnabled:specifier:" get:"smartInvertEnabled:" inBuddy:1];

      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_17;
      v66[3] = &unk_258530;
      objc_copyWeak(&v68, &location);
      v29 = v53;
      v67 = v29;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_18;
      v64[3] = &unk_255E60;
      objc_copyWeak(&v65, &location);
      [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v29 setBlock:v66 getBlock:v64];
      [v62 addObject:v29];
      objc_destroyWeak(&v65);

      objc_destroyWeak(&v68);
    }

    objc_destroyWeak(&v70);

    objc_destroyWeak(&v73);
    objc_destroyWeak(&v75);

    objc_destroyWeak(&v78);
    objc_destroyWeak(&v80);

    objc_destroyWeak(&v83);
    objc_destroyWeak(&v90);

    objc_destroyWeak(&v93);
    objc_destroyWeak(&v95);

    objc_destroyWeak(&v98);
    v30 = selfCopy;
  }

  WeakRetained = objc_loadWeakRetained(&v30->_settingsController);
  [WeakRetained setupLongTitleSpecifiers:v62];

  objc_destroyWeak(&v104);
  objc_destroyWeak(&v107);

  objc_destroyWeak(&location);

  return v62;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setBoldTextEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained boldTextEnabled:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSpecifierState:*(a1 + 32)];
}

NSNumber *__90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) largerTextPerAppValue];

  return [NSNumber numberWithInt:v1];
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setButtonShapesEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonShapesEnabled:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setOnOffLabelsEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained onOffLabelsEnabled:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setReduceTransparencyEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained reduceTransparencyEnabled:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDarkenColorsEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained darkenColorsEnabled:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDifferentiateWithoutColorEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained differentiateWithoutColor:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPreferHorizontalText:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained preferHorizontalText:0];

  return v2;
}

void __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSmartInvertEnabled:v3 specifier:*(a1 + 32)];
}

id __90__AXDisplayTextMotionSpecifiersHelper_displayTextSpecifiersIncludingSmartInvert_isPerApp___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained smartInvertEnabled:0];

  return v2;
}

- (id)motionSpecifiers
{
  v80 = [objc_allocWithZone(NSMutableArray) init];
  selfCopy = self;
  objc_initWeak(&location, self);
  appID = self->_appID;
  if (appID)
  {
    v4 = settingsLocString(@"MOTION_TITLE", @"AccessibilityTitles");
  }

  else
  {
    v4 = 0;
  }

  v5 = [PSSpecifier groupSpecifierWithName:v4];
  if (appID)
  {
  }

  v79 = AXInBuddySetupKey;
  [v5 setProperty:&__kCFBooleanTrue forKey:?];
  v78 = PSIDKey;
  [v5 setProperty:@"EmptyGroup" forKey:?];
  [v80 addObject:v5];
  v6 = settingsLocString(@"ReduceMotionFooterText", @"Accessibility");
  if (AXPSIsBatterySaverMode())
  {
    v7 = settingsLocString(@"ReduceMotionFooterText_BatteryMode", @"Accessibility");
    v8 = [v6 stringByAppendingFormat:@"\n\n%@", v7];

    v6 = v8;
  }

  [v5 setProperty:&__kCFBooleanTrue forKey:v79];
  v77 = PSFooterTextGroupKey;
  [v5 setProperty:v6 forKey:?];
  v9 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"REDUCE_MOTION" set:"setReduceMotionEnabled:specifier:" get:"reduceMotionEnabled:" inBuddy:1];
  v76 = v6;

  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke;
  v103[3] = &unk_258530;
  objc_copyWeak(&v105, &location);
  v10 = v9;
  v104 = v10;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_2;
  v101[3] = &unk_255E60;
  objc_copyWeak(&v102, &location);
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v10 setBlock:v103 getBlock:v101];
  [v80 addObject:v10];
  v11 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"REDUCE_MOTION_REDUCE_SLIDE_ANIMATIONS" set:"setReduceMotionReduceSlideTransitionsEnabled:specifier:" get:"reduceMotionReduceSlideTransitionsEnabled:" inBuddy:1];
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy setReduceMotionReduceSlideTransitionsSpecifier:v11];

  reduceMotionReduceSlideTransitionsSpecifier = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsSpecifier];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_3;
  v99[3] = &unk_255E10;
  objc_copyWeak(&v100, &location);
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_4;
  v97[3] = &unk_255E60;
  objc_copyWeak(&v98, &location);
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:reduceMotionReduceSlideTransitionsSpecifier setBlock:v99 getBlock:v97];

  v13 = +[PSSpecifier emptyGroupSpecifier];
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy setReduceMotionReduceSlideTransitionsFooterSpecifier:v13];

  reduceMotionReduceSlideTransitionsFooterSpecifier = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsFooterSpecifier];
  v15 = settingsLocString(@"REDUCE_MOTION_REDUCE_SLIDE_ANIMATIONS_FOOTER", @"Accessibility");
  [reduceMotionReduceSlideTransitionsFooterSpecifier setProperty:v15 forKey:v77];

  reduceMotionReduceSlideTransitionsFooterSpecifier2 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsFooterSpecifier];
  [reduceMotionReduceSlideTransitionsFooterSpecifier2 setProperty:&__kCFBooleanTrue forKey:v79];

  reduceMotionReduceSlideTransitionsFooterSpecifier3 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsFooterSpecifier];
  [reduceMotionReduceSlideTransitionsFooterSpecifier3 setProperty:@"ReduceMotionReduceSlideAnimationsFooter" forKey:v78];

  if ([(AXDisplayTextMotionSpecifiersHelper *)selfCopy _reduceMotionAvailable])
  {
    reduceMotionReduceSlideTransitionsFooterSpecifier4 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsFooterSpecifier];
    v118[0] = reduceMotionReduceSlideTransitionsFooterSpecifier4;
    reduceMotionReduceSlideTransitionsSpecifier2 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy reduceMotionReduceSlideTransitionsSpecifier];
    v118[1] = reduceMotionReduceSlideTransitionsSpecifier2;
    v20 = [NSArray arrayWithObjects:v118 count:2];
    [v80 addObjectsFromArray:v20];
  }

  if (AXDeviceSupportsMotionCues() && !selfCopy->_appID)
  {
    v75 = +[PSSpecifier emptyGroupSpecifier];

    [v75 setProperty:&__kCFBooleanFalse forKey:v79];
    [v75 setProperty:@"MotionCuesFooterTextGroup" forKey:v78];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v75 setProperty:v22 forKey:PSFooterCellClassGroupKey];

    v74 = [&__NSArray0__struct mutableCopy];
    v73 = settingsLocString(@"MotionCuesLearnMoreText", @"Accessibility-MotionCues");
    v23 = [NSString alloc];
    v24 = AXLocStringKeyForModel();
    v25 = settingsLocString(v24, @"Accessibility-MotionCues");
    v71 = [v23 initWithFormat:v25, v73];

    v117[0] = v73;
    v116[0] = @"moreLabel";
    v116[1] = @"additionalTitleLabel";
    v26 = settingsLocString(@"MotionCuesTitle", @"Accessibility-MotionCues");
    v117[1] = v26;
    v116[2] = @"alreadyLocalized";
    v116[3] = @"symbolName";
    v117[2] = &__kCFBooleanTrue;
    v117[3] = @"motion.cues";
    v116[4] = @"customActionBlock";
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_5;
    v96[3] = &unk_2553B0;
    v96[4] = selfCopy;
    v27 = objc_retainBlock(v96);
    v117[4] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:5];
    v70 = [v28 mutableCopy];

    v114[0] = @"contentLabel";
    v29 = [v71 stringByReplacingOccurrencesOfString:v73 withString:&stru_25D420];
    v114[1] = @"alreadyLocalized";
    v115[0] = v29;
    v115[1] = &__kCFBooleanTrue;
    v30 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
    [v74 addObject:v30];

    [v74 addObject:v70];
    v31 = AXTeachableFeatureMotionCues;
    v72 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureMotionCues];
    if ([v72 count])
    {
      v112[0] = @"moreLabel";
      v32 = settingsLocString(@"MotionCuesWhatsNewLink", @"Accessibility-MotionCues");
      v113[0] = v32;
      v112[1] = @"additionalTitleLabel";
      v33 = settingsLocString(@"MotionCuesTitle", @"Accessibility");
      v113[1] = v33;
      v113[2] = &__kCFBooleanTrue;
      v112[2] = @"alreadyLocalized";
      v112[3] = @"symbolName";
      v113[3] = @"motion.cues";
      v34 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
      v69 = [v34 mutableCopy];

      v35 = objc_opt_new();
      v110[0] = @"sectionLabel";
      v36 = [AXTeachableMomentsManager notificationTitleForFeature:v31];
      v110[1] = @"alreadyLocalized";
      v111[0] = v36;
      v111[1] = &__kCFBooleanTrue;
      v37 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
      [v35 addObject:v37];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v38 = v72;
      v39 = [v38 countByEnumeratingWithState:&v92 objects:v109 count:16];
      if (v39)
      {
        v40 = *v93;
        do
        {
          for (i = 0; i != v39; i = i + 1)
          {
            if (*v93 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v92 + 1) + 8 * i);
            v107[0] = @"headerLabel";
            itemTitle = [v42 itemTitle];
            v108[0] = itemTitle;
            v107[1] = @"contentLabel";
            itemDescription = [v42 itemDescription];
            v107[2] = @"alreadyLocalized";
            v108[1] = itemDescription;
            v108[2] = &__kCFBooleanTrue;
            v45 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:3];
            [v35 addObject:v45];
          }

          v39 = [v38 countByEnumeratingWithState:&v92 objects:v109 count:16];
        }

        while (v39);
      }

      [v69 setObject:v35 forKey:@"additionalContent"];
      [v74 addObject:v69];
    }

    [v75 setProperty:v74 forKey:@"content"];
    [v80 addObject:v75];
    v46 = settingsLocString(@"MotionCuesTitle", @"Accessibility-MotionCues");
    v10 = [PSSpecifier preferenceSpecifierNamed:v46 target:selfCopy set:0 get:"motionCuesEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v10 setProperty:&__kCFBooleanFalse forKey:v79];
    [v10 setProperty:@"MotionCues" forKey:v78];
    [v80 addObject:v10];
  }

  if (AXDeviceSupportsPhotosensitiveMitigation() && !selfCopy->_appID)
  {
    v47 = +[PSSpecifier emptyGroupSpecifier];
    v48 = PSESettingsFooterText();
    [v47 setProperty:v48 forKey:v77];

    [v10 setProperty:&__kCFBooleanTrue forKey:v79];
    [v80 addObject:v47];
    v49 = settingsLocString(@"PHOTOSENSITIVE_MITIGATION_TITLE", @"Accessibility-PSE");
    v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:selfCopy set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];

    [v50 setProperty:@"PHOTOSENSITIVE_MITIGATION" forKey:v78];
    [v50 setProperty:&__kCFBooleanTrue forKey:v79];
    [v80 addObject:v50];
  }

  v51 = +[PSSpecifier emptyGroupSpecifier];

  [v51 setProperty:&__kCFBooleanFalse forKey:v79];
  [v51 setProperty:@"EmptyGroup" forKey:v78];
  v52 = settingsLocString(@"ReduceMotionFooterText_Autoplay", @"Accessibility-AnimatedImages");
  [v51 setProperty:v52 forKey:v77];

  [v80 addObject:v51];
  v53 = settingsLocString(@"REDUCE_MOTION_AUTOPLAY_ANIMATED_IMAGES", @"Accessibility-AnimatedImages");
  v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:selfCopy set:"setAutoplayAnimatedImages:specifier:" get:"autoplayAnimatedImages:" detail:0 cell:6 edit:0];

  [v54 setProperty:@"REDUCE_MOTION_AUTOPLAY_ANIMATED_IMAGES" forKey:v78];
  v55 = PSAllowMultilineTitleKey;
  [v51 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v51 setProperty:&__kCFBooleanTrue forKey:v79];
  [v80 addObject:v54];
  v56 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"REDUCE_MOTION_AUTOPLAY_VIDEO_PREVIEWS" set:"setAutoplayVideoPreviews:specifier:" get:"autoplayVideoPreviews:" inBuddy:0];

  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_6;
  v89[3] = &unk_258530;
  objc_copyWeak(&v91, &location);
  v57 = v56;
  v90 = v57;
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_7;
  v87[3] = &unk_255E60;
  objc_copyWeak(&v88, &location);
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v57 setBlock:v89 getBlock:v87];
  [v57 setProperty:&__kCFBooleanTrue forKey:v55];
  [v80 addObject:v57];
  if (selfCopy->_appID)
  {
    v58 = v57;
  }

  else
  {
    v59 = settingsLocString(@"REDUCE_MOTION_AUTOPLAY_MESSAGES_EFFECTS", @"Accessibility");
    v58 = [PSSpecifier preferenceSpecifierNamed:v59 target:selfCopy set:"setAutoplayMessagesEffects:specifier:" get:"autoplayMessagesEffects:" detail:0 cell:6 edit:0];

    [v58 setProperty:&__kCFBooleanFalse forKey:v79];
    [v58 setProperty:@"ReduceMotionAutoplayMessagesEffects" forKey:v78];
    [v80 addObject:v58];
  }

  v60 = +[PSSpecifier emptyGroupSpecifier];

  v61 = settingsLocString(@"PREFER_NONBLINKING_CURSOR_FOOTER", @"Accessibility");
  [v60 setProperty:v61 forKey:v77];

  [v60 setProperty:&__kCFBooleanTrue forKey:v79];
  [v80 addObject:v60];
  v62 = [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _generateSpecifierForName:@"PREFER_NONBLINKING_CURSOR" set:"setPreferNonBlinkingCursor:specifier:" get:"preferNonBlinkingCursor:" inBuddy:1];

  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_8;
  v84[3] = &unk_258530;
  objc_copyWeak(&v86, &location);
  v63 = v62;
  v85 = v63;
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_9;
  v82[3] = &unk_255E60;
  objc_copyWeak(&v83, &location);
  [(AXDisplayTextMotionSpecifiersHelper *)selfCopy _setupSpecifierIfNeeded:v63 setBlock:v84 getBlock:v82];
  [v80 addObject:v63];
  if (AXHasCapability() && !selfCopy->_appID)
  {
    v64 = +[PSSpecifier emptyGroupSpecifier];

    v65 = settingsLocString(@"RefreshRateFooterText", @"Accessibility");
    [v64 setProperty:v65 forKey:v77];

    [v64 setProperty:&__kCFBooleanTrue forKey:v79];
    [v80 addObject:v64];
    v66 = settingsLocString(@"RefreshRateSlider", @"Accessibility");
    v63 = [PSSpecifier preferenceSpecifierNamed:v66 target:selfCopy set:"setRefreshRateEnabled:specifier:" get:"refreshRateEnabled:" detail:0 cell:6 edit:0];

    [v63 setProperty:@"REFRESH_RATE" forKey:v78];
    [v63 setProperty:&__kCFBooleanTrue forKey:v55];
    [v63 setProperty:&__kCFBooleanTrue forKey:v79];
    [v80 addObject:v63];
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_settingsController);
  [WeakRetained setupLongTitleSpecifiers:v80];

  objc_destroyWeak(&v83);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);

  objc_destroyWeak(&v91);
  objc_destroyWeak(&v98);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&v102);

  objc_destroyWeak(&v105);
  objc_destroyWeak(&location);

  return v80;
}

void __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setReduceMotionEnabled:v3 specifier:*(a1 + 32)];
}

id __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained reduceMotionEnabled:0];

  return v2;
}

void __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 reduceMotionReduceSlideTransitionsSpecifier];
  [v5 setReduceMotionReduceSlideTransitionsEnabled:v3 specifier:v4];
}

id __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained reduceMotionReduceSlideTransitionsEnabled:0];

  return v2;
}

void __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAutoplayVideoPreviews:v3 specifier:*(a1 + 32)];
}

id __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained autoplayVideoPreviews:0];

  return v2;
}

void __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPreferNonBlinkingCursor:v3 specifier:*(a1 + 32)];
}

id __55__AXDisplayTextMotionSpecifiersHelper_motionSpecifiers__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained preferNonBlinkingCursor:0];

  return v2;
}

- (void)_motionCuesLearnMoreLinkTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[AXMotionCuesLearnMoreController learnMoreController];
  objc_initWeak(&location, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __70__AXDisplayTextMotionSpecifiersHelper__motionCuesLearnMoreLinkTapped___block_invoke;
  v13 = &unk_255388;
  objc_copyWeak(&v14, &location);
  [v5 setDismissHandler:&v10];
  v6 = [OBNavigationController alloc];
  v7 = [v6 initWithRootViewController:{v5, v10, v11, v12, v13}];
  learnMoreNavigationController = self->_learnMoreNavigationController;
  self->_learnMoreNavigationController = v7;

  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  [WeakRetained presentViewController:self->_learnMoreNavigationController animated:1 completion:0];

  AnalyticsSendEvent();
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__AXDisplayTextMotionSpecifiersHelper__motionCuesLearnMoreLinkTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (id)motionCuesEnabled:(id)enabled
{
  if (_AXSMotionCuesEnabled())
  {
    v3 = @"ON";
    if (!_AXSMotionCuesMode() && !AXDeviceIsPad())
    {
      v3 = @"AUTOMATIC";
    }
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)setPreferNonBlinkingCursor:(id)cursor specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [cursor integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetPrefersNonBlinkingCursorIndicatorApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [cursor BOOLValue];
    _AXSSetPrefersNonBlinkingCursorIndicator();
  }
}

- (void)setRefreshRateEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setShouldLimitDisplayRefreshRate:bOOLValue];
}

- (id)refreshRateEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldLimitDisplayRefreshRate]);

  return v4;
}

- (id)preferNonBlinkingCursor:(id)cursor
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSPrefersNonBlinkingCursorIndicatorApp()];
    v5 = v4;
    if (cursor)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSPrefersNonBlinkingCursorIndicatorGlobal()];
  }

  return v7;
}

- (void)setPreferHorizontalText:(id)text specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [text integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetPrefersHorizontalTextLayoutApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [text BOOLValue];
    _AXSSetPrefersHorizontalTextLayout();
  }
}

- (id)preferHorizontalText:(id)text
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSPrefersHorizontalTextLayoutApp()];
    v5 = v4;
    if (text)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSPrefersHorizontalTextLayoutGlobal()];
  }

  return v7;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  bOOLValue = [value BOOLValue];

  __AXSPhotosensitiveMitigationSetEnabled(bOOLValue);
}

- (id)preferenceValue:(id)value
{
  v3 = _AXSPhotosensitiveMitigationEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)_generateSpecifierForName:(id)name set:(SEL)set get:(SEL)get inBuddy:(BOOL)buddy
{
  buddyCopy = buddy;
  appID = self->_appID;
  nameCopy = name;
  v12 = settingsLocString(nameCopy, @"Accessibility");
  if (appID)
  {
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:get detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:set get:get detail:0 cell:6 edit:0];

    v12 = [NSNumber numberWithBool:buddyCopy];
    [v13 setProperty:v12 forKey:AXInBuddySetupKey];
  }

  [v13 setProperty:nameCopy forKey:PSIDKey];
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v13;
}

- (void)_setupSpecifierIfNeeded:(id)needed setBlock:(id)block getBlock:(id)getBlock
{
  if (self->_appID)
  {
    getBlockCopy = getBlock;
    neededCopy = needed;
    v9 = objc_retainBlock(block);
    [neededCopy setProperty:v9 forKey:@"setValueSelectedBlock"];

    v10 = objc_retainBlock(getBlockCopy);
    [neededCopy setProperty:v10 forKey:@"getValueSelectedBlock"];
  }
}

- (void)_updateSpecifierState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  [WeakRetained reloadSpecifier:stateCopy];
}

- (void)_updateReduceSlideTransitionsSpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _reduceMotionAvailable = [(AXDisplayTextMotionSpecifiersHelper *)self _reduceMotionAvailable];
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  v20 = WeakRetained;
  if (_reduceMotionAvailable)
  {
    specifiers = [WeakRetained specifiers];
    reduceMotionReduceSlideTransitionsSpecifier = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsSpecifier];
    if ([specifiers containsObject:reduceMotionReduceSlideTransitionsSpecifier])
    {
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_settingsController);
      specifiers2 = [v12 specifiers];
      reduceMotionReduceSlideTransitionsFooterSpecifier = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsFooterSpecifier];
      v15 = [specifiers2 containsObject:reduceMotionReduceSlideTransitionsFooterSpecifier];

      if ((v15 & 1) == 0)
      {
        v16 = objc_loadWeakRetained(&self->_settingsController);
        reduceMotionReduceSlideTransitionsFooterSpecifier2 = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsFooterSpecifier];
        v21[0] = reduceMotionReduceSlideTransitionsFooterSpecifier2;
        reduceMotionReduceSlideTransitionsSpecifier2 = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsSpecifier];
        v21[1] = reduceMotionReduceSlideTransitionsSpecifier2;
        v19 = [NSArray arrayWithObjects:v21 count:2];
        [v16 insertContiguousSpecifiers:v19 afterSpecifierID:@"REDUCE_MOTION" animated:animatedCopy];
      }
    }
  }

  else
  {
    reduceMotionReduceSlideTransitionsFooterSpecifier3 = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsFooterSpecifier];
    v22[0] = reduceMotionReduceSlideTransitionsFooterSpecifier3;
    reduceMotionReduceSlideTransitionsSpecifier3 = [(AXDisplayTextMotionSpecifiersHelper *)self reduceMotionReduceSlideTransitionsSpecifier];
    v22[1] = reduceMotionReduceSlideTransitionsSpecifier3;
    v11 = [NSArray arrayWithObjects:v22 count:2];
    [v20 removeContiguousSpecifiers:v11 animated:animatedCopy];
  }
}

- (id)_accessibilitySettingsBaseController
{
  settingsController = [(AXDisplayTextMotionSpecifiersHelper *)self settingsController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    settingsController2 = [(AXDisplayTextMotionSpecifiersHelper *)self settingsController];
  }

  else
  {
    settingsController2 = 0;
  }

  return settingsController2;
}

- (BOOL)_reduceMotionAvailable
{
  if (!self->_appID)
  {
    goto LABEL_5;
  }

  [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
  v3 = _AXSReduceMotionEnabledApp();
  if (v3 != 1)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    if (_AXSReduceMotionEnabledApp() != -1)
    {
      LOBYTE(v3) = 0;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = _AXSReduceMotionEnabledGlobal() != 0;
  }

  return v3;
}

- (id)boldTextEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSEnhanceTextLegibilityEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSEnhanceTextLegibilityEnabledGlobal()];
  }

  return v7;
}

- (void)setBoldTextEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetEnhanceTextLegibilityEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetEnhanceTextLegibilityEnabled();
  }
}

- (id)largerTextEnabled:(id)enabled
{
  if (self->_appID)
  {
    largerTextPerAppValue = [(AXDisplayTextMotionSpecifiersHelper *)self largerTextPerAppValue];
  }

  else
  {
    largerTextPerAppValue = _AXSLargeTextUsesExtendedRange() != 0;
  }

  v4 = [NSNumber numberWithInt:largerTextPerAppValue];
  v5 = [AXDefaultOnOffViewController stringValueForNumber:v4];

  return v5;
}

- (int)largerTextPerAppValue
{
  v2 = _AXSCopyPreferredContentSizeCategoryNameApp();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (id)buttonShapesEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSButtonShapesEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSButtonShapesEnabledGlobal()];
  }

  return v7;
}

- (void)setButtonShapesEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetButtonShapesEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetButtonShapesEnabled();
  }
}

- (id)onOffLabelsEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSIncreaseButtonLegibilityApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSIncreaseButtonLegibilityGlobal()];
  }

  return v7;
}

- (void)setOnOffLabelsEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetIncreaseButtonLegibilityApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetIncreaseButtonLegibility();
  }
}

- (id)reduceTransparencyEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSEnhanceBackgroundContrastEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSEnhanceBackgroundContrastEnabledGlobal()];
  }

  return v7;
}

- (void)setReduceTransparencyEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetEnhanceBackgroundContrastEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetEnhanceBackgroundContrastEnabled();
  }
}

- (id)darkenColorsEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXDarkenSystemColorsApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXDarkenSystemColorsGlobal()];
  }

  return v7;
}

- (void)setDarkenColorsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v6 = specifierCopy;
  v7 = enabledCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __72__AXDisplayTextMotionSpecifiersHelper_setDarkenColorsEnabled_specifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24))
  {
    [v2 integerValue];
    [*(a1 + 32) _cfAppID];
    _AXSSetDarkenSystemColorsApp();
    [*(a1 + 32) _updateSpecifierState:*(a1 + 48)];
    v5 = +[AXSettings sharedInstance];
    [v5 aggregatePerAppSettingsStatistics];
  }

  else
  {
    v4 = [v2 BOOLValue];

    __AXSSetDarkenSystemColors(v4);
  }
}

- (id)differentiateWithoutColor:(id)color
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSDifferentiateWithoutColorEnabledApp()];
    v5 = v4;
    if (color)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSDifferentiateWithoutColorEnabledGlobal()];
  }

  return v7;
}

- (void)setDifferentiateWithoutColorEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetDifferentiateWithoutColorEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetDifferentiateWithoutColorEnabled();
  }
}

- (id)reduceMotionEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSReduceMotionEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSReduceMotionEnabledGlobal()];
  }

  return v7;
}

- (void)setReduceMotionEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (self->_appID)
  {
    integerValue = [enabledCopy integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetReduceMotionEnabledApp();
    if (integerValue)
    {
      if (integerValue != -1 || [(AXDisplayTextMotionSpecifiersHelper *)self _reduceMotionAvailable])
      {
        goto LABEL_13;
      }

      v8 = &off_27AE18;
    }

    else
    {
      v8 = &off_27AE30;
    }

    [(AXDisplayTextMotionSpecifiersHelper *)self setReduceMotionReduceSlideTransitionsEnabled:v8 specifier:0];
LABEL_13:
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateReduceSlideTransitionsSpecifiersAnimated:0];
    v12 = +[AXSettings sharedInstance];
    [v12 aggregatePerAppSettingsStatistics];

    goto LABEL_17;
  }

  bOOLValue = [enabledCopy BOOLValue];
  _AXSSetReduceMotionEnabled();
  if (bOOLValue && (AXDeviceHasHomeButton() & 1) == 0)
  {
    v10 = +[AXSettings sharedInstance];
    [v10 setDidResetD22Preferences:1];
  }

  if ([enabledCopy BOOLValue])
  {
    v11 = _AXSReduceMotionAutoplayMessagesEffectsEnabled() != 0;
  }

  else
  {
    v11 = 1;
  }

  _accessibilitySettingsBaseController = [(AXDisplayTextMotionSpecifiersHelper *)self _accessibilitySettingsBaseController];
  v14 = [NSNumber numberWithBool:v11];
  [_accessibilitySettingsBaseController setGizmoPref:v14 forKey:@"ReduceMotionAutoplayMessagesEffectsEnabled" domain:kAXSAccessibilityPreferenceDomain];

  if ((bOOLValue & 1) == 0)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self setReduceMotionReduceSlideTransitionsEnabled:enabledCopy specifier:0];
  }

LABEL_17:
}

- (id)smartInvertEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSInvertColorsEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithBool:_AXSInvertColorsEnabledGlobal() != 0];
  }

  return v7;
}

- (void)setSmartInvertEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabledCopy integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSInvertColorsSetEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v8 = +[AXSettings sharedInstance];
    [v8 aggregatePerAppSettingsStatistics];
  }

  else
  {
    settingsController = [(AXDisplayTextMotionSpecifiersHelper *)self settingsController];
    traitCollection = [settingsController traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 2)
    {
      displayFilterUIClient = [(AXDisplayTextMotionSpecifiersHelper *)self displayFilterUIClient];
      v13 = +[AXAccessQueue mainAccessQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __71__AXDisplayTextMotionSpecifiersHelper_setSmartInvertEnabled_specifier___block_invoke;
      v14[3] = &unk_257890;
      v14[4] = self;
      v15 = enabledCopy;
      [displayFilterUIClient sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:1 targetAccessQueue:v13 completion:v14];
    }

    else
    {
      -[AXDisplayTextMotionSpecifiersHelper handleGlobalSmartInvertEnabled:](self, "handleGlobalSmartInvertEnabled:", [enabledCopy BOOLValue]);
    }
  }
}

void __71__AXDisplayTextMotionSpecifiersHelper_setSmartInvertEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"animationDuration"];
  [v3 doubleValue];

  v4 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
}

id __71__AXDisplayTextMotionSpecifiersHelper_setSmartInvertEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) BOOLValue];

  return [v1 handleGlobalSmartInvertEnabled:v2];
}

- (void)handleGlobalSmartInvertEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _AXSInvertColorsSetEnabled();
  v5 = +[AXSettings sharedInstance];
  classicInvertColors = [v5 classicInvertColors];

  if (classicInvertColors)
  {
    v7 = !enabledCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setClassicInvertColors:0];
  }

  if (enabledCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = +[AXSettings sharedInstance];
    [v10 setLastSmartInvertColorsEnablement:Current];
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  [WeakRetained reloadSpecifierID:@"classInvert"];
}

- (id)reduceMotionReduceSlideTransitionsEnabled:(id)enabled
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSReduceMotionReduceSlideTransitionsEnabledApp()];
    v5 = v4;
    if (enabled)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSReduceMotionReduceSlideTransitionsEnabledGlobal()];
  }

  return v7;
}

- (void)setReduceMotionReduceSlideTransitionsEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [enabled integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetReduceMotionReduceSlideTransitionsEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [enabled BOOLValue];
    _AXSSetReduceMotionReduceSlideTransitionsEnabled();
  }
}

- (id)autoplayMessagesEffects:(id)effects
{
  v3 = _AXSReduceMotionAutoplayMessagesEffectsEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAutoplayMessagesEffects:(id)effects specifier:(id)specifier
{
  effectsCopy = effects;
  [effectsCopy BOOLValue];
  _AXSSetReduceMotionAutoplayMessagesEffectsEnabled();
  _accessibilitySettingsBaseController = [(AXDisplayTextMotionSpecifiersHelper *)self _accessibilitySettingsBaseController];
  [_accessibilitySettingsBaseController setGizmoPref:effectsCopy forKey:@"ReduceMotionAutoplayMessagesEffectsEnabled" domain:kAXSAccessibilityPreferenceDomain];
}

- (id)autoplayAnimatedImages:(id)images
{
  v3 = _AXSReduceMotionAutoplayAnimatedImagesEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAutoplayAnimatedImages:(id)images specifier:(id)specifier
{
  imagesCopy = images;
  [imagesCopy BOOLValue];
  _AXSSetReduceMotionAutoplayAnimatedImagesEnabled();
  _accessibilitySettingsBaseController = [(AXDisplayTextMotionSpecifiersHelper *)self _accessibilitySettingsBaseController];
  [_accessibilitySettingsBaseController setGizmoPref:imagesCopy forKey:@"ReduceMotionAutoplayAnimatedImagesEnabled" domain:kAXSAccessibilityPreferenceDomain];
}

- (id)autoplayVideoPreviews:(id)previews
{
  if (self->_appID)
  {
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    v4 = [NSNumber numberWithInt:_AXSReduceMotionAutoplayVideoPreviewsEnabledApp()];
    v5 = v4;
    if (previews)
    {
      v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = [NSNumber numberWithUnsignedChar:_AXSReduceMotionAutoplayVideoPreviewsEnabledGlobal()];
  }

  return v7;
}

- (void)setAutoplayVideoPreviews:(id)previews specifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_appID)
  {
    [previews integerValue];
    [(AXDisplayTextMotionSpecifiersHelper *)self _cfAppID];
    _AXSSetReduceMotionAutoplayVideoPreviewsEnabledApp();
    [(AXDisplayTextMotionSpecifiersHelper *)self _updateSpecifierState:specifierCopy];
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];
  }

  else
  {
    [previews BOOLValue];
    _AXSSetReduceMotionAutoplayVideoPreviewsEnabled();
  }
}

- (AXUIClient)displayFilterUIClient
{
  displayFilterUIClient = self->_displayFilterUIClient;
  if (!displayFilterUIClient)
  {
    v4 = [AXUIClient alloc];
    v5 = [v4 initWithIdentifier:@"HomeClickController" serviceBundleName:AXDisplayFilterUIServiceName];
    v6 = self->_displayFilterUIClient;
    self->_displayFilterUIClient = v5;

    displayFilterUIClient = self->_displayFilterUIClient;
  }

  return displayFilterUIClient;
}

- (AccessibilitySettingsBaseController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

@end