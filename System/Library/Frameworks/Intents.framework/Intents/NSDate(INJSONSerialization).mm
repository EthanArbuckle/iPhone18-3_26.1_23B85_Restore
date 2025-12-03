@interface NSDate(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSDate(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v9[2] = *MEMORY[0x1E69E9840];
  [self timeIntervalSince1970];
  v2 = ((v1 - floor(v1)) * 1000000000.0);
  v8[0] = @"seconds";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:vcvtmd_s64_f64(v1)];
  v8[1] = @"nanos";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 objectForKeyedSubscript:@"seconds"];
    integerValue = [v11 integerValue];

    v13 = [v10 objectForKeyedSubscript:@"nanos"];
    integerValue2 = [v13 integerValue];

    v15 = integerValue;
    if (integerValue2 >= 1)
    {
      v15 = integerValue2 / 1000000000.0 + v15;
    }

    v16 = [self dateWithTimeIntervalSince1970:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end