uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_3358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridDeliveryHandlesDonationOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke_cold_1();
  }

  getIDSOffGridDeliveryHandlesDonationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IDSLibrary()
{
  v0[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = __IDSLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = off_657B0;
    v2 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IDSLibraryCore_frameworkLibrary)
  {
    IDSLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIDSOffGridServiceUpdateMessageClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridServiceUpdateMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridServiceUpdateMessageClass_block_invoke_cold_1();
  }

  getIDSOffGridServiceUpdateMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getIDSOffGridServerMessageClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridServerMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridServerMessageClass_block_invoke_cold_1();
  }

  getIDSOffGridServerMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError()
{
  result = lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError;
  if (!lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA12ReceiveErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageReceiveError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageReceiveError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LiteMessageReceiveError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id IMDChat.participantURI.getter()
{
  if ([v0 style] != 45)
  {
    return 0;
  }

  result = [v0 participants];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));

  if (v4 != 1)
  {
    return 0;
  }

  result = [v0 participants];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
LABEL_9:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = [v8 ID];

      if (v9)
      {
        v10 = [objc_allocWithZone(IDSURI) initWithUnprefixedURI:v9];

        return v10;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t IMDChat.bestSendingHandle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v74 - v8;
  v10 = [v1 participants];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 ID];

  if (!v15)
  {
LABEL_23:
    v46 = [v1 lastAddressedLocalHandle];
    if (!v46)
    {
      return 0;
    }

LABEL_24:
    v47 = v46;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v31;
  }

  v77 = v3;
  v78 = v2;
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v16;

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v1 chatIdentifier];
  if (!v18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v19 = v18;
  v20 = [v1 style];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v75 = xmmword_53380;
  *(inited + 16) = xmmword_53380;
  v74[1] = IMServiceNameiMessage;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v22;
  v74[0] = IMServiceNameiMessageLite;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v23;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v25 = [v17 allChatsWithIdentifier:v19 style:v20 serviceNames:isa];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = specialized Array._copyToContiguousArray()(v26);
  specialized MutableCollection<>.sort(by:)(&v80);

  v2 = v80;
  if ((v80 & 0x8000000000000000) == 0 && (v80 & 0x4000000000000000) == 0)
  {
    if (*(v80 + 16))
    {
      goto LABEL_12;
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_27:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v27 = *(v2 + 32);
LABEL_15:
  v28 = v27;

  v29 = [v28 lastAddressedLocalHandle];
  if (v29)
  {
    v30 = v29;

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = Logger.liteSession.unsafeMutableAddressor();
    v36 = v77;
    v35 = v78;
    (*(v77 + 16))(v9, v34, v78);
    v37 = v28;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v38, v39))
    {

      (*(v36 + 8))(v9, v35);
      return v31;
    }

    v40 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = v79;
    *v40 = 136315394;
    v41 = [v37 guid];

    if (v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v80);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v80);
      _os_log_impl(&dword_0, v38, v39, "Best sending handle selected from chat %s as %s", v40, 0x16u);
      swift_arrayDestroy();

      (*(v77 + 8))(v9, v78);
      return v31;
    }

    goto LABEL_44;
  }

LABEL_29:
  v48 = [objc_opt_self() sharedInstance];
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_53390;
  v50 = v79;
  *(v49 + 32) = v76;
  *(v49 + 40) = v50;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  v52 = swift_allocObject();
  *(v52 + 16) = v75;
  *(v52 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 40) = v53;
  *(v52 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 56) = v54;
  v55 = Array._bridgeToObjectiveC()().super.isa;

  v56 = [v48 lastMessageWithHandles:v51 onServices:v55];

  if (!v56)
  {
    goto LABEL_36;
  }

  v57 = [v56 destinationCallerID];
  if (!v57)
  {

LABEL_36:
    v46 = [v1 lastAddressedLocalHandle];
    if (!v46)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v58 = v57;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = Logger.liteSession.unsafeMutableAddressor();
  v63 = v77;
  v62 = v78;
  (*(v77 + 16))(v7, v61, v78);
  v64 = v56;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v65, v66))
  {

    (*(v63 + 8))(v7, v62);
    return v31;
  }

  v67 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v80 = v79;
  *v67 = 136315394;
  v68 = [v64 guid];

  if (v68)
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v80);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v60, &v80);
    _os_log_impl(&dword_0, v65, v66, "Best sending handle selected from most recent message %s as %s", v67, 0x16u);
    swift_arrayDestroy();

    (*(v77 + 8))(v7, v78);
    return v31;
  }

LABEL_45:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Void __swiftcall IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(Swift::String to)
{
  v2 = v1;
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  [v2 updateLastAddressedHandle:v10 forceUpdate:0];

  v11 = [objc_opt_self() sharedInstance];
  IMCTSubscriptionUtilities.simID(for:)();
  v13 = v12;

  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v2 updateLastAddressedSIMID:v14];

  v15 = Logger.liteSession.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v15, v5);
  v16 = v2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v33 = v6;
    v34 = v5;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v19 = 136315650;
    v20 = [v16 guid];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v35);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
      *(v19 + 22) = 2080;
      v25 = [v16 lastAddressedSIMID];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = v33;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v35);

      *(v19 + 24) = v31;
      _os_log_impl(&dword_0, v17, v18, "Updated chat %s last addressed handle to %s, SIM ID to %s", v19, 0x20u);
      swift_arrayDestroy();

      (*(v30 + 8))(v9, v34);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

id IMCTSubscriptionUtilities.simID(for:)()
{
  result = [v0 ctSubscriptionInfo];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 __im_subscriptionContextForPhoneNumber:v3];

    if (v4)
    {
      v5 = [v4 labelID];

      if (v5)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = [v0 registeredSIMIDs];
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v13[0] = v6;
        v13[1] = v8;
        __chkstk_darwin(v11);
        v12[2] = v13;
        LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v10);

        if (v9)
        {
          return v6;
        }
      }
    }

    return 0;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7IMDChatC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v20[0] = v2 + 32;
  v20[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (([v13 isNewerThan:*v15] & 1) == 0)
          {
            break;
          }

          v16 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) = v8;
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v19[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v19[1] = v8;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v21, v20, v7);
    *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v5);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = specialized Array.remove(at:)(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v14 = *v12;
      v13 = (v12 + 2);
      result = [v10 isNewerThan:v14];
      v15 = result;
      v5 = v9 + 2;
      while (v6 != v5)
      {
        result = [*v13 isNewerThan:*(v13 - 1)];
        ++v5;
        ++v13;
        if (v15 != result)
        {
          v6 = v5 - 1;
          break;
        }
      }

      if (v15)
      {
        if (v6 < v9)
        {
          goto LABEL_117;
        }

        if (v9 < v6)
        {
          v16 = 8 * v6 - 8;
          v17 = v6;
          v18 = v9;
          do
          {
            if (v18 != --v17)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v19 = *(v20 + v11);
              *(v20 + v11) = *(v20 + v16);
              *(v20 + v16) = v19;
            }

            ++v18;
            v16 -= 8;
            v11 += 8;
          }

          while (v18 < v17);
        }
      }

      v7 = v6;
    }

    v21 = a3[1];
    if (v7 < v21)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 >= v21)
        {
          v22 = a3[1];
        }

        else
        {
          v22 = v9 + a4;
        }

        if (v22 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v22)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v5 = *&v8[16 * v73 + 32];
        v74 = *&v8[16 * v35 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v5)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v73 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v73];
        *(v75 + 4) = v5;
        *(v75 + 5) = v74;
        result = specialized Array.remove(at:)(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 8 * v7 - 8;
  v80 = v9;
  v25 = v9 - v7;
LABEL_30:
  v26 = *(v23 + 8 * v7);
  v27 = v25;
  v5 = v24;
  while (1)
  {
    result = [v26 isNewerThan:{*v5, v80}];
    if (!result)
    {
LABEL_29:
      ++v7;
      v24 += 8;
      --v25;
      if (v7 != v22)
      {
        goto LABEL_30;
      }

      v7 = v22;
      v9 = v80;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = *v5;
    v26 = *(v5 + 8);
    *v5 = v26;
    *(v5 + 8) = v28;
    v5 -= 8;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 isNewerThan:*v17])
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 isNewerThan:*v4])
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7IMDChatC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [IMDChat] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7IMDChatCGMd, &_sSaySo7IMDChatCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t type metadata accessor for IMDHandle(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [IMDChat] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [IMDChat] and conformance [A];
  if (!lazy protocol witness table cache variable for type [IMDChat] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7IMDChatCGMd, &_sSaySo7IMDChatCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IMDChat] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v8);
}

