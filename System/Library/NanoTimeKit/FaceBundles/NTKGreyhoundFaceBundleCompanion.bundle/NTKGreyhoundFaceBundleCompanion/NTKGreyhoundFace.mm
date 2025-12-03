@interface NTKGreyhoundFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_defaultColorForDevice;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (id)orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKGreyhoundFace

- (id)_faceDescription
{
  device = [(NTKGreyhoundFace *)self device];
  v3 = [device supportsPDRCapability:360081074];

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

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:3588072423] ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [CLKDevice currentDevice:mode];
  isTinker = [v6 isTinker];

  _defaultColorForDevice = 0;
  if (!isTinker)
  {
    if (mode <= 12)
    {
      if (mode == 10)
      {
        _defaultColorForDevice = [(NTKGreyhoundFace *)self _defaultColorForDevice];
        goto LABEL_21;
      }

      if (mode != 11)
      {
        goto LABEL_21;
      }

      device = [(NTKGreyhoundFace *)self device];
      v10 = 0;
      goto LABEL_10;
    }

    if (mode == 13)
    {
      device = [(NTKGreyhoundFace *)self device];
      v12 = 0;
      goto LABEL_19;
    }

LABEL_14:
    if (mode != 15)
    {
      goto LABEL_21;
    }

    device = [(NTKGreyhoundFace *)self device];
    v11 = [NTKGreyhoundStyleEditOption defaultOptionForDevice:device];
    goto LABEL_20;
  }

  if (mode > 12)
  {
    if (mode == 13)
    {
      device = [(NTKGreyhoundFace *)self device];
      v12 = 2;
LABEL_19:
      v11 = [NTKGreyhoundTypefaceEditOption optionWithTypeface:v12 forDevice:device];
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (mode == 10)
  {
    device = [(NTKGreyhoundFace *)self device];
    v11 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:3004 forDevice:device];
    goto LABEL_20;
  }

  if (mode != 11)
  {
    goto LABEL_21;
  }

  device = [(NTKGreyhoundFace *)self device];
  v10 = 1;
LABEL_10:
  v11 = [NTKGreyhoundDensityEditOption optionWithDensity:v10 forDevice:device];
LABEL_20:
  _defaultColorForDevice = v11;

LABEL_21:

  return _defaultColorForDevice;
}

- (id)_defaultColorForDevice
{
  device = [(NTKGreyhoundFace *)self device];
  collectionType = [device collectionType];

  v5 = 3003;
  if (collectionType > 7)
  {
    v8 = 3008;
    if (collectionType == (&dword_8 + 1))
    {
      v5 = 3005;
    }

    if (collectionType == (&dword_8 + 2))
    {
      v5 = 3006;
    }

    v9 = collectionType == &dword_8;
    goto LABEL_10;
  }

  if (collectionType - 5 >= 2)
  {
    v9 = collectionType == (&dword_4 + 3);
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

    device2 = [(NTKGreyhoundFace *)self device];
    v7 = [NTKGreyhoundColorEditOption optionWithCaliforniaColor:v10 forDevice:device2];
    goto LABEL_14;
  }

  device2 = [(NTKGreyhoundFace *)self device];
  v7 = [NTKGreyhoundColorEditOption optionAtIndex:0 forDevice:device2];
LABEL_14:
  v11 = v7;

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  v4 = mode - 10;
  if (mode - 10) <= 5 && ((0x2Bu >> v4))
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKGreyhoundFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGreyhoundFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKGreyhoundFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGreyhoundFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  switch(mode)
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

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKGreyhoundFace;
  v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
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
  device = [(NTKGreyhoundFace *)self device];
  v3 = [NTKGreyhoundDensityEditOption optionWithDensity:0 forDevice:device];

  return v3;
}

@end