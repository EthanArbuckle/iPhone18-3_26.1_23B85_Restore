@interface AFAnalyticsTurnBasedInstrumentationContext
+ (id)newTurnBasedContextWithPreviousTurnID:(id)a3;
+ (id)newTurnBasedContextWithPreviousTurnID:(id)a3 analytics:(id)a4;
- (AFAnalyticsTurnBasedInstrumentationContext)init;
- (AFAnalyticsTurnBasedInstrumentationContext)initWithCoder:(id)a3;
- (AFAnalyticsTurnBasedInstrumentationContext)initWithTurnIdentifier:(id)a3;
- (id)nextTurnBasedContext;
- (id)nextTurnBasedContextForAnalytics:(id)a3;
- (void)emitInstrumentation:(id)a3;
- (void)emitInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4;
@end

@implementation AFAnalyticsTurnBasedInstrumentationContext

- (AFAnalyticsTurnBasedInstrumentationContext)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(AFAnalyticsTurnBasedInstrumentationContext *)self initWithTurnIdentifier:v3];

  return v4;
}

- (AFAnalyticsTurnBasedInstrumentationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"turnIdentifier"];

  v6 = [(AFAnalyticsTurnBasedInstrumentationContext *)self initWithTurnIdentifier:v5];
  return v6;
}

- (id)nextTurnBasedContextForAnalytics:(id)a3
{
  v3 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:self->_turnIdentifier analytics:a3];

  return v3;
}

- (id)nextTurnBasedContext
{
  v2 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:self->_turnIdentifier];

  return v2;
}

- (void)emitInstrumentation:(id)a3
{
  v4 = a3;
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logInstrumentation:v4 turnContext:self->_turnContext];
}

- (void)emitInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4
{
  v6 = a3;
  v7 = +[AFAnalytics sharedAnalytics];
  [v7 logInstrumentation:v6 machAbsoluteTime:a4 turnContext:self->_turnContext];
}

- (AFAnalyticsTurnBasedInstrumentationContext)initWithTurnIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AFAnalyticsTurnBasedInstrumentationContext;
  v6 = [(AFAnalyticsTurnBasedInstrumentationContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_turnIdentifier, a3);
    v8 = objc_alloc_init(SISchemaClientTurnContext);
    turnContext = v7->_turnContext;
    v7->_turnContext = v8;

    v10 = v7->_turnContext;
    v11 = AFTurnIdentifierGetBytes(v7->_turnIdentifier);
    [(SISchemaClientTurnContext *)v10 setTurnID:v11];
  }

  return v7;
}

+ (id)newTurnBasedContextWithPreviousTurnID:(id)a3 analytics:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[AFAnalytics sharedAnalytics];
  }

  v7 = objc_alloc_init(AFAnalyticsTurnBasedInstrumentationContext);
  v8 = objc_alloc_init(MEMORY[0x1E69CF5A0]);
  if (v5)
  {
    v9 = AFTurnIdentifierGetBytes(v5);
  }

  else
  {
    v9 = 0;
  }

  [v8 setPreviousTurnID:v9];
  [(AFAnalyticsTurnBasedInstrumentationContext *)v7 emitInstrumentation:v8];
  v10 = objc_opt_class();
  v11 = [(AFAnalyticsTurnBasedInstrumentationContext *)v7 turnIdentifier];
  [v6 logInstrumentationOfType:v10 turnIdentifier:v11];

  return v7;
}

+ (id)newTurnBasedContextWithPreviousTurnID:(id)a3
{
  v3 = a3;
  v4 = +[AFAnalytics sharedAnalytics];
  v5 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:v3 analytics:v4];

  return v5;
}

@end