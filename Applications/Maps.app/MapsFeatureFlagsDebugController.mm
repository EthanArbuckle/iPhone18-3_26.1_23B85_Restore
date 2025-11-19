@interface MapsFeatureFlagsDebugController
- (Class)findDebugClass;
- (MapsFeatureFlagsDebugController)init;
- (id)addGenericRowFor:(id)a3 withName:(id)a4 keyStr:(id)a5 keyType:(unint64_t)a6 defaultValue:(id)a7 configOptions:(unint64_t)a8 inSection:(id)a9;
@end

@implementation MapsFeatureFlagsDebugController

- (Class)findDebugClass
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = sub_1009FF0FC();
  v35 = [v2 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v35)
  {
    v32 = 0;
    goto LABEL_41;
  }

  v3 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v5 = *v51;
  v6 = @"_MapsFeaturesConfigDebug";
  v37 = v2;
  v34 = *v51;
  do
  {
    v7 = 0;
    do
    {
      if (*v51 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v36 = v7;
      v8 = *(*(&v50 + 1) + 8 * v7);
      v9 = [v3[423] defaultManager];
      v40 = v8;
      v10 = [v9 contentsOfDirectoryAtPath:v8 error:0];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v10;
      v11 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v47;
        v38 = *v47;
        do
        {
          v14 = 0;
          v39 = v12;
          do
          {
            if (*v47 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v46 + 1) + 8 * v14);
            if ([v15 hasSuffix:@".bundle"])
            {
              v16 = v4[410];
              v17 = [v40 stringByAppendingPathComponent:v15];
              v18 = [v16 bundleWithPath:v17];

              if (v18)
              {
                v19 = [v18 infoDictionary];
                v20 = [v19 objectForKeyedSubscript:@"GeoConfigDebugClasses"];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 count])
                {
                  v21 = [v18 load];
                  v22 = @"Unable to load bundle %@";
                  if (v21)
                  {
                    v44 = 0u;
                    v45 = 0u;
                    v42 = 0u;
                    v43 = 0u;
                    v23 = v20;
                    v24 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
                    if (v24)
                    {
                      v25 = v24;
                      v26 = *v43;
                      while (2)
                      {
                        for (i = 0; i != v25; i = i + 1)
                        {
                          if (*v43 != v26)
                          {
                            objc_enumerationMutation(v23);
                          }

                          v28 = *(*(&v42 + 1) + 8 * i);
                          if ([v28 isEqualToString:v6])
                          {
                            v29 = v6;
                            v30 = [v18 classNamed:v28];
                            v31 = v30;
                            if (v30 && [v30 conformsToProtocol:&OBJC_PROTOCOL___GEOConfigDebugBundle] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
                            {
                              v32 = v31;

                              v2 = v37;
                              goto LABEL_41;
                            }

                            NSLog(@"Class %@/%@ in %@ does not conform to GEOConfigDebugBundle", v28, v31, v15);
                            v6 = v29;
                          }
                        }

                        v25 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
                        if (v25)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                    goto LABEL_33;
                  }
                }

                else
                {
                  v22 = @"Info.plist for %@ does not contain a valid GeoConfigDebugClasses entry";
                }

                NSLog(&v22->isa, v15);
              }

              else
              {
                NSLog(@"%@ is not a valid bundle?", v15);
              }

LABEL_33:
              v13 = v38;
              v12 = v39;
            }

            v14 = v14 + 1;
          }

          while (v14 != v12);
          v12 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v12);
      }

      v7 = v36 + 1;
      v2 = v37;
      v3 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      v5 = v34;
    }

    while ((v36 + 1) != v35);
    v32 = 0;
    v35 = [v37 countByEnumeratingWithState:&v50 objects:v56 count:16];
  }

  while (v35);
LABEL_41:

  return v32;
}

- (id)addGenericRowFor:(id)a3 withName:(id)a4 keyStr:(id)a5 keyType:(unint64_t)a6 defaultValue:(id)a7 configOptions:(unint64_t)a8 inSection:(id)a9
{
  v12 = a4;
  v13 = a9;
  if (a6 == 2)
  {
    v14 = a7;
    v15 = [a3 key];
    v17 = v16;
    if (MapsFeature_IsAvailable())
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1009FFD14;
      v25[3] = &unk_1016548B0;
      v25[4] = v15;
      v25[5] = v17;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1009FFD20;
      v24[3] = &unk_1016548D0;
      v24[4] = v15;
      v24[5] = v17;
      v18 = [v13 addSwitchRowWithTitle:v12 get:v25 set:v24];
      v19 = "YES";
    }

    else
    {
      v18 = [v13 addReadOnlyRowWithTitle:v12 value:0];
      v19 = "NO";
    }

    v20 = [v14 BOOLValue];

    v21 = "YES";
    if (!v20)
    {
      v21 = "NO";
    }

    v22 = [NSString stringWithFormat:@"(default: %s) (available: %s)", v21, v19];
    [v18 setSubtitle:v22];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (MapsFeatureFlagsDebugController)init
{
  v2 = self;
  v3 = [(MapsFeatureFlagsDebugController *)self findDebugClass];
  if (v3)
  {
    v6.receiver = v2;
    v6.super_class = MapsFeatureFlagsDebugController;
    v2 = [(GEOConfigKeysDebugController *)&v6 initWithName:@"Feature Flags" geoConfigDebugClass:v3];
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end