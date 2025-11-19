@interface RCApplicationContainer
+ (id)sharedContainer;
- (RCApplicationContainer)initWithURL:(id)a3;
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

- (RCApplicationContainer)initWithURL:(id)a3
{
  v17.receiver = self;
  v17.super_class = RCApplicationContainer;
  v3 = [(RCApplicationContainer *)&v17 initWithURL:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(RCApplicationContainer *)v3 persistentContainer];
    v6 = [v5 persistentStoreCoordinator];
    v7 = [v6 persistentStores];
    v8 = [v7 firstObject];

    v9 = [RCRemoteChangeMerger alloc];
    v18 = v8;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v11 = [(RCApplicationContainer *)v4 persistentContainer];
    v12 = [v11 viewContext];
    v13 = [(RCApplicationContainer *)v4 transactionAuthor];
    v14 = [(RCRemoteChangeMerger *)v9 initWithStores:v10 viewContext:v12 transactionAuthorToIgnore:v13];
    remoteChangeMerger = v4->_remoteChangeMerger;
    v4->_remoteChangeMerger = v14;
  }

  return v4;
}

- (id)newChangeTrackingBackgroundModel
{
  v3 = +[RCApplicationContainer sharedContainer];
  v4 = [v3 newBackgroundModel];

  v5 = [v4 context];
  [v5 setAutomaticallyMergesChangesFromParent:1];

  remoteChangeMerger = self->_remoteChangeMerger;
  if (remoteChangeMerger)
  {
    v7 = [v4 context];
    [(RCRemoteChangeMerger *)remoteChangeMerger addContextToMergeChangesInto:v7];
  }

  return v4;
}

@end