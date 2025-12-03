@interface AFUIAudioMessagePlayer
- (id)_audioURL;
@end

@implementation AFUIAudioMessagePlayer

- (id)_audioURL
{
  delegate = [(AFUIAudioPlayer *)self delegate];
  playbackCommand = [(AFUIAudioPlayer *)self playbackCommand];
  v5 = [delegate audioPlayer:self audioURLForCommand:playbackCommand];

  return v5;
}

@end