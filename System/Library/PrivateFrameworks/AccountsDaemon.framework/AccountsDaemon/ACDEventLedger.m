@interface ACDEventLedger
+ (id)sharedLedger;
- (ACDEventLedger)init;
- (id)historyDescription;
- (void)recordEvent:(id)a3;
- (void)simulateCrashWithMessage:(id)a3;
@end

@implementation ACDEventLedger

+ (id)sharedLedger
{
  if (sharedLedger_onceToken != -1)
  {
    +[ACDEventLedger sharedLedger];
  }

  v3 = sharedLedger_sharedInstance;

  return v3;
}

uint64_t __30__ACDEventLedger_sharedLedger__block_invoke()
{
  sharedLedger_sharedInstance = objc_alloc_init(ACDEventLedger);

  return MEMORY[0x2821F96F8]();
}

- (ACDEventLedger)init
{
  v6.receiver = self;
  v6.super_class = ACDEventLedger;
  v2 = [(ACDEventLedger *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    eventLedger = v2->_eventLedger;
    v2->_eventLedger = v3;
  }

  return v2;
}

- (void)recordEvent:(id)a3
{
  v4 = a3;
  v5 = [(ACDEventLedger *)self eventLedger];
  objc_sync_enter(v5);
  v6 = [(ACDEventLedger *)self eventLedger];
  [v6 addObject:v4];

  v7 = [(ACDEventLedger *)self eventLedger];
  v8 = [v7 count];

  if (v8 >= 0xB)
  {
    v9 = [(ACDEventLedger *)self eventLedger];
    [v9 removeObjectAtIndex:0];
  }

  crashInfoString = self->_crashInfoString;
  if (crashInfoString)
  {
    free(crashInfoString);
    self->_crashInfoString = 0;
  }

  v11 = [(ACDEventLedger *)self historyDescription];
  self->_crashInfoString = strdup([v11 UTF8String]);

  qword_2813033E8 = self->_crashInfoString;
  objc_sync_exit(v5);

  if (recordEvent__onceToken != -1)
  {
    [ACDEventLedger recordEvent:];
  }

  if (recordEvent__logDatabaseTransactions == 1)
  {
    v12 = _ACDSaveLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ACDEventLedger *)v4 recordEvent:v12];
    }
  }
}

uint64_t __30__ACDEventLedger_recordEvent___block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    recordEvent__logDatabaseTransactions = 1;
  }

  return result;
}

- (id)historyDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ACDEventLedger *)self eventLedger];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"Event history:\n%@", v4];

  return v5;
}

- (void)simulateCrashWithMessage:(id)a3
{
  v3 = a3;
  v4 = getpid();
  v5 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v6 = getSimulateCrashSymbolLoc_ptr;
  v11 = getSimulateCrashSymbolLoc_ptr;
  if (!getSimulateCrashSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getSimulateCrashSymbolLoc_block_invoke;
    v7[3] = &unk_27848CFF8;
    v7[4] = &v8;
    __getSimulateCrashSymbolLoc_block_invoke(v7);
    v6 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v6)
  {
    [ACDEventLedger simulateCrashWithMessage:];
  }

  v6(v4, 195939070, v5);
}

- (void)recordEvent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)simulateCrashWithMessage:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL soft_SimulateCrash(pid_t, mach_exception_data_type_t, NSString *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"ACDEventLedger.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end