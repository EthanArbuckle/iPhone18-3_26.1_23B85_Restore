@interface AVTStickerRecentsMigrator
- (AVTStickerRecentsMigrator)initWithStore:(id)store stickerConfigurationProvider:(id)provider environment:(id)environment;
- (void)performMigrationIfNeeded;
@end

@implementation AVTStickerRecentsMigrator

- (AVTStickerRecentsMigrator)initWithStore:(id)store stickerConfigurationProvider:(id)provider environment:(id)environment
{
  storeCopy = store;
  providerCopy = provider;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTStickerRecentsMigrator;
  v12 = [(AVTStickerRecentsMigrator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_stickerConfigurationProvider, provider);
    v13->_logger = [environmentCopy logger];
  }

  return v13;
}

- (void)performMigrationIfNeeded
{
  v69 = *MEMORY[0x1E69E9840];
  if (!self->_migrationHasBeenPerformed && AVTUIStickerRecentsMigrationVersion() <= 1)
  {
    requestForAllRecentStickers = [MEMORY[0x1E698E350] requestForAllRecentStickers];
    store = self->_store;
    v65 = 0;
    v48 = requestForAllRecentStickers;
    v5 = [AVTAvatarStoreInternal recentStickersForFetchRequest:"recentStickersForFetchRequest:error:" error:?];
    v6 = 0;
    v7 = v6;
    if (v6)
    {
      logger = self->_logger;
      localizedDescription = [v6 localizedDescription];
      [(AVTUILogger *)logger logErrorFetchingRecentStickers:localizedDescription];
    }

    v47 = v7;
    requestForAllAvatars = [MEMORY[0x1E698E310] requestForAllAvatars];
    v11 = self->_store;
    v64 = 0;
    v46 = requestForAllAvatars;
    v12 = [AVTAvatarStoreInternal avatarsForFetchRequest:v11 error:"avatarsForFetchRequest:error:"];
    v45 = v64;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v61;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v60 + 1) + 8 * i);
          identifier = [v19 identifier];
          [dictionary setObject:v19 forKeyedSubscript:identifier];
        }

        v16 = [v14 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v16);
    }

    selfCopy = self;
    v44 = v14;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v5;
    v22 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v57;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v57 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v56 + 1) + 8 * j);
          avatarRecordIdentifier = [v26 avatarRecordIdentifier];
          v28 = [dictionary objectForKeyedSubscript:avatarRecordIdentifier];

          if (v28)
          {
            avatarRecordIdentifier2 = [v26 avatarRecordIdentifier];
            v30 = [dictionary2 objectForKeyedSubscript:avatarRecordIdentifier2];

            if (!v30)
            {
              v30 = [(AVTStickerConfigurationProvider *)selfCopy->_stickerConfigurationProvider availableStickerNamesForAvatarRecord:v28];
              avatarRecordIdentifier3 = [v26 avatarRecordIdentifier];
              [dictionary2 setObject:v30 forKeyedSubscript:avatarRecordIdentifier3];
            }

            stickerConfigurationIdentifier = [v26 stickerConfigurationIdentifier];
            v33 = [v30 containsObject:stickerConfigurationIdentifier];

            if ((v33 & 1) == 0)
            {
              [array addObject:v26];
            }
          }

          else
          {
            [array addObject:v26];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v23);
    }

    -[AVTUILogger logPerformedRecentStickersMigration:](selfCopy->_logger, "logPerformedRecentStickersMigration:", [array count] != 0);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = array;
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v66 count:16];
    v36 = v44;
    if (v35)
    {
      v37 = v35;
      v38 = *v53;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v53 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v52 + 1) + 8 * k);
          v41 = selfCopy->_store;
          avatarRecordIdentifier4 = [v40 avatarRecordIdentifier];
          stickerConfigurationIdentifier2 = [v40 stickerConfigurationIdentifier];
          [(AVTAvatarStoreInternal *)v41 deleteRecentStickersWithAvatarIdentifier:avatarRecordIdentifier4 stickerIdentifier:stickerConfigurationIdentifier2 completionHandler:0];
        }

        v37 = [v34 countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v37);
    }

    AVTUISetStickerRecentsMigrationVersion();
    selfCopy->_migrationHasBeenPerformed = 1;
  }
}

@end