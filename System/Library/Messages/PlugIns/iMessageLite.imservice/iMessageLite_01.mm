Swift::Void __swiftcall LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(Swift::String forMessageID, Swift::String toChat)
{
  v3 = v2;
  object = toChat._object;
  countAndFlagsBits = toChat._countAndFlagsBits;
  v6 = forMessageID._object;
  v7 = forMessageID._countAndFlagsBits;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v30 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = v3;
    v18 = object;
    v19 = countAndFlagsBits;
    v20 = v17;
    v21 = swift_slowAlloc();
    v22 = v7;
    v23 = v21;
    v31 = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v6, &v31);
    _os_log_impl(&dword_0, v14, v15, "Enqueuing relay delivery receipt to send for message %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);

    countAndFlagsBits = v19;
    object = v18;
    v3 = v29;
  }

  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v24, outgoingMessageQueue);
  v25 = swift_allocObject();
  v26 = v30;
  v25[2] = v3;
  v25[3] = v26;
  v25[4] = v6;
  v25[5] = countAndFlagsBits;
  v25[6] = object;

  v27 = v3;

  AsyncSerialQueue.perform(_:)();
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a2;
  v5[7] = a3;
  v10 = type metadata accessor for Logger();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v5[13] = v13;
  *v13 = v5;
  v13[1] = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);

  return LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)(a2, a3, a4, a5);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)()
{
  v2 = v0;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 112) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);
  }

  else
  {
    v8 = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{
  v1 = v0[12];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

id closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)()
{
  v34 = v0;
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v10 = v0[9];
    v32 = v0[10];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v33);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v33);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "Failed to send relay delivery receipt for message %s: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v32, v11);
  }

  else
  {
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];

    (*(v22 + 8))(v21, v23);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v25 = result;
    v26 = v0[14];
    v27 = v0[12];

    v28 = String._bridgeToObjectiveC()();
    v29 = _convertErrorToNSError(_:)();
    [v25 forceAutoBugCaptureWithSubType:v28 errorPayload:v29];

    v30 = v0[10];

    v31 = v0[1];

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LiteMessageServiceSession.sendMessage(_:toChat:style:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v32 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.liteSession.unsafeMutableAddressor();
  (*(v10 + 16))(v13, v14, v9);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v28 = v9;
    v29 = v6;
    v30 = v5;
    v31 = a3;
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v6 = 136315138;
    v19 = [v15 guid];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);

    *(v6 + 4) = v23;
    _os_log_impl(&dword_0, v16, v17, "Enqueuing message to send: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);

    (*(v10 + 8))(v13, v28);
    v5 = v30;
    a3 = v31;
    LOBYTE(v6) = v29;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v24, outgoingMessageQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v15;
  *(v25 + 32) = v32;
  *(v25 + 40) = a3;
  *(v25 + 48) = v6;
  v26 = v15;
  v27 = v5;

  AsyncSerialQueue.perform(_:)();
}

uint64_t closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 82) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v10 = type metadata accessor for Logger();
  *(v5 + 144) = v10;
  v11 = *(v10 - 8);
  *(v5 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for MainActor();
  *(v5 + 184) = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  *(v5 + 192) = v13;
  *v13 = v5;
  v13[1] = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);

  return LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:)(a2, a3, a4, a5);
}

uint64_t closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  v2 = v0;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 200) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);
  }

  else
  {
    v8 = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);
  }

  return _swift_task_switch(v8, v7, v6);
}

void closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  v43 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = Logger.liteSession.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v6, v2);
  v7 = v5;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v11 guid];

    if (!v13)
    {
      __break(1u);
      goto LABEL_13;
    }

    v14 = *(v0 + 152);
    v40 = *(v0 + 144);
    v41 = *(v0 + 168);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v42);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v42);
    _os_log_impl(&dword_0, v8, v9, "Successfully sent message %s to %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v14 + 8))(v41, v40);
  }

  else
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    v24 = *(v0 + 136);

    (*(v23 + 8))(v21, v22);
  }

  [*(v0 + 120) setErrorCode:0];
  v25 = *(v0 + 82);
  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  LiteMessageServiceSession.sendMessageSentMetric(for:withDetailedError:)(v29, 0, 0, 65280);
  outlined consume of LiteMessageSendError?(0, 0, 65280);
  v30 = String._bridgeToObjectiveC()();
  [v28 didSendMessage:v29 forChat:v30 style:v25];

  if (![v29 errorCode])
  {
    v32 = [*(v0 + 120) guid];
    if (v32)
    {
      v33 = v32;
      v34 = *(v0 + 184);
      v35 = *(v0 + 112);

      v36 = [v35 account];
      [v35 notifyDidSendMessageID:v33 account:v36 shouldNotify:1];

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v31 = *(v0 + 184);

LABEL_9:
  v38 = *(v0 + 160);
  v37 = *(v0 + 168);

  v39 = *(v0 + 8);

  v39();
}

{
  v67 = v0;
  v1 = *(v0 + 200);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  swift_errorRetain();
  v7 = Logger.liteSession.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);
  v8 = v6;

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = [v11 guid];
    v14 = *(v0 + 200);
    if (!v13)
    {
LABEL_17:
      v61 = *(v0 + 136);
      v62 = *(v0 + 120);

      __break(1u);
      goto LABEL_18;
    }

    v15 = v13;
    v63 = *(v0 + 152);
    v16 = *(v0 + 136);
    v64 = *(v0 + 144);
    v65 = *(v0 + 160);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v66);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v16, &v66);
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = *(v0 + 56);
    v26 = Error.localizedDescription.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v66);

    *(v12 + 24) = v28;
    _os_log_impl(&dword_0, v9, v10, "Failed to send message %s to %s: %s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v63 + 8))(v65, v64);
  }

  else
  {
    v29 = *(v0 + 200);
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);

    (*(v31 + 8))(v30, v32);
  }

  v34 = *(v0 + 200);
  v35 = *(v0 + 120);
  swift_getErrorValue();
  v36 = *(v0 + 16);
  v37 = *(v0 + 32);
  [v35 setErrorCode:Error.liteItemSendErrorCode.getter(*(v0 + 24))];
  v38 = [objc_opt_self() sharedInstance];
  if (!v38)
  {
    __break(1u);
    goto LABEL_17;
  }

  v39 = v38;
  v40 = *(v0 + 200);

  v41 = String._bridgeToObjectiveC()();
  v42 = _convertErrorToNSError(_:)();
  [v39 forceAutoBugCaptureWithSubType:v41 errorPayload:v42];

  *(v0 + 96) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v43 = *(v0 + 64);
    v44 = *(v0 + 72);
    v45 = *(v0 + 80);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 65280;
  }

  v46 = *(v0 + 82);
  v48 = *(v0 + 128);
  v47 = *(v0 + 136);
  v49 = *(v0 + 112);
  v50 = *(v0 + 120);
  LiteMessageServiceSession.sendMessageSentMetric(for:withDetailedError:)(v50, v43, v44, v45);
  outlined consume of LiteMessageSendError?(v43, v44, v45);
  v51 = String._bridgeToObjectiveC()();
  [v49 didSendMessage:v50 forChat:v51 style:v46];

  if (![v50 errorCode])
  {
    v53 = [*(v0 + 120) guid];
    if (v53)
    {
      v54 = v53;
      v55 = *(v0 + 184);
      v56 = *(v0 + 112);

      v57 = [v56 account];
      [v56 notifyDidSendMessageID:v54 account:v57 shouldNotify:1];

      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v52 = *(v0 + 184);

LABEL_13:
  v59 = *(v0 + 160);
  v58 = *(v0 + 168);

  v60 = *(v0 + 8);

  v60();
}

void LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:joinProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, NSString a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  if (a7)
  {
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  isa = v13.super.isa;
  [v7 joinChat:v11 handleInfo:v12.super.isa style:a4 groupID:a6 lastAddressedHandle:0 lastAddressedSIMID:0 joinProperties:v13.super.isa];
}

Swift::Void __swiftcall LiteMessageServiceSession.sessionDidBecomeActive()()
{
  v1 = [objc_opt_self() sharedDaemon];
  if (([v1 respondsToSelector:"isSetupComplete"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v2 = [v1 isSetupComplete];
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
LABEL_5:
    v3 = [objc_opt_self() defaultCenter];
    [v3 addObserver:v0 selector:"handleDaemonFinishedLaunchingWithNotification:" name:kFZDaemonFinishedLaunchingNotification object:0];

    goto LABEL_6;
  }

  LiteMessageServiceSession.donateHandlesForKeyExchange()();
LABEL_6:
  v4.receiver = v0;
  v4.super_class = LiteMessageServiceSession;
  objc_msgSendSuper2(&v4, "sessionDidBecomeActive");
}

Swift::Void __swiftcall LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v64 = &v63 - v2;
  v3 = type metadata accessor for Date();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v63 - v13;
  v14 = __chkstk_darwin(v12);
  v63 = &v63 - v15;
  v16 = __chkstk_darwin(v14);
  v67 = &v63 - v17;
  v18 = __chkstk_darwin(v16);
  v66 = &v63 - v19;
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = [objc_opt_self() sharedInstance];
  v73 = [v22 offGridStateManager];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  v72 = NSString.init(stringLiteral:)();
  v23 = Logger.liteSession.unsafeMutableAddressor();
  v24 = v8[2];
  v24(v21, v23, v7);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Calculate whether to attempt recovery to republish off grid status", v27, 2u);
  }

  v28 = v8[1];
  v28(v21, v7);
  v29 = [objc_opt_self() sharedInstanceForBagType:1];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 objectForKey:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v77[0] = v75;
  v77[1] = v76;
  if (*(&v76 + 1))
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v32 = v74;
      v33 = [v74 BOOLValue];

      if (!v33)
      {
        v34 = v65;
        v24(v65, v23, v7);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_0, v35, v36, "Server bag key has disabled the recovery mechanism, not attempting to recover", v37, 2u);
        }

        else
        {
        }

LABEL_29:
        v62 = v34;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of TaskPriority?(v77, &_sypSgMd, &_sypSgMR);
  }

  v38 = v73;
  if (![v73 publishStatus])
  {
    v34 = v68;
    v24(v68, v23, v7);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "We are already attempting to publish off grid status, not attempting to recover", v52, 2u);
    }

    else
    {
    }

    goto LABEL_29;
  }

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v40 = v39;
  (*(v69 + 8))(v6, v70);
  v41 = v71 + OBJC_IVAR___LiteMessageServiceSession_state;
  if (v40 - *(v71 + OBJC_IVAR___LiteMessageServiceSession_state + 32) < *(v71 + OBJC_IVAR___LiteMessageServiceSession_state + 40))
  {
    v42 = v66;
    v24(v66, v23, v7);
    v43 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v72;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "We have recently come back on grid, not immediately attempting to recover";
LABEL_26:
      _os_log_impl(&dword_0, v44, v45, v49, v48, 2u);

      v62 = v43;
LABEL_30:
      v28(v62, v7);
      return;
    }

    goto LABEL_27;
  }

  v47 = v72;
  [*(v41 + 24) noteItem:v72];
  if (![*(v41 + 24) underLimitForItem:v47])
  {
    v61 = v63;
    v24(v63, v23, v7);
    v43 = v61;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "We have already republished our status as part of the recovery mechanism recently, not republishing";
      goto LABEL_26;
    }

LABEL_27:

    v62 = v43;
    goto LABEL_30;
  }

  v24(v67, v23, v7);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "Attempting to republish off grid status as part of recovery", v55, 2u);
  }

  v28(v67, v7);
  v56 = type metadata accessor for TaskPriority();
  v57 = v64;
  (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
  type metadata accessor for MainActor();
  v58 = v38;
  v59 = static MainActor.shared.getter();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = &protocol witness table for MainActor;
  v60[4] = v58;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v57, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary(), v60);
}

uint64_t closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = type metadata accessor for Logger();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[29] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[30] = v9;
  v4[31] = v8;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary(), v9, v8);
}

uint64_t closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v1 = v0[24];
  v2 = [objc_allocWithZone(IDSOffGridModeOptions) init];
  v0[32] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo14IDSOffGridModeV_So0abC13PublishStatusVts5Error_pGMd, &_sSccySo14IDSOffGridModeV_So0abC13PublishStatusVts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridMode, @unowned IDSOffGridModePublishStatus, @unowned NSError?) -> () with result type (IDSOffGridMode, IDSOffGridModePublishStatus);
  v0[13] = &block_descriptor_65;
  v0[14] = v3;
  [v1 setOffGridMode:1 options:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  }

  else
  {
    v6 = closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary();
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v5 = v0[26];

  v6 = Logger.liteSession.unsafeMutableAddressor();
  (*(v5 + 16))(v3, v6, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v7, v8, "Republished status as on grid", v13, 2u);
  }

  (*(v12 + 8))(v10, v11);
  v15 = v0[27];
  v14 = v0[28];

  v16 = v0[1];

  return v16();
}

{
  v31 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  swift_willThrow();

  v7 = Logger.liteSession.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[33];
    v11 = v0[26];
    v29 = v0[27];
    v12 = v0[25];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[20];
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "Failed to republish status as on grid error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

    (*(v11 + 8))(v29, v12);
  }

  else
  {
    v21 = v0[33];
    v23 = v0[26];
    v22 = v0[27];
    v24 = v0[25];

    (*(v23 + 8))(v22, v24);
  }

  v26 = v0[27];
  v25 = v0[28];

  v27 = v0[1];

  return v27();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridMode, @unowned IDSOffGridModePublishStatus, @unowned NSError?) -> () with result type (IDSOffGridMode, IDSOffGridModePublishStatus)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

void LiteMessageServiceSession.networkMonitorDidUpdate(_:)(void *a1)
{
  v2.super_class = LiteMessageServiceSession;
  objc_msgSendSuper2(&v2, "networkMonitorDidUpdate:", a1);
  if ([a1 immediatelyReachable])
  {
    LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
  }
}

uint64_t LiteMessageServiceSession.deleteAllData()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(LiteMessageServiceSession.deleteAllData(), v6, v5);
}

{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = Logger.liteSession.unsafeMutableAddressor();
  v0[10] = v4;
  v5 = *(v3 + 16);
  v0[11] = v5;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "deleteAllData for lite service session", v8, 2u);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[13] = v13;
  v13(v9, v10);
  v14 = *(v12 + OBJC_IVAR___LiteMessageServiceSession_state + 16);
  v0[14] = v14;

  return _swift_task_switch(LiteMessageServiceSession.deleteAllData(), v14, 0);
}

