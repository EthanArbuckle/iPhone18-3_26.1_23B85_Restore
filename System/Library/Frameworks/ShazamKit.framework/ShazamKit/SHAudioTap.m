@interface SHAudioTap
- (SHAudioTap)initWithRecordingSource:(int64_t)a3 client:(int64_t)a4 bundleIdentifier:(id)a5 canEnableSpectralOutput:(BOOL)a6;
@end

@implementation SHAudioTap

- (SHAudioTap)initWithRecordingSource:(int64_t)a3 client:(int64_t)a4 bundleIdentifier:(id)a5 canEnableSpectralOutput:(BOOL)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHAudioTap;
  v12 = [(SHAudioTap *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_recordingSource = a3;
    v12->_client = a4;
    objc_storeStrong(&v12->_bundleIdentifier, a5);
    v13->_canEnableSpectralOutput = a6;
  }

  return v13;
}

@end