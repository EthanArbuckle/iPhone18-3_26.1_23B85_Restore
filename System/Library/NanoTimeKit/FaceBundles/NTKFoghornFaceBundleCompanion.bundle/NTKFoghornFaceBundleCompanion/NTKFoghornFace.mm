@interface NTKFoghornFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_depthInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_elevationInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_harmoniaInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_secondsInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (void)_applyInitialDefaultComplicationsForBezelStyle:(int64_t)style toFace:(id)face forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)nightModeConfiguration;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKFoghornFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl() && (objc_msgSend_deviceCategory(deviceCopy, v4, v5, v6) == 4 || objc_msgSend_deviceCategory(deviceCopy, v7, v8, v9) == 6))
  {
    v10 = objc_msgSend_supportsPDRCapability_(deviceCopy, v7, 3887189377, v9) ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

+ (id)_complicationSlotDescriptors
{
  v20[7] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D2BF08];
  v18 = NTKAllSignatureCircularTypes();
  v17 = NTKComplicationSlotDescriptor();
  v20[0] = v17;
  v19[1] = *MEMORY[0x277D2BF00];
  v16 = NTKAllSignatureCircularTypes();
  v15 = NTKComplicationSlotDescriptor();
  v20[1] = v15;
  v19[2] = *MEMORY[0x277D2BF10];
  v14 = NTKAllSignatureCircularTypes();
  v2 = NTKComplicationSlotDescriptor();
  v20[2] = v2;
  v19[3] = *MEMORY[0x277D2BEF0];
  v3 = NTKAllSignatureRectangularTypes();
  v4 = NTKComplicationSlotDescriptor();
  v20[3] = v4;
  v19[4] = *MEMORY[0x277D2BEE0];
  v5 = NTKAllSignatureCircularTypes();
  v6 = NTKComplicationSlotDescriptor();
  v20[4] = v6;
  v19[5] = *MEMORY[0x277D2BED8];
  v7 = NTKAllSignatureCircularTypes();
  v8 = NTKComplicationSlotDescriptor();
  v20[5] = v8;
  v19[6] = *MEMORY[0x277D2BEE8];
  v9 = NTKAllSignatureCircularTypes();
  v10 = NTKComplicationSlotDescriptor();
  v20[6] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v20, v19, 7);

  return v12;
}

+ (id)_depthInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BF08], v6))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v7, 43, v8);
    v13 = LABEL_7:;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF00], v8))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v9, *MEMORY[0x277D2BEA8], *MEMORY[0x277D2BE70], 0);
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BF10], v10))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v11, @"com.apple.weather.conditions", @"com.apple.weather.watchapp", 0);
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v11, *MEMORY[0x277D2BEF0], v12))
  {
    v17 = objc_alloc(MEMORY[0x277CBBBD0]);
    v19 = objc_msgSend_initWithExtensionBundleIdentifier_containerBundleIdentifier_kind_intent_(v17, v18, @"com.apple.weather.watchapp.widgets", @"com.apple.weather.watchapp", @"com.apple.weather.widget.humidity", 0);
    v13 = objc_msgSend_complicationWithDescriptor_(MEMORY[0x277D2C140], v20, v19, v21);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(slotCopy, v15, *MEMORY[0x277D2BEE0], v16))
    {
      objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v22, @"com.apple.Depth.temperature", @"com.apple.Depth", 0);
      goto LABEL_7;
    }

    if (objc_msgSend_isEqualToString_(slotCopy, v22, *MEMORY[0x277D2BED8], v23))
    {
      objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v24, 44, v25);
      goto LABEL_7;
    }

    if (objc_msgSend_isEqualToString_(slotCopy, v24, *MEMORY[0x277D2BEE8], v25))
    {
      objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v26, 10, v27);
      goto LABEL_7;
    }

    v13 = 0;
  }

LABEL_8:

  return v13;
}