{
  v1 = v0[14];
  LiteMessageSegmentStore.deleteStore()();
  v0[15] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = LiteMessageServiceSession.deleteAllData();
  }

  else
  {
    v6 = v0[14];

    v3 = v0[8];
    v4 = v0[9];
    v5 = LiteMessageServiceSession.deleteAllData();
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = v0[7];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  v4(v7, v5, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 120);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v9, v10, "deleteAllData for lite service session failed with %@", v13, 0xCu);
    outlined destroy of TaskPriority?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
    v16 = *(v0 + 120);
  }

  v17 = *(v0 + 32) + 8;
  (*(v0 + 104))(*(v0 + 40), *(v0 + 24));
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t @objc closure #1 in LiteMessageServiceSession.deleteAllData()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(@objc closure #1 in LiteMessageServiceSession.deleteAllData(), v4, v3);
}

uint64_t @objc closure #1 in LiteMessageServiceSession.deleteAllData()()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = @objc closure #1 in LiteMessageServiceSession.deleteAllData();
  v6 = v0[3];

  return LiteMessageServiceSession.deleteAllData()();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void closure #1 in LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(void *a1, void *a2, void *a3, void *a4)
{
  v37 = a2;
  v7 = type metadata accessor for Date();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.liteSession.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = v10;
    v23 = a4;
    v24 = v22;
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = a1;
    v25 = v17;
    _os_log_impl(&dword_0, v18, v19, "[Push Handler] => Done marking message as sending: %@", v21, 0xCu);
    outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    a4 = v23;
    v10 = v33;

    a3 = v34;
  }

  (*(v12 + 8))(v15, v11);
  v26 = [a4 chatIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = [a4 style];
    v29 = [a3 time];
    if (v29)
    {
      v30 = v29;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v10, v36);
    }

    else
    {
      v31.super.isa = 0;
    }

    [v37 didSendMessage:a3 forChat:v27 style:v28 forceDate:v31.super.isa];
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMMessageItem?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id LiteMessageServiceSession.offGridMessenger(for:)()
{
  v1 = IDSOffGridMessageContext.topic.getter();
  v2 = 8;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR___LiteMessageServiceSession_state + v2);

  return v3;
}

id LiteMessageServiceSession.offGridMessenger(for:)(char a1)
{
  v2 = 8;
  if ((a1 & 1) == 0)
  {
    v2 = 0;
  }

  return *(v1 + OBJC_IVAR___LiteMessageServiceSession_state + v2);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance IDSOffGridModePublishStatus@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t sub_192B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)(v2, v3, v4, v5, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void specialized LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:lastAddressedHandle:lastAddressedSIMID:joinProperties:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v39 = a7;
  v40 = a6;
  v38 = a5;
  v41 = a1;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = Logger.liteSession.unsafeMutableAddressor();
  (*(v17 + 16))(v20, v21, v16);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a8;
    v27 = a4;
    v28 = v11;
    v29 = v26;
    v42 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a2, &v42);
    _os_log_impl(&dword_0, v22, v23, "Joining chat %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v11 = v28;
    a4 = v27;
    a8 = v36;
  }

  (*(v17 + 8))(v20, v16);
  v30 = String._bridgeToObjectiveC()();
  if (v40)
  {
    v31 = String._bridgeToObjectiveC()();
    v32 = a10;
    if (a8)
    {
      goto LABEL_5;
    }

LABEL_9:
    v33 = 0;
    if (!v32)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v31 = 0;
  v32 = a10;
  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = String._bridgeToObjectiveC()();
  if (v32)
  {
LABEL_6:
    v32 = String._bridgeToObjectiveC()();
  }

LABEL_7:
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 didJoinChat:v30 style:a4 displayName:0 groupID:v31 lastAddressedHandle:v33 lastAddressedSIMID:v32 handleInfo:isa];
}

uint64_t sub_1984C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()(v3, v4, v5, v2);
}

void specialized LiteMessageServiceSession.relayLegacySatelliteMessage(_:toChat:localWatchOnly:)(NSObject *a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - v11;
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = LiteMessageServiceSession.satelliteContinuitySendOptions(for:chatIdentifier:)(a1, a2, a3);
  v16 = &selRef_sharedFeatureFlags;
  v17 = [objc_opt_self() sharedInstance];
  if (!v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [objc_opt_self() myCTPhoneNumber];
  v21 = [v18 sendDataToPeers:isa forcedCallerID:v20 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];

  v22 = Logger.liteSession.unsafeMutableAddressor();
  v23 = *(v7 + 16);
  if (v21)
  {
    v23(v14, v22, v6);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {

      (*(v7 + 8))(v14, v6);
      goto LABEL_10;
    }

    v46 = v6;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47[0] = v28;
    *v27 = 136315138;
    v29 = [v24 guid];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v47);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_0, v25, v26, "Message synced locally, guid: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);

      (*(v7 + 8))(v14, v46);
      v16 = &selRef_sharedFeatureFlags;
LABEL_10:
      [v24 setNeedsRelay:0];
      v44 = [objc_opt_self() v16[117]];

      return;
    }

    goto LABEL_15;
  }

  v23(v12, v22, v6);
  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47[0] = v38;
    *v37 = 136315138;
    v39 = [v34 guid];

    if (!v39)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v47);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_0, v35, v36, "Message failed to sync: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
  }

  (*(v7 + 8))(v12, v6);
}

void specialized LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:)(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v203 = a6;
  v206 = a5;
  v205 = a4;
  v209 = a3;
  v207 = a2;
  v8 = type metadata accessor for Logger();
  v211 = *(v8 - 8);
  v212 = v8;
  v9 = *(v211 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v198 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v198 - v17;
  v19 = __chkstk_darwin(v16);
  v204 = &v198 - v20;
  v21 = __chkstk_darwin(v19);
  v201 = &v198 - v22;
  v23 = __chkstk_darwin(v21);
  v202 = &v198 - v24;
  v25 = __chkstk_darwin(v23);
  v200 = &v198 - v26;
  __chkstk_darwin(v25);
  v28 = &v198 - v27;
  v29 = type metadata accessor for Date();
  v208 = *(v29 - 8);
  v30 = *(v208 + 64);
  __chkstk_darwin(v29);
  v32 = &v198 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v37 = &v198 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v198 - v38;
  v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v215 = v40;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v210 = v6, v41 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), v6 = v210, (v42 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
LABEL_13:
    v56 = Logger.liteSession.unsafeMutableAddressor();
    v57 = v211;
    v58 = v212;
    (*(v211 + 16))(v12, v56, v212);
    v59 = v6;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315138;
      v64 = [v59 service];
      v65 = [v64 internalName];

      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, aBlock);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_0, v60, v61, "[Push Handler] %s can only reflect messages via madrid relay, not relay them.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    (*(v57 + 8))(v12, v58);
    return;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v41, v216);
  outlined destroy of AnyHashable(aBlock);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v199 = v39;
  v43 = v214;
  v44 = [v214 BOOLValue];

  v6 = v210;
  if ((v44 & 1) == 0)
  {
    goto LABEL_13;
  }

  v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v215 = v45;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v47 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v46, v216);
  outlined destroy of AnyHashable(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v70 = Logger.liteSession.unsafeMutableAddressor();
    v71 = v211;
    v72 = v212;
    (*(v211 + 16))(v15, v70, v212);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "[Push Handler] Missing item dictionary.", v75, 2u);
    }

    (*(v71 + 8))(v15, v72);
    return;
  }

  v48 = v214;
  v49 = v215;
  if (v209)
  {
    v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v215 = v50;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v52 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v51, v216);
      outlined destroy of AnyHashable(aBlock);
      v53 = v199;
      v54 = swift_dynamicCast();
      v55 = v208;
      (*(v208 + 56))(v53, v54 ^ 1u, 1, v29);
    }

    else
    {
      outlined destroy of AnyHashable(aBlock);
      v55 = v208;
      v53 = v199;
      (*(v208 + 56))(v199, 1, 1, v29);
    }

    outlined init with copy of TaskPriority?(v53, v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v76 = *(v55 + 48);
    if (v76(v37, 1, v29) == 1)
    {
      Date.init()();
      if (v76(v37, 1, v29) != 1)
      {
        outlined destroy of TaskPriority?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v55 + 32))(v32, v37, v29);
    }

    outlined copy of Data._Representation(v48, v49);
    v84 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v86 = String._bridgeToObjectiveC()();
    v87.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v206 = v48;
    v88 = v87.super.isa;
    v89 = objc_opt_self();
    aBlock[0] = 0;
    v90 = [v89 messageItemWithLiteIdentifier:v84 liteData:isa senderID:v86 date:v88 error:aBlock];

    v91 = aBlock[0];
    if (v90)
    {
      v92 = *(v208 + 8);
      v93 = aBlock[0];
      v92(v32, v29);
      v94 = v206;
      v95 = v49;
      outlined consume of Data._Representation(v206, v49);
      [v90 setFlags:5];
      v96 = v90;
      v97 = [v96 guid];
      v98 = v199;
      if (v97)
      {
        v99 = v97;
        [v210 _markFromStorageIfNeeded:v203 messageGUID:v97];

        v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v215 = v100;
        AnyHashable.init<A>(_:)();
        v101 = v204;
        if (*(a1 + 16) && (v102 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), v103 = v210, (v104 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v102, v216);
          outlined destroy of AnyHashable(aBlock);
          if (swift_dynamicCast())
          {
            v105 = v214;
            v106 = v215;
            v107 = LiteMessageServiceSession.joinedChat(with:)(v214, v215);
            v108 = v211;
            if (!v107)
            {

              v138 = Logger.liteSession.unsafeMutableAddressor();
              v139 = v201;
              v140 = v212;
              (*(v108 + 16))(v201, v138, v212);

              v141 = Logger.logObject.getter();
              v142 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v210 = v96;
                v144 = v143;
                v145 = swift_slowAlloc();
                aBlock[0] = v145;
                *v144 = 136315138;
                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, aBlock);

                *(v144 + 4) = v146;
                _os_log_impl(&dword_0, v141, v142, "[Push Handler] Could not find or create a chat with handle %s", v144, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v145);

                outlined consume of Data._Representation(v206, v95);
              }

              else
              {
                outlined consume of Data._Representation(v206, v95);
              }

              (*(v108 + 8))(v139, v140);
              goto LABEL_75;
            }

            v109 = v107;
            v110 = v96;
            v208 = v95;
            v91 = [v107 account];
            v111 = [v103 account];
            v112 = v111;
            v113 = v212;
            if (v91)
            {
              if (v111)
              {
                type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
                v114 = static NSObject.== infix(_:_:)();

                if (v114)
                {
                  goto LABEL_61;
                }

                goto LABEL_58;
              }

              v112 = v91;
            }

            else if (!v111)
            {
              goto LABEL_61;
            }

LABEL_58:
            v147 = [v210 account];
            v148 = [v147 accountID];

            if (!v148)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v148 = String._bridgeToObjectiveC()();
            }

            [v109 setAccountID:v148];

            v91 = [objc_opt_self() sharedInstance];
            [v91 storeChat:v109];

LABEL_61:
            v149 = [objc_opt_self() sharedInstance];
            v150 = [v96 guid];
            if (v150)
            {
              v151 = v150;
              v152 = [v149 messageWithGUID:v150];

              v153 = v210;
              v154 = v202;
              if (v152)
              {
                if (![v152 errorCode])
                {

                  v187 = Logger.liteSession.unsafeMutableAddressor();
                  (*(v108 + 16))(v200, v187, v113);
                  v188 = v110;
                  v189 = Logger.logObject.getter();
                  v190 = static os_log_type_t.default.getter();
                  if (!os_log_type_enabled(v189, v190))
                  {
                    outlined consume of Data._Representation(v206, v208);

                    (*(v108 + 8))(v200, v113);
                    goto LABEL_75;
                  }

                  v191 = swift_slowAlloc();
                  v192 = swift_slowAlloc();
                  aBlock[0] = v192;
                  *v191 = 136315138;
                  v193 = [v188 guid];

                  if (v193)
                  {
                    v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v196 = v195;

                    v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v194, v196, aBlock);

                    *(v191 + 4) = v197;
                    _os_log_impl(&dword_0, v189, v190, "[Push Handler] Already have message with guid %s.", v191, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v192);

                    outlined consume of Data._Representation(v206, v208);
                    (*(v211 + 8))(v200, v212);
                    goto LABEL_75;
                  }

                  goto LABEL_86;
                }
              }

              v155 = [v153 loginID];
              [v110 setSender:v155];

              if (IMSharedHelperDeviceHasMultipleSubscriptions())
              {
                v156 = [v109 lastAddressedLocalHandle];
              }

              else
              {
                v157 = String._bridgeToObjectiveC()();
                v156 = [v157 _stripFZIDPrefix];
              }

              [v110 setDestinationCallerID:v156];

              v158 = Logger.liteSession.unsafeMutableAddressor();
              (*(v108 + 16))(v154, v158, v113);
              v159 = v109;
              v160 = v110;
              v91 = v159;
              v161 = Logger.logObject.getter();
              v162 = static os_log_type_t.info.getter();
              v163 = &selRef_sharedFeatureFlags;
              if (os_log_type_enabled(v161, v162))
              {
                v209 = v106;
                v164 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                aBlock[0] = v207;
                *v164 = 136315650;
                v166 = [v160 guid];

                if (!v166)
                {
LABEL_84:

                  __break(1u);
                  goto LABEL_85;
                }

                v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v169 = v168;

                v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, aBlock);

                *(v164 + 4) = v170;
                *(v164 + 12) = 2080;
                v171 = [v91 chatIdentifier];

                if (!v171)
                {
LABEL_85:
                  __break(1u);
LABEL_86:
                  __break(1u);
                  return;
                }

                v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v174 = v173;

                v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, aBlock);

                *(v164 + 14) = v175;
                *(v164 + 22) = 2112;
                *(v164 + 24) = v91;
                *v165 = v109;
                v176 = v91;
                _os_log_impl(&dword_0, v161, v162, "[Push Handler] send message with guid: %s to identifier %s chat: %@", v164, 0x20u);
                outlined destroy of TaskPriority?(v165, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                swift_arrayDestroy();

                (*(v211 + 8))(v202, v212);
                v163 = &selRef_sharedFeatureFlags;
              }

              else
              {

                (*(v108 + 8))(v154, v113);
              }

              v177 = [v91 v163[78]];
              v178 = v208;
              if (v177)
              {
                v179 = v177;

                v180 = [v91 style];
                v181 = swift_allocObject();
                v182 = v210;
                v181[2] = v210;
                v181[3] = v160;
                v181[4] = v91;
                aBlock[4] = partial apply for closure #1 in LiteMessageServiceSession.handler(_:outgoingPlainTextMessage:toIdentifier:fromIdentifier:fromToken:messageGUID:timeStamp:isBeingReplayed:storageContext:);
                aBlock[5] = v181;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMMessageItem?) -> ();
                aBlock[3] = &block_descriptor_1;
                v183 = _Block_copy(aBlock);
                v184 = v160;
                v185 = v91;
                v186 = v182;

                [v186 processMessageForSending:v184 toChat:v179 style:v180 allowWatchdog:0 completionBlock:v183];
                outlined consume of Data._Representation(v206, v178);
                _Block_release(v183);

