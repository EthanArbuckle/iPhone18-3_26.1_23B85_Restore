@interface MXForegroundExitData
- (MXForegroundExitData)initWithCoder:(id)coder;
- (MXForegroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)dogExitCount;
- (MXForegroundExitData)initWithNormalAppExitCount:(unint64_t)count withMemoryResourceLimitExitCount:(unint64_t)exitCount withCPUResourceLimitExitCount:(unint64_t)limitExitCount withBadAccessExitCount:(unint64_t)accessExitCount withAbnormalExitCount:(unint64_t)abnormalExitCount withIllegalInstructionExitCount:(unint64_t)instructionExitCount withAppWatchDogExitCount:(unint64_t)dogExitCount;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXForegroundExitData

- (void)encodeWithCoder:(id)coder
{
  cumulativeNormalAppExitCount = self->_cumulativeNormalAppExitCount;
  coderCopy = coder;
  [coderCopy encodeInteger:cumulativeNormalAppExitCount forKey:@"cumulativeNormalAppExitCount"];
  [coderCopy encodeInteger:self->_cumulativeMemoryResourceLimitExitCount forKey:@"cumulativeMemoryResourceLimitExitCount"];
  [coderCopy encodeInteger:self->_cumulativeCPUResourceLimitExitCount forKey:@"cumulativeCPUResourceLimitExitCount"];
  [coderCopy encodeInteger:self->_cumulativeBadAccessExitCount forKey:@"cumulativeBadAccessExitCount"];
  [coderCopy encodeInteger:self->_cumulativeAbnormalExitCount forKey:@"cumulativeAbnormalExitCount"];
  [coderCopy encodeInteger:self->_cumulativeIllegalInstructionExitCount forKey:@"cumulativeIllegalInstructionExitCount"];
  [coderCopy encodeInteger:self->_cumulativeAppWatchdogExitCount forKey:@"cumulativeAppWatchdogExitCount"];
}

- (MXForegroundExitData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MXForegroundExitData;
  v5 = [(MXForegroundExitData *)&v7 init];
  if (v5)
  {
    v5->_cumulativeNormalAppExitCount = [coderCopy decodeIntegerForKey:@"cumulativeNormalAppExitCount"];
    v5->_cumulativeMemoryResourceLimitExitCount = [coderCopy decodeIntegerForKey:@"cumulativeMemoryResourceLimitExitCount"];
    v5->_cumulativeCPUResourceLimitExitCount = [coderCopy decodeIntegerForKey:@"cumulativeCPUResourceLimitExitCount"];
    v5->_cumulativeBadAccessExitCount = [coderCopy decodeIntegerForKey:@"cumulativeBadAccessExitCount"];
    v5->_cumulativeAbnormalExitCount = [coderCopy decodeIntegerForKey:@"cumulativeAbnormalExitCount"];
    v5->_cumulativeIllegalInstructionExitCount = [coderCopy decodeIntegerForKey:@"cumulativeIllegalInstructionExitCount"];
    v5->_cumulativeAppWatchdogExitCount = [coderCopy decodeIntegerForKey:@"cumulativeAppWatchdogExitCount"];
  }

  return v5;
}

- (MXForegroundExitData)initWithNormalAppExitCount:(id)count memoryResourceLimitExitCount:(id)exitCount cpuResourceLimitExitCount:(id)limitExitCount badAccessExitCount:(id)accessExitCount abnormalExitCount:(id)abnormalExitCount illegalInstructionExitCount:(id)instructionExitCount appWatchDogExitCount:(id)dogExitCount
{
  countCopy = count;
  exitCountCopy = exitCount;
  limitExitCountCopy = limitExitCount;
  accessExitCountCopy = accessExitCount;
  abnormalExitCountCopy = abnormalExitCount;
  instructionExitCountCopy = instructionExitCount;
  dogExitCountCopy = dogExitCount;
  v25.receiver = self;
  v25.super_class = MXForegroundExitData;
  v22 = [(MXForegroundExitData *)&v25 init];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = 0;
  if (countCopy && exitCountCopy && limitExitCountCopy && accessExitCountCopy && abnormalExitCountCopy && instructionExitCountCopy && dogExitCountCopy)
  {
    v22->_cumulativeNormalAppExitCount = [countCopy unsignedIntegerValue];
    v22->_cumulativeMemoryResourceLimitExitCount = [exitCountCopy unsignedIntegerValue];
    v22->_cumulativeCPUResourceLimitExitCount = [limitExitCountCopy unsignedIntegerValue];
    v22->_cumulativeBadAccessExitCount = [accessExitCountCopy unsignedIntegerValue];
    v22->_cumulativeAbnormalExitCount = [abnormalExitCountCopy unsignedIntegerValue];
    v22->_cumulativeIllegalInstructionExitCount = [instructionExitCountCopy unsignedIntegerValue];
    v22->_cumulativeAppWatchdogExitCount = [dogExitCountCopy unsignedIntegerValue];
LABEL_10:
    v23 = v22;
  }

  return v23;
}

- (MXForegroundExitData)initWithNormalAppExitCount:(unint64_t)count withMemoryResourceLimitExitCount:(unint64_t)exitCount withCPUResourceLimitExitCount:(unint64_t)limitExitCount withBadAccessExitCount:(unint64_t)accessExitCount withAbnormalExitCount:(unint64_t)abnormalExitCount withIllegalInstructionExitCount:(unint64_t)instructionExitCount withAppWatchDogExitCount:(unint64_t)dogExitCount
{
  v16.receiver = self;
  v16.super_class = MXForegroundExitData;
  result = [(MXForegroundExitData *)&v16 init];
  if (result)
  {
    result->_cumulativeNormalAppExitCount = count;
    result->_cumulativeMemoryResourceLimitExitCount = exitCount;
    result->_cumulativeAppWatchdogExitCount = dogExitCount;
    result->_cumulativeCPUResourceLimitExitCount = limitExitCount;
    result->_cumulativeBadAccessExitCount = accessExitCount;
    result->_cumulativeAbnormalExitCount = abnormalExitCount;
    result->_cumulativeIllegalInstructionExitCount = instructionExitCount;
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

  if (self->_cumulativeBadAccessExitCount)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v7 forKey:@"cumulativeBadAccessExitCount"];
  }

  if (self->_cumulativeAbnormalExitCount)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v8 forKey:@"cumulativeAbnormalExitCount"];
  }

  if (self->_cumulativeIllegalInstructionExitCount)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v9 forKey:@"cumulativeIllegalInstructionExitCount"];
  }

  if (self->_cumulativeAppWatchdogExitCount)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v10 forKey:@"cumulativeAppWatchdogExitCount"];
  }

  return v3;
}

@end