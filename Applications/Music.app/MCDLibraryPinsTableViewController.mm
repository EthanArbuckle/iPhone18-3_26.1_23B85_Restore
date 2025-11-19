@interface MCDLibraryPinsTableViewController
- (MCDLibraryPinsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
@end

@implementation MCDLibraryPinsTableViewController

- (MCDLibraryPinsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDLibraryPinsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDLibraryPinsTableViewController *)v8 setPlayActivityFeatureName:@"library_pins"];
  }

  return v8;
}

@end