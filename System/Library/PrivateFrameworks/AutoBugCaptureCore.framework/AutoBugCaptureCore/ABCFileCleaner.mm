@interface ABCFileCleaner
- (ABCFileCleaner)initWithQueue:(id)queue;
- (void)cleanupFiles:(id)files;
- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status;
@end

@implementation ABCFileCleaner

- (ABCFileCleaner)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ABCFileCleaner;
  v5 = [(ABCFileCleaner *)&v13 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      queue = v5->_queue;
      v5->_queue = v6;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v8 = dispatch_queue_create("com.apple.symptoms.autobugcapture.cleanup", queue);
      v9 = v5->_queue;
      v5->_queue = v8;
    }

    v10 = [[NetDiagnosticsShim alloc] initWithTaskName:@"deletefilesforsymptoms" queue:v5->_queue];
    netDiags = v5->_netDiags;
    v5->_netDiags = v10;

    [(NetDiagnosticsShim *)v5->_netDiags setDelegate:v5];
  }

  return v5;
}

- (void)cleanupFiles:(id)files
{
  filesCopy = files;
  [(ABCFileCleaner *)self setFilesToDelete:filesCopy];
  netDiags = [(ABCFileCleaner *)self netDiags];
  if (netDiags)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"deletefilesforsymptoms" forKeyedSubscript:@"taskName"];
    [dictionary setObject:filesCopy forKeyedSubscript:@"taskFileDicts"];
    queue = [(ABCFileCleaner *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__ABCFileCleaner_cleanupFiles___block_invoke;
    v9[3] = &unk_278CF04F8;
    v10 = netDiags;
    v11 = dictionary;
    v8 = dictionary;
    dispatch_async(queue, v9);
  }
}

void __31__ABCFileCleaner_cleanupFiles___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = symptomsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "SymptomsFileCleaner NetDiagnosticShim start called:%@ error:%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status
{
  v6 = [for isEqualToString:@"deletefilesforsymptoms"];
  if (status == 3 && v6)
  {
    v7 = symptomsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Completed kNetDiagTaskDeleteFilesForSymptoms", v11, 2u);
    }

    delegate = [(ABCFileCleaner *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(ABCFileCleaner *)self delegate];
      [delegate2 fileCleanupComplete];
    }

    [(NetDiagnosticsShim *)self->_netDiags setDelegate:0];
  }
}

@end