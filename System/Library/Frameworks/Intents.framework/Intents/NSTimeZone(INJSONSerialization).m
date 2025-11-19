@interface NSTimeZone(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSTimeZone(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v2 = [a1 name];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 abbreviation];
  }

  v5 = v4;

  return v5;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:v9];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end