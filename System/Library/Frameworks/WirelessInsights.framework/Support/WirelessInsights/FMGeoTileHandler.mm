@interface FMGeoTileHandler
+ (void)cellularCoverageTileConfigurationAtLatitude:(double)a3 longitude:(double)a4 reason:(id)a5 completionHandler:(id)a6;
@end

@implementation FMGeoTileHandler

+ (void)cellularCoverageTileConfigurationAtLatitude:(double)a3 longitude:(double)a4 reason:(id)a5 completionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092428;
  v10[3] = &unk_1002AE438;
  v11 = a6;
  v9 = v11;
  [FMGEOServicesHandler getCellularCoverageTileConfigurationAtLatitude:0 longitude:a5 queue:v10 reason:a3 responseBlock:a4];
}

@end