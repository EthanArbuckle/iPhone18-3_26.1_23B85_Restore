@interface ABSDynamicLoader
+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle;
@end

@implementation ABSDynamicLoader

+ (BOOL)loadFrameworkAtPath:(id)path andStoreHandle:(void *)handle bundle:(id *)bundle
{
  pathCopy = path;
  v7 = [pathCopy isEqual:@"System/Library/Assistant/Plugins/AddressBook.assistantBundle/AddressBook"];
  if (v7)
  {
    if (bundle)
    {
      *bundle = objc_alloc_init(ABSBundle);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Path %@ isn't something AddressBook.framework can load at the moment", pathCopy}];
  }

  return v7;
}

@end