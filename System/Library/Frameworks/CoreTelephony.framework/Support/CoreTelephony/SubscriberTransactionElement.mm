@interface SubscriberTransactionElement
- (BOOL)expired;
- (BOOL)matchContent:(id)content;
- (SubscriberTransactionElement)initWithAction:(id)action andAnnotation:(id)annotation;
- (SubscriberTransactionElement)initWithInfo:(id)info;
- (id).cxx_construct;
- (id)action;
- (id)description;
- (id)identifier;
- (unsigned)secondsTillCancelation;
- (void)dealloc;
- (void)decreaseAttempts;
- (void)disarmCancelation;
- (void)setAction:(id)action;
- (void)setCancelationTimestampInSecond:(unsigned int)second;
- (void)setIdentifier:(int)identifier;
@end

@implementation SubscriberTransactionElement

- (SubscriberTransactionElement)initWithAction:(id)action andAnnotation:(id)annotation
{
  v8.receiver = self;
  v8.super_class = SubscriberTransactionElement;
  v6 = [(SubscriberTransactionElement *)&v8 init];
  if (v6)
  {
    *(v6 + 6) = [[NSMutableDictionary alloc] initWithCapacity:3];
    *(v6 + 7) = annotation;
    [v6 setAction:action];
    [v6 setIdentifier:0xFFFFFFFFLL];
    v6[8] = 0;
    v6[40] = 0;
    *(v6 + 3) = 0;
    *(v6 + 15) = 0;
  }

  return v6;
}

- (SubscriberTransactionElement)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = SubscriberTransactionElement;
  v4 = [(SubscriberTransactionElement *)&v6 init];
  if (v4)
  {
    *(v4 + 6) = [[NSMutableDictionary alloc] initWithDictionary:info];
    *(v4 + 7) = 0;
    v4[8] = 0;
    v4[40] = 0;
    *(v4 + 3) = 0;
    *(v4 + 15) = 0;
  }

  return v4;
}

- (void)dealloc
{
  info = self->_info;
  if (info)
  {
  }

  annotation = self->_annotation;
  if (annotation)
  {
  }

  v5.receiver = self;
  v5.super_class = SubscriberTransactionElement;
  [(SubscriberTransactionElement *)&v5 dealloc];
}

- (id)identifier
{
  info = [(SubscriberTransactionElement *)self info];
  if ([(SubscriberTransactionElement *)self type])
  {
    v4 = @"response-id";
  }

  else
  {
    v4 = @"request-id";
  }

  return [(NSMutableDictionary *)info objectForKey:v4];
}

- (void)setIdentifier:(int)identifier
{
  v3 = *&identifier;
  info = [(SubscriberTransactionElement *)self info];
  v6 = [NSNumber numberWithInt:v3];
  if ([(SubscriberTransactionElement *)self type])
  {
    v7 = @"response-id";
  }

  else
  {
    v7 = @"request-id";
  }

  [(NSMutableDictionary *)info setObject:v6 forKey:v7];
}

- (id)action
{
  info = [(SubscriberTransactionElement *)self info];

  return [(NSMutableDictionary *)info objectForKey:@"action-name"];
}

- (void)setAction:(id)action
{
  info = [(SubscriberTransactionElement *)self info];

  [(NSMutableDictionary *)info setObject:action forKey:@"action-name"];
}

- (void)decreaseAttempts
{
  if (self->hasAttemptLimitation)
  {
    leftAttempts = self->leftAttempts;
    if (leftAttempts)
    {
      self->leftAttempts = leftAttempts - 1;
    }
  }
}

- (void)setCancelationTimestampInSecond:(unsigned int)second
{
  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (!self->cancelationTS.__engaged_)
  {
    self->cancelationTS.__engaged_ = 1;
  }

  self->cancelationTS.var0.__val_.__d_.__rep_ = v5.__d_.__rep_ + 1000000000 * second;
}

- (void)disarmCancelation
{
  if (self->cancelationTS.__engaged_)
  {
    self->cancelationTS.__engaged_ = 0;
  }
}

- (BOOL)expired
{
  if (!self->cancelationTS.__engaged_)
  {
    return 0;
  }

  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  return !self->cancelationTS.__engaged_ || self->cancelationTS.var0.__val_.__d_.__rep_ <= v3.__d_.__rep_;
}

- (unsigned)secondsTillCancelation
{
  if (!self->cancelationTS.__engaged_)
  {
    return 0;
  }

  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = self->cancelationTS.var0.__val_.__d_.__rep_;
  v5 = rep <= v3.__d_.__rep_;
  v6 = rep - v3.__d_.__rep_;
  if (v5)
  {
    return 0;
  }

  if (1000000000 * (v6 / 1000000000) >= v6)
  {
    v7 = v6 / 1000000000;
  }

  else
  {
    v7 = v6 / 1000000000 + 1;
  }

  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)description
{
  v3 = [(NSMutableDictionary *)[(SubscriberTransactionElement *)self info] objectForKey:@"action-name"];
  if (self->hasAttemptLimitation)
  {
    v4 = "";
  }

  else
  {
    v4 = "un";
  }

  leftAttempts = self->leftAttempts;
  secondsTillCancelation = [(SubscriberTransactionElement *)self secondsTillCancelation];
  if (self->needSecureIntent)
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  if (self->needFullAuthentication)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  if (self->userInitiated)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  return [NSString stringWithFormat:@"Type: %@, attempts:%slimited (%u), expire:%us secure-intent:%s, full-auth:%s, user-initiated:%s, Info: %@", v3, v4, leftAttempts, secondsTillCancelation, v7, v8, v9, [(NSMutableDictionary *)[(SubscriberTransactionElement *)self info] description]];
}

- (BOOL)matchContent:(id)content
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)[(SubscriberTransactionElement *)self info] mutableCopy];
  [v6 removeObjectForKey:@"action-name"];
  [v6 removeObjectForKey:@"request-id"];
  [v6 removeObjectForKey:@"response-id"];
  LOBYTE(content) = [v6 isEqualToDictionary:content];
  objc_autoreleasePoolPop(v5);
  return content;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 32) = 0;
  return self;
}

@end