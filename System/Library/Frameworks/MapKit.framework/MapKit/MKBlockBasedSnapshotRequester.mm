@interface MKBlockBasedSnapshotRequester
+ (id)snapshotRequesterWitHandler:(id)handler;
- (void)mapSnapshotCreator:(id)creator didCreateSnapshot:(id)snapshot attributionString:(id)string context:(id)context;
@end

@implementation MKBlockBasedSnapshotRequester

- (void)mapSnapshotCreator:(id)creator didCreateSnapshot:(id)snapshot attributionString:(id)string context:(id)context
{
  stringCopy = string;
  snapshotCopy = snapshot;
  handler = [(MKBlockBasedSnapshotRequester *)self handler];
  handler[2](handler, snapshotCopy, stringCopy);
}

+ (id)snapshotRequesterWitHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(MKBlockBasedSnapshotRequester);
  [(MKBlockBasedSnapshotRequester *)v4 setHandler:handlerCopy];

  return v4;
}

@end