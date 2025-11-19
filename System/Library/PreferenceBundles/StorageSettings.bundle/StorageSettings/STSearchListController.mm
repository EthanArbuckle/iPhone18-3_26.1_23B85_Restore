@interface STSearchListController
- (void)searchButtonPressed;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation STSearchListController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [(STSearchListController *)self indexForIndexPath:a4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(STSearchListController *)self parentController];
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v6];
    v9 = [(STSearchListController *)self selectSpecifier:v8];
    if (v9)
    {
      v10 = [(STSearchListController *)self presentingViewController];
      [v7 showController:v9 animate:0];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_C034;
      v11[3] = &unk_2CA38;
      v12 = v9;
      v13 = v7;
      [v10 dismissViewControllerAnimated:1 completion:v11];
    }
  }
}

- (void)searchButtonPressed
{
  v5 = [(STSearchListController *)self table];
  if ([v5 numberOfSections] == &dword_0 + 1 && objc_msgSend(v5, "numberOfRowsInSection:", 0) == &dword_0 + 1)
  {
    v3 = [(STSearchListController *)self table];
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    [(STSearchListController *)self tableView:v3 didSelectRowAtIndexPath:v4];
  }
}

@end