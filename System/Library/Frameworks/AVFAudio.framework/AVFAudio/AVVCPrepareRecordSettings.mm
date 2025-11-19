@interface AVVCPrepareRecordSettings
- (AVVCPrepareRecordSettings)initWithStreamID:(unint64_t)a3 settings:(id)a4 bufferDuration:(double)a5;
@end

@implementation AVVCPrepareRecordSettings

- (AVVCPrepareRecordSettings)initWithStreamID:(unint64_t)a3 settings:(id)a4 bufferDuration:(double)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVVCPrepareRecordSettings;
  v9 = [(AVVCPrepareRecordSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_streamID = a3;
    v11 = [v8 copy];
    avAudioSettings = v10->_avAudioSettings;
    v10->_avAudioSettings = v11;

    v10->_recordBufferDuration = a5;
    v10->_deviceBufferFrameSize = 0;
  }

  return v10;
}

@end