uint64_t closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[22] = v5;
  *v5 = v4;
  v5[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return LiteMessageServiceSession.donateInitialHandlesIfNeeded()();
}

uint64_t closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v8 = *v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 184) = v6;
  *(v1 + 192) = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v6, v5);
}

{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 emergencyContactHandles];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[25] = v3;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();
  v5 = v0[19];

  return LiteMessageServiceSession.donateEmergencyHandles(_:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v5, v4);
}

{
  v1 = [objc_opt_self() sharedManager];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5NeverOGMd, &_sSccySaySSGs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String];
  v0[13] = &block_descriptor_37;
  v0[14] = v2;
  [v1 familyHandlesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v2, v1);
}

{
  v1 = v0[27];
  v2 = v0[18];
  v0[28] = v2;

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();
  v4 = v0[19];

  return LiteMessageServiceSession.donateFamilyHandles(_:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v5, v4);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()(v3, v4, v5, v2);
}

uint64_t LiteMessageServiceSession.donateInitialHandlesIfNeeded()()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v6;
  v1[15] = v5;

  return _swift_task_switch(LiteMessageServiceSession.donateInitialHandlesIfNeeded(), v6, v5);
}

{
  v74 = v0;
  if (donating)
  {
    v1 = v0[13];
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];

    v5 = Logger.donations.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v6, v7, "Already donating", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_5;
  }

  v19 = IDSCopyLocalDeviceUniqueID();
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v0[16] = v21;
  v0[17] = v23;
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = IMGetDomainIntForKey();

  if (v26 == 2)
  {
    v27 = specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter();
    if (v28)
    {
      if (v23)
      {
        if (v27 == v21 && v28 == v23)
        {
          v29 = v0[13];

LABEL_22:

LABEL_23:
          v33 = v0[10];
          v34 = v0[7];
          v35 = v0[8];
          v36 = v0[6];
          v37 = Logger.donations.unsafeMutableAddressor();
          (*(v35 + 16))(v33, v37, v34);
          v38 = v36;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v0[10];
          v44 = v0[7];
          v43 = v0[8];
          v45 = v0[6];
          if (v41)
          {
            v72 = v0[10];
            v46 = swift_slowAlloc();
            v71 = v44;
            v47 = swift_slowAlloc();
            v73 = v47;
            *v46 = 134218242;
            v48 = String._bridgeToObjectiveC()();
            v49 = String._bridgeToObjectiveC()();
            v50 = IMGetDomainIntForKey();

            *(v46 + 4) = v50;
            *(v46 + 12) = 2080;
            v0[4] = specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter();
            v0[5] = v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v52 = String.init<A>(describing:)();
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v73);

            *(v46 + 14) = v54;
            _os_log_impl(&dword_0, v39, v40, "Skipping handle donation, already complete with version %ld from device %s", v46, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v47);

            (*(v43 + 8))(v72, v71);
          }

          else
          {

            (*(v43 + 8))(v42, v44);
          }

LABEL_5:
          v14 = v0[11];
          v13 = v0[12];
          v16 = v0[9];
          v15 = v0[10];

          v17 = v0[1];

          return v17();
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          v32 = v0[13];
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    else if (!v23)
    {
      v30 = v0[13];

      goto LABEL_23;
    }
  }

  v55 = v0[12];
  v56 = v0[7];
  v57 = v0[8];
  v58 = Logger.donations.unsafeMutableAddressor();
  v0[18] = v58;
  v59 = *(v57 + 16);
  v0[19] = v59;
  v0[20] = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v55, v58, v56);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_0, v60, v61, "Donating initial handles to IDS", v62, 2u);
  }

  v63 = v0[12];
  v64 = v0[7];
  v65 = v0[8];

  v66 = *(v65 + 8);
  v0[21] = v66;
  v66(v63, v64);
  donating = 1;
  specialized LiteMessageServiceSession.lastAddressedHandleToRecentHandles()();
  v68 = v67;
  v0[22] = v67;
  v69 = swift_task_alloc();
  v0[23] = v69;
  *v69 = v0;
  v69[1] = LiteMessageServiceSession.donateInitialHandlesIfNeeded();
  v70 = v0[6];

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v68, 0, 1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(LiteMessageServiceSession.donateInitialHandlesIfNeeded(), v5, v4);
}

{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[13];

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  IMSetDomainIntForKey();

  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  if (v1)
  {
    v7 = v0[16];
    String._bridgeToObjectiveC()();
  }

  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[11];
  v12 = v0[7];
  IMSetDomainValueForKey();
  swift_unknownObjectRelease();

  v9(v11, v10, v12);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[21];
  if (v15)
  {
    v18 = v0[16];
    v17 = v0[17];
    v37 = v0[11];
    v20 = v0[7];
    v19 = v0[8];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 134218242;
    *(v21 + 4) = 2;
    *(v21 + 12) = 2080;
    v0[2] = v18;
    v0[3] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v38);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_0, v13, v14, "Updated donation version to %ld from device %s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);

    v26 = v37;
    v27 = v20;
  }

  else
  {
    v28 = v0[11];
    v29 = v0[7];
    v30 = v0[8];

    v26 = v28;
    v27 = v29;
  }

  v16(v26, v27);
  donating = 0;
  v32 = v0[11];
  v31 = v0[12];
  v34 = v0[9];
  v33 = v0[10];

  v35 = v0[1];

  return v35();
}

uint64_t LiteMessageServiceSession.donateEmergencyHandles(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(LiteMessageServiceSession.donateEmergencyHandles(_:), v7, v6);
}

uint64_t LiteMessageServiceSession.donateEmergencyHandles(_:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = Logger.donations.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Donating emergency handles to IDS", v7, 2u);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  (*(v9 + 8))(v8, v11);
  v13 = LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(v12);
  v0[10] = v13;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = LiteMessageServiceSession.donateEmergencyHandles(_:);
  v15 = v0[3];

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v13, 1, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(LiteMessageServiceSession.donateEmergencyHandles(_:), v5, v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String](uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t LiteMessageServiceSession.donateFamilyHandles(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(LiteMessageServiceSession.donateFamilyHandles(_:), v7, v6);
}

uint64_t LiteMessageServiceSession.donateFamilyHandles(_:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = Logger.donations.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Donating family handles to IDS", v7, 2u);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  (*(v9 + 8))(v8, v11);
  v13 = LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(v12);
  v0[10] = v13;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = LiteMessageServiceSession.donateFamilyHandles(_:);
  v15 = v0[3];

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v13, 2, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(LiteMessageServiceSession.donateFamilyHandles(_:), v5, v4);
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 192) = a2;
  *(v4 + 200) = v3;
  *(v4 + 337) = a3;
  *(v4 + 184) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 208) = v5;
  v6 = *(v5 - 8);
  *(v4 + 216) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 248) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 256) = v9;
  *(v4 + 264) = v8;

  return _swift_task_switch(LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:), v9, v8);
}

uint64_t LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 32);
  *(v0 + 338) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return _swift_continuation_await(v6);
    }

    v6 = *(v0 + 184);
    if (v11 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v6 + 8 * v11 + 64);
    ++v7;
    if (v5)
    {
      v7 = v11;
      while (1)
      {
        *(v0 + 280) = v5;
        *(v0 + 288) = v7;
        v12 = __clz(__rbit64(v5)) | (v7 << 6);
        v13 = (*(v6 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(v6 + 56) + 8 * v12);
        *(v0 + 296) = v16;
        v17 = objc_allocWithZone(IDSURI);

        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 initWithUnprefixedURI:v18];
        *(v0 + 304) = v19;

        if (v19)
        {
          break;
        }

        v5 &= v5 - 1;
        v20 = *(v0 + 232);
        v22 = *(v0 + 208);
        v21 = *(v0 + 216);
        v23 = Logger.donations.unsafeMutableAddressor();
        (*(v21 + 16))(v20, v23, v22);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *(v0 + 168) = v27;
          *v26 = 136315394;
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, (v0 + 168));

          *(v26 + 4) = v28;
          *(v26 + 12) = 2048;
          if (v16 >> 62)
          {
            v29 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v29 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
          }

          v30 = *(v0 + 216);
          v39 = *(v0 + 208);
          v41 = *(v0 + 232);

          *(v26 + 14) = v29;

          _os_log_impl(&dword_0, v24, v25, "Failed to make IDSURI for %s, cannot donate %ld handles", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v27);

          v6 = (*(v30 + 8))(v41, v39);
          if (!v5)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v8 = *(v0 + 232);
          v9 = *(v0 + 208);
          v10 = *(v0 + 216);
          swift_bridgeObjectRelease_n();

          v6 = (*(v10 + 8))(v8, v9);
          if (!v5)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v6 = *(v0 + 184);
      }

      v42 = *(v0 + 337);
      v34 = *(v0 + 200);
      v40 = *(v0 + 192);

      v35 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v35;

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v36);

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v38 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v38;
      [v35 __im_donateHandlesForMessagingKeys:isa fromURI:v19 priority:v40 isInitial:v42 completion:v0 + 80];
      v6 = v0 + 16;

      return _swift_continuation_await(v6);
    }
  }

  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *v31 = v0;
  v31[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v32 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v32);
}

