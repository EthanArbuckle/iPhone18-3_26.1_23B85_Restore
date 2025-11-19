void LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)()
{
  v46 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 164) & 1;
  LiteMessageServiceSession.logger(for:)(v5, *(v0 + 96));
  v6 = v2;
  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {
    v27 = *(v0 + 88);
    v28 = *(v0 + 96);
    v29 = *(v0 + 80);
    v30 = *(v0 + 32);

    (*(v27 + 8))(v28, v29);
    if (v3 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v44 = v5;
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *v12 = 136315650;
  v13 = [v10 guid];

  if (!v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v41 = v3 == 2;
  v14 = *(v0 + 88);
  v42 = *(v0 + 80);
  v43 = *(v0 + 96);
  v15 = *(v0 + 32);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v3;
  v19 = v18;

  v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v45);

  *(v12 + 4) = v20;
  *(v12 + 12) = 2080;
  v21 = [v15 recipientURI];
  v22 = [v21 unprefixedURI];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v45);

  *(v12 + 14) = v26;
  *(v12 + 22) = 1024;
  *(v12 + 24) = v41;
  _os_log_impl(&dword_0, v8, v9, "Sending message %s to %s (via satellite: %{BOOL}d)", v12, 0x1Cu);
  swift_arrayDestroy();

  (*(v14 + 8))(v43, v42);
  v5 = v44;
  if (v17 == 2)
  {
LABEL_6:
    [*(v0 + 48) setFlags:{objc_msgSend(*(v0 + 48), "flags") | 0x80000000000}];
  }

LABEL_7:
  v31 = [*(v0 + 40) style];
  *(v0 + 160) = v5;
  *(v0 + 161) = 1;
  *(v0 + 128) = lazy protocol witness table accessor for type LiteTopic and conformance LiteTopic();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v32 = [*(v0 + 40) chatIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = *(v0 + 48);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = LiteMessageServiceSession;
      objc_msgSendSuper2((v0 + 16), "sendMessage:toChat:style:", v34, v32, v31);

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  v35 = specialized LiteMessageServiceSession.sendableMessageSegments(of:)(*(v0 + 32));
  *(v0 + 136) = v35;
  v36 = swift_task_alloc();
  *(v0 + 144) = v36;
  *v36 = v0;
  v36[1] = LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:);
  v37 = *(v0 + 64);
  v38 = *(v0 + 72);
  v39 = *(v0 + 48);
  v40 = *(v0 + 56);

  specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:)(v35, v39, v5, v40, v37);
}

uint64_t LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:);
  }

  else
  {
    v7 = v2[17];

    v4 = v2[14];
    v5 = v2[15];
    v6 = LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v1 = *(v0 + 104);

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isSatelliteContinuityEnabled];

  if (v3)
  {
    *(v0 + 162) = *(v0 + 164) & 1;
    v4 = *(v0 + 128);
    *(v0 + 163) = 1;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v5 = *(v0 + 72);
      LiteMessageServiceSession.relayMessage(item:to:viaSatellite:)(*(v0 + 48), *(v0 + 40), *(v0 + 56) == 2);
    }
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

id LiteMessageServiceSession.accountForSending(on:command:)(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return [v2 account];
  }

  if (a2 != 140)
  {
    if (a2 == 143)
    {
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v4 = result;
        v5 = [result anySessionForServiceName:IMServiceNameSatelliteSMS];

        if (v5)
        {
          goto LABEL_10;
        }

        return 0;
      }

      __break(1u);
      goto LABEL_14;
    }

    return [v2 account];
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v5 = [result anySessionForServiceName:IMServiceNameSMS];

    if (v5)
    {
LABEL_10:
      v7 = [v5 account];

      return v7;
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

void LiteMessageServiceSession.relayMessage(item:to:viaSatellite:)(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) != 0 || (v6 = [objc_opt_self() sharedInstance], v7 = String._bridgeToObjectiveC()(), v8 = String._bridgeToObjectiveC()(), v9 = objc_msgSend(v6, "getBoolFromDomain:forKey:", v7, v8), v6, v7, v8, v9))
  {

    [v3 markItemForOffGridRelay:a1 inChat:a2];
    return;
  }

  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  if (!v12)
  {
    return;
  }

  v15 = v12;
  v13 = [a2 chatIdentifier];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v14 = v13;
  [v15 relayLegacySatelliteMessage:a1 toChat:v13 localWatchOnly:0];
}

void LiteMessageServiceSession.sendMessageSentMetric(for:withDetailedError:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v86) = a4;
  v82 = a2;
  v83 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v82 - v12;
  v14 = [a1 handle];
  IMStringIsPhoneNumber();

  v85 = v4;
  LiteMessageServiceSession.isSatelliteConnectionActive.getter();
  v15.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  Date.init()();
  v16 = [a1 time];
  if (!v16)
  {
    goto LABEL_50;
  }

  v17 = v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v19 = v18;
  v20 = v18;
  v21 = *(v7 + 8);
  v21(v13, v6);
  v21(v11, v6);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_54B80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  [a1 errorCode];
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v25 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *(inited + 72) = v25;
  *(inited + 48) = isa;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v26;
  [a1 errorCode];
  v27.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 120) = v25;
  *(inited + 96) = v27;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v28;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 0;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v29;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 0;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v30;
  v31.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  *(inited + 264) = v25;
  *(inited + 240) = v31;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v32;
  v33.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  *(inited + 312) = v25;
  *(inited + 288) = v33;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v34;
  *(inited + 360) = &type metadata for Int;
  *(inited + 336) = 0;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v35;
  v36.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  *(inited + 408) = v25;
  *(inited + 384) = v36;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v37;
  *(inited + 456) = v25;
  *(inited + 432) = v15;
  v84 = v15.super.super.isa;
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v39 = objc_opt_self();
  v40 = [v39 sharedInstance];
  if (!v40)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = IMMetricsCollectorEventIMessageSentMessageSingleComponent;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v38);
  v43 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v41 trackEvent:v42 withDictionary:v43];

  v44 = [a1 bodyData];
  if (!v44)
  {
    goto LABEL_17;
  }

  v45 = v44;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = v48;
  v50 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v50)
    {
      outlined consume of Data._Representation(v46, v48);
      v51 = BYTE6(v48);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v50 != 2)
  {
    outlined consume of Data._Representation(v46, v48);
LABEL_17:
    v51 = 0;
    goto LABEL_18;
  }

  v53 = *(v46 + 16);
  v52 = *(v46 + 24);
  outlined consume of Data._Representation(v46, v49);
  v51 = v52 - v53;
  if (!__OFSUB__(v52, v53))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_14:
  outlined consume of Data._Representation(v46, v49);
  if (__OFSUB__(HIDWORD(v46), v46))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v51 = HIDWORD(v46) - v46;
LABEL_18:
  v54 = [a1 payloadData];
  if (!v54)
  {
LABEL_29:
    v61 = 0;
    goto LABEL_30;
  }

  v55 = v54;
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = v58;
  v60 = v58 >> 62;
  if ((v58 >> 62) <= 1)
  {
    if (!v60)
    {
      outlined consume of Data._Representation(v56, v58);
      v61 = BYTE6(v58);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (v60 != 2)
  {
    outlined consume of Data._Representation(v56, v58);
    goto LABEL_29;
  }

  v63 = *(v56 + 16);
  v62 = *(v56 + 24);
  outlined consume of Data._Representation(v56, v59);
  v61 = v62 - v63;
  if (!__OFSUB__(v62, v63))
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_26:
  outlined consume of Data._Representation(v56, v59);
  LODWORD(v61) = HIDWORD(v56) - v56;
  if (__OFSUB__(HIDWORD(v56), v56))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v61 = v61;
LABEL_30:
  v64 = v51 + v61;
  if (__OFADD__(v51, v61))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v64 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (BYTE1(v86) == 255 || (v65 = LiteMessageSendError.telemetryDescription.getter(v82, v83, v86), !v66))
  {
    v68 = [v39 stringForFZErrorType:{objc_msgSend(a1, "errorCode")}];
    if (v68)
    {
      v69 = v68;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v70;
    }

    else
    {

      v83 = 0;
      v67 = 0;
    }
  }

  else
  {
    v67 = v66;
    v83 = v65;
  }

  v71 = [v39 sharedInstance];
  if (!v71)
  {
    goto LABEL_52;
  }

  v72 = v71;
  v86 = v64;

  LiteMessageServiceSession.isSatelliteConnectionActive.getter();
  v85 = String._bridgeToObjectiveC()();

  v73 = String._bridgeToObjectiveC()();
  v74 = [a1 originalServiceName];
  v75.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v76 = String._bridgeToObjectiveC()();
  v77 = [a1 errorCode];
  v78 = [a1 handle];
  if (v67)
  {
    v79 = String._bridgeToObjectiveC()();
  }

  else
  {
    v79 = 0;
  }

  LOBYTE(v81) = v77 == 0;
  v80 = v85;
  [v72 trackSentMessageEventOfType:v85 subtype:v73 originalServiceName:v74 messageSize:v86 sendDuration:v75.super.super.isa receiverType:v76 receiverGroupType:0 wasSuccessful:v81 sourceHandle:0 destinationHandle:v78 error:v79];
}

uint64_t LiteMessageServiceSession.isFakingSatelliteConnection.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  return v2;
}

unint64_t lazy protocol witness table accessor for type LiteTopic and conformance LiteTopic()
{
  result = lazy protocol witness table cache variable for type LiteTopic and conformance LiteTopic;
  if (!lazy protocol witness table cache variable for type LiteTopic and conformance LiteTopic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteTopic and conformance LiteTopic);
  }

  return result;
}

id specialized LiteMessageServiceSession.sendableMessageSegments(of:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [result isInternalInstall];

    if (v9 & 1) != 0 && (v10 = String._bridgeToObjectiveC()(), v11 = String._bridgeToObjectiveC()(), v12 = IMGetDomainBoolForKey(), v11, v10, (v12))
    {
      v13 = Logger.liteSession.unsafeMutableAddressor();
      (*(v3 + 16))(v6, v13, v2);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Message splitting is disabled, will send as single encrypted message", v16, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }

    else if ([a1 respondsToSelector:"splitMessageIntoMessagesThatFit"])
    {
      v17 = [a1 splitMessageIntoMessagesThatFit];
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridEncryptedMessage, IDSOffGridEncryptedMessage_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_53F20;
    *(v18 + 32) = a1;
    v19 = a1;
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = v5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 336) = a3;
  *(v6 + 176) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 216) = v7;
  v8 = *(v7 - 8);
  *(v6 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 248) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 256) = v11;
  *(v6 + 264) = v10;

  return _swift_task_switch(specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:), v11, v10);
}

