@interface ATXInfoEngineCachedSuggestions
- (ATXInfoEngineCachedSuggestions)initWithProto:(id)proto;
- (ATXInfoEngineCachedSuggestions)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXInfoEngineCachedSuggestions

- (ATXInfoEngineCachedSuggestions)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBInfoEngineCachedSuggestions alloc] initWithData:dataCopy];

    self = [(ATXInfoEngineCachedSuggestions *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXInfoEngineCachedSuggestions *)self proto];
  data = [proto data];

  return data;
}

- (ATXInfoEngineCachedSuggestions)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = [(ATXPBInfoEngineCachedSuggestions *)v5 length];
      cachedSuggestionIds = [(ATXPBInfoEngineCachedSuggestions *)v5 cachedSuggestionIds];
      cachedSuggestionSourceIds = [(ATXPBInfoEngineCachedSuggestions *)v5 cachedSuggestionSourceIds];
      if ([cachedSuggestionIds count] == v6 && objc_msgSend(cachedSuggestionSourceIds, "count") == v6)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __48__ATXInfoEngineCachedSuggestions_initWithProto___block_invoke;
        v16[3] = &unk_1E80C3C88;
        v17 = cachedSuggestionSourceIds;
        v10 = v9;
        v18 = v10;
        [cachedSuggestionIds enumerateObjectsUsingBlock:v16];
        v15.receiver = self;
        v15.super_class = ATXInfoEngineCachedSuggestions;
        v11 = [(ATXInfoEngineCachedSuggestions *)&v15 init];
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(&v11->_entries, v9);
        }

        self = v12;

        selfCopy = self;
      }

      else
      {
        v10 = __atxlog_handle_gi();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [ATXInfoEngineCachedSuggestions initWithProto:v10];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_gi();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXInfoEngineCachedSuggestions *)self initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __48__ATXInfoEngineCachedSuggestions_initWithProto___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_opt_new();
  [v7 setSuggestionId:v5];

  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v7 setSourceId:v6];

  [*(a1 + 40) addObject:v7];
}

- (id)proto
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_entries, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_entries, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_entries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        suggestionId = [v10 suggestionId];
        [v3 addObject:suggestionId];

        sourceId = [v10 sourceId];
        [v4 addObject:sourceId];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  [(ATXPBInfoEngineCachedSuggestions *)v13 setLength:?];
  [(ATXPBInfoEngineCachedSuggestions *)v13 setCachedSuggestionIds:v3];
  [(ATXPBInfoEngineCachedSuggestions *)v13 setCachedSuggestionSourceIds:v4];

  return v13;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXInfoEngineCachedSuggestions: Unable to construct class %@ from ProtoBuf object", &v5, 0xCu);
}

@end