+ (id)_elevationInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BF08], v6))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v7, 10, v8);
    v15 = LABEL_9:;
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF00], v8))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v9, *MEMORY[0x277D2BE88], *MEMORY[0x277D2BE70], 0);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BF10], v10))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v11, *MEMORY[0x277D2BEA8], *MEMORY[0x277D2BE70], 0);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v11, *MEMORY[0x277D2BEF0], v12))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v13, *MEMORY[0x277D2BE78], *MEMORY[0x277D2BE70], 0);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v13, *MEMORY[0x277D2BEE0], v14))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v17, 7, v18);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v17, *MEMORY[0x277D2BED8], v18))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v19, 12, v20);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v19, *MEMORY[0x277D2BEE8], v20))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v21, 43, v22);
    goto LABEL_9;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_harmoniaInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BF08], v6))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v7, 46, v8);
    v11 = LABEL_5:;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF00], v8))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v9, @"com.apple.NanoCompass.complications.altitude", *MEMORY[0x277D2BE70], 0);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BF10], v10))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v13, 7, v14);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v13, *MEMORY[0x277D2BEF0], v14))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v15, 43, v16);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v15, *MEMORY[0x277D2BEE0], v16))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v17, @"com.apple.NanoCompass.complications.compass", *MEMORY[0x277D2BE70], 0);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v17, *MEMORY[0x277D2BED8], v18))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v19, 15, v20);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v19, *MEMORY[0x277D2BEE8], v20))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v21, *MEMORY[0x277D2BEA8], *MEMORY[0x277D2BE70], 0);
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (id)_secondsInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BF08], v6))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v7, 10, v8);
    v11 = LABEL_5:;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF00], v8))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v9, @"com.apple.NanoWorldClock.WorldClockWidgetExtension", @"com.apple.NanoWorldClock", 0);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BF10], v10))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v13, 7, v14);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v13, *MEMORY[0x277D2BEF0], v14))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v15, @"com.apple.HeartRate.HeartRateWidgetExtension", @"com.apple.HeartRate", 0);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v15, *MEMORY[0x277D2BEE0], v16))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v17, 18, v18);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v17, *MEMORY[0x277D2BED8], v18))
  {
    objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v19, *MEMORY[0x277D2BEA8], *MEMORY[0x277D2BE70], 0);
    goto LABEL_5;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v19, *MEMORY[0x277D2BEE8], v20))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v21, 17, v22);
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (void)_applyInitialDefaultComplicationsForBezelStyle:(int64_t)style toFace:(id)face forDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  deviceCopy = device;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = objc_msgSend__orderedComplicationSlots(self, v10, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        if (style == 4)
        {
          v21 = objc_msgSend__harmoniaInitialDefaultComplicationForSlot_forDevice_(NTKFoghornFace, v16, v20, deviceCopy);
        }

        else if (style == 3)
        {
          v21 = objc_msgSend__elevationInitialDefaultComplicationForSlot_forDevice_(NTKFoghornFace, v16, v20, deviceCopy);
        }

        else
        {
          if (style == 2)
          {
            objc_msgSend__depthInitialDefaultComplicationForSlot_forDevice_(NTKFoghornFace, v16, v20, deviceCopy);
          }

          else
          {
            objc_msgSend__secondsInitialDefaultComplicationForSlot_forDevice_(NTKFoghornFace, v16, v20, deviceCopy);
          }
          v21 = ;
        }

        v23 = v21;
        objc_msgSend_setComplication_forSlot_(faceCopy, v22, v21, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v28, 16);
    }

    while (v17);
  }
}

+ (id)_orderedComplicationSlots
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BF00];
  v7[0] = *MEMORY[0x277D2BF08];
  v7[1] = v2;
  v3 = *MEMORY[0x277D2BEF0];
  v7[2] = *MEMORY[0x277D2BF10];
  v7[3] = v3;
  v4 = *MEMORY[0x277D2BED8];
  v7[4] = *MEMORY[0x277D2BEE0];
  v7[5] = v4;
  v7[6] = *MEMORY[0x277D2BEE8];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 7);

  return v5;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 12:
      v10 = objc_msgSend_device(self, v6, v7, v8);
      v12 = objc_msgSend_optionWithBezelStyle_forDevice_(NTKFoghornFaceBezelStyleEditOption, v14, 1, v10);
      goto LABEL_7;
    case 18:
      v10 = objc_msgSend_device(self, v6, v7, v8);
      v12 = objc_msgSend_optionWithFoghornNightMode_forDevice_(NTKFoghornNightModeEditOption, v13, 2, v10);
      goto LABEL_7;
    case 15:
      v10 = objc_msgSend_device(self, v6, v7, v8);
      v12 = objc_msgSend_optionWithLayoutStyle_forDevice_(NTKFoghornFaceLayoutStyleEditOption, v11, 0, v10);
LABEL_7:
      v15 = v12;

      goto LABEL_9;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, slot);
  v9 = objc_msgSend_device(self, v6, v7, v8);
  v12 = objc_msgSend_numberOfOptionsForDevice_(v5, v10, v9, v11);

  return v12;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, mode, slot);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v13 = objc_msgSend_optionAtIndex_forDevice_(v7, v12, index, v11);

  return v13;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10 = objc_msgSend__optionClassForCustomEditMode_(self, v8, mode, v9);
  v14 = objc_msgSend_device(self, v11, v12, v13);
  v16 = objc_msgSend_indexOfOption_forDevice_(v10, v15, optionCopy, v14);

  return v16;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 18 || mode == 15 || mode == 12)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  switch(mode)
  {
    case 12:
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_FOGHORN_BEZEL", v6, @"_COMPANION", v7);
      goto LABEL_7;
    case 18:
      v9 = objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_NIGHT", v6, @"_COMPANION", v7);
      v10 = NTKCompanionClockFaceLocalizedString();
LABEL_8:
      v11 = v10;

      goto LABEL_10;
    case 15:
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_FOGHORN_STYLE", v6, @"_COMPANION", v7);
      v9 = LABEL_7:;
      v10 = NTKFoghornFaceLocalizedString(v9);
      goto LABEL_8;
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___NTKFoghornFace;
  v11 = objc_msgSendSuper2(&v13, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, deviceCopy);
LABEL_10:

  return v11;
}

- (id)nightModeConfiguration
{
  v11.receiver = self;
  v11.super_class = NTKFoghornFace;
  nightModeConfiguration = [(NTKFace *)&v11 nightModeConfiguration];
  v5 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v4, 18, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_analyticsKey(v5, v6, v7, v8);

    nightModeConfiguration = v9;
  }

  return nightModeConfiguration;
}

- (id)_faceDescription
{
  v4 = objc_msgSend__faceDescriptionKey(self, a2, v2, v3);
  v5 = NTKFoghornFaceLocalizedString(v4);

  return v5;
}

@end