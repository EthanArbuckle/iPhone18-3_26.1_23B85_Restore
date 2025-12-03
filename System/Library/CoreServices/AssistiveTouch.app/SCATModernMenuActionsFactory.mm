@interface SCATModernMenuActionsFactory
+ (id)_additionalMenuItemsForHomeActionForMenu:(id)menu delegate:(id)delegate;
+ (id)_capitalizedMenuTitle:(id)title;
+ (id)_escapableElements;
+ (id)_fallbackImageForCustomActionMenuItem:(id)item charactersInUse:(id)use;
+ (id)_fingerItemStringForNumberOfFingers:(unint64_t)fingers;
+ (id)_imageNameForNumberOfFingers:(unint64_t)fingers;
+ (id)_menuItemsForElementSpecificActionsForMenu:(id)menu delegate:(id)delegate;
+ (id)_typingCandidates;
+ (id)dragMenuItemsForElement:(id)element delegate:(id)delegate;
+ (id)itemDetailsForItem:(id)item menu:(id)menu;
+ (id)menuItemForTapWithMenu:(id)menu delegate:(id)delegate;
+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForCustomActions:(id)actions menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForDrops:(id)drops menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate;
+ (id)updateBlockForIdentifier:(id)identifier;
+ (void)_handlePerformEscapeWithMenu:(id)menu;
+ (void)_title:(id *)_title imageForAlternateNavigationItem:(id *)item;
+ (void)_title:(id *)_title imageForEyeTrackingNavigationItem:(id *)item;
+ (void)_title:(id *)_title imageForNavigationItem:(id *)item;
+ (void)toggleAlternativeNavigationMode;
+ (void)toggleEyeTracking;
+ (void)toggleNavigationMode;
@end

@implementation SCATModernMenuActionsFactory

+ (id)menuItemForTapWithMenu:(id)menu delegate:(id)delegate
{
  v13[0] = @"action_activate";
  v12[0] = @"identifier";
  v12[1] = @"title";
  delegateCopy = delegate;
  menuCopy = menu;
  v8 = sub_100042B24(@"TAP");
  v13[1] = v8;
  v13[2] = @"SCATIcon_gestures_tap";
  v12[2] = @"imageName";
  v12[3] = @"activateBehavior";
  v13[3] = &off_1001E5580;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
  v10 = [self menuItemWithItemDictionary:v9 menu:menuCopy delegate:delegateCopy];

  return v10;
}

+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate
{
  itemCopy = item;
  menuCopy = menu;
  delegateCopy = delegate;
  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemElementSpecificActions])
  {
    v11 = [self _menuItemsForElementSpecificActionsForMenu:menuCopy delegate:delegateCopy];
  }

  else
  {
    v11 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [self itemDetailsForItem:itemCopy menu:{menuCopy, 0}];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [self menuItemWithItemDictionary:*(*(&v20 + 1) + 8 * i) menu:menuCopy delegate:delegateCopy];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemHome])
    {
      v18 = [self _additionalMenuItemsForHomeActionForMenu:menuCopy delegate:delegateCopy];
      [v11 addObjectsFromArray:v18];
    }
  }

  return v11;
}

+ (id)itemDetailsForItem:(id)item menu:(id)menu
{
  itemCopy = item;
  menuCopy = menu;
  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemDevice])
  {
    v139[0] = @"device";
    v138[0] = @"identifier";
    v138[1] = @"title";
    keyboardApplication = sub_100042B24(@"DEVICE");
    v139[1] = keyboardApplication;
    v138[2] = @"imageName";
    v9 = [NSString sc_deviceIconNameForIdentifier:@"device"];
    v138[3] = @"activateBehavior";
    v139[2] = v9;
    v139[3] = &off_1001E5598;
    v10 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:4];
    v140 = v10;
    v11 = &v140;
LABEL_3:
    textElement = [NSArray arrayWithObjects:v11 count:1];
LABEL_4:

LABEL_11:
    goto LABEL_12;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemEdit])
  {
    textElement = [menuCopy textElement];

    if (!textElement)
    {
      goto LABEL_12;
    }

    v136[0] = @"action_edit";
    v135[0] = @"identifier";
    v135[1] = @"title";
    keyboardApplication = sub_100042B24(@"EDIT");
    v136[1] = keyboardApplication;
    v136[2] = @"SCATIcon_edit";
    v135[2] = @"imageName";
    v135[3] = @"activateBehavior";
    v136[3] = &off_1001E5598;
    v9 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4];
    v137 = v9;
    v13 = &v137;
    goto LABEL_10;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemEscape])
  {
    v133[0] = @"action_escape";
    v132[0] = @"identifier";
    v132[1] = @"title";
    keyboardApplication = sub_100042B24(@"ESCAPE");
    v132[2] = @"activateBehavior";
    v133[1] = keyboardApplication;
    v133[2] = &off_1001E5580;
    v9 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:3];
    v134 = v9;
    v13 = &v134;
LABEL_10:
    textElement = [NSArray arrayWithObjects:v13 count:1];
    goto LABEL_11;
  }

  if ([itemCopy isEqualToString:AXSSwitchControlMenuItemToggleDictation])
  {
    keyboardApplication = [menuCopy keyboardApplication];
    uiElement = [keyboardApplication uiElement];
    v16 = [uiElement BOOLWithAXAttribute:3034];

    if (v16)
    {
      uiElement2 = [keyboardApplication uiElement];
      v18 = [uiElement2 BOOLWithAXAttribute:3010];

      v130[0] = @"action_toggle_dictation";
      v129[0] = @"identifier";
      v129[1] = @"title";
      if (v18)
      {
        v19 = @"STOP_DICTATION";
      }

      else
      {
        v19 = @"START_DICTATION";
      }

      v9 = sub_100042B24(v19);
      v130[1] = v9;
      v130[2] = @"SCATIcon_device_siri";
      v129[2] = @"imageName";
      v129[3] = @"allowsDwellScanningToAbortAfterTimeout";
      v10 = [NSNumber numberWithBool:v18];
      v129[4] = @"activateBehavior";
      v130[3] = v10;
      v130[4] = &off_1001E55B0;
      v20 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:5];
      v131 = v20;
      textElement = [NSArray arrayWithObjects:&v131 count:1];

      goto LABEL_4;
    }

