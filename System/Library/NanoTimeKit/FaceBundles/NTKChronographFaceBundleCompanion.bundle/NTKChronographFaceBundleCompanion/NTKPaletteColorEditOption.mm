@interface NTKPaletteColorEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_orderedValuesRestrictedByDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)colorNameForColorValue:(unint64_t)value;
+ (id)optionByValidatingValueOfInvalidOption:(id)option;
+ (unint64_t)colorValueForColorName:(id)name;
+ (void)colorName:(id *)name collectionName:(id *)collectionName forColorValue:(unint64_t)value;
- (BOOL)optionExistsInDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKPaletteColorEditOption

+ (id)optionByValidatingValueOfInvalidOption:(id)option
{
  optionCopy = option;
  device = [optionCopy device];
  if (!NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues())
  {
    goto LABEL_11;
  }

  _value = [optionCopy _value];
  collectionType = [device collectionType];
  [device materialType];
  v7 = objc_opt_class();
  if (_value == &dword_8 + 1)
  {
    if (collectionType == &dword_4 + 2)
    {
      goto LABEL_11;
    }

    v8 = 13;
  }

  else
  {
    if (_value != &dword_4 + 3)
    {
      if (!_value)
      {
        if (collectionType == &dword_0 + 3)
        {
          v8 = 19;
        }

        else
        {
          v8 = 18;
        }

        goto LABEL_13;
      }

LABEL_11:
      v9 = 0;
      goto LABEL_14;
    }

    if (collectionType == &dword_4 + 1)
    {
      goto LABEL_11;
    }

    v8 = 11;
  }

LABEL_13:
  v9 = [v7 optionWithPaletteColor:v8 forDevice:device];
LABEL_14:

  return v9;
}

+ (id)_orderedValuesRestrictedByDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  collectionType = [deviceCopy collectionType];

  if (collectionType == &dword_4 + 1)
  {
    v6 = &off_1D5C0;
  }

  else
  {
    if (collectionType != &dword_4 + 2)
    {
      goto LABEL_6;
    }

    v6 = &off_1D5D8;
  }

  [v4 addObject:v6];
LABEL_6:

  return v4;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1258;
  v5[3] = &unk_1C558;
  v5[4] = self;
  v3 = sub_1258(v5, device);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [&off_1DDF8 mutableCopy];
  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues())
  {
    [v5 insertObject:&off_1D698 atIndex:0];
    [v5 addObjectsFromArray:&off_1DE10];
  }

  else
  {
    [v5 insertObject:&off_1D788 atIndex:0];
  }

  v6 = [self _orderedValuesRestrictedByDevice:deviceCopy];
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 insertObject:*(*(&v15 + 1) + 8 * i) atIndex:{0, v15}];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 0x13)
  {
    return 0;
  }

  else
  {
    return *(&off_1C598 + value);
  }
}

- (id)localizedName
{
  pigmentEditOption = [(NTKPaletteColorEditOption *)self pigmentEditOption];
  localizedName = [pigmentEditOption localizedName];

  return localizedName;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_23370 != -1)
  {
    sub_FC70();
  }

  v3 = qword_23368;

  return v3;
}