LABEL_75:
                outlined destroy of TaskPriority?(v199, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                return;
              }

LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        else
        {

          outlined destroy of AnyHashable(aBlock);
        }

        v115 = v211;
        v116 = Logger.liteSession.unsafeMutableAddressor();
        v117 = v212;
        (*(v115 + 16))(v101, v116, v212);
        v91 = v96;
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v118, v119))
        {
          outlined consume of Data._Representation(v94, v95);

          (*(v115 + 8))(v101, v117);
          goto LABEL_46;
        }

        v120 = v94;
        v208 = v95;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        aBlock[0] = v122;
        *v121 = 136315138;
        v123 = [v91 guid];

        if (v123)
        {
          v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, aBlock);

          *(v121 + 4) = v127;
          _os_log_impl(&dword_0, v118, v119, "[Push Handler] Missing handle for continuity message %s.", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v122);

          outlined consume of Data._Representation(v120, v208);
          (*(v115 + 8))(v204, v212);
          v98 = v199;
LABEL_46:
          outlined destroy of TaskPriority?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_82;
    }

    v128 = aBlock[0];
    v129 = v206;
    outlined consume of Data._Representation(v206, v49);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v129, v49);
    (*(v208 + 8))(v32, v29);
    outlined destroy of TaskPriority?(v199, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v130 = Logger.liteSession.unsafeMutableAddressor();
    v131 = v211;
    v132 = v212;
    (*(v211 + 16))(v28, v130, v212);
    swift_errorRetain();
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v135 = 138412290;
      swift_errorRetain();
      v137 = _swift_stdlib_bridgeErrorToNSError();
      *(v135 + 4) = v137;
      *v136 = v137;
      _os_log_impl(&dword_0, v133, v134, "Failed to handle iMessage Lite continuity message: %@", v135, 0xCu);
      outlined destroy of TaskPriority?(v136, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    (*(v131 + 8))(v28, v132);
  }

  else
  {
    v77 = v214;
    v78 = Logger.liteSession.unsafeMutableAddressor();
    v79 = v211;
    v80 = v212;
    (*(v211 + 16))(v18, v78, v212);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "[Push Handler] Missing from identifier.", v83, 2u);

      outlined consume of Data._Representation(v77, v49);
    }

    else
    {
      outlined consume of Data._Representation(v77, v49);
    }

    (*(v79 + 8))(v18, v80);
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.PendingSMSMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.PendingSMSMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in LiteMessageServiceSession.deleteAllData()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return @objc closure #1 in LiteMessageServiceSession.deleteAllData()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t sub_1BBA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BDA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined consume of LiteMessageSendError?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return outlined consume of LiteMessageSendError(result, a2, a3, BYTE1(a3));
  }

  return result;
}

uint64_t outlined consume of LiteMessageSendError(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

void type metadata accessor for IDSCommandID(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t one-time initialization function for liteSession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteSession);
  __swift_project_value_buffer(v0, static Logger.liteSession);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteRelaySession()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteRelaySession);
  __swift_project_value_buffer(v0, static Logger.liteRelaySession);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteContinuity()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteContinuity);
  __swift_project_value_buffer(v0, static Logger.liteContinuity);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for donations()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.donations);
  __swift_project_value_buffer(v0, static Logger.donations);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for availability()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.availability);
  __swift_project_value_buffer(v0, static Logger.availability);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for liteSegmentStore()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.liteSegmentStore);
  __swift_project_value_buffer(v0, static Logger.liteSegmentStore);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for bitPacker()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.bitPacker);
  __swift_project_value_buffer(v0, static Logger.bitPacker);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.liteSession.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.liteSession.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 232) = a5;
  *(v6 + 240) = v5;
  *(v6 + 472) = a4;
  *(v6 + 216) = a2;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 256) = v8;
  v9 = *(v8 - 8);
  *(v6 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 312) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 320) = v12;
  *(v6 + 328) = v11;

  return _swift_task_switch(LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:), v12, v11);
}

uint64_t LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)()
{
  v168 = v0;
  v1 = *(v0 + 208);
  if (*(v0 + 232) != 140)
  {
    v2 = v1;
    *(v0 + 336) = v1;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_21:
    v38 = *(v0 + 312);
    v40 = *(v0 + 264);
    v39 = *(v0 + 272);
    v41 = *(v0 + 256);

    v42 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v40 + 16))(v39, v42, v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Impossible! Failed to copy item to send", v45, 2u);
    }

    v47 = *(v0 + 264);
    v46 = *(v0 + 272);
    v48 = *(v0 + 256);

    (*(v47 + 8))(v46, v48);
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v49 = xmmword_53800;
    *(v49 + 16) = 768;
    swift_willThrow();
    goto LABEL_32;
  }

  if ([v1 copyWithFlags:{objc_msgSend(*(v0 + 208), "flags")}])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v3 = v167;
  *(v0 + 144) = v166;
  *(v0 + 160) = v3;
  if (!*(v0 + 168))
  {
    outlined destroy of TaskPriority?(v0 + 144, &_sypSgMd, &_sypSgMR);
    *(v0 + 336) = 0;
    goto LABEL_21;
  }

  type metadata accessor for IMMessageItem();
  v4 = swift_dynamicCast();
  v5 = *(v0 + 200);
  if (v4)
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 336) = v1;
  if (!v1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = v1;
  v9 = LiteMessageServiceSession.accountForSending(on:command:)(1, v7);
  *(v0 + 344) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 240);
    v12 = LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(*(v0 + 216), *(v0 + 224), *(v0 + 472), v9);
    *(v0 + 352) = v12;
    if (v12)
    {
      v13 = v12;
      if ([v12 style] == 45)
      {
        IMMessageItem.canSendAsLiteMessage.getter();
        if (v14)
        {
          v15 = IMDChat.participantURI.getter();
          *(v0 + 360) = v15;
          if (v15)
          {
            v16 = v15;
            v17 = *(v0 + 240);
            v18 = LiteMessageServiceSession.senderURI(for:)();
            *(v0 + 368) = v18;
            if (v18)
            {
              v19 = v18;
              v20 = *(v0 + 304);
              v21 = *(v0 + 256);
              v22 = *(v0 + 264);
              v23 = Logger.liteRelaySession.unsafeMutableAddressor();
              *(v0 + 376) = v23;
              v24 = *(v22 + 16);
              *(v0 + 384) = v24;
              *(v0 + 392) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v158 = v23;
              v156 = v24;
              (v24)(v20);
              v25 = v16;
              v26 = Logger.logObject.getter();
              LOBYTE(v21) = static os_log_type_t.info.getter();

              v154 = v21;
              v27 = os_log_type_enabled(v26, v21);
              v28 = *(v0 + 304);
              v29 = *(v0 + 264);
              v160 = *(v0 + 256);
              v162 = v25;
              v150 = v16;
              if (v27)
              {
                v147 = *(v0 + 304);
                v30 = swift_slowAlloc();
                v145 = swift_slowAlloc();
                *&v166 = v145;
                *v30 = 136315138;
                log = v26;
                v31 = v19;
                v32 = [v25 unprefixedURI];
                v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v35 = v34;

                v19 = v31;
                v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v166);

                *(v30 + 4) = v36;
                _os_log_impl(&dword_0, log, v154, "recipient: %s", v30, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v145);

                v37 = *(v29 + 8);
                v37(v147, v160);
              }

              else
              {

                v37 = *(v29 + 8);
                v37(v28, v160);
              }

              v161 = v37;
              *(v0 + 400) = v37;
              v70 = [v13 chatIdentifier];
              if (!v70)
              {
                __break(1u);
                goto LABEL_59;
              }

              v71 = v70;
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;

              v75 = IMMessageItem.smsLiteRelayData(chatIdentifier:)(v72, v74);
              *(v0 + 408) = v75;
              *(v0 + 416) = v76;
              v77 = v76;
              v148 = v75;
              v155 = v19;

              v78 = [v162 unprefixedURI];
              v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v81 = v80;

              v82 = [v13 chatIdentifier];
              if (v82)
              {
                v83 = v82;
                v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                if (v79 == v84 && v81 == v86)
                {

                  goto LABEL_50;
                }

                v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v87)
                {
LABEL_50:
                  v106.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  *&v166 = 0;
                  *(&v166 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(18);

                  *&v166 = 0x6C65722D6574696CLL;
                  *(&v166 + 1) = 0xEB000000002D7961;
                  v70 = [v8 guid];
                  if (v70)
                  {
                    v107 = v70;
                    v108 = *(v0 + 288);
                    v109 = *(v0 + 256);
                    v164 = *(v0 + 224);
                    v152 = *(v0 + 208);
                    v110 = objc_opt_self();
                    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v113 = v112;

                    v114._countAndFlagsBits = v111;
                    v114._object = v113;
                    String.append(_:)(v114);

                    v115._countAndFlagsBits = 0x617461642ELL;
                    v115._object = 0xE500000000000000;
                    String.append(_:)(v115);
                    v116 = String._bridgeToObjectiveC()();

                    [v110 writeDataPayloadToDisk:v106.super.isa fileName:v116];

                    v117 = objc_allocWithZone(IDSOffGridMessage);
                    outlined copy of Data._Representation(v148, v77);
                    v118 = v155;
                    isa = Data._bridgeToObjectiveC()().super.isa;
                    v120 = [v117 initWithMessage:isa senderURI:v118 recipientURI:v118];
                    *(v0 + 424) = v120;

                    outlined consume of Data._Representation(v148, v77);
                    v156(v108, v158, v109);
                    v121 = v118;
                    v122 = v152;

                    v123 = Logger.logObject.getter();
                    v124 = static os_log_type_t.default.getter();
                    if (!os_log_type_enabled(v123, v124))
                    {
                      v136 = *(v0 + 288);
                      v137 = *(v0 + 256);
                      v138 = *(v0 + 264);
                      v139 = *(v0 + 224);

                      v161(v136, v137);
LABEL_55:
                      v140 = *(v0 + 240);
                      v141 = LiteMessageServiceSession.offGridRelayMessenger.getter();
                      *(v0 + 432) = v141;
                      *(v0 + 16) = v0;
                      *(v0 + 56) = v0 + 176;
                      *(v0 + 24) = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
                      v142 = swift_continuation_init();
                      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMd, &_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMR);
                      *(v0 + 80) = _NSConcreteStackBlock;
                      *(v0 + 88) = 1107296256;
                      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
                      *(v0 + 104) = &block_descriptor_2;
                      *(v0 + 112) = v142;
                      [v141 encryptOffGridMessage:v120 completion:v0 + 80];
                      v70 = (v0 + 16);

                      return _swift_continuation_await(v70);
                    }

                    v165 = v120;
                    v125 = *(v0 + 224);
                    v126 = *(v0 + 208);
                    v127 = swift_slowAlloc();
                    v159 = swift_slowAlloc();
                    *&v166 = swift_slowAlloc();
                    *v127 = 136315650;
                    v128 = [v126 guid];

                    if (v128)
                    {
                      v157 = *(v0 + 288);
                      v149 = *(v0 + 264);
                      v153 = *(v0 + 256);
                      v130 = *(v0 + 216);
                      v129 = *(v0 + 224);
                      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v133 = v132;

                      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v166);

                      *(v127 + 4) = v134;
                      *(v127 + 12) = 2112;
                      *(v127 + 14) = v121;
                      *v159 = v155;
                      *(v127 + 22) = 2080;
                      v135 = v121;
                      *(v127 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v129, &v166);
                      _os_log_impl(&dword_0, v123, v124, "Encrypting relay message %s (senderURI: %@, chatIdentifier: %s", v127, 0x20u);
                      outlined destroy of TaskPriority?(v159, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                      swift_arrayDestroy();

                      v161(v157, v153);
                      v120 = v165;
                      goto LABEL_55;
                    }

                    goto LABEL_60;
                  }

LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }
              }

              else
              {
              }

              v156(*(v0 + 296), v158, *(v0 + 256));
              v88 = v162;
              v89 = v13;
              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                v163 = swift_slowAlloc();
                *&v166 = v163;
                *v92 = 138412546;
                *(v92 + 4) = v88;
                v146 = v93;
                *v93 = v150;
                *(v92 + 12) = 2080;
                v94 = v88;
                v95 = [v89 chatIdentifier];

                if (!v95)
                {
LABEL_61:
                  __break(1u);
                  return _swift_continuation_await(v70);
                }

                v151 = *(v0 + 296);
                v96 = *(v0 + 264);
                loga = *(v0 + 256);
                v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v99 = v98;

                v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v166);

                *(v92 + 14) = v100;
                _os_log_impl(&dword_0, v90, v91, "recipientURI %@ does not match chatIdentifier %s", v92, 0x16u);
                outlined destroy of TaskPriority?(v146, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                __swift_destroy_boxed_opaque_existential_0(v163);

                v101 = v151;
                v102 = loga;
              }

              else
              {
                v103 = *(v0 + 296);
                v104 = *(v0 + 256);
                v105 = *(v0 + 264);

                v101 = v103;
                v102 = v104;
              }

              v161(v101, v102);
              goto LABEL_50;
            }

            v68 = *(v0 + 312);

            lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
            swift_allocError();
            *v69 = xmmword_537F0;
            *(v69 + 16) = 768;
            swift_willThrow();

            goto LABEL_30;
          }

          v67 = *(v0 + 312);

          lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
          swift_allocError();
          *v56 = 0;
          *(v56 + 8) = 0;
LABEL_29:
          *(v56 + 16) = 768;
          swift_willThrow();
LABEL_30:

          goto LABEL_31;
        }

        v58 = *(v0 + 312);

        lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
        swift_allocError();
        v57 = xmmword_537E0;
      }

      else
      {
        v55 = *(v0 + 312);

        lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
        swift_allocError();
        v57 = xmmword_537D0;
      }

      *v56 = v57;
      goto LABEL_29;
    }
  }

  v50 = *(v0 + 312);
  v51 = *(v0 + 472);
  v53 = *(v0 + 216);
  v52 = *(v0 + 224);

  lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
  swift_allocError();
  *v54 = v53;
  *(v54 + 8) = v52;
  *(v54 + 16) = v51;
  *(v54 + 17) = 0;
  swift_willThrow();

LABEL_31:

