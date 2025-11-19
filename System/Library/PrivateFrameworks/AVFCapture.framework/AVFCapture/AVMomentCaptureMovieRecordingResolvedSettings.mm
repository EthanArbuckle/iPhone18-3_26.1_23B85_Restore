@interface AVMomentCaptureMovieRecordingResolvedSettings
+ (AVMomentCaptureMovieRecordingResolvedSettings)movieRecordingResolvedSettingsWithUniqueID:(int64_t)a3 torchEnabled:(BOOL)a4 movieURL:(id)a5 spatialOverCaptureURL:(id)a6 movieDimensions:(id)a7;
- (id)_initWithUniqueID:(int64_t)a3 torchEnabled:(BOOL)a4 movieURL:(id)a5 spatialOverCaptureURL:(id)a6 movieDimensions:(id)a7;
- (id)description;
- (void)dealloc;
@end

@implementation AVMomentCaptureMovieRecordingResolvedSettings

+ (AVMomentCaptureMovieRecordingResolvedSettings)movieRecordingResolvedSettingsWithUniqueID:(int64_t)a3 torchEnabled:(BOOL)a4 movieURL:(id)a5 spatialOverCaptureURL:(id)a6 movieDimensions:(id)a7
{
  v7 = [objc_alloc(objc_opt_class()) _initWithUniqueID:a3 torchEnabled:a4 movieURL:a5 spatialOverCaptureURL:a6 movieDimensions:a7];

  return v7;
}

- (id)_initWithUniqueID:(int64_t)a3 torchEnabled:(BOOL)a4 movieURL:(id)a5 spatialOverCaptureURL:(id)a6 movieDimensions:(id)a7
{
  v15.receiver = self;
  v15.super_class = AVMomentCaptureMovieRecordingResolvedSettings;
  v12 = [(AVMomentCaptureMovieRecordingResolvedSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_uniqueID = a3;
    v12->_torchEnabled = a4;
    v12->_movieURL = [a5 copy];
    v13->_spatialOverCaptureURL = [a6 copy];
    v13->_movieDimensions = a7;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMomentCaptureMovieRecordingResolvedSettings;
  [(AVMomentCaptureMovieRecordingResolvedSettings *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVMomentCaptureMovieRecordingResolvedSettings debugDescription](self, "debugDescription")];
}

@end