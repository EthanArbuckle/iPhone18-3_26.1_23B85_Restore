@interface APSTopicAttributes
- (APSTopicAttributes)initWithFilter:(int64_t)filter darkWakeEnabled:(BOOL)enabled pushWakeEnabled:(BOOL)wakeEnabled criticalWakeEnabled:(BOOL)criticalWakeEnabled ultraConstrainedEnabled:(BOOL)constrainedEnabled;
- (id)description;
- (void)setCriticalWakeEnabled:(BOOL)enabled;
- (void)setPushWakeEnabled:(BOOL)enabled;
- (void)setUltraConstrainedEnabled:(BOOL)enabled;
@end

@implementation APSTopicAttributes

- (APSTopicAttributes)initWithFilter:(int64_t)filter darkWakeEnabled:(BOOL)enabled pushWakeEnabled:(BOOL)wakeEnabled criticalWakeEnabled:(BOOL)criticalWakeEnabled ultraConstrainedEnabled:(BOOL)constrainedEnabled
{
  constrainedEnabledCopy = constrainedEnabled;
  criticalWakeEnabledCopy = criticalWakeEnabled;
  wakeEnabledCopy = wakeEnabled;
  v16.receiver = self;
  v16.super_class = APSTopicAttributes;
  result = [(APSTopicAttributes *)&v16 init];
  if (result)
  {
    result->_filter = filter;
    if (wakeEnabledCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    if (criticalWakeEnabledCopy)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    if (constrainedEnabledCopy)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(result + 16) = v13 | enabled | v14 | v15 | *(result + 16) & 0xF0;
  }

  return result;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = APSTopicAttributes;
  v3 = [(APSTopicAttributes *)&v12 description];
  v4 = sub_100007D14(self->_filter);
  v5 = v4;
  if (*(self + 16))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ((*(self + 16) & 2) != 0)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ((*(self + 16) & 4) != 0)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ((*(self + 16) & 8) != 0)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<%@: filter=%@, darkWakeEnabled=%@, pushWakeEnabled=%@, criticalWakeEnabled=%@, ultraConstrainedEnabled=%@>", v3, v4, v6, v7, v8, v9];

  return v10;
}

- (void)setPushWakeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setCriticalWakeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setUltraConstrainedEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

@end