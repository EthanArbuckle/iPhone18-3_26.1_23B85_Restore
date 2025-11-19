@interface CLKClockTimerToken
- (BOOL)isEqual:(id)a3;
- (CLKClockTimer)owner;
- (CLKClockTimerToken)initWithID:(int64_t)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CLKClockTimerToken

- (CLKClockTimerToken)initWithID:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CLKClockTimerToken;
  v4 = [(CLKClockTimerToken *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    id = v4->_id;
    v4->_id = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(NSNumber *)v4->_id isEqual:self->_id];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  id = self->_id;
  if (self->_isActive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = CLKClockTimerFrameIntervalForUpdateFrequency[self->_updateFrequency];
  v7 = [(CLKClockTimerToken *)self log];
  v8 = v7[2]();
  v9 = [v8 length];
  v10 = [(CLKClockTimerToken *)self log];
  v11 = v10[2]();
  v12 = v11;
  if (v9 > 0x40)
  {
    v14 = [v11 substringToIndex:64];
    v15 = [v14 stringByAppendingString:@" ..."];
    v16 = v3;
    v17 = v15;
    v13 = [v16 stringWithFormat:@"<CLKClockTimerToken: %p, id:%@, active: %@, interval:%ld>: %@", self, id, v5, v6, v15];
  }

  else
  {
    v13 = [v3 stringWithFormat:@"<CLKClockTimerToken: %p, id:%@, active: %@, interval:%ld>: %@", self, id, v5, v6, v11];
  }

  return v13;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 log];
  v4 = v3[2]();
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "CLKClockTimerToken with id=%@ was not properly stopped", &v5, 0xCu);
}

- (CLKClockTimer)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end