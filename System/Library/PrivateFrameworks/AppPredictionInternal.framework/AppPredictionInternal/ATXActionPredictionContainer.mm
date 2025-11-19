@interface ATXActionPredictionContainer
- (ATXActionPredictionContainer)initWithMinimalSlotResolutionParameters:(id)a3 score:(float)a4 actionKey:(id)a5;
- (ATXActionPredictionContainer)initWithScoredAction:(id)a3 slotSet:(id)a4 actionKey:(id)a5;
- (ATXActionPredictionContainer)initWithScoredAction:(id)a3 slotSet:(id)a4 minimalSlotResolutionParameters:(id)a5 score:(float)a6 actionKey:(id)a7 predictionItem:(ATXPredictionItem *)a8;
- (ATXPredictionItem)predictionItem;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionPredictionContainer:(id)a3;
- (float)score;
- (id).cxx_construct;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)scoredAction;
- (id)slotSet;
- (unint64_t)hash;
- (void)initializeScoredActionAndSlotSet;
- (void)setPredictionItem:(ATXPredictionItem *)a3;
- (void)setScore:(float)a3;
@end

@implementation ATXActionPredictionContainer

- (ATXActionPredictionContainer)initWithScoredAction:(id)a3 slotSet:(id)a4 minimalSlotResolutionParameters:(id)a5 score:(float)a6 actionKey:(id)a7 predictionItem:(ATXPredictionItem *)a8
{
  v14 = a3;
  v15 = a4;
  v25 = a5;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = ATXActionPredictionContainer;
  v17 = [(ATXActionPredictionContainer *)&v26 init];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277D425F8]);
    v19 = [ATXGuardedActionPredictionContainerData alloc];
    *&v20 = a6;
    v21 = [(ATXGuardedActionPredictionContainerData *)v19 initWithScoredAction:v14 slotSet:v15 score:v20];
    v22 = [v18 initWithGuardedData:v21];
    lock = v17->_lock;
    v17->_lock = v22;

    objc_storeStrong(&v17->_parameters, a5);
    objc_storeStrong(&v17->_actionKey, a7);
    objc_storeStrong(&v17->_predictionItem.key, a8->key);
    memcpy(&v17->_predictionItem.actionHash, &a8->actionHash, 0xCFEuLL);
  }

  return v17;
}

- (ATXActionPredictionContainer)initWithScoredAction:(id)a3 slotSet:(id)a4 actionKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 score];
  v11.i32[1] = -1059153344;
  *v11.i32 = -31337.0;
  v16[0] = 0;
  v17 = -31337.0;
  v18 = 0;
  v12 = vdupq_lane_s32(v11, 0);
  for (i = 2; i != 416; i += 2)
  {
    *&v16[i] = v12;
  }

  if (self)
  {
    v14 = [(ATXActionPredictionContainer *)self initWithScoredAction:v8 slotSet:v9 minimalSlotResolutionParameters:0 score:v10 actionKey:v16 predictionItem:?];
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (ATXActionPredictionContainer)initWithMinimalSlotResolutionParameters:(id)a3 score:(float)a4 actionKey:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10.i32[1] = -1059153344;
  *v10.i32 = -31337.0;
  v14[0] = 0;
  v15 = -31337.0;
  v16 = 0;
  v11 = vdupq_lane_s32(v10, 0);
  for (i = 2; i != 416; i += 2)
  {
    *&v14[i] = v11;
  }

  if (self)
  {
    *v11.i32 = a4;
    self = [(ATXActionPredictionContainer *)self initWithScoredAction:0 slotSet:0 minimalSlotResolutionParameters:v8 score:v9 actionKey:v14 predictionItem:*v11.i64];
  }

  else
  {
  }

  return self;
}

- (void)setScore:(float)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ATXActionPredictionContainer_setScore___block_invoke;
  v4[3] = &__block_descriptor_36_e49_v16__0__ATXGuardedActionPredictionContainerData_8l;
  v5 = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

