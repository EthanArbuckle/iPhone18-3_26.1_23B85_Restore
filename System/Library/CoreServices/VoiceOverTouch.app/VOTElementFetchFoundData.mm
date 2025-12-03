@interface VOTElementFetchFoundData
+ (id)fetchFoundData:(id)data forceUpdate:(BOOL)update direction:(int64_t)direction generation:(unint64_t)generation range:(_NSRange)range searchType:(int64_t)type;
- (_NSRange)range;
- (id)description;
@end

@implementation VOTElementFetchFoundData

+ (id)fetchFoundData:(id)data forceUpdate:(BOOL)update direction:(int64_t)direction generation:(unint64_t)generation range:(_NSRange)range searchType:(int64_t)type
{
  length = range.length;
  location = range.location;
  updateCopy = update;
  dataCopy = data;
  v14 = objc_alloc_init(VOTElementFetchFoundData);
  [(VOTElementFetchFoundData *)v14 setElement:dataCopy];

  [(VOTElementFetchFoundData *)v14 setNeedsForceCacheUpdate:updateCopy];
  [(VOTElementFetchFoundData *)v14 setDirection:direction];
  [(VOTElementFetchFoundData *)v14 setClientGeneration:generation];
  [(VOTElementFetchFoundData *)v14 setRange:location, length];
  [(VOTElementFetchFoundData *)v14 setSearchType:type];

  return v14;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTElementFetchFoundData;
  v3 = [(VOTElementFetchFoundData *)&v8 description];
  element = [(VOTElementFetchFoundData *)self element];
  v10.location = [(VOTElementFetchFoundData *)self range];
  v5 = NSStringFromRange(v10);
  v6 = [NSString stringWithFormat:@"%@ element: %@, range: %@", v3, element, v5];

  return v6;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end