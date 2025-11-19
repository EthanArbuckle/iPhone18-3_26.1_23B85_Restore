@interface GEOComposedRouteAccessibility
+ (id)_accessibilityTransitArtworkTextForDataList:(id)a3;
- (id)_accessibilityTransitArtworkText;
@end

@implementation GEOComposedRouteAccessibility

- (id)_accessibilityTransitArtworkText
{
  v3 = objc_opt_class();
  v4 = [(GEOComposedRouteAccessibility *)self routePlanningArtworks];
  v5 = [v3 _accessibilityTransitArtworkTextForDataList:v4];

  return v5;
}

+ (id)_accessibilityTransitArtworkTextForDataList:(id)a3
{
  v62 = *MEMORY[0x29EDCA608];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = a3;
  v39 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  v3 = 0;
  if (v39)
  {
    v4 = 0x29EDB8000uLL;
    v5 = 0x29F2C1000uLL;
    v38 = *v56;
    do
    {
      v6 = 0;
      do
      {
        if (*v56 != v38)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v40 = v6;
        v8 = *(*(&v55 + 1) + 8 * v6);
        if ([v3 length])
        {
          v35 = accessibilityLocalizedString(@"TRANSIT_ARTWORK_SEPARATOR");
          v36 = @"__AXStringForVariablesSentinel";
          v9 = __AXStringForVariables();

          v3 = v9;
        }

        v10 = *(v4 + 3456);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v42 = v8;
          v43 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v43)
          {
            v11 = *v52;
            v41 = *v52;
            do
            {
              v12 = 0;
              do
              {
                if (*v52 != v11)
                {
                  objc_enumerationMutation(v42);
                }

                v44 = v12;
                v13 = *(*(&v51 + 1) + 8 * v12);
                v14 = *(v4 + 3456);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v46 = v13;
                  v15 = [v46 countByEnumeratingWithState:&v47 objects:v59 count:16];
                  if (v15)
                  {
                    v16 = v15;
                    v17 = *v48;
                    do
                    {
                      for (i = 0; i != v16; ++i)
                      {
                        if (*v48 != v17)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v19 = *(*(&v47 + 1) + 8 * i);
                        if ([v19 conformsToProtocol:{*(v5 + 1848), v35}])
                        {
                          v20 = [v19 accessibilityText];
                          if (![v20 length] && objc_msgSend(v19, "artworkSourceType") == 3)
                          {
                            v21 = MEMORY[0x29C2D7700](@"MKServerFormattedStringParameters");
                            v22 = MEMORY[0x29C2D7700](@"MKServerFormattedString");
                            if (v21)
                            {
                              v23 = v22;
                              if (v22)
                              {
                                v45 = [[v21 alloc] initWithInstructionsDistanceDetailLevel:0 variableOverrides:0];
                                v24 = [v23 alloc];
                                v25 = [v19 textDataSource];
                                v26 = [v25 text];
                                v27 = [v24 initWithGeoServerString:v26 parameters:v45];

                                v28 = [v27 multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
                                v29 = [v28 attributedString];
                                [v29 string];
                                v31 = v30 = v3;

                                v5 = 0x29F2C1000;
                                v20 = v31;
                                v3 = v30;
                              }
                            }
                          }

                          if ([v20 length])
                          {
                            v35 = v20;
                            v36 = @"__AXStringForVariablesSentinel";
                            v32 = __AXStringForVariables();

                            if ([v19 hasRoutingIncidentBadge])
                            {
                              v35 = accessibilityLocalizedString(@"TRANSIT_INCIDENT");
                              v36 = @"__AXStringForVariablesSentinel";
                              v3 = __AXStringForVariables();
                            }

                            else
                            {
                              v3 = v32;
                            }
                          }
                        }

                        else
                        {
                          v35 = v19;
                          _AXAssert();
                        }
                      }

                      v16 = [v46 countByEnumeratingWithState:&v47 objects:v59 count:16];
                    }

                    while (v16);
                  }

                  v4 = 0x29EDB8000;
                  v11 = v41;
                }

                else
                {
                  v35 = v13;
                  _AXAssert();
                }

                v12 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v43);
          }
        }

        else
        {
          v35 = v8;
          _AXAssert();
        }

        v6 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x29EDCA608];

  return v3;
}

@end