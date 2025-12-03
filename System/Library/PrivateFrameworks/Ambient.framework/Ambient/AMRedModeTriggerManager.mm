@interface AMRedModeTriggerManager
- (AMRedModeTriggerManager)initWithContext:(id)context;
- (id)_getNewAmbientIlluminationTrigger;
- (void)_setRedModeTriggered:(BOOL)triggered;
- (void)_updateTriggerState;
- (void)setRedModeDetectionEnabled:(BOOL)enabled;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation AMRedModeTriggerManager

- (AMRedModeTriggerManager)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = AMRedModeTriggerManager;
  v6 = [(AMRedModeTriggerManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initializationContext, context);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v10 = +[AMRedModeDomain rootSettings];
    redModeSettings = v7->_redModeSettings;
    v7->_redModeSettings = v10;

    [(PTSettings *)v7->_redModeSettings addKeyObserver:v7];
  }

  return v7;
}

- (void)setRedModeDetectionEnabled:(BOOL)enabled
{
  if (self->_redModeDetectionEnabled != enabled)
  {
    self->_redModeDetectionEnabled = enabled;
    if (enabled)
    {
      _getNewAmbientIlluminationTrigger = [(AMRedModeTriggerManager *)self _getNewAmbientIlluminationTrigger];
      ambientIlluminationTrigger = self->_ambientIlluminationTrigger;
      self->_ambientIlluminationTrigger = _getNewAmbientIlluminationTrigger;

      [(AMAmbientIlluminationTrigger *)self->_ambientIlluminationTrigger setDelegate:self];
      v6 = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings onLuxThreshold];
      [(AMAmbientIlluminationTrigger *)v6 setActivationThresholdLux:?];
      v7 = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings offLuxThreshold];
      [(AMAmbientIlluminationTrigger *)v7 setDeactivationThresholdLux:?];

      [(AMRedModeTriggerManager *)self _updateTriggerState];
    }

    else
    {
      [(AMAmbientIlluminationTrigger *)self->_ambientIlluminationTrigger setDelegate:0];
      v8 = self->_ambientIlluminationTrigger;
      self->_ambientIlluminationTrigger = 0;

      [(AMRedModeTriggerManager *)self _setRedModeTriggered:0];
    }
  }
}

- (void)_setRedModeTriggered:(BOOL)triggered
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_redModeTriggered != triggered)
  {
    self->_redModeTriggered = triggered;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) redModeTriggerManager:self didUpdateRedModeTriggeredState:{self->_redModeTriggered, v10}];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (self->_redModeSettings == settings)
  {
    v10 = keyCopy;
    if ([keyCopy isEqualToString:@"onLuxThreshold"])
    {
      ambientIlluminationTrigger = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings onLuxThreshold];
      keyCopy = [(AMAmbientIlluminationTrigger *)ambientIlluminationTrigger setActivationThresholdLux:?];
    }

    else
    {
      keyCopy = [v10 isEqualToString:@"offLuxThreshold"];
      v7 = v10;
      if (!keyCopy)
      {
        goto LABEL_7;
      }

      v9 = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings offLuxThreshold];
      keyCopy = [(AMAmbientIlluminationTrigger *)v9 setDeactivationThresholdLux:?];
    }

    v7 = v10;
  }

LABEL_7:

  MEMORY[0x2821F96F8](keyCopy, v7);
}

- (void)_updateTriggerState
{
  v9 = *MEMORY[0x277D85DE8];
  isTriggered = [(AMAmbientIlluminationTrigger *)self->_ambientIlluminationTrigger isTriggered];
  v4 = AMLogRedMode();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = isTriggered;
    v7 = 1024;
    v8 = isTriggered;
    _os_log_impl(&dword_23EE48000, v4, OS_LOG_TYPE_DEFAULT, "Red mode should trigger: %{BOOL}u [ isDarkEnvironment : %{BOOL}u ]", v6, 0xEu);
  }

  [(AMRedModeTriggerManager *)self _setRedModeTriggered:isTriggered];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_getNewAmbientIlluminationTrigger
{
  ambientIlluminationTrigger = [(AMRedModeTriggerManagerContext *)self->_initializationContext ambientIlluminationTrigger];
  if (!ambientIlluminationTrigger)
  {
    ambientIlluminationTrigger = objc_alloc_init(AMAmbientIlluminationTrigger);
  }

  return ambientIlluminationTrigger;
}

@end