@interface _HMEventOrTimerTriggerBuilder
- (NSArray)recurrences;
- (unint64_t)recurrenceDays;
- (void)setRecurrenceDays:(unint64_t)a3;
- (void)setRecurrences:(id)a3;
- (void)updateRecurrences:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMEventOrTimerTriggerBuilder

- (void)updateRecurrences:(id)a3 completionHandler:(id)a4
{
  v13 = 0;
  v6 = a4;
  v7 = HMDaysOfTheWeekFromDateComponents(a3, &v13);
  if (v13)
  {
    v8 = v7;
    os_unfair_lock_lock_with_options();
    self->_recurrenceDays = v8;
    os_unfair_lock_unlock(&self->super.super._lock);
    v9 = self->super.super._context;
    v10 = [(_HMContext *)v9 delegateCaller];
    [v10 callCompletion:v6 error:0];
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
    v10 = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v10 callCompletion:v6 error:v12];

    v6 = v12;
  }
}

- (void)setRecurrences:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = HMDaysOfTheWeekFromDateComponents(v4, &v9);
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

- (void)setRecurrenceDays:(unint64_t)a3
{
  if (a3 - 128 <= 0xFFFFFFFFFFFFFF80)
  {
    v6 = _HMFPreconditionFailureWithFormat();
    [(_HMEventOrTimerTriggerBuilder *)v6 recurrenceDays];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    if (a3 == 127)
    {
      v5 = 0;
    }

    else
    {
      v5 = a3;
    }

    self->_recurrenceDays = v5;

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