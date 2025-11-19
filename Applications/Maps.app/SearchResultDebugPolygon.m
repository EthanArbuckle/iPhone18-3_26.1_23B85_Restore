@interface SearchResultDebugPolygon
- (SearchResultDebugPolygon)init;
@end

@implementation SearchResultDebugPolygon

- (SearchResultDebugPolygon)init
{
  v6.receiver = self;
  v6.super_class = SearchResultDebugPolygon;
  v2 = [(SearchResultDebugPolygon *)&v6 init];
  if (v2)
  {
    v3 = +[UIColor redColor];
    strokeColor = v2->_strokeColor;
    v2->_strokeColor = v3;
  }

  return v2;
}

@end