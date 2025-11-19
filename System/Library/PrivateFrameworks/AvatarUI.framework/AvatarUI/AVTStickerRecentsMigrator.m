@interface AVTStickerRecentsMigrator
- (AVTStickerRecentsMigrator)initWithStore:(id)a3 stickerConfigurationProvider:(id)a4 environment:(id)a5;
- (void)performMigrationIfNeeded;
@end

@implementation AVTStickerRecentsMigrator

- (AVTStickerRecentsMigrator)initWithStore:(id)a3 stickerConfigurationProvider:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTStickerRecentsMigrator;
  v12 = [(AVTStickerRecentsMigrator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_stickerConfigurationProvider, a4);
    v13->_logger = [v11 logger];
  }

  return v13;
}

- (void)performMigrationIfNeeded
{
  v69 = *MEMORY[0x1E69E9840];
  if (!self->_migrationHasBeenPerformed && AVTUIStickerRecentsMigrationVersion() <= 1)
  {
    v3 = [MEMORY[0x1E698E350] requestForAllRecentStickers];
    store = self->_store;
    v65 = 0;
    v48 = v3;
    v5 = [AVTAvatarStoreInternal recentStickersForFetchRequest:"recentStickersForFetchRequest:error:" error:?];
    v6 = 0;
    v7 = v6;
    if (v6)
    {
      logger = self->_logger;
      v9 = [v6 localizedDescription];
      [(AVTUILogger *)logger logErrorFetchingRecentStickers:v9];
    }

    v47 = v7;
    v10 = [MEMORY[0x1E698E310] requestForAllAvatars];
    v11 = self->_store;
    v64 = 0;
    v46 = v10;
    v12 = [AVTAvatarStoreInternal avatarsForFetchRequest:v11 error:"avatarsForFetchRequest:error:"];
    v45 = v64;
    v13 = [MEMORY[0x1E695DF90] dictionary];
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
          v20 = [v19 identifier];
          [v13 setObject:v19 forKeyedSubscript:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v16);
    }

    v49 = self;
    v44 = v14;

    v51 = [MEMORY[0x1E695DF90] dictionary];
    v21 = [MEMORY[0x1E695DF70] array];
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
          v27 = [v26 avatarRecordIdentifier];
          v28 = [v13 objectForKeyedSubscript:v27];

          if (v28)
          {
            v29 = [v26 avatarRecordIdentifier];
            v30 = [v51 objectForKeyedSubscript:v29];

            if (!v30)
            {
              v30 = [(AVTStickerConfigurationProvider *)v49->_stickerConfigurationProvider availableStickerNamesForAvatarRecord:v28];
              v31 = [v26 avatarRecordIdentifier];
              [v51 setObject:v30 forKeyedSubscript:v31];
            }

            v32 = [v26 stickerConfigurationIdentifier];
            v33 = [v30 containsObject:v32];

            if ((v33 & 1) == 0)
            {
              [v21 addObject:v26];
            }
          }

          else
          {
            [v21 addObject:v26];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v23);
    }

    -[AVTUILogger logPerformedRecentStickersMigration:](v49->_logger, "logPerformedRecentStickersMigration:", [v21 count] != 0);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = v21;
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
          v41 = v49->_store;
          v42 = [v40 avatarRecordIdentifier];
          v43 = [v40 stickerConfigurationIdentifier];
          [(AVTAvatarStoreInternal *)v41 deleteRecentStickersWithAvatarIdentifier:v42 stickerIdentifier:v43 completionHandler:0];
        }

        v37 = [v34 countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v37);
    }

    AVTUISetStickerRecentsMigrationVersion();
    v49->_migrationHasBeenPerformed = 1;
  }
}

@end