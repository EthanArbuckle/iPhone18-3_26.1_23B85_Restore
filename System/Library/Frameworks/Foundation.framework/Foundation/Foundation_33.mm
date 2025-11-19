Foundation::Date __swiftcall Date.init(timeIntervalSinceNow:)(Swift::Double timeIntervalSinceNow)
{
  v3 = v1;
  v6 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result._time = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001 + timeIntervalSinceNow;
  *v3 = result._time;
  return result;
}

uint64_t NSURLSession.download(from:delegate:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  type metadata accessor for NSURLSession.CancelState();
  v8 = *(v0 + 120);
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v4 = swift_initStackObject();
  *(v0 + 152) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v6 = v0;
  v6[1] = NSURLSession.download(from:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.download(from:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:fromFile:delegate:);
  }

  else
  {

    v2 = NSURLSession.download(from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t partial apply for closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.download(from:delegate:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in NSURLSession.download(from:delegate:)()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v3 = v0;
  v3[1] = closure #1 in NSURLSession.download(from:delegate:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000018, 0x8000000181488430, partial apply for closure #1 in closure #1 in NSURLSession.download(from:delegate:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(from:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(from:delegate:), 0, 0);
}

void closure #1 in closure #1 in NSURLSession.download(from:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23[-v13];
  ObjectType = swift_getObjectType();
  v16 = (*(a4 + 432))(ObjectType, a4);
  (*(v12 + 16))(v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v14, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.download(from:delegate:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_146;
  v19 = _Block_copy(aBlock);

  v20 = [a2 _downloadTaskWithURL_delegate_completionHandler_];
  _Block_release(v19);

  v21 = v20;
  [v21 set:1 callCompletionHandlerInline:?];
  [v21 set:1 keepDownloadTaskFile:?];

  [v21 resume];
  v22 = *(a6 + 16);
  v24 = v21;
  os_unfair_lock_lock((v22 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v22 + 16), aBlock);
  os_unfair_lock_unlock((v22 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v21 cancel];
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a2, v10);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
  }

  v7 = a3;
  v8 = a4;
  v6(v10, a3, a4);

  return swift_unknownObjectRelease();
}

void *closure #1 in closure #1 in closure #1 in NSURLSession.download(for:delegate:)(void *result, void *a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t NSURLSession.download(resumeFrom:delegate:)()
{
  v1 = *(v0 + 104);
  swift_setDeallocating();

  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v8 = *(v0 + 112);
  type metadata accessor for NSURLSession.CancelState();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v4 = swift_initStackObject();
  *(v0 + 152) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v6 = v0;
  v6[1] = NSURLSession.download(resumeFrom:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.download(resumeFrom:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:from:delegate:);
  }

  else
  {

    v2 = NSURLSession.download(resumeFrom:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t _NSSwiftURLComponents.host.getter()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v70 = *(v1 + 112);
  v71 = v2;
  v72[0] = *(v1 + 144);
  *(v72 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v66 = *(v1 + 48);
  v67 = v3;
  v4 = *(v1 + 96);
  v68 = *(v1 + 80);
  v69 = v4;
  v5 = *(v1 + 32);
  v64 = *(v1 + 16);
  v65 = v5;
  outlined init with copy of URLComponents(&v64, v62);
  os_unfair_lock_unlock((v1 + 172));
  v62[7] = v71;
  v63[0] = v72[0];
  *(v63 + 10) = *(v72 + 10);
  v62[2] = v66;
  v62[3] = v67;
  v62[4] = v68;
  v62[5] = v69;
  v62[6] = v70;
  v62[0] = v64;
  v62[1] = v65;
  v6 = v69;
  if (v69)
  {
    v7 = *(&v68 + 1);
    v8 = v69;
  }

  else
  {
    if ((BYTE12(v64) & 1) != 0 && v64 && (*(v64 + 120) & 1) == 0)
    {
      v33 = String.subscript.getter();
      v7 = MEMORY[0x1865CAE80](v33);
      v8 = v34;
    }

    else
    {
      URLComponents._URLComponents.port.getter();
      if (v9)
      {
        v10 = URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v11)
        {
          v32 = v10;
          outlined destroy of URLComponents(&v64);
          return v32;
        }
      }

      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v6 = 0;
  }

  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    outlined destroy of URLComponents(&v64);
    return 0;
  }

  if (BYTE8(v72[1]))
  {
    v60 = v7;
    v61 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v58[0] = &v60;
    v58[1] = MEMORY[0x1E69E7CD0];
    v59 = 4;

    v14 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v56, v7, v8);
    if (v15 == 1)
    {
      v16 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v8, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v16 = v14;
    }

    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v16;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {

    goto LABEL_28;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v60 = v7;
    v61 = v8 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v6);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v22);
    v56 = &v60;
    v57 = HIBYTE(v8) & 0xF;

    v20 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v60, v57, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v58, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v23 == 1)
    {
      goto LABEL_28;
    }

LABEL_47:
    v55 = v20;
    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v55;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v18 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_23;
  }

  v45 = v6;
  v46 = _StringObject.sharedUTF8.getter();
  if (!v46)
  {
    v54 = one-time initialization token for idnaTranscoder;

    if (v54 != -1)
    {
      swift_once();
    }

    if ((byte_1ED436DC0 & 1) == 0)
    {
      if (swift_stdlib_isStackAllocationSafe())
      {
        __break(1u);
      }

      swift_slowAlloc();
      __break(1u);
      goto LABEL_56;
    }

    v20 = 0;
    goto LABEL_47;
  }

  v18 = v46;
  v12 = v47;
  v6 = v45;
LABEL_23:
  MEMORY[0x1EEE9AC00](v6);
  LOBYTE(v59) = 0;
  MEMORY[0x1EEE9AC00](v19);
  v56 = v18;
  v57 = v12;

  v20 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v18, v12, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v58, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  if (v21 != 1)
  {
    goto LABEL_47;
  }

LABEL_28:
  v60 = v7;
  v61 = v8;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v24 = String._bridgeToObjectiveCImpl()();

  v25 = [v24 _fastCharacterContents];
  v26 = v24;
  if (v25)
  {
    v60 = v7;
    v61 = v8;
    StringProtocol._ephemeralString.getter();
    v27 = String._bridgeToObjectiveCImpl()();

    v28 = [v27 length];
    v29 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v29);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v30);
    v56 = v25;
    v57 = v28;
    v31 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v25);
    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v31;
  }

  v60 = v7;
  v61 = v8;

  v35 = String.init<A>(_:)();
  v37 = v35;
  v38 = v36;
  if ((v36 & 0x1000000000000000) != 0)
  {
    v37 = static String._copying(_:)();
    v49 = v48;

    v38 = v49;
    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_42:
    v60 = v37;
    v61 = v38 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v35);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v50);
    v56 = &v60;
    v57 = v51;
    v53 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v60, v51, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:), v52, partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:));

    swift_bridgeObjectRelease_n();
    outlined destroy of URLComponents(&v64);
    return v53;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  if ((v37 & 0x1000000000000000) != 0)
  {
    v39 = (v38 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_36:
    MEMORY[0x1EEE9AC00](v39);
    LOBYTE(v59) = 0;
    MEMORY[0x1EEE9AC00](v40);
    v56 = v41;
    v57 = v42;
    v44 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v41, v42, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v43, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_37:
    swift_bridgeObjectRelease_n();

    outlined destroy of URLComponents(&v64);
    return v44;
  }

  v39 = _StringObject.sharedUTF8.getter();
  if (v39)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v44 = 0;
    goto LABEL_37;
  }

LABEL_56:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

NSNotification __swiftcall Notification._bridgeToObjectiveC()()
{
  v1 = *v0;
  outlined init with copy of Any?((v0 + 1), v16);
  v2 = v0[5];
  v3 = v17;
  if (!v17)
  {
    v11 = 0;
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = *(v5 + 16);
  v9(v15 - v8, v7);
  result.super.isa = _swift_isClassOrObjCExistentialType();
  if ((result.super.isa & 1) == 0)
  {
    v15[1] = v15;
    v14 = MEMORY[0x1EEE9AC00](result.super.isa);
    (v9)(v15 - v8, v15 - v8, v3, v14);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v5 + 8))(v15 - v8, v3);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (!v2)
    {
LABEL_7:
      v13 = [objc_allocWithZone(NSNotification) initWithName:v1 object:v11 userInfo:v2];
      swift_unknownObjectRelease();

      return v13;
    }

LABEL_6:

    v2 = _NativeDictionary.bridged()();
    goto LABEL_7;
  }

  if (v6 == 8)
  {
    v11 = *(v15 - v8);
    v12 = *(v5 + 8);
    swift_unknownObjectRetain();
    v12(v15 - v8, v3);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Notification.init(name:object:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a1;
  result = outlined assign with take of Any?(a2, a4 + 8);
  *(a4 + 40) = a3;
  return result;
}

void *closure #1 in NSURLSession.CancelState.activate(task:)@<X0>(void *result@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  if (result[1])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (*result)
    {
      v4 = 0;
    }

    else
    {
      *result = 0;
      result[1] = a2;
      result = a2;
      v4 = 1;
    }

    *a3 = v4;
  }

  return result;
}

uint64_t objectdestroy_133Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

id protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for autoupdatingCurrentNSLocale != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.autoupdatingCurrentNSLocale;

  return v0;
}

unint64_t URLComponents.path.getter()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[13];
    v3 = v1;
  }

  else
  {
    v4 = *v0;
    if (*(v0 + 14) != 1 || v4 == 0)
    {
      v2 = 0;
      v3 = 0xE000000000000000;
    }

    else
    {
      v6 = v0[14];
      if (*(v4 + 168))
      {
        v7 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v7 = String.subscript.getter();
      }

      v2 = MEMORY[0x1865CAE80](v7);
      v3 = v8;

      v1 = v6;
    }
  }

  v9 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v9 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  v17[0] = v2;
  v17[1] = v3;
  MEMORY[0x1EEE9AC00](v1);
  v16[2] = v17;
  v16[3] = MEMORY[0x1E69E7CD0];
  v16[4] = 4;

  v10 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v16, v2, v3);
  if (v11 == 1)
  {
    v12 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    v14 = v13;
  }

  else
  {
    v14 = v11;
    v12 = v10;
  }

  swift_bridgeObjectRelease_n();
  result = v12;
  if (!v14)
  {
    return 0;
  }

  return result;
}

unint64_t URLComponents._URLComponents.path.getter(uint64_t a1)
{
  v16 = *(v1 + 104);
  v2 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v3 = v16;
  }

  else if ((*(v1 + 14) & 1) != 0 && *v1)
  {
    if (*(*v1 + 168))
    {
      v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v4 = String.subscript.getter();
    }

    v3 = MEMORY[0x1865CAE80](v4);
    v2 = v5;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v16, v15, &_sSSSgMd);

    return 0;
  }

  v15[0] = v3;
  v15[1] = v2;
  MEMORY[0x1EEE9AC00](a1);
  v13[2] = v15;
  v13[3] = MEMORY[0x1E69E7CD0];
  v13[4] = 4;
  outlined init with copy of FloatingPointRoundingRule?(&v16, v14, &_sSSSgMd);

  v7 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v13, v3, v2);
  if (v8 == 1)
  {
    v9 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v2, MEMORY[0x1E69E7CD0], 4);
    v11 = v10;
  }

  else
  {
    v11 = v8;
    v9 = v7;
  }

  swift_bridgeObjectRelease_n();
  result = v9;
  if (!v11)
  {
    return 0;
  }

  return result;
}

double URLComponents.init(string:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(a1, a2, 1, v21);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v21) == 1)
  {
    sub_18094C438(&v12);
  }

  else
  {
    v18 = v21[6];
    v19 = v21[7];
    v20[0] = v22[0];
    *(v20 + 10) = *(v22 + 10);
    v14 = v21[2];
    v15 = v21[3];
    v16 = v21[4];
    v17 = v21[5];
    v12 = v21[0];
    v13 = v21[1];
    _NSBundleDeallocatingImmortalBundle(&v12, v6);
  }

  v7 = v19;
  a3[6] = v18;
  a3[7] = v7;
  a3[8] = v20[0];
  *(a3 + 138) = *(v20 + 10);
  v8 = v15;
  a3[2] = v14;
  a3[3] = v8;
  v9 = v17;
  a3[4] = v16;
  a3[5] = v9;
  result = *&v12;
  v11 = v13;
  *a3 = v12;
  a3[1] = v11;
  return result;
}

double sub_18094C438(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanNull()()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v3 - v2) <= 3)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    v5 = 12;
LABEL_16:
    *(v4 + 48) = v5;
    swift_willThrow();
    return;
  }

  if (*v2 != 1819047278)
  {
    v6 = *(v0 + 1);
    v7 = *(v0 + 2);
    if ((((v6 + v7 - v3) | &v2[-v6]) & 0x8000000000000000) == 0)
    {
      if (v2 < v3 && *v2 == 110)
      {
        if (v2[1] == 117)
        {
          if (v2[2] == 108)
          {
            v8 = 3;
            if (v2[3] == 108)
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 2;
          }
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = &v2[v8];
      *(v0 + 3) = &v2[v8];
      if (&v2[v8] < v3)
      {
        v10 = *v9;
        v11 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, v6, v7);
        v13 = v12;
        v15 = v14;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v4 = 0xD000000000000016;
        *(v4 + 8) = 0x8000000181481BD0;
        *(v4 + 16) = v10;
        *(v4 + 24) = v11;
        *(v4 + 32) = v13;
        *(v4 + 40) = v15;
        v5 = 1;
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v0 + 3) = v2 + 4;
  v1 = v0;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v2 + 4));
  v0 = *(v0 + 6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
  }

  v17 = *(v0 + 2);
  v16 = *(v0 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v0);
    v18 = v17 + 1;
    v0 = v19;
  }

  *(v0 + 2) = v18;
  *&v0[8 * v17 + 32] = 2;
  *(v1 + 6) = v0;
}

void protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __JSONEncoder()
{
  v1 = *v0;
  if (*(*v0 + 32) == 255)
  {
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Array<A>.nonPrettyJSONRepresentation<A>(encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a2;
  v57 = *(a4 - 8);
  v58 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v55 = v17;
  v18 = *(v17 + 56);
  v59 = 0;
  v60 = v18 & 1;
  v61 = (v18 & 2) != 0;
  v62 = (v18 & 8) != 0;
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  v22 = (v21 + 1);
  if (v21 >= v20 >> 1)
  {
LABEL_34:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v22, 1, v19);
  }

  *(v19 + 2) = v22;
  v19[v21 + 32] = 91;
  v63 = v19;
  v53 = MEMORY[0x1865CB550](v58, a4);
  if (v53 < 1)
  {
    goto LABEL_12;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v54 = a5;
  v43 = v13;
  if (isClassOrObjCExistentialType)
  {
    v24 = v58;
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v24 & 0xC000000000000001) != 0)
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v44 != 8)
      {
        goto LABEL_36;
      }

      v26 = a7;
      v64 = result;
      v27 = v57;
      v52 = *(v57 + 16);
      v52(v16, &v64, a4);
      swift_unknownObjectRelease();
      v28 = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = v58;
    Array._checkSubscript(_:wasNativeTypeChecked:)();
  }

  v26 = a7;
  v28 = v57;
  v29 = v24 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v52 = *(v57 + 16);
  v52(v16, v29, a4);
LABEL_9:
  v30 = a6;
  v33 = *(a6 + 8);
  v32 = a6 + 8;
  v31 = v33;
  v33(&v59, v55, v56, v54, v26, a4, v30);
  v34 = *(v28 + 8);
  v21 = v28 + 8;
  v22 = v34;
  v34(v16, a4);
  if (v7)
  {

    return v16;
  }

  v50 = v32;
  v51 = v31;
  if (v53 == 1)
  {
LABEL_12:
    v16 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v36 = *(v16 + 2);
    v35 = *(v16 + 3);
    if (v36 >= v35 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v16);
    }

    *(v16 + 2) = v36 + 1;
    v16[v36 + 32] = 93;
    return v16;
  }

  v37 = v26;
  v47 = v58 & 0xFFFFFFFFFFFFFF8;
  v48 = v30;
  v45 = v58 & 0xC000000000000001;
  v46 = v57 + 16;
  v13 = 1;
  v49 = v37;
  a5 = v43;
  while (1)
  {
    v16 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v39 = *(v16 + 2);
    v38 = *(v16 + 3);
    if (v39 >= v38 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v16);
    }

    *(v16 + 2) = v39 + 1;
    v16[v39 + 32] = 44;
    v63 = v16;
    if (_swift_isClassOrObjCExistentialType())
    {
      if (v45)
      {
        break;
      }
    }

    v40 = _swift_isClassOrObjCExistentialType();
    v41 = v47;
    a6 = v48;
    if ((v40 & 1) == 0)
    {
      v41 = v58;
    }

    v20 = *(v41 + 16);
    a7 = v49;
    if (v13 >= v20)
    {
      __break(1u);
      goto LABEL_34;
    }

    v52(a5, (v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v13), a4);
LABEL_29:
    v51(&v59, v55, v56, v54, a7, a4, a6);
    v22(a5, a4);
    if (v53 == ++v13)
    {
      goto LABEL_12;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  a6 = v48;
  a7 = v49;
  if (v44 == 8)
  {
    v64 = result;
    v52(a5, &v64, a4);
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double URLComponents.init(url:resolvingAgainstBaseURL:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = (*(v5 + 112))(ObjectType, v5);
  }

  else
  {
    v7 = (*(v5 + 104))(ObjectType, v5);
  }

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v8, 1, v24);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v24) == 1)
  {
    sub_18094C438(&v15);
  }

  else
  {
    v21 = v24[6];
    v22 = v24[7];
    v23[0] = v25[0];
    *(v23 + 10) = *(v25 + 10);
    v17 = v24[2];
    v18 = v24[3];
    v19 = v24[4];
    v20 = v24[5];
    v15 = v24[0];
    v16 = v24[1];
    _NSBundleDeallocatingImmortalBundle(&v15, v9);
  }

  v10 = v22;
  a3[6] = v21;
  a3[7] = v10;
  a3[8] = v23[0];
  *(a3 + 138) = *(v23 + 10);
  v11 = v18;
  a3[2] = v17;
  a3[3] = v11;
  v12 = v20;
  a3[4] = v19;
  a3[5] = v12;
  result = *&v15;
  v14 = v16;
  *a3 = v15;
  a3[1] = v14;
  return result;
}