LABEL_32:
  v60 = *(v0 + 296);
  v59 = *(v0 + 304);
  v62 = *(v0 + 280);
  v61 = *(v0 + 288);
  v63 = *(v0 + 272);
  v64 = *(v0 + 248);

  v65 = *(v0 + 8);

  return v65();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 440) = v3;
  if (v3)
  {
    v4 = v1[42];

    v5 = v1[40];
    v6 = v1[41];
    v7 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  else
  {
    v5 = v1[40];
    v6 = v1[41];
    v7 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  return _swift_task_switch(v7, v5, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v8 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    v5 = *(v2 + 328);
    v6 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  else
  {

    v4 = *(v2 + 320);
    v5 = *(v2 + 328);
    v6 = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v13 = *(v0 + 296);
  v14 = *(v0 + 288);
  v15 = *(v0 + 280);
  v16 = *(v0 + 272);
  v17 = *(v0 + 248);

  outlined consume of Data._Representation(v3, v1);

  v10 = *(v0 + 8);
  v11 = *(v0 + 336);

  return v10(v11);
}

{
  v1 = v0[55];
  v20 = v0[54];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v10 = v0[39];

  swift_willThrow();

  outlined consume of Data._Representation(v4, v2);
  v11 = v0[55];
  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[34];
  v17 = v0[31];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v10 = v0[39];

  outlined consume of Data._Representation(v4, v2);
  v11 = v0[58];
  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[34];
  v17 = v0[31];

  v18 = v0[1];

  return v18();
}

void LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)()
{
  v85 = v0;
  v1 = v0[54];
  v2 = v0[31];
  v4 = v0[22];
  v3 = v0[23];
  v0[56] = v4;
  v5 = v0[24];

  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v8 = v0[52];
    v9 = v0[53];
    v10 = v0[51];
    v11 = v0[46];
    v77 = v0[45];
    v79 = v0[44];
    v81 = v0[43];
    v12 = v0[42];
    v13 = v0[39];
    v14 = v0[31];

    outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = 256;
    swift_willThrow();

    outlined consume of Data._Representation(v10, v8);
    v17 = v0[37];
    v16 = v0[38];
    v19 = v0[35];
    v18 = v0[36];
    v20 = v0[34];
    v21 = v0[31];

    v22 = v0[1];

    v22();
  }

  else
  {
    v23 = v0[48];
    v24 = v0[49];
    v25 = v0[47];
    v80 = v4;
    v82 = v0[42];
    v26 = v0[35];
    v28 = v0[31];
    v27 = v0[32];

    v78 = UUID.uuidString.getter();
    v30 = v29;
    (*(v7 + 8))(v28, v6);
    v31 = v27;
    v32 = v30;
    v23(v26, v25, v31);
    v33 = v82;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v0[42];
      v37 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v37 = 136315394;
      v38 = [v36 guid];
      v39 = v32;
      v40 = v38;
      v41 = v39;

      if (!v40)
      {
        __break(1u);
        return;
      }

      v83 = v0[50];
      v74 = v0[33];
      v75 = v0[32];
      v76 = v0[35];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v84);

      *(v37 + 4) = v45;
      *(v37 + 12) = 2080;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v41, v84);
      _os_log_impl(&dword_0, v34, v35, "Reassigning %s to %s", v37, 0x16u);
      swift_arrayDestroy();

      v83(v76, v75);
      v46 = v80;
    }

    else
    {
      v47 = v0[50];
      v48 = v0[42];
      v49 = v0[35];
      v50 = v0[32];
      v51 = v0[33];

      v47(v49, v50);
      v46 = v80;
    }

    v52 = v0[46];
    v53 = v0[42];
    specialized LiteMessageServiceSession.removePreviousServiceOriginal(of:)(v53);
    v54 = [v53 guid];
    [v53 setFallbackHash:v54];

    v55 = String._bridgeToObjectiveC()();

    [v53 setGuid:v55];

    v56 = [v52 unprefixedURI];
    if (!v56)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = String._bridgeToObjectiveC()();
    }

    v57 = v0[46];
    v58 = v0[44];
    v59 = v0[42];
    v60 = v0[29];
    v61 = v0[30];
    [v59 setDestinationCallerID:v56];

    [v59 setErrorCode:0];
    [v59 setIsPendingSatelliteSend:0];
    v62 = [v57 unprefixedURI];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v66);

    LiteMessageServiceSession.transportType.getter();
    v67 = LiteOutgoingMessageContext.topic.getter(1);
    v69 = v68;
    v71 = v70;
    v72 = swift_task_alloc();
    v0[57] = v72;
    *v72 = v0;
    v72[1] = LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:);
    v73 = v0[30];

    LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)(v46, v58, v59, v67 & 1, v69, v71);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v12[2] = v13;
      v14 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

void LiteMessageServiceSession.didReceiveRelayMessageDeliveryReceipt(messageID:date:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = String._bridgeToObjectiveC()();
  v34 = [v13 messageWithGUID:v14];

  if (v34)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [v2 chatForItemWithGUID:v15];

    if (v16)
    {
      v17 = [v16 style];
      v18 = [v16 chatIdentifier];
      if (v18)
      {
        v19 = v18;
        [v2 didSendMessage:v34 forChat:v18 style:v17];

        if ([v34 errorCode])
        {
LABEL_7:

          v23 = v34;

          return;
        }

        v34 = v34;
        v20 = [v34 guid];
        if (v20)
        {
          v21 = v20;

          v22 = [v2 account];
          [v2 notifyDidSendMessageID:v21 account:v22 shouldNotify:1];

          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v29 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v6 + 16))(v12, v29, v5);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
      _os_log_impl(&dword_0, v30, v31, "Could not find chat for messageID %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    else
    {
    }

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v24 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v6 + 16))(v10, v24, v5);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
      _os_log_impl(&dword_0, v25, v26, "Could not find message for messageID %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    (*(v6 + 8))(v10, v5);
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError()
{
  result = lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError;
  if (!lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSendError and conformance LiteMessageSendError);
  }

  return result;
}

void specialized LiteMessageServiceSession.removePreviousServiceOriginal(of:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v64 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v64 - v12;
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  v16 = [a1 guid];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v64 = objc_opt_self();
  v20 = [v64 sharedInstance];
  v21 = [v20 itemWithGUID:v17];

  if (v21)
  {
    v65 = v21;
    v22 = [v21 service];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v26)
      {
        if (v24 == v27 && v26 == v28)
        {

          v29 = v2;
          goto LABEL_20;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = v2;
        if (v45)
        {
LABEL_20:
          v46 = v65;
          v47 = [v65 isFromMe];
          v48 = Logger.liteRelaySession.unsafeMutableAddressor();
          v49 = *(v3 + 16);
          v50 = v66;
          if (v47)
          {
            v49(v15, v48, v29);

            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v67 = v54;
              *v53 = 136315138;
              *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v19, &v67);
              _os_log_impl(&dword_0, v51, v52, "Removing previous service record for %s", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v54);
              v50 = v66;

              v46 = v65;
            }

            (*(v3 + 8))(v15, v29);
            v55 = [v64 sharedInstance];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_53390;
            *(v56 + 56) = &type metadata for String;
            *(v56 + 32) = v50;
            *(v56 + 40) = v19;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v58 = [v55 deleteMessageGUIDs:isa];
          }

          else
          {
            v49(v13, v48, v29);

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v67 = v62;
              *v61 = 136315138;
              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v19, &v67);

              *(v61 + 4) = v63;
              _os_log_impl(&dword_0, v59, v60, "Existing item for %s is not from me", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v62);
            }

            else
            {
            }

            (*(v3 + 8))(v13, v29);
          }

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = v2;

LABEL_12:
    v37 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v3 + 16))(v10, v37, v29);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v66;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67 = v43;
      *v42 = 136315138;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v19, &v67);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_0, v38, v39, "Existing item for %s is not SatelliteSMS service", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    else
    {
    }

    (*(v3 + 8))(v10, v29);
    return;
  }

  v30 = Logger.liteRelaySession.unsafeMutableAddressor();
  v31 = v2;
  (*(v3 + 16))(v7, v30, v2);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v67 = v35;
    *v34 = 136315138;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v19, &v67);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_0, v32, v33, "No existing item found for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
  }

  (*(v3 + 8))(v7, v31);
}

unint64_t type metadata accessor for IMMessageItem()
{
  result = lazy cache variable for type metadata for IMMessageItem;
  if (!lazy cache variable for type metadata for IMMessageItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMMessageItem);
  }

  return result;
}

uint64_t one-time initialization function for lastFetchDate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_allocate_value_buffer(v0, lastFetchDate);
  v1 = __swift_project_value_buffer(v0, lastFetchDate);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

Swift::Void __swiftcall LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(Swift::OpaquePointer fromHandlesIDs)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = [objc_opt_self() sharedInstanceForBagType:1];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (!*(&v28 + 1))
  {
    outlined destroy of TaskPriority?(v29, &_sypSgMd, &_sypSgMR);
LABEL_11:
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    type metadata accessor for MainActor();
    v22 = v1;

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2]._rawValue = v23;
    v24[3]._rawValue = &protocol witness table for MainActor;
    v24[4]._rawValue = v22;
    v24[5]._rawValue = fromHandlesIDs._rawValue;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:), v24);

    return;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v26;
  v16 = [v26 BOOLValue];

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v7, v17, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Satellite fetch disabled by server bag", v20, 2u);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v6 = type metadata accessor for Logger();
  v5[52] = v6;
  v7 = *(v6 - 8);
  v5[53] = v7;
  v8 = *(v7 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[63] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v5[66] = v11;
  v12 = *(v11 - 8);
  v5[67] = v12;
  v13 = *(v12 + 64) + 15;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[71] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[72] = v15;
  v5[73] = v14;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:), v15, v14);
}

uint64_t closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)()
{
  v162 = v0;
  v1 = v0[50];
  if ((LiteMessageServiceSession.isSatelliteConnectionActive.getter() & 1) == 0)
  {
    v15 = v0[71];
    v16 = v0[56];
    v17 = v0[52];
    v18 = v0[53];

    v19 = Logger.liteSession.unsafeMutableAddressor();
    (*(v18 + 16))(v16, v19, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[56];
    v24 = v0[52];
    v25 = v0[53];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Skipping satellite pending message fetch, not connected to satellite";
LABEL_72:
      _os_log_impl(&dword_0, v20, v21, v27, v26, 2u);
    }

LABEL_73:

    (*(v25 + 8))(v23, v24);
    goto LABEL_74;
  }

  v2 = 0;
  v3 = &_swiftEmptyArrayStorage;
  v4 = v0[51];
  v5 = *(v4 + 16);
  v6 = v4 + 40;
  v157 = v6;
  v161 = &_swiftEmptyArrayStorage;
LABEL_3:
  v7 = (v6 + 16 * v2);
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_63;
    }

    v9 = v0[50];
    v11 = *(v7 - 1);
    v10 = *v7;

    v12 = String._bridgeToObjectiveC()();
    v13 = [v9 chatForChatIdentifier:v12 style:45 updatingAccount:0];

    v7 += 2;
    ++v2;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v161 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v14 = *(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v157;
      v3 = v161;
      v2 = v8;
      goto LABEL_3;
    }
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v28 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_15;
  }

LABEL_68:
  v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:
  v29 = 0;
  v30 = 0;
  while (v28 != v29)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v5 + 16))
      {
        goto LABEL_65;
      }

      v31 = *(v3 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_64;
    }

    v33 = [v31 pendingIncomingSatelliteMessageCount];

    ++v29;
    v34 = __OFADD__(v30, v33);
    v30 += v33;
    if (v34)
    {
      goto LABEL_66;
    }
  }

  if (v30 < 1)
  {
    v55 = v0[71];
    v56 = v0[57];
    v57 = v0[52];
    v58 = v0[53];

    v59 = Logger.liteSession.unsafeMutableAddressor();
    (*(v58 + 16))(v56, v59, v57);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v60 = os_log_type_enabled(v20, v21);
    v23 = v0[57];
    v24 = v0[52];
    v25 = v0[53];
    if (v60)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No incoming pending satellite messages, no reason to fetch";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  v35 = v0[51];

  v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v36);

  v38 = *(v37 + 56);
  v3 = &_swiftEmptyArrayStorage;
  v161 = &_swiftEmptyArrayStorage;
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v5 = v39 & v38;
  v41 = (63 - v40) >> 6;

  v42 = 0;
LABEL_29:
  v158 = v3;
  v0[74] = v3;
  while (v5)
  {
LABEL_30:
    v43 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v44 = (*(v37 + 48) + ((v42 << 10) | (16 * v43)));
    v45 = *v44;
    v46 = v44[1];
    v47 = objc_allocWithZone(IDSURI);

    v3 = String._bridgeToObjectiveC()();

    v48 = [v47 initWithUnprefixedURI:v3];

    if (v48)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v161 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v50 = *(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v161;
      goto LABEL_29;
    }
  }

  while (1)
  {
    v49 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_67;
    }

    if (v49 >= v41)
    {
      break;
    }

    v5 = *(v37 + 56 + 8 * v49);
    ++v42;
    if (v5)
    {
      v42 = v49;
      goto LABEL_30;
    }
  }

  if (v158 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_41;
    }

