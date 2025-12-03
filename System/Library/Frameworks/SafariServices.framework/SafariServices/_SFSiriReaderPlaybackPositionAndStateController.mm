@interface _SFSiriReaderPlaybackPositionAndStateController
- (id)_imageForSiriIsPlaying:(BOOL)playing;
- (void)decrementValue:(id)value;
- (void)incrementValue:(id)value;
- (void)prepareStepper:(id)stepper;
- (void)resetValue:(id)value;
@end

@implementation _SFSiriReaderPlaybackPositionAndStateController

- (void)prepareStepper:(id)stepper
{
  stepperCopy = stepper;
  objc_storeWeak(&self->_stepper, stepperCopy);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gobackward"];
  [stepperCopy setImage:v4 forButton:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"goforward"];
  [stepperCopy setImage:v5 forButton:0];

  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  self->_isPlaying = [mEMORY[0x1E69B1B90] currentPlaybackState] == 1;

  v7 = [(_SFSiriReaderPlaybackPositionAndStateController *)self _imageForSiriIsPlaying:self->_isPlaying];
  [stepperCopy setImage:v7 forButton:2];

  [stepperCopy setEnabled:1 forButton:2];
  [stepperCopy setEnabled:1 forButton:0];
  [stepperCopy setEnabled:1 forButton:1];
}

- (void)incrementValue:(id)value
{
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [mEMORY[0x1E69B1B90] skipForward];
}

- (void)decrementValue:(id)value
{
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [mEMORY[0x1E69B1B90] skipBackward];
}

- (void)resetValue:(id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_stepper);
  isPlaying = self->_isPlaying;
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  v6 = mEMORY[0x1E69B1B90];
  if (isPlaying)
  {
    [mEMORY[0x1E69B1B90] pause];
  }

  else
  {
    [mEMORY[0x1E69B1B90] play];
  }

  self->_isPlaying = !self->_isPlaying;
  v7 = [(_SFSiriReaderPlaybackPositionAndStateController *)self _imageForSiriIsPlaying:?];
  [WeakRetained setImage:v7 forButton:2];
}

- (id)_imageForSiriIsPlaying:(BOOL)playing
{
  if (playing)
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