@interface PSListController
- (void)hos_insertSpecifier:(id)a3 atEndOfGroup:(int64_t)a4 animated:(BOOL)a5;
- (void)hos_showError:(id)a3;
@end

@implementation PSListController

- (void)hos_insertSpecifier:(id)a3 atEndOfGroup:(int64_t)a4 animated:(BOOL)a5
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [PSListController insertSpecifier:"insertSpecifier:atIndex:animated:" atIndex:a3 animated:?];
  }

  else
  {
    [PSListController insertSpecifier:"insertSpecifier:atEndOfGroup:animated:" atEndOfGroup:a3 animated:?];
  }
}

- (void)hos_showError:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOSErrorTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  v7 = [v4 localizedDescription];

  v11 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HOSButtonAlertOK" value:&stru_108D8 table:@"HOSLocalizable"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(PSListController *)self presentViewController:v11 animated:1 completion:0];
}

@end