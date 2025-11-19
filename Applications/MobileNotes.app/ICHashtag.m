@interface ICHashtag
+ (void)undoablyMarkForDeletion:(BOOL)a3 standardizedContent:(id)a4 account:(id)a5;
@end

@implementation ICHashtag

+ (void)undoablyMarkForDeletion:(BOOL)a3 standardizedContent:(id)a4 account:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSUndoManager shared];
  v11 = [v10 prepareWithInvocationTarget:a1];
  [v11 undoablyMarkForDeletion:!v6 standardizedContent:v8 account:v9];

  [v9 managedObjectContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100139E90;
  v15[3] = &unk_100645ED0;
  v16 = v8;
  v17 = v9;
  v18 = v19 = v6;
  v12 = v18;
  v13 = v9;
  v14 = v8;
  [v12 performBlockAndWait:v15];
}

@end