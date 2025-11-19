@interface NTKPrideWeaveFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)complicationSlotsHiddenByEditOption:(id)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKPrideWeaveFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 supportsPDRCapability:277329136];
  if ([v3 sizeClass] && ((objc_msgSend(v3, "sizeClass") != &dword_0 + 1) & v4) == 1)
  {
    v5 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)complicationConfiguration
{
  if (qword_2CCA8 != -1)
  {
    sub_15200();
  }

  v3 = qword_2CCA0;

  return v3;
}

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotBottomLeft, a4}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 12)
  {
    v4 = [(NTKPrideWeaveFace *)self device:12];
    v5 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKPrideWeaveFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKPrideWeaveFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKPrideWeaveFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)complicationSlotsHiddenByEditOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 dialShape] == &dword_0 + 1)
  {
    v9[0] = NTKComplicationSlotTopLeft;
    v9[1] = NTKComplicationSlotTopRight;
    v9[2] = NTKComplicationSlotBottomLeft;
    v9[3] = NTKComplicationSlotBottomRight;
    v5 = [NSArray arrayWithObjects:v9 count:4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKPrideWeaveFace;
    v5 = [(NTKPrideWeaveFace *)&v8 complicationSlotsHiddenByEditOption:v4];
  }

  v6 = v5;

  return v6;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 12)
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
  v2 = [(NTKPrideWeaveFace *)self device];
  v3 = [v2 supportsPDRCapability:3171091165];

  if (v3)
  {
    v4 = @"FACE_STYLE_PRIDE_WEAVE_DESCRIPTION_LIGHTHOUSE";
  }

  else
  {
    v4 = @"FACE_STYLE_PRIDE_WEAVE_DESCRIPTION";
  }

  return [NTKPrideWeaveFaceBundle localizedStringForKey:v4 comment:&stru_24DF0];
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end