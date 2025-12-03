@interface MFWorkspaceURLRoute
- (MFWorkspaceURLRoute)init;
- (MFWorkspaceURLRoute)initWithWorkspace:(id)workspace;
- (id)routeRequest:(id)request;
@end

@implementation MFWorkspaceURLRoute

- (MFWorkspaceURLRoute)init
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [(MFWorkspaceURLRoute *)self initWithWorkspace:v3];

  return v4;
}

- (MFWorkspaceURLRoute)initWithWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v9.receiver = self;
  v9.super_class = MFWorkspaceURLRoute;
  v6 = [(MFWorkspaceURLRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_priority = -1;
    objc_storeStrong(&v6->_workspace, workspace);
  }

  return v7;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
  workspace = [(MFWorkspaceURLRoute *)self workspace];
  v6 = [requestCopy URL];
  v12 = 0;
  v7 = [workspace openSensitiveURL:v6 withOptions:0 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = +[EFFuture nullFuture];
  }

  else
  {
    if (!v8)
    {
      v8 = +[NSError ef_notSupportedError];
    }

    v10 = [NSError mf_routingErrorWithUnderlyingError:v8 request:requestCopy allowFallbackRouting:0];
    v9 = [EFFuture futureWithError:v10];
  }

  return v9;
}

@end