uint64_t closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(const char *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77[4] = *MEMORY[0x1E69E9840];
  if (a2 >> 16)
  {
    __break(1u);
    goto LABEL_103;
  }

  result = chmod(a1, a2);
  if (!result)
  {
    return result;
  }

  v7 = MEMORY[0x1865CA7A0]();
  if (v7 <= 27)
  {
    if (v7 > 12)
    {
      if (v7 != 13)
      {
        if (v7 == 17)
        {
          v10 = 516;
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v7 != 1)
    {
      if (v7 == 2)
      {
        v10 = 4;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = 513;
    goto LABEL_23;
  }

  if (v7 <= 62)
  {
    if (v7 != 28)
    {
      if (v7 == 30)
      {
        v10 = 642;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    v10 = 640;
    goto LABEL_23;
  }

  switch(v7)
  {
    case '?':
      v10 = 514;
      goto LABEL_23;
    case 'E':
      goto LABEL_20;
    case 'f':
      v8 = 0;
      v9 = 512;
      goto LABEL_87;
  }

LABEL_22:
  v10 = 512;
LABEL_23:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
LABEL_107:
    _StringGuts.grow(_:)(22);

    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v70);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v12 = @"NSPOSIXErrorDomain";
  v13 = v12;
  v71 = a3;
  v72 = v10;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v12);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_42;
        }

        goto LABEL_29;
      }

      v17 = [(__CFString *)v13 UTF8String];
      if (!v17)
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      String.init(utf8String:)(v17);
      if (v18)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v75 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      goto LABEL_30;
    }

    [(__CFString *)v13 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_42;
  }

LABEL_29:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  if (__CFStringIsCF())
  {
LABEL_30:

    goto LABEL_42;
  }

  v15 = v13;
  String.init(_nativeStorage:)();
  if (!v16 && (v77[0] = [(__CFString *)v15 length]) != 0)
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_42:
  v20 = POSIXErrorCode.rawValue.getter();
  v21 = objc_allocWithZone(NSError);
  v22 = String._bridgeToObjectiveCImpl()();

  v8 = [v21 initWithDomain:v22 code:v20 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v8 domain];
  if (!v23)
  {
LABEL_52:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_63;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_48;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  switch(v28)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      v35 = [v27 UTF8String];
      if (!v35)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v36 = String.init(utf8String:)(v35);
      if (v37)
      {
LABEL_57:
        v29 = v36;
        v31 = v37;

        goto LABEL_62;
      }

      __break(1u);
LABEL_56:
      v75 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v37)
      {
        [v27 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v29 = v73;
        v31 = v74;
        goto LABEL_62;
      }

      goto LABEL_57;
    case 2:
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

      goto LABEL_63;
  }

LABEL_48:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_52;
  }

  v32 = v27;
  v33 = String.init(_nativeStorage:)();
  if (v34)
  {
    v29 = v33;
    v31 = v34;

    goto LABEL_63;
  }

  v77[0] = [v32 length];
  if (!v77[0])
  {

    goto LABEL_52;
  }

  v29 = String.init(_cocoaString:)();
  v31 = v38;
LABEL_62:

LABEL_63:
  v39 = v13;
  v40 = v39;
  if (!isTaggedPointer)
  {
    goto LABEL_68;
  }

  v41 = _objc_getTaggedPointerTag(v39);
  if (!v41)
  {
    goto LABEL_76;
  }

  if (v41 == 22)
  {
    v48 = [(__CFString *)v40 UTF8String];
    if (v48)
    {
      v49 = String.init(utf8String:)(v48);
      if (v50)
      {
LABEL_77:
        v42 = v49;
        v44 = v50;

        goto LABEL_82;
      }

      __break(1u);
LABEL_76:
      v75 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v50)
      {
        [(__CFString *)v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v42 = v73;
        v44 = v74;
        goto LABEL_82;
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if (v41 != 2)
  {
LABEL_68:
    LOBYTE(v73) = 0;
    v77[0] = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v45 = v40;
      v46 = String.init(_nativeStorage:)();
      if (v47)
      {
        v42 = v46;
        v44 = v47;

        goto LABEL_82;
      }

      v77[0] = [(__CFString *)v45 length];
      if (v77[0])
      {
        v42 = String.init(_cocoaString:)();
        v44 = v51;
        goto LABEL_82;
      }
    }

    v42 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](v41);
  v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v44 = v43;

LABEL_82:
  if (v29 != v42 || v31 != v44)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_86;
    }

LABEL_103:
    __break(1u);
  }

LABEL_86:
  a3 = v71;
  v9 = v72;
LABEL_87:

  if (_foundation_swift_url_feature_enabled())
  {

    v53 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a3, a4);
    v55 = v54;

    LOBYTE(v73) = 3;
    type metadata accessor for _SwiftURL();
    v77[0] = 0;
    v77[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v53, v55, 0, &v73, v77);
    v56 = _SwiftURL.convertingFileReference()();
    v58 = v57;
  }

  else
  {
    v59 = (specialized BidirectionalCollection.last.getter(a3, a4) & 0x1FF) == 47;
    v60 = objc_allocWithZone(type metadata accessor for _BridgedURL());

    v61 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a3, a4, v59);
    if (!v61)
    {

      v64 = String._bridgeToObjectiveCImpl()();
LABEL_98:
      v66 = 0;
      if (v8)
      {
        goto LABEL_93;
      }

      goto LABEL_99;
    }

    v62 = v61;
    v56 = _BridgedURL.convertingFileReference()();
    v58 = v63;
  }

  v64 = String._bridgeToObjectiveCImpl()();
  if (!v56)
  {
    goto LABEL_98;
  }

  ObjectType = swift_getObjectType();
  v66 = (*(v58 + 432))(ObjectType, v58);
  swift_unknownObjectRelease();
  if (v8)
  {
LABEL_93:
    v77[0] = v8;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v8 = v8;
    v67 = _getErrorEmbeddedNSError<A>(_:)();

    if (v67)
    {
    }

    else
    {
      swift_allocError();
      *v68 = v8;
    }

    v69 = _swift_stdlib_bridgeErrorToNSError();
    goto LABEL_100;
  }

LABEL_99:
  v69 = 0;
LABEL_100:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

void _NSFileHandleRaiseOperationExceptionWhileReading(objc_class *a1, const char *a2, int a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*__error() < 1 || *__error() >= *MEMORY[0x1E69E9940])
  {
    v6 = "unknown error";
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9938] + 8 * *__error());
  }

  v7 = __error();
  v8 = _NSErrorWithFilePathAndErrno(*v7, 0, a3);
  v10 = @"NSFileHandleOperationExceptionUnderlyingError";
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSFileHandleOperationException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %s", _NSMethodExceptionProem(a1, a2), v6), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  objc_exception_throw(v9);
}

uint64_t closure #1 in _LocaleICU.decimalSeparator.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 136);
  v6 = *(a1 + 168);
  v15[6] = *(a1 + 152);
  v16[0] = v6;
  *(v16 + 12) = *(a1 + 180);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v15[2] = *(a1 + 88);
  v15[3] = v8;
  v15[4] = *(a1 + 120);
  v15[5] = v5;
  v15[0] = *(a1 + 56);
  v15[1] = v7;
  if (_s10Foundation17LocalePreferencesVSgWOg(v15) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&v16[0];
  }

  v10 = _LocaleICU.State.NumberFormattersBox.formatter(for:identifier:numberSymbols:)(1u, v3, v4, v9);

  if (v10)
  {
    Symbol = unum_getSymbol();
    result = 0;
    v13 = 0;
    if (Symbol - 1 < 0x20)
    {
      result = specialized String.init(_utf16:)(v14, Symbol);
    }

    *a2 = result;
    a2[1] = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

id specialized static NSNotificationCenter.Publisher.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v8 = v3;
  v9 = v5;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v8);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v13 = v12;

          goto LABEL_22;
        }

        goto LABEL_8;
      }

      result = [v8 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_53;
      }

      v17 = String.init(utf8String:)(result);
      if (v18)
      {
LABEL_17:
        v11 = v17;
        v13 = v18;

        goto LABEL_22;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v35;
      v13 = v36;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_8:
  LOBYTE(v35) = 0;
  if (__CFStringIsCF())
  {

LABEL_12:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_22;
  }

  v14 = v8;
  v15 = String.init(_nativeStorage:)();
  if (v16)
  {
    v11 = v15;
    v13 = v16;

    goto LABEL_22;
  }

  if (![v14 length])
  {

    goto LABEL_12;
  }

  v11 = String.init(_cocoaString:)();
  v13 = v19;
LABEL_22:
  v20 = _objc_isTaggedPointer(v9);
  v21 = v9;
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v32;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  result = [v22 UTF8String];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v30 = String.init(utf8String:)(result);
  if (v31)
  {
LABEL_35:
    v24 = v30;
    v26 = v31;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v31)
  {
    goto LABEL_35;
  }

  [v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v11 == v24 && v13 == v26)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    return (v6 && v4 == v6);
  }

  else
  {
    return (v6 == 0);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x1865CD020](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t partial apply for closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.data(for:delegate:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(for:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.data(for:delegate:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v4 = v0;
  v4[1] = closure #1 in NSURLSession.data(for:delegate:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001814884D0, partial apply for closure #1 in closure #1 in NSURLSession.data(for:delegate:), v3, v5);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(for:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in URLRequest.addValue(_:forHTTPHeaderField:)(void *a1)
{
  v2 = String._bridgeToObjectiveCImpl()();
  [a1 addValue:v2 forHTTPHeaderField:String._bridgeToObjectiveCImpl()()];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t specialized _LocaleAutoupdating.debugDescription.getter()
{
  strcpy(v18, "autoupdating ");
  HIWORD(v18[1]) = -4864;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v12 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v14[0] = v0;
    *(v14 + 8) = v12;
    LocaleCache.preferences()(v16);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
    v14[6] = v16[6];
    v15[0] = v17[0];
    *(v15 + 12) = *(v17 + 12);
    v14[2] = v16[2];
    v14[3] = v16[3];
    v14[4] = v16[4];
    v14[5] = v16[5];
    v14[0] = v16[0];
    v14[1] = v16[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v16, &v13);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v14, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v14);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v16);

      v2 = *(&v14[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v16);
    }
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v2 + 64))(ObjectType, v2);
  v10 = v9;
  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](v8, v10);

  return v18[0];
}

uint64_t Data._Representation.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (!a2)
      {
        result = outlined consume of Data._Representation(*v2, *(v2 + 8));
        *v2 = xmmword_181234410;
        return result;
      }

      if (a2 > 14)
      {
        if (a2 <= 0x7FFFFFFE)
        {
          if (a1 > 0)
          {
            goto LABEL_90;
          }

          type metadata accessor for __DataStorage();
          v2 = swift_allocObject();
          __DataStorage.init(length:)(a2);
          goto LABEL_74;
        }

        goto LABEL_42;
      }

      if (a1 <= 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v22 = a2 << 48;
          result = outlined consume of Data._Representation(v9, v10);
          *v6 = 0;
LABEL_75:
          *(v6 + 8) = v22;
          return result;
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v2 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *&v32 = v9;
    *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v9, v10);
    *v6 = xmmword_181234410;
    if (*(v9 + 24) >= v8)
    {
      Data.LargeSlice.ensureUniqueReference()();
      v2 = *(&v32 + 1);
      __DataStorage.resetBytes(in:)(v8, a2);
      v8 = v32;
      if (*(v32 + 24) >= a2)
      {
LABEL_44:
        v22 = v2 | 0x8000000000000000;
        result = outlined consume of Data._Representation(*v6, *(v6 + 8));
        *v6 = v8;
        goto LABEL_75;
      }

      if (*(v32 + 16) <= a2)
      {
LABEL_12:
        *(v8 + 24) = a2;
        goto LABEL_44;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v4 = HIDWORD(v9);
  if (v11)
  {

    outlined consume of Data._Representation(v9, v10);
    *v2 = xmmword_181234410;
    if (a2 >= 0x7FFFFFFF)
    {
      v3 = v9;
      v2 = v9 >> 32;
      if (v9 >> 32 >= v9)
      {
        type metadata accessor for Data.RangeReference();
        v21 = swift_allocObject();
        *(v21 + 16) = v9;
        *(v21 + 24) = v2;
        *&v32 = v21;
        *(&v32 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
        if (v2 >= v8)
        {

          Data.LargeSlice.ensureUniqueReference()();
          v2 = *(&v32 + 1);
          __DataStorage.resetBytes(in:)(v8, a2);
          v8 = v32;
          if (*(v32 + 24) < a2)
          {
            if (*(v32 + 16) > a2)
            {
              goto LABEL_89;
            }

            *(v32 + 24) = a2;
          }

          outlined consume of Data._Representation(v9, v10);
          goto LABEL_44;
        }

        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v5 = v9 >> 32;
    if (v9 >> 32 >= v8)
    {
      v2 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_59;
      }

      v3 = v9;
      if (v5 >= v9)
      {
        v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v13)
        {
          v14 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v15 = __OFSUB__(v9, v14);
          v16 = v9 - v14;
          if (v15)
          {
            goto LABEL_92;
          }

          v29 = v16 + v13;
        }

        else
        {
          v29 = 0;
        }

        type metadata accessor for __DataStorage();
        v27 = swift_allocObject();
        v2 = v27;
        *(v27 + 16) = 0;
        v10 = v27 + 16;
        *(v27 + 48) = 0;
        *(v27 + 56) = 0;
        *(v27 + 40) = v9;
        v3 = v5 - v9;
        if (!v3)
        {
          *(v27 + 64) = 0;
          *(v27 + 24) = 0;
          *(v27 + 32) = 0;
          *v10 = 0;
          goto LABEL_58;
        }

        if (one-time initialization token for vmOpsThreshold != -1)
        {
          goto LABEL_93;
        }

        goto LABEL_52;
      }

      goto LABEL_87;
    }

    goto LABEL_77;
  }

  *v30 = *v2;
  v30[2] = BYTE2(v9);
  v30[3] = BYTE3(v9);
  v30[4] = BYTE4(v9);
  v30[5] = BYTE5(v9);
  v30[6] = BYTE6(v9);
  v30[7] = HIBYTE(v9);
  *&v30[8] = v10;
  v30[10] = BYTE2(v10);
  v30[11] = BYTE3(v10);
  v30[12] = BYTE4(v10);
  v30[13] = BYTE5(v10);
  v12 = BYTE6(v10);
  v31 = BYTE6(v10);
  if (BYTE6(v10) >= a2)
  {
    if (BYTE6(v10) >= a1)
    {
      v17 = a2 - a1;
      if (!__OFSUB__(a2, a1))
      {
        bzero(&v30[a1], v17);
        v18 = *v30;
        v19 = *&v30[8] | ((*&v30[12] | (v31 << 16)) << 32);
        result = outlined consume of Data._Representation(v9, v10);
        *v6 = v18;
        *(v6 + 8) = v19;
        return result;
      }

      goto LABEL_81;
    }

    goto LABEL_78;
  }

  if (a2 <= 0x7FFFFFFE)
  {
    *&v32 = *v30;
    *(&v32 + 6) = *&v30[6];
    v3 = type metadata accessor for __DataStorage();
    v9 = swift_allocObject();
    v2 = v9;
    __DataStorage.init(bytes:length:)(&v32, BYTE6(v10));
    if (BYTE6(v10) >= v8)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v2 = v9;
LABEL_73:
        __DataStorage.resetBytes(in:)(v8, a2);
LABEL_74:
        v22 = v2 | 0x4000000000000000;
        result = outlined consume of Data._Representation(*v6, *(v6 + 8));
        *v6 = a2 << 32;
        goto LABEL_75;
      }

      v24 = *(v9 + 16);
      if (v24)
      {
        v25 = *(v9 + 40);
        v15 = __OFSUB__(0, v25);
        v26 = -v25;
        if (v15)
        {
          __break(1u);
          goto LABEL_95;
        }

        v10 = v26 + v24;
      }

      else
      {
        v10 = 0;
      }

      v28 = swift_allocObject();
      v2 = v28;
      *(v28 + 16) = 0;
      v3 = v28 + 16;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 40) = 0;
      if (!v12)
      {
        *(v28 + 64) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *v3 = 0;
LABEL_72:

        goto LABEL_73;
      }

      if (one-time initialization token for vmOpsThreshold == -1)
      {
LABEL_65:
        if (v12 >= static __DataStorage.vmOpsThreshold)
        {
          *(v2 + 24) = v12;
          *(v2 + 32) = v12;
          *(v2 + 64) = 1;
          LODWORD(v32) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
          result = malloc_type_malloc(v12, v32 << 32);
          if (!result)
          {
            goto LABEL_99;
          }

          *v3 = result;
        }

        else
        {
          *(v2 + 24) = v12;
          LODWORD(v32) = 0;
          _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
          result = malloc_type_malloc(v12, v32 << 32);
          if (!result)
          {
            goto LABEL_98;
          }

          *(v2 + 16) = result;
          *(v2 + 32) = v12;
          *(v2 + 64) = 1;
        }

        specialized static __DataStorage.move(_:_:_:)(result, v10, v12);
        goto LABEL_72;
      }

LABEL_95:
      swift_once();
      goto LABEL_65;
    }

    goto LABEL_85;
  }

  *&v32 = *v30;
  *(&v32 + 6) = *&v30[6];
  type metadata accessor for __DataStorage();
  v2 = swift_allocObject();
  __DataStorage.init(bytes:length:)(&v32, BYTE6(v10));
  type metadata accessor for Data.RangeReference();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = BYTE6(v10);
  *&v32 = v23;
  *(&v32 + 1) = v2;
  if (BYTE6(v10) >= v8)
  {
    Data.LargeSlice.ensureUniqueReference()();
    v2 = *(&v32 + 1);
    __DataStorage.resetBytes(in:)(v8, a2);
    v8 = v32;
    if (*(v32 + 24) >= a2)
    {
      goto LABEL_44;
    }

    if (*(v32 + 16) > a2)
    {
      __break(1u);
LABEL_42:
      if (v8 > 0)
      {
        goto LABEL_91;
      }

      type metadata accessor for __DataStorage();
      v2 = swift_allocObject();
      __DataStorage.init(length:)(a2);
      type metadata accessor for Data.RangeReference();
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = a2;
      goto LABEL_44;
    }

    goto LABEL_12;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
LABEL_52:
    if (v3 < static __DataStorage.vmOpsThreshold)
    {
      break;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = v3;
    *(v2 + 64) = 1;
    LODWORD(v32) = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
    result = malloc_type_malloc(v3, v32 << 32);
    if (!result)
    {
      goto LABEL_97;
    }

    *v10 = result;
LABEL_57:
    specialized static __DataStorage.move(_:_:_:)(result, v29, v3);
LABEL_58:

LABEL_59:
    __DataStorage.resetBytes(in:)(v8, a2);
    if (v5 < a2)
    {
      LODWORD(v4) = a2;
      if (a2 < v9)
      {
        continue;
      }
    }

    v22 = v2 | 0x4000000000000000;
    result = outlined consume of Data._Representation(*v6, *(v6 + 8));
    *v6 = v9 | (v4 << 32);
    goto LABEL_75;
  }

  *(v2 + 24) = v3;
  LODWORD(v32) = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v32 + 1);
  result = malloc_type_malloc(v3, v32 << 32);
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 32) = v3;
    *(v2 + 64) = 1;
    goto LABEL_57;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

void Data.InlineSlice.resetBytes(in:)(uint64_t a1, uint64_t a2)
{
  if (v2[1] < a1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Data.InlineSlice.ensureUniqueReference()();
  __DataStorage.resetBytes(in:)(a1, a2);
  if (v2[1] >= a2)
  {
    return;
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_8;
  }

  if (*v2 > a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2[1] = a2;
}

double _PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v98 = a2;
  v99 = a7;
  v93 = a4;
  v97 = a3;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Optional();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77 - v17;
  swift_getAssociatedTypeWitness();
  v91 = a8;
  v92 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v96 = v23;
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  v90 = a1;
  v94 = a5;
  v30 = dispatch thunk of CodingKey.stringValue.getter();
  if (!v97[2])
  {

    goto LABEL_6;
  }

  v77 = v20;
  v32 = v97;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_6:
    (*(v95 + 56))(v27, 1, 1, v96);
    (*(v25 + 8))(v27, v24);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v90, v93, v94, v99, v45, &_sSdmMd, &_sSdmMR, &_sSdmmMd);
    swift_willThrow();
    return result;
  }

  v36 = v87;
  v37 = v32[7] + *(v87 + 72) * v33;
  v38 = v77;
  v39 = AssociatedTypeWitness;
  (*(v87 + 16))(v77, v37, AssociatedTypeWitness);
  v40 = v86;
  (*(v36 + 32))(v86, v38, v39);
  v41 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v42 = swift_checkMetadataState();
  v43 = v89;
  v41(v40, v42, AssociatedConformanceWitness);
  if (v43)
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v36 + 8))(v40, v39);
    swift_unknownObjectRelease();
    v47 = v95;
    v46 = v96;
    (*(v95 + 56))(v27, 0, 1, v96);
    v48 = v85;
    (*(v47 + 32))(v85, v27, v46);
    v49 = v83;
    v50 = *(v83 + 16);
    v51 = v84;
    v52 = v94;
    v50(v84, v90, v94);
    (*(v49 + 56))(v51, 0, 1, v52);
    v54 = v91;
    v53 = v92;
    if ((*(v91 + 40))(v48, v92, v91))
    {
      v92 = v50;
      v98 = type metadata accessor for DecodingError();
      swift_allocError();
      v97 = v55;
      *v55 = MEMORY[0x1E69E63B0];
      v56 = v52;
      v57 = v81;
      v58 = *(v81 + 16);
      v59 = v80;
      v60 = v82;
      v58();
      v61 = v79;
      (v58)(v79, v59, v60);
      v62 = v61;
      v63 = v83;
      if ((*(v83 + 48))(v61, 1, v56) == 1)
      {
        v64 = *(v57 + 8);
        v64(v61, v60);
        _CodingPathNode.path.getter(v93);
        v64(v59, v60);
      }

      else
      {
        v70 = v78;
        (*(v63 + 32))(v78, v62, v56);
        v71 = _CodingPathNode.path.getter(v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v72 = v63;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v74 = v99;
        *(inited + 56) = v56;
        *(inited + 64) = v74;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v92(boxed_opaque_existential_0, v70, v56);
        v100 = v71;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v72 + 8))(v70, v56);
        v64 = *(v57 + 8);
        v64(v80, v60);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v76 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v98 - 8) + 104))(v76, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      v64(v84, v60);
      (*(v95 + 8))(v85, v96);
    }

    else
    {
      v65 = *(v98 + 24);
      v66 = *(v54 + 80);
      v67 = lazy protocol witness table accessor for type Double and conformance Double();
      swift_unknownObjectRetain();
      v66(&v101, v48, v65, v93, v51, MEMORY[0x1E69E63B0], v52, v67, v99, v53, v54);
      v68 = v48;
      v69 = v81;
      swift_unknownObjectRelease();
      (*(v69 + 8))(v51, v82);
      (*(v95 + 8))(v68, v96);
      return v101;
    }
  }

  return result;
}

