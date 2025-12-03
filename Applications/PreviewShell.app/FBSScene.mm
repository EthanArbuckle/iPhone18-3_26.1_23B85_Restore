@interface FBSScene
- (int)_uvPreviewShellHostProcessPid;
@end

@implementation FBSScene

- (int)_uvPreviewShellHostProcessPid
{
  hostHandle = [(FBSScene *)self hostHandle];
  auditToken = [hostHandle auditToken];
  v4 = [auditToken pid];

  return v4;
}

@end