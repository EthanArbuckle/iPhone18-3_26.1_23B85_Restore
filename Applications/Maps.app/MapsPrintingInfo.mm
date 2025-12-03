@interface MapsPrintingInfo
- (MapsPrintingInfo)initWithNumberOfPages:(int64_t)pages;
@end

@implementation MapsPrintingInfo

- (MapsPrintingInfo)initWithNumberOfPages:(int64_t)pages
{
  v8.receiver = self;
  v8.super_class = MapsPrintingInfo;
  v4 = [(MapsPrintingInfo *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfPages = pages;
    v6 = v4;
  }

  return v5;
}

@end