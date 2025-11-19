@interface WCMessageRecord
- (BOOL)isEqual:(id)a3;
- (WCMessageRecord)initWithIdentifier:(id)a3 errorHandler:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation WCMessageRecord

- (WCMessageRecord)initWithIdentifier:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WCMessageRecord;
  v8 = [(WCMessageRecord *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    errorHandler = v8->_errorHandler;
    v8->_errorHandler = v11;
  }

  return v8;
}

- (void)dealloc
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
  }

  v4.receiver = self;
  v4.super_class = WCMessageRecord;
  [(WCMessageRecord *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCMessageRecord *)self identifier];
  v7 = v6;
  if (self->_errorHandler)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, hasErrorHandler: %s>", v5, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCMessageRecord *)self identifier];
      v7 = [(WCMessageRecord *)v5 identifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCMessageRecord *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end