LABEL_69:

LABEL_70:
    textElement = 0;
    goto LABEL_12;
  }

  if (![itemCopy isEqualToString:AXSSwitchControlMenuItemGestures])
  {
    v21 = AXSSwitchControlMenuItemHome;
    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemHome])
    {
      v124[0] = @"action_home";
      v123[0] = @"identifier";
      v123[1] = @"title";
      keyboardApplication = sub_100042B24(@"SCAT_QUICK_ITEM_HOME");
      v124[1] = keyboardApplication;
      v124[2] = @"SCATIcon_device_home";
      v123[2] = @"imageName";
      v123[3] = @"guidedAccess";
      v123[4] = @"activateBehavior";
      v124[3] = &__kCFBooleanFalse;
      v124[4] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:5];
      v125 = v9;
      v13 = &v125;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemIncrementDecrement])
    {
      element = [menuCopy element];
      scatTraits = [element scatTraits];
      v24 = kAXAdjustableTrait & ~scatTraits;

      if (!v24)
      {
        v25 = +[HNDAccessibilityManager sharedManager];
        if ([v25 applicationIsRTL])
        {
          v26 = @"SCATIcon_action_increment";
        }

        else
        {
          v26 = @"SCATIcon_action_decrement";
        }

        v27 = v26;

        v28 = +[HNDAccessibilityManager sharedManager];
        if ([v28 applicationIsRTL])
        {
          v29 = @"SCATIcon_action_decrement";
        }

        else
        {
          v29 = @"SCATIcon_action_increment";
        }

        v30 = v29;

        v121[0] = @"action_decrement";
        v120[0] = @"identifier";
        v120[1] = @"title";
        v31 = sub_100042B24(@"DECREMENT");
        v121[1] = v31;
        v121[2] = v27;
        v120[2] = @"imageName";
        v120[3] = @"activateBehavior";
        v121[3] = &off_1001E55B0;
        v32 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:4];
        v122[0] = v32;
        v119[0] = @"action_increment";
        v118[0] = @"identifier";
        v118[1] = @"title";
        v33 = sub_100042B24(@"INCREMENT");
        v119[1] = v33;
        v119[2] = v30;
        v118[2] = @"imageName";
        v118[3] = @"activateBehavior";
        v119[3] = &off_1001E55B0;
        v34 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
        v122[1] = v34;
        textElement = [NSArray arrayWithObjects:v122 count:2];

        goto LABEL_12;
      }

      goto LABEL_70;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemNavigationMode])
    {
      v70 = 0;
      v71 = 0;
      [self _title:&v71 imageForNavigationItem:&v70];
      v35 = v71;
      v36 = v70;
      textElement = objc_alloc_init(NSMutableArray);
      if (v35 && v36)
      {
        v116[0] = @"identifier";
        v116[1] = @"title";
        v117[0] = @"settings_navigationMode";
        v117[1] = v35;
        v116[2] = @"imageName";
        v116[3] = @"activateBehavior";
        v117[2] = v36;
        v117[3] = &off_1001E5580;
        v37 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:4];
        [textElement addObject:v37];
      }

      else
      {
        v37 = SWCHLogMenu();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          sub_10012AA48();
        }
      }

      v39 = +[AXSettings sharedInstance];
      switchControlUseCameraForPointMode = [v39 switchControlUseCameraForPointMode];

      if (switchControlUseCameraForPointMode)
      {
        v68 = 0;
        v69 = 0;
        [self _title:&v69 imageForAlternateNavigationItem:&v68];
        v41 = v69;
        v42 = v68;
        v43 = v42;
        if (v41 && v42)
        {
          v114[0] = @"identifier";
          v114[1] = @"title";
          v115[0] = @"settings_alternativeNavigationMode";
          v115[1] = v41;
          v114[2] = @"imageName";
          v114[3] = @"activateBehavior";
          v115[2] = v42;
          v115[3] = &off_1001E5580;
          v44 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:4];
          [textElement addObject:v44];
        }

        else
        {
          v44 = SWCHLogMenu();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            sub_10012AAB0();
          }
        }
      }

      goto LABEL_60;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemEyeTracking])
    {
      if (!_os_feature_enabled_impl() || !AXDeviceSupportsOnDeviceEyeTracking())
      {
        goto LABEL_70;
      }

      v66 = 0;
      v67 = 0;
      [self _title:&v67 imageForEyeTrackingNavigationItem:&v66];
      keyboardApplication = v67;
      v38 = v66;
      v9 = v38;
      if (keyboardApplication && v38)
      {
        v111[0] = @"identifier";
        v111[1] = @"title";
        v112[0] = @"eye_tracking";
        v112[1] = keyboardApplication;
        v111[2] = @"imageName";
        v111[3] = @"activateBehavior";
        v112[2] = v38;
        v112[3] = &off_1001E5580;
        v10 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
        v113 = v10;
        v11 = &v113;
        goto LABEL_3;
      }

      v49 = SWCHLogMenu();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_10012A9E0();
      }

      goto LABEL_69;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemCalibrateEyeTracking])
    {
      if (_os_feature_enabled_impl())
      {
        if (AXDeviceSupportsOnDeviceEyeTracking())
        {
          v45 = +[AXSettings sharedInstance];
          switchControlOnDeviceEyeTrackingEnabled = [v45 switchControlOnDeviceEyeTrackingEnabled];

          if (switchControlOnDeviceEyeTrackingEnabled)
          {
            v109[0] = @"calibrate_eye_tracking";
            v108[0] = @"identifier";
            v108[1] = @"title";
            keyboardApplication = sub_100042B24(@"CALIBRATE_ON_DEVICE_EYE_TRACKING");
            v109[1] = keyboardApplication;
            v109[2] = @"dot.scope";
            v108[2] = @"imageName";
            v108[3] = @"activateBehavior";
            v109[3] = &off_1001E5580;
            v9 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:4];
            v110 = v9;
            v13 = &v110;
            goto LABEL_10;
          }
        }
      }

      goto LABEL_70;
    }

    if ([itemCopy isEqualToString:v21])
    {
      v106[0] = @"action_home";
      v105[0] = @"identifier";
      v105[1] = @"title";
      keyboardApplication = sub_100042B24(@"SCAT_QUICK_ITEM_HOME");
      v106[1] = keyboardApplication;
      v106[2] = @"SCATIcon_device_home";
      v105[2] = @"imageName";
      v105[3] = @"guidedAccess";
      v105[4] = @"activateBehavior";
      v106[3] = &__kCFBooleanFalse;
      v106[4] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:5];
      v107 = v9;
      v13 = &v107;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemRecipes])
    {
      v47 = +[AXSettings sharedInstance];
      switchControlRecipes = [v47 switchControlRecipes];
      if ([switchControlRecipes count])
      {
      }

      else
      {
        screenPoint = [menuCopy screenPoint];

        if (!screenPoint)
        {
          goto LABEL_70;
        }
      }

      v103[0] = @"recipes";
      v102[0] = @"identifier";
      v102[1] = @"title";
      keyboardApplication = sub_100042B24(@"RECIPES");
      v102[2] = @"activateBehavior";
      v103[1] = keyboardApplication;
      v103[2] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
      v104 = v9;
      v13 = &v104;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemRefineSelection])
    {
      keyboardApplication = [menuCopy pointPicker];
      if ([keyboardApplication allowsSelectionRefinement])
      {
        v100[0] = @"action_refinePoint";
        v99[0] = @"identifier";
        v99[1] = @"title";
        v9 = sub_100042B24(@"REFINE-SELECTION");
        v99[2] = @"activateBehavior";
        v100[1] = v9;
        v100[2] = &off_1001E5580;
        v10 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:3];
        v101 = v10;
        v11 = &v101;
        goto LABEL_3;
      }

      goto LABEL_69;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemScroll])
    {
      v97[0] = @"action_scroll";
      v96[0] = @"identifier";
      v96[1] = @"title";
      keyboardApplication = sub_100042B24(@"SCROLL");
      v96[2] = @"activateBehavior";
      v97[1] = keyboardApplication;
      v97[2] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:3];
      v98 = v9;
      v13 = &v98;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSettings])
    {
      v94[0] = @"settings";
      v93[0] = @"identifier";
      v93[1] = @"title";
      keyboardApplication = sub_100042B24(@"SETTINGS");
      v94[1] = keyboardApplication;
      v94[2] = &__kCFBooleanFalse;
      v93[2] = @"guidedAccess";
      v93[3] = @"activateBehavior";
      v94[3] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:4];
      v95 = v9;
      v13 = &v95;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemMediaControls])
    {
      v91[0] = @"mediacontrols";
      v90[0] = @"identifier";
      v90[1] = @"title";
      keyboardApplication = sub_100042B24(@"MEDIA_CONTROLS");
      v91[1] = keyboardApplication;
      v91[2] = &__kCFBooleanFalse;
      v90[2] = @"guidedAccess";
      v90[3] = @"activateBehavior";
      v91[3] = &off_1001E5598;
      v9 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:4];
      v92 = v9;
      v13 = &v92;
      goto LABEL_10;
    }

    if ([itemCopy isEqualToString:AXSSwitchControlMenuItemItemMenu])
    {
      delegate = [menuCopy delegate];
      if (([delegate shouldAddItemSpecificMenuOptionsToMenu:menuCopy]& 1) != 0)
      {
        delegate2 = [menuCopy delegate];
        v53 = [delegate2 itemMenuStateForMenu:menuCopy];

        if (v53 != 2)
        {
          v88[0] = @"action_itemSpecificMenu";
          v87[0] = @"identifier";
          v87[1] = @"title";
          keyboardApplication = sub_100042B24(@"ITEM_SPECIFIC_MENU");
          v88[1] = keyboardApplication;
          v88[2] = @"SCATIcon_settings_moveTop";
          v87[2] = @"imageName";
          v87[3] = @"activateBehavior";
          v88[3] = &off_1001E5580;
          v9 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
          v89 = v9;
          v13 = &v89;
          goto LABEL_10;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemLockItemMenu])
      {
        delegate3 = [menuCopy delegate];
        v55 = [delegate3 shouldAddItemSpecificMenuOptionsToMenu:menuCopy];

        if (!v55)
        {
          goto LABEL_70;
        }

        delegate4 = [menuCopy delegate];
        v57 = [delegate4 itemMenuStateForMenu:menuCopy];

        v85[0] = @"action_lockItemSpecificMenu";
        v84[0] = @"identifier";
        v84[1] = @"title";
        if (v57 == 2)
        {
          v35 = sub_100042B24(@"UNLOCK_ITEM_SPECIFIC_MENU");
          v58 = @"SCATIcon_action_unlockItemMenu";
        }

        else
        {
          v35 = sub_100042B24(@"LOCK_ITEM_SPECIFIC_MENU");
          v58 = @"SCATIcon_action_lockItemMenu";
        }

        v85[1] = v35;
        v85[2] = v58;
        v84[2] = @"imageName";
        v84[3] = @"activateBehavior";
        v85[3] = &off_1001E5580;
        v62 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
        v86 = v62;
        textElement = [NSArray arrayWithObjects:&v86 count:1];

LABEL_60:
        goto LABEL_12;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSwitchDisplay])
      {
        v82[0] = @"action_switchDisplay";
        v81[0] = @"identifier";
        v81[1] = @"title";
        keyboardApplication = sub_100042B24(@"SWITCH_DISPLAY");
        v82[1] = keyboardApplication;
        v82[2] = @"SCATIcon_switch_display";
        v81[2] = @"imageName";
        v81[3] = @"activateBehavior";
        v82[3] = &off_1001E5580;
        v9 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];
        v83 = v9;
        v13 = &v83;
        goto LABEL_10;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemSiriShortcuts])
      {
        if (sub_1000424F4())
        {
          v59 = +[AXSiriShortcutsManager sharedManager];
          shortcuts = [v59 shortcuts];
          v61 = [shortcuts count];

          if (v61)
          {
            v79[0] = @"siri_shortcuts";
            v78[0] = @"identifier";
            v78[1] = @"title";
            keyboardApplication = sub_100042B24(@"SIRI_SHORTCUTS");
            v79[1] = keyboardApplication;
            v79[2] = &__kCFBooleanFalse;
            v78[2] = @"guidedAccess";
            v78[3] = @"activateBehavior";
            v79[3] = &off_1001E5598;
            v9 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
            v80 = v9;
            v13 = &v80;
            goto LABEL_10;
          }
        }

        goto LABEL_70;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemAppleWatchRemoteScreen])
      {
        if (sub_1000425F8())
        {
          v76[0] = @"action_applewatchRemoteScreen";
          v75[0] = @"identifier";
          v75[1] = @"title";
          keyboardApplication = sub_100042B24(@"APPLE_WATCH_REMOTE_SCREEN");
          v75[2] = @"activateBehavior";
          v76[1] = keyboardApplication;
          v76[2] = &off_1001E5580;
          v9 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:3];
          v77 = v9;
          v13 = &v77;
          goto LABEL_10;
        }

        goto LABEL_70;
      }

      if ([itemCopy isEqualToString:AXSSwitchControlMenuItemProfiles])
      {
        v63 = +[AXSettings sharedInstance];
        switchControlProfiles = [v63 switchControlProfiles];
        v65 = [switchControlProfiles count];

        if (v65)
        {
          v73[0] = @"profiles";
          v72[0] = @"identifier";
          v72[1] = @"title";
          keyboardApplication = sub_100042B24(@"PROFILES");
          v73[1] = keyboardApplication;
          v73[2] = @"SCATIcon_switchsets";
          v72[2] = @"imageName";
          v72[3] = @"activateBehavior";
          v73[3] = &off_1001E5598;
          v9 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:4];
          v74 = v9;
          v13 = &v74;
          goto LABEL_10;
        }

        goto LABEL_70;
      }

      delegate = SWCHLogMenu();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_FAULT))
      {
        sub_10012A978();
      }
    }

    goto LABEL_70;
  }

  textElement = [menuCopy screenPoint];

  if (textElement)
  {
    v127[0] = @"gestures";
    v126[0] = @"identifier";
    v126[1] = @"title";
    keyboardApplication = sub_100042B24(@"SCAT_QUICK_ITEM_GESTURES");
    v127[1] = keyboardApplication;
    v127[2] = @"SCATIcon_gestures";
    v126[2] = @"imageName";
    v126[3] = @"activateBehavior";
    v127[3] = &off_1001E5598;
    v9 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:4];
    v128 = v9;
    v13 = &v128;
    goto LABEL_10;
  }

