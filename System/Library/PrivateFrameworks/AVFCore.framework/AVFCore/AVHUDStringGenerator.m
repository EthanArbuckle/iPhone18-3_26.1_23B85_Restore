@interface AVHUDStringGenerator
+ (id)descriptionStringForBitRate:(double)a3;
+ (id)descriptionStringForFormatOfTrack:(id)a3;
+ (id)descriptionStringForTracksOfPlayerItem:(id)a3;
+ (id)descriptionStringForVideoRangeOfFormatDescription:(opaqueCMFormatDescription *)a3;
- (NSString)formattedDisplayString;
- (void)dealloc;
- (void)update;
- (void)updateFromPlayer;
- (void)updateFromPlayerItem;
@end

@implementation AVHUDStringGenerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVHUDStringGenerator;
  [(AVHUDStringGenerator *)&v3 dealloc];
}

+ (id)descriptionStringForFormatOfTrack:(id)a3
{
  if ([a3 statusOfValueForKey:@"formatDescriptions" error:0] == 2)
  {
    v4 = [a3 formatDescriptions];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 count];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        key = *MEMORY[0x1E6962748];
        while (1)
        {
          v9 = [v5 objectAtIndex:v8];
          MediaType = CMFormatDescriptionGetMediaType(v9);
          v22 = bswap32(CMFormatDescriptionGetMediaSubType(v9));
          v11 = 0;
          if ([a3 statusOfValueForKey:@"languageCode" error:0] == 2)
          {
            v11 = [a3 languageCode];
          }

          v12 = @"video format desc ";
          if (MediaType != 1986618469)
          {
            v12 = @"audio format desc ";
            if (MediaType != 1936684398)
            {
              break;
            }
          }

          v13 = [MEMORY[0x1E696AD60] stringWithString:v12];
          v14 = v13;
          if (v11)
          {
            [v13 appendFormat:@"(%@) ", v11];
          }

          if (v7 != 1)
          {
            [v14 appendFormat:@"%d ", v8 + 1];
          }

          [v14 appendFormat:@"- codec:%.4s ", &v22];
          if (MediaType == 1986618469)
          {
            [v14 appendFormat:@"video-range:%@", +[AVHUDStringGenerator descriptionStringForVideoRangeOfFormatDescription:](AVHUDStringGenerator, "descriptionStringForVideoRangeOfFormatDescription:", v9)];
            Extensions = CMFormatDescriptionGetExtensions(v9);
            if (Extensions)
            {
              Value = CFDictionaryGetValue(Extensions, key);
              if (Value)
              {
                v17 = Value;
                if (runningAnInternalBuild_onceToken != -1)
                {
                  +[AVHUDStringGenerator descriptionStringForFormatOfTrack:];
                }

                if (runningAnInternalBuild_internalBuild == 1)
                {
                  [v14 appendFormat:@", bit-depth:%@", v17];
                }
              }
            }
          }

          else
          {
            RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v9);
            if (RichestDecodableFormat)
            {
              p_mSampleRate = &RichestDecodableFormat->mASBD.mSampleRate;
              [v14 appendFormat:@", channels:%u", RichestDecodableFormat->mASBD.mChannelsPerFrame];
              [v14 appendFormat:@", sample-rate:%uHz", *p_mSampleRate];
            }
          }

          [v14 appendString:@"\n"];
          if (v7 == ++v8)
          {
            return v14;
          }
        }
      }
    }
  }

  return 0;
}

