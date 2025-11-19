@interface SubscriberTransactionElement
- (BOOL)expired;
- (BOOL)matchContent:(id)a3;
- (SubscriberTransactionElement)initWithAction:(id)a3 andAnnotation:(id)a4;
- (SubscriberTransactionElement)initWithInfo:(id)a3;
- (id).cxx_construct;
- (id)action;
- (id)description;
- (id)identifier;
- (unsigned)secondsTillCancelation;
- (void)dealloc;
- (void)decreaseAttempts;
- (void)disarmCancelation;
- (void)setAction:(id)a3;
- (void)setCancelationTimestampInSecond:(unsigned int)a3;
- (void)setIdentifier:(int)a3;
@end

@implementation SubscriberTransactionElement

- (SubscriberTransactionElement)initWithAction:(id)a3 andAnnotation:(id)a4
{
  v8.receiver = self;
  v8.super_class = SubscriberTransactionElement;
  v6 = [(SubscriberTransactionElement *)&v8 init];
  if (v6)
  {
    *(v6 + 6) = [[NSMutableDictionary alloc] initWithCapacity:3];
    *(v6 + 7) = a4;
    [v6 setAction:a3];
    [v6 setIdentifier:0xFFFFFFFFLL];
    v6[8] = 0;
    v6[40] = 0;
    *(v6 + 3) = 0;
    *(v6 + 15) = 0;
  }

  return v6;
}

- (SubscriberTransactionElement)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = SubscriberTransactionElement;
  v4 = [(SubscriberTransactionElement *)&v6 init];
  if (v4)
  {
    *(v4 + 6) = [[NSMutableDictionary alloc] initWithDictionary:a3];
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
  v3 = [(SubscriberTransactionElement *)self info];
  if ([(SubscriberTransactionElement *)self type])
  {
    v4 = @"response-id";
  }

  else
  {
    v4 = @"request-id";
  }

  return [(NSMutableDictionary *)v3 objectForKey:v4];
}

- (void)setIdentifier:(int)a3
{
  v3 = *&a3;
  v5 = [(SubscriberTransactionElement *)self info];
  v6 = [NSNumber numberWithInt:v3];
  if ([(SubscriberTransactionElement *)self type])
  {
    v7 = @"response-id";
  }

  else
  {
    v7 = @"request-id";
  }

  [(NSMutableDictionary *)v5 setObject:v6 forKey:v7];
}

- (id)action
{
  v2 = [(SubscriberTransactionElement *)self info];

  return [(NSMutableDictionary *)v2 objectForKey:@"action-name"];
}

- (void)setAction:(id)a3
{
  v4 = [(SubscriberTransactionElement *)self info];

  [(NSMutableDictionary *)v4 setObject:a3 forKey:@"action-name"];
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

- (void)setCancelationTimestampInSecond:(unsigned int)a3
{
  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (!self->cancelationTS.__engaged_)
  {
    self->cancelationTS.__engaged_ = 1;
  }

  self->cancelationTS.var0.__val_.__d_.__rep_ = v5.__d_.__rep_ + 1000000000 * a3;
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
  v6 = [(SubscriberTransactionElement *)self secondsTillCancelation];
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

  return [NSString stringWithFormat:@"Type: %@, attempts:%slimited (%u), expire:%us secure-intent:%s, full-auth:%s, user-initiated:%s, Info: %@", v3, v4, leftAttempts, v6, v7, v8, v9, [(NSMutableDictionary *)[(SubscriberTransactionElement *)self info] description]];
}

- (BOOL)matchContent:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)[(SubscriberTransactionElement *)self info] mutableCopy];
  [v6 removeObjectForKey:@"action-name"];
  [v6 removeObjectForKey:@"request-id"];
  [v6 removeObjectForKey:@"response-id"];
  LOBYTE(a3) = [v6 isEqualToDictionary:a3];
  objc_autoreleasePoolPop(v5);
  return a3;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 32) = 0;
  return self;
}

@end