@interface NTKNumeralsAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (BOOL)_option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_commonInit;
- (void)_handleLocaleNumberSystemChange;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    v12 = [(NTKNumeralsAnalogFace *)self device];
    v13 = [v12 collectionType];

    if (v13 == &dword_4 + 3)
    {
      v14 = 24;
    }

    else
    {
      v16 = [(NTKNumeralsAnalogFace *)self device];
      v14 = NTKDefaultFaceColorForDeviceCollection();
    }

    v10 = [(NTKNumeralsAnalogFace *)self device];
    v11 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:v14 forDevice:v10];
  }

  else
  {
    if (a3 != 13)
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

    v10 = [(NTKNumeralsAnalogFace *)self device];
    v11 = [NTKNumeralsAnalogStyleEditOption optionWithStyle:v9 forDevice:v10];
  }

  v15 = v11;

LABEL_15:

  return v15;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 13)
  {
    v4 = [@"EDIT_MODE_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NTKNumeralsAnalogFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKNumeralsAnalogFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKNumeralsAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKNumeralsAnalogFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKNumeralsAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (BOOL)_option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a5 == 10 && [v10 faceColor] == &dword_4 + 3)
  {
    v12 = [(NTKNumeralsAnalogFace *)self device];
    *a4 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:26 forDevice:v12];

    v13 = *a4 != 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 faceColor];
      v15 = [(NTKNumeralsAnalogFace *)self device];
      *a4 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:v14 forDevice:v15];

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 13)
  {
    v4 = &off_10280;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 10)
  {
    v4 = off_10278;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_faceDescription
{
  v2 = [(NTKNumeralsAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKNumeralsAnalogFaceBundle localizedStringForKey:v2 comment:&stru_10890];

  return v3;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_ADA0[a4];
  }

  v6 = [(NTKNumeralsAnalogFace *)self device];
  v7 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:v5 forDevice:v6];

  [(NTKNumeralsAnalogFace *)self selectOption:v7 forCustomEditMode:10 slot:0];
}

@end