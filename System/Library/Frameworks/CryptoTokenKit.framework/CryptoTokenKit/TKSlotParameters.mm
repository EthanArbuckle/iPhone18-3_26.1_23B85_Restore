@interface TKSlotParameters
- (TKSlotParameters)initWithEntriesFromDictionary:(id)dictionary;
- (TKSlotParameters)initWithMaxBlockSize:(int64_t)size;
- (id)description;
- (id)getDictionaryParameters;
@end

@implementation TKSlotParameters

- (TKSlotParameters)initWithMaxBlockSize:(int64_t)size
{
  v7.receiver = self;
  v7.super_class = TKSlotParameters;
  v4 = [(TKSlotParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TKSlotParameters *)v4 setMaxInputLength:size];
    [(TKSlotParameters *)v5 setMaxOutputLength:size];
    [(TKSlotParameters *)v5 setSecurePINVerificationSupported:0];
    [(TKSlotParameters *)v5 setSecurePINChangeSupported:0];
  }

  return v5;
}

- (TKSlotParameters)initWithEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
        v11 = [dictionaryCopy objectForKeyedSubscript:v10];

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
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"{\n    maxInputLength: %ld\n", -[TKSlotParameters maxInputLength](self, "maxInputLength")];
  [string appendFormat:@"    maxOutputLength: %ld\n", -[TKSlotParameters maxOutputLength](self, "maxOutputLength")];
  productID = [(TKSlotParameters *)self productID];
  [string appendFormat:@"    productID: %@\n", productID];

  vendorID = [(TKSlotParameters *)self vendorID];
  [string appendFormat:@"    vendorID: %@\n", vendorID];

  firmwareVersion = [(TKSlotParameters *)self firmwareVersion];
  [string appendFormat:@"    firmwareVersion: %@\n", firmwareVersion];

  [string appendFormat:@"    securePINVerificationSupported: %d\n", -[TKSlotParameters securePINVerificationSupported](self, "securePINVerificationSupported")];
  [string appendFormat:@"    securePINChangeSupported: %d\n", -[TKSlotParameters securePINChangeSupported](self, "securePINChangeSupported")];
  displayMaxCharacters = [(TKSlotParameters *)self displayMaxCharacters];
  [string appendFormat:@"    displayMaxCharacters: %@\n", displayMaxCharacters];

  displayMaxLines = [(TKSlotParameters *)self displayMaxLines];
  [string appendFormat:@"    displayMaxLines: %@ \n", displayMaxLines];

  pinValidationCondition = [(TKSlotParameters *)self pinValidationCondition];
  [string appendFormat:@"    pinValidationCondition: %@ \n", pinValidationCondition];

  [(TKSlotParameters *)self interactionTimeout];
  [string appendFormat:@"    interactionTimeout: %f\n", v10];
  minPINLength = [(TKSlotParameters *)self minPINLength];
  [string appendFormat:@"    minPINLength: %@\n", minPINLength];

  maxPINLength = [(TKSlotParameters *)self maxPINLength];
  [string appendFormat:@"    maxPINLength: %@\n", maxPINLength];

  [string appendFormat:@"    delegateWithControlMethod: %d\n", -[TKSlotParameters delegateWithControlMethod](self, "delegateWithControlMethod")];
  [string appendFormat:@"    delegateWithEscapeMethod: %d\n}\n", -[TKSlotParameters delegateWithEscapeMethod](self, "delegateWithEscapeMethod")];

  return string;
}

- (id)getDictionaryParameters
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        [dictionary setObject:v9 forKey:v10];
      }
    }
  }

  free(v5);

  return dictionary;
}

@end