@interface LAAnalyticsPasscodeFallbackPeriod
+ (id)_persistedInstancesStorage;
+ (id)activePersistentInstances;
- (BOOL)shouldCollect;
- (LAAnalyticsPasscodeFallbackPeriod)initWithPolicyGroup:(int64_t)a3;
- (NSArray)policies;
- (NSString)policyGroupName;
- (id)buildPayload;
- (id)description;
- (id)instanceToReplaceWithWhenRemovedFromStorage;
- (int64_t)timeInterval;
- (void)biometrySucceededWithEvaluationRequest:(id)a3;
- (void)passcodePresentedWithEvaluationRequest:(id)a3 biometryAttempts:(int64_t)a4;
@end

@implementation LAAnalyticsPasscodeFallbackPeriod

+ (id)activePersistentInstances
{
  v2 = [a1 _persistedInstancesStorage];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __62__LAAnalyticsPasscodeFallbackPeriod_activePersistentInstances__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 wasSent] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (LAAnalyticsPasscodeFallbackPeriod)initWithPolicyGroup:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = LAAnalyticsPasscodeFallbackPeriod;
  result = [(LAAnalytics *)&v5 initWithEventName:@"com.apple.LocalAuthentication.PasscodeRecoveryTime"];
  if (result)
  {
    result->_policyGroup = a3;
  }

  return result;
}

- (void)passcodePresentedWithEvaluationRequest:(id)a3 biometryAttempts:(int64_t)a4
{
  v6 = a3;
  v7 = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "policy")}];
  v11 = [v9 containsObject:v10];

  if (v11)
  {
LABEL_12:
    if (!self->_passcodePresentedTime)
    {
      if (a4 < 1)
      {
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CBEAA8] now];
      passcodePresentedTime = self->_passcodePresentedTime;
      self->_passcodePresentedTime = v12;
    }

    ++self->_passcodeCount;
    self->_biometryAttempts += a4;
    v14 = LA_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [LAAnalyticsPasscodeFallbackPeriod passcodePresentedWithEvaluationRequest:v14 biometryAttempts:?];
    }
  }

LABEL_9:
}

- (void)biometrySucceededWithEvaluationRequest:(id)a3
{
  v4 = a3;
  v5 = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "policy")}];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
LABEL_10:
    if (self->_passcodePresentedTime)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      biometrySuccessTime = self->_biometrySuccessTime;
      self->_biometrySuccessTime = v10;

      v12 = LA_LOG();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(LAAnalyticsPasscodeFallbackPeriod *)self biometrySucceededWithEvaluationRequest:v12];
      }

      [(LAAnalytics *)self collectIfNeeded];
    }
  }
}

- (NSArray)policies
{
  v2 = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_278A61458 + v2 - 1);
  }
}

- (NSString)policyGroupName
{
  v2 = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup];
  if (v2 > 3)
  {
    return @"Stockholm";
  }

  else
  {
    return &off_278A61470[v2]->isa;
  }
}

- (int64_t)timeInterval
{
  if (!self->_passcodePresentedTime)
  {
    return 0;
  }

  biometrySuccessTime = self->_biometrySuccessTime;
  if (biometrySuccessTime)
  {
    [(NSDate *)biometrySuccessTime timeIntervalSinceDate:?];
    return v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_passcodePresentedTime];
    v5 = v7;
  }

  return v5;
}

- (BOOL)shouldCollect
{
  v2 = +[(LACBiometryHelper *)BiometryHelper];
  v3 = [v2 biometryType] == 2;

  return v3;
}

- (id)buildPayload
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"policyGroupName";
  v3 = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroupName];
  v11[0] = v3;
  v10[1] = @"passcodeCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod passcodeCount](self, "passcodeCount")}];
  v11[1] = v4;
  v10[2] = @"biometryAttempts";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod biometryAttempts](self, "biometryAttempts")}];
  v11[2] = v5;
  v10[3] = @"timeInterval";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod timeInterval](self, "timeInterval")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroupName];
  v5 = [v3 stringWithFormat:@"<LAAnalyticsPasscodeFallbackPeriod group:%@, passcodeCount:%d, biometryAttempts:%d timeInterval: %d>", v4, -[LAAnalyticsPasscodeFallbackPeriod passcodeCount](self, "passcodeCount"), -[LAAnalyticsPasscodeFallbackPeriod biometryAttempts](self, "biometryAttempts"), -[LAAnalyticsPasscodeFallbackPeriod timeInterval](self, "timeInterval")];

  return v5;
}

- (id)instanceToReplaceWithWhenRemovedFromStorage
{
  v2 = [[LAAnalyticsPasscodeFallbackPeriod alloc] initWithPolicyGroup:[(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup]];

  return v2;
}

+ (id)_persistedInstancesStorage
{
  if (_persistedInstancesStorage_onceToken != -1)
  {
    +[LAAnalyticsPasscodeFallbackPeriod _persistedInstancesStorage];
  }

  v3 = _persistedInstancesStorage_storage;

  return v3;
}

uint64_t __63__LAAnalyticsPasscodeFallbackPeriod__persistedInstancesStorage__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = _persistedInstancesStorage_storage;
  _persistedInstancesStorage_storage = v0;

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [&unk_284B71E40 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_284B71E40);
        }

        v6 = -[LAAnalyticsPasscodeFallbackPeriod initWithPolicyGroup:]([LAAnalyticsPasscodeFallbackPeriod alloc], "initWithPolicyGroup:", [*(*(&v8 + 1) + 8 * v5) integerValue]);
        if ([(LAAnalyticsPasscodeFallbackPeriod *)v6 shouldCollect])
        {
          [(LAAnalytics *)v6 persistInStorage:_persistedInstancesStorage_storage];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_284B71E40 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v3 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)passcodePresentedWithEvaluationRequest:(uint64_t)a1 biometryAttempts:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_238B7F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ was updated after passcode presentation", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)biometrySucceededWithEvaluationRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_238B7F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ was updated after biometry success", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end