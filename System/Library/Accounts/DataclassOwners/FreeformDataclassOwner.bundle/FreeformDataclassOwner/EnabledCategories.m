@interface EnabledCategories
@end

@implementation EnabledCategories

void __EnabledCategories_block_invoke(id a1)
{
  +[NSUserDefaults crl_registerDefaults];
  v1 = +[NSUserDefaults standardUserDefaults];
  v6 = [v1 arrayForKey:@"CRLLogCatYES"];

  if (v6)
  {
    v2 = [[CRLLogCatThreadSafeMutableSet alloc] initWithArray:v6];
    v3 = EnabledCategories_sYESCategories;
    EnabledCategories_sYESCategories = v2;
  }

  if (!EnabledCategories_sYESCategories)
  {
    v4 = objc_alloc_init(CRLLogCatThreadSafeMutableSet);
    v5 = EnabledCategories_sYESCategories;
    EnabledCategories_sYESCategories = v4;
  }
}

@end