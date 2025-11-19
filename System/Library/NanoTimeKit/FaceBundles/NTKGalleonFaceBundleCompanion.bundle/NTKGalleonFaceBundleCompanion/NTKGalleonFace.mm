@interface NTKGalleonFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)nightModeConfiguration;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKGalleonFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if (objc_msgSend_deviceCategory(v3, v4, v5, v6) == 4 || objc_msgSend_deviceCategory(v3, v7, v8, v9) == 6)
  {
    v10 = objc_msgSend_supportsPDRCapability_(v3, v7, 360081074, v9) ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_complicationSlotDescriptors
{
  v44[1] = *MEMORY[0x277D85DE8];
  v38 = NTKAllSimpleTextComplicationTypes();
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v3, v4, v5);
  v7 = NTKAllSignatureCircularTypes();
  objc_msgSend_addIndexes_(v6, v8, v7, v9);

  v10 = NTKAllSignatureCornerTypes();
  v14 = objc_msgSend_device(self, v11, v12, v13);
  isTinker = objc_msgSend_isTinker(v14, v15, v16, v17);
  v20 = &unk_284EA7C08;
  if (isTinker)
  {
    v20 = &unk_284EA7BF0;
  }

  v44[0] = v20;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v44, 1);

  v40 = NTKComplicationTypeRankedListWithDefaultTypes();
  v39 = NTKComplicationTypeRankedListWithDefaultTypes();
  v37 = NTKComplicationTypeRankedListWithDefaultTypes();
  v35 = NTKComplicationTypeRankedListWithDefaultTypes();
  v33 = NTKComplicationTypeRankedListWithDefaultTypes();
  v21 = NTKComplicationTypeRankedListWithDefaultTypes();
  v34 = NTKComplicationTypeRankedListWithDefaultTypes();
  v42[0] = *MEMORY[0x277D2BEB8];
  v36 = NTKComplicationSlotDescriptor();
  v43[0] = v36;
  v42[1] = *MEMORY[0x277D2BEC0];
  v22 = NTKComplicationSlotDescriptor();
  v43[1] = v22;
  v42[2] = *MEMORY[0x277D2BEC8];
  v23 = NTKComplicationSlotDescriptor();
  v43[2] = v23;
  v42[3] = *MEMORY[0x277D2BEF8];
  v24 = NTKComplicationSlotDescriptor();
  v43[3] = v24;
  v42[4] = *MEMORY[0x277D2BF08];
  v25 = NTKComplicationSlotDescriptor();
  v43[4] = v25;
  v42[5] = *MEMORY[0x277D2BF10];
  v26 = NTKComplicationSlotDescriptor();
  v43[5] = v26;
  v42[6] = *MEMORY[0x277D2BEE0];
  v27 = v21;
  v28 = NTKComplicationSlotDescriptor();
  v43[6] = v28;
  v42[7] = *MEMORY[0x277D2BEE8];
  v29 = NTKComplicationSlotDescriptor();
  v43[7] = v29;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v43, v42, 8);

  return v32;
}

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_isEqualToString_(v5, v7, *MEMORY[0x277D2BF08], v8))
  {
    v11 = MEMORY[0x277D2BE68];
LABEL_3:
    v12 = objc_msgSend_bundledComplicationWithBundleIdentifier_appBundleIdentifier_complicationDescriptor_(MEMORY[0x277D2BF68], v9, *v11, *MEMORY[0x277D2BE70], 0);
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v5, v9, *MEMORY[0x277D2BEB8], v10))
  {
    if ((objc_msgSend_isTinker(v6, v13, v14, v15) & 1) == 0)
    {
      v11 = MEMORY[0x277D2BE90];
      goto LABEL_3;
    }
  }

  else if (objc_msgSend_isEqualToString_(v5, v13, *MEMORY[0x277D2BEC8], v15))
  {
    v11 = MEMORY[0x277D2BE88];
    goto LABEL_3;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (id)_orderedComplicationSlots
{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BF10];
  v8[0] = *MEMORY[0x277D2BF08];
  v8[1] = v2;
  v3 = *MEMORY[0x277D2BEE8];
  v8[2] = *MEMORY[0x277D2BEE0];
  v8[3] = v3;
  v4 = *MEMORY[0x277D2BEB8];
  v8[4] = *MEMORY[0x277D2BEF8];
  v8[5] = v4;
  v5 = *MEMORY[0x277D2BEC8];
  v8[6] = *MEMORY[0x277D2BEC0];
  v8[7] = v5;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 8);

  return v6;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v9[8] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D2BF10];
  v9[0] = *MEMORY[0x277D2BF08];
  v9[1] = v3;
  v4 = *MEMORY[0x277D2BEE8];
  v9[2] = *MEMORY[0x277D2BEE0];
  v9[3] = v4;
  v5 = *MEMORY[0x277D2BEB8];
  v9[4] = *MEMORY[0x277D2BEF8];
  v9[5] = v5;
  v6 = *MEMORY[0x277D2BEC8];
  v9[6] = *MEMORY[0x277D2BEC0];
  v9[7] = v6;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v9, 8);

  return v7;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D2BEF8], v6))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v7, @"GALLEON_SLOT_LABEL_SUBDIAL_TOP", @"Sub-dial Top");
    v14 = LABEL_9:;
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v4, v7, *MEMORY[0x277D2BEB8], v8))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v9, @"GALLEON_SLOT_LABEL_1", @"Slot 1");
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v4, v9, *MEMORY[0x277D2BEC0], v10))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v11, @"GALLEON_SLOT_LABEL_2", @"Slot 2");
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v4, v11, *MEMORY[0x277D2BEC8], v12))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v13, @"GALLEON_SLOT_LABEL_3", @"Slot 3");
    goto LABEL_9;
  }

  v17.receiver = self;
  v17.super_class = NTKGalleonFace;
  v14 = [(NTKFace *)&v17 _localizedNameForComplicationSlot:v4];
