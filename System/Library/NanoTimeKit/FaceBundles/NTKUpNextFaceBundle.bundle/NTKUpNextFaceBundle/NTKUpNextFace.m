@interface NTKUpNextFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_customEditModeForUniqueConfiguration;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKUpNextFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllSmallComplicationTypes();
  v4 = [v3 mutableCopy];

  [v4 addIndex:29];
  v5 = +[CLKDevice currentDevice];
  v6 = [v5 isRunningGraceOrLater];
  v7 = &off_19098;
  if (v6)
  {
    v7 = &off_19080;
  }

  v8 = v7;

  v16 = v8;
  v17[0] = NTKComplicationSlotTopLeft;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v10 = NTKComplicationTypeRankedListWithDefaultTypes();
  v11 = NTKComplicationSlotDescriptor();
  v18[0] = v11;
  v17[1] = NTKComplicationSlotTopRight;
  v12 = NTKComplicationTypeRankedListWithDefaultTypes();
  v13 = NTKComplicationSlotDescriptor();
  v18[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v14;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_customEditModes
{
  v2 = [(NTKUpNextFace *)self device];
  v3 = [v2 pdrDeviceVersion];

  if (v3 >= 0x50000)
  {
    return &off_192F8;
  }

  else
  {
    return &off_192E0;
  }
}

- (int64_t)_customEditModeForUniqueConfiguration
{
  v2 = [(NTKUpNextFace *)self device];
  v3 = [v2 pdrDeviceVersion];

  if (v3 >= 0x50000)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v4 = [(NTKUpNextFace *)self device:10];
    [NTKFaceColorUpNextEditOption optionWithFaceColor:201 forDevice:v4];
  }

  else
  {
    v4 = [(NTKUpNextFace *)self device:a3];
    [NTKUpNextDisabledDataSourcesEditOption optionWithDisabledDataSourceIdentifiers:0 forDevice:v4];
  }
  v5 = ;

  return v5;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3
{
  if (a3 == 16)
  {
    return 1;
  }

  if (a3 != 10)
  {
    return 0;
  }

  v3 = [(NTKUpNextFace *)self device];
  v4 = [v3 pdrDeviceVersion] >> 16 > 4;

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 != 10)
  {
    return 0;
  }

  v4 = [(NTKUpNextFace *)self device:a3];
  v5 = [NTKFaceColorUpNextEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v6 = [(NTKUpNextFace *)self device:a3];
    v7 = [NTKFaceColorUpNextEditOption optionAtIndex:a3 forDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 != 10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = a3;
  v7 = [(NTKUpNextFace *)self device];
  v8 = [NTKFaceColorUpNextEditOption indexOfOption:v6 forDevice:v7];

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 16)
  {
    v4 = NTKUpNextDisabledDataSourcesEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 10)
  {
    v4 = off_18320;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end