@interface ICInvitation
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation ICInvitation

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  identifier = [UTTypeURL identifier];
  v5 = identifier;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  identifier = [UTTypeURL identifier];
  v9 = [identifierCopy isEqual:identifier];

  if (v9)
  {
    managedObjectContext = [(ICInvitation *)self managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100108C70;
    v12[3] = &unk_100645E80;
    v12[4] = self;
    v13 = handlerCopy;
    [managedObjectContext performBlockAndWait:v12];
  }

  return 0;
}

@end