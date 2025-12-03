@interface AVAsset
+ (void)tui_createAssetFromURL:(id)l completion:(id)completion;
@end

@implementation AVAsset

+ (void)tui_createAssetFromURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (qword_2E64C8 != -1)
  {
    sub_19B538();
  }

  v7 = qword_2E64C0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DDA38;
  v10[3] = &unk_25EA78;
  v11 = lCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = lCopy;
  dispatch_async(v7, v10);
}

@end