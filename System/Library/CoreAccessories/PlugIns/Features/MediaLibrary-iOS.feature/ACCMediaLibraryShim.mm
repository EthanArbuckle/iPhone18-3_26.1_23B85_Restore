@interface ACCMediaLibraryShim
+ (BOOL)allowCachedTracksForAppleMusic;
+ (BOOL)isMusicAppVisible;
- (ACCMediaLibraryShim)initWithAccessory:(id)accessory windowPerLibrary:(unsigned int)library delegate:(id)delegate;
- (ACCMediaLibraryShimDelegate)delegate;
- (BOOL)_checkForDifferentMediaLibraries;
- (BOOL)_checkForDifferentRadioLibrary;
- (BOOL)isGeniusMixesSupported;
- (void)_handlMediaLibraryNeedFilterChange:(id)change;
- (void)_mediaLibrariesAvailableChanged:(id)changed;
- (void)_sendLibraryInfoList;
- (void)_setupNewLibraries:(id)libraries forAccessory:(id)accessory;
- (void)_updateMediaLibraryInfomationUpdates:(BOOL)updates;
- (void)_updateSubscribedToAppleMusicStatus:(BOOL)status;
- (void)confirmMediaLibraryPlaylistContentUpdate:(id)update lastRevision:(id)revision;
- (void)confirmMediaLibraryUpdate:(id)update lastRevision:(id)revision updateCount:(unsigned int)count;
- (void)dealloc;
- (void)playAllSongs:(id)songs;
- (void)playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d;
- (void)playMediaLibraryCollection:(id)collection collection:(unint64_t)a4 type:(int)type firstItemIndex:(unint64_t)index;
- (void)playMediaLibraryCollection:(id)collection collection:(unint64_t)a4 type:(int)type firstItemPersistentID:(unint64_t)d;
- (void)playMediaLibraryCurrentSelection:(id)selection;
- (void)playMediaLibraryItems:(id)items itemList:(id)list firstItemIndex:(unint64_t)index;
- (void)shuttingDown;
- (void)startMediaLibraryUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info;
- (void)startSendingMediaLibraryInfomationUpdates;
- (void)startShimForAccessoryAttach:(id)attach;
- (void)stopAllMediaLibraryUpdate;
- (void)stopMediaLibraryUpdate:(id)update;
- (void)stopSendingMediaLibraryInfomationUpdates;
@end

@implementation ACCMediaLibraryShim

+ (BOOL)allowCachedTracksForAppleMusic
{
  AppBooleanValue = __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting;
  if (__allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"allowCachedTracksForAppleMusic", @"com.apple.iapd", 0);
    __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting = AppBooleanValue;
  }

  return AppBooleanValue != 0;
}

+ (BOOL)isMusicAppVisible
{
  v2 = GetMediaLibraryHelper();
  showMusic = [v2 showMusic];

  return showMusic;
}

- (void)_updateSubscribedToAppleMusicStatus:(BOOL)status
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_isShuttingDown && self->_enableLibraryInfoUpdate)
  {
    statusCopy = status;
    AppBooleanValue = __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting;
    if (__allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting == -1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"allowCachedTracksForAppleMusic", @"com.apple.iapd", 0);
      __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting = AppBooleanValue;
    }

    if (AppBooleanValue)
    {
      if (__mlForceAppleMusicSubscribedState == 1)
      {
        v6 = 0;
      }

      else
      {
        if (__mlForceAppleMusicSubscribedState != 2)
        {
          if (statusCopy)
          {
          }

          v6 = 0;
          v7 = 36;
          goto LABEL_14;
        }

        v6 = 1;
      }

      v7 = 35;
LABEL_14:
      *(&self->super.isa + v7) = v6;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v8 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        subscribedToAppleMusic = self->_subscribedToAppleMusic;
        v12[0] = 67109376;
        v12[1] = __mlForceAppleMusicSubscribedState;
        v13 = 1024;
        v14 = subscribedToAppleMusic;
        _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_DEFAULT, "_updateSubscribedToAppleMusicStatus: __mlForceAppleMusicSubscribedState=%d _subscribedToAppleMusic=%d", v12, 0xEu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_mediaLibrariesAvailableChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = changedCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_INFO, "_mediaLibrariesAvailableChanged: notification=%@", buf, 0xCu);
  }

  if (self->_enableLibraryInfoUpdate && !self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ACCMediaLibraryShim__mediaLibrariesAvailableChanged___block_invoke;
    block[3] = &unk_2789E3478;
    block[4] = self;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

_BYTE *__55__ACCMediaLibraryShim__mediaLibrariesAvailableChanged___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[32] == 1 && (result[33] & 1) == 0)
  {
    return [result _updateMediaLibraryInfomationUpdates:0];
  }

  return result;
}

- (void)_handlMediaLibraryNeedFilterChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = changeCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_INFO, "_handlMediaLibraryNeedFilterChange: notification=%@", &v9, 0xCu);
  }

  [(ACCMediaLibraryShim *)self _mediaLibrariesAvailableChanged:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupNewLibraries:(id)libraries forAccessory:(id)accessory
{
  v60 = *MEMORY[0x277D85DE8];
  librariesCopy = libraries;
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    enableLibraryInfoUpdate = self->_enableLibraryInfoUpdate;
    isShuttingDown = self->_isShuttingDown;
    *buf = 67109890;
    v53 = enableLibraryInfoUpdate;
    v54 = 1024;
    v55 = isShuttingDown;
    v56 = 2112;
    v57 = librariesCopy;
    v58 = 2112;
    v59 = accessoryCopy;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "_setupNewLibraries: _enableLibraryInfoUpdate=%d _isShuttingDown=%d oldLibraryList=%@ accessory=%@", buf, 0x22u);
  }

  if (self->_enableLibraryInfoUpdate && !self->_isShuttingDown)
  {
    mediaLibraries = [MEMORY[0x277CD5E10] mediaLibraries];
    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    libraryList = self->_libraryList;
    p_libraryList = &self->_libraryList;
    self->_libraryList = v13;

    subscribedToAppleMusic = [(ACCMediaLibraryShim *)self subscribedToAppleMusic];
    deviceLibrary = self->_deviceLibrary;
    self->_deviceLibrary = 0;

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v17 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ACCMediaLibraryShim _setupNewLibraries:? forAccessory:?];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = mediaLibraries;
    v19 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = ACCMediaLibraryShimUIDString(v23, subscribedToAppleMusic);
          v25 = ACCMediaLibraryShimUIDString(self->_deviceMediaLibrary, subscribedToAppleMusic);
          v26 = [v24 isEqualToString:v25];

          if (!librariesCopy || ([librariesCopy objectForKey:v24], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v27 = [[ACCMediaLibraryShimInfo alloc] initWithMediaLibrary:v23 accessory:accessoryCopy Context:self LibraryType:v26 ^ 1u];
          }

          [v46 setObject:v23 forKey:v24];
          if (v26)
          {
            objc_storeStrong(&self->_deviceLibrary, v27);
          }

          [(NSMutableDictionary *)*p_libraryList setObject:v27 forKey:v24];
        }

        v20 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }

    radioLibrary = self->_radioLibrary;
    if (radioLibrary)
    {
      v29 = 0x2812FE000;
      v30 = 0x2812FE000;
      if (self->_radioIsEnabled)
      {
LABEL_40:
        p_libraries = &self->_libraries;
        libraries = self->_libraries;
        if (libraries)
        {
          *p_libraries = 0;
        }

        if (self->_enableLibraryInfoUpdate)
        {
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46];
          v38 = *p_libraries;
          *p_libraries = v37;
        }

        v39 = *(v29 + 3824);
        if (v39 && *(v30 + 3816) >= 1)
        {
          v40 = *v39;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v40 = MEMORY[0x277D86220];
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [ACCMediaLibraryShim _setupNewLibraries:p_libraryList forAccessory:?];
        }

        goto LABEL_53;
      }

      self->_radioLibrary = 0;
    }

    else
    {
      v29 = 0x2812FE000uLL;
      v30 = 0x2812FE000uLL;
      if (!self->_mpRadioLibrary || !self->_radioIsEnabled)
      {
        goto LABEL_40;
      }

      v31 = [[ACCMediaLibraryShimInfo alloc] initWithMediaLibrary:self->_mpRadioLibrary accessory:accessoryCopy Context:self LibraryType:2];
      v32 = self->_radioLibrary;
      self->_radioLibrary = v31;

      v33 = self->_libraryList;
      v34 = self->_radioLibrary;
      radioLibrary = [(ACCMediaLibraryShimInfo *)v34 UIDString];
      [(NSMutableDictionary *)v33 setObject:v34 forKey:radioLibrary];
    }

    goto LABEL_40;
  }

LABEL_53:

  v42 = *MEMORY[0x277D85DE8];
}

- (ACCMediaLibraryShim)initWithAccessory:(id)accessory windowPerLibrary:(unsigned int)library delegate:(id)delegate
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  delegateCopy = delegate;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v41 = accessoryCopy;
    v42 = 1024;
    libraryCopy = library;
    v44 = 2112;
    v45 = delegateCopy;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_INFO, "ACCMediaLibraryShim  initWithAccessory: %@ windowPerLibrary: %u delegate: %@", buf, 0x1Cu);
  }

  v39.receiver = self;
  v39.super_class = ACCMediaLibraryShim;
  v14 = [(ACCMediaLibraryShim *)&v39 init];
  if (v14)
  {
    v15 = [[ACCSettingsState alloc] initWithKey:@"MeasureMemoryUsage" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:0 invalidValue:-1];
    measureMemoryUsage = v14->_measureMemoryUsage;
    v14->_measureMemoryUsage = v15;

    v17 = GetMediaLibraryHelper();
    if (__mlForceAppleMusicSubscribedState == -1)
    {
      __mlForceAppleMusicSubscribedState = CFPreferencesGetAppIntegerValue(@"ACCForceAppleMusicSubscribedState", @"com.apple.iapd", 0);
    }

    v18 = dispatch_queue_create("com.apple.accml.mediaLibraryInfoQ", 0);
    libraryInfoUpdateQ = v14->_libraryInfoUpdateQ;
    v14->_libraryInfoUpdateQ = v18;

    v14->_enableLibraryInfoUpdate = 0;
    objc_storeStrong(&v14->_accessory, accessory);
    v14->_isShuttingDown = 0;
    deviceLibrary = v14->_deviceLibrary;
    v14->_deviceLibrary = 0;

    radioLibrary = v14->_radioLibrary;
    v14->_radioLibrary = 0;

    v14->_windowPerLibrary = library;
    libraries = v14->_libraries;
    v14->_libraries = 0;

    libraryList = v14->_libraryList;
    v14->_libraryList = 0;

    objc_storeWeak(&v14->_delegate, delegateCopy);
    memUse = v14->_memUse;
    v14->_memUse = 0;

    if ([(ACCSettingsState *)v14->_measureMemoryUsage BOOLValue])
    {
      v25 = [[ACCMemUsageStat alloc] initWithName:@"ACCMediaLibraryUpdate"];
      v26 = v14->_memUse;
      v14->_memUse = v25;
    }

    v27 = MEMORY[0x277CD5E10];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [v27 setRunLoopForNotifications:mainRunLoop];

    [MEMORY[0x277CD5E38] setFilteringDisabled:1];
    v29 = [MEMORY[0x277CD5E30] predicateWithValue:&unk_2848E90E8 forProperty:*MEMORY[0x277CD57C8]];
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary addLibraryFilterPredicate:v29];

    deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    deviceMediaLibrary = v14->_deviceMediaLibrary;
    v14->_deviceMediaLibrary = deviceMediaLibrary;

    defaultRadioLibrary = [MEMORY[0x277CD6020] defaultRadioLibrary];
    mpRadioLibrary = v14->_mpRadioLibrary;
    v14->_mpRadioLibrary = defaultRadioLibrary;

    v35 = GetMediaLibraryHelper();
    v14->_radioIsEnabled = [v35 iTunesRadioEnabled];

    v14->_subscribedToAppleMusic = 0;
    [(ACCMediaLibraryShim *)v14 _updateSubscribedToAppleMusicStatus:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__mediaLibrariesAvailableChanged_ name:*MEMORY[0x277CD58C8] object:0];
    if (__allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting == -1)
    {
      __allowCachedTracksForAppleMusic___allowCachedTracksForAppleMusicSetting = CFPreferencesGetAppBooleanValue(@"allowCachedTracksForAppleMusic", @"com.apple.iapd", 0);
    }

    [defaultCenter addObserver:v14 selector:sel__mediaLibrariesAvailableChanged_ name:*MEMORY[0x277CD5CE8] object:0];
    [defaultCenter addObserver:v14 selector:sel__handlMediaLibraryNeedFilterChange_ name:kMediaLibraryNeedFilterChange object:0];
  }

  v37 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)startShimForAccessoryAttach:(id)attach
{
  attachCopy = attach;
  libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ACCMediaLibraryShim_startShimForAccessoryAttach___block_invoke;
  v7[3] = &unk_2789E3428;
  v7[4] = self;
  v8 = attachCopy;
  v6 = attachCopy;
  dispatch_async(libraryInfoUpdateQ, v7);
}

