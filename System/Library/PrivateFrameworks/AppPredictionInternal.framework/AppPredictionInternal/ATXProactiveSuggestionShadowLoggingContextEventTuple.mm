@interface ATXProactiveSuggestionShadowLoggingContextEventTuple
- (ATXProactiveSuggestionShadowLoggingContextEventTuple)init;
- (ATXProactiveSuggestionShadowLoggingContextEventTuple)initWithCoder:(id)coder;
- (ATXProactiveSuggestionShadowLoggingContextEventTuple)initWithEvent:(id)event shadowLoggingContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContextEventTuple:(id)tuple;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionShadowLoggingContextEventTuple

- (ATXProactiveSuggestionShadowLoggingContextEventTuple)init
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionShadowLoggingContextEventTuple *)self initWithEvent:0 shadowLoggingContext:v3];

  return v4;
}

- (ATXProactiveSuggestionShadowLoggingContextEventTuple)initWithEvent:(id)event shadowLoggingContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ATXProactiveSuggestionShadowLoggingContextEventTuple;
  v9 = [(ATXProactiveSuggestionShadowLoggingContextEventTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    objc_storeStrong(&v10->_shadowLoggingContext, context);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionShadowLoggingContextEventTuple *)self isEqualToATXProactiveSuggestionShadowLoggingContextEventTuple:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContextEventTuple:(id)tuple
{
  tupleCopy = tuple;
  v5 = self->_event;
  v6 = v5;
  if (v5 == tupleCopy[1])
  {
  }

  else
  {
    v7 = [(BMStoreEvent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_shadowLoggingContext;
  v10 = v9;
  if (v9 == tupleCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ATXProactiveSuggestionShadowLoggingContext *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  event = self->_event;
  coderCopy = coder;
  [coderCopy encodeObject:event forKey:@"event"];
  [coderCopy encodeObject:self->_shadowLoggingContext forKey:@"loggingContext"];
}

- (ATXProactiveSuggestionShadowLoggingContextEventTuple)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"loggingContext" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContextEventTuple" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_blending_ecosystem();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"event" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContextEventTuple" errorCode:-1 logHandle:v11];

    self = [(ATXProactiveSuggestionShadowLoggingContextEventTuple *)self initWithEvent:v12 shadowLoggingContext:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end