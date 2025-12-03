@interface MCDLibraryPinsTableViewController
- (MCDLibraryPinsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
@end

@implementation MCDLibraryPinsTableViewController

- (MCDLibraryPinsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDLibraryPinsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDLibraryPinsTableViewController *)v8 setPlayActivityFeatureName:@"library_pins"];
  }

  return v8;
}

@end