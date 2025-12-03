@interface BKCollectionControllerMemberManagingAddRequest
- (BKCollectionControllerMemberManagingAddRequest)init;
- (BKCollectionControllerMemberManagingAddRequest)initWithStoreID:(id)d collectionID:(id)iD forceToTop:(BOOL)top;
@end

@implementation BKCollectionControllerMemberManagingAddRequest

- (BKCollectionControllerMemberManagingAddRequest)initWithStoreID:(id)d collectionID:(id)iD forceToTop:(BOOL)top
{
  ObjectType = swift_getObjectType();
  v8 = sub_9202C();
  v10 = v9;
  v11 = sub_9202C();
  v12 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_storeID);
  *v12 = v8;
  v12[1] = v10;
  v13 = (self + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_collectionID);
  *v13 = v11;
  v13[1] = v14;
  *(self + OBJC_IVAR___BKCollectionControllerMemberManagingAddRequest_forceToTop) = top;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(BKCollectionControllerMemberManagingAddRequest *)&v16 init];
}

- (BKCollectionControllerMemberManagingAddRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end