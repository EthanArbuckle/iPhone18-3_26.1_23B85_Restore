@interface LPDownloadProgress
- (LPDownloadProgress)initWithProgress:(double)progress subtitle:(id)subtitle isFinished:(BOOL)finished;
@end

@implementation LPDownloadProgress

- (LPDownloadProgress)initWithProgress:(double)progress subtitle:(id)subtitle isFinished:(BOOL)finished
{
  subtitleCopy = subtitle;
  v14.receiver = self;
  v14.super_class = LPDownloadProgress;
  v10 = [(LPDownloadProgress *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_progress = progress;
    objc_storeStrong(&v10->_subtitle, subtitle);
    v11->_isFinished = finished;
    v12 = v11;
  }

  return v11;
}

@end