{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return _swift_task_switch(LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:), v4, v3);
}

{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  v5 = v0[1];

  return v5();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  if (v3)
  {
    v4 = v1[37];

    v5 = v1[32];
    v6 = v1[33];
    v7 = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  }

  else
  {
    v5 = v1[32];
    v6 = v1[33];
    v7 = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  }

  return _swift_task_switch(v7, v5, v6);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v8 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  LODWORD(v5) = *(v0 + 336);

  v6 = Logger.donations.unsafeMutableAddressor();
  (*(v4 + 16))(v8, v6, v3);

  v7 = Logger.logObject.getter();
  LOBYTE(v8) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 296);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    if (v9 >> 62)
    {
LABEL_27:
      if (*(v0 + 296) < 0)
      {
        v42 = *(v0 + 296);
      }

      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = *(v0 + 296);
    v13 = *(v0 + 304);

    *(v10 + 4) = v11;

    *(v10 + 12) = 1024;
    *(v10 + 14) = v5;
    _os_log_impl(&dword_0, v7, v8, "Completed donating %ld handles with success %{BOOL}d", v10, 0x12u);
  }

  else
  {
    v14 = *(v0 + 296);
    v13 = *(v0 + 304);
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
  v10 = *(v0 + 288);
  v15 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v15)
  {
    v17 = *(v0 + 184);
LABEL_14:
    *(v0 + 280) = v15;
    *(v0 + 288) = v10;
    v19 = __clz(__rbit64(v15)) | (v10 << 6);
    v20 = (*(v17 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v17 + 56) + 8 * v19);
    *(v0 + 296) = v23;
    v24 = objc_allocWithZone(IDSURI);

    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 initWithUnprefixedURI:v25];
    *(v0 + 304) = v26;

    if (v26)
    {
      v46 = *(v0 + 337);
      v37 = *(v0 + 200);
      v44 = *(v0 + 192);

      v38 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v38;

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v39);

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v41 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v41;
      [v38 __im_donateHandlesForMessagingKeys:isa fromURI:v26 priority:v44 isInitial:v46 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v15 &= v15 - 1;
    v27 = *(v0 + 232);
    v5 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = Logger.donations.unsafeMutableAddressor();
    (*(v28 + 16))(v27, v29, v5);

    v7 = Logger.logObject.getter();
    LODWORD(v5) = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v5))
    {
      v30 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v0 + 168) = v8;
      *v30 = 136315394;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, (v0 + 168));

      *(v30 + 4) = v31;
      *(v30 + 12) = 2048;
      if (v23 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      }

      v33 = *(v0 + 216);
      v43 = *(v0 + 208);
      v45 = *(v0 + 232);

      *(v30 + 14) = v32;

      _os_log_impl(&dword_0, v7, v5, "Failed to make IDSURI for %s, cannot donate %ld handles", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);

      (*(v33 + 8))(v45, v43);
    }

    else
    {
      v8 = *(v0 + 232);
      v5 = *(v0 + 208);
      v16 = *(v0 + 216);
      swift_bridgeObjectRelease_n();

      (*(v16 + 8))(v8, v5);
    }
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v17 = *(v0 + 184);
    if (v18 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v17 + 8 * v18 + 64);
    ++v10;
    if (v15)
    {
      v10 = v18;
      goto LABEL_14;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 272) = v34;
  *v34 = v0;
  v34[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v35 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v35);
}

{
  v66 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  swift_willThrow();

  v7 = Logger.donations.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);
    v12 = *(v0 + 216);
    v60 = *(v0 + 208);
    v62 = *(v0 + 224);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v65);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "Failed to donate handles: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

    v21 = (*(v12 + 8))(v62, v60);
  }

  else
  {
    v22 = *(v0 + 328);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v25 = *(v0 + 208);

    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 288);
  v27 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v27)
  {
    v21 = *(v0 + 184);
LABEL_12:
    *(v0 + 280) = v27;
    *(v0 + 288) = v26;
    v32 = __clz(__rbit64(v27)) | (v26 << 6);
    v33 = (*(v21 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(*(v21 + 56) + 8 * v32);
    *(v0 + 296) = v36;
    v37 = objc_allocWithZone(IDSURI);

    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 initWithUnprefixedURI:v38];
    *(v0 + 304) = v39;

    if (v39)
    {
      v64 = *(v0 + 337);
      v55 = *(v0 + 192);
      v54 = *(v0 + 200);

      v56 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v56;

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v57);

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v59 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v59;
      [v56 __im_donateHandlesForMessagingKeys:isa fromURI:v39 priority:v55 isInitial:v64 completion:v0 + 80];
      v21 = v0 + 16;

      return _swift_continuation_await(v21);
    }

    v27 &= v27 - 1;
    v40 = *(v0 + 232);
    v42 = *(v0 + 208);
    v41 = *(v0 + 216);
    v43 = Logger.donations.unsafeMutableAddressor();
    (*(v41 + 16))(v40, v43, v42);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *(v0 + 168) = v47;
      *v46 = 136315394;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, (v0 + 168));

      *(v46 + 4) = v48;
      *(v46 + 12) = 2048;
      if (v36 >> 62)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      }

      v50 = *(v0 + 216);
      v61 = *(v0 + 208);
      v63 = *(v0 + 232);

      *(v46 + 14) = v49;

      _os_log_impl(&dword_0, v44, v45, "Failed to make IDSURI for %s, cannot donate %ld handles", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);

      v21 = (*(v50 + 8))(v63, v61);
    }

    else
    {
      v28 = *(v0 + 232);
      v29 = *(v0 + 208);
      v30 = *(v0 + 216);
      swift_bridgeObjectRelease_n();

      v21 = (*(v30 + 8))(v28, v29);
    }
  }

  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return _swift_continuation_await(v21);
    }

    v21 = *(v0 + 184);
    if (v31 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v21 + 8 * v31 + 64);
    ++v26;
    if (v27)
    {
      v26 = v31;
      goto LABEL_12;
    }
  }

  v51 = swift_task_alloc();
  *(v0 + 272) = v51;
  *v51 = v0;
  v51[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v52 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v52);
}

void *LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v47 = v6;
    v52 = objc_opt_self();
    v49 = (v3 + 8);
    v50 = (v3 + 16);
    result = &_swiftEmptyDictionarySingleton;
    v11 = (a1 + 40);
    *&v12 = 136315138;
    v48 = v12;
    v53 = v2;
    v46 = v8;
    while (1)
    {
      v54 = result;
      v14 = *(v11 - 1);
      v13 = *v11;

      v15 = [v52 sharedInstance];
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 existingiMessageChatForID:v16];

      if (v17 && (v18 = [v17 lastAddressedLocalHandle], v17, v18) || (v19 = objc_msgSend(v51, "account", v46), v18 = objc_msgSend(v19, "loginID"), v19, v18))
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = objc_allocWithZone(IDSURI);
        v24 = String._bridgeToObjectiveC()();
        v25 = [v23 initWithUnprefixedURI:v24];

        if (v25)
        {

          v2 = v53;
          v26 = v54;
          if (v54[2] && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22), (v28 & 1) != 0))
          {
            v56 = *(v26[7] + 8 * v27);
          }

          else
          {
            v56 = &_swiftEmptyArrayStorage;
          }

          v29 = v25;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v45 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v30 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v26;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v20, v22, isUniquelyReferenced_nonNull_native);

          result = v55;
          goto LABEL_6;
        }

        v32 = Logger.donations.unsafeMutableAddressor();
        v2 = v53;
        (*v50)(v8, v32, v53);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v56 = v36;
          *v35 = v48;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v56);

          *(v35 + 4) = v37;
          _os_log_impl(&dword_0, v33, v34, "Failed to create IDS URI for %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          v2 = v53;
        }

        else
        {
        }

        (*v49)(v8, v2);
      }

      else
      {
        v38 = Logger.donations.unsafeMutableAddressor();
        v39 = v47;
        (*v50)(v47, v38, v2);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v56 = v43;
          *v42 = v48;
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v56);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_0, v40, v41, "Failed to find from handle for %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          v2 = v53;
        }

        else
        {
        }

        (*v49)(v39, v2);
        v8 = v46;
      }

      result = v54;
