@interface AXServerInstanceActionHandlerHelper
- (AXServerInstanceActionHandlerHelper)initWithRegistrationMessageKey:(int)key actionResultMessageKey:(int)messageKey;
- (BOOL)_hasActionHandlerForClientPort:(unsigned int)port;
- (id)handleActionHandlerRegistrationMessage:(id)message;
- (void)_removeActionHandler:(unsigned int)handler;
- (void)notifyActionOccurredWithType:(int64_t)type payload:(id)payload;
@end

@implementation AXServerInstanceActionHandlerHelper

- (AXServerInstanceActionHandlerHelper)initWithRegistrationMessageKey:(int)key actionResultMessageKey:(int)messageKey
{
  v11.receiver = self;
  v11.super_class = AXServerInstanceActionHandlerHelper;
  v6 = [(AXServerInstanceActionHandlerHelper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_registrationMessageKey = key;
    v6->_actionResultMessageKey = messageKey;
    array = [MEMORY[0x1E695DF70] array];
    actionHandlers = v7->_actionHandlers;
    v7->_actionHandlers = array;
  }

  return v7;
}

- (id)handleActionHandlerRegistrationMessage:(id)message
{
  v24[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  payload = [messageCopy payload];
  v6 = [payload objectForKey:@"register"];
  bOOLValue = [v6 BOOLValue];

  clientPort = [messageCopy clientPort];
  if (!bOOLValue)
  {
    [(AXServerInstanceActionHandlerHelper *)self _removeActionHandler:clientPort];
    goto LABEL_6;
  }

  if ([(AXServerInstanceActionHandlerHelper *)self _hasActionHandlerForClientPort:clientPort])
  {
LABEL_6:
    v11 = 1;
    goto LABEL_11;
  }

  v9 = [[AXIPCClient alloc] initWithPort:clientPort];
  LODWORD(v10) = 1.0;
  [(AXIPCClient *)v9 setTimeout:v10];
  v22 = 0;
  v11 = [(AXIPCClient *)v9 connectWithError:&v22];
  v12 = v22;
  if (v11)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__AXServerInstanceActionHandlerHelper_handleActionHandlerRegistrationMessage___block_invoke;
    v20[3] = &unk_1E71EAD18;
    v20[4] = self;
    v21 = clientPort;
    [(AXIPCClient *)v9 setPortDeathHandler:v20];
    [(NSMutableArray *)self->_actionHandlers addObject:v9];
  }

  else
  {
    v13 = AXLogIPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(AXServerInstanceActionHandlerHelper *)v12 handleActionHandlerRegistrationMessage:v13];
    }
  }

LABEL_11:
  v14 = [AXIPCMessage alloc];
  registrationMessageKey = [(AXServerInstanceActionHandlerHelper *)self registrationMessageKey];
  v23 = @"result";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v24[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v18 = [(AXIPCMessage *)v14 initWithKey:registrationMessageKey payload:v17];

  return v18;
}

- (void)notifyActionOccurredWithType:(int64_t)type payload:(id)payload
{
  v25 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (notifyActionOccurredWithType_payload__onceToken != -1)
  {
    [AXServerInstanceActionHandlerHelper notifyActionOccurredWithType:payload:];
  }

  if (notifyActionOccurredWithType_payload__actionQueue)
  {
    v7 = [payloadCopy copy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_actionHandlers;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = notifyActionOccurredWithType_payload__actionQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__AXServerInstanceActionHandlerHelper_notifyActionOccurredWithType_payload___block_invoke_2;
          block[3] = &unk_1E71EBC20;
          typeCopy = type;
          v16 = v7;
          selfCopy = self;
          v18 = v12;
          dispatch_async(v13, block);
        }

        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = payloadCopy;
  }
}

void __76__AXServerInstanceActionHandlerHelper_notifyActionOccurredWithType_payload___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("axserverinstance-action-queue", attr);
  v2 = notifyActionOccurredWithType_payload__actionQueue;
  notifyActionOccurredWithType_payload__actionQueue = v1;
}

void __76__AXServerInstanceActionHandlerHelper_notifyActionOccurredWithType_payload___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v4 = [v2 dictionaryWithObject:v3 forKey:@"type"];

  v5 = *(a1 + 32);
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"payload"];
  }

  v6 = -[AXIPCMessage initWithKey:payload:]([AXIPCMessage alloc], "initWithKey:payload:", [*(a1 + 40) actionResultMessageKey], v4);
  v7 = *(a1 + 48);
  v11 = 0;
  v8 = [v7 sendSimpleMessage:v6 withError:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __76__AXServerInstanceActionHandlerHelper_notifyActionOccurredWithType_payload___block_invoke_2_cold_1(v9, v10);
    }
  }
}

- (BOOL)_hasActionHandlerForClientPort:(unsigned int)port
{
  actionHandlers = self->_actionHandlers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AXServerInstanceActionHandlerHelper__hasActionHandlerForClientPort___block_invoke;
  v5[3] = &__block_descriptor_36_e28_B32__0__AXIPCClient_8Q16_B24l;
  portCopy = port;
  return [(NSMutableArray *)actionHandlers indexOfObjectPassingTest:v5]!= 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __70__AXServerInstanceActionHandlerHelper__hasActionHandlerForClientPort___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 serviceMachPort];
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)_removeActionHandler:(unsigned int)handler
{
  actionHandlers = self->_actionHandlers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AXServerInstanceActionHandlerHelper__removeActionHandler___block_invoke;
  v6[3] = &__block_descriptor_36_e15_B32__0_8Q16_B24l;
  handlerCopy = handler;
  v5 = [(NSMutableArray *)actionHandlers indexesOfObjectsPassingTest:v6];
  if (v5)
  {
    [(NSMutableArray *)self->_actionHandlers removeObjectsAtIndexes:v5];
  }
}

- (void)handleActionHandlerRegistrationMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Could not connect client for registering serveri nstance action handler: %{public}@", &v2, 0xCu);
}

void __76__AXServerInstanceActionHandlerHelper_notifyActionOccurredWithType_payload___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error sending server instance action: %@", &v2, 0xCu);
}

@end