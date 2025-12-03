@interface SFSpeechProfileContainerManager
+ (id)sharedInstance;
- (SFSpeechProfileContainerManager)init;
- (id)containerForCurrentPersona;
- (id)containerForPersona:(id)persona;
- (id)personaForContainerRelativeURL:(id)l;
- (void)releaseContainerForPersona:(id)persona;
- (void)resourceAvailableForPersona:(id)persona;
@end

@implementation SFSpeechProfileContainerManager

- (void)resourceAvailableForPersona:(id)persona
{
  v12 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  v5 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SFSpeechProfileContainerManager resourceAvailableForPersona:]";
    v10 = 2112;
    v11 = personaCopy;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_INFO, "%s Refreshing container for persona: %@", &v8, 0x16u);
  }

  [(SFSpeechProfileContainerManager *)self releaseContainerForPersona:personaCopy];
  v6 = [(SFSpeechProfileContainerManager *)self containerForPersona:personaCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)releaseContainerForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SFSpeechProfileContainerManager_releaseContainerForPersona___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = personaCopy;
  v6 = personaCopy;
  dispatch_sync(queue, v7);
}

- (id)personaForContainerRelativeURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  absoluteString = [l absoluteString];
  v5 = absoluteString;
  if (absoluteString && [absoluteString length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__1570;
    v17 = __Block_byref_object_dispose__1571;
    v18 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__SFSpeechProfileContainerManager_personaForContainerRelativeURL___block_invoke;
    block[3] = &unk_1E797C5A0;
    block[4] = self;
    v13 = v5;
    v14 = buf;
    dispatch_sync(queue, block);
    v7 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v11 = @"empty";
      if (!v5)
      {
        v11 = @"nil";
      }

      *buf = 136315394;
      *&buf[4] = "[SFSpeechProfileContainerManager personaForContainerRelativeURL:]";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_error_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_ERROR, "%s containerRelativeURL cannot be %@.", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

void __66__SFSpeechProfileContainerManager_personaForContainerRelativeURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__SFSpeechProfileContainerManager_personaForContainerRelativeURL___block_invoke_2;
  v5[3] = &unk_1E797C150;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __66__SFSpeechProfileContainerManager_personaForContainerRelativeURL___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = [v9 url];
  v11 = [v10 absoluteString];

  if (v11 && [v11 length])
  {
    if ([*(a1 + 32) hasPrefix:v11])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
    v12 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[SFSpeechProfileContainerManager personaForContainerRelativeURL:]_block_invoke_2";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1AC5BC000, v12, OS_LOG_TYPE_INFO, "%s No valid URL for speech profile container: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)containerForPersona:(id)persona
{
  personaCopy = persona;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1570;
  v16 = __Block_byref_object_dispose__1571;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SFSpeechProfileContainerManager_containerForPersona___block_invoke;
  block[3] = &unk_1E797C5A0;
  v10 = personaCopy;
  v11 = &v12;
  block[4] = self;
  v6 = personaCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__SFSpeechProfileContainerManager_containerForPersona___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v6 = a1[5];
    v7 = @"No";
    if (*(*(a1[6] + 8) + 40))
    {
      v7 = @"Found";
    }

    v16 = 136315650;
    v17 = "[SFSpeechProfileContainerManager containerForPersona:]_block_invoke";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_INFO, "%s %@ cached container for persona: %@", &v16, 0x20u);
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = [[SFSpeechProfileContainer alloc] initWithPersona:a1[5]];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v12 = a1[5];
      v13 = @"Failed to initialize";
      if (*(*(a1[6] + 8) + 40))
      {
        v13 = @"Initialized";
      }

      v16 = 136315650;
      v17 = "[SFSpeechProfileContainerManager containerForPersona:]_block_invoke";
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s %@ container for persona: %@", &v16, 0x20u);
    }

    v14 = *(*(a1[6] + 8) + 40);
    if (v14)
    {
      [*(a1[4] + 16) setObject:v14 forKey:a1[5]];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)containerForCurrentPersona
{
  v3 = +[SFPersonaManager currentPersonaId];
  v4 = +[SFPersonaManager sharedInstance];
  v5 = [v4 personaMatchesEnrolledUser:v3];

  if (v5)
  {
    v6 = [(SFSpeechProfileContainerManager *)self containerForPersona:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SFSpeechProfileContainerManager)init
{
  v13.receiver = self;
  v13.super_class = SFSpeechProfileContainerManager;
  v2 = [(SFSpeechProfileContainerManager *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 cStringUsingEncoding:4];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_opt_new();
    containerForPersona = v2->_containerForPersona;
    v2->_containerForPersona = v9;

    v11 = +[SFSpeechProfileResourceMonitor sharedMonitor];
    [v11 addObserver:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1594);
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

uint64_t __49__SFSpeechProfileContainerManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end