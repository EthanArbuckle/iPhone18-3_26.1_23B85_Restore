@interface NSUnitEnergy(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitEnergy(Intents)

- (id)_intents_stringRepresentation
{
  v2 = [MEMORY[0x1E696B030] kilojoules];
  v3 = [a1 isEqual:v2];

  if (v3)
  {
    v4 = @"kilojoules";
  }

  else
  {
    v5 = [MEMORY[0x1E696B030] joules];
    v6 = [a1 isEqual:v5];

    if (v6)
    {
      v4 = @"joules";
    }

    else
    {
      v7 = [MEMORY[0x1E696B030] kilocalories];
      v8 = [a1 isEqual:v7];

      if (v8)
      {
        v4 = @"kilocalories";
      }

      else
      {
        v9 = [MEMORY[0x1E696B030] calories];
        v10 = [a1 isEqual:v9];

        if (v10)
        {
          v4 = @"calories";
        }

        else
        {
          v11 = [MEMORY[0x1E696B030] kilowattHours];
          v12 = [a1 isEqual:v11];

          if ((v12 & 1) == 0)
          {
            v15 = MEMORY[0x1E695DF30];
            v16 = *MEMORY[0x1E695D930];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", a1];
            v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
            v19 = v18;

            objc_exception_throw(v18);
          }

          v4 = @"kilowattHours";
        }
      }
    }
  }

  v13 = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return v13;
}

@end