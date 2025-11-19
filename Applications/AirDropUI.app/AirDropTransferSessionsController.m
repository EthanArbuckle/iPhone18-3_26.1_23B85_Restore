@interface AirDropTransferSessionsController
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)registerForPermissionRequests:(id)a3;
- (void)transferEndedForIdentifier:(id)a3;
- (void)transferStartedForIdentifier:(id)a3 isFromMe:(id)a4 withTransferState:(id)a5 itemCount:(id)a6 senderName:(id)a7 localizedTransferDescription:(id)a8 previewImageData:(id)a9 previewImageIsSensitive:(id)a10;
- (void)transferUpdatedForIdentifier:(id)a3 withTransferState:(id)a4 transferAccepted:(id)a5 completedUnitCount:(id)a6 totalUnitCount:(id)a7 localizedTransferDescription:(id)a8 actionsData:(id)a9 completedURLsData:(id)a10;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation AirDropTransferSessionsController

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_100044EA0(v8);

  swift_unknownObjectRelease();
}

- (void)registerForPermissionRequests:(id)a3
{
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_10003E224(0, 0, v8, &unk_10011A610, v13);
}

- (void)transferStartedForIdentifier:(id)a3 isFromMe:(id)a4 withTransferState:(id)a5 itemCount:(id)a6 senderName:(id)a7 localizedTransferDescription:(id)a8 previewImageData:(id)a9 previewImageIsSensitive:(id)a10
{
  v16 = a9;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v17;
  if (a7)
  {
    a7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v18;
    if (a8)
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
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  v20 = 0;
LABEL_6:
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v21 = a10;
  v26 = self;
  if (a9)
  {
    v22 = a7;
    v23 = a9;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    a7 = v22;
  }

  else
  {
    v25 = 0xF000000000000000;
  }

  sub_100032CF0(v31, v33, v29, v28, v27, a7, v32, v30, v20, v16, v25, v21);
  sub_100015660(v16, v25);
}

- (void)transferUpdatedForIdentifier:(id)a3 withTransferState:(id)a4 transferAccepted:(id)a5 completedUnitCount:(id)a6 totalUnitCount:(id)a7 localizedTransferDescription:(id)a8 actionsData:(id)a9 completedURLsData:(id)a10
{
  v16 = a9;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v17;
  if (a8)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v18;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  if (a9)
  {
    v23 = a9;
    v24 = a10;
    v25 = self;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (a10)
    {
LABEL_6:
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      goto LABEL_9;
    }
  }

  else
  {
    v31 = a10;
    v32 = self;
    v27 = 0xF000000000000000;
    if (a10)
    {
      goto LABEL_6;
    }
  }

  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_9:
  sub_100039EBC(v34, v36, v19, v20, v21, v22, v33, v35, v16, v27, v28, v30);
  sub_100015660(v28, v30);
  sub_100015660(v16, v27);
}

- (void)transferEndedForIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10002FCDC(v4, v6);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100046EC4(v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end