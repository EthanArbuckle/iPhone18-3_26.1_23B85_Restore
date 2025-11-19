@interface BKCollectionControllerMemberManagingModifyResponse
- (BKCollectionControllerMemberManagingModifyResponse)init;
- (BKCollectionControllerMemberManagingModifyResponse)initWithAssetID:(id)a3 assetContentType:(int64_t)a4 collectionTitle:(id)a5;
@end

@implementation BKCollectionControllerMemberManagingModifyResponse

- (BKCollectionControllerMemberManagingModifyResponse)initWithAssetID:(id)a3 assetContentType:(int64_t)a4 collectionTitle:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_9202C();
  v10 = v9;
  v11 = sub_9202C();
  v12 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetID);
  *v12 = v8;
  v12[1] = v10;
  *(self + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_assetContentType) = a4;
  v13 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingModifyResponse_collectionTitle);
  *v13 = v11;
  v13[1] = v14;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(BKCollectionControllerMemberManagingModifyResponse *)&v16 init];
}

- (BKCollectionControllerMemberManagingModifyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end