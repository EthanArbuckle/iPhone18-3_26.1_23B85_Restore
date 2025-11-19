@interface ICCloudSyncingObject
+ (void)undoablyPersistActivityEventsForMoveAction:(id)a3 oldObject:(id)a4 newObject:(id)a5;
- (void)persistJoinActivityEvent;
- (void)persistLeaveActivityEvent;
- (void)persistParticipantActivityEventsWithOldShare:(id)a3 newShare:(id)a4;
@end

@implementation ICCloudSyncingObject

+ (void)undoablyPersistActivityEventsForMoveAction:(id)a3 oldObject:(id)a4 newObject:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  _sSo20ICCloudSyncingObjectC11MobileNotesE29undoablyPersistActivityEvents3for03oldC003newC0yAbCE10MoveActionC_ABSgAJtFZ_0(v7, a4, a5);
}

- (void)persistParticipantActivityEventsWithOldShare:(id)a3 newShare:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.value.super.super.isa = self;
  isa = v12.value.super.super.isa;
  v11.value.super.super.isa = a3;
  v11.is_nil = a4;
  ICCloudSyncingObject.persistParticipantActivityEvents(oldShare:newShare:)(v11, v12);
}

- (void)persistJoinActivityEvent
{
  v2 = self;
  ICCloudSyncingObject.persistJoinActivityEvent()();
}

- (void)persistLeaveActivityEvent
{
  v2 = self;
  ICCloudSyncingObject.persistLeaveActivityEvent()();
}

@end