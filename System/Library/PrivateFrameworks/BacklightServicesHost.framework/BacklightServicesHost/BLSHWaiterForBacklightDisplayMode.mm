@interface BLSHWaiterForBacklightDisplayMode
- (BLSHWaiterForBacklightDisplayMode)initWithDisplayMode:(int64_t)a3;
- (BLSHWaiterForBacklightDisplayMode)initWithPredicate:(id)a3;
- (BOOL)isAlreadyAtDesiredState;
- (BOOL)isDesiredDisplayMode:(int64_t)a3;
- (void)backlight:(id)a3 didUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7;
@end

@implementation BLSHWaiterForBacklightDisplayMode

- (BLSHWaiterForBacklightDisplayMode)initWithDisplayMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BLSHWaiterForBacklightDisplayMode;
  result = [(BLSHWaiterForBacklight *)&v5 init];
  if (result)
  {
    result->_displayMode = a3;
  }

  return result;
}

- (BLSHWaiterForBacklightDisplayMode)initWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLSHWaiterForBacklightDisplayMode;
  v5 = [(BLSHWaiterForBacklight *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D70730](v4);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)isDesiredDisplayMode:(int64_t)a3
{
  predicate = self->_predicate;
  if (predicate)
  {
    return predicate[2](self->_predicate, a3);
  }

  else
  {
    return self->_displayMode == a3;
  }
}

- (BOOL)isAlreadyAtDesiredState
{
  v3 = +[BLSHBacklightHost sharedBacklightHost];
  LOBYTE(self) = -[BLSHWaiterForBacklightDisplayMode isDesiredDisplayMode:](self, "isDesiredDisplayMode:", [v3 backlightDisplayMode]);

  return self;
}

- (void)backlight:(id)a3 didUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7
{
  if ([(BLSHWaiterForBacklightDisplayMode *)self isDesiredDisplayMode:a4])
  {

    [(BLSHWaiterForBacklight *)self callCompletion];
  }
}

@end