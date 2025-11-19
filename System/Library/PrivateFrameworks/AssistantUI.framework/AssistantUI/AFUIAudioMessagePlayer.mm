@interface AFUIAudioMessagePlayer
- (id)_audioURL;
@end

@implementation AFUIAudioMessagePlayer

- (id)_audioURL
{
  v3 = [(AFUIAudioPlayer *)self delegate];
  v4 = [(AFUIAudioPlayer *)self playbackCommand];
  v5 = [v3 audioPlayer:self audioURLForCommand:v4];

  return v5;
}

@end