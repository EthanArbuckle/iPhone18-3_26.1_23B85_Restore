@interface AccountActiveTime
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AccountActiveTime

- (id)description
{
  if (self)
  {
    start = self->_start;
  }

  else
  {
    start = 0.0;
  }

  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:start];
  if (self)
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_end];
    v6 = v5;
    if (self->_end != 0.0)
    {
      v7 = sub_1002525A8(v5);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v7 = @"n/a";
LABEL_9:
  v9 = sub_1002525A8(v4);
  if (self)
  {
    Property = objc_getProperty(self, v8, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = sub_1001F0520(Property);
  if (self)
  {
    v13 = objc_getProperty(self, v11, 8, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1001F0558(v13);
  v15 = [NSString stringWithFormat:@"{ start: %@ end: %@ accountID: %@/%@ }", v9, v7, v12, v14];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AccountActiveTime);
  v6 = [(AccountEvent *)self->_event copyWithZone:zone];
  event = v5->_event;
  v5->_event = v6;

  v5->_start = self->_start;
  v5->_end = self->_end;
  return v5;
}

@end