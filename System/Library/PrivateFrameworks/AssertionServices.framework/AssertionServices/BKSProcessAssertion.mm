@interface BKSProcessAssertion
+ (id)NameForReason:(unsigned int)reason;
- (BOOL)acquire;
- (unint64_t)_legacyReasonForReason:(unsigned int)reason;
- (unsigned)flags;
- (void)acquire;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)dealloc;
- (void)invalidate;
- (void)setFlags:(unsigned int)flags;
@end

@implementation BKSProcessAssertion

- (BOOL)acquire
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (self->_reason != 1)
  {
    goto LABEL_12;
  }

  _target = [(BKSAssertion *)self _target];
  processIdentity = [_target processIdentity];
  if (!processIdentity)
  {
    v5 = MEMORY[0x277D46F48];
    v6 = [MEMORY[0x277D46FA0] predicateMatchingTarget:_target];
    v7 = [v5 handleForPredicate:v6 error:0];

    processIdentity = [v7 identity];
  }

  if (![processIdentity isExtension])
  {
LABEL_11:

LABEL_12:
    v22.receiver = self;
    v22.super_class = BKSProcessAssertion;
    result = [(BKSAssertion *)&v22 acquire];
    goto LABEL_13;
  }

  hostIdentifier = [processIdentity hostIdentifier];
  if (!hostIdentifier)
  {
    v11 = rbs_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = processIdentity;
      _os_log_impl(&dword_22EEB6000, v11, OS_LOG_TYPE_DEFAULT, "MediaPlayback hack extensions %{public}@ doesn't have host", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x277D46EC8] attributeWithReason:1 flags:3];
  v26[0] = v9;
  v10 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v12 = objc_alloc(MEMORY[0x277D46DB8]);
  v13 = [MEMORY[0x277D47008] targetWithProcessIdentifier:hostIdentifier];
  v14 = [v12 initWithExplanation:@"MediaPlackback hack assertion" target:v13 attributes:v11];
  mediaPlaybackHackAssertion = self->_mediaPlaybackHackAssertion;
  self->_mediaPlaybackHackAssertion = v14;

  v16 = self->_mediaPlaybackHackAssertion;
  v23 = 0;
  LOBYTE(v13) = [(RBSAssertion *)v16 acquireWithError:&v23];
  v17 = v23;
  v18 = v17;
  if (v13)
  {

LABEL_10:
    goto LABEL_11;
  }

  v21 = rbs_general_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [BKSProcessAssertion acquire];
  }

  result = 0;
LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidate
{
  mediaPlaybackHackAssertion = self->_mediaPlaybackHackAssertion;
  if (mediaPlaybackHackAssertion)
  {
    [(RBSAssertion *)mediaPlaybackHackAssertion invalidate];
    v4 = self->_mediaPlaybackHackAssertion;
    self->_mediaPlaybackHackAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = BKSProcessAssertion;
  [(BKSAssertion *)&v5 invalidate];
}

- (void)dealloc
{
  mediaPlaybackHackAssertion = self->_mediaPlaybackHackAssertion;
  if (mediaPlaybackHackAssertion)
  {
    [(RBSAssertion *)mediaPlaybackHackAssertion invalidate];
    v4 = self->_mediaPlaybackHackAssertion;
    self->_mediaPlaybackHackAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = BKSProcessAssertion;
  [(BKSAssertion *)&v5 dealloc];
}

+ (id)NameForReason:(unsigned int)reason
{
  if (reason > 9999)
  {
    if (reason > 10006)
    {
      if (reason <= 50003)
      {
        if (reason == 10007)
        {
          return @"notificationAction";
        }

        if (reason == 10008)
        {
          return @"PIP";
        }
      }

      else
      {
        switch(reason)
        {
          case 0xC354u:
            return @"finishTaskAfterWatchConnectivity";
          case 0xEA60u:
            return @"domain";
          case 0xEA61u:
            return @"custom";
        }
      }
    }

    else
    {
      if (reason > 10003)
      {
        if (reason == 10004)
        {
          return @"finishTaskUnbounded";
        }

        if (reason == 10005)
        {
          return @"continuous";
        }

        return @"backgroundContentFetching";
      }

      if (reason == 10000)
      {
        return @"activation";
      }

      if (reason == 10002)
      {
        return @"transientWakeup";
      }
    }

    return @"Unknown";
  }

  result = @"none";
  switch(reason)
  {
    case 0u:
      return result;
    case 1u:
      result = @"audio";
      break;
    case 2u:
      result = @"location";
      break;
    case 3u:
      result = @"external-accessory";
      break;
    case 4u:
      result = @"finishTask";
      break;
    case 5u:
      result = @"bluetooth";
      break;
    case 7u:
      result = @"backgroundUI";
      break;
    case 8u:
      result = @"interAppAudioStreaming";
      break;
    case 9u:
      result = @"viewServices";
      break;
    case 0xAu:
      result = @"newsstandDownload";
      break;
    case 0xCu:
      result = @"voIP";
      break;
    case 0xDu:
      result = @"extension";
      break;
    case 0x10u:
      result = @"WatchConnectivity";
      break;
    case 0x12u:
      result = @"complicationUpdate";
      break;
    case 0x13u:
      result = @"workoutProcessing";
      break;
    case 0x14u:
      result = @"complicationPushUpdate";
      break;
    case 0x15u:
      result = @"backgroundLocationProcessing";
      break;
    case 0x17u:
      result = @"audioRecording";
      break;
    default:
      return @"Unknown";
  }

  return result;
}

uint64_t __90__BKSProcessAssertion_initWithBundleIdentifier_pid_flags_reason_name_withHandler_acquire___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unsigned)flags
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__BKSProcessAssertion_flags__block_invoke;
  v4[3] = &unk_278871BA0;
  v4[4] = self;
  v4[5] = &v5;
  [(BKSAssertion *)self _lock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__BKSProcessAssertion_setFlags___block_invoke;
  v3[3] = &unk_278871BC8;
  v3[4] = self;
  flagsCopy = flags;
  [(BKSAssertion *)self _lock:v3];
}

uint64_t __32__BKSProcessAssertion_setFlags___block_invoke(uint64_t result)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 68) != v2)
  {
    v3 = result;
    *(v1 + 68) = v2;
    v4 = *(result + 32);
    v5 = [MEMORY[0x277D46EC8] attributeWithReason:v4[16] flags:v4[17]];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v4 _lock_setAttributes:v6];

    result = [*(v3 + 32) _lock_reaquireAssertion];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  mediaPlaybackHackAssertion = self->_mediaPlaybackHackAssertion;
  if (mediaPlaybackHackAssertion)
  {
    [(RBSAssertion *)mediaPlaybackHackAssertion invalidate];
    v9 = self->_mediaPlaybackHackAssertion;
    self->_mediaPlaybackHackAssertion = 0;
  }

  v10.receiver = self;
  v10.super_class = BKSProcessAssertion;
  [(BKSAssertion *)&v10 assertion:assertionCopy didInvalidateWithError:errorCopy];
}

