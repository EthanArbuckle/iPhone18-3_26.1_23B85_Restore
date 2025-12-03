@interface NoteObject
- (void)undoablyMoveToTrashWithActionName:(id)name;
- (void)undoablyUndeleteTo:(id)to actionName:(id)name;
@end

@implementation NoteObject

- (void)undoablyMoveToTrashWithActionName:(id)name
{
  nameCopy = name;
  v4 = +[ICAppDelegate sharedInstance];
  undoManager = [v4 undoManager];

  if (([(NoteObject *)self isMarkedForDeletion]& 1) == 0)
  {
    [(NoteObject *)self markForDeletion];
    v6 = [undoManager prepareWithInvocationTarget:self];
    store = [(NoteObject *)self store];
    [v6 undoablyUndeleteTo:store actionName:nameCopy];
  }
}

- (void)undoablyUndeleteTo:(id)to actionName:(id)name
{
  nameCopy = name;
  v5 = +[ICAppDelegate sharedInstance];
  undoManager = [v5 undoManager];

  managedObjectContext = [(NoteObject *)self managedObjectContext];
  if (managedObjectContext)
  {
    v8 = managedObjectContext;
    isMarkedForDeletion = [(NoteObject *)self isMarkedForDeletion];

    if (isMarkedForDeletion)
    {
      v10 = [undoManager prepareWithInvocationTarget:self];
      [v10 undoablyMoveToTrashWithActionName:nameCopy];
    }
  }
}

@end