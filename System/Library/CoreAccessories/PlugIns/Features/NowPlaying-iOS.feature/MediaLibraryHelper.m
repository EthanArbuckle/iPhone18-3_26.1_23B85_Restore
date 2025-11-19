@interface MediaLibraryHelper
- (MediaLibraryHelper)init;
- (int)getFilteredMediaTypesMask:(int)a3;
- (void)_updateITunesRadioEnabled;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)dealloc;
- (void)handleAppInstall:(id)a3;
- (void)handleAppUninstall:(id)a3;
@end

@implementation MediaLibraryHelper

- (void)_updateITunesRadioEnabled
{
  AppIntegerValue = __iTunesRadioEnabledOverride___overrideRadioAvailable;
  if (__iTunesRadioEnabledOverride___overrideRadioAvailable == -1)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"overrideRadioEnabled", @"com.apple.iapd", 0);
    __iTunesRadioEnabledOverride___overrideRadioAvailable = AppIntegerValue;
    if (AppIntegerValue)
    {
      goto LABEL_3;
    }
  }

  else if (__iTunesRadioEnabledOverride___overrideRadioAvailable)
  {
LABEL_3:
    if (AppIntegerValue == -1)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"overrideRadioEnabled", @"com.apple.iapd", 0);
      __iTunesRadioEnabledOverride___overrideRadioAvailable = AppIntegerValue;
    }

    self->_iTunesRadioEnabled = AppIntegerValue == 1;
    return;
  }

  if (self->_showMusic)
  {
    v4 = [MEMORY[0x277CD6020] defaultRadioLibrary];
    self->_iTunesRadioEnabled = [v4 isEnabled];
  }

  else
  {
    self->_iTunesRadioEnabled = 0;
  }
}

- (MediaLibraryHelper)init
{
  v11.receiver = self;
  v11.super_class = MediaLibraryHelper;
  v2 = [(MediaLibraryHelper *)&v11 init];
  if (!v2)
  {
    return v2;
  }

  v3 = __mediaLibraryAccessOverride___MLAccessOverride;
  if (__mediaLibraryAccessOverride___MLAccessOverride == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MediaLibraryAccessOverride", @"com.apple.iapd", 0);
    v3 = AppBooleanValue;
    __mediaLibraryAccessOverride___MLAccessOverride = AppBooleanValue;
    if ((AppBooleanValue & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  if (__mediaLibraryAccessOverride___MLAccessOverride)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = IsAppVisibleInCurrentMode("com.apple.Music");
LABEL_7:
  v2->_showMusic = v4;
  if ((v3 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = IsAppVisibleInCurrentMode("com.apple.podcasts");
  }

  v2->_showPodcasts = v6;
  if ((v3 & 4) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = IsAppVisibleInCurrentMode("com.apple.iBooks");
  }

  v2->_showAudioBooks = v7;
  [(MediaLibraryHelper *)v2 _updateITunesRadioEnabled];
  v8 = objc_alloc_init(WorkspaceObserver);
  workspaceObserver = v2->_workspaceObserver;
  v2->_workspaceObserver = v8;

  [(WorkspaceObserver *)v2->_workspaceObserver setDelegate:v2];
  [(WorkspaceObserver *)v2->_workspaceObserver startObserving];
  return v2;
}

- (void)dealloc
{
  [(WorkspaceObserver *)self->_workspaceObserver stopObserving];
  [(WorkspaceObserver *)self->_workspaceObserver setDelegate:0];
  workspaceObserver = self->_workspaceObserver;
  self->_workspaceObserver = 0;

  v4.receiver = self;
  v4.super_class = MediaLibraryHelper;
  [(MediaLibraryHelper *)&v4 dealloc];
}

- (void)handleAppInstall:(id)a3
{
  v15 = a3;
  v4 = [v15 applicationIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.Music"];

  if (v5)
  {
    showMusic = self->_showMusic;
    self->_showMusic = 1;
    if (showMusic)
    {
      goto LABEL_10;
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:kMediaLibraryMusicAppInstalledNotification object:0];

    goto LABEL_9;
  }

  v8 = [v15 applicationIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.podcasts"];

  if (v9)
  {
    showPodcasts = self->_showPodcasts;
    self->_showPodcasts = 1;
    if (showPodcasts)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:kMediaLibraryNeedFilterChange object:0];

    goto LABEL_10;
  }

  v11 = [v15 applicationIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.iBooks"];

  if (v12)
  {
    showAudioBooks = self->_showAudioBooks;
    self->_showAudioBooks = 1;
    if (!showAudioBooks)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)handleAppUninstall:(id)a3
{
  v4 = a3;
  AppBooleanValue = __mediaLibraryAccessOverride___MLAccessOverride;
  v17 = v4;
  if (__mediaLibraryAccessOverride___MLAccessOverride == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MediaLibraryAccessOverride", @"com.apple.iapd", 0);
    v4 = v17;
    __mediaLibraryAccessOverride___MLAccessOverride = AppBooleanValue;
  }

  v6 = [v4 applicationIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.Music"];

  if (v7)
  {
    showMusic = self->_showMusic;
    self->_showMusic = AppBooleanValue & 1;
    if ((AppBooleanValue & 1) == showMusic)
    {
      goto LABEL_12;
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:kMediaLibraryMusicAppUninstalledNotification object:0];

LABEL_11:
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 postNotificationName:kMediaLibraryNeedFilterChange object:0];

    goto LABEL_12;
  }

  v10 = [v17 applicationIdentifier];
  v11 = [v10 isEqualToString:@"com.apple.podcasts"];

  if (v11)
  {
    showPodcasts = self->_showPodcasts;
    v13 = (AppBooleanValue >> 1) & 1;
    self->_showPodcasts = (AppBooleanValue & 2) != 0;
  }

  else
  {
    v14 = [v17 applicationIdentifier];
    v15 = [v14 isEqualToString:@"com.apple.iBooks"];

    if (!v15)
    {
      goto LABEL_12;
    }

    showPodcasts = self->_showAudioBooks;
    v13 = (AppBooleanValue >> 2) & 1;
    self->_showAudioBooks = (AppBooleanValue & 4) != 0;
  }

  if (v13 != showPodcasts)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (int)getFilteredMediaTypesMask:(int)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 3327;
  }

  if (!self->_showMusic)
  {
    v3 &= 0xFFFFF7FE;
  }

  if (!self->_showPodcasts)
  {
    v3 &= 0xFFFFFBFD;
  }

  if (self->_showAudioBooks)
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFFFB;
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MediaLibraryHelper *)self handleAppInstall:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applicationsWillUninstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MediaLibraryHelper *)self handleAppUninstall:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MediaLibraryHelper *)self handleAppUninstall:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end