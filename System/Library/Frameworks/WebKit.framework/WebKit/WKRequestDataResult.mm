@interface WKRequestDataResult
- (WKRequestDataResult)initWithRequestDataBytes:(id)a3 protocol:(unsigned __int8)a4;
@end

@implementation WKRequestDataResult

- (WKRequestDataResult)initWithRequestDataBytes:(id)a3 protocol:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = WKRequestDataResult;
  result = [(WKRequestDataResult *)&v7 init];
  if (result)
  {
    result->_requestDataBytes = a3;
    result->_protocol = a4;
  }

  return result;
}

@end