@interface NTKGladiusFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKGladiusFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory] == &dword_0 + 1;
  v5 = _os_feature_enabled_impl();
  v6 = [v3 supportsPDRCapability:3887189377];

  return v4 || (v5 & v6 & 1) == 0;
}

- (id)_complicationSlotDescriptors
{
  v8[0] = NTKComplicationSlotSubdialTop;
  v2 = NTKAllSimpleTextComplicationTypes();
  v3 = NTKComplicationSlotDescriptor();
  v9[0] = v3;
  v8[1] = NTKComplicationSlotSubdialBottom;
  v4 = NTKAllSignatureCircularTypes();
  v5 = NTKComplicationSlotDescriptor();
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotSubdialTop;
  v4[1] = NTKComplicationSlotSubdialBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5 = NTKComplicationSlotSubdialBottom;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
  {
    v4 = &off_20520;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 12)
  {
    v4 = off_20518;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    v7 = [(NTKGladiusFace *)self device];
    v8 = [NTKGladiusLightEditOption optionWithLight:0 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v7 = [(NTKGladiusFace *)self device];
    v8 = [NTKGladiusStyleEditOption optionWithStyle:0 forDevice:v7];
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
  if (a3 == 12)
  {
    v4 = [NTKGladiusFaceBundle localizedStringForKey:@"GLADIUS_EDIT_MODE_LABEL_LIGHT" comment:@"Light"];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKGladiusFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKGladiusFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKGladiusFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKGladiusFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKGladiusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKGladiusFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKGladiusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end