@interface NSUnitMass(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitMass(Intents)

- (id)_intents_stringRepresentation
{
  kilograms = [MEMORY[0x1E696B060] kilograms];
  v3 = [self isEqual:kilograms];

  if (v3)
  {
    v4 = @"kilograms";
  }

  else
  {
    grams = [MEMORY[0x1E696B060] grams];
    v6 = [self isEqual:grams];

    if (v6)
    {
      v4 = @"grams";
    }

    else
    {
      decigrams = [MEMORY[0x1E696B060] decigrams];
      v8 = [self isEqual:decigrams];

      if (v8)
      {
        v4 = @"decigrams";
      }

      else
      {
        centigrams = [MEMORY[0x1E696B060] centigrams];
        v10 = [self isEqual:centigrams];

        if (v10)
        {
          v4 = @"centigrams";
        }

        else
        {
          milligrams = [MEMORY[0x1E696B060] milligrams];
          v12 = [self isEqual:milligrams];

          if (v12)
          {
            v4 = @"milligrams";
          }

          else
          {
            micrograms = [MEMORY[0x1E696B060] micrograms];
            v14 = [self isEqual:micrograms];

            if (v14)
            {
              v4 = @"micrograms";
            }

            else
            {
              nanograms = [MEMORY[0x1E696B060] nanograms];
              v16 = [self isEqual:nanograms];

              if (v16)
              {
                v4 = @"nanograms";
              }

              else
              {
                picograms = [MEMORY[0x1E696B060] picograms];
                v18 = [self isEqual:picograms];

                if (v18)
                {
                  v4 = @"picograms";
                }

                else
                {
                  ounces = [MEMORY[0x1E696B060] ounces];
                  v20 = [self isEqual:ounces];

                  if (v20)
                  {
                    v4 = @"ounces";
                  }

                  else
                  {
                    poundsMass = [MEMORY[0x1E696B060] poundsMass];
                    v22 = [self isEqual:poundsMass];

                    if (v22)
                    {
                      v4 = @"poundsMass";
                    }

                    else
                    {
                      stones = [MEMORY[0x1E696B060] stones];
                      v24 = [self isEqual:stones];

                      if (v24)
                      {
                        v4 = @"stones";
                      }

                      else
                      {
                        metricTons = [MEMORY[0x1E696B060] metricTons];
                        v26 = [self isEqual:metricTons];

                        if (v26)
                        {
                          v4 = @"metricTons";
                        }

                        else
                        {
                          shortTons = [MEMORY[0x1E696B060] shortTons];
                          v28 = [self isEqual:shortTons];

                          if (v28)
                          {
                            v4 = @"shortTons";
                          }

                          else
                          {
                            carats = [MEMORY[0x1E696B060] carats];
                            v30 = [self isEqual:carats];

                            if (v30)
                            {
                              v4 = @"carats";
                            }

                            else
                            {
                              ouncesTroy = [MEMORY[0x1E696B060] ouncesTroy];
                              v32 = [self isEqual:ouncesTroy];

                              if (v32)
                              {
                                v4 = @"ouncesTroy";
                              }

                              else
                              {
                                slugs = [MEMORY[0x1E696B060] slugs];
                                v34 = [self isEqual:slugs];

                                if ((v34 & 1) == 0)
                                {
                                  v37 = MEMORY[0x1E695DF30];
                                  v38 = *MEMORY[0x1E695D930];
                                  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", self];
                                  v40 = [v37 exceptionWithName:v38 reason:v39 userInfo:0];
                                  v41 = v40;

                                  objc_exception_throw(v40);
                                }

                                v4 = @"slugs";
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