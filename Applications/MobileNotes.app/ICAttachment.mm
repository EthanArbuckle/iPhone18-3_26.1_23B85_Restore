@interface ICAttachment
- (void)undoablySetTitle:(id)title isUserDefined:(BOOL)defined;
@end

@implementation ICAttachment

- (void)undoablySetTitle:(id)title isUserDefined:(BOOL)defined
{
  definedCopy = defined;
  titleCopy = title;
  v6 = +[NSUndoManager shared];
  v7 = [v6 prepareWithInvocationTarget:self];
  title = [(ICAttachment *)self title];
  [v7 undoablySetTitle:title isUserDefined:definedCopy];

  v9 = +[NSUndoManager shared];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Set Attachment Name" value:&stru_100661CF0 table:0];
  [v9 setActionName:v11];

  [(ICAttachment *)self setTitle:titleCopy];
  if (definedCopy)
  {
    [(ICAttachment *)self setUserTitle:titleCopy];
  }

  [(ICAttachment *)self updateChangeCountWithReason:@"Set attachment title"];
  note = [(ICAttachment *)self note];
  [note updateModificationDateAndChangeCount];

  note2 = [(ICAttachment *)self note];
  v14 = [note2 regenerateTitle:1 snippet:0];

  if (v14)
  {
    note3 = [(ICAttachment *)self note];
    [note3 markShareDirtyIfNeededWithReason:@"Set attachment title"];

    note4 = [(ICAttachment *)self note];
    [note4 updateChangeCountWithReason:@"Set attachment title"];
  }

  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  [managedObjectContext ic_saveWithLogDescription:{@"%@", @"Set attachment title"}];
}

@end