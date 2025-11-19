@interface AVMobilePlaybackRateMenuController
+ (void)_loadPlaybackSpeedControlImageWithCompletionHandler:(id)a3;
- (AVMobilePlaybackRateMenuController)init;
- (void)_reconstructPlaybackRateMenuItems;
- (void)_updatePlaybackRateMenuIfNeeded;
- (void)_updatePlaybackRateMenuItemStatesIfNeeded;
- (void)dealloc;
- (void)setPlaybackSpeedCollection:(id)a3;
@end

@implementation AVMobilePlaybackRateMenuController

- (void)_updatePlaybackRateMenuItemStatesIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = self->_activeMenuItems;
  v4 = self->_activePlaybackRateCollection;
  v5 = [(AVPlaybackSpeedCollection *)v4 speeds];
  v6 = [(AVPlaybackSpeedCollection *)v4 activeSpeed];
  v7 = [v5 indexOfObject:v6];

  v8 = [(NSArray *)v3 count];
  if (v8 != [v5 count])
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency - playback speed menu item count does not equal the speed collection count. \n%@\n%@", &v14, 0x16u);
    }
  }

  v10 = [(NSArray *)v3 count];
  v11 = v10 != [v5 count] || v7 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v11 && [(NSArray *)v3 count])
  {
    v12 = 0;
    do
    {
      v13 = [(NSArray *)v3 objectAtIndex:v12];
      [v13 setState:v7 == v12];

      ++v12;
    }

    while (v12 < [(NSArray *)v3 count]);
  }
}

- (void)_updatePlaybackRateMenuIfNeeded
{
  obj = [(AVMobilePlaybackRateMenuController *)self playbackSpeedCollection];
  v3 = [obj activeSpeed];
  v4 = AVMobilePlaybackSpeedControlImage;
  v5 = v4 != 0;
  if (*&self->_activePlaybackRateCollection != __PAIR128__(v3, obj) || self->_activeMenuHasImage != v5)
  {
    objc_storeStrong(&self->_activePlaybackRateCollection, obj);
    objc_storeStrong(&self->_activeSelectedPlaybackSpeed, v3);
    self->_activeMenuHasImage = v5;
    v6 = AVLocalizedString(@"Playback Speed");
    [(AVMobilePlaybackRateMenuController *)self willChangeValueForKey:@"menu"];
    v7 = [MEMORY[0x1E69DCC60] menuWithTitle:v6 image:v4 identifier:@"AVPlaybackSpeedMenu" options:0 children:self->_activeMenuItems];
    playbackRateMenu = self->_playbackRateMenu;
    self->_playbackRateMenu = v7;

    [(AVMobilePlaybackRateMenuController *)self didChangeValueForKey:@"menu"];
  }
}

- (void)_reconstructPlaybackRateMenuItems
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(AVMobilePlaybackRateMenuController *)self playbackSpeedCollection];
  v3 = [v2 displaySpeeds];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 localizedNumericName];
        v11 = [v2 activeSpeed];

        v12 = MEMORY[0x1E69DC628];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __71__AVMobilePlaybackRateMenuController__reconstructPlaybackRateMenuItems__block_invoke;
        v18[3] = &unk_1E72076E8;
        v18[4] = v9;
        v19 = v2;
        v13 = [v12 actionWithTitle:v10 image:0 identifier:0 handler:v18];
        v14 = v13;
        if (v11 == v9)
        {
          [v13 setState:1];
        }

        if ([v9 isSynthesized])
        {
          [v14 setAttributes:1];
        }

        [(NSArray *)v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  activeMenuItems = self->_activeMenuItems;
  self->_activeMenuItems = v4;
}

uint64_t __71__AVMobilePlaybackRateMenuController__reconstructPlaybackRateMenuItems__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSynthesized];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 selectSpeed:v4];
  }

  return result;
}

- (void)setPlaybackSpeedCollection:(id)a3
{
  v5 = a3;
  if (self->_playbackSpeedCollection != v5)
  {
    v8 = v5;
    [(AVObservationController *)self->_observationController stopAllObservation];
    objc_storeStrong(&self->_playbackSpeedCollection, a3);
    playbackSpeedCollection = self->_playbackSpeedCollection;
    if (playbackSpeedCollection)
    {
      v7 = [(AVObservationController *)self->_observationController startObserving:playbackSpeedCollection keyPath:@"selectedSpeed" includeInitialValue:0 observationHandler:&__block_literal_global_4523];
    }

    [(AVMobilePlaybackRateMenuController *)self _reconstructPlaybackRateMenuItems];
    [(AVMobilePlaybackRateMenuController *)self _updatePlaybackRateMenuIfNeeded];
    v5 = v8;
  }
}

void __65__AVMobilePlaybackRateMenuController_setPlaybackSpeedCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v8 = [v5 value];
  v7 = [v5 oldValue];

  if (v8 && v7)
  {
    [v6 _updatePlaybackRateMenuItemStatesIfNeeded];
  }

  else
  {
    [v6 _reconstructPlaybackRateMenuItems];
  }

  [v6 _updatePlaybackRateMenuIfNeeded];
}

- (void)dealloc
{
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVMobilePlaybackRateMenuController;
  [(AVMobilePlaybackRateMenuController *)&v3 dealloc];
}

- (AVMobilePlaybackRateMenuController)init
{
  v9.receiver = self;
  v9.super_class = AVMobilePlaybackRateMenuController;
  v2 = [(AVMobilePlaybackRateMenuController *)&v9 init];
  if (v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:v2];
    observationController = v2->_observationController;
    v2->_observationController = v3;

    objc_initWeak(&location, v2);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__AVMobilePlaybackRateMenuController_init__block_invoke;
    v6[3] = &unk_1E7209EA8;
    objc_copyWeak(&v7, &location);
    [AVMobilePlaybackRateMenuController _loadPlaybackSpeedControlImageWithCompletionHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__AVMobilePlaybackRateMenuController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlaybackRateMenuIfNeeded];
}

+ (void)_loadPlaybackSpeedControlImageWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (!AVMobilePlaybackSpeedControlImage)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__AVMobilePlaybackRateMenuController__loadPlaybackSpeedControlImageWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7207710;
    v7 = v3;
    [v4 avkit_imageWithSymbolNamed:@"speedometer" font:v5 completion:v6];
  }
}

void __90__AVMobilePlaybackRateMenuController__loadPlaybackSpeedControlImageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong(&AVMobilePlaybackSpeedControlImage, a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

@end