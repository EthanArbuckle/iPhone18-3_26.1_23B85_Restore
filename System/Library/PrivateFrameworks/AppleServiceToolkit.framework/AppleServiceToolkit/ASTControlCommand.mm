@interface ASTControlCommand
- (ASTControlCommand)init;
- (ASTControlCommand)initWithCoder:(id)coder;
- (BOOL)allActionsFinished;
- (BOOL)reset;
- (id)completionArray;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)requestData;
- (id)requestWithData:(id)data session:(id)session queue:(id)queue;
- (void)encodeWithCoder:(id)coder;
- (void)performActionsWithSession:(id)session queue:(id)queue;
- (void)updateAction:(id)action;
@end

@implementation ASTControlCommand

- (ASTControlCommand)init
{
  v6.receiver = self;
  v6.super_class = ASTControlCommand;
  v2 = [(ASTControlCommand *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    actionStorage = v2->_actionStorage;
    v2->_actionStorage = dictionary;

    *&v2->_forceSequential = 0;
  }

  return v2;
}

- (id)requestWithData:(id)data session:(id)session queue:(id)queue
{
  v57 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sessionCopy = session;
  queue = queue;
  v40 = +[ASTRequest request];
  v8 = [dataCopy objectForKeyedSubscript:@"forceSequential"];

  if (v8)
  {
    v9 = [dataCopy objectForKeyedSubscript:@"forceSequential"];
    -[ASTControlCommand setForceSequential:](self, "setForceSequential:", [v9 BOOLValue]);
  }

  v10 = [dataCopy objectForKeyedSubscript:@"haltOnError"];

  if (v10)
  {
    v11 = [dataCopy objectForKeyedSubscript:@"haltOnError"];
    -[ASTControlCommand setHaltOnError:](self, "setHaltOnError:", [v11 BOOLValue]);
  }

  [dataCopy objectForKeyedSubscript:@"actions"];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v12 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v12)
  {
    v13 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"action"];

        if (v16)
        {
          v17 = [ASTAction alloc];
          v18 = [v15 objectForKeyedSubscript:@"action"];
          v19 = [(ASTAction *)v17 initWithAction:v18 data:v15];

          actionStorage = [(ASTControlCommand *)self actionStorage];
          objc_sync_enter(actionStorage);
          actionStorage2 = [(ASTControlCommand *)self actionStorage];
          identifier = [(ASTAction *)v19 identifier];
          [actionStorage2 setObject:v19 forKeyedSubscript:identifier];

          objc_sync_exit(actionStorage);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v12);
  }

  actionStorage3 = [(ASTControlCommand *)self actionStorage];
  v24 = [actionStorage3 count] == 0;

  if (v24)
  {
    v27 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ASTControlCommand requestWithData:v27 session:? queue:?];
    }

    [v40 setClientStatus:8];
  }

  else
  {
    [v40 setClientStatus:13];
    requestData = [(ASTControlCommand *)self requestData];
    [v40 setData:requestData];

    delegate = [sessionCopy delegate];
    LOBYTE(requestData) = objc_opt_respondsToSelector();

    if (requestData)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__ASTControlCommand_requestWithData_session_queue___block_invoke;
      block[3] = &unk_278CBCF18;
      block[4] = self;
      v48 = sessionCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v28 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ASTControlCommand requestWithData:v28 session:? queue:?];
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      actionStorage4 = [(ASTControlCommand *)self actionStorage];
      allValues = [actionStorage4 allValues];

      v31 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v31)
      {
        v32 = *v44;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v44 != v32)
            {
              objc_enumerationMutation(allValues);
            }

            v34 = *(*(&v43 + 1) + 8 * j);
            v35 = ASTLogHandleForCategory(0);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [(ASTControlCommand *)v53 requestWithData:v34 session:&v54 queue:v35];
            }

            [v34 setResultCode:1];
            [v34 setFinished:1];
          }

          v31 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v31);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v40;
}

void __51__ASTControlCommand_requestWithData_session_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionStorage];
  v3 = [v2 count];

  if (v3)
  {
    v7 = [*(a1 + 40) delegate];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) actionStorage];
    v6 = [v5 allValues];
    [v7 session:v4 performActions:v6 sequentially:objc_msgSend(*(a1 + 32) stopOnError:{"forceSequential"), objc_msgSend(*(a1 + 32), "haltOnError")}];
  }
}

