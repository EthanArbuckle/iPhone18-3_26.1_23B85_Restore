@interface MKBlockBasedSnapshotRequester
+ (id)snapshotRequesterWitHandler:(id)a3;
- (void)mapSnapshotCreator:(id)a3 didCreateSnapshot:(id)a4 attributionString:(id)a5 context:(id)a6;
@end

@implementation MKBlockBasedSnapshotRequester

- (void)mapSnapshotCreator:(id)a3 didCreateSnapshot:(id)a4 attributionString:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a4;
  v10 = [(MKBlockBasedSnapshotRequester *)self handler];
  v10[2](v10, v9, v8);
}

+ (id)snapshotRequesterWitHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MKBlockBasedSnapshotRequester);
  [(MKBlockBasedSnapshotRequester *)v4 setHandler:v3];

  return v4;
}

@end