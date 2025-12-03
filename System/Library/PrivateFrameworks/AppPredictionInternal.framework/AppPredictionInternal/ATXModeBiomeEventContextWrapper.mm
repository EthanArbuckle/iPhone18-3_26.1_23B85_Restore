@interface ATXModeBiomeEventContextWrapper
+ (id)wrapEventStream:(id)stream modeTransitionStream:(id)transitionStream startingContext:(id)context;
+ (id)wrapEventStreams:(id)streams modeTransitionStream:(id)stream startingContext:(id)context;
- (ATXModeBiomeEventContextWrapper)init;
- (ATXModeBiomeEventContextWrapper)initWithCoder:(id)coder;
- (ATXModeBiomeEventContextWrapper)initWithData:(id)data;
- (ATXModeBiomeEventContextWrapper)initWithPath:(id)path;
- (ATXModeBiomeEventContextWrapper)initWithPreviousContext:(id)context nextEvent:(id)event;
- (ATXModeBiomeEventContextWrapper)initWithTransitionEvent:(id)event eventToWrap:(id)wrap;
- (BOOL)_fileExistsAtPath:(id)path;
- (id)_dataFromPath:(id)path;
- (id)eventTime;
- (id)serialize:(id *)serialize;
- (unint64_t)currentActivityType;
- (void)encodeWithCoder:(id)coder;
- (void)persistToPath:(id)path;
@end

@implementation ATXModeBiomeEventContextWrapper

- (ATXModeBiomeEventContextWrapper)initWithPreviousContext:(id)context nextEvent:(id)event
{
  contextCopy = context;
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mostRecentModeTransition = [contextCopy mostRecentModeTransition];
    v15 = [(ATXModeBiomeEventContextWrapper *)self initWithTransitionEvent:mostRecentModeTransition eventToWrap:eventCopy];
LABEL_6:
    v14 = v15;
    goto LABEL_7;
  }

  mostRecentModeTransition = eventCopy;
  wrappedEvent = [contextCopy wrappedEvent];
  eventTime = [wrappedEvent eventTime];
  eventTime2 = [mostRecentModeTransition eventTime];
  v12 = [eventTime compare:eventTime2];

  if (v12 == -1)
  {
    v15 = [(ATXModeBiomeEventContextWrapper *)self initWithTransitionEvent:mostRecentModeTransition eventToWrap:0];
    goto LABEL_6;
  }

  wrappedEvent2 = [contextCopy wrappedEvent];
  v14 = [(ATXModeBiomeEventContextWrapper *)self initWithTransitionEvent:mostRecentModeTransition eventToWrap:wrappedEvent2];

LABEL_7:
  return v14;
}

- (ATXModeBiomeEventContextWrapper)initWithTransitionEvent:(id)event eventToWrap:(id)wrap
{
  eventCopy = event;
  wrapCopy = wrap;
  v11.receiver = self;
  v11.super_class = ATXModeBiomeEventContextWrapper;
  v8 = [(ATXModeBiomeEventContextWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ATXModeBiomeEventContextWrapper *)v8 setMostRecentModeTransition:eventCopy];
    [(ATXModeBiomeEventContextWrapper *)v9 setWrappedEvent:wrapCopy];
  }

  return v9;
}

- (ATXModeBiomeEventContextWrapper)init
{
  v3 = [[ATXUnifiedInferredActivityTransition alloc] initFromTransitionTime:1 isEntryEvent:@"computedModeActivity" source:14 activityType:0.0 confidence:1.0];
  v4 = [(ATXModeBiomeEventContextWrapper *)self initWithTransitionEvent:v3 eventToWrap:0];

  return v4;
}

- (unint64_t)currentActivityType
{
  mostRecentModeTransition = [(ATXModeBiomeEventContextWrapper *)self mostRecentModeTransition];

  if (!mostRecentModeTransition)
  {
    return 14;
  }

  mostRecentModeTransition2 = [(ATXModeBiomeEventContextWrapper *)self mostRecentModeTransition];
  if ([mostRecentModeTransition2 isEntryEvent])
  {
    mostRecentModeTransition3 = [(ATXModeBiomeEventContextWrapper *)self mostRecentModeTransition];
    inferredActivityType = [mostRecentModeTransition3 inferredActivityType];
  }

  else
  {
    inferredActivityType = 14;
  }

  return inferredActivityType;
}