uint64_t BPlistScanner.scanReal(rawTypeMarker:index:objectRangeEndIndex:)(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2 + 1;
  if ((result & 0xF) != 3)
  {
    if ((result & 0xF) != 2)
    {
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v11 = 0;
      v11[1] = 0;
      return swift_willThrow();
    }

    if (a3 - v4 >= 4)
    {
      v5 = v3[2];
      v6 = v3[4];
      if (v6 >= v5)
      {
        if ((v5 - *v3) >= 0)
        {
          if ((v6 - v5) >= 0)
          {
            if ((*v3 + v3[1] - v6) >= 0)
            {
              v7 = (a2[1] << 24) | (a2[2] << 16);
              v8 = 4;
              v9 = 3;
LABEL_18:
              v14 = v7 | (a2[v9] << 8) | a2[v8];
              v15 = swift_allocObject();
              *(v15 + 16) = v14;
              *(v15 + 24) = v8;
              return v15 | 0x7000000000000000;
            }

            goto LABEL_25;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v10 = xmmword_181247330;
    return swift_willThrow();
  }

  if (a3 - v4 < 8)
  {
    goto LABEL_10;
  }

  v12 = v3[2];
  v13 = v3[4];
  if (v13 < v12)
  {
    goto LABEL_20;
  }

  if ((v12 - *v3) < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v13 - v12) < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*v3 + v3[1] - v13) >= 0)
  {
    v7 = (a2[1] << 56) | (a2[2] << 48) | (a2[3] << 40) | (a2[4] << 32) | (a2[5] << 24) | (a2[6] << 16);
    v8 = 8;
    v9 = 7;
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t BPlistMap.Value.realValue<A, B>(in:as:for:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, void (*a8)(uint64_t, void, uint64_t)@<X8>, uint64_t a9)
{
  v161 = a8;
  v162 = a7;
  v166 = a2;
  v167 = a3;
  v160 = a1;
  v158 = a9;
  v163 = a5;
  v157 = type metadata accessor for Optional();
  v159 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v12 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v146 - v14;
  v165 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v156 = v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v146 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v146 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v154 = v146 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = v146 - v27;
  v169 = a6;
  v28 = a4;
  v168 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v168);
  v30 = v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v146 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v146 - v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v146 - v41;
  v51 = MEMORY[0x1EEE9AC00](v43);
  v53 = v146 - v52;
  if (v28 >> 60 != 7)
  {
    if (v28 >> 60 == 8)
    {
      v54 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (*((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != 1 || (v54 & 0x8000000000000000) == 0)
      {
        v171 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        return dispatch thunk of FloatingPoint.init<A>(_:)();
      }

      v151 = v50;
      v152 = v49;
      v171 = 0;
      v172 = 0xE000000000000000;
      v55 = v48;
      _StringGuts.grow(_:)(52);
      v150 = "ex";
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      v170 = v54;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v56);

      v149 = "Parsed property list number <";
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v159 = v171;
      v157 = v172;
      v164 = type metadata accessor for DecodingError();
      v160 = swift_allocError();
      v153 = v57;
      v156 = v55;
      v58 = v55 + 16;
      v59 = *(v55 + 2);
      v60 = v168;
      v59(v53, v167, v168);
      v147 = v59;
      v148 = v58;
      v59(v42, v53, v60);
      v61 = v165;
      v62 = v169;
      v146[0] = *(v165 + 48);
      v146[1] = v165 + 48;
      if ((v146[0])(v42, 1, v169) == 1)
      {
        v63 = *(v156 + 1);
        v63(v42, v60);
        _CodingPathNode.path.getter(v166);
      }

      else
      {
        v97 = v155;
        (*(v61 + 32))(v155, v42, v62);
        v98 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v100 = v158;
        *(inited + 56) = v62;
        *(inited + 64) = v100;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v61 + 16))(boxed_opaque_existential_0, v97, v62);
        v171 = v98;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v61 + 8))(v97, v62);
        v63 = *(v156 + 1);
      }

      v63(v53, v60);
      v102 = v153;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v103 = *MEMORY[0x1E69E6B00];
      v104 = v164;
      v105 = *(*(v164 - 8) + 104);
      v106 = *(v164 - 8) + 104;
      v105(v102, *MEMORY[0x1E69E6B00], v164);
      v107 = v160;
      swift_willThrow();

      v108 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if ((*((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0 || (v108 & 0x8000000000000000) == 0)
      {
        v171 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        return dispatch thunk of FloatingPoint.init<A>(_:)();
      }

      v160 = v106;
      v161 = v105;
      LODWORD(v162) = v103;
      v163 = v63;
      v171 = 0;
      v172 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, v150 | 0x8000000000000000);
      v170 = v108;
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v109);

      MEMORY[0x1865CB0E0](0xD000000000000012, v149 | 0x8000000000000000);
      MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v110 = v171;
      v159 = v172;
      swift_allocError();
      v157 = v111;
      v112 = v152;
      v113 = v168;
      v114 = v147;
      v147(v152, v167, v168);
      v115 = v151;
      v114(v151, v112, v113);
      v116 = v169;
      if ((v146[0])(v115, 1, v169) == 1)
      {
        v117 = v163;
        v163(v115, v113);
        _CodingPathNode.path.getter(v166);
        v117(v112, v113);
      }

      else
      {
        v167 = v110;
        v128 = v165;
        v129 = v154;
        (*(v165 + 32))(v154, v115, v116);
        v130 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v131 = swift_initStackObject();
        *(v131 + 16) = xmmword_181218E20;
        v132 = v158;
        *(v131 + 56) = v116;
        *(v131 + 64) = v132;
        v133 = __swift_allocate_boxed_opaque_existential_0((v131 + 32));
        (*(v128 + 16))(v133, v129, v116);
        v171 = v130;
        v104 = v164;
        specialized Array.append<A>(contentsOf:)(v131);
        (*(v128 + 8))(v129, v116);
        v163(v112, v113);
      }

      v134 = v157;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v161(v134, v162, v104);
    }

    else
    {
      v164 = v28;
      v70 = *(v48 + 2);
      v71 = v168;
      v72 = v48;
      v70(v33, v167, v168, v51);
      (v70)(v30, v33, v71);
      v73 = v165;
      v74 = v169;
      if ((*(v165 + 48))(v30, 1, v169) == 1)
      {
        v75 = *(v72 + 1);
        v75(v30, v71);
        _CodingPathNode.path.getter(v166);
        v75(v33, v71);
      }

      else
      {
        v77 = v156;
        (*(v73 + 32))(v156, v30, v74);
        v78 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v79 = swift_initStackObject();
        *(v79 + 16) = xmmword_181218E20;
        v80 = v158;
        *(v79 + 56) = v74;
        *(v79 + 64) = v80;
        v81 = __swift_allocate_boxed_opaque_existential_0((v79 + 32));
        (*(v73 + 16))(v81, v77, v74);
        v171 = v78;
        specialized Array.append<A>(contentsOf:)(v79);
        (*(v73 + 8))(v77, v74);
        (*(v72 + 1))(v33, v71);
      }

      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm(v160, v164, BPlistMap.Value.debugDataTypeDescription.getter, v82);
    }

    return swift_willThrow();
  }

  v64 = v159;
  v156 = v20;
  v65 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v66 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  if (v66 == 8)
  {
    v67 = v163;
    v68 = v157;
    if ((~v65 & 0x7FF0000000000000) == 0 && (v65 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return dispatch thunk of static FloatingPoint.nan.getter();
    }

    v154 = v44;
    v155 = v46;
    v83 = v48;
    v171 = v65;
    lazy protocol witness table accessor for type Double and conformance Double();
    dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
    v84 = *(v67 - 1);
    if ((*(v84 + 48))(v12, 1, v67) != 1)
    {
      return (*(v84 + 32))(v161, v12, v67);
    }

    (*(v64 + 8))(v12, v68);
    v171 = 0;
    v172 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    v85 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v85);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v161 = v172;
    v162 = v171;
    v163 = type metadata accessor for DecodingError();
    v164 = swift_allocError();
    v160 = v86;
    v87 = v83;
    v88 = v83[2];
    v89 = v154;
    v90 = v168;
    (v88)(v154, v167, v168);
    v91 = v155;
    (v88)(v155, v89, v90);
    v92 = v165;
    v93 = v169;
    if ((*(v165 + 48))(v91, 1, v169) != 1)
    {
      (*(v92 + 32))(v156, v91, v93);
      v135 = _CodingPathNode.path.getter(v166);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v136 = swift_initStackObject();
      *(v136 + 16) = xmmword_181218E20;
      v137 = v158;
      *(v136 + 56) = v93;
      *(v136 + 64) = v137;
      v138 = __swift_allocate_boxed_opaque_existential_0((v136 + 32));
      v139 = v156;
      (*(v92 + 16))(v138, v156, v93);
      v171 = v135;
      specialized Array.append<A>(contentsOf:)(v136);
      (*(v92 + 8))(v139, v93);
      v87[1](v89, v90);
      goto LABEL_40;
    }

    v94 = v87[1];
    v94(v91, v90);
    _CodingPathNode.path.getter(v166);
    v95 = v89;
    v96 = v90;
LABEL_33:
    v94(v95, v96);
LABEL_40:
    v144 = v160;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v163 - 1) + 104))(v144, *MEMORY[0x1E69E6B00]);
    return swift_willThrow();
  }

  v76 = v163;
  if (v66 == 4)
  {
    if (!HIDWORD(v65))
    {
      if ((~v65 & 0x7F800000) == 0 && (v65 & 0x7FFFFF) != 0)
      {
        return dispatch thunk of static FloatingPoint.nan.getter();
      }

      v155 = v47;
      v156 = v48;
      v153 = v45;
      LODWORD(v171) = v65;
      lazy protocol witness table accessor for type Float and conformance Float();
      dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
      v118 = *(v76 - 1);
      if ((*(v118 + 48))(v15, 1, v76) != 1)
      {
        return (*(v118 + 32))(v161, v15, v76);
      }

      (*(v64 + 8))(v15, v157);
      v171 = 0;
      v172 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
      Float.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      v119 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v119);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v161 = v172;
      v162 = v171;
      v163 = type metadata accessor for DecodingError();
      v164 = swift_allocError();
      v160 = v120;
      v121 = v156;
      v122 = *(v156 + 2);
      v123 = v153;
      v124 = v168;
      v122(v153, v167, v168);
      v125 = v155;
      v122(v155, v123, v124);
      v126 = v165;
      v127 = v169;
      if ((*(v165 + 48))(v125, 1, v169) != 1)
      {
        (*(v126 + 32))(v23, v125, v127);
        v140 = _CodingPathNode.path.getter(v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v141 = swift_initStackObject();
        *(v141 + 16) = xmmword_181218E20;
        v142 = v158;
        *(v141 + 56) = v127;
        *(v141 + 64) = v142;
        v143 = __swift_allocate_boxed_opaque_existential_0((v141 + 32));
        (*(v126 + 16))(v143, v23, v127);
        v171 = v140;
        specialized Array.append<A>(contentsOf:)(v141);
        (*(v126 + 8))(v23, v127);
        (*(v121 + 1))(v153, v124);
        goto LABEL_40;
      }

      v94 = *(v121 + 1);
      v94(v125, v124);
      _CodingPathNode.path.getter(v166);
      v95 = v153;
      v96 = v124;
      goto LABEL_33;
    }

    __break(1u);
  }

  v171 = 0;
  v172 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v171 = 0xD000000000000023;
  v172 = 0x80000001814848C0;
  v170 = v66;
  v145 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v145);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

NSNumber __swiftcall Int._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger_];
}

uint64_t __PlistEncoderBPlist.encode<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 240))(v9);
  if (result)
  {
    (*(v8 + 16))(v11, a1, a2);
    v13 = v3[5];

    v14 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v11, v13, 0, 0, 0, 0xFFu, a2, a3);
    if (v4)
    {

      return (*(v8 + 8))(v11, a2);
    }

    else
    {
      if (v14)
      {
      }

      else
      {
        v15 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v17 = v16;
        v19 = v18;

        type metadata accessor for _BPlistEncodingFormat.Reference();
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        *(v20 + 24) = v17;
        *(v20 + 32) = v19;
        *(v20 + 40) = 96;
        *(v20 + 48) = -1;
      }

      (*(v8 + 8))(v11, a2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::Bool a1)
{
  if ((*(*v1 + 240))())
  {
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized OrderedSet._regenerateHashTable()(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (*v1)
  {
    v3 = *(*v1 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x1865CA1B0](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(v4, v8, 0, v3, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        _BPlistEncodingFormat.Reference.hash(into:)(v17);
        result = Hasher._finalize()();
        v8 = 1 << *a3;
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          break;
        }

        v11 = v10 & result;
        v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v14 = v13;
        v16 = v15;

        v17[0] = a3;
        v17[1] = a4;
        v17[2] = v11;
        v18 = v12;
        v19 = v14;
        v20 = v16;
        v21 = 0;
        while (v18)
        {
          _HashTable.BucketIterator.advance()();
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  _BPlistEncodingFormat.Reference.hash(into:)(v21);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 & result;
    v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v23 = a4;
    *(&v23 + 1) = a5;
    *&v24 = v12;
    *(&v24 + 1) = v13;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26 = 0;
    v16 = _HashTable.BucketIterator.currentValue.getter();
    if ((v17 & 1) == 0)
    {
      do
      {

        v19 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v18, a1);

        if (v19)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v21[0] = v23;
        v21[1] = v24;
        v21[2] = v25;
        v22 = v26;
        v16 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v20 & 1) == 0);
    }

    return v16;
  }

  return result;
}

id static Locale.canonicalLanguageIdentifier(from:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695D790];

  return static Locale.canonicalLanguageIdentifier(from:)(a1, a2, v2);
}

uint64_t URLRequest.httpBody.setter(uint64_t a1, unint64_t a2)
{
  specialized URLRequest.httpMethod.setter(a1, a2, closure #1 in URLRequest.httpBody.setter);

  return outlined consume of Data?(a1, a2);
}

void closure #1 in URLRequest.httpBody.setter(void *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 >> 60 != 15)
  {
    v4 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v6 = a1;
      if (v4 != 2)
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_11;
      }

      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
    }

    else
    {
      if (!v4)
      {
        v10 = a2;
        v11 = a3;
        v12 = BYTE2(a3);
        v13 = BYTE3(a3);
        v14 = BYTE4(a3);
        v15 = BYTE5(a3);
        v5 = a1;
        v3 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v10 length:BYTE6(a3)];
        a1 = v5;
        goto LABEL_12;
      }

      v6 = a1;
      v7 = a2;
      v8 = a2 >> 32;
      if (v8 < v7)
      {
        __break(1u);
      }
    }

    v9 = __DataStorage.bridgedReference(_:)(v7, v8);
LABEL_11:
    v3 = v9;
    a1 = v6;
    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
  [a1 setHTTPBody_];
}

void *protocol witness for Collection.formIndex(after:) in conformance Data(void *result)
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

uint64_t _PlistKeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
    v16 = 0;
    goto LABEL_6;
  }

  v14 = *(a3 + 56);
  v15 = *(AssociatedTypeWitness - 8);
  (*(v15 + 16))(v8, v14 + *(v15 + 72) * v11, AssociatedTypeWitness);
  v16 = 1;
  (*(v15 + 56))(v8, 0, 1, AssociatedTypeWitness);
LABEL_6:
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t _PlistKeyedDecodingContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a4;
  v62 = a2;
  swift_getAssociatedTypeWitness();
  v60 = a6;
  v61 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v46 - v18;
  v50 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v59 = v19;
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v46 - v25;
  v54 = a1;
  v56 = a5;
  v57 = a7;
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  v29 = a3;
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_6:
    (*(v58 + 56))(v23, 1, 1, v59);
    (*(v21 + 8))(v23, v20);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v54, v55, v56, v57, v41, &_sypSgmMd, &_sypSgmMR, &_sypSgmmMd);
    swift_willThrow();
    return v23 & 1;
  }

  v33 = v51;
  v32 = v52;
  v34 = *(v29 + 56) + *(v51 + 72) * v28;
  v35 = v48;
  (*(v51 + 16))(v48, v34, v52);
  v36 = v49;
  (*(v33 + 32))(v49, v35, v32);
  v37 = v50;
  v38 = *(v50 + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v53;
  v38(v36, v39, v37);
  (*(v33 + 8))(v36, v32);
  swift_unknownObjectRelease();
  if (!v40)
  {
    v44 = v58;
    v43 = v59;
    (*(v58 + 56))(v23, 0, 1, v59);
    v45 = v47;
    (*(v44 + 32))(v47, v23, v43);
    LOBYTE(v23) = (*(v61 + 40))(v45);
    (*(v44 + 8))(v45, v43);
  }

  return v23 & 1;
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __PlistEncoderBPlist()
{
  result = (*(**v0 + 240))();
  if (result)
  {
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss30KeyedDecodingContainerProtocol_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v14 = "ner -- no value found for key ";
    v15 = 0xD00000000000003DLL;
  }

  else
  {
    v27 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _StringGuts.grow(_:)(39);

      v25 = 0xD00000000000001DLL;
      v26 = 0x8000000181482300;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v19);

      MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
      v20 = dispatch thunk of CodingKey.stringValue.getter();
      MEMORY[0x1865CB0E0](v20);

      v17 = 3025186;
      v18 = 0xE300000000000000;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v25);
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v14 = "d null value instead";
    v15 = 0xD00000000000003FLL;
  }

  MEMORY[0x1865CB0E0](v15, v14 | 0x8000000000000000);
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  MEMORY[0x1865CB0E0](v16);

  v17 = 34;
  v18 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1865CB0E0](v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
  a5[3] = a3;
  a5[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  _CodingPathNode.path.getter(a2);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v22 = *MEMORY[0x1E69E6AF0];
  v23 = type metadata accessor for DecodingError();
  return (*(*(v23 - 8) + 104))(a5, v22, v23);
}

uint64_t specialized _BPlistEncodingFormat.number<A>(from:)(double a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v7 = *(v3 + 40);
  *(v3 + 40) = 48;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v4, v5, v6, v7);

  v8 = specialized Set._Variant.insert(_:)(&v12, v3);
  v9 = v12;
  if (v8)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 2;
    *(v10 + 40) = -112;
    *(v10 + 48) = -1;

    *(v2 + 32) = v10;
  }

  return v9;
}

