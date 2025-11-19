@interface NSNumber(INJSONSerialization)
+ (void)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
@end

@implementation NSNumber(INJSONSerialization)

+ (void)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v5 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end