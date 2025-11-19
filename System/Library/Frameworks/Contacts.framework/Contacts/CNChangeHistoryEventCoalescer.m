@interface CNChangeHistoryEventCoalescer
+ (id)coalesceEvents:(id)a3;
+ (id)coalescingLog;
- (CNChangeHistoryEventCoalescer)init;
- (NSArray)events;
- (void)visitAddContactEvent:(id)a3;
- (void)visitAddGroupEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDeleteGroupEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
- (void)visitUpdateGroupEvent:(id)a3;
@end

@implementation CNChangeHistoryEventCoalescer

+ (id)coalescingLog
{
  if (coalescingLog_cn_once_token_0 != -1)
  {
    +[CNChangeHistoryEventCoalescer coalescingLog];
  }

  v3 = coalescingLog_cn_once_object_0;

  return v3;
}

uint64_t __46__CNChangeHistoryEventCoalescer_coalescingLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "change-history-coalescing");
  v1 = coalescingLog_cn_once_object_0;
  coalescingLog_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)coalesceEvents:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(CNChangeHistoryEventCoalescer);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) acceptEventVisitor:{v4, v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(CNChangeHistoryEventCoalescer *)v4 events];

  return v10;
}

- (CNChangeHistoryEventCoalescer)init
{
  v25.receiver = self;
  v25.super_class = CNChangeHistoryEventCoalescer;
  v2 = [(CNChangeHistoryEventCoalescer *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_new();
    controlEvents = v2->_controlEvents;
    v2->_controlEvents = v3;

    v5 = objc_opt_new();
    addedContacts = v2->_addedContacts;
    v2->_addedContacts = v5;

    v7 = objc_opt_new();
    updatedContacts = v2->_updatedContacts;
    v2->_updatedContacts = v7;

    v9 = objc_opt_new();
    deletedContacts = v2->_deletedContacts;
    v2->_deletedContacts = v9;

    v11 = objc_opt_new();
    addedGroups = v2->_addedGroups;
    v2->_addedGroups = v11;

    v13 = objc_opt_new();
    updatedGroups = v2->_updatedGroups;
    v2->_updatedGroups = v13;

    v15 = objc_opt_new();
    deletedGroups = v2->_deletedGroups;
    v2->_deletedGroups = v15;

    v17 = objc_opt_new();
    contactLinkingEvents = v2->_contactLinkingEvents;
    v2->_contactLinkingEvents = v17;

    v19 = objc_opt_new();
    groupMembershipEvents = v2->_groupMembershipEvents;
    v2->_groupMembershipEvents = v19;

    v21 = objc_opt_new();
    otherContactEvents = v2->_otherContactEvents;
    v2->_otherContactEvents = v21;

    v23 = v2;
  }

  return v2;
}

- (NSArray)events
{
  v3 = objc_opt_new();
  [v3 addObjectsFromArray:self->_controlEvents];
  v4 = [(CNMutableOrderedDictionary *)self->_addedContacts allObjects];
  [v3 addObjectsFromArray:v4];

  v5 = [(CNMutableOrderedDictionary *)self->_updatedContacts allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [(CNMutableOrderedDictionary *)self->_deletedContacts allObjects];
  [v3 addObjectsFromArray:v6];

  v7 = [(CNMutableOrderedDictionary *)self->_addedGroups allObjects];
  [v3 addObjectsFromArray:v7];

  v8 = [(CNMutableOrderedDictionary *)self->_updatedGroups allObjects];
  [v3 addObjectsFromArray:v8];

  v9 = [(CNMutableOrderedDictionary *)self->_deletedGroups allObjects];
  [v3 addObjectsFromArray:v9];

  [v3 addObjectsFromArray:self->_contactLinkingEvents];
  [v3 addObjectsFromArray:self->_groupMembershipEvents];
  [v3 addObjectsFromArray:self->_otherContactEvents];

  return v3;
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v5 identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNChangeHistoryEventCoalescer visitAddContactEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    v9 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CNChangeHistoryEventCoalescer visitAddContactEvent:];
      }

      v11 = [CNChangeHistoryUpdateContactEvent alloc];
      v12 = [v4 contact];
      v13 = [(CNChangeHistoryUpdateContactEvent *)v11 initWithContact:v12 imagesChanged:1];
      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v13 forKeyedSubscript:v6];
    }

    else
    {
      v12 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:v6];
      if (v12)
      {
        v14 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitAddContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:0 forKeyedSubscript:v6];
        v15 = [CNChangeHistoryUpdateContactEvent alloc];
        v16 = [v4 contact];
        v17 = [(CNChangeHistoryUpdateContactEvent *)v15 initWithContact:v16 imagesChanged:1];
        [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v17 forKeyedSubscript:v6];
      }

      else
      {
        [(CNMutableOrderedDictionary *)self->_addedContacts setObject:v4 forKeyedSubscript:v6];
      }
    }
  }
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v5 identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
    }

    v9 = [CNChangeHistoryAddContactEvent alloc];
    v10 = [v4 contact];
    v11 = [v7 containerIdentifier];
    v12 = [(CNChangeHistoryAddContactEvent *)v9 initWithContact:v10 containerIdentifier:v11];
    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:v12 forKeyedSubscript:v6];
  }

  else
  {
    v10 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:v6];
    if (v10)
    {
      v13 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v4 forKeyedSubscript:v6];
    }

    else
    {
      v14 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:v6];
      if (v14)
      {
        v15 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v4 forKeyedSubscript:v6];
        deletedContacts = self->_deletedContacts;
        v17 = 0;
      }

      else
      {
        deletedContacts = self->_updatedContacts;
        v17 = v4;
      }

      [(CNMutableOrderedDictionary *)deletedContacts setObject:v17 forKeyedSubscript:v6];
    }
  }
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];
  v6 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:0 forKeyedSubscript:v5];
  }

  else
  {
    v8 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:0 forKeyedSubscript:v5];
      [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:v4 forKeyedSubscript:v5];
    }

    else
    {
      v10 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:v5];
      if (v10)
      {
        v11 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
        }
      }

      [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:v4 forKeyedSubscript:v5];
    }
  }
}

