@interface AXRVoiceOverTouchPadView
- (AXRVoiceOverTouchPadViewDelegate)delegate;
- (void)_accessibilitySetCurrentGesture:(id)a3;
@end

@implementation AXRVoiceOverTouchPadView

- (void)_accessibilitySetCurrentGesture:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] >= 3)
  {
    v4 = [v6 objectAtIndex:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
    {
      v5 = [(AXRVoiceOverTouchPadView *)self delegate];
      [v5 voiceOverTouchPadView:self didReceiveCommand:v4];
    }
  }
}

- (AXRVoiceOverTouchPadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end