LABEL_12:

  return textElement;
}

+ (id)_additionalMenuItemsForHomeActionForMenu:(id)menu delegate:(id)delegate
{
  menuCopy = menu;
  delegateCopy = delegate;
  if (+[AXSpringBoardServer isAvailable])
  {
    v7 = +[AXSpringBoardServer server];
    v8 = [v7 isScreenLockedWithPasscode:0];

    v9 = +[AXSpringBoardServer server];
    isControlCenterVisible = [v9 isControlCenterVisible];

    v11 = +[AXSpringBoardServer server];
    isShowingLongLookNotification = [v11 isShowingLongLookNotification];

    v13 = 0;
    if (v8 && (isControlCenterVisible & 1) == 0 && (isShowingLongLookNotification & 1) == 0)
    {
      v14 = +[HNDAccessibilityManager sharedManager];
      applicationIsRTL = [v14 applicationIsRTL];

      v16 = applicationIsRTL == 0;
      if (applicationIsRTL)
      {
        v17 = 2009;
      }

      else
      {
        v17 = 2008;
      }

      if (v16)
      {
        v18 = 2009;
      }

      else
      {
        v18 = 2008;
      }

      v13 = +[NSMutableArray array];
      v19 = [SCATMenuItemFactory menuItemsForItem:AXSSwitchControlMenuItemDeviceNotificationCenter menu:menuCopy delegate:delegateCopy];
      [v13 addObjectsFromArray:v19];

      v20 = [SCATModernMenuScrollFactory menuItemForScrollAction:v17 withDelegate:delegateCopy];
      [v13 axSafelyAddObject:v20];

      v21 = [SCATModernMenuScrollFactory menuItemForScrollAction:v18 withDelegate:delegateCopy];
      [v13 axSafelyAddObject:v21];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)menuItemWithItemDictionary:(id)dictionary menu:(id)menu delegate:(id)delegate
{
  dictionaryCopy = dictionary;
  delegateCopy = delegate;
  v8 = [dictionaryCopy objectForKey:@"identifier"];
  v30 = [dictionaryCopy objectForKey:@"title"];
  v29 = [dictionaryCopy objectForKey:@"imageName"];
  v9 = [dictionaryCopy objectForKey:@"allowsDwellScanningToAbortAfterTimeout"];
  bOOLValue = [v9 BOOLValue];

  v10 = [dictionaryCopy objectForKey:@"activateBehavior"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v11 = [dictionaryCopy objectForKey:@"guidedAccess"];
  v12 = v11;
  if (v11)
  {
    bOOLValue2 = [v11 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"assistiveAccess"];
  v15 = v14;
  bOOLValue3 = bOOLValue2;
  if (v14)
  {
    bOOLValue3 = [v14 BOOLValue];
  }

  if ([v8 isEqualToString:@"action_activate"])
  {
    v17 = 0;
    v18 = &stru_1001D6238;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"action_scroll"])
  {
    v17 = 0;
    v18 = &stru_1001D6258;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"action_home"])
  {
    v17 = 0;
    v18 = &stru_1001D6278;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"eye_tracking"])
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000A2FD8;
    v38[3] = &unk_1001D6298;
    v38[4] = self;
    v19 = v38;
LABEL_14:
    v18 = objc_retainBlock(v19);
LABEL_15:
    v17 = 0;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"calibrate_eye_tracking"])
  {
    v17 = 0;
    v18 = &stru_1001D62B8;
  }

  else
  {
    if ([v8 isEqualToString:@"action_dismissAutocorrection"])
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000A3028;
      v37[3] = &unk_1001D6298;
      v37[4] = self;
      v19 = v37;
      goto LABEL_14;
    }

    if ([v8 isEqualToString:@"action_acceptCandidate"])
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000A30A8;
      v36[3] = &unk_1001D6298;
      v36[4] = self;
      v19 = v36;
      goto LABEL_14;
    }

    if ([v8 isEqualToString:@"gestures"])
    {
      v17 = 0;
      v18 = &stru_1001D62D8;
    }

    else if ([v8 isEqualToString:@"device"])
    {
      v17 = 0;
      v18 = &stru_1001D62F8;
    }

    else if ([v8 isEqualToString:@"settings"])
    {
      v17 = 0;
      v18 = &stru_1001D6318;
    }

    else if ([v8 isEqualToString:@"mediacontrols"])
    {
      v17 = 0;
      v18 = &stru_1001D6338;
    }

    else if ([v8 isEqualToString:@"siri_shortcuts"])
    {
      v17 = 0;
      v18 = &stru_1001D6358;
    }

    else if ([v8 isEqualToString:@"recipes"])
    {
      v17 = 0;
      v18 = &stru_1001D6378;
    }

    else if ([v8 isEqualToString:@"action_decrement"])
    {
      v17 = 0;
      v18 = &stru_1001D6398;
    }

    else if ([v8 isEqualToString:@"action_increment"])
    {
      v17 = 0;
      v18 = &stru_1001D63B8;
    }

    else if ([v8 isEqualToString:@"action_alternateKeys"])
    {
      v17 = 0;
      v18 = &stru_1001D63D8;
    }

    else if ([v8 isEqualToString:@"action_edit"])
    {
      v17 = 0;
      v18 = &stru_1001D63F8;
    }

    else if ([v8 isEqualToString:@"action_zoomIn"])
    {
      v17 = 0;
      v18 = &stru_1001D6418;
    }

    else if ([v8 isEqualToString:@"action_zoomOut"])
    {
      v17 = 0;
      v18 = &stru_1001D6438;
    }

    else
    {
      if ([v8 isEqualToString:@"action_escape"])
      {
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1000A3640;
        v35[3] = &unk_1001D6298;
        v35[4] = self;
        v19 = v35;
        goto LABEL_14;
      }

      if ([v8 isEqualToString:@"action_toggle_dictation"])
      {
        v17 = 0;
        v18 = &stru_1001D6458;
      }

      else if ([v8 isEqualToString:@"action_refinePoint"])
      {
        v17 = 0;
        v18 = &stru_1001D6478;
      }

      else
      {
        if ([v8 isEqualToString:@"settings_navigationMode"])
        {
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1000A36F8;
          v34[3] = &unk_1001D6298;
          v34[4] = self;
          v19 = v34;
          goto LABEL_14;
        }

        if ([v8 isEqualToString:@"settings_alternativeNavigationMode"])
        {
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1000A3700;
          v33[3] = &unk_1001D6298;
          v33[4] = self;
          v19 = v33;
          goto LABEL_14;
        }

        if ([v8 isEqualToString:@"action_itemSpecificMenu"])
        {
          v17 = 0;
          v18 = &stru_1001D6498;
        }

        else if ([v8 isEqualToString:@"action_ATVRemoteMenu"])
        {
          v17 = 0;
          v18 = &stru_1001D64B8;
        }

        else if ([v8 isEqualToString:@"action_switchDisplay"])
        {
          v17 = 0;
          v18 = &stru_1001D64D8;
        }

        else if ([v8 isEqualToString:@"action_lockItemSpecificMenu"])
        {
          v17 = 0;
          v18 = &stru_1001D64F8;
        }

        else
        {
          if ([v8 hasPrefix:@"customAction_"])
          {
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_1000A3880;
            v31[3] = &unk_1001D49C8;
            v32 = v8;
            v18 = objc_retainBlock(v31);

            goto LABEL_15;
          }

          if ([v8 isEqualToString:@"action_cancelDrag"])
          {
            v17 = 0;
            v18 = &stru_1001D6518;
          }

          else if ([v8 isEqualToString:@"action_applewatchRemoteScreen"])
          {
            v17 = AXUIAssistiveTouchImageForName();
            v18 = &stru_1001D6538;
          }

          else if ([v8 isEqualToString:@"action_keyboardContinuousSlide"])
          {
            v17 = 0;
            v18 = &stru_1001D6558;
          }

          else if ([v8 isEqualToString:@"action_keyboardSlide"])
          {
            v17 = 0;
            v18 = &stru_1001D65B8;
          }

          else
          {
            v17 = 0;
            if ([v8 isEqualToString:@"profiles"])
            {
              v18 = &stru_1001D65D8;
            }

            else
            {
              v18 = 0;
            }
          }
        }
      }
    }
  }

