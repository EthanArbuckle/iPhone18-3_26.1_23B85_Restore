@interface ATXActionResult
- (ATXActionResult)initWithScoredAction:(id)a3 predictionItem:(const ATXPredictionItem *)a4 actionKey:(id)a5;
- (const)predictionItem;
- (id).cxx_construct;
- (id)description;
- (void)setPredictionItem:(const ATXPredictionItem *)a3;
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

- (ATXActionResult)initWithScoredAction:(id)a3 predictionItem:(const ATXPredictionItem *)a4 actionKey:(id)a5
{
  v9 = a3;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = ATXActionResult;
  v11 = [(ATXActionResult *)&v26 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    if (a4)
    {
      v11->_hasPredictionItem = 1;
      objc_storeStrong(&v11->_predictionItem.key, a4->key);
      p_actionHash = &v12->_predictionItem.actionHash;
      v15 = &a4->actionHash;
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
    v20 = [v10 copy];
    actionKey = v13->_actionKey;
    v13->_actionKey = v20;

    objc_storeStrong(&v12->_scoredAction, a3);
  }

  return v13;
}

- (void)setPredictionItem:(const ATXPredictionItem *)a3
{
  if (a3)
  {
    self->_hasPredictionItem = 1;
    p_actionHash = &a3->actionHash;
    objc_storeStrong(&self->_predictionItem.key, a3->key);

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