@interface BLSHWaiterForBacklightState
- (BLSHWaiterForBacklightState)initWithBacklightState:(int64_t)state;
- (BLSHWaiterForBacklightState)initWithPredicate:(id)predicate;
- (BOOL)isAlreadyAtDesiredState;
- (BOOL)isDesiredState:(int64_t)state;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents;
@end

@implementation BLSHWaiterForBacklightState

- (BLSHWaiterForBacklightState)initWithBacklightState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = BLSHWaiterForBacklightState;
  result = [(BLSHWaiterForBacklight *)&v5 init];
  if (result)
  {
    result->_backlightState = state;
  }

  return result;
}

- (BLSHWaiterForBacklightState)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = BLSHWaiterForBacklightState;
  v5 = [(BLSHWaiterForBacklight *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D70730](predicateCopy);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)isDesiredState:(int64_t)state
{
  predicate = self->_predicate;
  if (predicate)
  {
    return predicate[2](self->_predicate, state);
  }

  else
  {
    return self->_backlightState == state;
  }
}

- (BOOL)isAlreadyAtDesiredState
{
  v3 = +[BLSHBacklightHost sharedBacklightHost];
  LOBYTE(self) = -[BLSHWaiterForBacklightState isDesiredState:](self, "isDesiredState:", [v3 backlightState]);

  return self;
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  if ([(BLSHWaiterForBacklightState *)self isDesiredState:state])
  {

    [(BLSHWaiterForBacklight *)self callCompletion];
  }
}

@end