LABEL_18:
  v20 = [objc_opt_class() updateBlockForIdentifier:v8];
  LOBYTE(v25) = bOOLValue3;
  v21 = [SCATModernMenuItem itemWithIdentifier:v8 delegate:delegateCopy title:v30 imageName:v29 activateBehavior:unsignedIntegerValue allowedWithGuidedAccess:bOOLValue2 allowedWithAssistiveAccess:v25 activateHandler:v18 updateHandler:v20];

  [v21 setAllowsDwellScanningToAbortAfterTimeout:bOOLValue];
  if (v17)
  {
    v22 = +[UIColor whiteColor];
    v23 = [v17 imageWithTintColor:v22 renderingMode:1];
    [v21 setImage:v23];
  }

  return v21;
}

+ (id)updateBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"action_toggle_dictation"])
  {
    v5 = &stru_1001D65F8;
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"settings_navigationMode"])
  {
    v6 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v7 = sub_1000A3F90;
LABEL_9:
    v6[2] = v7;
    v6[3] = &unk_1001D4AA8;
    v6[4] = self;
    v5 = objc_retainBlock(v6);
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"settings_alternativeNavigationMode"])
  {
    v6 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v7 = sub_1000A401C;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"eye_tracking"])
  {
    v6 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v7 = sub_1000A40A8;
    goto LABEL_9;
  }

  v5 = &stru_1001D6618;
  if (([identifierCopy isEqualToString:@"action_keyboardContinuousSlide"] & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"action_keyboardSlide"))
  {
    v5 = &stru_1001D6638;
  }

