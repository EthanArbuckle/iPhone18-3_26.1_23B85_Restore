@interface NTKGreyhoundFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultColorForDevice;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)editOptionThatHidesAllComplications;
- (id)orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKGreyhoundFace

- (id)_faceDescription
{
  v2 = [(NTKGreyhoundFace *)self device];
  v3 = [v2 supportsPDRCapability:360081074];

  if (v3)
  {
    v4 = [@"FACE_STYLE_GREYHOUND_DESCRIPTION" stringByAppendingString:@"_KINCAID"];
  }

  else
  {
    v4 = @"FACE_STYLE_GREYHOUND_DESCRIPTION";
  }

  v5 = [NTKGreyhoundFaceBundle localizedStringForKey:v4 comment:&stru_15228];

  return v5;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:3588072423] ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = [CLKDevice currentDevice:a3];
  v7 = [v6 isTinker];

  v8 = 0;
  if (!v7)
  {
    if (a3 <= 12)
    {
      if (a3 == 10)
      {
        v8 = [(NTKGreyhoundFace *)self _defaultColorForDevice];
        goto LABEL_21;
      }

      if (a3 != 11)
      {
        goto LABEL_21;
      }

      v9 = [(NTKGreyhoundFace *)self device];
      v10 = 0;
      goto LABEL_10;
    }

    if (a3 == 13)
    {
      v9 = [(NTKGreyhoundFace *)self device];
      v12 = 0;
      goto LABEL_19;
    }

LABEL_14:
    if (a3 != 15)
    {
      goto LABEL_21;
    }

    v9 = [(NTKGreyhoundFace *)self device];
    v11 = [NTKGreyhoundStyleEditOption defaultOptionForDevice:v9];
    goto LABEL_20;
  }

  if (a3 > 12)
  {
    if (a3 == 13)
    {
      v9 = [(NTKGreyhoundFace *)self device];
      v12 = 2;
LABEL_19:
      v11 = [NTKGreyhoundTypefaceEditOption optionWithTypeface:v12 forDevice:v9];
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a3 == 10)
  {
    v9 = [(NTKGreyhoundFace *)self device];
    v11 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:3004 forDevice:v9];
    goto LABEL_20;
  }

  if (a3 != 11)
  {
    goto LABEL_21;
  }

  v9 = [(NTKGreyhoundFace *)self device];
  v10 = 1;
LABEL_10:
  v11 = [NTKGreyhoundDensityEditOption optionWithDensity:v10 forDevice:v9];
LABEL_20:
  v8 = v11;

LABEL_21:

  return v8;
}

- (id)_defaultColorForDevice
{
  v3 = [(NTKGreyhoundFace *)self device];
  v4 = [v3 collectionType];

  v5 = 3003;
  if (v4 > 7)
  {
    v8 = 3008;
    if (v4 == (&dword_8 + 1))
    {
      v5 = 3005;
    }

    if (v4 == (&dword_8 + 2))
    {
      v5 = 3006;
    }

    v9 = v4 == &dword_8;
    goto LABEL_10;
  }

  if (v4 - 5 >= 2)
  {
    v9 = v4 == (&dword_4 + 3);
    v8 = 3007;
LABEL_10:
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v6 = [(NTKGreyhoundFace *)self device];
    v7 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:v10 forDevice:v6];
    goto LABEL_14;
  }

  v6 = [(NTKGreyhoundFace *)self device];
  v7 = [NTKGreyhoundColorEditOption optionAtIndex:0 forDevice:v6];
LABEL_14:
  v11 = v7;

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  v4 = a3 - 10;
  if (a3 - 10) <= 5 && ((0x2Bu >> v4))
  {
    v5 = *(&off_14438)[v4];
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKGreyhoundFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKGreyhoundFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKGreyhoundFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 11:
      v7 = @"EDIT_OPTION_LABEL_DENSITY";
      goto LABEL_7;
    case 15:
      v7 = @"EDIT_MODE_LABEL_STYLE";
      goto LABEL_7;
    case 13:
      v7 = @"EDIT_MODE_LABEL_TYPEFACE";
LABEL_7:
      v8 = [NTKGreyhoundFaceBundle localizedStringForKey:v7 comment:@"Edit Mode"];
      goto LABEL_9;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKGreyhoundFace;
  v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_9:
  v9 = v8;

  return v9;
}

- (id)_complicationSlotDescriptors
{
  v6 = NTKComplicationSlotSubdialTop;
  v2 = NTKAllSimpleTextComplicationTypes();
  v3 = NTKComplicationSlotDescriptor();
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)orderedComplicationSlots
{
  v4 = NTKComplicationSlotSubdialTop;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)editOptionThatHidesAllComplications
{
  v2 = [(NTKGreyhoundFace *)self device];
  v3 = [NTKGreyhoundDensityEditOption optionWithDensity:0 forDevice:v2];

  return v3;
}

@end