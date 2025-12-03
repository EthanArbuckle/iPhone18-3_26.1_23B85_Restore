@interface LiteMessageServiceSession
- (LiteMessageServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)deleteAllDataWithCompletionHandler:(id)handler;
- (void)emergencyContactsDidChange;
- (void)familyDidChange;
- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds;
- (void)handleDaemonFinishedLaunchingWithNotification:(id)notification;
- (void)handleSMSMessageSentWithNotification:(id)notification;
- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 storageContext:(id)self1;
- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d joinProperties:(id)properties;
- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD joinProperties:(id)properties;
- (void)messenger:(id)messenger incomingMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block;
- (void)messenger:(id)messenger incomingMessage:(id)message context:(id)context clientErrorAcknowledgementBlock:(id)block;
- (void)messenger:(id)messenger incomingServiceUpdateMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block;
- (void)messenger:(id)messenger incomingSummaryMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block;
- (void)messenger:(id)messenger receivedIncomingDeliveryReceiptForIdentifier:(id)identifier fromURI:(id)i context:(id)context;
- (void)networkMonitorDidUpdate:(id)update;
- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only;
- (void)republishOffGridStatusIfNecessary;
- (void)satelliteStateDidChange:(BOOL)change;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat;
- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD;
- (void)sessionDidBecomeActive;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation LiteMessageServiceSession

- (void)emergencyContactsDidChange
{
  selfCopy = self;
  LiteMessageServiceSession.emergencyContactsDidChange()();
}

- (void)familyDidChange
{
  selfCopy = self;
  LiteMessageServiceSession.familyDidChange()();
}

- (void)messenger:(id)messenger incomingMessage:(id)message context:(id)context clientErrorAcknowledgementBlock:(id)block
{
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  messengerCopy = messenger;
  messageCopy = message;
  contextCopy = context;
  selfCopy = self;
  specialized LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(messageCopy, contextCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v11);
}

- (void)messenger:(id)messenger incomingMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block
{
  v10 = _Block_copy(block);
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
  messengerCopy = messenger;
  messageCopy = message;
  contextCopy = context;
  selfCopy = self;

  [(LiteMessageServiceSession *)selfCopy messenger:messengerCopy incomingMessage:messageCopy context:contextCopy clientErrorAcknowledgementBlock:v13];

  _Block_release(v13);
}

- (void)messenger:(id)messenger incomingSummaryMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  messageCopy = message;
  selfCopy = self;
  v15 = messageCopy;
  v16 = selfCopy;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v15;
  v18[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)partial apply, v18);
}

- (void)messenger:(id)messenger receivedIncomingDeliveryReceiptForIdentifier:(id)identifier fromURI:(id)i context:(id)context
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  messengerCopy = messenger;
  iCopy = i;
  contextCopy = context;
  selfCopy = self;
  specialized LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(v10, v12, iCopy, contextCopy);
}

- (void)messenger:(id)messenger incomingServiceUpdateMessage:(id)message context:(id)context clientAcknowledgementBlock:(id)block
{
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  messengerCopy = messenger;
  messageCopy = message;
  contextCopy = context;
  selfCopy = self;
  specialized LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(messageCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

- (LiteMessageServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  return LiteMessageServiceSession.init(account:service:replicatingFor:)(accountCopy, serviceCopy, session);
}

- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(v12, v13);
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  messageCopy = message;
  selfCopy = self;
  LiteMessageServiceSession.sendMessage(_:toChat:style:)(messageCopy, v8, v10, styleCopy);
}

- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d joinProperties:(id)properties
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v16;
    if (!properties)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (properties)
  {
LABEL_3:
    properties = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:joinProperties:)(v11, v13, v14, style, v15, d, properties);
}

- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD joinProperties:(id)properties
{
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v16;
    if (handle)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (iD)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = 0;
  if (!handle)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (iD)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  propertiesCopy = properties;
  selfCopy = self;
  if (propertiesCopy)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:lastAddressedHandle:lastAddressedSIMID:joinProperties:)(v25, v14, v15, style, v24, d, v17, v19, v20, iD);
}

- (void)sessionDidBecomeActive
{
  selfCopy = self;
  LiteMessageServiceSession.sessionDidBecomeActive()();
}

- (void)republishOffGridStatusIfNecessary
{
  selfCopy = self;
  LiteMessageServiceSession.republishOffGridStatusIfNecessary()();
}

- (void)networkMonitorDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = LiteMessageServiceSession;
  updateCopy = update;
  selfCopy = self;
  [(LiteMessageServiceSession *)&v6 networkMonitorDidUpdate:updateCopy];
  if ([updateCopy immediatelyReachable])
  {
    LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
  }
}

- (void)deleteAllDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  messageCopy = message;
  selfCopy = self;
  specialized LiteMessageServiceSession.relayLegacySatelliteMessage(_:toChat:localWatchOnly:)(messageCopy, v7, v9);
}

- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 storageContext:(id)self1
{
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (fromIdentifier)
    {
LABEL_3:
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      goto LABEL_6;
    }
  }

  else if (fromIdentifier)
  {
    goto LABEL_3;
  }

  v30 = 0;
  v18 = 0;
LABEL_6:
  handlerCopy = handler;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  selfCopy = self;
  if (token)
  {
    tokenCopy = token;
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

  specialized LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(v32, v30, v18, v27, v29, contextCopy);

  outlined consume of Data?(v24, v26);
}

- (void)handleDaemonFinishedLaunchingWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LiteMessageServiceSession.donateHandlesForKeyExchange()();

  (*(v5 + 8))(v8, v4);
}

- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(v4);
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  requestCopy = request;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v14 = requestCopy;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = selfCopy;
  v16[5] = v14;
  v16[6] = handler;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)partial apply, v16);

  swift_unknownObjectRelease();
}

- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  specialized LiteMessageServiceSession.sentDowngradeRequest(toHandleID:fromID:)(v5, v7, v8, v10);
}

- (void)handleSMSMessageSentWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LiteMessageServiceSession.handleSMSMessageSent(notification:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  selfCopy = self;
  LiteMessageServiceSession.performFirstUnlockTasks()();
}

- (void)satelliteStateDidChange:(BOOL)change
{
  selfCopy = self;
  LiteMessageServiceSession.satelliteStateDidChange(_:)(change);
}

@end