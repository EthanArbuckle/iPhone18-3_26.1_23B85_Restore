@interface WKFindResult
- (id)_initWithMatchFound:(BOOL)found;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WKFindResult

- (id)_initWithMatchFound:(BOOL)found
{
  v5.receiver = self;
  v5.super_class = WKFindResult;
  result = [(WKFindResult *)&v5 init];
  if (result)
  {
    *(result + 8) = found;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  matchFound = self->_matchFound;

  return [v4 _initWithMatchFound:matchFound];
}

@end