@interface AXSDSoundDetectionController
+ (id)sharedInstance;
- (AXSDSoundDetectionController)init;
- (BOOL)containsListenType:(id)type;
- (id)pipeInFile:(id)file;
- (void)_pipedInFileUpdated;
- (void)addListenType:(id)type;
- (void)enrollForDataCollection;
- (void)removeListenType:(id)type;
- (void)startListening;
- (void)stopListening;
@end

@implementation AXSDSoundDetectionController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXSDSoundDetectionController sharedInstance];
  }

  v3 = sharedInstance___SharedController_0;

  return v3;
}

uint64_t __46__AXSDSoundDetectionController_sharedInstance__block_invoke()
{
  sharedInstance___SharedController_0 = objc_alloc_init(AXSDSoundDetectionController);

  return MEMORY[0x2821F96F8]();
}

- (AXSDSoundDetectionController)init
{
  v12.receiver = self;
  v12.super_class = AXSDSoundDetectionController;
  v2 = [(AXSDSoundDetectionController *)&v12 init];
  if (v2)
  {
    if (AXIsSoundDetectionMedinaSupportEnabled())
    {
      v3 = objc_alloc_init(_TtC18AXSoundDetectionUI34AXSDSecureControllerImplementation);
      controller = v2->_controller;
      v2->_controller = v3;
    }

    else
    {
      v5 = objc_alloc_init(_TtC18AXSoundDetectionUI30AXSDNSControllerImplementation);
      v6 = v2->_controller;
      v2->_controller = v5;

      objc_initWeak(&location, v2);
      mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __36__AXSDSoundDetectionController_init__block_invoke;
      v9[3] = &unk_278BDD060;
      objc_copyWeak(&v10, &location);
      [mEMORY[0x277CE6F98] registerUpdateBlock:v9 forRetrieveSelector:sel_pipedInFile withListener:v2];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

void __36__AXSDSoundDetectionController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pipedInFileUpdated];
}

- (void)enrollForDataCollection
{
  if ([MEMORY[0x277D12B60] isInternalInstall])
  {

    +[AXSDUltronInternalRecordingManager enroll];
  }
}

- (void)addListenType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = AXLogUltron();
  v6 = os_signpost_id_generate(v5);

  v7 = AXLogUltron();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = MEMORY[0x277CCABB0];
    currentDetectionTypes = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes, "count")}];
    v18 = 138412290;
    v19 = v11;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Add Sound Detection Type", "Begin - Number enabled: %@", &v18, 0xCu);
  }

  [(AXSDControllerImplementation *)self->_controller addWithListenType:typeCopy];
  v12 = AXLogUltron();
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = MEMORY[0x277CCABB0];
    currentDetectionTypes2 = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes2, "count")}];
    v18 = 138412290;
    v19 = v16;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v13, OS_SIGNPOST_INTERVAL_END, v6, "Add Sound Detection Type", "End - Number enabled: %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeListenType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = AXLogUltron();
  v6 = os_signpost_id_generate(v5);

  v7 = AXLogUltron();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = MEMORY[0x277CCABB0];
    currentDetectionTypes = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes, "count")}];
    v18 = 138412290;
    v19 = v11;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Remove Sound Detection Type", "Begin - Number enabled: %@", &v18, 0xCu);
  }

  [(AXSDControllerImplementation *)self->_controller removeWithListenType:typeCopy];
  v12 = AXLogUltron();
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = MEMORY[0x277CCABB0];
    currentDetectionTypes2 = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes2, "count")}];
    v18 = 138412290;
    v19 = v16;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v13, OS_SIGNPOST_INTERVAL_END, v6, "Remove Sound Detection Type", "End - Number enabled: %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsListenType:(id)type
{
  typeCopy = type;
  currentDetectionTypes = [(AXSDSoundDetectionController *)self currentDetectionTypes];
  v6 = [currentDetectionTypes containsObject:typeCopy];

  return v6;
}

- (void)startListening
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = AXLogUltron();
  v4 = os_signpost_id_generate(v3);

  _hasMedinaSupport = [(AXSDSoundDetectionController *)self _hasMedinaSupport];
  v6 = AXLogUltron();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithBool:{-[AXSDSoundDetectionController _hasMedinaSupport](self, "_hasMedinaSupport")}];
    v24 = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_DEFAULT, "[%@]: Will start listening. Has Medina Support Enabled: %@", &v24, 0x16u);
  }

  v11 = AXLogUltron();
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = MEMORY[0x277CCABB0];
    currentDetectionTypes = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes, "count")}];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:_hasMedinaSupport];
    v24 = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Start Listening", "Begin - Number of sounds enabled: %@ - Medina Support Enabled: %@", &v24, 0x16u);
  }

  [(AXSDControllerImplementation *)self->_controller startListening];
  v17 = AXLogUltron();
  v18 = v17;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = MEMORY[0x277CCABB0];
    currentDetectionTypes2 = [(AXSDSoundDetectionController *)self currentDetectionTypes];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(currentDetectionTypes2, "count")}];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:_hasMedinaSupport];
    v24 = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v18, OS_SIGNPOST_INTERVAL_END, v4, "Start Listening", "End - Number of sounds enabled: %@ - Medina Support Enabled: %@", &v24, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopListening
{
  v3 = AXLogUltron();
  v4 = os_signpost_id_generate(v3);

  v5 = AXLogUltron();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Stop Listening", "Begin", buf, 2u);
  }

  [(AXSDControllerImplementation *)self->_controller stopListening];
  v7 = AXLogUltron();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D62D000, v8, OS_SIGNPOST_INTERVAL_END, v4, "Stop Listening", "End", v9, 2u);
  }
}

- (void)_pipedInFileUpdated
{
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  pipedInFile = [mEMORY[0x277CE6F98] pipedInFile];
  v4 = [(AXSDSoundDetectionController *)self pipeInFile:pipedInFile];
}

- (id)pipeInFile:(id)file
{
  fileCopy = file;
  if ([(AXSDControllerImplementation *)self->_controller conformsToProtocol:&unk_284FB8328])
  {
    v5 = self->_controller;
    v11 = 0;
    v6 = [(AXSDControllerImplementation *)v5 pipeInFilePath:fileCopy error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = AXLogUltron();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AXSDSoundDetectionController *)v7 pipeInFile:v8];
      }

      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pipeInFile:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Error while piping file. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end