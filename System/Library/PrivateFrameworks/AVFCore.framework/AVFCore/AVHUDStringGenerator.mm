@interface AVHUDStringGenerator
+ (id)descriptionStringForBitRate:(double)rate;
+ (id)descriptionStringForFormatOfTrack:(id)track;
+ (id)descriptionStringForTracksOfPlayerItem:(id)item;
+ (id)descriptionStringForVideoRangeOfFormatDescription:(opaqueCMFormatDescription *)description;
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

+ (id)descriptionStringForFormatOfTrack:(id)track
{
  if ([track statusOfValueForKey:@"formatDescriptions" error:0] == 2)
  {
    formatDescriptions = [track formatDescriptions];
    if (formatDescriptions)
    {
      v5 = formatDescriptions;
      v6 = [formatDescriptions count];
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
          languageCode = 0;
          if ([track statusOfValueForKey:@"languageCode" error:0] == 2)
          {
            languageCode = [track languageCode];
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
          if (languageCode)
          {
            [v13 appendFormat:@"(%@) ", languageCode];
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

+ (id)descriptionStringForBitRate:(double)rate
{
  v5 = rate / 1000.0;
  if (rate / 1000.0 <= 1.0)
  {
    v6 = @"bps";
  }

  else
  {
    rate = v5 / 1000.0;
    if (v5 / 1000.0 <= 1.0)
    {
      v6 = @"kbps";
      rate = v5;
    }

    else
    {
      v6 = @"Mbps";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f%@", *&rate, v6, v3, v4];
}

+ (id)descriptionStringForVideoRangeOfFormatDescription:(opaqueCMFormatDescription *)description
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

+ (id)descriptionStringForTracksOfPlayerItem:(id)item
{
  v24 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string setString:@"average bitrate "];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  tracks = [item tracks];
  v6 = [tracks countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(tracks);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        assetTrack = [v10 assetTrack];
        if ([v10 isEnabled])
        {
          if ([assetTrack statusOfValueForKey:@"mediaType" error:0] == 2 && objc_msgSend(assetTrack, "statusOfValueForKey:error:", @"estimatedDataRate", 0) == 2)
          {
            mediaType = [assetTrack mediaType];
            v13 = [mediaType isEqualToString:@"vide"];
            v14 = @"video:";
            if ((v13 & 1) != 0 || (v15 = [mediaType isEqualToString:@"soun"], v14 = @"audio:", v15))
            {
              [string appendFormat:v14];
              [assetTrack estimatedDataRate];
              v17 = @" -";
              if (v16 > 0.0)
              {
                v17 = [AVHUDStringGenerator descriptionStringForBitRate:v16];
              }

              [string appendFormat:@"%@  ", v17];
            }
          }
        }
      }

      v7 = [tracks countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return string;
}

- (void)updateFromPlayer
{
  v33 = *MEMORY[0x1E69E9840];
  _copyPerformanceDataForCurrentItem = [objc_loadWeak(&self->_player) _copyPerformanceDataForCurrentItem];
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
    if (_copyPerformanceDataForCurrentItem)
    {
      v4 = [_copyPerformanceDataForCurrentItem objectForKey:*MEMORY[0x1E6972DE8]];
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

    if (_copyPerformanceDataForCurrentItem)
    {
      v8 = [_copyPerformanceDataForCurrentItem objectForKey:*MEMORY[0x1E6972DF0]];
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
        v11 = [objc_msgSend(_copyPerformanceDataForCurrentItem objectForKey:{*MEMORY[0x1E6972DF8]), "firstObject"}];
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
  selfCopy = self;
  v75 = *MEMORY[0x1E69E9840];
  currentItem = [objc_loadWeak(&self->_player) currentItem];
  if (!currentItem)
  {
    return;
  }

  v4 = currentItem;
  v5 = [objc_msgSend(objc_msgSend(currentItem "accessLog")];
  if (runningAnInternalBuild_onceToken != -1)
  {
    [AVHUDStringGenerator updateFromPlayer];
  }

  if (runningAnInternalBuild_internalBuild == 1)
  {
    if ([v5 URI])
    {
      captureCompleteURI = selfCopy->_captureCompleteURI;
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

    selfCopy->_playerItemURL = [v7 copy];
    if ([objc_msgSend(v4 "asset")] == 2)
    {
      if ([objc_msgSend(v4 "asset")])
      {
        v8 = @"streaming (HLS)";
      }

      else
      {
        v9 = [objc_msgSend(v4 "asset")];
        scheme = [v9 scheme];
        if (v9)
        {
          v11 = scheme;
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

      selfCopy->_assetType = &v8->isa;
    }

    if ([v5 playbackSessionID])
    {
      selfCopy->_sessionID = [objc_msgSend(v5 "playbackSessionID")];
    }

    selfCopy->_configurationGroup = [objc_msgSend(v4 "configurationGroup")];
    if (v5)
    {
      selfCopy->_totalFrameDrops = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v5, "numberOfDroppedVideoFrames")), "copy"}];
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
      selfCopy->_bufferedVideoPlayed = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{Seconds - v14), "copy"}];
      selfCopy->_bufferedVideoRemaining = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{v14 + v15 - Seconds), "copy"}];
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
    v67 = selfCopy;
    string = [MEMORY[0x1E696AD60] string];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v66 = v4;
    tracks = [v4 tracks];
    v26 = [tracks countByEnumeratingWithState:&v68 objects:v74 count:16];
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
            objc_enumerationMutation(tracks);
          }

          v30 = *(*(&v68 + 1) + 8 * i);
          if ([v30 isEnabled])
          {
            v31 = +[AVHUDStringGenerator descriptionStringForFormatOfTrack:](AVHUDStringGenerator, "descriptionStringForFormatOfTrack:", [v30 assetTrack]);
            if (v31)
            {
              [string appendString:v31];
            }

            assetTrack = [v30 assetTrack];
            if ([assetTrack statusOfValueForKey:@"mediaType" error:0] == 2 && objc_msgSend(assetTrack, "statusOfValueForKey:error:", @"nominalFrameRate", 0) == 2 && objc_msgSend(assetTrack, "statusOfValueForKey:error:", @"naturalSize", 0) == 2 && objc_msgSend(objc_msgSend(assetTrack, "mediaType"), "isEqualToString:", @"vide"))
            {
              [v30 currentVideoFrameRate];
              v23 = v33;
              [assetTrack nominalFrameRate];
              v20 = v34;
              [assetTrack naturalSize];
              v22 = v35;
              v21 = v36;
            }
          }
        }

        v27 = [tracks countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v27);
    }

    else
    {
      v21 = v16;
      v22 = v17;
    }

    v18 = 2;
    selfCopy = v67;
    if ([string length])
    {
      v67->_trackFormatDescriptions = [string copy];
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
  selfCopy->_presentationSizeHeight = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v19), "copy"}];
  *&v38 = v22;
  selfCopy->_presentationSizeWidth = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v38), "copy"}];
  if (v23 >= 0.5)
  {
    *&v39 = v23;
    selfCopy->_currentFrameRate = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v39), "copy"}];
  }

  if (v20 >= 0.5)
  {
    *&v39 = v20;
    selfCopy->_nominalFrameRate = [objc_msgSend(MEMORY[0x1E696AD98] numberWithFloat:{v39), "copy"}];
  }

  if (v5)
  {
    v40 = MEMORY[0x1E696AD98];
    [v5 observedBitrate];
    selfCopy->_networkBandiwdth = [objc_msgSend(v40 "numberWithDouble:"copy"")];
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
      selfCopy->_averageVideoBitrate = [objc_msgSend(v43 "numberWithDouble:"copy"")];
      v44 = MEMORY[0x1E696AD98];
      [v5 averageAudioBitrate];
      v45 = [v44 numberWithDouble:?];
      v46 = 160;
    }

    *(&selfCopy->super.isa + v46) = [v45 copy];
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
        selfCopy->_peakIndicatedBitrate = [objc_msgSend(v50 numberWithFloat:{v51), "copy"}];
      }

      [v5 indicatedAverageBitrate];
      if (v52 > 0.0)
      {
        v53 = MEMORY[0x1E696AD98];
        [v5 indicatedAverageBitrate];
        *&v54 = v54;
        selfCopy->_averageIndicatedBitrate = [objc_msgSend(v53 numberWithFloat:{v54), "copy"}];
      }
    }

    variantIndex = [v4 variantIndex];
    v56 = variantIndex;
    if (selfCopy->_prevVariantIdx != variantIndex)
    {
      selfCopy->_prevVariantIdx = variantIndex;
      selfCopy->_prevStallCount = 0;
    }

    selfCopy->_totalStallCount += [v5 numberOfStalls] - selfCopy->_prevStallCount;
    selfCopy->_prevStallCount = [v5 numberOfStalls];
    selfCopy->_totalStalls = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{selfCopy->_totalStallCount), "copy"}];
    selfCopy->_variantIndex = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLong:{v56), "copy"}];
    if (selfCopy->_startupTime == 0.0)
    {
      [v5 startupTime];
      selfCopy->_startupTime = v57;
    }
  }

  _ancillaryPerformanceInformationForDisplay = [objc_loadWeak(&selfCopy->_player) _ancillaryPerformanceInformationForDisplay];
  if (_ancillaryPerformanceInformationForDisplay)
  {
    selfCopy->_customPerfInfo = [_ancillaryPerformanceInformationForDisplay copy];
  }

  if ([objc_msgSend(v4 "asset")] == 2)
  {
    v59 = [objc_msgSend(v4 "asset")];
    if (v59)
    {
      dateValue = [v59 dateValue];
      if (dateValue)
      {
        v61 = dateValue;
        currentItem2 = [objc_loadWeak(&selfCopy->_player) currentItem];
        if (currentItem2)
        {
          [currentItem2 currentTime];
        }

        else
        {
          memset(v73, 0, 24);
        }

        v63 = [v61 dateByAddingTimeInterval:CMTimeGetSeconds(v73)];
        v64 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v64 setDateFormat:@"HH:mm:ss"];
        selfCopy->_playbackCreationOffset = [objc_msgSend(v64 stringFromDate:{v63), "copy"}];
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
  string = [MEMORY[0x1E696AD60] string];
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
        integerValue = [(NSNumber *)audioSpatializationMode integerValue];
        if (integerValue > 1)
        {
          if (integerValue == 2)
          {
            v6 = @"[ 2-Ch ]";
            goto LABEL_73;
          }

          if (integerValue == 3)
          {
            v6 = @"[ S-Ch ]";
            goto LABEL_73;
          }
        }

        else if (integerValue <= 1)
        {
          v6 = @"[ M-Ch ]";
LABEL_73:
          [string appendString:v6];
          return string;
        }
      }

      v6 = @"[ ?-Ch ]";
      goto LABEL_73;
    }
  }

  if (self->_playerItemURL)
  {
    [string appendFormat:@"%@\n", self->_playerItemURL];
  }

  if (self->_assetType)
  {
    [string appendFormat:@"asset type:%@\n", self->_assetType];
  }

  if (self->_sessionID)
  {
    [string appendFormat:@"session-id:%@\n", self->_sessionID];
  }

  if (self->_configurationGroup)
  {
    [string appendFormat:@"configurationGroup: %@\n", self->_configurationGroup];
  }

  if (self->_trackFormatDescriptions)
  {
    [string appendFormat:@"%@", self->_trackFormatDescriptions];
  }

  displayResolutionWidth = self->_displayResolutionWidth;
  if (displayResolutionWidth && self->_displayResolutionHeight)
  {
    v8 = MEMORY[0x1E696AEC0];
    [(NSNumber *)displayResolutionWidth floatValue];
    v10 = v9;
    [(NSNumber *)self->_displayResolutionHeight floatValue];
    [string appendString:{objc_msgSend(v8, "stringWithFormat:", @"display resolution:%0.0f x %0.0f", *&v10, v11)}];
  }

  refreshRate = self->_refreshRate;
  if (refreshRate)
  {
    [(NSNumber *)refreshRate doubleValue];
    [string appendFormat:@", refresh-rate:%0.2fHz", v13];
  }

  if (self->_videoRange)
  {
    [string appendFormat:@", video-range:%@\n", self->_videoRange];
  }

  videoApproximateDisplaySizeWidth = self->_videoApproximateDisplaySizeWidth;
  if (videoApproximateDisplaySizeWidth && self->_videoApproximateDisplaySizeHeight)
  {
    [(NSNumber *)videoApproximateDisplaySizeWidth floatValue];
    v16 = v15;
    [(NSNumber *)self->_videoApproximateDisplaySizeHeight floatValue];
    [string appendFormat:@"video approximate-display-size:%0.0f x %0.0f  ", *&v16, v17];
  }

  else
  {
    [string appendFormat:@"video approximate-display-size:-  ", v42, v43];
  }

  presentationSizeWidth = self->_presentationSizeWidth;
  if (presentationSizeWidth && self->_presentationSizeHeight)
  {
    v19 = MEMORY[0x1E696AEC0];
    [(NSNumber *)presentationSizeWidth floatValue];
    v21 = v20;
    [(NSNumber *)self->_presentationSizeHeight floatValue];
    [string appendString:{objc_msgSend(v19, "stringWithFormat:", @"natural-size:%0.0f x %0.0f\n", *&v21, v22)}];
  }

  currentFrameRate = self->_currentFrameRate;
  if (currentFrameRate)
  {
    [(NSNumber *)currentFrameRate floatValue];
    [string appendFormat:@"current frame rate:%0.2f\n", v24];
  }

  nominalFrameRate = self->_nominalFrameRate;
  if (nominalFrameRate)
  {
    [(NSNumber *)nominalFrameRate floatValue];
    [string appendFormat:@"nominal frame rate:%0.2f\n", v26];
  }

  networkBandiwdth = self->_networkBandiwdth;
  if (networkBandiwdth)
  {
    [(NSNumber *)networkBandiwdth floatValue];
    [string appendFormat:@"network bandwidth:%@\n", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v28)];
  }

  if (self->_averageAudioBitrate && self->_averageVideoBitrate)
  {
    [string appendString:@"average bitrate "];
    [(NSNumber *)self->_averageVideoBitrate floatValue];
    [string appendFormat:@"video:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v29)];
    [(NSNumber *)self->_averageAudioBitrate floatValue];
    [string appendFormat:@"audio:%@\n", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v30)];
  }

  else if (self->_assetTrackInfo)
  {
    [string appendString:?];
    [string appendString:@"\n"];
  }

  if (self->_peakIndicatedBitrate || self->_averageIndicatedBitrate)
  {
    [string appendString:@"indicated bitrate "];
    peakIndicatedBitrate = self->_peakIndicatedBitrate;
    if (peakIndicatedBitrate)
    {
      [(NSNumber *)peakIndicatedBitrate floatValue];
      [string appendFormat:@"peak:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v32)];
    }

    averageIndicatedBitrate = self->_averageIndicatedBitrate;
    if (averageIndicatedBitrate)
    {
      [(NSNumber *)averageIndicatedBitrate floatValue];
      [string appendFormat:@"average:%@  ", +[AVHUDStringGenerator descriptionStringForBitRate:](AVHUDStringGenerator, "descriptionStringForBitRate:", v34)];
    }

    [string appendString:@"\n"];
  }

  if (self->_variantIndex)
  {
    totalStalls = self->_totalStalls;
    if (totalStalls)
    {
      [string appendFormat:@"stalls total:%ld  current-variant:%ld\n", -[NSNumber longValue](totalStalls, "longValue"), -[NSNumber longValue](self->_variantIndex, "longValue")];
    }
  }

  if (self->_totalFrameDrops)
  {
    [string appendFormat:@"frame drops "];
    [string appendFormat:@"total:%ld  ", -[NSNumber longValue](self->_totalFrameDrops, "longValue")];
    decoderFrameDrops = self->_decoderFrameDrops;
    if (decoderFrameDrops)
    {
      [string appendFormat:@"decode:%d  ", -[NSNumber intValue](decoderFrameDrops, "intValue")];
    }

    imageQueueFrameDrops = self->_imageQueueFrameDrops;
    if (imageQueueFrameDrops)
    {
      [string appendFormat:@"imageQ:%d", -[NSNumber intValue](imageQueueFrameDrops, "intValue")];
    }

    [string appendString:@"\n"];
  }

  bufferedVideoPlayed = self->_bufferedVideoPlayed;
  if (bufferedVideoPlayed && self->_bufferedVideoRemaining)
  {
    [(NSNumber *)bufferedVideoPlayed doubleValue];
    [string appendFormat:@"buffered video before:%0.1fs  ", v39];
    [(NSNumber *)self->_bufferedVideoRemaining doubleValue];
    [string appendFormat:@"after:%0.1fs\n", v40];
  }

  if (self->_customPerfInfo)
  {
    [string appendFormat:@"%@\n", self->_customPerfInfo];
  }

  if (self->_playbackCreationOffset)
  {
    [string appendFormat:@"Offset from creation date (assuming that creation date corresponds to asset start):%@\n", self->_playbackCreationOffset];
  }

  if (self->_startupTime > 0.0)
  {
    [string appendFormat:@"startupTime:%fs", *&self->_startupTime];
  }

  return string;
}

@end