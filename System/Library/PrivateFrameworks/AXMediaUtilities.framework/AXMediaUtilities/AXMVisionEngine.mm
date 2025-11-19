@interface AXMVisionEngine
- (AXMVisionEngine)initWithCoder:(id)a3;
- (AXMVisionEngine)initWithIdentifier:(id)a3;
- (BOOL)_queue_activeEvaluationNodesExclusivelyUseVisionFramework:(id)a3;
- (BOOL)_queue_nodeIdentifierExists:(id)a3;
- (BOOL)_queue_shouldContinueWithoutResultHandlers:(id)a3;
- (BOOL)_queue_shouldEvaluateNode:(id)a3 withOptions:(id)a4;
- (BOOL)canAddEvaluationNode:(id)a3;
- (BOOL)canAddEvaluationNodeClass:(Class)a3;
- (BOOL)canAddSourceNode:(id)a3;
- (BOOL)canAddSourceNodeClass:(Class)a3;
- (BOOL)engineWillAcceptTiggerWithSource:(id)a3;
- (BOOL)isCachingEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEngine:(id)a3;
- (BOOL)nodeIdentifierExists:(id)a3;
- (NSArray)evaluationNodes;
- (NSArray)sourceNodes;
- (id)_queue_activeEvaluationNodesForOptions:(id)a3 applyPriorityScheduling:(BOOL)a4 prioritySchedulingAllowMultipleNodeExecution:(BOOL)a5;
- (id)_queue_evaluationNodeWithIdentifier:(id)a3;
- (id)_queue_makeUniqueIdentifierForNode:(Class)a3;
- (id)_queue_sourceNodeWithIdentifier:(id)a3;
- (id)axmDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)evaluationNodeWithIdentifier:(id)a3;
- (id)makeUniqueIdentifierForNode:(Class)a3;
- (id)resultHandlers;
- (id)sourceNodeWithIdentifier:(id)a3;
- (int64_t)cacheSize;
- (unint64_t)hash;
- (void)_commonInit;
- (void)_invokeFullQueueResultHandlersForContext:(id)a3;
- (void)_invokeResultHandlers:(id)a3 withError:(id)a4;
- (void)_invokeResultHandlers:(id)a3 withResult:(id)a4;
- (void)_queue_addResultHandler:(id)a3;
- (void)_queue_evaluateWithSource:(id)a3 context:(id)a4;
- (void)_queue_handleEvaluatedContext:(id)a3 result:(id)a4 error:(id)a5;
- (void)_queue_logEvaluatedResult:(id)a3;
- (void)_queue_remotelyEvaluateWithSource:(id)a3 context:(id)a4;
- (void)_queue_removeResultHandler:(id)a3;
- (void)addEvaluationNode:(id)a3;
- (void)addResultHandler:(id)a3;
- (void)addSourceNode:(id)a3;
- (void)addSourceNodes:(id)a3 evaluationNodes:(id)a4;
- (void)axMediaUtilitiesService:(id)a3 eventOccurred:(int64_t)a4;
- (void)axmAppendRecursiveDescription:(id)a3 withIndentation:(int64_t)a4;
- (void)dispatcher:(id)a3 handleTask:(id)a4;
- (void)enableResultCachingWithCacheSize:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)insertEvaluationNode:(id)a3 atIndex:(int64_t)a4;
- (void)insertSourceNode:(id)a3 atIndex:(int64_t)a4;
- (void)prewarmEngine;
- (void)purgeResources:(id)a3;
- (void)removeAllEvaluationNodes;
- (void)removeAllResultHandlers;
- (void)removeAllSourceNodes;
- (void)removeEvaluationNode:(id)a3;
- (void)removeResultHandler:(id)a3;
- (void)removeSourceNode:(id)a3;
- (void)triggerWithSource:(id)a3 context:(id)a4;
- (void)updateEngineConfiguration:(id)a3;
@end

@implementation AXMVisionEngine

- (AXMVisionEngine)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXMVisionEngine;
  v5 = [(AXMVisionEngine *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXMVisionEngine *)v5 _commonInit];
    [(AXMVisionEngine *)v6 setIdentifier:v4];
  }

  return v6;
}

- (void)_commonInit
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("AXMVisionEngine", v3);
  queue = self->_queue;
  self->_queue = v4;

  v6 = [MEMORY[0x1E695DF70] array];
  queue_sourceNodes = self->_queue_sourceNodes;
  self->_queue_sourceNodes = v6;

  v8 = [MEMORY[0x1E695DF70] array];
  queue_evaluationNodes = self->_queue_evaluationNodes;
  self->_queue_evaluationNodes = v8;

  v10 = [MEMORY[0x1E695DF70] array];
  queue_resultHandlers = self->_queue_resultHandlers;
  self->_queue_resultHandlers = v10;

  v12 = [(AXMVisionEngineNode *)[AXMImageRegistrationNode alloc] initWithIdentifier:@"AXMImgRegistration"];
  queue_imageRegistrationNode = self->_queue_imageRegistrationNode;
  self->_queue_imageRegistrationNode = v12;

  if ((AXMIsRunningInServiceProcess() & 1) == 0)
  {
    v14 = objc_alloc_init(AXMService);
    [(AXMVisionEngine *)self setAxMediaUtilsService:v14];

    v15 = [(AXMVisionEngine *)self axMediaUtilsService];
    [v15 setDelegate:self];
  }

  *&self->_maximumQueueSize = xmmword_1AE451720;
  v16 = [[AXMTaskDispatcher alloc] initWithIdentifier:@"AXMVisionEngine" delegate:self];
  [(AXMVisionEngine *)self setTaskDispatcher:v16];

  v17 = objc_alloc_init(AXMSequenceRequestManager);
  [(AXMVisionEngine *)self setSequenceRequestManager:v17];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionEngine *)self isEqualToEngine:v4];
  }

  return v5;
}