- (id)eventTime
{
  wrappedEvent = [(ATXModeBiomeEventContextWrapper *)self wrappedEvent];
  eventTime = [wrappedEvent eventTime];

  mostRecentModeTransition = [(ATXModeBiomeEventContextWrapper *)self mostRecentModeTransition];
  eventTime2 = [mostRecentModeTransition eventTime];

  if (eventTime)
  {
    if (eventTime2)
    {
      v7 = [eventTime laterDate:eventTime2];
    }

    else
    {
      v7 = eventTime;
    }
  }

  else
  {
    v7 = eventTime2;
  }

  v8 = v7;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mostRecentModeTransition = [(ATXModeBiomeEventContextWrapper *)self mostRecentModeTransition];
  [coderCopy encodeObject:mostRecentModeTransition forKey:@"transition"];
}

- (ATXModeBiomeEventContextWrapper)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277D42620];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"transition" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXModeBiomeEventContextWrapper" errorCode:-1 logHandle:v7];

  v9 = [(ATXModeBiomeEventContextWrapper *)self initWithTransitionEvent:v8 eventToWrap:0];
  return v9;
}

- (BOOL)_fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (id)_dataFromPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    if ([(ATXModeBiomeEventContextWrapper *)self _fileExistsAtPath:pathCopy])
    {
      v5 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:pathCopy];
      v6 = v5;
      if (v5)
      {
        v16 = 0;
        v7 = [v5 readDataToEndOfFileAndReturnError:&v16];
        v8 = v16;
        v9 = v8;
        if (!v7 || v8)
        {
          v13 = __atxlog_handle_default();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [ATXModeBiomeEventContextWrapper _dataFromPath:];
          }

          v10 = 0;
        }

        else
        {
          v10 = v7;
        }
      }

      else
      {
        v9 = __atxlog_handle_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [ATXModeBiomeEventContextWrapper _dataFromPath:v9];
        }

        v10 = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = pathCopy;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - file doesn't exist at path %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (ATXModeBiomeEventContextWrapper)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXModeBiomeEventContextWrapper initWithData:];
      }

      v9 = [(ATXModeBiomeEventContextWrapper *)self init];
    }

    else
    {
      v9 = [(ATXModeBiomeEventContextWrapper *)self initWithCoder:v6];
    }

    v10 = v9;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = [(ATXModeBiomeEventContextWrapper *)self init];
  }

  return v10;
}

- (ATXModeBiomeEventContextWrapper)initWithPath:(id)path
{
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ATXModeBiomeEventContextWrapper *)self _dataFromPath:pathCopy];
  objc_autoreleasePoolPop(v5);
  v7 = [(ATXModeBiomeEventContextWrapper *)self initWithData:v6];

  return v7;
}

- (id)serialize:(id *)serialize
{
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v7 = v13;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeBiomeEventContextWrapper serialize:];
    }

    if (serialize)
    {
      v10 = v7;
      v11 = 0;
      *serialize = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)persistToPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXModeBiomeEventContextWrapper persistToPath:];
    }

    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE658];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v6 raise:v7 format:{@"%@ - Attempting to persist with a nil path", v9}];
  }

  v15 = 0;
  v10 = [(ATXModeBiomeEventContextWrapper *)self serialize:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXModeBiomeEventContextWrapper persistToPath:];
    }

LABEL_11:

    goto LABEL_12;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager createFileAtPath:pathCopy contents:v10 attributes:0];

  if ((v14 & 1) == 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXModeBiomeEventContextWrapper persistToPath:];
    }

    goto LABEL_11;
  }

LABEL_12:
}

+ (id)wrapEventStreams:(id)streams modeTransitionStream:(id)stream startingContext:(id)context
{
  contextCopy = context;
  v8 = [stream orderedMergeWithOthers:streams comparator:&__block_literal_global_103];
  if (contextCopy)
  {
    v9 = contextCopy;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v11 = [v8 scanWithInitial:v9 nextPartialResult:&__block_literal_global_29];

  return v11;
}

uint64_t __89__ATXModeBiomeEventContextWrapper_wrapEventStreams_modeTransitionStream_startingContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

ATXModeBiomeEventContextWrapper *__89__ATXModeBiomeEventContextWrapper_wrapEventStreams_modeTransitionStream_startingContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[ATXModeBiomeEventContextWrapper alloc] initWithPreviousContext:v5 nextEvent:v4];

  return v6;
}

+ (id)wrapEventStream:(id)stream modeTransitionStream:(id)transitionStream startingContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v8 = MEMORY[0x277CBEA60];
  contextCopy = context;
  transitionStreamCopy = transitionStream;
  streamCopy2 = stream;
  v12 = [v8 arrayWithObjects:&streamCopy count:1];

  v13 = [self wrapEventStreams:v12 modeTransitionStream:transitionStreamCopy startingContext:{contextCopy, streamCopy, v17}];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_dataFromPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Unable to read data from file handle %@ - %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "Unable to initialize coder for data, err: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)serialize:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)persistToPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)persistToPath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)persistToPath:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end