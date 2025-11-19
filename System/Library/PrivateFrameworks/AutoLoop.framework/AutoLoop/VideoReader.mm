@interface VideoReader
- (VideoReader)initWithAsset:(id)a3;
- (id)initFromFile:(id)a3;
- (int)buildAssetReader;
- (int)getFrame:(CGImage *)a3;
- (int)getFrameAsSampleBuf:(opaqueCMSampleBuffer *)a3;
- (int)getFrameAtTime:(id *)a3 exactTime:(BOOL)a4 frame:(opaqueCMSampleBuffer *)a5;
- (int)reset;
- (int)skipFrames:(unsigned int)a3;
- (opaqueCMSampleBuffer)nextSampleBuf;
- (void)dealloc;
- (void)fireReadahead;
- (void)setReadAheadEnable:(BOOL)a3;
@end

@implementation VideoReader

- (VideoReader)initWithAsset:(id)a3
{
  v5 = a3;
  asset = self->asset;
  self->asset = 0;

  videoTrack = self->videoTrack;
  self->videoTrack = 0;

  assetReader = self->assetReader;
  self->assetReader = 0;

  trackOutput = self->trackOutput;
  self->trackOutput = 0;

  self->readStart = 0.0;
  self->readLength = 0.0;
  v10 = MEMORY[0x277CC08F0];
  self->trackStart = 0.0;
  self->trackLength = 0.0;
  v11 = *v10;
  *&self->trackStartT.value = *v10;
  v12 = *(v10 + 2);
  v13 = MEMORY[0x277CC08B0];
  self->trackStartT.epoch = v12;
  v14 = *v13;
  *&self->trackLengthT.value = *v13;
  v15 = *(v13 + 2);
  self->trackLengthT.epoch = v15;
  *&self->readStartT.value = v11;
  self->readStartT.epoch = v12;
  *&self->readLengthT.value = v14;
  self->readLengthT.epoch = v15;
  self->fullRangeVideo = 0;
  self->_lastFrame = 0;
  self->_readaheadBuf = 0;
  [(VideoReader *)self setPixelFormatOptions:193];
  self->_readAheadEnable = 0;
  [(VideoReader *)self setReadAheadEnable:1];
  objc_storeStrong(&self->asset, a3);
  v16 = self->asset;
  if (v16)
  {
    v17 = [(AVAsset *)v16 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    v18 = v17;
    if (!v17 || ![v17 count])
    {
      NSLog(&cfstr_AssetHasNoVide_0.isa);
      goto LABEL_43;
    }

    if ([v18 count] != 1)
    {
      NSLog(&cfstr_AssetHasMultip.isa);
      goto LABEL_43;
    }

    v19 = [v18 objectAtIndex:0];
    v20 = self->videoTrack;
    self->videoTrack = v19;

    v21 = self->videoTrack;
    if (!v21)
    {
      NSLog(&cfstr_InternalErrorA.isa);
      goto LABEL_43;
    }

    memset(v60, 0, sizeof(v60));
    v59 = 0u;
    [(AVAssetTrack *)v21 timeRange];
    *&self->trackStartT.value = v59;
    self->trackStartT.epoch = *&v60[0];
    v22 = *(v60 + 8);
    *&self->trackLengthT.value = *(v60 + 8);
    v23 = *(&v60[1] + 1);
    self->trackLengthT.epoch = *(&v60[1] + 1);
    *time = v22;
    *&time[16] = v23;
    Seconds = CMTimeGetSeconds(time);
    self->trackLength = Seconds;
    *time = *&self->trackStartT.value;
    *&time[16] = self->trackStartT.epoch;
    v25 = CMTimeGetSeconds(time);
    self->trackStart = v25;
    self->timeScale = [(AVAssetTrack *)self->videoTrack naturalTimeScale];
    [(AVAssetTrack *)self->videoTrack nominalFrameRate];
    self->fps = v26;
    v27 = self->videoTrack;
    if (v27)
    {
      [(AVAssetTrack *)v27 minFrameDuration];
      v28 = self->videoTrack;
      *&self->minFrameDuration.value = *time;
      self->minFrameDuration.epoch = *&time[16];
      p_preferredTransform = &self->preferredTransform;
      if (v28)
      {
        [(AVAssetTrack *)v28 preferredTransform];
        goto LABEL_15;
      }
    }

    else
    {
      self->minFrameDuration.value = 0;
      *&self->minFrameDuration.timescale = 0;
      p_preferredTransform = &self->preferredTransform;
      self->minFrameDuration.epoch = 0;
    }

    v58 = 0u;
    memset(time, 0, sizeof(time));
LABEL_15:
    v31 = *time;
    v32 = v58;
    *&p_preferredTransform->c = *&time[16];
    *&p_preferredTransform->tx = v32;
    *&p_preferredTransform->a = v31;
    v33 = [(AVAssetTrack *)self->videoTrack formatDescriptions];
    formatDescriptions = self->formatDescriptions;
    self->formatDescriptions = v33;

    v35 = self->formatDescriptions;
    if (v35)
    {
      v36 = [(NSArray *)v35 count];
      v37 = v36 != 0;
      v38 = MEMORY[0x277CC0318];
      if (v36)
      {
        v39 = [(NSArray *)self->formatDescriptions objectAtIndex:0];
        CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v39, 0);
        width = CleanAperture.size.width;
        height = CleanAperture.size.height;
        Extension = CMFormatDescriptionGetExtension(v39, *v38);
        v56 = width;
        v43 = height;
        if (Extension)
        {
          v44 = CFBooleanGetValue(Extension) != 0;
          v45 = 1;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }
      }

      else
      {
        v45 = 0;
        v44 = 0;
        v43 = 0;
        v56 = 0;
      }

      if ([(NSArray *)self->formatDescriptions count]>= 2)
      {
        v46 = *v38;
        v47 = 1;
        do
        {
          v48 = v37;
          v49 = [(NSArray *)self->formatDescriptions objectAtIndex:v47];
          v62 = CMVideoFormatDescriptionGetCleanAperture(v49, 0);
          v50 = v62.size.width;
          v51 = v62.size.height;
          v52 = CMFormatDescriptionGetExtension(v49, v46);
          v37 = 0;
          if ((v48 & 1) != 0 && v51 == v43 && v50 == v56)
          {
            v54 = v52 ? v45 ^ 1 : 1;
            v37 = v52 ? 0 : v45 ^ 1;
            if ((v54 & 1) == 0)
            {
              v37 = CFBooleanGetValue(v52) == v44;
            }
          }

          ++v47;
        }

        while ([(NSArray *)self->formatDescriptions count]> v47);
      }

      if (v37)
      {
        self->imageWidth = v56;
        self->imageHeight = v43;
        if (v45)
        {
          self->fullRangeVideo = v44;
        }

        else
        {
          NSLog(&cfstr_WarningNoKcmfo.isa);
        }

        v30 = self;
        goto LABEL_44;
      }

      NSLog(&cfstr_UnexpectedForm.isa, [(NSArray *)self->formatDescriptions count]);
    }

    else
    {
      NSLog(&cfstr_ErrorObtaining.isa);
    }

LABEL_43:
    v30 = 0;
LABEL_44:

    goto LABEL_45;
  }

  NSLog(&cfstr_ErrorAvassetIs.isa);
  v30 = 0;
LABEL_45:

  return v30;
}

