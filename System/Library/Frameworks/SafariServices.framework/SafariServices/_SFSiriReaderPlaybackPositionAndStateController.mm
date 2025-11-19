@interface _SFSiriReaderPlaybackPositionAndStateController
- (id)_imageForSiriIsPlaying:(BOOL)a3;
- (void)decrementValue:(id)a3;
- (void)incrementValue:(id)a3;
- (void)prepareStepper:(id)a3;
- (void)resetValue:(id)a3;
@end

@implementation _SFSiriReaderPlaybackPositionAndStateController

- (void)prepareStepper:(id)a3
{
  v8 = a3;
  objc_storeWeak(&self->_stepper, v8);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gobackward"];
  [v8 setImage:v4 forButton:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"goforward"];
  [v8 setImage:v5 forButton:0];

  v6 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  self->_isPlaying = [v6 currentPlaybackState] == 1;

  v7 = [(_SFSiriReaderPlaybackPositionAndStateController *)self _imageForSiriIsPlaying:self->_isPlaying];
  [v8 setImage:v7 forButton:2];

  [v8 setEnabled:1 forButton:2];
  [v8 setEnabled:1 forButton:0];
  [v8 setEnabled:1 forButton:1];
}

- (void)incrementValue:(id)a3
{
  v3 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [v3 skipForward];
}

- (void)decrementValue:(id)a3
{
  v3 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [v3 skipBackward];
}

- (void)resetValue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_stepper);
  isPlaying = self->_isPlaying;
  v5 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v6 = v5;
  if (isPlaying)
  {
    [v5 pause];
  }

  else
  {
    [v5 play];
  }

  self->_isPlaying = !self->_isPlaying;
  v7 = [(_SFSiriReaderPlaybackPositionAndStateController *)self _imageForSiriIsPlaying:?];
  [WeakRetained setImage:v7 forButton:2];
}

- (id)_imageForSiriIsPlaying:(BOOL)a3
{
  if (a3)
  {
    v3 = @"pause";
  }

  else
  {
    v3 = @"play";
  }

  return [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
}

@end