@interface NTKExtraLargeFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
@end

@implementation NTKExtraLargeFace

+ (id)_complicationSlotDescriptors
{
  v2 = +[CLKDevice currentDevice];
  if ([v2 supportsPDRCapability:1675361835])
  {
    v3 = +[CLKDevice currentDevice];
    v4 = [v3 deviceCategory];

    if (v4 != &dword_0 + 1)
    {
      v5 = NTKAllGraphicExtraLargeComplicationTypes();
      v6 = NTKComplicationTypeRankedListWithDefaultTypes();
      v7 = NTKMultiFamilyComplicationSlotDescriptor();
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = NTKAllExtraLargeComplicationTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
LABEL_6:
  v8 = v7;

  v11 = NTKComplicationSlotCenter;
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5 = NTKComplicationSlotCenter;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (id)_orderedComplicationSlots
{
  v4 = NTKComplicationSlotCenter;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKExtraLargeFace *)self device:a3];
  v6 = NTKDefaultFaceColorForDeviceCollection();

  v7 = [(NTKExtraLargeFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v6 forDevice:v7];

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKExtraLargeFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKExtraLargeFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKExtraLargeFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = NTKExtraLargeFace;
  if ([(NTKExtraLargeFace *)&v10 _snapshotContext:v6 isStaleRelativeToContext:v7])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [v6 enhanceTextLegibilityEnabledMatchesContext:v7] ^ 1;
  }

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = NTKFaceColorModularEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 17)
  {
    v4 = NTKFaceBackgroundStyleEditOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_9BE8[a4];
  }

  v6 = [(NTKExtraLargeFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:v6];

  v7 = [v8 pigmentEditOption];
  [(NTKExtraLargeFace *)self selectOption:v7 forCustomEditMode:10 slot:0];
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