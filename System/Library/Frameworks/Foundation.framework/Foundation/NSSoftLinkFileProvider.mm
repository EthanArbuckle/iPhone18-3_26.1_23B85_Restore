@interface NSSoftLinkFileProvider
@end

@implementation NSSoftLinkFileProvider

void *___NSSoftLinkFileProvider_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 256);
  if (result)
  {
    v1 = result;
    off_1ED43F3A0 = dlsym(result, "FPFileProviderMessageInterfacesForItemAtURL");
    off_1ED43F3B8 = dlsym(v1, "FPFileProviderFetchProxyFactoryEndpointForMessageInterface");
    off_1ED43F3A8 = dlsym(v1, "FPFetchServiceEndpointCreatorForItemAtURL");
    off_1ED43F3B0 = dlsym(v1, "FPFetchServiceEndpointCreatorByNameForItemAtURL");
    off_1ED43F328 = dlsym(v1, "FPStartDownloadingItemAtURL");
    off_1ED43F340 = dlsym(v1, "FPEvictItemAtURL");
    off_1ED43F380 = dlsym(v1, "FPPauseSyncForItemAtURL");
    off_1ED43F388 = dlsym(v1, "FPResumeSyncForItemAtURLWithBehavior");
    off_1ED43F390 = dlsym(v1, "FPFetchLatestRemoteVersionOfItemAtURL");
    result = dlsym(v1, "FPUploadAndReturnLocalVersionOfUbiquitousItemAtURLWithConflictResolutionPolicy");
    off_1ED43F398 = result;
  }

  return result;
}

@end