- (BOOL)isEqualToEngine:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AXMVisionEngine *)self identifier];
    v6 = [v4 identifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(AXMVisionEngine *)self sourceNodes];
      v8 = [v7 count];
      v9 = [v4 sourceNodes];
      if (v8 == [v9 count])
      {
        v10 = [(AXMVisionEngine *)self evaluationNodes];
        v11 = [v10 count];
        v12 = [v4 evaluationNodes];
        v13 = v11 == [v12 count];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(AXMVisionEngine *)self identifier];
  v4 = [v3 hash];
  v5 = [(AXMVisionEngine *)self sourceNodes];
  v6 = [v5 count] ^ v4;
  v7 = [(AXMVisionEngine *)self evaluationNodes];
  v8 = [v7 count];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (AXMVisionEngine)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = AXMVisionEngine;
  v5 = [(AXMVisionEngine *)&v29 init];
  v6 = v5;
  if (v5)
  {
    [(AXMVisionEngine *)v5 _commonInit];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    [(AXMVisionEngine *)v6 setIdentifier:v7];

    -[AXMVisionEngine setMaximumQueueSize:](v6, "setMaximumQueueSize:", [v4 decodeIntegerForKey:@"QueueSize"]);
    -[AXMVisionEngine setDiagnosticsEnabled:](v6, "setDiagnosticsEnabled:", [v4 decodeBoolForKey:@"diagnosticsEnabled"]);
    -[AXMVisionEngine setPrioritySchedulingEnabled:](v6, "setPrioritySchedulingEnabled:", [v4 decodeBoolForKey:@"prioritySchedulingEnabled"]);
    -[AXMVisionEngine setPrioritySchedulingAllowMultipleNodeExecution:](v6, "setPrioritySchedulingAllowMultipleNodeExecution:", [v4 decodeBoolForKey:@"prioritySchedulingAllowMultipleNodeExecution"]);
    -[AXMVisionEngine setThresholdPriority:](v6, "setThresholdPriority:", [v4 decodeIntegerForKey:@"thresholdPriority"]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = AXMSecureCodingClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SourceNodes"];

    v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(AXMVisionEngine *)v6 addSourceNode:*(*(&v25 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v11);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = AXMSecureCodingClasses();
    v15 = [v4 decodeObjectOfClasses:v14 forKey:{@"EvaluationNodes", 0}];

    v16 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(AXMVisionEngine *)v6 addEvaluationNode:*(*(&v21 + 1) + 8 * v19++)];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v17);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AXMVisionEngine *)self identifier];
  [v7 encodeObject:v4 forKey:@"Identifier"];

  v5 = [(AXMVisionEngine *)self sourceNodes];
  [v7 encodeObject:v5 forKey:@"SourceNodes"];

  v6 = [(AXMVisionEngine *)self evaluationNodes];
  [v7 encodeObject:v6 forKey:@"EvaluationNodes"];

  [v7 encodeInteger:-[AXMVisionEngine maximumQueueSize](self forKey:{"maximumQueueSize"), @"QueueSize"}];
  [v7 encodeBool:-[AXMVisionEngine areDiagnosticsEnabled](self forKey:{"areDiagnosticsEnabled"), @"diagnosticsEnabled"}];
  [v7 encodeBool:-[AXMVisionEngine prioritySchedulingEnabled](self forKey:{"prioritySchedulingEnabled"), @"prioritySchedulingEnabled"}];
  [v7 encodeBool:-[AXMVisionEngine prioritySchedulingAllowMultipleNodeExecution](self forKey:{"prioritySchedulingAllowMultipleNodeExecution"), @"prioritySchedulingAllowMultipleNodeExecution"}];
  [v7 encodeInteger:-[AXMVisionEngine thresholdPriority](self forKey:{"thresholdPriority"), @"thresholdPriority"}];
}

- (BOOL)_queue_shouldContinueWithoutResultHandlers:(id)a3
{
  v4 = a3;
  if ([(AXMVisionEngine *)self isCachingEnabled])
  {
    v5 = [v4 cacheKey];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_queue_remotelyEvaluateWithSource:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AXMediaLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_INFO, "Queueing remote evaluation of %@", buf, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  if (self->_queue_shouldNotifyServiceOfEngineConfigChange)
  {
    self->_queue_shouldNotifyServiceOfEngineConfigChange = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke;
  v14[3] = &unk_1E7A1CE90;
  v14[4] = self;
  v12 = v6;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  v17 = v10;
  dispatch_async(v11, v14);

  objc_autoreleasePoolPop(v9);
}

void __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axMediaUtilsService];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke_2;
  v9[3] = &unk_1E7A1CE68;
  v7 = v3;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  [v2 visionEngine:v4 evaluateSource:v7 context:v5 options:v6 result:v9];
}

