@interface SHAttribution
+ (BOOL)requiresMediaLibraryAttributionForBundleIdentifier:(id)identifier;
+ (BOOL)requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:(id)identifier;
+ (id)findContainingAppBundleIdentifierForIdentifier:(id)identifier;
+ (id)mediaLibraryAttributionExceptionPlist;
+ (id)musicRecognitionSensorActivityAttributionExceptionPlist;
+ (id)productNameForBundleIdentifier:(id)identifier;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (SHAttribution)init;
- (SHAttribution)initWithBundleIdentifier:(id)identifier containingAppBundleIdentifier:(id)bundleIdentifier teamIdentifier:(id)teamIdentifier productName:(id)name;
- (SHAttribution)initWithConnection:(id)connection;
- (SHAttribution)initWithTask:(__SecTask *)task;
@end

@implementation SHAttribution

- (SHAttribution)init
{
  v3 = SecTaskCreateFromSelf(0);
  v4 = [(SHAttribution *)self initWithTask:v3];
  CFRelease(v3);
  return v4;
}

- (SHAttribution)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
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
    selfCopy = self;
  }

  else
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13.val[0]) = 0;
      _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_ERROR, "Unable to create SecTask for audit token", &v13, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SHAttribution)initWithTask:(__SecTask *)task
{
  v16 = *MEMORY[0x277D85DE8];
  error = 0;
  v4 = SecTaskCopySigningIdentifier(task, &error);
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

    bundleIdentifier = [(SHAttribution *)self bundleIdentifier];
    v9 = [SHAttribution productNameForBundleIdentifier:bundleIdentifier];

    if (error)
    {
      CFRelease(error);
    }

    self = [(SHAttribution *)self initWithBundleIdentifier:v4 containingAppBundleIdentifier:v5 teamIdentifier:v6 productName:v9];

    selfCopy = self;
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

    selfCopy = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SHAttribution)initWithBundleIdentifier:(id)identifier containingAppBundleIdentifier:(id)bundleIdentifier teamIdentifier:(id)teamIdentifier productName:(id)name
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  teamIdentifierCopy = teamIdentifier;
  nameCopy = name;
  if (identifierCopy)
  {
    v19.receiver = self;
    v19.super_class = SHAttribution;
    v15 = [(SHAttribution *)&v19 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_bundleIdentifier, identifier);
      objc_storeStrong(p_isa + 4, bundleIdentifier);
      objc_storeStrong(p_isa + 2, teamIdentifier);
      objc_storeStrong(p_isa + 3, name);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)findContainingAppBundleIdentifierForIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v20 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v20];
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

    v16 = identifierCopy;
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

  containingBundleRecord = [v4 containingBundleRecord];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
    v8 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v9 = bundleIdentifier;
      v10 = identifierCopy;
    }

    else
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_ERROR, "Client app is an app extension, but no containing app bundle identifier", buf, 2u);
      }

      v9 = identifierCopy;
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

    v16 = identifierCopy;
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)productNameForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v8 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v8];

  localizedName = [v5 localizedName];

  return localizedName;
}

+ (BOOL)requiresMediaLibraryAttributionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mediaLibraryAttributionExceptionPlist = [self mediaLibraryAttributionExceptionPlist];
  v6 = [mediaLibraryAttributionExceptionPlist objectForKey:@"com.apple.private.shazamkit.exception.medialibraryattribution"];

  LOBYTE(mediaLibraryAttributionExceptionPlist) = [v6 containsObject:identifierCopy];
  return mediaLibraryAttributionExceptionPlist ^ 1;
}

+ (BOOL)requiresMusicRecognitionSensorActivityAttributionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  musicRecognitionSensorActivityAttributionExceptionPlist = [self musicRecognitionSensorActivityAttributionExceptionPlist];
  v6 = [musicRecognitionSensorActivityAttributionExceptionPlist objectForKey:@"com.apple.private.shazamkit.musicrecognitionsensoractivity"];

  LOBYTE(musicRecognitionSensorActivityAttributionExceptionPlist) = [v6 containsObject:identifierCopy];
  return musicRecognitionSensorActivityAttributionExceptionPlist;
}

+ (id)musicRecognitionSensorActivityAttributionExceptionPlist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SHAttribution_musicRecognitionSensorActivityAttributionExceptionPlist__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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