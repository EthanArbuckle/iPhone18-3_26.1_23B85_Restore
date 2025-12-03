@interface BSUIAssetActionModifyResponse
- (BSUIAssetActionModifyResponse)init;
- (BSUIAssetActionModifyResponse)initWithCollectionTitle:(id)title assetID:(id)d assetContentType:(int64_t)type;
@end

@implementation BSUIAssetActionModifyResponse

- (BSUIAssetActionModifyResponse)initWithCollectionTitle:(id)title assetID:(id)d assetContentType:(int64_t)type
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
  *(self + OBJC_IVAR___BSUIAssetActionModifyResponse_assetContentType) = type;
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