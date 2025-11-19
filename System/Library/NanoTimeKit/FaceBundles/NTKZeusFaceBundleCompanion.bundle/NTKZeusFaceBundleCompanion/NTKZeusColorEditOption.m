@interface NTKZeusColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)colorNameForColorValue:(unint64_t)a3;
+ (unint64_t)colorCodeForColorName:(id)a3;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKZeusColorEditOption

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 pdrDeviceVersion];
  if (v5 >> 17 <= 2)
  {
    if (qword_58698 != -1)
    {
      sub_2ED10();
    }

    v6 = qword_58690;
    v7 = [v6 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

    if (v7)
    {
      goto LABEL_33;
    }
  }

  if (([v4 supportsPDRCapability:753405533] & 1) == 0)
  {
    if (qword_586A8 != -1)
    {
      sub_2ED24();
    }

    v8 = qword_586A0;
    v9 = [v8 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

    if (v9)
    {
      goto LABEL_33;
    }
  }

  if (([v4 supportsPDRCapability:2919474315] & 1) == 0)
  {
    if (qword_586B8 != -1)
    {
      sub_2ED38();
    }

    v10 = qword_586B0;
    v11 = [v10 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

    if (v11)
    {
      goto LABEL_33;
    }
  }

  if (([v4 supportsPDRCapability:3356802055] & 1) == 0)
  {
    if (qword_586C8 != -1)
    {
      sub_2ED4C();
    }

    v12 = qword_586C0;
    v13 = [v12 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

    if (v13)
    {
      goto LABEL_33;
    }
  }

  if (v5 >> 9 <= 0x280)
  {
    if (qword_58688 != -1)
    {
      sub_2ED60();
    }

    v14 = qword_58680;
    v15 = [v14 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

    if (v15)
    {
      goto LABEL_33;
    }

    if (HIWORD(v5) <= 4u)
    {
      v16 = sub_7A8C();
      v17 = [v16 containsIndex:{-[NTKZeusColorEditOption _value](self, "_value")}];

      if (v17)
      {
        goto LABEL_33;
      }
    }
  }

  v18 = [(NTKZeusColorEditOption *)self device];
  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues() & 1) != 0 || ([v4 isExplorer])
  {
  }

  else
  {
    v22 = [(NTKZeusColorEditOption *)self color];

    if (v22 == 104)
    {
      goto LABEL_33;
    }
  }

  v19 = [(NTKZeusColorEditOption *)self device];
  if ((!NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues() || [v4 deviceCategory] == &dword_0 + 1) && (objc_msgSend(v4, "isZeusBlack") & 1) == 0)
  {
    v20 = [(NTKZeusColorEditOption *)self color];

    if (v20 != 3009)
    {
      goto LABEL_31;
    }

LABEL_33:
    v21 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v21 = 1;
LABEL_34:

  return v21;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7B54;
  v5[3] = &unk_44BE0;
  v5[4] = a1;
  v3 = sub_7B54(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 addObject:&off_47118];
  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues() & 1) != 0 || [v3 isExplorer])
  {
    [v4 addObject:&off_47130];
  }

  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues() && [v3 deviceCategory] != &dword_0 + 1 || objc_msgSend(v3, "isZeusBlack"))
  {
    [v4 addObject:&off_47148];
  }

  if ([v3 deviceCategory] != &dword_0 + 1)
  {
    [v4 addObject:&off_47160];
  }

  [v4 addObjectsFromArray:&off_47EC0];
  if ([v3 deviceCategory] != &dword_0 + 1)
  {
    [v4 addObjectsFromArray:&off_47ED8];
  }

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (a3 - 3000 < 0x13 && ((0x7FFDFu >> (a3 + 72)) & 1) != 0)
  {
    v6 = off_44CE0[a3 - 3000];
  }

  else
  {
    v6 = [NTKFaceColorEditOption _snapshotKeyForValue:a3 forDevice:v5];
  }

  return v6;
}

- (id)localizedName
{
  v2 = [(NTKZeusColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_58668 != -1)
  {
    sub_2ED88();
  }

  v3 = qword_58660;

  return v3;
}

- (id)pigmentEditOption
{
  v2 = [objc_opt_class() colorNameForColorValue:{-[NTKZeusColorEditOption _value](self, "_value")}];
  v3 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:@"zeus"];

  return v3;
}

+ (id)colorNameForColorValue:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 2999)
  {
    v4 = @"orangeDial";
    v5 = @"rougeHands";
    if (a3 != 104)
    {
      v5 = 0;
    }

    if (a3 != 102)
    {
      v4 = v5;
    }

    if (a3 == 7)
    {
      v3 = @"orange";
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xBB8uLL:
      case 0xBB9uLL:
      case 0xBBAuLL:
      case 0xBBBuLL:
      case 0xBBCuLL:
      case 0xBC2uLL:
        v3 = NTKNameForDuotones();
        break;
      case 0xBBEuLL:
        v3 = @"encre";
        break;
      case 0xBBFuLL:
        v3 = @"etain";
        break;
      case 0xBC0uLL:
        v3 = @"brique";
        break;
      case 0xBC1uLL:
        v3 = @"noir";
        break;
      case 0xBC3uLL:
        v3 = @"blanc";
        break;
      case 0xBC4uLL:
        v3 = @"rougePiment";
        break;
      case 0xBC5uLL:
        v3 = @"jauneAmbre";
        break;
      case 0xBC6uLL:
        v3 = @"bambou";
        break;
      case 0xBC7uLL:
        v3 = @"navy";
        break;
      case 0xBC8uLL:
        v3 = @"anemone";
        break;
      case 0xBC9uLL:
        v3 = @"argent";
        break;
      case 0xBCAuLL:
        v3 = @"roseMexico";
        break;
      default:
        break;
    }
  }

  return v3;
}

+ (unint64_t)colorCodeForColorName:(id)a3
{
  v4 = a3;
  v5 = [&off_47EF0 mutableCopy];
  v6 = 3000;
  do
  {
    v7 = [NSNumber numberWithInt:v6];
    [v5 addObject:v7];

    v6 = (v6 + 1);
  }

  while (v6 != 3019);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = &dword_4 + 3;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [a1 colorNameForColorValue:{objc_msgSend(v14, "integerValue", v18)}];
        v16 = [v15 isEqualToString:v4];

        if (v16)
        {
          v12 = [v14 integerValue];
          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = &dword_4 + 3;
  }

LABEL_14:

  return v12;
}

@end