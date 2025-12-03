@interface MKLookAroundSnapshotter
- (MKLookAroundSnapshotter)initWithScene:(MKLookAroundScene *)scene options:(MKLookAroundSnapshotOptions *)options;
- (void)getSnapshotWithCompletionHandler:(void *)completionHandler;
@end

@implementation MKLookAroundSnapshotter

- (void)getSnapshotWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  snapshotter = self->_snapshotter;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MKLookAroundSnapshotter_getSnapshotWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76CD9A8;
  v8 = v4;
  v6 = v4;
  [(MKMapSnapshotter *)snapshotter startWithCompletionHandler:v7];
}

void __60__MKLookAroundSnapshotter_getSnapshotWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v12)
  {
    v7 = [[MKLookAroundSnapshot alloc] initWithSnapshot:v12];
    v8 = *(a1 + 32);
    v9 = [[MKLookAroundSnapshot alloc] initWithSnapshot:v12];
    (*(v8 + 16))(v8, v9, 0);

LABEL_3:
    goto LABEL_6;
  }

  v10 = *(a1 + 32);
  if (!v5)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v11 initWithDomain:MKErrorDomain code:1 userInfo:0];
    (*(v10 + 16))(v10, 0, v7);
    goto LABEL_3;
  }

  (*(v10 + 16))(v10, 0, v5);
LABEL_6:
}

- (MKLookAroundSnapshotter)initWithScene:(MKLookAroundScene *)scene options:(MKLookAroundSnapshotOptions *)options
{
  v6 = scene;
  v7 = options;
  v14.receiver = self;
  v14.super_class = MKLookAroundSnapshotter;
  v8 = [(MKLookAroundSnapshotter *)&v14 init];
  if (v8)
  {
    _options = [(MKLookAroundSnapshotOptions *)v7 _options];
    v10 = [MKMapCamera _cameraLookingAtScene:v6];
    [_options setCamera:v10];

    v11 = [[MKMapSnapshotter alloc] initWithOptions:_options];
    snapshotter = v8->_snapshotter;
    v8->_snapshotter = v11;
  }

  return v8;
}

@end