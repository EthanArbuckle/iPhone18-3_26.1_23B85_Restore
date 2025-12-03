@interface ICHashtag
+ (void)undoablyMarkForDeletion:(BOOL)deletion standardizedContent:(id)content account:(id)account;
@end

@implementation ICHashtag

+ (void)undoablyMarkForDeletion:(BOOL)deletion standardizedContent:(id)content account:(id)account
{
  deletionCopy = deletion;
  contentCopy = content;
  accountCopy = account;
  v10 = +[NSUndoManager shared];
  v11 = [v10 prepareWithInvocationTarget:self];
  [v11 undoablyMarkForDeletion:!deletionCopy standardizedContent:contentCopy account:accountCopy];

  [accountCopy managedObjectContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100139E90;
  v15[3] = &unk_100645ED0;
  v16 = contentCopy;
  v17 = accountCopy;
  v18 = v19 = deletionCopy;
  v12 = v18;
  v13 = accountCopy;
  v14 = contentCopy;
  [v12 performBlockAndWait:v15];
}

@end