@interface AFAnalyticsTurnBasedInstrumentationContext
+ (id)newTurnBasedContextWithPreviousTurnID:(id)d;
+ (id)newTurnBasedContextWithPreviousTurnID:(id)d analytics:(id)analytics;
- (AFAnalyticsTurnBasedInstrumentationContext)init;
- (AFAnalyticsTurnBasedInstrumentationContext)initWithCoder:(id)coder;
- (AFAnalyticsTurnBasedInstrumentationContext)initWithTurnIdentifier:(id)identifier;
- (id)nextTurnBasedContext;
- (id)nextTurnBasedContextForAnalytics:(id)analytics;
- (void)emitInstrumentation:(id)instrumentation;
- (void)emitInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time;
@end

@implementation AFAnalyticsTurnBasedInstrumentationContext

- (AFAnalyticsTurnBasedInstrumentationContext)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(AFAnalyticsTurnBasedInstrumentationContext *)self initWithTurnIdentifier:uUID];

  return v4;
}

- (AFAnalyticsTurnBasedInstrumentationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];

  v6 = [(AFAnalyticsTurnBasedInstrumentationContext *)self initWithTurnIdentifier:v5];
  return v6;
}

- (id)nextTurnBasedContextForAnalytics:(id)analytics
{
  v3 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:self->_turnIdentifier analytics:analytics];

  return v3;
}

- (id)nextTurnBasedContext
{
  v2 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:self->_turnIdentifier];

  return v2;
}

- (void)emitInstrumentation:(id)instrumentation
{
  instrumentationCopy = instrumentation;
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logInstrumentation:instrumentationCopy turnContext:self->_turnContext];
}

- (void)emitInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time
{
  instrumentationCopy = instrumentation;
  v7 = +[AFAnalytics sharedAnalytics];
  [v7 logInstrumentation:instrumentationCopy machAbsoluteTime:time turnContext:self->_turnContext];
}

- (AFAnalyticsTurnBasedInstrumentationContext)initWithTurnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = AFAnalyticsTurnBasedInstrumentationContext;
  v6 = [(AFAnalyticsTurnBasedInstrumentationContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_turnIdentifier, identifier);
    v8 = objc_alloc_init(SISchemaClientTurnContext);
    turnContext = v7->_turnContext;
    v7->_turnContext = v8;

    v10 = v7->_turnContext;
    v11 = AFTurnIdentifierGetBytes(v7->_turnIdentifier);
    [(SISchemaClientTurnContext *)v10 setTurnID:v11];
  }

  return v7;
}

+ (id)newTurnBasedContextWithPreviousTurnID:(id)d analytics:(id)analytics
{
  dCopy = d;
  analyticsCopy = analytics;
  if (!analyticsCopy)
  {
    analyticsCopy = +[AFAnalytics sharedAnalytics];
  }

  v7 = objc_alloc_init(AFAnalyticsTurnBasedInstrumentationContext);
  v8 = objc_alloc_init(MEMORY[0x1E69CF5A0]);
  if (dCopy)
  {
    v9 = AFTurnIdentifierGetBytes(dCopy);
  }

  else
  {
    v9 = 0;
  }

  [v8 setPreviousTurnID:v9];
  [(AFAnalyticsTurnBasedInstrumentationContext *)v7 emitInstrumentation:v8];
  v10 = objc_opt_class();
  turnIdentifier = [(AFAnalyticsTurnBasedInstrumentationContext *)v7 turnIdentifier];
  [analyticsCopy logInstrumentationOfType:v10 turnIdentifier:turnIdentifier];

  return v7;
}

+ (id)newTurnBasedContextWithPreviousTurnID:(id)d
{
  dCopy = d;
  v4 = +[AFAnalytics sharedAnalytics];
  v5 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:dCopy analytics:v4];

  return v5;
}

@end