- (void)shuttingDown
{
  v54 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    libraries = self->_libraries;
    libraryList = self->_libraryList;
    *buf = 138412546;
    v46 = libraries;
    v47 = 2112;
    v48 = libraryList;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_INFO, "ACCMediaLibraryShim shuttingDown: _libraries=%@  _libraryList=%@", buf, 0x16u);
  }

  *&self->_enableLibraryInfoUpdate = 256;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ACCMediaLibraryShim_shuttingDown__block_invoke;
  block[3] = &unk_2789E3478;
  block[4] = self;
  dispatch_async(libraryInfoUpdateQ, block);
  if ([(ACCSettingsState *)self->_measureMemoryUsage BOOLValue])
  {
    memUse = self->_memUse;
    if (memUse)
    {
      v37 = defaultCenter;
      [(ACCMemUsageStat *)memUse update];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v11 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        accessoryUID = [(ACCMediaLibraryAccessory *)self->_accessory accessoryUID];
        date = [MEMORY[0x277CBEAA8] date];
        statInfo = [(ACCMemUsageStat *)self->_memUse statInfo];
        startTime = [statInfo startTime];
        [date timeIntervalSinceDate:startTime];
        v17 = self->_memUse;
        *buf = 138412802;
        v46 = accessoryUID;
        v47 = 2048;
        v48 = v18;
        v49 = 2112;
        v50 = v17;
        _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_DEFAULT, "shuttingDown: %@, Finished after %f sec, memUse:\n%@", buf, 0x20u);
      }

      markList = [(ACCMemUsageStat *)self->_memUse markList];
      v38 = [markList count];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      selfCopy = self;
      markList2 = [(ACCMemUsageStat *)self->_memUse markList];
      allValues = [markList2 allValues];

      v22 = [allValues countByEnumeratingWithState:&v40 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v41;
        v26 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(allValues);
            }

            v28 = *(*(&v40 + 1) + 8 * i);
            v29 = gLogObjects;
            v30 = gNumLogObjects;
            if (gLogObjects)
            {
              v31 = gNumLogObjects < 1;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v46 = v29;
                v47 = 1024;
                LODWORD(v48) = v30;
                _os_log_error_impl(&dword_2335D3000, v26, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v32 = v26;
              v33 = v26;
            }

            else
            {
              v33 = *gLogObjects;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              accessoryUID2 = [(ACCMediaLibraryAccessory *)selfCopy->_accessory accessoryUID];
              *buf = 138413058;
              v46 = accessoryUID2;
              v47 = 2048;
              v48 = v24;
              v49 = 2048;
              v50 = v38;
              v51 = 2112;
              v52 = v28;
              _os_log_impl(&dword_2335D3000, v33, OS_LOG_TYPE_DEFAULT, "shuttingDown: %@, mark: %lu / %lu \n%@", buf, 0x2Au);
            }

            v24 = (v24 + 1);
          }

          v23 = [allValues countByEnumeratingWithState:&v40 objects:v53 count:16];
        }

        while (v23);
      }

      self = selfCopy;
      defaultCenter = v37;
    }
  }

  accessory = self->_accessory;
  self->_accessory = 0;

  v36 = *MEMORY[0x277D85DE8];
}

