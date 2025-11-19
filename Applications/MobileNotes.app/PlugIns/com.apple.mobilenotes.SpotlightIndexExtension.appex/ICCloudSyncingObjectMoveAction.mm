@interface ICCloudSyncingObjectMoveAction
- (ICCloudSyncingObjectMoveAction)init;
- (ICCloudSyncingObjectMoveAction)initWithObject:(id)a3 fromParentObject:(id)a4 toParentObject:(id)a5 isCopy:(BOOL)a6;
- (ICCloudSyncingObjectMoveAction)initWithType:(int64_t)a3 object:(id)a4 fromParentObject:(id)a5 toParentObject:(id)a6 isCopy:(BOOL)a7;
@end

@implementation ICCloudSyncingObjectMoveAction

- (ICCloudSyncingObjectMoveAction)initWithType:(int64_t)a3 object:(id)a4 fromParentObject:(id)a5 toParentObject:(id)a6 isCopy:(BOOL)a7
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type) = a3;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) = a4;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject) = a5;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject) = a6;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) = a7;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  return [(ICCloudSyncingObjectMoveAction *)&v18 init];
}

- (ICCloudSyncingObjectMoveAction)initWithObject:(id)a3 fromParentObject:(id)a4 toParentObject:(id)a5 isCopy:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  return ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(v9, a4, a5, a6);
}

- (ICCloudSyncingObjectMoveAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end