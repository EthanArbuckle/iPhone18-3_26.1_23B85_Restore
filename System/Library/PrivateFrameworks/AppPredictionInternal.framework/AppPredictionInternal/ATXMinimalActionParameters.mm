@interface ATXMinimalActionParameters
- (ATXMinimalActionParameters)initWithMinimalSlotResolutionParameters:(id)parameters actionTime:(id)time bundleId:(id)id actionType:(id)type;
- (BOOL)isEqual:(id)equal;
- (id)getContainerWithScore:(float)score;
@end

@implementation ATXMinimalActionParameters

- (ATXMinimalActionParameters)initWithMinimalSlotResolutionParameters:(id)parameters actionTime:(id)time bundleId:(id)id actionType:(id)type
{
  parametersCopy = parameters;
  timeCopy = time;
  idCopy = id;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = ATXMinimalActionParameters;
  v15 = [(ATXMinimalActionParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_minimalSlotResolutionParams, parameters);
    objc_storeStrong(&v16->_actionTime, time);
    objc_storeStrong(&v16->_bundleId, id);
    objc_storeStrong(&v16->_actionType, type);
  }

  return v16;
}

- (id)getContainerWithScore:(float)score
{
  actionAndSlotSet = [(ATXMinimalSlotResolutionParameters *)self->_minimalSlotResolutionParams actionAndSlotSet];
  first = [actionAndSlotSet first];
  second = [actionAndSlotSet second];
  parameters = [second parameters];
  v9 = [first copyWithParameterWhitelist:parameters];

  if (v9 && [v9 hasActionTitle])
  {
    v10 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:self->_bundleId actionType:self->_actionType];
    v11 = objc_alloc(MEMORY[0x277CEB7F0]);
    *&v12 = score;
    v13 = [v11 initWithPredictedItem:v9 score:v12];
    v14 = [[ATXActionPredictionContainer alloc] initWithScoredAction:v13 slotSet:second actionKey:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minimalSlotResolutionParams = self->_minimalSlotResolutionParams;
      minimalSlotResolutionParams = [(ATXMinimalActionParameters *)equalCopy minimalSlotResolutionParams];
      v7 = [(ATXMinimalSlotResolutionParameters *)minimalSlotResolutionParams isEqual:minimalSlotResolutionParams];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end