+ (void)colorName:(id *)name collectionName:(id *)collectionName forColorValue:(unint64_t)value
{
  v9 = NTKColorPaletteDomainChronograph;
  v10 = v9;
  v11 = @"black";
  switch(value)
  {
    case 0uLL:
      goto LABEL_23;
    case 1uLL:
      v11 = @"darkBlue";
      goto LABEL_23;
    case 2uLL:
      v11 = @"darkBrown";
      goto LABEL_23;
    case 3uLL:
      v11 = @"darkGreen";
      goto LABEL_23;
    case 4uLL:
      v11 = @"darkGray";
      goto LABEL_23;
    case 5uLL:
      v11 = @"lightGray";
      goto LABEL_23;
    case 6uLL:
      v11 = @"lightYellow";
      goto LABEL_23;
    case 7uLL:
      v38 = v9;
      v39 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v38;
      goto LABEL_22;
    case 8uLL:
      v11 = @"lightBlue";
      goto LABEL_23;
    case 9uLL:
      v36 = v9;
      v37 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v36;
      goto LABEL_22;
    case 0xAuLL:
      v34 = v9;
      v35 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v34;
      goto LABEL_22;
    case 0xBuLL:
      v32 = v9;
      v33 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v32;
      goto LABEL_22;
    case 0xCuLL:
      v30 = v9;
      v31 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v30;
      goto LABEL_22;
    case 0xDuLL:
      v28 = v9;
      v29 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v28;
      goto LABEL_22;
    case 0xEuLL:
      v26 = v9;
      v27 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v26;
      goto LABEL_22;
    case 0xFuLL:
      v24 = v9;
      v25 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v24;
      goto LABEL_22;
    case 0x10uLL:
      v22 = v9;
      v23 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v22;
      goto LABEL_22;
    case 0x11uLL:
      v20 = v9;
      v21 = 0;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v20;
      goto LABEL_22;
    case 0x12uLL:
      v18 = v9;
      v19 = 0;
      [self colorName:&v19 collectionName:&v18 forColorValue:0];
      v11 = v19;
      v12 = v18;
      goto LABEL_22;
    case 0x13uLL:
      v17 = v9;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v17;
      goto LABEL_22;
    default:
      v16 = v9;
      NTKFaceColorNameAndCollection();
      v11 = 0;
      v12 = v16;
LABEL_22:
      v13 = v12;

      v10 = v13;
LABEL_23:
      if (name)
      {
        v14 = v11;
        *name = v11;
      }

      if (collectionName)
      {
        v15 = v10;
        *collectionName = v10;
      }

      return;
  }
}

+ (id)colorNameForColorValue:(unint64_t)value
{
  v5 = 0;
  [self colorName:&v5 collectionName:0 forColorValue:value];
  v3 = v5;

  return v3;
}

+ (unint64_t)colorValueForColorName:(id)name
{
  nameCopy = name;
  v5 = 18;
  v6 = [self colorNameForColorValue:18];
  v7 = [nameCopy isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v5 = 1;
    v8 = [self colorNameForColorValue:1];
    v9 = [nameCopy isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v5 = 2;
      v10 = [self colorNameForColorValue:2];
      v11 = [nameCopy isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        v5 = 3;
        v12 = [self colorNameForColorValue:3];
        v13 = [nameCopy isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v5 = 4;
          v14 = [self colorNameForColorValue:4];
          v15 = [nameCopy isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v5 = 5;
            v16 = [self colorNameForColorValue:5];
            v17 = [nameCopy isEqualToString:v16];

            if ((v17 & 1) == 0)
            {
              v5 = 6;
              v18 = [self colorNameForColorValue:6];
              v19 = [nameCopy isEqualToString:v18];

              if ((v19 & 1) == 0)
              {
                v20 = [self colorNameForColorValue:8];
                v21 = [nameCopy isEqualToString:v20];

                if (v21)
                {
                  v5 = 8;
                }

                else
                {
                  v5 = 20;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (id)pigmentEditOption
{
  v6 = 0;
  v7 = 0;
  [objc_opt_class() colorName:&v7 collectionName:&v6 forColorValue:{-[NTKPaletteColorEditOption _value](self, "_value")}];
  v2 = v7;
  v3 = v6;
  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:v3];

  return v4;
}

- (BOOL)optionExistsInDevice:(id)device
{
  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues())
  {
    return 1;
  }

  v5 = NTKPaletteColorsForGreenfieldColorMapping();
  v6 = [v5 containsIndex:{-[NTKPaletteColorEditOption paletteColor](self, "paletteColor")}];

  return v6 ^ 1;
}

@end