void *__41__ATXActionPredictionContainer_setScore___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a2 + 8);
  LODWORD(a3) = *(a1 + 32);
  if (result)
  {
    return [result setScore:a3];
  }

  *(a2 + 24) = LODWORD(a3);
  return result;
}

- (float)score
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ATXActionPredictionContainer_score__block_invoke;
  v5[3] = &unk_27859ABE0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__ATXActionPredictionContainer_score__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    v7 = v3;
    v4 = [v4 score];
    v3 = v7;
  }

  else
  {
    v5 = *(v3 + 6);
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)initializeScoredActionAndSlotSet
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(ATXMinimalSlotResolutionParameters *)self->_parameters actionAndSlotSet];
  v5 = [v4 first];
  v6 = [v4 second];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 parameters];
    v9 = [v5 copyWithParameterWhitelist:v8];

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = v5;
  if (v5)
  {
LABEL_5:
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__ATXActionPredictionContainer_initializeScoredActionAndSlotSet__block_invoke;
    v11[3] = &unk_27859AC08;
    v12 = v9;
    v13 = v7;
    [(_PASLock *)lock runWithLockAcquired:v11];
  }

LABEL_6:

  objc_autoreleasePoolPop(v3);
}

void __64__ATXActionPredictionContainer_initializeScoredActionAndSlotSet__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc(MEMORY[0x277CEB7F0]);
  LODWORD(v4) = *(v7 + 6);
  v5 = [v3 initWithPredictedItem:*(a1 + 32) score:v4];
  v6 = *(v7 + 1);
  *(v7 + 1) = v5;

  objc_storeStrong(v7 + 2, *(a1 + 40));
}

