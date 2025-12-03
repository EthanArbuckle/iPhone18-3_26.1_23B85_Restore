@interface ASTNetworkReachability
+ (BOOL)hasExpensiveCellOnlyNetworkConnection;
+ (BOOL)hasNetworkConnection;
+ (id)defaultPath;
@end

@implementation ASTNetworkReachability

+ (BOOL)hasNetworkConnection
{
  defaultPath = [self defaultPath];
  v3 = nw_path_get_status(defaultPath) == nw_path_status_satisfied;

  return v3;
}

+ (BOOL)hasExpensiveCellOnlyNetworkConnection
{
  defaultPath = [self defaultPath];
  if (nw_path_get_status(defaultPath) == nw_path_status_satisfied && MEMORY[0x245CE6430](defaultPath))
  {
    v3 = MEMORY[0x245CE6440](defaultPath, 2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)defaultPath
{
  default_evaluator = nw_path_create_default_evaluator();
  v3 = nw_path_evaluator_copy_path();

  return v3;
}

@end