LABEL_70:
    v130 = v0[71];
    v131 = v0[58];
    v133 = v0[52];
    v132 = v0[53];

    v134 = Logger.liteSession.unsafeMutableAddressor();
    (*(v132 + 16))(v131, v134, v133);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v135 = os_log_type_enabled(v20, v21);
    v23 = v0[58];
    v24 = v0[52];
    v25 = v0[53];
    if (!v135)
    {
      goto LABEL_73;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "No handles to fetch pending messages for";
    goto LABEL_72;
  }

  if (!*(&dword_10 + (v158 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_70;
  }

LABEL_41:
  if (one-time initialization token for lastFetchDate != -1)
  {
    swift_once();
  }

  v51 = v0[67];
  v52 = v0[66];
  v53 = v0[65];
  v54 = __swift_project_value_buffer(v0[63], lastFetchDate);
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v54, v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
    outlined destroy of TaskPriority?(v0[65], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v61 = v0[69];
    v62 = v0[67];
    v63 = v0[66];
    (*(v62 + 32))(v0[70], v0[65], v63);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v65 = v64;
    v66 = *(v62 + 8);
    v66(v61, v63);
    if (v65 < 1.0)
    {
      v67 = v0[71];
      v68 = v0[70];
      v69 = v0[68];
      v70 = v0[67];
      v71 = v0[66];
      v72 = v0[62];
      v73 = v0[52];
      v74 = v0[53];

      v75 = Logger.liteSession.unsafeMutableAddressor();
      (*(v74 + 16))(v72, v75, v73);
      (*(v70 + 16))(v69, v68, v71);
      v76 = Logger.logObject.getter();
      v159 = static os_log_type_t.info.getter();
      v77 = os_log_type_enabled(v76, v159);
      v78 = v0[70];
      v79 = v0[68];
      v80 = v0[66];
      v81 = v0[62];
      v83 = v0[52];
      v82 = v0[53];
      if (v77)
      {
        v155 = v0[52];
        v84 = swift_slowAlloc();
        v152 = v81;
        v85 = swift_slowAlloc();
        v161 = v85;
        *v84 = 136315394;
        lazy protocol witness table accessor for type Date and conformance Date();
        v148 = v80;
        v149 = v78;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v80;
        v89 = v88;
        v66(v79, v87);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v89, &v161);

        *(v84 + 4) = v90;
        *(v84 + 12) = 2048;
        *(v84 + 14) = 0x3FF0000000000000;
        _os_log_impl(&dword_0, v76, v159, "Not fetching, last fetch performed at %s which is less than %f seconds ago", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);

        (*(v82 + 8))(v152, v155);
        v66(v149, v148);
      }

      else
      {

        v66(v79, v80);
        (*(v82 + 8))(v81, v83);
        v66(v78, v80);
      }

      goto LABEL_74;
    }

    v66(v0[70], v0[66]);
  }

  v91 = v0[67];
  v92 = v0[66];
  v93 = v0[64];
  v94 = v0[61];
  v95 = v0[52];
  v96 = v0[53];
  static Date.now.getter();
  (*(v91 + 56))(v93, 0, 1, v92);
  swift_beginAccess();
  outlined assign with take of Date?(v93, v54);
  swift_endAccess();
  v97 = Logger.liteSession.unsafeMutableAddressor();
  v0[75] = v97;
  v98 = *(v96 + 16);
  v0[76] = v98;
  v0[77] = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v98(v94, v97, v95);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.info.getter();

  v101 = os_log_type_enabled(v99, v100);
  v102 = v0[61];
  v104 = v0[52];
  v103 = v0[53];
  if (v101)
  {
    v153 = v0[52];
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v161 = v106;
    *v105 = 136315138;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    v107 = Array.description.getter();
    v150 = v102;
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v161);

    *(v105 + 4) = v109;
    _os_log_impl(&dword_0, v99, v100, "Fetching pending messages for handles: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);

    v110 = *(v103 + 8);
    v110(v150, v153);
  }

  else
  {

    v110 = *(v103 + 8);
    v110(v102, v104);
  }

  v0[78] = v110;
  v111 = v0[50];
  v112 = LiteMessageServiceSession.offGridMessenger.getter();
  v0[79] = "sendFetchRequestForHandles:completions:";
  v113 = [v112 respondsToSelector:?];

  if (v113)
  {
    v114 = v0[50];
    v115 = LiteMessageServiceSession.offGridMessenger.getter();
    v0[80] = v115;

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v116);

    v0[81] = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    v0[82] = lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v0[83] = isa;

    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v118 = swift_continuation_init();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySo6IDSURICGs5Error_pGMd, &_sSccyShySo6IDSURICGs5Error_pGMR);
    v0[84] = v119;
    v0[25] = v119;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    v0[21] = &block_descriptor_3;
    v0[22] = v118;
    [v115 sendFetchRequestForHandles:isa completions:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  v120 = v0[71];
  v121 = v0[59];
  v122 = v0[52];

  v98(v121, v97, v122);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v0[59];
  v127 = v0[52];
  v128 = v0[53];
  if (v125)
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_0, v123, v124, "Not sending fetch request, not supported by installed version of IDS client", v129, 2u);
  }

  v110(v126, v127);
LABEL_74:
  v136 = v0[70];
  v137 = v0[69];
  v138 = v0[68];
  v139 = v0[65];
  v140 = v0[64];
  v142 = v0[61];
  v141 = v0[62];
  v144 = v0[59];
  v143 = v0[60];
  v145 = v0[58];
  v151 = v0[57];
  v154 = v0[56];
  v156 = v0[55];
  v160 = v0[54];

  v146 = v0[1];

  return v146();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 680) = v3;
  v4 = *(v1 + 584);
  v5 = *(v1 + 576);
  if (v3)
  {
    v6 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  else
  {
    v6 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[46];

  v4 = v0[79];
  v5 = v0[50];
  v6 = LiteMessageServiceSession.offGridRelayMessenger.getter();
  LODWORD(v4) = [v6 respondsToSelector:v4];

  if (v4)
  {
    v7 = v0[84];
    v8 = v0[82];
    v9 = v0[81];
    v10 = v0[74];
    v11 = v0[50];
    v12 = LiteMessageServiceSession.offGridRelayMessenger.getter();
    v0[86] = v12;
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v10);

    isa = Set._bridgeToObjectiveC()().super.isa;
    v0[87] = isa;

    v0[10] = v0;
    v0[15] = v0 + 47;
    v0[11] = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v14 = swift_continuation_init();
    v0[33] = v7;
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    v0[29] = &block_descriptor_14_0;
    v0[30] = v14;
    [v12 sendFetchRequestForHandles:isa completions:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }

  else
  {
    v15 = v0[77];
    v16 = v0[76];
    v17 = v0[75];
    v18 = v0[74];
    v19 = v0[71];
    v20 = v0[60];
    v21 = v0[52];

    v16(v20, v17, v21);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[78];
    v26 = v0[60];
    v27 = v0[52];
    v28 = v0[53];
    if (v24)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v22, v23, "Not sending fetch request for relay, not supported by installed version of IDS client", v29, 2u);
    }

    v25(v26, v27);
    v30 = v0[70];
    v31 = v0[69];
    v32 = v0[68];
    v33 = v0[65];
    v34 = v0[64];
    v36 = v0[61];
    v35 = v0[62];
    v38 = v0[59];
    v37 = v0[60];
    v39 = v0[58];
    v42 = v0[57];
    v43 = v0[56];
    v44 = v0[55];
    v45 = v0[54];

    v40 = v0[1];

    return v40();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 704) = v3;
  v4 = *(v1 + 584);
  v5 = *(v1 + 576);
  if (v3)
  {
    v6 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  else
  {
    v6 = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[71];

  v4 = v0[47];

  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[61];
  v10 = v0[62];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[58];
  v17 = v0[57];
  v18 = v0[56];
  v19 = v0[55];
  v20 = v0[54];

  v15 = v0[1];

  return v15();
}

{
  v72 = v0;
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[55];
  v8 = v0[52];
  swift_willThrow();

  v5(v7, v6, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[85];
    v67 = v0[55];
    v69 = v0[78];
    v13 = v0[52];
    v12 = v0[53];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v71 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = v0[43];
    v16 = v0[44];
    v18 = v0[45];
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v71);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Failed to send fetch request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    v69(v67, v13);
  }

  else
  {
    v22 = v0[85];
    v23 = v0[78];
    v24 = v0[55];
    v25 = v0[52];
    v26 = v0[53];

    v23(v24, v25);
  }

  v27 = v0[79];
  v28 = v0[50];
  v29 = LiteMessageServiceSession.offGridRelayMessenger.getter();
  LODWORD(v27) = [v29 respondsToSelector:v27];

  if (v27)
  {
    v30 = v0[84];
    v31 = v0[82];
    v32 = v0[81];
    v33 = v0[74];
    v34 = v0[50];
    v35 = LiteMessageServiceSession.offGridRelayMessenger.getter();
    v0[86] = v35;
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v33);

    isa = Set._bridgeToObjectiveC()().super.isa;
    v0[87] = isa;

    v0[10] = v0;
    v0[15] = v0 + 47;
    v0[11] = closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:);
    v37 = swift_continuation_init();
    v0[33] = v30;
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>;
    v0[29] = &block_descriptor_14_0;
    v0[30] = v37;
    [v35 sendFetchRequestForHandles:isa completions:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }

  else
  {
    v38 = v0[77];
    v39 = v0[76];
    v40 = v0[75];
    v41 = v0[74];
    v42 = v0[71];
    v43 = v0[60];
    v44 = v0[52];

    v39(v43, v40, v44);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[78];
    v49 = v0[60];
    v50 = v0[52];
    v51 = v0[53];
    if (v47)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v45, v46, "Not sending fetch request for relay, not supported by installed version of IDS client", v52, 2u);
    }

    v48(v49, v50);
    v53 = v0[70];
    v54 = v0[69];
    v55 = v0[68];
    v56 = v0[65];
    v57 = v0[64];
    v59 = v0[61];
    v58 = v0[62];
    v61 = v0[59];
    v60 = v0[60];
    v62 = v0[58];
    v65 = v0[57];
    v66 = v0[56];
    v68 = v0[55];
    v70 = v0[54];

    v63 = v0[1];

    return v63();
  }
}

{
  v47 = v0;
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v8 = v0[54];
  v9 = v0[52];

  swift_willThrow();

  v5(v8, v6, v9);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[88];
    v13 = v0[53];
    v42 = v0[54];
    v44 = v0[78];
    v14 = v0[52];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v18 = v0[40];
    v17 = v0[41];
    v19 = v0[42];
    v20 = Error.localizedDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v46);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v10, v11, "Failed to send fetch request: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    v44(v42, v14);
  }

  else
  {
    v23 = v0[88];
    v24 = v0[78];
    v26 = v0[53];
    v25 = v0[54];
    v27 = v0[52];

    v24(v25, v27);
  }

  v28 = v0[70];
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[65];
  v32 = v0[64];
  v34 = v0[61];
  v33 = v0[62];
  v36 = v0[59];
  v35 = v0[60];
  v37 = v0[58];
  v40 = v0[57];
  v41 = v0[56];
  v43 = v0[55];
  v45 = v0[54];

  v38 = v0[1];

  return v38();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet?, @unowned NSError?) -> () with result type Set<IDSURI>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_211DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.fetchIncomingPendingMessages(fromHandlesIDs:)(v4, v5, v6, v2, v3);
}

uint64_t sub_212BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

