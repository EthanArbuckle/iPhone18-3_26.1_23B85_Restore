@interface AMSUIAssetLoader
+ (AMSUIAssetLoader)sharedLoader;
- (id)fetchWithAssetURL:(id)a3;
@end

@implementation AMSUIAssetLoader

+ (AMSUIAssetLoader)sharedLoader
{
  v2 = static AssetLoader.shared.getter();

  return v2;
}

- (id)fetchWithAssetURL:(id)a3
{
  v4 = sub_1BB1DB398();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v9 = self;
  v10 = sub_1BB12F6B8(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

@end