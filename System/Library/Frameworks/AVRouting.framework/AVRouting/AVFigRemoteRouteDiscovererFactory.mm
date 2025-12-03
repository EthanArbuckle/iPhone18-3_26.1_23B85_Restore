@interface AVFigRemoteRouteDiscovererFactory
- (OpaqueFigRouteDiscoverer)createRouteDiscovererWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options;
@end

@implementation AVFigRemoteRouteDiscovererFactory

- (OpaqueFigRouteDiscoverer)createRouteDiscovererWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options
{
  v4 = *MEMORY[0x1E695E480];
  FigRouteDiscovererXPCRemoteCreate();
  return 0;
}

@end