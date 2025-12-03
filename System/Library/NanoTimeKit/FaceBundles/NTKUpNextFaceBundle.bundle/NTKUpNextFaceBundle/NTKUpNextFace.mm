@interface NTKUpNextFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_customEditModeForUniqueConfiguration;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKUpNextFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllSmallComplicationTypes();
  v4 = [v3 mutableCopy];

  [v4 addIndex:29];
  v5 = +[CLKDevice currentDevice];
  isRunningGraceOrLater = [v5 isRunningGraceOrLater];
  v7 = &off_19098;
  if (isRunningGraceOrLater)
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
  device = [(NTKUpNextFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >= 0x50000)
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
  device = [(NTKUpNextFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >= 0x50000)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v4 = [(NTKUpNextFace *)self device:10];
    [NTKFaceColorUpNextEditOption optionWithFaceColor:201 forDevice:v4];
  }

  else
  {
    v4 = [(NTKUpNextFace *)self device:mode];
    [NTKUpNextDisabledDataSourcesEditOption optionWithDisabledDataSourceIdentifiers:0 forDevice:v4];
  }
  v5 = ;

  return v5;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  if (mode == 16)
  {
    return 1;
  }

  if (mode != 10)
  {
    return 0;
  }

  device = [(NTKUpNextFace *)self device];
  v4 = [device pdrDeviceVersion] >> 16 > 4;

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 10)
  {
    return 0;
  }

  v4 = [(NTKUpNextFace *)self device:mode];
  v5 = [NTKFaceColorUpNextEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v6 = [(NTKUpNextFace *)self device:index];
    v7 = [NTKFaceColorUpNextEditOption optionAtIndex:index forDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  optionCopy = option;
  device = [(NTKUpNextFace *)self device];
  v8 = [NTKFaceColorUpNextEditOption indexOfOption:optionCopy forDevice:device];

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 16)
  {
    v4 = NTKUpNextDisabledDataSourcesEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 10)
  {
    v4 = off_18320;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end