+ (id)descriptionStringForBitRate:(double)a3
{
  v5 = a3 / 1000.0;
  if (a3 / 1000.0 <= 1.0)
  {
    v6 = @"bps";
  }

  else
  {
    a3 = v5 / 1000.0;
    if (v5 / 1000.0 <= 1.0)
    {
      v6 = @"kbps";
      a3 = v5;
    }

    else
    {
      v6 = @"Mbps";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f%@", *&a3, v6, v3, v4];
}

+ (id)descriptionStringForVideoRangeOfFormatDescription:(opaqueCMFormatDescription *)a3
{
  v3 = CMVideoFormatDescriptionGetVideoDynamicRange() - 1;
  if (v3 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7465ED0[v3];
  }
}

+ (id)descriptionStringForTracksOfPlayerItem:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] string];
  [v4 setString:@"average bitrate "];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 tracks];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 assetTrack];
        if ([v10 isEnabled])
        {
          if ([v11 statusOfValueForKey:@"mediaType" error:0] == 2 && objc_msgSend(v11, "statusOfValueForKey:error:", @"estimatedDataRate", 0) == 2)
          {
            v12 = [v11 mediaType];
            v13 = [v12 isEqualToString:@"vide"];
            v14 = @"video:";
            if ((v13 & 1) != 0 || (v15 = [v12 isEqualToString:@"soun"], v14 = @"audio:", v15))
            {
              [v4 appendFormat:v14];
              [v11 estimatedDataRate];
              v17 = @" -";
              if (v16 > 0.0)
              {
                v17 = [AVHUDStringGenerator descriptionStringForBitRate:v16];
              }

              [v4 appendFormat:@"%@  ", v17];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)updateFromPlayer
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [objc_loadWeak(&self->_player) _copyPerformanceDataForCurrentItem];
  if (!self->_spatialDiagnostics)
  {
    goto LABEL_8;
  }

  if (runningAnInternalBuild_onceToken != -1)
  {
    [AVHUDStringGenerator updateFromPlayer];
  }

  if (runningAnInternalBuild_internalBuild == 1)
  {
    if (v3)
    {
      v4 = [v3 objectForKey:*MEMORY[0x1E6972DE8]];
      if (v4)
      {
        v5 = 16;
LABEL_32:
        *(&self->super.isa + v5) = v4;
      }
    }
  }

  else
  {
LABEL_8:
    v31 = 0;
    v23 = *MEMORY[0x1E695F060];
    v30 = *MEMORY[0x1E695F060];
    v29 = 0;
    if ([objc_loadWeak(&self->_player) _getDisplayVideoRange:&v31 displaySize:&v30 refreshRate:&v29])
    {
      HIDWORD(v6) = HIDWORD(v30);
      *&v6 = *(&v30 + 1);
      self->_displayResolutionHeight = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v6), "copy"}];
      HIDWORD(v7) = DWORD1(v30);
      *&v7 = *&v30;
      self->_displayResolutionWidth = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v7), "copy"}];
      self->_refreshRate = [v29 copy];
      self->_videoRange = [v31 copy];
    }

    if (v3)
    {
      v8 = [v3 objectForKey:*MEMORY[0x1E6972DF0]];
      if (v8)
      {
        size = v23;
        CGSizeMakeWithDictionaryRepresentation(v8, &size);
        HIDWORD(v9) = HIDWORD(size.height);
        *&v9 = size.height;
        self->_videoApproximateDisplaySizeHeight = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v9), "copy"}];
        HIDWORD(v10) = HIDWORD(size.width);
        *&v10 = size.width;
        self->_videoApproximateDisplaySizeWidth = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v10), "copy"}];
      }

      if (runningAnInternalBuild_onceToken != -1)
      {
        +[AVHUDStringGenerator descriptionStringForFormatOfTrack:];
      }

      if (runningAnInternalBuild_internalBuild == 1)
      {
        v11 = [objc_msgSend(v3 objectForKey:{*MEMORY[0x1E6972DF8]), "firstObject"}];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 objectForKey:*MEMORY[0x1E6973C78]];
          v14 = [v12 objectForKey:*MEMORY[0x1E6973C40]];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            v18 = *MEMORY[0x1E6973C48];
LABEL_19:
            v19 = 0;
            while (1)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v24 + 1) + 8 * v19);
              v21 = [v20 objectForKey:{v18, v23}];
              if (v21)
              {
                if (![v21 intValue])
                {
                  break;
                }
              }

              if (v16 == ++v19)
              {
                v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v16)
                {
                  goto LABEL_19;
                }

                goto LABEL_29;
              }
            }

            if (!v20)
            {
              goto LABEL_29;
            }

            v22 = [v20 objectForKey:*MEMORY[0x1E6973C80]];
          }

          else
          {
LABEL_29:
            v22 = 0;
          }

          self->_decoderFrameDrops = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "intValue", v23)), "copy"}];
          if (v22)
          {
            v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "intValue")), "copy"}];
            v5 = 216;
            goto LABEL_32;
          }
        }
      }
    }
  }
}

