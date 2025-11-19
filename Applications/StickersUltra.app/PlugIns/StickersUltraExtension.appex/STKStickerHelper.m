@interface STKStickerHelper
+ (id)ckAttributionInfoFromSticker:(id)a3;
@end

@implementation STKStickerHelper

+ (id)ckAttributionInfoFromSticker:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 attributionInfo];
    v5 = [NSMutableDictionary dictionaryWithCapacity:3];
    v6 = [v4 adamID];

    if (v6)
    {
      v7 = [v4 adamID];
      [v5 setObject:v7 forKeyedSubscript:@"adam-id"];
    }

    v8 = [v4 bundleIdentifier];

    if (v8)
    {
      v9 = [v4 bundleIdentifier];
      [v5 setObject:v9 forKeyedSubscript:@"bundle-id"];
    }

    v10 = [v4 name];

    if (v10)
    {
      v11 = [v4 name];
      [v5 setObject:v11 forKeyedSubscript:@"name"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end