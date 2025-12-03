@interface __RCFolderContentsDelegate
- (void)controllerDidChangeContent:(id)content;
@end

@implementation __RCFolderContentsDelegate

- (void)controllerDidChangeContent:(id)content
{
  folder = [content folder];
  folderType = [folder folderType];
  foldersController = self->_foldersController;
  if (folderType == 4)
  {
    [(RCFoldersFetchedResultsController *)foldersController reloadUserFolder:folder];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)foldersController reloadBuiltinFolder:folder];
  }
}

@end