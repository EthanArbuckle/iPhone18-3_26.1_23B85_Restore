@interface BKLibraryManager
- (void)fetchCoverForAssetID:(id)d size:(CGSize)size completion:(id)completion;
@end

@implementation BKLibraryManager

- (void)fetchCoverForAssetID:(id)d size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  dCopy = d;
  completionCopy = completion;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011B860;
  v16[3] = &unk_100A07DC8;
  v16[4] = self;
  v11 = dCopy;
  v17 = v11;
  v19 = width;
  v20 = height;
  v12 = completionCopy;
  v18 = v12;
  v13 = objc_retainBlock(v16);
  if (v13)
  {
    if (+[NSThread isMainThread])
    {
      (v13[2])(v13);
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10011B978;
      v14[3] = &unk_100A03920;
      v15 = v13;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

@end