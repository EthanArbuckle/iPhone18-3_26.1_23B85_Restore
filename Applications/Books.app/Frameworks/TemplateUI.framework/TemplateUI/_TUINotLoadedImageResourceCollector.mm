@interface _TUINotLoadedImageResourceCollector
- (void)collectImageResource:(id)resource;
@end

@implementation _TUINotLoadedImageResourceCollector

- (void)collectImageResource:(id)resource
{
  resourceCopy = resource;
  if (([resourceCopy isImageLoaded] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = _TUINotLoadedImageResourceCollector;
    [(_TUIImageResourceCollector *)&v5 collectImageResource:resourceCopy];
  }
}

@end