void __35__ACCMediaLibraryShim_shuttingDown__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 allValues];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v16 + 1) + 8 * v8++) shuttingDown];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;

    v2 = *(a1 + 32);
  }

  objc_storeWeak((v2 + 88), 0);
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 72);
  *(v13 + 72) = 0;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(self + 8);
  v2 = *(self + 64);
  OUTLINED_FUNCTION_7();
  v7 = v3;
  _os_log_debug_impl(&dword_2335D3000, v4, OS_LOG_TYPE_DEBUG, "ACCMediaLibraryShim dealloc: _libraries=%@  _libraryList=%@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__ACCMediaLibraryShim_dealloc__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 allValues];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v15 + 1) + 8 * v8++) shuttingDown];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;

    v2 = *(a1 + 32);
  }

  v11 = *(v2 + 80);
  *(v2 + 80) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 72);
  *(v12 + 72) = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkForDifferentMediaLibraries
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_libraries)
  {
    v16 = 1;
    goto LABEL_23;
  }

  mediaLibraries = [MEMORY[0x277CD5E10] mediaLibraries];
  subscribedToAppleMusic = [(ACCMediaLibraryShim *)self subscribedToAppleMusic];
  v5 = [(NSDictionary *)self->_libraries count];
  if (v5 != [mediaLibraries count])
  {
    v16 = 1;
    goto LABEL_22;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = mediaLibraries;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v20;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = ACCMediaLibraryShimUIDString(*(*(&v19 + 1) + 8 * i), subscribedToAppleMusic);
      v12 = ACCMediaLibraryShimUIDString(self->_deviceMediaLibrary, subscribedToAppleMusic);
      v13 = [v11 isEqualToString:{v12, v19}];

      if (v13)
      {
        v14 = [(NSDictionary *)self->_libraries objectForKey:v11];

        if (!v14)
        {
          v16 = 1;
          goto LABEL_20;
        }
      }

      if (!self->_enableLibraryInfoUpdate)
      {
        v16 = 0;
LABEL_20:

        goto LABEL_21;
      }

      isShuttingDown = self->_isShuttingDown;

      if (isShuttingDown)
      {
        goto LABEL_17;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v16 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:
LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_checkForDifferentRadioLibrary
{
  v19 = *MEMORY[0x277D85DE8];
  radioIsEnabled = self->_radioIsEnabled;
  v4 = GetMediaLibraryHelper();
  iTunesRadioEnabled = [v4 iTunesRadioEnabled];

  if (radioIsEnabled != iTunesRadioEnabled)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_radioIsEnabled;
      v10 = GetMediaLibraryHelper();
      v16[0] = 67109376;
      v16[1] = v9;
      v17 = 1024;
      iTunesRadioEnabled2 = [v10 iTunesRadioEnabled];
      _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_INFO, "_checkForDifferentRadioLibrary: _radioIsEnabled=%d->%d", v16, 0xEu);
    }

    v11 = GetMediaLibraryHelper();
    self->_radioIsEnabled = [v11 iTunesRadioEnabled];

    if (self->_radioIsEnabled)
    {
      defaultRadioLibrary = [MEMORY[0x277CD6020] defaultRadioLibrary];
      mpRadioLibrary = self->_mpRadioLibrary;
      self->_mpRadioLibrary = defaultRadioLibrary;
    }
  }

  result = radioIsEnabled != iTunesRadioEnabled;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_sendLibraryInfoList
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_enableLibraryInfoUpdate)
  {
    if (self->_isShuttingDown)
    {
      goto LABEL_15;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allValues = [(NSMutableDictionary *)self->_libraryList allValues];
    v5 = [allValues countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v40;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        if (![v9 libraryType])
        {
          v10 = objc_alloc(MEMORY[0x277CE82B0]);
          uIDString = [v9 UIDString];
          name = [v9 name];
          v13 = [v10 initWithMediaLibrary:uIDString name:name type:{objc_msgSend(v9, "libraryType")}];

          [v3 addObject:v13];
        }

        if (!self->_enableLibraryInfoUpdate || self->_isShuttingDown)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [allValues countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if (self->_enableLibraryInfoUpdate)
    {
LABEL_15:
      if (!self->_isShuttingDown)
      {
        if (self->_mpRadioLibrary && self->_radioLibrary)
        {
          if (gLogObjects)
          {
            v14 = gNumLogObjects <= 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (self->_radioIsEnabled)
          {
            if (v15)
            {
              v16 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCMediaLibraryShimInfo _getUIDString];
              }

              v16 = MEMORY[0x277D86220];
              v24 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              radioIsEnabled = self->_radioIsEnabled;
              radioLibrary = self->_radioLibrary;
              mpRadioLibrary = self->_mpRadioLibrary;
              *buf = 67109634;
              *v44 = radioIsEnabled;
              *&v44[4] = 2112;
              *&v44[6] = radioLibrary;
              *&v44[14] = 2112;
              *&v44[16] = mpRadioLibrary;
              _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "_sendLibraryInfoList: _radioIsEnabled=%d _radioLibrary=%@ _mpRadioLibrary=%@", buf, 0x1Cu);
            }

            uIDString2 = [(ACCMediaLibraryShimInfo *)self->_radioLibrary UIDString];
            if ([(ACCMediaLibraryShimInfo *)self->_radioLibrary libraryType]== 2)
            {
              v28 = acc_strings_bundle();
              v29 = [v28 localizedStringForKey:@"Apple Music Radio" value:&stru_2848E72C8 table:0];

              v30 = [objc_alloc(MEMORY[0x277CE82B0]) initWithMediaLibrary:uIDString2 name:v29 type:2];
              [v3 addObject:v30];
            }

            goto LABEL_50;
          }

          if (v15)
          {
            uIDString2 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCMediaLibraryShimInfo _getUIDString];
            }

            uIDString2 = MEMORY[0x277D86220];
            v31 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(uIDString2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_50;
          }

          stationCount = [(MPRadioLibrary *)self->_mpRadioLibrary stationCount];
          v33 = self->_radioIsEnabled;
          *buf = 134218240;
          *v44 = stationCount;
          *&v44[8] = 1024;
          *&v44[10] = v33;
          v21 = "_sendLibraryInfoList: RadioLibrary count(%llu) == 0 _radioIsEnabled=%d";
          v22 = uIDString2;
          v23 = 18;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            uIDString2 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCMediaLibraryShimInfo _getUIDString];
            }

            uIDString2 = MEMORY[0x277D86220];
            v18 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(uIDString2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_50;
          }

          v19 = self->_radioLibrary;
          v20 = self->_mpRadioLibrary;
          *buf = 138412546;
          *v44 = v19;
          *&v44[8] = 2112;
          *&v44[10] = v20;
          v21 = "_sendLibraryInfoList: Error, no RadioLibrary (info=%@ mp=%@)";
          v22 = uIDString2;
          v23 = 22;
        }

        _os_log_impl(&dword_2335D3000, v22, OS_LOG_TYPE_INFO, v21, buf, v23);
LABEL_50:
      }
    }
  }

  if (self->_enableLibraryInfoUpdate && !self->_isShuttingDown)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v35 = objc_loadWeakRetained(&self->_delegate);
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = objc_loadWeakRetained(&self->_delegate);
        [v37 notifyAvailableLibraries:v3];
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_updateMediaLibraryInfomationUpdates:(BOOL)updates
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_enableLibraryInfoUpdate && !self->_isShuttingDown)
  {
    updatesCopy = updates;
    _checkForDifferentRadioLibrary = [(ACCMediaLibraryShim *)self _checkForDifferentRadioLibrary];
    _checkForDifferentMediaLibraries = [(ACCMediaLibraryShim *)self _checkForDifferentMediaLibraries];
    if (self->_enableLibraryInfoUpdate && !self->_isShuttingDown && (_checkForDifferentRadioLibrary || _checkForDifferentMediaLibraries || updatesCopy))
    {
      v7 = self->_libraryList;
      libraryList = self->_libraryList;
      self->_libraryList = 0;

      [(ACCMediaLibraryShim *)self _setupNewLibraries:v7 forAccessory:self->_accessory];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      allValues = [(NSMutableDictionary *)v7 allValues];
      v10 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(allValues);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = self->_libraryList;
            uIDString = [v14 UIDString];
            v17 = [(NSMutableDictionary *)v15 objectForKey:uIDString];

            if (!v17)
            {
              [v14 stopSendingMediaLibraryUpdates];
              [v14 shuttingDown];
            }
          }

          v11 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      [(ACCMediaLibraryShim *)self _sendLibraryInfoList];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startSendingMediaLibraryInfomationUpdates
{
  v12 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    enableLibraryInfoUpdate = self->_enableLibraryInfoUpdate;
    *buf = 67109120;
    v11 = enableLibraryInfoUpdate;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "startSendingMediaLibraryInfomationUpdates _enableLibraryInfoUpdate=%d", buf, 8u);
  }

  if (!self->_enableLibraryInfoUpdate)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ACCMediaLibraryShim_startSendingMediaLibraryInfomationUpdates__block_invoke;
    block[3] = &unk_2789E3478;
    block[4] = self;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ACCMediaLibraryShim_startSendingMediaLibraryInfomationUpdates__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 32);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = 1;
    _os_log_impl(&dword_2335D3000, v4, OS_LOG_TYPE_INFO, "startSendingMediaLibraryInfomationUpdates: _updateMediaLibraryInfomationUpdates:true _enableLibraryInfoUpdate=%d->%d", v8, 0xEu);
  }

  *(*(a1 + 32) + 32) = 1;
  result = [*(a1 + 32) _updateMediaLibraryInfomationUpdates:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopSendingMediaLibraryInfomationUpdates
{
  v14 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    enableLibraryInfoUpdate = self->_enableLibraryInfoUpdate;
    *buf = 67109376;
    v11 = enableLibraryInfoUpdate;
    v12 = 1024;
    v13 = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "stopSendingMediaLibraryInfomationUpdates _enableLibraryInfoUpdate=%d->%d", buf, 0xEu);
  }

  self->_enableLibraryInfoUpdate = 0;
  libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ACCMediaLibraryShim_stopSendingMediaLibraryInfomationUpdates__block_invoke;
  block[3] = &unk_2789E3478;
  block[4] = self;
  dispatch_async(libraryInfoUpdateQ, block);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __63__ACCMediaLibraryShim_stopSendingMediaLibraryInfomationUpdates__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 32);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&dword_2335D3000, v4, OS_LOG_TYPE_INFO, "_updateMediaLibraryInfomationUpdates:false _enableLibraryInfoUpdate=%d->%d", v8, 0xEu);
  }

  *(*(a1 + 32) + 32) = 0;
  result = [*(a1 + 32) _updateMediaLibraryInfomationUpdates:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isGeniusMixesSupported
{
  AppBooleanValue = isGeniusMixesSupported___bGeniusMixSupportEnable;
  if (isGeniusMixesSupported___bGeniusMixSupportEnable == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"GeniusMixSupport", @"com.apple.iapd", 0);
    isGeniusMixesSupported___bGeniusMixSupportEnable = AppBooleanValue;
  }

  return AppBooleanValue != 0;
}

