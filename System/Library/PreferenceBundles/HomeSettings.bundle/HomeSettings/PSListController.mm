@interface PSListController
- (void)hos_insertSpecifier:(id)specifier atEndOfGroup:(int64_t)group animated:(BOOL)animated;
- (void)hos_showError:(id)error;
@end

@implementation PSListController

- (void)hos_insertSpecifier:(id)specifier atEndOfGroup:(int64_t)group animated:(BOOL)animated
{
  if (group == 0x7FFFFFFFFFFFFFFFLL)
  {
    [PSListController insertSpecifier:"insertSpecifier:atIndex:animated:" atIndex:specifier animated:?];
  }

  else
  {
    [PSListController insertSpecifier:"insertSpecifier:atEndOfGroup:animated:" atEndOfGroup:specifier animated:?];
  }
}

- (void)hos_showError:(id)error
{
  errorCopy = error;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOSErrorTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  localizedDescription = [errorCopy localizedDescription];

  v11 = [UIAlertController alertControllerWithTitle:v6 message:localizedDescription preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HOSButtonAlertOK" value:&stru_108D8 table:@"HOSLocalizable"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(PSListController *)self presentViewController:v11 animated:1 completion:0];
}

@end