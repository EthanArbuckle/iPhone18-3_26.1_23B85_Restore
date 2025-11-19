@interface NSUserActivity(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSUserActivity(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = a3;
  v5 = INUserActivitySerializeToData(a1);
  v6 = [v4 encodeObject:v5];

  return v6;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v6 = a5;
  v7 = a3;
  v8 = [v7 decodeObjectOfClass:objc_opt_class() from:v6];

  if (v8)
  {
    v9 = INUserActivityDeserializeFromData(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end