void Data._Representation.subscript.setter(char a1, uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v6, v7);
      v21 = v6;
      LOWORD(v22) = v7;
      BYTE2(v22) = BYTE2(v7);
      BYTE3(v22) = BYTE3(v7);
      BYTE4(v22) = BYTE4(v7);
      BYTE5(v22) = BYTE5(v7);
      BYTE6(v22) = BYTE6(v7);
      if (a2 < BYTE6(v7))
      {
        *(&v21 + a2) = a1;
        v9 = v21;
        v10 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
LABEL_16:
        *v3 = v9;
        v3[1] = v10;
        return;
      }

      __break(1u);
      goto LABEL_18;
    }

    outlined consume of Data._Representation(v6, v7);
    v21 = v6;
    v22 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    if (a2 >= v6 >> 32 || v6 > a2)
    {
      goto LABEL_19;
    }

    Data.InlineSlice.ensureUniqueReference()();
    v16 = v22;
    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v17 = *(v22 + 16);
    if (v17)
    {
      v18 = *(v22 + 40);
      v14 = __OFSUB__(a2, v18);
      v19 = a2 - v18;
      if (!v14)
      {
        *(v17 + v19) = a1;
        v9 = v21;
        v10 = v16 | 0x4000000000000000;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v8 != 2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  outlined consume of Data._Representation(v6, v7);
  v21 = v6;
  v22 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_181234410;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  if (*(v6 + 16) > a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v6 + 24) <= a2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Data.LargeSlice.ensureUniqueReference()();
  v11 = v22;
  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v12 = *(v22 + 16);
  if (v12)
  {
    v13 = *(v22 + 40);
    v14 = __OFSUB__(a2, v13);
    v15 = a2 - v13;
    if (!v14)
    {
      *(v12 + v15) = a1;
      v9 = v21;
      v10 = v11 | 0x8000000000000000;
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
  }

LABEL_25:
  __break(1u);
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  isTaggedPointer = _objc_isTaggedPointer(a1.super.isa);
  v3 = a1.super.isa;
  v4 = v3;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag == 22)
  {
    v12 = [(objc_class *)v4 UTF8String];
    if (!v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    v14 = String.init(utf8String:)(v12);
    if (v15)
    {
LABEL_14:
      v6 = v14;
      v8 = v15;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v15)
    {
      [(objc_class *)v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v18;
      v8 = v19;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_6:
    if (__CFStringIsCF())
    {
      v6 = 0;

      v8 = 0xE000000000000000;
      goto LABEL_20;
    }

    v9 = v4;
    v10 = String.init(_nativeStorage:)();
    if (v11)
    {
      v6 = v10;
      v8 = v11;

      goto LABEL_20;
    }

    if (![(objc_class *)v9 length])
    {

      v6 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_20;
    }

    v6 = String.init(_cocoaString:)();
    v8 = v16;
LABEL_19:

    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v8 = v7;

LABEL_20:
  v12 = v6;
  v13 = v8;
LABEL_22:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Data(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Data and conformance Data();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Data()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t __PlistEncoderBPlist.wrap<A>(_:for:_:)(char *a1, unint64_t a2, uint64_t *a3, void *a4, unint64_t a5)
{
  v91 = a5;
  v101 = a2;
  v102 = a3;
  v112 = a1;
  v95 = a4;
  v97 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  i = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v99 = v5;
  v92 = *(*(v5 + 16) + 16);
  v14 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v16 = v15;
  v18 = v17;
  v96 = type metadata accessor for _BPlistEncodingFormat.Reference();
  v19 = swift_allocObject();
  *(v19 + 24) = v16;
  v98 = (v19 + 24);
  *(v19 + 16) = v14;
  v20 = v7;
  *(v19 + 32) = v18;
  *(v19 + 40) = 96;
  *(v19 + 48) = -1;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  v100 = v19;
  v21 = v97;
  v22 = v95;
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v93 = v5 + 16;
  specialized ContiguousArray._endMutation()();
  v23 = *(v8 + 16);
  v23(v13, v102, v20);
  v23(i, v13, v20);
  if ((v21[6])(i, 1, v22) != 1)
  {
    goto LABEL_5;
  }

  v24 = *(v8 + 8);
  v24(v13, v20);
  v24(i, v20);
  v21 = v101;

  v20 = v100;
  v8 = v112;
  for (i = *(v112 + 2); i; i = *(v8 + 16))
  {
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SE_p5valuet_Tt1g5(i, 0);
    v112 = specialized Sequence._copyContents(initializing:)(&v109, (v25 + 4), i, v8);
    v13 = *(&v109 + 1);
    v22 = *&v110[0];

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    if (v112 == i)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_5:
    v26 = v21[4];
    v27 = v90;
    v26(v90, i, v22);
    v28 = swift_allocObject();
    v29 = v91;
    v28[5] = v22;
    v28[6] = v29;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28 + 2);
    v26(boxed_opaque_existential_0, v27, v22);
    (*(v8 + 8))(v13, v20);
    v31 = v101;
    v28[7] = v101;
    if (v31 >> 62)
    {
      v20 = v100;
      v8 = v112;
      if (v31 >> 62 != 1)
      {
        v34 = 1;
        goto LABEL_10;
      }

      v32 = ((v31 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v32 = (v31 + 64);
      v20 = v100;
      v8 = v112;
    }

    v33 = *v32;

    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_10:
    v28[8] = v34;
    v21 = v28;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *&v109 = v25;
  v35 = v94;
  specialized MutableCollection<>.sort(by:)(&v109);
  v22 = v35;
  if (!v35)
  {
    v36 = 0;
    v37 = *(v109 + 16);
    v95 = v109;
    v94 = (v109 + 32);
    v101 = v21;
    v97 = v37;
    if (!v37)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v36 >= v95[2])
      {
        goto LABEL_68;
      }

      outlined init with copy of (key: String, value: Encodable)(v94 + 56 * v36, &v105);
      v38 = (v36 + 1);
      while (2)
      {
        v109 = v105;
        v110[0] = v106;
        v110[1] = v107;
        v111 = v108;
        v39 = *(&v105 + 1);
        if (!*(&v105 + 1))
        {

          v85 = v93;
          if (v92 >= *(*v93 + 16))
          {

            return 0;
          }

          else
          {
            v86 = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            if (!v86)
            {
              v86 = specialized ContiguousArray.remove(at:)(*(*v85 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            }

            v87 = v86;

            return v87;
          }
        }

        v102 = v38;
        v112 = 0;
        v40 = v109;
        outlined init with take of Equatable(v110, &v105);
        if ((v39 & 0x2000000000000000) != 0)
        {
          v41 = HIBYTE(v39) & 0xF;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFFFFFFLL;
        }

        v42 = (v40 >> 59) & 1;
        if ((v39 & 0x1000000000000000) == 0)
        {
          LOBYTE(v42) = 1;
        }

        v43 = 4 << v42;
        v22 = (v39 & 0xFFFFFFFFFFFFFFLL);
        v44 = 15;
        do
        {
          while (1)
          {
            if (4 * v41 == v44 >> 14)
            {

              v51 = MEMORY[0x1865CB280](v40, v39);
              v52 = 1;
              goto LABEL_45;
            }

            v45 = v44 & 0xC;
            v46 = v44;
            if (v45 == v43)
            {
              v50 = v44;
              v46 = _StringGuts._slowEnsureMatchingEncoding(_:)(v44, v40, v39);
              v44 = v50;
            }

            v47 = v46 >> 16;
            if (v46 >> 16 >= v41)
            {
              goto LABEL_65;
            }

            if ((v39 & 0x1000000000000000) != 0)
            {
              break;
            }

            if ((v39 & 0x2000000000000000) != 0)
            {
              v103 = v40;
              *&v104 = v39 & 0xFFFFFFFFFFFFFFLL;
              v48 = &v103;
            }

            else
            {
              v48 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
              if ((v40 & 0x1000000000000000) == 0)
              {
                v91 = v44;
                v48 = _StringObject.sharedUTF8.getter();
                v44 = v91;
              }
            }

            v49 = *(v48 + v47);
            if (v45 == v43)
            {
              goto LABEL_41;
            }

LABEL_36:
            if ((v39 & 0x1000000000000000) != 0)
            {
              goto LABEL_37;
            }

LABEL_25:
            v44 = (v44 & 0xFFFFFFFFFFFF0000) + 65540;
            if (v49 < 0)
            {
              goto LABEL_44;
            }
          }

          v91 = v44;
          v49 = String.UTF8View._foreignSubscript(position:)();
          v44 = v91;
          if (v45 != v43)
          {
            goto LABEL_36;
          }

LABEL_41:
          v44 = _StringGuts._slowEnsureMatchingEncoding(_:)(v44, v40, v39);
          if ((v39 & 0x1000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          if (v41 <= v44 >> 16)
          {
            goto LABEL_66;
          }

          v44 = String.UTF8View._foreignIndex(after:)();
        }

        while ((v49 & 0x80) == 0);
LABEL_44:
        v53 = String._bridgeToObjectiveCImpl()();

        v51 = [v53 hash];
        swift_unknownObjectRelease();
        v52 = 0;
LABEL_45:
        v54 = v99;
        v55 = *(v99 + 88);
        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        v58 = *(v55 + 32);
        *(v55 + 16) = v40;
        *(v55 + 24) = v39;
        *(v55 + 32) = v51;
        v59 = *(v55 + 40);
        *(v55 + 40) = v52;

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v57, v56, v58, v59);
        v60 = *(v54 + 88);

        LOBYTE(v56) = specialized Set._Variant.insert(_:)(&v103, v60);

        v61 = v103;
        v63 = v100;
        v62 = v101;
        if (v56)
        {
          v64 = swift_allocObject();
          *(v64 + 24) = 0;
          *(v64 + 32) = 0;
          *(v64 + 16) = 2;
          *(v64 + 40) = -112;
          *(v64 + 48) = -1;
          *(v54 + 88) = v64;
        }

        v65 = *(&v106 + 1);
        v66 = v107;
        v67 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
        v68 = v112;
        v69 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v67, v62, v40, v39, 0, 0, v65, v66);
        v22 = v68;
        if (v68)
        {

          __swift_destroy_boxed_opaque_existential_1(&v105);
          v89 = v93;
          if (v92 < *(*v93 + 16))
          {
            if (!specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew()))
            {
              specialized ContiguousArray.remove(at:)(*(*v89 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
            }
          }

          swift_willThrow();
        }

        v70 = v69;

        if (!v70)
        {
          v71 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v73 = v72;
          v75 = v74;
          v70 = swift_allocObject();
          *(v70 + 16) = v71;
          *(v70 + 24) = v73;
          *(v70 + 32) = v75;
          *(v70 + 40) = 96;
          *(v70 + 48) = -1;
        }

        v76 = *(v63 + 40);
        if ((v76 & 0xF0) != 0x60)
        {
          goto LABEL_69;
        }

        v78 = *(v63 + 24);
        v77 = *(v63 + 32);
        v103 = *(v63 + 16);
        v79 = v103;
        *&v104 = v78;
        *(&v104 + 1) = v77;
        *(v63 + 16) = 2;
        v80 = v98;
        *v98 = 0;
        v80[1] = 0;
        *(v63 + 40) = -112;

        outlined consume of _BPlistEncodingFormat.Reference.Backing(v79, v78, v77, v76);
        specialized OrderedDictionary.subscript.setter(v70, v61);
        v81 = *(v63 + 16);
        v82 = *(v63 + 24);
        v83 = *(v63 + 32);
        *(v63 + 16) = v103;
        *(v63 + 24) = v104;
        v84 = *(v63 + 40);
        *(v63 + 40) = 96;
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v81, v82, v83, v84);
        __swift_destroy_boxed_opaque_existential_1(&v105);
        v37 = v97;
        v36 = v102;
        if (v102 == v97)
        {
LABEL_14:
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          v38 = v37;
          v105 = 0u;
          continue;
        }

        break;
      }
    }
  }

LABEL_70:

  __break(1u);
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation21_BPlistEncodingFormatV9ReferenceCG_Tt2g5Tm(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1865CA1B0](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1865CA1C0](v10, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

void _BPlistEncodingFormat.Writer.appendTrue()(char a1)
{
  v3 = *(v1 + 32);
  if (v3 == 0x2000)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v4 + 0x2000;
    }

    else
    {
      v5 = 0;
    }

    Data._Representation.append(contentsOf:)(v4, v5);
    v3 = 0;
  }

  *(*(v1 + 16) + v3) = a1;
  v6 = __OFADD__(v3, 1);
  v7 = v3 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v7;
  }
}

id static Locale.canonicalLanguageIdentifier(from:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *MEMORY[0x1E695E4A8];
  v5 = String._bridgeToObjectiveCImpl()();
  v6 = a3(v4, v5);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v21 = v22;
    }

LABEL_21:

    return v21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v11;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v13 = v9;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v16 = v14;

      return v16;
    }

    if (![v13 length])
    {

      return 0;
    }

    v21 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v9 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v17)
    {
      v18 = result;

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v29 = specialized _BPlistEncodingFormat.number<A>(from:)(a1);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v4, v5))
  {

    v7 = MEMORY[0x1865CB280](v4, v6);
    v8 = 1;
  }

  else
  {
    v9 = String._bridgeToObjectiveCImpl()();

    v7 = [v9 hash];
    swift_unknownObjectRelease();
    v8 = 0;
  }

  v10 = *(v2 + 88);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  *(v10 + 16) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  v14 = *(v10 + 40);
  *(v10 + 40) = v8;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v11, v12, v13, v14);

  v15 = specialized Set._Variant.insert(_:)(&v27, v10);

  v16 = v27;
  if (v15)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 16) = 2;
    *(v17 + 40) = -112;
    *(v17 + 48) = -1;

    *(v2 + 88) = v17;
  }

  v19 = *(v3 + 40);
  if ((v19 & 0xF0) == 0x60)
  {
    v21 = *(v3 + 24);
    v20 = *(v3 + 32);
    v27 = *(v3 + 16);
    v22 = v27;
    *&v28 = v21;
    *(&v28 + 1) = v20;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v22, v21, v20, v19);
    specialized OrderedDictionary.subscript.setter(v29, v16);
    v23 = *(v3 + 16);
    v24 = *(v3 + 24);
    v25 = *(v3 + 32);
    *(v3 + 16) = v27;
    *(v3 + 24) = v28;
    v26 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v23, v24, v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 432))(ObjectType, v11);
  if (a2)
  {
    type metadata accessor for NSURLResourceKey(0);

    a2 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v18[4] = partial apply for closure #1 in NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:);
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool);
  v18[3] = &block_descriptor_1;
  v15 = _Block_copy(v18);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a4);

  v16 = __NSFileManagerEnumeratorAtURL(v6, v13, a2, a3, v15);
  _Block_release(v15);

  return v16;
}

uint64_t sub_18095552C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t __NSFileManagerEnumeratorAtURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ____NSFileManagerEnumeratorAtURL_block_invoke;
  v6[3] = &unk_1E69F36B0;
  v6[4] = a5;
  return [a1 enumeratorAtURL:a2 includingPropertiesForKeys:a3 options:a4 errorHandler:v6];
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a2, v7);

  v5 = a3;
  LOBYTE(v4) = v4(v7, v5);

  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t closure #1 in NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t))
{
  if (a3)
  {
    v7 = *a1;

    v5 = a3(&v7, a2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a3);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void protocol witness for Collection.startIndex.getter in conformance Data(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1] >> 62;
  if (v3 > 1)
  {
    v5 = 0;
    if (v3 == 2)
    {
      v5 = *(v2 + 16);
    }

    *a1 = v5;
  }

  else
  {
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;
  }
}

void protocol witness for Collection.endIndex.getter in conformance Data(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      *a1 = *(v2 + 24);
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v3);
    v6 = v2 >> 32;
    if (!v4)
    {
      v6 = v5;
    }

    *a1 = v6;
  }
}

id @objc NSString._pathByInsertingResolveFlags(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = a1;
  a4(a3);

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

Swift::String __swiftcall NSString._urlStringByInsertingQueryResolveFlags(_:)(Swift::UInt32 a1)
{
  v91 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v1;
  v5 = v4;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v9 = v8;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v13 = [v5 UTF8String];
      if (!v13)
      {
        __break(1u);
        goto LABEL_65;
      }

      v15 = String.init(utf8String:)(v13);
      if (v16)
      {
LABEL_15:
        v7 = v15;
        v9 = v16;

        goto LABEL_20;
      }

      __break(1u);
    }

    LOWORD(v74[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = *(&v76 + 1);
      v7 = v76;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v76) = 0;
  v85[0]._countAndFlagsBits = 0;
  LOBYTE(v74[0]) = 0;
  LOBYTE(v51) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v7 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_20;
  }

  v10 = v5;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v7 = v11;
    v9 = v12;

    goto LABEL_20;
  }

  v85[0]._countAndFlagsBits = [v10 length];
  if (!v85[0]._countAndFlagsBits)
  {

    goto LABEL_10;
  }

  v7 = String.init(_cocoaString:)();
  v9 = v17;
