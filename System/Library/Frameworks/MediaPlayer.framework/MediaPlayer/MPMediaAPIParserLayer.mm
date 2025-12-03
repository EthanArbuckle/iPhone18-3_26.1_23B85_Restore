@interface MPMediaAPIParserLayer
+ (id)layerWithFirstObjectOfType:(unint64_t)type;
+ (id)layerWithKey:(id)key ofType:(unint64_t)type;
@end

@implementation MPMediaAPIParserLayer

+ (id)layerWithFirstObjectOfType:(unint64_t)type
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setType:type];
  }

  return v5;
}

+ (id)layerWithKey:(id)key ofType:(unint64_t)type
{
  keyCopy = key;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 setKey:keyCopy];
    [v7 setType:type];
  }

  return v7;
}

@end