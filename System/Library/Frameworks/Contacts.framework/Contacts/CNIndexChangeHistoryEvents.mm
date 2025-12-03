@interface CNIndexChangeHistoryEvents
+ (BOOL)enumerateEvents:(id)events usingBlock:(id)block;
+ (id)log;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation CNIndexChangeHistoryEvents

+ (id)log
{
  if (log_cn_once_token_0_0 != -1)
  {
    +[CNIndexChangeHistoryEvents log];
  }

  v3 = log_cn_once_object_0_0;

  return v3;
}

uint64_t __33__CNIndexChangeHistoryEvents_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNIndexChangeHistoryEvents");
  v1 = log_cn_once_object_0_0;
  log_cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)enumerateEvents:(id)events usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  blockCopy = block;
  v7 = objc_alloc_init(CNIndexChangeHistoryEvents);
  [(CNIndexChangeHistoryEvents *)v7 setBlock:blockCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * i) acceptEventVisitor:{v7, v15}];
        if ([(CNIndexChangeHistoryEvents *)v7 stop])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (void)visitDropEverythingEvent:(id)event
{
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNIndexChangeHistoryEvents visitDropEverythingEvent:v4];
  }

  [(CNIndexChangeHistoryEvents *)self setStop:1];
}

- (void)visitAddContactEvent:(id)event
{
  v8 = 0;
  eventCopy = event;
  block = [(CNIndexChangeHistoryEvents *)self block];
  contact = [eventCopy contact];
  contactIdentifier = [eventCopy contactIdentifier];

  (block)[2](block, 0, contact, contactIdentifier, &v8);
  [(CNIndexChangeHistoryEvents *)self setStop:v8];
}

- (void)visitUpdateContactEvent:(id)event
{
  v8 = 0;
  eventCopy = event;
  block = [(CNIndexChangeHistoryEvents *)self block];
  contact = [eventCopy contact];
  contactIdentifier = [eventCopy contactIdentifier];

  (block)[2](block, 0, contact, contactIdentifier, &v8);
  [(CNIndexChangeHistoryEvents *)self setStop:v8];
}

- (void)visitDeleteContactEvent:(id)event
{
  v7 = 0;
  eventCopy = event;
  block = [(CNIndexChangeHistoryEvents *)self block];
  contactIdentifier = [eventCopy contactIdentifier];

  (block)[2](block, 1, 0, contactIdentifier, &v7);
  [(CNIndexChangeHistoryEvents *)self setStop:v7];
}

@end