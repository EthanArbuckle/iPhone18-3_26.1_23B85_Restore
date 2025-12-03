@interface APCarPlayPreferences
- (APCarPlayPreferences)init;
- (void)dealloc;
- (void)handleCarPlayAllowedDidChange;
@end

@implementation APCarPlayPreferences

- (APCarPlayPreferences)init
{
  v6.receiver = self;
  v6.super_class = APCarPlayPreferences;
  v2 = [(APCarPlayPreferences *)&v6 init];
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__2;
    v3 = getCRCarPlayPreferencesClass_softClass;
    v12 = __Block_byref_object_dispose__2;
    v13 = getCRCarPlayPreferencesClass_softClass;
    if (!getCRCarPlayPreferencesClass_softClass)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __getCRCarPlayPreferencesClass_block_invoke;
      v7[3] = &unk_27849ACC8;
      v7[4] = &v8;
      __getCRCarPlayPreferencesClass_block_invoke(v7);
      v3 = v9[5];
    }

    _Block_object_dispose(&v8, 8);
    v4 = objc_alloc_init(v3);
    v2->_preferences = v4;
    [(CRCarPlayPreferences *)v4 setPreferencesDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  self->_preferences = 0;
  v3.receiver = self;
  v3.super_class = APCarPlayPreferences;
  [(APCarPlayPreferences *)&v3 dealloc];
}

- (void)handleCarPlayAllowedDidChange
{
  isCarPlayAllowed = [(CRCarPlayPreferences *)self->_preferences isCarPlayAllowed];
  if (gLogCategory_APCarPlayPreferences <= 50 && (gLogCategory_APCarPlayPreferences != -1 || _LogCategory_Initialize()))
  {
    [APCarPlayPreferences handleCarPlayAllowedDidChange];
  }

  delegate = self->_delegate;

  [(APCarPlayPreferencesDelegate *)delegate setCarPlayEnabled:isCarPlayAllowed];
}

@end