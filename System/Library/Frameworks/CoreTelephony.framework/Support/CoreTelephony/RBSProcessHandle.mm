@interface RBSProcessHandle
- (BOOL)ct_isLaunchAngel;
- (NSString)ct_processType;
@end

@implementation RBSProcessHandle

- (NSString)ct_processType
{
  if (([(RBSProcessHandle *)self isDaemon]& 1) != 0)
  {
    return @"daemon";
  }

  if (([(RBSProcessHandle *)self isApplication]& 1) != 0)
  {
    return @"application";
  }

  if (([(RBSProcessHandle *)self isXPCService]& 1) != 0)
  {
    return @"xpc-service";
  }

  if ([(RBSProcessHandle *)self hasConsistentLaunchdJob])
  {
    return @"angel";
  }

  return @"unknown";
}

- (BOOL)ct_isLaunchAngel
{
  ct_processType = [(RBSProcessHandle *)self ct_processType];
  v3 = [ct_processType isEqualToString:@"angel"];

  return v3;
}

@end