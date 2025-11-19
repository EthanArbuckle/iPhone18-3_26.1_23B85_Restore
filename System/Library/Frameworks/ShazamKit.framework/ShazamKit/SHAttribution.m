@interface SHAttribution
+ (BOOL)requiresMediaLibraryAttributionForBundleIdentifier:(id)a3;
+ (BOOL)requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:(id)a3;
+ (id)findContainingAppBundleIdentifierForIdentifier:(id)a3;
+ (id)mediaLibraryAttributionExceptionPlist;
+ (id)musicRecognitionSensorActivityAttributionExceptionPlist;
+ (id)productNameForBundleIdentifier:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (SHAttribution)init;
- (SHAttribution)initWithBundleIdentifier:(id)a3 containingAppBundleIdentifier:(id)a4 teamIdentifier:(id)a5 productName:(id)a6;
- (SHAttribution)initWithConnection:(id)a3;
- (SHAttribution)initWithTask:(__SecTask *)a3;
@end

@implementation SHAttribution

- (SHAttribution)init
{
  v3 = SecTaskCreateFromSelf(0);
  v4 = [(SHAttribution *)self initWithTask:v3];
  CFRelease(v3);
  return v4;
}

- (SHAttribution)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v6 = SecTaskCreateWithAuditToken(0, &v13);
  if (v6)
  {
    v7 = v6;
    v8 = [(SHAttribution *)self initWithTask:v6];
    if (v8)
    {
      if (v5)
      {
        [v5 auditToken];
      }

      else
      {
        memset(&v13, 0, sizeof(v13));
      }

      v11 = *&v13.val[4];
      *v8->_auditToken.val = *v13.val;
      *&v8->_auditToken.val[4] = v11;
    }

    CFRelease(v7);
    self = v8;
    v10 = self;
  }

  else
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13.val[0]) = 0;
      _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_ERROR, "Unable to create SecTask for audit token", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (SHAttribution)initWithTask:(__SecTask *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  error = 0;
  v4 = SecTaskCopySigningIdentifier(a3, &error);
  if (v4)
  {
    v5 = [objc_opt_class() findContainingAppBundleIdentifierForIdentifier:v4];
    v6 = SecTaskCopyTeamIdentifier();
    if (!v6 && error)
    {
      v7 = sh_log_object();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = error;
        _os_log_impl(&dword_230F52000, v7, OS_LOG_TYPE_DEFAULT, "Unable to get team identifier from task: %{public}@", buf, 0xCu);
      }
    }

    v8 = [(SHAttribution *)self bundleIdentifier];
    v9 = [SHAttribution productNameForBundleIdentifier:v8];

    if (error)
    {
      CFRelease(error);
    }

    self = [(SHAttribution *)self initWithBundleIdentifier:v4 containingAppBundleIdentifier:v5 teamIdentifier:v6 productName:v9];

    v10 = self;
  }

  else
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = error;
      _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_ERROR, "Unable to get signing identifier from task: %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SHAttribution)initWithBundleIdentifier:(id)a3 containingAppBundleIdentifier:(id)a4 teamIdentifier:(id)a5 productName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v19.receiver = self;
    v19.super_class = SHAttribution;
    v15 = [(SHAttribution *)&v19 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_bundleIdentifier, a3);
      objc_storeStrong(p_isa + 4, a4);
      objc_storeStrong(p_isa + 2, a5);
      objc_storeStrong(p_isa + 3, a6);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)findContainingAppBundleIdentifierForIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v3 allowPlaceholder:0 error:&v20];
  v5 = v20;
  if (!v4)
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v5;
      v12 = "Failed to get bundle record, instead using bundle identifier. %{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_230F52000, v13, v14, v12, buf, v15);
    }

LABEL_11:

    v16 = v3;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Client is not an extension, use bundle identifier";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 2;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = [v4 containingBundleRecord];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 bundleIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = v3;
    }

    else
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_ERROR, "Client app is an app extension, but no containing app bundle identifier", buf, 2u);
      }

      v9 = v3;
    }

    v16 = v9;
  }

  else
  {
    v17 = sh_log_object();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v17, OS_LOG_TYPE_ERROR, "Client is an app extension, but has a containing bundle that's not an application", buf, 2u);
    }

    v16 = v3;
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)productNameForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v8 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v8];

  v6 = [v5 localizedName];

  return v6;
}

+ (BOOL)requiresMediaLibraryAttributionForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 mediaLibraryAttributionExceptionPlist];
  v6 = [v5 objectForKey:@"com.apple.private.shazamkit.exception.medialibraryattribution"];

  LOBYTE(v5) = [v6 containsObject:v4];
  return v5 ^ 1;
}

+ (BOOL)requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 musicRecognitionSensorActivityAttributionExceptionPlist];
  v6 = [v5 objectForKey:@"com.apple.private.shazamkit.musicrecognitionsensoractivity"];

  LOBYTE(v5) = [v6 containsObject:v4];
  return v5;
}

+ (id)musicRecognitionSensorActivityAttributionExceptionPlist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SHAttribution_musicRecognitionSensorActivityAttributionExceptionPlist__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (musicRecognitionSensorActivityAttributionExceptionPlist_onceToken != -1)
  {
    dispatch_once(&musicRecognitionSensorActivityAttributionExceptionPlist_onceToken, block);
  }

  v2 = musicRecognitionSensorActivityAttributionExceptionPlist_plist;

  return v2;
}

void __72__SHAttribution_musicRecognitionSensorActivityAttributionExceptionPlist__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [*MEMORY[0x277CE1E38] preferredFilenameExtension];
  v6 = [v2 pathForResource:@"SHMusicRecognitionSensorActivityAttributionPlist" ofType:v3];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v5 = musicRecognitionSensorActivityAttributionExceptionPlist_plist;
  musicRecognitionSensorActivityAttributionExceptionPlist_plist = v4;
}

+ (id)mediaLibraryAttributionExceptionPlist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SHAttribution_mediaLibraryAttributionExceptionPlist__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (mediaLibraryAttributionExceptionPlist_onceToken != -1)
  {
    dispatch_once(&mediaLibraryAttributionExceptionPlist_onceToken, block);
  }

  v2 = mediaLibraryAttributionExceptionPlist_plist;

  return v2;
}

void __54__SHAttribution_mediaLibraryAttributionExceptionPlist__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [*MEMORY[0x277CE1E38] preferredFilenameExtension];
  v6 = [v2 pathForResource:@"MediaLibraryAttributionException" ofType:v3];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v5 = mediaLibraryAttributionExceptionPlist_plist;
  mediaLibraryAttributionExceptionPlist_plist = v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

@end