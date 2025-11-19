@interface NTKDigitalModularFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)_option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
@end

@implementation NTKDigitalModularFace

- (id)_faceDescription
{
  v2 = [(NTKDigitalModularFace *)self _faceDescriptionKey];
  v3 = [NTKDigitalModularFaceBundle localizedStringForKey:v2 comment:@"Digital Modular Description"];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v3 = NTKAllLargeComplicationTypes();
  v16[0] = NTKComplicationSlotTopLeft;
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v14 = NTKComplicationSlotDescriptor();
  v17[0] = v14;
  v16[1] = NTKComplicationSlotBottomLeft;
  v13 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v17[1] = v4;
  v16[2] = NTKComplicationSlotBottomCenter;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v17[2] = v6;
  v16[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v17[3] = v8;
  v16[4] = NTKComplicationSlotCenter;
  v9 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10 = NTKComplicationSlotDescriptor();
  v17[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotCenter;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomCenter;
  v4[4] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKDigitalModularFace;
    v5 = [(NTKDigitalModularFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if ([UIApplication runningInStoreDemoModeFProgramNumber:a3]== &stru_B8.segname[1])
  {
    v5 = 7;
  }

  else
  {
    v6 = [(NTKDigitalModularFace *)self device];
    v5 = NTKDefaultFaceColorForDeviceCollection();
  }

  v7 = [(NTKDigitalModularFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:v7];

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = [(NTKDigitalModularFace *)self device:a3];
  v5 = [NTKFaceColorModularEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = [(NTKDigitalModularFace *)self device:a3];
  v7 = [NTKFaceColorModularEditOption optionAtIndex:a3 forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = a3;
  v7 = [(NTKDigitalModularFace *)self device];
  v8 = [NTKFaceColorModularEditOption indexOfOption:v6 forDevice:v7];

  return v8;
}

- (BOOL)_option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 faceColor];
    v10 = [(NTKDigitalModularFace *)self device];
    *a4 = [NTKFaceColorModularEditOption optionWithFaceColor:v9 forDevice:v10];

    v11 = *a4 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_5910[a4];
  }

  v6 = [(NTKDigitalModularFace *)self device];
  v12 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:v6];

  [(NTKDigitalModularFace *)self selectOption:v12 forCustomEditMode:10 slot:0];
  v7 = [NTKComplication anyComplicationOfType:1];
  [(NTKDigitalModularFace *)self setComplication:v7 forSlot:NTKComplicationSlotTopLeft];
  v8 = [NTKComplication anyComplicationOfType:10];

  [(NTKDigitalModularFace *)self setComplication:v8 forSlot:NTKComplicationSlotCenter];
  v9 = [NTKComplication anyComplicationOfType:17];

  [(NTKDigitalModularFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomLeft];
  v10 = [NTKComplication anyComplicationOfType:2];

  [(NTKDigitalModularFace *)self setComplication:v10 forSlot:NTKComplicationSlotBottomCenter];
  v11 = [NTKComplication anyComplicationOfType:7];

  [(NTKDigitalModularFace *)self setComplication:v11 forSlot:NTKComplicationSlotBottomRight];
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

@end