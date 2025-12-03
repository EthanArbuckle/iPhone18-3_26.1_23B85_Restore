@interface SpeakThisServicesUI
+ (void)disableSpeakThisServices;
+ (void)enableSpeakThisServices;
- (SpeakThisServicesUI)init;
- (void)_handleSpeakThisEnabledStatusDidChangeNotification:(id)notification;
- (void)_kbFrameWillChange:(id)change;
- (void)_registerForKBFrameNotifications;
- (void)_unregisterForKBFrameNotifications;
@end

@implementation SpeakThisServicesUI

+ (void)enableSpeakThisServices
{
  if (!_SharedSpeakThisServicesUI)
  {
    _SharedSpeakThisServicesUI = objc_alloc_init(SpeakThisServicesUI);

    MEMORY[0x2A1C71028]();
  }
}

+ (void)disableSpeakThisServices
{
  v2 = _SharedSpeakThisServicesUI;
  _SharedSpeakThisServicesUI = 0;
}

- (SpeakThisServicesUI)init
{
  v5.receiver = self;
  v5.super_class = SpeakThisServicesUI;
  v2 = [(SpeakThisServicesUI *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleSpeakThisEnabledStatusDidChangeNotification_ name:*MEMORY[0x29EDC8500] object:0];

    [(SpeakThisServicesUI *)v2 _handleSpeakThisEnabledStatusDidChangeNotification:0];
  }

  return v2;
}

- (void)_handleSpeakThisEnabledStatusDidChangeNotification:(id)notification
{
  if (_AXSSpeakThisEnabled())
  {

    [(SpeakThisServicesUI *)self _registerForKBFrameNotifications];
  }

  else
  {

    [(SpeakThisServicesUI *)self _unregisterForKBFrameNotifications];
  }
}

- (void)_registerForKBFrameNotifications
{
  if (_AXSSpeakThisEnabled())
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__kbFrameWillChange_ name:*MEMORY[0x29EDC81C8] object:0];
  }

  else
  {

    [(SpeakThisServicesUI *)self _unregisterForKBFrameNotifications];
  }
}

- (void)_unregisterForKBFrameNotifications
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC81C8] object:0];
}

- (void)_kbFrameWillChange:(id)change
{
  changeCopy = change;
  v15 = objc_opt_new();
  speakThisMessageKeyKBFrame = [getSpeakThisServicesClass() speakThisMessageKeyKBFrame];
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x29EDC81B0]];
  [v6 CGRectValue];
  v7 = NSStringFromCGRect(v17);
  [v15 setObject:v7 forKeyedSubscript:speakThisMessageKeyKBFrame];

  userInfo2 = [changeCopy userInfo];
  v9 = *MEMORY[0x29EDC8180];
  v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x29EDC8180]];
  [v15 setObject:v10 forKeyedSubscript:v9];

  userInfo3 = [changeCopy userInfo];

  v12 = *MEMORY[0x29EDC8188];
  v13 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x29EDC8188]];
  [v15 setObject:v13 forKeyedSubscript:v12];

  sharedInstance = [getSpeakThisServicesClass() sharedInstance];
  [sharedInstance keyboardFrameWillUpdate:v15 errorHandler:&__block_literal_global_3];
}

void __42__SpeakThisServicesUI__kbFrameWillChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__SpeakThisServicesUI__kbFrameWillChange___block_invoke_cold_1(v2, v3);
    }
  }
}

void __42__SpeakThisServicesUI__kbFrameWillChange___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BADF000, a2, OS_LOG_TYPE_ERROR, "Error updating keyboard frame: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end