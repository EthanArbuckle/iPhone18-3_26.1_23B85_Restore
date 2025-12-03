@interface CNChangeHistoryEventCoalescer
+ (id)coalesceEvents:(id)events;
+ (id)coalescingLog;
- (CNChangeHistoryEventCoalescer)init;
- (NSArray)events;
- (void)visitAddContactEvent:(id)event;
- (void)visitAddGroupEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDeleteGroupEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
- (void)visitUpdateGroupEvent:(id)event;
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

+ (id)coalesceEvents:(id)events
{
  v17 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v4 = objc_alloc_init(CNChangeHistoryEventCoalescer);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = eventsCopy;
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

  events = [(CNChangeHistoryEventCoalescer *)v4 events];

  return events;
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
  allObjects = [(CNMutableOrderedDictionary *)self->_addedContacts allObjects];
  [v3 addObjectsFromArray:allObjects];

  allObjects2 = [(CNMutableOrderedDictionary *)self->_updatedContacts allObjects];
  [v3 addObjectsFromArray:allObjects2];

  allObjects3 = [(CNMutableOrderedDictionary *)self->_deletedContacts allObjects];
  [v3 addObjectsFromArray:allObjects3];

  allObjects4 = [(CNMutableOrderedDictionary *)self->_addedGroups allObjects];
  [v3 addObjectsFromArray:allObjects4];

  allObjects5 = [(CNMutableOrderedDictionary *)self->_updatedGroups allObjects];
  [v3 addObjectsFromArray:allObjects5];

  allObjects6 = [(CNMutableOrderedDictionary *)self->_deletedGroups allObjects];
  [v3 addObjectsFromArray:allObjects6];

  [v3 addObjectsFromArray:self->_contactLinkingEvents];
  [v3 addObjectsFromArray:self->_groupMembershipEvents];
  [v3 addObjectsFromArray:self->_otherContactEvents];

  return v3;
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  contact = [eventCopy contact];
  identifier = [contact identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:identifier];
  if (v7)
  {
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_ERROR))
    {
      [CNChangeHistoryEventCoalescer visitAddContactEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:eventCopy forKeyedSubscript:identifier];
  }

  else
  {
    v9 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:identifier];
    if (v9)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_ERROR))
      {
        [CNChangeHistoryEventCoalescer visitAddContactEvent:];
      }

      v11 = [CNChangeHistoryUpdateContactEvent alloc];
      contact2 = [eventCopy contact];
      v13 = [(CNChangeHistoryUpdateContactEvent *)v11 initWithContact:contact2 imagesChanged:1];
      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v13 forKeyedSubscript:identifier];
    }

    else
    {
      contact2 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:identifier];
      if (contact2)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitAddContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:0 forKeyedSubscript:identifier];
        v15 = [CNChangeHistoryUpdateContactEvent alloc];
        contact3 = [eventCopy contact];
        v17 = [(CNChangeHistoryUpdateContactEvent *)v15 initWithContact:contact3 imagesChanged:1];
        [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:v17 forKeyedSubscript:identifier];
      }

      else
      {
        [(CNMutableOrderedDictionary *)self->_addedContacts setObject:eventCopy forKeyedSubscript:identifier];
      }
    }
  }
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  contact = [eventCopy contact];
  identifier = [contact identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:identifier];
  if (v7)
  {
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
    }

    v9 = [CNChangeHistoryAddContactEvent alloc];
    contact2 = [eventCopy contact];
    containerIdentifier = [v7 containerIdentifier];
    v12 = [(CNChangeHistoryAddContactEvent *)v9 initWithContact:contact2 containerIdentifier:containerIdentifier];
    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:v12 forKeyedSubscript:identifier];
  }

  else
  {
    contact2 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:identifier];
    if (contact2)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:eventCopy forKeyedSubscript:identifier];
    }

    else
    {
      v14 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:identifier];
      if (v14)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:eventCopy forKeyedSubscript:identifier];
        deletedContacts = self->_deletedContacts;
        v17 = 0;
      }

      else
      {
        deletedContacts = self->_updatedContacts;
        v17 = eventCopy;
      }

      [(CNMutableOrderedDictionary *)deletedContacts setObject:v17 forKeyedSubscript:identifier];
    }
  }
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  contactIdentifier = [eventCopy contactIdentifier];
  v6 = [(CNMutableOrderedDictionary *)self->_addedContacts objectForKeyedSubscript:contactIdentifier];
  if (v6)
  {
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedContacts setObject:0 forKeyedSubscript:contactIdentifier];
  }

  else
  {
    v8 = [(CNMutableOrderedDictionary *)self->_updatedContacts objectForKeyedSubscript:contactIdentifier];
    if (v8)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedContacts setObject:0 forKeyedSubscript:contactIdentifier];
      [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:eventCopy forKeyedSubscript:contactIdentifier];
    }

    else
    {
      v10 = [(CNMutableOrderedDictionary *)self->_deletedContacts objectForKeyedSubscript:contactIdentifier];
      if (v10)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
        }
      }

      [(CNMutableOrderedDictionary *)self->_deletedContacts setObject:eventCopy forKeyedSubscript:contactIdentifier];
    }
  }
}

