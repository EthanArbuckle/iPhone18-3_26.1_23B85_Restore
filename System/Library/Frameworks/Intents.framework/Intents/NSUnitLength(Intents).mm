@interface NSUnitLength(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitLength(Intents)

- (id)_intents_stringRepresentation
{
  v2 = [MEMORY[0x1E696B058] megameters];
  v3 = [a1 isEqual:v2];

  if (v3)
  {
    v4 = @"megameters";
  }

  else
  {
    v5 = [MEMORY[0x1E696B058] kilometers];
    v6 = [a1 isEqual:v5];

    if (v6)
    {
      v4 = @"kilometers";
    }

    else
    {
      v7 = [MEMORY[0x1E696B058] hectometers];
      v8 = [a1 isEqual:v7];

      if (v8)
      {
        v4 = @"hectometers";
      }

      else
      {
        v9 = [MEMORY[0x1E696B058] decameters];
        v10 = [a1 isEqual:v9];

        if (v10)
        {
          v4 = @"decameters";
        }

        else
        {
          v11 = [MEMORY[0x1E696B058] meters];
          v12 = [a1 isEqual:v11];

          if (v12)
          {
            v4 = @"meters";
          }

          else
          {
            v13 = [MEMORY[0x1E696B058] decimeters];
            v14 = [a1 isEqual:v13];

            if (v14)
            {
              v4 = @"decimeters";
            }

            else
            {
              v15 = [MEMORY[0x1E696B058] centimeters];
              v16 = [a1 isEqual:v15];

              if (v16)
              {
                v4 = @"centimeters";
              }

              else
              {
                v17 = [MEMORY[0x1E696B058] millimeters];
                v18 = [a1 isEqual:v17];

                if (v18)
                {
                  v4 = @"millimeters";
                }

                else
                {
                  v19 = [MEMORY[0x1E696B058] micrometers];
                  v20 = [a1 isEqual:v19];

                  if (v20)
                  {
                    v4 = @"micrometers";
                  }

                  else
                  {
                    v21 = [MEMORY[0x1E696B058] nanometers];
                    v22 = [a1 isEqual:v21];

                    if (v22)
                    {
                      v4 = @"nanometers";
                    }

                    else
                    {
                      v23 = [MEMORY[0x1E696B058] picometers];
                      v24 = [a1 isEqual:v23];

                      if (v24)
                      {
                        v4 = @"picometers";
                      }

                      else
                      {
                        v25 = [MEMORY[0x1E696B058] inches];
                        v26 = [a1 isEqual:v25];

                        if (v26)
                        {
                          v4 = @"inches";
                        }

                        else
                        {
                          v27 = [MEMORY[0x1E696B058] feet];
                          v28 = [a1 isEqual:v27];

                          if (v28)
                          {
                            v4 = @"feet";
                          }

                          else
                          {
                            v29 = [MEMORY[0x1E696B058] yards];
                            v30 = [a1 isEqual:v29];

                            if (v30)
                            {
                              v4 = @"yards";
                            }

                            else
                            {
                              v31 = [MEMORY[0x1E696B058] miles];
                              v32 = [a1 isEqual:v31];

                              if (v32)
                              {
                                v4 = @"miles";
                              }

                              else
                              {
                                v33 = [MEMORY[0x1E696B058] scandinavianMiles];
                                v34 = [a1 isEqual:v33];

                                if (v34)
                                {
                                  v4 = @"scandinavianMiles";
                                }

                                else
                                {
                                  v35 = [MEMORY[0x1E696B058] lightyears];
                                  v36 = [a1 isEqual:v35];

                                  if (v36)
                                  {
                                    v4 = @"lightyears";
                                  }

                                  else
                                  {
                                    v37 = [MEMORY[0x1E696B058] nauticalMiles];
                                    v38 = [a1 isEqual:v37];

                                    if (v38)
                                    {
                                      v4 = @"nauticalMiles";
                                    }

                                    else
                                    {
                                      v39 = [MEMORY[0x1E696B058] fathoms];
                                      v40 = [a1 isEqual:v39];

                                      if (v40)
                                      {
                                        v4 = @"fathoms";
                                      }

                                      else
                                      {
                                        v41 = [MEMORY[0x1E696B058] furlongs];
                                        v42 = [a1 isEqual:v41];

                                        if (v42)
                                        {
                                          v4 = @"furlongs";
                                        }

                                        else
                                        {
                                          v43 = [MEMORY[0x1E696B058] astronomicalUnits];
                                          v44 = [a1 isEqual:v43];

                                          if (v44)
                                          {
                                            v4 = @"astronomicalUnits";
                                          }

                                          else
                                          {
                                            v45 = [MEMORY[0x1E696B058] parsecs];
                                            v46 = [a1 isEqual:v45];

                                            if ((v46 & 1) == 0)
                                            {
                                              v49 = MEMORY[0x1E695DF30];
                                              v50 = *MEMORY[0x1E695D930];
                                              v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", a1];
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

  v47 = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return v47;
}

@end