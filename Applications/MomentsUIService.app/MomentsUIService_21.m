id closure #1 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:)(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v39 = a4;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-v6];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v30[-v17];
  result = [a2 userInfo];
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v37 = v9;
      v38 = v8;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      v36 = *(v13 + 16);
      v36(v16, v18, v12);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v33 = v22;
        v34 = swift_slowAlloc();
        v41 = v34;
        *v22 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
        v32 = v20;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = *(v13 + 8);
        v31 = v21;
        v35 = v26;
        v26(v16, v12);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v41);

        v29 = v32;
        v28 = v33;
        *(v33 + 1) = v27;
        _os_log_impl(&_mh_execute_header, v29, v31, v39, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      else
      {

        v35 = *(v13 + 8);
        v35(v16, v12);
      }

      (*(v37 + 8))(v11, v38);
      v36(v7, v18, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      MOPresenterServer.removeConnectionID(connectionID:)(v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v7, &_s10Foundation4UUIDVSgMd);
      return (v35)(v18, v12);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id closure #3 in closure #1 in MOPresenterServer.listener(_:didReceive:withContext:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v27[-v12];
  result = [a2 userInfo];
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      (*(v8 + 16))(v11, v13, v7);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31 = v3;
        v18 = v17;
        v29 = v17;
        v30 = swift_slowAlloc();
        v32 = v30;
        *v18 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
        v28 = v16;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v4;
        v22 = v21;
        v23 = *(v8 + 8);
        v23(v11, v7);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v32);

        v25 = v29;
        *(v29 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v15, v28, "Connection active: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);

        (*(v20 + 8))(v6, v31);
        return (v23)(v13, v7);
      }

      else
      {

        v26 = *(v8 + 8);
        v26(v11, v7);
        (*(v4 + 8))(v6, v3);
        return (v26)(v13, v7);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t MOPresenterServer.addConnection(connection:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v104 - v9;
  v10 = type metadata accessor for Logger();
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v109 = &v104 - v15;
  v16 = __chkstk_darwin(v14);
  v119 = &v104 - v17;
  __chkstk_darwin(v16);
  v118 = &v104 - v18;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v115 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = (&v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v112);
  v113 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v22 - 8);
  v111 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 remoteProcess];
  v116 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v24);
  v26 = v25;

  v120 = v26;
  if (!v26)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    (*(v5 + 16))(v8, a2, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v127[0] = v38;
      *v37 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v127);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "[MOPresenterServer] Can't add connection with nil clientID, connectionID=%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v121 + 8))(v13, v122);
    return 0;
  }

  v110 = a2;
  v27 = [a1 remoteProcess];
  v107 = v19;
  if (v27 && (v28 = v27, v29 = [v27 bundleIdentifier], v28, v29))
  {
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v117 = 0;
    v31 = 0;
  }

  v32 = [a1 remoteToken];
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 valueForEntitlement:v33];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127[0] = v125;
  v127[1] = v126;
  if (!*(&v126 + 1))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v127, &_sypSgMd);
    if (v31)
    {
      v109 = 0;
      v45 = 0;
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v43 = swift_dynamicCast();
  v44 = v124;
  if (v43)
  {
    v45 = v123[5];
  }

  else
  {
    v45 = 0;
  }

  if (v43)
  {
    v46 = v124;
  }

  else
  {
    v46 = 0;
  }

  if (v31)
  {
    v109 = v46;
LABEL_22:
    v47 = v31;
    v48 = v127 + 8;
    goto LABEL_23;
  }

  if (!v46)
  {
LABEL_30:

    type metadata accessor for CommonLogger();
    v65 = v109;
    static CommonLogger.presentation.getter();
    v66 = v108;
    (*(v5 + 16))(v108, v110, v4);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *&v127[0] = swift_slowAlloc();
      *v69 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v5;
      v73 = v72;
      (*(v71 + 8))(v66, v4);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, v127);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, v127);
      _os_log_impl(&_mh_execute_header, v67, v68, "[MOPresenterServer] Can't add connection with nil bundleID, connectionID=%s, applicationIdentifier=%s", v69, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v66, v4);
    }

    (*(v121 + 8))(v65, v122);
    return 0;
  }

  v47 = v46;

  v109 = v44;
  v105 = v45;
  v48 = &v128;
LABEL_23:
  *(v48 - 32) = v45;
  type metadata accessor for MOServerConnectionProperties();
  v49 = swift_allocObject();
  *(v49 + 32) = 0;
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  *(v49 + 40) = 4;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v50 = *(v49 + 16);
  *(v49 + 16) = a1;
  v51 = a1;

  v108 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1002A48B0;
  *(v52 + 56) = &type metadata for String;
  *(v52 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v53 = v117;
  *(v52 + 32) = v117;
  *(v52 + 40) = v47;

  String.init(format:_:)();
  v106 = v54;
  static DispatchQoS.userInitiated.getter();
  *&v125 = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v115)[13](v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
  v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  v56 = *(v49 + 24);
  *(v49 + 24) = v55;

  swift_beginAccess();
  v114 = (v49 + 128);
  *(v49 + 128) = v53;
  v57 = v47;
  *(v49 + 136) = v47;

  v58 = objc_allocWithZone(LSApplicationRecord);

  v59 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v53, v47, 1);
  v60 = v59;
  if (v59)
  {
    v61 = [v59 localizedName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  swift_beginAccess();
  *(v49 + 112) = v62;
  *(v49 + 120) = v64;

  type metadata accessor for CommonLogger();
  v76 = v118;
  static CommonLogger.presentation.getter();
  v77 = v60;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  v80 = os_log_type_enabled(v78, v79);
  v115 = v77;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v81 = 136315394;
    if (v60)
    {
      v82 = [v77 localizedName];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;
    }

    else
    {
      v85 = 0xE700000000000000;
      v83 = 0x6E776F6E6B6E55;
    }

    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v123);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2080;
    *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v57, v123);
    _os_log_impl(&_mh_execute_header, v78, v79, "[MOPresenterServer] Register app for data access, appName: %s, bundleID: %s", v81, 0x16u);
    swift_arrayDestroy();

    v86 = *(v121 + 8);
    v86(v118, v122);
  }

  else
  {

    v86 = *(v121 + 8);
    v86(v76, v122);
  }

  type metadata accessor for DataAccessManager();
  static DataAccessManager.registerApplicationsForDataAccess(applicationBundleIdentifier:)();

  v88 = v119;
  static CommonLogger.presentation.getter();

  v89 = v120;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v92 = 136315906;
    if (*(v49 + 120))
    {
      v93 = *(v49 + 112);
      v94 = *(v49 + 120);
    }

    else
    {
      v94 = 0xE300000000000000;
      v93 = 7104878;
    }

    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v123);

    *(v92 + 4) = v97;
    *(v92 + 12) = 2080;
    if (*(v49 + 136))
    {
      v98 = *v114;
      v99 = *(v49 + 136);
    }

    else
    {
      v99 = 0xE300000000000000;
      v98 = 7104878;
    }

    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v123);

    *(v92 + 14) = v100;
    *(v92 + 22) = 2080;
    if (v109)
    {
      v101 = v105;
    }

    else
    {
      v101 = 7104878;
    }

    if (v109)
    {
      v102 = v109;
    }

    else
    {
      v102 = 0xE300000000000000;
    }

    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v123);

    *(v92 + 24) = v103;
    *(v92 + 32) = 2080;
    v96 = v116;
    v89 = v120;
    *(v92 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v120, v123);
    _os_log_impl(&_mh_execute_header, v90, v91, "[MOPresenterServer] added connection, appName: %s, bundleID: %s, applicationIdentifier=%s, clientID=%s", v92, 0x2Au);
    swift_arrayDestroy();

    v86(v119, v122);
    v95 = v110;
  }

  else
  {

    v86(v88, v122);
    v95 = v110;
    v96 = v116;
  }

  MOPresenterServer.addConnection(clientID:connectionID:properties:)(v96, v89, v95, v49);

  return 1;
}

uint64_t closure #2 in MOPresenterServer.listener(_:didReceive:withContext:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((swift_isaMask & *a1) + 0xC0))(a2);
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    if (*(v11 + 16))
    {
      [a3 activate];
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Connection was removed before activation, skipping activate call", v15, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

id closure #1 in closure #1 in MOPresenterServer.setupListener()(void *a1, uint64_t a2)
{
  static ViewServiceConstants.momentsUIServiceDomain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static ViewServiceConstants.momentsUIServicePresenterIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t MOPresenterServer.getConnectionIdentifier(connection:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 userInfo])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd);
    v3 = type metadata accessor for UUID();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
  }

  else
  {
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

id MOPresenterServer.addConnection(clientID:connectionID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v30 = type metadata accessor for UUID();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v31 = *(v4 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v31 lock];
  v15 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
  swift_beginAccess();
  if (!*(*(v4 + v15) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), v17 = v16, , (v17 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(v4 + v15);
    *(v4 + v15) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&_swiftEmptySetSingleton, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v15) = v33[0];
    swift_endAccess();
  }

  v19 = MOPresenterServer._clientConnectionsImpl.modify();
  v20 = specialized Dictionary.subscript.modify(v33, a1, a2);
  if (*v21)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd);
    v23 = *(v22 + 48);
    (*(v9 + 16))(v11, a3, v30);
    v24 = specialized Set._Variant.insert(_:)(&v14[v23], v11);
    (v20)(v33, 0);
    (v19)(v34, 0);
    *v14 = v24 & 1;
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  }

  else
  {
    (v20)(v33, 0);
    (v19)(v34, 0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd);
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd);
  v26 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v27 = v32;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *(v5 + v26);
  *(v5 + v26) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, a3, v28);
  *(v5 + v26) = v33[0];
  swift_endAccess();
  return [v31 unlock];
}

uint64_t closure #2 in MOPresenterServer.removeConnectionID(connectionID:)()
{
  v1 = v0[2];
  type metadata accessor for MomentsUIManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[3] = v5;
  *(v5 + 16) = xmmword_1002A48B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #2 in MOPresenterServer.removeConnectionID(connectionID:);

  return static MomentsUIManager.releaseUserIsActivelyBrowsingOnUI(_:)(v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in MOPresenterServer.destroyScene(with:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MOPresenterServer] Error deactivating scene: %@", v6, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v7, &_sSo8NSObjectCSgMd);
  }

  return (*(v1 + 8))(v3, v0);
}

void *MOPresenterServer.getConnectionHostID(with:)()
{
  v1 = (*((swift_isaMask & *v0) + 0xC0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = v3;

  return v3;
}

id MOPresenterServer.getConnectionProperties(connection:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v12 - v9;
  if (result)
  {
    result = [result userInfo];
    if (result)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();
        (*(v4 + 32))(v10, v7, v3);
        v11 = (*((swift_isaMask & *v1) + 0xC0))(v10);
        (*(v4 + 8))(v10, v3);
        return v11;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MOPresenterServer.shouldShowStateOfMindTip.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getStateForSetting:9];

  return v1 ^ 1;
}

uint64_t MOPresenterServer.retrieveOnboardingState()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  *v1 = v0;
  v1[1] = NotificationRealTimeCheckManager.fetchLastVisit();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x80000001002BABE0, closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, v2);
}

uint64_t closure #1 in MOPresenterServer.retrieveOnboardingState()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState(), v11);

  return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_sScPSgMd);
}

void closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v2)
    {
      __break(1u);
      return;
    }

    v3 = 0;
  }

  *(v0 + 16) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:OnboardingType.onboardingFlowStatus.getter(v3)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd);
  CheckedContinuation.resume(returning:)();
  v4 = *(v0 + 8);

  v4();
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveOnboardingState()(const void *a1)
{
  *(v1 + 24) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  *v2 = v1;
  v2[1] = @objc closure #1 in MOPresenterServer.retrieveOnboardingState();

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000019, 0x80000001002BABE0, closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, v3);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveOnboardingState()()
{

  return _swift_task_switch(@objc closure #1 in MOPresenterServer.retrieveOnboardingState(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t MOPresenterServer.requestPresentation(for:with:)(void *a1, void *a2)
{
  v166 = a2;
  v170 = a1;
  v2 = type metadata accessor for Client();
  v162 = *(v2 - 8);
  v163 = v2;
  __chkstk_darwin(v2);
  v4 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UISceneSessionActivationRequest();
  v160 = *(v5 - 8);
  v161 = v5;
  __chkstk_darwin(v5);
  v159 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _UIWindowSceneOverlayPlacement();
  v157 = *(v7 - 8);
  v158 = v7;
  __chkstk_darwin(v7);
  v156 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  ObjectType = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v167 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v168 = &v146 - v16;
  v17 = __chkstk_darwin(v15);
  v164 = &v146 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v146 - v20;
  __chkstk_darwin(v19);
  v23 = &v146 - v22;
  v173 = type metadata accessor for UUID();
  v171 = *(v173 - 8);
  v24 = *(v171 + 64);
  v25 = __chkstk_darwin(v173);
  v169 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v165 = &v146 - v27;
  v28 = __chkstk_darwin(v26);
  v155 = &v146 - v29;
  __chkstk_darwin(v28);
  v31 = &v146 - v30;
  v32 = objc_opt_self();
  v33 = [v32 currentContext];
  if (v33)
  {
    v34 = v33;
    v174 = v9;
    if ([v33 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v154 = (*((swift_isaMask & *v172) + 0xC0))(v31);
        if (v154)
        {
          v150 = v32;
          v35 = v31;
          v152 = type metadata accessor for CommonLogger();
          static CommonLogger.presentation.getter();
          v36 = v170;
          v37 = v170;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          v149 = v37;

          LODWORD(v153) = v39;
          v40 = v39;
          v41 = v38;
          v42 = os_log_type_enabled(v38, v40);
          v151 = v35;
          v148 = v4;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v177[0] = v147;
            *v43 = 136315138;
            if (v36)
            {
              v44 = [v149 stringRepresentation];
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;

              v48 = v45;
            }

            else
            {
              v48 = 0;
              v47 = 0xE000000000000000;
            }

            v54 = v150;
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v177);

            *(v43 + 4) = v55;
            _os_log_impl(&_mh_execute_header, v41, v153, "[MOPresenterServer] requestPresentation, activating new scene with token: %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);

            v53 = v174;
            v153 = *(ObjectType + 8);
            v153(v23, v174);
          }

          else
          {

            v53 = v174;
            v153 = *(ObjectType + 8);
            v153(v23, v174);
            v54 = v150;
          }

          v56 = v154;
          swift_beginAccess();
          if (*(v56 + 32))
          {
            static CommonLogger.presentation.getter();

            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v177[0] = v60;
              *v59 = 134218242;
              swift_beginAccess();
              v61 = *(v56 + 40);
              if (v61 == 4)
              {
                v61 = -1;
              }

              *(v59 + 4) = v61;

              *(v59 + 12) = 2080;
              swift_beginAccess();
              if (*(v56 + 64))
              {
                v62 = 89;
              }

              else
              {
                v62 = 78;
              }

              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, 0xE100000000000000, v177);

              *(v59 + 14) = v63;
              _os_log_impl(&_mh_execute_header, v57, v58, "[MOPresenterServer] Client activation = %ld, session=%s", v59, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v60);
            }

            else
            {
            }

            v53 = v174;
            v153(v21, v174);
          }

          else
          {
            v64 = v170;
            *(v56 + 32) = v170;
            swift_beginAccess();
            *(v56 + 40) = 2;
            v178 = &type metadata for MOMomentsFeatureFlags;
            v179 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
            LOBYTE(v177[0]) = 7;
            v65 = v149;
            v66 = isFeatureEnabled(_:)();
            __swift_destroy_boxed_opaque_existential_0(v177);
            if (v66)
            {
              v67 = v164;
              static CommonLogger.presentation.getter();
              v68 = v65;
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();

              v71 = os_log_type_enabled(v69, v70);
              v150 = v68;
              if (v71)
              {
                v72 = swift_slowAlloc();
                v149 = swift_slowAlloc();
                v177[0] = v149;
                *v72 = 136315138;
                if (v64)
                {
                  v73 = [v68 stringRepresentation];
                  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v75 = v74;
                }

                else
                {
                  v75 = 0xE000000000000000;
                }

                v77 = v171;
                v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v75, v177);

                *(v72 + 4) = v78;
                _os_log_impl(&_mh_execute_header, v69, v70, "[MOPresenterServer] activating new scene with token: %s", v72, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v149);

                v153(v164, v174);
                v76 = v151;
                v64 = v170;
              }

              else
              {

                v153(v67, v53);
                v76 = v151;
                v77 = v171;
              }

              v79 = objc_allocWithZone(NSUserActivity);
              v80 = String._bridgeToObjectiveC()();
              v81 = [v79 initWithActivityType:v80];

              v82 = [v54 currentContext];
              if (v82)
              {
                v83 = v82;
                if ([v82 userInfo])
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v84 = v155;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
                    swift_unknownObjectRelease();

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1002A48B0;
                    strcpy(v177, "connectionId");
                    BYTE5(v177[1]) = 0;
                    HIWORD(v177[1]) = -5120;
                    AnyHashable.init<A>(_:)();
                    v86 = v173;
                    *(inited + 96) = v173;
                    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
                    (*(v77 + 16))(boxed_opaque_existential_1, v84, v86);
                    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
                    swift_setDeallocating();
                    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_ss11AnyHashableV_yptMd);
                    isa = Dictionary._bridgeToObjectiveC()().super.isa;

                    [v81 setUserInfo:isa];

                    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of MOPresenterServer.requestPresentation(for:with:));
                    v64 = v170;
                    outlined destroy of String(&unk_10030B0A0);
                    v89 = Set._bridgeToObjectiveC()().super.isa;

                    [v81 setRequiredUserInfoKeys:v89];

                    (*(v77 + 8))(v84, v86);
                  }

                  else
                  {

                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                }
              }

              v90 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
              if (v64)
              {
                v91 = v150;
                v92 = v156;
                _UIWindowSceneOverlayPlacement.init(targetSceneIdentity:)();
                v93 = v158;
                v178 = v158;
                v179 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type _UIWindowSceneOverlayPlacement and conformance _UIWindowSceneOverlayPlacement, 255, &type metadata accessor for _UIWindowSceneOverlayPlacement);
                v94 = __swift_allocate_boxed_opaque_existential_1(v177);
                v95 = v157;
                (*(v157 + 16))(v94, v92, v93);
                UIWindowSceneActivationRequestOptions.placement.setter();
                (*(v95 + 8))(v92, v93);
              }

              v170 = v81;
              v96 = v90;
              v97 = UIWindowSceneSessionRoleApplication;
              v98 = v159;
              UISceneSessionActivationRequest.init(role:userActivity:options:)();
              v99 = [objc_opt_self() sharedApplication];
              v100 = v165;
              v101 = v76;
              v102 = v173;
              (*(v77 + 16))(v165, v101, v173);
              v103 = (*(v77 + 80) + 24) & ~*(v77 + 80);
              v104 = swift_allocObject();
              v105 = v172;
              *(v104 + 16) = v172;
              (*(v77 + 32))(v104 + v103, v100, v102);
              v106 = v105;
              UIApplication.activateSceneSession(for:errorHandler:)();

              (*(v160 + 8))(v98, v161);
              v53 = v174;
              v56 = v154;
            }
          }

          v107 = v168;
          static CommonLogger.presentation.getter();

          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v177[0] = v111;
            *v110 = 136315138;
            v112 = *(v56 + 32);
            if (v112)
            {
              v113 = [v112 stringRepresentation];
              v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;

              v107 = v168;
            }

            else
            {
              v116 = 0xE400000000000000;
              v114 = 1701736302;
            }

            v119 = v151;
            v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v177);

            *(v110 + 4) = v120;
            _os_log_impl(&_mh_execute_header, v108, v109, "[MOPresenterServer] Received picker presentation request with token: %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);

            v153(v107, v174);
            v117 = v173;
            v56 = v154;
            v118 = v169;
          }

          else
          {

            v153(v107, v53);
            v117 = v173;
            v118 = v169;
            v119 = v151;
          }

          v121 = v171;
          swift_beginAccess();
          if (*(v56 + 64) && (swift_beginAccess(), (v122 = *(v56 + 72)) != 0) && (swift_beginAccess(), *(v56 + 120)))
          {
            v174 = *(v56 + 112);
            ObjectType = swift_getObjectType();
            (*(v121 + 16))(v165, v119, v117);
            v170 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v123, type metadata accessor for MOPresenterServer);
            swift_beginAccess();
            v169 = *(v56 + 128);
            v124 = v119;
            v125 = objc_opt_self();

            v126 = v122;

            [v125 isInternalBuild];
            swift_unknownObjectRetain();
            v127 = v148;
            Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
            dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:)();

            (*(v162 + 8))(v127, v163);
            return (*(v121 + 8))(v124, v173);
          }

          else
          {
            v128 = v167;
            static CommonLogger.presentation.getter();
            (*(v121 + 16))(v118, v119, v117);

            v129 = Logger.logObject.getter();
            v130 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v176[0] = v172;
              *v131 = 136315394;
              swift_beginAccess();
              v132 = *(v56 + 120);
              if (v132)
              {
                v133 = *(v56 + 112);
                v134 = v132;
              }

              else
              {
                v134 = 0xE300000000000000;
                v133 = 7104878;
              }

              v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v176);

              *(v131 + 4) = v136;
              *(v131 + 12) = 2080;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
              v137 = v169;
              v138 = dispatch thunk of CustomStringConvertible.description.getter();
              v140 = v139;
              v141 = *(v121 + 8);
              v141(v137, v117);
              v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, v176);

              *(v131 + 14) = v142;
              _os_log_impl(&_mh_execute_header, v129, v130, "[MOPresenterServer] View is not ready to accept presentation, appName=%s, connectionID=%s", v131, 0x16u);
              swift_arrayDestroy();

              v153(v167, v174);
              v141(v151, v117);
              v56 = v154;
            }

            else
            {

              v135 = *(v121 + 8);
              v135(v118, v117);
              v153(v128, v174);
              v135(v119, v117);
            }

            swift_beginAccess();
            v143 = *(v56 + 88);
            v144 = v166;
            *(v56 + 88) = v166;

            v145 = v144;
          }
        }

        (*(v171 + 8))(v31, v173);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v9 = v174;
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "[MOPresenterServer] Unexpected picker request from untracked connection", v51, 2u);
  }

  return (*(ObjectType + 8))(v12, v9);
}

