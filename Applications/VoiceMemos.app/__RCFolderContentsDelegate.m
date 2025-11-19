@interface __RCFolderContentsDelegate
- (void)controllerDidChangeContent:(id)a3;
@end

@implementation __RCFolderContentsDelegate

- (void)controllerDidChangeContent:(id)a3
{
  v6 = [a3 folder];
  v4 = [v6 folderType];
  foldersController = self->_foldersController;
  if (v4 == 4)
  {
    [(RCFoldersFetchedResultsController *)foldersController reloadUserFolder:v6];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)foldersController reloadBuiltinFolder:v6];
  }
}

@end