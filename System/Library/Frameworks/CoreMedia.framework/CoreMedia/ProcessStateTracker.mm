@interface ProcessStateTracker
- (BOOL)isProcessTerminated;
- (id)initForClientPID:(int)d withOperator:(id)operator;
- (int)startMonitoringClientPID;
- (void)dealloc;
- (void)monitor:(id)monitor notifiedUpdate:(id)update forPID:(int)d;
@end

@implementation ProcessStateTracker

- (id)initForClientPID:(int)d withOperator:(id)operator
{
  v8.receiver = self;
  v8.super_class = ProcessStateTracker;
  v6 = [(ProcessStateTracker *)&v8 init];
  if (v6)
  {
    v6->_operator = operator;
    v6->_monitor = 0;
    v6->_clientPID = d;
    if ([(ProcessStateTracker *)v6 startMonitoringClientPID])
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_monitor invalidate];

  v3.receiver = self;
  v3.super_class = ProcessStateTracker;
  [(ProcessStateTracker *)&v3 dealloc];
}

- (int)startMonitoringClientPID
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__ProcessStateTracker_startMonitoringClientPID__block_invoke;
  v10[3] = &unk_1E749CE68;
  objc_copyWeak(&v11, &location);
  v3 = [MEMORY[0x1E69C75D8] identifierWithPid:self->_clientPID];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E69C7608] predicateMatchingIdentifier:v3];
  if (!v4)
  {
LABEL_8:
    v7 = -19471;
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E69C75C8] handleForIdentifier:v3 error:0];
  if (!v5)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ProcessStateTracker_startMonitoringClientPID__block_invoke_2;
  v9[3] = &unk_1E749CE90;
  v9[4] = v4;
  v9[5] = v10;
  v4 = [MEMORY[0x1E69C7600] monitorWithConfiguration:v9];
  if (![v5 currentState])
  {
    goto LABEL_8;
  }

  v6 = v4;
  v4 = 0;
  v7 = 0;
  self->_monitor = v6;
LABEL_6:
  [v4 invalidate];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v7;
}

id __47__ProcessStateTracker_startMonitoringClientPID__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v8 = result;
    v9 = [a3 pid];

    return [v8 monitor:a2 notifiedUpdate:a4 forPID:v9];
  }

  return result;
}

uint64_t __47__ProcessStateTracker_startMonitoringClientPID__block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69C7628] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_1F0B8F588];
  v6[0] = *(a1 + 32);
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
  [a2 setStateDescriptor:v4];
  [a2 setUpdateHandler:*(a1 + 40)];
  return [a2 setEvents:1];
}

- (void)monitor:(id)monitor notifiedUpdate:(id)update forPID:(int)d
{
  if (self->_monitor == monitor && self->_clientPID == d)
  {
    exitEvent = [update exitEvent];
    v8 = [objc_msgSend(update "state")];
    if (exitEvent)
    {
      operator = self->_operator;

      [(FigPurgeAndRenewPurgeOperator *)operator processDidTerminate];
    }

    else
    {
      v10 = v8;
      v11 = self->_operator;
      if (v10 == 3)
      {

        [(FigPurgeAndRenewPurgeOperator *)v11 processDidSuspend];
      }

      else
      {

        [(FigPurgeAndRenewPurgeOperator *)v11 processIsNoLongerSuspended];
      }
    }
  }
}

- (BOOL)isProcessTerminated
{
  v2 = [MEMORY[0x1E69C75C8] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75D8] error:{"identifierWithPid:", self->_clientPID), 0}];
  if (v2)
  {
    LOBYTE(v2) = [v2 currentState] == 0;
  }

  return v2;
}

@end