@interface BCProgressKitProgressInfo
- (BCProgressKitProgressInfo)initWithIdentifier:(id)a3 pageRange:(_NSRange)a4;
- (BOOL)isProgressValid;
- (_NSRange)pageRange;
- (double)progress;
@end

@implementation BCProgressKitProgressInfo

- (BCProgressKitProgressInfo)initWithIdentifier:(id)a3 pageRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = BCProgressKitProgressInfo;
  v9 = [(BCProgressKitProgressInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_pageRange.location = location;
    v10->_pageRange.length = length;
    v10->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (BOOL)isProgressValid
{
  if ([(BCProgressKitProgressInfo *)self pageRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(BCProgressKitProgressInfo *)self currentPage];
  v5 = [(BCProgressKitProgressInfo *)self pageRange];
  return v4 >= v5 && v4 - v5 < v6;
}

- (double)progress
{
  v3 = [(BCProgressKitProgressInfo *)self isProgressValid];
  result = -1.0;
  if (v3)
  {
    [(BCProgressKitProgressInfo *)self pageRange];
    if (v5)
    {
      v6 = [(BCProgressKitProgressInfo *)self currentPage];
      v7 = (v6 - [(BCProgressKitProgressInfo *)self pageRange]+ 1);
      [(BCProgressKitProgressInfo *)self pageRange];
      return v7 / v8;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (_NSRange)pageRange
{
  length = self->_pageRange.length;
  location = self->_pageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end