@interface ICAttachment
- (void)undoablySetTitle:(id)a3 isUserDefined:(BOOL)a4;
@end

@implementation ICAttachment

- (void)undoablySetTitle:(id)a3 isUserDefined:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  v6 = +[NSUndoManager shared];
  v7 = [v6 prepareWithInvocationTarget:self];
  v8 = [(ICAttachment *)self title];
  [v7 undoablySetTitle:v8 isUserDefined:v4];

  v9 = +[NSUndoManager shared];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Set Attachment Name" value:&stru_100661CF0 table:0];
  [v9 setActionName:v11];

  [(ICAttachment *)self setTitle:v18];
  if (v4)
  {
    [(ICAttachment *)self setUserTitle:v18];
  }

  [(ICAttachment *)self updateChangeCountWithReason:@"Set attachment title"];
  v12 = [(ICAttachment *)self note];
  [v12 updateModificationDateAndChangeCount];

  v13 = [(ICAttachment *)self note];
  v14 = [v13 regenerateTitle:1 snippet:0];

  if (v14)
  {
    v15 = [(ICAttachment *)self note];
    [v15 markShareDirtyIfNeededWithReason:@"Set attachment title"];

    v16 = [(ICAttachment *)self note];
    [v16 updateChangeCountWithReason:@"Set attachment title"];
  }

  v17 = [(ICAttachment *)self managedObjectContext];
  [v17 ic_saveWithLogDescription:{@"%@", @"Set attachment title"}];
}

@end