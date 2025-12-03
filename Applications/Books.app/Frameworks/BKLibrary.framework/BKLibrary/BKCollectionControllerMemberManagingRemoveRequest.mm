@interface BKCollectionControllerMemberManagingRemoveRequest
- (BKCollectionControllerMemberManagingRemoveRequest)init;
- (BKCollectionControllerMemberManagingRemoveRequest)initWithStoreID:(id)d collectionID:(id)iD;
@end

@implementation BKCollectionControllerMemberManagingRemoveRequest

- (BKCollectionControllerMemberManagingRemoveRequest)initWithStoreID:(id)d collectionID:(id)iD
{
  ObjectType = swift_getObjectType();
  v6 = sub_9202C();
  v8 = v7;
  v9 = sub_9202C();
  v10 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_storeID);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingRemoveRequest_collectionID);
  *v11 = v9;
  v11[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(BKCollectionControllerMemberManagingRemoveRequest *)&v14 init];
}

- (BKCollectionControllerMemberManagingRemoveRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end