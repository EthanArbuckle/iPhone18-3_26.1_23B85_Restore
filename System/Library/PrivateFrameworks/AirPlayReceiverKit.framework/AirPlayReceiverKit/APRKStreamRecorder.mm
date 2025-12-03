@interface APRKStreamRecorder
- (BOOL)finalizeRecording;
- (int)_recordSampleBuffer:(opaqueCMSampleBuffer *)buffer toTrackWithID:(int)d;
- (int)startRecordingAtURL:(id)l;
@end

@implementation APRKStreamRecorder

- (int)startRecordingAtURL:(id)l
{
  lCopy = l;
  v5 = MEMORY[0x277CC0898];
  v6 = *MEMORY[0x277CC0898];
  self->_audioTrackID = 0;
  p_audioTrackID = &self->_audioTrackID;
  *(p_audioTrackID - 6) = v6;
  *(p_audioTrackID - 1) = *(v5 + 16);
  p_audioTrackID[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6150], *MEMORY[0x277CBED28]);
  CFRunLoopGetCurrent();
  v9 = p_audioTrackID - 8;
  v10 = FigAssetWriterCreateWithURL();
  if (v10)
  {
    v16 = v10;
    [APRKStreamRecorder startRecordingAtURL:];
  }

  else
  {
    v11 = *v9;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v13 = v12(v11, 1936684398, p_audioTrackID);
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v14 = *v9;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v15)
        {
          v16 = v15(v14, 1986618469, p_audioTrackID + 1);
          if (!v16)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v16 = -12782;
        }
      }
    }

    else
    {
      v16 = -12782;
    }

    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRecorder startRecordingAtURL:];
    if (!Mutable)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

LABEL_15:

  return v16;
}

- (BOOL)finalizeRecording
{
  assetWriter = self->_assetWriter;
  if (assetWriter)
  {
    videoTrackID = self->_videoTrackID;
    if (videoTrackID)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v5)
      {
        LODWORD(videoTrackID) = v5(assetWriter, videoTrackID) != 0;
      }

      else
      {
        LODWORD(videoTrackID) = 1;
      }
    }

    v6 = self->_assetWriter;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      if (v7(v6))
      {
        LODWORD(assetWriter) = 1;
      }

      else
      {
        LODWORD(assetWriter) = videoTrackID;
      }
    }

    else
    {
      LODWORD(assetWriter) = 1;
    }

    v8 = self->_assetWriter;
    if (v8)
    {
      CFRelease(v8);
      self->_assetWriter = 0;
    }
  }

  *&self->_audioTrackID = 0;
  return assetWriter == 0;
}

- (int)_recordSampleBuffer:(opaqueCMSampleBuffer *)buffer toTrackWithID:(int)d
{
  v4 = *&d;
  if (buffer)
  {
    CFRetain(buffer);
  }

  if ((self->_recordingStartTime.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&v16, buffer);
    *&self->_recordingStartTime.value = *&v16.value;
    epoch = v16.epoch;
    self->_recordingStartTime.epoch = v16.epoch;
    assetWriter = self->_assetWriter;
    *&v15.value = *&self->_recordingStartTime.value;
    v15.epoch = epoch;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v9)
    {
      v16 = v15;
      v10 = v9(assetWriter, &v16);
      if (!v10)
      {
        goto LABEL_6;
      }

      v13 = v10;
    }

    else
    {
      v13 = -12782;
    }

    APSLogErrorAt();
    goto LABEL_12;
  }

LABEL_6:
  v11 = self->_assetWriter;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    v13 = v12(v11, v4, buffer);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = -12782;
  }

LABEL_12:
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRecorder _recordSampleBuffer:toTrackWithID:];
    if (!buffer)
    {
      return v13;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (buffer)
  {
LABEL_16:
    CFRelease(buffer);
  }

  return v13;
}

@end