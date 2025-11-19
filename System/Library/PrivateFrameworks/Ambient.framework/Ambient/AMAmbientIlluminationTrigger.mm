@interface AMAmbientIlluminationTrigger
- (AMAmbientIlluminationTrigger)init;
- (AMAmbientIlluminationTrigger)initWithBrightnessSystemClient:(id)a3;
- (AMAmbientIlluminationTriggerDelegate)delegate;
- (double)_effectiveDeactivationThresholdLux;
- (void)_evaluateTrigger;
- (void)_setTriggered:(BOOL)a3;
@end

@implementation AMAmbientIlluminationTrigger

- (AMAmbientIlluminationTrigger)init
{
  v3 = objc_alloc_init(MEMORY[0x277CFD390]);
  v4 = [(AMAmbientIlluminationTrigger *)self initWithBrightnessSystemClient:v3];

  return v4;
}

- (AMAmbientIlluminationTrigger)initWithBrightnessSystemClient:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = AMAmbientIlluminationTrigger;
  v6 = [(AMAmbientIlluminationTrigger *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_brightnessSystemClient, a3);
    objc_initWeak(&location, v7);
    brightnessSystemClient = v7->_brightnessSystemClient;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63__AMAmbientIlluminationTrigger_initWithBrightnessSystemClient___block_invoke;
    v15 = &unk_278C736B0;
    objc_copyWeak(&v16, &location);
    [(BrightnessSystemClient *)brightnessSystemClient registerNotificationBlock:&v12 forProperties:&unk_285177BC8];
    v9 = [(BrightnessSystemClient *)v7->_brightnessSystemClient copyPropertyForKey:@"TrustedLux", v12, v13, v14, v15];
    [v9 doubleValue];
    v7->_ambientLux = v10;
    *&v7->_activationThresholdLux = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v7->_triggered = 0;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __63__AMAmbientIlluminationTrigger_initWithBrightnessSystemClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v6 isEqualToString:@"TrustedLux"];

  if (a1)
  {
    v8 = objc_opt_class();
    v9 = v5;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = WeakRetained;
      v13 = v11;
      BSDispatchMain();
    }
  }
}

uint64_t __63__AMAmbientIlluminationTrigger_initWithBrightnessSystemClient___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) doubleValue];

  return [v1 _setAmbientLux:?];
}

- (void)_setTriggered:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_triggered != a3)
  {
    self->_triggered = a3;
    v4 = AMLogRedMode();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      triggered = self->_triggered;
      deactivationThresholdLux = self->_deactivationThresholdLux;
      ambientLux = self->_ambientLux;
      activationThresholdLux = self->_activationThresholdLux;
      v11[0] = 67109888;
      v11[1] = triggered;
      v12 = 2048;
      v13 = ambientLux;
      v14 = 2048;
      v15 = activationThresholdLux;
      v16 = 2048;
      v17 = deactivationThresholdLux;
      _os_log_impl(&dword_23EE48000, v4, OS_LOG_TYPE_DEFAULT, "ambient illumination trigger triggered: %{BOOL}u [ ambient lux: %f  on threshold: %f  off threshold: %f ]", v11, 0x26u);
    }

    v9 = [(AMAmbientIlluminationTrigger *)self delegate];
    [v9 ambientIlluminationTrigger:self didUpdateTriggered:self->_triggered];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)_effectiveDeactivationThresholdLux
{
  [(AMAmbientIlluminationTrigger *)self activationThresholdLux];
  v4 = v3;
  [(AMAmbientIlluminationTrigger *)self deactivationThresholdLux];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (void)_evaluateTrigger
{
  [(AMAmbientIlluminationTrigger *)self _ambientLux];
  v4 = v3;
  if (self->_triggered)
  {
    [(AMAmbientIlluminationTrigger *)self _effectiveDeactivationThresholdLux];
LABEL_3:
    if (v4 <= v5)
    {
      return;
    }

    v6 = 0;
    goto LABEL_10;
  }

  [(AMAmbientIlluminationTrigger *)self activationThresholdLux];
  v8 = v7;
  if (self->_triggered)
  {
    [(AMAmbientIlluminationTrigger *)self _effectiveDeactivationThresholdLux];
    if (v4 > v8)
    {
      goto LABEL_3;
    }
  }

  else if (v4 > v7)
  {
    return;
  }

  v6 = 1;
LABEL_10:

  [(AMAmbientIlluminationTrigger *)self _setTriggered:v6];
}

- (AMAmbientIlluminationTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end