LABEL_10:

  return v5;
}

+ (id)_fingerItemStringForNumberOfFingers:(unint64_t)fingers
{
  v3 = sub_100042B24(@"FingersFormat");
  v4 = AXFormatInteger();
  v5 = [NSString stringWithFormat:v3, v4];

  return v5;
}

+ (id)_imageNameForNumberOfFingers:(unint64_t)fingers
{
  if (fingers - 1 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1001D66A0 + fingers - 1);
  }
}

+ (void)_title:(id *)_title imageForNavigationItem:(id *)item
{
  v6 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v6 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode > 6 || ((0x6Fu >> assistiveTouchScanningMode) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    if (!item)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(&off_1001D6700 + assistiveTouchScanningMode);
  v9 = sub_100042B24(*(&off_1001D66C8 + assistiveTouchScanningMode));
  if (item)
  {
LABEL_6:
    *item = v8;
  }

LABEL_7:
  if (_title)
  {
    v9 = v9;
    *_title = v9;
  }

  v10 = v9;
}

+ (void)_title:(id *)_title imageForAlternateNavigationItem:(id *)item
{
  v8 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v8 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode <= 6 && ((0x6Fu >> assistiveTouchScanningMode) & 1) != 0)
  {
    v7 = *(&off_1001D6770 + assistiveTouchScanningMode);
    *_title = sub_100042B24(*(&off_1001D6738 + assistiveTouchScanningMode));
    *item = v7;
  }
}

