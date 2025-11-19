@interface NSUnitSpeed(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitSpeed(Intents)

- (id)_intents_stringRepresentation
{
  v2 = [MEMORY[0x1E696B078] metersPerSecond];
  v3 = [a1 isEqual:v2];

  if (v3)
  {
    v4 = @"metersPerSecond";
  }

  else
  {
    v5 = [MEMORY[0x1E696B078] kilometersPerHour];
    v6 = [a1 isEqual:v5];

    if (v6)
    {
      v4 = @"kilometersPerHour";
    }

    else
    {
      v7 = [MEMORY[0x1E696B078] milesPerHour];
      v8 = [a1 isEqual:v7];

      if (v8)
      {
        v4 = @"milesPerHour";
      }

      else
      {
        v9 = [MEMORY[0x1E696B078] knots];
        v10 = [a1 isEqual:v9];

        if ((v10 & 1) == 0)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D930];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", a1];
          v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
          v17 = v16;

          objc_exception_throw(v16);
        }

        v4 = @"knots";
      }
    }
  }

  v11 = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return v11;
}

@end