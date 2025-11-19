@interface NTKProteusFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKProteusFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1 || objc_msgSend(v3, "deviceCategory") == &dword_0 + 2)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:4094027452] ^ 1;
  }

  return v4;
}

- (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllSimpleTextComplicationTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9[0] = NTKComplicationSlotSubdialTop;
  v5 = NTKComplicationSlotDescriptor();
  v10[0] = v5;
  v9[1] = NTKComplicationSlotSubdialBottom;
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
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
  v5[0] = NTKComplicationSlotSubdialTop;
  v5[1] = NTKComplicationSlotSubdialBottom;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKProteusFace *)self device:a3];
  if (a3 == 12)
  {
    v6 = [NTKProteusBackgroundEditOption optionWithBackgroundStyle:1 forDevice:v5];
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v6 = [NTKProteusStyleEditOption optionWithProteusStyle:0 forDevice:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKProteusFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKProteusFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKProteusFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKProteusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKProteusFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKProteusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
  {
    v4 = &off_10228;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 12)
  {
    v4 = off_10220;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    v7 = @"EDIT_MODE_LABEL_PROTEUS_CONTENT";
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v7 = @"EDIT_MODE_LABEL_PROTEUS_STYLE";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = [NTKProteusFaceBundle localizedStringForKey:v8 comment:@"Typograph custom edit mode name"];

    goto LABEL_7;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKProteusFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_7:

  return v9;
}

- (id)_faceDescription
{
  v2 = [(NTKProteusFace *)self _faceDescriptionKey];
  v3 = [NTKProteusFaceBundle localizedStringForKey:v2 comment:&stru_106F0];

  return v3;
}

@end