@interface NTKLeghornFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (double)defaultWaypointRadius;
+ (id)_alpineInitialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (void)_applyInitialDefaultComplicationsForFace:(id)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (double)waypointRadius;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)curatedGalleryBackgroundColors;
- (id)editOptionSectionControllerForContext:(id)a3;
- (id)nightModeConfiguration;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (void)setWaypointRadius:(double)a3;
@end

@implementation NTKLeghornFace

- (int64_t)timeStyle
{
  v3 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, v2, 15, 0);
  v6 = objc_msgSend_timeStyle(v3, v4, v5) != 1;

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v8 = objc_msgSend_deviceCategory(v3, v4, v5) == 6 || objc_msgSend_deviceCategory(v3, v6, v7) == 4;
    v9 = v8 & objc_msgSend_isRunningNapiliGMOrLater(v3, v6, v7) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (id)_complicationSlotDescriptors
{
  v19[5] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCornerTypes();
  v17 = NTKComplicationTypeRankedListWithDefaultTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKAllGraphicExtraLargeComplicationTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKMultiFamilyComplicationSlotDescriptor();

  v18[0] = *MEMORY[0x277D2BF08];
  v8 = NTKComplicationSlotDescriptor();
  v19[0] = v8;
  v18[1] = *MEMORY[0x277D2BF10];
  v9 = NTKComplicationSlotDescriptor();
  v19[1] = v9;
  v18[2] = *MEMORY[0x277D2BEE0];
  v10 = NTKComplicationSlotDescriptor();
  v19[2] = v10;
  v18[3] = *MEMORY[0x277D2BEE8];
  v11 = NTKComplicationSlotDescriptor();
  v18[4] = *MEMORY[0x277D2BEF0];
  v19[3] = v11;
  v19[4] = v7;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v13, v19, v18, 5);

  return v14;
}

+ (id)_alpineInitialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_isEqualToString_(v5, v7, v8, *MEMORY[0x277D2BF08]))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v9, v10, 43);
    v17 = LABEL_18:;
    goto LABEL_19;
  }

  if (objc_msgSend_isEqualToString_(v5, v9, v10, *MEMORY[0x277D2BF10]))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v11, v12, 7);
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(v5, v11, v12, *MEMORY[0x277D2BEF0]))
  {
    if (!objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], v13, v14) || !CFPreferencesGetAppBooleanValue(@"StandaloneIsSecured", @"com.apple.Carousel", 0))
    {
      v17 = objc_msgSend_levelComplication(MEMORY[0x277D2BFB0], v15, v16);
LABEL_19:
      v27 = v17;
      goto LABEL_20;
    }

LABEL_17:
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v15, v16, 44);
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(v5, v13, v14, *MEMORY[0x277D2BEE0]))
  {
    if (objc_msgSend_deviceCategory(v6, v18, v19) != 6)
    {
      goto LABEL_15;
    }

    v21 = objc_opt_new();
    shouldAddSkipperComplication = objc_msgSend_shouldAddSkipperComplication(v21, v22, v23);

    v25 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v29[0] = 67109120;
      v29[1] = shouldAddSkipperComplication;
      _os_log_impl(&dword_23BEB1000, v25, OS_LOG_TYPE_DEFAULT, "shouldAddSkipperComplication:%{BOOL}d", v29, 8u);
    }

    if (!shouldAddSkipperComplication || (objc_msgSend_satelliteComplication(MEMORY[0x277D2BFB0], v20, v26), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_15:
      v17 = objc_msgSend_timerComplicationWithDuration_(MEMORY[0x277D2BFB0], v20, 900.0);
      goto LABEL_19;
    }
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v5, v18, v19, *MEMORY[0x277D2BEE8]))
    {
      goto LABEL_17;
    }

    v27 = 0;
  }

LABEL_20:

  return v27;
}

