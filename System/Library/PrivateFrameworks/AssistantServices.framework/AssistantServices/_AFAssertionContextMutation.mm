@interface _AFAssertionContextMutation
- (_AFAssertionContextMutation)initWithBase:(id)base;
- (double)getExpirationDuration;
- (id)getEffectiveDate;
- (id)getReason;
- (id)getUserInfo;
- (unint64_t)getTimestamp;
@end

@implementation _AFAssertionContextMutation

- (unint64_t)getTimestamp
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_timestamp;
  }

  else
  {
    return [(AFAssertionContext *)self->_base timestamp];
  }
}

- (id)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    reason = self->_reason;
  }

  else
  {
    reason = [(AFAssertionContext *)self->_base reason];
  }

  return reason;
}

- (id)getEffectiveDate
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    effectiveDate = self->_effectiveDate;
  }

  else
  {
    effectiveDate = [(AFAssertionContext *)self->_base effectiveDate];
  }

  return effectiveDate;
}

- (double)getExpirationDuration
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_expirationDuration;
  }

  [(AFAssertionContext *)self->_base expirationDuration];
  return result;
}

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = [(AFAssertionContext *)self->_base userInfo];
  }

  return userInfo;
}

- (_AFAssertionContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAssertionContextMutation;
  v6 = [(_AFAssertionContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end