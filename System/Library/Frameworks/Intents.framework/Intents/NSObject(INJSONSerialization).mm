@interface NSObject(INJSONSerialization)
- (id)_setterForProperty:()INJSONSerialization;
- (uint64_t)_intents_isValidKey:()INJSONSerialization;
@end

@implementation NSObject(INJSONSerialization)

- (id)_setterForProperty:()INJSONSerialization
{
  v4 = a3;
  v5 = [a3 cStringUsingEncoding:1];
  v6 = objc_opt_class();
  Property = class_getProperty(v6, v5);
  v8 = property_copyAttributeValue(Property, "S");
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:1];
    if ([v9 hasPrefix:@"set"] && objc_msgSend(v9, "length") >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", __tolower(objc_msgSend(v9, "characterAtIndex:", 3))];
      v11 = [v9 substringFromIndex:4];
      v12 = [v11 rangeOfString:@":"];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v11 substringToIndex:v12];

        v11 = v13;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, v11];

      v9 = v14;
    }

    free(v8);
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:1];
  }

  return v9;
}

- (uint64_t)_intents_isValidKey:()INJSONSerialization
{
  v4 = a3;
  NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [a1 _isValidKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end