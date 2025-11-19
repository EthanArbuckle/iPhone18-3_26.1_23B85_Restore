@interface NTKActivityDigitalFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKActivityDigitalFace

- (id)_faceDescription
{
  if (NTKIsWheelchairUser())
  {
    v2 = @"FACE_STYLE_ACTIVITY_DIGITAL_ROLL_DESCRIPTION";
  }

  else
  {
    v2 = @"FACE_STYLE_ACTIVITY_DIGITAL_STAND_DESCRIPTION";
  }

  return [NTKActivityDigitalFaceBundle localizedStringForKey:v2 comment:@"description"];
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilityLargeComplicationTypes();
  v3 = NTKAllSmallComplicationTypes();
  v11[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationSlotDescriptor();
  v12[0] = v4;
  v11[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v12[1] = v6;
  v11[2] = NTKComplicationSlotBottomCenter;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 11)
  {
    v7 = [(NTKActivityDigitalFace *)self device];
    v8 = [NTKDigitalTimeAccuracyOption optionWithAccuracy:0 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 10)
  {
    v7 = [(NTKActivityDigitalFace *)self device];
    v8 = [NTKFaceColorEditOption optionWithFaceColor:7 forDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    v4 = [NTKActivityDigitalFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_ACTIVITY_DIGITAL_ACCURACY" comment:@"Show Seconds"];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKActivityDigitalFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKActivityDigitalFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKActivityDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKActivityDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = NTKFaceColorEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 11)
  {
    v4 = NTKDigitalTimeAccuracyOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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