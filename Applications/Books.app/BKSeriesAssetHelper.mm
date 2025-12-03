@interface BKSeriesAssetHelper
+ (signed)mappedAssetContentTypeFromRawItemType:(id)type;
- (BKSeriesAssetHelper)init;
@end

@implementation BKSeriesAssetHelper

+ (signed)mappedAssetContentTypeFromRawItemType:(id)type
{
  typeCopy = type;
  v4 = _s5Books17SeriesAssetHelperC06mappedC11ContentType4fromSo07BKAssetfG0VSo8NSNumberC_tFZ_0(typeCopy);

  return v4;
}

- (BKSeriesAssetHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SeriesAssetHelper();
  return [(BKSeriesAssetHelper *)&v3 init];
}

@end