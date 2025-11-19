@interface ANAnnouncementStorageManager
+ (id)sharedManager;
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5;
- (id)_announcementDataDirectoryForType:(id)a3 endpointID:(id)a4 error:(id *)a5;
- (id)_baseDirectoryURLForEndpointID:(id)a3 error:(id *)a4;
- (id)_cachesURLWithError:(id *)a3;
- (id)_saveAudioDataForAnnouncement:(id)a3 endpointID:(id)a4;
- (id)storedAnnouncementsForEndpointID:(id)a3;
- (void)_removeAudioDataForAnnouncementID:(id)a3 endpointID:(id)a4;
- (void)_removeDirectoryForEndpointsExcludingEndpointIDs:(id)a3;
- (void)_removeMetadataForAnnouncementID:(id)a3 endpointID:(id)a4;
- (void)_saveMetadataForAnnouncement:(id)a3 endpointID:(id)a4;
- (void)deleteAnnouncementWithID:(id)a3 endpointID:(id)a4;
- (void)deleteAnnouncementsExcludingAnnouncementsForEndpointIDs:(id)a3;
- (void)removeAnnouncementDataExcludingDataForAnnouncementIDs:(id)a3 endpointID:(id)a4;
- (void)saveAnnouncement:(id)a3 endpointID:(id)a4;
@end

@implementation ANAnnouncementStorageManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ANAnnouncementStorageManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

uint64_t __45__ANAnnouncementStorageManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedManager_manager;
  sharedManager_manager = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.announce.announcements"];
  v5 = *(sharedManager_manager + 8);
  *(sharedManager_manager + 8) = v4;

  v6 = objc_opt_new();
  v7 = *(sharedManager_manager + 16);
  *(sharedManager_manager + 16) = v6;

  v8 = *(sharedManager_manager + 16);

  return [v8 setDelegate:?];
}

- (id)storedAnnouncementsForEndpointID:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v4 = [MEMORY[0x277CEAB80] sharedInstance];
  v5 = [v4 BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if (v5)
  {
    v6 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = &stru_2851BDB18;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Loading Announcements from Metadata for EndpontID: %@", buf, 0x16u);
    }

    v7 = [v30 UUIDString];
    v8 = [(ANAnnouncementStorageManager *)self defaults];
    v9 = [v8 dictionaryForKey:v7];

    if (v9)
    {
      v28 = v9;
      v29 = v7;
      v10 = [v9 allValues];
      v11 = [v10 na_map:&__block_literal_global_11];

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:v11];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v19 = [(ANAnnouncementStorageManager *)self fileManager];
            v20 = [v18 filePath];
            v21 = [v19 fileExistsAtPath:v20];

            if ((v21 & 1) == 0)
            {
              v22 = [v18 identifier];
              [(ANAnnouncementStorageManager *)self deleteAnnouncementWithID:v22 endpointID:v30];

              v23 = ANLogHandleAnnouncementStorageManager();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v18 identifier];
                *buf = 138412546;
                v37 = &stru_2851BDB18;
                v38 = 2112;
                v39 = v24;
                _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "%@Deleting Announcement missing Audio Data on disk: %@", buf, 0x16u);
              }

              [v12 removeObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v15);
      }

      v25 = [v12 copy];
      v9 = v28;
      v7 = v29;
    }

    else
    {
      v13 = ANLogHandleAnnouncementStorageManager();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = &stru_2851BDB18;
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@No Announcements found for Endpoint %@", buf, 0x16u);
      }

      v25 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id __65__ANAnnouncementStorageManager_storedAnnouncementsForEndpointID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEAB48];
  v3 = a2;
  v4 = [[v2 alloc] initWithMessage:v3];

  return v4;
}

- (void)saveAnnouncement:(id)a3 endpointID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(ANAnnouncementStorageManager *)self _saveAudioDataForAnnouncement:v10 endpointID:v6];
  if (!v7)
  {
    v8 = [MEMORY[0x277CEAB80] sharedInstance];
    v9 = [v8 BOOLForDefault:*MEMORY[0x277CEA8B8]];

    if (v9)
    {
      [(ANAnnouncementStorageManager *)self _saveMetadataForAnnouncement:v10 endpointID:v6];
    }
  }
}

- (void)deleteAnnouncementWithID:(id)a3 endpointID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [v7 BOOLForDefault:*MEMORY[0x277CEA900]];

  if ((v8 & 1) == 0)
  {
    [(ANAnnouncementStorageManager *)self _removeAudioDataForAnnouncementID:v11 endpointID:v6];
  }

  v9 = [MEMORY[0x277CEAB80] sharedInstance];
  v10 = [v9 BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if (v10)
  {
    [(ANAnnouncementStorageManager *)self _removeMetadataForAnnouncementID:v11 endpointID:v6];
  }
}

