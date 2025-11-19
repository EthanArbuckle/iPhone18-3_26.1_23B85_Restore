@interface BKLibraryAssetIsNewManagerProgressInfo
- (BKLibraryAssetIsNewManagerProgressInfo)initWithReadingProgress:(double)a3 highWaterMark:(double)a4;
@end

@implementation BKLibraryAssetIsNewManagerProgressInfo

- (BKLibraryAssetIsNewManagerProgressInfo)initWithReadingProgress:(double)a3 highWaterMark:(double)a4
{
  v7.receiver = self;
  v7.super_class = BKLibraryAssetIsNewManagerProgressInfo;
  result = [(BKLibraryAssetIsNewManagerProgressInfo *)&v7 init];
  if (result)
  {
    result->_readingProgress = a3;
    result->_highWaterMark = a4;
  }

  return result;
}

@end