void __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AXMediaLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_INFO, "Received remote evaluation for %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke_2_cold_1();
    }
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(v10 + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke_67;
  v14[3] = &unk_1E7A1CE40;
  v14[4] = v10;
  v15 = v9;
  v16 = v5;
  v17 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v11, v14);
}

- (BOOL)_queue_shouldEvaluateNode:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0;
  if ([v5 shouldEvaluate:v6])
  {
    if ([v6 detectText] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectScenes") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectObjects") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectNSFW") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectSignificantEvents") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectModelClassifications") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectCaptions") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectFaces") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectTraits") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectHorizon") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectRectangles") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectProminentObjects") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectIconClass") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectBrailleEdges") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectAXElements") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectAesthetics") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectMADCaptions") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectMADScenes") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectMADFace") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v6, "detectMADText") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)_queue_activeEvaluationNodesForOptions:(id)a3 applyPriorityScheduling:(BOOL)a4 prioritySchedulingAllowMultipleNodeExecution:(BOOL)a5
{
  v33 = a5;
  v5 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = self->_queue_evaluationNodes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if ([v14 isEnabled] && -[AXMVisionEngine _queue_shouldEvaluateNode:withOptions:](self, "_queue_shouldEvaluateNode:withOptions:", v14, v7))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v11);
  }

  if (v5)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v15 = AXMediaLogEnginePriority();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(AXMVisionEngine *)self thresholdPriority];
      *buf = 134217984;
      v43 = v16;
      _os_log_impl(&dword_1AE37B000, v15, OS_LOG_TYPE_DEFAULT, "engine threshold priority: %ld", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          [v23 boostEffectivePriority];
          v24 = AXMediaLogEnginePriority();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [objc_opt_class() title];
            v26 = [v23 effectivePriority];
            *buf = 134218498;
            v43 = v23;
            v44 = 2112;
            v45 = v25;
            v46 = 2048;
            v47 = v26;
            _os_log_impl(&dword_1AE37B000, v24, OS_LOG_TYPE_DEFAULT, "   node <%p> :'%@'. boosted priority:%ld", buf, 0x20u);
          }

          v27 = [v23 effectivePriority];
          if (v27 >= [(AXMVisionEngine *)self thresholdPriority])
          {
            if (v33)
            {
              [v32 addObject:v23];
            }

            else if (v20)
            {
              v28 = [v23 effectivePriority];
              if (v28 > [v20 effectivePriority])
              {
                v29 = v23;

                v20 = v29;
              }
            }

            else
            {
              v20 = v23;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v19);

      if (!v33 && v20)
      {
        [v32 addObject:v20];
      }
    }

    else
    {

      v20 = 0;
    }

    [v32 enumerateObjectsUsingBlock:&__block_literal_global_5];
    v8 = v32;

    v30 = AXMediaLogEnginePriority();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&dword_1AE37B000, v30, OS_LOG_TYPE_DEFAULT, "highest priority node(s): %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)_queue_logEvaluatedResult:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 features];

    if (v5)
    {
      v6 = [v4 features];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [MEMORY[0x1E695DF70] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = [v4 features];
        v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v30 + 1) + 8 * i) description];
              if (v14)
              {
                [v8 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
          }

          while (v11);
        }

        v15 = AXMediaLogResults();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [AXMVisionEngine _queue_logEvaluatedResult:];
        }

        v16 = AXMediaLogResults();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [AXMVisionEngine _queue_logEvaluatedResult:v4];
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = v8;
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v27;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v26 + 1) + 8 * j);
              v23 = AXMediaLogResults();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v35 = v22;
                _os_log_debug_impl(&dword_1AE37B000, v23, OS_LOG_TYPE_DEBUG, "  %@", buf, 0xCu);
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v26 objects:v36 count:16];
          }

          while (v19);
        }

        v24 = AXMediaLogResults();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [AXMVisionEngine _queue_logEvaluatedResult:v4];
        }

        v25 = AXMediaLogResults();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [AXMVisionEngine _queue_logEvaluatedResult:];
        }
      }

      else
      {
        v17 = AXMediaLogResults();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [AXMVisionEngine _queue_logEvaluatedResult:];
        }
      }
    }

    else
    {
      v17 = AXMediaLogResults();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [AXMVisionEngine _queue_logEvaluatedResult:];
      }
    }
  }

  else
  {
    v17 = AXMediaLogResults();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AXMVisionEngine _queue_logEvaluatedResult:];
    }
  }
}

