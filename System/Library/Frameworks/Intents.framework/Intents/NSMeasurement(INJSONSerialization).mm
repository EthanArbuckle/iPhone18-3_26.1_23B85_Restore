@interface NSMeasurement(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSMeasurement(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v133[2] = *MEMORY[0x1E69E9840];
  unit = [self unit];
  meters = [MEMORY[0x1E696B058] meters];
  v4 = [unit isEqual:meters];

  if (v4)
  {
    v5 = @"meters";
  }

  else
  {
    miles = [MEMORY[0x1E696B058] miles];
    v7 = [unit isEqual:miles];

    if (v7)
    {
      v5 = @"miles";
    }

    else
    {
      centimeters = [MEMORY[0x1E696B058] centimeters];
      v9 = [unit isEqual:centimeters];

      if (v9)
      {
        v5 = @"centimeters";
      }

      else
      {
        feet = [MEMORY[0x1E696B058] feet];
        v11 = [unit isEqual:feet];

        if (v11)
        {
          v5 = @"feet";
        }

        else
        {
          inches = [MEMORY[0x1E696B058] inches];
          v13 = [unit isEqual:inches];

          if (v13)
          {
            v5 = @"inches";
          }

          else
          {
            yards = [MEMORY[0x1E696B058] yards];
            v15 = [unit isEqual:yards];

            if (v15)
            {
              v5 = @"yards";
            }

            else
            {
              kilometers = [MEMORY[0x1E696B058] kilometers];
              v17 = [unit isEqual:kilometers];

              if (v17)
              {
                v5 = @"kilometers";
              }

              else
              {
                celsius = [MEMORY[0x1E696B080] celsius];
                v19 = [unit isEqual:celsius];

                if (v19)
                {
                  v5 = @"celsius";
                }

                else
                {
                  fahrenheit = [MEMORY[0x1E696B080] fahrenheit];
                  v21 = [unit isEqual:fahrenheit];

                  if (v21)
                  {
                    v5 = @"fahrenheit";
                  }

                  else
                  {
                    kelvin = [MEMORY[0x1E696B080] kelvin];
                    v23 = [unit isEqual:kelvin];

                    if (v23)
                    {
                      v5 = @"kelvin";
                    }

                    else
                    {
                      kilograms = [MEMORY[0x1E696B060] kilograms];
                      v25 = [unit isEqual:kilograms];

                      if (v25)
                      {
                        v5 = @"kilograms";
                      }

                      else
                      {
                        grams = [MEMORY[0x1E696B060] grams];
                        v27 = [unit isEqual:grams];

                        if (v27)
                        {
                          v5 = @"grams";
                        }

                        else
                        {
                          decigrams = [MEMORY[0x1E696B060] decigrams];
                          v29 = [unit isEqual:decigrams];

                          if (v29)
                          {
                            v5 = @"decigrams";
                          }

                          else
                          {
                            centigrams = [MEMORY[0x1E696B060] centigrams];
                            v31 = [unit isEqual:centigrams];

                            if (v31)
                            {
                              v5 = @"centigrams";
                            }

                            else
                            {
                              milligrams = [MEMORY[0x1E696B060] milligrams];
                              v33 = [unit isEqual:milligrams];

                              if (v33)
                              {
                                v5 = @"milligrams";
                              }

                              else
                              {
                                micrograms = [MEMORY[0x1E696B060] micrograms];
                                v35 = [unit isEqual:micrograms];

                                if (v35)
                                {
                                  v5 = @"micrograms";
                                }

                                else
                                {
                                  nanograms = [MEMORY[0x1E696B060] nanograms];
                                  v37 = [unit isEqual:nanograms];

                                  if (v37)
                                  {
                                    v5 = @"nanograms";
                                  }

                                  else
                                  {
                                    picograms = [MEMORY[0x1E696B060] picograms];
                                    v39 = [unit isEqual:picograms];

                                    if (v39)
                                    {
                                      v5 = @"picograms";
                                    }

                                    else
                                    {
                                      ounces = [MEMORY[0x1E696B060] ounces];
                                      v41 = [unit isEqual:ounces];

                                      if (v41)
                                      {
                                        v5 = @"ounces";
                                      }

                                      else
                                      {
                                        poundsMass = [MEMORY[0x1E696B060] poundsMass];
                                        v43 = [unit isEqual:poundsMass];

                                        if (v43)
                                        {
                                          v5 = @"poundsMass";
                                        }

                                        else
                                        {
                                          stones = [MEMORY[0x1E696B060] stones];
                                          v45 = [unit isEqual:stones];

                                          if (v45)
                                          {
                                            v5 = @"stones";
                                          }

                                          else
                                          {
                                            metricTons = [MEMORY[0x1E696B060] metricTons];
                                            v47 = [unit isEqual:metricTons];

                                            if (v47)
                                            {
                                              v5 = @"metricTons";
                                            }

                                            else
                                            {
                                              shortTons = [MEMORY[0x1E696B060] shortTons];
                                              v49 = [unit isEqual:shortTons];

                                              if (v49)
                                              {
                                                v5 = @"shortTons";
                                              }

                                              else
                                              {
                                                carats = [MEMORY[0x1E696B060] carats];
                                                v51 = [unit isEqual:carats];

                                                if (v51)
                                                {
                                                  v5 = @"carats";
                                                }

                                                else
                                                {
                                                  ouncesTroy = [MEMORY[0x1E696B060] ouncesTroy];
                                                  v53 = [unit isEqual:ouncesTroy];

                                                  if (v53)
                                                  {
                                                    v5 = @"ouncesTroy";
                                                  }

                                                  else
                                                  {
                                                    slugs = [MEMORY[0x1E696B060] slugs];
                                                    v55 = [unit isEqual:slugs];

                                                    if (v55)
                                                    {
                                                      v5 = @"slugs";
                                                    }

                                                    else
                                                    {
                                                      megaliters = [MEMORY[0x1E696B088] megaliters];
                                                      v57 = [unit isEqual:megaliters];

                                                      if (v57)
                                                      {
                                                        v5 = @"megaliters";
                                                      }

                                                      else
                                                      {
                                                        kiloliters = [MEMORY[0x1E696B088] kiloliters];
                                                        v59 = [unit isEqual:kiloliters];

                                                        if (v59)
                                                        {
                                                          v5 = @"kiloliters";
                                                        }

                                                        else
                                                        {
                                                          liters = [MEMORY[0x1E696B088] liters];
                                                          v61 = [unit isEqual:liters];

                                                          if (v61)
                                                          {
                                                            v5 = @"liters";
                                                          }

                                                          else
                                                          {
                                                            deciliters = [MEMORY[0x1E696B088] deciliters];
                                                            v63 = [unit isEqual:deciliters];

                                                            if (v63)
                                                            {
                                                              v5 = @"deciliters";
                                                            }

                                                            else
                                                            {
                                                              centiliters = [MEMORY[0x1E696B088] centiliters];
                                                              v65 = [unit isEqual:centiliters];

                                                              if (v65)
                                                              {
                                                                v5 = @"centiliters";
                                                              }

                                                              else
                                                              {
                                                                milliliters = [MEMORY[0x1E696B088] milliliters];
                                                                v67 = [unit isEqual:milliliters];

                                                                if (v67)
                                                                {
                                                                  v5 = @"milliliters";
                                                                }

                                                                else
                                                                {
                                                                  cubicKilometers = [MEMORY[0x1E696B088] cubicKilometers];
                                                                  v69 = [unit isEqual:cubicKilometers];

                                                                  if (v69)
                                                                  {
                                                                    v5 = @"cubicKilometers";
                                                                  }

                                                                  else
                                                                  {
                                                                    cubicDecimeters = [MEMORY[0x1E696B088] cubicDecimeters];
                                                                    v71 = [unit isEqual:cubicDecimeters];

                                                                    if (v71)
                                                                    {
                                                                      v5 = @"cubicDecimeters";
                                                                    }

                                                                    else
                                                                    {
                                                                      cubicMillimeters = [MEMORY[0x1E696B088] cubicMillimeters];
                                                                      v73 = [unit isEqual:cubicMillimeters];

                                                                      if (v73)
                                                                      {
                                                                        v5 = @"cubicMillimeters";
                                                                      }

                                                                      else
                                                                      {
                                                                        cubicInches = [MEMORY[0x1E696B088] cubicInches];
                                                                        v75 = [unit isEqual:cubicInches];

                                                                        if (v75)
                                                                        {
                                                                          v5 = @"cubicInches";
                                                                        }

                                                                        else
                                                                        {
                                                                          cubicFeet = [MEMORY[0x1E696B088] cubicFeet];
                                                                          v77 = [unit isEqual:cubicFeet];

                                                                          if (v77)
                                                                          {
                                                                            v5 = @"cubicFeet";
                                                                          }

                                                                          else
                                                                          {
                                                                            cubicYards = [MEMORY[0x1E696B088] cubicYards];
                                                                            v79 = [unit isEqual:cubicYards];

                                                                            if (v79)
                                                                            {
                                                                              v5 = @"cubicYards";
                                                                            }

                                                                            else
                                                                            {
                                                                              cubicMiles = [MEMORY[0x1E696B088] cubicMiles];
                                                                              v81 = [unit isEqual:cubicMiles];

                                                                              if (v81)
                                                                              {
                                                                                v5 = @"cubicMiles";
                                                                              }

                                                                              else
                                                                              {
                                                                                acreFeet = [MEMORY[0x1E696B088] acreFeet];
                                                                                v83 = [unit isEqual:acreFeet];

                                                                                if (v83)
                                                                                {
                                                                                  v5 = @"acreFeet";
                                                                                }

                                                                                else
                                                                                {
                                                                                  bushels = [MEMORY[0x1E696B088] bushels];
                                                                                  v85 = [unit isEqual:bushels];

                                                                                  if (v85)
                                                                                  {
                                                                                    v5 = @"bushels";
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    teaspoons = [MEMORY[0x1E696B088] teaspoons];
                                                                                    v87 = [unit isEqual:teaspoons];

                                                                                    if (v87)
                                                                                    {
                                                                                      v5 = @"teaspoons";
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      tablespoons = [MEMORY[0x1E696B088] tablespoons];
                                                                                      v89 = [unit isEqual:tablespoons];

                                                                                      if (v89)
                                                                                      {
                                                                                        v5 = @"tablespoons";
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        fluidOunces = [MEMORY[0x1E696B088] fluidOunces];
                                                                                        v91 = [unit isEqual:fluidOunces];

                                                                                        if (v91)
                                                                                        {
                                                                                          v5 = @"fluidOunces";
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          cups = [MEMORY[0x1E696B088] cups];
                                                                                          v93 = [unit isEqual:cups];

                                                                                          if (v93)
                                                                                          {
                                                                                            v5 = @"cups";
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            pints = [MEMORY[0x1E696B088] pints];
                                                                                            v95 = [unit isEqual:pints];

                                                                                            if (v95)
                                                                                            {
                                                                                              v5 = @"pints";
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              quarts = [MEMORY[0x1E696B088] quarts];
                                                                                              v97 = [unit isEqual:quarts];

                                                                                              if (v97)
                                                                                              {
                                                                                                v5 = @"quarts";
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                gallons = [MEMORY[0x1E696B088] gallons];
                                                                                                v99 = [unit isEqual:gallons];

                                                                                                if (v99)
                                                                                                {
                                                                                                  v5 = @"gallons";
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  imperialTeaspoons = [MEMORY[0x1E696B088] imperialTeaspoons];
                                                                                                  v101 = [unit isEqual:imperialTeaspoons];

                                                                                                  if (v101)
                                                                                                  {
                                                                                                    v5 = @"imperialTeaspoons";
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    imperialQuarts = [MEMORY[0x1E696B088] imperialQuarts];
                                                                                                    v103 = [unit isEqual:imperialQuarts];

                                                                                                    if (v103)
                                                                                                    {
                                                                                                      v5 = @"imperialQuarts";
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      imperialGallons = [MEMORY[0x1E696B088] imperialGallons];
                                                                                                      v105 = [unit isEqual:imperialGallons];

                                                                                                      if (v105)
                                                                                                      {
                                                                                                        v5 = @"imperialGallons";
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        metricCups = [MEMORY[0x1E696B088] metricCups];
                                                                                                        v107 = [unit isEqual:metricCups];

                                                                                                        if (v107)
                                                                                                        {
                                                                                                          v5 = @"metricCups";
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          metersPerSecond = [MEMORY[0x1E696B078] metersPerSecond];
                                                                                                          v109 = [unit isEqual:metersPerSecond];

                                                                                                          if (v109)
                                                                                                          {
                                                                                                            v5 = @"metersPerSecond";
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
                                                                                                            v111 = [unit isEqual:kilometersPerHour];

                                                                                                            if (v111)
                                                                                                            {
                                                                                                              v5 = @"kilometersPerHour";
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              milesPerHour = [MEMORY[0x1E696B078] milesPerHour];
                                                                                                              v113 = [unit isEqual:milesPerHour];

                                                                                                              if (v113)
                                                                                                              {
                                                                                                                v5 = @"milesPerHour";
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                knots = [MEMORY[0x1E696B078] knots];
                                                                                                                v115 = [unit isEqual:knots];

                                                                                                                if (v115)
                                                                                                                {
                                                                                                                  v5 = @"knots";
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  kilojoules = [MEMORY[0x1E696B030] kilojoules];
                                                                                                                  v117 = [unit isEqual:kilojoules];

                                                                                                                  if (v117)
                                                                                                                  {
                                                                                                                    v5 = @"kilojoules";
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    joules = [MEMORY[0x1E696B030] joules];
                                                                                                                    v119 = [unit isEqual:joules];

                                                                                                                    if (v119)
                                                                                                                    {
                                                                                                                      v5 = @"joules";
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      kilocalories = [MEMORY[0x1E696B030] kilocalories];
                                                                                                                      v121 = [unit isEqual:kilocalories];

                                                                                                                      if (v121)
                                                                                                                      {
                                                                                                                        v5 = @"kilocalories";
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        calories = [MEMORY[0x1E696B030] calories];
                                                                                                                        v123 = [unit isEqual:calories];

                                                                                                                        if (v123)
                                                                                                                        {
                                                                                                                          v5 = @"calories";
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
                                                                                                                          v125 = [unit isEqual:kilowattHours];

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
  [self doubleValue];
  v127 = [v126 numberWithDouble:?];
  v133[1] = v127;
  v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
  if_dictionaryWithNonEmptyValues = [v128 if_dictionaryWithNonEmptyValues];

  v130 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
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
    meters = [MEMORY[0x1E696B058] meters];
  }

  else if ([v13 isEqualToString:@"miles"])
  {
    meters = [MEMORY[0x1E696B058] miles];
  }

  else if ([v13 isEqualToString:@"centimeters"])
  {
    meters = [MEMORY[0x1E696B058] centimeters];
  }

  else if ([v13 isEqualToString:@"feet"])
  {
    meters = [MEMORY[0x1E696B058] feet];
  }

  else if ([v13 isEqualToString:@"inches"])
  {
    meters = [MEMORY[0x1E696B058] inches];
  }

  else if ([v13 isEqualToString:@"yards"])
  {
    meters = [MEMORY[0x1E696B058] yards];
  }

  else if ([v13 isEqualToString:@"kilometers"])
  {
    meters = [MEMORY[0x1E696B058] kilometers];
  }

  else if ([v13 isEqualToString:@"celsius"])
  {
    meters = [MEMORY[0x1E696B080] celsius];
  }

  else if ([v13 isEqualToString:@"fahrenheit"])
  {
    meters = [MEMORY[0x1E696B080] fahrenheit];
  }

  else if ([v13 isEqualToString:@"kelvin"])
  {
    meters = [MEMORY[0x1E696B080] kelvin];
  }

  else if ([v13 isEqualToString:@"kilograms"])
  {
    meters = [MEMORY[0x1E696B060] kilograms];
  }

  else if ([v13 isEqualToString:@"grams"])
  {
    meters = [MEMORY[0x1E696B060] grams];
  }

  else if ([v13 isEqualToString:@"decigrams"])
  {
    meters = [MEMORY[0x1E696B060] decigrams];
  }

  else if ([v13 isEqualToString:@"centigrams"])
  {
    meters = [MEMORY[0x1E696B060] centigrams];
  }

  else if ([v13 isEqualToString:@"milligrams"])
  {
    meters = [MEMORY[0x1E696B060] milligrams];
  }

  else if ([v13 isEqualToString:@"micrograms"])
  {
    meters = [MEMORY[0x1E696B060] micrograms];
  }

  else if ([v13 isEqualToString:@"nanograms"])
  {
    meters = [MEMORY[0x1E696B060] nanograms];
  }

  else if ([v13 isEqualToString:@"picograms"])
  {
    meters = [MEMORY[0x1E696B060] picograms];
  }

  else if ([v13 isEqualToString:@"ounces"])
  {
    meters = [MEMORY[0x1E696B060] ounces];
  }

  else if ([v13 isEqualToString:@"poundsMass"])
  {
    meters = [MEMORY[0x1E696B060] poundsMass];
  }

  else if ([v13 isEqualToString:@"stones"])
  {
    meters = [MEMORY[0x1E696B060] stones];
  }

  else if ([v13 isEqualToString:@"metricTons"])
  {
    meters = [MEMORY[0x1E696B060] metricTons];
  }

  else if ([v13 isEqualToString:@"shortTons"])
  {
    meters = [MEMORY[0x1E696B060] shortTons];
  }

  else if ([v13 isEqualToString:@"carats"])
  {
    meters = [MEMORY[0x1E696B060] carats];
  }

  else if ([v13 isEqualToString:@"ouncesTroy"])
  {
    meters = [MEMORY[0x1E696B060] ouncesTroy];
  }

  else if ([v13 isEqualToString:@"slugs"])
  {
    meters = [MEMORY[0x1E696B060] slugs];
  }

  else if ([v13 isEqualToString:@"megaliters"])
  {
    meters = [MEMORY[0x1E696B088] megaliters];
  }

  else if ([v13 isEqualToString:@"kiloliters"])
  {
    meters = [MEMORY[0x1E696B088] kiloliters];
  }

  else if ([v13 isEqualToString:@"liters"])
  {
    meters = [MEMORY[0x1E696B088] liters];
  }

  else if ([v13 isEqualToString:@"deciliters"])
  {
    meters = [MEMORY[0x1E696B088] deciliters];
  }

  else if ([v13 isEqualToString:@"centiliters"])
  {
    meters = [MEMORY[0x1E696B088] centiliters];
  }

  else if ([v13 isEqualToString:@"milliliters"])
  {
    meters = [MEMORY[0x1E696B088] milliliters];
  }

  else if ([v13 isEqualToString:@"cubicKilometers"])
  {
    meters = [MEMORY[0x1E696B088] cubicKilometers];
  }

  else if ([v13 isEqualToString:@"cubicDecimeters"])
  {
    meters = [MEMORY[0x1E696B088] cubicDecimeters];
  }

  else if ([v13 isEqualToString:@"cubicMillimeters"])
  {
    meters = [MEMORY[0x1E696B088] cubicMillimeters];
  }

  else if ([v13 isEqualToString:@"cubicInches"])
  {
    meters = [MEMORY[0x1E696B088] cubicInches];
  }

  else if ([v13 isEqualToString:@"cubicFeet"])
  {
    meters = [MEMORY[0x1E696B088] cubicFeet];
  }

  else if ([v13 isEqualToString:@"cubicYards"])
  {
    meters = [MEMORY[0x1E696B088] cubicYards];
  }

  else if ([v13 isEqualToString:@"cubicMiles"])
  {
    meters = [MEMORY[0x1E696B088] cubicMiles];
  }

  else if ([v13 isEqualToString:@"acreFeet"])
  {
    meters = [MEMORY[0x1E696B088] acreFeet];
  }

  else if ([v13 isEqualToString:@"bushels"])
  {
    meters = [MEMORY[0x1E696B088] bushels];
  }

  else if ([v13 isEqualToString:@"teaspoons"])
  {
    meters = [MEMORY[0x1E696B088] teaspoons];
  }

  else if ([v13 isEqualToString:@"tablespoons"])
  {
    meters = [MEMORY[0x1E696B088] tablespoons];
  }

  else if ([v13 isEqualToString:@"fluidOunces"])
  {
    meters = [MEMORY[0x1E696B088] fluidOunces];
  }

  else if ([v13 isEqualToString:@"cups"])
  {
    meters = [MEMORY[0x1E696B088] cups];
  }

  else if ([v13 isEqualToString:@"pints"])
  {
    meters = [MEMORY[0x1E696B088] pints];
  }

  else if ([v13 isEqualToString:@"quarts"])
  {
    meters = [MEMORY[0x1E696B088] quarts];
  }

  else if ([v13 isEqualToString:@"gallons"])
  {
    meters = [MEMORY[0x1E696B088] gallons];
  }

  else if ([v13 isEqualToString:@"imperialTeaspoons"])
  {
    meters = [MEMORY[0x1E696B088] imperialTeaspoons];
  }

  else if ([v13 isEqualToString:@"imperialQuarts"])
  {
    meters = [MEMORY[0x1E696B088] imperialQuarts];
  }

  else if ([v13 isEqualToString:@"imperialGallons"])
  {
    meters = [MEMORY[0x1E696B088] imperialGallons];
  }

  else if ([v13 isEqualToString:@"metricCups"])
  {
    meters = [MEMORY[0x1E696B088] metricCups];
  }

  else if ([v13 isEqualToString:@"metersPerSecond"])
  {
    meters = [MEMORY[0x1E696B078] metersPerSecond];
  }

  else if ([v13 isEqualToString:@"kilometersPerHour"])
  {
    meters = [MEMORY[0x1E696B078] kilometersPerHour];
  }

  else if ([v13 isEqualToString:@"milesPerHour"])
  {
    meters = [MEMORY[0x1E696B078] milesPerHour];
  }

  else if ([v13 isEqualToString:@"knots"])
  {
    meters = [MEMORY[0x1E696B078] knots];
  }

  else if ([v13 isEqualToString:@"kilojoules"])
  {
    meters = [MEMORY[0x1E696B030] kilojoules];
  }

  else if ([v13 isEqualToString:@"joules"])
  {
    meters = [MEMORY[0x1E696B030] joules];
  }

  else if ([v13 isEqualToString:@"kilocalories"])
  {
    meters = [MEMORY[0x1E696B030] kilocalories];
  }

  else if ([v13 isEqualToString:@"calories"])
  {
    meters = [MEMORY[0x1E696B030] calories];
  }

  else
  {
    if (![v13 isEqualToString:@"kilowattHours"])
    {
LABEL_128:
      v15 = 0;
      goto LABEL_129;
    }

    meters = [MEMORY[0x1E696B030] kilowattHours];
  }

  v16 = meters;
  if (!meters)
  {
    goto LABEL_128;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:meters unit:v12];

LABEL_129:
LABEL_130:

  return v15;
}

@end