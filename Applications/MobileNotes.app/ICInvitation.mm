@interface ICInvitation
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation ICInvitation

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [UTTypeURL identifier];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [UTTypeURL identifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(ICInvitation *)self managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100108C70;
    v12[3] = &unk_100645E80;
    v12[4] = self;
    v13 = v6;
    [v10 performBlockAndWait:v12];
  }

  return 0;
}

@end