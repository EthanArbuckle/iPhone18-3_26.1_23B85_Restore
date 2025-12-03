@interface NEFilterDataSavedMessageHandler
- (void)enqueueWithFlow:(void *)flow context:;
- (void)executeVerdictHandlerWithFlow:(void *)flow verdict:(void *)verdict context:;
- (void)executeWithFlow:(void *)flow context:;
- (void)initWithGetVerdictBlock:(void *)block handleVerdictBlock:;
@end

@implementation NEFilterDataSavedMessageHandler

- (void)initWithGetVerdictBlock:(void *)block handleVerdictBlock:
{
  v5 = a2;
  blockCopy = block;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = NEFilterDataSavedMessageHandler;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = _Block_copy(v5);
      v8 = self[1];
      self[1] = v7;

      v9 = _Block_copy(blockCopy);
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

- (void)enqueueWithFlow:(void *)flow context:
{
  self = a2;
  flowCopy = flow;
  if (self)
  {
    Property = self;
    if (self)
    {
      Property = objc_getProperty(self, v5, 136, 1);
    }

    v8 = Property;
    v9 = [v8 count];

    if (v9)
    {
      selfCopy = self;
      if (self)
      {
        selfCopy = objc_getProperty(self, v10, 136, 1);
      }

      v12 = selfCopy;
      [v12 addObject:self];
    }

    else
    {
      [(NEFilterDataSavedMessageHandler *)self executeWithFlow:flowCopy context:?];
    }
  }
}

- (void)executeWithFlow:(void *)flow context:
{
  self = a2;
  flowCopy = flow;
  if (self)
  {
    v6 = (*(*(self + 8) + 16))();
    v8 = v6;
    if (v6)
    {
      if (*(v6 + 13))
      {
        Property = self;
        if (self)
        {
          if (self[11])
          {
            v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Flow is already paused" userInfo:0];
            objc_exception_throw(v19);
          }

          self[11] = 1;
          Property = objc_getProperty(self, v7, 136, 1);
        }

        v10 = Property;

        if (v10)
        {
          selfCopy = self;
          if (self)
          {
            selfCopy = objc_getProperty(self, v11, 136, 1);
          }

          v13 = selfCopy;
          [v13 insertObject:self atIndex:0];
        }

        else
        {
          v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
          if (self)
          {
            objc_setProperty_atomic(self, v17, v18, 136);
          }
        }

        goto LABEL_14;
      }

      selfCopy4 = self;
      selfCopy5 = self;
      v16 = v8;
    }

    else
    {
      selfCopy4 = self;
      selfCopy5 = self;
      v16 = 0;
    }

    [(NEFilterDataSavedMessageHandler *)selfCopy4 executeVerdictHandlerWithFlow:selfCopy5 verdict:v16 context:flowCopy];
LABEL_14:
  }
}

- (void)executeVerdictHandlerWithFlow:(void *)flow verdict:(void *)verdict context:
{
  v7 = a2;
  flowCopy = flow;
  verdictCopy = verdict;
  v10 = verdictCopy;
  if (self)
  {
    if (verdictCopy && flowCopy && (*(verdictCopy + 104) & 1) != 0 && [flowCopy needRules])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__NEFilterDataSavedMessageHandler_executeVerdictHandlerWithFlow_verdict_context___block_invoke;
      v11[3] = &unk_1E7F076C8;
      v12 = v7;
      v13 = v10;
      selfCopy = self;
      v15 = flowCopy;
      [v13 fetchCurrentRulesForFlow:v12 completionHandler:v11];
    }

    else
    {
      (*(*(self + 16) + 16))();
    }
  }
}

void __81__NEFilterDataSavedMessageHandler_executeVerdictHandlerWithFlow_verdict_context___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v23 = [*(a1 + 32) identifierString];
      v24 = 138412546;
      v25 = v23;
      v26 = 2112;
      v27 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Control verdict for flow %@: %@", &v24, 0x16u);
    }
  }

  if (!v3)
  {
    v10 = [*(a1 + 40) _principalObject];
    [v10 handleRulesChanged];

LABEL_13:
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(v12 + 16))();
    goto LABEL_16;
  }

  if (v3[72])
  {
    v5 = [*(a1 + 40) _principalObject];
    [v5 handleRulesChanged];
  }

  if (v3[73])
  {
    goto LABEL_13;
  }

  v6 = [v3 drop];
  v7 = *(a1 + 56);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v6)
  {
    if (isKindOfClass)
    {
      v18 = NEFilterNewFlowVerdict;
    }

    else
    {
      v20 = *(a1 + 56);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = NEFilterDataVerdict;
      }

      else
      {
        v22 = *(a1 + 56);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_32;
        }

        v18 = NEFilterRemediationVerdict;
      }
    }

    v13 = [(__objc2_class *)v18 allowVerdict];
    goto LABEL_16;
  }

  if (isKindOfClass)
  {
    v9 = NEFilterNewFlowVerdict;
LABEL_28:
    v13 = [(__objc2_class *)v9 dropVerdict];
LABEL_16:
    v14 = v13;
    goto LABEL_17;
  }

  v19 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = NEFilterDataVerdict;
    goto LABEL_28;
  }

  v21 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = NEFilterRemediationVerdict;
    goto LABEL_28;
  }

LABEL_32:
  v14 = 0;
LABEL_17:
  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(v15 + 16);
  }

  else
  {
    v16 = 0;
  }

  (*(v16 + 16))(v16, v14);

  v17 = *MEMORY[0x1E69E9840];
}

@end