@interface CNPRPosterLevelSet
- (CNPRPosterLevelSet)initWithWrappedLevelSet:(id)a3;
@end

@implementation CNPRPosterLevelSet

- (CNPRPosterLevelSet)initWithWrappedLevelSet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRPosterLevelSet;
  v6 = [(CNPRPosterLevelSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLevelSet, a3);
  }

  return v7;
}

@end