@interface CACCommandSearchResult
+ (id)searchResultWithGroup:(id)group;
- (CACCommandSearchResult)initWithGroup:(id)group;
@end

@implementation CACCommandSearchResult

- (CACCommandSearchResult)initWithGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = CACCommandSearchResult;
  v6 = [(CACCommandSearchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandGroup, group);
  }

  return v7;
}

+ (id)searchResultWithGroup:(id)group
{
  groupCopy = group;
  v4 = [[CACCommandSearchResult alloc] initWithGroup:groupCopy];

  return v4;
}

@end