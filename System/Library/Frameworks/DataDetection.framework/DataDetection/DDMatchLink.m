@interface DDMatchLink
- (DDMatchLink)initWithDDScannerResult:(id)a3;
@end

@implementation DDMatchLink

- (DDMatchLink)initWithDDScannerResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DDMatchLink;
  v5 = [(DDMatch *)&v10 initWithDDScannerResult:v4];
  if (v5 && ([v4 url], v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, !v5->_URL))
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