uint64_t closure #1 in MOPresenterServer.requestPresentation(for:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOPresenterServer] Error activating scene: %@", v11, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v12, &_sSo8NSObjectCSgMd);
  }

  (*(v6 + 8))(v8, v5);
  result = (*((swift_isaMask & *a2) + 0xC0))(a3);
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    v16 = *(v15 + 32);
    *(v15 + 32) = 0;

    swift_beginAccess();
    *(v15 + 40) = 0;
  }

  return result;
}

Swift::Void __swiftcall MOPresenterServer.updatePicker(with:animated:)(NSNumber with, NSNumber animated)
{
  isa = animated.super.super.isa;
  ObjectType = with.super.super.isa;
  v69 = type metadata accessor for Client();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UUID();
  v73 = *(v75 - 8);
  v3 = __chkstk_darwin(v75);
  v66 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v76 = v65 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v70 = v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v65 - v15;
  __chkstk_darwin(v14);
  v18 = v65 - v17;
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOPresenterServer] updatePicker", v21, 2u);
  }

  v22 = *(v8 + 8);
  v22(v18, v7);
  v23 = [objc_opt_self() currentContext];
  if (v23)
  {
    v24 = v23;
    if ([v23 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v25 = v73;
        v26 = v76;
        v27 = v75;
        (*(v73 + 32))();
        v28 = (*((swift_isaMask & *v74) + 0xC0))(v26);
        if (v28)
        {
          v29 = v28;
          [ObjectType integerValue];
          v30 = SuggestionSheetViewState.init(rawValue:)();
          if (v31)
          {
            (*(v25 + 8))(v26, v27);
LABEL_24:

            return;
          }

          v65[2] = v30;
          swift_beginAccess();
          v35 = v29;
          if (*(v29 + 64))
          {
            swift_beginAccess();
            v36 = *(v29 + 72);
            if (v36)
            {
              v65[1] = *(v35 + 80);
              swift_beginAccess();
              if (*(v35 + 120))
              {
                v70 = *(v35 + 112);
                ObjectType = swift_getObjectType();
                v37 = v27;
                v38 = v36;

                LODWORD(isa) = [(objc_class *)isa BOOLValue];
                (*(v25 + 16))(v66, v76, v37);
                v65[0] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v39, type metadata accessor for MOPresenterServer);
                swift_beginAccess();
                v40 = objc_opt_self();

                v41 = v38;
                [v40 isInternalBuild];
                swift_unknownObjectRetain();
                v42 = v67;
                Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
                dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceiveUpdateRequest(with:animated:client:)();

                (*(v68 + 8))(v42, v69);
                (*(v25 + 8))(v76, v75);
                return;
              }
            }
          }

          swift_beginAccess();
          v74 = v35;
          if (*(v35 + 40) == 3)
          {
            static CommonLogger.presentation.getter();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();
            v45 = os_log_type_enabled(v43, v44);
            v46 = v76;
            if (v45)
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MOPresenterServer] View is getting ready to accept updates", v47, 2u);
            }

            v22(v16, v7);
            (*(v25 + 8))(v46, v27);
            v48 = v74;
            swift_beginAccess();
            v49 = v48[12];
            v50 = ObjectType;
            v48[12] = ObjectType;

            swift_beginAccess();
            v51 = v48[13];
            v52 = isa;
            v48[13] = isa;
            v53 = v50;

            v54 = v52;
            goto LABEL_24;
          }

          v55 = v70;
          static CommonLogger.presentation.getter();
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();
          v58 = os_log_type_enabled(v56, v57);
          v59 = v76;
          if (v58)
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "[MOPresenterServer] View is out of sync, updating client", v60, 2u);
          }

          v22(v55, v7);
          v61 = v74;
          swift_beginAccess();
          v62 = v61[2];
          if (v62)
          {
            swift_endAccess();
            if ([v62 remoteTarget])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v77 = 0u;
              v78 = 0u;
            }

            v79 = v77;
            v80 = v78;
            if (*(&v78 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd);
              if (swift_dynamicCast())
              {
                v63 = v77;
                swift_beginAccess();
                if (*(v61 + 56) == 1)
                {

                  swift_unknownObjectRelease();
                }

                else
                {
                  SuggestionSheetViewState.rawValue.getter();
                  v64 = Int._bridgeToObjectiveC()().super.super.isa;
                  [v63 didReceiveStateUpdateRequest:v64];

                  swift_unknownObjectRelease();
                }

                (*(v25 + 8))(v59, v27);
              }

              else
              {
                (*(v25 + 8))(v59, v27);
              }

              return;
            }

            (*(v25 + 8))(v59, v27);
          }

          else
          {
            (*(v25 + 8))(v59, v27);
            swift_endAccess();

            v79 = 0u;
            v80 = 0u;
          }

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v79, &_sypSgMd);
          return;
        }

        (*(v25 + 8))(v26, v27);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  static CommonLogger.presentation.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[MOPresenterServer] Unexpected picker request from untracked connection", v34, 2u);
  }

  v22(v11, v7);
}

uint64_t MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(MOPresenterServer.retrieveNotificationScheduleType(connectionID:), 0, 0);
}

{
  *(*v1 + 128) = a1;

  return _swift_task_switch(MOPresenterServer.retrieveNotificationScheduleType(connectionID:), 0, 0);
}

uint64_t MOPresenterServer.retrieveNotificationScheduleType(connectionID:)()
{
  v1 = (*((swift_isaMask & **(v0 + 48)) + 0xC0))(*(v0 + 40));
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v2 + 128);
    *(v0 + 104) = v3;
    v4 = *(v2 + 136);
    *(v0 + 112) = v4;
    if (v4)
    {
      v5 = one-time initialization token for shared;

      if (v5 != -1)
      {
        swift_once();
      }

      v21 = (*((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x90) + **((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x90));
      v6 = swift_task_alloc();
      *(v0 + 120) = v6;
      *v6 = v0;
      v6[1] = MOPresenterServer.retrieveNotificationScheduleType(connectionID:);

      return v21(v3, v4);
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[MOPresenterServer] Missing bundleID from connection.", v16, 2u);
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);

    (*(v19 + 8))(v17, v18);
    lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Unexpected retrieval request from untracked connection.", v10, 2u);
    }

    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);

    (*(v12 + 8))(v11, v13);
    lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError();
    swift_allocError();
    swift_willThrow();
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v19 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v5 = v0[13];
    v4 = v0[14];
    v17 = v0[11];
    v6 = v0[7];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2080;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v18);

    *(v8 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notification schedule state: %lu for bundleID: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v7 + 8))(v17, v6);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[7];
    v13 = v0[8];

    (*(v13 + 8))(v11, v12);
  }

  v14.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;

  v15 = v0[1];

  return v15(v14.super.super.isa);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for UUID();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:);

  return MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(v7);
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v8 = _convertErrorToNSError(_:)();

    (v6)[2](v6, 0, v8);

    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v9 = v5[1];

  return v9();
}

uint64_t MOPresenterServer.retrieveNotificationAvailability()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return specialized MOPresenterServer.retrieveNotificationAvailability()();
}

uint64_t @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess();

  return specialized MOPresenterServer.retrieveNotificationAvailability()();
}

uint64_t MOPresenterServer.getConnectionID()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v32[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  v15 = [objc_opt_self() currentContext];
  if (v15)
  {
    v16 = v15;
    if ([v15 userInfo])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        type metadata accessor for CommonLogger();
        static CommonLogger.presentation.getter();
        (*(v9 + 16))(v12, v14, v8);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v34 = v19;
          v35 = swift_slowAlloc();
          v37 = v35;
          *v19 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v18;
          v22 = v21;
          (*(v9 + 8))(v12, v8);
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

          v24 = v34;
          *(v34 + 1) = v23;
          _os_log_impl(&_mh_execute_header, v17, v33, "[MOPresenterServer] connID found, uuid: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
        }

        (*(v2 + 8))(v7, v1);
        v30 = v36;
        (*(v9 + 32))(v36, v14, v8);
        v29 = v30;
        v28 = 0;
        return (*(v9 + 56))(v29, v28, 1, v8);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "[MOPresenterServer] no connectionID found", v27, 2u);
  }

  (*(v2 + 8))(v5, v1);
  v28 = 1;
  v29 = v36;
  return (*(v9 + 56))(v29, v28, 1, v8);
}

uint64_t MOPresenterServer.retrieveUrlForToken(_:type:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v87 = a2;
  v86 = a1;
  v94 = a3;
  v93 = type metadata accessor for Logger();
  v92 = *(v93 - 1);
  v4 = __chkstk_darwin(v93);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v82 - v8;
  __chkstk_darwin(v7);
  v90 = &v82 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v84);
  v88 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v12 - 8);
  v85 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v14 - 8);
  v16 = &v82 - v15;
  v17 = type metadata accessor for UUID();
  v18 = __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v82 - v22;
  v24 = __chkstk_darwin(v21);
  v91 = &v82 - v25;
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v29 = v28;
  UUID.init(uuidString:)();
  if ((*(v29 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s10Foundation4UUIDVSgMd);
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "[MOPresenterServer] Unexpected picker request from untracked connection", v32, 2u);
    }

    (*(v92 + 8))(v6, v93);
LABEL_18:
    v52 = type metadata accessor for URL();
    return (*(*(v52 - 8) + 56))(v94, 1, 1, v52);
  }

  v89 = v29;
  v33 = *(v29 + 32);
  v83 = v27;
  v33(v27, v16, v17);
  v34 = [objc_opt_self() currentContext];
  v35 = v17;
  if (!v34)
  {
LABEL_15:
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "[MOPresenterServer] Unexpected picker request from untracked connection", v51, 2u);
    }

    (*(v92 + 8))(v9, v93);
    (*(v89 + 8))(v83, v17);
    goto LABEL_18;
  }

  v36 = v34;
  if (![v34 userInfo])
  {

    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  v37 = v91;
  v33(v91, v23, v35);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v38 = *(v3 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
  [v38 lock];
  v39 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  swift_beginAccess();
  v40 = *(v3 + v39);
  if (!*(v40 + 16))
  {
    v54 = 0;
    v42 = v89;
    v43 = v83;
LABEL_22:
    v55 = v90;
    goto LABEL_34;
  }

  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
  v42 = v89;
  v43 = v83;
  if ((v44 & 1) == 0)
  {

    v54 = 0;
    goto LABEL_22;
  }

  v45 = *(*(v40 + 56) + 8 * v41);

  swift_beginAccess();
  v46 = *(v45 + 144);
  if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43), (v48 & 1) != 0))
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(*(v46 + 56) + 40 * v47, &v97);
  }

  else
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
  }

  swift_endAccess();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v100, &_s9MomentsUI13URLBasedAsset_pSgMd);
  v100 = v97;
  v101 = v98;
  v102 = v99;
  (*(v42 + 16))(v20, v43, v35);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v97, v20);
  swift_endAccess();
  swift_beginAccess();
  v56 = *(v45 + 16);
  if (!v56)
  {

    v97 = 0u;
    v98 = 0u;
    v55 = v90;
LABEL_33:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v97, &_sypSgMd);
    v54 = 0;
    goto LABEL_34;
  }

  if ([v56 remoteTarget])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v95 = 0u;
    v96 = 0u;
  }

  v97 = v95;
  v98 = v96;
  v55 = v90;
  if (!*(&v96 + 1))
  {
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd);
  if (swift_dynamicCast())
  {
    v54 = v95;
  }

  else
  {
    v54 = 0;
  }

LABEL_34:
  [v38 unlock];
  outlined init with copy of (String, Date?)(&v100, &v95, &_s9MomentsUI13URLBasedAsset_pSgMd);
  if (!*(&v96 + 1))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v95, &_s9MomentsUI13URLBasedAsset_pSgMd);
LABEL_40:
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "[MOPresenterServer] Unexpected picker request from untracked connection", v75, 2u);
    }

    swift_unknownObjectRelease();
    (*(v92 + 8))(v55, v93);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v100, &_s9MomentsUI13URLBasedAsset_pSgMd);
    v76 = *(v42 + 8);
    v76(v37, v35);
    v76(v43, v35);
    goto LABEL_18;
  }

  outlined init with take of URLBasedAsset(&v95, &v97);
  if (!v54)
  {
    __swift_destroy_boxed_opaque_existential_0(&v97);
    goto LABEL_40;
  }

  v93 = v54;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = type metadata accessor for URL();
  v61 = *(v60 - 8);
  v62 = v61;
  v92 = *(v61 + 56);
  v90 = (v61 + 56);
  (v92)(v59, 1, 1, v60);
  v63 = dispatch_group_create();
  dispatch_group_enter(v63);
  v64 = type metadata accessor for TaskPriority();
  v65 = v85;
  (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
  outlined init with copy of MOProtectedAppsManagerDelegate(&v97, &v95);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v57;
  outlined init with take of URLBasedAsset(&v95, v66 + 5);
  v67 = v87;
  v66[10] = v86;
  v66[11] = v67;
  v66[12] = v63;

  v68 = v63;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v65, &async function pointer to partial apply for closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), v66);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v69 = v88;
  outlined init with copy of (String, Date?)(v59, v88, &_s10Foundation3URLVSgMd);
  if ((*(v62 + 48))(v69, 1, v60) == 1)
  {

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v97);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v100, &_s9MomentsUI13URLBasedAsset_pSgMd);
    v70 = *(v89 + 8);
    v70(v91, v35);
    v70(v43, v35);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v69, &_s10Foundation3URLVSgMd);
    v71 = v94;
    v72 = 1;
  }

  else
  {
    v77 = v43;
    v78 = v94;
    (*(v62 + 32))(v94, v69, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v79 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1002A48B0;
    (*(v62 + 16))(v80 + v79, v78, v60);
    specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(v80, v93);
    swift_unknownObjectRelease();

    swift_setDeallocating();
    (*(v62 + 8))(v80 + v79, v60);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v97);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v100, &_s9MomentsUI13URLBasedAsset_pSgMd);
    v81 = *(v89 + 8);
    v81(v91, v35);
    v81(v77, v35);
    v71 = v78;
    v72 = 0;
  }

  (v92)(v71, v72, 1, v60);
}

uint64_t closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8[9] = swift_task_alloc();
  v8[10] = swift_projectBox();

  return _swift_task_switch(closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), 0, 0);
}

uint64_t closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];

  return dispatch thunk of URLBasedAsset.getAssetURL(assetType:)(v5, v6, v7, v2, v3);
}

{

  return _swift_task_switch(closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:), 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_beginAccess();
  outlined assign with take of URL?(v1, v2);
  dispatch_group_leave(v3);

  v4 = v0[1];

  return v4();
}

uint64_t MOPresenterServer.refreshBundlesIfNecessary()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(MOPresenterServer.refreshBundlesIfNecessary(), 0, 0);
}

{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = MOPresenterServer.refreshBundlesIfNecessary();

  return MOBundleProcessingSession.refreshBundles()();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = MOPresenterServer.refreshBundlesIfNecessary();

    return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
  }
}

uint64_t MOPresenterServer.remoteTarget(client:)(uint64_t a1)
{
  v36 = type metadata accessor for Client();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Logger();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Client.connectionUUID.getter();
  v12 = (*((swift_isaMask & *v1) + 0xC0))(v11);
  v13 = *(v9 + 8);
  v33 = v9 + 8;
  v34 = v8;
  v13(v11, v8);
  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v14 = *(v12 + 16);
  if (!v14)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v40, &_sypSgMd);
    goto LABEL_11;
  }

  if ([v14 remoteTarget])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd);
  if (swift_dynamicCast())
  {
    return v38;
  }

LABEL_11:
  v32 = v13;
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v17 = v35;
  v16 = v36;
  (*(v3 + 16))(v35, a1, v36);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v7;
    v29 = v22;
    *&v40 = v22;
    *v21 = 136315138;
    Client.connectionUUID.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
    v23 = v34;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v32(v11, v23);
    (*(v3 + 8))(v17, v16);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v40);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[MOPresenterServer] No client found, uuid%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);

    (*(v31 + 8))(v30, v37);
  }

  else
  {

    (*(v3 + 8))(v17, v16);
    (*(v5 + 8))(v7, v37);
  }

  return 0;
}

uint64_t MOPresenterServer.willSendUserSelection(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MOPresenterServer.remoteTarget(client:)(a1);
  if (result)
  {
    v7 = result;
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Inform client of suggestion selection", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    [v7 willReceiveUserSelection];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[8] = v5;
  *v5 = v3;
  v5[1] = MOPresenterServer.didSendUserSelection(suggestion:for:);

  return Suggestion.urlsForTransfer()();
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(MOPresenterServer.didSendUserSelection(suggestion:for:), 0, 0);
}

uint64_t MOPresenterServer.didSendUserSelection(suggestion:for:)()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = MOPresenterServer.remoteTarget(client:)(v0[3]);
    if (v2)
    {
      specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(v1, v2);
      swift_unknownObjectRelease();
    }
  }

  v3 = Suggestion.urlBasedAssetsForTransfer()();
  if (v3)
  {
    MOPresenterServer.authorizeURLBasedAssets(urlBasedAssets:for:)(v3);
  }

  v4 = MOPresenterServer.remoteTarget(client:)(v0[3]);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOPresenterServer] Inform client of suggestion selection", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = v0[2];

    (*(v10 + 8))(v9, v11);
    [v5 didReceiveUserSelectionWithSuggestion:v12];
    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