- (id)initFromFile:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE63D8] assetWithURL:v4];
  if (v5)
  {
    self = [(VideoReader *)self initWithAsset:v5];
    v6 = self;
  }

  else
  {
    NSLog(&cfstr_ErrorOpeningAv.isa, [v4 fileSystemRepresentation]);
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(VideoReader *)self readaheadLock];
  [v3 lock];

  if ([(VideoReader *)self readaheadBuf])
  {
    CFRelease([(VideoReader *)self readaheadBuf]);
    [(VideoReader *)self setReadaheadBuf:0];
  }

  v4 = [(VideoReader *)self readaheadLock];
  [v4 unlock];

  if ([(VideoReader *)self lastFrame])
  {
    CFRelease([(VideoReader *)self lastFrame]);
    [(VideoReader *)self setLastFrame:0];
  }

  v5.receiver = self;
  v5.super_class = VideoReader;
  [(VideoReader *)&v5 dealloc];
}

- (int)buildAssetReader
{
  if (!self->assetReader)
  {
    asset = self->asset;
    v23 = 0;
    v5 = [MEMORY[0x277CE6410] assetReaderWithAsset:asset error:&v23];
    v6 = v23;
    v7 = v23;
    assetReader = self->assetReader;
    self->assetReader = v5;

    if (!self->assetReader)
    {
      objc_storeStrong(&self->lastError, v6);
      NSLog(&cfstr_ErrorCreatingA.isa);
      v2 = -1;
LABEL_26:

      return v2;
    }

    *&time1.start.value = *&self->readStartT.value;
    time1.start.epoch = self->readStartT.epoch;
    v19 = *MEMORY[0x277CC08F0];
    *&time2.start.value = *MEMORY[0x277CC08F0];
    v9 = *(MEMORY[0x277CC08F0] + 16);
    time2.start.epoch = v9;
    if (CMTimeCompare(&time1.start, &time2.start) && (*&time1.start.value = *&self->readLengthT.value, time1.start.epoch = self->readLengthT.epoch, v18 = *MEMORY[0x277CC08B0], *&time2.start.value = *MEMORY[0x277CC08B0], v10 = *(MEMORY[0x277CC08B0] + 16), time2.start.epoch = v10, CMTimeCompare(&time1.start, &time2.start)))
    {
      readStart = self->readStart;
      if (readStart == 0.0 && self->readLength == 0.0)
      {
LABEL_17:
        v13 = sub_241903CF4([(VideoReader *)self pixelFormatOptions], 1);
        v14 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:self->videoTrack outputSettings:v13];
        trackOutput = self->trackOutput;
        self->trackOutput = v14;

        if (([(VideoReader *)self pixelFormatOptions]& 0x400) != 0)
        {
          [(AVAssetReaderOutput *)self->trackOutput setAlwaysCopiesSampleData:0];
        }

        if ([(AVAssetReader *)self->assetReader canAddOutput:self->trackOutput])
        {
          [(AVAssetReader *)self->assetReader addOutput:self->trackOutput];
          if ([(AVAssetReader *)self->assetReader startReading])
          {
            v2 = 0;
LABEL_25:

            goto LABEL_26;
          }

          NSLog(&cfstr_StartreadingFa.isa);
          v16 = [(AVAssetReader *)self->assetReader error];
          NSLog(&cfstr_AssetreaderErr.isa, v16);
        }

        else
        {
          NSLog(&cfstr_CanTAddAvasset.isa);
        }

        v2 = -1;
        goto LABEL_25;
      }

      memset(&time1, 0, sizeof(time1));
      if (readStart == 0.0)
      {
        *&time1.start.value = v19;
        time1.start.epoch = v9;
      }

      else
      {
        CMTimeMakeWithSeconds(&time1.start, readStart, self->timeScale);
      }

      readLength = self->readLength;
      if (readLength == 0.0)
      {
        *&time1.duration.value = v18;
        time1.duration.epoch = v10;
      }

      else
      {
        CMTimeMakeWithSeconds(&time2.start, readLength, self->timeScale);
        time1.duration = time2.start;
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      *&time2.start.value = *&self->readStartT.value;
      time2.start.epoch = self->readStartT.epoch;
      duration = self->readLengthT;
      CMTimeRangeMake(&time1, &time2.start, &duration);
    }

    time2 = time1;
    [(AVAssetReader *)self->assetReader setTimeRange:&time2];
    goto LABEL_17;
  }

  return 0;
}