LABEL_6:
      v11 += 2;
      if (!--v9)
      {
        return result;
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id closure #2 in LiteMessageServiceSession.inviteHandleMap(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 existingiMessageChatForID:v13];

  if (!v14)
  {
    v25 = Logger.donations.unsafeMutableAddressor();
    (*(v5 + 16))(v9, v25, v4);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
      _os_log_impl(&dword_0, v26, v27, "No existing chat for %s, assuming not known contact", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  result = [v14 participants];
  if (!result)
  {
    goto LABEL_25;
  }

  v16 = result;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v19 = v18;

    v20 = [v19 CNContactID];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v21 & 0xFFFFFFFFFFFFLL;
LABEL_16:

      if ((v23 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v23) & 0xF;
      }

      else
      {
        v31 = v24;
      }

      v30 = v31 != 0;
      v32 = Logger.donations.unsafeMutableAddressor();
      (*(v5 + 16))(v11, v32, v4);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v40 = v4;
        v35 = v31 != 0;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = a1;
        v39 = v37;
        v41 = v37;
        *v36 = 136315394;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a2, &v41);
        *(v36 + 12) = 1024;
        *(v36 + 14) = v35;
        _os_log_impl(&dword_0, v33, v34, "%s is known contact: %{BOOL}d", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v39);

        (*(v5 + 8))(v11, v40);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      return v30;
    }

LABEL_15:
    v24 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_16;
  }

  if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
    v18 = *(v17 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 emergencyContactHandles];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in LiteMessageServiceSession.emergencyContactsDidChange();
  v5 = v0[2];

  return LiteMessageServiceSession.donateEmergencyHandles(_:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v5, v4);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()(v3, v4, v5, v2);
}

uint64_t LiteMessageServiceSession.emergencyContactsDidChange()(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.donations.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, a1, v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  type metadata accessor for MainActor();
  v21 = v6;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a3, v23);
}

uint64_t closure #1 in LiteMessageServiceSession.familyDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v6;
  v4[22] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.familyDidChange()()
{
  v1 = [objc_opt_self() sharedManager];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in LiteMessageServiceSession.familyDidChange();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5NeverOGMd, &_sSccySaySSGs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String];
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 familyHandlesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v2, v1);
}

{
  v1 = v0[23];
  v2 = v0[18];
  v0[24] = v2;

  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiteMessageServiceSession.familyDidChange();
  v4 = v0[19];

  return LiteMessageServiceSession.donateFamilyHandles(_:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v5, v4);
}

{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.familyDidChange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.familyDidChange()(v3, v4, v5, v2);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo6IDSURICGGMd, &_ss18_DictionaryStorageCySSSaySo6IDSURICGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        outlined init with take of Any((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v37);
        outlined init with copy of Any(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = outlined init with take of Any(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo6IDSURICGGMd, &_ss18_DictionaryStorageCySSSaySo6IDSURICGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6IDSURIC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6IDSURIC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[2];
      v34 = v19[1];
      v33 = v19[3];
      v22 = *(v6 + 40);
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v34;
      v15[2] = v21;
      v15[3] = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = v19[1];
      v21 = v19[3];
      v32 = v19[2];
      v33 = *v19;
      v22 = *(v6 + 40);
      lazy protocol witness table accessor for type LiteMessageServiceSession.PendingSMSMessage and conformance LiteMessageServiceSession.PendingSMSMessage();

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v33;
      v15[1] = v20;
      v15[2] = v32;
      v15[3] = v21;
      ++*(v6 + 16);
      v3 = v31;
      v11 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v30;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v8;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v5)
  {
    if (v13 != a4 || v16 >= &v17[8 * v8])
    {
      memmove(v16, v17, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v8);
  }

  return v13;
}

uint64_t specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = IMGetDomainValueForKey();

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v7, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

void specialized LiteMessageServiceSession.lastAddressedHandleToRecentHandles()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v68 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v80 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v68 - v17;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 cachedChats];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_49:

    v63 = 0;
LABEL_50:
    v64 = Logger.donations.unsafeMutableAddressor();
    (*(v1 + 16))(v4, v64, v0);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = v63;
      _os_log_impl(&dword_0, v65, v66, "Collected %ld handles to donate for initial donation", v67, 0xCu);
    }

    (*(v1 + 8))(v4, v0);
    return;
  }

  v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_49;
  }

LABEL_3:
  if (v21 >= 1)
  {
    v85 = v11;
    v86 = v12;
    v83 = v9;
    v73 = v4;
    v74 = v1;
    v75 = v0;
    v78 = 0;
    v22 = 0;
    v23 = v20 & 0xC000000000000001;
    v84 = (v13 + 56);
    v82 = (v13 + 48);
    v76 = (v13 + 32);
    v24 = (v13 + 8);
    v79 = &_swiftEmptyDictionarySingleton;
    v77 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v20 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 serviceName];
      if (!v27)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_20:

        goto LABEL_6;
      }

      v28 = v24;
      v29 = v27;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v32)
      {
        v24 = v28;
        goto LABEL_20;
      }

      if (v30 == v33 && v32 == v34)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ([v26 style] == 45)
      {
        v37 = [v26 lastMessage];
        if (!v37)
        {

          v42 = v85;
          (*v84)(v85, 1, 1, v86);
LABEL_30:
          v24 = v28;
          outlined destroy of TaskPriority?(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          goto LABEL_6;
        }

        v38 = v37;
        v39 = [v37 time];

        if (v39)
        {
          v40 = v83;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = 0;
        }

        else
        {
          v41 = 1;
          v40 = v83;
        }

        v43 = v86;
        (*v84)(v40, v41, 1, v86);
        v42 = v85;
        outlined init with take of Date?(v40, v85);
        if ((*v82)(v42, 1, v43) == 1)
        {

          goto LABEL_30;
        }

        v44 = v81;
        (*v76)(v81, v42, v43);
        v45 = v80;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v47 = v46;
        v24 = v28;
        v48 = v45;
        v49 = *v28;
        (*v28)(v48, v43);
        if (v47 >= 2592000.0)
        {
          v49(v44, v43);
LABEL_39:

          v23 = v77;
          goto LABEL_6;
        }

        v50 = [v26 lastAddressedLocalHandle];
        if (!v50)
        {
          v24 = v28;
          v49(v81, v86);
          goto LABEL_39;
        }

        v70 = v49;
        v51 = v50;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v52;

        v53 = IMDChat.participantURI.getter();
        v24 = v28;
        v23 = v77;
        if (v53)
        {
          v54 = v53;
          v55 = v79;
          if (v79[2] && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72), (v57 & 1) != 0))
          {
            v88 = *(v55[7] + 8 * v56);
          }

          else
          {
            v88 = &_swiftEmptyArrayStorage;
          }

          v58 = v54;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v88 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v69 = v58;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v58 = v69;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v59 = v88;
          v60 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v60;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v71, v72, isUniquelyReferenced_nonNull_native);

          v79 = v87;
          v70(v81, v86);
          if (__OFADD__(v78++, 1))
          {
            goto LABEL_54;
          }

          goto LABEL_6;
        }

        v70(v81, v86);
        goto LABEL_20;
      }

LABEL_5:

      v24 = v28;