uint64_t MOPresenterServer.authorizeURLBasedAssets(urlBasedAssets:for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  Client.connectionUUID.getter();
  v15 = (*((swift_isaMask & *v1) + 0xC0))(v14);
  v48 = v7;
  v16 = v7;
  v17 = v6;
  v18 = *(v16 + 8);
  result = v18(v14, v17);
  v54 = v15;
  if (!v15)
  {
    return result;
  }

  v20 = *(a1 + 16);
  if (!v20)
  {
  }

  v21 = a1 + 32;
  v50 = v18;
  v51 = (v48 + 32);
  v52 = (v48 + 16);
  v53 = (v48 + 48);
  v49 = v5;
  while (1)
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(v21, v58);
    __swift_project_boxed_opaque_existential_0(v58, v58[3]);
    dispatch thunk of URLBasedAsset.token.getter();
    if ((*v53)(v5, 1, v17) != 1)
    {
      break;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5, &_s10Foundation4UUIDVSgMd);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v58);
    v21 += 40;
    if (!--v20)
    {
    }
  }

  (*v51)(v12, v5, v17);
  v22 = v17;
  v23 = *v52;
  v24 = v55;
  v25 = v12;
  v26 = v22;
  (*v52)(v55, v12);
  v27 = v54;
  swift_beginAccess();
  outlined init with copy of MOProtectedAppsManagerDelegate(v58, v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v27 + 144);
  v29 = v56;
  *(v27 + 144) = 0x8000000000000000;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (!__OFADD__(v32, v33))
  {
    v35 = v30;
    if (v29[3] < v34)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_23;
      }

      v31 = v36;
      v38 = v56;
      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v39 = v38[7] + 40 * v31;
      __swift_destroy_boxed_opaque_existential_0(v39);
      outlined init with take of URLBasedAsset(v57, v39);
      v17 = v26;
      v40 = v26;
      v41 = v50;
      v50(v55, v40);
LABEL_18:
      *(v54 + 144) = v38;

      swift_endAccess();
      v12 = v25;
      v41(v25, v17);
      v5 = v49;
      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v38 = v56;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v38 = v56;
      if (v35)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v38[(v31 >> 6) + 8] |= 1 << v31;
    v42 = v55;
    (v23)(v38[6] + *(v48 + 72) * v31, v55, v26);
    v17 = v26;
    outlined init with take of URLBasedAsset(v57, v38[7] + 40 * v31);
    v43 = v26;
    v41 = v50;
    v50(v42, v43);
    v44 = v38[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_22;
    }

    v38[2] = v46;
    goto LABEL_18;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in MOPresenterServer.sendNotificationScheduleChange(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v50 = a5;
  v49 = a4;
  v51 = a3;
  v52 = a2;
  v64 = type metadata accessor for UUID();
  v6 = *(v64 - 8);
  v7 = __chkstk_darwin(v64);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v48 - v10;
  v11 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__clientConnectionsImpl;
  swift_beginAccess();
  v70 = a1;
  v12 = *(a1 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v65 = OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer__connectionPropertiesImpl;
  v17 = (v14 + 63) >> 6;
  v59 = v6 + 16;
  v58 = v6 + 32;
  v61 = v6;
  v57 = (v6 + 8);
  v55 = v12;

  v19 = 0;
  v63 = v9;
  v54 = v13;
  v53 = v17;
LABEL_6:
  if (v16)
  {
    v20 = v19;
  }

  else
  {
    do
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_51;
      }

      if (v20 >= v17)
      {
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
    }

    while (!v16);
  }

  v56 = (v16 - 1) & v16;
  v21 = *(*(v55 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v16)))));
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v21 + 56);
  v62 = v21;

  result = swift_beginAccess();
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  while (v25)
  {
LABEL_20:
    v29 = v61;
    v30 = v60;
    v31 = v64;
    (*(v61 + 16))(v60, *(v62 + 48) + *(v61 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v64);
    (*(v29 + 32))(v9, v30, v31);
    v32 = *(v70 + v65);
    if (*(v32 + 16))
    {

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v34)
      {
        v35 = *(*(v32 + 56) + 8 * v33);

        swift_beginAccess();
        v37 = *(v35 + 128);
        v36 = *(v35 + 136);

        goto LABEL_25;
      }
    }

    v37 = 0;
    v36 = 0;
LABEL_25:
    v25 &= v25 - 1;
    v38 = *(v70 + v65);
    if (!*(v38 + 16))
    {
      goto LABEL_31;
    }

    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
    if ((v40 & 1) == 0)
    {

LABEL_31:

      v9 = v63;
      (*v57)(v63, v64);
LABEL_32:
      v68 = 0u;
      v69 = 0u;
      goto LABEL_33;
    }

    v41 = *(*(v38 + 56) + 8 * v39);

    swift_beginAccess();
    v42 = *(v41 + 16);
    if (!v42)
    {
      v9 = v63;
      (*v57)(v63, v64);
      swift_endAccess();

      goto LABEL_32;
    }

    swift_endAccess();
    v43 = v42;

    v44 = [v43 remoteTarget];

    if (v44)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    v68 = v66;
    v69 = v67;
    if (*(&v67 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17ViewServiceClient_pMd);
      if (swift_dynamicCast())
      {
        v45 = v66;
        if (!v36)
        {
          goto LABEL_46;
        }

        if (v37 == v52 && v36 == v51)
        {

          goto LABEL_45;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
LABEL_45:
          v9 = v63;
          (*v57)(v63, v64);
          *v49 = v45;
          result = swift_unknownObjectRelease();
        }

        else
        {
LABEL_46:
          swift_unknownObjectRetain();
          v47 = v50;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v9 = v63;
          result = (*v57)(v63, v64);
        }
      }

      else
      {
        v9 = v63;
        (*v57)(v63, v64);
      }
    }

    else
    {
      v9 = v63;
      (*v57)(v63, v64);

LABEL_33:
      result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v68, &_sypSgMd);
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      v19 = v20;
      v13 = v54;
      v17 = v53;
      v16 = v56;
      goto LABEL_6;
    }

    v25 = *(v22 + 8 * v28);
    ++v26;
    if (v25)
    {
      v26 = v28;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t MOPresenterServer.performRealTimeCheck(significantLocationEnabled:)(char a1)
{
  *(v1 + 32) = a1;
  return _swift_task_switch(MOPresenterServer.performRealTimeCheck(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 33) = a1;

  return _swift_task_switch(MOPresenterServer.performRealTimeCheck(significantLocationEnabled:), 0, 0);
}

uint64_t MOPresenterServer.performRealTimeCheck(significantLocationEnabled:)()
{
  v1 = [objc_allocWithZone(type metadata accessor for NotificationRealTimeCheckManager()) init];
  *(v0 + 16) = v1;
  v5 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = MOPresenterServer.performRealTimeCheck(significantLocationEnabled:);
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t protocol witness for SharedServer.didSendUserSelection(suggestion:for:) in conformance MOPresenterServer(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return MOPresenterServer.didSendUserSelection(suggestion:for:)(a1, a2);
}

uint64_t protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer, 0, 0);
}

{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer;

  return MOBundleProcessingSession.refreshBundles()();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = protocol witness for SharedServer.refreshBundlesIfNecessary() in conformance MOPresenterServer;

    return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer(char a1)
{
  *(v1 + 32) = a1;
  return _swift_task_switch(protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer, 0, 0);
}

{
  *(*v1 + 33) = a1;

  return _swift_task_switch(protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer, 0, 0);
}

uint64_t protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer()
{
  v1 = [objc_allocWithZone(type metadata accessor for NotificationRealTimeCheckManager()) init];
  *(v0 + 16) = v1;
  v5 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for SharedServer.performRealTimeCheck(significantLocationEnabled:) in conformance MOPresenterServer;
  v3 = *(v0 + 32);

  return v5(v3);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 33);

  return v1(v2);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of (String, Date?)(a3, v23 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sScPSgMd);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);

    return v21;
  }

LABEL_8:
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized MOPresenterServer.didConnectToServerWindow(with:connectionId:delegate:)(void (*a1)(void, void), void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v127 = a3;
  v128 = a6;
  v130 = a4;
  v135 = a1;
  v7 = type metadata accessor for Client();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = __chkstk_darwin(v7);
  v117 = &v113[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v120 = &v113[-v10];
  v11 = type metadata accessor for UUID();
  v136 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v121 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v113[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v17 = __chkstk_darwin(v16 - 8);
  v132 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v113[-v20];
  __chkstk_darwin(v19);
  v23 = &v113[-v22];
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v124 = &v113[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v116 = &v113[-v29];
  v30 = __chkstk_darwin(v28);
  v119 = &v113[-v31];
  v32 = __chkstk_darwin(v30);
  v125 = &v113[-v33];
  v34 = __chkstk_darwin(v32);
  v129 = &v113[-v35];
  __chkstk_darwin(v34);
  v37 = &v113[-v36];
  v134 = type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v133 = a2;
  outlined init with copy of (String, Date?)(a2, v23, &_s10Foundation4UUIDVSgMd);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v114 = v39;
    v115 = v25;
    v118 = v24;
    v126 = v15;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v137[0] = v41;
    *v40 = 136315138;
    outlined init with copy of (String, Date?)(v23, v21, &_s10Foundation4UUIDVSgMd);
    v42 = v136;
    v43 = (*(v136 + 48))(v21, 1, v11);
    v131 = v11;
    if (v43 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSgMd);
      v44 = 0xE300000000000000;
      v45 = 7104878;
    }

    else
    {
      v50 = UUID.uuidString.getter();
      v44 = v51;
      v52 = v11;
      v45 = v50;
      (*(v42 + 8))(v21, v52);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s10Foundation4UUIDVSgMd);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v137);

    *(v40 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v38, v114, "[MOPresenterServer] Connected to window, client connection: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);

    v46 = *(v115 + 8);
    v24 = v118;
    v46(v37, v118);
    v11 = v131;
    v49 = v135;
    v48 = v136;
    v47 = v126;
  }

  else
  {

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s10Foundation4UUIDVSgMd);
    v46 = *(v25 + 8);
    v46(v37, v24);
    v47 = v15;
    v49 = v135;
    v48 = v136;
  }

  v54 = v132;
  outlined init with copy of (String, Date?)(v133, v132, &_s10Foundation4UUIDVSgMd);
  if ((*(v48 + 48))(v54, 1, v11) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v54, &_s10Foundation4UUIDVSgMd);
    v55 = v129;
    static CommonLogger.presentation.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "[MOPresenterServer] Could not link new scene to client connection", v58, 2u);
    }

    v46(v55, v24);
    specialized MOPresenterServer.destroyScene(with:)(v49);
    return;
  }

  v135 = v46;
  (*(v48 + 32))(v47, v54, v11);
  v59 = (*((swift_isaMask & *v130) + 0xC0))(v47);
  if (v59)
  {
    v60 = v59;
    swift_beginAccess();
    *(v60 + 40) = 3;
    swift_beginAccess();
    v61 = *(v60 + 72);
    v63 = v127;
    v62 = v128;
    *(v60 + 72) = v127;
    *(v60 + 80) = v62;

    swift_beginAccess();
    v64 = *(v60 + 64);
    *(v60 + 64) = v49;
    v133 = v63;

    swift_beginAccess();
    v65 = *(v60 + 88);
    v131 = v11;
    if (v65)
    {
      swift_beginAccess();
      if (*(v60 + 120))
      {
        v66 = v47;
        v67 = v24;
        v126 = v66;
        v129 = *(v60 + 112);
        v68 = v49;
        v132 = v65;

        v69 = v119;
        static CommonLogger.presentation.getter();
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "[MOPresenterServer] Fulfilling previously unfulfillable presentation request", v72, 2u);
        }

        v135(v69, v67);
        (*(v48 + 16))(v121, v126, v131);
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v73, type metadata accessor for MOPresenterServer);
        swift_beginAccess();
        v74 = v48;
        v75 = objc_opt_self();

        [v75 isInternalBuild];
        v76 = v133;
        v77 = v130;
        v78 = v120;
        Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
        swift_beginAccess();
        v79 = *(v60 + 72);
        if (v79)
        {
          swift_endAccess();
          swift_getObjectType();
          v80 = v79;
          v81 = v132;
          dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:)();

          (*(v122 + 8))(v78, v123);
          (*(v74 + 8))(v126, v131);
        }

        else
        {
          (*(v122 + 8))(v78, v123);
          (*(v74 + 8))(v126, v131);
          swift_endAccess();
        }

        goto LABEL_30;
      }
    }

    swift_beginAccess();
    v82 = *(v60 + 96);
    if (v82)
    {
      v83 = v49;
      v84 = v82;
      [v84 integerValue];
      v85 = SuggestionSheetViewState.init(rawValue:)();
      if ((v86 & 1) == 0)
      {
        v132 = v85;
        swift_beginAccess();
        v93 = v124;
        if (*(v60 + 120))
        {
          v118 = v24;
          v129 = *(v60 + 112);

          v100 = v116;
          static CommonLogger.presentation.getter();
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.info.getter();
          v103 = os_log_type_enabled(v101, v102);
          v126 = v47;
          if (v103)
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v101, v102, "[MOPresenterServer] Fulfilling previously unfulfillable update request", v104, 2u);
            v47 = v126;
          }

          v135(v100, v118);
          (*(v136 + 16))(v121, v47, v131);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, v105, type metadata accessor for MOPresenterServer);
          swift_beginAccess();
          v106 = objc_opt_self();

          [v106 isInternalBuild];
          v107 = v133;
          v108 = v130;
          v109 = v117;
          Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)();
          v110 = *(v60 + 72);
          if (v110)
          {
            swift_beginAccess();
            v111 = *(v60 + 104);
            v112 = v110;
            if (v111)
            {
              [v111 integerValue];
            }

            swift_getObjectType();
            dispatch thunk of SuggestionSheetPresenterControllerDelegate.didReceiveUpdateRequest(with:animated:client:)();
          }

          (*(v122 + 8))(v109, v123);
          (*(v136 + 8))(v126, v131);
          goto LABEL_30;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v92 = v49;
    }

    v93 = v124;
LABEL_26:
    static CommonLogger.presentation.getter();
    swift_retain_n();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109632;
      *(v96 + 4) = *(v60 + 88) != 0;

      *(v96 + 8) = 1024;
      swift_beginAccess();
      *(v96 + 10) = *(v60 + 120) != 0;

      *(v96 + 14) = 1024;
      *(v96 + 16) = *(v60 + 96) != 0;

      _os_log_impl(&_mh_execute_header, v94, v95, "[MOPresenterServer] Cannot fulfill previously unfulfillable update request, pendingPresentationOptions=%{BOOL}d, connectionProperties.appName=%{BOOL}d, unfulfilledUpdateState=%{BOOL}d", v96, 0x14u);
    }

    else
    {
    }

    v135(v93, v24);
    (*(v136 + 8))(v47, v131);
LABEL_30:
    v97 = *(v60 + 88);
    *(v60 + 88) = 0;

    swift_beginAccess();
    v98 = *(v60 + 96);
    *(v60 + 96) = 0;

    swift_beginAccess();
    v99 = *(v60 + 104);
    *(v60 + 104) = 0;

    return;
  }

  v87 = v47;
  v88 = v11;
  static CommonLogger.presentation.getter();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "[MOPresenterServer] connection removed before new scene creation completion", v91, 2u);
  }

  v135(v125, v24);
  specialized MOPresenterServer.destroyScene(with:)(v49);
  (*(v48 + 8))(v87, v88);
}

uint64_t specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForEntitlement:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    outlined init with copy of (String, Date?)(v19, &v17, &_sypSgMd);
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = v15;
        v5 = v16;
        v7 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v7 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v17, &_sypSgMd);
    }

    v8 = [v1 bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v10;

      v11 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v11 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    v5 = 0xE000000000000000;
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002A4A00;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    v13 = [v1 pid];
    *(v12 + 96) = &type metadata for Int32;
    *(v12 + 104) = &protocol witness table for Int32;
    *(v12 + 72) = v13;
    v4 = String.init(format:_:)();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_sypSgMd);
    return v4;
  }

  return 0;
}

void specialized MOPresenterServer.destroyScene(with:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for CommonLogger();
    v6 = a1;
    static CommonLogger.presentation.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = v2;
      v11 = v10;
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      v13 = [v7 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, aBlock);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOPresenterServer] Destroying scene %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);

      (*(v3 + 8))(v5, v21);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v18 = [objc_opt_self() sharedApplication];
    aBlock[4] = closure #1 in MOPresenterServer.destroyScene(with:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_111_0;
    v19 = _Block_copy(aBlock);
    [v18 requestSceneSessionDestruction:v7 options:0 errorHandler:v19];
    _Block_release(v19);
  }
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized MOPresenterServer.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v131 = type metadata accessor for UUID();
  v137 = *(v131 - 8);
  v4 = __chkstk_darwin(v131);
  v127 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v123 = &v122 - v7;
  __chkstk_darwin(v6);
  v9 = &v122 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v129 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v125 = &v122 - v15;
  v16 = __chkstk_darwin(v14);
  v124 = &v122 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v122 - v19;
  __chkstk_darwin(v18);
  v22 = &v122 - v21;
  v134 = type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "[BSServiceConnectionHost] connection received", v25, 2u);
  }

  v26 = *(v11 + 8);
  v132 = v10;
  v135 = v26;
  v136 = v11 + 8;
  v26(v22, v10);
  static ViewServiceConstants.momentsUIServicePresenterIdentifier.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [objc_opt_self() interfaceWithIdentifier:v27];

  v29 = objc_opt_self();
  v30 = [v29 protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI11ViewService_];
  [v28 setServer:v30];

  v31 = [v29 protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI17ViewServiceClient_];
  [v28 setClient:v31];

  v32 = [objc_allocWithZone(NSUUID) init];
  v133 = v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjectType();
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v2;
  v33[4] = v32;
  v33[5] = a1;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for closure #1 in MOPresenterServer.listener(_:didReceive:withContext:);
  *(v34 + 24) = v33;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_120;
  v35 = _Block_copy(aBlock);
  v36 = v28;
  v128 = v2;
  v37 = v32;
  v38 = a1;

  [v38 configureConnection:v35];
  _Block_release(v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    result = [v36 unlock];
    __break(1u);
  }

  else
  {
    v130 = v36;
    if (BSServiceConnectionHost.isEntitled.getter())
    {
      v126 = v37;
      static CommonLogger.presentation.getter();
      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 67109378;
        v45 = [v40 remoteToken];
        v46 = [v45 pid];

        *(v43 + 4) = v46;
        *(v43 + 8) = 2080;
        v47 = [v40 remoteToken];
        v48 = [v47 bundleID];

        if (v48)
        {
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, aBlock);

        *(v43 + 10) = v66;
        _os_log_impl(&_mh_execute_header, v41, v42, "[BSServiceConnectionHost] valid connection, activating, processPID=%d, processBundleID=%s", v43, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
      }

      v67 = v132;
      v135(v20, v132);
      v68 = v131;
      v69 = v133;
      v70 = MOPresenterServer.addConnection(connection:with:)(v40, v133);
      v71 = (v137 + 16);
      v72 = v127;
      if (v70)
      {
        v73 = v124;
        static CommonLogger.presentation.getter();
        v74 = v123;
        (*v71)(v123, v69, v68);
        v75 = v40;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v78 = 136315394;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v82 = v74;
          v83 = *(v137 + 8);
          v83(v82, v68);
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, aBlock);

          *(v78 + 4) = v84;
          *(v78 + 12) = 2080;
          v85 = [v75 remoteProcess];
          v86 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v85);
          v88 = v87;

          if (v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = 7104878;
          }

          if (v88)
          {
            v90 = v88;
          }

          else
          {
            v90 = 0xE300000000000000;
          }

          v68 = v131;
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, aBlock);

          *(v78 + 14) = v91;
          _os_log_impl(&_mh_execute_header, v76, v77, "Activating connectionID: %s, clientID: %s", v78, 0x16u);
          swift_arrayDestroy();

          v69 = v133;

          v92 = v124;
        }

        else
        {

          v115 = v74;
          v83 = *(v137 + 8);
          v83(v115, v68);
          v92 = v73;
        }

        v135(v92, v132);
        v116 = v128;
        v117 = *(v128 + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_lock);
        [v117 lock];
        closure #2 in MOPresenterServer.listener(_:didReceive:withContext:)(v116, v69, v75);
        [v117 unlock];

        v83(v69, v68);
      }

      else
      {
        v93 = v125;
        static CommonLogger.presentation.getter();
        v94 = v69;
        v95 = v93;
        (*v71)(v72, v94, v68);
        v96 = v40;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          aBlock[0] = v134;
          *v99 = 136315394;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v103 = v72;
          v104 = *(v137 + 8);
          v104(v103, v68);
          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, aBlock);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2080;
          v106 = [v96 remoteProcess];
          v107 = specialized static MOPresenterServer.getRemoteProcessIdentifier(from:)(v106);
          v109 = v108;

          if (v109)
          {
            v110 = v107;
          }

          else
          {
            v110 = 7104878;
          }

          if (v109)
          {
            v111 = v109;
          }

          else
          {
            v111 = 0xE300000000000000;
          }

          v68 = v131;
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, aBlock);

          *(v99 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v97, v98, "Error activating connectionID: %s, clientID: %s", v99, 0x16u);
          swift_arrayDestroy();

          v113 = v125;
          v114 = v132;
        }

        else
        {

          v118 = v72;
          v104 = *(v137 + 8);
          v104(v118, v68);
          v113 = v95;
          v114 = v67;
        }

        v135(v113, v114);
        v119 = v130;
        [v96 invalidate];

        v104(v133, v68);
      }
    }

    else
    {
      v52 = v129;
      static CommonLogger.presentation.getter();
      v53 = v38;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v126 = v37;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 67109378;
        v58 = [v53 remoteToken];
        v59 = [v58 pid];

        *(v56 + 4) = v59;
        *(v56 + 8) = 2080;
        v60 = [v53 remoteToken];
        v61 = [v60 bundleID];

        if (v61)
        {
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v62 = 7104878;
          v64 = 0xE300000000000000;
        }

        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, aBlock);

        *(v56 + 10) = v120;
        _os_log_impl(&_mh_execute_header, v54, v55, "[BSServiceConnectionHost] invalid entitlement, processPID=%d, processBundleID=%s", v56, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v57);

        v135(v129, v132);
        v65 = v131;
        v37 = v126;
      }

      else
      {

        v135(v52, v132);
        v65 = v131;
      }

      [v53 invalidate];

      (*(v137 + 8))(v133, v65);
    }
  }

  return result;
}

