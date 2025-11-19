@interface SearchDebugViewController
- (void)prepareContent;
@end

@implementation SearchDebugViewController

- (void)prepareContent
{
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Address Book" content:&stru_101638A48];
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Recents" content:&stru_101638A68];
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"History & Bookmarks" content:&stru_101638A88];
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Search Requests" content:&stru_101638AA8];
  v7 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_101638AC8];
}

@end