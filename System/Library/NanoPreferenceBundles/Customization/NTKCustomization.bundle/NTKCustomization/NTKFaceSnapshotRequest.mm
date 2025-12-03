@interface NTKFaceSnapshotRequest
- (BOOL)isReady;
- (NTKFaceSnapshotRequest)initWithFace:(id)face options:(id)options completion:(id)completion;
@end

@implementation NTKFaceSnapshotRequest

- (NTKFaceSnapshotRequest)initWithFace:(id)face options:(id)options completion:(id)completion
{
  faceCopy = face;
  optionsCopy = options;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = NTKFaceSnapshotRequest;
  v12 = [(NTKFaceSnapshotRequest *)&v20 init];
  if (v12)
  {
    v13 = +[NSDate date];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    objc_storeStrong(&v12->_face, face);
    v15 = [optionsCopy copy];
    options = v12->_options;
    v12->_options = v15;

    v17 = [completionCopy copy];
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
    device = [v2 device];
    pairingID = [device pairingID];
    if (pairingID)
    {
      v5 = [qword_277A8 objectForKey:pairingID];
      hasLoaded = [v5 hasLoaded];
    }

    else
    {
      hasLoaded = 1;
    }

    v7 = hasLoaded & byte_277B0;
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

@end