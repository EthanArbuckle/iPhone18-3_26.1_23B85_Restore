@interface TUIResourceCollector
+ (id)createImageResourceCollector;
+ (id)createImageResourceCollectorForLoaded;
+ (id)createImageResourceCollectorForNotLoadedInVisibleBounds:(CGRect)bounds viewState:(id)state;
+ (id)createResourceCollectorForEverything;
+ (id)createResourceCollectorForVisibleBounds:(CGRect)bounds viewState:(id)state;
@end

@implementation TUIResourceCollector

+ (id)createResourceCollectorForEverything
{
  v2 = [[_TUIResourceCollector alloc] initWithBounds:0 viewState:CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height];

  return v2;
}

+ (id)createResourceCollectorForVisibleBounds:(CGRect)bounds viewState:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stateCopy = state;
  height = [[_TUIResourceCollector alloc] initWithBounds:stateCopy viewState:x, y, width, height];

  return height;
}

+ (id)createImageResourceCollectorForLoaded
{
  v2 = objc_alloc_init(_TUILoadedImageResourceCollector);

  return v2;
}

+ (id)createImageResourceCollectorForNotLoadedInVisibleBounds:(CGRect)bounds viewState:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stateCopy = state;
  height = [(_TUIImageResourceCollector *)[_TUINotLoadedImageResourceCollector alloc] initWithBounds:stateCopy viewState:x, y, width, height];

  return height;
}

+ (id)createImageResourceCollector
{
  v2 = objc_alloc_init(_TUIImageResourceCollector);

  return v2;
}

@end