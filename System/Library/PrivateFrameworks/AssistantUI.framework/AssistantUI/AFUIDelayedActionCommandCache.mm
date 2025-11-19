@interface AFUIDelayedActionCommandCache
- (AFUIDelayedActionCommandCache)init;
- (id)_commandHandler;
- (void)_invalidateDelayedActionTimer:(id)a3 withKey:(id)a4;
- (void)_performCommandsWithDelayedActionCommand:(id)a3;
- (void)_performDelayedActionCommandTimerAction:(id)a3;
- (void)cancelDelayedActionWithDelayedActionCancelCommand:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)enqueueDelayedActionCommand:(id)a3 completion:(id)a4;
- (void)invalidatePendingCommands;
- (void)performDismissalCommands;
@end

@implementation AFUIDelayedActionCommandCache

- (AFUIDelayedActionCommandCache)init
{
  v8.receiver = self;
  v8.super_class = AFUIDelayedActionCommandCache;
  v2 = [(AFUIDelayedActionCommandCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delayedActionTimersByIdentifier = v2->_delayedActionTimersByIdentifier;
    v2->_delayedActionTimersByIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dismissalDelayedActionCommandsByIdentifier = v2->_dismissalDelayedActionCommandsByIdentifier;
    v2->_dismissalDelayedActionCommandsByIdentifier = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(AFUIDelayedActionCommandCache *)self invalidatePendingCommands];
  v3.receiver = self;
  v3.super_class = AFUIDelayedActionCommandCache;
  [(AFUIDelayedActionCommandCache *)&v3 dealloc];
}

- (void)enqueueDelayedActionCommand:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[AFUIDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = [v6 aceId];
  v11 = [v6 timerValue];

  if (v11)
  {
    v12 = [v6 timerValue];
    [v12 doubleValue];
    v14 = v13 / 1000.0;

    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v6 commands];
      *buf = 136315906;
      v34 = "[AFUIDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
      v35 = 2112;
      v36 = v6;
      v37 = 2048;
      v38 = v14;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s Enqueue delayed action command: %@, delay: %f, commands: %@", buf, 0x2Au);
    }

    v18 = objc_alloc(MEMORY[0x277CEEEA8]);
    v19 = [MEMORY[0x277CCAC38] processInfo];
    v20 = [v19 processIdentifier];
    v21 = MEMORY[0x277CCACA8];
    v22 = [v6 aceId];
    v23 = [v21 stringWithFormat:@"SiriDelayedActionCommandAssertion-%@", v22];
    v24 = [v18 initWithPID:v20 flags:1 reason:4 name:v23 withHandler:0];

    v25 = MEMORY[0x277CBEBB8];
    v26 = [[_AFUIAssertingDelayedActionCommand alloc] initWithCommand:v6 assertion:v24];
    v27 = [v25 scheduledTimerWithTimeInterval:self target:sel__performDelayedActionCommandTimerAction_ selector:v26 userInfo:0 repeats:v14];

    [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier setObject:v27 forKey:v10];
  }

  else
  {
    v28 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [v6 commands];
      *buf = 136315650;
      v34 = "[AFUIDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = *&v30;
      _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s Enqueue dismissal action command: %@, commands: %@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier setObject:v6 forKey:v10];
  }

  v31 = objc_alloc_init(MEMORY[0x277D47218]);
  v32 = [v6 aceId];
  [v31 setRefId:v32];

  if (v7)
  {
    v7[2](v7, v31);
  }
}

- (void)cancelDelayedActionWithDelayedActionCancelCommand:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[AFUIDelayedActionCommandCache cancelDelayedActionWithDelayedActionCancelCommand:completion:]";
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  v9 = [v6 delayedActionAceId];
  v10 = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier objectForKey:v9];
  if (v10)
  {
    [(AFUIDelayedActionCommandCache *)self _invalidateDelayedActionTimer:v10 withKey:v9];
    v11 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier objectForKey:v9];
    if (v12)
    {
      [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier removeObjectForKey:v9];
      v13 = 0x277D47218;
    }

    else
    {
      v13 = 0x277D47208;
    }

    v11 = objc_alloc_init(*v13);
  }

  v14 = [v6 aceId];
  [v11 setRefId:v14];

  if (v7)
  {
    v7[2](v7, v11);
  }
}

- (void)_performDelayedActionCommandTimerAction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[AFUIDelayedActionCommandCache _performDelayedActionCommandTimerAction:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  v7 = [v4 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 command];
    [(AFUIDelayedActionCommandCache *)self _performCommandsWithDelayedActionCommand:v9];
    delayedActionTimersByIdentifier = self->_delayedActionTimersByIdentifier;
    v11 = [v9 aceId];
    [(NSMutableDictionary *)delayedActionTimersByIdentifier removeObjectForKey:v11];

    v12 = [v8 assertion];
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[AFUIDelayedActionCommandCache _performDelayedActionCommandTimerAction:]";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s Invalidating assertion: %@ for delayed action command: %@", &v14, 0x20u);
    }

    [v12 invalidate];
  }

  [v4 invalidate];
}

- (void)invalidatePendingCommands
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AFUIDelayedActionCommandCache invalidatePendingCommands]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier objectForKey:v9];
        if (v10)
        {
          [(AFUIDelayedActionCommandCache *)self _invalidateDelayedActionTimer:v10 withKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_invalidateDelayedActionTimer:(id)a3 withKey:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v6 userInfo];
    v18 = 136315394;
    v19 = "[AFUIDelayedActionCommandCache _invalidateDelayedActionTimer:withKey:]";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s Invalidating delayed action timer with userInfo: %@", &v18, 0x16u);
  }

  v12 = [v6 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    v14 = [v13 assertion];
    v15 = *v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v13 command];
      v18 = 136315650;
      v19 = "[AFUIDelayedActionCommandCache _invalidateDelayedActionTimer:withKey:]";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s Invalidating assertion: %@ for delayed action command: %@", &v18, 0x20u);
    }

    [v14 invalidate];
  }

  [v6 invalidate];

  [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier removeObjectForKey:v7];
}

- (void)performDismissalCommands
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AFUIDelayedActionCommandCache performDismissalCommands]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier objectForKey:v9];
        if (v10)
        {
          [(AFUIDelayedActionCommandCache *)self _performCommandsWithDelayedActionCommand:v10];
          [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_commandHandler
{
  v2 = objc_alloc_init(MEMORY[0x277CEF1D8]);

  return v2;
}

- (void)_performCommandsWithDelayedActionCommand:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 commands];
    *buf = 136315650;
    v14 = "[AFUIDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]";
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s Performing delayed action command: %@ with commands: %@", buf, 0x20u);
  }

  v8 = [(AFUIDelayedActionCommandCache *)self _commandHandler];
  v9 = [v4 commands];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke;
  v11[3] = &unk_278CD6558;
  v12 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v11];
}

void __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_2;
    v8[3] = &unk_278CD6508;
    v9 = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_31;
    v6[3] = &unk_278CD6530;
    v7 = v9;
    [v5 handleCommand:v9 commandHandler:v8 completion:v6];
  }
}

void __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFUIDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_INFO, "%s Received response for delayed command: %@, response: %@", &v6, 0x20u);
  }
}

void __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_31(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[AFUIDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_INFO, "%s Delayed command succeeded: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __74__AFUIDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_31_cold_1(a1, v5, v6);
  }
}

@end