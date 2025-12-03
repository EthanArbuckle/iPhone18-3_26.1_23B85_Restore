@interface NSUnitSpeed(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitSpeed(Intents)

- (id)_intents_stringRepresentation
{
  metersPerSecond = [MEMORY[0x1E696B078] metersPerSecond];
  v3 = [self isEqual:metersPerSecond];

  if (v3)
  {
    v4 = @"metersPerSecond";
  }

  else
  {
    kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
    v6 = [self isEqual:kilometersPerHour];

    if (v6)
    {
      v4 = @"kilometersPerHour";
    }

    else
    {
      milesPerHour = [MEMORY[0x1E696B078] milesPerHour];
      v8 = [self isEqual:milesPerHour];

      if (v8)
      {
        v4 = @"milesPerHour";
      }

      else
      {
        knots = [MEMORY[0x1E696B078] knots];
        v10 = [self isEqual:knots];

        if ((v10 & 1) == 0)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D930];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", self];
          v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
          v17 = v16;

          objc_exception_throw(v16);
        }

        v4 = @"knots";
      }
    }
  }

  if_ASCIIStringByUppercasingFirstCharacter = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return if_ASCIIStringByUppercasingFirstCharacter;
}

@end