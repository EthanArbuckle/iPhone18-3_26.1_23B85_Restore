@interface SHAudioTap
- (SHAudioTap)initWithRecordingSource:(int64_t)source client:(int64_t)client bundleIdentifier:(id)identifier canEnableSpectralOutput:(BOOL)output;
@end

@implementation SHAudioTap

- (SHAudioTap)initWithRecordingSource:(int64_t)source client:(int64_t)client bundleIdentifier:(id)identifier canEnableSpectralOutput:(BOOL)output
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SHAudioTap;
  v12 = [(SHAudioTap *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_recordingSource = source;
    v12->_client = client;
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    v13->_canEnableSpectralOutput = output;
  }

  return v13;
}

@end