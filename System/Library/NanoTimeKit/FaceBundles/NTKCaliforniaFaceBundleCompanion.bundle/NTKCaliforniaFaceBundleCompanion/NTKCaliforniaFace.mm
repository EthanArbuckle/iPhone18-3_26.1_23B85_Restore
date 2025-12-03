@interface NTKCaliforniaFace
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (BOOL)isFullscreenConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (id)defaultColorForDevice:(id)device;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
- (void)setIsLibraryFace:(BOOL)face;
@end

@implementation NTKCaliforniaFace

- (id)_faceDescriptionKey
{
  device = [(NTKCaliforniaFace *)self device];
  v3 = [device supportsPDRCapability:360081074];

  v4 = @"FACE_STYLE_CALIFORNIA_DESCRIPTION";
  if (v3)
  {
    v4 = [@"FACE_STYLE_CALIFORNIA_DESCRIPTION" stringByAppendingString:@"_KINCAID"];
  }

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKCaliforniaFace *)self _faceDescriptionKey];
  v3 = [NTKCaliforniaFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"California Face Description"];

  return v3;
}

- (void)setIsLibraryFace:(BOOL)face
{
  faceCopy = face;
  v9.receiver = self;
  v9.super_class = NTKCaliforniaFace;
  [(NTKCaliforniaFace *)&v9 setIsLibraryFace:?];
  if (faceCopy)
  {
    v5 = [(NTKCaliforniaFace *)self selectedOptionForCustomEditMode:13 slot:0];
    if ([v5 style] == -1)
    {
      v6 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
      device = [(NTKCaliforniaFace *)self device];
      v8 = [NTKCaliforniaStyleEditOption optionWithStyle:v6 forDevice:device];
      [(NTKCaliforniaFace *)self selectOption:v8 forCustomEditMode:13 slot:0];
    }
  }
}

+ (id)complicationConfiguration
{
  if (qword_229E8 != -1)
  {
    sub_F638();
  }

  v3 = qword_229E0;

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 15:
      device = [(NTKCaliforniaFace *)self device];
      v8 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];
      goto LABEL_7;
    case 13:
      device = [(NTKCaliforniaFace *)self device];
      v8 = [NTKCaliforniaStyleEditOption optionWithStyle:2 forDevice:device];
      goto LABEL_7;
    case 10:
      device = [(NTKCaliforniaFace *)self device];
      v8 = [(NTKCaliforniaFace *)self defaultColorForDevice:device];
LABEL_7:
      v9 = v8;

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)defaultColorForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_22F8;
  v5[3] = &unk_1C628;
  v5[4] = self;
  v3 = sub_22F8(v5, device);

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = NTKCaliforniaColorEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 15:
      v4 = NTKAnalogDialShapeEditOption_ptr;
      goto LABEL_7;
    case 13:
      v4 = &off_1C298;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 13 && [optionCopy style] == -1)
  {
    v14 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
    device = [(NTKCaliforniaFace *)self device];
    v16 = [NTKCaliforniaStyleEditOption optionWithStyle:v14 forDevice:device];

    v12 = [(NTKCaliforniaFace *)self _indexOfOption:v16 forCustomEditMode:13 slot:slotCopy];
    optionCopy = v16;
  }

  else
  {
    v10 = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:mode];
    device2 = [(NTKCaliforniaFace *)self device];
    v12 = [(objc_class *)v10 indexOfOption:optionCopy forDevice:device2];
  }

  return v12;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKCaliforniaFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (index == -1 && mode == 13)
  {
    slotCopy = [(NTKCaliforniaFace *)self _optionAtIndex:+[NTKCaliforniaStyleEditOption forCustomEditMode:"resolvedAutomaticStyleForCurrentLocale"]slot:13, slotCopy];
  }

  else
  {
    v10 = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:mode];
    device = [(NTKCaliforniaFace *)self device];
    slotCopy = [(objc_class *)v10 optionAtIndex:index forDevice:device];
  }

  return slotCopy;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [optionCopy dialShape] == &dword_0 + 1)
  {
    v10 = NTKComplicationSlotTopLeft;
    v11 = NTKComplicationSlotTopRight;
    v12 = NTKComplicationSlotBezel;
    v13 = NTKComplicationSlotBottomLeft;
    v14 = NTKComplicationSlotBottomRight;
    v4 = &v10;
    v5 = 5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [optionCopy dialShape])
    {
      v6 = 0;
      goto LABEL_9;
    }

    v8 = NTKComplicationSlotSubdialTop;
    v9 = NTKComplicationSlotSubdialBottom;
    v4 = &v8;
    v5 = 2;
  }

  v6 = [NSArray arrayWithObjects:v4 count:v5, v8, v9, v10, v11, v12, v13, v14];
LABEL_9:

  return v6;
}

- (BOOL)isFullscreenConfiguration
{
  v2 = [(NTKCaliforniaFace *)self selectedOptionForCustomEditMode:15 slot:0];
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 dialShape] == &dword_0 + 1;

  return v3;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 15)
  {
    v7 = @"EDIT_MODE_LABEL_DIAL";
LABEL_7:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = NTKCompanionClockFaceLocalizedString();

    goto LABEL_9;
  }

  if (mode == 13)
  {
    if (NTKShowIndicScriptNumerals())
    {
      v7 = @"EDIT_MODE_LABEL_NUMERALS";
    }

    else
    {
      v7 = @"EDIT_MODE_LABEL_SYMBOLS_LEGACY";
    }

    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKCaliforniaFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_9:

  return v9;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  if (color > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_17578[color];
  }

  device = [(NTKCaliforniaFace *)self device];
  v10 = [NTKCaliforniaColorEditOption optionWithCaliforniaColor:v5 forDevice:device];

  [(NTKCaliforniaFace *)self selectOption:v10 forCustomEditMode:10 slot:0];
  device2 = [(NTKCaliforniaFace *)self device];
  v8 = [NTKAnalogDialShapeEditOption optionWithShape:0 forDevice:device2];

  [(NTKCaliforniaFace *)self selectOption:v8 forCustomEditMode:15 slot:0];
  v9 = [NTKComplication anyComplicationOfType:0];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotTopLeft];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotTopRight];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomLeft];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomRight];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBezel];
}

@end