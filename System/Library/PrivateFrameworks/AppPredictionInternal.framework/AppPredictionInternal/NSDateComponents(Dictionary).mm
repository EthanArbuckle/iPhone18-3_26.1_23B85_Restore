@interface NSDateComponents(Dictionary)
+ (id)atx_componentsFromDictionary:()Dictionary;
@end

@implementation NSDateComponents(Dictionary)

+ (id)atx_componentsFromDictionary:()Dictionary
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"year"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setYear:{objc_msgSend(v6, "integerValue")}];
  }

  v7 = [v4 objectForKeyedSubscript:@"month"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMonth:{objc_msgSend(v7, "integerValue")}];
  }

  v8 = [v4 objectForKeyedSubscript:@"day"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDay:{objc_msgSend(v8, "integerValue")}];
  }

  return v5;
}

@end