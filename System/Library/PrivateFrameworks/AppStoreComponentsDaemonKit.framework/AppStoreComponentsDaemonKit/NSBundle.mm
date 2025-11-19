@interface NSBundle
@end

@implementation NSBundle

void __51__NSBundle_AppStoreComponents__asc_frameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreComponentsDaemonKit.framework"];
  v1 = asc_frameworkBundle_appStoreComponents;
  asc_frameworkBundle_appStoreComponents = v0;

  if (!asc_frameworkBundle_appStoreComponents)
  {
    v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Could not find AppStoreComponents framework bundle" userInfo:0];
    objc_exception_throw(v2);
  }
}

@end