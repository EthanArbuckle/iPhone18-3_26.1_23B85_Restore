@interface NSMeasurement(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSMeasurement(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v133[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 unit];
  v3 = [MEMORY[0x1E696B058] meters];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = @"meters";
  }

  else
  {
    v6 = [MEMORY[0x1E696B058] miles];
    v7 = [v2 isEqual:v6];

    if (v7)
    {
      v5 = @"miles";
    }

    else
    {
      v8 = [MEMORY[0x1E696B058] centimeters];
      v9 = [v2 isEqual:v8];

      if (v9)
      {
        v5 = @"centimeters";
      }

      else
      {
        v10 = [MEMORY[0x1E696B058] feet];
        v11 = [v2 isEqual:v10];

        if (v11)
        {
          v5 = @"feet";
        }

        else
        {
          v12 = [MEMORY[0x1E696B058] inches];
          v13 = [v2 isEqual:v12];

          if (v13)
          {
            v5 = @"inches";
          }

          else
          {
            v14 = [MEMORY[0x1E696B058] yards];
            v15 = [v2 isEqual:v14];

            if (v15)
            {
              v5 = @"yards";
            }

            else
            {
              v16 = [MEMORY[0x1E696B058] kilometers];
              v17 = [v2 isEqual:v16];

              if (v17)
              {
                v5 = @"kilometers";
              }

              else
              {
                v18 = [MEMORY[0x1E696B080] celsius];
                v19 = [v2 isEqual:v18];

                if (v19)
                {
                  v5 = @"celsius";
                }

                else
                {
                  v20 = [MEMORY[0x1E696B080] fahrenheit];
                  v21 = [v2 isEqual:v20];

                  if (v21)
                  {
                    v5 = @"fahrenheit";
                  }

                  else
                  {
                    v22 = [MEMORY[0x1E696B080] kelvin];
                    v23 = [v2 isEqual:v22];

                    if (v23)
                    {
                      v5 = @"kelvin";
                    }

                    else
                    {
                      v24 = [MEMORY[0x1E696B060] kilograms];
                      v25 = [v2 isEqual:v24];

                      if (v25)
                      {
                        v5 = @"kilograms";
                      }

                      else
                      {
                        v26 = [MEMORY[0x1E696B060] grams];
                        v27 = [v2 isEqual:v26];

                        if (v27)
                        {
                          v5 = @"grams";
                        }

                        else
                        {
                          v28 = [MEMORY[0x1E696B060] decigrams];
                          v29 = [v2 isEqual:v28];

                          if (v29)
                          {
                            v5 = @"decigrams";
                          }

                          else
                          {
                            v30 = [MEMORY[0x1E696B060] centigrams];
                            v31 = [v2 isEqual:v30];

                            if (v31)
                            {
                              v5 = @"centigrams";
                            }

                            else
                            {
                              v32 = [MEMORY[0x1E696B060] milligrams];
                              v33 = [v2 isEqual:v32];

                              if (v33)
                              {
                                v5 = @"milligrams";
                              }

                              else
                              {
                                v34 = [MEMORY[0x1E696B060] micrograms];
                                v35 = [v2 isEqual:v34];

                                if (v35)
                                {
                                  v5 = @"micrograms";
                                }

                                else
                                {
                                  v36 = [MEMORY[0x1E696B060] nanograms];
                                  v37 = [v2 isEqual:v36];

                                  if (v37)
                                  {
                                    v5 = @"nanograms";
                                  }

                                  else
                                  {
                                    v38 = [MEMORY[0x1E696B060] picograms];
                                    v39 = [v2 isEqual:v38];

                                    if (v39)
                                    {
                                      v5 = @"picograms";
                                    }

                                    else
                                    {
                                      v40 = [MEMORY[0x1E696B060] ounces];
                                      v41 = [v2 isEqual:v40];

                                      if (v41)
                                      {
                                        v5 = @"ounces";
                                      }

                                      else
                                      {
                                        v42 = [MEMORY[0x1E696B060] poundsMass];
                                        v43 = [v2 isEqual:v42];

                                        if (v43)
                                        {
                                          v5 = @"poundsMass";
                                        }

                                        else
                                        {
                                          v44 = [MEMORY[0x1E696B060] stones];
                                          v45 = [v2 isEqual:v44];

                                          if (v45)
                                          {
                                            v5 = @"stones";
                                          }

                                          else
                                          {
                                            v46 = [MEMORY[0x1E696B060] metricTons];
                                            v47 = [v2 isEqual:v46];

                                            if (v47)
                                            {
                                              v5 = @"metricTons";
                                            }

                                            else
                                            {
                                              v48 = [MEMORY[0x1E696B060] shortTons];
                                              v49 = [v2 isEqual:v48];

                                              if (v49)
                                              {
                                                v5 = @"shortTons";
                                              }

                                              else
                                              {
                                                v50 = [MEMORY[0x1E696B060] carats];
                                                v51 = [v2 isEqual:v50];

                                                if (v51)
                                                {
                                                  v5 = @"carats";
                                                }

                                                else
                                                {
                                                  v52 = [MEMORY[0x1E696B060] ouncesTroy];
                                                  v53 = [v2 isEqual:v52];

                                                  if (v53)
                                                  {
                                                    v5 = @"ouncesTroy";
                                                  }

                                                  else
                                                  {
                                                    v54 = [MEMORY[0x1E696B060] slugs];
                                                    v55 = [v2 isEqual:v54];

                                                    if (v55)
                                                    {
                                                      v5 = @"slugs";
                                                    }

                                                    else
                                                    {
                                                      v56 = [MEMORY[0x1E696B088] megaliters];
                                                      v57 = [v2 isEqual:v56];

                                                      if (v57)
                                                      {
                                                        v5 = @"megaliters";
                                                      }

                                                      else
                                                      {
                                                        v58 = [MEMORY[0x1E696B088] kiloliters];
                                                        v59 = [v2 isEqual:v58];

                                                        if (v59)
                                                        {
                                                          v5 = @"kiloliters";
                                                        }

                                                        else
                                                        {
                                                          v60 = [MEMORY[0x1E696B088] liters];
                                                          v61 = [v2 isEqual:v60];

                                                          if (v61)
                                                          {
                                                            v5 = @"liters";
                                                          }

                                                          else
                                                          {
                                                            v62 = [MEMORY[0x1E696B088] deciliters];
                                                            v63 = [v2 isEqual:v62];

                                                            if (v63)
                                                            {
                                                              v5 = @"deciliters";
                                                            }

                                                            else
                                                            {
                                                              v64 = [MEMORY[0x1E696B088] centiliters];
                                                              v65 = [v2 isEqual:v64];

                                                              if (v65)
                                                              {
                                                                v5 = @"centiliters";
                                                              }

                                                              else
                                                              {
                                                                v66 = [MEMORY[0x1E696B088] milliliters];
                                                                v67 = [v2 isEqual:v66];

                                                                if (v67)
                                                                {
                                                                  v5 = @"milliliters";
                                                                }

                                                                else
                                                                {
                                                                  v68 = [MEMORY[0x1E696B088] cubicKilometers];
                                                                  v69 = [v2 isEqual:v68];

                                                                  if (v69)
                                                                  {
                                                                    v5 = @"cubicKilometers";
                                                                  }

                                                                  else
                                                                  {
                                                                    v70 = [MEMORY[0x1E696B088] cubicDecimeters];
                                                                    v71 = [v2 isEqual:v70];

                                                                    if (v71)
                                                                    {
                                                                      v5 = @"cubicDecimeters";
                                                                    }

                                                                    else
                                                                    {
                                                                      v72 = [MEMORY[0x1E696B088] cubicMillimeters];
                                                                      v73 = [v2 isEqual:v72];

                                                                      if (v73)
                                                                      {
                                                                        v5 = @"cubicMillimeters";
                                                                      }

                                                                      else
                                                                      {
                                                                        v74 = [MEMORY[0x1E696B088] cubicInches];
                                                                        v75 = [v2 isEqual:v74];

                                                                        if (v75)
                                                                        {
                                                                          v5 = @"cubicInches";
                                                                        }

                                                                        else
                                                                        {
                                                                          v76 = [MEMORY[0x1E696B088] cubicFeet];
                                                                          v77 = [v2 isEqual:v76];

                                                                          if (v77)
                                                                          {
                                                                            v5 = @"cubicFeet";
                                                                          }

                                                                          else
                                                                          {
                                                                            v78 = [MEMORY[0x1E696B088] cubicYards];
                                                                            v79 = [v2 isEqual:v78];

                                                                            if (v79)
                                                                            {
                                                                              v5 = @"cubicYards";
                                                                            }

                                                                            else
                                                                            {
                                                                              v80 = [MEMORY[0x1E696B088] cubicMiles];
                                                                              v81 = [v2 isEqual:v80];

                                                                              if (v81)
                                                                              {
                                                                                v5 = @"cubicMiles";
                                                                              }

                                                                              else
                                                                              {
                                                                                v82 = [MEMORY[0x1E696B088] acreFeet];
                                                                                v83 = [v2 isEqual:v82];

                                                                                if (v83)
                                                                                {
                                                                                  v5 = @"acreFeet";
                                                                                }

                                                                                else
                                                                                {
                                                                                  v84 = [MEMORY[0x1E696B088] bushels];
                                                                                  v85 = [v2 isEqual:v84];

                                                                                  if (v85)
                                                                                  {
                                                                                    v5 = @"bushels";
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v86 = [MEMORY[0x1E696B088] teaspoons];
                                                                                    v87 = [v2 isEqual:v86];

                                                                                    if (v87)
                                                                                    {
                                                                                      v5 = @"teaspoons";
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v88 = [MEMORY[0x1E696B088] tablespoons];
                                                                                      v89 = [v2 isEqual:v88];

                                                                                      if (v89)
                                                                                      {
                                                                                        v5 = @"tablespoons";
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v90 = [MEMORY[0x1E696B088] fluidOunces];
                                                                                        v91 = [v2 isEqual:v90];

                                                                                        if (v91)
                                                                                        {
                                                                                          v5 = @"fluidOunces";
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v92 = [MEMORY[0x1E696B088] cups];
                                                                                          v93 = [v2 isEqual:v92];

                                                                                          if (v93)
                                                                                          {
                                                                                            v5 = @"cups";
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v94 = [MEMORY[0x1E696B088] pints];
                                                                                            v95 = [v2 isEqual:v94];

                                                                                            if (v95)
                                                                                            {
                                                                                              v5 = @"pints";
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v96 = [MEMORY[0x1E696B088] quarts];
                                                                                              v97 = [v2 isEqual:v96];

                                                                                              if (v97)
                                                                                              {
                                                                                                v5 = @"quarts";
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v98 = [MEMORY[0x1E696B088] gallons];
                                                                                                v99 = [v2 isEqual:v98];

                                                                                                if (v99)
                                                                                                {
                                                                                                  v5 = @"gallons";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v100 = [MEMORY[0x1E696B088] imperialTeaspoons];
                                                                                                  v101 = [v2 isEqual:v100];

                                                                                                  if (v101)
                                                                                                  {
                                                                                                    v5 = @"imperialTeaspoons";
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v102 = [MEMORY[0x1E696B088] imperialQuarts];
                                                                                                    v103 = [v2 isEqual:v102];

                                                                                                    if (v103)
                                                                                                    {
                                                                                                      v5 = @"imperialQuarts";
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v104 = [MEMORY[0x1E696B088] imperialGallons];
                                                                                                      v105 = [v2 isEqual:v104];

                                                                                                      if (v105)
                                                                                                      {
                                                                                                        v5 = @"imperialGallons";
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v106 = [MEMORY[0x1E696B088] metricCups];
                                                                                                        v107 = [v2 isEqual:v106];

                                                                                                        if (v107)
                                                                                                        {
                                                                                                          v5 = @"metricCups";
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v108 = [MEMORY[0x1E696B078] metersPerSecond];
                                                                                                          v109 = [v2 isEqual:v108];

                                                                                                          if (v109)
                                                                                                          {
                                                                                                            v5 = @"metersPerSecond";
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v110 = [MEMORY[0x1E696B078] kilometersPerHour];
                                                                                                            v111 = [v2 isEqual:v110];

                                                                                                            if (v111)
                                                                                                            {
                                                                                                              v5 = @"kilometersPerHour";
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v112 = [MEMORY[0x1E696B078] milesPerHour];
                                                                                                              v113 = [v2 isEqual:v112];

                                                                                                              if (v113)
                                                                                                              {
                                                                                                                v5 = @"milesPerHour";
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v114 = [MEMORY[0x1E696B078] knots];
                                                                                                                v115 = [v2 isEqual:v114];

                                                                                                                if (v115)
                                                                                                                {
                                                                                                                  v5 = @"knots";
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v116 = [MEMORY[0x1E696B030] kilojoules];
                                                                                                                  v117 = [v2 isEqual:v116];

                                                                                                                  if (v117)
                                                                                                                  {
                                                                                                                    v5 = @"kilojoules";
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v118 = [MEMORY[0x1E696B030] joules];
                                                                                                                    v119 = [v2 isEqual:v118];

                                                                                                                    if (v119)
                                                                                                                    {
                                                                                                                      v5 = @"joules";
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v120 = [MEMORY[0x1E696B030] kilocalories];
                                                                                                                      v121 = [v2 isEqual:v120];

                                                                                                                      if (v121)
                                                                                                                      {
                                                                                                                        v5 = @"kilocalories";
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v122 = [MEMORY[0x1E696B030] calories];
                                                                                                                        v123 = [v2 isEqual:v122];

                                                                                                                        if (v123)
                                                                                                                        {
                                                                                                                          v5 = @"calories";
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v124 = [MEMORY[0x1E696B030] kilowattHours];
                                                                                                                          v125 = [v2 isEqual:v124];

                                                                                                                          v5 = &stru_1F01E0850;
                                                                                                                          if (v125)
                                                                                                                          {
                                                                                                                            v5 = @"kilowattHours";
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v133[0] = v5;
  v132[0] = @"unit";
  v132[1] = @"doubleValue";
  v126 = MEMORY[0x1E696AD98];
  [a1 doubleValue];
  v127 = [v126 numberWithDouble:?];
  v133[1] = v127;
  v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v129 = [v128 if_dictionaryWithNonEmptyValues];

  v130 = *MEMORY[0x1E69E9840];

  return v129;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_130;
  }

  v10 = [v9 objectForKeyedSubscript:@"doubleValue"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v9 objectForKeyedSubscript:@"unit"];
  if ([v13 isEqualToString:@"meters"])
  {
    v14 = [MEMORY[0x1E696B058] meters];
  }

  else if ([v13 isEqualToString:@"miles"])
  {
    v14 = [MEMORY[0x1E696B058] miles];
  }

  else if ([v13 isEqualToString:@"centimeters"])
  {
    v14 = [MEMORY[0x1E696B058] centimeters];
  }

  else if ([v13 isEqualToString:@"feet"])
  {
    v14 = [MEMORY[0x1E696B058] feet];
  }

  else if ([v13 isEqualToString:@"inches"])
  {
    v14 = [MEMORY[0x1E696B058] inches];
  }

  else if ([v13 isEqualToString:@"yards"])
  {
    v14 = [MEMORY[0x1E696B058] yards];
  }

  else if ([v13 isEqualToString:@"kilometers"])
  {
    v14 = [MEMORY[0x1E696B058] kilometers];
  }

  else if ([v13 isEqualToString:@"celsius"])
  {
    v14 = [MEMORY[0x1E696B080] celsius];
  }

  else if ([v13 isEqualToString:@"fahrenheit"])
  {
    v14 = [MEMORY[0x1E696B080] fahrenheit];
  }

  else if ([v13 isEqualToString:@"kelvin"])
  {
    v14 = [MEMORY[0x1E696B080] kelvin];
  }

  else if ([v13 isEqualToString:@"kilograms"])
  {
    v14 = [MEMORY[0x1E696B060] kilograms];
  }

  else if ([v13 isEqualToString:@"grams"])
  {
    v14 = [MEMORY[0x1E696B060] grams];
  }

  else if ([v13 isEqualToString:@"decigrams"])
  {
    v14 = [MEMORY[0x1E696B060] decigrams];
  }

  else if ([v13 isEqualToString:@"centigrams"])
  {
    v14 = [MEMORY[0x1E696B060] centigrams];
  }

  else if ([v13 isEqualToString:@"milligrams"])
  {
    v14 = [MEMORY[0x1E696B060] milligrams];
  }

  else if ([v13 isEqualToString:@"micrograms"])
  {
    v14 = [MEMORY[0x1E696B060] micrograms];
  }

  else if ([v13 isEqualToString:@"nanograms"])
  {
    v14 = [MEMORY[0x1E696B060] nanograms];
  }

  else if ([v13 isEqualToString:@"picograms"])
  {
    v14 = [MEMORY[0x1E696B060] picograms];
  }

  else if ([v13 isEqualToString:@"ounces"])
  {
    v14 = [MEMORY[0x1E696B060] ounces];
  }

  else if ([v13 isEqualToString:@"poundsMass"])
  {
    v14 = [MEMORY[0x1E696B060] poundsMass];
  }

  else if ([v13 isEqualToString:@"stones"])
  {
    v14 = [MEMORY[0x1E696B060] stones];
  }

  else if ([v13 isEqualToString:@"metricTons"])
  {
    v14 = [MEMORY[0x1E696B060] metricTons];
  }

  else if ([v13 isEqualToString:@"shortTons"])
  {
    v14 = [MEMORY[0x1E696B060] shortTons];
  }

  else if ([v13 isEqualToString:@"carats"])
  {
    v14 = [MEMORY[0x1E696B060] carats];
  }

  else if ([v13 isEqualToString:@"ouncesTroy"])
  {
    v14 = [MEMORY[0x1E696B060] ouncesTroy];
  }

  else if ([v13 isEqualToString:@"slugs"])
  {
    v14 = [MEMORY[0x1E696B060] slugs];
  }

  else if ([v13 isEqualToString:@"megaliters"])
  {
    v14 = [MEMORY[0x1E696B088] megaliters];
  }

  else if ([v13 isEqualToString:@"kiloliters"])
  {
    v14 = [MEMORY[0x1E696B088] kiloliters];
  }

  else if ([v13 isEqualToString:@"liters"])
  {
    v14 = [MEMORY[0x1E696B088] liters];
  }

  else if ([v13 isEqualToString:@"deciliters"])
  {
    v14 = [MEMORY[0x1E696B088] deciliters];
  }

  else if ([v13 isEqualToString:@"centiliters"])
  {
    v14 = [MEMORY[0x1E696B088] centiliters];
  }

  else if ([v13 isEqualToString:@"milliliters"])
  {
    v14 = [MEMORY[0x1E696B088] milliliters];
  }

  else if ([v13 isEqualToString:@"cubicKilometers"])
  {
    v14 = [MEMORY[0x1E696B088] cubicKilometers];
  }

  else if ([v13 isEqualToString:@"cubicDecimeters"])
  {
    v14 = [MEMORY[0x1E696B088] cubicDecimeters];
  }

  else if ([v13 isEqualToString:@"cubicMillimeters"])
  {
    v14 = [MEMORY[0x1E696B088] cubicMillimeters];
  }

  else if ([v13 isEqualToString:@"cubicInches"])
  {
    v14 = [MEMORY[0x1E696B088] cubicInches];
  }

  else if ([v13 isEqualToString:@"cubicFeet"])
  {
    v14 = [MEMORY[0x1E696B088] cubicFeet];
  }

  else if ([v13 isEqualToString:@"cubicYards"])
  {
    v14 = [MEMORY[0x1E696B088] cubicYards];
  }

  else if ([v13 isEqualToString:@"cubicMiles"])
  {
    v14 = [MEMORY[0x1E696B088] cubicMiles];
  }

  else if ([v13 isEqualToString:@"acreFeet"])
  {
    v14 = [MEMORY[0x1E696B088] acreFeet];
  }

  else if ([v13 isEqualToString:@"bushels"])
  {
    v14 = [MEMORY[0x1E696B088] bushels];
  }

  else if ([v13 isEqualToString:@"teaspoons"])
  {
    v14 = [MEMORY[0x1E696B088] teaspoons];
  }

  else if ([v13 isEqualToString:@"tablespoons"])
  {
    v14 = [MEMORY[0x1E696B088] tablespoons];
  }

  else if ([v13 isEqualToString:@"fluidOunces"])
  {
    v14 = [MEMORY[0x1E696B088] fluidOunces];
  }

  else if ([v13 isEqualToString:@"cups"])
  {
    v14 = [MEMORY[0x1E696B088] cups];
  }

  else if ([v13 isEqualToString:@"pints"])
  {
    v14 = [MEMORY[0x1E696B088] pints];
  }

  else if ([v13 isEqualToString:@"quarts"])
  {
    v14 = [MEMORY[0x1E696B088] quarts];
  }

  else if ([v13 isEqualToString:@"gallons"])
  {
    v14 = [MEMORY[0x1E696B088] gallons];
  }

  else if ([v13 isEqualToString:@"imperialTeaspoons"])
  {
    v14 = [MEMORY[0x1E696B088] imperialTeaspoons];
  }

  else if ([v13 isEqualToString:@"imperialQuarts"])
  {
    v14 = [MEMORY[0x1E696B088] imperialQuarts];
  }

  else if ([v13 isEqualToString:@"imperialGallons"])
  {
    v14 = [MEMORY[0x1E696B088] imperialGallons];
  }

  else if ([v13 isEqualToString:@"metricCups"])
  {
    v14 = [MEMORY[0x1E696B088] metricCups];
  }

  else if ([v13 isEqualToString:@"metersPerSecond"])
  {
    v14 = [MEMORY[0x1E696B078] metersPerSecond];
  }

  else if ([v13 isEqualToString:@"kilometersPerHour"])
  {
    v14 = [MEMORY[0x1E696B078] kilometersPerHour];
  }

  else if ([v13 isEqualToString:@"milesPerHour"])
  {
    v14 = [MEMORY[0x1E696B078] milesPerHour];
  }

  else if ([v13 isEqualToString:@"knots"])
  {
    v14 = [MEMORY[0x1E696B078] knots];
  }

  else if ([v13 isEqualToString:@"kilojoules"])
  {
    v14 = [MEMORY[0x1E696B030] kilojoules];
  }

  else if ([v13 isEqualToString:@"joules"])
  {
    v14 = [MEMORY[0x1E696B030] joules];
  }

  else if ([v13 isEqualToString:@"kilocalories"])
  {
    v14 = [MEMORY[0x1E696B030] kilocalories];
  }

  else if ([v13 isEqualToString:@"calories"])
  {
    v14 = [MEMORY[0x1E696B030] calories];
  }

  else
  {
    if (![v13 isEqualToString:@"kilowattHours"])
    {
LABEL_128:
      v15 = 0;
      goto LABEL_129;
    }

    v14 = [MEMORY[0x1E696B030] kilowattHours];
  }

  v16 = v14;
  if (!v14)
  {
    goto LABEL_128;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:v14 unit:v12];

LABEL_129:
LABEL_130:

  return v15;
}

@end