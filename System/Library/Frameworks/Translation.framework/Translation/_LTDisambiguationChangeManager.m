@interface _LTDisambiguationChangeManager
- (BOOL)hasAnyChangeOfType:(unint64_t)a3;
- (BOOL)restoreChangesToResult:(id)a3;
- (NSDictionary)changeMapping;
- (_LTDisambiguationChangeManager)init;
- (void)addUserSelection:(id)a3;
@end

@implementation _LTDisambiguationChangeManager

- (_LTDisambiguationChangeManager)init
{
  v7.receiver = self;
  v7.super_class = _LTDisambiguationChangeManager;
  v2 = [(_LTDisambiguationChangeManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    changeMapping = v2->_changeMapping;
    v2->_changeMapping = v3;

    v5 = v2;
  }

  return v2;
}

- (NSDictionary)changeMapping
{
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_changeMapping copyItems:1];

  return v2;
}

- (void)addUserSelection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    changeMapping = self->_changeMapping;
    v11 = v4;
    v6 = [v4 sourceSnippet];
    v7 = [(NSMutableDictionary *)changeMapping objectForKeyedSubscript:v6];

    if (v7)
    {
      [v7 addUserSelection:v11];
    }

    else
    {
      v8 = objc_alloc_init(_LTDisambiguationChangeSet);
      [(_LTDisambiguationChangeSet *)v8 addUserSelection:v11];
      v9 = self->_changeMapping;
      v10 = [v11 sourceSnippet];
      [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
    }

    v4 = v11;
  }
}

- (BOOL)restoreChangesToResult:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 sentences];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v15 + 1) + 8 * i) _restoreChanges:self];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);

    if (v7)
    {
      v10 = _LTOSLogDisambiguation();
      v11 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v20 = v7;
        _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Restored changes to %zu sentences in result", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTDisambiguationChangeManager restoreChangesToResult:v12];
  }

  v11 = 0;
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)hasAnyChangeOfType:(unint64_t)a3
{
  v4 = [(NSMutableDictionary *)self->_changeMapping allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___LTDisambiguationChangeManager_hasAnyChangeOfType___block_invoke;
  v6[3] = &__block_descriptor_40_e36_B16__0___LTDisambiguationChangeSet_8l;
  v6[4] = a3;
  LOBYTE(a3) = [v4 lt_hasObjectPassingTest:v6];

  return a3;
}

@end