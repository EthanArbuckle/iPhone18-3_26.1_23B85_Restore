@interface _ATXInspectionServerPredictionScoreLogger
- (_ATXInspectionServerPredictionScoreLogger)init;
- (id)inputsAndSubscores;
- (id)stageScores;
- (void)logInputDict:(id)dict subscores:(id)subscores forBundleId:(id)id;
- (void)logInputs:(id)inputs subscores:(id)subscores forBundleId:(id)id;
- (void)logStageScores:(id)scores forStageType:(int64_t)type;
@end

@implementation _ATXInspectionServerPredictionScoreLogger

- (_ATXInspectionServerPredictionScoreLogger)init
{
  v11.receiver = self;
  v11.super_class = _ATXInspectionServerPredictionScoreLogger;
  v2 = [(_ATXInspectionServerPredictionScoreLogger *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    inputsAndSubscores = v2->_inputsAndSubscores;
    v2->_inputsAndSubscores = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("_ATXInspectionServerPredictionScoreLogger", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_opt_new();
    stageScores = v2->_stageScores;
    v2->_stageScores = v8;
  }

  return v2;
}

- (id)inputsAndSubscores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63___ATXInspectionServerPredictionScoreLogger_inputsAndSubscores__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)stageScores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__83;
  v10 = __Block_byref_object_dispose__83;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56___ATXInspectionServerPredictionScoreLogger_stageScores__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)logInputs:(id)inputs subscores:(id)subscores forBundleId:(id)id
{
  inputsCopy = inputs;
  subscoresCopy = subscores;
  idCopy = id;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77___ATXInspectionServerPredictionScoreLogger_logInputs_subscores_forBundleId___block_invoke;
  v15[3] = &unk_2785978C0;
  v15[4] = self;
  v16 = idCopy;
  v17 = inputsCopy;
  v18 = subscoresCopy;
  v12 = subscoresCopy;
  v13 = inputsCopy;
  v14 = idCopy;
  dispatch_async(queue, v15);
}

- (void)logInputDict:(id)dict subscores:(id)subscores forBundleId:(id)id
{
  idCopy = id;
  subscoresCopy = subscores;
  toDictionary = [dict toDictionary];
  toDictionary2 = [subscoresCopy toDictionary];

  [(_ATXInspectionServerPredictionScoreLogger *)self logInputs:toDictionary subscores:toDictionary2 forBundleId:idCopy];
}

- (void)logStageScores:(id)scores forStageType:(int64_t)type
{
  scoresCopy = scores;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___ATXInspectionServerPredictionScoreLogger_logStageScores_forStageType___block_invoke;
  block[3] = &unk_278599E28;
  v10 = scoresCopy;
  typeCopy = type;
  block[4] = self;
  v8 = scoresCopy;
  dispatch_async(queue, block);
}

@end