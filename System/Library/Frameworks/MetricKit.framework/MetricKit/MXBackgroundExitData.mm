@interface MXBackgroundExitData
- (MXBackgroundExitData)initWithCoder:(id)coder;
- (MXBackgroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)dogExitCount cumulativeSuspendedWithLockedFileExitCount:(id)self0 cumulativeBackgroundTaskAssertionTimeoutExitCount:(id)self1;
- (MXBackgroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount memoryPressureExitCount:(id)pressureExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)self0 cumulativeSuspendedWithLockedFileExitCount:(id)self1 cumulativeBackgroundTaskAssertionTimeoutExitCount:(id)self2;
- (MXBackgroundExitData)initWithNormalAppExitCount:(unint64_t)count memoryResourceLimitExitCount:(unint64_t)exitCount cpuResourceLimitExitCount:(unint64_t)limitExitCount memoryPressureExitCount:(unint64_t)pressureExitCount badAccessExitCount:(unint64_t)accessExitCount abnormalExitCount:(unint64_t)abnormalExitCount illegalInstructionExitCount:(unint64_t)instructionExitCount appWatchDogExitCount:(unint64_t)self0 cumulativeSuspendedWithLockedFileExitCount:(unint64_t)self1 cumulativeBackgroundTaskAssertionTimeoutExitCount:(unint64_t)self2 cumulativeBackgroundURLSessionCompletionTimeoutExitCount:(unint64_t)self3 cumulativeBackgroundFetchCompletionTimeoutExitCount:(unint64_t)self4;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXBackgroundExitData

- (void)encodeWithCoder:(id)coder
{
  cumulativeNormalAppExitCount = self->_cumulativeNormalAppExitCount;
  coderCopy = coder;
  [coderCopy encodeInteger:cumulativeNormalAppExitCount forKey:@"cumulativeNormalAppExitCount"];
  [coderCopy encodeInteger:self->_cumulativeMemoryResourceLimitExitCount forKey:@"cumulativeMemoryResourceLimitExitCount"];
  [coderCopy encodeInteger:self->_cumulativeCPUResourceLimitExitCount forKey:@"cumulativeCPUResourceLimitExitCount"];
  [coderCopy encodeInteger:self->_cumulativeMemoryPressureExitCount forKey:@"cumulativeMemoryPressureExitCount"];
  [coderCopy encodeInteger:self->_cumulativeBadAccessExitCount forKey:@"cumulativeBadAccessExitCount"];
  [coderCopy encodeInteger:self->_cumulativeAbnormalExitCount forKey:@"cumulativeAbnormalExitCount"];
  [coderCopy encodeInteger:self->_cumulativeIllegalInstructionExitCount forKey:@"cumulativeIllegalInstructionExitCount"];
  [coderCopy encodeInteger:self->_cumulativeAppWatchdogExitCount forKey:@"cumulativeAppWatchdogExitCount"];
  [coderCopy encodeInteger:self->_cumulativeSuspendedWithLockedFileExitCount forKey:@"cumulativeSuspendedWithLockedFileExitCount"];
  [coderCopy encodeInteger:self->_cumulativeBackgroundTaskAssertionTimeoutExitCount forKey:@"cumulativeBackgroundTaskAssertionTimeoutExitCount"];
  [coderCopy encodeInteger:self->_cumulativeBackgroundURLSessionCompletionTimeoutExitCount forKey:@"cumulativeBackgroundURLSessionCompletionTimeoutExitCount"];
  [coderCopy encodeInteger:self->_cumulativeBackgroundFetchCompletionTimeoutExitCount forKey:@"cumulativeBackgroundFetchCompletionTimeoutExitCount"];
}

- (MXBackgroundExitData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MXBackgroundExitData;
  v5 = [(MXBackgroundExitData *)&v7 init];
  if (v5)
  {
    v5->_cumulativeNormalAppExitCount = [coderCopy decodeIntegerForKey:@"cumulativeNormalAppExitCount"];
    v5->_cumulativeMemoryResourceLimitExitCount = [coderCopy decodeIntegerForKey:@"cumulativeMemoryResourceLimitExitCount"];
    v5->_cumulativeCPUResourceLimitExitCount = [coderCopy decodeIntegerForKey:@"cumulativeCPUResourceLimitExitCount"];
    v5->_cumulativeMemoryPressureExitCount = [coderCopy decodeIntegerForKey:@"cumulativeMemoryPressureExitCount"];
    v5->_cumulativeBadAccessExitCount = [coderCopy decodeIntegerForKey:@"cumulativeBadAccessExitCount"];
    v5->_cumulativeAbnormalExitCount = [coderCopy decodeIntegerForKey:@"cumulativeAbnormalExitCount"];
    v5->_cumulativeIllegalInstructionExitCount = [coderCopy decodeIntegerForKey:@"cumulativeIllegalInstructionExitCount"];
    v5->_cumulativeAppWatchdogExitCount = [coderCopy decodeIntegerForKey:@"cumulativeAppWatchdogExitCount"];
    v5->_cumulativeSuspendedWithLockedFileExitCount = [coderCopy decodeIntegerForKey:@"cumulativeSuspendedWithLockedFileExitCount"];
    v5->_cumulativeBackgroundTaskAssertionTimeoutExitCount = [coderCopy decodeIntegerForKey:@"cumulativeBackgroundTaskAssertionTimeoutExitCount"];
    v5->_cumulativeBackgroundURLSessionCompletionTimeoutExitCount = [coderCopy decodeIntegerForKey:@"cumulativeBackgroundURLSessionCompletionTimeoutExitCount"];
    v5->_cumulativeBackgroundFetchCompletionTimeoutExitCount = [coderCopy decodeIntegerForKey:@"cumulativeBackgroundFetchCompletionTimeoutExitCount"];
  }

  return v5;
}

