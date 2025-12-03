@interface CNPRPosterLevelSet
- (CNPRPosterLevelSet)initWithWrappedLevelSet:(id)set;
@end

@implementation CNPRPosterLevelSet

- (CNPRPosterLevelSet)initWithWrappedLevelSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = CNPRPosterLevelSet;
  v6 = [(CNPRPosterLevelSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLevelSet, set);
  }

  return v7;
}

@end