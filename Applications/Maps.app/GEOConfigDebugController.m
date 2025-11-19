@interface GEOConfigDebugController
- (BOOL)debugTableRow:(id)a3 matches:(id)a4;
- (NSDictionary)debugClasses;
- (void)prepareContent;
@end

@implementation GEOConfigDebugController

- (BOOL)debugTableRow:(id)a3 matches:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = GEOConfigDebugController;
  if ([(MapsDebugValuesViewController *)&v19 debugTableRow:v6 matches:v7])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    debugClasses = self->_debugClasses;
    v10 = [v6 title];
    v8 = [(NSDictionary *)debugClasses objectForKeyedSubscript:v10];

    if (v8)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v8 = [v8 configKeyInfos];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1009FEBC0;
      v12[3] = &unk_101631AE8;
      v13 = v7;
      v14 = &v15;
      [v8 enumerateObjectsUsingBlock:v12];

      LOBYTE(v8) = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
    }
  }

  return v8 & 1;
}

- (NSDictionary)debugClasses
{
  debugClasses = self->_debugClasses;
  if (!debugClasses)
  {
    v31 = self;
    v41 = +[NSMutableDictionary dictionary];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = sub_1009FF0FC();
    v34 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (!v34)
    {
      goto LABEL_44;
    }

    v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v33 = *v51;
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v5;
        v6 = *(*(&v50 + 1) + 8 * v5);
        v7 = +[NSFileManager defaultManager];
        v37 = v6;
        v8 = [v7 contentsOfDirectoryAtPath:v6 error:0];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v39 = v8;
        v9 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v47;
          v36 = *v47;
          do
          {
            v12 = 0;
            v38 = v10;
            do
            {
              if (*v47 != v11)
              {
                objc_enumerationMutation(v39);
              }

              v13 = *(*(&v46 + 1) + 8 * v12);
              if ([v13 hasSuffix:@".bundle"])
              {
                v40 = v12;
                v14 = v4[410];
                v15 = [v37 stringByAppendingPathComponent:v13];
                v16 = [v14 bundleWithPath:v15];

                if (v16)
                {
                  v17 = [v16 infoDictionary];
                  v18 = [v17 objectForKeyedSubscript:@"GeoConfigDebugClasses"];

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 count])
                  {
                    if ([v16 load])
                    {
                      v44 = 0u;
                      v45 = 0u;
                      v42 = 0u;
                      v43 = 0u;
                      v19 = v18;
                      v20 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
                      if (v20)
                      {
                        v21 = v20;
                        v22 = *v43;
                        do
                        {
                          for (i = 0; i != v21; i = i + 1)
                          {
                            if (*v43 != v22)
                            {
                              objc_enumerationMutation(v19);
                            }

                            v24 = *(*(&v42 + 1) + 8 * i);
                            v25 = [v16 classNamed:v24];
                            v26 = v25;
                            if (v25 && [v25 conformsToProtocol:&OBJC_PROTOCOL___GEOConfigDebugBundle] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
                            {
                              v27 = [v26 GEOConfigNamespaceName];
                              if (![(NSDictionary *)v41 objectForKeyedSubscript:v27])
                              {
                                [(NSDictionary *)v41 setObject:v26 forKeyedSubscript:v27];
                              }
                            }

                            else
                            {
                              NSLog(@"Class %@/%@ in %@ does not conform to GEOConfigDebugBundle", v24, v26, v13);
                            }
                          }

                          v21 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
                        }

                        while (v21);
                      }

                      v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
                      v11 = v36;
LABEL_35:

LABEL_37:
                      v10 = v38;
                      v12 = v40;
                      goto LABEL_38;
                    }

                    NSLog(@"Unable to load bundle %@", v13);
                  }

                  else
                  {
                    NSLog(@"Info.plist for %@ does not contain a valid GeoConfigDebugClasses entry", v13);
                  }

                  v11 = v36;
                  goto LABEL_35;
                }

                NSLog(@"%@ is not a valid bundle?", v13);
                v11 = v36;
                goto LABEL_37;
              }

LABEL_38:
              v12 = v12 + 1;
            }

            while (v12 != v10);
            v28 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
            v10 = v28;
          }

          while (v28);
        }

        v5 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (!v34)
      {
LABEL_44:

        v29 = v31->_debugClasses;
        v31->_debugClasses = v41;

        debugClasses = v31->_debugClasses;
        break;
      }
    }
  }

  return debugClasses;
}

- (void)prepareContent
{
  v3 = [(GEOConfigDebugController *)self debugClasses];
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:"compare:"];

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009FF4B8;
  v9[3] = &unk_101632C98;
  v6 = v5;
  v10 = v6;
  v7 = v3;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Namespaces" content:v9];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

@end