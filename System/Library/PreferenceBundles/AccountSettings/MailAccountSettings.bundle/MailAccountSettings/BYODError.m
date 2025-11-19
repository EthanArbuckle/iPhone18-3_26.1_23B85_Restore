@interface BYODError
- (BYODError)initWithDictionary:(id)a3;
@end

@implementation BYODError

- (BYODError)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BYODError;
  v5 = [(BYODError *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"errorCode"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v6;

    v8 = [v4 objectForKeyedSubscript:@"errorMessage"];
    errorMessage = v5->_errorMessage;
    v5->_errorMessage = v8;

    v10 = [v4 objectForKeyedSubscript:@"errorTitle"];
    errorTitle = v5->_errorTitle;
    v5->_errorTitle = v10;
  }

  return v5;
}

@end