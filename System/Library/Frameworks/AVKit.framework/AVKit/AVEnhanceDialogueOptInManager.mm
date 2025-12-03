@interface AVEnhanceDialogueOptInManager
+ (AVEnhanceDialogueOptInManager)sharedInstance;
- (AVEnhanceDialogueOptInManager)init;
- (BOOL)isEnhanceDialogueAllowedUsingController:(id)controller;
- (void)optInEnhanceDialogueController:(id)controller;
- (void)optOutEnhanceDialogueController:(id)controller;
- (void)setAllowEnhanceDialogue:(BOOL)dialogue;
@end

@implementation AVEnhanceDialogueOptInManager

- (void)setAllowEnhanceDialogue:(BOOL)dialogue
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_allowEnhanceDialogue == dialogue)
  {
    return;
  }

  dialogueCopy = dialogue;
  v5 = +[AVKitGlobalSettings shared];
  customMediaSelectionSchemeEnabled = [v5 customMediaSelectionSchemeEnabled];

  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  v8 = mEMORY[0x1E6958460];
  if (!customMediaSelectionSchemeEnabled)
  {
    v24 = 0;
    v15 = [mEMORY[0x1E6958460] setAllowEnhanceDialogue:dialogueCopy error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v16 localizedDescription];
        v21 = [localizedDescription cStringUsingEncoding:4];
        *buf = 136315138;
        v27 = v21;
        _os_log_error_impl(&dword_18B49C000, v17, OS_LOG_TYPE_ERROR, "Unable to set allow Enhance Dialogue: %s", buf, 0xCu);
      }
    }

    if (dialogueCopy)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v23 = v16;
    v19 = [MEMORY[0x1E69583C0] setEnhanceDialoguePreference:v18 error:&v23];
    v10 = v23;

    if (v19)
    {
      goto LABEL_16;
    }

    v11 = _AVLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    localizedDescription2 = [v10 localizedDescription];
    v22 = [localizedDescription2 cStringUsingEncoding:4];
    *buf = 136315138;
    v27 = v22;
    v14 = "Unable to set Enhance Dialogue preference: %s";
    goto LABEL_21;
  }

  v25 = 0;
  v9 = [mEMORY[0x1E6958460] setPrefersEnhanceDialogue:dialogueCopy error:&v25];
  v10 = v25;

  if ((v9 & 1) == 0)
  {
    v11 = _AVLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    localizedDescription2 = [v10 localizedDescription];
    v13 = [localizedDescription2 cStringUsingEncoding:4];
    *buf = 136315138;
    v27 = v13;
    v14 = "Unable to set Prefers Enhance Dialogue: %s";
LABEL_21:
    _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);

    goto LABEL_15;
  }

LABEL_16:
  if (!v10)
  {
    self->_allowEnhanceDialogue = dialogueCopy;
  }
}

- (BOOL)isEnhanceDialogueAllowedUsingController:(id)controller
{
  controllerCopy = controller;
  enhanceDialogueControllers = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  v6 = [enhanceDialogueControllers containsObject:controllerCopy];

  return v6;
}

- (void)optOutEnhanceDialogueController:(id)controller
{
  controllerCopy = controller;
  enhanceDialogueControllers = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  [enhanceDialogueControllers removeObject:controllerCopy];

  enhanceDialogueControllers2 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  if ([enhanceDialogueControllers2 count])
  {
  }

  else
  {
    allowEnhanceDialogue = [(AVEnhanceDialogueOptInManager *)self allowEnhanceDialogue];

    if (allowEnhanceDialogue)
    {

      [(AVEnhanceDialogueOptInManager *)self setAllowEnhanceDialogue:0];
    }
  }
}

- (void)optInEnhanceDialogueController:(id)controller
{
  controllerCopy = controller;
  enhanceDialogueControllers = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  [enhanceDialogueControllers addObject:controllerCopy];

  enhanceDialogueControllers2 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  if ([enhanceDialogueControllers2 count])
  {
    allowEnhanceDialogue = [(AVEnhanceDialogueOptInManager *)self allowEnhanceDialogue];

    if (!allowEnhanceDialogue)
    {

      [(AVEnhanceDialogueOptInManager *)self setAllowEnhanceDialogue:1];
    }
  }

  else
  {
  }
}

- (AVEnhanceDialogueOptInManager)init
{
  v7.receiver = self;
  v7.super_class = AVEnhanceDialogueOptInManager;
  v2 = [(AVEnhanceDialogueOptInManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowEnhanceDialogue = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    enhanceDialogueControllers = v3->_enhanceDialogueControllers;
    v3->_enhanceDialogueControllers = v4;
  }

  return v3;
}

+ (AVEnhanceDialogueOptInManager)sharedInstance
{
  v2 = sharedInstance_sharedInstance_20333;
  if (!sharedInstance_sharedInstance_20333)
  {
    v3 = objc_alloc_init(AVEnhanceDialogueOptInManager);
    v4 = sharedInstance_sharedInstance_20333;
    sharedInstance_sharedInstance_20333 = v3;

    v2 = sharedInstance_sharedInstance_20333;
  }

  return v2;
}

@end