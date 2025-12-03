@interface _HMEventOrTimerTriggerBuilder
- (NSArray)recurrences;
- (unint64_t)recurrenceDays;
- (void)setRecurrenceDays:(unint64_t)days;
- (void)setRecurrences:(id)recurrences;
- (void)updateRecurrences:(id)recurrences completionHandler:(id)handler;
@end

@implementation _HMEventOrTimerTriggerBuilder

- (void)updateRecurrences:(id)recurrences completionHandler:(id)handler
{
  v13 = 0;
  handlerCopy = handler;
  v7 = HMDaysOfTheWeekFromDateComponents(recurrences, &v13);
  if (v13)
  {
    v8 = v7;
    os_unfair_lock_lock_with_options();
    self->_recurrenceDays = v8;
    os_unfair_lock_unlock(&self->super.super._lock);
    v9 = self->super.super._context;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    [delegateCaller callCompletion:handlerCopy error:0];
  }

  else
  {
    if (self)
    {
      context = self->super.super._context;
    }

    else
    {
      context = 0;
    }

    v9 = context;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:handlerCopy error:v12];

    handlerCopy = v12;
  }
}

- (void)setRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  v9 = 0;
  v5 = HMDaysOfTheWeekFromDateComponents(recurrencesCopy, &v9);
  if (v9)
  {
    v6 = v5;
    os_unfair_lock_lock_with_options();
    self->_recurrenceDays = v6;
    os_unfair_lock_unlock(&self->super.super._lock);
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    [(_HMEventOrTimerTriggerBuilder *)v7 recurrences];
  }
}

- (NSArray)recurrences
{
  os_unfair_lock_lock_with_options();
  recurrenceDays = self->_recurrenceDays;
  if (recurrenceDays)
  {
    v4 = HMDaysOfTheWeekToDateComponents(recurrenceDays);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->super.super._lock);

  return v4;
}

- (void)setRecurrenceDays:(unint64_t)days
{
  if (days - 128 <= 0xFFFFFFFFFFFFFF80)
  {
    v6 = _HMFPreconditionFailureWithFormat();
    [(_HMEventOrTimerTriggerBuilder *)v6 recurrenceDays];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    if (days == 127)
    {
      daysCopy = 0;
    }

    else
    {
      daysCopy = days;
    }

    self->_recurrenceDays = daysCopy;

    os_unfair_lock_unlock(&self->super.super._lock);
  }
}

- (unint64_t)recurrenceDays
{
  os_unfair_lock_lock_with_options();
  if (self->_recurrenceDays)
  {
    recurrenceDays = self->_recurrenceDays;
  }

  else
  {
    recurrenceDays = 127;
  }

  os_unfair_lock_unlock(&self->super.super._lock);
  return recurrenceDays;
}

@end