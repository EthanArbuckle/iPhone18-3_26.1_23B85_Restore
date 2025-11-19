@interface IMDebugScreenShotDataProvider
- (id)debugData;
@end

@implementation IMDebugScreenShotDataProvider

- (id)debugData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__IMDebugScreenShotDataProvider_debugData__block_invoke;
  block[3] = &unk_10580;
  block[4] = &v5;
  dispatch_sync(&_dispatch_main_q, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__IMDebugScreenShotDataProvider_debugData__block_invoke(uint64_t a1)
{
  v2 = +[DebugUI debugViewController];
  image = [v2 screenShotImage];

  v3 = UIImagePNGRepresentation(image);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end