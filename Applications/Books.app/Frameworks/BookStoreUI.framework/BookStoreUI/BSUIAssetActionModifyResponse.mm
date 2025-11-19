@interface BSUIAssetActionModifyResponse
- (BSUIAssetActionModifyResponse)init;
- (BSUIAssetActionModifyResponse)initWithCollectionTitle:(id)a3 assetID:(id)a4 assetContentType:(int64_t)a5;
@end

@implementation BSUIAssetActionModifyResponse

- (BSUIAssetActionModifyResponse)initWithCollectionTitle:(id)a3 assetID:(id)a4 assetContentType:(int64_t)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_2C58C8();
  v10 = v9;
  v11 = sub_2C58C8();
  v12 = (self + OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle);
  *v12 = v8;
  v12[1] = v10;
  v13 = (self + OBJC_IVAR___BSUIAssetActionModifyResponse_assetID);
  *v13 = v11;
  v13[1] = v14;
  *(self + OBJC_IVAR___BSUIAssetActionModifyResponse_assetContentType) = a5;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(BSUIAssetActionModifyResponse *)&v16 init];
}

- (BSUIAssetActionModifyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end