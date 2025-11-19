@interface AFInstrumentationObserverConnection
- (AFInstrumentationObserverConnection)initWithObservation:(id)a3 filterByInstrumentationTypes:(id)a4;
- (void)flushWithCompletion:(id)a3;
@end

@implementation AFInstrumentationObserverConnection

- (void)flushWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (AFInstrumentationObserverConnection)initWithObservation:(id)a3 filterByInstrumentationTypes:(id)a4
{
  v5.receiver = self;
  v5.super_class = AFInstrumentationObserverConnection;
  return [(AFInstrumentationObserverConnection *)&v5 init:a3];
}

@end