- (BOOL)_queue_activeEvaluationNodesExclusivelyUseVisionFramework:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) requiresVisionFramework])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)_queue_evaluateWithSource:(id)a3 context:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  group = dispatch_group_create();
  if (([v7 sourceProvidesResults] & 1) == 0)
  {
    v9 = [v7 analysisOptions];
    v10 = [(AXMVisionEngine *)self _queue_activeEvaluationNodesForOptions:v9 applyPriorityScheduling:[(AXMVisionEngine *)self prioritySchedulingEnabled] prioritySchedulingAllowMultipleNodeExecution:[(AXMVisionEngine *)self prioritySchedulingAllowMultipleNodeExecution]];

    if (-[AXMVisionEngine prioritySchedulingEnabled](self, "prioritySchedulingEnabled") && !-[AXMVisionEngine prioritySchedulingAllowMultipleNodeExecution](self, "prioritySchedulingAllowMultipleNodeExecution") && [v10 count] >= 2)
    {
      v11 = AXMediaLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [AXMVisionEngine _queue_evaluateWithSource:context:];
      }
    }

    if ([v10 count])
    {
      v12 = AXMediaLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v7 analysisOptions];
        *buf = 138412290;
        v52 = v13;
        _os_log_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_INFO, "Will begin image evaluation. %@", buf, 0xCu);
      }

      v26 = v8;

      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_99;
      block[3] = &unk_1E7A1CE40;
      v15 = v7;
      v46 = v15;
      v47 = self;
      v16 = v10;
      v48 = v16;
      v27 = v6;
      v49 = v6;
      dispatch_group_async(group, queue, block);
      if ([(AXMVisionEngine *)self imageRegistrationFilteringEnabled])
      {
        v17 = self->_queue;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_3;
        v41[3] = &unk_1E7A1CF48;
        v44 = &__block_literal_global_93;
        v42 = v15;
        v43 = self;
        dispatch_group_async(group, v17, v41);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v16;
      v18 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v38;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v37 + 1) + 8 * i);
            v23 = self->_queue;
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4;
            v33[3] = &unk_1E7A1CF70;
            v33[4] = self;
            v34 = v15;
            v35 = v22;
            v36 = &__block_literal_global_93;
            dispatch_group_async(group, v23, v33);
          }

          v19 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v19);
      }

      v8 = v26;
      v6 = v27;
    }
  }

  v24 = self->_queue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_103;
  v30[3] = &unk_1E7A1CB30;
  v25 = v7;
  v31 = v25;
  v32 = self;
  dispatch_group_notify(group, v24, v30);

  objc_autoreleasePoolPop(v8);
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AXMediaLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_cold_1();
  }

  v7 = [v4 pipelineMetric];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Evaluate %@", v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_97;
  v14[3] = &unk_1E7A1CEF8;
  v15 = v4;
  v16 = v5;
  v12 = v5;
  v13 = v4;
  [v7 measure:v11 execute:v14];
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) error];

  if (v4)
  {
    v5 = AXMediaLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_97_cold_1(a1, (a1 + 32), v5);
    }
  }

  else if ([*(a1 + 40) validateVisionKitSoftLinkSymbols])
  {
    [*(a1 + 40) evaluate:*(a1 + 32) metrics:v3];
  }
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_99(uint64_t a1)
{
  v2 = [*(a1 + 32) pipelineMetric];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_2;
  v8[3] = &unk_1E7A1CF20;
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *(a1 + 40);
  v7 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 measure:@"Create Image" execute:v8];
}

uint64_t __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEvaluationExclusivelyUsesVisionFramework:{objc_msgSend(*(a1 + 40), "_queue_activeEvaluationNodesExclusivelyUseVisionFramework:", *(a1 + 48))}];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v2 produceImage:v3];
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) imageRegistrationFilteringEnabled] || (v2 = objc_msgSend(*(a1 + 40), "imageRegistrationState"), v2 >= objc_msgSend(*(a1 + 32), "minimumImageRegistrationSignalLevel")))
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4_cold_2((a1 + 48));
    }

    v5 = [*(a1 + 40) auxiliaryDetectors];
    v6 = [v5 copy];

    while ([v6 count])
    {
      [*(a1 + 40) removeAllAuxiliaryDetectors];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(a1 + 56) + 16))();
            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      v12 = [*(a1 + 40) auxiliaryDetectors];
      v6 = [v12 copy];
    }
  }
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_103(uint64_t a1)
{
  v8 = [*(a1 + 32) result];
  if (([*(a1 + 40) disableResultLogging] & 1) == 0)
  {
    v2 = AXMediaLogResults();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

    if (v3)
    {
      [*(a1 + 40) _queue_logEvaluatedResult:v8];
    }
  }

  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v7 = [v4 error];
  [v5 _queue_handleEvaluatedContext:v4 result:v8 error:v7];
}

- (void)_queue_handleEvaluatedContext:(id)a3 result:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 didFinishProcessingContext];
  if ([(AXMVisionEngine *)self isCachingEnabled])
  {
    v11 = [v8 cacheKey];

    if (v11)
    {
      v12 = [(AXMVisionEngine *)self cache];
      v13 = [v8 cacheKey];
      [v12 setResult:v9 forKey:v13];
    }
  }

  v14 = [v9 features];
  v15 = [v14 count];

  if (v10)
  {
    v16 = AXMediaLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [AXMVisionEngine _queue_handleEvaluatedContext:result:error:];
    }

    v17 = [v8 resultHandlers];
    [(AXMVisionEngine *)self _invokeResultHandlers:v17 withError:v10];
LABEL_13:

    goto LABEL_14;
  }

  if (v15 > 0 || [v8 shouldCallCompletionHandlersForEmptyResultSet])
  {
    v18 = AXMediaLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [AXMVisionEngine _queue_handleEvaluatedContext:result:error:];
    }

    v17 = [v8 resultHandlers];
    [(AXMVisionEngine *)self _invokeResultHandlers:v17 withResult:v9];
    goto LABEL_13;
  }

LABEL_14:
  [(AXMTask *)self->_queue_currentTask markAsComplete:v10 == 0];
  queue_currentTask = self->_queue_currentTask;
  self->_queue_currentTask = 0;
}

