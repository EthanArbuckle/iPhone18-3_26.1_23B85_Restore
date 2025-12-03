@interface BKAudiobookPersistenceController
+ (void)registerAEPersistencePlugins;
- (double)audiobookTimeForLocation:(id)location audiobook:(id)audiobook;
- (void)registerAEPersistencePlugins;
@end

@implementation BKAudiobookPersistenceController

+ (void)registerAEPersistencePlugins
{
  sharedInstance = [self sharedInstance];
  [sharedInstance registerAEPersistencePlugins];
}

- (void)registerAEPersistencePlugins
{
  stores = [(BKAudiobookPersistenceController *)self stores];
  v4 = [stores count];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v5];

    v6 = [BKAudiobookPersistenceCloudKit alloc];
    v7 = +[BCCloudAssetManager sharedManager];
    assetDetailManager = [v7 assetDetailManager];
    v11 = [v6 initWithAssetDetailManager:assetDetailManager];

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

- (double)audiobookTimeForLocation:(id)location audiobook:(id)audiobook
{
  locationCopy = location;
  audiobookCopy = audiobook;
  ordinal = [locationCopy ordinal];
  if ((ordinal & 0x8000000000000000) != 0)
  {
    tracks = _AEBookPluginsAudiobookLog();
    v14 = 0.0;
    if (os_log_type_enabled(tracks, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134217984;
      *(&time.value + 4) = ordinal;
      _os_log_impl(&dword_0, tracks, OS_LOG_TYPE_ERROR, "Ordinal %ld < 0, can't convert to audiobook time.", &time, 0xCu);
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tracks = [audiobookCopy tracks];
    if (ordinal < [tracks count])
    {
      v9 = [tracks objectAtIndexedSubscript:ordinal];
      chapters = [v9 chapters];
      firstObject = [chapters firstObject];

      if (firstObject)
      {
        [firstObject timeRangeInAudiobook];
        time = v21[2];
        Seconds = CMTimeGetSeconds(&time);
        [locationCopy offset];
        v14 = Seconds + v13;
      }

      else
      {
        v17 = _AEBookPluginsAudiobookLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LODWORD(time.value) = 134217984;
          *(&time.value + 4) = ordinal;
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
      *(&time.value + 4) = ordinal;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [tracks count];
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
    tracks = [audiobookCopy chapters];
    if (ordinal < [tracks count])
    {
      v15 = [tracks objectAtIndexedSubscript:ordinal];
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
      [locationCopy offset];
      v14 = v18 + v19;
      goto LABEL_23;
    }

    v9 = _AEBookPluginsAudiobookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = ordinal;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [tracks count];
      v16 = "Ordinal %ld >= %lu (chapter count), can't convert to audiobook time.";
      goto LABEL_16;
    }

LABEL_23:

LABEL_24:
  }

  return v14;
}

@end