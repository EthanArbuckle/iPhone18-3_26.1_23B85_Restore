@interface BKTOCWebViewCellContent
+ (id)cellContentWithHeight:(double)height cacheKey:(id)key;
@end

@implementation BKTOCWebViewCellContent

+ (id)cellContentWithHeight:(double)height cacheKey:(id)key
{
  keyCopy = key;
  v6 = objc_opt_new();
  [v6 setHeight:height];
  [v6 setCacheKey:keyCopy];

  return v6;
}

@end