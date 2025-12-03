@interface AXBHoverTextManager
+ (void)initializeMonitor;
- (void)setHoverTextEnabled:(BOOL)enabled isTyping:(BOOL)typing;
- (void)updateHoverTextSettings;
- (void)updateHoverTypingSettings;
@end

@implementation AXBHoverTextManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_10 != -1)
  {
    +[AXBHoverTextManager initializeMonitor];
  }
}

void __40__AXBHoverTextManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBHoverTextManager);
  v1 = _SharedManager_4;
  _SharedManager_4 = v0;

  [_SharedManager_4 updateHoverTextSettings];
  [_SharedManager_4 updateHoverTypingSettings];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = *MEMORY[0x29EDC8468];
  v4 = [MEMORY[0x29EDBA088] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_285_3];

  if (AXHasCapability())
  {
    v9 = [MEMORY[0x29EDBA068] defaultCenter];
    v6 = *MEMORY[0x29EDC8470];
    v7 = [MEMORY[0x29EDBA088] mainQueue];
    v8 = [v9 addObserverForName:v6 object:0 queue:v7 usingBlock:&__block_literal_global_290];
  }
}

- (void)setHoverTextEnabled:(BOOL)enabled isTyping:(BOOL)typing
{
  typingCopy = typing;
  enabledCopy = enabled;
  v28 = *MEMORY[0x29EDCA608];
  v6 = _os_feature_enabled_impl();
  v7 = HTLogCommon();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disable";
      if (enabledCopy)
      {
        v9 = @"enable";
      }

      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = typingCopy;
      _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "HoverText monitor asked to %@ HoverText. isTyping = %i", buf, 0x12u);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v10 = getHoverTextObjcSymbolLoc_ptr;
    v24 = getHoverTextObjcSymbolLoc_ptr;
    if (!getHoverTextObjcSymbolLoc_ptr)
    {
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 3221225472;
      *&buf[16] = __getHoverTextObjcSymbolLoc_block_invoke;
      v26 = &unk_29F2A4FB0;
      v27 = &v21;
      __getHoverTextObjcSymbolLoc_block_invoke(buf);
      v10 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v10)
    {
      [AXBHoverTextManager setHoverTextEnabled:isTyping:];
    }

    v11 = v10();
    v8 = v11;
    if (enabledCopy)
    {
      if (typingCopy)
      {
        v20 = 0;
        v12 = [v11 startHoverTextTypingAndReturnError:&v20];
        v13 = v20;
      }

      else
      {
        v19 = 0;
        v12 = [v11 startHoverTextAndReturnError:&v19];
        v13 = v19;
      }
    }

    else if (typingCopy)
    {
      v18 = 0;
      v12 = [v11 stopHoverTextTypingAndReturnError:&v18];
      v13 = v18;
    }

    else
    {
      v17 = 0;
      v12 = [v11 stopHoverTextAndReturnError:&v17];
      v13 = v17;
    }

    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v15 = HTLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXBHoverTextManager setHoverTextEnabled:v14 isTyping:v15];
      }
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_INFO, "Asked to enable/disable HoverText but feature flag is off, so no", buf, 2u);
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)updateHoverTextSettings
{
  v2 = _SharedManager_4;
  v3 = _AXSHoverTextEnabled() != 0;

  [v2 setHoverTextEnabled:v3 isTyping:0];
}

- (void)updateHoverTypingSettings
{
  v2 = _SharedManager_4;
  v3 = _AXSHoverTextTypingEnabled() != 0;

  [v2 setHoverTextEnabled:v3 isTyping:1];
}

- (void)setHoverTextEnabled:(uint64_t)a1 isTyping:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Error toggling HoverText: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)setHoverTextEnabled:isTyping:.cold.2()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"id<HoverTextServiceProtocolObjC> HoverTextObjc_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBHoverTextManager.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

@end