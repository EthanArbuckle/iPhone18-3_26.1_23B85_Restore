@interface NSUnitVolume(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitVolume(Intents)

- (id)_intents_stringRepresentation
{
  v2 = [MEMORY[0x1E696B088] megaliters];
  v3 = [a1 isEqual:v2];

  if (v3)
  {
    v4 = @"megaliters";
  }

  else
  {
    v5 = [MEMORY[0x1E696B088] kiloliters];
    v6 = [a1 isEqual:v5];

    if (v6)
    {
      v4 = @"kiloliters";
    }

    else
    {
      v7 = [MEMORY[0x1E696B088] liters];
      v8 = [a1 isEqual:v7];

      if (v8)
      {
        v4 = @"liters";
      }

      else
      {
        v9 = [MEMORY[0x1E696B088] deciliters];
        v10 = [a1 isEqual:v9];

        if (v10)
        {
          v4 = @"deciliters";
        }

        else
        {
          v11 = [MEMORY[0x1E696B088] centiliters];
          v12 = [a1 isEqual:v11];

          if (v12)
          {
            v4 = @"centiliters";
          }

          else
          {
            v13 = [MEMORY[0x1E696B088] milliliters];
            v14 = [a1 isEqual:v13];

            if (v14)
            {
              v4 = @"milliliters";
            }

            else
            {
              v15 = [MEMORY[0x1E696B088] cubicKilometers];
              v16 = [a1 isEqual:v15];

              if (v16)
              {
                v4 = @"cubicKilometers";
              }

              else
              {
                v17 = [MEMORY[0x1E696B088] cubicMeters];
                v18 = [a1 isEqual:v17];

                if (v18)
                {
                  v4 = @"cubicMeters";
                }

                else
                {
                  v19 = [MEMORY[0x1E696B088] cubicDecimeters];
                  v20 = [a1 isEqual:v19];

                  if (v20)
                  {
                    v4 = @"cubicDecimeters";
                  }

                  else
                  {
                    v21 = [MEMORY[0x1E696B088] cubicCentimeters];
                    v22 = [a1 isEqual:v21];

                    if (v22)
                    {
                      v4 = @"cubicCentimeters";
                    }

                    else
                    {
                      v23 = [MEMORY[0x1E696B088] cubicMillimeters];
                      v24 = [a1 isEqual:v23];

                      if (v24)
                      {
                        v4 = @"cubicMillimeters";
                      }

                      else
                      {
                        v25 = [MEMORY[0x1E696B088] cubicInches];
                        v26 = [a1 isEqual:v25];

                        if (v26)
                        {
                          v4 = @"cubicInches";
                        }

                        else
                        {
                          v27 = [MEMORY[0x1E696B088] cubicFeet];
                          v28 = [a1 isEqual:v27];

                          if (v28)
                          {
                            v4 = @"cubicFeet";
                          }

                          else
                          {
                            v29 = [MEMORY[0x1E696B088] cubicYards];
                            v30 = [a1 isEqual:v29];

                            if (v30)
                            {
                              v4 = @"cubicYards";
                            }

                            else
                            {
                              v31 = [MEMORY[0x1E696B088] cubicMiles];
                              v32 = [a1 isEqual:v31];

                              if (v32)
                              {
                                v4 = @"cubicMiles";
                              }

                              else
                              {
                                v33 = [MEMORY[0x1E696B088] acreFeet];
                                v34 = [a1 isEqual:v33];

                                if (v34)
                                {
                                  v4 = @"acreFeet";
                                }

                                else
                                {
                                  v35 = [MEMORY[0x1E696B088] bushels];
                                  v36 = [a1 isEqual:v35];

                                  if (v36)
                                  {
                                    v4 = @"bushels";
                                  }

                                  else
                                  {
                                    v37 = [MEMORY[0x1E696B088] teaspoons];
                                    v38 = [a1 isEqual:v37];

                                    if (v38)
                                    {
                                      v4 = @"teaspoons";
                                    }

                                    else
                                    {
                                      v39 = [MEMORY[0x1E696B088] tablespoons];
                                      v40 = [a1 isEqual:v39];

                                      if (v40)
                                      {
                                        v4 = @"tablespoons";
                                      }

                                      else
                                      {
                                        v41 = [MEMORY[0x1E696B088] fluidOunces];
                                        v42 = [a1 isEqual:v41];

                                        if (v42)
                                        {
                                          v4 = @"fluidOunces";
                                        }

                                        else
                                        {
                                          v43 = [MEMORY[0x1E696B088] cups];
                                          v44 = [a1 isEqual:v43];

                                          if (v44)
                                          {
                                            v4 = @"cups";
                                          }

                                          else
                                          {
                                            v45 = [MEMORY[0x1E696B088] pints];
                                            v46 = [a1 isEqual:v45];

                                            if (v46)
                                            {
                                              v4 = @"pints";
                                            }

                                            else
                                            {
                                              v47 = [MEMORY[0x1E696B088] quarts];
                                              v48 = [a1 isEqual:v47];

                                              if (v48)
                                              {
                                                v4 = @"quarts";
                                              }

                                              else
                                              {
                                                v49 = [MEMORY[0x1E696B088] gallons];
                                                v50 = [a1 isEqual:v49];

                                                if (v50)
                                                {
                                                  v4 = @"gallons";
                                                }

                                                else
                                                {
                                                  v51 = [MEMORY[0x1E696B088] imperialTeaspoons];
                                                  v52 = [a1 isEqual:v51];

                                                  if (v52)
                                                  {
                                                    v4 = @"imperialTeaspoons";
                                                  }

                                                  else
                                                  {
                                                    v53 = [MEMORY[0x1E696B088] imperialTablespoons];
                                                    v54 = [a1 isEqual:v53];

                                                    if (v54)
                                                    {
                                                      v4 = @"imperialTablespoons";
                                                    }

                                                    else
                                                    {
                                                      v55 = [MEMORY[0x1E696B088] imperialFluidOunces];
                                                      v56 = [a1 isEqual:v55];

                                                      if (v56)
                                                      {
                                                        v4 = @"imperialFluidOunces";
                                                      }

                                                      else
                                                      {
                                                        v57 = [MEMORY[0x1E696B088] imperialPints];
                                                        v58 = [a1 isEqual:v57];

                                                        if (v58)
                                                        {
                                                          v4 = @"imperialPints";
                                                        }

                                                        else
                                                        {
                                                          v59 = [MEMORY[0x1E696B088] imperialQuarts];
                                                          v60 = [a1 isEqual:v59];

                                                          if (v60)
                                                          {
                                                            v4 = @"imperialQuarts";
                                                          }

                                                          else
                                                          {
                                                            v61 = [MEMORY[0x1E696B088] imperialGallons];
                                                            v62 = [a1 isEqual:v61];

                                                            if (v62)
                                                            {
                                                              v4 = @"imperialGallons";
                                                            }

                                                            else
                                                            {
                                                              v63 = [MEMORY[0x1E696B088] metricCups];
                                                              v64 = [a1 isEqual:v63];

                                                              if ((v64 & 1) == 0)
                                                              {
                                                                v67 = MEMORY[0x1E695DF30];
                                                                v68 = *MEMORY[0x1E695D930];
                                                                v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", a1];
                                                                v70 = [v67 exceptionWithName:v68 reason:v69 userInfo:0];
                                                                v71 = v70;

                                                                objc_exception_throw(v70);
                                                              }

                                                              v4 = @"metricCups";
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

  v65 = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return v65;
}

@end