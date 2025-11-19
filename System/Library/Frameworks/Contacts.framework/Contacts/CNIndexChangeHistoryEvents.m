@interface CNIndexChangeHistoryEvents
+ (BOOL)enumerateEvents:(id)a3 usingBlock:(id)a4;
+ (id)log;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
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

+ (BOOL)enumerateEvents:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CNIndexChangeHistoryEvents);
  [(CNIndexChangeHistoryEvents *)v7 setBlock:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
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

- (void)visitDropEverythingEvent:(id)a3
{
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CNIndexChangeHistoryEvents visitDropEverythingEvent:v4];
  }

  [(CNIndexChangeHistoryEvents *)self setStop:1];
}

- (void)visitAddContactEvent:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [(CNIndexChangeHistoryEvents *)self block];
  v6 = [v4 contact];
  v7 = [v4 contactIdentifier];

  (v5)[2](v5, 0, v6, v7, &v8);
  [(CNIndexChangeHistoryEvents *)self setStop:v8];
}

- (void)visitUpdateContactEvent:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [(CNIndexChangeHistoryEvents *)self block];
  v6 = [v4 contact];
  v7 = [v4 contactIdentifier];

  (v5)[2](v5, 0, v6, v7, &v8);
  [(CNIndexChangeHistoryEvents *)self setStop:v8];
}

- (void)visitDeleteContactEvent:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(CNIndexChangeHistoryEvents *)self block];
  v6 = [v4 contactIdentifier];

  (v5)[2](v5, 1, 0, v6, &v7);
  [(CNIndexChangeHistoryEvents *)self setStop:v7];
}

@end