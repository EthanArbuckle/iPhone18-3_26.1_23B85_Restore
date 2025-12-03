@interface _TUILoadedImageResourceCollector
- (void)collectImageResource:(id)resource;
@end

@implementation _TUILoadedImageResourceCollector

- (void)collectImageResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy isImageLoaded])
  {
    v5.receiver = self;
    v5.super_class = _TUILoadedImageResourceCollector;
    [(_TUIImageResourceCollector *)&v5 collectImageResource:resourceCopy];
  }
}

@end