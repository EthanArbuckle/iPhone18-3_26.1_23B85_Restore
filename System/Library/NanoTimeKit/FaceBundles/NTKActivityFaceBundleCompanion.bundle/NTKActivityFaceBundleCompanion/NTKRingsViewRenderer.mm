@interface NTKRingsViewRenderer
- (void)dealloc;
@end

@implementation NTKRingsViewRenderer

- (void)dealloc
{
  +[ARUIRingsView clearSharedCaches];
  v3.receiver = self;
  v3.super_class = NTKRingsViewRenderer;
  [(NTKRingsViewRenderer *)&v3 dealloc];
}

@end