- (unint64_t)_legacyReasonForReason:(unsigned int)reason
{
  result = 0;
  if (reason > 9999)
  {
    v4 = 50004;
    if (reason != 50004)
    {
      v4 = 0;
    }

    if (reason == 10008)
    {
      v5 = 10008;
    }

    else
    {
      v5 = v4;
    }

    v6 = 10007;
    if (reason != 10007)
    {
      v6 = 0;
    }

    if (reason == 10006)
    {
      v7 = 10006;
    }

    else
    {
      v7 = v6;
    }

    if (reason <= 10007)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    v9 = 10005;
    if (reason != 10005)
    {
      v9 = 0;
    }

    if (reason == 10004)
    {
      v10 = 10004;
    }

    else
    {
      v10 = v9;
    }

    v11 = 10002;
    if (reason != 10002)
    {
      v11 = 0;
    }

    if (reason == 10000)
    {
      v12 = 10000;
    }

    else
    {
      v12 = v11;
    }

    if (reason <= 10003)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (reason <= 10005)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    switch(reason)
    {
      case 1u:
        result = 1;
        break;
      case 2u:
        result = 2;
        break;
      case 3u:
        result = 3;
        break;
      case 4u:
        result = 4;
        break;
      case 5u:
        result = 5;
        break;
      case 7u:
        result = 7;
        break;
      case 8u:
        result = 8;
        break;
      case 9u:
        result = 9;
        break;
      case 0xAu:
        result = 10;
        break;
      case 0xCu:
        result = 12;
        break;
      case 0xDu:
        result = 13;
        break;
      case 0x10u:
        result = 16;
        break;
      case 0x12u:
        result = 18;
        break;
      case 0x13u:
        result = 19;
        break;
      case 0x14u:
        result = 20;
        break;
      case 0x15u:
        result = 21;
        break;
      case 0x17u:
        result = 23;
        break;
      default:
        return result;
    }
  }

  return result;
}

- (void)initWithBundleIdentifier:pid:flags:reason:name:withHandler:acquire:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22EEB6000, v0, v1, "BKSProcessAssertion %{public}@ created with no identifier or PID.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithBundleIdentifier:(NSObject *)a3 pid:flags:reason:name:withHandler:acquire:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = a2;
  v14 = *MEMORY[0x277D85DE8];
  v6 = [BKSProcessAssertion NameForReason:a2];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 1024;
  v13 = v4;
  _os_log_fault_impl(&dword_22EEB6000, a3, OS_LOG_TYPE_FAULT, "BKSProcessAssertion %{public}@ created with no longer supported reason %{public}@ (%d)", &v8, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithBundleIdentifier:flags:reason:name:withHandler:acquire:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22EEB6000, v0, v1, "BKSProcessAssertion %{public}@ initialized with nil bundleIdentifier", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPID:flags:reason:name:withHandler:acquire:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22EEB6000, v0, v1, "BKSProcessAssertion %{public}@ initialized with invalid pid", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acquire
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22EEB6000, v0, v1, "MediaPlayback hack assertion failed to acquire with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end