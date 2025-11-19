@interface ACCMediaLibraryFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (void)initPlugin;
- (void)mediaLibrary:(id)a3 accessoryLeft:(id)a4;
- (void)mediaLibrary:(id)a3 confirmPlaylistContentUpdate:(id)a4 lastRevision:(id)a5 accessory:(id)a6;
- (void)mediaLibrary:(id)a3 play:(id)a4 itemList:(id)a5 firstItemIndex:(unint64_t)a6 accessory:(id)a7;
- (void)mediaLibrary:(id)a3 playAllSongs:(id)a4 accessory:(id)a5;
- (void)mediaLibrary:(id)a3 playAllSongs:(id)a4 firstItemPersistentID:(unint64_t)a5 accessory:(id)a6;
- (void)mediaLibrary:(id)a3 playCurrentSelection:(id)a4 accessory:(id)a5;
- (void)mediaLibrary:(id)a3 startUpdate:(id)a4 lastRevision:(id)a5 requestedInfo:(id)a6 accessory:(id)a7;
- (void)mediaLibrary:(id)a3 stopAllUpdate:(id)a4;
- (void)mediaLibrary:(id)a3 stopUpdate:(id)a4 accessory:(id)a5;
- (void)notifyAvailableLibraries:(id)a3;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCMediaLibraryFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ACCMediaLibraryFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  v6 = [(ACCMediaLibraryFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", v4, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = 0;

  [(ACCMediaLibraryFeaturePlugin *)self setIsRunning:0];
}

- (void)startPlugin
{
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
    *v12 = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "Starting Media Library feature plugin...", v12, 2u);
  }

  v6 = dispatch_queue_create("com.apple.mlPlugin.mediaLibraryCBProcessQ", 0);
  mediaLibraryCBProcessQ = self->_mediaLibraryCBProcessQ;
  self->_mediaLibraryCBProcessQ = v6;

  v8 = [objc_alloc(MEMORY[0x277CE82A0]) initWithDelegate:self queue:self->_mediaLibraryCBProcessQ];
  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mediaLibraryShimList = self->_mediaLibraryShimList;
  self->_mediaLibraryShimList = v10;

  [(ACCMediaLibraryFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
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
    *buf = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Media Library feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2335D3000, v6, OS_LOG_TYPE_INFO, "Removing all observers...", v12, 2u);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];

  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = 0;

  mediaLibraryShimList = self->_mediaLibraryShimList;
  self->_mediaLibraryShimList = 0;

  mediaLibraryCBProcessQ = self->_mediaLibraryCBProcessQ;
  self->_mediaLibraryCBProcessQ = 0;
}

- (void)notifyAvailableLibraries:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v10 = v4;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_INFO, "notifyAvailableLibraries: %@", &v9, 0xCu);
  }

  [(ACCMediaLibraryProvider *)self->_mediaLibraryProvider notifyAvailableLibraries:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 accessoryLeft:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v7 = [v5 accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v7];

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "mediaLibraryAccessoryLeft: %@  shim=%@", &v15, 0x16u);
  }

  if (v8)
  {
    [v8 shuttingDown];
    v12 = self->_mediaLibraryShimList;
    v13 = [v5 accessoryUID];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 startUpdate:(id)a4 lastRevision:(id)a5 requestedInfo:(id)a6 accessory:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v16 = [v14 accessoryUID];
  v17 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v16];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = ACCMediaLibraryFeatureRequestedInfoDesc(v13);
    v22 = 138413314;
    v23 = v14;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_2335D3000, v18, OS_LOG_TYPE_INFO, "mediaLibraryStartUpdate: %@ libUID=%@ lastRevision=%@ requestedInfo=%@ shim=%@", &v22, 0x34u);
  }

  if (v17)
  {
    [v17 startMediaLibraryUpdate:v11 lastRevision:v12 requestedInfo:v13];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 confirmPlaylistContentUpdate:(id)a4 lastRevision:(id)a5 accessory:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v13 = [v11 accessoryUID];
  v14 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v13];

  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 138413058;
    v20 = v11;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_2335D3000, v17, OS_LOG_TYPE_INFO, "mediaLibraryConfirmUpdate: %@ libUID=%@ lastRevision=%@ shim=%@", &v19, 0x2Au);
  }

  if (v14)
  {
    [v14 confirmMediaLibraryPlaylistContentUpdate:v9 lastRevision:v10];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 stopUpdate:(id)a4 accessory:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v10 = [v8 accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v10];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 stopMediaLibraryUpdate:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 stopAllUpdate:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v7 = [v5 accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v7];

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "mediaLibraryStopAllUpdate: %@ shim=%@", &v13, 0x16u);
  }

  if (v8)
  {
    [v8 stopAllMediaLibraryUpdate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 play:(id)a4 itemList:(id)a5 firstItemIndex:(unint64_t)a6 accessory:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v15 = [v13 accessoryUID];
  v16 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v15];

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = 138413314;
    v22 = v13;
    v23 = 2112;
    v24 = v11;
    v25 = 2048;
    v26 = a6;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_2335D3000, v19, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ firstItemIndex=%lu itemList=%@ shim=%@", &v21, 0x34u);
  }

  if (v16)
  {
    [v16 playMediaLibraryItems:v11 itemList:v12 firstItemIndex:a6];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 playCurrentSelection:(id)a4 accessory:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v10 = [v8 accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v10];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayCurrentSelection: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 playMediaLibraryCurrentSelection:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 playAllSongs:(id)a4 accessory:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v10 = [v8 accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v10];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 playAllSongs:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)a3 playAllSongs:(id)a4 firstItemPersistentID:(unint64_t)a5 accessory:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  v12 = [v10 accessoryUID];
  v13 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:v12];

  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v9;
    v22 = 2048;
    v23 = a5;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ firstItemPersistentID=%llu shim=%@", &v18, 0x2Au);
  }

  if (v13)
  {
    [v13 playAllSongs:v9 firstItemPersistentID:a5];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end