@interface FMGeoTileHandler
+ (void)cellularCoverageTileConfigurationAtLatitude:(double)latitude longitude:(double)longitude reason:(id)reason completionHandler:(id)handler;
@end

@implementation FMGeoTileHandler

+ (void)cellularCoverageTileConfigurationAtLatitude:(double)latitude longitude:(double)longitude reason:(id)reason completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092428;
  v10[3] = &unk_1002AE438;
  handlerCopy = handler;
  v9 = handlerCopy;
  [FMGEOServicesHandler getCellularCoverageTileConfigurationAtLatitude:0 longitude:reason queue:v10 reason:latitude responseBlock:longitude];
}

@end