- (void)performActionsWithSession:(id)session queue:(id)queue
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  actionStorage = [(ASTControlCommand *)self actionStorage];
  objc_sync_enter(actionStorage);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  actionStorage2 = [(ASTControlCommand *)self actionStorage];
  allValues = [actionStorage2 allValues];

  v12 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (([v15 isFinished] & 1) == 0)
        {
          [array addObject:v15];
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  objc_sync_exit(actionStorage);
  if ([array count])
  {
    delegate = [sessionCopy delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__ASTControlCommand_performActionsWithSession_queue___block_invoke;
      block[3] = &unk_278CBCF40;
      v20 = sessionCopy;
      v21 = array;
      selfCopy = self;
      dispatch_async(queueCopy, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __53__ASTControlCommand_performActionsWithSession_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 session:*(a1 + 32) performActions:*(a1 + 40) sequentially:objc_msgSend(*(a1 + 48) stopOnError:{"forceSequential"), objc_msgSend(*(a1 + 48), "haltOnError")}];
}

- (id)requestData
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  actionStorage = [(ASTControlCommand *)self actionStorage];
  objc_sync_enter(actionStorage);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  actionStorage2 = [(ASTControlCommand *)self actionStorage];
  allValues = [actionStorage2 allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        dictionaryValue = [*(*(&v14 + 1) + 8 * i) dictionaryValue];
        [array addObject:dictionaryValue];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(actionStorage);
  v18 = @"actions";
  v19 = array;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateAction:(id)action
{
  actionCopy = action;
  actionStorage = [(ASTControlCommand *)self actionStorage];
  objc_sync_enter(actionStorage);
  actionStorage2 = [(ASTControlCommand *)self actionStorage];
  identifier = [actionCopy identifier];
  [actionStorage2 setObject:actionCopy forKeyedSubscript:identifier];

  objc_sync_exit(actionStorage);
}

- (BOOL)allActionsFinished
{
  v17 = *MEMORY[0x277D85DE8];
  actionStorage = [(ASTControlCommand *)self actionStorage];
  objc_sync_enter(actionStorage);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionStorage2 = [(ASTControlCommand *)self actionStorage];
  allValues = [actionStorage2 allValues];

  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        if (([*(*(&v12 + 1) + 8 * i) isFinished] & 1) == 0)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  objc_sync_exit(actionStorage);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)completionArray
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  actionStorage = [(ASTControlCommand *)self actionStorage];
  objc_sync_enter(actionStorage);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  actionStorage2 = [(ASTControlCommand *)self actionStorage];
  allValues = [actionStorage2 allValues];

  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        completion = [v10 completion];

        if (completion)
        {
          completion2 = [v10 completion];
          v13 = MEMORY[0x245CD5130]();
          [array addObject:v13];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(actionStorage);
  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)reset
{
  actionStorage = [(ASTControlCommand *)self actionStorage];
  v4 = [actionStorage count];

  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ASTControlCommand *)self setActionStorage:dictionary];

    [(ASTControlCommand *)self setForceSequential:0];
    [(ASTControlCommand *)self setHaltOnError:0];
  }

  return v4 != 0;
}

- (ASTControlCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTControlCommand *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"actionStorage"];
    actionStorage = v5->_actionStorage;
    v5->_actionStorage = v10;

    v5->_forceSequential = [coderCopy decodeBoolForKey:@"forceSequential"];
    v5->_haltOnError = [coderCopy decodeBoolForKey:@"haltOnError"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionStorage = [(ASTControlCommand *)self actionStorage];
  [coderCopy encodeObject:actionStorage forKey:@"actionStorage"];

  [coderCopy encodeBool:-[ASTControlCommand forceSequential](self forKey:{"forceSequential"), @"forceSequential"}];
  [coderCopy encodeBool:-[ASTControlCommand haltOnError](self forKey:{"haltOnError"), @"haltOnError"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableDictionary *)self->_actionStorage copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_forceSequential;
  *(v5 + 9) = self->_haltOnError;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  forceSequential = [(ASTControlCommand *)self forceSequential];
  haltOnError = [(ASTControlCommand *)self haltOnError];
  actionStorage = [(ASTControlCommand *)self actionStorage];
  v9 = [v3 stringWithFormat:@"<%@: %p forceSequential = %d, haltOnError = %d, actionStorage = %@>", v5, self, forceSequential, haltOnError, actionStorage];;

  return v9;
}

- (void)requestWithData:(void *)a3 session:(NSObject *)a4 queue:.cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 action];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_240F3C000, a4, OS_LOG_TYPE_ERROR, "Action %@ was not handled by client", a1, 0xCu);
}

@end