uint64_t specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:)()
{
  v58 = v0;
  v1 = *(v0 + 176);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v48 = *(v0 + 176);
    }

    v49 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 272) = v49;
    if (v49)
    {
LABEL_3:
      v3 = *(v0 + 208);
      v4 = *(v0 + 176);
      v5 = *(v0 + 184);
      LiteMessageServiceSession.logger(for:)(*(v0 + 336) & 1, *(v0 + 240));
      swift_bridgeObjectRetain_n();
      v6 = v5;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 184);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v57 = v11;
        *v10 = 136315394;
        v12 = [v9 guid];
        v13 = *(v0 + 184);
        if (!v12)
        {
          goto LABEL_26;
        }

        v14 = v12;

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v57);

        *(v10 + 4) = v18;
        *(v10 + 12) = 2048;
        if (v1 >> 62)
        {
          v28 = *(v0 + 176);
          if (v1 < 0)
          {
            v29 = *(v0 + 176);
          }

          v19 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v19 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        }

        v30 = *(v0 + 240);
        v31 = *(v0 + 216);
        v32 = *(v0 + 224);
        v33 = *(v0 + 176);

        *(v10 + 14) = v19;

        _os_log_impl(&dword_0, v7, v8, "Sending %s using %ld message part(s)", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v11);

        v34 = *(v32 + 8);
        v26 = v32 + 8;
        v25 = v34;
        v34(v30, v31);
      }

      else
      {
        v20 = *(v0 + 240);
        v21 = *(v0 + 216);
        v22 = *(v0 + 224);
        v23 = *(v0 + 176);
        v24 = *(v0 + 184);
        swift_bridgeObjectRelease_n();

        v27 = *(v22 + 8);
        v26 = v22 + 8;
        v25 = v27;
        v27(v20, v21);
      }

      *(v0 + 280) = v26;
      *(v0 + 288) = v25;
      v35 = *(v0 + 192);
      v36 = *(v0 + 200);
      v37 = [objc_allocWithZone(IDSOffGridDeliveryOptions) init];
      *(v0 + 296) = v37;
      [v37 setTransportType:v35];
      [v37 setCommand:v36];
      v38 = *(v0 + 176);
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
        v40 = v39;
        *(v0 + 304) = v39;
        *(v0 + 312) = 1;
        v41 = *(v0 + 296);
        v42 = *(v0 + 200);
        v43 = *(v0 + 208);
        v44 = *(v0 + 192);
        v45 = LiteMessageServiceSession.offGridMessenger(for:)(*(v0 + 336) & 1);
        *(v0 + 320) = v45;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:);
        v46 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMd, &_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMR);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
        *(v0 + 104) = &block_descriptor_7;
        *(v0 + 112) = v46;
        [v45 sendEncryptedOffGridMessage:v40 options:v41 completion:v0 + 80];
        v47 = v0 + 16;

        return _swift_continuation_await(v47);
      }

      v13 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
        v39 = *(v38 + 32);
        goto LABEL_15;
      }

      __break(1u);
LABEL_26:
      v56 = *(v0 + 176);

      v47 = swift_bridgeObjectRelease_n();
      __break(1u);
      return _swift_continuation_await(v47);
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    *(v0 + 272) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v50 = *(v0 + 248);

  lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
  swift_allocError();
  *v51 = xmmword_54B90;
  *(v51 + 16) = 768;
  swift_willThrow();
  v53 = *(v0 + 232);
  v52 = *(v0 + 240);

  v54 = *(v0 + 8);

  return v54();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:);
  }

  else
  {
    v6 = specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 336);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);

  v8 = *(v0 + 160);
  v58 = *(v0 + 152);

  LiteMessageServiceSession.logger(for:)(v5 & 1, v3);
  swift_bridgeObjectRetain_n();
  v9 = v7;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 176);
    v14 = swift_slowAlloc();
    *(v0 + 168) = swift_slowAlloc();
    *v14 = 134218754;
    *(v14 + 4) = v12;
    *(v14 + 12) = 2048;
    v15 = *(v0 + 176);
    if (v13 >> 62)
    {
      if (v15 < 0)
      {
        v24 = *(v0 + 176);
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
      v25 = *(v0 + 176);
    }

    else
    {
      v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    }

    v26 = *(v0 + 184);

    *(v14 + 14) = v16;

    *(v14 + 22) = 2080;
    v27 = [v26 guid];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v56 = *(v0 + 280);
    v57 = *(v0 + 288);
    v55 = *(v0 + 232);
    v53 = *(v0 + 304);
    v54 = *(v0 + 216);
    v29 = *(v0 + 184);

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, (v0 + 168));

    *(v14 + 24) = v33;
    *(v14 + 32) = 2080;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v8, (v0 + 168));

    *(v14 + 34) = v34;
    _os_log_impl(&dword_0, v10, v11, "Successfully sent part %ld (of %ld) of %s with part identifier %s", v14, 0x2Au);
    swift_arrayDestroy();

    v57(v55, v54);
  }

  else
  {
    v17 = *(v0 + 304);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    v22 = *(v0 + 176);
    v23 = *(v0 + 184);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v18(v20, v21);
  }

  v35 = *(v0 + 312);
  if (v35 != *(v0 + 272))
  {
    v41 = *(v0 + 176);
    if ((v41 & 0xC000000000000001) != 0)
    {
      v51 = *(v0 + 312);
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        v52 = *(v0 + 184);

        __break(1u);
        return _swift_continuation_await(v50);
      }

      v42 = *(v41 + 8 * v35 + 32);
    }

    v43 = v42;
    *(v0 + 304) = v42;
    *(v0 + 312) = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      v44 = *(v0 + 296);
      v45 = *(v0 + 200);
      v46 = *(v0 + 208);
      v47 = *(v0 + 192);
      v48 = LiteMessageServiceSession.offGridMessenger(for:)(*(v0 + 336) & 1);
      *(v0 + 320) = v48;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = specialized LiteMessageServiceSession.sendEncryptedMessageSegments(_:to:item:context:);
      v49 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMd, &_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
      *(v0 + 104) = &block_descriptor_7;
      *(v0 + 112) = v49;
      [v48 sendEncryptedOffGridMessage:v43 options:v44 completion:v0 + 80];
      v50 = v0 + 16;

      return _swift_continuation_await(v50);
    }

    __break(1u);
    goto LABEL_23;
  }

  v36 = *(v0 + 240);
  v37 = *(v0 + 248);
  v38 = *(v0 + 232);

  v39 = *(v0 + 8);

  return v39();
}

{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[31];

  swift_willThrow();

  v6 = v0[41];
  v8 = v0[29];
  v7 = v0[30];

  v9 = v0[1];

  return v9();
}

uint64_t LiteTopic.init(with:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  v8 = Logger.liteSession.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v8, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_0, v9, v10, "Unsupported service type: %ld", v11, 0xCu);
  }

  (*(v3 + 8))(v6, v2);
  return 2;
}

