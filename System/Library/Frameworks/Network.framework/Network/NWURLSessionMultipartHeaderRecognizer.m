@interface NWURLSessionMultipartHeaderRecognizer
- (NWURLSessionMultipartHeaderRecognizer)init;
@end

@implementation NWURLSessionMultipartHeaderRecognizer

- (NWURLSessionMultipartHeaderRecognizer)init
{
  v3.receiver = self;
  v3.super_class = NWURLSessionMultipartHeaderRecognizer;
  result = [(NWURLSessionMultipartHeaderRecognizer *)&v3 init];
  if (result)
  {
    *&result->_last = 0;
  }

  return result;
}

@end