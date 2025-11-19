@interface CNContactNameSorting
+ (BOOL)shouldSortByGivenName;
@end

@implementation CNContactNameSorting

+ (BOOL)shouldSortByGivenName
{
  v2 = +[CNContactsUserDefaults sharedDefaults];
  v3 = [v2 displayNameOrder] == 1;

  return v3;
}

@end