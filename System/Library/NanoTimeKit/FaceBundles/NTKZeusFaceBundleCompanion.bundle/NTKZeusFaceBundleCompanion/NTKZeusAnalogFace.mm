@interface NTKZeusAnalogFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationMigrationPaths;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5;
- (id)customComplicationsForSlot:(id)a3;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKZeusAnalogFace

- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3
{
  v3 = 11;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 13;
  }
}

- (id)_complicationMigrationPaths
{
  v4[0] = @"upper";
  v4[1] = @"lower";
  v5[0] = NTKComplicationSlotTop;
  v5[1] = NTKComplicationSlotBottom;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  if ([a3 collectionType] == &dword_4 + 1)
  {
    return 0;
  }

  else
  {
    return NTKShowHardwareSpecificFaces() ^ 1;
  }
}

+ (id)_complicationSlotDescriptors
{
  v11 = xmmword_37BC8;
  v12 = 5;
  v2 = [NSIndexSet indexSetWithIndexes:&v11 count:3];
  v3 = [NSIndexSet indexSetWithIndex:11, NTKComplicationSlotTop];
  v4 = NTKComplicationSlotDescriptor();
  v9[1] = NTKComplicationSlotBottom;
  v10[0] = v4;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTop;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 complicationType];
  if (v9 == &dword_4)
  {
    v10 = off_444A0;
    goto LABEL_7;
  }

  if (v9 == (&dword_4 + 1))
  {
    v10 = off_444A8;
    goto LABEL_7;
  }

  if (v9 == (&dword_8 + 3))
  {
    v10 = off_44478;
LABEL_7:
    v11 = objc_alloc(*v10);
    v12 = [(NTKZeusAnalogFace *)self device];
    v13 = [v11 initWithComplication:v7 variant:v8 device:v12];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)customComplicationsForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:NTKComplicationSlotTop])
  {
    v4 = [NTKComplication allComplicationsOfType:11];
  }

  else if ([v3 isEqual:NTKComplicationSlotBottom])
  {
    v4 = objc_opt_new();
    v5 = [NTKComplication allComplicationsOfType:5];
    [v4 addObjectsFromArray:v5];

    v6 = [NTKComplication allComplicationsOfType:4];
    [v4 addObjectsFromArray:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:NTKComplicationSlotTop])
  {
    v8 = &NTKComplicationFamilyZeusUpper;
  }

  else
  {
    if (![v7 isEqual:NTKComplicationSlotBottom])
    {
      v11.receiver = self;
      v11.super_class = NTKZeusAnalogFace;
      v9 = [(NTKZeusAnalogFace *)&v11 customComplicationFamilyForComplication:v6 slot:v7];
      goto LABEL_7;
    }

    v8 = &NTKComplicationFamilyZeusLower;
  }

  v9 = *v8;
LABEL_7:

  return v9;
}

- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 complicationType];
  if ((v9 - 4) >= 2)
  {
    if (v9 == &dword_8 + 3 && [v8 isEqual:NTKComplicationSlotTop])
    {
      v10 = &NTKComplicationFamilyZeusUpper;
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([v8 isEqual:NTKComplicationSlotBottom] & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = &NTKComplicationFamilyZeusLower;
LABEL_7:
  v11 = [NSNumber numberWithInteger:*v10];
  v12 = [v7 containsObject:v11];

LABEL_9:
  return v12;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKZeusAnalogFace *)self device:a3];
  switch(a3)
  {
    case 10:
      v6 = [NTKZeusColorEditOption optionWithColor:7 forDevice:v5];
      goto LABEL_7;
    case 11:
      v6 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:v5];
      goto LABEL_7;
    case 13:
      v6 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:v5];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NTKZeusAnalogFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKZeusAnalogFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKZeusAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKZeusAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10 || a3 == 13 || a3 == 11)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_faceDescription
{
  v2 = [(NTKZeusAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKZeusAnalogFaceBundle localizedStringForKey:v2 comment:&stru_45510];

  return v3;
}

@end