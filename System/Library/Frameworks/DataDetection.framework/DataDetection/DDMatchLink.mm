@interface DDMatchLink
- (DDMatchLink)initWithDDScannerResult:(id)result;
@end

@implementation DDMatchLink

- (DDMatchLink)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = DDMatchLink;
  v5 = [(DDMatch *)&v10 initWithDDScannerResult:resultCopy];
  if (v5 && ([resultCopy url], v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, !v5->_URL))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end