uint64_t sub_10023790C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in MOPresenterServer.removeConnectionID(connectionID:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #2 in MOPresenterServer.removeConnectionID(connectionID:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_100237AE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in MOPresenterServer.requestPresentation(for:with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in MOPresenterServer.requestPresentation(for:with:)(a1, v4, v5);
}

unint64_t lazy protocol witness table accessor for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError()
{
  result = lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError;
  if (!lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError;
  if (!lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPresenterServer.PresenterError and conformance MOPresenterServer.PresenterError);
  }

  return result;
}

uint64_t specialized MOPresenterServer.retrieveNotificationAvailability()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return _swift_task_switch(specialized MOPresenterServer.retrieveNotificationAvailability(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.isOnboarded.getter();
  if (v1 && (v2 = v1, v3 = v1(), outlined consume of (@escaping @callee_guaranteed () -> ())?(v2), v3 != 2) && (v3 & 1) != 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = (*((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x98) + **((swift_isaMask & *static SuggestionNotificationManager.shared) + 0x98));
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = specialized MOPresenterServer.retrieveNotificationAvailability();

    return v14();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOPresenterServer] user has not onboarded, notifications are unavailable.", v8, 2u);
    }

    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];

    (*(v10 + 8))(v9, v11);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
    v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

    v13 = v0[1];

    return v13(v12.super.super.isa);
  }
}

{
  type metadata accessor for CommonLogger();
  static CommonLogger.presentation.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MOPresenterServer] unAuthorizationStatus: %ld", v4, 0xCu);
  }

  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  (*(v8 + 8))(v6, v7);
  if (v5 >= 5)
  {
    v12 = v0[8];
    type metadata accessor for UNAuthorizationStatus(0);
    v0[2] = v12;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    NotificationAvailabilityStatus.rawValue.getter();
    v9.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;

    v10 = v0[1];

    return v10(v9.super.super.isa);
  }
}

uint64_t specialized MOPresenterServer.retrieveNotificationAvailability()(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(specialized MOPresenterServer.retrieveNotificationAvailability(), 0, 0);
}

uint64_t sub_1002382AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t partial apply for closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #2 in MOPresenterServer.retrieveUrlForToken(_:type:)(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

void specialized MOPresenterServer.authorizeURLSandoxExtensions(urls:for:)(uint64_t a1, void *a2)
{
  v54 = a2;
  v53 = type metadata accessor for Logger();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v12 = &v44 - v8;
  v13 = *(a1 + 16);
  if (v13)
  {
    v59 = APP_SANDBOX_READ;
    v58 = SANDBOX_EXTENSION_DEFAULT;
    v61 = *(v9 + 16);
    v62 = v9 + 16;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v56 = (v9 + 8);
    v57 = v15;
    v51 = (v3 + 8);
    v16 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;
    *&v11 = 136315138;
    v46 = v11;
    v52 = v10;
    v60 = &v44 - v8;
    v50 = v5;
    v45 = v6;
    v61(v12, v14, v6);
    while (1)
    {
      URL.path(percentEncoded:)(1);
      v17 = objc_allocWithZone(v16[165]);
      v18 = v16;
      v19 = v12;
      v20 = v17;
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 initWithString:v21];

      [v22 fileSystemRepresentation];
      v23 = sandbox_extension_issue_file();
      if (v23)
      {
        v24 = v23;
        v25 = [objc_allocWithZone(v18[165]) initWithUTF8String:v23];
        v16 = v18;
        if (v25)
        {
          v26 = v25;
          free(v24);
          type metadata accessor for CommonLogger();
          static CommonLogger.presentation.getter();
          v27 = v52;
          v61(v52, v60, v6);
          v28 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();
          v29 = os_log_type_enabled(v28, v55);
          v30 = v56;
          v31 = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          if (v29)
          {
            v32 = swift_slowAlloc();
            v49 = v31;
            v33 = v32;
            v47 = v32;
            v48 = swift_slowAlloc();
            v63 = v48;
            *v33 = v46;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, &type metadata accessor for URL);
            v34 = v6;
            v35 = v30;
            v36 = dispatch thunk of CustomStringConvertible.description.getter();
            v38 = v37;
            v39 = v27;
            v40 = *v35;
            (*v35)(v39, v34);
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v63);
            v16 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;

            v42 = v47;
            *(v47 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v28, v55, "[MOPresenterServer] authorize URL: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v48);

            (*v51)(v50, v53);
            v6 = v45;
          }

          else
          {

            v43 = v27;
            v40 = *v30;
            (*v30)(v43, v6);
            (*v51)(v50, v53);
          }

          [v54 didReceiveSandboxExtensionToken:v26];

          v12 = v60;
          v40(v60, v6);
        }

        else
        {
          v12 = v60;
          (*v56)(v60, v6);
        }
      }

      else
      {
        (*v56)(v19, v6);

        v12 = v19;
        v16 = v18;
      }

      v14 += v57;
      if (!--v13)
      {
        break;
      }

      v61(v12, v14, v6);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState;
  if (!lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetSceneActivationState and conformance SuggestionSheetSceneActivationState);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveNotificationAvailability()(v2);
}

uint64_t sub_100238A80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_61(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t sub_100238C28()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveNotificationScheduleType(connectionID:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOPresenterServer.retrieveOnboardingState()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOPresenterServer.retrieveOnboardingState()(v2);
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100238EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo8NSNumberCs5NeverOGMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #1 in MOPresenterServer.retrieveOnboardingState()(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002390A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100239178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100239200()
{

  return _swift_deallocObject(v0, 24, 7);
}

_BYTE *MOSuggestionAddedView.__allocating_init(symbolOnly:)(char a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = a1;
  v4 = v3;
  [v4 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  return v4;
}

uint64_t *MOSuggestionAddedView.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.font;
}

uint64_t *MOSuggestionAddedView.config.unsafeMutableAddressor()
{
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.config;
}

id one-time initialization function for fontColor()
{
  result = [objc_opt_self() systemGrayColor];
  static MOSuggestionAddedView.fontColor = result;
  return result;
}

uint64_t *MOSuggestionAddedView.fontColor.unsafeMutableAddressor()
{
  if (one-time initialization token for fontColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAddedView.fontColor;
}

id MOSuggestionAddedView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnlyBackgroundRatio] = 0x3FE0000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionAddedView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

void MOSuggestionAddedView.initAddedView()()
{
  v1 = v0;
  v35 = [objc_allocWithZone(UIView) init];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v35 setBackgroundColor:v3];

  [v35 setAlpha:0.45];
  [v35 _setCornerRadius:8.0];
  [v1 insertSubview:v35 atIndex:0];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly) != 1)
  {
    v14 = [objc_allocWithZone(UIStackView) init];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAxis:0];
    [v14 setDistribution:2];
    [v14 setAlignment:3];
    [v1 addSubview:v14];
    v18 = [v2 systemWhiteColor];
    v19 = [v18 colorWithAlphaComponent:0.9];

    [v14 setBackgroundColor:v19];
    v20 = [v14 layer];
    [v20 setCornerRadius:12.0];

    [v14 setLayoutMarginsRelativeArrangement:1];
    [v14 setLayoutMargins:{3.0, 10.0, 3.0, 10.0}];

    v21 = [v14 superview];
    p_align = (&stru_100327FE8 + 24);
    if (v21)
    {
      v23 = v21;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = [v14 centerXAnchor];
      v25 = [v23 centerXAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      p_align = &stru_100327FE8.align;
      [v26 setConstant:0.0];
      [v26 setActive:1];
    }

    v27 = [v14 superview];
    if (v27)
    {
      v28 = v27;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v29 = [v14 centerYAnchor];
      v30 = [v28 centerYAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      [v31 *(p_align + 279)];
      [v31 setActive:1];
    }

    v32 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
    if (one-time initialization token for fontColor != -1)
    {
      swift_once();
    }

    v33 = static MOSuggestionAddedView.fontColor;
    [v32 setTintColor:static MOSuggestionAddedView.fontColor];
    [v14 addArrangedSubview:v32];
    v34 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel);
    [v34 setTextColor:v33];
    if (one-time initialization token for font != -1)
    {
      swift_once();
    }

    [v34 setFont:static MOSuggestionAddedView.font];
    [v14 addArrangedSubview:v34];
    goto LABEL_20;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView);
  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.9];

  [v4 setBackgroundColor:v6];
  [v1 addSubview:v4];
  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
  [v1 addSubview:v7];
  if (one-time initialization token for fontColor != -1)
  {
    swift_once();
  }

  [v7 setTintColor:static MOSuggestionAddedView.fontColor];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 centerXAnchor];
    v11 = [v9 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    if (v12)
    {
      [v12 setActive:1];
    }
  }

  v13 = [v7 superview];
  if (v13)
  {
    v14 = v13;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v7 centerYAnchor];
    v16 = [v14 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    if (v17)
    {
      [v17 setActive:1];
    }

LABEL_20:
  }

  (*((swift_isaMask & *v1) + 0x98))(0);
}

Swift::Void __swiftcall MOSuggestionAddedView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionAddedView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] == 1)
  {
    [v0 frame];
    Width = CGRectGetWidth(v5);
    v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView];
    v3 = Width * 0.5 * 0.5;
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    [v2 setFrame:?];
    [v2 _setCornerRadius:v3];
  }
}

Swift::Void __swiftcall MOSuggestionAddedView.updateRepresentation(interactionState:)(MomentsUIService::MOSuggestionCollectionViewInteractionState interactionState)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel);
  v4 = [objc_opt_self() mainBundle];
  if ((interactionState & 1) == 0)
  {
    v17._object = 0x80000001002BAF30;
    v9._countAndFlagsBits = 0x6465646441;
    v17._countAndFlagsBits = 0xD000000000000024;
    v9._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v4, v10, v17);

    v11 = String._bridgeToObjectiveC()();

    [v3 setText:v11];

    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
    if (one-time initialization token for config == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v16._object = 0x80000001002BAEF0;
  v5._countAndFlagsBits = 0x6465766153;
  v16._countAndFlagsBits = 0xD000000000000034;
  v5._object = 0xE500000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  v7 = String._bridgeToObjectiveC()();

  [v3 setText:v7];

  v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView);
  if (one-time initialization token for config != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v12 = static MOSuggestionAddedView.config;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  [v8 setImage:v14];
}

id MOSuggestionAddedView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAddedView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionAddedView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_addedLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_checkmarkImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnlyBackgroundRatio) = 0x3FE0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionInterstitialListAssetViewModel.__allocating_init(motionAssets:)(unint64_t a1)
{
  v5 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v6 = *(v5 - 8);
  v199 = v5;
  v200 = v6;
  __chkstk_darwin(v5);
  v201 = v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v202 = v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  *&v203 = v179 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v19 = v179 - v17;
  if (!(a1 >> 62))
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 > 2)
    {
LABEL_3:

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static MOAngelLogger.shared);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Currently only supports 1 pair of motion activity", v24, 2u);
      }

      return 0;
    }

    v218 = _swiftEmptyArrayStorage;
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_58:

    v59 = 0;
    v58 = 0;
    goto LABEL_59;
  }

  v67 = v15;
  v1 = v179 - v17;
  v68 = v18;
  v69 = v16;
  if (_CocoaArrayWrapper.endIndex.getter() > 2)
  {
    goto LABEL_3;
  }

  v218 = _swiftEmptyArrayStorage;
  v70 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v69;
  v18 = v68;
  v19 = v1;
  v20 = v70;
  v15 = v67;
  if (!v20)
  {
    goto LABEL_58;
  }

LABEL_9:
  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_69;
  }

  v194 = v18;
  v195 = v19;
  v196 = v13;
  v197 = v15;
  v204 = 0;
  v206 = 0;
  v25 = 0;
  v205 = (v16 & 0xC000000000000001);
  v26 = v16;
  do
  {
    if (v205)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v16 + 8 * v25 + 32);
    }

    v28 = v27;
    v29 = [v27 assetType];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {

LABEL_12:

      v206 = v28;
      goto LABEL_13;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {

      goto LABEL_12;
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {

        goto LABEL_13;
      }
    }

    v204 = v28;
LABEL_13:
    v16 = v26;
    ++v25;
  }

  while (v20 != v25);

  if (!v206)
  {
    v58 = 0;
    v59 = v204;
LABEL_59:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static MOAngelLogger.shared);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Missing date information", v74, 2u);
    }

    return 0;
  }

  v42 = v206;
  p_align = &stru_100327FE8.align;
  v43 = [v42 content];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

    swift_unknownObjectRelease();
