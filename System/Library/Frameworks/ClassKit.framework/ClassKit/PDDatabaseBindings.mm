@interface PDDatabaseBindings
- (PDDatabaseBindings)init;
@end

@implementation PDDatabaseBindings

- (PDDatabaseBindings)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  v5 = [NSString stringWithFormat:@"The method [%@ %@] is not available.", v3, v4];
  v6 = [NSException exceptionWithName:NSInvalidArgumentException reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

@end