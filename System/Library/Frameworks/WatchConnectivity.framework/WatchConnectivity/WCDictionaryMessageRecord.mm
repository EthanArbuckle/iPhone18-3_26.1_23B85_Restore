@interface WCDictionaryMessageRecord
- (BOOL)expectsResponse;
- (WCDictionaryMessageRecord)initWithIdentifier:(id)identifier responseHandler:(id)handler errorHandler:(id)errorHandler;
- (id)description;
@end

@implementation WCDictionaryMessageRecord

- (WCDictionaryMessageRecord)initWithIdentifier:(id)identifier responseHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = WCDictionaryMessageRecord;
  v9 = [(WCMessageRecord *)&v13 initWithIdentifier:identifier errorHandler:errorHandler];
  if (v9)
  {
    v10 = [handlerCopy copy];
    responseHandler = v9->_responseHandler;
    v9->_responseHandler = v10;
  }

  return v9;
}

- (BOOL)expectsResponse
{
  responseHandler = [(WCDictionaryMessageRecord *)self responseHandler];
  v3 = responseHandler != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WCMessageRecord *)self identifier];
  responseHandler = [(WCDictionaryMessageRecord *)self responseHandler];
  if (responseHandler)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  errorHandler = [(WCMessageRecord *)self errorHandler];
  if (errorHandler)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, hasResponseHandler %s, hasErrorHandler: %s>", v5, self, identifier, v8, v10];

  return v11;
}

@end