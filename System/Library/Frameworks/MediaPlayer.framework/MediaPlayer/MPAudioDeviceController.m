@interface MPAudioDeviceController
- (id)delegate;
@end

@implementation MPAudioDeviceController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end