iMessageLite::LiteTopic_optional __swiftcall LiteTopic.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LiteTopic.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = iMessageLite_LiteTopic_smsLiteRelay;
  }

  else
  {
    v4.value = iMessageLite_LiteTopic_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t LiteTopic.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiteTopic(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "DisableSplitLiteMessages";
  }

  else
  {
    v5 = "com.apple.madrid.lite";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (*a2)
  {
    v8 = "com.apple.madrid.lite";
  }

  else
  {
    v8 = "DisableSplitLiteMessages";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteTopic()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LiteTopic()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteTopic()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteTopic@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LiteTopic.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LiteTopic(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "com.apple.madrid.lite";
  }

  else
  {
    v3 = "DisableSplitLiteMessages";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id IDSOffGridMessageContext.topic.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isInternalInstall];

    if (v3 && (v4 = [objc_opt_self() sharedInstance], v5 = String._bridgeToObjectiveC()(), v6 = String._bridgeToObjectiveC()(), v7 = objc_msgSend(v4, "getBoolFromDomain:forKey:", v5, v6), v4, v5, v6, (v7 & 1) != 0))
    {
      v8 = 1;
    }

    else
    {
      v8 = LiteTopic.init(with:)([v0 serviceType]);
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id IDSOffGridMessageContext.command.getter()
{
  if ((IDSOffGridMessageContext.topic.getter() & 1) == 0)
  {
    return &stru_20 + 68;
  }

  return [v0 __im_underlyingCommand];
}

id LiteMessageServiceSession.joinedChat(with:)(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 chatForChatIdentifier:v5 style:45 updatingAccount:0];

  if (!v6)
  {
    v7 = String._bridgeToObjectiveC()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_53390;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_53380;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = v11;
    *(inited + 80) = a1;
    *(inited + 88) = a2;
    swift_bridgeObjectRetain_n();
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayDestroy();
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *(v8 + 32) = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 joinChat:v7 handleInfo:isa style:45 groupID:0 joinProperties:0];

    v14 = String._bridgeToObjectiveC()();
    v6 = [v2 chatForChatIdentifier:v14 style:45];
  }

  return v6;
}

id LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 canonicalFormOfID:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [a4 service];
  v9 = [v8 internalName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = IMCopyGUIDForChat();

  if (!v10)
  {
    return 0;
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 existingChatWithGUID:v10];

  result = v12;
  if (!v12)
  {
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for versionIdentifier()
{
  v0 = type metadata accessor for Schema.Version();
  __swift_allocate_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  __swift_project_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  return Schema.Version.init(_:_:_:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.versionIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Schema.Version();

  return __swift_project_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.versionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.versionIdentifier.setter(uint64_t a1)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LiteMessageSegmentStoreSchemaV1.versionIdentifier.modify())()
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Schema.Version();
  __swift_project_value_buffer(v0, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  return static LiteMessageSegmentStoreSchemaV1.versionIdentifier.modify;
}

uint64_t key path setter for static LiteMessageSegmentStoreSchemaV1.versionIdentifier : LiteMessageSegmentStoreSchemaV1.Type(uint64_t a1)
{
  if (one-time initialization token for versionIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = __swift_project_value_buffer(v2, static LiteMessageSegmentStoreSchemaV1.versionIdentifier);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static LiteMessageSegmentStoreSchemaV1.models.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_53390;
  v1 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  v2 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  result = type metadata singleton initialization cache for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment;
  if (!type metadata singleton initialization cache for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.init(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t partial apply for closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.setter();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v3[2] = (*a1)[4];
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[6];
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v8 = v3[1];
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.init(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t partial apply for closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.setter();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  (*a1)[1] = (*a1)[2];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.init(uint64_t a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_getKeyPath();
  v4 = type metadata accessor for Date();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter(uint64_t a1)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t partial apply for closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.setter();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v4[7] = v8;
  v4[8] = v9;
  *v4 = v1;
  swift_getKeyPath();
  v4[9] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 24);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    v2[1] = v9;
    KeyPath = swift_getKeyPath();
    v13[0] = v13;
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    v2[2] = v9;
    v12 = swift_getKeyPath();
    v13[0] = v13;
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);
  free(v2);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.init(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  swift_getKeyPath();
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return outlined consume of Data._Representation(a1, a2);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.getter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter()
{
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t partial apply for closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.setter();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.data.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v3[2] = (*a1)[4];
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[6];
  swift_getKeyPath();
  if (a2)
  {
    outlined copy of Data._Representation(v6, v5);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v6, v5);

    outlined consume of Data._Representation(*v3, v3[1]);
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v6, v5);
  }

  free(v3);
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(consolidationIdentifier:segmentNumber:dateReceived:data:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v26 = a3;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 48);
  v15 = *(v6 + 52);
  v16 = swift_allocObject();
  v16[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v17 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v30 = v6;
  v31 = v6;
  v32 = v17;
  v33 = v17;
  v16[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v16 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  v18 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v16[5]);
  swift_getKeyPath();
  v30 = a1;
  v31 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v19 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v16[5]);
  swift_getKeyPath();
  v30 = v26;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v10 + 16))(v13, v29, v9);
  v20 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v16[5]);
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21 = *(v10 + 8);
  v21(v13, v9);
  v22 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v16[5]);
  swift_getKeyPath();
  v24 = v27;
  v23 = v28;
  v30 = v27;
  v31 = v28;
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21(v29, v9);
  outlined consume of Data._Representation(v24, v23);
  return v16;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.init(consolidationIdentifier:segmentNumber:dateReceived:data:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v26 = a5;
  v27 = a6;
  v28 = a4;
  v25 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  v7[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v16 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v29 = v15;
  v30 = v15;
  v31 = v16;
  v32 = v16;
  v7[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v7 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  v17 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v29 = a1;
  v30 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v18 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v29 = v25;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v11 + 16))(v14, v28, v10);
  v19 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20 = *(v11 + 8);
  v20(v14, v10);
  v21 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  swift_getKeyPath();
  v23 = v26;
  v22 = v27;
  v29 = v26;
  v30 = v27;
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20(v28, v10);
  outlined consume of Data._Representation(v23, v22);
  return v7;
}

uint64_t variable initialization expression of LiteMessageSegmentStoreSchemaV1.LiteMessageSegment._$backingData@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  a1[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  outlined init with take of LiteMessageContent(a1, v1 + 16);
  return swift_endAccess();
}

void (*LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of LiteMessageContent(v1 + 16, v4);
  return LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify;
}

void LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.persistentBackingData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of LiteMessageContent(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    outlined init with take of LiteMessageContent((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    outlined init with take of LiteMessageContent(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t static LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_54CA0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__allocating_init(backingData:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  *&v7 = v1;
  *(&v7 + 1) = v1;
  v8 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v9 = v8;
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of LiteMessageContent(a1, &v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  outlined init with take of LiteMessageContent(&v7, (v5 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t *LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.init(backingData:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0C_AIQo_MR);
  v6[0] = v4;
  v6[1] = v4;
  v7 = _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  v8 = v7;
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of LiteMessageContent(a1, v6);
  (*(*v2 + 360))(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtCO12iMessageLite31LiteMessageSegmentStoreSchemaV118LiteMessageSegment___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 368))();
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment;
}

void protocol witness for PersistentModel.persistentBackingData.modify in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  v1 = *v0;
  type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
  _s12iMessageLite0bA20SegmentStoreSchemaV1O0baC0CAE9SwiftData15PersistentModelAAWlTm_0(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
  return PersistentModel.id.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static PersistentModel.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t type metadata completion function for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t LiteMessageType.init(associatedMessageType:)(uint64_t a1)
{
  if (a1 == 3007 || a1 == 1000)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteMessageType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LiteMessageType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t specialized LiteMessageType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageType and conformance LiteMessageType()
{
  result = lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType;
  if (!lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageType and conformance LiteMessageType);
  }

  return result;
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for LiteMessageContext();
  v4[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[24] = v7;
  v8 = *(v7 - 8);
  v4[25] = v8;
  v9 = *(v8 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v14;
  v4[33] = v13;

  return _swift_task_switch(LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:), v14, v13);
}

void LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)()
{
  v114 = v0;
  v1 = v0[29];
  v107 = v0[28];
  v109 = v0[30];
  v105 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v103 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  _StringGuts.grow(_:)(18);

  v113[0] = 0x6C65722D6574696CLL;
  v113[1] = 0xEB000000002D7961;
  v6 = *v3;
  v7 = v3[1];
  v8._countAndFlagsBits = *v3;
  v8._object = v7;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x617461642ELL;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v103 writeDataPayloadToDisk:isa fileName:v10];

  type metadata accessor for IMMessageItem();
  (*(v1 + 16))(v109, v3 + *(v105 + 36), v107);

  outlined copy of Data._Representation(v4, v2);
  v11 = specialized @nonobjc IMMessageItem.init(liteRelayIdentifier:liteRelay:date:)(v6, v7, v4, v2, v109);
  v0[34] = v11;
  outlined consume of Data._Representation(v4, v2);
  v12 = v11;
  v13 = [v12 cloudKitChatID];
  if (!v13)
  {
    v39 = v0[31];

    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    v41 = 2;
LABEL_12:
    *v40 = v41;
LABEL_13:
    swift_willThrow();
LABEL_14:

    v64 = v0[30];
    v66 = v0[26];
    v65 = v0[27];
    v68 = v0[22];
    v67 = v0[23];

    v69 = v0[1];

    v69();
    return;
  }

  v14 = v0[20];
  v15 = v13;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v0[35] = v18;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  if (LiteMessageServiceSession.hasBlockedFromHandleID(_:)(v19))
  {
    v110 = v16;
    v20 = v0[31];
    v21 = v0[25];
    v22 = v0[26];
    v23 = v0[24];
    v24 = v0[22];
    v25 = v0[19];

    v26 = Logger.liteSession.unsafeMutableAddressor();
    (*(v21 + 16))(v22, v26, v23);
    outlined init with copy of LiteMessageContext(v25, v24);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[25];
    v31 = v0[26];
    v32 = v0[24];
    v33 = v0[22];
    if (v29)
    {
      v34 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v34 = 136315394;
      v104 = v32;
      v106 = v31;
      v35 = *v33;
      v36 = v33[1];

      outlined destroy of LiteMessageContext(v33);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v113);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v18, v113);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_0, v27, v28, "Dropping message %s, sender %s is blocked", v34, 0x16u);
      swift_arrayDestroy();

      (*(v30 + 8))(v106, v104);
    }

    else
    {

      outlined destroy of LiteMessageContext(v33);
      (*(v30 + 8))(v31, v32);
    }

    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    v41 = 3;
    goto LABEL_12;
  }

  v42 = v0[20];
  v43 = *(v0[19] + *(v0[21] + 48));
  LiteMessageServiceSession.joinedChat(with:command:)(v16, v18, v43);
  v0[36] = v44;
  if (!v44)
  {
    v70 = v0[31];

    lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError();
    swift_allocError();
    *v71 = v16;
    *(v71 + 8) = v18;
    *(v71 + 16) = 0;
    goto LABEL_13;
  }

  v45 = v44;
  v46 = v0[20];
  if (LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)())
  {
    v47 = v0[31];
    v48 = v0[27];
    v50 = v0[24];
    v49 = v0[25];
    v51 = v0[23];
    v52 = v0[19];

    v53 = Logger.liteSession.unsafeMutableAddressor();
    (*(v49 + 16))(v48, v53, v50);
    outlined init with copy of LiteMessageContext(v52, v51);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[27];
    v18 = v0[24];
    v58 = v0[25];
    v43 = v0[23];
    if (v56)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 136315138;
      v108 = v12;
      v111 = v57;
      v113[0] = v60;
      v62 = *v43;
      v61 = v43[1];

      outlined destroy of LiteMessageContext(v43);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, v113);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v54, v55, "Already received message with identifier %s, dropping incoming message", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);

      (*(v58 + 8))(v111, v18);
LABEL_31:
      v84 = v0[30];
      v85 = v0[26];
      v86 = v0[27];
      v88 = v0[22];
      v87 = v0[23];

      v89 = v0[1];
      v90 = v0[36];

      v89(v90);
      return;
    }

LABEL_30:

    outlined destroy of LiteMessageContext(v43);
    (*(v58 + 8))(v57, v18);
    goto LABEL_31;
  }

  v112 = v16;
  v72 = v0[21];
  v58 = v0[19];
  v73 = *(v58 + 32);
  v74 = *(v58 + 40);
  v75._countAndFlagsBits = v73;
  v75._object = v74;
  IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v75);
  v76 = String._bridgeToObjectiveC()();
  [v12 setDestinationCallerID:v76];

  v77 = 0x80000000001;
  if (v43 == (&stru_68.addr + 7))
  {
    v77 = 0x80000000005;
  }

  v78 = 5;
  if (v43 != (&stru_68.addr + 7))
  {
    v78 = 1;
  }

  if (*(v58 + *(v72 + 40)))
  {
    v79 = v77;
  }

  else
  {
    v79 = v78;
  }

  [v12 setFlags:{v79, v103}];
  v80 = *(v58 + 16);
  v81 = *(v58 + 24);
  v82 = String._bridgeToObjectiveC()();
  [v12 setFallbackHash:v82];

  if (v43 == (&stru_68.addr + 7))
  {
    v91 = [objc_opt_self() sharedInstance];
    if (v91)
    {
      v92 = v91;
      v54 = [v91 anySessionForServiceName:IMServiceNameSMS];

      if (v54)
      {
        goto LABEL_36;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v43 != (&stru_68.addr + 4))
  {
LABEL_44:
    v100 = v0[31];

    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v101 = 4;
    swift_willThrow();

    goto LABEL_14;
  }

  v83 = [objc_opt_self() sharedInstance];
  if (!v83)
  {
    __break(1u);
    goto LABEL_47;
  }

  v57 = v83;
  v54 = [v83 anySessionForServiceName:IMServiceNameSatelliteSMS];

  if (!v54)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_36:
  v93 = [v54 account];
  v0[37] = v93;

  if (!v93)
  {
    goto LABEL_44;
  }

  v94 = [v93 session];
  if (!v94)
  {
    goto LABEL_40;
  }

  v95 = v94;
  v96 = [v45 chatIdentifier];
  if (!v96)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v97 = v96;
  [v95 didReceiveMessage:v12 forChat:v96 style:45 fromIDSID:0];

LABEL_40:
  if (v43 != (&stru_68.addr + 7))
  {
    v102 = v0[31];

    goto LABEL_31;
  }

  v98 = swift_task_alloc();
  v0[38] = v98;
  *v98 = v0;
  v98[1] = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  v99 = v0[20];

  LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:)(v112, v18, v73, v74);
}

uint64_t LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:)()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v5 = *v0;

  v6 = swift_task_alloc();
  v1[39] = v6;
  *v6 = v5;
  v6[1] = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  v7 = v1[34];
  v8 = v1[20];

  return LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)(v7, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  }

  else
  {
    v7 = LiteMessageServiceSession.storeAndBroadcastDecryptedRelayMessageData(_:context:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_53390;
  v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[16] = v7;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v5;
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  Date.init()();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 updateProperties:isa];

  v9 = v0[30];
  v10 = v0[26];
  v11 = v0[27];
  v13 = v0[22];
  v12 = v0[23];

  v14 = v0[1];
  v15 = v0[36];

  return v14(v15);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];

  v5 = v0[40];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

void LiteMessageServiceSession.joinedChat(with:command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 != 143)
  {
    if (a3 != 140)
    {
      goto LABEL_14;
    }

    v11 = [objc_opt_self() sharedInstance];
    if (!v11)
    {
      __break(1u);
      goto LABEL_19;
    }

    v12 = v11;
    v13 = [v11 anySessionForServiceName:IMServiceNameSatelliteSMS];

    if (v13)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v14 = [objc_opt_self() sharedInstance];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v13 = [v14 anySessionForServiceName:IMServiceNameSMS];

  if (!v13)
  {
LABEL_20:
    __break(1u);
    return;
  }

LABEL_8:
  v16 = [v13 account];

  if (v16)
  {
    if (!LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(a1, a2, 45, v16))
    {
      v17 = [v16 session];
      if (v17)
      {
        v18 = v17;
        v19 = String._bridgeToObjectiveC()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_53390;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_53380;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v22;
        *(inited + 48) = a1;
        *(inited + 56) = a2;
        *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = v23;
        *(inited + 80) = a1;
        *(inited + 88) = a2;
        swift_bridgeObjectRetain_n();
        v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
        swift_arrayDestroy();
        *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
        *(v20 + 32) = v24;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v18 didJoinChat:v19 style:45 displayName:0 groupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:isa];
      }

      LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(a1, a2, 45, v16);
    }

    return;
  }

LABEL_14:
  v26 = Logger.liteSession.unsafeMutableAddressor();
  (*(v7 + 16))(v10, v26, v6);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Could not find an account for sending SMS", v29, 2u);
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(LiteMessageServiceSession.sendMessageUsingSMS(message:chat:), v8, v7);
}

id LiteMessageServiceSession.sendMessageUsingSMS(message:chat:)()
{
  v60 = v0;
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result anySessionForServiceName:IMServiceNameSMS];

  if (!v3)
  {
    v31 = *(v0 + 72);
    v33 = *(v0 + 48);
    v32 = *(v0 + 56);
    v34 = *(v0 + 40);

    v35 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v33 + 16))(v32, v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Could not a SMS service session", v38, 2u);
    }

    v40 = *(v0 + 48);
    v39 = *(v0 + 56);
    v41 = *(v0 + 40);

    (*(v40 + 8))(v39, v41);
    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v4 = *(v0 + 16);
  v5 = [*(v0 + 24) style];
  v6 = [v4 fallbackHash];
  if (!v6)
  {
    v44 = *(v0 + 64);
    v43 = *(v0 + 72);
    v45 = *(v0 + 40);
    v46 = *(v0 + 48);

    v47 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v46 + 16))(v44, v47, v45);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "No fallback hash for SMS message.", v50, 2u);
    }

    v51 = *(v0 + 64);
    v52 = *(v0 + 40);
    v53 = *(v0 + 48);

    (*(v53 + 8))(v51, v52);
    lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError();
    swift_allocError();
    *v54 = 5;
    swift_willThrow();

