@interface VSBase64DataValueTransformer
- (id)reverseTransformedValue:(id)value;
@end

@implementation VSBase64DataValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    v5 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSString.", v9}];
      }

      v10 = MEMORY[0x277CBEA90];
      v11 = v5;
      v12 = [[v10 alloc] initWithBase64EncodedString:v11 options:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end