@interface TKSlotParameters
- (TKSlotParameters)initWithEntriesFromDictionary:(id)a3;
- (TKSlotParameters)initWithMaxBlockSize:(int64_t)a3;
- (id)description;
- (id)getDictionaryParameters;
@end

@implementation TKSlotParameters

- (TKSlotParameters)initWithMaxBlockSize:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TKSlotParameters;
  v4 = [(TKSlotParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TKSlotParameters *)v4 setMaxInputLength:a3];
    [(TKSlotParameters *)v5 setMaxOutputLength:a3];
    [(TKSlotParameters *)v5 setSecurePINVerificationSupported:0];
    [(TKSlotParameters *)v5 setSecurePINChangeSupported:0];
  }

  return v5;
}

- (TKSlotParameters)initWithEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TKSlotParameters;
  v5 = [(TKSlotParameters *)&v15 init];
  if (v5)
  {
    outCount = 0;
    v6 = objc_opt_class();
    v7 = class_copyPropertyList(v6, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = property_getName(v7[i]);
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
        v11 = [v4 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
          [(TKSlotParameters *)v5 setValue:v11 forKey:v12];
        }
      }
    }

    free(v7);
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"{\n    maxInputLength: %ld\n", -[TKSlotParameters maxInputLength](self, "maxInputLength")];
  [v3 appendFormat:@"    maxOutputLength: %ld\n", -[TKSlotParameters maxOutputLength](self, "maxOutputLength")];
  v4 = [(TKSlotParameters *)self productID];
  [v3 appendFormat:@"    productID: %@\n", v4];

  v5 = [(TKSlotParameters *)self vendorID];
  [v3 appendFormat:@"    vendorID: %@\n", v5];

  v6 = [(TKSlotParameters *)self firmwareVersion];
  [v3 appendFormat:@"    firmwareVersion: %@\n", v6];

  [v3 appendFormat:@"    securePINVerificationSupported: %d\n", -[TKSlotParameters securePINVerificationSupported](self, "securePINVerificationSupported")];
  [v3 appendFormat:@"    securePINChangeSupported: %d\n", -[TKSlotParameters securePINChangeSupported](self, "securePINChangeSupported")];
  v7 = [(TKSlotParameters *)self displayMaxCharacters];
  [v3 appendFormat:@"    displayMaxCharacters: %@\n", v7];

  v8 = [(TKSlotParameters *)self displayMaxLines];
  [v3 appendFormat:@"    displayMaxLines: %@ \n", v8];

  v9 = [(TKSlotParameters *)self pinValidationCondition];
  [v3 appendFormat:@"    pinValidationCondition: %@ \n", v9];

  [(TKSlotParameters *)self interactionTimeout];
  [v3 appendFormat:@"    interactionTimeout: %f\n", v10];
  v11 = [(TKSlotParameters *)self minPINLength];
  [v3 appendFormat:@"    minPINLength: %@\n", v11];

  v12 = [(TKSlotParameters *)self maxPINLength];
  [v3 appendFormat:@"    maxPINLength: %@\n", v12];

  [v3 appendFormat:@"    delegateWithControlMethod: %d\n", -[TKSlotParameters delegateWithControlMethod](self, "delegateWithControlMethod")];
  [v3 appendFormat:@"    delegateWithEscapeMethod: %d\n}\n", -[TKSlotParameters delegateWithEscapeMethod](self, "delegateWithEscapeMethod")];

  return v3;
}

- (id)getDictionaryParameters
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  outCount = 0;
  v4 = objc_opt_class();
  v5 = class_copyPropertyList(v4, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v5[i]);
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
      v9 = [(TKSlotParameters *)self valueForKey:v8];

      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
        [v3 setObject:v9 forKey:v10];
      }
    }
  }

  free(v5);

  return v3;
}

@end