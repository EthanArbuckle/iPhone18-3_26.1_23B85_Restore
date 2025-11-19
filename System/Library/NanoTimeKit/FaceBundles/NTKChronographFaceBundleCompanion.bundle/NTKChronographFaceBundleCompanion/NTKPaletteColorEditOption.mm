@interface NTKPaletteColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesRestrictedByDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)colorNameForColorValue:(unint64_t)a3;
+ (id)optionByValidatingValueOfInvalidOption:(id)a3;
+ (unint64_t)colorValueForColorName:(id)a3;
+ (void)colorName:(id *)a3 collectionName:(id *)a4 forColorValue:(unint64_t)a5;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKPaletteColorEditOption

+ (id)optionByValidatingValueOfInvalidOption:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  if (!NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues())
  {
    goto LABEL_11;
  }

  v5 = [v3 _value];
  v6 = [v4 collectionType];
  [v4 materialType];
  v7 = objc_opt_class();
  if (v5 == &dword_8 + 1)
  {
    if (v6 == &dword_4 + 2)
    {
      goto LABEL_11;
    }

    v8 = 13;
  }

  else
  {
    if (v5 != &dword_4 + 3)
    {
      if (!v5)
      {
        if (v6 == &dword_0 + 3)
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

    if (v6 == &dword_4 + 1)
    {
      goto LABEL_11;
    }

    v8 = 11;
  }

LABEL_13:
  v9 = [v7 optionWithPaletteColor:v8 forDevice:v4];
LABEL_14:

  return v9;
}

+ (id)_orderedValuesRestrictedByDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 collectionType];

  if (v5 == &dword_4 + 1)
  {
    v6 = &off_1D5C0;
  }

  else
  {
    if (v5 != &dword_4 + 2)
    {
      goto LABEL_6;
    }

    v6 = &off_1D5D8;
  }

  [v4 addObject:v6];
LABEL_6:

  return v4;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1258;
  v5[3] = &unk_1C558;
  v5[4] = a1;
  v3 = sub_1258(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v4 = a3;
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

  v6 = [a1 _orderedValuesRestrictedByDevice:v4];
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
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

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 0x13)
  {
    return 0;
  }

  else
  {
    return *(&off_1C598 + a3);
  }
}

- (id)localizedName
{
  v2 = [(NTKPaletteColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
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

+ (void)colorName:(id *)a3 collectionName:(id *)a4 forColorValue:(unint64_t)a5
{
  v9 = NTKColorPaletteDomainChronograph;
  v10 = v9;
  v11 = @"black";
  switch(a5)
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
      [a1 colorName:&v19 collectionName:&v18 forColorValue:0];
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
      if (a3)
      {
        v14 = v11;
        *a3 = v11;
      }

      if (a4)
      {
        v15 = v10;
        *a4 = v10;
      }

      return;
  }
}

+ (id)colorNameForColorValue:(unint64_t)a3
{
  v5 = 0;
  [a1 colorName:&v5 collectionName:0 forColorValue:a3];
  v3 = v5;

  return v3;
}

+ (unint64_t)colorValueForColorName:(id)a3
{
  v4 = a3;
  v5 = 18;
  v6 = [a1 colorNameForColorValue:18];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v5 = 1;
    v8 = [a1 colorNameForColorValue:1];
    v9 = [v4 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v5 = 2;
      v10 = [a1 colorNameForColorValue:2];
      v11 = [v4 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        v5 = 3;
        v12 = [a1 colorNameForColorValue:3];
        v13 = [v4 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v5 = 4;
          v14 = [a1 colorNameForColorValue:4];
          v15 = [v4 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v5 = 5;
            v16 = [a1 colorNameForColorValue:5];
            v17 = [v4 isEqualToString:v16];

            if ((v17 & 1) == 0)
            {
              v5 = 6;
              v18 = [a1 colorNameForColorValue:6];
              v19 = [v4 isEqualToString:v18];

              if ((v19 & 1) == 0)
              {
                v20 = [a1 colorNameForColorValue:8];
                v21 = [v4 isEqualToString:v20];

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

- (BOOL)optionExistsInDevice:(id)a3
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