- (void)updateFromPlayerItem
{
  v2 = self;
  v75 = *MEMORY[0x1E69E9840];
  v3 = [objc_loadWeak(&self->_player) currentItem];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [objc_msgSend(objc_msgSend(v3 "accessLog")];
  if (runningAnInternalBuild_onceToken != -1)
  {
    [AVHUDStringGenerator updateFromPlayer];
  }

  if (runningAnInternalBuild_internalBuild == 1)
  {
    if ([v5 URI])
    {
      captureCompleteURI = v2->_captureCompleteURI;
      v7 = [v5 URI];
      if (!captureCompleteURI)
      {
        v7 = [objc_msgSend(v7 componentsSeparatedByString:{@"?", "objectAtIndex:", 0}];
      }
    }

    else
    {
      v7 = [objc_msgSend(objc_msgSend(v4 "asset")];
    }

    v2->_playerItemURL = [v7 copy];
    if ([objc_msgSend(v4 "asset")] == 2)
    {
      if ([objc_msgSend(v4 "asset")])
      {
        v8 = @"streaming (HLS)";
      }

      else
      {
        v9 = [objc_msgSend(v4 "asset")];
        v10 = [v9 scheme];
        if (v9)
        {
          v11 = v10;
          if ([v9 isFileURL])
          {
            v8 = @"local file";
          }

          else
          {
            v8 = @"progressive download (CRABS)";
            if (([v11 isEqualToString:@"http"] & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", @"https"))
            {
              v8 = @"custom-loaded";
            }
          }
        }

        else
        {
          v8 = @"unknown";
        }
      }

      v2->_assetType = &v8->isa;
    }

    if ([v5 playbackSessionID])
    {
      v2->_sessionID = [objc_msgSend(v5 "playbackSessionID")];
    }

    v2->_configurationGroup = [objc_msgSend(v4 "configurationGroup")];
    if (v5)
    {
      v2->_totalFrameDrops = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v5, "numberOfDroppedVideoFrames")), "copy"}];
    }

    v12 = [objc_msgSend(v4 "loadedTimeRanges")];
    if (v12)
    {
      memset(v73, 0, sizeof(v73));
      [v12 CMTimeRangeValue];
      [v4 currentTime];
      Seconds = CMTimeGetSeconds(&time);
      time = v73[0];
      v14 = CMTimeGetSeconds(&time);
      time = v73[1];
      v15 = CMTimeGetSeconds(&time);
      v2->_bufferedVideoPlayed = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{Seconds - v14), "copy"}];
      v2->_bufferedVideoRemaining = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{v14 + v15 - Seconds), "copy"}];
    }
  }

  v17 = *MEMORY[0x1E695F060];
  v16 = *(MEMORY[0x1E695F060] + 8);
  v18 = [objc_msgSend(v4 "asset")];
  v20 = 0.0;
  v21 = v16;
  v22 = v17;
  v23 = 0.0;
  if (v18 == 2)
  {
    v65 = v5;
    v67 = v2;
    v24 = [MEMORY[0x1E696AD60] string];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v66 = v4;
    v25 = [v4 tracks];
    v26 = [v25 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v69;
      v21 = v16;
      v22 = v17;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v69 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v68 + 1) + 8 * i);
          if ([v30 isEnabled])
          {
            v31 = +[AVHUDStringGenerator descriptionStringForFormatOfTrack:](AVHUDStringGenerator, "descriptionStringForFormatOfTrack:", [v30 assetTrack]);
            if (v31)
            {
              [v24 appendString:v31];
            }

            v32 = [v30 assetTrack];
            if ([v32 statusOfValueForKey:@"mediaType" error:0] == 2 && objc_msgSend(v32, "statusOfValueForKey:error:", @"nominalFrameRate", 0) == 2 && objc_msgSend(v32, "statusOfValueForKey:error:", @"naturalSize", 0) == 2 && objc_msgSend(objc_msgSend(v32, "mediaType"), "isEqualToString:", @"vide"))
            {
              [v30 currentVideoFrameRate];
              v23 = v33;
              [v32 nominalFrameRate];
              v20 = v34;
              [v32 naturalSize];
              v22 = v35;
              v21 = v36;
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v27);
    }

    else
    {
      v21 = v16;
      v22 = v17;
    }

    v18 = 2;
    v2 = v67;
    if ([v24 length])
    {
      v67->_trackFormatDescriptions = [v24 copy];
    }

    v5 = v65;
    v4 = v66;
  }

  if (v17 == v22 && v16 == v21)
  {
    [v4 presentationSize];
    v22 = v19;
    v21 = v37;
  }

  *&v19 = v21;
  v2->_presentationSizeHeight = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v19), "copy"}];
  *&v38 = v22;
  v2->_presentationSizeWidth = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v38), "copy"}];
  if (v23 >= 0.5)
  {
    *&v39 = v23;
    v2->_currentFrameRate = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v39), "copy"}];
  }

  if (v20 >= 0.5)
  {
    *&v39 = v20;
    v2->_nominalFrameRate = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v39), "copy"}];
  }

  if (v5)
  {
    v40 = MEMORY[0x1E696AD98];
    [v5 observedBitrate];
    v2->_networkBandiwdth = [objc_msgSend(v40 "numberWithDouble:"copy"")];
    [v5 averageVideoBitrate];
    if (v41 <= 0.0 || ([v5 averageAudioBitrate], v42 <= 0.0))
    {
      if (v18 != 2)
      {
        goto LABEL_61;
      }

      v45 = [AVHUDStringGenerator descriptionStringForTracksOfPlayerItem:v4];
      v46 = 168;
    }

    else
    {
      v43 = MEMORY[0x1E696AD98];
      [v5 averageVideoBitrate];
      v2->_averageVideoBitrate = [objc_msgSend(v43 "numberWithDouble:"copy"")];
      v44 = MEMORY[0x1E696AD98];
      [v5 averageAudioBitrate];
      v45 = [v44 numberWithDouble:?];
      v46 = 160;
    }

    *(&v2->super.isa + v46) = [v45 copy];
LABEL_61:
    [v5 indicatedBitrate];
    if (v47 > 0.0 || ([v5 indicatedAverageBitrate], v48 > 0.0))
    {
      [v5 indicatedBitrate];
      if (v49 > 0.0)
      {
        v50 = MEMORY[0x1E696AD98];
        [v5 indicatedBitrate];
        *&v51 = v51;
        v2->_peakIndicatedBitrate = [objc_msgSend(v50 numberWithFloat:{v51), "copy"}];
      }

      [v5 indicatedAverageBitrate];
      if (v52 > 0.0)
      {
        v53 = MEMORY[0x1E696AD98];
        [v5 indicatedAverageBitrate];
        *&v54 = v54;
        v2->_averageIndicatedBitrate = [objc_msgSend(v53 numberWithFloat:{v54), "copy"}];
      }
    }

    v55 = [v4 variantIndex];
    v56 = v55;
    if (v2->_prevVariantIdx != v55)
    {
      v2->_prevVariantIdx = v55;
      v2->_prevStallCount = 0;
    }

    v2->_totalStallCount += [v5 numberOfStalls] - v2->_prevStallCount;
    v2->_prevStallCount = [v5 numberOfStalls];
    v2->_totalStalls = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{v2->_totalStallCount), "copy"}];
    v2->_variantIndex = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{v56), "copy"}];
    if (v2->_startupTime == 0.0)
    {
      [v5 startupTime];
      v2->_startupTime = v57;
    }
  }

  v58 = [objc_loadWeak(&v2->_player) _ancillaryPerformanceInformationForDisplay];
  if (v58)
  {
    v2->_customPerfInfo = [v58 copy];
  }

  if ([objc_msgSend(v4 "asset")] == 2)
  {
    v59 = [objc_msgSend(v4 "asset")];
    if (v59)
    {
      v60 = [v59 dateValue];
      if (v60)
      {
        v61 = v60;
        v62 = [objc_loadWeak(&v2->_player) currentItem];
        if (v62)
        {
          [v62 currentTime];
        }

        else
        {
          memset(v73, 0, 24);
        }

        v63 = [v61 dateByAddingTimeInterval:CMTimeGetSeconds(v73)];
        v64 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v64 setDateFormat:@"HH:mm:ss"];
        v2->_playbackCreationOffset = [objc_msgSend(v64 stringFromDate:{v63), "copy"}];
      }
    }
  }
}