- (NSArray)sourceNodes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AXMVisionEngine_sourceNodes__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__AXMVisionEngine_sourceNodes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)canAddSourceNode:(id)a3
{
  v3 = objc_opt_class();

  return [v3 isSupported];
}

- (BOOL)canAddSourceNodeClass:(Class)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)a3 isSupported];
}

- (void)addSourceNode:(id)a3
{
  v4 = a3;
  if ([(AXMVisionEngine *)self canAddSourceNode:v4])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__AXMVisionEngine_addSourceNode___block_invoke;
    v7[3] = &unk_1E7A1CB30;
    v8 = v4;
    v9 = self;
    dispatch_sync(queue, v7);
    v6 = v8;
  }

  else
  {
    v6 = AXMediaLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionEngine addSourceNode:];
    }
  }
}

uint64_t __33__AXMVisionEngine_addSourceNode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isConnected])
  {
    v2 = AXMediaLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __33__AXMVisionEngine_addSourceNode___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) connect:*(a1 + 40)];
  return [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
}

- (void)insertSourceNode:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  if ([(AXMVisionEngine *)self canAddSourceNode:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__AXMVisionEngine_insertSourceNode_atIndex___block_invoke;
    block[3] = &unk_1E7A1CF98;
    v10 = v6;
    v11 = self;
    v12 = a4;
    dispatch_sync(queue, block);
    v8 = v10;
  }

  else
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionEngine addSourceNode:];
    }
  }
}

uint64_t __44__AXMVisionEngine_insertSourceNode_atIndex___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isConnected])
  {
    v2 = AXMediaLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __33__AXMVisionEngine_addSourceNode___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) connect:*(a1 + 40)];
  return [*(*(a1 + 40) + 16) insertObject:*(a1 + 32) atIndex:*(a1 + 48)];
}

- (void)removeSourceNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__AXMVisionEngine_removeSourceNode___block_invoke;
  v7[3] = &unk_1E7A1CB30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __36__AXMVisionEngine_removeSourceNode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) disconnect];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 removeObject:v2];
}

- (void)removeAllSourceNodes
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AXMVisionEngine_removeAllSourceNodes__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __39__AXMVisionEngine_removeAllSourceNodes__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) disconnect];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (NSArray)evaluationNodes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AXMVisionEngine_evaluationNodes__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__AXMVisionEngine_evaluationNodes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)canAddEvaluationNode:(id)a3
{
  v3 = objc_opt_class();

  return [v3 isSupported];
}

- (BOOL)canAddEvaluationNodeClass:(Class)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)a3 isSupported];
}

- (void)addEvaluationNode:(id)a3
{
  v4 = a3;
  if ([(AXMVisionEngine *)self canAddEvaluationNode:v4])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__AXMVisionEngine_addEvaluationNode___block_invoke;
    v7[3] = &unk_1E7A1CB30;
    v8 = v4;
    v9 = self;
    dispatch_sync(queue, v7);
    v6 = v8;
  }

  else
  {
    v6 = AXMediaLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXMVisionEngine addEvaluationNode:];
    }
  }
}

uint64_t __37__AXMVisionEngine_addEvaluationNode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isConnected])
  {
    v2 = AXMediaLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __33__AXMVisionEngine_addSourceNode___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) connect:*(a1 + 40)];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  if (isKindOfClass)
  {
    return [v5 insertObject:v4 atIndex:0];
  }

  else
  {
    return [v5 addObject:v4];
  }
}

- (void)insertEvaluationNode:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  if ([(AXMVisionEngine *)self canAddEvaluationNode:v6])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AXMVisionEngine_insertEvaluationNode_atIndex___block_invoke;
    block[3] = &unk_1E7A1CF98;
    v10 = v6;
    v11 = self;
    v12 = a4;
    dispatch_sync(queue, block);
    v8 = v10;
  }

  else
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionEngine insertEvaluationNode:atIndex:];
    }
  }
}

uint64_t __48__AXMVisionEngine_insertEvaluationNode_atIndex___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isConnected])
  {
    v2 = AXMediaLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __33__AXMVisionEngine_addSourceNode___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) connect:*(a1 + 40)];
  return [*(*(a1 + 40) + 24) insertObject:*(a1 + 32) atIndex:*(a1 + 48)];
}

- (void)removeEvaluationNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AXMVisionEngine_removeEvaluationNode___block_invoke;
  v7[3] = &unk_1E7A1CB30;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __40__AXMVisionEngine_removeEvaluationNode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) disconnect];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);

  return [v3 removeObject:v2];
}

- (void)removeAllEvaluationNodes
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXMVisionEngine_removeAllEvaluationNodes__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __43__AXMVisionEngine_removeAllEvaluationNodes__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) disconnect];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 24) removeAllObjects];
}