LABEL_10:
  v15 = v14;

  return v15;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = objc_msgSend_device(self, a2, a3, a4);
  switch(a3)
  {
    case 11:
      v9 = objc_msgSend_optionWithGalleonTimeMode_forDevice_(NTKGalleonTimeModeEditOption, v5, 1, v6);
      goto LABEL_7;
    case 18:
      v9 = objc_msgSend_optionWithGalleonNightMode_forDevice_(NTKGalleonNightModeEditOption, v5, 2, v6);
      goto LABEL_7;
    case 12:
      v7 = NTKHasRegionalGeoRestrictions();
      v9 = objc_msgSend_optionWithGalleonBezelStyle_forDevice_(NTKGalleonBezelEditOption, v8, v7, v6);
LABEL_7:
      v10 = v9;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, a3, a4);
  v9 = objc_msgSend_device(self, v6, v7, v8);
  v12 = objc_msgSend_numberOfOptionsForDevice_(v5, v10, v9, v11);

  return v12;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, a4, a4, a5);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v13 = objc_msgSend_optionAtIndex_forDevice_(v7, v12, a3, v11);

  return v13;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v10 = objc_msgSend__optionClassForCustomEditMode_(self, v8, a4, v9);
  v14 = objc_msgSend_device(self, v11, v12, v13);
  v16 = objc_msgSend_indexOfOption_forDevice_(v10, v15, v7, v14);

  return v16;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 18 || a3 == 12 || a3 == 11)
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
  v8 = a4;
  switch(a3)
  {
    case 18:
      v9 = objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_NIGHT", v6, @"_COMPANION", v7);
      v11 = NTKCompanionClockFaceLocalizedString();
      goto LABEL_8;
    case 12:
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_GALLEON_CONTENT", v6, @"_COMPANION", v7);
      goto LABEL_6;
    case 11:
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_GALLEON_DENSITY", v6, @"_COMPANION", v7);
      v9 = LABEL_6:;
      v11 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v10, v9, @"Galleon custom edit mode name");
LABEL_8:
      v12 = v11;

      goto LABEL_10;
  }

  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___NTKGalleonFace;
  v12 = objc_msgSendSuper2(&v14, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, v8);
LABEL_10:

  return v12;
}

- (id)_faceDescription
{
  v4 = objc_msgSend__faceDescriptionKey(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v5, v4, &stru_284EA1D18);

  return v6;
}

- (id)nightModeConfiguration
{
  v11.receiver = self;
  v11.super_class = NTKGalleonFace;
  v3 = [(NTKFace *)&v11 nightModeConfiguration];
  v5 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v4, 18, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_analyticsKey(v5, v6, v7, v8);

    v3 = v9;
  }

  return v3;
}

@end