Swift::Int BitCollection.LiteRelayEncodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConsolidationIdentifierError()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t IDSOffGridEncryptedMessage.consolidationIdentifier.getter()
{
  v1 = v0;
  v2 = [v0 encryptionProperties];
  countAndFlagsBits = [v2 __im_encryptionKeyID];

  if (!countAndFlagsBits || (v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v6 = v5, countAndFlagsBits, countAndFlagsBits = specialized Collection.first.getter(v4, v6), outlined consume of Data._Representation(v4, v6), (countAndFlagsBits & 0x100) != 0))
  {
    lazy protocol witness table accessor for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v7 = [v1 encryptionProperties];
    v8 = [v7 ratchetCounter];

    v9 = [v8 integerValue];
    v20 = v9;
    v10 = specialized Data.InlineData.init(_:)(&v20, &v21);
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_53390;
    *(v13 + 32) = countAndFlagsBits;
    v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v13);
    v16 = v15;

    v21 = v14;
    v22 = v16;
    Data.append(_:)();
    v17 = v21;
    v18 = v22;
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    outlined consume of Data._Representation(v10, v12 & 0xFFFFFFFFFFFFFFLL);
    outlined consume of Data._Representation(v17, v18);
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError()
{
  result = lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError;
  if (!lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError;
  if (!lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConsolidationIdentifierError and conformance ConsolidationIdentifierError);
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

id IDSOffGridEncryptedMessage.segmentNumber.getter(SEL *a1)
{
  v3 = [v1 encryptionProperties];
  v4 = [v3 *a1];

  v5 = [v4 integerValue];
  return v5;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t getEnumTagSinglePayload for ConsolidationIdentifierError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ConsolidationIdentifierError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

Swift::Int LiteMessageServiceSession.LiteRelayError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageServiceSession.OutgoingSatelliteMessageError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageServiceSession.OutgoingSatelliteMessageError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

NSObject *LiteMessageServiceSession.satelliteContinuitySendOptions(for:chatIdentifier:)(NSObject *a1, uint64_t a2, NSObject *a3)
{
  v5 = v3;
  v157 = a1;
  v8 = type metadata accessor for Logger();
  v156 = *(v8 - 8);
  v9 = *(v156 + 64);
  v10 = __chkstk_darwin(v8);
  v155 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v154 = &v146 - v13;
  __chkstk_darwin(v12);
  v153 = &v146 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v146 - v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v5 chatForChatIdentifier:v22 style:45 updatingAccount:0];

  if (v23)
  {
    a3 = v23;
    v24 = IMDChat.participantURI.getter();
    if (v24)
    {
      v25 = v24;
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
      v162 = v26;
      v27 = v157;
      a3 = v157;
      v28 = IMMessageItem.liteData.getter();
      if (!v4)
      {
        v146 = 0;
        v151 = v23;
        v152 = v8;
        v32 = v28;
        v33 = v29;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        v161 = &type metadata for Data;
        *&v160 = v32;
        *(&v160 + 1) = v33;
        outlined init with take of Any(&v160, v159);
        v148 = v32;
        v149 = v33;
        outlined copy of Data._Representation(v32, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v158 = v26;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v34, v36, isUniquelyReferenced_nonNull_native);

        v38 = v158;
        v162 = v158;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        v150 = v25;
        v42 = [v25 unprefixedURI];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v161 = &type metadata for String;
        *&v160 = v43;
        *(&v160 + 1) = v45;
        outlined init with take of Any(&v160, v159);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v39, v41, v46);

        v47 = v158;
        v162 = v158;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = &type metadata for String;
        *&v160 = v51;
        *(&v160 + 1) = v52;
        outlined init with take of Any(&v160, v159);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v47;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v48, v50, v53);

        v54 = v158;
        v162 = v158;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
        v58 = [v27 guid];
        if (v58)
        {
          v59 = v58;
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          v161 = &type metadata for String;
          *&v160 = v60;
          *(&v160 + 1) = v62;
          v27 = v157;
          outlined init with take of Any(&v160, v159);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v54;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v55, v57, v63);

          v162 = v158;
        }

        else
        {
          specialized Dictionary._Variant.removeValue(forKey:)(v55, v57, &v160);

          outlined destroy of TaskPriority?(&v160, &_sypSgMd, &_sypSgMR);
        }

        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
        v66 = [v27 time];
        v67 = v151;
        if (v66)
        {
          v68 = v66;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = 0;
        }

        else
        {
          v69 = 1;
        }

        v70 = type metadata accessor for Date();
        v71 = *(v70 - 8);
        (*(v71 + 56))(v19, v69, 1, v70);
        outlined init with take of Date?(v19, v21);
        if ((*(v71 + 48))(v21, 1, v70) == 1)
        {
          outlined destroy of TaskPriority?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          specialized Dictionary._Variant.removeValue(forKey:)(v147, v65, &v160);

          outlined destroy of TaskPriority?(&v160, &_sypSgMd, &_sypSgMR);
        }

        else
        {
          v161 = v70;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v160);
          (*(v71 + 32))(boxed_opaque_existential_0, v21, v70);
          outlined init with take of Any(&v160, v159);
          v73 = v162;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v158 = v73;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v147, v65, v74);

          v162 = v158;
        }

        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;
        v78 = type metadata accessor for NSNumber();
        v79.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        v161 = v78;
        *&v160 = v79;
        outlined init with take of Any(&v160, v159);
        v80 = v162;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v80;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v75, v77, v81);

        v162 = v158;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;
        v85.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        v161 = v78;
        *&v160 = v85;
        outlined init with take of Any(&v160, v159);
        v86 = v162;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v86;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v82, v84, v87);

        v88 = v158;
        v162 = v158;
        v89 = v67;
        [v67 style];
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
        v93 = _IMDRelayChatStyleStringFromChatStyle();
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v161 = &type metadata for String;
        *&v160 = v94;
        *(&v160 + 1) = v96;
        outlined init with take of Any(&v160, v159);
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v88;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v90, v92, v97);

        specialized _dictionaryUpCast<A, B, C, D>(_:)(v158);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v99 = JWEncodeDictionary();

        if (v99)
        {
          v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          v103 = Data._bridgeToObjectiveC()().super.isa;
          v104 = [(objc_class *)v103 _FTCopyGzippedData];

          if (v104)
          {
            v155 = v100;
            v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v107 = v106;

            v108 = [v157 guid];
            v109 = IDSGetUUIDData();

            if (v109)
            {
              v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v111 = v107;
              v113 = v112;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
              v114 = swift_allocObject();
              v157 = v102;
              v115 = v114;
              *(v114 + 16) = xmmword_53960;
              *(v114 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[5].super.super.isa = v116;
              v117.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
              v115[9].super.super.isa = v78;
              v115[6].super.super.isa = v117.super.super.isa;
              v115[10].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[11].super.super.isa = v118;
              v119.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
              v115[15].super.super.isa = v78;
              v115[12].super.super.isa = v119.super.super.isa;
              v115[16].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[17].super.super.isa = v120;
              v121.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
              v115[21].super.super.isa = v78;
              v115[18].super.super.isa = v121.super.super.isa;
              v115[22].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[23].super.super.isa = v122;
              v115[27].super.super.isa = &type metadata for Data;
              v115[24].super.super.isa = v110;
              v115[25].super.super.isa = v113;
              v115[28].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[29].super.super.isa = v123;
              v115[33].super.super.isa = &type metadata for Int;
              v115[30].super.super.isa = (&stru_68 + 39);
              v115[34].super.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115[35].super.super.isa = v124;
              v115[36].super.super.isa = v105;
              v115[37].super.super.isa = v111;
              v115[39].super.super.isa = &type metadata for Data;
              v115[40].super.super.isa = 0xD00000000000001BLL;
              v115[41].super.super.isa = 0x80000000000562E0;
              outlined copy of Data._Representation(v110, v113);
              outlined copy of Data._Representation(v105, v111);
              v125.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
              v115[45].super.super.isa = v78;
              v115[42].super.super.isa = v125.super.super.isa;
              a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v115);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              outlined consume of Data._Representation(v148, v149);
              outlined consume of Data._Representation(v110, v113);
              outlined consume of Data._Representation(v105, v111);

              outlined consume of Data._Representation(v155, v157);
              return a3;
            }

            v139 = Logger.liteContinuity.unsafeMutableAddressor();
            v140 = v156;
            v141 = v153;
            (*(v156 + 16))(v153, v139, v152);
            a3 = Logger.logObject.getter();
            v142 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(a3, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 0;
              _os_log_impl(&dword_0, a3, v142, "Failed to convert UUID to Data. Not relaying.", v143, 2u);
            }

            (*(v140 + 8))(v141, v152);
            lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
            swift_allocError();
            *v144 = 3;
            swift_willThrow();

            outlined consume of Data._Representation(v105, v107);
            v138 = v155;
          }

          else
          {
            v132 = Logger.liteContinuity.unsafeMutableAddressor();
            v133 = v156;
            v134 = v154;
            (*(v156 + 16))(v154, v132, v152);
            a3 = Logger.logObject.getter();
            v135 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(a3, v135))
            {
              v136 = swift_slowAlloc();
              *v136 = 0;
              _os_log_impl(&dword_0, a3, v135, "Failed to compress off grid relay message. Not relaying.", v136, 2u);
            }

            (*(v133 + 8))(v134, v152);
            lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
            swift_allocError();
            *v137 = 2;
            swift_willThrow();

            v138 = v100;
          }

          outlined consume of Data._Representation(v138, v102);
        }

        else
        {
          v126 = Logger.liteContinuity.unsafeMutableAddressor();
          v128 = v155;
          v127 = v156;
          (*(v156 + 16))(v155, v126, v152);
          a3 = Logger.logObject.getter();
          v129 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(a3, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_0, a3, v129, "Failed to encode off grid relay message. Not relaying.", v130, 2u);
          }

          (*(v127 + 8))(v128, v152);
          lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError();
          swift_allocError();
          *v131 = 1;
          swift_willThrow();
        }

        outlined consume of Data._Representation(v148, v149);
        return a3;
      }
    }

    else
    {
      lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
      swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 768;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v30 = a2;
    *(v30 + 8) = a3;
    *(v30 + 16) = 45;
    swift_willThrow();
  }

  return a3;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.OutgoingSatelliteMessageError and conformance LiteMessageServiceSession.OutgoingSatelliteMessageError);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.OutgoingSatelliteMessageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.OutgoingSatelliteMessageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *IMDService.idsServiceNames.getter()
{
  v1 = [v0 serviceProperties];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v7);
  }

  return &_swiftEmptyArrayStorage;
}

void *IMDService.idsServiceName.getter()
{
  result = IMDService.idsServiceNames.getter();
  if (result[2])
  {
    v1 = result[4];
    v2 = result[5];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall IMDService.hasAlias(_:)(Swift::String a1)
{
  v16 = a1;
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 accountsForService:v1];

  if (!v4)
  {
LABEL_19:
    __break(1u);
    return v2;
  }

  type metadata accessor for IMDAccount();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = [v9 aliases];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v16;
    __chkstk_darwin(v13);
    v15[2] = &v17;
    LOBYTE(v11) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v15, v12);

    v7 = v8 + 1;
  }

  while ((v11 & 1) == 0);

  LOBYTE(v2) = v6 != v8;
  return v2;
}

unint64_t type metadata accessor for IMDAccount()
{
  result = lazy cache variable for type metadata for IMDAccount;
  if (!lazy cache variable for type metadata for IMDAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMDAccount);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.liteEscapedText.getter()
{

  v0 = &unk_664A8;
  v1 = 17;
  do
  {
    v3 = *(v0 - 1);
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_53390;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_53380;
    *(v5 + 32) = 1;
    *(v5 + 40) = 0xE100000000000000;
    *(v5 + 48) = v3;
    *(v5 + 56) = v2;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd, &_sSaySJGMR);
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type [Character] and conformance [A]();
    RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

    v0 += 2;
    --v1;
  }

  while (v1);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Character] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Character] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Character] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySJGMd, &_sSaySJGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Character] and conformance [A]);
  }

  return result;
}

void static NSAttributedString.makeMessageBody(for:)()
{
  v0 = objc_allocWithZone(IMToSuperParserContext);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithContent:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 appendString:v3];

    if ([v2 body])
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t LiteMessageServiceSession.logger(for:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = Logger.liteRelaySession.unsafeMutableAddressor();
  }

  else
  {
    v3 = Logger.liteSession.unsafeMutableAddressor();
  }

  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v4, v5);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v8;
  v3[11] = v7;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:), v8, v7);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v4 = Logger.liteSession.unsafeMutableAddressor();
  v5 = *(v1 + 16);
  v6 = v0[5];
  if (v3 <= 1)
  {
    v5(v0[8], v4, v6);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Message is a single segment, immediately decrypting", v20, 2u);
    }

    v21 = v0[8];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[3];

    (*(v23 + 8))(v21, v22);
    v25 = [v24 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v0[12] = v28;
    v29 = swift_task_alloc();
    v0[13] = v29;
    *v29 = v0;
    v29[1] = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
    v30 = v0[3];
    v31 = v0[4];
    v32 = v0[2];

    return LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(v32, v26, v28, v30);
  }

  else
  {
    v5(v0[7], v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Message is one of several segments", v9, 2u);
    }

    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];

    (*(v11 + 8))(v10, v12);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)(v16, v14);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  else
  {
    v7 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  else
  {
    v7 = LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v7 = *(*(type metadata accessor for LiteMessageContext() - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[34] = v8;
  v9 = *(v8 - 8);
  v5[35] = v9;
  v10 = *(v9 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[38] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[39] = v12;
  v5[40] = v11;

  return _swift_task_switch(LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:), v12, v11);
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = LiteMessageServiceSession.offGridMessenger(for:)();
  v0[41] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17IDSOffGridMessageC_SSts5Error_pGMd, &_sSccySo17IDSOffGridMessageC_SSts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
  v0[13] = &block_descriptor_4;
  v0[14] = v5;
  [v4 decryptOffGridMessage:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);
  if (v3)
  {
    v6 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v6 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v97 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[29];
  v7 = v0[18];
  v6 = v0[19];
  v0[43] = v7;
  v8 = v0[20];

  v9 = Logger.liteSession.unsafeMutableAddressor();
  v90 = *(v4 + 16);
  v92 = v9;
  v90(v2);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[37];
  v15 = v0[34];
  v14 = v0[35];
  v95 = v7;
  if (v12)
  {
    v84 = v0[29];
    v88 = v0[34];
    v16 = v6;
    v17 = v8;
    v18 = v0[28];
    v19 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = v18;
    v8 = v17;
    v6 = v16;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v84, v96);
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v8, v96);
    _os_log_impl(&dword_0, v10, v11, "Decrypted %s as %s", v19, 0x16u);
    swift_arrayDestroy();

    v7 = v95;

    v21 = *(v14 + 8);
    v21(v13, v88);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
  }

  v22 = [v7 senderURI];
  if (!v22)
  {
    v52 = v0[38];

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v53 = xmmword_537F0;
    *(v53 + 16) = 2;
    swift_willThrow();

    v55 = v0[36];
    v54 = v0[37];
    v57 = v0[32];
    v56 = v0[33];

    v58 = v0[1];
LABEL_15:

    return v58();
  }

  v85 = v6;
  v89 = v8;
  v23 = v0[31];
  v24 = v22;
  v25 = [v22 unprefixedURI];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = [v7 recipientURI];
  v30 = v26;
  v31 = [v29 unprefixedURI];

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v32;

  v33 = [v23 service];
  v34._countAndFlagsBits = v26;
  v34._object = v28;
  v35 = IMDService.hasAlias(_:)(v34);

  v36._countAndFlagsBits = v30;
  v36._object = v28;
  if (LiteMessageServiceSession.hasBlockedFromHandleID(_:)(v36))
  {
    v83 = v30;
    v86 = v21;
    v37 = v0[38];
    v38 = v0[36];
    v39 = v0[34];
    v40 = v0[29];

    (v90)(v38, v92, v39);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v45 = v0[35];
    v44 = v0[36];
    v46 = v0[34];
    if (v43)
    {
      v93 = v0[36];
      v48 = v0[28];
      v47 = v0[29];
      v49 = swift_slowAlloc();
      v96[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v96);
      *(v49 + 12) = 2080;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v28, v96);

      *(v49 + 14) = v50;
      _os_log_impl(&dword_0, v41, v42, "Dropping message %s, sender %s is blocked", v49, 0x16u);
      swift_arrayDestroy();

      v51 = v93;
    }

    else
    {

      v51 = v44;
    }

    v86(v51, v46);
    v76 = v0[36];
    v75 = v0[37];
    v78 = v0[32];
    v77 = v0[33];

    v58 = v0[1];
    goto LABEL_15;
  }

  v59 = v0[32];
  v61 = v0[30];
  v60 = v0[31];
  v62 = v0[29];
  v91 = v0[28];
  v94 = v0[33];
  v63 = v0[27];

  IDSOffGridEncryptedMessage.dateSent.getter();
  LOBYTE(v60) = LiteMessageServiceSession.isLiteMessageActiveOverSatellite.getter();
  v64 = [v63 preferredServiceType];
  v65 = IDSOffGridMessageContext.command.getter();
  LiteMessageContext.init(identifier:unencryptedIdentifier:senderID:recipientID:isFromMe:date:sentOrReceivedOnSatellite:preferredService:command:)(v85, v89, v91, v62, v30, v28, v82, v87, v94, v35, v59, v60 & 1, v64, v65);
  v66 = IDSOffGridMessageContext.topic.getter();
  v67 = [v95 message];
  v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v0[44] = v68;
  v0[45] = v70;
  if (v66)
  {
    v71 = swift_task_alloc();
    v0[48] = v71;
    *v71 = v0;
    v71[1] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
    v72 = v0[33];
    v73 = v0[31];

    return LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)(v68, v70, v72);
  }

  else
  {
    v79 = swift_task_alloc();
    v0[46] = v79;
    *v79 = v0;
    v79[1] = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
    v80 = v0[33];
    v81 = v0[31];

    return LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)(v68, v70, v80);
  }
}

{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[38];

  swift_willThrow();

  v4 = v0[42];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[33];

  outlined destroy of LiteMessageContext(v3);
  v4 = v0[47];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[33];

  outlined destroy of LiteMessageContext(v3);
  v4 = v0[49];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[32];
  v7 = v0[33];

  v9 = v0[1];

  return v9();
}

uint64_t LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = v2;
  v4[22] = a1;
  v4[23] = v1;
  v5 = v3[46];
  v6 = *v2;
  v4[47] = v1;

  outlined consume of Data._Representation(v3[44], v3[45]);
  v7 = v3[40];
  v8 = v3[39];
  if (v1)
  {
    v9 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v9 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v9, v8, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[24] = v2;
  v4[25] = a1;
  v4[26] = v1;
  v5 = v3[48];
  v6 = *v2;
  v4[49] = v1;

  outlined consume of Data._Representation(v3[44], v3[45]);
  v7 = v3[40];
  v8 = v3[39];
  if (v1)
  {
    v9 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  else
  {
    v9 = LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:);
  }

  return _swift_task_switch(v9, v8, v7);
}

id LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 304);
  v3 = *(v0 + 216);

  v4 = v1;
  v5 = IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter();
  v6 = IDSOffGridEncryptedMessage.pendingMessageCountTotal.getter();
  [v4 updateIsDownloadingPendingSatelliteMessages:v5 > 0];
  [v4 updatePendingIncomingSatelliteMessageCount:v5];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [*(v0 + 248) service];
    v10 = [v9 internalName];

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = *(v0 + 344);
    v12 = *(v0 + 264);
    [v8 updateBadgeForPendingSatelliteMessagesIfNeeded:v6 onService:v10];

    outlined destroy of LiteMessageContext(v12);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 304);
  v3 = *(v0 + 216);

  v4 = v1;
  v5 = IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter();
  v6 = IDSOffGridEncryptedMessage.pendingMessageCountTotal.getter();
  [v4 updateIsDownloadingPendingSatelliteMessages:v5 > 0];
  [v4 updatePendingIncomingSatelliteMessageCount:v5];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [*(v0 + 248) service];
    v10 = [v9 internalName];

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = *(v0 + 344);
    v12 = *(v0 + 264);
    [v8 updateBadgeForPendingSatelliteMessagesIfNeeded:v6 onService:v10];

    outlined destroy of LiteMessageContext(v12);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v8;
  v3[11] = v7;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v8, v7);
}

uint64_t LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:)()
{
  v1 = *(v0 + 32);
  v2 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 96) = v2;

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v2, 0);
}

{
  v1 = v0[12];
  LiteMessageSegmentStore.insertMessageSegment(_:)(v0[2]);
  v0[13] = 0;
  v2 = v0[12];

  v3 = v0[10];
  v4 = v0[11];

  return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v3, v4);
}

{
  v1 = v0[13];
  v2 = v0[2];
  v3 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
  v0[14] = v1;
  v0[15] = v3;
  v0[16] = v4;
  if (v1)
  {
    v5 = v0[9];

    v7 = v0[7];
    v6 = v0[8];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    v11 = LiteMessageServiceSession.segmentStore.getter();
    v0[17] = v11;

    return _swift_task_switch(LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:), v11, 0);
  }
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  *(v0 + 144) = LiteMessageSegmentStore.countMessageSegments(for:)(*(v0 + 120));
  *(v0 + 152) = v3;
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  else
  {
    v7 = *(v0 + 136);

    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v55 = v0;
  v1 = v0[18];
  v2 = v0[2];
  v3 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v4 = v0[16];
  if (v1 == v3)
  {
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = Logger.liteSession.unsafeMutableAddressor();
    (*(v7 + 16))(v5, v8, v6);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[8];
      v14 = v0[5];
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v54 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v54);
      _os_log_impl(&dword_0, v9, v10, "Received all message segments for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);

      (*(v15 + 8))(v13, v14);
    }

    else
    {
      v35 = v0[8];
      v36 = v0[5];
      v37 = v0[6];

      (*(v37 + 8))(v35, v36);
    }

    v38 = swift_task_alloc();
    v0[20] = v38;
    *v38 = v0;
    v38[1] = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
    v40 = v0[15];
    v39 = v0[16];
    v41 = v0[3];
    v42 = v0[4];

    return LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)(v40, v39, v41);
  }

  else
  {
    v18 = v0[9];
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];
    v22 = v0[2];

    v23 = Logger.liteSession.unsafeMutableAddressor();
    (*(v20 + 16))(v19, v23, v21);

    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[18];
      v29 = v0[15];
      v28 = v0[16];
      v30 = v0[6];
      v52 = v0[5];
      v53 = v0[7];
      v31 = v0[2];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 134218498;
      *(v32 + 4) = v27;
      *(v32 + 12) = 2048;
      *(v32 + 14) = IDSOffGridEncryptedMessage.totalSegments.getter();

      *(v32 + 22) = 2080;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v54);

      *(v32 + 24) = v34;
      _os_log_impl(&dword_0, v25, v26, "Has %ld of %ld segments for %s, awaiting more segments", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v33);

      (*(v30 + 8))(v53, v52);
    }

    else
    {
      v44 = v0[16];
      v46 = v0[6];
      v45 = v0[7];
      v47 = v0[5];
      v48 = v0[2];

      (*(v46 + 8))(v45, v47);
    }

    v50 = v0[7];
    v49 = v0[8];

    v51 = v0[1];

    return v51();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  else
  {
    v7 = v2[16];

    v4 = v2[10];
    v5 = v2[11];
    v6 = LiteMessageServiceSession.processReceivedEncryptedMessageSegment(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v1 = v0[9];

  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[9];

  v4 = v0[19];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[16];
  v2 = v0[9];

  v3 = v0[21];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for Logger();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v9, v8);
}

uint64_t LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:)()
{
  v1 = *(v0 + 72);
  v2 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 144) = v2;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v2, 0);
}

{
  v1 = v0[18];
  v0[19] = LiteMessageSegmentStore.messageSegments(for:)(v0[6], v0[7]);
  v0[20] = 0;
  v2 = v0[18];

  v3 = v0[16];
  v4 = v0[17];

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v3, v4);
}

{
  v1 = v0[19];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v42 = v0[19];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_27:
    v43 = v0[19];
    v44 = v0[15];

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v50 = v0[19];
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0[19] + 32);
  }

  v5 = v4;
  v0[21] = v4;
  if (v2)
  {
    v7 = v0[19];
    if (v1 < 0)
    {
      v8 = v0[19];
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = IDSOffGridEncryptedMessage.totalSegments.getter();
  v10 = v0[19];
  if (v6 == v9)
  {
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[11];
    v14 = Logger.liteSession.unsafeMutableAddressor();
    v0[22] = v14;
    v15 = *(v13 + 16);
    v0[23] = v15;
    v0[24] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v11, v14, v12);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v2)
      {
        v24 = v0[19];
        if (v1 < 0)
        {
          v25 = v0[19];
        }

        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      v26 = v0[19];
      *(v18 + 4) = v19;

      _os_log_impl(&dword_0, v16, v17, "Consolidating and decrypting %ld segments", v18, 0xCu);
    }

    else
    {
      v23 = v0[19];
    }

    v27 = v0[19];
    v28 = v0[14];
    v29 = v0[10];
    v30 = v0[11];
    v31 = *(v30 + 8);
    v0[25] = v31;
    v0[26] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v28, v29);
    v32 = objc_allocWithZone(IDSOffGridEncryptedMessage);
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridEncryptedMessage, IDSOffGridEncryptedMessage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v32 initWithSegments:isa];
    v0[27] = v34;

    v35 = [v34 identifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v0[28] = v38;
    v39 = swift_task_alloc();
    v0[29] = v39;
    *v39 = v0;
    v39[1] = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
    v40 = v0[8];
    v41 = v0[9];

    return LiteMessageServiceSession.decryptAndStoreMessage(_:identifier:context:)(v34, v36, v38, v40);
  }

  v20 = v0[15];

  v21 = IDSOffGridEncryptedMessage.totalSegments.getter();
  lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
  swift_allocError();
  *v22 = v6;
  *(v22 + 8) = v21;
  *(v22 + 16) = 1;
  swift_willThrow();

LABEL_28:
  v47 = v0[13];
  v46 = v0[14];
  v48 = v0[12];

  v49 = v0[1];

  return v49();
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  else
  {
    v7 = v2[28];

    v4 = v2[16];
    v5 = v2[17];
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v1 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 104), *(v0 + 176), *(v0 + 80));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Successfully decrypted and stored consolidated message, removing parts from store", v4, 2u);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);

  v6(v7, v9);
  v10 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 248) = v10;

  return _swift_task_switch(LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:), v10, 0);
}

{
  countAndFlagsBits = v0[15]._countAndFlagsBits;
  object = v0[15]._object;
  LiteMessageSegmentStore.deleteMessageSegments(for:)(v0[3]);
  v0[16]._countAndFlagsBits = v3;
  if (v3)
  {
    v4 = v0[8]._countAndFlagsBits;
    v5 = v0[8]._object;
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  else
  {
    v7 = v0[15]._object;

    v4 = v0[8]._countAndFlagsBits;
    v5 = v0[8]._object;
    v6 = LiteMessageServiceSession.consolidateMessageWithConsolidationIdentifier(_:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);

  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[20];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[21];
  v4 = v0[15];

  v5 = v0[30];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

{
  v38 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v4(v7, v5, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 256);
    v12 = *(v0 + 216);
    v35 = *(v0 + 200);
    v36 = *(v0 + 208);
    v13 = *(v0 + 168);
    v33 = *(v0 + 80);
    v34 = *(v0 + 96);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v37);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Failed to clean up message segments: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    v35(v34, v33);
  }

  else
  {
    v22 = *(v0 + 256);
    v23 = *(v0 + 208);
    v24 = *(v0 + 200);
    v25 = *(v0 + 168);
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);

    v24(v26, v27);
  }

  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v30 = *(v0 + 96);

  v31 = *(v0 + 8);

  return v31();
}

void IDSOffGridEncryptedMessage.dateSent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 respondsToSelector:"date"])
  {
    v13 = [v1 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v13;
  }

  else
  {
    v8 = Logger.liteSession.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "IDSOffGridEncryptedMessage does not have date", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    static Date.now.getter();
  }
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for LiteMessageContext();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:), v11, v10);
}

id LiteMessageServiceSession.storeAndBroadcastDecryptedMessageData(_:context:)()
{
  v176 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v175[0] = 0x2D6574696CLL;
  v175[1] = 0xE500000000000000;
  String.append(_:)(*v2);
  v7._countAndFlagsBits = 0x617461642ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 writeDataPayloadToDisk:isa fileName:v8];

  v9 = *(v2 + 64);
  v10 = 32;
  if (*(v2 + 64))
  {
    v10 = 48;
  }

  v11 = 40;
  if (*(v2 + 64))
  {
    v11 = 56;
  }

  v12 = *(v2 + v10);
  v13 = *(v2 + v11);

  v14 = LiteMessageServiceSession.joinedChat(with:)(v12, v13);
  if (!v14)
  {
    v21 = v0[17];

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v22 = v12;
    *(v22 + 8) = v13;
    *(v22 + 16) = 0;
    swift_willThrow();
    goto LABEL_30;
  }

  v15 = v14;
  v16 = v0[6];
  v17 = [v14 account];
  v18 = [v16 account];
  v19 = v18;
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!v18)
  {
    v19 = v17;
LABEL_14:

    goto LABEL_15;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
LABEL_15:
    v23 = v0[6];
    v24 = v15;
    v25 = [v23 account];
    v26 = [v25 accountID];

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    [v24 setAccountID:v26];

    v27 = [objc_opt_self() sharedInstance];
    [v27 storeChat:v24];
  }

LABEL_18:
  v28 = v0[6];
  v29 = v15;
  LOBYTE(v28) = LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)();

  if (v28)
  {
    v30 = v0[17];
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    v34 = v0[8];
    v35 = v0[5];

    v36 = Logger.liteSession.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v36, v33);
    outlined init with copy of LiteMessageContext(v35, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    v43 = v0[8];
    if (v39)
    {
      v172 = v0[13];
      v44 = swift_slowAlloc();
      v173 = v29;
      v45 = swift_slowAlloc();
      v175[0] = v45;
      *v44 = 136315138;
      v46 = *v43;
      v47 = v43[1];

      outlined destroy of LiteMessageContext(v43);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v175);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v37, v38, "Already received message with identifier %s, dropping incoming message", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v29 = v173;

      (*(v40 + 8))(v172, v42);
    }

    else
    {

      outlined destroy of LiteMessageContext(v43);
      (*(v40 + 8))(v41, v42);
    }

LABEL_64:
    v158 = v0[15];
    v157 = v0[16];
    v160 = v0[13];
    v159 = v0[14];
    v162 = v0[9];
    v161 = v0[10];
    v163 = v0[8];

    v164 = v0[1];

    return v164(v29);
  }

  v49 = v9;
  v50 = v0[7];
  v51 = v0[4];
  v52 = v0[5];
  v53 = v0[3];
  v169 = v49;
  v54 = v49 == 0;
  v55 = 48;
  if (!v54)
  {
    v55 = 32;
  }

  v56 = 56;
  if (!v54)
  {
    v56 = 40;
  }

  v57 = *(v52 + v55);
  v58 = *(v52 + v56);

  v174 = v29;
  v59 = v29;
  v60._countAndFlagsBits = v57;
  v60._object = v58;
  IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v60);

  v61 = *(v52 + 40);
  v62 = *(v50 + 36);
  v63 = *(v52 + 32);
  v64 = String._bridgeToObjectiveC()();
  v65 = Data._bridgeToObjectiveC()().super.isa;
  v66 = String._bridgeToObjectiveC()();
  v67 = Date._bridgeToObjectiveC()().super.isa;
  v68 = objc_opt_self();
  v0[2] = 0;
  v69 = [v68 messageItemWithLiteIdentifier:v64 liteData:v65 senderID:v66 date:v67 error:v0 + 2];

  v70 = v0[2];
  if (v69)
  {
    v71 = v0[5];
    if (v169)
    {
      v72 = 0x80000009005;
      v73 = 36869;
    }

    else
    {
      v85 = *(v71 + 48);
      v86 = *(v71 + 56);
      v72 = 0x80000000001;
      v73 = 1;
    }

    v87 = v0[7];

    v88 = v70;
    v89 = v69;
    v90 = String._bridgeToObjectiveC()();

    [v89 setDestinationCallerID:v90];

    v91 = *(v71 + *(v87 + 40));
    if (v91)
    {
      v92 = v72;
    }

    else
    {
      v92 = v73;
    }

    [v89 setFlags:v92];
    v93 = v59;
    result = [v93 chatIdentifier];
    if (result)
    {
      v94 = result;
      v95 = v0[6];

      [v95 didReceiveMessage:v89 forChat:v94 style:45 fromIDSID:0];
      if ((v91 & 1) == 0)
      {
        result = [v93 recipient];
        if (!result)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v96 = result;
        v97 = [result cachedOffGridMode];

        if ((v97 & 1) == 0)
        {
          v98 = v0[5];
          v99 = v169;
          if (!*(v98 + *(v0[7] + 44)))
          {
            v99 = 1;
          }

          if ((v99 & 1) == 0)
          {
            v100 = v0[16];
            v102 = v0[11];
            v101 = v0[12];
            v103 = v0[10];
            v104 = Logger.liteSession.unsafeMutableAddressor();
            (*(v101 + 16))(v100, v104, v102);
            outlined init with copy of LiteMessageContext(v98, v103);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v170 = v106;
              v107 = swift_slowAlloc();
              v175[0] = swift_slowAlloc();
              *v107 = 136315394;
              result = [v93 chatIdentifier];
              if (!result)
              {
LABEL_71:
                __break(1u);
                return result;
              }

              v108 = result;
              v109 = v0[12];
              v165 = v0[11];
              v166 = v0[16];
              v110 = v0[10];
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;

              v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v175);

              *(v107 + 4) = v114;
              *(v107 + 12) = 2080;
              v115 = *v110;
              v116 = v110[1];

              outlined destroy of LiteMessageContext(v110);
              v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, v175);

              *(v107 + 14) = v117;
              _os_log_impl(&dword_0, v105, v170, "Downgrading chat: %s to iMessage Lite as we received a message while on-grid: %s", v107, 0x16u);
              swift_arrayDestroy();

              (*(v109 + 8))(v166, v165);
            }

            else
            {
              v118 = v0[16];
              v120 = v0[11];
              v119 = v0[12];
              v121 = v0[10];

              outlined destroy of LiteMessageContext(v121);
              (*(v119 + 8))(v118, v120);
            }

            [v93 setWasDowngradedToLiteMessage:1];
          }
        }
      }

      if ([v93 wasDowngradedToLiteMessage])
      {
        v122 = v0[5];
        if (!*(v122 + *(v0[7] + 44)))
        {
          v123 = v0[15];
          v125 = v0[11];
          v124 = v0[12];
          v126 = v0[9];
          v127 = Logger.liteSession.unsafeMutableAddressor();
          (*(v124 + 16))(v123, v127, v125);
          outlined init with copy of LiteMessageContext(v122, v126);
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.default.getter();
          v130 = os_log_type_enabled(v128, v129);
          v131 = v0[15];
          v133 = v0[11];
          v132 = v0[12];
          v134 = v0[9];
          if (v130)
          {
            v135 = swift_slowAlloc();
            v171 = v131;
            v136 = swift_slowAlloc();
            v175[0] = v136;
            *v135 = 136315138;
            v167 = *v134;
            v168 = v133;
            v137 = v134[1];

            outlined destroy of LiteMessageContext(v134);
            v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v137, v175);

            *(v135 + 4) = v138;
            _os_log_impl(&dword_0, v128, v129, "Clearing downgrade flag as the preferred service is iMessage %s", v135, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v136);

            (*(v132 + 8))(v171, v168);
          }

          else
          {

            outlined destroy of LiteMessageContext(v134);
            (*(v132 + 8))(v131, v133);
          }

          [v93 setWasDowngradedToLiteMessage:0];
        }
      }

      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v139 = result;
        v140 = [result anySessionForServiceName:IMServiceNameiMessage];

        if (!v140)
        {
          v145 = v0[17];
          v146 = v0[14];
          v147 = v0[11];
          v148 = v0[12];

          v149 = Logger.liteSession.unsafeMutableAddressor();
          (*(v148 + 16))(v146, v149, v147);
          v150 = Logger.logObject.getter();
          v151 = static os_log_type_t.error.getter();
          v152 = os_log_type_enabled(v150, v151);
          v153 = v0[14];
          v154 = v0[11];
          v155 = v0[12];
          if (v152)
          {
            v156 = swift_slowAlloc();
            *v156 = 0;
            _os_log_impl(&dword_0, v150, v151, "No iMessage service session found for preferred service request", v156, 2u);
          }

          else
          {
          }

          (*(v155 + 8))(v153, v154);
          goto LABEL_63;
        }

        v141 = String._bridgeToObjectiveC()();
        v142 = v93;
        result = [v142 chatIdentifier];
        if (result)
        {
          v143 = result;
          v144 = v0[17];

          [v140 deleteExistingMessageAwaitingReplacementWithFallbackHash:v141 chatIdentifier:v143];

LABEL_63:
          v29 = v174;
          goto LABEL_64;
        }

        goto LABEL_69;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v74 = v0[17];
  v75 = v70;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_30:
  v77 = v0[15];
  v76 = v0[16];
  v79 = v0[13];
  v78 = v0[14];
  v81 = v0[9];
  v80 = v0[10];
  v82 = v0[8];

  v83 = v0[1];

  return v83();
}

