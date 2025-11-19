@interface LiteMessageServiceSession
- (LiteMessageServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)deleteAllDataWithCompletionHandler:(id)a3;
- (void)emergencyContactsDidChange;
- (void)familyDidChange;
- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)a3;
- (void)handleDaemonFinishedLaunchingWithNotification:(id)a3;
- (void)handleSMSMessageSentWithNotification:(id)a3;
- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 storageContext:(id)a11;
- (void)joinChat:(id)a3 handleInfo:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 joinProperties:(id)a7;
- (void)joinChat:(id)a3 handleInfo:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 lastAddressedHandle:(id)a7 lastAddressedSIMID:(id)a8 joinProperties:(id)a9;
- (void)messenger:(id)a3 incomingMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6;
- (void)messenger:(id)a3 incomingMessage:(id)a4 context:(id)a5 clientErrorAcknowledgementBlock:(id)a6;
- (void)messenger:(id)a3 incomingServiceUpdateMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6;
- (void)messenger:(id)a3 incomingSummaryMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6;
- (void)messenger:(id)a3 receivedIncomingDeliveryReceiptForIdentifier:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)networkMonitorDidUpdate:(id)a3;
- (void)relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5;
- (void)republishOffGridStatusIfNecessary;
- (void)satelliteStateDidChange:(BOOL)a3;
- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5;
- (void)sendRelayDeliveryReceiptForMessageID:(id)a3 toChat:(id)a4;
- (void)sentDowngradeRequestToHandleID:(id)a3 fromID:(id)a4;
- (void)sessionDidBecomeActive;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation LiteMessageServiceSession

- (void)emergencyContactsDidChange
{
  v2 = self;
  LiteMessageServiceSession.emergencyContactsDidChange()();
}

- (void)familyDidChange
{
  v2 = self;
  LiteMessageServiceSession.familyDidChange()();
}

- (void)messenger:(id)a3 incomingMessage:(id)a4 context:(id)a5 clientErrorAcknowledgementBlock:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  specialized LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(v13, v14, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v11);
}

- (void)messenger:(id)a3 incomingMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  *(v12 + 24) = v11;
  v18[4] = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:)partial apply;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v18[3] = &block_descriptor_23;
  v13 = _Block_copy(v18);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = self;

  [(LiteMessageServiceSession *)v17 messenger:v14 incomingMessage:v15 context:v16 clientErrorAcknowledgementBlock:v13];

  _Block_release(v13);
}

- (void)messenger:(id)a3 incomingSummaryMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a4;
  v14 = self;
  v15 = v13;
  v16 = v14;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)partial apply, v18);
}

- (void)messenger:(id)a3 receivedIncomingDeliveryReceiptForIdentifier:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = self;
  specialized LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(v10, v12, v14, v15);
}

- (void)messenger:(id)a3 incomingServiceUpdateMessage:(id)a4 context:(id)a5 clientAcknowledgementBlock:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  specialized LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(v13, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

- (LiteMessageServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return LiteMessageServiceSession.init(account:service:replicatingFor:)(v7, v8, a5);
}

- (void)sendRelayDeliveryReceiptForMessageID:(id)a3 toChat:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(v12, v13);
}

- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5
{
  v5 = a5;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  LiteMessageServiceSession.sendMessage(_:toChat:style:)(v11, v8, v10, v5);
}

- (void)joinChat:(id)a3 handleInfo:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 joinProperties:(id)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v16;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a7)
  {
LABEL_3:
    a7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v17 = self;
  LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:joinProperties:)(v11, v13, v14, a5, v15, a6, a7);
}

- (void)joinChat:(id)a3 handleInfo:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 lastAddressedHandle:(id)a7 lastAddressedSIMID:(id)a8 joinProperties:(id)a9
{
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v16;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (a8)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a8 = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v22 = a9;
  v23 = self;
  if (v22)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:lastAddressedHandle:lastAddressedSIMID:joinProperties:)(v25, v14, v15, a5, v24, a6, v17, v19, v20, a8);
}

- (void)sessionDidBecomeActive
{
  v2 = self;
  LiteMessageServiceSession.sessionDidBecomeActive()();
}

- (void)republishOffGridStatusIfNecessary
{
  v2 = self;
  LiteMessageServiceSession.republishOffGridStatusIfNecessary()();
}

- (void)networkMonitorDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = LiteMessageServiceSession;
  v4 = a3;
  v5 = self;
  [(LiteMessageServiceSession *)&v6 networkMonitorDidUpdate:v4];
  if ([v4 immediatelyReachable])
  {
    LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
  }
}

- (void)deleteAllDataWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
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
  v12[4] = &async function pointer to partial apply for @objc closure #1 in LiteMessageServiceSession.deleteAllData();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (void)relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  specialized LiteMessageServiceSession.relayLegacySatelliteMessage(_:toChat:localWatchOnly:)(v10, v7, v9);
}

- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 storageContext:(id)a11
{
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a6)
    {
LABEL_3:
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      goto LABEL_6;
    }
  }

  else if (a6)
  {
    goto LABEL_3;
  }

  v30 = 0;
  v18 = 0;
LABEL_6:
  v31 = a3;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = self;
  if (a7)
  {
    v23 = a7;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  specialized LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(v32, v30, v18, v27, v29, v21);

  outlined consume of Data?(v24, v26);
}

- (void)handleDaemonFinishedLaunchingWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  LiteMessageServiceSession.donateHandlesForKeyExchange()();

  (*(v5 + 8))(v8, v4);
}

- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(v4);
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = a3;
  swift_unknownObjectRetain_n();
  v13 = self;
  v14 = v12;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = a4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)partial apply, v16);

  swift_unknownObjectRelease();
}

- (void)sentDowngradeRequestToHandleID:(id)a3 fromID:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  specialized LiteMessageServiceSession.sentDowngradeRequest(toHandleID:fromID:)(v5, v7, v8, v10);
}

- (void)handleSMSMessageSentWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  LiteMessageServiceSession.handleSMSMessageSent(notification:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v2 = self;
  LiteMessageServiceSession.performFirstUnlockTasks()();
}

- (void)satelliteStateDidChange:(BOOL)a3
{
  v4 = self;
  LiteMessageServiceSession.satelliteStateDidChange(_:)(a3);
}

@end