@interface AVMomentCaptureMovieRecordingSettings
+ (id)movieRecordingSettings;
+ (id)movieRecordingSettingsFromMomentCaptureSettings:(id)a3;
- (NSArray)movieMetadata;
- (NSArray)spatialOverCaptureMovieMetadata;
- (id)_initFromMomentCaptureSettings:(id)a3;
- (id)_sanitizedMovieMetadataArrayForMovieMetadataArray:(id)a3 exceptionReason:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)spatialOverCaptureGroupIdentifier;
- (void)dealloc;
- (void)setMovieMetadata:(id)a3;
- (void)setSpatialOverCaptureMovieMetadata:(id)a3;
- (void)setVideoCodecType:(id)a3;
@end

@implementation AVMomentCaptureMovieRecordingSettings

+ (id)movieRecordingSettingsFromMomentCaptureSettings:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) _initFromMomentCaptureSettings:a3];

  return v3;
}

+ (id)movieRecordingSettings
{
  v3 = +[AVMomentCaptureSettings settingsWithUserInitiatedCaptureTime:uniqueID:](AVMomentCaptureSettings, "settingsWithUserInitiatedCaptureTime:uniqueID:", mach_absolute_time(), +[AVCaptureMovieFileOutput uniqueID]);

  return [a1 movieRecordingSettingsFromMomentCaptureSettings:v3];
}

- (id)_initFromMomentCaptureSettings:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMomentCaptureMovieRecordingSettings;
  v4 = [(AVMomentCaptureMovieRecordingSettings *)&v6 init];
  if (v4)
  {
    v4->_uniqueID = [a3 uniqueID];
    v4->_userInitiatedCaptureTime = [a3 userInitiatedCaptureTime];
    v4->_videoCodecType = *MEMORY[0x1E6987CF0];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMomentCaptureMovieRecordingSettings;
  [(AVMomentCaptureMovieRecordingSettings *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVMomentCaptureMovieRecordingSettings alloc] _initFromMomentCaptureSettings:[AVMomentCaptureSettings settingsWithUserInitiatedCaptureTime:self->_userInitiatedCaptureTime]];
  v4[1] = self->_uniqueID;
  [v4 setVideoCodecType:self->_videoCodecType];
  [v4 setMovieFileURL:self->_movieFileURL];
  [v4 setMovieMetadata:self->_movieMetadata];
  [v4 setAutoSpatialOverCaptureEnabled:self->_autoSpatialOverCaptureEnabled];
  v4[7] = self->_spatialOverCaptureGroupIdentifier;
  [v4 setSpatialOverCaptureMovieFileURL:self->_spatialOverCaptureMovieFileURL];
  [v4 setSpatialOverCaptureMovieMetadata:self->_spatialOverCaptureMovieMetadata];
  return v4;
}

- (id)debugDescription
{
  if (self->_autoSpatialOverCaptureEnabled)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" soc:%@ %@", -[NSURL lastPathComponent](self->_spatialOverCaptureMovieFileURL, "lastPathComponent"), self->_spatialOverCaptureGroupIdentifier];
  }

  else
  {
    v3 = &stru_1F1CBCFE8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%lld %@ url:%@%@", self->_uniqueID, self->_videoCodecType, -[NSURL lastPathComponent](self->_movieFileURL, "lastPathComponent"), v3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVMomentCaptureMovieRecordingSettings debugDescription](self, "debugDescription")];
}

- (void)setVideoCodecType:(id)a3
{
  if (a3)
  {

    self->_videoCodecType = [a3 copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (id)spatialOverCaptureGroupIdentifier
{
  result = self->_spatialOverCaptureGroupIdentifier;
  if (!result)
  {
    result = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    self->_spatialOverCaptureGroupIdentifier = result;
  }

  return result;
}

- (NSArray)movieMetadata
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_movieMetadata, "count") + 1}];
  v4 = v3;
  if (self->_movieMetadata)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  if (self->_autoSpatialOverCaptureEnabled)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v5 setKeySpace:*MEMORY[0x1E6987850]];
    [v5 setKey:*MEMORY[0x1E69878F8]];
    [v5 setValue:{-[AVMomentCaptureMovieRecordingSettings spatialOverCaptureGroupIdentifier](self, "spatialOverCaptureGroupIdentifier")}];
    [(NSArray *)v4 addObject:v5];
  }

  return v4;
}

- (void)setMovieMetadata:(id)a3
{
  v7 = 0;
  v4 = [(AVMomentCaptureMovieRecordingSettings *)self _sanitizedMovieMetadataArrayForMovieMetadataArray:a3 exceptionReason:&v7];
  if (v7)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    v6 = v4;

    self->_movieMetadata = v6;
  }
}

- (NSArray)spatialOverCaptureMovieMetadata
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_spatialOverCaptureMovieMetadata, "count") + 2}];
  v4 = v3;
  if (self->_spatialOverCaptureMovieMetadata)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6988050]);
  v6 = *MEMORY[0x1E6987850];
  [v5 setKeySpace:*MEMORY[0x1E6987850]];
  [v5 setKey:*MEMORY[0x1E69878F8]];
  [v5 setValue:{-[AVMomentCaptureMovieRecordingSettings spatialOverCaptureGroupIdentifier](self, "spatialOverCaptureGroupIdentifier")}];
  [(NSArray *)v4 addObject:v5];

  v7 = objc_alloc_init(MEMORY[0x1E6988050]);
  [v7 setKeySpace:v6];
  [v7 setKey:*MEMORY[0x1E6987888]];
  [v7 setDataType:*MEMORY[0x1E69602A8]];
  [v7 setValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", 1)}];
  [(NSArray *)v4 addObject:v7];

  return v4;
}

- (void)setSpatialOverCaptureMovieMetadata:(id)a3
{
  v7 = 0;
  v4 = [(AVMomentCaptureMovieRecordingSettings *)self _sanitizedMovieMetadataArrayForMovieMetadataArray:a3 exceptionReason:&v7];
  if (v7)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    v6 = v4;

    self->_spatialOverCaptureMovieMetadata = v6;
  }
}

- (id)_sanitizedMovieMetadataArrayForMovieMetadataArray:(id)a3 exceptionReason:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = @"Array must only contain AVMetadataItems";
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_25:
          result = 0;
          if (a4)
          {
            *a4 = v9;
          }

          return result;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    v15 = *MEMORY[0x1E6987850];
    v16 = *MEMORY[0x1E69878F8];
    v17 = *MEMORY[0x1E6987888];
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        if ([objc_msgSend(v19 "keySpace")] && (objc_msgSend(objc_msgSend(v19, "key"), "isEqual:", v16) & 1) != 0)
        {
          v9 = @"AVMetadataKeySpaceQuickTimeMetadata/AVMetadataQuickTimeMetadataKeySpatialOverCaptureGroupIdentifier must not be specified";
          goto LABEL_25;
        }

        if ([objc_msgSend(v19 "keySpace")] && (objc_msgSend(objc_msgSend(v19, "key"), "isEqual:", v17) & 1) != 0)
        {
          v9 = @"AVMetadataKeySpaceQuickTimeMetadata/AVMetadataQuickTimeMetadataKeyContainsSpatialOverCaptureContent must not be specified";
          goto LABEL_25;
        }

        [v11 addObject:{objc_msgSend(v19, "copy")}];
      }

      v13 = [a3 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v11];
}

@end