@interface ATXFaceSuggestionConfiguredWatchFaceSignal
- (ATXFaceSuggestionConfiguredWatchFaceSignal)init;
- (double)valueForDescriptor:(id)a3;
@end

@implementation ATXFaceSuggestionConfiguredWatchFaceSignal

- (ATXFaceSuggestionConfiguredWatchFaceSignal)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionConfiguredWatchFaceSignal;
  v2 = [(ATXFaceSuggestionConfiguredWatchFaceSignal *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB988] sharedInstance];
    v4 = [v3 watchFaces];
    watchFaces = v2->_watchFaces;
    v2->_watchFaces = v4;

    if (![(NSArray *)v2->_watchFaces count])
    {
      v6 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[ATXFaceSuggestionConfiguredWatchFaceSignal init]";
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: no stored watchfaces", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (double)valueForDescriptor:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_watchFaces;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v6)
  {
    v10 = 0.0;
    goto LABEL_52;
  }

  v8 = v6;
  v9 = *v33;
  v10 = 0.0;
  *&v7 = 136315650;
  v31 = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = v4;
      v14 = [v13 extensionBundleIdentifier];
      v15 = [v13 identifier];

      v16 = [v12 style];
      if (v16 > 8)
      {
        if (v16 > 10)
        {
          if ((v16 - 11) < 6)
          {
LABEL_9:
            v17 = v14;
            v18 = @"com.apple.PridePoster.PridePosterExtension";
            goto LABEL_26;
          }

          if (v16 != 17)
          {
LABEL_46:

            goto LABEL_44;
          }

          goto LABEL_25;
        }

        if (v16 != 9)
        {
          goto LABEL_20;
        }

        v19 = [v14 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp.AegirPoster"];
        v20 = v15;
        v21 = @"Orrery";
LABEL_32:
        v22 = [v20 containsString:{v21, v31, v32}];

        if (!v19)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }

      if (v16 > 4)
      {
        if ((v16 - 5) >= 2)
        {
          if (v16 == 7)
          {
            v19 = [v14 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp.AegirPoster"];
            v20 = v15;
            v21 = @"Earth";
          }

          else
          {
            if (v16 != 8)
            {
              goto LABEL_46;
            }

            v19 = [v14 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp.AegirPoster"];
            v20 = v15;
            v21 = @"Moon";
          }

          goto LABEL_32;
        }

        v22 = [v14 isEqualToString:@"com.apple.UnityPoster.UnityPosterExtension"];

LABEL_33:
        if ((v22 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      if (v16 <= 2)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            goto LABEL_46;
          }

LABEL_20:
          v17 = v14;
          v18 = @"com.apple.GradientPoster.GradientPosterExtension";
LABEL_26:
          v23 = [v17 isEqualToString:{v18, v31}];

          if ((v23 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_34;
        }

LABEL_25:
        v17 = v14;
        v18 = @"com.apple.NanoUniverse.AegirProxyApp.AegirPoster";
        goto LABEL_26;
      }

      if (v16 != 3)
      {
        goto LABEL_9;
      }

      if ([v14 isEqualToString:@"com.apple.mobileslideshow.PhotosPosterProvider"])
      {
      }

      else
      {
        v27 = [v14 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

        if (!v27)
        {
          goto LABEL_44;
        }
      }

LABEL_34:
      v24 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v31;
        v37 = "[ATXFaceSuggestionConfiguredWatchFaceSignal valueForDescriptor:]";
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v12;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%s: descriptor (%@) has matching watch face: %@", buf, 0x20u);
      }

      v25 = v12;
      v26 = 0.1;
      if ([v25 style] != 1)
      {
        v26 = 0.1;
        if ([v25 style] != 17)
        {
          v26 = 0.1;
          if ([v25 style] != 10)
          {
            if ([v25 style] == 2)
            {
              v26 = 0.1;
            }

            else
            {
              v26 = 1.0;
            }
          }
        }
      }

      if (v10 < v26)
      {
        v10 = v26;
      }

LABEL_44:
      ++v11;
    }

    while (v8 != v11);
    v28 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    v8 = v28;
  }

  while (v28);
LABEL_52:

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

@end