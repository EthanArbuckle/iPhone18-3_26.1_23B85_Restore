@interface WKFindConfiguration
- (WKFindConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WKFindConfiguration

- (WKFindConfiguration)init
{
  v3.receiver = self;
  v3.super_class = WKFindConfiguration;
  result = [(WKFindConfiguration *)&v3 init];
  if (result)
  {
    *&result->_backwards = 0;
    result->_wraps = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setBackwards:self->_backwards];
  [v4 setCaseSensitive:self->_caseSensitive];
  [v4 setWraps:self->_wraps];
  return v4;
}

@end