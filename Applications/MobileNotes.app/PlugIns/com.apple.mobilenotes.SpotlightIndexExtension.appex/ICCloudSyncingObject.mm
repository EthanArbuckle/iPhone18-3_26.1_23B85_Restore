@interface ICCloudSyncingObject
+ (void)undoablyPersistActivityEventsForMoveAction:(id)action oldObject:(id)object newObject:(id)newObject;
- (void)persistJoinActivityEvent;
- (void)persistLeaveActivityEvent;
- (void)persistParticipantActivityEventsWithOldShare:(id)share newShare:(id)newShare;
@end

@implementation ICCloudSyncingObject

+ (void)undoablyPersistActivityEventsForMoveAction:(id)action oldObject:(id)object newObject:(id)newObject
{
  actionCopy = action;
  objectCopy = object;
  newObjectCopy = newObject;
  _sSo20ICCloudSyncingObjectC45com_apple_mobilenotes_SpotlightIndexExtensionE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(actionCopy, object, newObject);
}

- (void)persistParticipantActivityEventsWithOldShare:(id)share newShare:(id)newShare
{
  shareCopy = share;
  newShareCopy = newShare;
  v12.value.super.super.isa = self;
  isa = v12.value.super.super.isa;
  v11.value.super.super.isa = share;
  v11.is_nil = newShare;
  ICCloudSyncingObject.persistParticipantActivityEvents(oldShare:newShare:)(v11, v12);
}

- (void)persistJoinActivityEvent
{
  selfCopy = self;
  ICCloudSyncingObject.persistJoinActivityEvent()();
}

- (void)persistLeaveActivityEvent
{
  selfCopy = self;
  ICCloudSyncingObject.persistLeaveActivityEvent()();
}

@end