LABEL_13:
    v56 = *(v0 + 56);
    v55 = *(v0 + 64);

    v30 = *(v0 + 8);
    goto LABEL_14;
  }

  v57 = v5;
  v7 = *(v0 + 16);
  v8 = v6;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  result = [v7 guid];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:)(v15, v17, v9, v11);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v59 = LiteMessageServiceSession.pendingSMSMessages.getter();
  specialized Set._Variant.insert(_:)(&v58, v18, v20, v22, v24);

  LiteMessageServiceSession.pendingSMSMessages.setter(v59);
  result = [v13 chatIdentifier];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v25 = result;
  v27 = *(v0 + 64);
  v26 = *(v0 + 72);
  v28 = *(v0 + 56);
  v29 = *(v0 + 16);

  [v3 sendMessage:v29 toChat:v25 style:v57];

  v30 = *(v0 + 8);
LABEL_14:

  return v30();
}

void LiteMessageServiceSession.handleSMSMessageSent(notification:)(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v97 - v8;
  v10 = type metadata accessor for Logger();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v97 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v97 - v19;
  __chkstk_darwin(v18);
  v22 = v97 - v21;
  v23 = Notification.userInfo.getter();
  if (!v23)
  {
LABEL_23:
    v45 = Logger.liteRelaySession.unsafeMutableAddressor();
    v47 = v103;
    v46 = v104;
    (*(v103 + 16))(v14, v45, v104);
    v48 = v3[2];
    v48(v9, a1, v2);
    v48(v7, a1, v2);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v49, v50))
    {

      v59 = v3[1];
      v59(v7, v2);
      v59(v9, v2);
      (*(v47 + 8))(v14, v46);
      return;
    }

    v51 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v111[0] = v100;
    *v51 = 136315394;
    v52 = Notification.userInfo.getter();
    LODWORD(v101) = v50;
    v102 = 0x3E6C696E3CLL;
    if (v52)
    {
      v53 = v52;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v54;
      AnyHashable.init<A>(_:)();
      if (*(v53 + 16))
      {
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v107);
        if (v56)
        {
          outlined init with copy of Any(*(v53 + 56) + 32 * v55, &v109);
          outlined destroy of AnyHashable(&v107);

          if (*(&v110 + 1))
          {
            if (swift_dynamicCast())
            {
              v57 = v107;
              v58 = v108;
              goto LABEL_35;
            }

LABEL_34:
            v58 = 0xE500000000000000;
            v57 = 0x3E6C696E3CLL;
LABEL_35:
            v60 = v3[1];
            v60(v9, v2);
            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v111);

            *(v51 + 4) = v61;
            *(v51 + 12) = 2080;
            v62 = Notification.userInfo.getter();
            if (v62)
            {
              v63 = v62;
              v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v106 = v64;
              AnyHashable.init<A>(_:)();
              if (*(v63 + 16))
              {
                v65 = specialized __RawDictionaryStorage.find<A>(_:)(&v107);
                if (v66)
                {
                  outlined init with copy of Any(*(v63 + 56) + 32 * v65, &v109);
                  outlined destroy of AnyHashable(&v107);

                  if (*(&v110 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v67 = v108;
                      v102 = v107;
LABEL_45:
                      v60(v7, v2);
                      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v67, v111);

                      *(v51 + 14) = v68;
                      _os_log_impl(&dword_0, v49, v101, "Cannot send delivery receipt for messageID %s chatIdentifier %s", v51, 0x16u);
                      swift_arrayDestroy();

                      (*(v103 + 8))(v14, v104);
                      return;
                    }

LABEL_44:
                    v67 = 0xE500000000000000;
                    goto LABEL_45;
                  }

LABEL_43:
                  outlined destroy of TaskPriority?(&v109, &_sypSgMd, &_sypSgMR);
                  goto LABEL_44;
                }
              }

              outlined destroy of AnyHashable(&v107);
            }

            v109 = 0u;
            v110 = 0u;
            goto LABEL_43;
          }

LABEL_33:
          outlined destroy of TaskPriority?(&v109, &_sypSgMd, &_sypSgMR);
          goto LABEL_34;
        }
      }

      outlined destroy of AnyHashable(&v107);
    }

    v109 = 0u;
    v110 = 0u;
    goto LABEL_33;
  }

  v24 = v23;
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(&v107), (v27 & 1) == 0))
  {
LABEL_22:

    outlined destroy of AnyHashable(&v107);
    goto LABEL_23;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v26, &v109);
  outlined destroy of AnyHashable(&v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:

    goto LABEL_23;
  }

  v100 = v105;
  v101 = v106;
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v28;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v107), (v30 & 1) == 0))
  {

    goto LABEL_22;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v29, &v109);
  outlined destroy of AnyHashable(&v107);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_46;
  }

  v97[0] = v105;
  v97[1] = v106;
  v31 = LiteMessageServiceSession.pendingSMSMessages.getter();
  v32 = 0;
  v34 = v31 + 56;
  v33 = *(v31 + 56);
  v99 = v31;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  while (v37)
  {
LABEL_16:
    v40 = (*(v99 + 48) + ((v32 << 11) | (32 * __clz(__rbit64(v37)))));
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[3];
    v98 = v40[2];
    if (v41 == v100 && v42 == v101)
    {
      v41 = v100;
LABEL_54:

      v78 = v43;

      v107 = LiteMessageServiceSession.pendingSMSMessages.getter();
      specialized Set._Variant.remove(_:)();
      v80 = v79;
      LiteMessageServiceSession.pendingSMSMessages.setter(v107);
      if (v80)
      {

        v81 = Logger.liteRelaySession.unsafeMutableAddressor();
        v83 = v103;
        v82 = v104;
        (*(v103 + 16))(v22, v81, v104);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_0, v84, v85, "Successfully sent Satellite SMS Relay message", v86, 2u);
        }

        (*(v83 + 8))(v22, v82);
        v87 = String._bridgeToObjectiveC()();

        v88 = String._bridgeToObjectiveC()();

        [v102 sendRelayDeliveryReceiptForMessageID:v87 toChat:v88];
      }

      else
      {

        v89 = Logger.liteRelaySession.unsafeMutableAddressor();
        v91 = v103;
        v90 = v104;
        (*(v103 + 16))(v20, v89, v104);

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *v94 = 136315394;

          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v107);

          *(v94 + 4) = v95;
          *(v94 + 12) = 2080;

          v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v78, &v107);

          *(v94 + 14) = v96;
          _os_log_impl(&dword_0, v92, v93, "Pending SMS message with guid %s fallback hash %s could not be removed from the pending SMS messages set. Cannot send delivery receipt.", v94, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v91 + 8))(v20, v90);
      }

      return;
    }

    v37 &= v37 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_54;
    }
  }

  while (1)
  {
    v39 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v39);
    ++v32;
    if (v37)
    {
      v32 = v39;
      goto LABEL_16;
    }
  }

  v69 = Logger.liteRelaySession.unsafeMutableAddressor();
  v71 = v103;
  v70 = v104;
  (*(v103 + 16))(v17, v69, v104);
  v72 = v101;

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v107 = v76;
    *v75 = 136315138;
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v72, &v107);

    *(v75 + 4) = v77;
    _os_log_impl(&dword_0, v73, v74, "Message with ID %s is not a pending SMS message. No need to send a satellite relay delivery receipt.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
  }

  else
  {
  }

  (*(v71 + 8))(v17, v70);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(*v5 + 40);
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
    while (1)
    {
      v15 = *(v9 + 48) + 32 * v13;
      v25 = *v15;
      v27 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = (*(v9 + 48) + 32 * v13);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    *a1 = *v19;
    a1[1] = v20;
    a1[2] = v21;
    a1[3] = v22;

    return 0;
  }

  else
  {
LABEL_5:
    v16 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v26;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = -1 << *(v13 + 32);
  a5 = result & ~v15;
  if ((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
    do
    {
      v17 = *(v13 + 48) + 32 * a5;
      v24 = *v17;
      v25 = *(v17 + 16);
      v26 = *(v17 + 24);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v19 = (*(v18 + 48) + 32 * a5);
  *v19 = v10;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
  while (1)
  {
    v7 = *(v1 + 48) + 32 * v5;
    v17 = *v7;
    v19 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v18 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v18;
  }

  v12 = (*(v11 + 48) + 32 * v5);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  specialized _NativeSet._delete(at:)(v5);
  result = v13;
  *v0 = v18;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
      do
      {
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 32 * v6;
        v23 = *v13;
        v24 = *(v13 + 16);
        v25 = *(v13 + 24);
        v14 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 32 * v2);
            v19 = (v17 + 32 * v6);
            if (v2 != v6 || v18 >= v19 + 2)
            {
              v11 = v19[1];
              *v18 = *v19;
              v18[1] = v11;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

id specialized @nonobjc IMMessageItem.init(liteRelayIdentifier:liteRelay:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = Date._bridgeToObjectiveC()().super.isa;
  v17 = 0;
  v9 = [swift_getObjCClassFromMetadata() messageItemWithLiteRelayIdentifier:v6 liteRelayData:isa date:v8 error:&v17];

  v10 = v17;
  if (v9)
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a5, v11);
  }

  else
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 8))(a5, v15);
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError()
{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError;
  if (!lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageServiceSession.LiteRelayError and conformance LiteMessageServiceSession.LiteRelayError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageServiceSession.LiteRelayError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageServiceSession.LiteRelayError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = type metadata accessor for Logger();
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[41] = v10;
  v5[42] = v9;

  return _swift_task_switch(LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:), v10, v9);
}

uint64_t LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)()
{
  v64 = v0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return _swift_continuation_await(v1);
  }

  v2 = v1;
  v3 = [v1 anySessionForServiceName:IMServiceNameSMS];

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [v3 account];
  v0[43] = v4;

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v0[35];
  v6 = LiteMessageServiceSession.chatForChatIdentifier(_:style:account:)(v0[33], v0[34], 45, v4);
  v0[44] = v6;
  if (!v6)
  {

LABEL_9:
    v27 = v0[40];
    v29 = v0[33];
    v28 = v0[34];

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v30 = v29;
    *(v30 + 8) = v28;
    *(v30 + 16) = 45;
    swift_willThrow();

    goto LABEL_10;
  }

  v7 = v6;
  v8 = v0[35];
  v9 = LiteMessageServiceSession.senderURI(for:)();
  v0[45] = v9;
  if (v9)
  {
    v62 = v9;
    v10 = v0[39];
    v12 = v0[36];
    v11 = v0[37];
    v13 = v0[32];
    v14 = Logger.liteRelaySession.unsafeMutableAddressor();
    v0[46] = v14;
    v15 = *(v11 + 16);
    v0[47] = v15;
    v0[48] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v10, v14, v12);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[39];
    v20 = v0[36];
    v21 = v0[37];
    if (v18)
    {
      v23 = v0[31];
      v22 = v0[32];
      v61 = v0[39];
      v24 = swift_slowAlloc();
      v60 = v20;
      v25 = swift_slowAlloc();
      v63 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v63);
      _os_log_impl(&dword_0, v16, v17, "Sending relay delivery receipt using for message %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);

      v26 = *(v21 + 8);
      v26(v61, v60);
    }

    else
    {

      v26 = *(v21 + 8);
      v26(v19, v20);
    }

    v0[49] = v26;
    v37 = v0[35];
    v39 = v0[31];
    v38 = v0[32];
    v40 = [objc_allocWithZone(IDSOffGridDeliveryOptions) init];
    v0[50] = v40;
    [v40 setTransportType:LiteMessageServiceSession.transportType.getter()];
    [v40 setCommand:146];
    v41 = String._bridgeToObjectiveC()();
    v42 = IDSGetUUIDData();

    if (v42)
    {
      v43 = v0[35];
      v45 = v0[31];
      v44 = v0[32];
      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v0[51] = v46;
      v0[52] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_53390;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v50;
      *(inited + 48) = v46;
      *(inited + 56) = v48;
      outlined copy of Data._Representation(v46, v48);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32);
      v51 = LiteMessageServiceSession.offGridRelayMessenger.getter();
      v0[53] = v51;
      v52 = String._bridgeToObjectiveC()();
      v0[54] = v52;
      v53 = v40;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v0[55] = isa;

      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
      v55 = swift_continuation_init();
      v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo23IDSOffGridServerMessageC_SSts5Error_pGMd, &_sSccySo23IDSOffGridServerMessageC_SSts5Error_pGMR);
      v0[20] = _NSConcreteStackBlock;
      v0[21] = 1107296256;
      v0[22] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
      v0[23] = &block_descriptor_8;
      v0[24] = v55;
      [v51 __im_sendRelayDeliveryReceiptForMessageID:v52 senderURI:v62 options:v53 topLevelFields:isa completion:?];
      v1 = v0 + 2;

      return _swift_continuation_await(v1);
    }

    v56 = v0[40];
    v58 = v0[31];
    v57 = v0[32];

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v59 = v58;
    *(v59 + 8) = v57;
    *(v59 + 16) = 512;
    swift_willThrow();
  }

  else
  {
    v35 = v0[40];

    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v36 = xmmword_537F0;
    *(v36 + 16) = 768;
    swift_willThrow();
  }