- (MXBackgroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)dogExitCount cumulativeSuspendedWithLockedFileExitCount:(id)self0 cumulativeBackgroundTaskAssertionTimeoutExitCount:(id)self1
{
  countCopy = count;
  exitCountCopy = exitCount;
  limitExitCountCopy = limitExitCount;
  accessExitCountCopy = accessExitCount;
  abnormalExitCountCopy = abnormalExitCount;
  instructionExitCountCopy = instructionExitCount;
  dogExitCountCopy = dogExitCount;
  fileExitCountCopy = fileExitCount;
  timeoutExitCountCopy = timeoutExitCount;
  v31.receiver = self;
  v31.super_class = MXBackgroundExitData;
  v25 = [(MXBackgroundExitData *)&v31 init];
  v30 = countCopy;
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = 0;
  if (!countCopy)
  {
LABEL_13:
    v27 = exitCountCopy;
    goto LABEL_14;
  }

  v27 = exitCountCopy;
  if (exitCountCopy && limitExitCountCopy && accessExitCountCopy && abnormalExitCountCopy && instructionExitCountCopy && dogExitCountCopy && fileExitCountCopy && timeoutExitCountCopy)
  {
    v25->_cumulativeNormalAppExitCount = [v30 unsignedIntegerValue];
    v25->_cumulativeMemoryResourceLimitExitCount = [exitCountCopy unsignedIntegerValue];
    v25->_cumulativeCPUResourceLimitExitCount = [limitExitCountCopy unsignedIntegerValue];
    v25->_cumulativeBadAccessExitCount = [accessExitCountCopy unsignedIntegerValue];
    v25->_cumulativeAbnormalExitCount = [abnormalExitCountCopy unsignedIntegerValue];
    v25->_cumulativeIllegalInstructionExitCount = [instructionExitCountCopy unsignedIntegerValue];
    v25->_cumulativeAppWatchdogExitCount = [dogExitCountCopy unsignedIntegerValue];
    v25->_cumulativeSuspendedWithLockedFileExitCount = [fileExitCountCopy unsignedIntegerValue];
    v25->_cumulativeBackgroundTaskAssertionTimeoutExitCount = [timeoutExitCountCopy unsignedIntegerValue];
LABEL_12:
    v26 = v25;
    goto LABEL_13;
  }

LABEL_14:

  return v26;
}

- (MXBackgroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount memoryPressureExitCount:(id)pressureExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)self0 cumulativeSuspendedWithLockedFileExitCount:(id)self1 cumulativeBackgroundTaskAssertionTimeoutExitCount:(id)self2
{
  countCopy = count;
  exitCountCopy = exitCount;
  limitExitCountCopy = limitExitCount;
  pressureExitCountCopy = pressureExitCount;
  accessExitCountCopy = accessExitCount;
  abnormalExitCountCopy = abnormalExitCount;
  instructionExitCountCopy = instructionExitCount;
  dogExitCountCopy = dogExitCount;
  fileExitCountCopy = fileExitCount;
  timeoutExitCountCopy = timeoutExitCount;
  v31.receiver = self;
  v31.super_class = MXBackgroundExitData;
  v26 = [(MXBackgroundExitData *)&v31 init];
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = 0;
  if (pressureExitCountCopy && countCopy && exitCountCopy && limitExitCountCopy && accessExitCountCopy && abnormalExitCountCopy && instructionExitCountCopy && dogExitCountCopy && fileExitCountCopy && timeoutExitCountCopy)
  {
    v26->_cumulativeNormalAppExitCount = [countCopy unsignedIntegerValue];
    v26->_cumulativeMemoryResourceLimitExitCount = [exitCountCopy unsignedIntegerValue];
    v26->_cumulativeCPUResourceLimitExitCount = [limitExitCountCopy unsignedIntegerValue];
    v26->_cumulativeMemoryPressureExitCount = [pressureExitCountCopy unsignedIntegerValue];
    v26->_cumulativeBadAccessExitCount = [accessExitCountCopy unsignedIntegerValue];
    v26->_cumulativeAbnormalExitCount = [abnormalExitCountCopy unsignedIntegerValue];
    v26->_cumulativeIllegalInstructionExitCount = [instructionExitCountCopy unsignedIntegerValue];
    v26->_cumulativeAppWatchdogExitCount = [dogExitCountCopy unsignedIntegerValue];
    v26->_cumulativeSuspendedWithLockedFileExitCount = [fileExitCountCopy unsignedIntegerValue];
    v26->_cumulativeBackgroundTaskAssertionTimeoutExitCount = [timeoutExitCountCopy unsignedIntegerValue];
LABEL_13:
    v27 = v26;
  }

  return v27;
}

