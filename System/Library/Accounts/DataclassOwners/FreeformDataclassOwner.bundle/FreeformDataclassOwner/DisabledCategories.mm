@interface DisabledCategories
@end

@implementation DisabledCategories

void __DisabledCategories_block_invoke(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v6 = [v1 arrayForKey:@"CRLLogCatNO"];

  if (v6)
  {
    v2 = [[CRLLogCatThreadSafeMutableSet alloc] initWithArray:v6];
    v3 = DisabledCategories_sNOCategories;
    DisabledCategories_sNOCategories = v2;
  }

  if (!DisabledCategories_sNOCategories)
  {
    v4 = objc_alloc_init(CRLLogCatThreadSafeMutableSet);
    v5 = DisabledCategories_sNOCategories;
    DisabledCategories_sNOCategories = v4;
  }
}

@end