@interface AEFileSystem
+ (NSURL)assessmentAgentContainerURL;
+ (NSURL)assessmentAgentPolicyStoreDirectoryURL;
+ (NSURL)assessmentModeFileURL;
+ (id)baseURLForGloballyAvailableFiles;
@end

@implementation AEFileSystem

+ (NSURL)assessmentAgentContainerURL
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"AEFileSystem.m" lineNumber:53 description:{@"%@ is unimplemented on iOS", v5}];

  return 0;
}

+ (NSURL)assessmentAgentPolicyStoreDirectoryURL
{
  v2 = +[AEFileSystem baseURLForGloballyAvailableFiles];
  v3 = [v2 URLByAppendingPathComponent:@"PolicyStore" isDirectory:1];

  return v3;
}

+ (id)baseURLForGloballyAvailableFiles
{
  objc_opt_self();
  objc_opt_self();
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile" isDirectory:1];
  v1 = [v0 URLByAppendingPathComponent:@"Library" isDirectory:1];

  v2 = [v1 URLByAppendingPathComponent:@"com.apple.assessmentagent" isDirectory:1];

  return v2;
}

+ (NSURL)assessmentModeFileURL
{
  v2 = +[AEFileSystem baseURLForGloballyAvailableFiles];
  v3 = [v2 URLByAppendingPathComponent:@"ModeActive"];

  return v3;
}

@end