@interface AVMomentCaptureMovieRecordingResolvedSettings
+ (AVMomentCaptureMovieRecordingResolvedSettings)movieRecordingResolvedSettingsWithUniqueID:(int64_t)d torchEnabled:(BOOL)enabled movieURL:(id)l spatialOverCaptureURL:(id)rL movieDimensions:(id)dimensions;
- (id)_initWithUniqueID:(int64_t)d torchEnabled:(BOOL)enabled movieURL:(id)l spatialOverCaptureURL:(id)rL movieDimensions:(id)dimensions;
- (id)description;
- (void)dealloc;
@end

@implementation AVMomentCaptureMovieRecordingResolvedSettings

+ (AVMomentCaptureMovieRecordingResolvedSettings)movieRecordingResolvedSettingsWithUniqueID:(int64_t)d torchEnabled:(BOOL)enabled movieURL:(id)l spatialOverCaptureURL:(id)rL movieDimensions:(id)dimensions
{
  v7 = [objc_alloc(objc_opt_class()) _initWithUniqueID:d torchEnabled:enabled movieURL:l spatialOverCaptureURL:rL movieDimensions:dimensions];

  return v7;
}

- (id)_initWithUniqueID:(int64_t)d torchEnabled:(BOOL)enabled movieURL:(id)l spatialOverCaptureURL:(id)rL movieDimensions:(id)dimensions
{
  v15.receiver = self;
  v15.super_class = AVMomentCaptureMovieRecordingResolvedSettings;
  v12 = [(AVMomentCaptureMovieRecordingResolvedSettings *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_uniqueID = d;
    v12->_torchEnabled = enabled;
    v12->_movieURL = [l copy];
    v13->_spatialOverCaptureURL = [rL copy];
    v13->_movieDimensions = dimensions;
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