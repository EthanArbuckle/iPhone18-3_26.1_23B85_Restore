@interface BCProgressKitProgressInfo
- (BCProgressKitProgressInfo)initWithIdentifier:(id)identifier pageRange:(_NSRange)range;
- (BOOL)isProgressValid;
- (_NSRange)pageRange;
- (double)progress;
@end

@implementation BCProgressKitProgressInfo

- (BCProgressKitProgressInfo)initWithIdentifier:(id)identifier pageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = BCProgressKitProgressInfo;
  v9 = [(BCProgressKitProgressInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
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

  currentPage = [(BCProgressKitProgressInfo *)self currentPage];
  pageRange = [(BCProgressKitProgressInfo *)self pageRange];
  return currentPage >= pageRange && currentPage - pageRange < v6;
}

- (double)progress
{
  isProgressValid = [(BCProgressKitProgressInfo *)self isProgressValid];
  result = -1.0;
  if (isProgressValid)
  {
    [(BCProgressKitProgressInfo *)self pageRange];
    if (v5)
    {
      currentPage = [(BCProgressKitProgressInfo *)self currentPage];
      v7 = (currentPage - [(BCProgressKitProgressInfo *)self pageRange]+ 1);
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