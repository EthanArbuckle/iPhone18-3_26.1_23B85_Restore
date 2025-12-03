@interface AirDropTransferSessionsController
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)registerForPermissionRequests:(id)requests;
- (void)transferEndedForIdentifier:(id)identifier;
- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)data previewImageIsSensitive:(id)self0;
- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description actionsData:(id)data completedURLsData:(id)self0;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation AirDropTransferSessionsController

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100044EA0(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)registerForPermissionRequests:(id)requests
{
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(requests);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10011A5F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10011A600;
  v13[5] = v12;
  selfCopy = self;
  sub_10003E224(0, 0, v8, &unk_10011A610, v13);
}

- (void)transferStartedForIdentifier:(id)identifier isFromMe:(id)me withTransferState:(id)state itemCount:(id)count senderName:(id)name localizedTransferDescription:(id)description previewImageData:(id)data previewImageIsSensitive:(id)self0
{
  dataCopy = data;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v17;
  if (name)
  {
    name = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v18;
    if (description)
    {
LABEL_3:
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v32 = 0;
    if (description)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  v20 = 0;
LABEL_6:
  meCopy = me;
  stateCopy = state;
  countCopy = count;
  sensitiveCopy = sensitive;
  selfCopy = self;
  if (data)
  {
    nameCopy = name;
    dataCopy2 = data;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    name = nameCopy;
  }

  else
  {
    v25 = 0xF000000000000000;
  }

  sub_100032CF0(v31, v33, meCopy, stateCopy, countCopy, name, v32, v30, v20, dataCopy, v25, sensitiveCopy);
  sub_100015660(dataCopy, v25);
}

- (void)transferUpdatedForIdentifier:(id)identifier withTransferState:(id)state transferAccepted:(id)accepted completedUnitCount:(id)count totalUnitCount:(id)unitCount localizedTransferDescription:(id)description actionsData:(id)data completedURLsData:(id)self0
{
  dataCopy = data;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v17;
  if (description)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v18;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  stateCopy = state;
  acceptedCopy = accepted;
  countCopy = count;
  unitCountCopy = unitCount;
  if (data)
  {
    dataCopy2 = data;
    lsDataCopy = lsData;
    selfCopy = self;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (lsData)
    {
LABEL_6:
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      goto LABEL_9;
    }
  }

  else
  {
    lsDataCopy2 = lsData;
    selfCopy2 = self;
    v27 = 0xF000000000000000;
    if (lsData)
    {
      goto LABEL_6;
    }
  }

  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_9:
  sub_100039EBC(v34, v36, stateCopy, acceptedCopy, countCopy, unitCountCopy, v33, v35, dataCopy, v27, v28, v30);
  sub_100015660(v28, v30);
  sub_100015660(dataCopy, v27);
}

- (void)transferEndedForIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10002FCDC(v4, v6);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_100046EC4(responseCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end