- (MXBackgroundExitData)initWithNormalAppExitCount:(unint64_t)count memoryResourceLimitExitCount:(unint64_t)exitCount cpuResourceLimitExitCount:(unint64_t)limitExitCount memoryPressureExitCount:(unint64_t)pressureExitCount badAccessExitCount:(unint64_t)accessExitCount abnormalExitCount:(unint64_t)abnormalExitCount illegalInstructionExitCount:(unint64_t)instructionExitCount appWatchDogExitCount:(unint64_t)self0 cumulativeSuspendedWithLockedFileExitCount:(unint64_t)self1 cumulativeBackgroundTaskAssertionTimeoutExitCount:(unint64_t)self2 cumulativeBackgroundURLSessionCompletionTimeoutExitCount:(unint64_t)self3 cumulativeBackgroundFetchCompletionTimeoutExitCount:(unint64_t)self4
{
  v21.receiver = self;
  v21.super_class = MXBackgroundExitData;
  result = [(MXBackgroundExitData *)&v21 init];
  if (result)
  {
    result->_cumulativeNormalAppExitCount = count;
    result->_cumulativeMemoryResourceLimitExitCount = exitCount;
    result->_cumulativeCPUResourceLimitExitCount = limitExitCount;
    result->_cumulativeMemoryPressureExitCount = pressureExitCount;
    result->_cumulativeBadAccessExitCount = accessExitCount;
    result->_cumulativeAbnormalExitCount = abnormalExitCount;
    result->_cumulativeIllegalInstructionExitCount = instructionExitCount;
    result->_cumulativeAppWatchdogExitCount = dogExitCount;
    result->_cumulativeSuspendedWithLockedFileExitCount = fileExitCount;
    result->_cumulativeBackgroundTaskAssertionTimeoutExitCount = timeoutExitCount;
    result->_cumulativeBackgroundFetchCompletionTimeoutExitCount = fetchCompletionTimeoutExitCount;
    result->_cumulativeBackgroundURLSessionCompletionTimeoutExitCount = completionTimeoutExitCount;
  }

  return result;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeNormalAppExitCount)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v4 forKey:@"cumulativeNormalAppExitCount"];
  }

  if (self->_cumulativeMemoryResourceLimitExitCount)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v5 forKey:@"cumulativeMemoryResourceLimitExitCount"];
  }

  if (self->_cumulativeCPUResourceLimitExitCount)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v6 forKey:@"cumulativeCPUResourceLimitExitCount"];
  }

  if (self->_cumulativeMemoryPressureExitCount)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v7 forKey:@"cumulativeMemoryPressureExitCount"];
  }

  if (self->_cumulativeBadAccessExitCount)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v8 forKey:@"cumulativeBadAccessExitCount"];
  }

  if (self->_cumulativeAbnormalExitCount)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v9 forKey:@"cumulativeAbnormalExitCount"];
  }

  if (self->_cumulativeIllegalInstructionExitCount)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v10 forKey:@"cumulativeIllegalInstructionExitCount"];
  }

  if (self->_cumulativeAppWatchdogExitCount)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v11 forKey:@"cumulativeAppWatchdogExitCount"];
  }

  if (self->_cumulativeSuspendedWithLockedFileExitCount)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v12 forKey:@"cumulativeSuspendedWithLockedFileExitCount"];
  }

  if (self->_cumulativeBackgroundTaskAssertionTimeoutExitCount)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v13 forKey:@"cumulativeBackgroundTaskAssertionTimeoutExitCount"];
  }

  if (self->_cumulativeBackgroundURLSessionCompletionTimeoutExitCount)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v14 forKey:@"cumulativeBackgroundURLSessionCompletionTimeoutExitCount"];
  }

  if (self->_cumulativeBackgroundFetchCompletionTimeoutExitCount)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v15 forKey:@"cumulativeBackgroundFetchCompletionTimeoutExitCount"];
  }

  return v3;
}

@end