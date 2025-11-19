@interface WCDictionaryMessageRecord
- (BOOL)expectsResponse;
- (WCDictionaryMessageRecord)initWithIdentifier:(id)a3 responseHandler:(id)a4 errorHandler:(id)a5;
- (id)description;
@end

@implementation WCDictionaryMessageRecord

- (WCDictionaryMessageRecord)initWithIdentifier:(id)a3 responseHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WCDictionaryMessageRecord;
  v9 = [(WCMessageRecord *)&v13 initWithIdentifier:a3 errorHandler:a5];
  if (v9)
  {
    v10 = [v8 copy];
    responseHandler = v9->_responseHandler;
    v9->_responseHandler = v10;
  }

  return v9;
}

- (BOOL)expectsResponse
{
  v2 = [(WCDictionaryMessageRecord *)self responseHandler];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCMessageRecord *)self identifier];
  v7 = [(WCDictionaryMessageRecord *)self responseHandler];
  if (v7)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [(WCMessageRecord *)self errorHandler];
  if (v9)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, hasResponseHandler %s, hasErrorHandler: %s>", v5, self, v6, v8, v10];

  return v11;
}

@end