+ (void)_title:(id *)_title imageForEyeTrackingNavigationItem:(id *)item
{
  v8 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v8 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode <= 6 && ((0x6Fu >> assistiveTouchScanningMode) & 1) != 0)
  {
    v7 = *(&off_1001D67E0 + assistiveTouchScanningMode);
    *_title = sub_100042B24(*(&off_1001D67A8 + assistiveTouchScanningMode));
    *item = v7;
  }
}

+ (void)_handlePerformEscapeWithMenu:(id)menu
{
  element = [menu element];
  v7 = element;
  if (element)
  {
    [element scatPerformAction:2013];
  }

  else
  {
    _escapableElements = [self _escapableElements];
    firstObject = [_escapableElements firstObject];

    [firstObject performAction:2013];
  }
}

+ (id)_escapableElements
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = [v2 elementsForMatchingBlock:&stru_1001D6658];

  return v3;
}

+ (id)_typingCandidates
{
  v2 = +[HNDAccessibilityManager sharedManager];
  firstResponder = [v2 firstResponder];
  v4 = [firstResponder elementForAttribute:2017];
  typingCandidates = [v4 typingCandidates];

  return typingCandidates;
}

+ (void)toggleNavigationMode
{
  v2 = SWCHLogModernMenuActions();
  if (os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Navigation Mode", v5, 2u);
  }

  v3 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v3 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode <= 6 && ((0x6Fu >> assistiveTouchScanningMode) & 1) != 0)
  {
    [v3 setAssistiveTouchScanningMode:qword_1001BD430[assistiveTouchScanningMode]];
  }
}

+ (void)toggleAlternativeNavigationMode
{
  v2 = SWCHLogModernMenuActions();
  if (os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Alternative Navigation Mode", v8, 2u);
  }

  v3 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v3 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode <= 6)
  {
    if (((1 << assistiveTouchScanningMode) & 0x27) != 0)
    {
      v5 = +[AXSpringBoardServer server];
      isContinuitySessionActive = [v5 isContinuitySessionActive];

      if ((isContinuitySessionActive & 1) == 0)
      {
        v7 = 3;
LABEL_9:
        [v3 setAssistiveTouchScanningMode:v7];
      }
    }

    else if (((1 << assistiveTouchScanningMode) & 0x48) != 0)
    {
      v7 = 1;
      goto LABEL_9;
    }
  }
}

+ (void)toggleEyeTracking
{
  v2 = SWCHLogModernMenuActions();
  if (os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Toggle", "Eye Tracking", v8, 2u);
  }

  v3 = +[AXSettings sharedInstance];
  assistiveTouchScanningMode = [v3 assistiveTouchScanningMode];
  if (assistiveTouchScanningMode >= 4)
  {
    if ((assistiveTouchScanningMode - 5) < 2)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = +[AXSpringBoardServer server];
    isContinuitySessionActive = [v5 isContinuitySessionActive];

    if ((isContinuitySessionActive & 1) == 0)
    {
      v7 = 5;
LABEL_8:
      [v3 setAssistiveTouchScanningMode:v7];
    }
  }
}