LABEL_20:

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v9, 1, v74);
  v82 = v74[6];
  v83 = v74[7];
  v84[0] = v75[0];
  *(v84 + 10) = *(v75 + 10);
  v78 = v74[2];
  v79 = v74[3];
  v80 = v74[4];
  v81 = v74[5];
  v76 = v74[0];
  v77 = v74[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v76) != 1)
  {
    v46 = v7;
    v18 = v76;
    v49 = *(&v76 + 9);
    v50 = BYTE13(v76);
    v48 = HIBYTE(v76);
    v70 = v79;
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v68 = v77;
    v69 = v78;
    v47 = *&v84[0];
    v66 = *(v84 + 8);
    v67 = WORD4(v84[1]);
    if (!v83 && (BYTE14(v76) & 1) != 0 && v76)
    {
      if (*(v76 + 168))
      {
        v19 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v19 = String.subscript.getter();
      }

      MEMORY[0x1865CAE80](v19);
    }

    v20 = String._removingPathResolveFlags()();

    if ((v20._object & 0x1000000000000000) != 0)
    {
      v85[0] = v20;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v32 = String._bridgeToObjectiveCImpl()();

      v33 = [v32 _fastCharacterContents];
      v34 = v32;
      v44 = v33;
      if (v33)
      {
        v85[0] = v20;
        StringProtocol._ephemeralString.getter();
        v35 = String._bridgeToObjectiveCImpl()();

        v36 = [v35 length];
        swift_unknownObjectRelease();
        v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v44, v36, 0x10u, 1);
      }

      else
      {
        v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v20._countAndFlagsBits, v20._object, 0x10u, 1);
      }
    }

    else
    {
      if ((v20._object & 0x2000000000000000) == 0)
      {
        if ((v20._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v21 = ((v20._object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v22 = v20._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v21, v22, 0x10u, 1))
        {
LABEL_63:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

LABEL_36:

        if (!v47)
        {
          if (v48 != 1 || !v18 || (*(v18 + 192) & 1) != 0)
          {
            goto LABEL_38;
          }

          v31 = String.subscript.getter();
          MEMORY[0x1865CAE80](v31);
        }

LABEL_38:
        v24 = String._insertingQueryResolveFlags(_:)(a1);

        if (v24.value._object)
        {
          if ((v24.value._object & 0x1000000000000000) != 0)
          {
            v85[0] = v24.value;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v37 = String._bridgeToObjectiveCImpl()();

            v38 = [v37 _fastCharacterContents];
            v39 = v37;
            v45 = v38;
            if (v38)
            {
              v85[0] = v24.value;
              StringProtocol._ephemeralString.getter();
              v40 = String._bridgeToObjectiveCImpl()();

              v41 = [v40 length];
              swift_unknownObjectRelease();
              v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v45, v41, 0x40u, 1);
            }

            else
            {
              v42 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v24.value._countAndFlagsBits, v24.value._object, 0x40u, 1);
            }

            v7 = v46;
            if ((v42 & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if ((v24.value._object & 0x2000000000000000) != 0)
            {
              v26 = (v24.value._object >> 56) & 0xF;
              v85[0]._countAndFlagsBits = v24.value._countAndFlagsBits;
              v85[0]._object = (v24.value._object & 0xFFFFFFFFFFFFFFLL);
              v25 = v85;
            }

            else if ((v24.value._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v25 = ((v24.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
              v26 = v24.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = _StringObject.sharedUTF8.getter();
            }

            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v25, v26, 0x40u, 1))
            {
              goto LABEL_63;
            }
          }
        }

        v85[0]._countAndFlagsBits = v18;
        LOBYTE(v85[0]._object) = 0;
        *(&v85[0]._object + 1) = v49;
        BYTE5(v85[0]._object) = v50;
        HIWORD(v85[0]._object) = 0;
        v85[3] = v70;
        v85[4] = v71;
        v85[5] = v72;
        v85[1] = v68;
        v85[2] = v69;
        v86 = v73;
        v87 = v20;
        v88 = v24;
        v89 = v66;
        v90 = v67;
        v27 = URLComponents._URLComponents.computedString.getter();
        if (v28)
        {
          v29 = v27;
          v30 = v28;

          v7 = v29;
          v9 = v30;
        }

        v51 = v18;
        v52 = 0;
        v53 = v49;
        v54 = v50;
        v55 = 0;
        v58 = v70;
        v59 = v71;
        v60 = v72;
        v56 = v68;
        v57 = v69;
        v61 = v73;
        v62 = v20;
        v63 = v24;
        v64 = v66;
        v65 = v67;
        outlined destroy of URLComponents(&v51);
        goto LABEL_52;
      }

      v85[0]._countAndFlagsBits = v20._countAndFlagsBits;
      v85[0]._object = (v20._object & 0xFFFFFFFFFFFFFFLL);
      v23 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v85, (v20._object >> 56) & 0xF, 0x10u, 1);
    }

    v7 = v46;
    if ((v23 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_36;
  }

LABEL_52:
  v13 = v7;
  v14 = v9;
LABEL_65:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall String._removingPathResolveFlags()()
{
  v2 = v1;
  v3 = v0;
  if ((specialized Collection.first.getter(v0, v1) & 0x1FF) != 0x2F || (prefixLength = 0, *&v4 = String._pathResolveFlags(prefixLength:)(&prefixLength), (v4 & 0x100000000) != 0))
  {

    goto LABEL_11;
  }

  v5 = prefixLength;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = MEMORY[0x1865CB180](15, prefixLength, v3, v2);
    goto LABEL_9;
  }

  if (prefixLength < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < prefixLength)
  {
    goto LABEL_14;
  }

  v7 = (prefixLength << 16) | 4;
LABEL_9:
  v8 = specialized Collection.suffix(from:)(v7, v3, v2);
  v3 = MEMORY[0x1865CAE80](v8);
  v2 = v9;

LABEL_11:
  v4 = v3;
  v5 = v2;
LABEL_15:
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall String._insertingQueryResolveFlags(_:)(Swift::UInt32 a1)
{
  v3 = v2;
  v4 = v1;
  v120 = 0;
  LODWORD(v119) = a1;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v165 = v1;
    v166 = v2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      v165 = v4;
      v166 = v3;
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 0x40u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 64);
    }

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_13:
    v15 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v15 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v165 = v4;
      v166 = v3;
      MEMORY[0x1EEE9AC00](v7);
      v115 = &v165;
      LOWORD(v116) = 64;

      v16 = v120;
      v17 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v114, v4, v3);
      v120 = v16;
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 0x40u, 0);
      }

      v20 = v18;

      v9 = v20;
      v8 = v19;
    }

    else
    {

      v8 = 0;
      v9 = 0xE000000000000000;
    }

    goto LABEL_21;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v2) & 0xF;
    v165 = v4;
    v166 = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = &v165;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v5 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:

  v8 = v4;
  v9 = v3;
