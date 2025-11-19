@interface NavigationCameraSnapshotManager
+ (BOOL)archiveTraceSnapshotsDictionary:(id)a3 toFile:(id)a4;
+ (id)sharedInstance;
+ (id)traceSnapshotsDictionaryWithContentsOfArchiveFile:(id)a3;
- (NSMutableDictionary)traceSnapshotsDictionary;
- (NavigationCameraSnapshotManager)init;
- (NavigationCameraSnapshotManager)initWithTraceSnapshotsDictionaryArchiveFile:(id)a3;
- (NavigationCameraSnapshotsObserver)snapshotsObserver;
- (id)cameraSnapshotsOfTraceFile:(id)a3;
- (void)_commitTraceSnapshotsDictionaryToArchive;
- (void)addCameraSnapshot:(id)a3 toTraceFile:(id)a4;
- (void)removeCameraSnapshotAtIndex:(unint64_t)a3 fromTraceFile:(id)a4;
@end

@implementation NavigationCameraSnapshotManager

- (NavigationCameraSnapshotsObserver)snapshotsObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotsObserver);

  return WeakRetained;
}

- (void)_commitTraceSnapshotsDictionaryToArchive
{
  v3 = [NSMutableArray alloc];
  v4 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [NSMutableArray alloc];
  v7 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100FA26A8;
  v19 = &unk_10165FA10;
  v20 = v5;
  v21 = v8;
  v10 = v8;
  v11 = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:&v16];

  v12 = [NSDictionary alloc];
  v13 = [v12 initWithObjects:v10 forKeys:{v11, v16, v17, v18, v19}];
  v14 = objc_opt_class();
  v15 = [(NavigationCameraSnapshotManager *)self archivePath];
  [v14 archiveTraceSnapshotsDictionary:v13 toFile:v15];
}

- (void)removeCameraSnapshotAtIndex:(unint64_t)a3 fromTraceFile:(id)a4
{
  v9 = a4;
  v6 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v7 = [v6 objectForKeyedSubscript:v9];

  if ([v7 count] > a3)
  {
    [v7 removeObjectAtIndex:a3];
    WeakRetained = objc_loadWeakRetained(&self->_snapshotsObserver);
    [WeakRetained cameraSnapshotsManager:self didRemoveAtIndex:a3 fromTraceFile:v9];

    [(NavigationCameraSnapshotManager *)self _commitTraceSnapshotsDictionaryToArchive];
  }
}

- (void)addCameraSnapshot:(id)a3 toTraceFile:(id)a4
{
  v15 = a4;
  v6 = a3;
  v7 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v8 = [v7 objectForKeyedSubscript:v15];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
    [v9 setObject:v8 forKeyedSubscript:v15];
  }

  v10 = [v8 count];
  v11 = [(NavigationCameraSnapshotManager *)self _cameraSnapshotComparator];
  v12 = [v8 indexOfObject:v6 inSortedRange:0 options:v10 usingComparator:{1536, v11}];

  [v8 insertObject:v6 atIndex:v12];
  v13 = [v8 objectAtIndexedSubscript:v12];

  if (v13 == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_snapshotsObserver);
    [WeakRetained cameraSnapshotsManager:self didInsertAtIndex:v12 toTraceFile:v15];

    [(NavigationCameraSnapshotManager *)self _commitTraceSnapshotsDictionaryToArchive];
  }
}

- (id)cameraSnapshotsOfTraceFile:(id)a3
{
  v4 = a3;
  v5 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if ([v6 count])
  {
    v7 = [NSArray arrayWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSMutableDictionary)traceSnapshotsDictionary
{
  traceSnapshotsDictionary = self->_traceSnapshotsDictionary;
  if (!traceSnapshotsDictionary)
  {
    v4 = objc_opt_class();
    v5 = [(NavigationCameraSnapshotManager *)self archivePath];
    v6 = [v4 traceSnapshotsDictionaryWithContentsOfArchiveFile:v5];

    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v8 = self->_traceSnapshotsDictionary;
    self->_traceSnapshotsDictionary = v7;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100FA2AFC;
    v10[3] = &unk_10165F9E8;
    v10[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];

    traceSnapshotsDictionary = self->_traceSnapshotsDictionary;
  }

  return traceSnapshotsDictionary;
}

- (NavigationCameraSnapshotManager)initWithTraceSnapshotsDictionaryArchiveFile:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NavigationCameraSnapshotManager;
  v5 = [(NavigationCameraSnapshotManager *)&v14 init];
  if (v5)
  {
    v6 = [v4 stringByDeletingLastPathComponent];
    if (([v6 hasSuffix:@"/"] & 1) == 0)
    {
      v7 = [v6 stringByAppendingString:@"/"];

      v6 = v7;
    }

    v8 = +[NSFileManager defaultManager];
    v9 = [v8 isWritableFileAtPath:v6];

    if (v9)
    {
      v10 = [v4 copy];
      archivePath = v5->_archivePath;
      v5->_archivePath = v10;

      v12 = v5;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NavigationCameraSnapshotManager)init
{
  v3 = +[TraceManager sharedManager];
  v4 = [v3 tracesDirectoryWithTraceType:0];
  v5 = [v4 stringByAppendingPathComponent:@"NavigationCameraSnapshots.plist"];

  v6 = [(NavigationCameraSnapshotManager *)self initWithTraceSnapshotsDictionaryArchiveFile:v5];
  return v6;
}

+ (BOOL)archiveTraceSnapshotsDictionary:(id)a3 toFile:(id)a4
{
  v5 = a4;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v7 = [v6 writeToFile:v5 atomically:1];

  return v7;
}

+ (id)traceSnapshotsDictionaryWithContentsOfArchiveFile:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  v8 = [NSData dataWithContentsOfFile:v3];

  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v8 error:0];

  return v9;
}

+ (id)sharedInstance
{
  if (qword_10195F8E0 != -1)
  {
    dispatch_once(&qword_10195F8E0, &stru_10165F9C0);
  }

  v3 = qword_10195F8D8;

  return v3;
}

@end