@interface NavigationCameraSnapshotManager
+ (BOOL)archiveTraceSnapshotsDictionary:(id)dictionary toFile:(id)file;
+ (id)sharedInstance;
+ (id)traceSnapshotsDictionaryWithContentsOfArchiveFile:(id)file;
- (NSMutableDictionary)traceSnapshotsDictionary;
- (NavigationCameraSnapshotManager)init;
- (NavigationCameraSnapshotManager)initWithTraceSnapshotsDictionaryArchiveFile:(id)file;
- (NavigationCameraSnapshotsObserver)snapshotsObserver;
- (id)cameraSnapshotsOfTraceFile:(id)file;
- (void)_commitTraceSnapshotsDictionaryToArchive;
- (void)addCameraSnapshot:(id)snapshot toTraceFile:(id)file;
- (void)removeCameraSnapshotAtIndex:(unint64_t)index fromTraceFile:(id)file;
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
  traceSnapshotsDictionary = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v5 = [v3 initWithCapacity:{objc_msgSend(traceSnapshotsDictionary, "count")}];

  v6 = [NSMutableArray alloc];
  traceSnapshotsDictionary2 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v8 = [v6 initWithCapacity:{objc_msgSend(traceSnapshotsDictionary2, "count")}];

  traceSnapshotsDictionary3 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100FA26A8;
  v19 = &unk_10165FA10;
  v20 = v5;
  v21 = v8;
  v10 = v8;
  v11 = v5;
  [traceSnapshotsDictionary3 enumerateKeysAndObjectsUsingBlock:&v16];

  v12 = [NSDictionary alloc];
  v13 = [v12 initWithObjects:v10 forKeys:{v11, v16, v17, v18, v19}];
  v14 = objc_opt_class();
  archivePath = [(NavigationCameraSnapshotManager *)self archivePath];
  [v14 archiveTraceSnapshotsDictionary:v13 toFile:archivePath];
}

- (void)removeCameraSnapshotAtIndex:(unint64_t)index fromTraceFile:(id)file
{
  fileCopy = file;
  traceSnapshotsDictionary = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v7 = [traceSnapshotsDictionary objectForKeyedSubscript:fileCopy];

  if ([v7 count] > index)
  {
    [v7 removeObjectAtIndex:index];
    WeakRetained = objc_loadWeakRetained(&self->_snapshotsObserver);
    [WeakRetained cameraSnapshotsManager:self didRemoveAtIndex:index fromTraceFile:fileCopy];

    [(NavigationCameraSnapshotManager *)self _commitTraceSnapshotsDictionaryToArchive];
  }
}

- (void)addCameraSnapshot:(id)snapshot toTraceFile:(id)file
{
  fileCopy = file;
  snapshotCopy = snapshot;
  traceSnapshotsDictionary = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v8 = [traceSnapshotsDictionary objectForKeyedSubscript:fileCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    traceSnapshotsDictionary2 = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
    [traceSnapshotsDictionary2 setObject:v8 forKeyedSubscript:fileCopy];
  }

  v10 = [v8 count];
  _cameraSnapshotComparator = [(NavigationCameraSnapshotManager *)self _cameraSnapshotComparator];
  v12 = [v8 indexOfObject:snapshotCopy inSortedRange:0 options:v10 usingComparator:{1536, _cameraSnapshotComparator}];

  [v8 insertObject:snapshotCopy atIndex:v12];
  v13 = [v8 objectAtIndexedSubscript:v12];

  if (v13 == snapshotCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_snapshotsObserver);
    [WeakRetained cameraSnapshotsManager:self didInsertAtIndex:v12 toTraceFile:fileCopy];

    [(NavigationCameraSnapshotManager *)self _commitTraceSnapshotsDictionaryToArchive];
  }
}

- (id)cameraSnapshotsOfTraceFile:(id)file
{
  fileCopy = file;
  traceSnapshotsDictionary = [(NavigationCameraSnapshotManager *)self traceSnapshotsDictionary];
  v6 = [traceSnapshotsDictionary objectForKeyedSubscript:fileCopy];

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
    archivePath = [(NavigationCameraSnapshotManager *)self archivePath];
    v6 = [v4 traceSnapshotsDictionaryWithContentsOfArchiveFile:archivePath];

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

- (NavigationCameraSnapshotManager)initWithTraceSnapshotsDictionaryArchiveFile:(id)file
{
  fileCopy = file;
  v14.receiver = self;
  v14.super_class = NavigationCameraSnapshotManager;
  v5 = [(NavigationCameraSnapshotManager *)&v14 init];
  if (v5)
  {
    stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
    if (([stringByDeletingLastPathComponent hasSuffix:@"/"] & 1) == 0)
    {
      v7 = [stringByDeletingLastPathComponent stringByAppendingString:@"/"];

      stringByDeletingLastPathComponent = v7;
    }

    v8 = +[NSFileManager defaultManager];
    v9 = [v8 isWritableFileAtPath:stringByDeletingLastPathComponent];

    if (v9)
    {
      v10 = [fileCopy copy];
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

+ (BOOL)archiveTraceSnapshotsDictionary:(id)dictionary toFile:(id)file
{
  fileCopy = file;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:0];
  v7 = [v6 writeToFile:fileCopy atomically:1];

  return v7;
}

+ (id)traceSnapshotsDictionaryWithContentsOfArchiveFile:(id)file
{
  fileCopy = file;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  v8 = [NSData dataWithContentsOfFile:fileCopy];

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