- (void)update
{
  [(AVHUDStringGenerator *)self updateFromPlayer];

  [(AVHUDStringGenerator *)self updateFromPlayerItem];
}

- (NSString)formattedDisplayString
{
  v3 = [MEMORY[0x1E696AD60] string];
  if (self->_spatialDiagnostics)
  {
    if (runningAnInternalBuild_onceToken != -1)
    {
      [AVHUDStringGenerator updateFromPlayer];
    }

    if (runningAnInternalBuild_internalBuild == 1)
    {
      audioSpatializationMode = self->_audioSpatializationMode;
      if (audioSpatializationMode)
      {
        v5 = [(NSNumber *)audioSpatializationMode integerValue];
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v6 = @"[ 2-Ch ]";
            goto LABEL_73;
          }

          if (v5 == 3)
          {
            v6 = @"[ S-Ch ]";
            goto LABEL_73;
          }
        }

        else if (v5 <= 1)
        {
          v6 = @"[ M-Ch ]";
LABEL_73:
          [v3 appendString:v6];
          return v3;
        }
      }

      v6 = @"[ ?-Ch ]";
      goto LABEL_73;
    }
  }

  if (self->_playerItemURL)
  {
    [v3 appendFormat:@"%@\n", self->_playerItemURL];
  }

  if (self->_assetType)
  {
    [v3 appendFormat:@"asset type:%@\n", self->_assetType];
  }

  if (self->_sessionID)
  {
    [v3 appendFormat:@"session-id:%@\n", self->_sessionID];
  }

  if (self->_configurationGroup)
  {
    [v3 appendFormat:@"configurationGroup: %@\n", self->_configurationGroup];
  }

  if (self->_trackFormatDescriptions)
  {
    [v3 appendFormat:@"%@", self->_trackFormatDescriptions];
  }

  displayResolutionWidth = self->_displayResolutionWidth;
  if (displayResolutionWidth && self->_displayResolutionHeight)
  {
    v8 = MEMORY[0x1E696AEC0];
    [(NSNumber *)displayResolutionWidth floatValue];
    v10 = v9;
    [(NSNumber *)self->_displayResolutionHeight floatValue];
    [v3 appendString:{objc_msgSend(v8, "stringWithFormat:", @"display resolution:%0.0f x %0.0f", *&v10, v11)}];
  }

  refreshRate = self->_refreshRate;
  if (refreshRate)
  {
    [(NSNumber *)refreshRate doubleValue];
    [v3 appendFormat:@", refresh-rate:%0.2fHz", v13];
  }

  if (self->_videoRange)
  {
    [v3 appendFormat:@", video-range:%@\n", self->_videoRange];
  }

  videoApproximateDisplaySizeWidth = self->_videoApproximateDisplaySizeWidth;
  if (videoApproximateDisplaySizeWidth && self->_videoApproximateDisplaySizeHeight)
  {
    [(NSNumber *)videoApproximateDisplaySizeWidth floatValue];
    v16 = v15;
    [(NSNumber *)self->_videoApproximateDisplaySizeHeight floatValue];
    [v3 appendFormat:@"video approximate-display-size:%0.0f x %0.0f  ", *&v16, v17];
  }

  else
  {
    [v3 appendFormat:@"video approximate-display-size:-  ", v42, v43];
  }

  presentationSizeWidth = self->_presentationSizeWidth;
  if (presentationSizeWidth && self->_presentationSizeHeight)
  {
    v19 = MEMORY[0x1E696AEC0];
    [(NSNumber *)presentationSizeWidth floatValue];
    v21 = v20;
    [(NSNumber *)self->_presentationSizeHeight floatValue];
    [v3 appendString:{objc_msgSend(v19, "stringWithFormat:", @"natural-size:%0.0f x %0.0f\n", *&v21, v22)}];
  }

  currentFrameRate = self->_currentFrameRate;
  if (currentFrameRate)
  {
    [(NSNumber *)currentFrameRate floatValue];
    [v3 appendFormat:@"current frame rate:%0.2f\n", v24];
  }

  nominalFrameRate = self->_nominalFrameRate;
  if (nominalFrameRate)
  {
    [(NSNumber *)nominalFrameRate floatValue];
    [v3 appendFormat:@"nominal frame rate:%0.2f\n", v26];
  }

  networkBandiwdth = self->_networkBandiwdth;
  if (networkBandiwdth)
  {
    [(NSNumber *)networkBandiwdth floatValue];
    [v3 appendFormat:@"network bandwidth:%@\n", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v28)];
  }

  if (self->_averageAudioBitrate && self->_averageVideoBitrate)
  {
    [v3 appendString:@"average bitrate "];
    [(NSNumber *)self->_averageVideoBitrate floatValue];
    [v3 appendFormat:@"video:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v29)];
    [(NSNumber *)self->_averageAudioBitrate floatValue];
    [v3 appendFormat:@"audio:%@\n", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v30)];
  }

  else if (self->_assetTrackInfo)
  {
    [v3 appendString:?];
    [v3 appendString:@"\n"];
  }

  if (self->_peakIndicatedBitrate || self->_averageIndicatedBitrate)
  {
    [v3 appendString:@"indicated bitrate "];
    peakIndicatedBitrate = self->_peakIndicatedBitrate;
    if (peakIndicatedBitrate)
    {
      [(NSNumber *)peakIndicatedBitrate floatValue];
      [v3 appendFormat:@"peak:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v32)];
    }

    averageIndicatedBitrate = self->_averageIndicatedBitrate;
    if (averageIndicatedBitrate)
    {
      [(NSNumber *)averageIndicatedBitrate floatValue];
      [v3 appendFormat:@"average:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v34)];
    }

    [v3 appendString:@"\n"];
  }

  if (self->_variantIndex)
  {
    totalStalls = self->_totalStalls;
    if (totalStalls)
    {
      [v3 appendFormat:@"stalls total:%ld  current-variant:%ld\n", -[NSNumber longValue](totalStalls, "longValue"), -[NSNumber longValue](self->_variantIndex, "longValue")];
    }
  }

  if (self->_totalFrameDrops)
  {
    [v3 appendFormat:@"frame drops "];
    [v3 appendFormat:@"total:%ld  ", -[NSNumber longValue](self->_totalFrameDrops, "longValue")];
    decoderFrameDrops = self->_decoderFrameDrops;
    if (decoderFrameDrops)
    {
      [v3 appendFormat:@"decode:%d  ", -[NSNumber intValue](decoderFrameDrops, "intValue")];
    }

    imageQueueFrameDrops = self->_imageQueueFrameDrops;
    if (imageQueueFrameDrops)
    {
      [v3 appendFormat:@"imageQ:%d", -[NSNumber intValue](imageQueueFrameDrops, "intValue")];
    }

    [v3 appendString:@"\n"];
  }

  bufferedVideoPlayed = self->_bufferedVideoPlayed;
  if (bufferedVideoPlayed && self->_bufferedVideoRemaining)
  {
    [(NSNumber *)bufferedVideoPlayed doubleValue];
    [v3 appendFormat:@"buffered video before:%0.1fs  ", v39];
    [(NSNumber *)self->_bufferedVideoRemaining doubleValue];
    [v3 appendFormat:@"after:%0.1fs\n", v40];
  }

  if (self->_customPerfInfo)
  {
    [v3 appendFormat:@"%@\n", self->_customPerfInfo];
  }

  if (self->_playbackCreationOffset)
  {
    [v3 appendFormat:@"Offset from creation date (assuming that creation date corresponds to asset start):%@\n", self->_playbackCreationOffset];
  }

  if (self->_startupTime > 0.0)
  {
    [v3 appendFormat:@"startupTime:%fs", *&self->_startupTime];
  }

  return v3;
}

@end