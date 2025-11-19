@interface HMDCoreDataTransformerHMCameraActivityZoneSet
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHMCameraActivityZoneSet

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000141D4;
    v20 = sub_1000141E4;
    v21 = 0;
    +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000141EC;
    v13[3] = &unk_100030BF8;
    v8 = v15 = &v16;
    v14 = v8;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    v9 = v17[5];
    if (v9)
    {
      v10 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    else
    {
      v10 = [v8 copy];
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (a4)
    {
      v11 = [NSString stringWithFormat:@"Expected NSArray value to create NSSet<HMCameraActivityZone>: %@", v5];
      *a4 = [NSError hmfErrorWithCode:3 reason:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000141D4;
  v20 = sub_1000141E4;
  v21 = 0;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100014468;
  v13 = &unk_100030BD0;
  v6 = v15 = &v16;
  v14 = v6;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v10];
  v7 = v17[5];
  if (v7)
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  else
  {
    v8 = [v6 copy];
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

@end