- (id)scoredAction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__37;
  v10 = __Block_byref_object_dispose__37;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ATXActionPredictionContainer_scoredAction__block_invoke;
  v5[3] = &unk_27859AC30;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__ATXActionPredictionContainer_scoredAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[1];
  v5 = v3;
  if (!v4)
  {
    [*(a1 + 32) initializeScoredActionAndSlotSet];
    v4 = v5[1];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

- (id)slotSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__37;
  v10 = __Block_byref_object_dispose__37;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ATXActionPredictionContainer_slotSet__block_invoke;
  v5[3] = &unk_27859AC30;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__ATXActionPredictionContainer_slotSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[2];
  v5 = v3;
  if (!v4)
  {
    [*(a1 + 32) initializeScoredActionAndSlotSet];
    v4 = v5[2];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXActionPredictionContainer allocWithZone:a3];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__37;
  v27 = __Block_byref_object_dispose__37;
  v28 = 0;
  lock = self->_lock;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__ATXActionPredictionContainer_copyWithZone___block_invoke;
  v22[3] = &unk_27859ABE0;
  v22[4] = &v23;
  [(_PASLock *)lock runWithLockAcquired:v22];
  v6 = v24[5];
  _Block_object_dispose(&v23, 8);

  v7 = [v6 copy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__37;
  v27 = __Block_byref_object_dispose__37;
  v28 = 0;
  v8 = self->_lock;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__ATXActionPredictionContainer_copyWithZone___block_invoke_2;
  v21[3] = &unk_27859ABE0;
  v21[4] = &v23;
  [(_PASLock *)v8 runWithLockAcquired:v21];
  v9 = v24[5];
  _Block_object_dispose(&v23, 8);

  v10 = [v9 copy];
  v11 = [(ATXMinimalSlotResolutionParameters *)self->_parameters copy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  LODWORD(v26) = 0;
  v12 = self->_lock;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__ATXActionPredictionContainer_copyWithZone___block_invoke_3;
  v20[3] = &unk_27859ABE0;
  v20[4] = &v23;
  [(_PASLock *)v12 runWithLockAcquired:v20];
  v13 = *(v24 + 6);
  _Block_object_dispose(&v23, 8);
  actionKey = self->_actionKey;
  v15 = self->_predictionItem.key;
  v18 = v15;
  memcpy(v19, &self->_predictionItem.actionHash, sizeof(v19));
  if (v4)
  {
    LODWORD(v16) = v13;
    v4 = [(ATXActionPredictionContainer *)v4 initWithScoredAction:v7 slotSet:v10 minimalSlotResolutionParameters:v11 score:actionKey actionKey:&v18 predictionItem:v16];
  }

  else
  {
  }

  return v4;
}

float __45__ATXActionPredictionContainer_copyWithZone___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)copy
{
  v3 = [ATXActionPredictionContainer alloc];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__37;
  v26 = __Block_byref_object_dispose__37;
  v27 = 0;
  lock = self->_lock;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__ATXActionPredictionContainer_copy__block_invoke;
  v21[3] = &unk_27859ABE0;
  v21[4] = &v22;
  [(_PASLock *)lock runWithLockAcquired:v21];
  v5 = v23[5];
  _Block_object_dispose(&v22, 8);

  v6 = [v5 copy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__37;
  v26 = __Block_byref_object_dispose__37;
  v27 = 0;
  v7 = self->_lock;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __36__ATXActionPredictionContainer_copy__block_invoke_2;
  v20[3] = &unk_27859ABE0;
  v20[4] = &v22;
  [(_PASLock *)v7 runWithLockAcquired:v20];
  v8 = v23[5];
  _Block_object_dispose(&v22, 8);

  v9 = [v8 copy];
  v10 = [(ATXMinimalSlotResolutionParameters *)self->_parameters copy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  LODWORD(v25) = 0;
  v11 = self->_lock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__ATXActionPredictionContainer_copy__block_invoke_3;
  v19[3] = &unk_27859ABE0;
  v19[4] = &v22;
  [(_PASLock *)v11 runWithLockAcquired:v19];
  v12 = *(v23 + 6);
  _Block_object_dispose(&v22, 8);
  actionKey = self->_actionKey;
  v14 = self->_predictionItem.key;
  v17 = v14;
  memcpy(v18, &self->_predictionItem.actionHash, sizeof(v18));
  if (v3)
  {
    LODWORD(v15) = v12;
    v3 = [(ATXActionPredictionContainer *)v3 initWithScoredAction:v6 slotSet:v9 minimalSlotResolutionParameters:v10 score:actionKey actionKey:&v17 predictionItem:v15];
  }

  else
  {
  }

  return v3;
}

float __36__ATXActionPredictionContainer_copy__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)hash
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  lock = self->_lock;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36__ATXActionPredictionContainer_hash__block_invoke;
  v16[3] = &unk_27859ABE0;
  v16[4] = &v17;
  [(_PASLock *)lock runWithLockAcquired:v16];
  v4 = *(v18 + 5);
  _Block_object_dispose(&v17, 8);

  v5 = [v4 hash];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v6 = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__ATXActionPredictionContainer_hash__block_invoke_2;
  v15[3] = &unk_27859ABE0;
  v15[4] = &v17;
  [(_PASLock *)v6 runWithLockAcquired:v15];
  v7 = *(v18 + 5);
  _Block_object_dispose(&v17, 8);

  v8 = [v7 hash];
  v9 = [(ATXMinimalSlotResolutionParameters *)self->_parameters hash];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  LODWORD(v20) = 0;
  v10 = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__ATXActionPredictionContainer_hash__block_invoke_3;
  v14[3] = &unk_27859ABE0;
  v14[4] = &v17;
  [(_PASLock *)v10 runWithLockAcquired:v14];
  v11 = v9 - (v8 - v5 + 32 * v5) + 32 * (v8 - v5 + 32 * v5);
  v12 = v18[6];
  _Block_object_dispose(&v17, 8);
  return [(NSString *)self->_actionKey hash]- (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
}

float __36__ATXActionPredictionContainer_hash__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionPredictionContainer *)self isEqualToActionPredictionContainer:v5];
  }

  return v6;
}

