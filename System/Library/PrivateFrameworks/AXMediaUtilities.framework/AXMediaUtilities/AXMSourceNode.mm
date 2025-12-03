@interface AXMSourceNode
- (id)resultHandlers;
- (void)_nodeQueue_addResultHandler:(id)handler;
- (void)_nodeQueue_removeResultHandler:(id)handler;
- (void)addResultHandler:(id)handler;
- (void)nodeInitialize;
- (void)removeAllResultHandlers;
- (void)removeResultHandler:(id)handler;
- (void)triggerWithContext:(id)context cacheKey:(id)key resultHandler:(id)handler;
@end

@implementation AXMSourceNode

- (void)nodeInitialize
{
  v5.receiver = self;
  v5.super_class = AXMSourceNode;
  [(AXMVisionEngineNode *)&v5 nodeInitialize];
  array = [MEMORY[0x1E695DF70] array];
  nodeQueue_resultHandlers = self->_nodeQueue_resultHandlers;
  self->_nodeQueue_resultHandlers = array;
}

- (id)resultHandlers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__12;
  v11 = __Block_byref_object_dispose__12;
  v12 = 0;
  nodeQueue = [(AXMVisionEngineNode *)self nodeQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AXMSourceNode_resultHandlers__block_invoke;
  v6[3] = &unk_1E7A1CAE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(nodeQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__AXMSourceNode_resultHandlers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addResultHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    nodeQueue = [(AXMVisionEngineNode *)self nodeQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__AXMSourceNode_addResultHandler___block_invoke;
    v6[3] = &unk_1E7A1C678;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_sync(nodeQueue, v6);
  }
}

- (void)_nodeQueue_addResultHandler:(id)handler
{
  nodeQueue_resultHandlers = self->_nodeQueue_resultHandlers;
  v4 = MEMORY[0x1B2700900](handler, a2);
  [(NSMutableArray *)nodeQueue_resultHandlers addObject:v4];
}

- (void)removeResultHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    nodeQueue = [(AXMVisionEngineNode *)self nodeQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__AXMSourceNode_removeResultHandler___block_invoke;
    v6[3] = &unk_1E7A1C678;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_sync(nodeQueue, v6);
  }
}

- (void)_nodeQueue_removeResultHandler:(id)handler
{
  nodeQueue_resultHandlers = self->_nodeQueue_resultHandlers;
  v4 = MEMORY[0x1B2700900](handler, a2);
  [(NSMutableArray *)nodeQueue_resultHandlers removeObject:v4];
}

- (void)removeAllResultHandlers
{
  nodeQueue = [(AXMVisionEngineNode *)self nodeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXMSourceNode_removeAllResultHandlers__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_sync(nodeQueue, block);
}

- (void)triggerWithContext:(id)context cacheKey:(id)key resultHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  contextCopy = context;
  if (![(AXMVisionEngineNode *)self isConnected])
  {
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [AXMSourceNode triggerWithContext:v11 cacheKey:? resultHandler:?];
    }
  }

  [contextCopy setShouldProcessRemotely:{-[AXMSourceNode shouldProcessRemotely](self, "shouldProcessRemotely")}];
  [contextCopy setCacheKey:keyCopy];

  [contextCopy addResultHandler:handlerCopy];
  resultHandlers = [(AXMSourceNode *)self resultHandlers];
  [contextCopy addResultHandlers:resultHandlers];

  delegate = [(AXMVisionEngineNode *)self delegate];
  [delegate triggerWithSource:self context:contextCopy];
}

@end