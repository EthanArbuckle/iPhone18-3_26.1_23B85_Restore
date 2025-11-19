@interface MediaControlsAudioModule
- (MRUVolumeViewController)volumeViewController;
- (id)backgroundViewControllerForContext:(id)a3;
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation MediaControlsAudioModule

- (MRUVolumeViewController)volumeViewController
{
  volumeViewController = self->_volumeViewController;
  if (!volumeViewController)
  {
    v4 = objc_alloc(MEMORY[0x29EDC5920]);
    v8 = objc_msgSend_sharedController(MEMORY[0x29EDC58F0], v5, v6, v7);
    v11 = objc_msgSend_initWithAudioModuleController_(v4, v9, v8, v10);
    v12 = self->_volumeViewController;
    self->_volumeViewController = v11;

    objc_msgSend_setDelegate_(self->_volumeViewController, v13, self, v14);
    volumeViewController = self->_volumeViewController;
  }

  return volumeViewController;
}

- (id)contentViewControllerForContext:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isNewControlsEnabled(MEMORY[0x29EDC58F8], v5, v6, v7))
  {
    v11 = objc_msgSend_environment(v4, v8, v9, v10) != 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_volumeViewController(self, v8, v9, v10);
  objc_msgSend_setPrimaryGlyphShouldBeTinted_(v12, v13, v11, v14);

  v18 = objc_msgSend_volumeViewController(self, v15, v16, v17);

  return v18;
}

- (id)backgroundViewControllerForContext:(id)a3
{
  volumeBackgroundViewController = self->_volumeBackgroundViewController;
  if (!volumeBackgroundViewController)
  {
    v5 = objc_alloc(MEMORY[0x29EDC5918]);
    v9 = objc_msgSend_sharedController(MEMORY[0x29EDC58F0], v6, v7, v8);
    v12 = objc_msgSend_initWithAudioModuleController_(v5, v10, v9, v11);
    v13 = self->_volumeBackgroundViewController;
    self->_volumeBackgroundViewController = v12;

    objc_msgSend_setDelegate_(self->_volumeBackgroundViewController, v14, self, v15);
    volumeBackgroundViewController = self->_volumeBackgroundViewController;
  }

  return volumeBackgroundViewController;
}

@end