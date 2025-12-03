@interface ICCloudSyncingObjectMoveAction
- (ICCloudSyncingObjectMoveAction)init;
- (ICCloudSyncingObjectMoveAction)initWithFolder:(id)folder toParentObject:(id)object isCopy:(BOOL)copy;
- (ICCloudSyncingObjectMoveAction)initWithNote:(id)note toFolder:(id)folder isCopy:(BOOL)copy;
- (ICCloudSyncingObjectMoveAction)initWithObject:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject isCopy:(BOOL)copy;
- (ICCloudSyncingObjectMoveAction)initWithType:(int64_t)type object:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject isCopy:(BOOL)copy;
@end

@implementation ICCloudSyncingObjectMoveAction

- (ICCloudSyncingObjectMoveAction)initWithType:(int64_t)type object:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject isCopy:(BOOL)copy
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_type) = type;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_object) = object;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject) = parentObject;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject) = toParentObject;
  *(&self->super.isa + OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy) = copy;
  v18.receiver = self;
  v18.super_class = ObjectType;
  objectCopy = object;
  parentObjectCopy = parentObject;
  toParentObjectCopy = toParentObject;
  return [(ICCloudSyncingObjectMoveAction *)&v18 init];
}

- (ICCloudSyncingObjectMoveAction)initWithObject:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject isCopy:(BOOL)copy
{
  objectCopy = object;
  parentObjectCopy = parentObject;
  toParentObjectCopy = toParentObject;
  return ICCloudSyncingObject.MoveAction.init(object:fromParentObject:toParentObject:isCopy:)(objectCopy, parentObject, toParentObject, copy);
}

- (ICCloudSyncingObjectMoveAction)initWithFolder:(id)folder toParentObject:(id)object isCopy:(BOOL)copy
{
  copyCopy = copy;
  folderCopy = folder;
  objectCopy = object;
  parent = [folderCopy parent];
  if (!parent)
  {
    parent = [folderCopy account];
  }

  v11 = [(ICCloudSyncingObjectMoveAction *)self initWithObject:folderCopy fromParentObject:parent toParentObject:objectCopy isCopy:copyCopy];

  return v11;
}

- (ICCloudSyncingObjectMoveAction)initWithNote:(id)note toFolder:(id)folder isCopy:(BOOL)copy
{
  copyCopy = copy;
  noteCopy = note;
  folderCopy = folder;
  folder = [noteCopy folder];
  v11 = [(ICCloudSyncingObjectMoveAction *)self initWithObject:noteCopy fromParentObject:folder toParentObject:folderCopy isCopy:copyCopy];

  return v11;
}

- (ICCloudSyncingObjectMoveAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end