- (void)addSourceNodes:(id)a3 evaluationNodes:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(AXMVisionEngine *)self addSourceNode:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AXMVisionEngine *)self addEvaluationNode:*(*(&v17 + 1) + 8 * v16++), v17];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (id)sourceNodeWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AXMVisionEngine_sourceNodeWithIdentifier___block_invoke;
  block[3] = &unk_1E7A1CFC0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__AXMVisionEngine_sourceNodeWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sourceNodeWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)evaluationNodeWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AXMVisionEngine_evaluationNodeWithIdentifier___block_invoke;
  block[3] = &unk_1E7A1CFC0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__AXMVisionEngine_evaluationNodeWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_evaluationNodeWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_sourceNodeWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_queue_sourceNodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_queue_evaluationNodeWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_queue_evaluationNodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)makeUniqueIdentifierForNode:(Class)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXMVisionEngine_makeUniqueIdentifierForNode___block_invoke;
  block[3] = &unk_1E7A1CFE8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__AXMVisionEngine_makeUniqueIdentifierForNode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_makeUniqueIdentifierForNode:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_makeUniqueIdentifierForNode:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [v4 stringByReplacingOccurrencesOfString:@"AXM" withString:&stru_1F23EA908];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"Node" withString:&stru_1F23EA908];

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v7;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v6, v8];

    ++v8;
  }

  while ([(AXMVisionEngine *)self _queue_nodeIdentifierExists:v7]);

  return v7;
}

- (BOOL)nodeIdentifierExists:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXMVisionEngine_nodeIdentifierExists___block_invoke;
  block[3] = &unk_1E7A1CFC0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __40__AXMVisionEngine_nodeIdentifierExists___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_nodeIdentifierExists:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_nodeIdentifierExists:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_queue_sourceNodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v22 + 1) + 8 * v9) identifier];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        goto LABEL_18;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_queue_evaluationNodes;
  v12 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = *v19;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = [*(*(&v18 + 1) + 8 * v14) identifier];
      v16 = [v15 isEqualToString:v4];

      if (v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v12) = 1;
  }

LABEL_19:

  return v12;
}

- (id)resultHandlers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AXMVisionEngine_resultHandlers__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__AXMVisionEngine_resultHandlers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addResultHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__AXMVisionEngine_addResultHandler___block_invoke;
    v7[3] = &unk_1E7A1C678;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)_queue_addResultHandler:(id)a3
{
  queue_resultHandlers = self->_queue_resultHandlers;
  v4 = MEMORY[0x1B2700900](a3, a2);
  [(NSMutableArray *)queue_resultHandlers addObject:v4];
}

- (void)removeResultHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__AXMVisionEngine_removeResultHandler___block_invoke;
    v7[3] = &unk_1E7A1C678;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)_queue_removeResultHandler:(id)a3
{
  queue_resultHandlers = self->_queue_resultHandlers;
  v4 = MEMORY[0x1B2700900](a3, a2);
  [(NSMutableArray *)queue_resultHandlers removeObject:v4];
}

- (void)removeAllResultHandlers
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AXMVisionEngine_removeAllResultHandlers__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invokeResultHandlers:(id)a3 withError:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_invokeResultHandlers:(id)a3 withResult:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isCachingEnabled
{
  v2 = [(AXMVisionEngine *)self cache];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)cacheSize
{
  v2 = [(AXMVisionEngine *)self cache];
  v3 = [v2 cacheSize];

  return v3;
}

- (void)enableResultCachingWithCacheSize:(int64_t)a3
{
  v4 = [[AXMVisionEngineCache alloc] initWithCacheSize:a3];
  [(AXMVisionEngine *)self setCache:v4];
}

- (void)updateEngineConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(2, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__AXMVisionEngine_updateEngineConfiguration___block_invoke;
    v6[3] = &unk_1E7A1D010;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __45__AXMVisionEngine_updateEngineConfiguration___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AXMVisionEngine_updateEngineConfiguration___block_invoke_2;
  block[3] = &unk_1E7A1CCB8;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __45__AXMVisionEngine_updateEngineConfiguration___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AXMVisionEngine_updateEngineConfiguration___block_invoke_3;
  block[3] = &unk_1E7A1CCB8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__AXMVisionEngine_updateEngineConfiguration___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VisionEngineConfigurationDidChange" object:*(a1 + 32)];
}

- (void)prewarmEngine
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_121);
}

