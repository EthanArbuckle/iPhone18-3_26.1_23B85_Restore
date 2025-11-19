@interface ABSDynamicLoader
+ (BOOL)loadFrameworkAtPath:(id)a3 andStoreHandle:(void *)a4 bundle:(id *)a5;
@end

@implementation ABSDynamicLoader

+ (BOOL)loadFrameworkAtPath:(id)a3 andStoreHandle:(void *)a4 bundle:(id *)a5
{
  v6 = a3;
  v7 = [v6 isEqual:@"System/Library/Assistant/Plugins/AddressBook.assistantBundle/AddressBook"];
  if (v7)
  {
    if (a5)
    {
      *a5 = objc_alloc_init(ABSBundle);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Path %@ isn't something AddressBook.framework can load at the moment", v6}];
  }

  return v7;
}

@end