@interface AVAsset
+ (void)tui_createAssetFromURL:(id)a3 completion:(id)a4;
@end

@implementation AVAsset

+ (void)tui_createAssetFromURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_2E64C8 != -1)
  {
    sub_19B538();
  }

  v7 = qword_2E64C0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DDA38;
  v10[3] = &unk_25EA78;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

@end