- (void)visitAddGroupEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 group];
  v6 = [v5 identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    v9 = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
      }

      v11 = [CNChangeHistoryUpdateGroupEvent alloc];
      v12 = [v4 group];
      v13 = [(CNChangeHistoryUpdateGroupEvent *)v11 initWithGroup:v12];
      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v13 forKeyedSubscript:v6];
    }

    else
    {
      v12 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:v6];
      if (v12)
      {
        v14 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
        }

        v15 = [CNChangeHistoryUpdateGroupEvent alloc];
        v16 = [v4 group];
        v17 = [(CNChangeHistoryUpdateGroupEvent *)v15 initWithGroup:v16];
        [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v17 forKeyedSubscript:v6];

        deletedGroups = self->_deletedGroups;
        v19 = 0;
      }

      else
      {
        deletedGroups = self->_addedGroups;
        v19 = v4;
      }

      [(CNMutableOrderedDictionary *)deletedGroups setObject:v19 forKeyedSubscript:v6];
    }
  }
}

- (void)visitUpdateGroupEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 group];
  v6 = [v5 identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
    }

    v9 = [CNChangeHistoryAddGroupEvent alloc];
    v10 = [v4 group];
    v11 = [v7 containerIdentifier];
    v12 = [(CNChangeHistoryAddGroupEvent *)v9 initWithGroup:v10 containerIdentifier:v11];
    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:v12 forKeyedSubscript:v6];
  }

  else
  {
    v10 = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:v6];
    if (v10)
    {
      v13 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v4 forKeyedSubscript:v6];
    }

    else
    {
      v14 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:v6];
      if (v14)
      {
        v15 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v4 forKeyedSubscript:v6];
        deletedGroups = self->_deletedGroups;
        v17 = 0;
      }

      else
      {
        deletedGroups = self->_updatedGroups;
        v17 = v4;
      }

      [(CNMutableOrderedDictionary *)deletedGroups setObject:v17 forKeyedSubscript:v6];
    }
  }
}

- (void)visitDeleteGroupEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:v5];
  if (v6)
  {
    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:0 forKeyedSubscript:v5];
    v7 = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
    }
  }

  else
  {
    v7 = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:0 forKeyedSubscript:v5];
      [(CNMutableOrderedDictionary *)self->_deletedGroups setObject:v4 forKeyedSubscript:v5];
    }

    else
    {
      v9 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:v5];
      if (v9)
      {
        v10 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
        }
      }

      [(CNMutableOrderedDictionary *)self->_deletedGroups setObject:v4 forKeyedSubscript:v5];
    }
  }
}

@end