LABEL_21:
  v165 = 0;
  v166 = 0;
  v167 = 0;
  *v168 = *v146;
  *&v168[3] = *&v146[3];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0;
  v174 = 1;
  *&v175[3] = *&v145[3];
  *v175 = *v145;
  v177 = 0;
  v176 = 0;
  *&v178 = v8;
  *(&v178 + 1) = v9;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v21 = v8;
  v22 = v9;
  v23 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  if (!v23)
  {
    v147 = 0;
    v148 = 0;
    v149 = 0;
    *v150 = *v146;
    *&v150[3] = *&v146[3];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    v156 = 1;
    *&v157[3] = *&v145[3];
    *v157 = *v145;
    v158 = 0;
    v159 = 0;
    v160 = v21;
    v161 = v22;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    outlined destroy of URLComponents(&v147);

    goto LABEL_207;
  }

  v24 = v23;
  v117 = v22;
  v118 = v21;
  v25 = MEMORY[0x1E69E7CC0];
  v144 = MEMORY[0x1E69E7CC0];
  v124 = *(v23 + 16);
  if (v124)
  {
    LODWORD(v122) = 0;
    v26 = 0;
    v123 = (v23 + 32);
    v121 = &v147 + 1;
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:

LABEL_217:

        goto LABEL_218;
      }

      v29 = &v123[32 * v26];
      v30 = *v29;
      v31 = v29[1];
      v33 = v29[2];
      v32 = v29[3];
      if ((specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *v29, v31) & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v45 = *(v27 + 2);
        v44 = *(v27 + 3);
        if (v45 >= v44 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v27);
        }

        *(v27 + 2) = v45 + 1;
        v28 = &v27[32 * v45];
        *(v28 + 4) = v30;
        *(v28 + 5) = v31;
        *(v28 + 6) = v33;
        *(v28 + 7) = v32;
        v144 = v27;
        goto LABEL_25;
      }

      if (!v32)
      {
        goto LABEL_25;
      }

      v34 = HIBYTE(v32) & 0xF;
      v35 = v33 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v36 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (!v36)
      {

        goto LABEL_25;
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        v40 = specialized _parseInteger<A, B>(ascii:radix:)(v33, v32, 10);

        if ((v40 & 0x100000000) != 0)
        {
          goto LABEL_25;
        }

LABEL_95:
        LODWORD(v122) = v40 | v122;
        goto LABEL_25;
      }

      if ((v32 & 0x2000000000000000) != 0)
      {
        v147 = v33;
        v148 = v32 & 0xFFFFFFFFFFFFFFLL;
        if (v33 == 43)
        {
          if (!v34)
          {
            goto LABEL_213;
          }

          v39 = v34 - 1;
          if (v34 != 1)
          {
            LODWORD(v40) = 0;
            v52 = v121;
            while (1)
            {
              v53 = *v52 - 48;
              if (v53 > 9)
              {
                break;
              }

              v54 = 10 * v40;
              if ((v54 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v54 + v53;
              if (__CFADD__(v54, v53))
              {
                break;
              }

              ++v52;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v33 == 45)
        {
          if (!v34)
          {
            goto LABEL_215;
          }

          v39 = v34 - 1;
          if (v34 != 1)
          {
            LODWORD(v40) = 0;
            v46 = v121;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v40;
              if ((v48 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v48 - v47;
              if (v48 < v47)
              {
                break;
              }

              ++v46;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v34)
        {
          LODWORD(v40) = 0;
          v57 = &v147;
          while (1)
          {
            v58 = *v57 - 48;
            if (v58 > 9)
            {
              break;
            }

            v59 = 10 * v40;
            if ((v59 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v40) = v59 + v58;
            if (__CFADD__(v59, v58))
            {
              break;
            }

            v57 = (v57 + 1);
            if (!--v34)
            {
              goto LABEL_92;
            }
          }
        }
      }

      else
      {
        if ((v33 & 0x1000000000000000) != 0)
        {
          v37 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v37 = _StringObject.sharedUTF8.getter();
          v35 = v61;
        }

        v38 = *v37;
        if (v38 == 43)
        {
          if (v35 < 1)
          {
            goto LABEL_214;
          }

          v39 = v35 - 1;
          if (v35 != 1)
          {
            LODWORD(v40) = 0;
            if (!v37)
            {
              goto LABEL_92;
            }

            v49 = v37 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v40;
              if ((v51 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v51 + v50;
              if (__CFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v38 == 45)
        {
          if (v35 < 1)
          {
            goto LABEL_212;
          }

          v39 = v35 - 1;
          if (v35 != 1)
          {
            LODWORD(v40) = 0;
            if (!v37)
            {
              goto LABEL_92;
            }

            v41 = v37 + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v40;
              if ((v43 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v40) = v43 - v42;
              if (v43 < v42)
              {
                break;
              }

              ++v41;
              if (!--v39)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else if (v35)
        {
          LODWORD(v40) = 0;
          if (!v37)
          {
LABEL_92:
            LOBYTE(v39) = 0;
            goto LABEL_94;
          }

          while (1)
          {
            v55 = *v37 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v40;
            if ((v56 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v40) = v56 + v55;
            if (__CFADD__(v56, v55))
            {
              break;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_92;
            }
          }
        }
      }

      LODWORD(v40) = 0;
      LOBYTE(v39) = 1;
LABEL_94:
      LOBYTE(v125) = v39;
      v60 = v39;

      if ((v60 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_25:
      if (++v26 == v124)
      {

        v62 = v122 | v119;
        v25 = MEMORY[0x1E69E7CC0];
        if (!(v122 | v119))
        {
          v63 = *(v27 + 2);
          if (v63)
          {
            goto LABEL_102;
          }

LABEL_206:
          v147 = 0;
          v148 = 0;
          v149 = 0;
          *v150 = *v146;
          *&v150[3] = *&v146[3];
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v155 = 0;
          v156 = 1;
          *&v157[3] = *&v145[3];
          *v157 = *v145;
          v158 = 0;
          v159 = 0;
          v160 = v118;
          v161 = v117;
          v162 = 0;
          v163 = 0;
          v164 = 0;
          outlined destroy of URLComponents(&v147);

          v4 = 0;
          v3 = 0;
LABEL_207:
          v111 = v4;
          v112 = v3;
          goto LABEL_219;
        }

LABEL_205:
        LODWORD(v147) = v62;
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, 0x65766C6F7365722ELL, 0xE800000000000000, v109, v110);

        v27 = v144;
        v63 = *(v144 + 2);
        if (!v63)
        {
          goto LABEL_206;
        }

        goto LABEL_102;
      }
    }
  }

  v62 = v119;
  if (v119)
  {
    goto LABEL_205;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v63 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v63)
  {
    goto LABEL_206;
  }

LABEL_102:
  v143 = v25;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
  v64 = 0;
  v65 = v143;
  v123 = v27 + 32;
  v124 = v27;
  while (2)
  {
    if (v64 >= *(v27 + 2))
    {
      goto LABEL_211;
    }

    v66 = v63;
    v67 = &v123[32 * v64];
    v68 = *v67;
    v69 = v67[1];
    v71 = v67[2];
    v70 = v67[3];
    if ((v69 & 0x1000000000000000) != 0)
    {
      v147 = *v67;
      v148 = v69;
      v121 = lazy protocol witness table accessor for type String and conformance String();

      StringProtocol._ephemeralString.getter();
      v122 = String._bridgeToObjectiveCImpl()();

      v91 = [v122 _fastCharacterContents];
      v92 = v122;
      if (v91)
      {
        v147 = v68;
        v148 = v69;
        v122 = v91;
        StringProtocol._ephemeralString.getter();
        v119 = String._bridgeToObjectiveCImpl()();

        v121 = [v119 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v122, v121, 0x80u, 1))
        {
          goto LABEL_181;
        }
      }

      else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v68, v69, 0x80u, 1))
      {
        goto LABEL_181;
      }

      goto LABEL_217;
    }

    if ((v69 & 0x2000000000000000) == 0)
    {
      if ((v68 & 0x1000000000000000) != 0)
      {
        v72 = ((v69 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v73 = v68 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter();
        if (!v72)
        {
          goto LABEL_179;
        }
      }

      if (v73)
      {
        v74 = 0;
        while (1)
        {
          if (*v72 < 0)
          {
            goto LABEL_216;
          }

          v75 = *v72;
          if ((v75 - 39) < 9)
          {
            goto LABEL_114;
          }

          if (*v72 <= 0x24u)
          {
            break;
          }

          if (v75 != 37)
          {
            if (v75 == 38)
            {
              goto LABEL_216;
            }

LABEL_130:
            v80 = v75 - 58;
            if ((v75 - 58) <= 0xFFFFFFF5)
            {
              if (v80 > 6)
              {
LABEL_134:
                if (v75 != 95 && (v75 - 65) >= 0x1A && v75 != 126 && (v75 - 97) >= 0x1A)
                {
                  goto LABEL_216;
                }
              }

              else if (((1 << v80) & 0x63) == 0)
              {
                if (v75 == 61)
                {
                  goto LABEL_216;
                }

                goto LABEL_134;
              }
            }

LABEL_114:
            v76 = v74-- < 1;
            if (v76)
            {
              v74 = 0;
            }

            else if ((v75 - 58) <= 0xFFFFFFF5)
            {
              v77 = v75 - 65;
              v76 = v77 > 0x25;
              v78 = (1 << v77) & 0x3F0000003FLL;
              v79 = v76 || v78 == 0;
              if (v79)
              {
                goto LABEL_216;
              }
            }

            goto LABEL_111;
          }

          if (v74)
          {
            goto LABEL_216;
          }

          v74 = 2;
LABEL_111:
          ++v72;
          if (!--v73)
          {
            v90 = v74 == 0;
            goto LABEL_172;
          }
        }

        if (v75 != 33 && v75 != 36)
        {
          goto LABEL_130;
        }

        goto LABEL_114;
      }

LABEL_179:
      v89 = 1;
      goto LABEL_180;
    }

    v81 = HIBYTE(v69) & 0xF;
    v147 = v68;
    v148 = v69 & 0xFFFFFFFFFFFFFFLL;
    if (!v81)
    {
      goto LABEL_179;
    }

    v82 = 0;
    v83 = &v147;
    do
    {
      if (*v83 < 0)
      {
LABEL_169:
        v89 = 0;
        goto LABEL_180;
      }

      v84 = *v83;
      if ((v84 - 39) < 9)
      {
        goto LABEL_145;
      }

      if (*v83 > 0x24u)
      {
        if (v84 == 37)
        {
          if (v82)
          {
            goto LABEL_169;
          }

          v82 = 2;
          goto LABEL_142;
        }

        if (v84 == 38)
        {
          goto LABEL_169;
        }
      }

      else if (v84 == 33 || v84 == 36)
      {
        goto LABEL_145;
      }

      v88 = v84 - 58;
      if ((v84 - 58) > 0xFFFFFFF5)
      {
        goto LABEL_145;
      }

      if (v88 <= 6)
      {
        if (((1 << v88) & 0x63) != 0)
        {
          goto LABEL_145;
        }

        if (v84 == 61)
        {
          goto LABEL_169;
        }
      }

      if (v84 != 95 && (v84 - 65) >= 0x1A && v84 != 126 && (v84 - 97) >= 0x1A)
      {
        goto LABEL_169;
      }

LABEL_145:
      v76 = v82-- < 1;
      if (v76)
      {
        v82 = 0;
      }

      else if ((v84 - 58) <= 0xFFFFFFF5)
      {
        v85 = v84 - 65;
        v76 = v85 > 0x25;
        v86 = (1 << v85) & 0x3F0000003FLL;
        if (v76 || v86 == 0)
        {
          goto LABEL_169;
        }
      }

LABEL_142:
      ++v83;
      --v81;
    }

    while (v81);
    v90 = v82 == 0;
LABEL_172:
    v89 = v90;
LABEL_180:

    if (!v89)
    {
      goto LABEL_217;
    }

LABEL_181:
    v147 = v68;
    v148 = v69;
    if (!v70)
    {

      goto LABEL_190;
    }

    if ((v70 & 0x1000000000000000) == 0)
    {
      if ((v70 & 0x2000000000000000) != 0)
      {
        v94 = HIBYTE(v70) & 0xF;
        v125 = v71;
        v126 = v70 & 0xFFFFFFFFFFFFFFLL;
        v93 = &v125;
      }

      else if ((v71 & 0x1000000000000000) != 0)
      {
        v93 = ((v70 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v94 = v71 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v93 = _StringObject.sharedUTF8.getter();
      }

      v95 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v93, v94, 0x40u, 1);

      if (!v95)
      {
        goto LABEL_202;
      }

LABEL_189:
      v125 = 61;
      v126 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v71, v70);
      MEMORY[0x1865CB0E0](v125, v126);

      v68 = v147;
      v69 = v148;
LABEL_190:
      v143 = v65;
      v97 = *(v65 + 16);
      v96 = *(v65 + 24);
      if (v97 >= v96 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
        v65 = v143;
      }

      ++v64;
      *(v65 + 16) = v97 + 1;
      v98 = v65 + 16 * v97;
      *(v98 + 32) = v68;
      *(v98 + 40) = v69;
      v63 = v66;
      v79 = v64 == v66;
      v27 = v124;
      if (v79)
      {
        v182 = v178;
        v147 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v105 = BidirectionalCollection<>.joined(separator:)();
        v107 = v106;

        outlined destroy of String?(&v182);
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *v150 = *v146;
        *&v150[3] = *&v146[3];
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
        v156 = 1;
        *&v157[3] = *&v145[3];
        *v157 = *v145;
        v158 = 0;
        v159 = 0;
        v160 = v105;
        v161 = v107;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v4 = URLComponents._URLComponents.query.getter();
        v3 = v108;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *v128 = *v146;
        *&v128[3] = *&v146[3];
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0;
        v134 = 1;
        *&v135[3] = *&v145[3];
        *v135 = *v145;
        v136 = 0;
        v137 = 0;
        v138 = v105;
        v139 = v107;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        outlined destroy of URLComponents(&v125);
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  v125 = v71;
  v126 = v70;
  v99 = lazy protocol witness table accessor for type String and conformance String();

  v122 = v99;
  StringProtocol._ephemeralString.getter();
  v100 = String._bridgeToObjectiveCImpl()();

  v101 = [v100 _fastCharacterContents];
  v102 = v100;
  if (v101)
  {
    v125 = v71;
    v126 = v70;
    v121 = v101;
    StringProtocol._ephemeralString.getter();
    v103 = String._bridgeToObjectiveCImpl()();

    v104 = [v103 length];
    swift_unknownObjectRelease();
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v121, v104, 0x40u, 1))
    {
      goto LABEL_189;
    }
  }

  else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v71, v70, 0x40u, 1))
  {
    goto LABEL_189;
  }

LABEL_202:

  swift_bridgeObjectRelease_n();
LABEL_218:
  v116 = 0;
  v115 = 1152;
  v111 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_219:
  result.value._object = v112;
  result.value._countAndFlagsBits = v111;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t URLComponents._URLComponents.query.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
  }

  else
  {
    if (*(v0 + 15) & 1) == 0 || !*v0 || (*(*v0 + 192))
    {
      return 0;
    }

    v9 = *(v0 + 128);
    v10 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v10);
    v3 = v11;

    v1 = v9;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v13[0] = v2;
    v13[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v12[2] = v13;
    v12[3] = MEMORY[0x1E69E7CD0];
    v12[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v12, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  v4 = v3;
}

double static Optional._castForKVO(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8];
  outlined init with copy of Any(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    *(a3 + 24) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(v12 + 32))(boxed_opaque_existential_0, v9, a2);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t _KeyValueCodingAndObserving.willChangeValue<A>(for:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - v5, v4);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  swift_dynamicCast();
  v7 = v10[1];
  _bridgeKeyPathToString(_:)();
  v8 = String._bridgeToObjectiveCImpl()();

  [v7 *a3];

  swift_unknownObjectRelease();
}

uint64_t _SwiftURL.lastPathComponent.getter()
{
  v1 = _SwiftURL.absolutePath(percentEncoded:)(1);
  Path = String._lastPathComponent.getter(v1._countAndFlagsBits, v1._object);
  v4 = v3;

  v5 = _SwiftURL.isFileURL.getter();
  if ((v5 & 1) == 0)
  {
    v40 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v40 = Path & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = *(v0 + 40);
      v51 = Path;
      v52 = v4;
      MEMORY[0x1EEE9AC00](v5);
      v48 = &v51;
      v49 = MEMORY[0x1E69E7CD0];
      v50 = v41;

      v42 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v47, Path, v4);
      if (v43 == 1)
      {
        v44 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v4, MEMORY[0x1E69E7CD0], v41);
        v46 = v45;
      }

      else
      {
        v46 = v43;
        v44 = v42;
      }

      swift_bridgeObjectRelease_n();
      result = v44;
      if (!v46)
      {
        return 0;
      }

      return result;
    }

    return 0;
  }

  v6 = String._droppingTrailingSlashes.getter(Path, v4);
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v9 = static _SetStorage.allocate(capacity:)();
  v10 = v9 + 56;
  v11 = *(v9 + 40);
  v12 = byte_1EEED30F8;
  result = MEMORY[0x1865CD020](v11, byte_1EEED30F8, 1);
  v14 = -1 << *(v9 + 32);
  v15 = result & ~v14;
  v16 = v15 >> 6;
  v17 = *(v9 + 56 + 8 * (v15 >> 6));
  v18 = 1 << v15;
  v19 = *(v9 + 48);
  if (((1 << v15) & v17) != 0)
  {
    v20 = ~v14;
    while (*(v19 + v15) != v12)
    {
      v15 = (v15 + 1) & v20;
      v16 = v15 >> 6;
      v17 = *(v10 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(v10 + 8 * v16) = v18 | v17;
    *(v19 + v15) = v12;
    v21 = *(v9 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_33;
    }

    *(v9 + 16) = v23;
  }

  v24 = byte_1EEED30F9;
  result = MEMORY[0x1865CD020](v11, byte_1EEED30F9, 1);
  v25 = -1 << *(v9 + 32);
  v26 = result & ~v25;
  v27 = v26 >> 6;
  v28 = *(v10 + 8 * (v26 >> 6));
  v29 = 1 << v26;
  v30 = *(v9 + 48);
  if (((1 << v26) & v28) == 0)
  {
LABEL_12:
    *(v10 + 8 * v27) = v29 | v28;
    *(v30 + v26) = v24;
    v32 = *(v9 + 16);
    v22 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v22)
    {
      *(v9 + 16) = v33;
      goto LABEL_14;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  v31 = ~v25;
  while (*(v30 + v26) != v24)
  {
    v26 = (v26 + 1) & v31;
    v27 = v26 >> 6;
    v28 = *(v10 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    if (((1 << v26) & v28) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  v34 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v34 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    return 0;
  }

  v51 = v6;
  v52 = v8;
  MEMORY[0x1EEE9AC00](result);
  v48 = &v51;
  v49 = v9;
  v50 = 4;

  v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v47, v6, v8);
  if (v36 == 1)
  {
    v37 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v6, v8, v9, 4);
    v39 = v38;
  }

  else
  {
    v39 = v36;
    v37 = v35;
  }

  result = v37;
  if (!v39)
  {
    return 0;
  }

  return result;
}

unint64_t specialized BidirectionalCollection<>.lastIndex(of:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v8 = result;
  v9 = a2 >> 14;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v12 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a3 >> 14;
  v18 = a5 & 0xFFFFFFFFFFFFFFLL;
  v16 = v12;
  v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if (v7 >> 14 == v9)
    {
      return 0;
    }

    if ((v7 & 0xC) == v11)
    {
      break;
    }

    if (v7 < 0x4000)
    {
      goto LABEL_30;
    }

LABEL_12:
    if ((a5 & 0x1000000000000000) != 0)
    {
      if (v16 < v7 >> 16)
      {
        goto LABEL_32;
      }

      v7 = String.UTF8View._foreignIndex(before:)();
    }

    else
    {
      v7 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
    }

    result = v7;
    if ((v7 & 0xC) == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
    }

    if (result >> 14 < v9 || result >> 14 >= v13)
    {
      goto LABEL_31;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v19[0] = a4;
        v19[1] = v18;
        result = *(v19 + v14);
      }

      else
      {
        v15 = v17;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        result = *(v15 + v14);
      }
    }

    if (result == v8)
    {
      return v7;
    }
  }

  result = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
  v7 = result;
  if (result >= 0x4000)
  {
    goto LABEL_12;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t URLResourceValues.localizedName.getter(void **a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t *_SwiftURL.absoluteSwiftURL.getter()
{
  v1 = *v0;
  v137 = v0[3];
  if (!v137)
  {

    return v0;
  }

  v131 = v0;
  v132 = v1;
  v130 = v0[4];
  v2 = v0[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v2, 0, &v154);
  v3 = *(&v154 + 1);
  v4 = v155;
  v5 = v157;
  v6 = v158;
  v153 = v163;
  v135 = v162;
  v136 = v161;
  v133 = *(&v155 + 1);
  v134 = v154;
  if (*(&v154 + 1))
  {
    v7 = *(&v156 + 1);
    v8 = v158;
    v9 = *(&v157 + 1);
    v127 = v156;
    v128 = v155;
    v126 = *(&v158 + 1);
    v129 = String.removingDotSegments.getter(v159, v160);
    v11 = v10;

    v168 = v134;
    v169 = v3;
    v170 = v4;
    v171 = v127;
    v172 = v7;
    v173 = v5;
    v174 = v9;
    v175 = v8;
    v176 = v126;
    v177 = v129;
    v178 = v11;
    v179 = v136;
    v180 = v135;
    v181 = v163;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v12;
    swift_unknownObjectRelease();
    v138 = v134;
    v139 = v3;
    v140 = v128;
    v141 = v133;
    v142 = v127;
    v143 = v7;
    v144 = v5;
    v145 = v9;
    v146 = v8;
    v147 = v126;
    v148 = v129;
    v149 = v11;
    v150 = v136;
    v151 = v135;
LABEL_15:
    v152 = v163;
    outlined destroy of _SwiftURL.URLStringBuilder(&v138);
    goto LABEL_16;
  }

  v123 = v159;
  v124 = v160;
  v125 = *(&v157 + 1);
  v15 = v157;
  v16 = *(&v158 + 1);
  v17 = v155;
  v129 = *(&v156 + 1);
  v18 = v156;
  ObjectType = swift_getObjectType();
  v20 = (*(v130 + 136))(ObjectType, v130);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v134;
  }

  v23 = v2[72];
  v122 = v21;
  v134 = v22;
  if ((v23 & 1) == 0 || (v2[96] & 1) == 0 || v2[120] != 1 || v2[144] != 1)
  {
    v168 = v22;
    v169 = v21;
    *&v170 = v4;
    *(&v170 + 1) = v133;
    v171 = v18;
    v172 = v129;
    v173 = v15;
    v174 = v125;
    v175 = v6;
    v176 = v16;
    v177 = v123;
    v178 = v124;
    v179 = v136;
    v180 = v135;
    v181 = v163;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v26;
    swift_unknownObjectRelease();
    v138 = v134;
    v139 = v122;
    v140 = v17;
    v141 = v133;
    v142 = v18;
    v143 = v129;
    v144 = v15;
    v145 = v125;
    v146 = v6;
    v147 = v16;
    v148 = v123;
    v149 = v124;
    v150 = v136;
    v151 = v135;
    goto LABEL_15;
  }

  v121 = ObjectType;
  v168 = v137;
  v169 = v130;
  URL._swiftURL.getter();
  v127 = v18;
  v128 = v4;
  if (v24)
  {
    v25 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
  }

  v34 = (*(v130 + 168))(1, v121);
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v167 = v155;
    outlined destroy of TermOfAddress?(&v167, &_sSSSgMd);
    v133 = v37;
    v128 = v36;
  }

  v38 = (*(v130 + 184))(1, v121);
  v40 = v25;
  if (v39)
  {
    v41 = v38;
    v42 = v39;
    v166 = v156;
    outlined destroy of TermOfAddress?(&v166, &_sSSSgMd);
    v129 = v42;
    v127 = v41;
  }

  v164 = v157;
  v165 = v158;
  v43 = v6;
  if (v40 && (*(v40 + 120) & 1) == 0)
  {

    v50 = String.subscript.getter();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = v50;
    v43 = v6;
    v48 = v136;
    v15 = MEMORY[0x1865CAE80](v57, v52, v54, v56);
    v125 = v58;

    outlined destroy of TermOfAddress?(&v164, &_sSSSgMd);
  }

  else
  {
    v44 = (*(v130 + 200))(1, v121);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      outlined destroy of TermOfAddress?(&v164, &_sSSSgMd);
      v15 = v46;
      v125 = v47;
    }

    v48 = v136;
    if (!v40)
    {
      v49 = v133;
      goto LABEL_35;
    }
  }

  v49 = v133;
  if ((*(v40 + 144) & 1) == 0)
  {

    v61 = String.subscript.getter();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v68 = v63;
    v49 = v133;
    v43 = MEMORY[0x1865CAE80](v61, v68, v65, v67);
    v126 = v69;

    goto LABEL_39;
  }

LABEL_35:
  v59 = (*(v130 + 208))(v121);
  if (v60)
  {
    v126 = v16;
    goto LABEL_40;
  }

  v168 = v59;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v126 = v70;
LABEL_39:
  outlined destroy of TermOfAddress?(&v165, &_sSSSgMd);
LABEL_40:
  v71 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v71 = v123 & 0xFFFFFFFFFFFFLL;
  }

  v132 = v15;
  v119[4] = v40;
  v120 = v43;
  if (!v71)
  {
    v75 = v48;
    v72 = v43;
    v76 = v162;
    v77 = (*(v130 + 248))(1, v121, v130);
    v79 = v78;

    if (v76)
    {
      v80 = v135;
    }

    else
    {
      v93 = (*(v130 + 264))(1, v121, v130);
      if (v94)
      {
        v75 = v93;
      }

      v136 = v75;
      v80 = v135;
      if (v94)
      {
        v80 = v94;
      }
    }

    v74 = v129;
    v95 = v133;
    goto LABEL_66;
  }

  if ((specialized Collection.first.getter(v123, v124) & 0x1FF) == 0x2F)
  {
    v72 = v43;

    v73 = v124;
    v74 = v129;
LABEL_53:
    v92 = v123;
LABEL_65:
    v77 = String.removingDotSegments.getter(v92, v73);
    v110 = v109;

    v79 = v110;

    v80 = v135;
    v95 = v49;
LABEL_66:
    v111 = v77;
    v135 = v80;
    v133 = v95;
    v129 = v74;
    v112 = v134;
    v113 = v122;
    v168 = v134;
    v169 = v122;
    v114 = v128;
    *&v170 = v128;
    *(&v170 + 1) = v95;
    v171 = v127;
    v172 = v74;
    v173 = v132;
    v174 = v125;
    v175 = v72;
    v115 = v126;
    v176 = v126;
    v177 = v111;
    v178 = v79;
    v179 = v136;
    v180 = v80;
    v116 = v127;
    v181 = v153;
    v117 = v79;
    v130 = _SwiftURL.URLStringBuilder.string.getter();
    v13 = v118;
    swift_unknownObjectRelease();

    v138 = v112;
    v139 = v113;
    v140 = v114;
    v141 = v133;
    v142 = v116;
    v143 = v129;
    v144 = v132;
    v145 = v125;
    v146 = v120;
    v147 = v115;
    v148 = v111;
    v149 = v117;
    v150 = v136;
    v151 = v135;
    v152 = v153;
    outlined destroy of _SwiftURL.URLStringBuilder(&v138);
LABEL_16:
    v27 = v131;
    v28 = v131[5];
    v14 = swift_allocObject();
    type metadata accessor for _SwiftURL.ResourceInfo();
    v29 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 16) = 0;
    *(v29 + 16) = v30;
    *(v14 + 56) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = 0;
    *(v14 + 64) = v31;
    v32 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v130, v13, 1);

    if (v32)
    {
      *(v14 + 16) = v32;
      if ((v32[48] & 1) == 0)
      {

        String.subscript.getter();
      }

      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = v28;
      *(v14 + 48) = 0;
    }

    else
    {

      swift_deallocPartialClassInstance();

      return v27;
    }

    return v14;
  }

  v81 = (*(v130 + 152))(v121, v130);
  v82 = *(v130 + 248);
  if (v81)
  {
    v83 = v82(1, v121, v130);
    v85 = v84;

    v86 = HIBYTE(v85) & 0xF;
    v87 = (v85 & 0x2000000000000000) == 0;
    v49 = v133;
    if (v87)
    {
      v86 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!v86)
    {
      v168 = 47;
      v169 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v123, v124);
      v92 = v168;
      v73 = v169;
      v74 = v129;
      v72 = v43;
      goto LABEL_65;
    }
  }

  v88 = v82(1, v121, v130);
  v90 = v89;
  v91 = specialized Collection.first.getter(v123, v124);
  if ((v91 & 0x1FF) == 0x2F)
  {

    v73 = v124;
    v74 = v129;
    v72 = v43;
    goto LABEL_53;
  }

  LOBYTE(v168) = 47;
  MEMORY[0x1EEE9AC00](v91);
  v119[2] = &v168;
  specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v119, v88, v90);
  if (v96)
  {

    v97 = v124;

    v73 = v97;
    v49 = v133;
    v92 = v123;
LABEL_63:
    v72 = v120;
    v74 = v129;
    goto LABEL_65;
  }

  String.index(after:)();
  v98 = String.subscript.getter();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v138 = 0;
  v139 = 0xE000000000000000;
  v105 = v124;
  v106 = String.count.getter();
  v130 = v102;
  v107 = Substring.distance(from:to:)();
  v108 = __OFADD__(v106, v107);
  result = (v106 + v107);
  if (!v108)
  {
    MEMORY[0x1865CAED0](result);
    v168 = v98;
    v169 = v100;
    *&v170 = v130;
    *(&v170 + 1) = v104;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    v168 = v123;
    v169 = v105;

    String.append<A>(contentsOf:)();

    v92 = v138;
    v73 = v139;
    v49 = v133;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

double specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)@<D0>(_BYTE *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v144 = a3;
  if (a2)
  {
    v4 = a1[220];
    if ((a1[48] & 1) == 0)
    {
LABEL_3:
      v5 = String.subscript.getter();
      *&v143 = MEMORY[0x1865CAE80](v5);
      *(&v143 + 1) = v6;

      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if ((a1[48] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v143 = 0uLL;
LABEL_6:
  v7 = a1[72];
  LODWORD(v142) = v4;
  if (v7)
  {
    v145 = 0;
    v8 = 0;
  }

  else
  {
    v9 = String.subscript.getter();
    v13 = v12;
    if (v4)
    {
      if ((v9 ^ v10) >> 14)
      {
        *&v156 = v9;
        *(&v156 + 1) = v10;
        v157 = v11;
        v158 = v12;
        MEMORY[0x1EEE9AC00](v9);
        v129 = &v156;
        v130 = MEMORY[0x1E69E7CD0];
        v131 = 4;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = v27;
        v29 = v25;
        v30 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v23, v27, v25, v13);
        v32 = v31;

        v145 = v32;
        if (v32 == 1)
        {

          v8 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v23, v28, v29, v13, MEMORY[0x1E69E7CD0], 4);
          v145 = v33;
          swift_bridgeObjectRelease_n();
        }

        else
        {

          v8 = v30;
        }

        LOBYTE(v4) = v142;
      }

      else
      {

        v8 = 0;
        v145 = 0xE000000000000000;
      }
    }

    else
    {
      v8 = MEMORY[0x1865CAE80](v9);
      v145 = v14;
    }
  }

  if (a1[96])
  {
    v141 = 0;
    v15 = 0;
  }

  else
  {
    v16 = String.subscript.getter();
    v20 = v19;
    if ((v4 & 2) != 0)
    {
      if ((v16 ^ v17) >> 14)
      {
        v135 = v8;
        *&v156 = v16;
        *(&v156 + 1) = v17;
        v157 = v18;
        v158 = v19;
        MEMORY[0x1EEE9AC00](v16);
        v129 = &v156;
        v130 = MEMORY[0x1E69E7CD0];
        v131 = 4;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v40 = v35;
        v41 = v35;
        v42 = v39;
        v43 = v37;
        v44 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v41, v39, v37, v20);
        v15 = v45;

        if (v15 == 1)
        {

          v141 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v40, v42, v43, v20, MEMORY[0x1E69E7CD0], 4);
          v15 = v46;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v141 = v44;
        }

        v8 = v135;
        LOBYTE(v4) = v142;
      }

      else
      {

        v141 = 0;
        v15 = 0xE000000000000000;
      }
    }

    else
    {
      v141 = MEMORY[0x1865CAE80](v16);
      v15 = v21;
    }
  }

  v47 = a1[120];
  v140 = v15;
  if (v47)
  {
    v138 = 0;
    v139 = 0;
    if (a1[144])
    {
      goto LABEL_52;
    }

LABEL_34:
    v55 = String.subscript.getter();
    v56 = MEMORY[0x1865CAE80](v55);
    v136 = v57;
    v137 = v56;

    v58 = a1[168];
    if ((v4 & 8) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_35;
  }

  v48 = String.subscript.getter();
  v52 = v51;
  if ((v4 & 4) != 0)
  {
    if (!((v48 ^ v49) >> 14))
    {

      v138 = 0xE000000000000000;
      v139 = 0;
      if (a1[144])
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    v135 = v8;
    *&v156 = v48;
    *(&v156 + 1) = v49;
    v157 = v50;
    v158 = v51;
    MEMORY[0x1EEE9AC00](v48);
    v129 = &v156;
    v130 = MEMORY[0x1E69E7CD0];
    v131 = 4;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v76 = v71;
    v77 = v71;
    v78 = v75;
    v79 = v73;
    v80 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v77, v75, v73, v52);
    v82 = v81;

    if (v82 == 1)
    {

      v83 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v76, v78, v79, v52, MEMORY[0x1E69E7CD0], 4);
      v138 = v84;
      v139 = v83;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v138 = v82;
      v139 = v80;
    }

    v8 = v135;
    LOBYTE(v4) = v142;
    v15 = v140;
    if ((a1[144] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v53 = MEMORY[0x1865CAE80](v48);
    v138 = v54;
    v139 = v53;

    if ((a1[144] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_52:
  v136 = 0;
  v137 = 0;
  v58 = a1[168];
  if ((v4 & 8) == 0)
  {
LABEL_53:
    if (v58)
    {
      v87 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v87 = String.subscript.getter();
    }

    v146 = MEMORY[0x1865CAE80](v87);
    v67 = v88;

    if ((a1[192] & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_49:
    v85 = 0;
    v86 = 0;
    goto LABEL_64;
  }

LABEL_35:
  if (v58)
  {
    v59 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v59 = String.subscript.getter();
  }

  v63 = v59;
  v64 = v60;
  v65 = v61;
  v66 = v62;
  if ((v59 ^ v60) >> 14)
  {
    *&v156 = v59;
    *(&v156 + 1) = v60;
    v157 = v61;
    v158 = v62;
    MEMORY[0x1EEE9AC00](v59);
    v129 = &v156;
    v130 = MEMORY[0x1E69E7CD0];
    v131 = 4;

    v146 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v63, v64, v65, v66);
    v67 = v68;

    if (v67 == 1)
    {

      v146 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v63, v64, v65, v66, MEMORY[0x1E69E7CD0], 4);
      v67 = v69;
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    LOBYTE(v4) = v142;
    v15 = v140;
    if (!v67)
    {
      v146 = 0;
      v67 = 0xE000000000000000;
    }

    if ((a1[192] & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  v146 = 0;
  v67 = 0xE000000000000000;
  LOBYTE(v4) = v142;
  if (a1[192])
  {
    goto LABEL_49;
  }

LABEL_57:
  v89 = String.subscript.getter();
  v93 = v92;
  if ((v4 & 0x10) != 0)
  {
    if ((v89 ^ v90) >> 14)
    {
      v134 = v67;
      v135 = v8;
      v133 = &v132;
      *&v156 = v89;
      *(&v156 + 1) = v90;
      v157 = v91;
      v158 = v92;
      MEMORY[0x1EEE9AC00](v89);
      v129 = &v156;
      v130 = MEMORY[0x1E69E7CD0];
      v131 = 4;
      v97 = v96;
      v99 = v98;
      v101 = v100;

      v102 = v97;
      v103 = v99;
      v104 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v128, v97, v101, v99, v93);
      v86 = v105;

      if (v86 == 1)
      {

        v106 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v102, v101, v103, v93, MEMORY[0x1E69E7CD0], 4);
        v86 = v107;
        v85 = v106;
        swift_bridgeObjectRelease_n();
        v67 = v134;
        v8 = v135;
        LOBYTE(v4) = v142;
        v15 = v140;
      }

      else
      {

        v67 = v134;
        v8 = v135;
        LOBYTE(v4) = v142;
        v15 = v140;
        v85 = v104;
      }
    }

    else
    {

      v85 = 0;
      v86 = 0xE000000000000000;
    }
  }

  else
  {
    v94 = MEMORY[0x1865CAE80](v89);
    v86 = v95;
    v85 = v94;
  }

LABEL_64:
  if (a1[216] == 1)
  {

    v108 = 0;
    v109 = 0;
  }

  else
  {
    v133 = v85;
    v134 = v67;
    v135 = v8;
    v110 = String.subscript.getter();
    v114 = v110;
    v115 = v111;
    v116 = v112;
    v117 = v113;
    if ((v4 & 0x20) != 0)
    {
      if ((v110 ^ v111) >> 14)
      {
        v142 = v128;
        *&v156 = v110;
        *(&v156 + 1) = v111;
        v157 = v112;
        v158 = v113;
        MEMORY[0x1EEE9AC00](v110);
        v119 = MEMORY[0x1E69E7CD0];
        *&v128[-32] = &v156;
        *&v128[-24] = v119;
        *&v128[-16] = 4;

        v108 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v128[-48], v114, v115, v116, v117);
        v109 = v120;

        if (v109 == 1)
        {

          v108 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v114, v115, v116, v117, MEMORY[0x1E69E7CD0], 4);
          v109 = v121;
          swift_bridgeObjectRelease_n();
        }

        else
        {
        }
      }

      else
      {

        v108 = 0;
        v109 = 0xE000000000000000;
      }
    }

    else
    {
      v108 = MEMORY[0x1865CAE80](v110, v111, v112, v113);
      v109 = v118;
    }

    v67 = v134;
    v8 = v135;
    v15 = v140;
    v85 = v133;
  }

  v148 = v143;
  *&v149 = v8;
  *(&v149 + 1) = v145;
  *&v150 = v141;
  *(&v150 + 1) = v15;
  *&v151 = v139;
  *(&v151 + 1) = v138;
  *&v152 = v137;
  *(&v152 + 1) = v136;
  *&v153 = v146;
  *(&v153 + 1) = v67;
  *&v154 = v85;
  *(&v154 + 1) = v86;
  *&v155 = v108;
  *(&v155 + 1) = v109;
  v156 = v143;
  v157 = v8;
  v158 = v145;
  v159 = v141;
  v160 = v15;
  v161 = v139;
  v162 = v138;
  v163 = v137;
  v164 = v136;
  v165 = v146;
  v166 = v67;
  v167 = v85;
  v168 = v86;
  v169 = v108;
  v170 = v109;
  outlined init with copy of _SwiftURL.URLStringBuilder(&v148, &v147);
  outlined destroy of _SwiftURL.URLStringBuilder(&v156);
  v122 = v153;
  v123 = v144;
  v144[4] = v152;
  v123[5] = v122;
  v124 = v155;
  v123[6] = v154;
  v123[7] = v124;
  v125 = v149;
  *v123 = v148;
  v123[1] = v125;
  result = *&v150;
  v127 = v151;
  v123[2] = v150;
  v123[3] = v127;
  return result;
}

void URL._swiftURL.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Class = object_getClass(*v0);
  if (Class == _TtC10Foundation9_SwiftURL && v1 != 0)
  {
    swift_unknownObjectRetain();
    return;
  }

  if (Class == _TtC10Foundation18_BridgedNSSwiftURL && v1 != 0)
  {

    return;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v7 = (*(v2 + 432))(ObjectType, v2);
  v8 = [v7 _trueSelf];

  if (!v8)
  {
    __break(1u);
    return;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v13 = type metadata accessor for _BridgedURL();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
    v25.receiver = v14;
    v15 = v8;
    v16 = objc_msgSendSuper2(&v25, sel_init, v24.receiver, v24.super_class, v25.receiver, v13);
LABEL_18:
    v19 = v16;
    v12 = _BridgedURL.convertingFileReference()();

    goto LABEL_19;
  }

  type metadata accessor for _NSSwiftURL();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    v17 = type metadata accessor for _BridgedURL();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
    v24.receiver = v18;
    v15 = v8;
    v16 = objc_msgSendSuper2(&v24, sel_init, v24.receiver, v17, v25.receiver, v25.super_class);
    goto LABEL_18;
  }

  v10 = v9;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v10;
  v11 = v8;
  v12 = _BridgedNSSwiftURL.convertingFileReference()();

LABEL_19:
  if (object_getClass(v12) != _TtC10Foundation9_SwiftURL || !v12)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v20 = swift_getObjectType();
    v21 = (*(v2 + 104))(v20, v2);
    v23 = v22;
    (*(v2 + 120))(&v27, v20, v2);
    v26 = v27;
    specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v21, v23, &v26);
  }
}

Swift::String_optional __swiftcall _SwiftURL.password(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[72] == 1)
  {
    if (v3[96])
    {
      if (v3[120] == 1 && v3[144] == 1 && v1[3])
      {
        v4 = v1[4];
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 184);
        swift_unknownObjectRetain();
        v7 = v6(percentEncoded, ObjectType, v4);
        v9 = v8;
        swift_unknownObjectRelease();
LABEL_11:
        v11 = v9;
        v10 = v7;
        goto LABEL_23;
      }

      goto LABEL_8;
    }
  }

  else if (v3[96])
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  v12 = String.subscript.getter();
  v16 = v15;
  if (percentEncoded)
  {
    v7 = MEMORY[0x1865CAE80](v12);
    v9 = v17;

    goto LABEL_11;
  }

  if ((v3[220] & 2) != 0)
  {
    if ((v12 ^ v13) >> 14)
    {
      v49 = v12;
      v50 = v13;
      v51 = v14;
      v52 = v15;
      MEMORY[0x1EEE9AC00](v12);
      v46 = &v49;
      v47 = MEMORY[0x1E69E7CD0];
      v48 = 4;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = v33;
      v39 = v35;
      v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v33, v37, v35, v16);
      v42 = v41;

      if (v42 != 1)
      {

        v11 = v42;
        v10 = v40;
        goto LABEL_23;
      }

      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v38, v37, v39, v16, MEMORY[0x1E69E7CD0], 4);
      v9 = v43;
      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

LABEL_17:

    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (!((v12 ^ v13) >> 14))
  {
    goto LABEL_17;
  }

  v18 = v1[5];
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v49;
  v47 = MEMORY[0x1E69E7CD0];
  v48 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v20;
  v27 = v22;
  v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v26, v24, v22, v16);
  v30 = v29;

  if (v30 == 1)
  {

    v28 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v25, v24, v27, v16, MEMORY[0x1E69E7CD0], v18);
    v30 = v31;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v10 = v28;
  v11 = v30;
LABEL_23:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t protocol witness for _URLProtocol.hasAuthority.getter in conformance _SwiftURL()
{
  v1 = *(v0 + 16);
  if (v1[72] == 1 && (v1[96] & 1) != 0 && v1[120] == 1)
  {
    return (v1[144] ^ 1) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t String.removingDotSegments.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a2) & 0xF;
  }

  else
  {
    result = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignCount()();
    }

    MEMORY[0x1EEE9AC00](result);
    return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  }

  return result;
}

Swift::String __swiftcall _SwiftURL.relativePath(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = *(v1 + 16);
  if (!percentEncoded)
  {
    if ((*(v2 + 220) & 8) != 0)
    {
      if (*(v2 + 168))
      {
        v11 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v11 = String.subscript.getter();
      }

      v27 = v11;
      v28 = v12;
      v29 = v13;
      v30 = v14;
      if ((v11 ^ v12) >> 14)
      {
        v40 = v11;
        v41 = v12;
        v42 = v13;
        v43 = v14;
        MEMORY[0x1EEE9AC00](v11);
        v37 = &v40;
        v38 = MEMORY[0x1E69E7CD0];
        v39 = 4;

        v8 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v36, v27, v28, v29, v30);
        v10 = v33;

        if (v10 == 1)
        {

          v21 = MEMORY[0x1E69E7CD0];
          v22 = v27;
          v23 = v28;
          v24 = v29;
          v25 = v30;
          v26 = 4;
LABEL_22:
          v8 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v22, v23, v24, v25, v21, v26);
          v10 = v34;
          swift_bridgeObjectRelease_n();
          if (v10)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (*(v2 + 168))
      {
        v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v4 = String.subscript.getter();
      }

      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      if ((v4 ^ v5) >> 14)
      {
        v19 = *(v1 + 40);
        v40 = v4;
        v41 = v5;
        v42 = v6;
        v43 = v7;
        MEMORY[0x1EEE9AC00](v4);
        v37 = &v40;
        v38 = MEMORY[0x1E69E7CD0];
        v39 = v19;

        v8 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v36, v15, v16, v17, v18);
        v10 = v20;

        if (v10 == 1)
        {

          v21 = MEMORY[0x1E69E7CD0];
          v22 = v15;
          v23 = v16;
          v24 = v17;
          v25 = v18;
          v26 = v19;
          goto LABEL_22;
        }

LABEL_24:

        if (v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_19;
  }

  if (*(v2 + 168))
  {
    v3 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v3 = String.subscript.getter();
  }

  v8 = MEMORY[0x1865CAE80](v3);
  v10 = v9;

LABEL_19:
  v31 = v8;
  v32 = v10;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

void NSKeyValueObservation.Helper.invalidate()()
{
  v1 = *&v0[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock];
  os_unfair_lock_lock(v1);
  v2 = *&v0[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject];
  if (v2)
  {
    Strong = v2;
LABEL_4:
    v4 = Strong;
    closure #1 in NSKeyValueObservation.Helper.invalidate()(v0, Strong);

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    goto LABEL_4;
  }

  os_unfair_lock_unlock(v1);
}

void closure #1 in NSKeyValueObservation.Helper.invalidate()(char *a1, void *a2)
{
  swift_unknownObjectWeakAssign();
  *&a1[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject] = 0;
  [a2 removeObserver:a1 forKeyPath:String._bridgeToObjectiveCImpl()() context:0];
  swift_unknownObjectRelease();
  objc_setAssociatedObject(a2, a1, 0, 0);
  os_unfair_lock_unlock(*&a1[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock]);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  if (a3 != 1)
  {
LABEL_23:

    __break(1u);
    return result;
  }
}

Swift::UInt32 __swiftcall String._queryResolveFlags()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v5 = &v78;
  LOBYTE(v6) = 1;
  if ((v1 & 0x1000000000000000) != 0)
  {
    v78 = v0;
    v79 = v1;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = v3;
    v12 = [v10 _fastCharacterContents];
    v13 = v10;
    if (v12)
    {
      v78 = v11;
      v79 = v2;
      v14 = v11;
      StringProtocol._ephemeralString.getter();
      v15 = String._bridgeToObjectiveCImpl()();

      v16 = [v15 length];
      swift_unknownObjectRelease();
      v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v12, v16, 0x40u, 0);
      v3 = v14;
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = specialized Sequence.allSatisfy(_:)(v11, v2, 64);
      v3 = v11;
      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_7:
    v54 = v4;

    goto LABEL_18;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v1) & 0xF;
    v78 = v0;
    v79 = v2 & 0xFFFFFFFFFFFFFFLL;
    v7 = &v78;
  }

  else
  {
    if ((v0 & 0x1000000000000000) == 0)
    {
      goto LABEL_101;
    }

    v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_6:
  v9 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 0x40u, 0);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_10:
  v17 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v17 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v78 = v3;
    v79 = v2;
    MEMORY[0x1EEE9AC00](v9);
    v52[2] = &v78;
    v53 = 64;

    v18 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v52, v3, v2);
    v54 = v4;
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      v3 = v20;
    }

    else
    {
      v3 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v3, v2, 0x40u, 0);
      v21 = v22;
    }

    v2 = v21;
  }

  else
  {
    v54 = v4;

    v3 = 0;
    v2 = 0xE000000000000000;
  }

LABEL_18:
  v78 = 0;
  v79 = 0;
  v80 = 0;
  *v81 = *v77;
  *&v81[3] = *&v77[3];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  *(v5 + 9) = 0u;
  v5[11] = 0;
  v85 = v6;
  v86 = *&v76[3];
  *(v5 + 97) = *v76;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = v3;
  v5[16] = v2;
  v5[17] = 0;
  v5[18] = 0;
  v87 = 0;
  v23 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  if (v23)
  {
    v24 = v23;
    v55 = v3;
    v5 = *(v23 + 16);
    if (v5)
    {
      v25 = 0;
      v3 = 0;
      v4 = v23 + 32;
      v56 = &v58 + 1;
      while (1)
      {
        if (v3 >= *(v24 + 16))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v7 = _StringObject.sharedUTF8.getter();
          goto LABEL_6;
        }

        v26 = (v4 + 32 * v3);
        v27 = v26[2];
        v6 = v26[3];
        if (specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *v26, v26[1]))
        {
          if (v6)
          {
            v28 = HIBYTE(v6) & 0xF;
            v29 = v27 & 0xFFFFFFFFFFFFLL;
            if ((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : v27 & 0xFFFFFFFFFFFFLL)
            {
              break;
            }
          }
        }

LABEL_22:
        if (++v3 == v5)
        {
          goto LABEL_94;
        }
      }

      if ((v6 & 0x1000000000000000) != 0)
      {

        v33 = specialized _parseInteger<A, B>(ascii:radix:)(v27, v6, 10);

        if ((v33 & 0x100000000) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        v58 = v27;
        v59 = v6 & 0xFFFFFFFFFFFFFFLL;
        if (v27 == 43)
        {
          if (!v28)
          {
            goto LABEL_100;
          }

          if (--v28)
          {
            LODWORD(v33) = 0;
            v43 = v56;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v33;
              if ((v45 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v33) = v45 + v44;
              if (__CFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v28)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (!v28)
          {
            goto LABEL_98;
          }

          if (--v28)
          {
            LODWORD(v33) = 0;
            v37 = v56;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v33;
              if ((v39 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v33) = v39 - v38;
              if (v39 < v38)
              {
                break;
              }

              ++v37;
              if (!--v28)
              {
                goto LABEL_87;
              }
            }
          }
        }

        else if (v28)
        {
          LODWORD(v33) = 0;
          v48 = &v58;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v33;
            if ((v50 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v33) = v50 + v49;
            if (__CFADD__(v50, v49))
            {
              break;
            }

            v48 = (v48 + 1);
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      if ((v27 & 0x1000000000000000) != 0)
      {
        v31 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = _StringObject.sharedUTF8.getter();
      }

      v32 = *v31;
      if (v32 == 43)
      {
        if (v29 < 1)
        {
          goto LABEL_99;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_86;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          v40 = v31 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_86;
            }

            v42 = 10 * v33;
            if ((v42 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v42 + v41;
            if (__CFADD__(v42, v41))
            {
              goto LABEL_86;
            }

            ++v40;
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else if (v32 == 45)
      {
        if (v29 < 1)
        {
          goto LABEL_97;
        }

        v28 = v29 - 1;
        if (v29 == 1)
        {
          goto LABEL_86;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          v34 = v31 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_86;
            }

            v36 = 10 * v33;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v36 - v35;
            if (v36 < v35)
            {
              goto LABEL_86;
            }

            ++v34;
            if (!--v28)
            {
              goto LABEL_87;
            }
          }
        }
      }

      else
      {
        if (!v29)
        {
LABEL_86:
          LODWORD(v33) = 0;
          LOBYTE(v28) = 1;
LABEL_87:
          v57 = v28;
          if (v28)
          {
            goto LABEL_22;
          }

LABEL_21:
          v25 |= v33;
          goto LABEL_22;
        }

        LODWORD(v33) = 0;
        if (v31)
        {
          do
          {
            v46 = *v31 - 48;
            if (v46 > 9)
            {
              goto LABEL_86;
            }

            v47 = 10 * v33;
            if ((v47 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_86;
            }

            LODWORD(v33) = v47 + v46;
            if (__CFADD__(v47, v46))
            {
              goto LABEL_86;
            }

            ++v31;
          }

          while (--v29);
        }
      }

      LOBYTE(v28) = 0;
      goto LABEL_87;
    }

    v25 = 0;
LABEL_94:

    LOBYTE(v6) = 1;
    v3 = v55;
  }

  else
  {
    v25 = 0;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  *v61 = *v77;
  *&v61[3] = *&v77[3];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v67 = v6;
  *&v68[3] = *&v76[3];
  *v68 = *v76;
  v69 = 0;
  v70 = 0;
  v71 = v3;
  v72 = v2;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  outlined destroy of URLComponents(&v58);
  return v25;
}

Swift::String_optional __swiftcall _SwiftURL.user(percentEncoded:)(Swift::Bool percentEncoded)
{
  v3 = v1[2];
  if (v3[72] == 1)
  {
    if (v3[96] != 1 || v3[120] != 1 || v3[144] != 1 || !v1[3])
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    v4 = v1[4];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 168);
    swift_unknownObjectRetain();
    v7 = v6(percentEncoded, ObjectType, v4);
    v9 = v8;
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v10 = String.subscript.getter();
  v14 = v13;
  if (percentEncoded)
  {
    v7 = MEMORY[0x1865CAE80](v10);
    v9 = v15;

LABEL_9:
    v16 = v9;
    v17 = v7;
    goto LABEL_22;
  }

  if (v3[220])
  {
    if ((v10 ^ v11) >> 14)
    {
      v49 = v10;
      v50 = v11;
      v51 = v12;
      v52 = v13;
      MEMORY[0x1EEE9AC00](v10);
      v46 = &v49;
      v47 = MEMORY[0x1E69E7CD0];
      v48 = 4;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = v33;
      v39 = v35;
      v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v33, v37, v35, v14);
      v42 = v41;

      if (v42 != 1)
      {

        v16 = v42;
        v17 = v40;
        goto LABEL_22;
      }

      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v38, v37, v39, v14, MEMORY[0x1E69E7CD0], 4);
      v9 = v43;
      swift_bridgeObjectRelease_n();
      goto LABEL_9;
    }

LABEL_16:

    v17 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (!((v10 ^ v11) >> 14))
  {
    goto LABEL_16;
  }

  v18 = v1[5];
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v49;
  v47 = MEMORY[0x1E69E7CD0];
  v48 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v20;
  v27 = v22;
  v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v45, v26, v24, v22, v14);
  v30 = v29;

  if (v30 == 1)
  {

    v28 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v25, v24, v27, v14, MEMORY[0x1E69E7CD0], v18);
    v30 = v31;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v17 = v28;
  v16 = v30;
LABEL_22:
  result.value._object = v16;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t _SwiftURL.port.getter()
{
  v1 = v0[2];
  if (v1[72] == 1 && v1[96] == 1 && v1[120] == 1 && (v1[144] & 1) != 0)
  {
    if (v0[3])
    {
      v2 = v0[4];
      ObjectType = swift_getObjectType();
      return (*(v2 + 208))(ObjectType, v2);
    }

    return 0;
  }

  if (v1[144])
  {
    return 0;
  }

  v5 = String.subscript.getter();
  v9 = v8;
  if (!((v5 ^ v6) >> 14))
  {

    return 0;
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v5, v6, v7, v8, 10);
  if ((v14 & 0x100) != 0)
  {
    v13 = specialized _parseInteger<A, B>(ascii:radix:)(v10, v11, v12, v9, 10);
  }

  v15 = v13;
  v16 = v14;

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t _SwiftURL.URLStringBuilder.string.getter()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = *v0;
  if (*(&v15 + 1))
  {
    v12 = v15;
    outlined init with copy of FloatingPointRoundingRule?(&v15, &v11, &_sSSSgMd);
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *(v0 + 2);
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
    MEMORY[0x1865CB0E0](v2, v1);
    v3 = *(v0 + 5);
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(v0 + 5);
  if (v3)
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
LABEL_8:
    v4 = *(v0 + 4);
    *&v12 = 58;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v4, v3);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));

LABEL_9:
    v5 = 64;
    v6 = 0xE100000000000000;
LABEL_10:
    MEMORY[0x1865CB0E0](v5, v6);
    goto LABEL_11;
  }

  if (*(v0 + 7) || *(v0 + 9))
  {
    v5 = 12079;
    v6 = 0xE200000000000000;
    goto LABEL_10;
  }

LABEL_11:
  if (*(v0 + 7))
  {
    MEMORY[0x1865CB0E0](*(v0 + 6));
  }

  if (*(v0 + 9))
  {
    v7 = *(v0 + 8);
    *&v12 = 58;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v7);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  MEMORY[0x1865CB0E0](*(v0 + 10), *(v0 + 11));
  if (*(v0 + 13))
  {
    v8 = *(v0 + 12);
    *&v12 = 63;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v8);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  if (*(v0 + 15))
  {
    v9 = *(v0 + 14);
    *&v12 = 35;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v9);
    MEMORY[0x1865CB0E0](v12, *(&v12 + 1));
  }

  return v13;
}

_BYTE *specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(a1, a2, 0);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if ((a3 & 1) == 0)
  {
    if (*(v4 + 72))
    {
      goto LABEL_26;
    }

    v26 = String.subscript.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v26, v27, v29, v31, 2u, 1);
    if (v33 == 2)
    {
      v289 = v26;
      v290 = v28;
      v291 = v30;
      v292 = v32;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v34 = String._bridgeToObjectiveCImpl()();

      v35 = [v34 _fastCharacterContents];
      v36 = v34;
      if (v35)
      {
        v289 = v26;
        v290 = v28;
        v291 = v30;
        v292 = v32;
        StringProtocol._ephemeralString.getter();
        v37 = String._bridgeToObjectiveCImpl()();

        v38 = [v37 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v35, v38, 2u, 1))
        {
          goto LABEL_169;
        }

        goto LABEL_26;
      }

      v33 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v26, v28, v30, v32, 2u, 1);
    }

    v53 = v33;

    if ((v53 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_26:
    if (v5[96])
    {
      goto LABEL_91;
    }

    v54 = String.subscript.getter();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v54, v55, v57, v59, 2u, 1);
    if (v61 == 2)
    {
      v289 = v54;
      v290 = v56;
      v291 = v58;
      v292 = v60;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v62 = String._bridgeToObjectiveCImpl()();

      v63 = [v62 _fastCharacterContents];
      v64 = v62;
      if (v63)
      {
        v289 = v54;
        v290 = v56;
        v291 = v58;
        v292 = v60;
        StringProtocol._ephemeralString.getter();
        v65 = String._bridgeToObjectiveCImpl()();

        v66 = [v65 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v63, v66, 2u, 1))
        {
          goto LABEL_169;
        }

        goto LABEL_91;
      }

      v61 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v54, v56, v58, v60, 2u, 1);
    }

    v153 = v61;

    if ((v153 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_91:
    if ((v5[120] & 1) == 0)
    {
      v154 = String.subscript.getter();
      v158 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v154, v155, v156, v157, v5[217]);

      if ((v158 & 1) == 0)
      {
        goto LABEL_169;
      }
    }

    if (v5[168])
    {
      v159 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v159 = String.subscript.getter();
    }

    v163 = v159;
    v164 = v160;
    v165 = v161;
    v166 = v162;
    v167 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v159, v160, v161, v162, 0x10u, 1);
    if (v167 == 2)
    {
      v289 = v163;
      v290 = v164;
      v291 = v165;
      v292 = v166;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v168 = String._bridgeToObjectiveCImpl()();

      v169 = [v168 _fastCharacterContents];
      v170 = v168;
      if (v169)
      {
        v289 = v163;
        v290 = v164;
        v291 = v165;
        v292 = v166;
        StringProtocol._ephemeralString.getter();
        v171 = String._bridgeToObjectiveCImpl()();

        v172 = [v171 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v169, v172, 0x10u, 1))
        {
          goto LABEL_169;
        }

LABEL_102:
        if (v5[192])
        {
          goto LABEL_111;
        }

        v174 = String.subscript.getter();
        v176 = v175;
        v178 = v177;
        v180 = v179;
        v181 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v174, v175, v177, v179, 0x40u, 1);
        if (v181 == 2)
        {
          v289 = v174;
          v290 = v176;
          v291 = v178;
          v292 = v180;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          StringProtocol._ephemeralString.getter();
          v182 = String._bridgeToObjectiveCImpl()();

          v183 = [v182 _fastCharacterContents];
          v184 = v182;
          if (v183)
          {
            v289 = v174;
            v290 = v176;
            v291 = v178;
            v292 = v180;
            StringProtocol._ephemeralString.getter();
            v185 = String._bridgeToObjectiveCImpl()();

            v186 = [v185 length];
            swift_unknownObjectRelease();
            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v183, v186, 0x40u, 1))
            {
              goto LABEL_169;
            }

LABEL_111:
            if (v5[216])
            {
              return v5;
            }

            v190 = String.subscript.getter();
            v192 = v191;
            v194 = v193;
            v196 = v195;
            v197 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v190, v191, v193, v195, 0x40u, 1);
            if (v197 == 2)
            {
              v289 = v190;
              v290 = v192;
              v291 = v194;
              v292 = v196;
              lazy protocol witness table accessor for type Substring and conformance Substring();
              StringProtocol._ephemeralString.getter();
              v198 = String._bridgeToObjectiveCImpl()();

              v199 = [v198 _fastCharacterContents];
              v200 = v198;
              if (v199)
              {
                v289 = v190;
                v290 = v192;
                v291 = v194;
                v292 = v196;
                StringProtocol._ephemeralString.getter();
                v201 = String._bridgeToObjectiveCImpl()();

                v202 = [v201 length];
                swift_unknownObjectRelease();
                if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v199, v202, 0x40u, 1))
                {
                  return v5;
                }

                goto LABEL_169;
              }

              v197 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v190, v192, v194, v196, 0x40u, 1);
            }

            v279 = v197;

            if (v279)
            {
              return v5;
            }

            goto LABEL_169;
          }

          v181 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v174, v176, v178, v180, 0x40u, 1);
        }

        v189 = v181;

        if (v189)
        {
          goto LABEL_111;
        }

