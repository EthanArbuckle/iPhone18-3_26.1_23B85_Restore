@interface AMRedModeTriggerManager
- (AMRedModeTriggerManager)initWithContext:(id)a3;
- (id)_getNewAmbientIlluminationTrigger;
- (void)_setRedModeTriggered:(BOOL)a3;
- (void)_updateTriggerState;
- (void)setRedModeDetectionEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation AMRedModeTriggerManager

- (AMRedModeTriggerManager)initWithContext:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AMRedModeTriggerManager;
  v6 = [(AMRedModeTriggerManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initializationContext, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;

    v10 = +[AMRedModeDomain rootSettings];
    redModeSettings = v7->_redModeSettings;
    v7->_redModeSettings = v10;

    [(PTSettings *)v7->_redModeSettings addKeyObserver:v7];
  }

  return v7;
}

- (void)setRedModeDetectionEnabled:(BOOL)a3
{
  if (self->_redModeDetectionEnabled != a3)
  {
    self->_redModeDetectionEnabled = a3;
    if (a3)
    {
      v4 = [(AMRedModeTriggerManager *)self _getNewAmbientIlluminationTrigger];
      ambientIlluminationTrigger = self->_ambientIlluminationTrigger;
      self->_ambientIlluminationTrigger = v4;

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

- (void)_setRedModeTriggered:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_redModeTriggered != a3)
  {
    self->_redModeTriggered = a3;
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_redModeSettings == a3)
  {
    v10 = v6;
    if ([v6 isEqualToString:@"onLuxThreshold"])
    {
      ambientIlluminationTrigger = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings onLuxThreshold];
      v6 = [(AMAmbientIlluminationTrigger *)ambientIlluminationTrigger setActivationThresholdLux:?];
    }

    else
    {
      v6 = [v10 isEqualToString:@"offLuxThreshold"];
      v7 = v10;
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = self->_ambientIlluminationTrigger;
      [(AMRedModeSettings *)self->_redModeSettings offLuxThreshold];
      v6 = [(AMAmbientIlluminationTrigger *)v9 setDeactivationThresholdLux:?];
    }

    v7 = v10;
  }

LABEL_7:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)_updateTriggerState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(AMAmbientIlluminationTrigger *)self->_ambientIlluminationTrigger isTriggered];
  v4 = AMLogRedMode();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_23EE48000, v4, OS_LOG_TYPE_DEFAULT, "Red mode should trigger: %{BOOL}u [ isDarkEnvironment : %{BOOL}u ]", v6, 0xEu);
  }

  [(AMRedModeTriggerManager *)self _setRedModeTriggered:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_getNewAmbientIlluminationTrigger
{
  v2 = [(AMRedModeTriggerManagerContext *)self->_initializationContext ambientIlluminationTrigger];
  if (!v2)
  {
    v2 = objc_alloc_init(AMAmbientIlluminationTrigger);
  }

  return v2;
}

@end