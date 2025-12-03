@interface BLSHWaiterForBacklightDisplayMode
- (BLSHWaiterForBacklightDisplayMode)initWithDisplayMode:(int64_t)mode;
- (BLSHWaiterForBacklightDisplayMode)initWithPredicate:(id)predicate;
- (BOOL)isAlreadyAtDesiredState;
- (BOOL)isDesiredDisplayMode:(int64_t)mode;
- (void)backlight:(id)backlight didUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents;
@end

@implementation BLSHWaiterForBacklightDisplayMode

- (BLSHWaiterForBacklightDisplayMode)initWithDisplayMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = BLSHWaiterForBacklightDisplayMode;
  result = [(BLSHWaiterForBacklight *)&v5 init];
  if (result)
  {
    result->_displayMode = mode;
  }

  return result;
}

- (BLSHWaiterForBacklightDisplayMode)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = BLSHWaiterForBacklightDisplayMode;
  v5 = [(BLSHWaiterForBacklight *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D70730](predicateCopy);
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (BOOL)isDesiredDisplayMode:(int64_t)mode
{
  predicate = self->_predicate;
  if (predicate)
  {
    return predicate[2](self->_predicate, mode);
  }

  else
  {
    return self->_displayMode == mode;
  }
}

- (BOOL)isAlreadyAtDesiredState
{
  v3 = +[BLSHBacklightHost sharedBacklightHost];
  LOBYTE(self) = -[BLSHWaiterForBacklightDisplayMode isDesiredDisplayMode:](self, "isDesiredDisplayMode:", [v3 backlightDisplayMode]);

  return self;
}

- (void)backlight:(id)backlight didUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents
{
  if ([(BLSHWaiterForBacklightDisplayMode *)self isDesiredDisplayMode:mode])
  {

    [(BLSHWaiterForBacklight *)self callCompletion];
  }
}

@end