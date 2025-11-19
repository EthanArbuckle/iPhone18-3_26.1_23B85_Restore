@interface CCUIDisplayBackgroundViewController
- (BOOL)_toggleNightShift;
- (BOOL)_uses24HourTime;
- (id)_alertControllerForDisablingAccessibilityScreenFilter:(id)a3 cancelBlock:(id)a4;
- (id)_subtitleForBlueLightStatus:(id *)a3;
- (id)_subtitleForTrueToneEnabled:(BOOL)a3;
- (id)_subtitleForUserInterfaceStyle:(int64_t)a3 nextTransition:(id)a4;
- (id)_subtitleFormatStringForBlueLightEnabled:(BOOL)a3 transitionTime:(id)a4;
- (id)_timeFormatter;
- (id)_timeStringForHour:(unint64_t)a3 minute:(unint64_t)a4;
- (unint64_t)_formattedHourForHour:(unint64_t)a3;
- (void)_getBlueLightStatus:(id)a3;
- (void)_setupNightShift;
- (void)_setupStyleMode;
- (void)_setupTrueTone;
- (void)_toggleStyleMode;
- (void)_toggleTrueTone;
- (void)_updateState;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation CCUIDisplayBackgroundViewController

- (void)viewDidLoad
{
  v126.receiver = self;
  v126.super_class = CCUIDisplayBackgroundViewController;
  [(CCUICustomContentModuleBackgroundViewController *)&v126 viewDidLoad];
  brightnessClient = objc_msgSend_sharedApplication(MEMORY[0x29EDC7938], v3, v4);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_sharedApplication(MEMORY[0x29EDC7938], v6, v7);
    isFrontBoard = objc_msgSend_isFrontBoard(v8, v9, v10);

    if (!isFrontBoard)
    {
      goto LABEL_5;
    }

    v12 = objc_alloc_init(MEMORY[0x29EDC0DA8]);
    brightnessClient = self->_brightnessClient;
    self->_brightnessClient = v12;
  }

LABEL_5:
  v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  buttons = self->_buttons;
  self->_buttons = v13;

  if (_UIUpdatedVisualStyleEnabled())
  {
    v17 = MEMORY[0x29EDC0CA0];
    v18 = MEMORY[0x29EDB9F48];
    v19 = objc_opt_class();
    v21 = objc_msgSend_bundleForClass_(v18, v20, v19);
    v125 = objc_msgSend_descriptionForPackageNamed_inBundle_(v17, v22, @"StyleMode", v21);

    v23 = objc_alloc(MEMORY[0x29EDC0CD8]);
    v26 = objc_msgSend_clearColor(MEMORY[0x29EDC7A00], v24, v25);
    v28 = objc_msgSend_initWithGlyphPackageDescription_highlightColor_(v23, v27, v125, v26);
    styleModeButton = self->_styleModeButton;
    self->_styleModeButton = v28;

    v30 = self->_styleModeButton;
    v31 = MEMORY[0x29EDB9F48];
    v32 = objc_opt_class();
    v34 = objc_msgSend_bundleForClass_(v31, v33, v32);
    v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"CONTROL_CENTER_STYLE_MODE_SETTING_NAME", &stru_2A23E6408, 0);
    objc_msgSend_setTitle_(v30, v37, v36);

    objc_msgSend_setLabelsVisible_(self->_styleModeButton, v38, 1);
    v41 = objc_msgSend_button(self->_styleModeButton, v39, v40);
    objc_msgSend_addTarget_action_forControlEvents_(v41, v42, self, sel__styleModeButtonPressed_, 64);

    objc_msgSend_addObject_(self->_buttons, v43, self->_styleModeButton);
    objc_msgSend__setupStyleMode(self, v44, v45);
  }

  v46 = 0x29EDC7000;
  if (self->_brightnessClient)
  {
    if (!objc_msgSend_supportsBlueLightReduction(MEMORY[0x29EDC0DA8], v15, v16))
    {
      goto LABEL_12;
    }

    objc_msgSend_blueLightClient(self->_brightnessClient, v47, v48);
  }

  else
  {
    objc_msgSend_blueLightClient(0, v15, v16);
  }
  v49 = ;
  nightShiftClient = self->_nightShiftClient;
  self->_nightShiftClient = v49;

  v51 = MEMORY[0x29EDC7AC8];
  v52 = MEMORY[0x29EDB9F48];
  v53 = objc_opt_class();
  v55 = objc_msgSend_bundleForClass_(v52, v54, v53);
  v57 = objc_msgSend_imageNamed_inBundle_(v51, v56, @"NightShift", v55);

  v60 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v58, v59);
  v62 = objc_msgSend__flatImageWithColor_(v57, v61, v60);

  v63 = objc_alloc(MEMORY[0x29EDC0CD8]);
  v66 = objc_msgSend_systemOrangeColor(MEMORY[0x29EDC7A00], v64, v65);
  v68 = objc_msgSend_initWithGlyphImage_highlightColor_(v63, v67, v62, v66);
  nightShiftButton = self->_nightShiftButton;
  self->_nightShiftButton = v68;

  v70 = self->_nightShiftButton;
  v71 = MEMORY[0x29EDB9F48];
  v72 = objc_opt_class();
  v74 = objc_msgSend_bundleForClass_(v71, v73, v72);
  v76 = objc_msgSend_localizedStringForKey_value_table_(v74, v75, @"CONTROL_CENTER_NIGHT_SHIFT_SETTING_NAME", &stru_2A23E6408, 0);
  objc_msgSend_setTitle_(v70, v77, v76);

  objc_msgSend_setLabelsVisible_(self->_nightShiftButton, v78, 1);
  v81 = objc_msgSend_button(self->_nightShiftButton, v79, v80);
  objc_msgSend_addTarget_action_forControlEvents_(v81, v82, self, sel__nightShiftButtonPressed_, 64);

  objc_msgSend_addObject_(self->_buttons, v83, self->_nightShiftButton);
  objc_msgSend__setupNightShift(self, v84, v85);

  v46 = 0x29EDC7000uLL;