- (void)deleteAnnouncementsExcludingAnnouncementsForEndpointIDs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ANLogHandleAnnouncementStorageManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = &stru_2851BDB18;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Scrubbing stored announcements excluding: %@", buf, 0x16u);
  }

  v6 = [(ANAnnouncementStorageManager *)self defaults];
  v7 = [v6 dictionaryRepresentation];
  v8 = [v7 allKeys];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x277CCAD78]);
        v16 = [v15 initWithUUIDString:{v14, v19}];
        if (v16 && ([v4 containsObject:v16] & 1) == 0)
        {
          v17 = [(ANAnnouncementStorageManager *)self defaults];
          [v17 removeObjectForKey:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(ANAnnouncementStorageManager *)self _removeDirectoryForEndpointsExcludingEndpointIDs:v4];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeAnnouncementDataExcludingDataForAnnouncementIDs:(id)a3 endpointID:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v48 = 0;
  v7 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:a4 error:&v48];
  v8 = v48;
  if (v7)
  {
    v9 = [(ANAnnouncementStorageManager *)self fileManager];
    v47 = v8;
    v10 = [v9 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v47];
    v11 = v47;

    v12 = ANLogHandleAnnouncementStorageManager();
    v13 = v12;
    if (v10)
    {
      v39 = v11;
      v40 = self;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = &stru_2851BDB18;
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Cleaning Announcement Data in: %@", buf, 0x16u);
      }

      v38 = v7;

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v10 = v10;
      v14 = [v10 countByEnumeratingWithState:&v43 objects:v57 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v44;
        do
        {
          v17 = 0;
          v41 = v15;
          do
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v43 + 1) + 8 * v17);
            v19 = ANLogHandleAnnouncementStorageManager();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v50 = &stru_2851BDB18;
              v51 = 2112;
              v52 = v18;
              _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Checking item %@", buf, 0x16u);
            }

            v20 = [v18 URLByDeletingPathExtension];
            v21 = [v20 lastPathComponent];

            v22 = [v21 componentsSeparatedByString:@"--"];
            v23 = [v22 objectAtIndexedSubscript:0];

            if (([v6 containsObject:v23] & 1) == 0)
            {
              v24 = v16;
              v25 = v10;
              v26 = v6;
              v27 = ANLogHandleAnnouncementStorageManager();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v50 = &stru_2851BDB18;
                v51 = 2112;
                v52 = v18;
                _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_DEFAULT, "%@Removing item %@", buf, 0x16u);
              }

              v28 = [(ANAnnouncementStorageManager *)v40 fileManager];
              v42 = 0;
              v29 = [v28 removeItemAtURL:v18 error:&v42];
              v30 = v42;

              v31 = ANLogHandleAnnouncementStorageManager();
              v32 = v31;
              if (v29)
              {
                v6 = v26;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v50 = &stru_2851BDB18;
                  v51 = 2080;
                  v52 = "[ANAnnouncementStorageManager removeAnnouncementDataExcludingDataForAnnouncementIDs:endpointID:]";
                  v53 = 2112;
                  v54 = v18;
                  v33 = v32;
                  v34 = OS_LOG_TYPE_DEFAULT;
                  v35 = "%@%s Successfully removed item %@";
                  v36 = 32;
                  goto LABEL_20;
                }
              }

              else
              {
                v6 = v26;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413058;
                  v50 = &stru_2851BDB18;
                  v51 = 2080;
                  v52 = "[ANAnnouncementStorageManager removeAnnouncementDataExcludingDataForAnnouncementIDs:endpointID:]";
                  v53 = 2112;
                  v54 = v18;
                  v55 = 2112;
                  v56 = v39;
                  v33 = v32;
                  v34 = OS_LOG_TYPE_ERROR;
                  v35 = "%@%s Failed to remove item: %@, Error = %@";
                  v36 = 42;
LABEL_20:
                  _os_log_impl(&dword_23F525000, v33, v34, v35, buf, v36);
                }
              }

              v10 = v25;
              v16 = v24;
              v15 = v41;
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v10 countByEnumeratingWithState:&v43 objects:v57 count:16];
        }

        while (v15);
      }

      v7 = v38;
      v11 = v39;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = &stru_2851BDB18;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Failed to get contents of directory: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = &stru_2851BDB18;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_ERROR, "%@Failed to get Directory for saved announcements. %@", buf, 0x16u);
    }

    v11 = v8;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_saveMetadataForAnnouncement:(id)a3 endpointID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = ANLogHandleAnnouncementStorageManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ANAnnouncementStorageManager *)self defaults];
    v23 = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Saving Announcement Metadata to %@", &v23, 0x16u);
  }

  v10 = [v6 UUIDString];

  v11 = ANLogHandleAnnouncementStorageManager();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Key: %@", &v23, 0x16u);
  }

  v12 = [(ANAnnouncementStorageManager *)self defaults];
  v13 = [v12 dictionaryForKey:v10];
  v14 = v13;
  v15 = MEMORY[0x277CBEC10];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v16 mutableCopy];
  v18 = [v7 metadata];
  v19 = [v7 identifier];

  [v17 setObject:v18 forKeyedSubscript:v19];
  v20 = [(ANAnnouncementStorageManager *)self defaults];
  v21 = [v17 copy];
  [v20 setObject:v21 forKey:v10];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_saveAudioDataForAnnouncement:(id)a3 endpointID:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v8 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:v7 error:&v31];
  v9 = v31;
  v10 = v9;
  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 identifier];
    v13 = [MEMORY[0x277CEABE0] an_dateFormatterForFilename];
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 stringFromDate:v14];
    v16 = [v11 stringWithFormat:@"%@--%@", v12, v15];

    v17 = [v8 URLByAppendingPathComponent:v16];
    v18 = [v17 URLByAppendingPathExtension:@"caf"];

    v19 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 fileData];
      v21 = [v20 length];
      *buf = 138412802;
      v33 = &stru_2851BDB18;
      v34 = 2112;
      v35 = v18;
      v36 = 2048;
      v37 = v21;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Saving to URL: %@, Size: %lu", buf, 0x20u);
    }

    v22 = [v6 fileData];
    v30 = v10;
    v23 = [v22 writeToURL:v18 options:1 error:&v30];
    v24 = v30;

    if (v23)
    {
      v25 = [v18 path];
      [v6 setFilePath:v25];
    }

    else
    {
      v26 = ANLogHandleAnnouncementStorageManager();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = &stru_2851BDB18;
        v34 = 2112;
        v35 = v24;
        _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_ERROR, "%@Failed to write data: %@", buf, 0x16u);
      }

      v25 = +[ANAnalytics shared];
      v27 = [ANAnalyticsContext contextWithEndpointID:v7];
      [v25 error:5009 context:v27];
    }
  }

  else
  {
    v24 = v9;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_removeAudioDataForAnnouncementID:(id)a3 endpointID:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v40 = 0;
  v8 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:v7 error:&v40];
  v9 = v40;
  v10 = [(ANAnnouncementStorageManager *)self fileManager];
  v39 = v9;
  v11 = [v10 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v39];
  v12 = v39;

  if (v11)
  {
    v30 = self;
    v31 = v12;
    v33 = v7;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = ANLogHandleAnnouncementStorageManager();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v42 = &stru_2851BDB18;
            v43 = 2112;
            v44 = v18;
            _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Checking item %@", buf, 0x16u);
          }

          v20 = [v18 URLByDeletingPathExtension];
          v21 = [v20 lastPathComponent];

          v22 = [v21 componentsSeparatedByString:@"--"];
          v23 = [v22 objectAtIndexedSubscript:0];

          if ([v6 isEqualToString:v23])
          {
            v24 = [(ANAnnouncementStorageManager *)v30 fileManager];
            v34 = v31;
            v25 = [v24 removeItemAtURL:v18 error:&v34];
            v12 = v34;

            v26 = ANLogHandleAnnouncementStorageManager();
            v27 = v26;
            if (v25)
            {
              v7 = v33;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v42 = &stru_2851BDB18;
                v43 = 2112;
                v44 = v18;
                v45 = 2112;
                v46 = v6;
                _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_DEFAULT, "%@Removed file (%@) for AnnouncementID (%@)", buf, 0x20u);
              }
            }

            else
            {
              v7 = v33;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v42 = &stru_2851BDB18;
                v43 = 2112;
                v44 = v18;
                v45 = 2112;
                v46 = v12;
                _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_ERROR, "%@Failed to remove file (%@): %@", buf, 0x20u);
              }

              v27 = +[ANAnalytics shared];
              v28 = [ANAnalyticsContext contextWithEndpointID:v33];
              [v27 error:5010 context:v28];
            }

            goto LABEL_24;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v13 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = &stru_2851BDB18;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@File does not exist for %@. Nothing to delete.", buf, 0x16u);
    }

    v12 = v31;
    v7 = v33;
