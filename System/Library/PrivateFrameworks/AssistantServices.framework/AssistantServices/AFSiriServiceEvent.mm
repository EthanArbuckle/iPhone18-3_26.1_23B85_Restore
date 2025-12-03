@interface AFSiriServiceEvent
- (AFSiriServiceEvent)initWithDomain:(id)domain identifier:(id)identifier command:(id)command;
- (AFSiriServiceEvent)initWithMetadata:(id)metadata identifier:(id)identifier;
@end

@implementation AFSiriServiceEvent

- (AFSiriServiceEvent)initWithMetadata:(id)metadata identifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  identifierCopy = identifier;
  if (metadataCopy)
  {
    if (initWithMetadata_identifier__onceToken != -1)
    {
      dispatch_once(&initWithMetadata_identifier__onceToken, &__block_literal_global_6987);
    }

    v8 = MEMORY[0x1E695DFD8];
    allKeys = [metadataCopy allKeys];
    v10 = [v8 setWithArray:allKeys];

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
      selfCopy2 = 0;
      selfCopy = self;
LABEL_23:

      goto LABEL_24;
    }

    v11 = [metadataCopy objectForKey:@"dismissalReason"];
    if (v11)
    {
      v12 = v11;
      v13 = [metadataCopy objectForKey:@"dismissalReason"];
      integerValue = [v13 integerValue];

      if (integerValue >= 54)
      {
        v15 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "[AFSiriServiceEvent initWithMetadata:identifier:]";
          v36 = 1024;
          LODWORD(v37) = integerValue;
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
      integerValue = 0;
    }

    selfCopy = [metadataCopy objectForKey:@"unintended"];
    v22 = [metadataCopy objectForKey:@"requestSource"];
    if (v22)
    {
      v23 = v22;
      v24 = [metadataCopy objectForKey:@"requestSource"];
      integerValue2 = [v24 integerValue];

      if (integerValue2 >= 45)
      {
        v26 = AFSiriLogContextEvent;
        if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "[AFSiriServiceEvent initWithMetadata:identifier:]";
          v36 = 1024;
          LODWORD(v37) = integerValue2;
          _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, "%s Unsupported BMSiriServiceRequestSource %u", buf, 0x12u);
        }

        selfCopy2 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      integerValue2 = 0;
    }

    v27 = objc_alloc(getBMSiriServiceClass());
    v28 = [metadataCopy objectForKey:@"domain"];
    v29 = [v27 initWithDismissalReason:integerValue unintended:selfCopy requestSource:integerValue2 identifier:identifierCopy domain:v28 command:0];

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

    selfCopy2 = self;
LABEL_22:

    goto LABEL_23;
  }

  selfCopy2 = 0;
LABEL_24:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy2;
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

- (AFSiriServiceEvent)initWithDomain:(id)domain identifier:(id)identifier command:(id)command
{
  commandCopy = command;
  identifierCopy = identifier;
  domainCopy = domain;
  v11 = [objc_alloc(getBMSiriServiceClass()) initWithDismissalReason:0 unintended:0 requestSource:0 identifier:identifierCopy domain:domainCopy command:commandCopy];

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