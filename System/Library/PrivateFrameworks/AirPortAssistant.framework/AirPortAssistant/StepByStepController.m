@interface StepByStepController
+ (id)stepByStepController;
- (StepByStepController)init;
- (int)cancelStepByStep;
- (int)resume;
- (int)setupFromAutoguessRecommendation:(id)a3 withOptions:(id)a4;
- (int)subclassAssistantCallback:(AssistantCallbackContext *)a3;
- (void)dealloc;
- (void)stepByStepNextStepResult:(int)a3 withOptions:(id)a4;
@end

@implementation StepByStepController

- (StepByStepController)init
{
  v26.receiver = self;
  v26.super_class = StepByStepController;
  v2 = [(AssistantCallbackController *)&v26 init];
  v10 = v2;
  if (v2)
  {
    sub_23EBD5950(v2 + 4, v3, v4, v5, v6, v7, v8, v9);
    sub_23EBD879C(*(v10 + 32), sub_23EB8891C, v10, v11, v12, v13, v14, v15);
    v16 = *(v10 + 32);
    v19 = objc_msgSend_assistantCallback(v10, v17, v18);
    sub_23EBD884C(v16, v19, v10, v20, v21, v22, v23, v24);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_setRestoreRecommendation_(self, a2, 0);
  sub_23EBD5A9C(self->_stepByStepContext, v3, v4, v5, v6, v7, v8, v9);
  v10.receiver = self;
  v10.super_class = StepByStepController;
  [(AssistantCallbackController *)&v10 dealloc];
}

- (int)subclassAssistantCallback:(AssistantCallbackContext *)a3
{
  v17 = 0;
  v18 = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

  sub_23EBEB494(a3, @"kBSAssistantCallbackKey_SBS_SBSStep", &v18, v3, v4, v5, v6, v7);
  if (v10)
  {
LABEL_3:
    v12 = v10;
LABEL_18:
    sub_23EBEB6CC(a3, v12, a3, v3, v4, v5, v6, v7);
    return v12;
  }

  if (!v18)
  {
LABEL_20:
    v12 = -6728;
    goto LABEL_18;
  }

  v13 = objc_msgSend_integerValue(v18, v11, a3);
  v14 = v13;
  if (v13 != 117)
  {
    if ((v13 - 1) <= 0xF)
    {
      sub_23EBEB494(a3, @"kBSAssistantCallbackKey_SBS_SBSParamDict", &v17, v3, v4, v5, v6, v7);
      if (v10)
      {
        goto LABEL_3;
      }

      if (v17)
      {
        if (dword_27E381A10 <= 100 && (dword_27E381A10 != -1 || sub_23EB74AC8(&dword_27E381A10, 0x64u)))
        {
          sub_23EB75374(&dword_27E381A10, "[StepByStepController subclassAssistantCallback:]", 100, "step: %d paramDict: %@\n", v4, v5, v6, v7, v14);
        }

        if (self->super._callbackContext)
        {
          v12 = -6721;
        }

        else
        {
          if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
          {
            self->super._callbackContext = a3;
            objc_msgSend_stepByStepNextStep_paramDict_(self->_delegate, v16, v14, v17);
            return 0;
          }

          v12 = -6718;
        }

        goto LABEL_18;
      }

      goto LABEL_20;
    }

LABEL_17:
    v12 = -6705;
    goto LABEL_18;
  }

  if (!self->super._callbackContext)
  {
    v12 = -6709;
    goto LABEL_18;
  }

  v12 = 0;
  self->super._callbackContext = 0;
  return v12;
}

+ (id)stepByStepController
{
  v2 = objc_alloc_init(StepByStepController);

  return v2;
}

- (int)cancelStepByStep
{
  stepByStepContext = self->_stepByStepContext;
  if (!stepByStepContext)
  {
    return -6705;
  }

  result = sub_23EBD5BC8(stepByStepContext, a2, v2, v3, v4, v5, v6, v7);
  if (result == -6771)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (v11 == -6720)
  {
    return -6720;
  }

  if (!v11)
  {
    result = 0;
    self->super._callbackContext = 0;
  }

  return result;
}

- (int)resume
{
  stepByStepContext = self->_stepByStepContext;
  if (stepByStepContext)
  {
    return sub_23EBD5C5C(stepByStepContext, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6705;
  }
}

- (void)stepByStepNextStepResult:(int)a3 withOptions:(id)a4
{
  callbackContext = self->super._callbackContext;
  if (callbackContext)
  {
    if (!a4 || (v11 = sub_23EBEB5E8(callbackContext, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict", a4, a4, v4, v5, v6, v7)) == 0)
    {
      v11 = a3;
    }

    v12 = self->super._callbackContext;
    if (v12)
    {
      sub_23EBEB6CC(v12, v11, *&a3, a4, v4, v5, v6, v7);
    }
  }

  self->super._callbackContext = 0;
}

- (int)setupFromAutoguessRecommendation:(id)a3 withOptions:(id)a4
{
  if (dword_27E381A10 <= 100 && (dword_27E381A10 != -1 || sub_23EB74AC8(&dword_27E381A10, 0x64u)))
  {
    sub_23EB75374(&dword_27E381A10, "[StepByStepController setupFromAutoguessRecommendation:withOptions:]", 100, "\n", v4, v5, v6, v7, v37);
  }

  if (!self->_stepByStepContext)
  {
    return -6718;
  }

  if (!a3)
  {
    return -6705;
  }

  v10 = objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_UnconfiguredBase");
  if (!v10)
  {
    return -6727;
  }

  v12 = v10;
  v13 = objc_msgSend_objectForKey_(a3, v11, @"BSAutoGuess_UnconfiguredBaseSettings");
  if (!v13)
  {
    return -6727;
  }

  v15 = v13;
  v16 = objc_msgSend_objectForKey_(a3, v14, @"BSAutoGuess_Recommendation");
  if (!v16)
  {
    return -6727;
  }

  result = sub_23EBD88FC(self->_stepByStepContext, v16);
  if (!result)
  {
    restoreRecommendation = self->_restoreRecommendation;
    if (!restoreRecommendation || (result = sub_23EBD8954(self->_stepByStepContext, restoreRecommendation)) == 0)
    {
      v20 = objc_msgSend_sharedInstance(WiFiUtils, restoreRecommendation, v18);
      v23 = objc_msgSend_mergedScanInfoArray(v20, v21, v22);
      if (!v23 || (result = sub_23EBD89AC(self->_stepByStepContext, v23, 1)) == 0)
      {
        result = sub_23EBD8BAC(self->_stepByStepContext, v12, v15, v24, v25, v26, v27, v28);
        if (!result)
        {
          stepByStepContext = self->_stepByStepContext;

          return sub_23EBD8D8C(stepByStepContext, v29, v30, v31, v32, v33, v34, v35);
        }
      }
    }
  }

  return result;
}

@end