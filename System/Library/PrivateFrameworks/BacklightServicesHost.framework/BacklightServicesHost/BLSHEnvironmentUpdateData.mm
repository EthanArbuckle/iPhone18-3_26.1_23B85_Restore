@interface BLSHEnvironmentUpdateData
- (BLSHEnvironmentUpdateData)initWithEnvironmentIdentifier:(id)identifier newBacklightState:(int64_t)state pendingTransitionStateCount:(unint64_t)count;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BLSHEnvironmentUpdateData

- (BLSHEnvironmentUpdateData)initWithEnvironmentIdentifier:(id)identifier newBacklightState:(int64_t)state pendingTransitionStateCount:(unint64_t)count
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BLSHEnvironmentUpdateData;
  v9 = [(BLSHEnvironmentUpdateData *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    environmentIdentifier = v9->_environmentIdentifier;
    v9->_environmentIdentifier = v10;

    v9->_newBacklightState = state;
    v9->_pendingTransitionStateCount = count;
    v9->_timeStamp = mach_continuous_time();
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  environmentIdentifier = self->_environmentIdentifier;
  newBacklightState = self->_newBacklightState;
  v6 = NSStringFromBLSBacklightState();
  pendingTransitionStateCount = self->_pendingTransitionStateCount;
  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  v9 = [v8 bls_initWithMachContinuousTime:self->_timeStamp];
  bls_shortLoggingString = [v9 bls_shortLoggingString];
  v11 = [v3 stringWithFormat:@"update %@ %@ %lu %@", environmentIdentifier, v6, pendingTransitionStateCount, bls_shortLoggingString];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  environmentIdentifier = self->_environmentIdentifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__BLSHEnvironmentUpdateData_isEqual___block_invoke;
  v20[3] = &unk_27841F810;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendString:environmentIdentifier counterpart:v20];
  newBacklightState = self->_newBacklightState;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__BLSHEnvironmentUpdateData_isEqual___block_invoke_2;
  v18[3] = &unk_27841EB18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInteger:newBacklightState counterpart:v18];
  pendingTransitionStateCount = self->_pendingTransitionStateCount;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__BLSHEnvironmentUpdateData_isEqual___block_invoke_3;
  v16[3] = &unk_27841EB18;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendInteger:pendingTransitionStateCount counterpart:v16];
  LOBYTE(pendingTransitionStateCount) = [v5 isEqual];

  return pendingTransitionStateCount;
}

@end