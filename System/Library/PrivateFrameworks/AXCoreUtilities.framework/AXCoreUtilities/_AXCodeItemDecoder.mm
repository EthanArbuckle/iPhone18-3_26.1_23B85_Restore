@interface _AXCodeItemDecoder
- (id)decodedCodeItemsFromURL:(id)l decodingErrors:(id)errors;
@end

@implementation _AXCodeItemDecoder

- (id)decodedCodeItemsFromURL:(id)l decodingErrors:(id)errors
{
  v79 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v76 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v76];
  v7 = v76;
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x1E696ABC0];
    ax_nonRedundantDescription = [v7 ax_nonRedundantDescription];
    v52 = ax_nonRedundantDescription;
    v11 = @"Could not load ax bundle map: %@";
    v12 = v9;
LABEL_3:
    ax_nonRedundantDescription2 = [v12 ax_errorWithDomain:@"AXLoader" description:{v11, v52}];
    [errorsCopy addObject:ax_nonRedundantDescription2];
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v75 = 0;
  ax_nonRedundantDescription = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v75];
  v14 = v75;
  v8 = v14;
  if (v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    ax_nonRedundantDescription2 = [v14 ax_nonRedundantDescription];
    v16 = [v15 ax_errorWithDomain:@"AXLoader" description:{@"Could not decode ax bundle map JSON: %@", ax_nonRedundantDescription2}];
    [errorsCopy addObject:v16];

    goto LABEL_6;
  }

  v20 = 0x1E695D000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v11 = @"Could not load ax bundle map: Expected rootObject to be NSDictionary";
    goto LABEL_3;
  }

  ax_nonRedundantDescription2 = [ax_nonRedundantDescription objectForKey:@"items"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x1E695DFA8] set];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = ax_nonRedundantDescription2;
    v66 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v66)
    {
      v56 = v6;
      v57 = v17;
      v54 = ax_nonRedundantDescription2;
      v55 = ax_nonRedundantDescription;
      v21 = *v72;
      v22 = obj;
      v63 = errorsCopy;
      v61 = *v72;
      while (1)
      {
        v23 = 0;
        do
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v22);
          }

          v24 = *(*(&v71 + 1) + 8 * v23);
          v25 = *(v20 + 3872);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. expected NSDictionary"];
            [errorsCopy addObject:v26];
            goto LABEL_61;
          }

          v26 = [v24 objectForKey:@"name"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v26 length])
          {
            v27 = [v24 objectForKey:@"target"];
            v28 = *(v20 + 3872);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = v27;
              v29 = [v27 objectForKey:@"name"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v29 length])
              {
                v30 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. target name is missing"];
                [errorsCopy addObject:v30];
                v48 = v62;
                goto LABEL_58;
              }

              v30 = [v27 objectForKey:@"type"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 length])
              {
                v31 = [AXCodeItem codeItemTypeFromString:v30];
                if (v31)
                {
                  v59 = v31;
                  v32 = [v24 objectForKey:@"platforms"];
                  objc_opt_class();
                  v60 = v32;
                  if (objc_opt_isKindOfClass())
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                    v67 = 0u;
                    v68 = 0u;
                    v69 = 0u;
                    v70 = 0u;
                    v64 = v32;
                    v34 = [v64 countByEnumeratingWithState:&v67 objects:v77 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v68;
                      do
                      {
                        for (i = 0; i != v35; ++i)
                        {
                          v38 = v30;
                          if (*v68 != v36)
                          {
                            objc_enumerationMutation(v64);
                          }

                          v39 = *(*(&v67 + 1) + 8 * i);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            if ([v39 isEqualToString:_AXBundleMapPlatformKey_iOS])
                            {
                              [dictionary setObject:v29 forKeyedSubscript:_AXBundleMapPlatformKey_iOS];
                            }

                            if ([v39 isEqualToString:_AXBundleMapPlatformKey_tvOS])
                            {
                              [dictionary setObject:v29 forKeyedSubscript:_AXBundleMapPlatformKey_tvOS];
                            }

                            if ([v39 isEqualToString:_AXBundleMapPlatformKey_watchOS])
                            {
                              [dictionary setObject:v29 forKeyedSubscript:_AXBundleMapPlatformKey_watchOS];
                            }

                            if ([v39 isEqualToString:_AXBundleMapPlatformKey_iosmac])
                            {
                              [dictionary setObject:v29 forKeyedSubscript:_AXBundleMapPlatformKey_iosmac];
                            }

                            if ([v39 isEqualToString:_AXBundleMapPlatformKey_macOS])
                            {
                              [dictionary setObject:v29 forKeyedSubscript:_AXBundleMapPlatformKey_macOS];
                            }
                          }

                          else
                          {
                            v40 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. supportedPlatforms item '%@' expected to be a string", v29, v39}];
                            [v63 addObject:v40];
                          }

                          v30 = v38;
                        }

                        v35 = [v64 countByEnumeratingWithState:&v67 objects:v77 count:16];
                      }

                      while (v35);
                    }

                    v41 = AXAccessibilityBundlesDirectory();
                    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.axbundle/%@", v26, v26];
                    v43 = [v41 stringByAppendingPathComponent:v42];

                    v44 = [v24 objectForKey:@"loadOrder"];
                    if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      v46 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"If loadOrder is specified, it must be a number"}];
                      errorsCopy = v63;
                      [v63 addObject:v46];
                    }

                    else
                    {
                      v65 = v30;
                      OrderForInfo = _loadOrderForInfo(v44, v59);
                      v46 = [v24 objectForKey:@"excludedProcesses"];
                      errorsCopy = v63;
                      if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        v47 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"excludedProcesses was not an array"];
                        [v63 addObject:v47];
                      }

                      else
                      {
                        v47 = [[AXCodeItem alloc] initAccessibilityCodeItemWithPath:v43 targetType:v59 platformToTarget:dictionary loadOrder:OrderForInfo];
                        [v47 setExcludedProcesses:v46];
                        [v57 addObject:v47];
                      }

                      v30 = v65;
                    }

                    v20 = 0x1E695D000;
                    v22 = obj;
                  }

                  else
                  {
                    dictionary = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. supportedPlatforms expected to be an array", v29}];
                    [errorsCopy addObject:dictionary];
                  }

                  v48 = v62;
                  v49 = v60;
LABEL_57:

LABEL_58:
LABEL_59:

                  v21 = v61;
                  goto LABEL_60;
                }

                [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. target type is unknown '%@'", v29, v30}];
              }

              else
              {
                [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. target type is missing", v29, v53}];
              }
              v49 = ;
              [errorsCopy addObject:v49];
              v48 = v62;
              goto LABEL_57;
            }

            v29 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. target expected to be NSDictionary"];
            [errorsCopy addObject:v29];
            v48 = v27;
            goto LABEL_59;
          }

          v48 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. name is missing"];
          [errorsCopy addObject:v48];
LABEL_60:

LABEL_61:
          ++v23;
        }

        while (v23 != v66);
        v50 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
        v66 = v50;
        if (!v50)
        {
          v8 = 0;
          v6 = v56;
          ax_nonRedundantDescription2 = v54;
          ax_nonRedundantDescription = v55;
          v51 = v22;
          v17 = v57;
          goto LABEL_75;
        }
      }
    }

    v51 = obj;
  }

  else
  {
    v51 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load ax bundle map: Expected rootObject.items to be NSArray"];
    [errorsCopy addObject:v51];
    v17 = 0;
  }

LABEL_75:

LABEL_7:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end