+ (id)_menuItemsForElementSpecificActionsForMenu:(id)menu delegate:(id)delegate
{
  menuCopy = menu;
  delegateCopy = delegate;
  element = [menuCopy element];
  v9 = objc_alloc_init(NSMutableArray);
  scatCustomActions = [element scatCustomActions];
  v11 = [self menuItemsForCustomActions:scatCustomActions menu:menuCopy delegate:delegateCopy];
  [v9 axSafelyAddObjectsFromArray:v11];

  scatCustomHardwareActions = [element scatCustomHardwareActions];
  v12 = [SCATMenuHardwareActionsMovementFactory menuItemsForCustomHardwareActions:"menuItemsForCustomHardwareActions:menu:delegate:" menu:? delegate:?];
  [v9 axSafelyAddObjectsFromArray:v12];

  v13 = +[SCATScannerManager sharedManager];
  isDragActive = [v13 isDragActive];

  v63 = scatCustomActions;
  if (isDragActive)
  {
    if (element)
    {
      scatDrops = [element scatDrops];
      v16 = [self menuItemsForDrops:scatDrops menu:menuCopy delegate:delegateCopy];
      [v9 axSafelyAddObjectsFromArray:v16];
    }

    else
    {
      v18 = [SCATDropMenuItem alloc];
      v19 = sub_100042B24(@"DROP_HERE");
      screenPoint = [menuCopy screenPoint];
      [screenPoint CGPointValue];
      scatDrops = [(SCATDropMenuItem *)v18 initWithTitle:v19 fixedSpaceScreenPoint:delegateCopy delegate:menuCopy menu:?];

      [v9 addObject:scatDrops];
    }

    v90[0] = @"action_cancelDrag";
    v89[0] = @"identifier";
    v89[1] = @"title";
    v17 = sub_100042B24(@"CANCEL_DRAG");
    v90[1] = v17;
    v90[2] = @"SCATIcon_gestures_drop";
    v89[2] = @"imageName";
    v89[3] = @"activateBehavior";
    v90[3] = &off_1001E5580;
    v21 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
    v22 = [self menuItemWithItemDictionary:v21 menu:menuCopy delegate:delegateCopy];
    [v9 addObject:v22];
  }

  else
  {
    v17 = [self dragMenuItemsForElement:element delegate:delegateCopy];
    [v9 axSafelyAddObjectsFromArray:v17];
  }

  v69 = element;
  if ([element scatCanShowAlternateKeys])
  {
    v88[0] = @"action_alternateKeys";
    v87[0] = @"identifier";
    v87[1] = @"title";
    v23 = sub_100042B24(@"ALT_KEYS");
    v87[2] = @"activateBehavior";
    v88[1] = v23;
    v88[2] = &off_1001E5580;
    v24 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:3];
    v25 = [self menuItemWithItemDictionary:v24 menu:menuCopy delegate:delegateCopy];
    [v9 addObject:v25];
  }

  _typingCandidates = [self _typingCandidates];
  v61 = _typingCandidates;
  if ([_typingCandidates count] == 1 && (objc_msgSend(_typingCandidates, "lastObject"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "traits"), v29 = UIAccessibilityTraitSelectionDismissesItem & v28, v27, v29))
  {
    v86[0] = @"action_dismissAutocorrection";
    v85[0] = @"identifier";
    v85[1] = @"title";
    v30 = sub_100042B24(@"DISMISS_AUTOCORRECTION");
    v85[2] = @"activateBehavior";
    v86[1] = v30;
    v86[2] = &off_1001E5580;
    v31 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
    v32 = v69;
  }

  else
  {
    v32 = v69;
    if (![_typingCandidates count])
    {
      goto LABEL_15;
    }

    v84[0] = @"action_acceptCandidate";
    v83[0] = @"identifier";
    v83[1] = @"title";
    v30 = sub_100042B24(@"CHOOSE_CANDIDATE");
    v83[2] = @"activateBehavior";
    v84[1] = v30;
    v84[2] = &off_1001E5580;
    v31 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];
  }

  v33 = [self menuItemWithItemDictionary:v31 menu:menuCopy delegate:delegateCopy];
  [v9 addObject:v33];

LABEL_15:
  v66 = delegateCopy;
  v67 = v9;
  if ([v32 scatSupportsAction:2001])
  {
    v82[0] = @"action_zoomIn";
    v81[0] = @"identifier";
    v81[1] = @"title";
    v34 = sub_100042B24(@"ZOOM_IN");
    v81[2] = @"activateBehavior";
    v82[1] = v34;
    v82[2] = &off_1001E5580;
    v35 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
    v36 = [self menuItemWithItemDictionary:v35 menu:menuCopy delegate:delegateCopy];
    [v9 addObject:v36];

    v80[0] = @"action_zoomOut";
    v79[0] = @"identifier";
    v79[1] = @"title";
    v37 = sub_100042B24(@"ZOOM_OUT");
    v79[2] = @"activateBehavior";
    v80[1] = v37;
    v80[2] = &off_1001E5580;
    v38 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];
    v32 = v69;
    v39 = [self menuItemWithItemDictionary:v38 menu:menuCopy delegate:delegateCopy];
    [v9 addObject:v39];
  }

  pointPicker = [menuCopy pointPicker];
  objc_opt_class();
  v59 = pointPicker;
  isKindOfClass = objc_opt_isKindOfClass();
  if (AXRuntimeCheck_DwellKeyboardSwipe() && ([v32 scatCanStartContinuousPathGesture] & isKindOfClass) == 1)
  {
    if (AXRuntimeCheck_DwellKeyboardSwipeContinuous())
    {
      v78[0] = @"action_keyboardContinuousSlide";
      v77[0] = @"identifier";
      v77[1] = @"title";
      v42 = sub_100042B24(@"KEYBOARD_CONTINUOUS_SLIDE");
      v77[2] = @"activateBehavior";
      v78[1] = v42;
      v78[2] = &off_1001E5580;
      v43 = v78;
      v44 = v77;
    }

    else
    {
      v76[0] = @"action_keyboardSlide";
      v75[0] = @"identifier";
      v75[1] = @"title";
      v42 = sub_100042B24(@"KEYBOARD_SLIDE");
      v75[2] = @"activateBehavior";
      v76[1] = v42;
      v76[2] = &off_1001E5580;
      v43 = v76;
      v44 = v75;
    }

    v45 = [NSDictionary dictionaryWithObjects:v43 forKeys:v44 count:3];
    v46 = [self menuItemWithItemDictionary:v45 menu:menuCopy delegate:delegateCopy];
    [v9 addObject:v46];
  }

  v65 = menuCopy;
  scatSupportedGestures = [v32 scatSupportedGestures];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v48 = [scatSupportedGestures countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = 0;
    v51 = *v71;
    v68 = kAXTextEntryTrait;
    v64 = AXSSwitchControlMenuItemGesturesTapAndHold;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(scatSupportedGestures);
        }

        if (v50)
        {
          v50 = 1;
          continue;
        }

        v53 = *(*(&v70 + 1) + 8 * i);
        v54 = [v53 objectForKey:@"AXSupportedGestureTypeKey"];
        if ([v54 intValue] == 1)
        {
          firstObject = [v53 objectForKey:@"AXGestureFingerCountKey"];
          intValue = [firstObject intValue];
          v50 = intValue == 1;
          if (intValue == 1)
          {
            v57 = v68 & [v32 scatTraits];

            if (v57)
            {
              v50 = 0;
              v32 = v69;
              continue;
            }

            v54 = [SCATMenuItemFactory menuItemsForItem:v64 menu:v65 delegate:v66];
            firstObject = [v54 firstObject];
            [v67 addObject:firstObject];
            v32 = v69;
          }
        }

        else
        {
          v50 = 0;
        }
      }

      v49 = [scatSupportedGestures countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v49);
  }

  return v67;
}

