@interface WKRequestDataResult
- (WKRequestDataResult)initWithRequestDataBytes:(id)bytes protocol:(unsigned __int8)protocol;
@end

@implementation WKRequestDataResult

- (WKRequestDataResult)initWithRequestDataBytes:(id)bytes protocol:(unsigned __int8)protocol
{
  v7.receiver = self;
  v7.super_class = WKRequestDataResult;
  result = [(WKRequestDataResult *)&v7 init];
  if (result)
  {
    result->_requestDataBytes = bytes;
    result->_protocol = protocol;
  }

  return result;
}

@end