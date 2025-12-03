@interface CNScript
+ (void)loadFromAsset:(AVAsset *)asset changes:(CNScriptChanges *)changes progress:(NSProgress *)progress completionHandler:(void *)completionHandler;
- (BOOL)addUserDecision:(CNDecision *)decision;
- (BOOL)removeDetectionTrack:(CNDetectionTrack *)detectionTrack;
- (BOOL)removeUserDecision:(CNDecision *)decision;
- (CMTimeRange)timeRange;
- (CMTimeRange)timeRangeOfTransitionAfterDecision:(SEL)decision;
- (CMTimeRange)timeRangeOfTransitionBeforeDecision:(SEL)decision;
- (CNDecision)decisionAfterTime:(CMTime *)time;
- (CNDecision)decisionAtTime:(CMTime *)time tolerance:(CMTime *)tolerance;
- (CNDecision)decisionBeforeTime:(CMTime *)time;
- (CNDecision)primaryDecisionAtTime:(CMTime *)time;
- (CNDecision)secondaryDecisionAtTime:(CMTime *)time;
- (CNDetectionID)addDetectionTrack:(CNDetectionTrack *)detectionTrack;
- (CNDetectionTrack)detectionTrackForDecision:(CNDecision *)decision;
- (CNDetectionTrack)detectionTrackForID:(CNDetectionID)detectionID;
- (CNScriptChanges)changes;
- (CNScriptChanges)changesTrimmedByTimeRange:(CMTimeRange *)timeRange;
- (CNScriptFrame)frameAtTime:(CMTime *)time tolerance:(CMTime *)tolerance;
- (NSArray)addedDetectionTracks;
- (NSArray)baseDecisionsInTimeRange:(CMTimeRange *)timeRange;
- (NSArray)decisionsInTimeRange:(CMTimeRange *)timeRange;
- (NSArray)framesInTimeRange:(CMTimeRange *)timeRange;
- (NSArray)userDecisionsInTimeRange:(CMTimeRange *)timeRange;
- (float)fNumber;
- (id)_initWithInternalScript:(id)script;
- (void)reloadWithChanges:(CNScriptChanges *)changes;
- (void)removeAllUserDecisions;
- (void)setFNumber:(float)fNumber;
@end

@implementation CNScript

- (id)_initWithInternalScript:(id)script
{
  scriptCopy = script;
  v11.receiver = self;
  v11.super_class = CNScript;
  v6 = [(CNScript *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalScript, script);
    v8 = dispatch_queue_create("com.apple.cinematic.script", 0);
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

+ (void)loadFromAsset:(AVAsset *)asset changes:(CNScriptChanges *)changes progress:(NSProgress *)progress completionHandler:(void *)completionHandler
{
  v9 = asset;
  v10 = changes;
  v11 = progress;
  v12 = completionHandler;
  v13 = objc_alloc_init(MEMORY[0x277D3E858]);
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:0];
  }

  v15 = v14;
  internalChanges = [(CNScriptChanges *)v10 internalChanges];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __61__CNScript_loadFromAsset_changes_progress_completionHandler___block_invoke;
  v25 = &unk_278A162B8;
  v17 = v15;
  v26 = v17;
  v27 = v13;
  v28 = v9;
  v29 = v12;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  v21 = [v20 loadWithAsset:v18 changesDictionary:internalChanges completion:&v22];

  if (v21)
  {
    if (![(NSProgress *)v17 totalUnitCount:v22])
    {
      -[NSProgress setTotalUnitCount:](v17, "setTotalUnitCount:", [v21 totalUnitCount]);
    }

    [(NSProgress *)v17 addChild:v21 withPendingUnitCount:[(NSProgress *)v17 totalUnitCount]];
  }
}

void __61__CNScript_loadFromAsset_changes_progress_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [[CNScript alloc] _initWithInternalScript:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    v9 = [v5 domain];
    v10 = [v9 isEqual:*MEMORY[0x277D3E908]];

    if (v10 && (v11 = [v6 code] - 2, v11 <= 3))
    {
      v12 = qword_236F68038[v11];
    }

    else
    {
      v12 = 1;
    }

    v7 = _CNCinematicError(v12, 0);
    v13 = _CNLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __61__CNScript_loadFromAsset_changes_progress_completionHandler___block_invoke_cold_1(v7, a1);
    }

    v8 = *(*(a1 + 56) + 16);
  }

  v8();
}

