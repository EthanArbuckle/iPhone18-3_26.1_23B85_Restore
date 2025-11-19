@interface AudioComponentRegistrarClient
- (void)registrationsChanged:(id)a3 includesExtensions:(BOOL)a4 fsHash:(id)a5;
@end

@implementation AudioComponentRegistrarClient

- (void)registrationsChanged:(id)a3 includesExtensions:(BOOL)a4 fsHash:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v9 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315394;
    *&v12[4] = "AudioComponentPluginMgr.mm";
    *&v12[12] = 1024;
    *&v12[14] = 114;
    _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d registrationsChanged", v12, 0x12u);
  }

  GlobalComponentPluginMgr(v12);
  AudioComponentMgr_RegistrarService::mergeServerRegistrations(*&v12[8], v7, !a4, v8, 0);
  if (*v12)
  {
    std::recursive_mutex::unlock(*v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end