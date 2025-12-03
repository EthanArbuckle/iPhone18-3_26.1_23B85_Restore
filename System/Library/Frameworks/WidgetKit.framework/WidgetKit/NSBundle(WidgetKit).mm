@interface NSBundle(WidgetKit)
+ (id)wk_uniqueWithURL:()WidgetKit;
@end

@implementation NSBundle(WidgetKit)

+ (id)wk_uniqueWithURL:()WidgetKit
{
  v4 = a3;
  v5 = [[self alloc] _initUniqueWithURL:v4];

  return v5;
}

@end