@interface AXRVoiceOverTouchPadView
- (AXRVoiceOverTouchPadViewDelegate)delegate;
- (void)_accessibilitySetCurrentGesture:(id)gesture;
@end

@implementation AXRVoiceOverTouchPadView

- (void)_accessibilitySetCurrentGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [gestureCopy count] >= 3)
  {
    v4 = [gestureCopy objectAtIndex:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
    {
      delegate = [(AXRVoiceOverTouchPadView *)self delegate];
      [delegate voiceOverTouchPadView:self didReceiveCommand:v4];
    }
  }
}

- (AXRVoiceOverTouchPadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end