LABEL_12:
  if (!self->_brightnessClient)
  {
    objc_msgSend_adaptationClient(0, v47, v48);
    goto LABEL_16;
  }

  if (objc_msgSend_supportsAdaptation(MEMORY[0x29EDC0DA8], v47, v48))
  {
    objc_msgSend_adaptationClient(self->_brightnessClient, v86, v87);
    v88 = LABEL_16:;
    trueToneClient = self->_trueToneClient;
    self->_trueToneClient = v88;

    v90 = *(v46 + 2760);
    v91 = MEMORY[0x29EDB9F48];
    v92 = objc_opt_class();
    v94 = objc_msgSend_bundleForClass_(v91, v93, v92);
    v96 = objc_msgSend_imageNamed_inBundle_(v90, v95, @"TrueTone", v94);

    v99 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v97, v98);
    v101 = objc_msgSend__flatImageWithColor_(v96, v100, v99);

    v102 = objc_alloc(MEMORY[0x29EDC0CD8]);
    v105 = objc_msgSend_systemBlueColor(MEMORY[0x29EDC7A00], v103, v104);
    v107 = objc_msgSend_initWithGlyphImage_highlightColor_(v102, v106, v101, v105);
    trueToneButton = self->_trueToneButton;
    self->_trueToneButton = v107;

    v109 = self->_trueToneButton;
    v110 = MEMORY[0x29EDB9F48];
    v111 = objc_opt_class();
    v113 = objc_msgSend_bundleForClass_(v110, v112, v111);
    v115 = objc_msgSend_localizedStringForKey_value_table_(v113, v114, @"CONTROL_CENTER_TRUE_TONE_SETTING_NAME", &stru_2A23E6408, 0);
    objc_msgSend_setTitle_(v109, v116, v115);

    objc_msgSend_setLabelsVisible_(self->_trueToneButton, v117, 1);
    v120 = objc_msgSend_button(self->_trueToneButton, v118, v119);
    objc_msgSend_addTarget_action_forControlEvents_(v120, v121, self, sel__trueToneButtonPressed_, 64);

    objc_msgSend_addObject_(self->_buttons, v122, self->_trueToneButton);
    objc_msgSend__setupTrueTone(self, v123, v124);
  }

  objc_msgSend_setFooterButtons_(self, v86, self->_buttons);
}