+ (id)menuItemsForCustomActions:(id)actions menu:(id)menu delegate:(id)delegate
{
  actionsCopy = actions;
  menuCopy = menu;
  delegateCopy = delegate;
  if ([actionsCopy count])
  {
    v35 = +[NSMutableSet set];
    v37 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [actionsCopy count]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = actionsCopy;
    obj = actionsCopy;
    v9 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"CustomActionShortName"];
          if (!v14)
          {
            v14 = [v13 objectForKeyedSubscript:@"CustomActionName"];
          }

          v15 = [self _capitalizedMenuTitle:v14];

          v44[0] = @"identifier";
          v16 = [v13 objectForKeyedSubscript:@"CustomActionIdentifier"];
          v17 = [NSString stringWithFormat:@"%@%@", @"customAction_", v16];
          v45[0] = v17;
          v45[1] = v15;
          v44[1] = @"title";
          v44[2] = @"activateBehavior";
          v45[2] = &off_1001E5580;
          v18 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
          v19 = [self menuItemWithItemDictionary:v18 menu:menuCopy delegate:delegateCopy];

          v20 = [v13 objectForKeyedSubscript:@"CustomActionImage"];
          v21 = +[UIScreen mainScreen];
          [v21 scale];
          v22 = [UIImage imageWithData:v20 scale:?];
          [v19 setImage:v22];

          image = [v19 image];
          v24 = +[UIColor whiteColor];
          v25 = [image imageWithTintColor:v24 renderingMode:1];
          [v19 setImage:v25];

          v26 = [v13 objectForKeyedSubscript:@"CustomActionImageOrientation"];
          integerValue = [v26 integerValue];

          if (integerValue)
          {
            if (integerValue == 4)
            {
              image2 = [v19 image];
              imageWithHorizontallyFlippedOrientation = [image2 imageWithHorizontallyFlippedOrientation];
              [v19 setImage:imageWithHorizontallyFlippedOrientation];
            }

            else
            {
              v33 = v13;
              _AXAssert();
            }
          }

          image3 = [v19 image];

          if (!image3)
          {
            v31 = [self _fallbackImageForCustomActionMenuItem:v19 charactersInUse:v35];
            [v19 setImage:v31];
          }

          [v37 addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    actionsCopy = v34;
  }

  else
  {
    v37 = &__NSArray0__struct;
  }

  return v37;
}

+ (id)dragMenuItemsForElement:(id)element delegate:(id)delegate
{
  elementCopy = element;
  delegateCopy = delegate;
  v7 = +[SCATScannerManager sharedManager];
  isDragActive = [v7 isDragActive];

  if (isDragActive)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    scatDrags = [elementCopy scatDrags];
    v11 = AXNamesForDrags();
    v12 = +[NSMutableArray array];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A574C;
    v17[3] = &unk_1001D6680;
    v18 = v11;
    v19 = elementCopy;
    v20 = delegateCopy;
    v13 = v12;
    v21 = v13;
    v14 = v11;
    [scatDrags enumerateObjectsUsingBlock:v17];
    v15 = v21;
    v9 = v13;
  }

  return v9;
}

+ (id)menuItemsForDrops:(id)drops menu:(id)menu delegate:(id)delegate
{
  dropsCopy = drops;
  menuCopy = menu;
  delegateCopy = delegate;
  v10 = +[SCATScannerManager sharedManager];
  isDragActive = [v10 isDragActive];

  if (isDragActive)
  {
    v12 = +[NSMutableArray array];
    AXNamesForDrops();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A5960;
    v19 = v18[3] = &unk_1001D6680;
    v20 = delegateCopy;
    v21 = menuCopy;
    v13 = v12;
    v22 = v13;
    v14 = v19;
    [dropsCopy enumerateObjectsUsingBlock:v18];
    v15 = v22;
    v16 = v13;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

+ (id)_fallbackImageForCustomActionMenuItem:(id)item charactersInUse:(id)use
{
  useCopy = use;
  title = [item title];
  v7 = sub_100042B24(@"DELETE");
  v8 = [title hasPrefix:v7];

  if (v8)
  {
    v9 = [UIImage scat_cachedMenuImageForImageName:@"SCATIcon_action_delete"];
    if (!v9)
    {
      v10 = @"SCATIcon_action_delete";
LABEL_7:
      v13 = [UIImage _deviceSpecificImageNamed:v10];
      v14 = +[UIColor whiteColor];
      v15 = [v13 imageWithTintColor:v14 renderingMode:1];

      [UIImage scat_setCachedMenuImage:v15 forImageName:v10];
      goto LABEL_10;
    }
  }

  else
  {
    v11 = sub_100042B24(@"MORE");
    v12 = [title hasPrefix:v11];

    if (v12)
    {
      v9 = [UIImage scat_cachedMenuImageForImageName:@"SCATIcon_action_more"];
      if (!v9)
      {
        v10 = @"SCATIcon_action_more";
        goto LABEL_7;
      }
    }

    else
    {
      v9 = [UIImage scat_singleCharacterImageForTitle:title charactersInUse:useCopy];
    }
  }

  v15 = v9;
LABEL_10:

  return v15;
}

+ (id)_capitalizedMenuTitle:(id)title
{
  titleCopy = title;
  v4 = objc_alloc_init(NSMutableString);
  localizedCapitalizedString = [titleCopy localizedCapitalizedString];
  if ([titleCopy length])
  {
    v6 = 0;
    do
    {
      v7 = [titleCopy rangeOfComposedCharacterSequenceAtIndex:v6];
      v9 = v8;
      v10 = [titleCopy substringWithRange:{v7, v8}];
      uppercaseString = [v10 uppercaseString];
      v12 = [v10 isEqualToString:uppercaseString];

      if ((v12 & 1) == 0)
      {
        v13 = [localizedCapitalizedString rangeOfComposedCharacterSequenceAtIndex:v6];
        v15 = [localizedCapitalizedString substringWithRange:{v13, v14}];

        v10 = v15;
      }

      [v4 appendString:v10];
      v6 += v9;
    }

    while (v6 < [titleCopy length]);
  }

  return v4;
}

@end