- (void)purgeResources:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [&__block_literal_global_123 copy];
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AXMVisionEngine_purgeResources___block_invoke_2;
  v7[3] = &unk_1E7A1C678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __34__AXMVisionEngine_purgeResources___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v3)
  {
    v4 = *v29;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v28 + 1) + 8 * i) requiresVisionFramework])
        {

          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v6 = getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_ptr;
          v40 = getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_ptr;
          if (!getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_ptr)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_block_invoke;
            v35 = &unk_1E7A1C700;
            v36 = &v37;
            v7 = VisionLibrary_3();
            v8 = dlsym(v7, "VNRequestHandlerCleanupOption_AllPipelines");
            *(v36[1] + 24) = v8;
            getVNRequestHandlerCleanupOption_AllPipelinesSymbolLoc_ptr = *(v36[1] + 24);
            v6 = v38[3];
          }

          _Block_object_dispose(&v37, 8);
          if (!v6)
          {
            goto LABEL_25;
          }

          v9 = *v6;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v10 = getVNCleanupLevel_CompleteSymbolLoc_ptr;
          v40 = getVNCleanupLevel_CompleteSymbolLoc_ptr;
          v41[0] = v9;
          if (!getVNCleanupLevel_CompleteSymbolLoc_ptr)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getVNCleanupLevel_CompleteSymbolLoc_block_invoke;
            v35 = &unk_1E7A1C700;
            v36 = &v37;
            v11 = VisionLibrary_3();
            v12 = dlsym(v11, "VNCleanupLevel_Complete");
            *(v36[1] + 24) = v12;
            getVNCleanupLevel_CompleteSymbolLoc_ptr = *(v36[1] + 24);
            v10 = v38[3];
          }

          _Block_object_dispose(&v37, 8);
          if (!v10)
          {
            goto LABEL_25;
          }

          v13 = *v10;
          v42 = v13;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v14 = getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_ptr;
          v40 = getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_ptr;
          if (!getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_ptr)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_block_invoke;
            v35 = &unk_1E7A1C700;
            v36 = &v37;
            v15 = VisionLibrary_3();
            v16 = dlsym(v15, "VNRequestHandlerCleanupOption_ImageBuffers");
            *(v36[1] + 24) = v16;
            getVNRequestHandlerCleanupOption_ImageBuffersSymbolLoc_ptr = *(v36[1] + 24);
            v14 = v38[3];
          }

          _Block_object_dispose(&v37, 8);
          if (!v14)
          {
            goto LABEL_25;
          }

          v17 = *v14;
          v41[1] = v17;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v18 = getVNCleanupPurgeAllSymbolLoc_ptr;
          v40 = getVNCleanupPurgeAllSymbolLoc_ptr;
          if (!getVNCleanupPurgeAllSymbolLoc_ptr)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getVNCleanupPurgeAllSymbolLoc_block_invoke;
            v35 = &unk_1E7A1C700;
            v36 = &v37;
            v19 = VisionLibrary_3();
            v20 = dlsym(v19, "VNCleanupPurgeAll");
            *(v36[1] + 24) = v20;
            getVNCleanupPurgeAllSymbolLoc_ptr = *(v36[1] + 24);
            v18 = v38[3];
          }

          _Block_object_dispose(&v37, 8);
          if (!v18)
          {
LABEL_25:
            __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
            __break(1u);
          }

          v43 = *v18;
          v21 = MEMORY[0x1E695DF20];
          v22 = v43;
          v23 = [v21 dictionaryWithObjects:&v42 forKeys:v41 count:2];

          v37 = 0;
          v38 = &v37;
          v39 = 0x2050000000;
          v24 = getVNImageRequestHandlerClass_softClass;
          v40 = getVNImageRequestHandlerClass_softClass;
          if (!getVNImageRequestHandlerClass_softClass)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getVNImageRequestHandlerClass_block_invoke;
            v35 = &unk_1E7A1C700;
            v36 = &v37;
            __getVNImageRequestHandlerClass_block_invoke(&v32);
            v24 = v38[3];
          }

          v25 = v24;
          _Block_object_dispose(&v37, 8);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __34__AXMVisionEngine_purgeResources___block_invoke_3;
          v26[3] = &unk_1E7A1D038;
          v27 = *(a1 + 40);
          [v24 requestForcedCleanupWithOptions:v23 completion:v26];

          return;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v28 objects:v44 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)axmDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_prioritySchedulingEnabled)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  maximumQueueSize = self->_maximumQueueSize;
  thresholdPriority = self->_thresholdPriority;
  identifier = self->_identifier;
  v10 = [(AXMVisionEngine *)self cacheSize];
  if ([(AXMVisionEngine *)self areDiagnosticsEnabled])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [v3 stringWithFormat:@"%@<%p>: ID:'%@' [PriorSched:%@ threshhold:%lu] maxQueueSize:%ld cacheSize:%ld metrics:%@", v5, self, identifier, v6, thresholdPriority, maximumQueueSize, v10, v11];

  return v12;
}

- (void)axmAppendRecursiveDescription:(id)a3 withIndentation:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AD60] axmIndentationString:a4];
  v8 = [(AXMVisionEngine *)self axmDescription];
  [v6 appendFormat:@"%@%@\n", v7, v8];

  v9 = [(AXMVisionEngine *)self sourceNodes];
  if ([v9 count])
  {
    [v6 appendFormat:@"%@Source Nodes:\n", v7];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v25 + 1) + 8 * v14++) axmAppendRecursiveDescription:v6 withIndentation:a4 + 1];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }
  }

  v15 = [(AXMVisionEngine *)self evaluationNodes];
  if ([v15 count])
  {
    [v6 appendFormat:@"%@Evaluation Nodes:\n", v7];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * v20++) axmAppendRecursiveDescription:v6 withIndentation:a4 + 1];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }
  }
}

- (void)dispatcher:(id)a3 handleTask:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__AXMVisionEngine_dispatcher_handleTask___block_invoke;
  v8[3] = &unk_1E7A1CB30;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __41__AXMVisionEngine_dispatcher_handleTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = [v3 source];
  v5 = [v3 context];
  v6 = [*(a1 + 40) sequenceRequestManager];
  [v5 setSequenceRequestManager:v6];

  [v5 addResultHandlers:*(*(a1 + 40) + 40)];
  v7 = [v5 resultHandlers];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [*(a1 + 40) _queue_shouldContinueWithoutResultHandlers:v5];

    if ((v8 & 1) == 0)
    {
      [v3 markAsComplete:0];
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 40);
  if (*(v9 + 56))
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __41__AXMVisionEngine_dispatcher_handleTask___block_invoke_cold_1();
    }

    v9 = *(a1 + 40);
  }

  objc_storeStrong((v9 + 56), v2);
  [v5 willBeginProcessingContext];
  if ([v4 shouldProcessRemotely] && (AXMIsRunningInServiceProcess() & 1) == 0)
  {
    [*(a1 + 40) _queue_remotelyEvaluateWithSource:v4 context:v5];
  }

  else
  {
    [*(a1 + 40) _queue_evaluateWithSource:v4 context:v5];
  }

