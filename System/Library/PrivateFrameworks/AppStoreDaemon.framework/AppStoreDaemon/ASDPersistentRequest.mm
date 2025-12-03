@interface ASDPersistentRequest
- (void)cancelWithErrorHandler:(id)handler;
- (void)startWithErrorHandler:(id)handler;
@end

@implementation ASDPersistentRequest

- (void)cancelWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ASDPersistentRequest_cancelWithErrorHandler___block_invoke;
  v6[3] = &unk_1E7CDBE20;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ASDRequest *)self _cancelWithErrorHandler:v6];
}

void __47__ASDPersistentRequest_cancelWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[ASDRequest _sharedBroker];
  [(ASDRequestBroker *)v3 markRequestAsComplete:?];
}

- (void)startWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASDRequest _sharedBroker];
  [(ASDRequestBroker *)v5 markRequestAsActive:?];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASDPersistentRequest_startWithErrorHandler___block_invoke;
  v7[3] = &unk_1E7CDBE20;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ASDRequest *)self _startWithErrorHandler:v7];
}

void __46__ASDPersistentRequest_startWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = +[ASDRequest _sharedBroker];
  [(ASDRequestBroker *)v3 markRequestAsComplete:?];
}

@end