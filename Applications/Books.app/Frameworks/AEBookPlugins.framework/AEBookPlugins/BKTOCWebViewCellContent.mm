@interface BKTOCWebViewCellContent
+ (id)cellContentWithHeight:(double)a3 cacheKey:(id)a4;
@end

@implementation BKTOCWebViewCellContent

+ (id)cellContentWithHeight:(double)a3 cacheKey:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  [v6 setHeight:a3];
  [v6 setCacheKey:v5];

  return v6;
}

@end