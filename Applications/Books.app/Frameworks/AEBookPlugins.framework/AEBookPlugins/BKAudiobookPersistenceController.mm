@interface BKAudiobookPersistenceController
+ (void)registerAEPersistencePlugins;
- (double)audiobookTimeForLocation:(id)a3 audiobook:(id)a4;
- (void)registerAEPersistencePlugins;
@end

@implementation BKAudiobookPersistenceController

+ (void)registerAEPersistencePlugins
{
  v2 = [a1 sharedInstance];
  [v2 registerAEPersistencePlugins];
}

- (void)registerAEPersistencePlugins
{
  v3 = [(BKAudiobookPersistenceController *)self stores];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v5];

    v6 = [BKAudiobookPersistenceCloudKit alloc];
    v7 = +[BCCloudAssetManager sharedManager];
    v8 = [v7 assetDetailManager];
    v11 = [v6 initWithAssetDetailManager:v8];

    if (v11)
    {
      [(BKAudiobookPersistenceController *)self addStore:v11];
    }

    v9 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v9];

    v10 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v10];
  }
}

- (double)audiobookTimeForLocation:(id)a3 audiobook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 ordinal];
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = _AEBookPluginsAudiobookLog();
    v14 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134217984;
      *(&time.value + 4) = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Ordinal %ld < 0, can't convert to audiobook time.", &time, 0xCu);
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 tracks];
    if (v7 < [v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = [v9 chapters];
      v11 = [v10 firstObject];

      if (v11)
      {
        [v11 timeRangeInAudiobook];
        time = v21[2];
        Seconds = CMTimeGetSeconds(&time);
        [v5 offset];
        v14 = Seconds + v13;
      }

      else
      {
        v17 = _AEBookPluginsAudiobookLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LODWORD(time.value) = 134217984;
          *(&time.value + 4) = v7;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Track with ordinal %ld has no chapters, can't convert to audiobook time", &time, 0xCu);
        }

        v14 = 0.0;
      }

      goto LABEL_23;
    }

    v9 = _AEBookPluginsAudiobookLog();
    v14 = 0.0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = v7;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [v8 count];
      v16 = "Ordinal %ld >= %lu (track count), can't convert to audiobook time.";
LABEL_16:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v16, &time, 0x16u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v14 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 chapters];
    if (v7 < [v8 count])
    {
      v15 = [v8 objectAtIndexedSubscript:v7];
      v9 = v15;
      if (v15)
      {
        [v15 timeRangeInAudiobook];
      }

      else
      {
        memset(v21, 0, 24);
      }

      time = v21[0];
      v18 = CMTimeGetSeconds(&time);
      [v5 offset];
      v14 = v18 + v19;
      goto LABEL_23;
    }

    v9 = _AEBookPluginsAudiobookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = v7;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [v8 count];
      v16 = "Ordinal %ld >= %lu (chapter count), can't convert to audiobook time.";
      goto LABEL_16;
    }

LABEL_23:

LABEL_24:
  }

  return v14;
}

@end