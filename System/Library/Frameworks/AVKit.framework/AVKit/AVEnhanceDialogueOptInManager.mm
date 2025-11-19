@interface AVEnhanceDialogueOptInManager
+ (AVEnhanceDialogueOptInManager)sharedInstance;
- (AVEnhanceDialogueOptInManager)init;
- (BOOL)isEnhanceDialogueAllowedUsingController:(id)a3;
- (void)optInEnhanceDialogueController:(id)a3;
- (void)optOutEnhanceDialogueController:(id)a3;
- (void)setAllowEnhanceDialogue:(BOOL)a3;
@end

@implementation AVEnhanceDialogueOptInManager

- (void)setAllowEnhanceDialogue:(BOOL)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_allowEnhanceDialogue == a3)
  {
    return;
  }

  v3 = a3;
  v5 = +[AVKitGlobalSettings shared];
  v6 = [v5 customMediaSelectionSchemeEnabled];

  v7 = [MEMORY[0x1E6958460] sharedInstance];
  v8 = v7;
  if (!v6)
  {
    v24 = 0;
    v15 = [v7 setAllowEnhanceDialogue:v3 error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = [v16 localizedDescription];
        v21 = [v20 cStringUsingEncoding:4];
        *buf = 136315138;
        v27 = v21;
        _os_log_error_impl(&dword_18B49C000, v17, OS_LOG_TYPE_ERROR, "Unable to set allow Enhance Dialogue: %s", buf, 0xCu);
      }
    }

    if (v3)
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

    v12 = [v10 localizedDescription];
    v22 = [v12 cStringUsingEncoding:4];
    *buf = 136315138;
    v27 = v22;
    v14 = "Unable to set Enhance Dialogue preference: %s";
    goto LABEL_21;
  }

  v25 = 0;
  v9 = [v7 setPrefersEnhanceDialogue:v3 error:&v25];
  v10 = v25;

  if ((v9 & 1) == 0)
  {
    v11 = _AVLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      goto LABEL_16;
    }

    v12 = [v10 localizedDescription];
    v13 = [v12 cStringUsingEncoding:4];
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
    self->_allowEnhanceDialogue = v3;
  }
}

- (BOOL)isEnhanceDialogueAllowedUsingController:(id)a3
{
  v4 = a3;
  v5 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)optOutEnhanceDialogueController:(id)a3
{
  v4 = a3;
  v5 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  [v5 removeObject:v4];

  v7 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  if ([v7 count])
  {
  }

  else
  {
    v6 = [(AVEnhanceDialogueOptInManager *)self allowEnhanceDialogue];

    if (v6)
    {

      [(AVEnhanceDialogueOptInManager *)self setAllowEnhanceDialogue:0];
    }
  }
}

- (void)optInEnhanceDialogueController:(id)a3
{
  v4 = a3;
  v5 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  [v5 addObject:v4];

  v7 = [(AVEnhanceDialogueOptInManager *)self enhanceDialogueControllers];
  if ([v7 count])
  {
    v6 = [(AVEnhanceDialogueOptInManager *)self allowEnhanceDialogue];

    if (!v6)
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