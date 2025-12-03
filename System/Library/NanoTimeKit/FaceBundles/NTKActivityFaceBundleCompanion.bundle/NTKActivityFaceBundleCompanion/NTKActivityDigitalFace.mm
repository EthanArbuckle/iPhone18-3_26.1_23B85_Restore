@interface NTKActivityDigitalFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 11)
  {
    device = [(NTKActivityDigitalFace *)self device];
    v8 = [NTKDigitalTimeAccuracyOption optionWithAccuracy:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 10)
  {
    device = [(NTKActivityDigitalFace *)self device];
    v8 = [NTKFaceColorEditOption optionWithFaceColor:7 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 11)
  {
    v4 = [NTKActivityDigitalFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_ACTIVITY_DIGITAL_ACCURACY" comment:@"Show Seconds"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKActivityDigitalFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKActivityDigitalFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKActivityDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKActivityDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKActivityDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = NTKFaceColorEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 11)
  {
    v4 = NTKDigitalTimeAccuracyOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

@end