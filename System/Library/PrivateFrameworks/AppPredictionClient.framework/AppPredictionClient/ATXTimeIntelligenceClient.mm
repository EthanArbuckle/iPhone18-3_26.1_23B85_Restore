@interface ATXTimeIntelligenceClient
- (ATXTimeIntelligenceClient)init;
- (void)_notifyObserversOfReload;
- (void)computeCompactTimeSummaryWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)computeDailySummaryWithDate:(id)date completionHandler:(id)handler;
- (void)dataSourcesDidUpdateWithCompletionHandler:(id)handler;
- (void)deletePinnedTimeEvent:(id)event completionHandler:(id)handler;
- (void)dumpTimeFeedbackStream:(id)stream;
- (void)invokeActionWithIdentifier:(id)identifier forEvent:(id)event completionHandler:(id)handler;
- (void)invokeFeedbackOption:(id)option forEvent:(id)event referenceDate:(id)date completionHandler:(id)handler;
- (void)loadPinnedTimeEventsWithCompletionHandler:(id)handler;
- (void)logDidInvokeWidgetForEvent:(id)event completionHandler:(id)handler;
- (void)logFocusFilterDidChange:(int64_t)change completionHandler:(id)handler;
- (void)predictedDailyOverviewWithDate:(id)date options:(id)options completionHandler:(id)handler;
- (void)predictedFreeMomentsWithDateRange:(id)range options:(id)options completionHandler:(id)handler;
- (void)predictedTimelineWithDate:(id)date completionHandler:(id)handler;
- (void)printRLPolicyTable:(id)table;
- (void)registerGoalWithData:(id)data completionHandler:(id)handler;
- (void)registerObserver:(id)observer;
- (void)rescheduleEvent:(id)event proposedDate:(id)date referenceDate:(id)referenceDate completionHandler:(id)handler;
- (void)savePinnedTimeEvent:(id)event completionHandler:(id)handler;
- (void)saveScheduledPinnedTimeEvent:(id)event completionHandler:(id)handler;
- (void)triggerNudgerToPollWithCompletionHandler:(id)handler;
- (void)unhideAllEventsFromSource:(int64_t)source completionHandler:(id)handler;
@end

@implementation ATXTimeIntelligenceClient

- (ATXTimeIntelligenceClient)init
{
  v12.receiver = self;
  v12.super_class = ATXTimeIntelligenceClient;
  v2 = [(ATXTimeIntelligenceClient *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.timeIntelligence" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
    v5 = v2->_xpcConnection;
    v6 = ATXTimeIntelligenceClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    v7 = v2->_xpcConnection;
    v8 = ATXTimeIntelligenceInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_61];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_4];
    [(NSXPCConnection *)v2->_xpcConnection resume];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

void __33__ATXTimeIntelligenceClient_init__block_invoke()
{
  v0 = __atxlog_handle_time_intelligence();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __33__ATXTimeIntelligenceClient_init__block_invoke_cold_1(v0);
  }
}

void __33__ATXTimeIntelligenceClient_init__block_invoke_2()
{
  v0 = __atxlog_handle_time_intelligence();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_INFO, "ATXTimeIntelligenceClient: invalidation handler called", v1, 2u);
  }
}

- (void)dataSourcesDidUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__ATXTimeIntelligenceClient_dataSourcesDidUpdateWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E80C0D78;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __71__ATXTimeIntelligenceClient_dataSourcesDidUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyObserversOfReload];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_notifyObserversOfReload
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = self->_observers;
  objc_sync_enter(v3);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) timeIntelligenceClientDidRefresh];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)predictedTimelineWithDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__ATXTimeIntelligenceClient_predictedTimelineWithDate_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 predictedTimelineWithDate:dateCopy completionHandler:v9];
}

void __73__ATXTimeIntelligenceClient_predictedTimelineWithDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_time_intelligence();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__ATXTimeIntelligenceClient_predictedTimelineWithDate_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)predictedDailyOverviewWithDate:(id)date options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  dateCopy = date;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__ATXTimeIntelligenceClient_predictedDailyOverviewWithDate_options_completionHandler___block_invoke;
  v14[3] = &unk_1E80C08E0;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 predictedDailyOverviewWithDate:dateCopy options:optionsCopy completionHandler:v12];
}

void __86__ATXTimeIntelligenceClient_predictedDailyOverviewWithDate_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_time_intelligence();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__ATXTimeIntelligenceClient_predictedTimelineWithDate_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)predictedFreeMomentsWithDateRange:(id)range options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  rangeCopy = range;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__ATXTimeIntelligenceClient_predictedFreeMomentsWithDateRange_options_completionHandler___block_invoke;
  v14[3] = &unk_1E80C08E0;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 predictedFreeMomentsWithDateRange:rangeCopy options:optionsCopy completionHandler:v12];
}