LABEL_6:
      if (v21 == ++v22)
      {

        v1 = v74;
        v0 = v75;
        v4 = v73;
        v63 = v78;
        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized LiteMessageServiceSession.inviteHandleMap(_:)(uint64_t a1)
{
  v1[27] = a1;
  v2 = type metadata accessor for Logger();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v6;
  v1[34] = v5;

  return _swift_task_switch(specialized LiteMessageServiceSession.inviteHandleMap(_:), v6, v5);
}

uint64_t specialized LiteMessageServiceSession.inviteHandleMap(_:)()
{
  v3 = v1[27];
  v4 = *(v3 + 32);
  *(v1 + 336) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v12 >= (((1 << *(v1 + 336)) + 63) >> 6))
    {
      break;
    }

    v11 = v1[27];
    v7 = *(v11 + 8 * v12 + 64);
    ++v8;
    if (v7)
    {
      v8 = v12;
      while (1)
      {
        v1[35] = v7;
        v1[36] = v8;
        v13 = __clz(__rbit64(v7)) | (v8 << 6);
        v14 = (*(v11 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v0 = *(*(v11 + 56) + 8 * v13);
        v17 = objc_allocWithZone(IDSURI);

        v18 = String._bridgeToObjectiveC()();
        v2 = [v17 initWithUnprefixedURI:v18];
        v1[37] = v2;

        if (v2)
        {
          break;
        }

        v7 &= v7 - 1;
        v20 = v1[29];
        v19 = v1[30];
        v21 = v1[28];
        v22 = Logger.donations.unsafeMutableAddressor();
        (*(v20 + 16))(v19, v22, v21);

        v23 = Logger.logObject.getter();
        v2 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v2))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v1[24] = v25;
          *v24 = 136315394;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v1 + 24);

          *(v24 + 4) = v26;
          *(v24 + 12) = 2048;
          if (v0 >> 62)
          {
            v27 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v27 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
          }

          v28 = v1[29];
          v53 = v1[28];
          v54 = v1[30];

          *(v24 + 14) = v27;

          _os_log_impl(&dword_0, v23, v2, "Failed to make IDSURI for %s, cannot donate %ld handles", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v25);

          (*(v28 + 8))(v54, v53);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v10 = v1[29];
          v9 = v1[30];
          v2 = v1[28];
          swift_bridgeObjectRelease_n();

          (*(v10 + 8))(v9, v2);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v11 = v1[27];
      }

      if (!(v0 >> 62))
      {
        v35 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
        if (v35)
        {
          goto LABEL_24;
        }

LABEL_35:

        v38 = &_swiftEmptyArrayStorage;
LABEL_36:
        v48 = [objc_opt_self() sharedInstance];
        v1[38] = v48;
        _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v38);

        v49.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v1[39] = v49.super.isa;

        v50 = [v2 unprefixedURI];
        if (!v50)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = String._bridgeToObjectiveC()();
        }

        v1[40] = v50;
        v1[22] = closure #2 in LiteMessageServiceSession.inviteHandleMap(_:);
        v1[23] = 0;
        v1[18] = _NSConcreteStackBlock;
        v1[19] = 1107296256;
        v1[20] = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
        v1[21] = &block_descriptor_18;
        v51 = _Block_copy(v1 + 18);
        v1[41] = v51;
        v1[2] = v1;
        v1[7] = v1 + 26;
        v1[3] = specialized LiteMessageServiceSession.inviteHandleMap(_:);
        v52 = swift_continuation_init();
        v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd, &_sSccyShySSGs5NeverOGMR);
        v1[10] = _NSConcreteStackBlock;
        v1[11] = 1107296256;
        v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
        v1[13] = &block_descriptor_21;
        v1[14] = v52;
        [v48 batchShareOffGridModeToHandleIDs:v49.super.isa fromHandleID:v50 isContact:v51 completion:v1 + 10];
        v36 = (v1 + 2);

        return _swift_continuation_await(v36);
      }

LABEL_34:
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
        goto LABEL_35;
      }

LABEL_24:
      v1[25] = &_swiftEmptyArrayStorage;
      v36 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
      if ((v35 & 0x8000000000000000) == 0)
      {
        v37 = 0;
        v38 = v1[25];
        v55 = v35;
        do
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v39 = *(v0 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = [v39 unprefixedURI];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v1[25] = v38;
          v46 = v38[2];
          v45 = v38[3];
          if (v46 >= v45 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
            v38 = v1[25];
          }

          ++v37;
          v38[2] = v46 + 1;
          v47 = &v38[2 * v46];
          *(v47 + 4) = v42;
          *(v47 + 5) = v44;
        }

        while (v55 != v37);

        goto LABEL_36;
      }

      __break(1u);
      return _swift_continuation_await(v36);
    }
  }

  v30 = v1[31];
  v29 = v1[32];
  v31 = v1[30];
  v32 = v1[27];

  v33 = v1[1];

  return v33();
}

{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(specialized LiteMessageServiceSession.inviteHandleMap(_:), v2, v1);
}

{
  v1 = *(v0 + 208);
  v66 = (v0 + 192);
  v67 = (v0 + 200);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);

  _Block_release(v2);
  v8 = Logger.donations.unsafeMutableAddressor();
  v10 = *(v7 + 16);
  v9 = (v7 + 16);
  v10(v5, v8, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 296);
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = *(v1 + 16);

    *(v15 + 4) = v16;

    _os_log_impl(&dword_0, v11, v12, "Completed inviting %ld handles", v15, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
  v17 = *(v0 + 288);
  v18 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v18)
  {
    v23 = *(v0 + 216);
LABEL_12:
    *(v0 + 280) = v18;
    *(v0 + 288) = v17;
    v25 = __clz(__rbit64(v18)) | (v17 << 6);
    v26 = (*(v23 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v1 = *(*(v23 + 56) + 8 * v25);
    v29 = objc_allocWithZone(IDSURI);

    v30 = String._bridgeToObjectiveC()();
    v9 = [v29 initWithUnprefixedURI:v30];
    *(v0 + 296) = v9;

    if (v9)
    {

      if (v1 >> 62)
      {
LABEL_33:
        v47 = _CocoaArrayWrapper.endIndex.getter();
        v48 = (v0 + 200);
        if (!v47)
        {
          goto LABEL_34;
        }

LABEL_23:
        *v48 = &_swiftEmptyArrayStorage;
        v49 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
        if ((v47 & 0x8000000000000000) == 0)
        {
          v50 = 0;
          v51 = *v48;
          v70 = v47;
          do
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v52 = *(v1 + 8 * v50 + 32);
            }

            v53 = v52;
            v54 = [v52 unprefixedURI];
            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            *v67 = v51;
            v59 = v51[2];
            v58 = v51[3];
            if (v59 >= v58 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
              v51 = *v67;
            }

            ++v50;
            v51[2] = v59 + 1;
            v60 = &v51[2 * v59];
            *(v60 + 4) = v55;
            *(v60 + 5) = v57;
          }

          while (v70 != v50);

          goto LABEL_35;
        }

        __break(1u);
      }

      else
      {
        v47 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        v48 = (v0 + 200);
        if (v47)
        {
          goto LABEL_23;
        }

LABEL_34:

        v51 = &_swiftEmptyArrayStorage;
LABEL_35:
        v61 = [objc_opt_self() sharedInstance];
        *(v0 + 304) = v61;
        _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v51);

        v62.super.isa = Set._bridgeToObjectiveC()().super.isa;
        *(v0 + 312) = v62;

        v63 = [v9 unprefixedURI];
        if (!v63)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = String._bridgeToObjectiveC()();
        }

        *(v0 + 320) = v63;
        *(v0 + 176) = closure #2 in LiteMessageServiceSession.inviteHandleMap(_:);
        *(v0 + 184) = 0;
        *(v0 + 144) = _NSConcreteStackBlock;
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
        *(v0 + 168) = &block_descriptor_18;
        v64 = _Block_copy((v0 + 144));
        *(v0 + 328) = v64;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = specialized LiteMessageServiceSession.inviteHandleMap(_:);
        v65 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd, &_sSccyShySSGs5NeverOGMR);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
        *(v0 + 104) = &block_descriptor_21;
        *(v0 + 112) = v65;
        [v61 batchShareOffGridModeToHandleIDs:v62.super.isa fromHandleID:v63 isContact:v64 completion:v0 + 80];
        v49 = (v0 + 16);
      }

      return _swift_continuation_await(v49);
    }

    v18 &= v18 - 1;
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 224);
    v34 = Logger.donations.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v34, v33);

    v35 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v9))
    {
      v36 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v66 = v69;
      *v36 = 136315394;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v66);

      *(v36 + 4) = v37;
      *(v36 + 12) = 2048;
      if (v1 >> 62)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      v39 = *(v0 + 232);
      v68 = *(v0 + 240);
      v40 = *(v0 + 224);

      *(v36 + 14) = v38;

      _os_log_impl(&dword_0, v35, v9, "Failed to make IDSURI for %s, cannot donate %ld handles", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);

      (*(v39 + 8))(v68, v40);
    }

    else
    {
      v20 = *(v0 + 232);
      v19 = *(v0 + 240);
      v21 = *(v0 + 224);
      swift_bridgeObjectRelease_n();

      v22 = *(v20 + 8);
      v9 = (v20 + 8);
      v22(v19, v21);
    }
  }

  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v24 >= (((1 << *(v0 + 336)) + 63) >> 6))
    {
      break;
    }

    v23 = *(v0 + 216);
    v18 = *(v23 + 8 * v24 + 64);
    ++v17;
    if (v18)
    {
      v17 = v24;
      goto LABEL_12;
    }
  }

  v42 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 240);
  v44 = *(v0 + 216);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSURI and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSURI and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSURI and conformance NSObject)
  {
    type metadata accessor for IMDHandle(255, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSURI and conformance NSObject);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F230()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_31(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for incomingMessageQueue()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for AsyncSerialQueue();
  __swift_allocate_value_buffer(v6, incomingMessageQueue);
  __swift_project_value_buffer(v6, incomingMessageQueue);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  default argument 1 of AsyncSerialQueue.init(priority:bufferingPolicy:)();
  return AsyncSerialQueue.init(priority:bufferingPolicy:)();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a3;
  v8 = type metadata accessor for Logger();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v5[15] = v11;
  *v11 = v5;
  v11[1] = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);

  return LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)(a2, a3);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)()
{
  v2 = v0;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 128) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);
  }

  else
  {
    v8 = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{
  v29 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);

  v6 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  if (v10)
  {
    v14 = *(v0 + 48);
    v27 = *(v0 + 96);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = [v14 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v8, v9, "Successfully processed received message %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v12 + 8))(v27, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = *(v0 + 64);
  (*(v0 + 56))(0);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

{
  v40 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[16];
    v12 = v0[10];
    v37 = v0[9];
    v38 = v0[11];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v13 identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v39);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v23 = Error.localizedDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_0, v9, v10, "Failed to process received message %s: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v38, v37);
  }

  else
  {
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];

    (*(v27 + 8))(v26, v28);
  }

  v29 = v0[16];
  v31 = v0[7];
  v30 = v0[8];
  v32 = _convertErrorToNSError(_:)();
  v31();

  v34 = v0[11];
  v33 = v0[12];

  v35 = v0[1];

  return v35();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:);
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v13[3] = &block_descriptor_0;
  v12 = _Block_copy(v13);

  [v5 messenger:a1 incomingMessage:a2 context:a3 clientErrorAcknowledgementBlock:v12];
  _Block_release(v12);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a2;
  v10 = v2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:), v12);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:), v10, v9);
}

void closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)()
{
  v71 = v0;
  v1 = [*(v0 + 48) pendingCounts];
  v2 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  lazy protocol witness table accessor for type IDSURI and conformance NSObject();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaDictionary.makeIterator()();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = v4 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = v3 + 64;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 64);
  }

  v11 = 0;
  v12 = *(v0 + 72);
  v13 = (v6 + 64) >> 6;
  v63 = (v12 + 8);
  v64 = (v12 + 16);
  v66 = v5;
  v67 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v15 = v11;
    v16 = v7;
    v17 = v11;
    if (!v7)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_34;
        }

        v16 = *(v5 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_16:
    v69 = (v16 - 1) & v16;
    v18 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v19 = *(*(v3 + 56) + v18);
    v20 = *(*(v3 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_20:
    v25 = *(v0 + 56);
    v68 = v21;
    v26 = [v21 longLongValue];
    v27 = [v20 unprefixedURI];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = LiteMessageServiceSession.joinedChat(with:)(v28, v30);
    if (v31)
    {
      v32 = v31;
      v33 = *(v0 + 56);

      v34 = [v32 account];
      v35 = [v33 account];
      v36 = v35;
      if (v34)
      {
        if (v35)
        {
          type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
          v37 = static NSObject.== infix(_:_:)();

          if ((v37 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_9:
          [v32 updatePendingIncomingSatelliteMessageCount:v26];

          goto LABEL_10;
        }

        v36 = v34;
      }

      else if (!v35)
      {
        goto LABEL_9;
      }

LABEL_32:
      v48 = [*(v0 + 56) account];
      v49 = [v48 accountID];

      if (!v49)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = String._bridgeToObjectiveC()();
      }

      [v32 setAccountID:v49];

      v14 = [objc_opt_self() sharedInstance];
      [v14 storeChat:v32];

      goto LABEL_9;
    }

    v38 = *(v0 + 80);
    v39 = *(v0 + 64);
    v40 = Logger.liteSession.unsafeMutableAddressor();
    (*v64)(v38, v40, v39);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 80);
    v65 = *(v0 + 64);
    if (v43)
    {
      v62 = v2;
      v45 = swift_slowAlloc();
      v61 = v44;
      v46 = swift_slowAlloc();
      v70 = v46;
      *v45 = 136315138;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v70);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_0, v41, v42, "Failed to find or join chat for handle %s to assign pending message count", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);

      v2 = v62;

      (*v63)(v61, v65);
    }

    else
    {

      (*v63)(v44, v65);
    }

LABEL_10:
    v11 = v17;
    v7 = v69;
    v5 = v66;
    v3 = v67;
  }

  v22 = __CocoaDictionary.Iterator.next()();
  if (v22)
  {
    v24 = v23;
    *(v0 + 24) = v22;
    swift_dynamicCast();
    v20 = *(v0 + 16);
    *(v0 + 40) = v24;
    swift_dynamicCast();
    v21 = *(v0 + 32);
    v17 = v11;
    v69 = v7;
    if (v20)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
  outlined consume of [IDSURI : NSNumber].Iterator._Variant();
  v50 = [objc_opt_self() sharedInstance];
  if (!v50)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = *(v0 + 88);
  v53 = *(v0 + 48);
  v54 = *(v0 + 56);

  v55 = [v53 totalPendingMessagesCount];
  v56 = [v55 integerValue];

  v57 = [v54 service];
  v58 = [v57 internalName];

  if (!v58)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = String._bridgeToObjectiveC()();
  }

  v59 = *(v0 + 80);
  [v51 updateBadgeForPendingSatelliteMessagesIfNeeded:v56 onService:v58];

  v60 = *(v0 + 8);

  v60();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Date();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:), v12, v11);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = IDSOffGridMessageContext.topic.getter();
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  if (v3)
  {
    v10 = v0[8];
    static Date.now.getter();
    LiteMessageServiceSession.didReceiveRelayMessageDeliveryReceipt(messageID:date:)(v9, v6);
    (*(v5 + 8))(v4, v7);
  }

  else
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = String._bridgeToObjectiveC()();
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v4, v7);
    [v8 didReceiveMessageDeliveryReceiptForMessageID:v13 date:isa];
  }

  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:), v11, v10);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)()
{
  v1 = v0[9];
  v2 = v0[3];

  v3 = [v2 preferredServiceType];
  v4 = [v2 expirationDate];
  if (v4)
  {
    v5 = v0[8];
    v6 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  v13 = v0[2];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v8, v7, 1, v14);
  LiteMessageServiceSession.processPreferredServiceType(_:for:expiresAfter:)(v3, v12, v10, v8);
  v15 = outlined destroy of TaskPriority?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11(v15);

  v16 = v0[1];

  return v16();
}

uint64_t specialized LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.liteSession.unsafeMutableAddressor();
  (*(v8 + 16))(v11, v12, v7);
  v13 = a1;
  v14 = a2;
  v15 = v13;
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v66 = v62;
    *v19 = 136316674;
    v20 = [v16 identifier];
    v61 = v18;
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = a4;
    v23 = v22;
    v59 = v17;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v66);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = [v15 senderURI];
    v60 = v7;
    v28 = [v27 unprefixedURI];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v66);

    *(v19 + 14) = v32;
    *(v19 + 22) = 2080;
    v33 = [v15 recipientURI];
    v34 = [v33 unprefixedURI];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v66);

    *(v19 + 24) = v38;
    *(v19 + 32) = 2048;
    v39 = [v15 encryptionProperties];
    v40 = [v39 segmentNumber];

    v41 = [v40 integerValue];
    *(v19 + 34) = v41;

    *(v19 + 42) = 2048;
    a4 = v63;
    v42 = [v15 encryptionProperties];
    v43 = [v42 totalSegments];

    v44 = [v43 integerValue];
    *(v19 + 44) = v44;

    *(v19 + 52) = 1024;
    v45 = [v16 transportType];

    *(v19 + 54) = v45 == &dword_0 + 2;
    *(v19 + 58) = 2080;
    v46 = IDSOffGridMessageContext.topic.getter();
    v47 = LiteTopic.rawValue.getter(v46 & 1);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v66);

    *(v19 + 60) = v49;
    v50 = v59;
    _os_log_impl(&dword_0, v59, v61, "Received encrypted iMessage Lite message %s from %s to %s (segment %ld of %ld) (via satellite: %{BOOL}d) (topic: %s)", v19, 0x44u);
    swift_arrayDestroy();

    (*(v8 + 8))(v11, v60);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  if (one-time initialization token for incomingMessageQueue != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v51, incomingMessageQueue);
  v52 = swift_allocObject();
  v53 = v64;
  v54 = v65;
  v52[2] = v65;
  v52[3] = v15;
  v52[4] = v16;
  v52[5] = v53;
  v52[6] = a4;
  v55 = v15;
  v56 = v16;
  v57 = v54;

  AsyncSerialQueue.perform(_:)();
}

