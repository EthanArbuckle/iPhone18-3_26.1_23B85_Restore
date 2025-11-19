@interface NTKInfinityFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKInfinityFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v9[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v10[0] = v5;
  v9[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 12)
  {
    v4 = [(NTKInfinityFace *)self device:12];
    v5 = [NTKInfinityStyleEditOption optionWithStyle:0 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKInfinityFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKInfinityFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKInfinityFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKInfinityFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKInfinityFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKInfinityFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
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

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v10.receiver = self;
    v10.super_class = NTKInfinityFace;
    v5 = [(NTKInfinityFace *)&v10 _localizedNameForComplicationSlot:v4];
  }

  else
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopRight])
    {
      v6 = @"TOP";
    }

    else
    {
      v7 = [v4 isEqualToString:NTKComplicationSlotBottom];
      v6 = @"BOTTOM";
      if (!v7)
      {
        v6 = 0;
      }
    }

    v8 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v6];
    v5 = NTKClockFaceLocalizedString();
  }

  return v5;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_INFINITY_CONTENT" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = [@"ToyBox" stringByAppendingString:@"-Companion"];
    v6 = [NTKToyStoryFaceBundle localizedStringForKey:v4 table:v5 comment:@"Characters"];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKInfinityFace;
    v6 = objc_msgSendSuper2(&v8, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v6;
}

@end