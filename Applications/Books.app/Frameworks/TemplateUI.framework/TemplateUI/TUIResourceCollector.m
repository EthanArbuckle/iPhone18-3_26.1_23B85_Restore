@interface TUIResourceCollector
+ (id)createImageResourceCollector;
+ (id)createImageResourceCollectorForLoaded;
+ (id)createImageResourceCollectorForNotLoadedInVisibleBounds:(CGRect)a3 viewState:(id)a4;
+ (id)createResourceCollectorForEverything;
+ (id)createResourceCollectorForVisibleBounds:(CGRect)a3 viewState:(id)a4;
@end

@implementation TUIResourceCollector

+ (id)createResourceCollectorForEverything
{
  v2 = [[_TUIResourceCollector alloc] initWithBounds:0 viewState:CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height];

  return v2;
}

+ (id)createResourceCollectorForVisibleBounds:(CGRect)a3 viewState:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [[_TUIResourceCollector alloc] initWithBounds:v8 viewState:x, y, width, height];

  return v9;
}

+ (id)createImageResourceCollectorForLoaded
{
  v2 = objc_alloc_init(_TUILoadedImageResourceCollector);

  return v2;
}

+ (id)createImageResourceCollectorForNotLoadedInVisibleBounds:(CGRect)a3 viewState:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [(_TUIImageResourceCollector *)[_TUINotLoadedImageResourceCollector alloc] initWithBounds:v8 viewState:x, y, width, height];

  return v9;
}

+ (id)createImageResourceCollector
{
  v2 = objc_alloc_init(_TUIImageResourceCollector);

  return v2;
}

@end