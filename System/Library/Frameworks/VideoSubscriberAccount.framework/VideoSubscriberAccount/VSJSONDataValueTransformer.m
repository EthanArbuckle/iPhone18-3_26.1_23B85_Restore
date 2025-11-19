@interface VSJSONDataValueTransformer
- (id)transformedValue:(id)a3;
@end

@implementation VSJSONDataValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
        [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSData.", v9}];
      }

      v16 = 0;
      v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v16];
      v11 = v16;
      v12 = v11;
      if (v10)
      {
        v13 = [VSFailable failableWithObject:v10];
      }

      else
      {
        if (!v11)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
        }

        v13 = [VSFailable failableWithError:v12];
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end