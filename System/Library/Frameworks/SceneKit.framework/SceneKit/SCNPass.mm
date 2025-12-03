@interface SCNPass
- (SCNPass)initWithFXPass:(__C3DFXPass *)pass technique:(id)technique;
- (id)valueForPassPropertyKey:(int64_t)key;
- (void)dealloc;
- (void)setExecutionHandler:(id)handler;
- (void)setInitializationHandler:(id)handler;
- (void)setValue:(id)value forPassPropertyKey:(int64_t)key;
@end

@implementation SCNPass

- (SCNPass)initWithFXPass:(__C3DFXPass *)pass technique:(id)technique
{
  v8.receiver = self;
  v8.super_class = SCNPass;
  v6 = [(SCNPass *)&v8 init];
  if (v6)
  {
    v6->_fxPass = CFRetain(pass);
    v6->_technique = technique;
  }

  return v6;
}

- (void)dealloc
{
  CFRelease(self->_fxPass);
  v3.receiver = self;
  v3.super_class = SCNPass;
  [(SCNPass *)&v3 dealloc];
}

- (void)setInitializationHandler:(id)handler
{
  C3DFXPassSetInitializeBlock(self->_fxPass, handler);
  fxPass = self->_fxPass;

  C3DFXPassSetInitializeCallback(fxPass, SCNPassInitialize);
}

- (void)setExecutionHandler:(id)handler
{
  C3DFXPassSetExecuteBlock(self->_fxPass, handler);
  fxPass = self->_fxPass;

  C3DFloorSetReflectionCategoryBitMask(fxPass, SCNPassExecute);
}

- (void)setValue:(id)value forPassPropertyKey:(int64_t)key
{
  sceneRef = [(SCNTechnique *)self->_technique sceneRef];
  technique = self->_technique;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SCNPass_setValue_forPassPropertyKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[5] = self;
  v9[6] = key;
  v9[4] = value;
  [SCNTransaction postCommandWithContext:sceneRef object:technique applyBlock:v9];
}

void __39__SCNPass_setValue_forPassPropertyKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 - 1) >= 5)
  {
    if (v2 == 6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(*(*(a1 + 40) + 8) + 200) = [*(a1 + 32) unsignedLongValue];
      }
    }

    else
    {
      if (v2 != 7)
      {
        return;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(*(*(a1 + 40) + 8) + 208) = [*(a1 + 32) unsignedLongValue];
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 48);
      [*(a1 + 32) floatValue];
      *(*(*(a1 + 40) + 8) + (((v3 << 32) - 0x100000000) >> 30) + 392) = v4;
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance();
  v6 = [*(*(a1 + 40) + 16) sceneRef];

  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v6, 0, 1u);
}

- (id)valueForPassPropertyKey:(int64_t)key
{
  +[SCNTransaction lock];
  if ((key - 1) >= 5)
  {
    if (key == 6)
    {
      v7 = MEMORY[0x277CCABB0];
      var3 = self->_fxPass->var49.var3;
    }

    else
    {
      if (key != 7)
      {
        v9 = 0;
        goto LABEL_9;
      }

      v7 = MEMORY[0x277CCABB0];
      var3 = self->_fxPass->var49.var4;
    }

    v6 = [v7 numberWithUnsignedLong:var3];
  }

  else
  {
    LODWORD(v5) = *(&self->_fxPass->var54 + (key - 1));
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  }

  v9 = v6;
LABEL_9:
  +[SCNTransaction unlock];
  return v9;
}

@end