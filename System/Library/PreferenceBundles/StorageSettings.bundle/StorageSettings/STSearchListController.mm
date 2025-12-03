@interface STSearchListController
- (void)searchButtonPressed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STSearchListController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [(STSearchListController *)self indexForIndexPath:path];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    parentController = [(STSearchListController *)self parentController];
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v6];
    v9 = [(STSearchListController *)self selectSpecifier:v8];
    if (v9)
    {
      presentingViewController = [(STSearchListController *)self presentingViewController];
      [parentController showController:v9 animate:0];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_C034;
      v11[3] = &unk_2CA38;
      v12 = v9;
      v13 = parentController;
      [presentingViewController dismissViewControllerAnimated:1 completion:v11];
    }
  }
}

- (void)searchButtonPressed
{
  table = [(STSearchListController *)self table];
  if ([table numberOfSections] == &dword_0 + 1 && objc_msgSend(table, "numberOfRowsInSection:", 0) == &dword_0 + 1)
  {
    table2 = [(STSearchListController *)self table];
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    [(STSearchListController *)self tableView:table2 didSelectRowAtIndexPath:v4];
  }
}

@end