LABEL_169:

        return 0;
      }

      v167 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v163, v164, v165, v166, 0x10u, 1);
    }

    v173 = v167;

    if ((v173 & 1) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_102;
  }

  if (*(v4 + 72))
  {
    v6 = 0;
    v7 = 0;
    if (*(v4 + 96))
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v12 = String.subscript.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 = 0;
  v19 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v12, v13, v15, v17, 2u, 1);
  if (v19 == 2)
  {
    v289 = v12;
    v290 = v14;
    v291 = v16;
    v292 = v18;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v20 = String._bridgeToObjectiveCImpl()();

    v21 = [v20 _fastCharacterContents];
    v22 = v20;
    if (v21)
    {
      v289 = v12;
      v290 = v14;
      v291 = v16;
      v292 = v18;
      StringProtocol._ephemeralString.getter();
      v23 = String._bridgeToObjectiveCImpl()();

      v24 = [v23 length];
      swift_unknownObjectRelease();
      v25 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v21, v24, 2u, 1);
      goto LABEL_19;
    }

    v19 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v12, v14, v16, v18, 2u, 1);
  }

  v25 = v19;

LABEL_19:
  v6 = !v25;
  if (v5[96])
  {
LABEL_5:
    if (v5[120])
    {
      goto LABEL_6;
    }

LABEL_36:
    v67 = String.subscript.getter();
    v71 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v67, v68, v69, v70, v5[217]);

    if ((v71 & 1) == 0)
    {
      v6 |= 4u;
    }

    if (v5[168])
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_20:
  v39 = String.subscript.getter();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v39, v40, v42, v44, 2u, 1);
  if (v46 == 2)
  {
    LODWORD(v284) = v6;
    v289 = v39;
    v290 = v41;
    v291 = v43;
    v292 = v45;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v47 = String._bridgeToObjectiveCImpl()();

    v48 = [v47 _fastCharacterContents];
    v49 = v47;
    if (v48)
    {
      v289 = v39;
      v290 = v41;
      v291 = v43;
      v292 = v45;
      StringProtocol._ephemeralString.getter();
      v50 = String._bridgeToObjectiveCImpl()();

      v51 = [v50 length];
      swift_unknownObjectRelease();
      v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v48, v51, 2u, 1);
    }

    else
    {
      v52 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v39, v41, v43, v45, 2u, 1);
    }

    v6 = v284;
  }

  else
  {
    v52 = v46;
  }

  if ((v52 & 1) == 0)
  {
    v6 |= 2u;
  }

  if ((v5[120] & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  if (v5[168])
  {
LABEL_7:
    v8 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    goto LABEL_40;
  }

LABEL_39:
  v8 = String.subscript.getter();
LABEL_40:
  v72 = v8;
  v73 = v9;
  v74 = v10;
  v75 = v11;
  v76 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v8, v9, v10, v11, 0x10u, 1);
  if (v76 == 2)
  {
    v284 = 0;
    v77 = v6;
    v289 = v72;
    v290 = v73;
    v291 = v74;
    v292 = v75;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v78 = String._bridgeToObjectiveCImpl()();

    v79 = [v78 _fastCharacterContents];
    v80 = v78;
    if (v79)
    {
      v289 = v72;
      v290 = v73;
      v291 = v74;
      v292 = v75;
      StringProtocol._ephemeralString.getter();
      v81 = String._bridgeToObjectiveCImpl()();

      v82 = [v81 length];
      swift_unknownObjectRelease();
      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v79, v82, 0x10u, 1);
    }

    else
    {
      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v72, v73, v74, v75, 0x10u, 1);
    }

    v6 = v77;
    v7 = v284;
  }

  else
  {
    v83 = v76;
  }

  if (v83)
  {
    v84 = v6;
  }

  else
  {
    v84 = v6 | 8;
  }

  if ((v5[192] & 1) == 0)
  {
    v85 = String.subscript.getter();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v85, v86, v88, v90, 0x40u, 1);
    if (v92 == 2)
    {
      v284 = v7;
      v289 = v85;
      v290 = v87;
      v291 = v89;
      v292 = v91;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v93 = String._bridgeToObjectiveCImpl()();

      v94 = [v93 _fastCharacterContents];
      v95 = v93;
      if (v94)
      {
        v289 = v85;
        v290 = v87;
        v291 = v89;
        v292 = v91;
        StringProtocol._ephemeralString.getter();
        v96 = String._bridgeToObjectiveCImpl()();

        v97 = [v96 length];
        swift_unknownObjectRelease();
        v98 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v94, v97, 0x40u, 1);
      }

      else
      {
        v98 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v85, v87, v89, v91, 0x40u, 1);
      }

      v7 = v284;
    }

    else
    {
      v98 = v92;
    }

    if ((v98 & 1) == 0)
    {
      v84 |= 0x10u;
    }
  }

  if ((v5[216] & 1) == 0)
  {
    v99 = String.subscript.getter();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v99, v100, v102, v104, 0x40u, 1);
    if (v106 != 2)
    {
      v112 = v106;

      if ((v112 & 1) == 0)
      {
        v84 |= 0x20u;
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v289 = v99;
    v290 = v101;
    v291 = v103;
    v292 = v105;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v107 = String._bridgeToObjectiveCImpl()();

    v108 = [v107 _fastCharacterContents];
    v109 = v107;
    if (v108)
    {
      v289 = v99;
      v290 = v101;
      v291 = v103;
      v292 = v105;
      StringProtocol._ephemeralString.getter();
      v110 = String._bridgeToObjectiveCImpl()();

      v111 = [v110 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v108, v111, 0x40u, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v113 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v99, v101, v103, v105, 0x40u, 1);

      if (v113)
      {
        goto LABEL_59;
      }
    }

    v84 |= 0x20u;
    goto LABEL_69;
  }

LABEL_59:
  if (!v84)
  {
    return v5;
  }

LABEL_69:
  v287 = 0;
  v288 = 0xE000000000000000;
  if ((v5[48] & 1) == 0)
  {
    v114 = String.subscript.getter();
    v115 = MEMORY[0x1865CAE80](v114);
    v117 = v116;

    v289 = v115;
    v290 = v117;
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v115, v117);
  }

  v118 = v5[72];
  LODWORD(v284) = v84;
  if (v118 != 1 || v5[96] != 1 || v5[120] != 1 || (v5[144] & 1) == 0)
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
    if (v5[72])
    {
LABEL_121:
      if (v5[120])
      {
        goto LABEL_130;
      }

      v204 = String.subscript.getter();
      if ((v84 & 4) == 0)
      {
        v289 = v204;
        v290 = v205;
        v291 = v206;
        v292 = v207;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();
LABEL_129:

        goto LABEL_130;
      }

      if (!((v204 ^ v205) >> 14))
      {

        v208 = 0;
        v209 = 0xE000000000000000;
LABEL_128:
        MEMORY[0x1865CB0E0](v208, v209);
        goto LABEL_129;
      }

      v210 = _s10Foundation13RFC3986ParserV17percentEncodeHost33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSSgxSg_SbtSyRzlFZSs_Tt1g5(v204, v205, v206, v207, 1);
      v209 = v211;

      if (v209)
      {
        v208 = v210;
        goto LABEL_128;
      }

      return 0;
    }

    v119 = String.subscript.getter();
    v123 = v122;
    if (v84)
    {
      if ((v119 ^ v120) >= 0x4000)
      {
        v289 = v119;
        v290 = v120;
        v291 = v121;
        v292 = v122;
        MEMORY[0x1EEE9AC00](v119);
        v282 = &v289;
        v283 = 258;
        v127 = v126;
        v129 = v128;
        v131 = v130;

        v132 = v131;
        v133 = v131;
        v134 = v129;
        v135 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v127, v133, v129, v123);
        v125 = v136;

        if (!v125)
        {

          v135 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v127, v132, v134, v123, 2u, 1);
          v125 = v137;
        }

        v124 = v135;
        LOBYTE(v84) = v284;
      }

      else
      {
        v124 = 0;
        v125 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v124, v125);

      if (v5[96])
      {
        goto LABEL_120;
      }
    }

    else
    {
      v289 = v119;
      v290 = v120;
      v291 = v121;
      v292 = v122;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();
      if (v5[96])
      {
LABEL_120:

        MEMORY[0x1865CB0E0](64, 0xE100000000000000);
        goto LABEL_121;
      }
    }

    v138 = String.subscript.getter();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    if ((v84 & 2) != 0)
    {

      v285 = 58;
      v286 = 0xE100000000000000;
      if ((v138 ^ v140) >> 14)
      {
        v289 = v138;
        v290 = v140;
        v291 = v142;
        v292 = v144;
        MEMORY[0x1EEE9AC00](v150);
        v282 = &v289;
        v283 = 258;

        v187 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v138, v140, v142, v144);
        v152 = v188;

        if (v152)
        {
        }

        else
        {

          v187 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v138, v140, v142, v144, 2u, 1);
          v152 = v203;
          swift_bridgeObjectRelease_n();
        }

        v151 = v187;
        LOBYTE(v84) = v284;
      }

      else
      {

        v151 = 0;
        v152 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v151, v152);

      v148 = v285;
      v149 = v286;
    }

    else
    {

      v289 = 58;
      v290 = 0xE100000000000000;
      v145 = MEMORY[0x1865CAE80](v138, v140, v142, v144);
      v147 = v146;

      MEMORY[0x1865CB0E0](v145, v147);

      v148 = v289;
      v149 = v290;
    }

    MEMORY[0x1865CB0E0](v148, v149);
    goto LABEL_120;
  }

