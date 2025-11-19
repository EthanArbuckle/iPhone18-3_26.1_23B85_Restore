@interface CACCommandSearchResult
+ (id)searchResultWithGroup:(id)a3;
- (CACCommandSearchResult)initWithGroup:(id)a3;
@end

@implementation CACCommandSearchResult

- (CACCommandSearchResult)initWithGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CACCommandSearchResult;
  v6 = [(CACCommandSearchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandGroup, a3);
  }

  return v7;
}

+ (id)searchResultWithGroup:(id)a3
{
  v3 = a3;
  v4 = [[CACCommandSearchResult alloc] initWithGroup:v3];

  return v4;
}

@end