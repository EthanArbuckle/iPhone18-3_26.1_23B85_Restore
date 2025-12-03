@interface AVVCPrepareRecordSettings
- (AVVCPrepareRecordSettings)initWithStreamID:(unint64_t)d settings:(id)settings bufferDuration:(double)duration;
@end

@implementation AVVCPrepareRecordSettings

- (AVVCPrepareRecordSettings)initWithStreamID:(unint64_t)d settings:(id)settings bufferDuration:(double)duration
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = AVVCPrepareRecordSettings;
  v9 = [(AVVCPrepareRecordSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_streamID = d;
    v11 = [settingsCopy copy];
    avAudioSettings = v10->_avAudioSettings;
    v10->_avAudioSettings = v11;

    v10->_recordBufferDuration = duration;
    v10->_deviceBufferFrameSize = 0;
  }

  return v10;
}

@end