- (void)dealloc
{
  objc_msgSend_setStatusNotificationBlock_(self->_nightShiftClient, a2, 0);
  objc_msgSend_unregisterNotificationCallbackBlock(self->_trueToneClient, v3, v4);
  v5.receiver = self;
  v5.super_class = CCUIDisplayBackgroundViewController;
  [(CCUIDisplayBackgroundViewController *)&v5 dealloc];
}

- (void)_setupStyleMode
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v5, v4, self, sel__styleModeDidChange, *MEMORY[0x29EDC8258], 0);
}

- (void)_setupNightShift
{
  objc_initWeak(&location, self);
  nightShiftClient = self->_nightShiftClient;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C9719BC;
  v5[3] = &unk_29F338238;
  objc_copyWeak(&v6, &location);
  objc_msgSend_setStatusNotificationBlock_(nightShiftClient, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_setupTrueTone
{
  objc_initWeak(&location, self);
  trueToneClient = self->_trueToneClient;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C971DBC;
  v7[3] = &unk_29F338288;
  objc_copyWeak(&v8, &location);
  v4 = MEMORY[0x29EDCA578];
  v5 = MEMORY[0x29EDCA578];
  objc_msgSend_registerNotificationCallbackBlock_withQueue_(trueToneClient, v6, v7, v4);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_updateState
{
  Enabled = objc_msgSend_getEnabled(self->_trueToneClient, a2, v2);
  objc_msgSend_setEnabled_(self->_trueToneButton, v5, Enabled);
  trueToneButton = self->_trueToneButton;
  v8 = objc_msgSend__subtitleForTrueToneEnabled_(self, v7, Enabled);
  objc_msgSend_setSubtitle_(trueToneButton, v9, v8);

  v10 = self->_trueToneButton;
  v13 = objc_msgSend_available(self->_trueToneClient, v11, v12);
  objc_msgSend_setInoperative_(v10, v14, v13 ^ 1u);
  v17 = objc_msgSend_sharedInstance(MEMORY[0x29EDC7D90], v15, v16);
  v20 = objc_msgSend_currentStyle(v17, v18, v19);

  v23 = objc_msgSend_sharedInstance(MEMORY[0x29EDC7D90], v21, v22);
  v26 = objc_msgSend_nextTransition(v23, v24, v25);

  v29 = objc_msgSend_styleModeButton(self, v27, v28);
  objc_msgSend_setEnabled_(v29, v30, 0);

  v33 = objc_msgSend_styleModeButton(self, v31, v32);
  v35 = v33;
  if (v20 == 2)
  {
    v36 = @"light";
  }

  else
  {
    v36 = @"dark";
  }

  objc_msgSend_setUseAlternateBackground_(v33, v34, v20 == 2);

  v39 = objc_msgSend_styleModeButton(self, v37, v38);
  objc_msgSend_setGlyphState_(v39, v40, v36);

  v43 = objc_msgSend_styleModeButton(self, v41, v42);
  v45 = objc_msgSend__subtitleForUserInterfaceStyle_nextTransition_(self, v44, v20, v26);
  objc_msgSend_setSubtitle_(v43, v46, v45);

  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = sub_29C9721A0;
  v48[3] = &unk_29F3382B0;
  v48[4] = self;
  objc_msgSend__getBlueLightStatus_(self, v47, v48);
}

- (void)_toggleStyleMode
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x29EDC7D90], a2, v2);
  objc_msgSend_toggleCurrentStyle(v4, v5, v6);

  objc_msgSend__updateState(self, v7, v8);
}

- (BOOL)_toggleNightShift
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C972350;
  v3[3] = &unk_29F3382B0;
  v3[4] = self;
  objc_msgSend__getBlueLightStatus_(self, a2, v3);
  return 1;
}

- (void)_toggleTrueTone
{
  Enabled = objc_msgSend_getEnabled(self->_trueToneClient, a2, v2);
  objc_msgSend_setEnabled_(self->_trueToneClient, v5, Enabled ^ 1u);

  objc_msgSend__updateState(self, v6, v7);
}

- (void)_getBlueLightStatus:(id)a3
{
  v4 = a3;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  if (objc_msgSend_getBlueLightStatus_(self->_nightShiftClient, v5, &v9))
  {
    v6 = v4[2];
    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    v6(v4, v7);
  }
}

