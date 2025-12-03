@interface AXVisionIntentHandler
- (void)handleToggleAudioDescriptions:(id)descriptions completion:(id)completion;
- (void)handleToggleReduceMotion:(id)motion completion:(id)completion;
- (void)resolveOperationForToggleAudioDescriptions:(id)descriptions withCompletion:(id)completion;
- (void)resolveOperationForToggleReduceMotion:(id)motion withCompletion:(id)completion;
- (void)resolveStateForToggleAudioDescriptions:(id)descriptions withCompletion:(id)completion;
- (void)resolveStateForToggleReduceMotion:(id)motion withCompletion:(id)completion;
- (void)setGizmoPref:(id)pref forKey:(id)key domain:(id)domain;
@end

@implementation AXVisionIntentHandler

- (void)handleToggleAudioDescriptions:(id)descriptions completion:(id)completion
{
  descriptionsCopy = descriptions;
  completionCopy = completion;
  if ([descriptionsCopy operation] == 1 && !objc_msgSend(descriptionsCopy, "state"))
  {
    v13 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(descriptionsCopy, v13);
    }

    v10 = [AXToggleAudioDescriptionsIntentResponse alloc];
    v11 = 5;
  }

  else
  {
    if ([descriptionsCopy operation] == 2)
    {
      v7 = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
      v8 = CFBooleanGetValue(v7) == 0;
    }

    else
    {
      v8 = [descriptionsCopy state] == 1;
    }

    v9 = v8;
    [NSNumber numberWithBool:v9];
    MAAudibleMediaPrefSetPreferDescriptiveVideo();
    v10 = [AXToggleAudioDescriptionsIntentResponse alloc];
    v11 = 4;
  }

  v12 = [(AXToggleAudioDescriptionsIntentResponse *)v10 initWithCode:v11 userActivity:0];
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleAudioDescriptions:(id)descriptions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [descriptions operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleAudioDescriptions:(id)descriptions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [descriptions state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleReduceMotion:(id)motion completion:(id)completion
{
  motionCopy = motion;
  completionCopy = completion;
  if ([motionCopy operation] != 1 || objc_msgSend(motionCopy, "state"))
  {
    if ([motionCopy operation] == 2)
    {
      v8 = _AXSReduceMotionEnabled();
      _AXSSetReduceMotionEnabled();
      if (v8)
      {
LABEL_5:
        v9 = 1;
LABEL_8:
        v11 = [NSNumber numberWithBool:v9];
        [(AXVisionIntentHandler *)self setGizmoPref:v11 forKey:@"ReduceMotionAutoplayMessagesEffectsEnabled" domain:kAXSAccessibilityPreferenceDomain];

        v12 = [AXToggleReduceMotionIntentResponse alloc];
        v13 = 4;
        goto LABEL_9;
      }
    }

    else
    {
      state = [motionCopy state];
      _AXSSetReduceMotionEnabled();
      if (state != 1)
      {
        goto LABEL_5;
      }
    }

    v9 = _AXSReduceMotionAutoplayMessagesEffectsEnabled() != 0;
    goto LABEL_8;
  }

  v15 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000D80C(motionCopy, v15);
  }

  v12 = [AXToggleReduceMotionIntentResponse alloc];
  v13 = 5;
LABEL_9:
  v14 = [(AXToggleReduceMotionIntentResponse *)v12 initWithCode:v13 userActivity:0];
  completionCopy[2](completionCopy, v14);
}

- (void)resolveOperationForToggleReduceMotion:(id)motion withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [motion operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleReduceMotion:(id)motion withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [motion state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)setGizmoPref:(id)pref forKey:(id)key domain:(id)domain
{
  prefCopy = pref;
  keyCopy = key;
  domainCopy = domain;
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v12 = [[NPSDomainAccessor alloc] initWithDomain:domainCopy];
    v13 = self->_domainAccessor;
    self->_domainAccessor = v12;

    domainAccessor = self->_domainAccessor;
  }

  [(NPSDomainAccessor *)domainAccessor setObject:prefCopy forKey:keyCopy];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v15 = objc_opt_new();
  v18 = keyCopy;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [NSSet setWithArray:v16];
  [v15 synchronizeNanoDomain:domainCopy keys:v17];
}

@end