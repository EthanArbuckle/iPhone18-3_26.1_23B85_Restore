@interface VKRouteContext
@end

@implementation VKRouteContext

void __95__VKRouteContext_MKMapViewRouteContextUpdates___setRouteContextAnnotationTexts_forLegsInRoute___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E69DF490]) initWithEtaText:v5 etaAdvisoryStyleAttributes:0 routeEtaType:3];
    v7 = [objc_alloc(MEMORY[0x1E69DF498]) initWithEtaDescription:v6 start:objc_msgSend(v8 end:{"startRouteCoordinate"), objc_msgSend(v8, "endRouteCoordinate")}];
    [*(a1 + 40) addObject:v7];
  }
}

@end