@interface VOTElementFetchFoundData
+ (id)fetchFoundData:(id)a3 forceUpdate:(BOOL)a4 direction:(int64_t)a5 generation:(unint64_t)a6 range:(_NSRange)a7 searchType:(int64_t)a8;
- (_NSRange)range;
- (id)description;
@end

@implementation VOTElementFetchFoundData

+ (id)fetchFoundData:(id)a3 forceUpdate:(BOOL)a4 direction:(int64_t)a5 generation:(unint64_t)a6 range:(_NSRange)a7 searchType:(int64_t)a8
{
  length = a7.length;
  location = a7.location;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(VOTElementFetchFoundData);
  [(VOTElementFetchFoundData *)v14 setElement:v13];

  [(VOTElementFetchFoundData *)v14 setNeedsForceCacheUpdate:v12];
  [(VOTElementFetchFoundData *)v14 setDirection:a5];
  [(VOTElementFetchFoundData *)v14 setClientGeneration:a6];
  [(VOTElementFetchFoundData *)v14 setRange:location, length];
  [(VOTElementFetchFoundData *)v14 setSearchType:a8];

  return v14;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTElementFetchFoundData;
  v3 = [(VOTElementFetchFoundData *)&v8 description];
  v4 = [(VOTElementFetchFoundData *)self element];
  v10.location = [(VOTElementFetchFoundData *)self range];
  v5 = NSStringFromRange(v10);
  v6 = [NSString stringWithFormat:@"%@ element: %@, range: %@", v3, v4, v5];

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