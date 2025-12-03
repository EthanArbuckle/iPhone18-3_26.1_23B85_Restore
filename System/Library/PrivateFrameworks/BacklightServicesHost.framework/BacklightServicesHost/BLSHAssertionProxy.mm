@interface BLSHAssertionProxy
- (BLSHAssertionProxy)initWithIdentifier:(id)identifier descriptor:(id)descriptor remoteTarget:(id)target;
- (BOOL)isAcquired;
- (NSString)description;
- (double)_lock_activeDuration;
- (double)activeDuration;
- (id)lock_description;
- (uint64_t)isValid;
- (unint64_t)acquisitionState;
- (void)invalidate;
- (void)serviceDidAcquire;
- (void)serviceDidCancelWithError:(id)error;
- (void)serviceDidPause;
- (void)serviceDidResume;
- (void)serviceFailedToAcquireWithError:(id)error;
- (void)serviceWillCancel;
- (void)setAcquired:(uint64_t)acquired;
- (void)setPaused:(uint64_t)paused;
@end

@implementation BLSHAssertionProxy

- (BLSHAssertionProxy)initWithIdentifier:(id)identifier descriptor:(id)descriptor remoteTarget:(id)target
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = BLSHAssertionProxy;
  v12 = [(BLSHAssertionProxy *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_descriptor, descriptor);
    objc_storeStrong(&v13->_remoteTarget, target);
    v13->_lock_valid = 1;
  }

  return v13;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_valid = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAcquired
{
  os_unfair_lock_lock(&self->_lock);
  lock_acquired = self->_lock_acquired;
  os_unfair_lock_unlock(&self->_lock);
  return lock_acquired;
}

- (double)activeDuration
{
  os_unfair_lock_lock(&self->_lock);
  _lock_activeDuration = [(BLSHAssertionProxy *)self _lock_activeDuration];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_activeDuration;
}

- (unint64_t)acquisitionState
{
  if ([(BLSHAssertionProxy *)self isAcquired])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  lock_description = [(BLSHAssertionProxy *)self lock_description];
  os_unfair_lock_unlock(&self->_lock);

  return lock_description;
}

id __38__BLSHAssertionProxy_lock_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 45) withName:@"isAcquired"];
  v3 = *(a1 + 40);
  if (*(v3 + 16))
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 16);
    v6 = BLSShortLoggingStringForMachTime();
    [v4 appendString:v6 withName:@"acquired"];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v7 + 16);
    if ((*(v7 + 45) & 1) != 0 || !*(v7 + 32))
    {
      mach_continuous_time();
    }

    BSTimeDifferenceFromMachTimeToMachTime();
    v10 = [v8 appendTimeInterval:@"duration" withName:1 decomposeUnits:?];
    v3 = *(a1 + 40);
  }

  if (*(v3 + 47) == 1)
  {
    v15 = [*(a1 + 32) appendTimeInterval:@"activeDuration" withName:1 decomposeUnits:-[BLSHAssertionProxy _lock_activeDuration](v3)];
    v3 = *(a1 + 40);
  }

  v11 = [*(a1 + 32) appendBool:*(v3 + 46) withName:@"isPaused" ifEqualTo:1];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"descriptor"];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"identifier" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"remoteTarget"];
}

- (uint64_t)isValid
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 44);
    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)setAcquired:(uint64_t)acquired
{
  if (acquired)
  {
    os_unfair_lock_lock((acquired + 40));
    *(acquired + 45) = a2;
    if (a2)
    {
      *(acquired + 47) = 0;
      v4 = mach_continuous_time();
      v5 = 0;
      *(acquired + 16) = v4;
      *(acquired + 24) = v4;
    }

    else
    {
      v5 = mach_continuous_time();
    }

    *(acquired + 32) = v5;

    os_unfair_lock_unlock((acquired + 40));
  }
}

- (void)setPaused:(uint64_t)paused
{
  v15 = *MEMORY[0x277D85DE8];
  if (paused)
  {
    os_unfair_lock_lock((paused + 40));
    v4 = *(paused + 46);
    *(paused + 46) = a2;
    if (*(paused + 45) == 1)
    {
      if (v4 == a2)
      {
        v5 = bls_assertions_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v9 = 134218498;
          pausedCopy = paused;
          v11 = 1024;
          v12 = a2;
          v13 = 2114;
          pausedCopy2 = paused;
          _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "%p assertion setPaused:%{BOOL}u when not acquired %{public}@", &v9, 0x1Cu);
        }
      }

      else if (a2)
      {
        *(paused + 47) = 1;
        v6 = *(paused + 24);
        mach_continuous_time();
        BSTimeDifferenceFromMachTimeToMachTime();
        *(paused + 8) = v7 + *(paused + 8);
      }

      else
      {
        *(paused + 24) = mach_continuous_time();
      }
    }

    os_unfair_lock_unlock((paused + 40));
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (double)_lock_activeDuration
{
  if (!self)
  {
    return 0.0;
  }

  v1 = *(self + 8);
  if (*(self + 45) == 1 && (*(self + 46) & 1) == 0)
  {
    v2 = *(self + 24);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    return v1 + v3;
  }

  return v1;
}

- (void)serviceDidAcquire
{
  if ([(BLSHAssertionProxy *)self isValid])
  {
    [(BLSHAssertionProxy *)self setAcquired:?];
    v3 = OUTLINED_FUNCTION_0_9();

    [v3 assertionAcquired:?];
  }
}

- (void)serviceFailedToAcquireWithError:(id)error
{
  errorCopy = error;
  v4 = OUTLINED_FUNCTION_1_8();
  if ([(BLSHAssertionProxy *)v4 isValid])
  {
    [OUTLINED_FUNCTION_0_9() assertion:? failedToAcquireWithError:?];
  }
}

- (void)serviceWillCancel
{
  if ([(BLSHAssertionProxy *)self isValid])
  {
    v2 = OUTLINED_FUNCTION_0_9();

    [v2 assertionWillCancel:?];
  }
}

- (void)serviceDidCancelWithError:(id)error
{
  errorCopy = error;
  v5 = OUTLINED_FUNCTION_1_8();
  if ([(BLSHAssertionProxy *)v5 isValid])
  {
    [(BLSHAssertionProxy *)self setAcquired:?];
    [OUTLINED_FUNCTION_0_9() assertionDidCancel:? withError:?];
  }
}

- (void)serviceDidPause
{
  if ([(BLSHAssertionProxy *)self isValid])
  {
    [(BLSHAssertionProxy *)self setPaused:?];
    v3 = OUTLINED_FUNCTION_0_9();

    [v3 assertionPaused:?];
  }
}

- (void)serviceDidResume
{
  if ([(BLSHAssertionProxy *)self isValid])
  {
    [(BLSHAssertionProxy *)self setPaused:?];
    v3 = OUTLINED_FUNCTION_0_9();

    [v3 assertionResumed:?];
  }
}

- (id)lock_description
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_new();
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __38__BLSHAssertionProxy_lock_description__block_invoke;
    v8 = &unk_27841E538;
    v9 = v2;
    v10 = selfCopy;
    v3 = v2;
    [v3 appendProem:selfCopy block:&v5];
    selfCopy = [v3 description];
  }

  return selfCopy;
}

@end