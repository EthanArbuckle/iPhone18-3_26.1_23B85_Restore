@interface AVMomentCaptureMovie
+ (AVMomentCaptureMovie)movieWithResolvedSettings:(id)a3 outputFileURL:(id)a4 movieMetadata:(id)a5;
- (id)_initWithResolvedSettings:(id)a3 outputFileURL:(id)a4 movieMetadata:(id)a5;
- (id)debugDescription;
- (id)description;
- (void)_setDuration:(id *)a3;
- (void)_setPreviewPixelBuffer:(__CVBuffer *)a3;
- (void)dealloc;
@end

@implementation AVMomentCaptureMovie

+ (AVMomentCaptureMovie)movieWithResolvedSettings:(id)a3 outputFileURL:(id)a4 movieMetadata:(id)a5
{
  v5 = [[a1 alloc] _initWithResolvedSettings:a3 outputFileURL:a4 movieMetadata:a5];

  return v5;
}

- (id)_initWithResolvedSettings:(id)a3 outputFileURL:(id)a4 movieMetadata:(id)a5
{
  v22.receiver = self;
  v22.super_class = AVMomentCaptureMovie;
  v8 = [(AVMomentCaptureMovie *)&v22 init];
  if (v8)
  {
    v8->_resolvedSettings = a3;
    v8->_outputFileURL = a4;
    v8->_movieMetadata = a5;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = *MEMORY[0x1E69878F8];
      v13 = *MEMORY[0x1E6987888];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(a5);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([objc_msgSend(v15 "key")])
          {
            v8->_overCaptureGroupIdentifier = [v15 value];
          }

          else if ([objc_msgSend(v15 "key")])
          {
            v8->_hasOverCapture = [objc_msgSend(v15 "value")] != 0;
          }
        }

        v10 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v10);
    }
  }

  return v8;
}

- (void)dealloc
{
  previewPixelBuffer = self->_previewPixelBuffer;
  if (previewPixelBuffer)
  {
    CFRelease(previewPixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = AVMomentCaptureMovie;
  [(AVMomentCaptureMovie *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AVMomentCaptureMovieRecordingResolvedSettings *)self->_resolvedSettings uniqueID];
  v5 = [(NSURL *)self->_outputFileURL lastPathComponent];
  v6 = [(NSURL *)self->_debugMetadataSidecarFileURL lastPathComponent];
  time = self->_duration;
  return [v3 stringWithFormat:@"[%lld] url:%@ sidecar:%@ dur:%.3f preview:%p socgroup:%@ soc:%d", v4, v5, v6, CMTimeGetSeconds(&time), self->_previewPixelBuffer, self->_overCaptureGroupIdentifier, self->_hasOverCapture];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVMomentCaptureMovie debugDescription](self, "debugDescription")];
}

- (void)_setPreviewPixelBuffer:(__CVBuffer *)a3
{
  previewPixelBuffer = self->_previewPixelBuffer;
  self->_previewPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (previewPixelBuffer)
  {

    CFRelease(previewPixelBuffer);
  }
}

- (void)_setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
  *&self->_duration.value = v3;
}

@end