- (void)visitAddGroupEvent:(id)event
{
  eventCopy = event;
  group = [eventCopy group];
  identifier = [group identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:identifier];
  if (v7)
  {
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_ERROR))
    {
      [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
    }

    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:eventCopy forKeyedSubscript:identifier];
  }

  else
  {
    v9 = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:identifier];
    if (v9)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_ERROR))
      {
        [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
      }

      v11 = [CNChangeHistoryUpdateGroupEvent alloc];
      group2 = [eventCopy group];
      v13 = [(CNChangeHistoryUpdateGroupEvent *)v11 initWithGroup:group2];
      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v13 forKeyedSubscript:identifier];
    }

    else
    {
      group2 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:identifier];
      if (group2)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_DEBUG))
        {
          [CNChangeHistoryEventCoalescer visitAddGroupEvent:];
        }

        v15 = [CNChangeHistoryUpdateGroupEvent alloc];
        group3 = [eventCopy group];
        v17 = [(CNChangeHistoryUpdateGroupEvent *)v15 initWithGroup:group3];
        [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:v17 forKeyedSubscript:identifier];

        deletedGroups = self->_deletedGroups;
        v19 = 0;
      }

      else
      {
        deletedGroups = self->_addedGroups;
        v19 = eventCopy;
      }

      [(CNMutableOrderedDictionary *)deletedGroups setObject:v19 forKeyedSubscript:identifier];
    }
  }
}

- (void)visitUpdateGroupEvent:(id)event
{
  eventCopy = event;
  group = [eventCopy group];
  identifier = [group identifier];

  v7 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:identifier];
  if (v7)
  {
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
    }

    v9 = [CNChangeHistoryAddGroupEvent alloc];
    group2 = [eventCopy group];
    containerIdentifier = [v7 containerIdentifier];
    v12 = [(CNChangeHistoryAddGroupEvent *)v9 initWithGroup:group2 containerIdentifier:containerIdentifier];
    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:v12 forKeyedSubscript:identifier];
  }

  else
  {
    group2 = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:identifier];
    if (group2)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:eventCopy forKeyedSubscript:identifier];
    }

    else
    {
      v14 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:identifier];
      if (v14)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitUpdateContactEvent:];
        }

        [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:eventCopy forKeyedSubscript:identifier];
        deletedGroups = self->_deletedGroups;
        v17 = 0;
      }

      else
      {
        deletedGroups = self->_updatedGroups;
        v17 = eventCopy;
      }

      [(CNMutableOrderedDictionary *)deletedGroups setObject:v17 forKeyedSubscript:identifier];
    }
  }
}

- (void)visitDeleteGroupEvent:(id)event
{
  eventCopy = event;
  groupIdentifier = [eventCopy groupIdentifier];
  v6 = [(CNMutableOrderedDictionary *)self->_addedGroups objectForKeyedSubscript:groupIdentifier];
  if (v6)
  {
    [(CNMutableOrderedDictionary *)self->_addedGroups setObject:0 forKeyedSubscript:groupIdentifier];
    coalescingLog = [objc_opt_class() coalescingLog];
    if (os_log_type_enabled(coalescingLog, OS_LOG_TYPE_DEBUG))
    {
      [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
    }
  }

  else
  {
    coalescingLog = [(CNMutableOrderedDictionary *)self->_updatedGroups objectForKeyedSubscript:groupIdentifier];
    if (coalescingLog)
    {
      coalescingLog2 = [objc_opt_class() coalescingLog];
      if (os_log_type_enabled(coalescingLog2, OS_LOG_TYPE_DEBUG))
      {
        [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
      }

      [(CNMutableOrderedDictionary *)self->_updatedGroups setObject:0 forKeyedSubscript:groupIdentifier];
      [(CNMutableOrderedDictionary *)self->_deletedGroups setObject:eventCopy forKeyedSubscript:groupIdentifier];
    }

    else
    {
      v9 = [(CNMutableOrderedDictionary *)self->_deletedGroups objectForKeyedSubscript:groupIdentifier];
      if (v9)
      {
        coalescingLog3 = [objc_opt_class() coalescingLog];
        if (os_log_type_enabled(coalescingLog3, OS_LOG_TYPE_ERROR))
        {
          [CNChangeHistoryEventCoalescer visitDeleteContactEvent:];
        }
      }

      [(CNMutableOrderedDictionary *)self->_deletedGroups setObject:eventCopy forKeyedSubscript:groupIdentifier];
    }
  }
}

@end