+ (void)_applyInitialDefaultComplicationsForFace:(id)a3 forDevice:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_msgSend__orderedComplicationSlots(a1, v8, 0.0, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, &v22, v26, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = objc_msgSend__initialDefaultComplicationForSlot_forDevice_(a1, v13, v14, v18, v7);
        objc_msgSend_setComplication_forSlot_(v6, v20, v21, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v13, v14, &v22, v26, 16);
    }

    while (v15);
  }
}

+ (id)_orderedComplicationSlots
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D2BF10];
  v7[0] = *MEMORY[0x277D2BF08];
  v7[1] = v3;
  v4 = *MEMORY[0x277D2BEE0];
  v7[2] = *MEMORY[0x277D2BEF0];
  v7[3] = v4;
  v7[4] = *MEMORY[0x277D2BEE8];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v2, v7, 5);

  return v5;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, v6, *MEMORY[0x277D2BEF0]))
  {
    v7 = NTKFoghornFaceLocalizedString(@"LEGHORN_SLOT_LABEL_CENTER");
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKLeghornFace;
    v7 = [(NTKFace *)&v10 _localizedNameForComplicationSlot:v4];
  }

  v8 = v7;

  return v8;
}

- (id)curatedGalleryBackgroundColors
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, v2, 10, 0);
  v6 = objc_msgSend_fullname(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, v8, @"leghorn.hero-1");

  v10 = NTKColorWithRGBA();
  if (isEqualToString)
  {
    v19[0] = v10;
    v11 = NTKColorWithRGBA();
    v19[1] = v11;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v13, v19, 2);
  }

  else
  {
    v18[0] = v10;
    v11 = NTKColorWithRGBA();
    v18[1] = v11;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v15, v18, 2);
  }
  v16 = ;

  return v16;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v7 = a4;
  v9 = 0;
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      v10 = objc_msgSend_device(self, v6, v8);
      v13 = objc_msgSend_optionForEverythingForDevice_(NTKLeghornPOIFilterEditOption, v18, v19, v10);
    }

    else
    {
      if (a3 != 18)
      {
        goto LABEL_11;
      }

      v10 = objc_msgSend_device(self, v6, v8);
      v13 = objc_msgSend_optionWithFoghornNightMode_forDevice_(NTKFoghornNightModeEditOption, v14, v15, 2, v10);
    }
  }

  else if (a3 == 14)
  {
    v10 = objc_msgSend_device(self, v6, v8);
    v13 = objc_msgSend_optionWithHiVizComplicationStyle_forDevice_(NTKLeghornHiVizComplicationStyleEditOption, v16, v17, 2, v10);
  }

  else
  {
    if (a3 != 15)
    {
      goto LABEL_11;
    }

    v10 = objc_msgSend_device(self, v6, v8);
    v13 = objc_msgSend_optionWithLeghornTimeStyle_forDevice_(NTKLeghornTimeStyleEditOption, v11, v12, 0, v10);
  }

  v9 = v13;

LABEL_11:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = objc_msgSend__optionClassForCustomEditMode_(self, a2, v4, a3, a4);
  v9 = objc_msgSend_device(self, v7, v8);
  v12 = objc_msgSend_numberOfOptionsForDevice_(v6, v10, v11, v9);

  return v12;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9 = a5;
  if (a4 == 16)
  {
    v11 = objc_msgSend_configuration(self, v8, v10);
    objc_msgSend_optionForCustomEditMode_slot_(v11, v12, v13, 16, v9);
  }

  else
  {
    v14 = objc_msgSend__optionClassForCustomEditMode_(self, v8, v10, a4);
    v11 = objc_msgSend_device(self, v15, v16);
    objc_msgSend_optionAtIndex_forDevice_(v14, v17, v18, a3, v11);
  }
  v19 = ;

  return v19;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 16)
  {
    return 0;
  }

  v8 = a3;
  v11 = objc_msgSend__optionClassForCustomEditMode_(self, v9, v10, a4);
  v14 = objc_msgSend_device(self, v12, v13);
  v17 = objc_msgSend_indexOfOption_forDevice_(v11, v15, v16, v8, v14);

  return v17;
}

- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = NTKLeghornFace;
  [(NTKFace *)&v8 _noteOptionChangedFrom:a3 to:a4 forCustomEditMode:a5 slot:a6];
  if (a5 == 16)
  {
    v7 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[NTKLeghornFace _noteOptionChangedFrom:to:forCustomEditMode:slot:]";
      _os_log_impl(&dword_23BEB1000, v7, OS_LOG_TYPE_DEFAULT, "%s: got here", buf, 0xCu);
    }
  }
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 - 14) <= 4 && ((0x17u >> (a3 - 14)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v7 = a4;
  if (a3 <= 15)
  {
    if (a3 == 14)
    {
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_HIVIZ_STYLE", v6, v8, @"_COMPANION");
      goto LABEL_11;
    }

    if (a3 == 15)
    {
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_TIME_STYLE", v6, v8, @"_COMPANION");
      v9 = LABEL_11:;
      v10 = NTKFoghornFaceLocalizedString(v9);
      goto LABEL_12;
    }

LABEL_8:
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___NTKLeghornFace;
    v11 = objc_msgSendSuper2(&v13, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, v7);
    goto LABEL_13;
  }

  if (a3 == 16)
  {
    objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_FILTER", v6, v8, @"_COMPANION");
    goto LABEL_11;
  }

  if (a3 != 18)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_NIGHT", v6, v8, @"_COMPANION");
  v10 = NTKCompanionClockFaceLocalizedString();
LABEL_12:
  v11 = v10;

LABEL_13:

  return v11;
}

- (id)nightModeConfiguration
{
  v11.receiver = self;
  v11.super_class = NTKLeghornFace;
  v3 = [(NTKFace *)&v11 nightModeConfiguration];
  v6 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v4, v5, 18, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_analyticsKey(v6, v7, v8);

    v3 = v9;
  }

  return v3;
}

+ (double)defaultWaypointRadius
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v6 = objc_msgSend_objectForKey_(v3, v4, v5, *MEMORY[0x277CBE718]);
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  result = 16093.44;
  if (v9)
  {
    return 15000.0;
  }

  return result;
}

- (double)waypointRadius
{
  v3 = objc_msgSend_customDataForKey_(self, a2, v2, @"radius");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_doubleValue(v3, v4, v5), v7 = v6, v6 < 50.0))
  {
    v8 = objc_opt_class();
    objc_msgSend_defaultWaypointRadius(v8, v9, v10);
    v7 = v11;
  }

  return v7;
}

- (void)setWaypointRadius:(double)a3
{
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, a3);
  objc_msgSend_setCustomData_forKey_(self, v5, v6, v7, @"radius");
}

- (id)_faceDescription
{
  v3 = objc_msgSend__faceDescriptionKey(self, a2, v2);
  v4 = NTKFoghornFaceLocalizedString(v3);

  return v4;
}

- (id)editOptionSectionControllerForContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_collection(v4, v5, v6);
  if (objc_msgSend_mode(v7, v8, v9) == 16)
  {
    v12 = objc_msgSend_tableViewProvider(v4, v10, v11);
    v15 = objc_msgSend_inGallery(v4, v13, v14);
    v18 = objc_msgSend_faceView(v4, v16, v17);
    v19 = [NTKCLeghornFaceDetailContentSectionController alloc];
    v22 = objc_msgSend_initWithTableViewController_face_inGallery_editOptionCollection_faceView_(v19, v20, v21, v12, self, v15, v7, v18);
    v25 = objc_msgSend_requestingViewController(v4, v23, v24);
    objc_msgSend_setParentViewController_(v22, v26, v27, v25);
  }

  else
  {
    v29.receiver = self;
    v29.super_class = NTKLeghornFace;
    v22 = [(NTKFace *)&v29 editOptionSectionControllerForContext:v4];
  }

  return v22;
}

@end