uint64_t sub_11670()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(v4, v5, v6, v2, v3);
}

uint64_t specialized LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.liteSession.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);

  v17 = a3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v38 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v10;
    v21 = v20;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
    *(v21 + 12) = 2080;
    v22 = [v17 unprefixedURI];
    v23 = a1;
    v24 = a2;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v41);

    *(v21 + 14) = v28;
    a2 = v24;
    a1 = v23;
    _os_log_impl(&dword_0, v18, v38, "Received message delivery receipt for %s from %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v37;
  }

  (*(v12 + 8))(v15, v11);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  type metadata accessor for MainActor();

  v30 = a2;
  v31 = v39;
  v32 = v40;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = a1;
  v34[7] = v30;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:), v34);
}

uint64_t specialized LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v30 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 senderURI];
  v14 = [v13 unprefixedURI];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = Logger.liteSession.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v17, v8);

  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v16, &v34);
    *(v21 + 12) = 2048;
    *(v21 + 14) = [v18 preferredServiceType];

    _os_log_impl(&dword_0, v19, v20, "Received service update request from %s to switch to service to %ld", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  type metadata accessor for MainActor();
  v24 = v18;
  v25 = v30[1];
  v26 = v32;

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v25;
  v28[5] = v24;
  v28[6] = v33;
  v28[7] = v16;
  v28[8] = v31;
  v28[9] = v26;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:), v28);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)partial apply()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(v4, v5, v6, v2, v3);
}

uint64_t sub_11F54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11F94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_120B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_121EC()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)()
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

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(v2, v3, v4, v5, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t one-time initialization function for outgoingMessageQueue()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for AsyncSerialQueue();
  __swift_allocate_value_buffer(v6, outgoingMessageQueue);
  __swift_project_value_buffer(v6, outgoingMessageQueue);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  default argument 1 of AsyncSerialQueue.init(priority:bufferingPolicy:)();
  return AsyncSerialQueue.init(priority:bufferingPolicy:)();
}

double key path getter for LiteMessageServiceSession.lastSatelliteStateChange : LiteMessageServiceSession@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___LiteMessageServiceSession_state + 32);
  *a2 = result;
  return result;
}

double key path setter for LiteMessageServiceSession.lastSatelliteStateChange : LiteMessageServiceSession(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR___LiteMessageServiceSession_state + 32) = *a1;
  return result;
}

double (*LiteMessageServiceSession.lastSatelliteStateChange.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 32);
  return LiteMessageServiceSession.lastSatelliteStateChange.modify;
}

double LiteMessageServiceSession.lastSatelliteStateChange.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 32) = *a1;
  return result;
}

uint64_t (*LiteMessageServiceSession.emergencyContactsNotificationToken.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return LiteMessageServiceSession.emergencyContactsNotificationToken.modify;
}

uint64_t (*LiteMessageServiceSession.familyContactsNotificationToken.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 52);
  return LiteMessageServiceSession.familyContactsNotificationToken.modify;
}

uint64_t static LiteMessageServiceSession.PendingSMSMessage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t LiteMessageServiceSession.PendingSMSMessage.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int LiteMessageServiceSession.PendingSMSMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageServiceSession.PendingSMSMessage()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LiteMessageServiceSession.PendingSMSMessage()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageServiceSession.PendingSMSMessage()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiteMessageServiceSession.PendingSMSMessage(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t key path setter for LiteMessageServiceSession.pendingSMSMessages : LiteMessageServiceSession(void *a1, void *a2)
{
  v2 = *a2 + OBJC_IVAR___LiteMessageServiceSession_state;
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
}

uint64_t LiteMessageServiceSession.pendingSMSMessages.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___LiteMessageServiceSession_state + 56);
  *(v1 + OBJC_IVAR___LiteMessageServiceSession_state + 56) = a1;
}

uint64_t (*LiteMessageServiceSession.pendingSMSMessages.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  a1[2] = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = *(v1 + v2 + 56);
  a1[1] = v1;

  return LiteMessageServiceSession.pendingSMSMessages.modify;
}

uint64_t LiteMessageServiceSession.pendingSMSMessages.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
}

id LiteMessageServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 service:a2 replicatingForSession:a3];

  return v6;
}

uint64_t LiteMessageServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  *&v44[0] = 0;
  v9 = [objc_allocWithZone(IDSOffGridMessenger) initWithServiceType:1 queue:v8 error:v44];
  v10 = *&v44[0];
  if (!v9)
  {
    v38 = *&v44[0];
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_16;
  }

  v11 = v9;
  v12 = *&v44[0];

  v13 = static OS_dispatch_queue.main.getter();
  v14 = objc_allocWithZone(IDSOffGridMessenger);
  *&v44[0] = 0;
  v15 = [v14 initWithServiceType:2 queue:v13 error:v44];
  v10 = *&v44[0];
  if (!v15)
  {
LABEL_16:
    v39 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v16 = v15;
  v17 = *&v44[0];

  type metadata accessor for LiteMessageSegmentStore();
  v18 = LiteMessageSegmentStore.__allocating_init()();
  v19 = [objc_opt_self() sharedInstanceForBagType:1];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (!*(&v43 + 1))
  {

    outlined destroy of TaskPriority?(v44, &_sypSgMd, &_sypSgMR);
LABEL_11:
    v23 = 21600.0;
    goto LABEL_12;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  [v41 doubleValue];
  v23 = v22;

LABEL_12:
  v24 = [objc_allocWithZone(IDSRateLimiter) initWithLimit:2 timeLimit:v23];
  if (!v24)
  {
    __break(1u);
  }

  v25 = &v4[OBJC_IVAR___LiteMessageServiceSession_state];
  *v25 = v11;
  *(v25 + 1) = v16;
  *(v25 + 2) = v18;
  *(v25 + 3) = v24;
  *(v25 + 2) = xmmword_534F0;
  *(v25 + 6) = 0;
  *(v25 + 7) = &_swiftEmptySetSingleton;
  v40.receiver = v4;
  v40.super_class = LiteMessageServiceSession;
  v26 = objc_msgSendSuper2(&v40, "initWithAccount:service:replicatingForSession:", a1, a2, a3);
  v27 = &v26[OBJC_IVAR___LiteMessageServiceSession_state];
  v28 = *&v26[OBJC_IVAR___LiteMessageServiceSession_state];
  v29 = v26;
  [v28 setDelegate:v29];
  [v27[1] setDelegate:v29];
  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  [v31 addObserver:v29 selector:"emergencyContactsDidChange" name:IMDEmergencyContactsDidChangeNotification object:0];

  v32 = [v30 defaultCenter];
  [v32 addObserver:v29 selector:"familyDidChange" name:IMDFamilyDidChangeNotification object:0];

  v33 = [v30 defaultCenter];
  [v33 addObserver:v29 selector:"handleSMSMessageSentWithNotification:" name:IMDSMSMessageSentNotification object:0];

  v34 = [objc_opt_self() sharedController];
  v35 = v29;
  [v34 addObserver:v35];

  v36 = [objc_opt_self() sharedInstance];
  [v36 addListener:v35];

  LiteMessageServiceSession.prepareForFirstUnlock()();
  return v35;
}

void LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v36 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v31 = v11;
    v32 = v8;
    v33 = a5;
    v34 = v6;
    v35 = a3;
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v8 = 136315138;
    v21 = [v17 guid];

    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v37);

    *(v8 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "Enqueuing relay message to send: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);

    (*(v12 + 8))(v15, v31);
    v6 = v34;
    a3 = v35;
    a5 = v33;
    LOBYTE(v8) = v32;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v26, outgoingMessageQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  *(v27 + 24) = v6;
  *(v27 + 32) = v36;
  *(v27 + 40) = a3;
  *(v27 + 48) = v8;
  *(v27 + 56) = a5;
  v28 = v17;
  v29 = v6;

  AsyncSerialQueue.perform(_:)();
}

void LiteMessageServiceSession.sendRelayMessage(_:toChat:style:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a2;
  v40 = a7;
  v38 = a5;
  v9 = v7;
  LODWORD(v10) = a4;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v14 + 16))(v17, v18, v13);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v33 = v13;
    v34 = v10;
    v35 = a6;
    v36 = v9;
    v37 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315138;
    v10 = [v19 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "Enqueuing relay message to send: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);

    (*(v14 + 8))(v17, v33);
    v9 = v36;
    a3 = v37;
    a6 = v35;
    LOBYTE(v10) = v34;
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v28, outgoingMessageQueue);
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  *(v29 + 24) = v9;
  *(v29 + 32) = v39;
  *(v29 + 40) = a3;
  *(v29 + 48) = v10;
  *(v29 + 56) = a6;
  v30 = v19;
  v31 = v9;

  AsyncSerialQueue.perform(_:)();
}

