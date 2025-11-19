@interface LPDownloadProgress
- (LPDownloadProgress)initWithProgress:(double)a3 subtitle:(id)a4 isFinished:(BOOL)a5;
@end

@implementation LPDownloadProgress

- (LPDownloadProgress)initWithProgress:(double)a3 subtitle:(id)a4 isFinished:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = LPDownloadProgress;
  v10 = [(LPDownloadProgress *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_progress = a3;
    objc_storeStrong(&v10->_subtitle, a4);
    v11->_isFinished = a5;
    v12 = v11;
  }

  return v11;
}

@end