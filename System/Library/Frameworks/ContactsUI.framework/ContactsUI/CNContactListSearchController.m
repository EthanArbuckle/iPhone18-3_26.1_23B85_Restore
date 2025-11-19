@interface CNContactListSearchController
- (id)searchBar;
@end

@implementation CNContactListSearchController

- (id)searchBar
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __42__CNContactListSearchController_searchBar__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1432);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactListSearchBar);
    v4 = *(a1 + 32);
    v5 = *(v4 + 1432);
    *(v4 + 1432) = v3;

    v2 = *(*(a1 + 32) + 1432);
  }

  return v2;
}

@end