LABEL_46:
    v59 = v204;
    v58 = v206;
    goto LABEL_59;
  }

  v45 = v44;
  v46 = [v42 metadata];
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v47);

  if (!v1)
  {
    goto LABEL_44;
  }

  if (!*(v1 + 2) || (v205 = v45, v48 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityTypeEnum), (v49 & 1) == 0))
  {

LABEL_44:
    swift_unknownObjectRelease();
LABEL_45:

    goto LABEL_46;
  }

  outlined init with copy of Any(*(v1 + 7) + 32 * v48, v217);
  type metadata accessor for MOSuggestionAssetMotionActivityType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  v50 = v215;
  if (!*(v1 + 2) || (v51 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStartDate), (v52 & 1) == 0))
  {

    swift_unknownObjectRelease();

    v53 = v203;
    (*(v196 + 56))(v203, 1, 1, v197);
LABEL_49:
    outlined destroy of Date?(v53);
    goto LABEL_46;
  }

  v192 = v42;
  v193 = v50;
  v191 = v43;
  outlined init with copy of Any(*(v1 + 7) + 32 * v51, v217);
  v53 = v203;
  v54 = v197;
  v55 = swift_dynamicCast();
  v56 = v196;
  v189 = *(v196 + 56);
  v190 = v196 + 56;
  v189(v53, v55 ^ 1u, 1, v54);
  v57 = *(v56 + 48);
  if (v57(v53, 1, v54) == 1)
  {

    swift_unknownObjectRelease();

    goto LABEL_49;
  }

  *&v203 = *(v56 + 32);
  (v203)(v195, v53, v197);
  if (!*(v1 + 2) || (v60 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityEndDate), (v61 & 1) == 0))
  {

    swift_unknownObjectRelease();

    v66 = v197;
    (*(v196 + 8))(v195, v197);
    v65 = v202;
    v189(v202, 1, 1, v66);
LABEL_55:
    outlined destroy of Date?(v65);
    goto LABEL_46;
  }

  outlined init with copy of Any(*(v1 + 7) + 32 * v60, v217);
  v62 = v202;
  v63 = v197;
  v64 = swift_dynamicCast();
  v189(v62, v64 ^ 1u, 1, v63);
  if (v57(v62, 1, v63) == 1)
  {
    (*(v196 + 8))(v195, v197);

    swift_unknownObjectRelease();

    v65 = v202;
    goto LABEL_55;
  }

  v2 = v192;

  (v203)(v194, v202, v197);
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  if (v76 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v78 != v79)
  {
LABEL_69:
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v80)
    {
      goto LABEL_70;
    }

    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v149;
    if (v148 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v150 == v151)
    {
    }

    else
    {
      v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v152 & 1) == 0)
      {
        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v157 = v156;
        if (v155 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v157 == v158)
        {
        }

        else
        {
          v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v168 & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        if (*(v1 + 2))
        {
          v169 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized);
          if (v170)
          {
            outlined init with copy of Any(*(v1 + 7) + 32 * v169, v217);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_107;
            }

            v202 = v215;
            v206 = v216;
            v180 = 22;
            v83 = 19;
LABEL_74:
            LODWORD(v188) = v83;
            v84 = *(v196 + 16);
            v85 = v201;
            v86 = v197;
            v84(v201, v195, v197);
            v87 = v199[5];
            v84(v85 + v87, v194, v86);
            v189(v85 + v87, 0, 1, v86);
            v88 = objc_opt_self();
            swift_unknownObjectRetain();
            *&v203 = [v88 redColor];
            v89 = String._bridgeToObjectiveC()();
            v199 = [v88 colorNamed:v89];

            v179[3] = type metadata accessor for MOSuggestionSheetImage();
            v90 = swift_allocObject();
            *(v90 + 40) = 0;
            *(v90 + 32) = 0;
            *(v90 + 24) = 0;
            *(v90 + 72) = 0u;
            *(v90 + 56) = 0u;
            *(v90 + 88) = 1;
            *(v90 + 96) = 0;
            *(v90 + 104) = 1;
            *(v90 + 16) = v205;
            swift_beginAccess();
            *(v90 + 24) = v203;
            swift_beginAccess();
            *(v90 + 32) = 0;
            swift_beginAccess();
            v91 = *(v90 + 40);
            *(v90 + 40) = v199;

            *(v90 + 48) = 0;
            swift_beginAccess();
            *(v90 + 72) = 0u;
            *(v90 + 56) = 0u;
            *(v90 + 88) = 1;
            swift_beginAccess();
            *(v90 + 96) = 0;
            v199 = v90;
            *(v90 + 104) = 1;

            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
            v94 = *(v92 + 2);
            v93 = *(v92 + 3);
            v205 = v92;
            if (v94 >= v93 >> 1)
            {
              v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v205);
            }

            v95 = v205;
            *(v205 + 2) = v94 + 1;
            v96 = &v95[16 * v94];
            v97 = v206;
            *(v96 + 4) = v202;
            *(v96 + 5) = v97;
            v98 = [v192 identifier];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;

            v213 = v99;
            v214 = v101;
            v211 = 35;
            v212 = 0xE100000000000000;
            v190 = lazy protocol witness table accessor for type String and conformance String();
            v102 = StringProtocol.components<A>(separatedBy:)();

            if (v102[2])
            {
              v103 = v102[4];
              v182 = v102[5];
              v183 = v103;

              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
              v105 = *(v200 + 72);
              v106 = (*(v200 + 80) + 32) & ~*(v200 + 80);
              v186 = *(v200 + 80);
              v187 = v105;
              v189 = v104;
              v107 = swift_allocObject();
              v203 = xmmword_1002A48B0;
              v181 = v107;
              *(v107 + 16) = xmmword_1002A48B0;
              v200 = v106;
              outlined init with copy of MOSuggestionSheetAssetDateRange(v201, v107 + v106);
              v179[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
              v108 = swift_allocObject();
              *(v108 + 16) = v203;
              v109 = v206;
              *(v108 + 32) = v202;
              *(v108 + 40) = v109;
              v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v110 = swift_allocObject();
              v184 = xmmword_1002A4A70;
              *(v110 + 16) = xmmword_1002A4A70;
              *(v110 + 32) = v199;
              v179[1] = type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
              v111 = swift_allocObject();
              *(v111 + 32) = 0u;
              *(v111 + 48) = 0u;
              *(v111 + 16) = 0u;
              *(v111 + 64) = 0;
              *(v111 + 90) = 1;

              UUID.init()();
              swift_beginAccess();
              *(v111 + 16) = 0;

              swift_beginAccess();
              *(v111 + 24) = 0;
              *(v111 + 32) = 0;

              swift_beginAccess();
              *(v111 + 40) = v181;

              swift_beginAccess();
              *(v111 + 48) = v108;

              swift_beginAccess();
              *(v111 + 56) = v110;

              *(v111 + 65) = v188;
              v112 = v182;
              *(v111 + 72) = v183;
              *(v111 + 80) = v112;
              *(v111 + 90) = 1;
              *(v111 + 88) = 0;
              v202 = v111;

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_78;
              }
            }

            else
            {
              __break(1u);
            }

            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_78:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v113 = [v192 identifier];
            v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v116 = v115;

            v209 = v114;
            v210 = v116;
            v207 = 35;
            v208 = 0xE100000000000000;
            v117 = StringProtocol.components<A>(separatedBy:)();

            if (v117[2])
            {
              v118 = v117[4];
              v119 = v117[5];

              HIBYTE(v178) = 0;
              *(&v178 + 1) = 1;
              LOBYTE(v178) = v188;
              v198 = (*(v198 + 344))(v118, v119, 0, 0, 0, 0, 0, 0, v178);
              if (v204)
              {
                v120 = v204;
                v121 = *(p_align + 305);
                v206 = v120;
                v122 = [v120 v121];
                objc_opt_self();
                v204 = v122;
                v123 = swift_dynamicCastObjCClass();
                if (v123)
                {
                  v124 = v123;
                  v125 = swift_allocObject();
                  *(v125 + 40) = 0;
                  *(v125 + 32) = 0;
                  *(v125 + 24) = 0;
                  *(v125 + 72) = 0u;
                  *(v125 + 56) = 0u;
                  *(v125 + 88) = 1;
                  *(v125 + 96) = 0;
                  *(v125 + 104) = 1;
                  *(v125 + 16) = v124;
                  swift_beginAccess();
                  *(v125 + 24) = 0;
                  swift_beginAccess();
                  *(v125 + 32) = 0;
                  swift_beginAccess();
                  v126 = *(v125 + 40);
                  *(v125 + 40) = 0;
                  swift_unknownObjectRetain();

                  *(v125 + 48) = 0;
                  swift_beginAccess();
                  *(v125 + 72) = 0u;
                  *(v125 + 56) = 0u;
                  *(v125 + 88) = 1;
                  swift_beginAccess();
                  *(v125 + 96) = 0;
                  *(v125 + 104) = 1;
                  v188 = MOSuggestionAssetVisualSubType.singularLocalizedString.getter(v180);
                  v183 = v127;
                  v128 = [v206 identifier];
                  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v131 = v130;

                  v209 = v129;
                  v210 = v131;
                  v207 = 35;
                  v208 = 0xE100000000000000;
                  v132 = StringProtocol.components<A>(separatedBy:)();

                  if (v132[2])
                  {
                    v133 = v132[5];
                    v190 = v132[4];
                    v182 = v133;

                    v134 = v200;
                    v135 = swift_allocObject();
                    *(v135 + 16) = v203;
                    outlined init with copy of MOSuggestionSheetAssetDateRange(v201, v135 + v134);
                    v136 = swift_allocObject();
                    *(v136 + 16) = v203;
                    v137 = v183;
                    *(v136 + 32) = v188;
                    *(v136 + 40) = v137;
                    v138 = swift_allocObject();
                    *(v138 + 16) = v184;
                    *(v138 + 32) = v125;
                    v139 = swift_allocObject();
                    *(v139 + 32) = 0u;
                    *(v139 + 48) = 0u;
                    *(v139 + 64) = 0;
                    *(v139 + 16) = 0u;
                    *(v139 + 90) = 1;

                    UUID.init()();
                    swift_beginAccess();
                    *(v139 + 16) = 0;

                    swift_beginAccess();
                    *(v139 + 24) = 0;
                    *(v139 + 32) = 0;

                    swift_beginAccess();
                    *(v139 + 40) = v135;

                    swift_beginAccess();
                    *(v139 + 48) = v136;

                    swift_beginAccess();
                    *(v139 + 56) = v138;

                    *(v139 + 65) = v180;
                    v140 = v182;
                    *(v139 + 72) = v190;
                    *(v139 + 80) = v140;
                    *(v139 + 90) = 1;
                    *(v139 + 88) = 0;

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
LABEL_83:
                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      v141 = v218;
                      v143 = *(v205 + 2);
                      v142 = *(v205 + 3);
                      if (v143 >= v142 >> 1)
                      {
                        v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1, v205);
                      }

                      swift_unknownObjectRelease();

                      v144 = v205;
                      *(v205 + 2) = v143 + 1;
                      v145 = &v144[16 * v143];
                      v146 = v183;
                      *(v145 + 4) = v188;
                      *(v145 + 5) = v146;
                      v147 = v198;
                      swift_beginAccess();
                      *(v147 + 16) = v141;

                      goto LABEL_100;
                    }

LABEL_117:
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    goto LABEL_83;
                  }

LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                swift_unknownObjectRelease();
              }

              else
              {

                v206 = 0;
              }

LABEL_100:
              v159 = v198;
              v160 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
              v162 = v161;
              swift_beginAccess();
              v159[3] = v160;
              v159[4] = v162;

              swift_beginAccess();
              v159[6] = v205;

              v163 = swift_allocObject();
              *(v163 + 16) = v184;
              *(v163 + 32) = v199;
              swift_beginAccess();
              v159[7] = v163;

              v164 = v200;
              v165 = swift_allocObject();
              *(v165 + 16) = v203;
              outlined init with take of MOSuggestionSheetAssetDateRange(v201, v165 + v164);

              swift_unknownObjectRelease();

              v166 = v197;
              v167 = *(v196 + 8);
              v167(v194, v197);
              v167(v195, v166);
              swift_beginAccess();
              v159[5] = v165;

              return v159;
            }

            __break(1u);
            goto LABEL_116;
          }
        }

LABEL_106:

        goto LABEL_107;
      }
    }

    if (*(v1 + 2))
    {
      v153 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized);
      if (v154)
      {
        outlined init with copy of Any(*(v1 + 7) + 32 * v153, v217);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_107;
        }

        v202 = v215;
        v206 = v216;
        v180 = 21;
        v83 = 18;
        goto LABEL_74;
      }
    }

    goto LABEL_106;
  }

LABEL_70:
  if (*(v1 + 2) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMotionActivityStepCountLocalized), (v82 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 7) + 32 * v81, v217);

    if (swift_dynamicCast())
    {
      v202 = v215;
      v206 = v216;
      v180 = 20;
      v83 = 17;
      goto LABEL_74;
    }

LABEL_107:
    v2 = v192;
  }

  else
  {
  }

  v171 = v196;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v172 = type metadata accessor for Logger();
  __swift_project_value_buffer(v172, static MOAngelLogger.shared);
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    *v175 = 0;
    _os_log_impl(&_mh_execute_header, v173, v174, "[MOSuggestionInterstitialListAssetViewModel.motionAssets] Missing steps/distance information", v175, 2u);
    v171 = v196;
  }

  swift_unknownObjectRelease();
  v176 = *(v171 + 8);
  v177 = v197;
  v176(v194, v197);
  v176(v195, v177);
  return 0;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);
  }
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

void *MOSuggestionInterstitialListAssetViewModel.__allocating_init(mediaAssets:)(unint64_t a1)
{
  v3 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v242 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v247 = &v217 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v217 - v9;
  v11 = type metadata accessor for Date();
  countAndFlagsBits = __chkstk_darwin(v11);
  v249 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_142:
    v212 = v13;
    v213 = countAndFlagsBits;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    countAndFlagsBits = v213;
    v13 = v212;
    if (v16 < 1)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 < 1)
    {
      goto LABEL_147;
    }
  }

  v254 = countAndFlagsBits;
  v255 = v15;
  v250 = v13;
  v252 = v10;
  v231 = v4;
  v232 = v3;
  v229 = v1;
  rawValue = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v10 = 0;
  v17._rawValue = rawValue;
  v258 = a1 & 0xC000000000000001;
  v257 = a1;
  do
  {
    if (v258)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a1 + 8 * v10 + 32);
    }

    v15 = v18;
    v19 = [v18 identifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v20;

    v259 = v3;
    v260 = v4;
    v262 = 35;
    v263 = 0xE100000000000000;
    v256 = lazy protocol witness table accessor for type String and conformance String();
    v1 = StringProtocol.components<A>(separatedBy:)();

    if (!v1[2])
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v4 = v1[4];
    v3 = v1[5];

    rawValue = v17._rawValue;
    v22 = *(v17._rawValue + 2);
    v21 = *(v17._rawValue + 3);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v17._rawValue = rawValue;
    }

    ++v10;
    *(v17._rawValue + 2) = v22 + 1;
    v23 = v17._rawValue + 16 * v22;
    *(v23 + 4) = v4;
    *(v23 + 5) = v3;
    a1 = v257;
  }

  while (v16 != v10);
  v24 = String.init(combinedIdentifiersFrom:)(v17);
  countAndFlagsBits = v24._countAndFlagsBits;
  v228 = v24._countAndFlagsBits;
  v265 = _swiftEmptyArrayStorage;
  v266 = _swiftEmptyArrayStorage;
  v264 = &_swiftEmptySetSingleton;
  object = v24._object;
  if (v255)
  {
    countAndFlagsBits = _CocoaArrayWrapper.endIndex.getter();
    v1 = countAndFlagsBits;
    if (!countAndFlagsBits)
    {
      goto LABEL_126;
    }

LABEL_13:
    v25 = 0;
    v253 = a1 & 0xFFFFFFFFFFFFFF8;
    v251 = (v250 + 56);
    v246 = (v250 + 48);
    v224 = 0x80000001002AEC30;
    v222 = 0x80000001002AEBE0;
    v223 = 0x80000001002AEC10;
    v226 = (v250 + 16);
    v233 = (v250 + 8);
    v234 = (v250 + 32);
    v15 = _swiftEmptyArrayStorage;
    v245 = 26;
    v230 = xmmword_1002A48B0;
    v225 = xmmword_1002A4A70;
    v248 = _swiftEmptyArrayStorage;
    v243 = _swiftEmptyArrayStorage;
    v244 = _swiftEmptyArrayStorage;
    v255 = v1;
    while (1)
    {
      if (v258)
      {
        countAndFlagsBits = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v253 + 16))
        {
          goto LABEL_141;
        }

        countAndFlagsBits = *(a1 + 8 * v25 + 32);
      }

      v26 = countAndFlagsBits;
      v27 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_140;
      }

      v28 = [countAndFlagsBits assetType];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {
        goto LABEL_33;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
        if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
        {
          goto LABEL_33;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          break;
        }
      }

LABEL_34:
      v45 = MOSuggestionAssetsTypePhoto;
LABEL_35:
      v3 = v45;

      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v46;
      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v47)
      {
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v4 & 1) == 0)
        {
          [v26 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            __swift_project_value_buffer(v49, static MOAngelLogger.shared);
            v50 = Logger.logObject.getter();
            v3 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v50, v3))
            {
              v4 = swift_slowAlloc();
              *v4 = 0;
              _os_log_impl(&_mh_execute_header, v50, v3, "[MOSuggestionInterstitialListAssetViewModel.mediaAssets] Mismatched init for asset type", v4, 2u);
            }

            goto LABEL_54;
          }
        }
      }

      v10 = [v26 content];
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v3 = v51;
        v52 = [v26 metadata];
        v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v4);

        if (!v53)
        {
          swift_unknownObjectRelease();
LABEL_54:

          goto LABEL_15;
        }

        if (*(v53 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyMediaStartDate), (v55 & 1) != 0))
        {
          v250 = v3;
          outlined init with copy of Any(*(v53 + 56) + 32 * v54, &v259);

          v56 = v252;
          v4 = v254;
          v57 = swift_dynamicCast();
          v3 = *v251;
          (*v251)(v56, v57 ^ 1u, 1, v4);
          if ((*v246)(v56, 1, v4) != 1)
          {
            v239 = v15;
            (*v234)(v249, v56, v4);
            v58 = [v250 mediaType];
            v4 = 0;
            v59 = 26;
            v60 = 1;
            v240 = v10;
            v241 = v3;
            if (v58 <= 4)
            {
              if (v58 == 1)
              {
                v67 = v250;
                v104 = [v250 artistName];
                v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v107 = v106;

                v259 = v105;
                v260 = v107;

                v108._countAndFlagsBits = 0x20A280E220;
                v108._object = 0xA500000000000000;
                String.append(_:)(v108);

                v110 = v259;
                v109 = v260;
                v111 = [v67 title];
                v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v114 = v113;

                v259 = v110;
                v260 = v109;
                a1 = v257;

                v115._countAndFlagsBits = v112;
                v115._object = v114;
                String.append(_:)(v115);

                v60 = 0;
                v59 = 0;
                v4 = v259;
                v66 = v260;
                goto LABEL_91;
              }

              if (v58 != 2)
              {
                v66 = 0;
                v67 = v250;
                if (v58 == 4)
                {
                  v68 = [v250 artistName];
                  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v71 = v70;

                  v259 = v69;
                  v260 = v71;

                  v72._countAndFlagsBits = 0x20A280E220;
                  v72._object = 0xA500000000000000;
                  String.append(_:)(v72);

                  v74 = v259;
                  v73 = v260;
                  v75 = [v67 albumTitle];
                  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v78 = v77;

                  v259 = v74;
                  v260 = v73;
                  a1 = v257;

                  v79._countAndFlagsBits = v76;
                  v79._object = v78;
                  String.append(_:)(v79);

                  v60 = 0;
                  v4 = v259;
                  v66 = v260;
                  v59 = 1;
                }

                goto LABEL_91;
              }

              goto LABEL_70;
            }

            if (v58 <= 6)
            {
              if (v58 != 5)
              {
                v61 = [v250 artistName];
                v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v64 = v63;

                if (v62 || v64 != 0xE000000000000000)
                {
                  v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v128)
                  {
                    goto LABEL_79;
                  }

                  v67 = v250;
                  v141 = [v250 artistName];
                  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v144 = v143;

                  v259 = v142;
                  v260 = v144;

                  v145._countAndFlagsBits = 0x20A280E220;
                  v145._object = 0xA500000000000000;
                  String.append(_:)(v145);

                  v147 = v259;
                  v146 = v260;
                  v148 = [v67 title];
                }

                else
                {

LABEL_79:
                  v129 = [v250 albumTitle];
                  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v132 = v131;

                  if (!v130 && v132 == 0xE000000000000000)
                  {

                    goto LABEL_83;
                  }

                  v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v133)
                  {
LABEL_83:
                    v67 = v250;
                    v134 = [v250 title];
                    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v136 = v135;

                    v66 = v136;
                    v60 = 0;
                    goto LABEL_90;
                  }

                  v67 = v250;
                  v149 = [v250 albumTitle];
                  v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v152 = v151;

                  v259 = v150;
                  v260 = v152;

                  v153._countAndFlagsBits = 0x20A280E220;
                  v153._object = 0xA500000000000000;
                  String.append(_:)(v153);

                  v147 = v259;
                  v146 = v260;
                  v148 = [v67 title];
                }

                v154 = v148;
                v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v157 = v156;

                v259 = v147;
                v260 = v146;
                a1 = v257;

                v158._countAndFlagsBits = v155;
                v158._object = v157;
                String.append(_:)(v158);

                v60 = 0;
                v4 = v259;
                v66 = v260;
LABEL_90:
                v59 = 4;
LABEL_91:
                v235 = v59;
                v10 = [v67 albumArt];
                v159 = v241;
                if (v10)
                {
                  if (!v66)
                  {
LABEL_100:
                    if (one-time initialization token for shared != -1)
                    {
                      swift_once();
                    }

                    v163 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v163, static MOAngelLogger.shared);
                    v164 = Logger.logObject.getter();
                    v3 = static os_log_type_t.error.getter();
                    v165 = os_log_type_enabled(v164, v3);
                    v15 = v239;
                    if (v165)
                    {
                      v4 = swift_slowAlloc();
                      *v4 = 0;
                      _os_log_impl(&_mh_execute_header, v164, v3, "[MOSuggestionInterstitialListAssetViewModel.mediaAssets] Failed to construct valid media asset view model", v4, 2u);
                    }

                    else
                    {
                    }

                    swift_unknownObjectRelease();

                    goto LABEL_122;
                  }
                }

                else
                {
                  v236 = v66;
                  v160 = [v26 assetType];
                  specialized FallbackAssetSymbol.init(assetType:mediaType:)(v160, [v250 mediaType], 0);
                  v237 = v4;
                  v161 = String._bridgeToObjectiveC()();

                  v10 = [objc_opt_self() _systemImageNamed:v161];

                  v66 = v236;
                  v4 = v237;
                  if (!v236)
                  {
                    goto LABEL_100;
                  }
                }

                if (v10)
                {
                  v162 = v60;
                }

                else
                {
                  v162 = 1;
                }

                if (v162)
                {

                  goto LABEL_100;
                }

                v236 = v66;
                v237 = v4;
                v166 = v247;
                v167 = v254;
                (*v226)(v247, v249, v254);
                v159(v166 + *(v232 + 20), 1, 1, v167);
                v168 = objc_opt_self();
                v241 = v10;
                v244 = [v168 whiteColor];
                v243 = [v168 grayColor];
                type metadata accessor for MOSuggestionSheetImage();
                v169 = swift_allocObject();
                *(v169 + 40) = 0;
                v15 = (v169 + 40);
                *(v169 + 32) = 0;
                *(v169 + 24) = 0;
                *(v169 + 72) = 0u;
                *(v169 + 56) = 0u;
                *(v169 + 88) = 1;
                *(v169 + 96) = 0;
                *(v169 + 104) = 1;
                *(v169 + 16) = v241;
                swift_beginAccess();
                *(v169 + 24) = v244;
                swift_beginAccess();
                *(v169 + 32) = v243;
                swift_beginAccess();
                v170 = *(v169 + 40);
                *(v169 + 40) = 0;

                *(v169 + 48) = 0;
                swift_beginAccess();
                *(v169 + 72) = 0u;
                *(v169 + 56) = 0u;
                *(v169 + 88) = 1;
                swift_beginAccess();
                *(v169 + 96) = 0;
                *(v169 + 104) = 1;
                v171 = v245;
                if (v245 == 26)
                {
                  v171 = v235;
                }

                v245 = v171;
                v172 = [v26 identifier];
                v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v4 = v174;

                v259 = v173;
                v260 = v4;
                v262 = 35;
                v263 = 0xE100000000000000;
                v1 = StringProtocol.components<A>(separatedBy:)();

                if (!v1[2])
                {
                  goto LABEL_151;
                }

                v175 = v1[4];
                v243 = v1[5];
                v244 = v175;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
                v176 = (*(v231 + 80) + 32) & ~*(v231 + 80);
                v221 = *(v231 + 72);
                v177 = swift_allocObject();
                v219 = v177;
                v220 = v176;
                *(v177 + 16) = v230;
                outlined init with copy of MOSuggestionSheetAssetDateRange(v247, v177 + v176);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
                v178 = swift_allocObject();
                v218 = v178;
                *(v178 + 16) = v230;
                v179 = v236;
                *(v178 + 32) = v237;
                *(v178 + 40) = v179;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                v180 = swift_allocObject();
                v217 = v180;
                *(v180 + 16) = v225;
                *(v180 + 32) = v169;
                type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
                v10 = swift_allocObject();
                *(v10 + 32) = 0u;
                *(v10 + 48) = 0u;
                *(v10 + 64) = 0;
                *(v10 + 16) = 0u;
                *(v10 + 90) = 1;
                v4 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

                v227 = v169;

                UUID.init()();
                swift_beginAccess();
                *(v10 + 16) = 0;

                swift_beginAccess();
                *(v10 + 24) = 0;
                *(v10 + 32) = 0;

                swift_beginAccess();
                *(v10 + 40) = v219;

                swift_beginAccess();
                *(v10 + 48) = v218;

                swift_beginAccess();
                *(v10 + 56) = v217;

                *(v10 + 65) = v235;
                v181 = v243;
                *(v10 + 72) = v244;
                *(v10 + 80) = v181;
                *(v10 + 90) = 1;
                *(v10 + 88) = 0;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v243 = v266;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v248 + 2) + 1, 1, v248);
                }

                a1 = v257;
                v15 = v239;
                v183 = *(v248 + 2);
                v182 = *(v248 + 3);
                if (v183 >= v182 >> 1)
                {
                  v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1, v248);
                }

                v184 = v248;
                *(v248 + 2) = v183 + 1;
                v185 = &v184[16 * v183];
                v186 = v236;
                *(v185 + 4) = v237;
                *(v185 + 5) = v186;

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v244 = v265;
                outlined init with copy of MOSuggestionSheetAssetDateRange(v247, v242);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
                }

                v3 = v15[2];
                v187 = v15[3];
                if (v3 >= v187 >> 1)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 > 1, v3 + 1, 1, v15);
                }

                v15[2] = v3 + 1;
                outlined init with take of MOSuggestionSheetAssetDateRange(v242, v15 + v220 + v3 * v221);
                specialized Set._Variant.insert(_:)(&v259, [v250 mediaType]);
                v188 = v241;

                swift_unknownObjectRelease();

                outlined destroy of MOSuggestionSheetAssetDateRange(v247);