uint64_t @objc LiteMessageServiceSession.sendRelayMessage(_:toChat:style:)(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(v13, v10, v12, a5, a6);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  *(v6 + 208) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 120) = v7;
  v8 = *(v7 - 8);
  *(v6 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 160) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 168) = v11;
  *(v6 + 176) = v10;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:), v11, v10);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 208);

  return LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)(v7, v5, v3, v8, v4);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 176);
  v8 = *(v3 + 168);
  if (v1)
  {
    v9 = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  }

  else
  {
    v9 = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  }

  return _swift_task_switch(v9, v8, v7);
}

void closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v73 = v0;
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = v1;
  v9 = Logger.liteRelaySession.unsafeMutableAddressor();
  v10 = *(v5 + 16);
  v10(v3, v9, v4);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 192);
  if (v13)
  {
    v71 = v10;
    v15 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v14 guid];

    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = *(v0 + 128);
    v69 = *(v0 + 120);
    v70 = *(v0 + 152);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v72);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v72);
    _os_log_impl(&dword_0, v11, v12, "Successfully sent message %s to %s", v16, 0x16u);
    swift_arrayDestroy();

    v25 = *(v18 + 8);
    v25(v70, v69);
    v10 = v71;
  }

  else
  {
    v26 = *(v0 + 152);
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);
    v29 = *(v0 + 104);

    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v30 = *(v0 + 192);
  [v30 setErrorCode:{0, v69, v70}];

  v31 = *(v0 + 192);
  v32 = *(v0 + 88);
  v33 = LiteMessageServiceSession.accountForSending(on:command:)(1, *(v0 + 112));
  if (!v33)
  {
    goto LABEL_12;
  }

  v34 = v33;
  v35 = [v33 session];

  if (!v35)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {

LABEL_12:
    v43 = *(v0 + 144);
    v44 = *(v0 + 120);
    v45 = *(v0 + 128);
    v46 = Logger.liteRelaySession.unsafeMutableAddressor();
    v10(v43, v46, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 112);
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v49;
      _os_log_impl(&dword_0, v47, v48, "Could not process message: failed to find sms lite relay session for command %ld", v50, 0xCu);
    }

    v51 = *(v0 + 144);
    v52 = *(v0 + 120);
    v53 = *(v0 + 128);

    v25(v51, v52);
    goto LABEL_17;
  }

  v37 = *(v0 + 112);
  if (v37 == 140)
  {
    if (![v31 errorCode])
    {
      v58 = [*(v0 + 80) guid];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v63 = [v31 guid];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v68 = *(v0 + 88);
      LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(*(v0 + 80), v60, v62, v65, v67, *(v0 + 96), *(v0 + 104), *(v0 + 208));

      goto LABEL_18;
    }
  }

  else if (v37 == 143)
  {
    v38 = *(v0 + 208);
    v40 = *(v0 + 96);
    v39 = *(v0 + 104);
    v41 = v36;
    v42 = String._bridgeToObjectiveC()();
    [v41 didSendMessage:v31 forChat:v42 style:v38];
  }

LABEL_17:
LABEL_18:
  v55 = *(v0 + 144);
  v54 = *(v0 + 152);
  v56 = *(v0 + 136);

  v57 = *(v0 + 8);

  v57();
}

{
  v91 = v0;
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = Logger.liteRelaySession.unsafeMutableAddressor();
  v8 = *(v3 + 16);
  v8(v2, v7, v4);
  v9 = v6;

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v89 = v8;
    v12 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = [v12 guid];
    v15 = *(v0 + 200);
    if (!v14)
    {
LABEL_30:
      v84 = *(v0 + 104);
      v85 = *(v0 + 80);

      __break(1u);
      return;
    }

    v16 = v14;
    v86 = *(v0 + 128);
    v87 = *(v0 + 120);
    v88 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v90);

    *(v13 + 4) = v23;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v90);
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v25 = *(v0 + 40);
    v24 = *(v0 + 48);
    v26 = *(v0 + 56);
    v27 = Error.localizedDescription.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v90);

    *(v13 + 24) = v29;
    _os_log_impl(&dword_0, v10, v11, "Failed to send message %s to %s: %s", v13, 0x20u);
    swift_arrayDestroy();

    v30 = *(v86 + 8);
    v30(v88, v87);
    v8 = v89;
  }

  else
  {
    v31 = *(v0 + 200);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);
    v35 = *(v0 + 104);

    v30 = *(v33 + 8);
    v30(v32, v34);
  }

  v36 = *(v0 + 200);
  v37 = *(v0 + 80);
  swift_getErrorValue();
  v38 = *(v0 + 16);
  v39 = *(v0 + 32);
  [v37 setErrorCode:Error.liteItemSendErrorCode.getter(*(v0 + 24))];
  v40 = [objc_opt_self() sharedInstance];
  if (!v40)
  {
    __break(1u);
    goto LABEL_30;
  }

  v41 = v40;
  v42 = *(v0 + 200);
  v43 = *(v0 + 160);

  v44 = String._bridgeToObjectiveC()();
  v45 = _convertErrorToNSError(_:)();
  [v41 forceAutoBugCaptureWithSubType:v44 errorPayload:v45];

  v46 = *(v0 + 80);
  v47 = *(v0 + 88);
  v48 = LiteMessageServiceSession.accountForSending(on:command:)(1, *(v0 + 112));
  if (!v48)
  {
    goto LABEL_13;
  }

  v49 = v48;
  v50 = [v48 session];

  if (!v50)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51)
  {

LABEL_13:
    v58 = *(v0 + 144);
    v59 = *(v0 + 120);
    v60 = *(v0 + 128);
    v61 = Logger.liteRelaySession.unsafeMutableAddressor();
    v8(v58, v61, v59);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 112);
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = v64;
      _os_log_impl(&dword_0, v62, v63, "Could not process message: failed to find sms lite relay session for command %ld", v65, 0xCu);
    }

    v66 = *(v0 + 144);
    v67 = *(v0 + 120);
    v68 = *(v0 + 128);

    v30(v66, v67);
    goto LABEL_18;
  }

  v52 = *(v0 + 112);
  if (v52 == 140)
  {
    if (![v46 errorCode])
    {
      v73 = [*(v0 + 80) guid];
      if (v73)
      {
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;
      }

      else
      {
        v75 = 0;
        v77 = 0;
      }

      v78 = [v46 guid];
      if (v78)
      {
        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      v83 = *(v0 + 88);
      LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(*(v0 + 80), v75, v77, v80, v82, *(v0 + 96), *(v0 + 104), *(v0 + 208));

      goto LABEL_19;
    }
  }

  else if (v52 == 143)
  {
    v53 = *(v0 + 208);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    v56 = v51;
    v57 = String._bridgeToObjectiveC()();
    [v56 didSendMessage:v46 forChat:v57 style:v53];
  }

LABEL_18:
LABEL_19:
  v70 = *(v0 + 144);
  v69 = *(v0 + 152);
  v71 = *(v0 + 136);

  v72 = *(v0 + 8);

  v72();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(v2, v3, v4, v5, v7, v6);
}

void LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v9 = v8;
  v43 = a8;
  v41[1] = a6;
  v42 = a7;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v41 - v21;
  if (!a3 || !a5 || a2 == a4 && a3 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v23 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v16 + 16))(v20, v23, v15);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "After relaying, the guid is not changed, no need to update it", v26, 2u);
    }

    (*(v16 + 8))(v20, v15);
  }

  else
  {
    v27 = String._bridgeToObjectiveC()();
    [a1 setGuid:v27];

    v28 = String._bridgeToObjectiveC()();
    [a1 setOriginalGUID:v28];

    v29 = [objc_opt_self() sharedInstance];
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 reassignIdentifierForExistingMessageWithGUID:v30 toNewGUID:v31];

    if (v32)
    {
      v33 = v32;
      v34 = [v9 broadcasterForChatListeners];
      v35 = [v9 accountID];
      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      v42 = String._bridgeToObjectiveC()();
      [v34 account:v35 chat:v42 style:v43 messageUpdated:v33 suppressNotification:1];

      swift_unknownObjectRelease();
      v36 = v42;
    }

    else
    {
      v37 = Logger.liteRelaySession.unsafeMutableAddressor();
      (*(v16 + 16))(v22, v37, v15);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "Item not found in database, no need to update it", v40, 2u);
      }

      (*(v16 + 8))(v22, v15);
    }
  }
}