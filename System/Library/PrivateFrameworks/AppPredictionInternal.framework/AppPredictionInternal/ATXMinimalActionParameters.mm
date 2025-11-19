@interface ATXMinimalActionParameters
- (ATXMinimalActionParameters)initWithMinimalSlotResolutionParameters:(id)a3 actionTime:(id)a4 bundleId:(id)a5 actionType:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)getContainerWithScore:(float)a3;
@end

@implementation ATXMinimalActionParameters

- (ATXMinimalActionParameters)initWithMinimalSlotResolutionParameters:(id)a3 actionTime:(id)a4 bundleId:(id)a5 actionType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXMinimalActionParameters;
  v15 = [(ATXMinimalActionParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_minimalSlotResolutionParams, a3);
    objc_storeStrong(&v16->_actionTime, a4);
    objc_storeStrong(&v16->_bundleId, a5);
    objc_storeStrong(&v16->_actionType, a6);
  }

  return v16;
}

- (id)getContainerWithScore:(float)a3
{
  v5 = [(ATXMinimalSlotResolutionParameters *)self->_minimalSlotResolutionParams actionAndSlotSet];
  v6 = [v5 first];
  v7 = [v5 second];
  v8 = [v7 parameters];
  v9 = [v6 copyWithParameterWhitelist:v8];

  if (v9 && [v9 hasActionTitle])
  {
    v10 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:self->_bundleId actionType:self->_actionType];
    v11 = objc_alloc(MEMORY[0x277CEB7F0]);
    *&v12 = a3;
    v13 = [v11 initWithPredictedItem:v9 score:v12];
    v14 = [[ATXActionPredictionContainer alloc] initWithScoredAction:v13 slotSet:v7 actionKey:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minimalSlotResolutionParams = self->_minimalSlotResolutionParams;
      v6 = [(ATXMinimalActionParameters *)v4 minimalSlotResolutionParams];
      v7 = [(ATXMinimalSlotResolutionParameters *)minimalSlotResolutionParams isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end