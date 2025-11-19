@interface NTKCaliforniaFace
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (BOOL)isFullscreenConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)complicationSlotsHiddenByEditOption:(id)a3;
- (id)defaultColorForDevice:(id)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
- (void)setIsLibraryFace:(BOOL)a3;
@end

@implementation NTKCaliforniaFace

- (id)_faceDescriptionKey
{
  v2 = [(NTKCaliforniaFace *)self device];
  v3 = [v2 supportsPDRCapability:360081074];

  v4 = @"FACE_STYLE_CALIFORNIA_DESCRIPTION";
  if (v3)
  {
    v4 = [@"FACE_STYLE_CALIFORNIA_DESCRIPTION" stringByAppendingString:@"_KINCAID"];
  }

  return v4;
}

- (id)_faceDescription
{
  v2 = [(NTKCaliforniaFace *)self _faceDescriptionKey];
  v3 = [NTKCaliforniaFaceBundle localizedStringForKey:v2 comment:@"California Face Description"];

  return v3;
}

- (void)setIsLibraryFace:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NTKCaliforniaFace;
  [(NTKCaliforniaFace *)&v9 setIsLibraryFace:?];
  if (v3)
  {
    v5 = [(NTKCaliforniaFace *)self selectedOptionForCustomEditMode:13 slot:0];
    if ([v5 style] == -1)
    {
      v6 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
      v7 = [(NTKCaliforniaFace *)self device];
      v8 = [NTKCaliforniaStyleEditOption optionWithStyle:v6 forDevice:v7];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 15:
      v7 = [(NTKCaliforniaFace *)self device];
      v8 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v7];
      goto LABEL_7;
    case 13:
      v7 = [(NTKCaliforniaFace *)self device];
      v8 = [NTKCaliforniaStyleEditOption optionWithStyle:2 forDevice:v7];
      goto LABEL_7;
    case 10:
      v7 = [(NTKCaliforniaFace *)self device];
      v8 = [(NTKCaliforniaFace *)self defaultColorForDevice:v7];
LABEL_7:
      v9 = v8;

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)defaultColorForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_22F8;
  v5[3] = &unk_1C628;
  v5[4] = self;
  v3 = sub_22F8(v5, a3);

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
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

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 13 && [v8 style] == -1)
  {
    v14 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
    v15 = [(NTKCaliforniaFace *)self device];
    v16 = [NTKCaliforniaStyleEditOption optionWithStyle:v14 forDevice:v15];

    v12 = [(NTKCaliforniaFace *)self _indexOfOption:v16 forCustomEditMode:13 slot:v9];
    v8 = v16;
  }

  else
  {
    v10 = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:a4];
    v11 = [(NTKCaliforniaFace *)self device];
    v12 = [(objc_class *)v10 indexOfOption:v8 forDevice:v11];
  }

  return v12;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKCaliforniaFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  if (a3 == -1 && a4 == 13)
  {
    v9 = [(NTKCaliforniaFace *)self _optionAtIndex:+[NTKCaliforniaStyleEditOption forCustomEditMode:"resolvedAutomaticStyleForCurrentLocale"]slot:13, v8];
  }

  else
  {
    v10 = [(NTKCaliforniaFace *)self _optionClassForCustomEditMode:a4];
    v11 = [(NTKCaliforniaFace *)self device];
    v9 = [(objc_class *)v10 optionAtIndex:a3 forDevice:v11];
  }

  return v9;
}

- (id)complicationSlotsHiddenByEditOption:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 dialShape] == &dword_0 + 1)
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
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v3 dialShape])
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 15)
  {
    v7 = @"EDIT_MODE_LABEL_DIAL";
LABEL_7:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = NTKCompanionClockFaceLocalizedString();

    goto LABEL_9;
  }

  if (a3 == 13)
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

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKCaliforniaFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_9:

  return v9;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_17578[a4];
  }

  v6 = [(NTKCaliforniaFace *)self device];
  v10 = [NTKCaliforniaColorEditOption optionWithCaliforniaColor:v5 forDevice:v6];

  [(NTKCaliforniaFace *)self selectOption:v10 forCustomEditMode:10 slot:0];
  v7 = [(NTKCaliforniaFace *)self device];
  v8 = [NTKAnalogDialShapeEditOption optionWithShape:0 forDevice:v7];

  [(NTKCaliforniaFace *)self selectOption:v8 forCustomEditMode:15 slot:0];
  v9 = [NTKComplication anyComplicationOfType:0];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotTopLeft];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotTopRight];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomLeft];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomRight];
  [(NTKCaliforniaFace *)self setComplication:v9 forSlot:NTKComplicationSlotBezel];
}

@end