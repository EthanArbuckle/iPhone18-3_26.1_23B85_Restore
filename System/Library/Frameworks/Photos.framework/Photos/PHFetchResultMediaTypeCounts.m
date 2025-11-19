@interface PHFetchResultMediaTypeCounts
+ (PHFetchResultMediaTypeCounts)mediaTypeCountsWithPhotosCount:(unint64_t)a3 videosCount:(unint64_t)a4 audiosCount:(unint64_t)a5;
- (PHFetchResultMediaTypeCounts)initWithPhotosCount:(unint64_t)a3 videosCount:(unint64_t)a4 audiosCount:(unint64_t)a5;
@end

@implementation PHFetchResultMediaTypeCounts

- (PHFetchResultMediaTypeCounts)initWithPhotosCount:(unint64_t)a3 videosCount:(unint64_t)a4 audiosCount:(unint64_t)a5
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"photosCount != NSNotFound"}];
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"videosCount != NSNotFound"}];
  }

  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHFetchResultMediaTypeCounts.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"audiosCount != NSNotFound"}];
  }

  v17.receiver = self;
  v17.super_class = PHFetchResultMediaTypeCounts;
  v10 = [(PHFetchResultMediaTypeCounts *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_photosCount = a3;
    v10->_videosCount = a4;
    v10->_audiosCount = a5;
    v12 = v10;
  }

  return v11;
}

+ (PHFetchResultMediaTypeCounts)mediaTypeCountsWithPhotosCount:(unint64_t)a3 videosCount:(unint64_t)a4 audiosCount:(unint64_t)a5
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL && a4 == 0x7FFFFFFFFFFFFFFFLL && a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[a1 alloc] initWithPhotosCount:a3 videosCount:a4 audiosCount:a5];
  }

  return v8;
}

@end