@interface NTKNumeralsAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_commonInit;
- (void)_handleLocaleNumberSystemChange;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
- (void)dealloc;
@end

@implementation NTKNumeralsAnalogFace

- (void)_commonInit
{
  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogFace;
  [(NTKNumeralsAnalogFace *)&v4 _commonInit];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleLocaleNumberSystemChange" name:CLKLocaleNumberSystemChangedNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CLKLocaleNumberSystemChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogFace;
  [(NTKNumeralsAnalogFace *)&v4 dealloc];
}

- (void)_handleLocaleNumberSystemChange
{
  v4 = [(NTKNumeralsAnalogFace *)self selectedOptionForCustomEditMode:13 slot:0];
  if (!v4 || ([(NTKNumeralsAnalogFace *)self _option:v4 isValidForCustomEditMode:13 slot:0]& 1) == 0)
  {
    v3 = [(NTKNumeralsAnalogFace *)self _defaultOptionForCustomEditMode:13 slot:0];

    [(NTKNumeralsAnalogFace *)self selectOption:v3 forCustomEditMode:13 slot:0];
  }

  _objc_release_x1();
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
  v7 = NTKComplicationSlot1;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)_orderedComplicationSlots
{
  v4 = NTKComplicationSlot1;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKNumeralsAnalogFace *)self device];
    collectionType = [device collectionType];

    if (collectionType == &dword_4 + 3)
    {
      v14 = 24;
    }

    else
    {
      device2 = [(NTKNumeralsAnalogFace *)self device];
      v14 = NTKDefaultFaceColorForDeviceCollection();
    }

    device3 = [(NTKNumeralsAnalogFace *)self device];
    v11 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:v14 forDevice:device3];
  }

  else
  {
    if (mode != 13)
    {
      v15 = 0;
      goto LABEL_15;
    }

    v7 = CLKLocaleCurrentNumberSystem();
    v8 = 4;
    if (v7 == 1)
    {
      v8 = 7;
    }

    if (v7 == 2)
    {
      v9 = 8;
    }

    else
    {
      v9 = v8;
    }

    device3 = [(NTKNumeralsAnalogFace *)self device];
    v11 = [NTKNumeralsAnalogStyleEditOption optionWithStyle:v9 forDevice:device3];
  }

  v15 = v11;

LABEL_15:

  return v15;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 13)
  {
    v4 = [@"EDIT_MODE_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKNumeralsAnalogFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKNumeralsAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKNumeralsAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKNumeralsAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  _optionCopy = _option;
  slotCopy = slot;
  if (mode == 10 && [_optionCopy faceColor] == &dword_4 + 3)
  {
    device = [(NTKNumeralsAnalogFace *)self device];
    *option = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:26 forDevice:device];

    v13 = *option != 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      faceColor = [_optionCopy faceColor];
      device2 = [(NTKNumeralsAnalogFace *)self device];
      *option = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:faceColor forDevice:device2];

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 13)
  {
    v4 = &off_10280;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 10)
  {
    v4 = off_10278;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKNumeralsAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKNumeralsAnalogFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_10890];

  return v3;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  if (color > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_ADA0[color];
  }

  device = [(NTKNumeralsAnalogFace *)self device];
  v7 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:v5 forDevice:device];

  [(NTKNumeralsAnalogFace *)self selectOption:v7 forCustomEditMode:10 slot:0];
}

@end