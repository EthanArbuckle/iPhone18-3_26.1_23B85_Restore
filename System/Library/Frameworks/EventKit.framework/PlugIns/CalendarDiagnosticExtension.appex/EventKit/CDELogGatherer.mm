@interface CDELogGatherer
- (CDELogGatherer)init;
- (NSArray)attachments;
- (void)diagnosticsCollector:(id)collector createdOutputFiles:(id)files;
- (void)diagnosticsCollector:(id)collector finishedWithError:(id)error;
- (void)gatherLogsWithCompletion:(id)completion;
@end

@implementation CDELogGatherer

- (CDELogGatherer)init
{
  v9.receiver = self;
  v9.super_class = CDELogGatherer;
  v2 = [(CDELogGatherer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableArray);
    attachments = v3->_attachments;
    v3->_attachments = v4;

    v6 = [[EKEventStore alloc] initWithEKOptions:132];
    eventStore = v3->_eventStore;
    v3->_eventStore = v6;
  }

  return v3;
}

- (NSArray)attachments
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_attachments copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)gatherLogsWithCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6 = [[EKDiagnosticsCollector alloc] initWithEventStore:self->_eventStore delegate:self];
  [v6 setRedactLogs:1];
  [v6 setTrafficLogsCollectionMode:{-[CDELogGatherer trafficLogsCollectionMode](self, "trafficLogsCollectionMode")}];
  [v6 collectDiagnostics];
}

- (void)diagnosticsCollector:(id)collector createdOutputFiles:(id)files
{
  filesCopy = files;
  v6 = +[CalendarDiagnosticExtension log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = filesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got a batch of files: %@", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_attachments addObjectsFromArray:filesCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)diagnosticsCollector:(id)collector finishedWithError:(id)error
{
  collectorCopy = collector;
  errorCopy = error;
  v8 = +[CalendarDiagnosticExtension log];
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100001528(errorCopy, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Diagnosticcs collector finished", v12, 2u);
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v11 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

@end