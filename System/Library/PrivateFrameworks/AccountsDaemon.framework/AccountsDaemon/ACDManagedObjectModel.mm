@interface ACDManagedObjectModel
@end

@implementation ACDManagedObjectModel

void ___ACDManagedObjectModel_block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [v3 URLForResource:@"accounts" withExtension:@"momd"];
  v1 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v0];
  v2 = _ACDManagedObjectModel_managedObjectModel;
  _ACDManagedObjectModel_managedObjectModel = v1;
}

@end