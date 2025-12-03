@interface NSUnitTemperature(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitTemperature(Intents)

- (id)_intents_stringRepresentation
{
  kelvin = [MEMORY[0x1E696B080] kelvin];
  v3 = [self isEqual:kelvin];

  if (v3)
  {
    v4 = @"kelvin";
  }

  else
  {
    celsius = [MEMORY[0x1E696B080] celsius];
    v6 = [self isEqual:celsius];

    if (v6)
    {
      v4 = @"celsius";
    }

    else
    {
      fahrenheit = [MEMORY[0x1E696B080] fahrenheit];
      v8 = [self isEqual:fahrenheit];

      if ((v8 & 1) == 0)
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D930];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", self];
        v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
        v15 = v14;

        objc_exception_throw(v14);
      }

      v4 = @"fahrenheit";
    }
  }

  if_ASCIIStringByUppercasingFirstCharacter = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return if_ASCIIStringByUppercasingFirstCharacter;
}

@end