LABEL_130:
  if ((v5[144] & 1) == 0)
  {
    v212 = String.subscript.getter();
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v289 = v212;
    v290 = v213;
    v291 = v215;
    v292 = v217;
    MEMORY[0x1EEE9AC00](v212);
    v282 = &v289;
    v283 = 320;

    v219 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v212, v214, v216, v218);
    v221 = v220;

    if (v221)
    {
    }

    else
    {

      v219 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v212, v214, v216, v218, 0x40u, 1);
      v221 = v222;
      swift_bridgeObjectRelease_n();
    }

    v289 = 58;
    v290 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v219, v221);

    MEMORY[0x1865CB0E0](v289, v290);

    LOBYTE(v84) = v284;
  }

  if (v5[168])
  {
    v223 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v223 = String.subscript.getter();
  }

  v227 = v223;
  v228 = v224;
  v229 = v225;
  v230 = v226;
  if ((v84 & 8) != 0)
  {
    v289 = v223;
    v290 = v224;
    v291 = v225;
    v292 = v226;
    MEMORY[0x1EEE9AC00](v223);
    v282 = &v289;
    v283 = 272;

    v231 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v227, v228, v229, v230);
    v233 = v232;

    if (!v233)
    {

      v231 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v227, v228, v229, v230, 0x10u, 1);
      v233 = v234;
    }

    MEMORY[0x1865CB0E0](v231, v233);

    LOBYTE(v84) = v284;
    if (v5[192])
    {
      goto LABEL_154;
    }

    goto LABEL_144;
  }

  v289 = v223;
  v290 = v224;
  v291 = v225;
  v292 = v226;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  if ((v5[192] & 1) == 0)
  {
LABEL_144:
    v235 = String.subscript.getter();
    v239 = v238;
    if ((v84 & 0x10) != 0)
    {
      v285 = 63;
      v286 = 0xE100000000000000;
      if ((v235 ^ v236) >> 14)
      {
        v289 = v235;
        v290 = v236;
        v291 = v237;
        v292 = v238;
        MEMORY[0x1EEE9AC00](v235);
        v282 = &v289;
        v283 = 320;
        v248 = v247;
        v250 = v249;
        v252 = v251;

        v253 = v248;
        v254 = v252;
        v255 = v252;
        v256 = v250;
        v257 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v281, v248, v255, v250, v239);
        v246 = v258;

        if (v246)
        {
        }

        else
        {

          v257 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v253, v254, v256, v239, 0x40u, 1);
          v246 = v259;
          swift_bridgeObjectRelease_n();
        }

        v245 = v257;
        LOBYTE(v84) = v284;
      }

      else
      {

        v245 = 0;
        v246 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v245, v246);

      v243 = v285;
      v244 = v286;
    }

    else
    {
      v289 = 63;
      v290 = 0xE100000000000000;
      v240 = MEMORY[0x1865CAE80](v235);
      v242 = v241;

      MEMORY[0x1865CB0E0](v240, v242);

      v243 = v289;
      v244 = v290;
    }

    MEMORY[0x1865CB0E0](v243, v244);
  }

LABEL_154:
  if ((v5[216] & 1) == 0)
  {
    v260 = String.subscript.getter();
    v262 = v261;
    v264 = v263;
    v266 = v265;
    if ((v84 & 0x20) != 0)
    {

      v285 = 35;
      v286 = 0xE100000000000000;
      if ((v260 ^ v262) >> 14)
      {
        v289 = v260;
        v290 = v262;
        v291 = v264;
        v292 = v266;
        MEMORY[0x1EEE9AC00](v272);
        v282 = &v289;
        v283 = 320;

        v275 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(_sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645015forURLComponent18skipAlreadyEncodedSSAA0M3SetACLLV_SbtFSSSRys5UInt8VGXEfU_Ss_TG5TA_0, v281, v260, v262, v264, v266);
        v274 = v276;

        if (v274)
        {
        }

        else
        {

          v275 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v260, v262, v264, v266, 0x40u, 1);
          v274 = v277;
          swift_bridgeObjectRelease_n();
        }

        v273 = v275;
      }

      else
      {

        v273 = 0;
        v274 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v273, v274);

      v270 = v285;
      v271 = v286;
    }

    else
    {

      v289 = 35;
      v290 = 0xE100000000000000;
      v267 = MEMORY[0x1865CAE80](v260, v262, v264, v266);
      v269 = v268;

      MEMORY[0x1865CB0E0](v267, v269);

      v270 = v289;
      v271 = v290;
    }

    MEMORY[0x1865CB0E0](v270, v271);
  }

  v278 = specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(v287, v288, v84);

  return v278;
}