- (id)_alertControllerForDisablingAccessibilityScreenFilter:(id)a3 cancelBlock:(id)a4
{
  v5 = a3;
  v44 = a4;
  v6 = MEMORY[0x29EDC7928];
  v7 = MEMORY[0x29EDB9F48];
  v8 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v7, v9, v8);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"CONTROL_CENTER_NIGHT_SHIFT_DISABLE_ACCESSIBILITY_SCREEN_FILTERS_TITLE", &stru_2A23E6408, 0);
  v13 = MEMORY[0x29EDB9F48];
  v14 = objc_opt_class();
  v16 = objc_msgSend_bundleForClass_(v13, v15, v14);
  v18 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"CONTROL_CENTER_NIGHT_SHIFT_DISABLE_ACCESSIBILITY_SCREEN_FILTERS_MESSAGE", &stru_2A23E6408, 0);
  v20 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(v6, v19, v12, v18, 1);

  v21 = MEMORY[0x29EDC7920];
  v22 = MEMORY[0x29EDB9F48];
  v23 = objc_opt_class();
  v25 = objc_msgSend_bundleForClass_(v22, v24, v23);
  v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"CONTROL_CENTER_NIGHT_SHIFT_DISABLE_ACCESSIBILITY_SCREEN_FILTERS_ENABLE", &stru_2A23E6408, 0);
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = sub_29C972954;
  v47[3] = &unk_29F338300;
  v48 = v5;
  v28 = v5;
  v30 = objc_msgSend_actionWithTitle_style_handler_(v21, v29, v27, 0, v47);
  objc_msgSend_addAction_(v20, v31, v30);

  v32 = MEMORY[0x29EDC7920];
  v33 = MEMORY[0x29EDB9F48];
  v34 = objc_opt_class();
  v36 = objc_msgSend_bundleForClass_(v33, v35, v34);
  v38 = objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"CONTROL_CENTER_NIGHT_SHIFT_DISABLE_ACCESSIBILITY_SCREEN_FILTERS_CANCEL", &stru_2A23E6408, 0);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = sub_29C9729A4;
  v45[3] = &unk_29F338300;
  v46 = v44;
  v39 = v44;
  v41 = objc_msgSend_actionWithTitle_style_handler_(v32, v40, v38, 1, v45);
  objc_msgSend_addAction_(v20, v42, v41);

  return v20;
}

- (id)_subtitleForBlueLightStatus:(id *)a3
{
  var3 = a3->var3;
  var1 = a3->var1;
  if (var3 == 1)
  {
    v22 = MEMORY[0x29EDB9F48];
    v23 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v22, v24, v23);
    if (var1)
    {
      objc_msgSend_localizedStringForKey_value_table_(v8, v25, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_ON_UNTIL_SUNRISE", &stru_2A23E6408, 0);
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v8, v25, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_OFF_UNTIL_SUNSET", &stru_2A23E6408, 0);
    }

    goto LABEL_12;
  }

  if (var3 != 2)
  {
    v26 = MEMORY[0x29EDB9F48];
    v27 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v26, v28, v27);
    if (var1)
    {
      objc_msgSend_localizedStringForKey_value_table_(v8, v29, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_ON_MANUAL", &stru_2A23E6408, 0);
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v8, v29, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_OFF_MANUAL", &stru_2A23E6408, 0);
    }

    v21 = LABEL_12:;
    goto LABEL_13;
  }

  v6 = 8;
  if (a3->var1)
  {
    v6 = 16;
  }

  v7 = *(&a3->var0 + v6);
  v8 = objc_msgSend__subtitleFormatStringForBlueLightEnabled_transitionTime_(self, a2, a3->var1, v7);
  v9 = MEMORY[0x29EDB9F48];
  v10 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v9, v11, v10);
  v14 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, v8, &stru_2A23E6408, 0);

  v15 = MEMORY[0x29EDBA0F8];
  v17 = objc_msgSend__formattedHourForTransitionTime_(self, v16, v7);
  v19 = objc_msgSend__timeStringForBlueLightTransitionTime_(self, v18, v7);
  v21 = objc_msgSend_stringWithFormat_(v15, v20, v14, v17, v19);

LABEL_13:

  return v21;
}

