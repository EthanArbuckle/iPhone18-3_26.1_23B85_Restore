@interface BLSHWaiterForBacklightState
- (BLSHWaiterForBacklightState)initWithBacklightState:(int64_t)a3;
- (BLSHWaiterForBacklightState)initWithPredicate:(id)a3;
- (BOOL)isAlreadyAtDesiredState;
- (BOOL)isDesiredState:(int64_t)a3;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
@end

@implementation BLSHWaiterForBacklightState

- (BLSHWaiterForBacklightState)initWithBacklightState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BLSHWaiterForBacklightState;
  result = [(BLSHWaiterForBacklight *)&v5 init];
  if (result)
  {
    result->_backlightState = a3;
  }

  return result;
}

- (BLSHWaiterForBacklightState)initWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLSHWaiterForBacklightState;
  v5 = [(BLSHWaiterForBacklight *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D70730](v4);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)isDesiredState:(int64_t)a3
{
  predicate = self->_predicate;
  if (predicate)
  {
    return predicate[2](self->_predicate, a3);
  }

  else
  {
    return self->_backlightState == a3;
  }
}

- (BOOL)isAlreadyAtDesiredState
{
  v3 = +[BLSHBacklightHost sharedBacklightHost];
  LOBYTE(self) = -[BLSHWaiterForBacklightState isDesiredState:](self, "isDesiredState:", [v3 backlightState]);

  return self;
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  if ([(BLSHWaiterForBacklightState *)self isDesiredState:a4])
  {

    [(BLSHWaiterForBacklight *)self callCompletion];
  }
}

@end