LABEL_10:
  v32 = v0[38];
  v31 = v0[39];

  v33 = v0[1];

  return v33();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 448) = v3;
  v4 = *(v1 + 336);
  v5 = *(v1 + 328);
  if (v3)
  {
    v6 = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
  }

  else
  {
    v6 = LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v41 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v36 = *(v0 + 376);
  v38 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);
  v8 = *(v0 + 288);
  v9 = *(v0 + 256);

  v10 = *(v0 + 240);
  v33 = *(v0 + 232);

  v36(v7, v5, v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = v10;

  v14 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 392);
  v37 = *(v0 + 400);
  v39 = *(v0 + 416);
  v16 = *(v0 + 352);
  v17 = *(v0 + 360);
  v34 = v16;
  v35 = *(v0 + 408);
  v18 = *(v0 + 344);
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  v21 = *(v0 + 288);
  if (v14)
  {
    v31 = *(v0 + 288);
    v32 = *(v0 + 304);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v30 = *(v0 + 392);
    v24 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v40);
    *(v24 + 12) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v13, &v40);

    *(v24 + 14) = v25;
    _os_log_impl(&dword_0, v11, v12, "Successfully sent relay delivery receipt for message %s with sent identifier %s", v24, 0x16u);
    swift_arrayDestroy();

    outlined consume of Data._Representation(v35, v39);
    v30(v32, v31);
  }

  else
  {

    outlined consume of Data._Representation(v35, v39);

    v15(v19, v21);
  }

  v27 = *(v0 + 304);
  v26 = *(v0 + 312);

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v16 = v0[54];
  v4 = v0[51];
  v5 = v0[52];
  v6 = v0[50];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[43];
  v10 = v0[40];

  swift_willThrow();

  outlined consume of Data._Representation(v4, v5);
  v11 = v0[56];
  v13 = v0[38];
  v12 = v0[39];

  v14 = v0[1];

  return v14();
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for LiteOutgoingMessageContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteOutgoingMessageContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void static Double.defaultSMSDowngradeTimeInterval.getter()
{
  v0 = [objc_opt_self() sharedInstanceForBagType:1];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      [v3 doubleValue];
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall LiteMessageServiceSession.prepareForFirstUnlock()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  [v7 addListener:v0];

  v8 = [v6 sharedInstance];
  LOBYTE(v7) = [v8 isUnderFirstDataProtectionLock];

  if (v7)
  {
    v9 = Logger.liteSession.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v9, v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Deferring first unlock tasks", v12, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {

    LiteMessageServiceSession.performFirstUnlockTasks()();
  }
}

Swift::Void __swiftcall LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Logger.liteSession.unsafeMutableAddressor();
  (*(v7 + 16))(v10, v11, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Performing first unlock tasks", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v18);

  LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()();
}

uint64_t closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v1 = *(v0 + 16);
  v2 = LiteMessageServiceSession.segmentStore.getter();
  *(v0 + 48) = v2;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.performFirstUnlockTasks(), v2, 0);
}

{
  v1 = v0[6];
  LiteMessageSegmentStore.deleteAbandonedMessageSegments()();

  v2 = v0[4];
  v3 = v0[5];

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v2, v3);
}

uint64_t sub_4A690()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.performFirstUnlockTasks()(v3, v4, v5, v2);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A7CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

BOOL LiteMessageServiceSession.hasExistingMessageWithLiteIdentifier(_:in:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 messageWithGUID:v1];

  if (v2)
  {
  }

  return v2 != 0;
}

id LiteMessageServiceSession.isSatelliteConnectionActive.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedController];
  v3 = [v2 *a1];

  return v3;
}

uint64_t LiteMessageServiceSession.transportType.getter()
{
  if (LiteMessageServiceSession.isFakingSatelliteConnection.getter())
  {
    return 1;
  }

  v0 = [objc_opt_self() sharedController];
  v1 = [v0 isSatelliteConnectionActive];

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall LiteMessageServiceSession.satelliteStateDidChange(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  LiteMessageServiceSession.lastSatelliteStateChange.setter(v8);
  if (!a1)
  {
    v9 = [objc_opt_self() sharedInstance];
    v10 = [v9 cachedChats];

    type metadata accessor for IMDChat();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_4:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v14 = *(v11 + 8 * i + 32);
          }

          v15 = v14;
          [v14 updatePendingIncomingSatelliteMessageCount:0];
        }
      }
    }
  }
}

unint64_t type metadata accessor for IMDChat()
{
  result = lazy cache variable for type metadata for IMDChat;
  if (!lazy cache variable for type metadata for IMDChat)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IMDChat);
  }

  return result;
}

uint64_t static LiteMessageSegmentStoreMigrationPlan.schemas.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15VersionedSchema_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15VersionedSchema_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_53390;
  v1 = lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1();
  *(v0 + 32) = &type metadata for LiteMessageSegmentStoreSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IMMessageItem.IMMessageItemContentType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized IMMessageItem.IMMessageItemContentType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

