@interface NTKRenegadeFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKRenegadeFace

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotDate;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilityLargeNarrowComplicationTypes();
  v9[0] = NTKComplicationSlotDate;
  v3 = NTKWrappedDateComplicationType();
  v4 = NTKComplicationSlotDescriptor();
  v10[0] = v4;
  v9[1] = NTKComplicationSlotBottom;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRenegadeFace;
    v5 = [(NTKRenegadeFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKRenegadeFace *)self device:a3];
  if (a3 == 10)
  {
    v6 = [NTKRenegadeColorEditOption optionWithRenegadeColor:1 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKRenegadeFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKRenegadeFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKRenegadeFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKRenegadeFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKRenegadeFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKRenegadeFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
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

- (id)_faceDescription
{
  v2 = [(NTKRenegadeFace *)self _faceDescriptionKey];
  v3 = [NTKRenegadeFaceBundle localizedStringForKey:v2 comment:&stru_10808];

  return v3;
}

@end