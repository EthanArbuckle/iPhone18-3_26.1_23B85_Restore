@interface BKLibraryAssetIsNewManagerProgressInfo
- (BKLibraryAssetIsNewManagerProgressInfo)initWithReadingProgress:(double)progress highWaterMark:(double)mark;
@end

@implementation BKLibraryAssetIsNewManagerProgressInfo

- (BKLibraryAssetIsNewManagerProgressInfo)initWithReadingProgress:(double)progress highWaterMark:(double)mark
{
  v7.receiver = self;
  v7.super_class = BKLibraryAssetIsNewManagerProgressInfo;
  result = [(BKLibraryAssetIsNewManagerProgressInfo *)&v7 init];
  if (result)
  {
    result->_readingProgress = progress;
    result->_highWaterMark = mark;
  }

  return result;
}

@end