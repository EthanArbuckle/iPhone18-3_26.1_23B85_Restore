@interface PHFetchResultMediaTypeCounts
+ (PHFetchResultMediaTypeCounts)mediaTypeCountsWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount audiosCount:(unint64_t)audiosCount;
- (PHFetchResultMediaTypeCounts)initWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount audiosCount:(unint64_t)audiosCount;
@end

@implementation PHFetchResultMediaTypeCounts

- (PHFetchResultMediaTypeCounts)initWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount audiosCount:(unint64_t)audiosCount
{
  if (count == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"photosCount != NSNotFound"}];
  }

  if (videosCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"videosCount != NSNotFound"}];
  }

  if (audiosCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"audiosCount != NSNotFound"}];
  }

  v17.receiver = self;
  v17.super_class = PHFetchResultMediaTypeCounts;
  v10 = [(PHFetchResultMediaTypeCounts *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_photosCount = count;
    v10->_videosCount = videosCount;
    v10->_audiosCount = audiosCount;
    v12 = v10;
  }

  return v11;
}

+ (PHFetchResultMediaTypeCounts)mediaTypeCountsWithPhotosCount:(unint64_t)count videosCount:(unint64_t)videosCount audiosCount:(unint64_t)audiosCount
{
  if (count == 0x7FFFFFFFFFFFFFFFLL && videosCount == 0x7FFFFFFFFFFFFFFFLL && audiosCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[self alloc] initWithPhotosCount:count videosCount:videosCount audiosCount:audiosCount];
  }

  return v8;
}

@end