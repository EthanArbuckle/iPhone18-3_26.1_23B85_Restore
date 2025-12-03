@interface ACCMediaLibraryFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (void)initPlugin;
- (void)mediaLibrary:(id)library accessoryLeft:(id)left;
- (void)mediaLibrary:(id)library confirmPlaylistContentUpdate:(id)update lastRevision:(id)revision accessory:(id)accessory;
- (void)mediaLibrary:(id)library play:(id)play itemList:(id)list firstItemIndex:(unint64_t)index accessory:(id)accessory;
- (void)mediaLibrary:(id)library playAllSongs:(id)songs accessory:(id)accessory;
- (void)mediaLibrary:(id)library playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d accessory:(id)accessory;
- (void)mediaLibrary:(id)library playCurrentSelection:(id)selection accessory:(id)accessory;
- (void)mediaLibrary:(id)library startUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info accessory:(id)accessory;
- (void)mediaLibrary:(id)library stopAllUpdate:(id)update;
- (void)mediaLibrary:(id)library stopUpdate:(id)update accessory:(id)accessory;
- (void)notifyAvailableLibraries:(id)libraries;
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
  pluginName = [(ACCMediaLibraryFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCMediaLibraryFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = 0;

  mediaLibraryShimList = self->_mediaLibraryShimList;
  self->_mediaLibraryShimList = 0;

  mediaLibraryCBProcessQ = self->_mediaLibraryCBProcessQ;
  self->_mediaLibraryCBProcessQ = 0;
}

- (void)notifyAvailableLibraries:(id)libraries
{
  v11 = *MEMORY[0x277D85DE8];
  librariesCopy = libraries;
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
    v10 = librariesCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_INFO, "notifyAvailableLibraries: %@", &v9, 0xCu);
  }

  [(ACCMediaLibraryProvider *)self->_mediaLibraryProvider notifyAvailableLibraries:librariesCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library accessoryLeft:(id)left
{
  v19 = *MEMORY[0x277D85DE8];
  leftCopy = left;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [leftCopy accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v16 = leftCopy;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "mediaLibraryAccessoryLeft: %@  shim=%@", &v15, 0x16u);
  }

  if (v8)
  {
    [v8 shuttingDown];
    v12 = self->_mediaLibraryShimList;
    accessoryUID2 = [leftCopy accessoryUID];
    [(NSMutableDictionary *)v12 removeObjectForKey:accessoryUID2];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library startUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info accessory:(id)accessory
{
  v32 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  infoCopy = info;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v17 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v20 = ACCMediaLibraryFeatureRequestedInfoDesc(infoCopy);
    v22 = 138413314;
    v23 = accessoryCopy;
    v24 = 2112;
    v25 = updateCopy;
    v26 = 2112;
    v27 = revisionCopy;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_2335D3000, v18, OS_LOG_TYPE_INFO, "mediaLibraryStartUpdate: %@ libUID=%@ lastRevision=%@ requestedInfo=%@ shim=%@", &v22, 0x34u);
  }

  if (v17)
  {
    [v17 startMediaLibraryUpdate:updateCopy lastRevision:revisionCopy requestedInfo:infoCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library confirmPlaylistContentUpdate:(id)update lastRevision:(id)revision accessory:(id)accessory
{
  v27 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v14 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v20 = accessoryCopy;
    v21 = 2112;
    v22 = updateCopy;
    v23 = 2112;
    v24 = revisionCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_2335D3000, v17, OS_LOG_TYPE_INFO, "mediaLibraryConfirmUpdate: %@ libUID=%@ lastRevision=%@ shim=%@", &v19, 0x2Au);
  }

  if (v14)
  {
    [v14 confirmMediaLibraryPlaylistContentUpdate:updateCopy lastRevision:revisionCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library stopUpdate:(id)update accessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v17 = accessoryCopy;
    v18 = 2112;
    v19 = updateCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 stopMediaLibraryUpdate:updateCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library stopAllUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [updateCopy accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v14 = updateCopy;
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

- (void)mediaLibrary:(id)library play:(id)play itemList:(id)list firstItemIndex:(unint64_t)index accessory:(id)accessory
{
  v31 = *MEMORY[0x277D85DE8];
  playCopy = play;
  listCopy = list;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v16 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v22 = accessoryCopy;
    v23 = 2112;
    v24 = playCopy;
    v25 = 2048;
    indexCopy = index;
    v27 = 2112;
    v28 = listCopy;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_2335D3000, v19, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ firstItemIndex=%lu itemList=%@ shim=%@", &v21, 0x34u);
  }

  if (v16)
  {
    [v16 playMediaLibraryItems:playCopy itemList:listCopy firstItemIndex:index];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library playCurrentSelection:(id)selection accessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v17 = accessoryCopy;
    v18 = 2112;
    v19 = selectionCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayCurrentSelection: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 playMediaLibraryCurrentSelection:selectionCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library playAllSongs:(id)songs accessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v17 = accessoryCopy;
    v18 = 2112;
    v19 = songsCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ shim=%@", &v16, 0x20u);
  }

  if (v11)
  {
    [v11 playAllSongs:songsCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaLibrary:(id)library playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d accessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v13 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

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
    v19 = accessoryCopy;
    v20 = 2112;
    v21 = songsCopy;
    v22 = 2048;
    dCopy = d;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ firstItemPersistentID=%llu shim=%@", &v18, 0x2Au);
  }

  if (v13)
  {
    [v13 playAllSongs:songsCopy firstItemPersistentID:d];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end