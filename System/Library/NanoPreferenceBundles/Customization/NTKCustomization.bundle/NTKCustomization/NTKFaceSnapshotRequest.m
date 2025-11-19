@interface NTKFaceSnapshotRequest
- (BOOL)isReady;
- (NTKFaceSnapshotRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation NTKFaceSnapshotRequest

- (NTKFaceSnapshotRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = NTKFaceSnapshotRequest;
  v12 = [(NTKFaceSnapshotRequest *)&v20 init];
  if (v12)
  {
    v13 = +[NSDate date];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    objc_storeStrong(&v12->_face, a3);
    v15 = [v10 copy];
    options = v12->_options;
    v12->_options = v15;

    v17 = [v11 copy];
    completion = v12->_completion;
    v12->_completion = v17;
  }

  return v12;
}

- (BOOL)isReady
{
  [(NTKFaceSnapshotRequest *)self face];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_76D0;
  v2 = v12 = &unk_20918;
  v13 = v2;
  v14 = &v15;
  [v2 enumerateComplicationSlotsWithBlock:&v9];
  if (*(v16 + 24))
  {
    v3 = [v2 device];
    v4 = [v3 pairingID];
    if (v4)
    {
      v5 = [qword_277A8 objectForKey:v4];
      v6 = [v5 hasLoaded];
    }

    else
    {
      v6 = 1;
    }

    v7 = v6 & byte_277B0;
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

@end