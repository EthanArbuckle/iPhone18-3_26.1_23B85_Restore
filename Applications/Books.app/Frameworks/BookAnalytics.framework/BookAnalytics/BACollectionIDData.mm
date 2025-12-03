@interface BACollectionIDData
- (BACollectionIDData)init;
- (BACollectionIDData)initWithCollectionID:(id)d collectionMemberCount:(unint64_t)count;
@end

@implementation BACollectionIDData

- (BACollectionIDData)initWithCollectionID:(id)d collectionMemberCount:(unint64_t)count
{
  v6 = sub_1E1780();
  v7 = (self + OBJC_IVAR___BACollectionIDData_collectionID);
  *v7 = v6;
  v7[1] = v8;
  *(&self->super.isa + OBJC_IVAR___BACollectionIDData_collectionMemberCount) = count;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BridgedCollectionIDData();
  return [(BACollectionIDData *)&v10 init];
}

- (BACollectionIDData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end