- (void)reloadWithChanges:(CNScriptChanges *)changes
{
  v4 = changes;
  queue = [(CNScript *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__CNScript_reloadWithChanges___block_invoke;
  v7[3] = &unk_278A162E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __30__CNScript_reloadWithChanges___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) internalScript];
  v2 = [*(a1 + 40) internalChanges];
  [v3 reloadWithChangesDictionary:v2];
}

- (CNScriptChanges)changes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = [(CNScript *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__CNScript_changes__block_invoke;
  v6[3] = &unk_278A16330;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __19__CNScript_changes__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __19__CNScript_changes__block_invoke_2;
  v5[3] = &unk_278A16308;
  v5[4] = *(a1 + 32);
  v2 = __19__CNScript_changes__block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __19__CNScript_changes__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) internalScript];
  v2 = [v1 changesDictionary];

  v3 = [CNScriptChanges _changesFromInternal:v2];

  return v3;
}

- (CNScriptChanges)changesTrimmedByTimeRange:(CMTimeRange *)timeRange
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CNScript_changesTrimmedByTimeRange___block_invoke;
  v9[3] = &unk_278A16380;
  v9[4] = self;
  v9[5] = &v13;
  v6 = *&timeRange->start.epoch;
  v10 = *&timeRange->start.value;
  v11 = v6;
  v12 = *&timeRange->duration.timescale;
  dispatch_sync(queue, v9);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __38__CNScript_changesTrimmedByTimeRange___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v6[2] = __38__CNScript_changesTrimmedByTimeRange___block_invoke_2;
  v6[3] = &unk_278A16358;
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v3 = __38__CNScript_changesTrimmedByTimeRange___block_invoke_2(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __38__CNScript_changesTrimmedByTimeRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = [v2 changesDictionaryTrimmedByTimeRange:v7];

  v5 = [CNScriptChanges _changesFromInternal:v4];

  return v5;
}

- (CMTimeRange)timeRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5010000000;
  v13 = &unk_236F6B61E;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __21__CNScript_timeRange__block_invoke;
  v9[3] = &unk_278A16330;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);

  v6 = v11;
  v7 = *(v11 + 3);
  *&retstr->start.value = *(v11 + 2);
  *&retstr->start.epoch = v7;
  *&retstr->duration.timescale = *(v6 + 4);
  _Block_object_dispose(&v10, 8);
  return result;
}

__n128 __21__CNScript_timeRange__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__CNScript_timeRange__block_invoke_2;
  v5[3] = &unk_278A163A8;
  v5[4] = *(a1 + 32);
  __21__CNScript_timeRange__block_invoke_2(v5, v6);
  v2 = *(*(a1 + 40) + 8);
  v4 = v6[1];
  result = v6[2];
  *(v2 + 32) = v6[0];
  *(v2 + 48) = v4;
  *(v2 + 64) = result;
  return result;
}