- (id)_timeStringForHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  objc_msgSend_setHour_(v7, v8, a3);
  objc_msgSend_setMinute_(v7, v9, a4);
  v12 = objc_msgSend_currentCalendar(MEMORY[0x29EDB8D98], v10, v11);
  objc_msgSend_setCalendar_(v7, v13, v12);

  v15 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x29EDB8E60], v14, 0);
  objc_msgSend_setTimeZone_(v7, v16, v15);

  v19 = objc_msgSend__timeFormatter(self, v17, v18);
  v22 = objc_msgSend_date(v7, v20, v21);
  v24 = objc_msgSend_stringFromDate_(v19, v23, v22);

  return v24;
}

- (id)_subtitleFormatStringForBlueLightEnabled:(BOOL)a3 transitionTime:(id)a4
{
  if (a3)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_%@_UNTIL_FORMAT", a4, @"ON");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"CONTROL_CENTER_STATUS_NIGHT_SHIFT_%@_UNTIL_FORMAT", a4, @"OFF");
  }
}

- (unint64_t)_formattedHourForHour:(unint64_t)a3
{
  v4 = objc_msgSend__uses24HourTime(self, a2, a3);
  if (a3 < 0xD)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    return a3;
  }

  else
  {
    return a3 - 12;
  }
}

- (BOOL)_uses24HourTime
{
  v3 = objc_msgSend__timeFormatter(self, a2, v2);
  v6 = objc_msgSend_dateFormat(v3, v4, v5);

  v9 = objc_msgSend_rangeOfString_(v6, v7, @"H") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v6, v8, @"k") != 0x7FFFFFFFFFFFFFFFLL;
  return v9;
}

- (id)_timeFormatter
{
  v2 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  objc_msgSend_setDateStyle_(v2, v3, 0);
  objc_msgSend_setTimeStyle_(v2, v4, 1);
  v7 = objc_msgSend_currentLocale(MEMORY[0x29EDB8DE0], v5, v6);
  objc_msgSend_setLocale_(v2, v8, v7);

  v10 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x29EDB8E60], v9, 0);
  objc_msgSend_setTimeZone_(v2, v11, v10);

  v14 = objc_msgSend_currentCalendar(MEMORY[0x29EDB8D98], v12, v13);
  objc_msgSend_setCalendar_(v2, v15, v14);

  return v2;
}

- (id)_subtitleForUserInterfaceStyle:(int64_t)a3 nextTransition:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (v6 && (v10 = objc_msgSend_type(v6, v7, v8), v10 <= 2))
  {
    v11 = off_29F338320[v10];
  }

  else
  {
    v11 = @"_MANUAL";
  }

  if (a3 == 2)
  {
    objc_msgSend_stringByAppendingString_(@"CONTROL_CENTER_STATUS_STYLE_MODE", v7, @"_DARK");
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"CONTROL_CENTER_STATUS_STYLE_MODE", v7, @"_LIGHT");
  }
  v12 = ;
  v14 = objc_msgSend_stringByAppendingString_(v12, v13, v11);

  v15 = MEMORY[0x29EDB9F48];
  v16 = objc_opt_class();
  v18 = objc_msgSend_bundleForClass_(v15, v17, v16);
  v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, v14, &stru_2A23E6408, 0);

  if (objc_msgSend_type(v9, v21, v22))
  {
    v25 = v20;
  }

  else
  {
    v26 = MEMORY[0x29EDBA0F8];
    v27 = objc_msgSend_hour(v9, v23, v24);
    v29 = objc_msgSend__formattedHourForHour_(self, v28, v27);
    v32 = objc_msgSend_hour(v9, v30, v31);
    v35 = objc_msgSend_minute(v9, v33, v34);
    v37 = objc_msgSend__timeStringForHour_minute_(self, v36, v32, v35);
    v25 = objc_msgSend_stringWithFormat_(v26, v38, v20, v29, v37);
  }

  return v25;
}

- (id)_subtitleForTrueToneEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = v7;
  if (v3)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"CONTROL_CENTER_STATUS_TRUE_TONE_ON", &stru_2A23E6408, 0);
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"CONTROL_CENTER_STATUS_TRUE_TONE_OFF", &stru_2A23E6408, 0);
  }
  v10 = ;

  return v10;
}

@end