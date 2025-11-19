@interface BKSeriesAssetHelper
+ (signed)mappedAssetContentTypeFromRawItemType:(id)a3;
- (BKSeriesAssetHelper)init;
@end

@implementation BKSeriesAssetHelper

+ (signed)mappedAssetContentTypeFromRawItemType:(id)a3
{
  v3 = a3;
  v4 = _s5Books17SeriesAssetHelperC06mappedC11ContentType4fromSo07BKAssetfG0VSo8NSNumberC_tFZ_0(v3);

  return v4;
}

- (BKSeriesAssetHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SeriesAssetHelper();
  return [(BKSeriesAssetHelper *)&v3 init];
}

@end