@interface NSUnitTemperature(Intents)
- (id)_intents_stringRepresentation;
@end

@implementation NSUnitTemperature(Intents)

- (id)_intents_stringRepresentation
{
  v2 = [MEMORY[0x1E696B080] kelvin];
  v3 = [a1 isEqual:v2];

  if (v3)
  {
    v4 = @"kelvin";
  }

  else
  {
    v5 = [MEMORY[0x1E696B080] celsius];
    v6 = [a1 isEqual:v5];

    if (v6)
    {
      v4 = @"celsius";
    }

    else
    {
      v7 = [MEMORY[0x1E696B080] fahrenheit];
      v8 = [a1 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D930];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown unit %@", a1];
        v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
        v15 = v14;

        objc_exception_throw(v14);
      }

      v4 = @"fahrenheit";
    }
  }

  v9 = [(__CFString *)v4 if_ASCIIStringByUppercasingFirstCharacter];

  return v9;
}

@end