LABEL_122:
                countAndFlagsBits = (*v233)(v249, v254);
                goto LABEL_15;
              }

LABEL_70:
              v67 = v250;
              v92 = [v250 artistName];
              v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = v94;

              v259 = v93;
              v260 = v95;

              v96._countAndFlagsBits = 0x20A280E220;
              v96._object = 0xA500000000000000;
              String.append(_:)(v96);

              v98 = v259;
              v97 = v260;
              v99 = [v67 title];
              v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v102 = v101;

              v259 = v98;
              v260 = v97;
              a1 = v257;

              v103._countAndFlagsBits = v100;
              v103._object = v102;
              String.append(_:)(v103);

              v60 = 0;
              v4 = v259;
              v66 = v260;
              v59 = 2;
              goto LABEL_91;
            }

            if (v58 != 7)
            {
              v66 = 0;
              v67 = v250;
              if (v58 == 8)
              {
                v80 = [v250 artistName];
                v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v83 = v82;

                v259 = v81;
                v260 = v83;

                v84._countAndFlagsBits = 0x20A280E220;
                v84._object = 0xA500000000000000;
                String.append(_:)(v84);

                v86 = v259;
                v85 = v260;
                v87 = [v67 title];
                v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v90 = v89;

                v259 = v86;
                v260 = v85;
                a1 = v257;

                v91._countAndFlagsBits = v88;
                v91._object = v90;
                String.append(_:)(v91);

                v60 = 0;
                v4 = v259;
                v66 = v260;
                v59 = 6;
              }

              goto LABEL_91;
            }

            v116 = v250;
            v117 = [v250 artistName];
            v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            v120 = [v116 albumTitle];
            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            if (v237 == v121 && v119 == v123)
            {

              goto LABEL_76;
            }

            v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v124)
            {
              goto LABEL_76;
            }

            v137 = [v250 artistName];
            v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v140 = v139;

            if (!v138 && v140 == 0xE000000000000000)
            {

              goto LABEL_76;
            }

            v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v189)
            {
LABEL_76:
              v67 = v250;
              v125 = [v250 albumTitle];
              v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v127 = v126;

              v66 = v127;
              v60 = 0;
            }

            else
            {
              v67 = v250;
              v190 = [v250 artistName];
              v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v193 = v192;

              v259 = v191;
              v260 = v193;

              v194._countAndFlagsBits = 0x20A280E220;
              v194._object = 0xA500000000000000;
              String.append(_:)(v194);

              v196 = v259;
              v195 = v260;
              v197 = [v67 albumTitle];
              v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v200 = v199;

              v259 = v196;
              v260 = v195;
              a1 = v257;

              v201._countAndFlagsBits = v198;
              v201._object = v200;
              String.append(_:)(v201);

              v60 = 0;
              v4 = v259;
              v66 = v260;
            }

            v59 = 5;
            goto LABEL_91;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v56 = v252;
          (*v251)(v252, 1, 1, v254);
        }

        countAndFlagsBits = outlined destroy of Date?(v56);
      }

      else
      {

        countAndFlagsBits = swift_unknownObjectRelease();
      }

LABEL_15:
      ++v25;
      v1 = v255;
      if (v27 == v255)
      {
        goto LABEL_127;
      }
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    if (v41 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v43 != v44)
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v45 = v28;
      if ((v65 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_33:

    goto LABEL_34;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1)
  {
    goto LABEL_13;
  }

LABEL_126:
  v15 = _swiftEmptyArrayStorage;
  v245 = 26;
  v248 = _swiftEmptyArrayStorage;
  v243 = _swiftEmptyArrayStorage;
  v244 = _swiftEmptyArrayStorage;
LABEL_127:

  v202 = v244;
  if (v244 >> 62)
  {
    v214 = _CocoaArrayWrapper.endIndex.getter();
    v203 = v245;
    if (!v214)
    {
      goto LABEL_145;
    }

LABEL_129:
    if ((v202 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v4 = *(v202 + 32);
    }

    specialized Collection.first.getter(v264);
    v205 = v204;

    if ((v205 & 1) != 0 || v203 == 26)
    {

      goto LABEL_146;
    }

    HIBYTE(v216) = 0;
    *(&v216 + 1) = 1;
    LOBYTE(v216) = v203;
    v1 = (v229[43])(v228, object, 0, 0, 0, 0, 0, 0, v216);
    if (!(v243 >> 62))
    {
      if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
LABEL_138:

        v208 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
        v210 = v209;
        swift_beginAccess();
        v1[3] = v208;
        v1[4] = v210;

        swift_beginAccess();
        v1[6] = v248;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v211 = swift_allocObject();
        *(v211 + 16) = xmmword_1002A4A70;
        *(v211 + 32) = v4;
        swift_beginAccess();
        v1[7] = v211;

        swift_beginAccess();
        v1[5] = v15;

        return v1;
      }

LABEL_137:

      v259 = specialized Array._copyToContiguousArray()(v206);
      specialized MutableCollection<>.sort(by:)(&v259);

      v207 = v259;
      swift_beginAccess();
      v1[2] = v207;
      goto LABEL_138;
    }

LABEL_152:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

  v203 = v245;
  if (*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_129;
  }

LABEL_145:

LABEL_146:

LABEL_147:

  return 0;
}

void specialized Set.subscript.getter(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UIScene();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UIScene();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

char *MOSuggestionWorkoutIconGlyphView.__allocating_init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *&v8[v9] = [objc_allocWithZone(UIImageView) init];
  *&v8[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
  *&v8[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
  v26.receiver = v8;
  v26.super_class = v4;
  v10 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v12 = *&v10[v11];
  v13 = v10;
  v14 = v12;
  v15 = [a1 imageWithRenderingMode:2];
  [v14 setImage:v15];

  v16 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v17 = *&v13[v16];
  *&v13[v16] = a2;
  v18 = a2;

  v19 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v20 = *&v13[v19];
  *&v13[v19] = a3;
  v21 = a3;

  [*&v10[v11] setTintColor:a4];
  [*&v10[v11] setContentMode:1];
  [v13 addSubview:*&v10[v11]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002A48B0;
  *(v22 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v22 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v13) + 0xB8))(v23);

  return v13;
}

id MOSuggestionWorkoutsSnowGlobeView.__allocating_init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v4);
  *&v14[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v33.receiver = v14;
  v33.super_class = v4;
  v15 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = v15;
  v26 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  aBlock[4] = _s16MomentsUIService33MOSuggestionWorkoutsSnowGlobeViewC5icons25glyphLightBackgroundColor0i4DarkkL00i4TintL0ACSaySo7UIImageCG_So7UIColorCA2LtcfcyyScMYccfU_TA_0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_44;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v24 = v27;
  (*(v31 + 8))(v10, v22);
  (*(v29 + 8))(v13, v30);
  return v24;
}

void *MOSuggestionActivityIconAssetView.__allocating_init(imageView:name:assignedTileSize:frame:calories:duration:distance:averageHeartRate:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v23 = objc_allocWithZone(v15);
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v30;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v25 colorNamed:v31];

  if (!v32)
  {
    v32 = [v25 systemRedColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *&v23[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *&v23[v35] = v36;
  v37 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v38 = [objc_allocWithZone(UIStackView) init];
  [v38 setAxis:1];
  [v38 setAlignment:1];
  *&v23[v37] = v38;
  v39 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
  *v39 = a2;
  v39[1] = a3;
  v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = a4;
  v40 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
  *v40 = a5;
  v40[1] = a6;
  *&v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = a13;
  v41 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  *v41 = a7;
  v41[1] = a8;
  v42 = &v23[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  *v42 = a14;
  v42[1] = a15;
  v52.receiver = v23;
  v52.super_class = v15;
  v43 = objc_msgSendSuper2(&v52, "initWithFrame:", a9, a10, a11, a12);
  [v43 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002A48B0;
  *(v44 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v44 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v43) + 0x108))(a1);

  return v43;
}

id MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v14 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v33.receiver = v4;
  v33.super_class = v14;
  v15 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = v15;
  v26 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  aBlock[4] = closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)partial apply;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11_0;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v24 = v27;
  (*(v31 + 8))(v10, v22);
  (*(v29 + 8))(v13, v30);
  return v24;
}

void closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v37 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v37;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = a1;
  v41 = type metadata accessor for UITraitUserInterfaceStyle();
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v38 = v5 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v6 = v5;
    v7 = 0;
    v39 = v4;
    v40 = v5;
    do
    {
      if (v38)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v6 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = type metadata accessor for MOSuggestionWorkoutIconGlyphView();
      v11 = objc_allocWithZone(v10);
      v12 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
      v13 = objc_allocWithZone(UIImageView);
      v14 = v9;
      *&v11[v12] = [v13 init];
      *&v11[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
      *&v11[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
      v45.receiver = v11;
      v45.super_class = v10;
      v15 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v16 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
      swift_beginAccess();
      v17 = *&v15[v16];
      v18 = v15;
      v19 = v17;
      v20 = [v14 imageWithRenderingMode:2];
      [v19 setImage:v20];

      v21 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
      swift_beginAccess();
      v22 = *&v18[v21];
      *&v18[v21] = a2;
      v23 = a2;

      v24 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
      swift_beginAccess();
      v25 = *&v18[v24];
      *&v18[v24] = a3;
      v26 = a3;

      [*&v15[v16] setTintColor:a4];
      [*&v15[v16] setContentMode:1];
      v27 = *&v15[v16];
      v28 = v18;
      [v28 addSubview:v27];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1002A48B0;
      *(v29 + 32) = v41;
      *(v29 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
      UIView.registerForTraitChanges(_:action:)();
      swift_unknownObjectRelease();

      (*((swift_isaMask & *v28) + 0xB8))(v30);

      Strong = swift_unknownObjectWeakLoadStrong();
      v32 = v28;
      if (Strong)
      {
        v33 = Strong;
        v34 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v33[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v33[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v32 = v33;
      }

      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = v35;
        [v35 addSubview:v28];
      }

      ++v7;

      v6 = v40;
    }

    while (v39 != v7);
  }
}

id MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v22.receiver = v1;
  v22.super_class = v9;
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = v10;
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
  return v11;
}

void closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
        swift_beginAccess();
        v10 = v6;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v8 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        [v11 addSubview:v6];
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionWorkoutsSnowGlobeView.layoutSubviews()()
{
  v1 = v0;
  if (one-time initialization token for assets != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.assets);
    v1 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
      swift_beginAccess();
      v7 = *&v1[v6];
      v8 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v5 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v3, v4, "[MOSuggestionWorkoutsSnowGlobeView] layoutSubviews iconsCount: %ld", v5, 0xCu);
    }

    else
    {
    }

    v9 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews;
    swift_beginAccess();
    v34 = v9;
    v10 = *&v1[v9];
    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        return;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      return;
    }

    [v1 bounds];
    v13 = v11;
    v14 = v12;
    v15 = *&v1[v9];
    if (v15 >> 62)
    {
      v37 = v12;
      v39 = v11;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v37;
      v13 = v39;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = specialized static MOSuggestionAssetSnowglobeEffect.layoutRectsFor(targetSize:count:)(v16, v13, v14);
    v18 = *&v1[v9];
    v19 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v19)
    {
      break;
    }

    v21 = 0;
    v36 = v18 & 0xFFFFFFFFFFFFFF8;
    v38 = v18 & 0xC000000000000001;
    v22 = (v17 + 56);
    *&v20 = 134218240;
    v32 = v20;
    v33 = v17;
    v35 = v19;
    while (v38)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
      v24 = v23;
      if (v21 >= *(v17 + 16))
      {

        goto LABEL_31;
      }

      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v18;
        v29 = swift_slowAlloc();
        *v29 = v32;
        v30 = *&v1[v34];
        if (v30 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v31;

        *(v29 + 12) = 2048;
        *(v29 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v26, v27, "[MOSuggestionWorkoutsSnowGlobeView] iconsCount: %ld index: %ld", v29, 0x16u);

        v18 = v28;
        v17 = v33;
      }

      else
      {

        v26 = v25;
      }

      if (v21 >= *(v17 + 16))
      {
        goto LABEL_34;
      }

      ++v21;
      [v24 setFrame:{*(v22 - 3), *(v22 - 2), *(v22 - 1), *v22}];

      v22 += 4;
      if (v35 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v21 < *(v36 + 16))
    {
      v23 = *(v18 + 8 * v21 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_29:

LABEL_31:
}

void MOSuggestionWorkoutsSnowGlobeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionWorkoutIconGlyphView.iconView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionWorkoutIconGlyphView.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionWorkoutIconGlyphView.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionWorkoutIconGlyphView.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionWorkoutIconGlyphView.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionWorkoutIconGlyphView.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *&v4[v8] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for MOSuggestionWorkoutIconGlyphView();
  v9 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;
  v13 = v11;
  v14 = [a1 imageWithRenderingMode:2];
  [v13 setImage:v14];

  v15 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v16 = *&v12[v15];
  *&v12[v15] = a2;
  v17 = a2;

  v18 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v19 = *&v12[v18];
  *&v12[v18] = a3;
  v20 = a3;

  [*&v9[v10] setTintColor:a4];
  [*&v9[v10] setContentMode:1];
  [v12 addSubview:*&v9[v10]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002A48B0;
  *(v21 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v21 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v12) + 0xB8))(v22);

  return v12;
}

uint64_t sub_1002401DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall MOSuggestionWorkoutIconGlyphView.layoutSubviews()()
{
  [v0 bounds];
  v2 = [v0 _setCornerRadius:v1 * 0.5];
  v3 = (*((swift_isaMask & *v0) + 0x68))(v2);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v3 setFrame:?];
}

void MOSuggestionWorkoutIconGlyphView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionWorkoutIconGlyphView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = (*((swift_isaMask & *v0) + 0x98))();
  }

  else
  {
    v3 = (*((swift_isaMask & *v0) + 0x80))();
  }

  v4 = v3;
  [v0 setBackgroundColor:?];
}

void closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() whiteColor];
    [v0 setTextColor:v6];

    [v0 setTextAlignment:0];
    [v0 setLineBreakMode:4];
    [v0 setNumberOfLines:2];
    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityIconAssetView.exerciseNameLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.exerciseNameLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() tertiaryLabelColor];
    [v0 setTextColor:v6];

    [v0 setTextAlignment:0];
    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionActivityIconAssetView.workoutDataLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.workoutDataLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionActivityIconAssetView.labelStack.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionActivityIconAssetView.labelStack.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionActivityIconAssetView.init(imageView:name:assignedTileSize:frame:calories:duration:distance:averageHeartRate:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v30;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v25 colorNamed:v31];

  if (!v32)
  {
    v32 = [v25 systemRedColor];
  }

  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *&v15[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *&v15[v35] = v36;
  v37 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v38 = [objc_allocWithZone(UIStackView) init];
  [v38 setAxis:1];
  [v38 setAlignment:1];
  *&v15[v37] = v38;
  v39 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
  *v39 = a2;
  v39[1] = a3;
  v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = a4;
  v40 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
  *v40 = a5;
  v40[1] = a6;
  *&v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = a13;
  v41 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  *v41 = a7;
  v41[1] = a8;
  v42 = &v15[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  *v42 = a14;
  v42[1] = a15;
  v51.receiver = v15;
  v51.super_class = type metadata accessor for MOSuggestionActivityIconAssetView();
  v43 = objc_msgSendSuper2(&v51, "initWithFrame:", a9, a10, a11, a12);
  [v43 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002A48B0;
  *(v44 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v44 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v43) + 0x108))(a1);

  return v43;
}