void __21__CNScript_timeRange__block_invoke_2(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [*(a1 + 32) internalScript];
  if (v3)
  {
    v4 = v3;
    [v3 timeRange];
    v3 = v4;
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

- (CNScriptFrame)frameAtTime:(CMTime *)time tolerance:(CMTime *)tolerance
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__CNScript_frameAtTime_tolerance___block_invoke;
  v10[3] = &unk_278A16380;
  v10[4] = self;
  v10[5] = &v13;
  v11 = *time;
  v12 = *tolerance;
  dispatch_sync(queue, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __34__CNScript_frameAtTime_tolerance___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__CNScript_frameAtTime_tolerance___block_invoke_2;
  v5[3] = &unk_278A163D0;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v2 = __34__CNScript_frameAtTime_tolerance___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __34__CNScript_frameAtTime_tolerance___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v3 = [v2 frameAtTime:&v8 tolerance:&v6];

  if (v3)
  {
    v4 = [CNScriptFrame _copyFrameFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)framesInTimeRange:(CMTimeRange *)timeRange
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__CNScript_framesInTimeRange___block_invoke;
  v9[3] = &unk_278A16380;
  v9[4] = self;
  v9[5] = &v13;
  v6 = *&timeRange->start.epoch;
  v10 = *&timeRange->start.value;
  v11 = v6;
  v12 = *&timeRange->duration.timescale;
  dispatch_sync(queue, v9);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __30__CNScript_framesInTimeRange___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v6[2] = __30__CNScript_framesInTimeRange___block_invoke_2;
  v6[3] = &unk_278A163F8;
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v3 = __30__CNScript_framesInTimeRange___block_invoke_2(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __30__CNScript_framesInTimeRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = [v2 framesInTimeRange:v7];

  v5 = [CNScriptFrame _copyFramesFromInternal:v4];

  return v5;
}

- (CNDecision)decisionAtTime:(CMTime *)time tolerance:(CMTime *)tolerance
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__CNScript_decisionAtTime_tolerance___block_invoke;
  v10[3] = &unk_278A16380;
  v10[4] = self;
  v10[5] = &v13;
  v11 = *time;
  v12 = *tolerance;
  dispatch_sync(queue, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__CNScript_decisionAtTime_tolerance___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__CNScript_decisionAtTime_tolerance___block_invoke_2;
  v5[3] = &unk_278A16420;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v2 = __37__CNScript_decisionAtTime_tolerance___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __37__CNScript_decisionAtTime_tolerance___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v9 = *(a1 + 40);
  v3 = [v2 decisionNearestTime:&v9];

  memset(&v9, 0, sizeof(v9));
  if (v3)
  {
    [v3 time];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v6 = *(a1 + 40);
  CMTimeSubtract(&time, &v6, &rhs);
  CMTimeAbsoluteValue(&v9, &time);
  time = v9;
  rhs = *(a1 + 64);
  if (CMTimeCompare(&time, &rhs) <= 0)
  {
    v4 = [CNDecision _copyDecisionFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)decisionsInTimeRange:(CMTimeRange *)timeRange
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__CNScript_decisionsInTimeRange___block_invoke;
  v9[3] = &unk_278A16380;
  v9[4] = self;
  v9[5] = &v13;
  v6 = *&timeRange->start.epoch;
  v10 = *&timeRange->start.value;
  v11 = v6;
  v12 = *&timeRange->duration.timescale;
  dispatch_sync(queue, v9);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __33__CNScript_decisionsInTimeRange___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v6[2] = __33__CNScript_decisionsInTimeRange___block_invoke_2;
  v6[3] = &unk_278A163F8;
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v3 = __33__CNScript_decisionsInTimeRange___block_invoke_2(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __33__CNScript_decisionsInTimeRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = [v2 decisionsInTimeRange:v7];

  v5 = [CNDecision _copyDecisionsFromInternal:v4];

  return v5;
}

- (CNDecision)decisionAfterTime:(CMTime *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CNScript_decisionAfterTime___block_invoke;
  block[3] = &unk_278A16470;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __30__CNScript_decisionAfterTime___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__CNScript_decisionAfterTime___block_invoke_2;
  v5[3] = &unk_278A16448;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = __30__CNScript_decisionAfterTime___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __30__CNScript_decisionAfterTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v3 = [v2 decisionAfterTime:&v6];

  if (v3)
  {
    v4 = [CNDecision _copyDecisionFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNDecision)decisionBeforeTime:(CMTime *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CNScript_decisionBeforeTime___block_invoke;
  block[3] = &unk_278A16470;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __31__CNScript_decisionBeforeTime___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__CNScript_decisionBeforeTime___block_invoke_2;
  v5[3] = &unk_278A16448;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = __31__CNScript_decisionBeforeTime___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __31__CNScript_decisionBeforeTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v3 = [v2 decisionBeforeTime:&v6];

  if (v3)
  {
    v4 = [CNDecision _copyDecisionFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)userDecisionsInTimeRange:(CMTimeRange *)timeRange
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__CNScript_userDecisionsInTimeRange___block_invoke;
  v9[3] = &unk_278A16380;
  v9[4] = self;
  v9[5] = &v13;
  v6 = *&timeRange->start.epoch;
  v10 = *&timeRange->start.value;
  v11 = v6;
  v12 = *&timeRange->duration.timescale;
  dispatch_sync(queue, v9);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __37__CNScript_userDecisionsInTimeRange___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v6[2] = __37__CNScript_userDecisionsInTimeRange___block_invoke_2;
  v6[3] = &unk_278A163F8;
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v3 = __37__CNScript_userDecisionsInTimeRange___block_invoke_2(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __37__CNScript_userDecisionsInTimeRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = [v2 userDecisionsInTimeRange:v7];

  v5 = [CNDecision _copyDecisionsFromInternal:v4];

  return v5;
}

- (NSArray)baseDecisionsInTimeRange:(CMTimeRange *)timeRange
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(CNScript *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__CNScript_baseDecisionsInTimeRange___block_invoke;
  v9[3] = &unk_278A16380;
  v9[4] = self;
  v9[5] = &v13;
  v6 = *&timeRange->start.epoch;
  v10 = *&timeRange->start.value;
  v11 = v6;
  v12 = *&timeRange->duration.timescale;
  dispatch_sync(queue, v9);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __37__CNScript_baseDecisionsInTimeRange___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v2;
  v6[2] = __37__CNScript_baseDecisionsInTimeRange___block_invoke_2;
  v6[3] = &unk_278A163F8;
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 80);
  v3 = __37__CNScript_baseDecisionsInTimeRange___block_invoke_2(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __37__CNScript_baseDecisionsInTimeRange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v7[2] = *(a1 + 72);
  v4 = [v2 baseDecisionsInTimeRange:v7];

  v5 = [CNDecision _copyDecisionsFromInternal:v4];

  return v5;
}

- (CNDecision)primaryDecisionAtTime:(CMTime *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CNScript_primaryDecisionAtTime___block_invoke;
  block[3] = &unk_278A16470;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __34__CNScript_primaryDecisionAtTime___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__CNScript_primaryDecisionAtTime___block_invoke_2;
  v5[3] = &unk_278A16448;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = __34__CNScript_primaryDecisionAtTime___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __34__CNScript_primaryDecisionAtTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v3 = [v2 primaryDecisionAtTime:&v6];

  if (v3)
  {
    v4 = [CNDecision _copyDecisionFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNDecision)secondaryDecisionAtTime:(CMTime *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CNScript_secondaryDecisionAtTime___block_invoke;
  block[3] = &unk_278A16470;
  block[4] = self;
  block[5] = &v10;
  v9 = *time;
  dispatch_sync(queue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __36__CNScript_secondaryDecisionAtTime___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CNScript_secondaryDecisionAtTime___block_invoke_2;
  v5[3] = &unk_278A16448;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = __36__CNScript_secondaryDecisionAtTime___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __36__CNScript_secondaryDecisionAtTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v3 = [v2 secondaryDecisionAtTime:&v6];

  if (v3)
  {
    v4 = [CNDecision _copyDecisionFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CMTimeRange)timeRangeOfTransitionAfterDecision:(SEL)decision
{
  decisionCopy = decision;
  v15 = 0;
  v16 = &v15;
  v17 = 0x5010000000;
  v18 = &unk_236F6B61E;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CNScript_timeRangeOfTransitionAfterDecision___block_invoke;
  block[3] = &unk_278A164C0;
  v13 = decisionCopy;
  v14 = &v15;
  block[4] = self;
  v8 = decisionCopy;
  dispatch_sync(queue, block);

  v9 = v16;
  v10 = *(v16 + 3);
  *&retstr->start.value = *(v16 + 2);
  *&retstr->start.epoch = v10;
  *&retstr->duration.timescale = *(v9 + 4);

  _Block_object_dispose(&v15, 8);
  return result;
}

__n128 __47__CNScript_timeRangeOfTransitionAfterDecision___block_invoke(void *a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CNScript_timeRangeOfTransitionAfterDecision___block_invoke_2;
  v7[3] = &unk_278A16498;
  v2 = a1[5];
  v7[4] = a1[4];
  v8 = v2;
  (__47__CNScript_timeRangeOfTransitionAfterDecision___block_invoke_2)(v9, v7);
  v3 = *(a1[6] + 8);
  v5 = v9[1];
  v4 = v9[2];
  v3[2] = v9[0];
  v3[3] = v5;
  v3[4] = v4;

  return result;
}

void __47__CNScript_timeRangeOfTransitionAfterDecision___block_invoke_2(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = [*(a1 + 32) internalScript];
  v4 = [*(a1 + 40) internalDecision];
  if (v5)
  {
    [v5 timeRangeOfTransitionAfterDecision:v4];
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

- (CMTimeRange)timeRangeOfTransitionBeforeDecision:(SEL)decision
{
  decisionCopy = decision;
  v15 = 0;
  v16 = &v15;
  v17 = 0x5010000000;
  v18 = &unk_236F6B61E;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CNScript_timeRangeOfTransitionBeforeDecision___block_invoke;
  block[3] = &unk_278A164C0;
  v13 = decisionCopy;
  v14 = &v15;
  block[4] = self;
  v8 = decisionCopy;
  dispatch_sync(queue, block);

  v9 = v16;
  v10 = *(v16 + 3);
  *&retstr->start.value = *(v16 + 2);
  *&retstr->start.epoch = v10;
  *&retstr->duration.timescale = *(v9 + 4);

  _Block_object_dispose(&v15, 8);
  return result;
}

__n128 __48__CNScript_timeRangeOfTransitionBeforeDecision___block_invoke(void *a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CNScript_timeRangeOfTransitionBeforeDecision___block_invoke_2;
  v7[3] = &unk_278A16498;
  v2 = a1[5];
  v7[4] = a1[4];
  v8 = v2;
  (__48__CNScript_timeRangeOfTransitionBeforeDecision___block_invoke_2)(v9, v7);
  v3 = *(a1[6] + 8);
  v5 = v9[1];
  v4 = v9[2];
  v3[2] = v9[0];
  v3[3] = v5;
  v3[4] = v4;

  return result;
}

void __48__CNScript_timeRangeOfTransitionBeforeDecision___block_invoke_2(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = [*(a1 + 32) internalScript];
  v4 = [*(a1 + 40) internalDecision];
  if (v5)
  {
    [v5 timeRangeOfTransitionBeforeDecision:v4];
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

- (NSArray)addedDetectionTracks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = [(CNScript *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__CNScript_addedDetectionTracks__block_invoke;
  v6[3] = &unk_278A16330;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__CNScript_addedDetectionTracks__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__CNScript_addedDetectionTracks__block_invoke_2;
  v5[3] = &unk_278A164E8;
  v5[4] = *(a1 + 32);
  v2 = __32__CNScript_addedDetectionTracks__block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __32__CNScript_addedDetectionTracks__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) internalScript];
  v4 = [v3 tracks];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isUserCreated])
        {
          v10 = [CNDetectionTrack _trackFromInternal:v9];
          [v2 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (CNDetectionTrack)detectionTrackForID:(CNDetectionID)detectionID
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CNScript_detectionTrackForID___block_invoke;
  block[3] = &unk_278A16538;
  block[4] = self;
  block[5] = &v9;
  block[6] = detectionID;
  dispatch_sync(queue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __32__CNScript_detectionTrackForID___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__CNScript_detectionTrackForID___block_invoke_2;
  v6[3] = &unk_278A16510;
  v2 = a1[6];
  v6[4] = a1[4];
  v6[5] = v2;
  v3 = __32__CNScript_detectionTrackForID___block_invoke_2(v6);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __32__CNScript_detectionTrackForID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [v2 trackForIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = [CNDetectionTrack _trackFromInternal:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNDetectionTrack)detectionTrackForDecision:(CNDecision *)decision
{
  v4 = decision;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CNScript_detectionTrackForDecision___block_invoke;
  block[3] = &unk_278A164C0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__CNScript_detectionTrackForDecision___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CNScript_detectionTrackForDecision___block_invoke_2;
  v6[3] = &unk_278A16560;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __38__CNScript_detectionTrackForDecision___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __38__CNScript_detectionTrackForDecision___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [*(a1 + 40) internalDecision];
  v4 = [v2 trackForDecision:v3];

  if (v4)
  {
    v5 = [CNDetectionTrack _trackFromInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (float)fNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(CNScript *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__CNScript_fNumber__block_invoke;
  v6[3] = &unk_278A16330;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __19__CNScript_fNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  [v2 userAperture];
  v4 = v3;

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

float __19__CNScript_fNumber__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) internalScript];
  [v1 userAperture];
  v3 = v2;

  return v3;
}

- (void)setFNumber:(float)fNumber
{
  queue = [(CNScript *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__CNScript_setFNumber___block_invoke;
  v6[3] = &unk_278A165B0;
  v6[4] = self;
  v7 = fNumber;
  dispatch_sync(queue, v6);
}

void __23__CNScript_setFNumber___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) internalScript];
  LODWORD(v2) = v1;
  [v3 setUserAperture:v2];
}

- (BOOL)addUserDecision:(CNDecision *)decision
{
  v4 = decision;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CNScript_addUserDecision___block_invoke;
  block[3] = &unk_278A164C0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __28__CNScript_addUserDecision___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__CNScript_addUserDecision___block_invoke_2;
  v3[3] = &unk_278A165D8;
  v2 = a1[5];
  v3[4] = a1[4];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = __28__CNScript_addUserDecision___block_invoke_2(v3);
}

uint64_t __28__CNScript_addUserDecision___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [*(a1 + 40) internalDecision];
  v4 = [v2 addUserDecision:v3];

  return v4;
}

- (BOOL)removeUserDecision:(CNDecision *)decision
{
  v4 = decision;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CNScript_removeUserDecision___block_invoke;
  block[3] = &unk_278A164C0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __31__CNScript_removeUserDecision___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__CNScript_removeUserDecision___block_invoke_2;
  v3[3] = &unk_278A165D8;
  v2 = a1[5];
  v3[4] = a1[4];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = __31__CNScript_removeUserDecision___block_invoke_2(v3);
}

uint64_t __31__CNScript_removeUserDecision___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [*(a1 + 40) internalDecision];
  v4 = [v2 removeUserDecision:v3];

  return v4;
}

- (void)removeAllUserDecisions
{
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CNScript_removeAllUserDecisions__block_invoke;
  block[3] = &unk_278A16600;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __34__CNScript_removeAllUserDecisions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) internalScript];
  [v1 removeAllUserDecisions];
}

- (CNDetectionID)addDetectionTrack:(CNDetectionTrack *)detectionTrack
{
  v4 = detectionTrack;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CNScript_addDetectionTrack___block_invoke;
  block[3] = &unk_278A164C0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __30__CNScript_addDetectionTrack___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__CNScript_addDetectionTrack___block_invoke_2;
  v3[3] = &unk_278A16628;
  v2 = a1[5];
  v3[4] = a1[4];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = __30__CNScript_addDetectionTrack___block_invoke_2(v3);
}

int64_t __30__CNScript_addDetectionTrack___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [*(a1 + 40) internalTrack];
  v4 = [v2 addTrack:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) internalTrack];
    v6 = [v5 trackIdentifier];

    return v6;
  }

  else
  {

    return +[CNDetection invalidDetectionID];
  }
}

- (BOOL)removeDetectionTrack:(CNDetectionTrack *)detectionTrack
{
  v4 = detectionTrack;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CNScript *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CNScript_removeDetectionTrack___block_invoke;
  block[3] = &unk_278A164C0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __33__CNScript_removeDetectionTrack___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__CNScript_removeDetectionTrack___block_invoke_2;
  v3[3] = &unk_278A165D8;
  v2 = a1[5];
  v3[4] = a1[4];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = __33__CNScript_removeDetectionTrack___block_invoke_2(v3);
}

uint64_t __33__CNScript_removeDetectionTrack___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) internalScript];
  v3 = [*(a1 + 40) internalTrack];
  v4 = [v2 removeTrack:v3];

  return v4;
}

void __61__CNScript_loadFromAsset_changes_progress_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  OUTLINED_FUNCTION_1_1();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_236F52000, v4, OS_LOG_TYPE_ERROR, "Error %@: Failed to read script from asset %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end