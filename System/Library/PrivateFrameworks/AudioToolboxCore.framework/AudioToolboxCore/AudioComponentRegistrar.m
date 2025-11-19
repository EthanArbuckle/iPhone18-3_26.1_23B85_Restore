@interface AudioComponentRegistrar
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)initForMode:(BOOL)a3;
- (id)replaceListener:(id)a3 withListener:(id)a4;
- (void)dealloc;
- (void)resumeListeners;
@end

@implementation AudioComponentRegistrar

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v6 = a3;
  v7 = a4;
  v8 = [v6 _queue];
  [v7 _setQueue:v8];

  v9 = *(impl + 13);
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v10 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "AudioComponentRegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 194;
    *&buf[18] = 1024;
    *&buf[20] = v9 != v6;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = [v7 processIdentifier];
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (main %d  pid %d)", buf, 0x1Eu);
  }

  if (v9 == v6)
  {
    [v7 setExportedInterface:*(impl + 14)];
    v12 = [[AudioComponentPrefRegConnection alloc] initWithRegistrar:impl connection:v7];
    [v7 setExportedObject:v12];
  }

  else
  {
    [v7 setExportedInterface:*(impl + 11)];
    [v7 setRemoteObjectInterface:*(impl + 12)];
    v12 = [[AudioComponentMainRegConnection alloc] initWithRegistrar:impl connection:v7];
    [*(impl + 16) addObject:v12];
    objc_initWeak(&location, v12);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke;
    v19 = &unk_1E72C2AA8;
    v20[1] = impl;
    objc_copyWeak(v20, &location);
    [v7 setInterruptionHandler:buf];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke_2;
    v15[3] = &unk_1E72C2AA8;
    v16[1] = impl;
    objc_copyWeak(v16, &location);
    [v7 setInvalidationHandler:v15];
    [v7 setExportedObject:v12];
    objc_destroyWeak(v16);
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  [v7 resume];
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)resumeListeners
{
  impl = self->_impl;
  [impl[10] resume];
  if ((*impl & 1) == 0)
  {
    v3 = impl[13];

    [v3 resume];
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "AudioComponentRegistrar.mm";
    v9 = 1024;
    v10 = 568;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioComponentRegistrar stopping", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = AudioComponentRegistrar;
  [(AudioComponentRegistrar *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)initForMode:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AudioComponentRegistrar;
  if ([(AudioComponentRegistrar *)&v5 init])
  {
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)replaceListener:(id)a3 withListener:(id)a4
{
  impl = self->_impl;
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.audio.AudioComponentRegistrar"])
  {
    v8 = 80;
LABEL_5:
    v9 = *&impl[v8];
    objc_storeStrong(&impl[v8], a4);
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"com.apple.audio.AudioComponentPrefs"])
  {
    v8 = 104;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end