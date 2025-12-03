@interface WCMessageRecord
- (BOOL)isEqual:(id)equal;
- (WCMessageRecord)initWithIdentifier:(id)identifier errorHandler:(id)handler;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation WCMessageRecord

- (WCMessageRecord)initWithIdentifier:(id)identifier errorHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = WCMessageRecord;
  v8 = [(WCMessageRecord *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [handlerCopy copy];
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
  identifier = [(WCMessageRecord *)self identifier];
  v7 = identifier;
  if (self->_errorHandler)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, hasErrorHandler: %s>", v5, self, identifier, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(WCMessageRecord *)self identifier];
      identifier2 = [(WCMessageRecord *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
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
  identifier = [(WCMessageRecord *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end