LABEL_13:
}

- (void)axMediaUtilitiesService:(id)a3 eventOccurred:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AXMVisionEngine_axMediaUtilitiesService_eventOccurred___block_invoke;
  v5[3] = &unk_1E7A1D060;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

void __57__AXMVisionEngine_axMediaUtilitiesService_eventOccurred___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_DEFAULT, "AXMVisionEngine: event occurred: %d", v9, 8u);
  }

  if ((*(a1 + 40) - 1) <= 2)
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1AE37B000, v4, OS_LOG_TYPE_DEFAULT, "AXMVisionEngine: service indicated it went invalid. clearing client-side tasks", v9, 2u);
    }

    v5 = [*(a1 + 32) taskDispatcher];
    v6 = [v5 unscheduleAllTasks];

    [*(*(a1 + 32) + 56) markAsComplete:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;
  }
}

- (void)triggerWithSource:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    if (v6)
    {
      if (([v7 sourceProvidesResults] & 1) == 0)
      {
        v9 = [(AXMVisionEngine *)self maximumQueueSize];
        v10 = [(AXMVisionEngine *)self taskDispatcher];
        v11 = v10;
        if (v9)
        {
          v12 = [v10 count];
          v13 = [(AXMVisionEngine *)self maximumQueueSize];

          if (v12 >= v13)
          {
            v14 = AXMediaLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v35 = [(AXMVisionEngine *)self maximumQueueSize];
              _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "AXMVisionEngine: ignoring task since queue is full (maximumQueueSize = %ld)", buf, 0xCu);
            }

            [(AXMVisionEngine *)self _invokeFullQueueResultHandlersForContext:v7];
            goto LABEL_29;
          }
        }

        else
        {
          v28 = v7;
          v29 = v6;
          v17 = [v10 unscheduleAllTasks];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v31;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v30 + 1) + 8 * i);
                v24 = [v23 context];
                if ([v24 sourceProvidesResults])
                {
                  v25 = [(AXMVisionEngine *)self taskDispatcher];
                  [v25 scheduleTask:v23];
                }

                else
                {
                  v26 = AXMediaLogCommon();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_DEFAULT, "AXMVisionEngine: canceling queued task to replace with newer incoming task", buf, 2u);
                  }

                  v25 = [v23 context];

                  [(AXMVisionEngine *)self _invokeFullQueueResultHandlersForContext:v25];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
            }

            while (v20);
          }

          v7 = v28;
          v6 = v29;
        }
      }

      v16 = [_AXMVisionEngineAnalysisTask itemWithSource:v6 context:v7];
      v27 = [(AXMVisionEngine *)self taskDispatcher];
      [v27 scheduleTask:v16];

LABEL_28:
      goto LABEL_29;
    }

LABEL_12:
    v16 = AXMediaLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionEngine triggerWithSource:context:];
    }

    goto LABEL_28;
  }

  v15 = AXMediaLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [AXMVisionEngine triggerWithSource:context:];
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_29:
  objc_autoreleasePoolPop(v8);
}

- (void)_invokeFullQueueResultHandlersForContext:(id)a3
{
  v14 = a3;
  if ([v14 shouldCallCompletionHandlersForEngineBusyError])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v14 resultHandlers];
    [v4 addObjectsFromArray:v5];

    v12 = _AXMMakeError(1, @"Engine queue is at capacity", v6, v7, v8, v9, v10, v11, v13);
    [(AXMVisionEngine *)self _invokeResultHandlers:v4 withError:v12];
  }
}

- (BOOL)engineWillAcceptTiggerWithSource:(id)a3
{
  v4 = [(AXMVisionEngine *)self taskDispatcher];
  v5 = [v4 count];
  v6 = v5 < [(AXMVisionEngine *)self maximumQueueSize]|| [(AXMVisionEngine *)self maximumQueueSize]== 0;

  return v6;
}

void __61__AXMVisionEngine__queue_remotelyEvaluateWithSource_context___block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1AE37B000, v1, OS_LOG_TYPE_ERROR, "Recived error for remote evaluation: %@\nSource: %@", v2, 0x16u);
}

- (void)_queue_logEvaluatedResult:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 features];
  [v1 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_queue_logEvaluatedResult:(void *)a1 .cold.3(void *a1)
{
  v2 = [a1 detectedFeatureDescriptionWithOptions:MEMORY[0x1E695E0F8]];
  v3 = [a1 detectedTextDescription];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_cold_1()
{
  v0 = [objc_opt_class() title];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_97_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [*a2 error];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Will not run detector '%@' due to previous error set in context: %@", v8, 0x16u);
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __53__AXMVisionEngine__queue_evaluateWithSource_context___block_invoke_4_cold_2(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_queue_handleEvaluatedContext:result:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_DEBUG, "Invoking remote result handler for error: %@", v1, 0xCu);
}

- (void)addEvaluationNode:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_ERROR, "Cannot add evaluation node. %@", v1, 0xCu);
}

@end