uint64_t objectdestroy_2Tm_2()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002412A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Void __swiftcall MOSuggestionActivityIconAssetView.makeUIView(imageView:)(UIView imageView)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v409 = &v402 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  [v2 setBackgroundColor:v8];

  [v2 setAccessibilityIgnoresInvertColors:1];
  *&v424 = imageView;
  v9 = [v2 addSubview:imageView.super.super.isa];
  v10 = (swift_isaMask & *v2) + 184;
  v420 = *((swift_isaMask & *v2) + 0xB8);
  v422 = v10;
  v11 = (v420)(v9);
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = *(v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories);
  v417 = *(v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories + 8);
  v418 = v13;
  v431 = 0;
  v432 = 0xE000000000000000;
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v14 = static MOSuggestionAssetWorkoutProvider.queue;
  v15 = swift_allocObject();
  *(v15 + 16) = &v431;
  *(v15 + 24) = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in MOSuggestionActivityIconAssetView.makeUIView(imageView:);
  *(v16 + 24) = v15;
  v408 = v15;
  v429 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v430 = v16;
  aBlock = _NSConcreteStackBlock;
  v426 = 1107296256;
  v427 = thunk for @escaping @callee_guaranteed () -> ();
  v428 = &block_descriptor_29_2;
  v17 = _Block_copy(&aBlock);
  v18 = v2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v411 = v5;
  v20 = *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate + 8];
  v414 = *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
  v413 = v20;
  v21 = (swift_isaMask & *v18) + 208;
  v416 = *((swift_isaMask & *v18) + 0xD0);
  v415 = v21;
  v22 = (v416)(v19);
  v23 = [v7 systemWhiteColor];
  [v22 setTextColor:v23];

  v24 = v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize];
  v25 = v18;
  v423 = v18;
  v26 = v424;
  v407 = v2;
  v421 = v4;
  if (v24 > 8)
  {
    goto LABEL_54;
  }

  if (((1 << v24) & 0xD0) != 0)
  {
    p_align = &stru_100327FE8.align;
    v71 = [v424 superview];
    if (v71)
    {
      v72 = v71;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v73 = [v26 topAnchor];
      v74 = [v72 topAnchor];
      v75 = [v73 constraintEqualToAnchor:v74];

      [v75 setConstant:8.0];
      [v75 setActive:1];

      v26 = v424;
    }

    [v18 frame];
    v77 = v76 + -16.0;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v78 = [v26 widthAnchor];
    v79 = [v78 constraintEqualToConstant:v77];

    [v79 setActive:1];
    v80 = [v26 superview];
    if (v80)
    {
      v81 = v80;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v82 = [v26 bottomAnchor];
      v83 = [v81 bottomAnchor];
      v84 = [v82 constraintEqualToAnchor:v83];

      if (v84)
      {
        [v84 setConstant:-8.0];
        [v84 setActive:1];
      }

      v26 = v424;
    }

    LODWORD(v419) = v24;
    v85 = [v26 superview];
    if (v85)
    {
      v86 = v85;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v87 = [v26 leadingAnchor];
      v88 = [v86 leadingAnchor];
      v89 = [v87 constraintEqualToAnchor:v88];

      [v89 setConstant:8.0];
      [v89 setActive:1];

      v26 = v424;
    }

    v90 = *((swift_isaMask & *v18) + 0xE8);
    v91 = v90();
    v92 = v420();
    [v91 addArrangedSubview:v92];

    v93 = v90();
    v94 = v416();
    [v93 addArrangedSubview:v94];

    v95 = v90();
    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];

    v96 = v90();
    [v18 addSubview:v96];

    v97 = v90();
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    v98 = [v97 leadingAnchor];
    v99 = [v26 trailingAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    [v100 setConstant:8.0];
    [v100 setActive:1];

    v101 = v90();
    v102 = [v101 superview];
    if (v102)
    {
      v103 = v102;
      [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
      v104 = [v101 centerYAnchor];
      v105 = [v103 centerYAnchor];
      v106 = [v104 constraintEqualToAnchor:v105];

      [v106 setConstant:0.0];
      if (v106)
      {
        [v106 setActive:1];
      }

      p_align = (&stru_100327FE8 + 24);
    }

    else
    {
      v106 = 0;
      v103 = v101;
    }

    v153 = v90();
    v154 = [v153 *(p_align + 271)];
    if (v154)
    {
      v155 = v154;
      [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
      v156 = [v153 trailingAnchor];
      v157 = [v155 trailingAnchor];
      v158 = [v156 constraintEqualToAnchor:v157];

      [v158 setConstant:-8.0];
      if (v158)
      {
        [v158 setActive:1];

        v159 = v417;
        v132 = &unk_10033B000;
        if ((v419 & 0xFE) != 6)
        {
LABEL_72:
          v160 = objc_opt_self();
          v161 = [v160 mainBundle];
          v437._object = 0x80000001002B55F0;
          v437._countAndFlagsBits = 0xD000000000000018;
          v162._countAndFlagsBits = 16421;
          v162._object = 0xE200000000000000;
          v163._countAndFlagsBits = 0;
          v163._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v162, 0, v161, v163, v437);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v164 = swift_allocObject();
          v424 = xmmword_1002A48B0;
          *(v164 + 16) = xmmword_1002A48B0;
          *(v164 + 56) = &type metadata for String;
          v165 = lazy protocol witness table accessor for type String and conformance String();
          *(v164 + 64) = v165;
          *(v164 + 32) = v418;
          *(v164 + 40) = v159;

          static String.localizedStringWithFormat(_:_:)();

          v167 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
          v166 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
          if (!v167 && v166 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_152;
          }

          v168 = [v160 mainBundle];
          v438._object = 0x80000001002B55D0;
          v438._countAndFlagsBits = 0xD000000000000018;
          v169._countAndFlagsBits = 16421;
          v169._object = 0xE200000000000000;
          v170._countAndFlagsBits = 0;
          v170._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, v168, v170, v438);

          v171 = swift_allocObject();
          *(v171 + 16) = v424;
          *(v171 + 56) = &type metadata for String;
          *(v171 + 64) = v165;
          *(v171 + 32) = v167;
          *(v171 + 40) = v166;

          static String.localizedStringWithFormat(_:_:)();

          goto LABEL_151;
        }

LABEL_80:
        v173 = v418;
        if (!v414 && v413 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v173 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!v173 && v159 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v174 = [objc_opt_self() mainBundle];
            v439._object = 0x80000001002BB210;
            v439._countAndFlagsBits = 0xD000000000000018;
            v175._countAndFlagsBits = 16421;
            v175._object = 0xE200000000000000;
            v176._countAndFlagsBits = 0;
            v176._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v175, 0, v174, v176, v439);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v177 = swift_allocObject();
            *(v177 + 16) = xmmword_1002A48B0;
            v179 = v431;
            v178 = v432;
            *(v177 + 56) = &type metadata for String;
            *(v177 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v177 + 32) = v179;
            *(v177 + 40) = v178;
LABEL_140:

            static String.localizedStringWithFormat(_:_:)();

            v25 = v423;
            v289 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
            v288 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
            v290 = HIBYTE(v288) & 0xF;
            if ((v288 & 0x2000000000000000) == 0)
            {
              v290 = v289 & 0xFFFFFFFFFFFFLL;
            }

            if (!v290)
            {
              goto LABEL_153;
            }

            v291 = v418;
            if ((v159 & 0x2000000000000000) != 0)
            {
              v292 = HIBYTE(v159) & 0xF;
            }

            else
            {
              v292 = v418 & 0xFFFFFFFFFFFFLL;
            }

            v293 = [objc_opt_self() mainBundle];
            if (v292)
            {
              v445._object = 0x80000001002BB180;
              v294._object = 0xAE00402520B7C220;
              v445._countAndFlagsBits = 0xD000000000000030;
              v294._countAndFlagsBits = 0x402520B7C2204025;
              v295._countAndFlagsBits = 0;
              v295._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v294, 0, v293, v295, v445);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v296 = swift_allocObject();
              *(v296 + 16) = xmmword_1002A55C0;
              *(v296 + 56) = &type metadata for String;
              v297 = lazy protocol witness table accessor for type String and conformance String();
              *(v296 + 32) = v289;
              *(v296 + 40) = v288;
              v298 = v431;
              v299 = v432;
              *(v296 + 96) = &type metadata for String;
              *(v296 + 104) = v297;
              *(v296 + 64) = v297;
              *(v296 + 72) = v298;
              *(v296 + 80) = v299;
              *(v296 + 136) = &type metadata for String;
              *(v296 + 144) = v297;
              *(v296 + 112) = v291;
              *(v296 + 120) = v159;
            }

            else
            {
              v446._object = 0x80000001002BB1C0;
              v446._countAndFlagsBits = 0xD000000000000025;
              v300._countAndFlagsBits = 0x402520B7C2204025;
              v300._object = 0xA800000000000000;
              v301._countAndFlagsBits = 0;
              v301._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v300, 0, v293, v301, v446);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v302 = swift_allocObject();
              *(v302 + 16) = xmmword_1002A4A00;
              *(v302 + 56) = &type metadata for String;
              v303 = lazy protocol witness table accessor for type String and conformance String();
              *(v302 + 32) = v289;
              *(v302 + 40) = v288;
              v304 = v431;
              v305 = v432;
              *(v302 + 96) = &type metadata for String;
              *(v302 + 104) = v303;
              *(v302 + 64) = v303;
              *(v302 + 72) = v304;
              *(v302 + 80) = v305;
            }

            static String.localizedStringWithFormat(_:_:)();

LABEL_151:

LABEL_152:
            v25 = v423;
            goto LABEL_153;
          }

          v180 = [objc_opt_self() mainBundle];
          v440._object = 0x80000001002BB1F0;
          v181._countAndFlagsBits = 0x402520B7C2204025;
          v440._countAndFlagsBits = 0xD00000000000001DLL;
          v181._object = 0xA800000000000000;
          v182._countAndFlagsBits = 0;
          v182._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v181, 0, v180, v182, v440);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v183 = swift_allocObject();
          *(v183 + 16) = xmmword_1002A4A00;
          *(v183 + 56) = &type metadata for String;
          v184 = lazy protocol witness table accessor for type String and conformance String();
          *(v183 + 32) = v173;
          *(v183 + 40) = v159;
          v185 = v431;
          v186 = v432;
          *(v183 + 96) = &type metadata for String;
          *(v183 + 104) = v184;
          *(v183 + 64) = v184;
          *(v183 + 72) = v185;
          *(v183 + 80) = v186;
        }

        else
        {
          v280 = [objc_opt_self() mainBundle];
          v444._object = 0x80000001002BB130;
          v281._object = 0x80000001002BB110;
          v444._countAndFlagsBits = 0xD000000000000046;
          v281._countAndFlagsBits = 0x1000000000000012;
          v282._countAndFlagsBits = 0;
          v282._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v281, 0, v280, v282, v444);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v283 = swift_allocObject();
          *(v283 + 16) = xmmword_1002A55C0;
          *(v283 + 56) = &type metadata for String;
          v284 = lazy protocol witness table accessor for type String and conformance String();
          *(v283 + 32) = v173;
          *(v283 + 40) = v159;
          v285 = v431;
          v286 = v432;
          *(v283 + 96) = &type metadata for String;
          *(v283 + 104) = v284;
          *(v283 + 64) = v284;
          *(v283 + 72) = v285;
          *(v283 + 80) = v286;
          *(v283 + 136) = &type metadata for String;
          *(v283 + 144) = v284;
          v287 = v413;
          *(v283 + 112) = v414;
          *(v283 + 120) = v287;
        }

        goto LABEL_140;
      }
    }

    else
    {
      v155 = v153;
    }

    v159 = v417;
    v132 = &unk_10033B000;
    v172 = v419;

    if ((v172 & 0xFE) != 6)
    {
      goto LABEL_72;
    }

    goto LABEL_80;
  }

  if (((1 << v24) & 0x120) == 0)
  {
    if (v24 == 3)
    {
      v107 = [v424 superview];
      if (v107)
      {
        v108 = v107;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v109 = [v26 topAnchor];
        v110 = [v108 topAnchor];
        v111 = [v109 constraintEqualToAnchor:v110];

        [v111 setConstant:5.0];
        [v111 setActive:1];

        v26 = v424;
      }

      v112 = [v26 superview];
      if (v112)
      {
        v113 = v112;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v114 = [v26 bottomAnchor];
        v115 = [v113 bottomAnchor];
        v116 = [v114 constraintEqualToAnchor:v115];

        if (v116)
        {
          [v116 setConstant:-5.0];
          [v116 setActive:1];
        }

        v26 = v424;
      }

      v117 = [v26 superview];
      if (v117)
      {
        v118 = v117;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v119 = [v26 trailingAnchor];
        v120 = [v118 trailingAnchor];
        v121 = [v119 constraintEqualToAnchor:v120];

        [v121 setConstant:-5.0];
        [v121 setActive:1];

        v26 = v424;
      }

      v122 = [v26 superview];
      if (v122)
      {
        v123 = v122;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v124 = [v26 leadingAnchor];
        v125 = [v123 leadingAnchor];
        v126 = [v124 constraintEqualToAnchor:v125];

        [v126 setConstant:5.0];
        [v126 setActive:1];

        v26 = v424;
      }

      v127 = [v26 superview];
      if (v127)
      {
        v128 = v127;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v129 = [v26 leadingAnchor];
        v130 = [v128 leadingAnchor];
        v131 = [v129 constraintEqualToAnchor:v130];

        [v131 setConstant:8.0];
        v132 = &unk_10033B000;
        if (v131)
        {
          [v131 setActive:1];
        }

        goto LABEL_152;
      }

      goto LABEL_77;
    }

LABEL_54:
    if (v24 == 2)
    {
      v133 = [v424 superview];
      if (v133)
      {
        v134 = v133;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v135 = [v26 topAnchor];
        v136 = [v134 topAnchor];
        v137 = [v135 constraintEqualToAnchor:v136];

        [v137 setConstant:8.0];
        [v137 setActive:1];

        v26 = v424;
      }

      v138 = [v26 superview];
      if (v138)
      {
        v139 = v138;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v140 = [v26 bottomAnchor];
        v141 = [v139 bottomAnchor];
        v142 = [v140 constraintEqualToAnchor:v141];

        if (v142)
        {
          [v142 setConstant:-8.0];
          [v142 setActive:1];
        }

        v26 = v424;
      }

      v143 = [v26 superview];
      if (v143)
      {
        v144 = v143;
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        v145 = [v26 trailingAnchor];
        v146 = [v144 trailingAnchor];
        v147 = [v145 constraintEqualToAnchor:v146];

        [v147 setConstant:-8.0];
        [v147 setActive:1];

        v26 = v424;
      }

      v148 = [v26 superview];
      if (!v148)
      {
LABEL_77:
        v25 = v423;
        v132 = &unk_10033B000;
        goto LABEL_153;
      }

      v149 = v148;
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v150 = [v26 leadingAnchor];
      v151 = [v149 leadingAnchor];
      v152 = [v150 constraintEqualToAnchor:v151];

      [v152 setConstant:8.0];
      v25 = v423;
      if (v152)
      {
        [v152 setActive:1];
      }
    }

    v132 = &unk_10033B000;
    goto LABEL_153;
  }

  v410 = objc_opt_self();
  v27 = [v410 mainBundle];
  v433._object = 0x80000001002BB210;
  v433._countAndFlagsBits = 0xD000000000000018;
  v28._countAndFlagsBits = 16421;
  v28._object = 0xE200000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v433);

  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002A48B0;
  v32 = v431;
  v31 = v432;
  *(v30 + 56) = &type metadata for String;
  v33 = lazy protocol witness table accessor for type String and conformance String();
  *(v30 + 64) = v33;
  *(v30 + 32) = v32;
  *(v30 + 40) = v31;

  v419 = static String.localizedStringWithFormat(_:_:)();
  v35 = v34;

  v38 = v417;
  v37 = v418;
  if (v418)
  {
    v39 = 0;
  }

  else
  {
    v39 = v417 == 0xE000000000000000;
  }

  v40 = v39;
  if (!v39)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v36 & 1) == 0)
    {
      v41 = v37;

      v42 = [v410 mainBundle];
      v434._object = 0x80000001002B5550;
      v43._countAndFlagsBits = 0x402520B7C2204025;
      v434._countAndFlagsBits = 0xD000000000000021;
      v43._object = 0xA800000000000000;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v434);

      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002A4A00;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = v33;
      *(v45 + 32) = v41;
      *(v45 + 40) = v38;
      v46 = v431;
      v47 = v432;
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v33;
      *(v45 + 72) = v46;
      *(v45 + 80) = v47;

      v419 = static String.localizedStringWithFormat(_:_:)();
      v35 = v48;
    }
  }

  v49 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
  v50 = *&v423[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance + 8];
  if (v49 || v50 != 0xE000000000000000)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v36 & 1) == 0)
    {

      v51 = [v410 mainBundle];
      v435._object = 0x80000001002B5610;
      v52._countAndFlagsBits = 0x402520B7C2204025;
      v435._countAndFlagsBits = 0xD000000000000021;
      v52._object = 0xA800000000000000;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v435);

      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1002A4A00;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v33;
      *(v54 + 32) = v49;
      *(v54 + 40) = v50;
      v55 = v431;
      v56 = v432;
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v33;
      *(v54 + 72) = v55;
      *(v54 + 80) = v56;

      v419 = static String.localizedStringWithFormat(_:_:)();
      v35 = v57;
    }
  }

  v58 = v423;
  v59 = (v420)(v36);
  [v58 addSubview:v59];

  v60 = v416();
  [v58 addSubview:v60];

  if (v24 != 8)
  {
    goto LABEL_108;
  }

  if (!v414 && v413 == 0xE000000000000000 || (v61 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v61 & 1) != 0))
  {
    if (v40)
    {
      goto LABEL_95;
    }

LABEL_25:
    v63 = v417;
    v62 = v418;
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v61)
    {
      goto LABEL_95;
    }

    v64 = [v410 mainBundle];
    v436._object = 0x80000001002BB1F0;
    v65._countAndFlagsBits = 0x402520B7C2204025;
    v436._countAndFlagsBits = 0xD00000000000001DLL;
    v65._object = 0xA800000000000000;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v436);

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1002A4A00;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v33;
    *(v67 + 32) = v62;
    *(v67 + 40) = v63;
    v68 = v431;
    v69 = v432;
    *(v67 + 96) = &type metadata for String;
    *(v67 + 104) = v33;
    *(v67 + 72) = v68;
    *(v67 + 80) = v69;

    goto LABEL_94;
  }

  if (v40)
  {
    goto LABEL_95;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_25;
  }

  v187 = [v410 mainBundle];
  v441._object = 0x80000001002BB130;
  v188._object = 0x80000001002BB110;
  v441._countAndFlagsBits = 0xD000000000000046;
  v188._countAndFlagsBits = 0x1000000000000012;
  v189._countAndFlagsBits = 0;
  v189._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v188, 0, v187, v189, v441);

  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1002A55C0;
  *(v190 + 56) = &type metadata for String;
  *(v190 + 64) = v33;
  *(v190 + 32) = v418;
  *(v190 + 40) = v417;
  v191 = v431;
  v192 = v432;
  *(v190 + 96) = &type metadata for String;
  *(v190 + 104) = v33;
  *(v190 + 72) = v191;
  *(v190 + 80) = v192;
  *(v190 + 136) = &type metadata for String;
  *(v190 + 144) = v33;
  v193 = v413;
  *(v190 + 112) = v414;
  *(v190 + 120) = v193;

LABEL_94:

  v419 = static String.localizedStringWithFormat(_:_:)();
  v35 = v194;

