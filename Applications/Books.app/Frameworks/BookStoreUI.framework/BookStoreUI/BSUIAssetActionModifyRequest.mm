@interface BSUIAssetActionModifyRequest
- (BSUIAssetActionModifyRequest)init;
- (BSUIAssetActionModifyRequest)initWithStoreID:(id)a3 collectionID:(id)a4 tracker:(id)a5;
@end

@implementation BSUIAssetActionModifyRequest

- (BSUIAssetActionModifyRequest)initWithStoreID:(id)a3 collectionID:(id)a4 tracker:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_2C58C8();
  v10 = v9;
  v11 = sub_2C58C8();
  v12 = (self + OBJC_IVAR___BSUIAssetActionModifyRequest_storeID);
  *v12 = v8;
  v12[1] = v10;
  v13 = (self + OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID);
  *v13 = v11;
  v13[1] = v14;
  *(self + OBJC_IVAR___BSUIAssetActionModifyRequest_tracker) = a5;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = a5;
  return [(BSUIAssetActionModifyRequest *)&v17 init];
}

- (BSUIAssetActionModifyRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end