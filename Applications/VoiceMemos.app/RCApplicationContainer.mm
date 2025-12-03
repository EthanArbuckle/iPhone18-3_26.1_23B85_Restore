@interface RCApplicationContainer
+ (id)sharedContainer;
- (RCApplicationContainer)initWithURL:(id)l;
- (id)newChangeTrackingBackgroundModel;
@end

@implementation RCApplicationContainer

+ (id)sharedContainer
{
  if (qword_1002D70E8 != -1)
  {
    sub_1000035B0();
  }

  v3 = qword_1002D70E0;

  return v3;
}

- (RCApplicationContainer)initWithURL:(id)l
{
  v17.receiver = self;
  v17.super_class = RCApplicationContainer;
  v3 = [(RCApplicationContainer *)&v17 initWithURL:l];
  v4 = v3;
  if (v3)
  {
    persistentContainer = [(RCApplicationContainer *)v3 persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    v9 = [RCRemoteChangeMerger alloc];
    v18 = firstObject;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    persistentContainer2 = [(RCApplicationContainer *)v4 persistentContainer];
    viewContext = [persistentContainer2 viewContext];
    transactionAuthor = [(RCApplicationContainer *)v4 transactionAuthor];
    v14 = [(RCRemoteChangeMerger *)v9 initWithStores:v10 viewContext:viewContext transactionAuthorToIgnore:transactionAuthor];
    remoteChangeMerger = v4->_remoteChangeMerger;
    v4->_remoteChangeMerger = v14;
  }

  return v4;
}

- (id)newChangeTrackingBackgroundModel
{
  v3 = +[RCApplicationContainer sharedContainer];
  newBackgroundModel = [v3 newBackgroundModel];

  context = [newBackgroundModel context];
  [context setAutomaticallyMergesChangesFromParent:1];

  remoteChangeMerger = self->_remoteChangeMerger;
  if (remoteChangeMerger)
  {
    context2 = [newBackgroundModel context];
    [(RCRemoteChangeMerger *)remoteChangeMerger addContextToMergeChangesInto:context2];
  }

  return newBackgroundModel;
}

@end