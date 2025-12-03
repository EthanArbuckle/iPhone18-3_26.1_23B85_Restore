@interface NSUnitLength(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitLength(Intents)

- (id)_intents_stringRepresentation
{
  megameters = [MEMORY[0x1E696B058] megameters];
  v3 = [self isEqual:megameters];

  if (v3)
  {
    v4 = @"megameters";
  }

  else
  {
    kilometers = [MEMORY[0x1E696B058] kilometers];
    v6 = [self isEqual:kilometers];

    if (v6)
    {
      v4 = @"kilometers";
    }

    else
    {
      hectometers = [MEMORY[0x1E696B058] hectometers];
      v8 = [self isEqual:hectometers];

      if (v8)
      {
        v4 = @"hectometers";
      }

      else
      {
        decameters = [MEMORY[0x1E696B058] decameters];
        v10 = [self isEqual:decameters];

        if (v10)
        {
          v4 = @"decameters";
        }

        else
        {
          meters = [MEMORY[0x1E696B058] meters];
          v12 = [self isEqual:meters];

          if (v12)
          {
            v4 = @"meters";
          }

          else
          {
            decimeters = [MEMORY[0x1E696B058] decimeters];
            v14 = [self isEqual:decimeters];

            if (v14)
            {
              v4 = @"decimeters";
            }

            else
            {
              centimeters = [MEMORY[0x1E696B058] centimeters];
              v16 = [self isEqual:centimeters];

              if (v16)
              {
                v4 = @"centimeters";
              }

              else
              {
                millimeters = [MEMORY[0x1E696B058] millimeters];
                v18 = [self isEqual:millimeters];

                if (v18)
                {
                  v4 = @"millimeters";
                }

                else
                {
                  micrometers = [MEMORY[0x1E696B058] micrometers];
                  v20 = [self isEqual:micrometers];

                  if (v20)
                  {
                    v4 = @"micrometers";
                  }

                  else
                  {
                    nanometers = [MEMORY[0x1E696B058] nanometers];
                    v22 = [self isEqual:nanometers];

                    if (v22)
                    {
                      v4 = @"nanometers";
                    }

                    else
                    {
                      picometers = [MEMORY[0x1E696B058] picometers];
                      v24 = [self isEqual:picometers];

                      if (v24)
                      {
                        v4 = @"picometers";
                      }

                      else
                      {
                        inches = [MEMORY[0x1E696B058] inches];
                        v26 = [self isEqual:inches];

                        if (v26)
                        {
                          v4 = @"inches";
                        }

                        else
                        {
                          feet = [MEMORY[0x1E696B058] feet];
                          v28 = [self isEqual:feet];

                          if (v28)
                          {
                            v4 = @"feet";
                          }

                          else
                          {
                            yards = [MEMORY[0x1E696B058] yards];
                            v30 = [self isEqual:yards];

                            if (v30)
                            {
                              v4 = @"yards";
                            }

                            else
                            {
                              miles = [MEMORY[0x1E696B058] miles];
                              v32 = [self isEqual:miles];

                              if (v32)
                              {
                                v4 = @"miles";
                              }

                              else
                              {
                                scandinavianMiles = [MEMORY[0x1E696B058] scandinavianMiles];
                                v34 = [self isEqual:scandinavianMiles];

                                if (v34)
                                {
                                  v4 = @"scandinavianMiles";
                                }

                                else
                                {
                                  lightyears = [MEMORY[0x1E696B058] lightyears];
                                  v36 = [self isEqual:lightyears];

                                  if (v36)
                                  {
                                    v4 = @"lightyears";
                                  }

                                  else
                                  {
                                    nauticalMiles = [MEMORY[0x1E696B058] nauticalMiles];
                                    v38 = [self isEqual:nauticalMiles];

                                    if (v38)
                                    {
                                      v4 = @"nauticalMiles";
                                    }

                                    else
                                    {
                                      fathoms = [MEMORY[0x1E696B058] fathoms];
                                      v40 = [self isEqual:fathoms];

                                      if (v40)
                                      {
                                        v4 = @"fathoms";
                                      }

                                      else
                                      {
                                        furlongs = [MEMORY[0x1E696B058] furlongs];
                                        v42 = [self isEqual:furlongs];

                                        if (v42)
                                        {
                                          v4 = @"furlongs";
                                        }

                                        else
                                        {
                                          astronomicalUnits = [MEMORY[0x1E696B058] astronomicalUnits];
                                          v44 = [self isEqual:astronomicalUnits];

                                          if (v44)
                                          {
                                            v4 = @"astronomicalUnits";
                                          }

                                          else
                                          {
                                            parsecs = [MEMORY[0x1E696B058] parsecs];
                                            v46 = [self isEqual:parsecs];

                                            if ((v46 & 1) == 0)
                                            {
                                              v49 = MEMORY[0x1E695DF30];
                                              v50 = *MEMORY[0x1E695D930];
                                              v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", self];
                                              v52 = [v49 exceptionWithName:v50 reason:v51 userInfo:0];
                                              v53 = v52;

                                              objc_exception_throw(v52);
                                            }

                                            v4 = @"parsecs";
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

  if_ASCIIStringByUppercasingFirstCharacter = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return if_ASCIIStringByUppercasingFirstCharacter;
}

@end