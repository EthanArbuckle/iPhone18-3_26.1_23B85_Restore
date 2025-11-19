@interface NTKBellonaFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKBellonaFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] != &dword_0 + 1 && _os_feature_enabled_impl() && objc_msgSend(v3, "supportsPDRCapability:", 3887189377))
  {
    if ([v3 collectionType] == &dword_4 + 1)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = NTKShowHardwareSpecificFaces() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9[0] = NTKComplicationSlotBottomCenter;
  v4 = NTKComplicationSlotDescriptor();
  v9[1] = NTKComplicationSlotDate;
  v10[0] = v4;
  v5 = NTKWrappedDateComplicationType();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v6 = [[NTKPigmentEditOption alloc] initWithOptionName:@"beton" collectionName:{@"zeus.fall2024", v4}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotBottomCenter;
  v4[1] = NTKComplicationSlotDate;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKBellonaFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKBellonaFace *)self device];
  v7 = [v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKBellonaFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKBellonaFace *)self device];
  v10 = [v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKBellonaFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKBellonaFace *)self device];
  v9 = [v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end