@interface ATXCorrelatedEventsManager
+ (BOOL)eventsOverlapForEventA:(id)a3 withDateBuffer:(id)a4 eventB:(id)a5 withDateBuffer:(id)a6;
- (ATXCorrelatedEventsManager)initWithFirstEventType:(Class)a3 firstEventTypeDateBuffer:(id)a4 secondEventType:(Class)a5 secondEventTypeDateBuffer:(id)a6;
- (id)correlatedEvents;
- (void)correlateEvents;
- (void)insertEvents:(id)a3 forEventType:(int64_t)a4;
@end

@implementation ATXCorrelatedEventsManager

- (ATXCorrelatedEventsManager)initWithFirstEventType:(Class)a3 firstEventTypeDateBuffer:(id)a4 secondEventType:(Class)a5 secondEventTypeDateBuffer:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (a5 && a3 && v11 && v12)
  {
    v34.receiver = self;
    v34.super_class = ATXCorrelatedEventsManager;
    v14 = [(ATXCorrelatedEventsManager *)&v34 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_firstEventType, a3);
      objc_storeStrong(&v15->_firstEventTypeDateBuffer, a4);
      objc_storeStrong(&v15->_secondEventType, a5);
      objc_storeStrong(&v15->_secondEventTypeDateBuffer, a6);
      v16 = objc_opt_new();
      v17 = objc_opt_new();
      v18 = *(v16 + 8);
      *(v16 + 8) = v17;

      *(v16 + 16) = 0;
      *(v16 + 24) = 1;
      v19 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v16];
      correlatedEventsLock = v15->_correlatedEventsLock;
      v15->_correlatedEventsLock = v19;

      v21 = objc_opt_new();
      v21[1] = 0;
      v22 = objc_opt_new();
      v23 = v21[2];
      v21[2] = v22;

      v24 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v21];
      typeAEventDataLock = v15->_typeAEventDataLock;
      v15->_typeAEventDataLock = v24;

      v26 = objc_opt_new();
      v26[1] = 0;
      v27 = objc_opt_new();
      v28 = v26[2];
      v26[2] = v27;

      v29 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v26];
      typeBEventDataLock = v15->_typeBEventDataLock;
      v15->_typeBEventDataLock = v29;
    }

    self = v15;
    v31 = self;
  }

  else
  {
    v32 = __atxlog_handle_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXCorrelatedEventsManager initWithFirstEventType:firstEventTypeDateBuffer:secondEventType:secondEventTypeDateBuffer:];
    }

    v31 = 0;
  }

  return v31;
}

- (void)insertEvents:(id)a3 forEventType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    v14 = [v6 firstObject];
    secondEventType = self->_secondEventType;
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      typeBEventDataLock = self->_typeBEventDataLock;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __56__ATXCorrelatedEventsManager_insertEvents_forEventType___block_invoke_25;
      v21 = &unk_27859D798;
      v12 = &v22;
      v22 = v7;
      v13 = &v18;
      goto LABEL_7;
    }

    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a4)
  {
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXCorrelatedEventsManager insertEvents:forEventType:];
    }

    goto LABEL_14;
  }

  v8 = [v6 firstObject];
  firstEventType = self->_firstEventType;
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      [ATXCorrelatedEventsManager insertEvents:forEventType:];
    }

LABEL_14:

    goto LABEL_15;
  }

  typeBEventDataLock = self->_typeAEventDataLock;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __56__ATXCorrelatedEventsManager_insertEvents_forEventType___block_invoke;
  v26 = &unk_27859D798;
  v12 = &v27;
  v27 = v7;
  v13 = &v23;
LABEL_7:
  [(_PASLock *)typeBEventDataLock runWithLockAcquired:v13, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27];

  [(_PASLock *)self->_correlatedEventsLock runWithLockAcquired:&__block_literal_global_121];
LABEL_15:
}

+ (BOOL)eventsOverlapForEventA:(id)a3 withDateBuffer:(id)a4 eventB:(id)a5 withDateBuffer:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 startDateWithBufferForEvent:v12];
  v14 = [v9 endDateWithBufferForEvent:v10];
  v15 = [v13 compare:v14];

  v16 = [v11 endDateWithBufferForEvent:v12];

  v17 = [v9 startDateWithBufferForEvent:v10];

  v18 = [v16 compare:v17];
  return (v15 + 1) < 2 && v18 < 2;
}

- (void)correlateEvents
{
  v3 = objc_autoreleasePoolPush();
  typeAEventDataLock = self->_typeAEventDataLock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke;
  v5[3] = &unk_27859D798;
  v5[4] = self;
  [(_PASLock *)typeAEventDataLock runWithLockAcquired:v5];
  objc_autoreleasePoolPop(v3);
}

void __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke_2;
  v7[3] = &unk_27859D808;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 runWithLockAcquired:v7];
}

void __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke_3;
  v6[3] = &unk_27859D7E0;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 runWithLockAcquired:v6];
}

void __45__ATXCorrelatedEventsManager_correlateEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = *(*(a1 + 32) + 16);
  v21 = a1;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 40) + 16);
  v6 = *(v22 + 2);
  if (v4 >= [v3 count])
  {
    goto LABEL_17;
  }

  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v20 = v7;
  do
  {
    v8 = v21;
    v9 = v20;
    if (v20 >= [v5 count])
    {
      goto LABEL_16;
    }

    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v3 objectAtIndexedSubscript:v4];
      v12 = [v5 objectAtIndexedSubscript:v9];
      v13 = *(v8 + 48);
      if ([objc_opt_class() eventsOverlapForEventA:v11 withDateBuffer:*(v13 + 48) eventB:v12 withDateBuffer:*(v13 + 56)])
      {
        v14 = [[ATXCorrelatedEvents alloc] initWithFirstEvent:v11 secondEvent:v12];
        [*(v22 + 1) addObject:v14];
        if (*(v22 + 24) == 1)
        {
          *(v22 + 2) = v9;
        }

        goto LABEL_13;
      }

      v15 = v4;
      v16 = v3;
      v17 = [*(*(v8 + 48) + 56) startDateWithBufferForEvent:v12];
      v18 = [*(*(v8 + 48) + 48) endDateWithBufferForEvent:v11];
      v19 = [v17 compare:v18];

      if (v19 == 1)
      {
        break;
      }

      v8 = v21;
      *(v22 + 24) = 1;
      v3 = v16;
      v4 = v15;
LABEL_13:

      objc_autoreleasePoolPop(v10);
      if (++v9 >= [v5 count])
      {
        goto LABEL_16;
      }
    }

    v20 = *(v22 + 2);

    objc_autoreleasePoolPop(v10);
    v3 = v16;
    v4 = v15;
LABEL_16:
    ++v4;
  }

  while (v4 < [v3 count]);
LABEL_17:
  *(v22 + 25) = 1;
}

- (id)correlatedEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__56;
  v10 = __Block_byref_object_dispose__56;
  v11 = 0;
  correlatedEventsLock = self->_correlatedEventsLock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ATXCorrelatedEventsManager_correlatedEvents__block_invoke;
  v5[3] = &unk_27859D830;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)correlatedEventsLock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__ATXCorrelatedEventsManager_correlatedEvents__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((*(v6 + 25) & 1) == 0)
  {
    [*(a1 + 32) correlateEvents];
  }

  v3 = [*(v6 + 1) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end