@interface AVFigRemoteRouteDiscovererFactory
- (OpaqueFigRouteDiscoverer)createRouteDiscovererWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4;
@end

@implementation AVFigRemoteRouteDiscovererFactory

- (OpaqueFigRouteDiscoverer)createRouteDiscovererWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4
{
  v4 = *MEMORY[0x1E695E480];
  FigRouteDiscovererXPCRemoteCreate();
  return 0;
}

@end