@interface ATXActionResult
- (ATXActionResult)initWithScoredAction:(id)action predictionItem:(const ATXPredictionItem *)item actionKey:(id)key;
- (const)predictionItem;
- (id).cxx_construct;
- (id)description;
- (void)setPredictionItem:(const ATXPredictionItem *)item;
@end

@implementation ATXActionResult

- (const)predictionItem
{
  if (self->_hasPredictionItem)
  {
    return &self->_predictionItem;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  actionKey = self->_actionKey;
  v5 = [v3 initWithFormat:@"<Key: %@ Scored Action: %@>", actionKey, self->_scoredAction];

  return v5;
}

- (ATXActionResult)initWithScoredAction:(id)action predictionItem:(const ATXPredictionItem *)item actionKey:(id)key
{
  actionCopy = action;
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = ATXActionResult;
  v11 = [(ATXActionResult *)&v26 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    if (item)
    {
      v11->_hasPredictionItem = 1;
      objc_storeStrong(&v11->_predictionItem.key, item->key);
      p_actionHash = &v12->_predictionItem.actionHash;
      v15 = &item->actionHash;
    }

    else
    {
      v11->_hasPredictionItem = 0;
      v16.i32[1] = -1059153344;
      *v16.i32 = -31337.0;
      v24[830] = -31337.0;
      v25 = 0;
      v17 = vdupq_lane_s32(v16, 0);
      for (i = 16; i != 3328; i += 16)
      {
        *&v23[i] = v17;
      }

      key = v11->_predictionItem.key;
      v11->_predictionItem.key = 0;

      p_actionHash = &v12->_predictionItem.actionHash;
      v15 = v24;
    }

    memcpy(p_actionHash, v15, 0xCFEuLL);
    v20 = [keyCopy copy];
    actionKey = v13->_actionKey;
    v13->_actionKey = v20;

    objc_storeStrong(&v12->_scoredAction, action);
  }

  return v13;
}

- (void)setPredictionItem:(const ATXPredictionItem *)item
{
  if (item)
  {
    self->_hasPredictionItem = 1;
    p_actionHash = &item->actionHash;
    objc_storeStrong(&self->_predictionItem.key, item->key);

    memcpy(&self->_predictionItem.actionHash, p_actionHash, 0xCFEuLL);
  }

  else
  {
    self->_hasPredictionItem = 0;
    v5.i32[1] = -1059153344;
    *v5.i32 = -31337.0;
    v10[830] = -31337.0;
    LOWORD(v10[831]) = 0;
    v6 = vdupq_lane_s32(v5, 0);
    for (i = 16; i != 3328; i += 16)
    {
      *&v9[i] = v6;
    }

    key = self->_predictionItem.key;
    self->_predictionItem.key = 0;

    memcpy(&self->_predictionItem.actionHash, v10, 0xCFEuLL);
  }
}

- (id).cxx_construct
{
  v2.i32[1] = -1059153344;
  *v2.i32 = -31337.0;
  *(self + 1) = 0;
  *(self + 834) = -31337.0;
  *(self + 1670) = 0;
  v3 = vdupq_lane_s32(v2, 0);
  for (i = 24; i != 3336; i += 16)
  {
    *(self + i) = v3;
  }

  return self;
}

@end