- (void)startMediaLibraryUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info
{
  v58 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  infoCopy = info;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = ACCMediaLibraryFeatureRequestedInfoDesc(infoCopy);
    *buf = 138412802;
    v53 = updateCopy;
    v54 = 2112;
    v55 = revisionCopy;
    v56 = 2112;
    v57 = v14;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_DEFAULT, "startMediaLibraryUpdate:%@ lastRevision:%@ requestedInfo:%@", buf, 0x20u);
  }

  v33 = revisionCopy;

  v34 = updateCopy;
  [v10 setValue:updateCopy forKey:@"LibUID"];
  [v10 setValue:@"1" forKey:@"Progress"];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = infoCopy;
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v36 = 0;
    v35 = 0;
    v39 = *v48;
    v38 = *MEMORY[0x277CE8290];
    v37 = *MEMORY[0x277CE8278];
    v18 = *MEMORY[0x277CE8288];
    v19 = *MEMORY[0x277CE8298];
    v20 = *MEMORY[0x277CE8270];
    v21 = *MEMORY[0x277CE8280];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v47 + 1) + 8 * i);
        if ([v23 isEqualToString:v38])
        {
          v24 = [v15 objectForKey:v23];
          [v10 setValue:v24 forKey:@"PlaylistProperty"];
        }

        if ([v23 isEqualToString:v37])
        {
          v25 = [v15 objectForKey:v23];
          [v10 setValue:v25 forKey:@"ItemProperty"];
        }

        if ([v23 isEqualToString:v18])
        {
          v26 = [v15 objectForKey:v23];
          [v10 setValue:v26 forKey:@"PlaylistContentStyle"];
          if ([v26 intValue] == 1 || objc_msgSend(v26, "intValue") == 3)
          {
            v35 = 1;
          }

          if ([v26 intValue] == 2 || objc_msgSend(v26, "intValue") == 3)
          {
            LOBYTE(v36) = 1;
          }
        }

        if ([v23 isEqualToString:v19])
        {
          v27 = [v15 objectForKey:v23];
          [v10 setValue:v27 forKey:@"PlaylistContentItemProperty"];

          BYTE4(v36) = 1;
        }

        if ([v23 isEqualToString:v20])
        {
          v28 = [v15 objectForKey:v23];
          [v10 setValue:v28 forKey:@"HideNonLocal"];
        }

        if ([v23 isEqualToString:v21])
        {
          v29 = [v15 objectForKey:v23];
          [v10 setValue:v29 forKey:@"PlayAllSongsCapable"];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v17);
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__ACCMediaLibraryShim_startMediaLibraryUpdate_lastRevision_requestedInfo___block_invoke;
    block[3] = &unk_2789E3510;
    block[4] = self;
    v41 = v10;
    v44 = v35 & 1;
    v45 = v36 & 1;
    v46 = BYTE4(v36) & 1;
    v42 = v33;
    v43 = v34;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __74__ACCMediaLibraryShim_startMediaLibraryUpdate_lastRevision_requestedInfo___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 33) & 1) == 0)
  {
    v2 = [*(a1 + 40) objectForKey:@"LibUID"];
    v3 = [*(*(a1 + 32) + 64) objectForKey:v2];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 65);
        v13 = *(a1 + 66);
        v15 = 138413058;
        v16 = v4;
        v17 = 1024;
        *v18 = v11;
        *&v18[4] = 1024;
        *&v18[6] = v12;
        v19 = 1024;
        v20 = v13;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "startSendingMediaLibraryUpdates: libraryinInfo=%@ requestedPlaylistContentTransferID=%d requestedPlaylistContentMetaList=%d requestedPlaylistContentMetaProperties=%d", &v15, 0x1Eu);
      }

      [v4 startSendingMediaLibraryUpdates:*(a1 + 40) lastRevision:*(a1 + 48) requestedTransferID:*(a1 + 64) requestedMetaList:*(a1 + 65) requestedMetaProperties:*(a1 + 66)];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        v15 = 138412546;
        v16 = v8;
        v17 = 2112;
        *v18 = v4;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "startSendingMediaLibraryUpdates: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@ libraryInfo=%@", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopMediaLibraryUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412546;
    v14 = updateCopy;
    v15 = 1024;
    v16 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "stopMediaLibraryUpdate: %@ _isShuttingDown=%d", buf, 0x12u);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__ACCMediaLibraryShim_stopMediaLibraryUpdate___block_invoke;
    v11[3] = &unk_2789E3428;
    v11[4] = self;
    v12 = updateCopy;
    dispatch_async(libraryInfoUpdateQ, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __46__ACCMediaLibraryShim_stopMediaLibraryUpdate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "stopMediaLibraryUpdate: libraryInfo=%@, call stopSendingMediaLibraryUpdates:", &v13, 0xCu);
      }

      [v4 stopSendingMediaLibraryUpdates];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "stopMediaLibraryUpdate: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v13, 0xCu);
      }
    }

    v11 = *(*(a1 + 32) + 48);
    if (v11)
    {
      [v11 clearAllUpdatesForLibrary:*(a1 + 40)];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopAllMediaLibraryUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 67109120;
    v11 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "stopAllMediaLibraryUpdate _isShuttingDown=%d", buf, 8u);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ACCMediaLibraryShim_stopAllMediaLibraryUpdate__block_invoke;
    block[3] = &unk_2789E3478;
    block[4] = self;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *__48__ACCMediaLibraryShim_stopAllMediaLibraryUpdate__block_invoke(void *result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = result[4];
  if ((*(v1 + 33) & 1) == 0)
  {
    v20 = result;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = [*(v1 + 64) allValues];
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      v6 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [v8 isShuttingDown];
          v10 = gLogObjects;
          v11 = gNumLogObjects;
          if (gLogObjects)
          {
            v12 = gNumLogObjects <= 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          if (v9)
          {
            if (v13)
            {
              v14 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v27 = v10;
                v28 = 1024;
                v29 = v11;
                _os_log_error_impl(&dword_2335D3000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v16 = v6;
              v14 = v6;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v8 UIDString];
              *buf = 138412290;
              v27 = v17;
              _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_DEFAULT, "stopAllMediaLibraryUpdate: WARNING No libraryInfo or shuttingDown for libraryInfo.UIDString=%@", buf, 0xCu);
            }
          }

          else
          {
            if (v13)
            {
              v15 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v27 = v10;
                v28 = 1024;
                v29 = v11;
                _os_log_error_impl(&dword_2335D3000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v18 = v6;
              v15 = v6;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v8;
              _os_log_impl(&dword_2335D3000, v15, OS_LOG_TYPE_INFO, "stopAllMediaLibraryUpdate: libraryInfo=%@, call stopSendingMediaLibraryUpdates:", buf, 0xCu);
            }

            [v8 stopSendingMediaLibraryUpdates];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
    }

    result = *(v20[4] + 48);
    if (result)
    {
      result = [result clearAllUpdates];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)playMediaLibraryCurrentSelection:(id)selection
{
  v17 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412546;
    v14 = selectionCopy;
    v15 = 1024;
    v16 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCurrentSelection: %@ _isShuttingDown=%d", buf, 0x12u);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__ACCMediaLibraryShim_playMediaLibraryCurrentSelection___block_invoke;
    v11[3] = &unk_2789E3428;
    v11[4] = self;
    v12 = selectionCopy;
    dispatch_async(libraryInfoUpdateQ, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__ACCMediaLibraryShim_playMediaLibraryCurrentSelection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playMediaLibraryCurrentSelection: libraryInfo=%@, call startMLPlaybackWithResume:", &v12, 0xCu);
      }

      [v4 startMLPlaybackWithResume:1];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCurrentSelection: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)playMediaLibraryItems:(id)items itemList:(id)list firstItemIndex:(unint64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  listCopy = list;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [listCopy count];
    isShuttingDown = self->_isShuttingDown;
    *buf = 138413058;
    v22 = itemsCopy;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    indexCopy = index;
    v27 = 1024;
    v28 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v12, OS_LOG_TYPE_DEFAULT, "playMediaLibraryItems: %@ itemList.count:%lu firstItemIndex:%lu _isShuttingDown=%d", buf, 0x26u);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__ACCMediaLibraryShim_playMediaLibraryItems_itemList_firstItemIndex___block_invoke;
    v17[3] = &unk_2789E3538;
    v17[4] = self;
    v18 = itemsCopy;
    v19 = listCopy;
    indexCopy2 = index;
    dispatch_async(libraryInfoUpdateQ, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __69__ACCMediaLibraryShim_playMediaLibraryItems_itemList_firstItemIndex___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 48) count];
        v12 = *(a1 + 56);
        v14 = 138412802;
        v15 = v4;
        v16 = 2048;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playMediaLibraryItems: libraryInfo=%@  itemList.count=%lu firstItemIndex=%lu, call startPlaybackOfItems:witFirst:", &v14, 0x20u);
      }

      [v4 startPlaybackOfItems:*(a1 + 48) withFirst:*(a1 + 56)];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playMediaLibraryItems: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)playMediaLibraryCollection:(id)collection collection:(unint64_t)a4 type:(int)type firstItemIndex:(unint64_t)index
{
  v32 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138413314;
    v23 = collectionCopy;
    v24 = 2048;
    v25 = a4;
    v26 = 1024;
    typeCopy = type;
    v28 = 2048;
    indexCopy = index;
    v30 = 1024;
    v31 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCollection: %@ collectionPersistentID:%llu collectionType:%d firstItemIndex:%lu _isShuttingDown=%d", buf, 0x2Cu);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__ACCMediaLibraryShim_playMediaLibraryCollection_collection_type_firstItemIndex___block_invoke;
    block[3] = &unk_2789E3560;
    block[4] = self;
    v18 = collectionCopy;
    v19 = a4;
    typeCopy2 = type;
    indexCopy2 = index;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __81__ACCMediaLibraryShim_playMediaLibraryCollection_collection_type_firstItemIndex___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v15 = 138413058;
        v16 = v4;
        v17 = 2048;
        v18 = v12;
        v19 = 1024;
        v20 = v11;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playMediaLibraryCollection: libraryInfo=%@ collectionPersistentID=%llu collectionType=%d firstItemIndex=%lu, call startPlaybackOfCollection:ofType:withFirst:", &v15, 0x26u);
      }

      [v4 startPlaybackOfCollection:*(a1 + 48) ofType:*(a1 + 64) withFirst:*(a1 + 56)];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCollection WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)playMediaLibraryCollection:(id)collection collection:(unint64_t)a4 type:(int)type firstItemPersistentID:(unint64_t)d
{
  v32 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138413314;
    v23 = collectionCopy;
    v24 = 2048;
    v25 = a4;
    v26 = 1024;
    typeCopy = type;
    v28 = 2048;
    dCopy = d;
    v30 = 1024;
    v31 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCollection: %@ collectionPersistentID:%llu collectionType:%d firstItemPersistentID:%llu _isShuttingDown=%d", buf, 0x2Cu);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__ACCMediaLibraryShim_playMediaLibraryCollection_collection_type_firstItemPersistentID___block_invoke;
    block[3] = &unk_2789E3560;
    block[4] = self;
    v18 = collectionCopy;
    v19 = a4;
    typeCopy2 = type;
    dCopy2 = d;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __88__ACCMediaLibraryShim_playMediaLibraryCollection_collection_type_firstItemPersistentID___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v15 = 138413058;
        v16 = v4;
        v17 = 2048;
        v18 = v12;
        v19 = 1024;
        v20 = v11;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playMediaLibraryCollection: libraryInfo=%@ collectionPersistentID=%llu collectionType=%d firstItemPersistentID%llu, call startPlaybackOfCollection:ofType:withFirstPersistentID:", &v15, 0x26u);
      }

      [v4 startPlaybackOfCollection:*(a1 + 48) ofType:*(a1 + 64) withFirstPersistentID:*(a1 + 56)];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playMediaLibraryCollection: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)playAllSongs:(id)songs
{
  v17 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412546;
    v14 = songsCopy;
    v15 = 1024;
    v16 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playAllSongs: %@ _isShuttingDown=%d", buf, 0x12u);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__ACCMediaLibraryShim_playAllSongs___block_invoke;
    v11[3] = &unk_2789E3428;
    v11[4] = self;
    v12 = songsCopy;
    dispatch_async(libraryInfoUpdateQ, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __36__ACCMediaLibraryShim_playAllSongs___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playAllSongs: libraryInfo=%@ call startMLPlaybackOfAllSongs", &v12, 0xCu);
      }

      [v4 startMLPlaybackOfAllSongs];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playAllSongs: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d
{
  v22 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412802;
    v17 = songsCopy;
    v18 = 2048;
    dCopy = d;
    v20 = 1024;
    v21 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "playAllSongs: %@ firstItemPersistentID:%llu _isShuttingDown=%d", buf, 0x1Cu);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ACCMediaLibraryShim_playAllSongs_firstItemPersistentID___block_invoke;
    block[3] = &unk_2789E3588;
    block[4] = self;
    v14 = songsCopy;
    dCopy2 = d;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__ACCMediaLibraryShim_playAllSongs_firstItemPersistentID___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:a1[5]];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = a1[6];
        v13 = 138412546;
        v14 = v4;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "playAllSongs: libraryInfo=%@ firstItemPersistentID=%llu, call startMLPlaybackOfAllSongsStartPersistentID:", &v13, 0x16u);
      }

      [v4 startMLPlaybackOfAllSongsStartPersistentID:a1[6]];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "playAllSongs: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)confirmMediaLibraryUpdate:(id)update lastRevision:(id)revision updateCount:(unsigned int)count
{
  v26 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412802;
    v21 = updateCopy;
    v22 = 2112;
    v23 = revisionCopy;
    v24 = 1024;
    v25 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v12, OS_LOG_TYPE_DEFAULT, "confirmMediaLibraryUpdate: %@ lastRevision:%@ _isShuttingDown=%d", buf, 0x1Cu);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__ACCMediaLibraryShim_confirmMediaLibraryUpdate_lastRevision_updateCount___block_invoke;
    v16[3] = &unk_2789E35B0;
    v16[4] = self;
    v17 = updateCopy;
    v18 = revisionCopy;
    countCopy = count;
    dispatch_async(libraryInfoUpdateQ, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__ACCMediaLibraryShim_confirmMediaLibraryUpdate_lastRevision_updateCount___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v14 = 138412802;
        v15 = v4;
        v16 = 2112;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "confirmMediaLibraryUpdateLastRevision: libraryInfo=%@ lastRevision=%@ count=%d, call confirmMediaLibraryUpdateLastRevision:updateCount:", &v14, 0x1Cu);
      }

      [v4 confirmMediaLibraryUpdateLastRevision:*(a1 + 48) updateCount:*(a1 + 56)];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "confirmMediaLibraryUpdate: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)confirmMediaLibraryPlaylistContentUpdate:(id)update lastRevision:(id)revision
{
  v23 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isShuttingDown = self->_isShuttingDown;
    *buf = 138412802;
    v18 = updateCopy;
    v19 = 2112;
    v20 = revisionCopy;
    v21 = 1024;
    v22 = isShuttingDown;
    _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_DEFAULT, "confirmMediaLibraryPlaylistContentUpdate: %@ lastRevision:%@ _isShuttingDown=%d", buf, 0x1Cu);
  }

  if (!self->_isShuttingDown)
  {
    libraryInfoUpdateQ = self->_libraryInfoUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ACCMediaLibraryShim_confirmMediaLibraryPlaylistContentUpdate_lastRevision___block_invoke;
    block[3] = &unk_2789E34E8;
    block[4] = self;
    v15 = updateCopy;
    v16 = revisionCopy;
    dispatch_async(libraryInfoUpdateQ, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__ACCMediaLibraryShim_confirmMediaLibraryPlaylistContentUpdate_lastRevision___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if ((*(v1 + 33) & 1) == 0)
  {
    v3 = [*(v1 + 64) objectForKey:a1[5]];
    v4 = v3;
    if (v3 && ([v3 isShuttingDown] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = a1[6];
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "confirmMediaLibraryPlaylistContentUpdate: libraryInfo=%@ lastRevision=%@, call confirmMediaLibraryPlaylistContentUpdateLastRevision:", &v13, 0x16u);
      }

      [v4 confirmMediaLibraryPlaylistContentUpdateLastRevision:a1[6]];
    }

    else
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v7 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v7 = *gLogObjects;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "confirmMediaLibraryPlaylistContentUpdate: WARNING No libraryInfo or shuttingDown for mediaLibraryUID=%@", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (ACCMediaLibraryShimDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setupNewLibraries:(uint64_t)a1 forAccessory:.cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_2335D3000, v2, v3, "_setupNewLibraries: _deviceMediaLibrary=%@  libs=%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setupNewLibraries:(uint64_t *)a1 forAccessory:(uint64_t *)a2 .cold.5(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_2335D3000, v4, v5, "_setupNewLibraries: _libraries=%@  _libraryList=%@");
  v6 = *MEMORY[0x277D85DE8];
}

@end