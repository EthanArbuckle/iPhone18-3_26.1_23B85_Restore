@interface SAAppsCheckRestriction
- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion;
@end

@implementation SAAppsCheckRestriction

- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_alloc_init(SACommandFailed);
  launchId = [(SAAppsCheckRestriction *)self launchId];
  if (!launchId)
  {
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  serviceWithDefaultShellEndpoint = [off_10058BBA0() serviceWithDefaultShellEndpoint];
  v11 = serviceWithDefaultShellEndpoint;
  if (serviceWithDefaultShellEndpoint)
  {
    v15 = 0;
    if ([serviceWithDefaultShellEndpoint canOpenApplication:launchId reason:&v15])
    {
      v12 = objc_alloc_init(SACommandSucceeded);

      v8 = v12;
    }

    v13 = 0;
  }

  else
  {
    v13 = [AFError errorWithCode:13];
  }

  if (completionCopy)
  {
LABEL_10:
    v14 = [requestCopy createResponseWithReplyCommand:v8];
    completionCopy[2](completionCopy, v14, 0, v13);
  }

LABEL_11:
}

@end