@interface WKFindResult
- (id)_initWithMatchFound:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WKFindResult

- (id)_initWithMatchFound:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WKFindResult;
  result = [(WKFindResult *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  matchFound = self->_matchFound;

  return [v4 _initWithMatchFound:matchFound];
}

@end