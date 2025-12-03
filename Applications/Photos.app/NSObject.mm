@interface NSObject
- (void)ppt_startIterationWithBlock:(id)block completion:(id)completion;
@end

@implementation NSObject

- (void)ppt_startIterationWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10001F208;
  v27 = sub_10001F234;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001F208;
  v21 = sub_10001F234;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100038090;
  v13[3] = &unk_10005BFD8;
  v15 = &v23;
  v16 = &v17;
  completionCopy = completion;
  v14 = completionCopy;
  v7 = objc_retainBlock(v13);
  v8 = [blockCopy copy];
  v9 = v24[5];
  v24[5] = v8;

  v10 = [v7 copy];
  v11 = v18[5];
  v18[5] = v10;

  v12 = v18[5];
  (*(v24[5] + 16))();

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

@end