id IMMessageItem.liteAssociatedMessageSummaryInfo()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &_swiftEmptyDictionarySingleton;
  v8 = [objc_allocWithZone(IMPluginPayload) initWithMessageItem:v0];
  if (!v8)
  {
LABEL_6:
    if (![v0 type])
    {
      v33 = [v0 fileTransferGUIDs];
      if (!v33)
      {
        v21 = 1;
        goto LABEL_8;
      }

      v34 = v33;
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!v35[2])
      {

        v21 = 1;
        goto LABEL_8;
      }

      v37 = v35[4];
      v36 = v35[5];

      v38 = [objc_opt_self() sharedInstance];
      if (v38)
      {
        v39 = v38;
        v40 = String._bridgeToObjectiveC()();

        v41 = [v39 transferForGUID:v40];

        if (v41)
        {
          v42 = [v41 type];
          if (IMUTTypeIsImage() || IMUTTypeIsSupportedAnimatedImage())
          {

            v21 = 3;
          }

          else if (IMUTTypeIsMovie())
          {

            v21 = 7;
          }

          else if (IMUTTypeIsVCard())
          {

            v21 = 4;
          }

          else if (IMUTTypeIsAudio())
          {

            v21 = 2;
          }

          else if (IMUTTypeIsMap())
          {

            v21 = 6;
          }

          else if (IMUTTypeIsCalendar())
          {

            v21 = 5;
          }

          else if (IMUTTypeIsPass())
          {

            v21 = 8;
          }

          else
          {
            IsWalletOrder = IMUTTypeIsWalletOrder();

            if (IsWalletOrder)
            {
              v21 = 10;
            }

            else
            {
              v21 = 0;
            }
          }

          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v21 = 0;
LABEL_8:
    *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v101 + 1) = v22;
    AnyHashable.init<A>(_:)();
    *(&v102 + 1) = &type metadata for Int;
    *&v101 = v21;
    outlined init with take of Any(&v101, v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(&v103);
    v24 = v99;
    v105 = v99;
    v25 = [v1 body];
    if (!v25)
    {
      return v105;
    }

    v26 = v25;
    v27 = [v25 string];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v101 + 1) = v31;
    AnyHashable.init<A>(_:)();
    *(&v102 + 1) = &type metadata for String;
    *&v101 = v28;
    *(&v101 + 1) = v30;
    outlined init with take of Any(&v101, v100);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v32);
LABEL_10:
    outlined destroy of AnyHashable(&v103);
    return v99;
  }

  v9 = v8;
  v10 = [v8 data];
  if (!v10)
  {

    goto LABEL_6;
  }

  v97 = v3;
  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v13;

  *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v101 + 1) = v14;
  AnyHashable.init<A>(_:)();
  v15 = [v9 pluginBundleID];
  v98 = v12;
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(&v102 + 1) = &type metadata for String;
    *&v101 = v17;
    *(&v101 + 1) = v19;
    v12 = v98;
    outlined init with take of Any(&v101, v100);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v99 = &_swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v20);
    outlined destroy of AnyHashable(&v103);
    v105 = v99;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(&v103, &v101);
    outlined destroy of TaskPriority?(&v101, &_sypSgMd, &_sypSgMR);
    outlined destroy of AnyHashable(&v103);
  }

  *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v101 + 1) = v43;
  AnyHashable.init<A>(_:)();
  v44 = [v9 pluginBundleID];
  if (v44)
  {
    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v96;
    if (v46 == v49 && v48 == v50)
    {

      v52 = 1;
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v52 = 9;
      if (v53)
      {
        v52 = 1;
      }
    }

    v12 = v98;
  }

  else
  {
    v52 = 0;
    v51 = v96;
  }

  *(&v102 + 1) = &type metadata for Int;
  *&v101 = v52;
  outlined init with take of Any(&v101, v100);
  v54 = v105;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v99 = v54;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v55);
  outlined destroy of AnyHashable(&v103);
  v56 = v99;
  v105 = v99;
  *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v101 + 1) = v57;
  AnyHashable.init<A>(_:)();
  v58 = specialized IMMessageItem.summary(from:)(v9);
  if (v59)
  {
    *(&v102 + 1) = &type metadata for String;
    *&v101 = v58;
    *(&v101 + 1) = v59;
    outlined init with take of Any(&v101, v100);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v60);
    outlined destroy of AnyHashable(&v103);
    v105 = v99;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(&v103, &v101);
    outlined destroy of TaskPriority?(&v101, &_sypSgMd, &_sypSgMR);
    outlined destroy of AnyHashable(&v103);
  }

  result = IMExtensionPayloadUnarchivingClasses();
  if (result)
  {
    v62 = result;
    v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = *(v63 + 16);
    if (!v64)
    {

      v65 = _swiftEmptyArrayStorage;
LABEL_36:
      v67 = specialized _arrayConditionalCast<A, B>(_:)(v65);

      v68 = objc_allocWithZone(NSKeyedUnarchiver);
      outlined copy of Data._Representation(v12, v51);
      v69 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
      outlined consume of Data._Representation(v12, v51);
      if (v67)
      {
        specialized _arrayForceCast<A, B>(_:)(v67);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;
      NSCoder.decodeObject(of:forKey:)();

      if (*(&v104 + 1))
      {
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
        if (swift_dynamicCast())
        {
          v71 = v101;
          *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v101 + 1) = v72;
          v73 = [v71 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v73)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v101 = 0u;
            v102 = 0u;
          }

          v103 = v101;
          v104 = v102;
          if (*(&v102 + 1))
          {
            if (swift_dynamicCast())
            {
              v74 = v100[0];
              type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMChat, IMChat_ptr);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v76 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
              v106._object = 0x8000000000056A70;
              v77._countAndFlagsBits = 0x73654D2040252031;
              v77._object = 0xEC00000065676173;
              v78.value._object = 0x8000000000056A50;
              v106._countAndFlagsBits = 0xD00000000000001BLL;
              v78.value._countAndFlagsBits = 0xD000000000000011;
              v79._countAndFlagsBits = 0;
              v79._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v77, v78, v76, v79, v106);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, "Bw");
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_53390;
              *(v80 + 56) = &type metadata for String;
              *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v80 + 32) = v74;

              v81 = static String.localizedStringWithFormat(_:_:)();
              v97 = v82;

              *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v101 + 1) = v83;
              AnyHashable.init<A>(_:)();
              *(&v102 + 1) = &type metadata for String;
              v101 = v74;
              outlined init with take of Any(&v101, v100);
              v84 = v105;
              v85 = swift_isUniquelyReferenced_nonNull_native();
              v99 = v84;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v85);
              outlined destroy of AnyHashable(&v103);
              v86 = v99;
              *&v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v101 + 1) = v87;
              AnyHashable.init<A>(_:)();
              *(&v102 + 1) = &type metadata for String;
              *&v101 = v81;
              *(&v101 + 1) = v97;
              outlined init with take of Any(&v101, v100);
              v88 = swift_isUniquelyReferenced_nonNull_native();
              v99 = v86;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, &v103, v88);

              outlined consume of Data._Representation(v98, v96);
              goto LABEL_10;
            }
          }

          else
          {

            outlined destroy of TaskPriority?(&v103, &_sypSgMd, &_sypSgMR);
          }
        }

        v51 = v96;
      }

      else
      {
        outlined destroy of TaskPriority?(&v103, &_sypSgMd, &_sypSgMR);
      }

      v89 = Logger.liteSession.unsafeMutableAddressor();
      v90 = v97;
      (*(v97 + 16))(v7, v89, v2);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "Failed to decode plugin payload dictionary.", v93, 2u);

        outlined consume of Data._Representation(v98, v51);
      }

      else
      {

        outlined consume of Data._Representation(v98, v51);
      }

      (*(v90 + 8))(v7, v2);
      return v105;
    }

    v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v63 + 16), 0);
    v66 = specialized Sequence._copySequenceContents(initializing:)(&v103, (v65 + 4), v64, v63);
    result = outlined consume of [IDSURI : NSNumber].Iterator._Variant();
    if (v66 == v64)
    {
      v12 = v98;
      goto LABEL_36;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of AnyHashable(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, &_sSo8NSObjectCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    outlined destroy of AnyHashable(*(v11 + 48) + 40 * v8);
    outlined init with take of Any((*(v11 + 56) + 32 * v8), a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v22);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of AnyHashable(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized IMMessageItem.IMMessageItemContentType.init(rawValue:)(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType()
{
  result = lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType;
  if (!lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMMessageItem.IMMessageItemContentType and conformance IMMessageItem.IMMessageItemContentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMMessageItem.IMMessageItemContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IMMessageItem.IMMessageItemContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t LiteMessageSendError.telemetryDescription.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) > 1u)
  {
    if (HIBYTE(a3) == 2)
    {
      return 0xD000000000000025;
    }

    if (!(a2 | a1) && !a3)
    {
      return 0xD000000000000028;
    }

    if (a1 == 1 && !a2 && !a3)
    {
      return 0xD000000000000025;
    }

    if (a1 != 2 || a2 || a3)
    {
      if (a1 != 3 || a2 || a3)
      {
        if (a1 != 4 || a2 || a3)
        {
          if (a1 != 5 || a2 || a3)
          {
            v5 = a1 == 6 && a2 == 0;
            if (v5 && a3 == 0)
            {
              return 0xD000000000000020;
            }

            else
            {
              return 0xD00000000000002ALL;
            }
          }

          else
          {
            return 0xD000000000000032;
          }
        }

        else
        {
          return 0xD000000000000026;
        }
      }

      else
      {
        return 0xD000000000000024;
      }
    }

    else
    {
      return 0xD000000000000029;
    }
  }

  else if (HIBYTE(a3))
  {
    return 0xD00000000000002DLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t Error.liteItemSendErrorCode.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    if (v12 == 3 && v9 == 4 && v10 == 0 && v11 == 0)
    {
      return 26;
    }

    outlined consume of LiteMessageSendError(v9, v10, v11, v12);
  }

  return 4;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA9SendErrorO(uint64_t a1)
{
  if ((*(a1 + 17) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageSendError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 17);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageSendError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LiteMessageSendError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

uint64_t BitCollection.bytes.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t BitCollection.init(bitsOf:)(uint64_t *a1)
{
  v6 = xmmword_54310;
  v7 = 0;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v4 + 8))(&v6, v3, v4);
  if (v1)
  {
    outlined consume of Data._Representation(v6, *(&v6 + 1));
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v6;
  }
}

Swift::Void __swiftcall BitCollection.appendLeastSignificantBits(from:count:)(Swift::UInt8 from, Swift::UInt8 count)
{
  if (count)
  {
    v3 = 8 - count;
    if ((v3 & 0xFFFFFF00) != 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v4 = from << (v3 & 7);
    if ((8 - count) <= 8u)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 16);
    if ((v6 | 8) == 8)
    {
      *(v2 + 16) = count;
      v7 = *v2;
      if (v2[1] >> 62 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_12;
    }

    v9 = *v2;
    v8 = v2[1];
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_20;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v11 = v13 - v14;
      if (!v15)
      {
LABEL_20:
        if (!__OFSUB__(v11, 1))
        {
          if (v10 > 1)
          {
            if (v10 != 2)
            {
              v16 = 0;
              goto LABEL_31;
            }

            v18 = *(v9 + 16);
            v17 = *(v9 + 24);
            v15 = __OFSUB__(v17, v18);
            v16 = v17 - v18;
            if (!v15)
            {
LABEL_31:
              if (!__OFSUB__(v16, 1))
              {
                Data._Representation.subscript.getter();
                Data._Representation.subscript.setter();
                v20 = v6 + count;
                if (((v6 + count) & 0x100) == 0)
                {
                  *(v2 + 16) = v20;
                  if ((v6 + count) < 9u)
                  {
                    return;
                  }

                  v21 = v20 - 8;
                  *(v2 + 16) = v21;
                  v22 = count - v21;
                  if ((v22 & 0xFFFFFF00) == 0)
                  {
                    if ((v22 & 0xF8) != 0)
                    {
                      LOBYTE(v5) = 0;
                    }

                    else
                    {
                      LOBYTE(v5) = v5 << (v22 & 7);
                    }

                    v7 = *v2;
                    if (v2[1] >> 62 != 2)
                    {
                      goto LABEL_39;
                    }

LABEL_12:
                    v12 = *(v7 + 24);
LABEL_39:
                    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
                    v26 = lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>, &_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
                    LOBYTE(v24[0]) = v5;
                    v23 = *__swift_project_boxed_opaque_existential_0(v24, v25);
                    Data._Representation.replaceSubrange(_:with:count:)();
                    __swift_destroy_boxed_opaque_existential_0(v24);
                    return;
                  }

                  goto LABEL_45;
                }

LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            __break(1u);
          }

          else if (!v10)
          {
            v16 = BYTE6(v8);
            goto LABEL_31;
          }

          LODWORD(v16) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_47;
          }

          v16 = v16;
          goto LABEL_31;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v8);
      goto LABEL_20;
    }

    LODWORD(v11) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v11 = v11;
    goto LABEL_20;
  }
}

uint64_t BitCollection.append(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v10 = Data.Iterator.next()();
    if ((*&v10 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v10.value, 8u);
  }

  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall BitCollection.appendVarint8(_:)(Swift::UInt64 a1)
{
  do
  {
    if (a1 >= 8)
    {
      v2 = a1 & 7 | 8;
    }

    else
    {
      v2 = a1 & 7;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v2, 4u);
    v3 = a1 > 7;
    a1 >>= 3;
  }

  while (v3);
}

Swift::Void __swiftcall BitCollection.appendVarint64(_:)(Swift::UInt64 a1)
{
  do
  {
    if (a1 >= 0x40)
    {
      v2 = a1 & 0x3F | 0x40;
    }

    else
    {
      v2 = a1 & 0x3F;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v2, 7u);
    v3 = a1 > 0x3F;
    a1 >>= 6;
  }

  while (v3);
}

Swift::Void __swiftcall BitCollection.appendVarint128(_:)(Swift::UInt64 a1)
{
  do
  {
    BitCollection.appendLeastSignificantBits(from:count:)(a1 & 0x7F | ((a1 > 0x7F) << 7), 8u);
    v2 = a1 > 0x7F;
    a1 >>= 7;
  }

  while (v2);
}

uint64_t BitCollection.append(_:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  outlined copy of Data._Representation(a1, a2);
  v6 = 0;
  v7 = a2 >> 62;
  v8 = __OFSUB__(HIDWORD(a1), a1);
  v26 = v8;
  if (v7 > 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = a1 >> 32;
  v10 = a1;
  if (v7)
  {
    while (1)
    {
      if (v10 == v9)
      {
        goto LABEL_11;
      }

      if (v7 == 2)
      {
        v13 = *(a1 + 16);
        v12 = *(a1 + 24);
        v14 = __OFSUB__(v12, v13);
        v11 = v12 - v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v11 = HIDWORD(a1) - a1;
        if (v26)
        {
          goto LABEL_55;
        }
      }

LABEL_18:
      v14 = __OFSUB__(v11, 1);
      v15 = v11 - 1;
      if (v14)
      {
        goto LABEL_45;
      }

      if ((v15 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_46;
      }

      v14 = __OFADD__(a3, 8 * v15);
      v16 = a3 + 8 * v15;
      if (v14)
      {
        goto LABEL_47;
      }

      if (v6 == v16)
      {
        goto LABEL_41;
      }

LABEL_22:
      v17 = v6 >> 3;
      if (v7 > 1)
      {
        break;
      }

      if (v7)
      {
        if (v17 < a1 || v17 >= a1 >> 32)
        {
          goto LABEL_50;
        }

        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          goto LABEL_57;
        }

        v20 = v23;
        v24 = __DataStorage._offset.getter();
        v22 = v17 - v24;
        if (__OFSUB__(v17, v24))
        {
          goto LABEL_52;
        }

LABEL_37:
        v18 = *(v20 + v22);
        goto LABEL_38;
      }

      if (v17 >= BYTE6(a2))
      {
        goto LABEL_48;
      }

      v27 = a1;
      v28 = a2;
      v29 = BYTE2(a2);
      v30 = BYTE3(a2);
      v31 = BYTE4(a2);
      v32 = BYTE5(a2);
      v18 = *(&v27 + v17);
LABEL_38:
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      BitCollection.appendLeastSignificantBits(from:count:)((v18 >> (v6++ & 7)) & 1, 1u);
      if (v7 <= 1)
      {
        goto LABEL_5;
      }

LABEL_8:
      if (v7 != 2)
      {
        goto LABEL_11;
      }

      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
    }

    if (v7 != 2)
    {
      goto LABEL_56;
    }

    if (v17 < *(a1 + 16))
    {
      goto LABEL_49;
    }

    if (v17 >= *(a1 + 24))
    {
      goto LABEL_51;
    }

    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
      goto LABEL_58;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    v22 = v17 - v21;
    if (__OFSUB__(v17, v21))
    {
      goto LABEL_53;
    }

    goto LABEL_37;
  }

  v11 = BYTE6(a2);
  if ((a2 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_41:

  return outlined consume of Data._Representation(a1, a2);
}

BOOL BitCollection.subscript.getter(uint64_t a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 + 7;
  }

  v2 = a1 - (v1 & 0xFFFFFFFFFFFFFFF8);
  v3 = Data._Representation.subscript.getter();
  v4 = 1 << v2;
  if (v2 < 0)
  {
    LOBYTE(v4) = 0;
  }

  return (v3 & v4) != 0;
}

uint64_t BitCollection.endIndex.getter(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      return 0;
    }
  }

  else
  {
    if (!v3)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v4 = BYTE6(a2);
        goto LABEL_15;
      }

      return 0;
    }

    if (result == result >> 32)
    {
      return 0;
    }
  }

  if (v3 == 2)
  {
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v4 = v4;
LABEL_15:
  v7 = __OFSUB__(v4, 1);
  v8 = v4 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v8 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = 8 * v8;
  result = v9 + a3;
  if (__OFADD__(v9, a3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

Swift::Int __swiftcall BitCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance BitCollection@<X0>(uint64_t *a1@<X8>)
{
  result = BitCollection.endIndex.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance BitCollection(BOOL *a1, uint64_t *a2))(void, void, void, void)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  *a1 = BitCollection.subscript.getter(v4);
  return LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:);
}

uint64_t protocol witness for Collection.subscript.getter in conformance BitCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  result = BitCollection.endIndex.getter(*v2, v6, v8);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *a2 = v5;
  *(a2 + 8) = v4;

  return outlined copy of Data._Representation(v7, v6);
}

uint64_t protocol witness for Collection.indices.getter in conformance BitCollection@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = BitCollection.endIndex.getter(v2, v3, v4);

  return outlined copy of Data._Representation(v2, v3);
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance BitCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance BitCollection@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (a2)
  {
    v5 = *a3 - v4;
    if (v5 >= a2 - 1)
    {
      v5 = a2 - 1;
    }

    if (v5 >= (v4 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v5 = v4 ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v6 = v5 + 1;
    if (v6 >= 5)
    {
      v9 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v9 = 4;
      }

      v7 = v6 - v9;
      v10 = 0uLL;
      v11 = *result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v7;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      result = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v7 = 0;
      result = *result;
    }

    v14 = (v7 + v4);
    v15 = v14 - 0x7FFFFFFFFFFFFFFFLL;
    v16 = &v14[-*a3];
    v17 = a2 - v7;
    v4 = result;
    while (1)
    {
      v8 = v16 == 0;
      if (!v16)
      {
        v4 = 0;
        goto LABEL_21;
      }

      if (!v15)
      {
        break;
      }

      ++v4;
      ++v15;
      ++v16;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v8 = 0;
LABEL_21:
  *a4 = v4;
  *(a4 + 8) = v8;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance BitCollection(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance BitCollection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance BitCollection(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance BitCollection@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance BitCollection()
{
  result = BitCollection.endIndex.getter(*v0, *(v0 + 8), *(v0 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BitCollection()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v2, *(v0 + 16));
  outlined consume of Data._Representation(v1, v2);
  return v3;
}

Swift::Int BitCollection.binaryString.getter(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  result = BitCollection.endIndex.getter(a1, a2, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    return Data.binaryString(bitCount:)(result)._countAndFlagsBits;
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t lazy protocol witness table accessor for type BitCollection and conformance BitCollection()
{
  result = lazy protocol witness table cache variable for type BitCollection and conformance BitCollection;
  if (!lazy protocol witness table cache variable for type BitCollection and conformance BitCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollection and conformance BitCollection);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for BitCollection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 17))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BitCollection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(result + 16) == *(result + 24))
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    if (!v4)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        return _swiftEmptyArrayStorage;
      }

      v5 = BYTE6(a2);
      goto LABEL_15;
    }

    if (result == result >> 32)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (v4 == 2)
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_15:
  v9 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v5 - 0x1000000000000001) >> 61 != 7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = a3 + 8 * v9;
  if (__OFADD__(a3, 8 * v9))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    if (a3 + 8 * v5 + 0x7FFFFFFFFFFFFFF8 >= 0x8000000000000001)
    {
      v11 = result;
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(v10, 0);
      outlined copy of Data._Representation(v11, a2);
      v14 = specialized Sequence._copySequenceContents(initializing:)(v15, (v13 + 4), v10, v11, a2, a3);
      result = outlined consume of Data._Representation(v15[0], v15[1]);
      if (v14 == v10)
      {
        return v13;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v30 = a1;
      v9 = 0;
      v10 = a5 >> 62;
      v11 = a4;
      v47 = a4 >> 32;
      v44 = HIDWORD(a4);
      v12 = __OFSUB__(HIDWORD(a4), a4);
      v33 = v12;
      v32 = HIDWORD(a4) - a4;
      v34 = a5 & 0xFF000000000000;
      v46 = BYTE6(a5);
      v31 = a6;
      v45 = a6;
      v29 = a3;
      v13 = a3 - 1;
      v42 = a4 >> 16;
      v43 = a4 >> 8;
      v40 = a4 >> 40;
      v41 = a4 >> 24;
      v38 = HIBYTE(a4);
      v39 = HIWORD(a4);
      v36 = a5 >> 16;
      v37 = a5 >> 8;
      v35 = a5 >> 24;
      while (1)
      {
        if (v10 > 1)
        {
          if (v10 != 2)
          {
            goto LABEL_15;
          }

          v15 = *(a4 + 16);
          v14 = *(a4 + 24);
        }

        else
        {
          v14 = v47;
          v15 = a4;
          if (!v10)
          {
            v16 = v46;
            if (!v34)
            {
              goto LABEL_15;
            }

            goto LABEL_22;
          }
        }

        if (v15 == v14)
        {
LABEL_15:
          if (!v9)
          {
            goto LABEL_47;
          }

          goto LABEL_26;
        }

        if (v10 == 2)
        {
          v18 = *(a4 + 16);
          v17 = *(a4 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (v19)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v16 = v32;
          if (v33)
          {
            goto LABEL_59;
          }
        }

LABEL_22:
        v19 = __OFSUB__(v16, 1);
        v20 = v16 - 1;
        if (v19)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if ((v20 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_51;
        }

        v19 = __OFADD__(v45, 8 * v20);
        v21 = v45 + 8 * v20;
        if (v19)
        {
          goto LABEL_52;
        }

        if (v9 == v21)
        {
LABEL_47:
          a3 = v9;
          a1 = v30;
          a6 = v31;
          break;
        }

LABEL_26:
        v22 = v9 >> 3;
        if (v10 > 1)
        {
          if (v10 != 2)
          {
            goto LABEL_62;
          }

          if (v22 < *(a4 + 16))
          {
            goto LABEL_53;
          }

          if (v22 >= *(a4 + 24))
          {
            goto LABEL_56;
          }

          v24 = __DataStorage._bytes.getter();
          if (!v24)
          {
            goto LABEL_64;
          }

          v25 = v24;
          a1 = __DataStorage._offset.getter();
          v26 = v22 - a1;
          if (__OFSUB__(v22, a1))
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (!v10)
          {
            if (v22 >= v46)
            {
              goto LABEL_54;
            }

            v48[0] = v11;
            v48[1] = v43;
            v48[2] = v42;
            v48[3] = v41;
            v48[4] = v44;
            v48[5] = v40;
            v48[6] = v39;
            v48[7] = v38;
            v48[8] = a5;
            v48[9] = v37;
            v48[10] = v36;
            v48[11] = v35;
            v48[12] = BYTE4(a5);
            v48[13] = BYTE5(a5);
            v23 = v48[v22];
            goto LABEL_42;
          }

          if (v22 < a4 || v22 >= v47)
          {
            goto LABEL_55;
          }

          v27 = __DataStorage._bytes.getter();
          if (!v27)
          {
            goto LABEL_63;
          }

          v25 = v27;
          a1 = __DataStorage._offset.getter();
          v26 = v22 - a1;
          if (__OFSUB__(v22, a1))
          {
            goto LABEL_57;
          }
        }

        v23 = *(v25 + v26);
LABEL_42:
        *(a2 + v9) = (v23 >> (v9 & 7)) & 1;
        if (v13 == v9)
        {
          a1 = v30;
          a6 = v31;
          a3 = v29;
          break;
        }

        if (__OFADD__(++v9, 1))
        {
          __break(1u);
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
LABEL_46:
    a3 = 0;
  }

  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a3;
  return a3;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  static Logger.messagesSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

unint64_t BitCollectionMessageContentError.errorDescription.getter(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(38);

    v9 = 0xD000000000000021;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v9 = 0;
    _StringGuts.grow(_:)(58);
    v5._countAndFlagsBits = 0xD000000000000035;
    v5._object = 0x8000000000056FF0;
    String.append(_:)(v5);
LABEL_5:
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 3025191;
    v7._object = 0xE300000000000000;
    String.append(_:)(v7);
    return v9;
  }

  return 0xD000000000000027;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsCompressedBytes(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for Data.Iterator();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    BitCollection.appendLeastSignificantBits(from:count:)(0, 8u);
    return;
  }

  v49 = v4;
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  if (v16 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 2;
    swift_willThrow();
    return;
  }

  v46 = v1;
  if ((specialized BitCollection.allowCompression.getter() & 1) == 0 || (v18 = [objc_opt_self() sharedCompressor], v19 = IMDLiteMessageCompressor.compress(_:)(), v21 = v20, v23 = v22, v18, v21 >> 60 == 15))
  {
    outlined copy of Data._Representation(v14, v16);
    v23 = 0;
    v19 = v14;
    v21 = v16;
  }

  v47 = v23;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  outlined copy of Data?(v14, v16);
  outlined copy of Data._Representation(v19, v21);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v48 = v14;
  if (!v27)
  {
    outlined consume of Data._Representation(v19, v21);
    outlined consume of Data?(v14, v16);

    v32 = v21 >> 62;
    goto LABEL_35;
  }

  v28 = swift_slowAlloc();
  v29 = v28;
  *v28 = 134218496;
  *(v28 + 4) = v47;
  *(v28 + 12) = 2048;
  v30 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(v16);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v30 != 2)
  {
    v31 = 0;
    goto LABEL_24;
  }

  v34 = *(v48 + 16);
  v33 = *(v48 + 24);
  v35 = __OFSUB__(v33, v34);
  v31 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_21:
    LODWORD(v31) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v31 = v31;
  }

LABEL_24:
  *(v28 + 14) = v31;
  outlined consume of Data?(v48, v16);
  *(v29 + 22) = 2048;
  v32 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v32 != 2)
    {
      v36 = 0;
      goto LABEL_34;
    }

    v38 = *(v19 + 16);
    v37 = *(v19 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (!v35)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_31:
    LODWORD(v36) = HIDWORD(v19) - v19;
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_60:
      __break(1u);
      return;
    }

    v36 = v36;
    goto LABEL_34;
  }

  if (v32)
  {
    goto LABEL_31;
  }

  v36 = BYTE6(v21);
LABEL_34:
  *(v29 + 24) = v36;
  outlined consume of Data._Representation(v19, v21);
  _os_log_impl(&dword_0, v25, v26, "Compressor chose codec %ld, shrunk %ld bytes to %ld", v29, 0x20u);

LABEL_35:
  v39 = v47;
  if (v32 <= 1)
  {
    if (!v32)
    {
      v40 = BYTE6(v21);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v32 != 2)
  {
    goto LABEL_46;
  }

  v42 = *(v19 + 16);
  v41 = *(v19 + 24);
  v40 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    __break(1u);
LABEL_42:
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v40 = HIDWORD(v19) - v19;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_46:
  v40 = 0;
  do
  {
LABEL_47:
    BitCollection.appendLeastSignificantBits(from:count:)(v40 & 0x7F | ((v40 > 0x7F) << 7), 8u);
    v43 = v40 > 0x7F;
    v40 >>= 7;
  }

  while (v43);
  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v39 > 0xFF)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  BitCollection.appendLeastSignificantBits(from:count:)(v39, 4u);
  if (v32 == 2)
  {
    v44 = *(v19 + 16);
  }

  outlined copy of Data._Representation(v19, v21);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v45 = Data.Iterator.next()();
    if ((*&v45 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v45.value, 8u);
  }

  outlined consume of Data?(v48, v16);
  outlined consume of Data._Representation(v19, v21);
  (*(v50 + 8))(v7, v49);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsUTF8Bytes(_:)(Swift::String a1)
{
  v17 = type metadata accessor for Data.Iterator();
  v16 = *(v17 - 8);
  v1 = *(v16 + 64);
  __chkstk_darwin(v17);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    if (v11 >> 62 == 2)
    {
      v13 = *(v9 + 16);
    }

    outlined copy of Data._Representation(v9, v11);
    Data.Iterator.init(_:at:)();
    while (1)
    {
      v14 = Data.Iterator.next()();
      if ((*&v14 & 0x100) != 0)
      {
        break;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v14.value, 8u);
    }

    outlined consume of Data?(v9, v11);
    (*(v16 + 8))(v3, v17);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsVarint8PrefixedUTF8Bytes(_:)(Swift::String a1)
{
  v23 = type metadata accessor for Data.Iterator();
  v22 = *(v23 - 8);
  v1 = *(v22 + 64);
  __chkstk_darwin(v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return;
  }

  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      __break(1u);
      return;
    }

    v14 = HIDWORD(v9) - v9;
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = BYTE6(v11);
  do
  {
LABEL_15:
    if (v14 >= 8)
    {
      v17 = v14 & 7 | 8;
    }

    else
    {
      v17 = v14 & 7;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v17, 4u);
    v18 = v14 > 7;
    v14 >>= 3;
  }

  while (v18);
  if (v13 == 2)
  {
    v19 = *(v9 + 16);
  }

  outlined copy of Data._Representation(v9, v11);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v20 = Data.Iterator.next()();
    if ((*&v20 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v20.value, 8u);
  }

  outlined consume of Data?(v9, v11);
  (*(v22 + 8))(v3, v23);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendAsNullTerminatedUTF8Bytes(_:)(Swift::String a1)
{
  v18 = type metadata accessor for Data.Iterator();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v21 = v10;
    v22 = v12;
    if (v12 >> 62 == 2)
    {
      v14 = *(v10 + 24);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
    v20[3] = v15;
    v20[4] = lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>();
    LOBYTE(v20[0]) = 0;
    v19 = *__swift_project_boxed_opaque_existential_0(v20, v15);
    Data._Representation.replaceSubrange(_:with:count:)();
    __swift_destroy_boxed_opaque_existential_0(v20);
    if (v22 >> 62 == 2)
    {
      v16 = *(v21 + 16);
    }

    outlined copy of Data._Representation(v21, v22);
    Data.Iterator.init(_:at:)();
    while (1)
    {
      v17 = Data.Iterator.next()();
      if ((*&v17 & 0x100) != 0)
      {
        break;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v17.value, 8u);
    }

    (*(v1 + 8))(v4, v18);
    outlined consume of Data._Representation(v21, v22);
  }
}

uint64_t BitCollection.append16UUIDBytes(_:)(_BYTE *a1)
{
  v2 = type metadata accessor for Data.Iterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for UUID() - 8) + 64);
  if (v7 >= 16)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  result = specialized Data.init(bytes:count:)(a1, v8);
  v11 = result;
  v12 = v10;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(result + 16);
      v14 = *(result + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v17 == 16)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    v19 = UUID.uuidString.getter();
    v21 = v20;
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    swift_willThrow();
    return outlined consume of Data._Representation(v11, v12);
  }

  if (!v13)
  {
    if (BYTE6(v10) != 16)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (HIDWORD(result) - result != 16)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v13 == 2)
  {
    v18 = *(result + 16);
  }

  outlined copy of Data._Representation(result, v10);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    v23 = Data.Iterator.next()();
    if ((*&v23 & 0x100) != 0)
    {
      break;
    }

    BitCollection.appendLeastSignificantBits(from:count:)(v23.value, 8u);
  }

  outlined consume of Data._Representation(v11, v12);
  return (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.append16UUIDBytes(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UUID?(v6);
    lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError();
    swift_allocError();
    *v12 = countAndFlagsBits;
    *(v12 + 8) = object;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    BitCollection.append16UUIDBytes(_:)(v11);
    (*(v8 + 8))(v11, v7);
  }
}

unint64_t lazy protocol witness table accessor for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError()
{
  result = lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError;
  if (!lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollectionMessageContentError and conformance BitCollectionMessageContentError);
  }

  return result;
}

id specialized BitCollection.allowCompression.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = String._bridgeToObjectiveC()();
      v4 = String._bridgeToObjectiveC()();
      v5 = IMGetDomainBoolForKey();

      return (v5 ^ 1u);
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15CollectionOfOneVys5UInt8VGMd, "Pu");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>);
  }

  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16iMessageLiteCore013BitCollectionA12ContentErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t Data.binaryString.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return Data.binaryString(bitCount:)(0)._countAndFlagsBits;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  return Data.binaryString(bitCount:)(8 * v3)._countAndFlagsBits;
}

uint64_t BitCollection.append(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  return (*(v3 + 8))(v1, v2, v3);
}

void __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridDeliveryHandlesDonationOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:20 description:{@"Unable to find class %s", "IDSOffGridDeliveryHandlesDonationOptions"}];

  __break(1u);
}

void IDSLibrary_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *IDSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMIDSOffGrid.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getIDSOffGridServiceUpdateMessageClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridServiceUpdateMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:21 description:{@"Unable to find class %s", "IDSOffGridServiceUpdateMessage"}];

  __break(1u);
}

void __getIDSOffGridServerMessageClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getIDSOffGridServerMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMIDSOffGrid.m" lineNumber:22 description:{@"Unable to find class %s", "IDSOffGridServerMessage"}];

  __break(1u);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}