LABEL_95:
  v195 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v195 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v195)
  {

    v196 = v417;
    v197 = v418;
    if ((v417 & 0x2000000000000000) != 0)
    {
      v198 = HIBYTE(v417) & 0xF;
    }

    else
    {
      v198 = v418 & 0xFFFFFFFFFFFFLL;
    }

    v199 = [v410 mainBundle];
    if (v198)
    {
      v442._object = 0x80000001002BB180;
      v200._object = 0xAE00402520B7C220;
      v442._countAndFlagsBits = 0xD000000000000030;
      v200._countAndFlagsBits = 0x402520B7C2204025;
      v201._countAndFlagsBits = 0;
      v201._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v200, 0, v199, v201, v442);

      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_1002A55C0;
      *(v202 + 56) = &type metadata for String;
      *(v202 + 64) = v33;
      *(v202 + 32) = v49;
      *(v202 + 40) = v50;
      v203 = v431;
      v204 = v432;
      *(v202 + 96) = &type metadata for String;
      *(v202 + 104) = v33;
      *(v202 + 72) = v203;
      *(v202 + 80) = v204;
      *(v202 + 136) = &type metadata for String;
      *(v202 + 144) = v33;
      *(v202 + 112) = v197;
      *(v202 + 120) = v196;
    }

    else
    {
      v443._object = 0x80000001002BB1C0;
      v443._countAndFlagsBits = 0xD000000000000025;
      v205._countAndFlagsBits = 0x402520B7C2204025;
      v205._object = 0xA800000000000000;
      v206._countAndFlagsBits = 0;
      v206._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v205, 0, v199, v206, v443);

      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_1002A4A00;
      *(v207 + 56) = &type metadata for String;
      *(v207 + 64) = v33;
      *(v207 + 32) = v49;
      *(v207 + 40) = v50;
      v208 = v431;
      v209 = v432;
      *(v207 + 96) = &type metadata for String;
      *(v207 + 104) = v33;
      *(v207 + 72) = v208;
      *(v207 + 80) = v209;
    }

    v419 = static String.localizedStringWithFormat(_:_:)();
    v35 = v210;
  }

  v211 = (v420)(v61);
  v212 = objc_opt_self();
  v213 = [v212 preferredFontForTextStyle:UIFontTextStyleBody];
  v214 = [v213 fontDescriptor];
  v215 = [v214 fontDescriptorWithSymbolicTraits:2];

  if (!v215)
  {
    goto LABEL_155;
  }

  v216 = [v212 fontWithDescriptor:v215 size:0.0];

  [v211 setFont:v216];
  v217 = v416();
  v218 = [v212 preferredFontForTextStyle:UIFontTextStyleBody];
  v219 = [v218 fontDescriptor];
  v220 = [v219 fontDescriptorWithSymbolicTraits:2];

  if (v220)
  {
    v221 = [v212 fontWithDescriptor:v220 size:0.0];

    [v217 setFont:v221];
LABEL_108:
    v222 = v420;
    v223 = v420();
    v224 = &stru_100327FE8.align;
    v225 = [v223 superview];
    if (v225)
    {
      v226 = v225;
      [v223 setTranslatesAutoresizingMaskIntoConstraints:0];
      v227 = [v223 topAnchor];
      v228 = [v226 topAnchor];
      v229 = [v227 constraintEqualToAnchor:v228];

      [v229 setConstant:12.0];
      if (v229)
      {
        [v229 setActive:1];
      }

      v224 = (&stru_100327FE8 + 24);
    }

    else
    {
      v229 = 0;
      v226 = v223;
    }

    v230 = v222();
    v231 = [v230 *(v224 + 271)];
    if (v231)
    {
      v232 = v231;
      [v230 setTranslatesAutoresizingMaskIntoConstraints:0];
      v233 = [v230 leadingAnchor];
      v234 = [v232 leadingAnchor];
      v235 = [v233 constraintEqualToAnchor:v234];

      [v235 setConstant:16.0];
      if (v235)
      {
        [v235 setActive:1];
      }

      v224 = (&stru_100327FE8 + 24);
    }

    else
    {
      v235 = 0;
      v232 = v230;
    }

    v236 = v222();
    v237 = [v236 *(v224 + 271)];
    v412 = v35;
    if (v237)
    {
      v238 = v237;
      [v236 setTranslatesAutoresizingMaskIntoConstraints:0];
      v239 = [v236 trailingAnchor];
      v240 = [v238 trailingAnchor];
      v241 = [v239 constraintEqualToAnchor:v240];

      [v241 setConstant:-16.0];
      if (v241)
      {
        [v241 setActive:1];
      }
    }

    else
    {
      v241 = 0;
      v238 = v236;
    }

    v242 = v222();
    [v242 setTextAlignment:1];

    v243 = v424;
    [v424 setTranslatesAutoresizingMaskIntoConstraints:0];
    v244 = [v243 topAnchor];
    v245 = v222();
    v246 = [v245 bottomAnchor];

    v247 = [v244 constraintEqualToAnchor:v246 constant:5.0];
    [v247 setActive:1];

    v248 = [v243 bottomAnchor];
    v249 = v416;
    v250 = v416();
    v251 = [v250 topAnchor];

    v252 = [v248 constraintEqualToAnchor:v251 constant:-5.0];
    [v252 setActive:1];

    v253 = [v243 widthAnchor];
    v254 = [v243 heightAnchor];
    v255 = [v253 constraintEqualToAnchor:v254];

    [v255 setActive:1];
    v256 = [v243 centerXAnchor];
    v257 = [v423 centerXAnchor];
    v258 = [v256 constraintEqualToAnchor:v257];

    [v258 setActive:1];
    v259 = v249();
    [v259 setTextAlignment:1];

    v260 = v420();
    v25 = v423;
    [v260 setTextAlignment:1];

    v261 = v249();
    v262 = &stru_100327FE8.align;
    v263 = [v261 superview];
    if (v263)
    {
      v264 = v263;
      [v261 setTranslatesAutoresizingMaskIntoConstraints:0];
      v265 = [v261 bottomAnchor];
      v266 = [v264 bottomAnchor];
      v267 = [v265 constraintEqualToAnchor:v266];

      v132 = &unk_10033B000;
      if (v267)
      {
        [v267 setConstant:-12.0];
        [v267 setActive:1];
      }

      v25 = v423;
    }

    else
    {
      v267 = 0;
      v264 = v261;
      v132 = &unk_10033B000;
    }

    v268 = v416();
    v269 = [v268 superview];
    if (v269)
    {
      v270 = v269;
      [v268 setTranslatesAutoresizingMaskIntoConstraints:0];
      v271 = [v268 leadingAnchor];
      v272 = [v270 leadingAnchor];
      v273 = [v271 constraintEqualToAnchor:v272];

      [v273 setConstant:8.0];
      if (v273)
      {
        [v273 setActive:1];
      }

      v25 = v423;
      v262 = (&stru_100327FE8 + 24);
    }

    else
    {
      v273 = 0;
      v270 = v268;
    }

    v274 = v416();
    v275 = [v274 *(v262 + 271)];
    if (v275)
    {
      v276 = v275;
      [v274 setTranslatesAutoresizingMaskIntoConstraints:0];
      v277 = [v274 trailingAnchor];
      v278 = [v276 trailingAnchor];
      v279 = [v277 constraintEqualToAnchor:v278];

      [v279 setConstant:-8.0];
      if (v279)
      {
        [v279 setActive:1];
      }

      goto LABEL_152;
    }

LABEL_153:
    v306 = objc_allocWithZone(NSMutableAttributedString);
    v307 = String._bridgeToObjectiveC()();

    v308 = [v306 initWithString:v307];

    v410 = 0x80000001002B54F0;
    v419 = objc_opt_self();
    v309 = [v419 mainBundle];
    v447._object = 0x80000001002B54F0;
    v310._countAndFlagsBits = 16421;
    v310._object = 0xE200000000000000;
    v311._countAndFlagsBits = 0;
    v311._object = 0xE000000000000000;
    v447._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v310, 0, v309, v311, v447);

    v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v313 = swift_allocObject();
    v424 = xmmword_1002A48B0;
    *(v313 + 16) = xmmword_1002A48B0;
    v314 = &v25[v132[479]];
    v316 = v314[1];
    v405 = *v314;
    v315 = v405;
    *(v313 + 56) = &type metadata for String;
    v317 = lazy protocol witness table accessor for type String and conformance String();
    *(v313 + 64) = v317;
    v318 = v317;
    v422 = v317;
    *(v313 + 32) = v315;
    *(v313 + 40) = v316;
    v404 = v316;

    static String.localizedStringWithFormat(_:_:)();

    v319 = [v308 mutableString];
    v320 = String._bridgeToObjectiveC()();

    [v319 rangeOfString:v320 options:1];

    v412 = NSForegroundColorAttributeName;
    [v308 addAttribute:? value:? range:?];
    v321 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow];
    v406 = 0x80000001002B5510;
    v322 = v419;
    v323 = [v419 mainBundle];
    v448._object = 0x80000001002B5510;
    v324._countAndFlagsBits = 16421;
    v324._object = 0xE200000000000000;
    v325._countAndFlagsBits = 0;
    v325._object = 0xE000000000000000;
    v448._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v324, 0, v323, v325, v448);

    v420 = v312;
    v326 = swift_allocObject();
    *(v326 + 16) = v424;
    v328 = v431;
    v327 = v432;
    *(v326 + 56) = &type metadata for String;
    *(v326 + 64) = v318;
    *(v326 + 32) = v328;
    *(v326 + 40) = v327;

    static String.localizedStringWithFormat(_:_:)();

    v329 = v308;
    v330 = [v308 mutableString];
    v331 = String._bridgeToObjectiveC()();

    v332 = [v330 rangeOfString:v331 options:1];
    v334 = v333;

    v335 = v308;
    v336 = v412;
    [v335 addAttribute:v412 value:v321 range:{v332, v334}];
    v337 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink];
    v338 = [v322 mainBundle];
    v449._object = 0x80000001002B5530;
    v339._countAndFlagsBits = 16421;
    v339._object = 0xE200000000000000;
    v340._countAndFlagsBits = 0;
    v340._object = 0xE000000000000000;
    v449._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v339, 0, v338, v340, v449);

    v341 = swift_allocObject();
    *(v341 + 16) = v424;
    v342 = v422;
    *(v341 + 56) = &type metadata for String;
    *(v341 + 64) = v342;
    *(v341 + 32) = v418;
    *(v341 + 40) = v417;

    static String.localizedStringWithFormat(_:_:)();

    v343 = [v329 mutableString];
    v344 = String._bridgeToObjectiveC()();

    v345 = [v343 rangeOfString:v344 options:1];
    v347 = v346;

    [v329 addAttribute:v336 value:v337 range:{v345, v347}];
    v348 = *&v25[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed];
    v403 = 0x80000001002BB0F0;
    v349 = [v322 mainBundle];
    v450._object = 0x80000001002BB0F0;
    v350._countAndFlagsBits = 0x475641204025;
    v450._countAndFlagsBits = 0xD000000000000012;
    v350._object = 0xE600000000000000;
    v351._countAndFlagsBits = 0;
    v351._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v350, 0, v349, v351, v450);

    v352 = swift_allocObject();
    *(v352 + 16) = v424;
    *(v352 + 56) = &type metadata for String;
    *(v352 + 64) = v342;
    *(v352 + 32) = v414;
    *(v352 + 40) = v413;

    static String.localizedStringWithFormat(_:_:)();

    v353 = [v329 mutableString];
    v354 = String._bridgeToObjectiveC()();

    v355 = [v353 rangeOfString:v354 options:1];
    v357 = v356;

    [v329 addAttribute:v412 value:v348 range:{v355, v357}];
    v358 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v359 = [v322 mainBundle];
    v451._object = v410;
    v360._countAndFlagsBits = 16421;
    v360._object = 0xE200000000000000;
    v361._countAndFlagsBits = 0;
    v361._object = 0xE000000000000000;
    v451._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v360, 0, v359, v361, v451);

    v362 = swift_allocObject();
    *(v362 + 16) = v424;
    aBlock = v405;
    v426 = v404;
    v363 = v409;
    CharacterSet.init(charactersIn:)();
    v412 = lazy protocol witness table accessor for type String and conformance String();
    v364 = StringProtocol.trimmingCharacters(in:)();
    v366 = v365;
    v411 = *(v411 + 8);
    (v411)(v363, v421);
    v367 = v422;
    *(v362 + 56) = &type metadata for String;
    *(v362 + 64) = v367;
    *(v362 + 32) = v364;
    *(v362 + 40) = v366;
    static String.localizedStringWithFormat(_:_:)();

    v368 = [v329 mutableString];
    v369 = String._bridgeToObjectiveC()();

    [v368 rangeOfString:v369 options:1];

    v410 = NSFontAttributeName;
    v370 = v329;
    [v329 addAttribute:? value:? range:?];

    v371 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v372 = [v419 mainBundle];
    v452._object = v406;
    v373._countAndFlagsBits = 16421;
    v373._object = 0xE200000000000000;
    v374._countAndFlagsBits = 0;
    v374._object = 0xE000000000000000;
    v452._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v373, 0, v372, v374, v452);

    v375 = swift_allocObject();
    *(v375 + 16) = v424;
    aBlock = v418;
    v426 = v417;
    CharacterSet.init(charactersIn:)();
    v376 = StringProtocol.trimmingCharacters(in:)();
    v378 = v377;
    (v411)(v363, v421);
    v379 = v422;
    *(v375 + 56) = &type metadata for String;
    *(v375 + 64) = v379;
    *(v375 + 32) = v376;
    *(v375 + 40) = v378;
    static String.localizedStringWithFormat(_:_:)();

    v380 = v370;
    v381 = [v370 mutableString];
    v382 = String._bridgeToObjectiveC()();

    v383 = [v381 rangeOfString:v382 options:1];
    v385 = v384;

    [v370 addAttribute:v410 value:v371 range:{v383, v385}];
    v386 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
    v387 = [v419 mainBundle];
    v453._object = v403;
    v453._countAndFlagsBits = 0xD000000000000012;
    v388._countAndFlagsBits = 0x475641204025;
    v388._object = 0xE600000000000000;
    v389._countAndFlagsBits = 0;
    v389._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v388, 0, v387, v389, v453);

    v390 = swift_allocObject();
    *(v390 + 16) = v424;
    aBlock = v414;
    v426 = v413;
    CharacterSet.init(charactersIn:)();
    v391 = StringProtocol.trimmingCharacters(in:)();
    v393 = v392;
    (v411)(v363, v421);
    v394 = v422;
    *(v390 + 56) = &type metadata for String;
    *(v390 + 64) = v394;
    *(v390 + 32) = v391;
    *(v390 + 40) = v393;
    static String.localizedStringWithFormat(_:_:)();

    v395 = [v380 mutableString];
    v396 = String._bridgeToObjectiveC()();

    v397 = [v395 rangeOfString:v396 options:1];
    v399 = v398;

    [v380 addAttribute:v410 value:v386 range:{v397, v399}];
    v400 = v423;
    v401 = v416();
    [v401 setAttributedText:v380];

    (*((swift_isaMask & *v400) + 0x110))();

    return;
  }

LABEL_156:
  __break(1u);
}

uint64_t closure #1 in MOSuggestionActivityIconAssetView.makeUIView(imageView:)(uint64_t *a1, uint64_t a2)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation26MeasurementFormatUnitUsageVySo14NSUnitDurationCGMd);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleV9UnitWidthVySo14NSUnitDurationC__GMd);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd);
  v31 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd);
  v29 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = [objc_allocWithZone(FIUIFormattingManager) init];
  v18 = [v17 stringWithDuration:2 durationFormat:*(a2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration)];
  if (v18)
  {
    v19 = v18;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v21;
  }

  else
  {
    v23 = [objc_opt_self() minutes];
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSUnitDuration);
    Measurement.init(value:unit:)();
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    static MeasurementFormatUnitUsage.general.getter();
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    (*(v33 + 8))(v5, v34);
    outlined destroy of FloatingPointFormatStyle<Double>?(v8);
    (*(v30 + 8))(v10, v32);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Measurement<NSUnitDuration><>.FormatStyle and conformance Measurement<A><>.FormatStyle, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo14NSUnitDurationC_GMd);
    Measurement<>.formatted<A>(_:)();
    (*(v31 + 8))(v13, v11);
    (*(v29 + 8))(v16, v14);
    v40 = v42;
    v41 = v43;
    v38 = 32;
    v39 = 0xE100000000000000;
    v36 = 0;
    v37 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v25 = String.uppercased()();
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v26 = v35;
  *v35 = countAndFlagsBits;
  v26[1] = object;
}

Swift::Void __swiftcall MOSuggestionActivityIconAssetView.adjustForFontSizeChanges()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize);
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = static UIContentSizeCategory.> infix(_:_:)();
  if ((v2 & (((v1 - 6) & 0xFD) == 0)) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = (*((swift_isaMask & *v0) + 0xD0))();
  [v5 setNumberOfLines:v4];
}

id MOSuggestionWorkoutsSnowGlobeView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void specialized MOSuggestionActivityIconAssetView.init(coder:)()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  if (!v3)
  {
    v3 = [v2 systemBlueColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue) = v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 colorNamed:v4];

  if (!v5)
  {
    v5 = [v2 systemYellowColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 colorNamed:v6];

  if (!v7)
  {
    v7 = [v2 systemPinkColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v2 colorNamed:v8];

  if (!v9)
  {
    v9 = [v2 systemRedColor];
  }

  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed) = v9;
  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
  v15 = [objc_allocWithZone(UIStackView) init];
  [v15 setAxis:1];
  [v15 setAlignment:1];
  *(v0 + v14) = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002455A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002455F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1002456B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_100245714(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10024577C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1002457D8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100245840@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_100245900@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1002459C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t outlined destroy of FloatingPointFormatStyle<Double>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MOSuggestionSheetPrivacyOverlayView.init(frame:clientIdentifier:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView] = 0;
  *&v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel] = 0;
  v11 = &v6[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for MOSuggestionSheetPrivacyOverlayView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a3, a4, a5, a6);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  v16 = [v15 colorWithAlphaComponent:0.8];

  [v14 setBackgroundColor:v16];
  (*((swift_isaMask & *v14) + 0xA0))(0);

  return v14;
}

uint64_t sub_100245D48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void MOSuggestionSheetPrivacyOverlayView.hide(animated:)(char a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  if (a1)
  {
    v11 = objc_opt_self();
    aBlock[4] = a4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = a5;
    v12 = _Block_copy(aBlock);
    v13 = v5;

    [v11 animateWithDuration:v12 animations:0.2];

    _Block_release(v12);
  }

  else
  {
    v15 = [v5 layer];
    *&v14 = a2;
    [v15 setOpacity:v14];
  }
}

void closure #1 in MOSuggestionSheetPrivacyOverlayView.hide(animated:)(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setOpacity:v3];
}

Swift::Void __swiftcall MOSuggestionSheetPrivacyOverlayView.updateClientLabel()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_currentClientIdentifier + 8];
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 1);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [objc_allocWithZone(ISImageDescriptor) initWithSize:350.0 scale:{350.0, v13}];
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v8;
  v15[4] = v10;
  v16 = objc_allocWithZone(ISIcon);
  v17 = v1;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithBundleIdentifier:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel();
  *(v20 + 24) = v15;
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetAppIconProvider.getAssetFor(bundleIdentifier:completion:);
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  aBlock[3] = &block_descriptor_15_3;
  v21 = _Block_copy(aBlock);

  [v19 getCGImageForImageDescriptor:v14 completion:v21];

  _Block_release(v21);
}

uint64_t closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel();
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26_0;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void closure #1 in closure #1 in MOSuggestionSheetPrivacyOverlayView.updateClientLabel()(void *a1, void *a2, uint64_t a3, NSString a4)
{
  if (a1)
  {
    v6 = a1;
    v19 = [v6 content];
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v19];
    v8 = OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView;
    v9 = *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView);
    *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView) = v7;

    v10 = [objc_allocWithZone(UILabel) init];
    v11 = OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel;
    v12 = *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel);
    *(a2 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel) = v10;
    v13 = v10;

    if (v13)
    {
      if (a4)
      {
        a4 = String._bridgeToObjectiveC()();
      }

      [v13 setText:a4];
    }

    v14 = *(a2 + v8);
    if (v14)
    {
      v15 = *(a2 + v11);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        [a2 addSubview:v16];
        v18 = [a2 addSubview:v17];
        (*((swift_isaMask & *a2) + 0xB8))(v18);
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetPrivacyOverlayView.layoutIconAndLabels()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = [v3 heightAnchor];
      v6 = [v5 constraintEqualToConstant:35.0];

      [v6 setActive:1];
      v7 = [v3 widthAnchor];
      v8 = [v7 constraintEqualToConstant:35.0];

      [v8 setActive:1];
      v9 = [v3 superview];
      if (v9)
      {
        v10 = v9;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v11 = [v3 leadingAnchor];
        v12 = [v10 leadingAnchor];
        v13 = [v11 constraintEqualToAnchor:v12];

        [v13 setConstant:25.0];
        [v13 setActive:1];
      }

      v14 = [v3 superview];
      if (v14)
      {
        v15 = v14;
        [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v16 = [v3 topAnchor];
        v17 = [v15 topAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];

        [v18 setConstant:60.0];
        [v18 setActive:1];
      }

      v19 = v4;
      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v19 topAnchor];
      v21 = [v3 topAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setActive:1];
      v23 = [v19 bottomAnchor];
      v24 = [v3 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      [v25 setActive:1];
      v26 = [v19 leadingAnchor];

      v27 = [v3 trailingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];

      [v28 setActive:1];
      v29 = [v19 superview];
      if (v29)
      {
        v30 = v29;
        [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        v31 = [v19 trailingAnchor];
        v32 = [v30 trailingAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        [v33 setConstant:25.0];
        [v33 setActive:1];
      }

      v34 = [objc_opt_self() whiteColor];
      [v19 setTextColor:v34];
    }
  }
}

void MOSuggestionSheetPrivacyOverlayView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientIconView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService35MOSuggestionSheetPrivacyOverlayView_clientLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}