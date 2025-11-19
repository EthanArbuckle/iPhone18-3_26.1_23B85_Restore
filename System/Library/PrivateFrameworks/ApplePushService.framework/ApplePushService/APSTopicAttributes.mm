@interface APSTopicAttributes
- (APSTopicAttributes)initWithFilter:(int64_t)a3 darkWakeEnabled:(BOOL)a4 pushWakeEnabled:(BOOL)a5 criticalWakeEnabled:(BOOL)a6 ultraConstrainedEnabled:(BOOL)a7;
- (id)description;
- (void)setCriticalWakeEnabled:(BOOL)a3;
- (void)setPushWakeEnabled:(BOOL)a3;
- (void)setUltraConstrainedEnabled:(BOOL)a3;
@end

@implementation APSTopicAttributes

- (APSTopicAttributes)initWithFilter:(int64_t)a3 darkWakeEnabled:(BOOL)a4 pushWakeEnabled:(BOOL)a5 criticalWakeEnabled:(BOOL)a6 ultraConstrainedEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = APSTopicAttributes;
  result = [(APSTopicAttributes *)&v16 init];
  if (result)
  {
    result->_filter = a3;
    if (v9)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    if (v8)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    if (v7)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(result + 16) = v13 | a4 | v14 | v15 | *(result + 16) & 0xF0;
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

- (void)setPushWakeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setCriticalWakeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setUltraConstrainedEnabled:(BOOL)a3
{
  if (a3)
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