- (int)getFrame:(CGImage *)a3
{
  if ([(VideoReader *)self buildAssetReader])
  {
    return 2;
  }

  lastError = self->lastError;
  self->lastError = 0;

  v7 = 1000;
  while (1)
  {
    v8 = [(AVAssetReaderOutput *)self->trackOutput copyNextSampleBuffer];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    NumSamples = CMSampleBufferGetNumSamples(v8);
    if (NumSamples)
    {
      if (NumSamples != 1)
      {
        NSLog(&cfstr_GetframeNumsam_0.isa, NumSamples);
        CFRelease(v9);
        return 2;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v9);
      CleanRect = CVImageBufferGetCleanRect(ImageBuffer);
      if (ImageBuffer)
      {
        x = CleanRect.origin.x;
        y = CleanRect.origin.y;
        width = CleanRect.size.width;
        height = CleanRect.size.height;
        v16 = CVPixelBufferGetWidth(ImageBuffer);
        v17 = CVPixelBufferGetHeight(ImageBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
        PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
        switch(PixelFormatType)
        {
          case 0x42475241:
            v24 = 8198;
            goto LABEL_21;
          case 0x20:
            v24 = 16386;
            goto LABEL_21;
          case 0x18:
            v24 = 16389;
LABEL_21:
            CVPixelBufferLockBaseAddress(ImageBuffer, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(ImageBuffer);
            if (BaseAddress || (BaseAddress = CVPixelBufferGetBaseAddressOfPlane(ImageBuffer, 0)) != 0)
            {
              v30 = BaseAddress;
              DeviceRGB = CGColorSpaceCreateDeviceRGB();
              v32 = CGBitmapContextCreate(v30, v16, v17, 8uLL, BytesPerRow, DeviceRGB, v24);
              v33 = v32;
              if (v32)
              {
                CGContextSetInterpolationQuality(v32, kCGInterpolationNone);
                CGContextSetShouldAntialias(v33, 0);
                Image = CGBitmapContextCreateImage(v33);
                if (Image)
                {
                  v35 = Image;
                  v39.origin.x = x;
                  v39.origin.y = y;
                  v39.size.width = width;
                  v39.size.height = height;
                  v36 = CGImageCreateWithImageInRect(Image, v39);
                  CGImageRelease(v35);
LABEL_31:
                  CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
                  CGColorSpaceRelease(DeviceRGB);
                  if (v33)
                  {
                    CFRelease(v33);
                  }

LABEL_33:
                  *a3 = v36;
                  CMSampleBufferGetPresentationTimeStamp(&v37, v9);
                  self->lastPresentationTime = v37;
                  CFRelease(v9);
                  return 2 * (*a3 == 0);
                }

                NSLog(&cfstr_VideoreaderErr_0.isa);
              }

              else
              {
                NSLog(&cfstr_VideoreaderErr.isa);
              }

              v36 = 0;
              goto LABEL_31;
            }

            CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
            puts("***VideoReader: NULL base address");
            break;
          default:
            NSLog(&cfstr_VideoreaderUnk.isa, v20, v21, v22, v23, PixelFormatType);
            break;
        }
      }

      else
      {
        NSLog(&cfstr_VideoreaderNoC.isa, CleanRect.origin.x, CleanRect.origin.y, CleanRect.size.width, CleanRect.size.height);
      }

      v36 = 0;
      goto LABEL_33;
    }

    CFRelease(v9);
    if (!--v7)
    {
      NSLog(&cfstr_GetframeNumsam.isa);
      return 2;
    }
  }

  if ([(AVAssetReader *)self->assetReader status]== AVAssetReaderStatusFailed)
  {
    NSLog(&cfstr_GetframeAvasse.isa);
    v25 = [(AVAssetReader *)self->assetReader error];
    v26 = self->lastError;
    self->lastError = v25;

    return 2;
  }

  [(AVAssetReader *)self->assetReader cancelReading];
  assetReader = self->assetReader;
  self->assetReader = 0;

  trackOutput = self->trackOutput;
  self->trackOutput = 0;

  return 1;
}

- (opaqueCMSampleBuffer)nextSampleBuf
{
  if (self->_readAheadEnable)
  {
    v3 = [(VideoReader *)self readaheadLock];
    [v3 lock];

    v4 = [(VideoReader *)self readaheadState];
    if (v4)
    {
      while (v4 == 1)
      {
        v5 = [(VideoReader *)self readaheadLock];
        [v5 wait];

        v4 = [(VideoReader *)self readaheadState];
      }
    }

    else
    {
      [(VideoReader *)self setReadaheadBuf:[(AVAssetReaderOutput *)self->trackOutput copyNextSampleBuffer]];
    }

    v8 = [(VideoReader *)self readaheadBuf];
    [(VideoReader *)self setReadaheadBuf:0];
    if (v8)
    {
      [(VideoReader *)self fireReadahead];
    }

    else
    {
      [(VideoReader *)self setReadaheadState:3];
    }

    v9 = [(VideoReader *)self readaheadLock];
    [v9 unlock];

    return v8;
  }

  else
  {
    trackOutput = self->trackOutput;

    return [(AVAssetReaderOutput *)trackOutput copyNextSampleBuffer];
  }
}

- (void)fireReadahead
{
  [(VideoReader *)self setReadaheadState:1];
  v3 = qos_class_self();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24190440C;
  block[3] = &unk_278CF7FA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (int)getFrameAsSampleBuf:(opaqueCMSampleBuffer *)a3
{
  if ([(VideoReader *)self buildAssetReader])
  {
    return 2;
  }

  lastError = self->lastError;
  self->lastError = 0;

  v7 = 1000;
  while (1)
  {
    v8 = [(VideoReader *)self nextSampleBuf];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    NumSamples = CMSampleBufferGetNumSamples(v8);
    if (NumSamples)
    {
      if (NumSamples == 1)
      {
        *a3 = v9;
        CMSampleBufferGetPresentationTimeStamp(&v17, v9);
        result = 0;
        self->lastPresentationTime = v17;
        return result;
      }

      NSLog(&cfstr_Getframeassamp_1.isa, NumSamples);
      CFRelease(v9);
      return 2;
    }

    CFRelease(v9);
    if (!--v7)
    {
      NSLog(&cfstr_Getframeassamp_0.isa);
      return 2;
    }
  }

  v11 = [(AVAssetReader *)self->assetReader status];
  assetReader = self->assetReader;
  if (v11 == AVAssetReaderStatusFailed)
  {
    v13 = [(AVAssetReader *)assetReader error];
    v14 = self->lastError;
    self->lastError = v13;

    NSLog(&cfstr_Getframeassamp.isa, self->lastError);
    return 2;
  }

  [(AVAssetReader *)assetReader cancelReading];
  v15 = self->assetReader;
  self->assetReader = 0;

  trackOutput = self->trackOutput;
  self->trackOutput = 0;

  return 1;
}

- (int)getFrameAtTime:(id *)a3 exactTime:(BOOL)a4 frame:(opaqueCMSampleBuffer *)a5
{
  v6 = a4;
  if (![(VideoReader *)self lastFrame])
  {
    goto LABEL_12;
  }

  CMSampleBufferGetPresentationTimeStamp(&time1, [(VideoReader *)self lastFrame]);
  time2 = *a3;
  v9 = CMTimeCompare(&time1, &time2);
  if (v9 < 0)
  {
    if ([(VideoReader *)self lastFrame])
    {
      CFRelease([(VideoReader *)self lastFrame]);
      [(VideoReader *)self setLastFrame:0];
    }

LABEL_12:
    while (1)
    {
      cf = 0;
      result = [(VideoReader *)self getFrameAsSampleBuf:&cf];
      if (result)
      {
        break;
      }

      time1 = self->lastPresentationTime;
      time2 = *a3;
      v12 = CMTimeCompare(&time1, &time2);
      if ((v12 & 0x80000000) == 0)
      {
        if (v12 && v6)
        {
          CFRelease(cf);
          return 2;
        }

        *a5 = cf;
        [(VideoReader *)self setLastFrame:?];
        goto LABEL_19;
      }

      CFRelease(cf);
    }
  }

  else
  {
    v10 = v9;
    v11 = [(VideoReader *)self lastFrame];
    if (v10 && v6)
    {
      if (v11)
      {
        CFRelease([(VideoReader *)self lastFrame]);
        [(VideoReader *)self setLastFrame:0];
      }

      return 2;
    }

    else
    {
      *a5 = v11;
LABEL_19:
      CFRetain([(VideoReader *)self lastFrame]);
      return 0;
    }
  }

  return result;
}

- (void)setReadAheadEnable:(BOOL)a3
{
  self->_readAheadEnable = a3;
  if (a3)
  {
    [(VideoReader *)self setReadaheadState:0];
    v4 = objc_alloc_init(MEMORY[0x277CCA928]);
    [(VideoReader *)self setReadaheadLock:v4];
  }
}

- (int)reset
{
  assetReader = self->assetReader;
  if (assetReader)
  {
    self->assetReader = 0;
  }

  trackOutput = self->trackOutput;
  self->trackOutput = 0;

  return 0;
}

- (int)skipFrames:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    cf = 0;
    result = [(VideoReader *)self getFrameAsSampleBuf:&cf];
    if (result)
    {
      break;
    }

    CFRelease(cf);
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

@end