void __89__ATXTimeIntelligenceClient_predictedFreeMomentsWithDateRange_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_time_intelligence();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__ATXTimeIntelligenceClient_predictedFreeMomentsWithDateRange_options_completionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)computeDailySummaryWithDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__ATXTimeIntelligenceClient_computeDailySummaryWithDate_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 computeDailySummaryWithDate:dateCopy completionHandler:v9];
}

- (void)computeCompactTimeSummaryWithOptions:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ATXTimeIntelligenceClient_computeCompactTimeSummaryWithOptions_completionHandler___block_invoke;
  v10[3] = &unk_1E80C08E0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 computeCompactTimeSummaryWithOptions:options completionHandler:v8];
}

- (void)invokeActionWithIdentifier:(id)identifier forEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  identifierCopy = identifier;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__ATXTimeIntelligenceClient_invokeActionWithIdentifier_forEvent_completionHandler___block_invoke;
  v14[3] = &unk_1E80C08E0;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 invokeActionWithIdentifier:identifierCopy forEvent:eventCopy completionHandler:v12];
}

- (void)invokeFeedbackOption:(id)option forEvent:(id)event referenceDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  eventCopy = event;
  optionCopy = option;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__ATXTimeIntelligenceClient_invokeFeedbackOption_forEvent_referenceDate_completionHandler___block_invoke;
  v17[3] = &unk_1E80C08E0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 invokeFeedbackOption:optionCopy forEvent:eventCopy referenceDate:dateCopy completionHandler:v15];
}

- (void)rescheduleEvent:(id)event proposedDate:(id)date referenceDate:(id)referenceDate completionHandler:(id)handler
{
  handlerCopy = handler;
  referenceDateCopy = referenceDate;
  dateCopy = date;
  eventCopy = event;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__ATXTimeIntelligenceClient_rescheduleEvent_proposedDate_referenceDate_completionHandler___block_invoke;
  v17[3] = &unk_1E80C08E0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 rescheduleEvent:eventCopy proposedDate:dateCopy referenceDate:referenceDateCopy completionHandler:v15];
}

- (void)loadPinnedTimeEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ATXTimeIntelligenceClient_loadPinnedTimeEventsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 loadPinnedTimeEventsWithCompletionHandler:v6];
}

- (void)savePinnedTimeEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ATXTimeIntelligenceClient_savePinnedTimeEvent_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 savePinnedTimeEvent:eventCopy completionHandler:v9];
}

- (void)deletePinnedTimeEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXTimeIntelligenceClient_deletePinnedTimeEvent_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 deletePinnedTimeEvent:eventCopy completionHandler:v9];
}

- (void)saveScheduledPinnedTimeEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__ATXTimeIntelligenceClient_saveScheduledPinnedTimeEvent_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 saveScheduledPinnedTimeEvent:eventCopy completionHandler:v9];
}

- (void)logFocusFilterDidChange:(int64_t)change completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ATXTimeIntelligenceClient_logFocusFilterDidChange_completionHandler___block_invoke;
  v10[3] = &unk_1E80C08E0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 logFocusFilterDidChange:change completionHandler:v8];
}

- (void)logDidInvokeWidgetForEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__ATXTimeIntelligenceClient_logDidInvokeWidgetForEvent_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 logDidInvokeWidgetForEvent:eventCopy completionHandler:v9];
}

- (void)triggerNudgerToPollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__ATXTimeIntelligenceClient_triggerNudgerToPollWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerNudgerToPollWithCompletionHandler:v6];
}

- (void)dumpTimeFeedbackStream:(id)stream
{
  streamCopy = stream;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ATXTimeIntelligenceClient_dumpTimeFeedbackStream___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = streamCopy;
  v6 = streamCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 dumpTimeFeedbackStream:v6];
}

- (void)unhideAllEventsFromSource:(int64_t)source completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__ATXTimeIntelligenceClient_unhideAllEventsFromSource_completionHandler___block_invoke;
  v10[3] = &unk_1E80C08E0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 unhideAllEventsFromSource:source completionHandler:v8];
}

- (void)registerGoalWithData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXTimeIntelligenceClient_registerGoalWithData_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 registerGoalWithData:dataCopy completionHandler:v9];
}

- (void)printRLPolicyTable:(id)table
{
  tableCopy = table;
  xpcConnection = [(ATXTimeIntelligenceClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__ATXTimeIntelligenceClient_printRLPolicyTable___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = tableCopy;
  v6 = tableCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 printRLPolicyTable:v6];
}

void __73__ATXTimeIntelligenceClient_predictedTimelineWithDate_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "ATXTimeIntelligenceClient: XPC failed: %@", v4, v5, v6, v7, 2u);
}

void __89__ATXTimeIntelligenceClient_predictedFreeMomentsWithDateRange_options_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXTimeIntelligenceClient: Could not fetch free moments: %@", &v2, 0xCu);
}

@end