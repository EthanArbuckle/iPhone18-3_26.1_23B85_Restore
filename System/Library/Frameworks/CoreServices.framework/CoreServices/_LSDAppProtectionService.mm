@interface _LSDAppProtectionService
+ (id)XPCInterface;
+ (void)getHiddenApplicationsWithCompletion:(id)completion;
+ (void)getLockedApplicationsWithCompletion:(id)completion;
+ (void)setHiddenApplications:(id)applications completion:(id)completion;
+ (void)setLockedApplications:(id)applications completion:(id)completion;
@end

@implementation _LSDAppProtectionService

+ (void)setHiddenApplications:(id)applications completion:(id)completion
{
  applicationsCopy = applications;
  completionCopy = completion;
  v7 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
  [v7 setHiddenApplications:applicationsCopy completion:completionCopy];
}

+ (void)getHiddenApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
  [v4 getHiddenApplicationsWithCompletion:completionCopy];
}

+ (void)setLockedApplications:(id)applications completion:(id)completion
{
  applicationsCopy = applications;
  completionCopy = completion;
  v7 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
  [v7 setLockedApplications:applicationsCopy completion:completionCopy];
}

+ (void)getLockedApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
  [v4 getLockedApplicationsWithCompletion:completionCopy];
}

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40___LSDAppProtectionService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDAppProtectionService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDAppProtectionService XPCInterface]::once, v4);
  }

  v2 = +[_LSDAppProtectionService XPCInterface]::result;

  return v2;
}

@end