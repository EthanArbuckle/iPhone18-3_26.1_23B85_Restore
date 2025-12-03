@interface NSUnitEnergy(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitEnergy(Intents)

- (id)_intents_stringRepresentation
{
  kilojoules = [MEMORY[0x1E696B030] kilojoules];
  v3 = [self isEqual:kilojoules];

  if (v3)
  {
    v4 = @"kilojoules";
  }

  else
  {
    joules = [MEMORY[0x1E696B030] joules];
    v6 = [self isEqual:joules];

    if (v6)
    {
      v4 = @"joules";
    }

    else
    {
      kilocalories = [MEMORY[0x1E696B030] kilocalories];
      v8 = [self isEqual:kilocalories];

      if (v8)
      {
        v4 = @"kilocalories";
      }

      else
      {
        calories = [MEMORY[0x1E696B030] calories];
        v10 = [self isEqual:calories];

        if (v10)
        {
          v4 = @"calories";
        }

        else
        {
          kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
          v12 = [self isEqual:kilowattHours];

          if ((v12 & 1) == 0)
          {
            v15 = MEMORY[0x1E695DF30];
            v16 = *MEMORY[0x1E695D930];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", self];
            v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
            v19 = v18;

            objc_exception_throw(v18);
          }

          v4 = @"kilowattHours";
        }
      }
    }
  }

  if_ASCIIStringByUppercasingFirstCharacter = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return if_ASCIIStringByUppercasingFirstCharacter;
}

@end