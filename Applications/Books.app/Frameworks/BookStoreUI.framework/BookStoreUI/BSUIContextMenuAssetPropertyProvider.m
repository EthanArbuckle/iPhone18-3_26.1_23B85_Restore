@interface BSUIContextMenuAssetPropertyProvider
- (BOOL)isOwned;
- (BOOL)isStoreAsset;
- (BSUIContextMenuAssetPropertyProvider)init;
- (NSString)assetID;
- (int64_t)assetType;
@end

@implementation BSUIContextMenuAssetPropertyProvider

- (NSString)assetID
{
  v3 = (&self->super.isa + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo);
  v4 = v3[3];
  v5 = v3[4];
  sub_72084(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  v6(v4, v5);

  v8 = sub_2C5888();

  return v8;
}

- (int64_t)assetType
{
  v2 = self;
  v3 = sub_2724C8();

  return v3;
}

- (BOOL)isOwned
{
  v3 = (&self->super.isa + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo);
  v4 = v3[3];
  v5 = v3[4];
  sub_72084(v3, v4);
  v6 = *(v5 + 152);
  v7 = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (BOOL)isStoreAsset
{
  v3 = (&self->super.isa + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo);
  v4 = v3[3];
  v5 = v3[4];
  sub_72084(v3, v4);
  v6 = *(v5 + 288);
  v7 = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
  }

  return v9 != 0;
}

- (BSUIContextMenuAssetPropertyProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end