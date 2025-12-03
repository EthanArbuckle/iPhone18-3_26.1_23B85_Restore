@interface STKStickerHelper
+ (id)ckAttributionInfoFromSticker:(id)sticker;
@end

@implementation STKStickerHelper

+ (id)ckAttributionInfoFromSticker:(id)sticker
{
  stickerCopy = sticker;
  if (objc_opt_respondsToSelector())
  {
    attributionInfo = [stickerCopy attributionInfo];
    v5 = [NSMutableDictionary dictionaryWithCapacity:3];
    adamID = [attributionInfo adamID];

    if (adamID)
    {
      adamID2 = [attributionInfo adamID];
      [v5 setObject:adamID2 forKeyedSubscript:@"adam-id"];
    }

    bundleIdentifier = [attributionInfo bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [attributionInfo bundleIdentifier];
      [v5 setObject:bundleIdentifier2 forKeyedSubscript:@"bundle-id"];
    }

    name = [attributionInfo name];

    if (name)
    {
      name2 = [attributionInfo name];
      [v5 setObject:name2 forKeyedSubscript:@"name"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end