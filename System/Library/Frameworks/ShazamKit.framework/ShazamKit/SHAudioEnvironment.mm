@interface SHAudioEnvironment
- (BOOL)isOtherAudioPlaying;
- (BOOL)isUsingAlternativeOutputToBuiltInSpeaker;
- (SHAudioEnvironment)init;
@end

@implementation SHAudioEnvironment

- (SHAudioEnvironment)init
{
  v6.receiver = self;
  v6.super_class = SHAudioEnvironment;
  v2 = [(SHAudioEnvironment *)&v6 init];
  if (v2)
  {
    v3 = +[AVAudioSession sharedInstance];
    audioSession = v2->_audioSession;
    v2->_audioSession = v3;
  }

  return v2;
}

- (BOOL)isUsingAlternativeOutputToBuiltInSpeaker
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(SHAudioEnvironment *)self audioSession];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) portType];
        v10 = [v9 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

        if (!v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isOtherAudioPlaying
{
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 isOtherAudioPlaying];

  return v3;
}

@end