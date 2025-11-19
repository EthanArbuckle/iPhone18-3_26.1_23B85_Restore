@interface BESearchViewController
+ (id)p_standardSearchBar;
@end

@implementation BESearchViewController

+ (id)p_standardSearchBar
{
  v2 = objc_alloc_init(UISearchBar);
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"Type a word or page number" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  [v2 setPlaceholder:v4];

  [v2 setAutocorrectionType:1];
  [v2 setAutocapitalizationType:0];
  [v2 setCenterPlaceholder:0];
  [v2 setSearchBarStyle:2];

  return v2;
}

@end