@interface AXSettingsObjectDestructionHelper
- (AXSettingsObjectDestructionHelper)initWithListenerAddress:(void *)address forSettings:(id)settings;
- (void)addPreferenceKey:(id)key;
- (void)dealloc;
@end

@implementation AXSettingsObjectDestructionHelper

- (AXSettingsObjectDestructionHelper)initWithListenerAddress:(void *)address forSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = AXSettingsObjectDestructionHelper;
  v7 = [(AXSettingsObjectDestructionHelper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_listenerAddress = address;
    objc_storeWeak(&v7->_settings, settingsCopy);
    v9 = v8;
  }

  return v8;
}

- (void)addPreferenceKey:(id)key
{
  keyCopy = key;
  preferenceKeys = self->_preferenceKeys;
  v8 = keyCopy;
  if (!preferenceKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_preferenceKeys;
    self->_preferenceKeys = v6;

    keyCopy = v8;
    preferenceKeys = self->_preferenceKeys;
  }

  [(NSMutableArray *)preferenceKeys addObject:keyCopy];
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_preferenceKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_settings);
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_listenerAddress];
        [WeakRetained unregisterUpdateBlockForPreferenceKey:v8 withListenerID:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = AXSettingsObjectDestructionHelper;
  [(AXSettingsObjectDestructionHelper *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

@end