id IDSOffGridEncryptedMessage.pendingMessageCountForHandle.getter(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 respondsToSelector:*a1])
  {
    v9 = [v3 *a1];
    v10 = [v9 integerValue];

    return v10;
  }

  else
  {
    v12 = Logger.liteSession.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v12, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "IDSOffGridEncryptedMessage does not have pending message count", v15, 2u);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t outlined destroy of LiteMessageContext(uint64_t a1)
{
  v2 = type metadata accessor for LiteMessageContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of LiteMessageContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiteMessageContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

iMessageLite::LiteMessageEffect_optional __swiftcall LiteMessageEffect.init(expressiveSendStyleID:)(Swift::String_optional expressiveSendStyleID)
{
  object = expressiveSendStyleID.value._object;
  countAndFlagsBits = expressiveSendStyleID.value._countAndFlagsBits;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!object)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return 13;
  }

  if (v3 == countAndFlagsBits && v4 == object)
  {

LABEL_11:

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_11;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v8 == object)
  {

LABEL_19:

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_19;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v11 == object)
  {

LABEL_27:

    return 2;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_27;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v14 == object)
  {

LABEL_32:

    return 3;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_32;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v16 == object)
  {

LABEL_37:

    return 4;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_37;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v18 == object)
  {

LABEL_42:

    return 5;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_42;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v20 == object)
  {

LABEL_47:

    return 6;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_47;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v22 == object)
  {

LABEL_52:

    return 7;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_52;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v24 == object)
  {

LABEL_57:

    return 8;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_57;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v26 == object)
  {

LABEL_62:

    return 9;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_62;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v28 == object)
  {

LABEL_67:

    return 10;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_67;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v30 == object)
  {

LABEL_72:

    return 11;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_72;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == countAndFlagsBits && v32 == object)
  {

    return 12;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    return 13;
  }

  return 12;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageEffect()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageEffect()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteMessageEffect@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LiteMessageEffect.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized LiteMessageEffect.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 13;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageEffect and conformance LiteMessageEffect()
{
  result = lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect;
  if (!lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageEffect and conformance LiteMessageEffect);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void IMMessageItem.canSendAsLiteMessage.getter()
{
  v1 = v0;
  v80 = type metadata accessor for Logger();
  v2 = *(v80 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v80);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v80 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v80 - v17;
  v19 = [v1 guid];
  if (!v19)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v19;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v21 = type metadata accessor for UUID();
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v18, 1, v21);
  outlined destroy of UUID?(v18);
  if (v20 == 1)
  {
    v22 = Logger.liteSession.unsafeMutableAddressor();
    v23 = v80;
    (*(v2 + 16))(v6, v22, v80);
    v24 = v1;
    v25 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v25, v1))
    {

      goto LABEL_18;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v81 = v27;
    *v26 = 136315138;
    v28 = [v24 guid];

    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v81);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v25, v1, "IMItem invalid for sending, has malformed GUID %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);

LABEL_18:
      v55 = *(v2 + 8);
      v56 = v6;
LABEL_35:
      v55(v56, v23);
      return;
    }

    goto LABEL_37;
  }

  v33 = [v1 fileTransferGUIDs];
  v23 = v80;
  if (v33)
  {
    v34 = v33;
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = *(v35 + 16);

    if (v36)
    {
      v37 = Logger.liteSession.unsafeMutableAddressor();
      (*(v2 + 16))(v9, v37, v23);
      v38 = v1;
      v39 = Logger.logObject.getter();
      v1 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v1))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v81 = v41;
        *v40 = 136315138;
        v42 = [v38 guid];

        if (!v42)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v81);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_0, v39, v1, "IMItem invalid for sending %s has file transfers", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
      }

      else
      {
      }

      v55 = *(v2 + 8);
      v56 = v9;
      goto LABEL_35;
    }
  }

  v47 = [v1 balloonBundleID];
  if (!v47)
  {
    goto LABEL_29;
  }

  v48 = [v1 balloonBundleID];
  if (!v48)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_22;
  }

  v49 = v48;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v52)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v50 == v53 && v52 == v54)
  {

    goto LABEL_29;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v67 & 1) == 0)
  {
LABEL_23:
    v57 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v12, v57, v23);
    v58 = v1;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v1 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81 = v61;
      *v1 = 136315138;
      v62 = [v58 guid];

      if (!v62)
      {
LABEL_39:
        __break(1u);
LABEL_40:

        __break(1u);
        return;
      }

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v81);

      *(v1 + 1) = v66;
      _os_log_impl(&dword_0, v59, v60, "IMItem invalid for sending %s has balloon plugin", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
    }

    else
    {
    }

    v55 = *(v2 + 8);
    v56 = v12;
    goto LABEL_35;
  }

LABEL_29:
  if ([v1 scheduleType])
  {
    v68 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v14, v68, v23);
    v1 = v1;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v69, v70))
    {

      v55 = *(v2 + 8);
      v56 = v14;
      goto LABEL_35;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v81 = v72;
    *v71 = 136315394;
    v73 = [v1 guid];
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v81);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2048;
      v79 = [v1 scheduleType];

      *(v71 + 14) = v79;
      _os_log_impl(&dword_0, v69, v70, "IMItem invalid for sending %s, is a scheduled message of type: %lu", v71, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v72);

      (*(v2 + 8))(v14, v80);
      return;
    }

    goto LABEL_40;
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LiteMessageHeader.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  result = IMMessageItem.IMMessageItemContentType.rawValue.getter(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    do
    {
      if (v8 >= 8)
      {
        v9 = v8 & 7 | 8;
      }

      else
      {
        v9 = v8 & 7;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v9, 4u);
      v10 = v8 > 7;
      v8 >>= 3;
    }

    while (v10);
    result = LiteMessageType.isCoreType.getter(v6);
    if ((result & 1) == 0)
    {
      if (a4)
      {
        v11 = a3;
      }

      else
      {
        v11 = 0;
      }

      if (a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      BitCollection.appendAsCompressedBytes(_:)(v13);
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t LiteMessageSegmentStore.context.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  if (*(v0 + 112))
  {
  }

  if (specialized static LiteMessageSegmentStore.makePersistentContainer()())
  {
    v9 = v0;
    v10 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*(v2 + 16))(v8, v10, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Initializing model context", v13, 2u);
    }

    (*(v2 + 8))(v8, v1);
    v14 = type metadata accessor for ModelContext();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = ModelContext.init(_:)();
    v18 = *(v9 + 112);
    *(v9 + 112) = v17;

    v19 = *(v9 + 112);
  }

  v21 = Logger.liteSegmentStore.unsafeMutableAddressor();
  (*(v2 + 16))(v6, v21, v1);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "No container available for context", v24, 2u);
  }

  (*(v2 + 8))(v6, v1);
  return 0;
}

uint64_t LiteMessageSegmentStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t LiteMessageSegmentStore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t LiteMessageSegmentStore.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LiteMessageSegmentStore.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t LiteMessageSegmentStore.insertMessageSegment(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!LiteMessageSegmentStore.context.getter())
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v13 = LiteMessageSegmentStore.hasExistingMessageSegment(for:)();
  if (v1)
  {
  }

  if (v13)
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    v15 = 8;
LABEL_9:
    *v14 = v15;
    swift_willThrow();
  }

  v18 = objc_opt_self();
  v48 = 0;
  v19 = [v18 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v48];
  v20 = v48;
  if (!v19)
  {
    v23 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    v15 = 1;
    goto LABEL_9;
  }

  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v21;

  v22 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
  v43 = v24;
  v44 = v22;
  v45 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  v42 = IDSOffGridEncryptedMessage.segmentNumber.getter();
  static Date.now.getter();
  v26 = v46;
  v25 = v47;
  outlined copy of Data._Representation(v46, v47);
  v27 = LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(consolidationIdentifier:segmentNumber:dateReceived:data:)(v44, v43, v42, v12, v26, v25);
  lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  dispatch thunk of ModelContext.insert<A>(_:)();
  dispatch thunk of ModelContext.save()();
  v28 = Logger.liteSegmentStore.unsafeMutableAddressor();
  (*(v4 + 16))(v8, v28, v3);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    LODWORD(v45) = v30;
    v32 = v27;
    v33 = v31;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v33 = 134218242;
    v34 = *(*v32 + 200);
    v43 = v29;
    v35 = v34();
    v42 = v33;
    *(v33 + 4) = v35;

    *(v33 + 6) = 2080;
    v37 = (*(*v32 + 152))(v36);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v48);

    v41 = v42;
    v40 = v43;
    *(v42 + 14) = v39;
    _os_log_impl(&dword_0, v40, v45, "Stored message segment %ld of %s", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);

    outlined consume of Data._Representation(v46, v47);
  }

  else
  {
    outlined consume of Data._Representation(v26, v47);
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError()
{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError);
  }

  return result;
}

BOOL LiteMessageSegmentStore.hasExistingMessageSegment(for:)()
{
  v1 = type metadata accessor for Logger();
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v32 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  if (LiteMessageSegmentStore.context.getter())
  {
    v29[1] = v1;
    v30 = v8;
    v17 = IDSOffGridEncryptedMessage.consolidationIdentifier.getter();
    if (v0)
    {
    }

    else
    {
      v21 = v17;
      v22 = v18;
      v23 = IDSOffGridEncryptedMessage.segmentNumber.getter();
      v29[0] = v29;
      v24 = __chkstk_darwin(v23);
      v29[-4] = v21;
      v29[-3] = v22;
      v29[-2] = v24;
      v36 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
      Predicate.init(_:)();

      v25 = v34;
      v26 = v35;
      (*(v35 + 16))(v7, v16, v34);
      (*(v26 + 56))(v7, 0, 1, v25);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
      FetchDescriptor.init(predicate:sortBy:)();
      v27 = dispatch thunk of ModelContext.fetchCount<A>(_:)();

      (*(v31 + 8))(v11, v30);
      (*(v26 + 8))(v16, v25);
      return v27 > 0;
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  return v19;
}

uint64_t closure #3 in LiteMessageSegmentStore.hasExistingMessageSegment(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v64 = a4;
  v51 = a3;
  v57 = a1;
  v70 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v62 = v49 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMR);
  v65 = *(v63 - 8);
  v10 = *(v65 + 64);
  __chkstk_darwin(v63);
  v59 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMR);
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v49 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  v27 = *(v26 - 8);
  v52 = v26;
  v53 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v49 - v29;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
  v60 = *(v58 - 8);
  v31 = *(v60 + 64);
  __chkstk_darwin(v58);
  v54 = v49 - v32;
  v57 = *v57;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v33 = *(v22 + 8);
  v49[1] = v22 + 8;
  v50 = v33;
  v33(v25, v21);
  v71 = a2;
  v72 = v51;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v34 = v52;
  v35 = v55;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v56 + 8))(v20, v35);
  (*(v53 + 8))(v30, v34);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v36 = v59;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v50(v25, v21);
  v71 = v64;
  v37 = v62;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMR);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
  v38 = v61;
  v39 = v37;
  v40 = v63;
  v41 = v66;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v67 + 8))(v39, v41);
  (*(v65 + 8))(v36, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMR);
  v43 = v70;
  v70[3] = v42;
  v43[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_0(v43);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMR);
  v44 = v54;
  v45 = v38;
  v46 = v58;
  v47 = v68;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v69 + 8))(v45, v47);
  return (*(v60 + 8))(v44, v46);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}