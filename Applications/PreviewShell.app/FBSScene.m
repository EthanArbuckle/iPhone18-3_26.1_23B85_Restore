@interface FBSScene
- (int)_uvPreviewShellHostProcessPid;
@end

@implementation FBSScene

- (int)_uvPreviewShellHostProcessPid
{
  v2 = [(FBSScene *)self hostHandle];
  v3 = [v2 auditToken];
  v4 = [v3 pid];

  return v4;
}

@end