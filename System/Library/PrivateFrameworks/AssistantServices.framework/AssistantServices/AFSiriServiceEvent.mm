@interface AFSiriServiceEvent
- (AFSiriServiceEvent)initWithDomain:(id)a3 identifier:(id)a4 command:(id)a5;
- (AFSiriServiceEvent)initWithMetadata:(id)a3 identifier:(id)a4;
@end

@implementation AFSiriServiceEvent

- (AFSiriServiceEvent)initWithMetadata:(id)a3 identifier:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (initWithMetadata_identifier__onceToken != -1)
    {
      dispatch_once(&initWithMetadata_identifier__onceToken, &__block_literal_global_6987);
    }

    v8 = MEMORY[0x1E695DFD8];
    v9 = [v6 allKeys];
    v10 = [v8 setWithArray:v9];

    if (([v10 isSubsetOfSet:initWithMetadata_identifier__knownKeys] & 1) == 0)
    {
      v20 = AFSiriLogContextEvent;
      if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "[AFSiriServiceEvent initWithMetadata:identifier:]";
        v36 = 2112;
        v37 = v10;
        v16 = "%s Unsupported metadata in {%@}";
        v17 = v20;
        v18 = 22;
        goto LABEL_26;
      }

LABEL_11:
      v19 = 0;
      v21 = self;
LABEL_23:

      goto LABEL_24;
    }

    v11 = [v6 objectForKey:@"dismissalReason"];
    if (v11)
    {
      v12 = v11;
      v13 = [v6 objectForKey:@"dismissalReason"];
      v14 = [v13 integerValue];

      if (v14 >= 54)
      {
        v15 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "[AFSiriServiceEvent initWithMetadata:identifier:]";
          v36 = 1024;
          LODWORD(v37) = v14;
          v16 = "%s Unsupported BMSiriServiceDismissalReason %u";
          v17 = v15;
          v18 = 18;
LABEL_26:
          _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = 0;
    }

    v21 = [v6 objectForKey:@"unintended"];
    v22 = [v6 objectForKey:@"requestSource"];
    if (v22)
    {
      v23 = v22;
      v24 = [v6 objectForKey:@"requestSource"];
      v25 = [v24 integerValue];

      if (v25 >= 45)
      {
        v26 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "[AFSiriServiceEvent initWithMetadata:identifier:]";
          v36 = 1024;
          LODWORD(v37) = v25;
          _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, "%s Unsupported BMSiriServiceRequestSource %u", buf, 0x12u);
        }

        v19 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = objc_alloc(getBMSiriServiceClass());
    v28 = [v6 objectForKey:@"domain"];
    v29 = [v27 initWithDismissalReason:v14 unintended:v21 requestSource:v25 identifier:v7 domain:v28 command:0];

    if (v29)
    {
      v33.receiver = self;
      v33.super_class = AFSiriServiceEvent;
      v30 = [(AFEvent *)&v33 initWithBMEvent:v29];
    }

    else
    {

      v30 = 0;
    }

    self = v30;

    v19 = self;
LABEL_22:

    goto LABEL_23;
  }

  v19 = 0;
LABEL_24:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

void __50__AFSiriServiceEvent_initWithMetadata_identifier___block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"dismissalReason";
  v5[1] = @"requestSource";
  v5[2] = @"unintended";
  v5[3] = @"domain";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = initWithMetadata_identifier__knownKeys;
  initWithMetadata_identifier__knownKeys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (AFSiriServiceEvent)initWithDomain:(id)a3 identifier:(id)a4 command:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(getBMSiriServiceClass()) initWithDismissalReason:0 unintended:0 requestSource:0 identifier:v9 domain:v10 command:v8];

  if (v11)
  {
    v14.receiver = self;
    v14.super_class = AFSiriServiceEvent;
    v12 = [(AFEvent *)&v14 initWithBMEvent:v11];
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

@end