LABEL_24:
    v11 = v32;
  }

  else
  {
    v13 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = &stru_2851BDB18;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Failed to get contents of directory: %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_removeMetadataForAnnouncementID:(id)a3 endpointID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 UUIDString];
  v9 = [(ANAnnouncementStorageManager *)self defaults];
  v10 = [v9 dictionaryForKey:v8];

  if (v10)
  {
    v11 = [v10 mutableCopy];
    [v11 setObject:0 forKeyedSubscript:v6];
    v12 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Removed Announcement Metadata: %@", &v16, 0x16u);
    }

    v13 = [(ANAnnouncementStorageManager *)self defaults];
    v14 = [v11 copy];
    [v13 setObject:v14 forKey:v8];
  }

  else
  {
    v11 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@No Announcements found for Endpoint %@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeDirectoryForEndpointsExcludingEndpointIDs:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45 = 0;
  v5 = [(ANAnnouncementStorageManager *)self _cachesURLWithError:&v45];
  v6 = v45;
  if (v5)
  {
    v7 = [(ANAnnouncementStorageManager *)self fileManager];
    v44 = v6;
    v8 = [v7 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v44];
    v9 = v44;

    v10 = ANLogHandleAnnouncementStorageManager();
    v11 = v10;
    if (v8)
    {
      v36 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v5 absoluteString];
        *buf = 138412546;
        v47 = &stru_2851BDB18;
        v48 = 2112;
        v49 = v12;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Cleaning Items in: %@", buf, 0x16u);
      }

      v34 = v5;

      v35 = v4;
      v11 = [v4 na_map:&__block_literal_global_36];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = v8;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
        v37 = v13;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            v19 = [v18 lastPathComponent];
            if (([v11 containsObject:v19]& 1) == 0)
            {
              v39 = 0;
              v20 = [v18 path];
              v21 = [v7 fileExistsAtPath:v20 isDirectory:&v39];

              if (v21)
              {
                if (v39 == 1)
                {
                  v22 = ANLogHandleAnnouncementStorageManager();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v47 = &stru_2851BDB18;
                    v48 = 2112;
                    v49 = v18;
                    _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "%@Removing item %@", buf, 0x16u);
                  }

                  v38 = 0;
                  v23 = v7;
                  v24 = [v7 removeItemAtURL:v18 error:&v38];
                  v25 = v38;
                  v26 = ANLogHandleAnnouncementStorageManager();
                  v27 = v26;
                  if (v24)
                  {
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v47 = &stru_2851BDB18;
                      v48 = 2112;
                      v49 = v18;
                      v28 = v27;
                      v29 = OS_LOG_TYPE_DEFAULT;
                      v30 = "%@Successfully removed item: %@";
                      v31 = 22;
                      goto LABEL_20;
                    }
                  }

                  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v47 = &stru_2851BDB18;
                    v48 = 2112;
                    v49 = v18;
                    v50 = 2112;
                    v51 = v36;
                    v28 = v27;
                    v29 = OS_LOG_TYPE_ERROR;
                    v30 = "%@Failed to remove item: %@, Error = %@";
                    v31 = 32;
LABEL_20:
                    _os_log_impl(&dword_23F525000, v28, v29, v30, buf, v31);
                  }

                  v7 = v23;
                  v13 = v37;
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v40 objects:v52 count:16];
        }

        while (v15);
      }

      v5 = v34;
      v4 = v35;
      v9 = v36;
      v8 = v33;
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v47 = &stru_2851BDB18;
      v48 = 2112;
      v49 = v9;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_ERROR, "%@Failed to get contents of caches directory: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v47 = &stru_2851BDB18;
      v48 = 2112;
      v49 = v6;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_ERROR, "%@Did not find Caches URL %@", buf, 0x16u);
    }

    v9 = v6;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_announcementDataDirectoryForType:(id)a3 endpointID:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(ANAnnouncementStorageManager *)self fileManager];
  v11 = [(ANAnnouncementStorageManager *)self _baseDirectoryURLForEndpointID:v9 error:a5];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 URLByAppendingPathComponent:v8];
    v14 = [v13 absoluteString];
    v15 = [v10 fileExistsAtPath:v14];

    if (v15 & 1) != 0 || ([v10 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:a5])
    {
      v13 = v13;
      v16 = v13;
      goto LABEL_11;
    }

    v18 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *a5;
      v22 = 138412802;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_ERROR, "%@Failed to create directory for type: %@, %@", &v22, 0x20u);
    }
  }

  else
  {
    v13 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *a5;
      v22 = 138412802;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Did not find directory for endpoint ID %@, %@", &v22, 0x20u);
    }
  }

  v16 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_baseDirectoryURLForEndpointID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ANAnnouncementStorageManager *)self _cachesURLWithError:a4];
  v8 = [v6 UUIDString];

  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  return v9;
}

- (id)_cachesURLWithError:(id *)a3
{
  v4 = [(ANAnnouncementStorageManager *)self fileManager];
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:a3];

  if (!v5)
  {
    v6 = +[ANAnalytics shared];
    [v6 error:5011];
  }

  v7 = [v5 URLByAppendingPathComponent:@"com.apple.announce" isDirectory:1];

  return v7;
}

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(ANAnnouncementStorageManager *)self fileManager];

  if (v9 == v8)
  {
    v10 = ANLogHandleAnnouncementStorageManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = &stru_2851BDB18;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Remove Item At URL Error = %@. Proceeding.", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 == v8;
}

@end