- (BOOL)isEqualToActionPredictionContainer:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__37;
  v39 = __Block_byref_object_dispose__37;
  v40 = 0;
  lock = self->_lock;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke;
  v34[3] = &unk_27859ABE0;
  v34[4] = &v35;
  [(_PASLock *)lock runWithLockAcquired:v34];
  v6 = *(v36 + 5);
  _Block_object_dispose(&v35, 8);

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__37;
  v39 = __Block_byref_object_dispose__37;
  v40 = 0;
  v7 = *(v4 + 1);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_2;
  v33[3] = &unk_27859ABE0;
  v33[4] = &v35;
  [v7 runWithLockAcquired:v33];
  v8 = *(v36 + 5);
  _Block_object_dispose(&v35, 8);

  if (v6 == v8 || ([v6 isEqual:v8] & 1) != 0)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__37;
    v39 = __Block_byref_object_dispose__37;
    v40 = 0;
    v9 = self->_lock;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_3;
    v32[3] = &unk_27859ABE0;
    v32[4] = &v35;
    [(_PASLock *)v9 runWithLockAcquired:v32];
    v10 = *(v36 + 5);
    _Block_object_dispose(&v35, 8);

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__37;
    v39 = __Block_byref_object_dispose__37;
    v40 = 0;
    v11 = *(v4 + 1);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_4;
    v31[3] = &unk_27859ABE0;
    v31[4] = &v35;
    [v11 runWithLockAcquired:v31];
    v12 = *(v36 + 5);
    _Block_object_dispose(&v35, 8);

    if (v10 != v12 && ([v10 isEqual:v12] & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = self->_parameters;
    v14 = *(v4 + 419);
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(ATXMinimalSlotResolutionParameters *)v13 isEqual:v14];

      if (!v16)
      {
        goto LABEL_16;
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    LODWORD(v38) = 0;
    v18 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_5;
    v30[3] = &unk_27859ABE0;
    v30[4] = &v35;
    [(_PASLock *)v18 runWithLockAcquired:v30];
    v19 = v36[6];
    _Block_object_dispose(&v35, 8);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    LODWORD(v38) = 0;
    v20 = *(v4 + 1);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_6;
    v29[3] = &unk_27859ABE0;
    v29[4] = &v35;
    [v20 runWithLockAcquired:v29];
    v21 = v36[6];
    _Block_object_dispose(&v35, 8);
    if (v19 == v21)
    {
      v22 = self->_actionKey;
      v23 = *(v4 + 420);
      v24 = v23;
      if (v22 == v23)
      {
      }

      else
      {
        v25 = [(NSString *)v22 isEqual:v23];

        if ((v25 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (!memcmp(self->_predictionItem.inputSignals, v4 + 32, 0xCF0uLL))
      {
        key = self->_predictionItem.key;
        v28 = *(v4 + 2);
        if ((!(key | v28) || key && v28 && [(NSString *)key isEqualToString:?]) && self->_predictionItem.score == *(v4 + 836))
        {
          v17 = 1;
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v17 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

float __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

float __67__ATXActionPredictionContainer_isEqualToActionPredictionContainer___block_invoke_6(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (ATXPredictionItem)predictionItem
{
  retstr->key = self->_predictionItem.key;

  return memcpy(&retstr->actionHash, &self->_predictionItem.actionHash, 0xCFEuLL);
}

- (void)setPredictionItem:(ATXPredictionItem *)a3
{
  objc_storeStrong(&self->_predictionItem.key, a3->key);
  memcpy(&self->_predictionItem.actionHash, &a3->actionHash, 0xCFEuLL);
  key = a3->key;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXActionPredictionContainer *)self actionKey];
  v5 = [(ATXActionPredictionContainer *)self scoredAction];
  v6 = [v3 initWithFormat:@"ATXPredictionContainer Action Key: %@; Scored Action: %@", v4, v5];

  return v6;
}

- (id).cxx_construct
{
  v2.i32[1] = -1059153344;
  *v2.i32 = -31337.0;
  *(self + 2) = 0;
  *(self + 836) = -31337.0;
  *(self + 1674) = 0;
  v3 = vdupq_lane_s32(v2, 0);
  for (i = 32; i != 3344; i += 16)
  {
    *(self + i) = v3;
  }

  return self;
}

@end