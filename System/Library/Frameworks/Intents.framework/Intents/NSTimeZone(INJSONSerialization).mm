@interface NSTimeZone(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSTimeZone(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  name = [self name];
  v3 = name;
  if (name)
  {
    abbreviation = name;
  }

  else
  {
    abbreviation = [self abbreviation];
  }

  v5 = abbreviation;

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