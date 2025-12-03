@interface AFInstrumentationObserverConnection
- (AFInstrumentationObserverConnection)initWithObservation:(id)observation filterByInstrumentationTypes:(id)types;
- (void)flushWithCompletion:(id)completion;
@end

@implementation AFInstrumentationObserverConnection

- (void)flushWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (AFInstrumentationObserverConnection)initWithObservation:(id)observation filterByInstrumentationTypes:(id)types
{
  v5.receiver = self;
  v5.super_class = AFInstrumentationObserverConnection;
  return [(AFInstrumentationObserverConnection *)&v5 init:observation];
}

@end