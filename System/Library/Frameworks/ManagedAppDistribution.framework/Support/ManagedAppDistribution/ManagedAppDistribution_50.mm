id sub_10060BA1C(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() metadataFromPlistAtURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id sub_10060BB74()
{
  v1 = [v0 iTunesMetadata];
  v2 = &selRef_versionIdentifier;
  v3 = [v1 versionIdentifier];

  v4 = [v0 iTunesMetadata];
  v5 = v4;
  if (!v3)
  {
    v6 = [v4 betaVersionIdentifier];

    if (!v6)
    {
      return 0;
    }

    v5 = [v0 iTunesMetadata];
    v2 = &selRef_betaVersionIdentifier;
  }

  v7 = [v5 *v2];

  return v7;
}

uint64_t sub_10060BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v35 = a3;
  v36 = a5;
  v33 = a1;
  v34 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v31 - v9;
  v11 = sub_1001F0C48(&unk_10077F8E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v31 - v16;
  __chkstk_darwin(v15);
  v19 = v31 - v18;
  (*(v6 + 56))(v31 - v18, 1, 1, v5);
  v32 = v19;
  sub_10060A8A4(v19, v17);
  type metadata accessor for LogActivity();
  v20 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v21 = _os_activity_create(&_mh_execute_header, "LSApplicationRecord", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  swift_unknownObjectRelease();
  v20[1] = state;
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1007B88E0;
  TaskLocal.get()();
  v22 = state.opaque[1];
  if (state.opaque[1])
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v22 = swift_allocObject();
    *(v22 + 24) = 0;
    *(v22 + 16) = 0;
  }

  type metadata accessor for Transaction();
  v23 = swift_allocObject();

  *(v23 + 16) = StaticString.description.getter();
  *(v23 + 24) = v24;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v23);
  os_unfair_lock_unlock(&dword_100788650);
  sub_10060A8A4(v17, v14);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000032A8(v17, &unk_10077F8E0);

    v25 = 0;
  }

  else
  {
    (*(v6 + 32))(v10, v14, v5);
    v26 = v31[0];
    (*(v6 + 16))(v31[0], v10, v5);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v25 = sub_1005AD4D8("LSApplicationRecord", 19, 2, v26);

    (*(v6 + 8))(v10, v5);
    sub_1000032A8(v17, &unk_10077F8E0);
  }

  state.opaque[0] = v20;
  state.opaque[1] = v22;
  v39 = v23;
  v40 = v25;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78);
  swift_task_localValuePush();
  os_unfair_lock_lock((v22 + 24));
  v27 = *(v22 + 16);
  v28 = v27;
  os_unfair_lock_unlock((v22 + 24));
  if (v27)
  {
    sub_100625B04();
  }

  sub_10060DFD4(v33, v34, v36, v35, v37, &state);
  v29 = state.opaque[0];
  swift_task_localValuePop();

  sub_1000032A8(v32, &unk_10077F8E0);
  return v29;
}

uint64_t sub_10060C1F4()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_10060C284, 0, 0);
}

void sub_10060C284()
{
  v1 = [*(v0 + 24) bundleIdentifier];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = sub_10060D18C();
  if (v3)
  {
    v4 = v3;
    [v3 setManagementDeclarationIdentifier:0];
    v5 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v2];

    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = objc_opt_self();
    *(v0 + 16) = 0;
    v7 = [v6 updateiTunesMetadata:v4 forAppWithIdentity:v5 error:v0 + 16];

    v8 = *(v0 + 16);
    if (!v7)
    {
      v11 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v10 = *(v0 + 8);
      goto LABEL_8;
    }

    v9 = v8;
    v2 = v4;
  }

  v10 = *(v0 + 8);
LABEL_8:

  v10();
}

uint64_t sub_10060C41C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_10060C4B0, 0, 0);
}

uint64_t sub_10060C4B0()
{
  v1 = [*(v0 + 40) bundleIdentifier];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = sub_10060D18C();
  if (v3)
  {
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v6 = *(v0 + 40);
    v5 = [objc_allocWithZone(MIStoreMetadata) init];
    [v5 setSoftwareVersionBundleID:v2];

    v7 = [v6 bundleVersion];
    [v5 setBundleVersion:v7];

    v8 = [v6 shortVersionString];
    [v5 setBundleShortVersionString:v8];

    v4 = 0;
  }

  v9 = v4;
  v10 = String._bridgeToObjectiveC()();
  [v5 setManagementDeclarationIdentifier:v10];

  v11 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v2];
  if (!v11)
  {
LABEL_13:
    __break(1u);
  }

  v12 = objc_opt_self();
  *(v0 + 16) = 0;
  v13 = [v12 updateiTunesMetadata:v5 forAppWithIdentity:v11 error:v0 + 16];

  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v17 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10060C720(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  v2 = objc_autoreleasePoolPush();
  sub_10060E508(0, 0, 0, sub_10060F83C, v4, &v5);
  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t sub_10060C798()
{
  v1 = [v0 iTunesMetadata];
  v2 = [v1 distributorInfo];

  v3 = [v2 distributorID];
  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v0 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v6)
    {
      if (v11)
      {
        if (v4 == v9 && v6 == v11)
        {

          v12 = 1;
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v11)
    {
      v12 = 0;
      goto LABEL_16;
    }
  }

  else if (v6)
  {
LABEL_11:
    v12 = 0;
LABEL_16:

    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_10060C8EC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = __chkstk_darwin(v2);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = &v52 - v5;
  v6 = type metadata accessor for URL.DirectoryHint();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v54 = &v52 - v17;
  v18 = sub_1001F0C48(&unk_1007809F0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  v24 = [v1 executableURL];
  if (v24)
  {
    v25 = v24;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v21, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v21, 1, 1, v9);
  }

  v26 = v9;
  sub_1002321B0(v21, v23);
  v27 = (*(v10 + 48))(v23, 1, v9);
  v28 = v57;
  if (v27 == 1)
  {
    sub_1000032A8(v23, &unk_1007809F0);
    static Logger.ald.getter();
    v29 = v1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v32 = 138412546;
      v35 = sub_100625FA0();
      *(v32 + 4) = v35;
      *v33 = v35;
      *(v32 + 12) = 2082;
      v36 = v29;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1002346CC(v38, v40, &v58);

      *(v32 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Unable to find an executable name for %{public}s", v32, 0x16u);
      sub_1000032A8(v33, &qword_10077F920);

      sub_10000710C(v34);
    }

    (*(v55 + 8))(v28, v56);
    return 0;
  }

  else
  {
    v57 = URL.lastPathComponent.getter();
    v43 = v42;
    v44 = *(v10 + 8);
    v44(v23, v26);
    v45 = [v1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001F0C48(&qword_100784460);
    v46 = swift_allocObject();
    v47 = v26;
    *(v46 + 16) = xmmword_10069F6E0;
    *(v46 + 32) = 0x6F666E495F4353;
    *(v46 + 40) = 0xE700000000000000;
    *(v46 + 48) = v57;
    *(v46 + 56) = v43;
    v48 = v53;
    (*(v53 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_100005E50();
    URL.appending<A>(components:directoryHint:)();

    (*(v48 + 8))(v8, v6);
    v44(v13, v26);
    v49 = v54;
    URL.appendingPathExtension(_:)();
    v44(v16, v47);
    v50 = Data.init(contentsOf:options:)();
    v44(v49, v47);
    return v50;
  }
}

id sub_10060D18C()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v25 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v25 - v14;
  __chkstk_darwin(v13);
  v17 = v25 - v16;
  v18 = [v0 bundleContainerURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v17, v15, v5);
    v25[2] = 0xD000000000000014;
    v25[3] = 0x80000001006C46D0;
    (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v2 + 8))(v4, v1);
    v20 = URL.checkResourceIsReachable()();
    if (v21)
    {
    }

    else if (v20)
    {
      sub_100006190(0, &qword_1007813E0);
      (*(v6 + 16))(v9, v12, v5);
      v22 = sub_10060BA1C(v9);
      goto LABEL_9;
    }

    v22 = 0;
LABEL_9:
    v23 = *(v6 + 8);
    v23(v12, v5);
    v23(v17, v5);
    return v22;
  }

  return 0;
}

id sub_10060D498()
{
  result = [swift_getObjCClassFromMetadata() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 isVersion:v2 greaterThanOrEqualToVersion:v3];

    return (v4 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10060D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

void sub_10060D860()
{
  v0 = [swift_getObjCClassFromMetadata() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 createDeviceIdentifierWithVendorName:v2 bundleIdentifier:v3];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10060D950()
{
  v0 = [swift_getObjCClassFromMetadata() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    [v1 removeDeviceIdentifierForVendorName:v2 bundleIdentifier:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10060DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v37 = a4;
  v38 = a2;
  v36 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v32 - v8;
  v9 = sub_1001F0C48(&unk_10077F8E0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  (*(v5 + 56))(&v32 - v16, 1, 1, v4);
  v35 = v17;
  sub_10060A8A4(v17, v15);
  type metadata accessor for LogActivity();
  v18 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v19 = _os_activity_create(&_mh_execute_header, "LSApplicationRecord", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  swift_unknownObjectRelease();
  v18[1] = state;
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v20 = state.opaque[1];
  if (state.opaque[1])
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    *(v20 + 16) = 0;
  }

  type metadata accessor for Transaction();
  v21 = swift_allocObject();

  *(v21 + 16) = StaticString.description.getter();
  *(v21 + 24) = v22;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  v23 = 0;
  sub_1005B8C24(&off_100788658, v21);
  os_unfair_lock_unlock(&dword_100788650);
  sub_10060A8A4(v15, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1000032A8(v15, &unk_10077F8E0);

    v24 = 0;
  }

  else
  {
    v25 = *(v5 + 32);
    v32 = 0;
    v26 = v34;
    v25(v34, v12, v4);
    v27 = v33;
    (*(v5 + 16))(v33, v26, v4);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v24 = sub_1005AD4D8("LSApplicationRecord", 19, 2, v27);

    v23 = v32;
    (*(v5 + 8))(v26, v4);
    sub_1000032A8(v15, &unk_10077F8E0);
  }

  state.opaque[0] = v18;
  state.opaque[1] = v20;
  v41 = v21;
  v42 = v24;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78);
  swift_task_localValuePush();
  os_unfair_lock_lock((v20 + 24));
  v28 = *(v20 + 16);
  v29 = v28;
  os_unfair_lock_unlock((v20 + 24));
  if (v28)
  {
    sub_100625B04();
  }

  sub_10060E20C(v37, v36, v38, v39, &state);
  if (v23)
  {

    result = swift_task_localValuePop();
    __break(1u);
  }

  else
  {
    v30 = state.opaque[0];
    swift_task_localValuePop();

    sub_1000032A8(v35, &unk_10077F8E0);
    return v30;
  }

  return result;
}

void sub_10060DFD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  objc_allocWithZone(swift_getObjCClassFromMetadata());

  v13 = sub_10033ADB0(a1, a2, a3);
  if (v6)
  {

    v14 = 0;
  }

  else
  {
    v14 = v13;
    v15 = sub_10060E0A0(a4, a5);

    if ((v15 & 1) == 0)
    {

      v14 = 0;
    }
  }

  *a6 = v14;
}

uint64_t sub_10060E0A0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 == 1)
  {
    v3 = [v2 identities];
    sub_100006190(0, &qword_100789CA0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_19:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v9 = [v7 personaType];

      if (v9 == 1)
      {

        return 1;
      }
    }

    return 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v2 personaIsApplicable:v10];

    return v11;
  }
}

void sub_10060E20C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v15[2] = a2;
    v10 = sub_10060E3C4(v7, v8, v9, sub_10060F7DC, v15);
  }

  else
  {
    v16 = 0;
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStoreItemIdentifier:a2 error:&v16];
    v13 = v16;
    if (v10)
    {
      if ((sub_10060E0A0(a3, a4) & 1) == 0)
      {

        v10 = 0;
      }
    }

    else
    {
      v14 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v10 = 0;
    }
  }

  *a5 = v10;
}

BOOL sub_10060E368(void *a1, id a2)
{
  v3 = [a1 iTunesMetadata];
  v4 = [v3 storeItemIdentifier];

  return v4 == a2;
}

uint64_t sub_10060E3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  sub_10060E508(a3, a1, a2, a4, a5, &v12);
  objc_autoreleasePoolPop(v10);
  return v12;
}

uint64_t sub_10060E44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10060D18C();
  if (v5 && (v6 = v5, v7 = [v5 managementDeclarationIdentifier], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a2 && v10 == a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10060E508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(id)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v52 = a4;
  v53 = a5;
  v49 = a2;
  v43 = a6;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  v46 = a1;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      goto LABEL_80;
    }

    v12 = 64;
  }

  else if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      goto LABEL_80;
    }

    v12 = 128;
  }

  else
  {
    v12 = 192;
  }

  v13 = [swift_getObjCClassFromMetadata() enumeratorWithOptions:v12];
  NSEnumerator.makeIterator()();
  v44 = v13;

  v14 = sub_10060F7E4();
  dispatch thunk of IteratorProtocol.next()();
  if (!v56)
  {
    v51 = _swiftEmptyArrayStorage;
LABEL_39:
    (*(v45 + 8))(v10, v8);
    sub_1000032A8(&v55, &qword_100783A30);
    v19 = sub_100235B70(v51);

    if (v46 == 2)
    {
      if (v19 >> 62)
      {
        goto LABEL_73;
      }

      v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_76;
      }

      goto LABEL_42;
    }

    if (v19 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (!v37)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v37 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_76;
      }
    }

    v38 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v39 = *(v19 + 8 * v38 + 32);
      }

      v35 = v39;
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_69;
      }

      if (v52(v39))
      {
        break;
      }

      ++v38;
      if (v40 == v37)
      {
        goto LABEL_76;
      }
    }

LABEL_66:

LABEL_77:
    *v43 = v35;
    return result;
  }

  v50 = v10;
  v51 = _swiftEmptyArrayStorage;
  v47 = a3;
  v48 = v8;
  while (1)
  {
    sub_1001F6498(&v55, v57);
    sub_10020A6D0(v57, &v55);
    sub_100006190(0, &qword_100784500);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_10000710C(v57);
LABEL_11:
    dispatch thunk of IteratorProtocol.next()();
    if (!v56)
    {
      goto LABEL_39;
    }
  }

  v15 = v14;
  v16 = v54;
  if (!a3)
  {
    goto LABEL_30;
  }

  if (a3 != 1)
  {
    v24 = String._bridgeToObjectiveC()();
    v25 = [v16 personaIsApplicable:v24];

    if ((v25 & 1) == 0)
    {
LABEL_29:

LABEL_36:
      sub_10000710C(v57);
      v14 = v15;
      goto LABEL_11;
    }

LABEL_30:
    v26 = v52(v16);

    if (v26)
    {
      sub_1001F6498(v57, &v55);
      v27 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v27;
      v14 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1005263EC(0, v27[2] + 1, 1);
        v27 = v58;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        sub_1005263EC((v29 > 1), v30 + 1, 1);
        v27 = v58;
      }

      v27[2] = v30 + 1;
      v51 = v27;
      sub_1001F6498(&v55, &v27[4 * v30 + 4]);
      v10 = v50;
      goto LABEL_11;
    }

    goto LABEL_36;
  }

  v17 = [v54 identities];
  sub_100006190(0, &qword_100789CA0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  while (1)
  {
    if (v19 == v20)
    {

      a3 = v47;
      v8 = v48;
      v10 = v50;
      goto LABEL_29;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v23 = [v21 personaType];

    ++v20;
    if (v23 == 1)
    {

      a3 = v47;
      v8 = v48;
      v10 = v50;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  v31 = _CocoaArrayWrapper.endIndex.getter();
  if (!v31)
  {
LABEL_76:

    v35 = 0;
    goto LABEL_77;
  }

LABEL_42:
  v32 = 0;
  v33 = v19 & 0xC000000000000001;
  do
  {
    if (v33)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v32 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v34 = *(v19 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_70;
    }

    if ([v34 isPlaceholder])
    {
      goto LABEL_66;
    }

    ++v32;
  }

  while (v36 != v31);
  if (v33)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_65;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v19 + 32);
LABEL_65:
    v35 = v41;
    goto LABEL_66;
  }

  __break(1u);
LABEL_80:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10060EB8C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  (*(v8 + 16))(v10, a1, v7);
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10060D54C(v10, v6, v13);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  (*(v15 + 8))(v13, v14);
  v27 = 0;
  v20 = [v16 initWithURL:v19 fetchingPlaceholder:v26 error:&v27];

  if (v20)
  {
    v21 = *(v8 + 8);
    v22 = v27;
    v21(a1, v7);
  }

  else
  {
    v23 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v8 + 8))(a1, v7);
  }

  return v20;
}

uint64_t sub_10060EEE4(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = *a3;

  v44 = v7;

  v11 = sub_10052213C(v5, v4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v10[3] < v16)
  {
    sub_1005BB180(v16, a2 & 1);
    v11 = sub_10052213C(v5, v4);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_1005C4AE8();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v5;
  v22[1] = v4;
  v23 = (v21[7] + 32 * v11);
  *v23 = v6;
  v23[1] = v44;
  v23[2] = v8;
  v23[3] = v9;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x80000001006C4E90;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v17 = a1 + 15;
    v6 = 1;
    while (v6 < a1[2])
    {
      v5 = *(v17 - 5);
      v4 = *(v17 - 4);
      v27 = *(v17 - 3);
      v26 = *(v17 - 2);
      v8 = *(v17 - 1);
      v9 = *v17;
      v28 = *a3;

      v44 = v26;

      v29 = sub_10052213C(v5, v4);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      a2 = v30;
      if (v28[3] < v33)
      {
        sub_1005BB180(v33, 1);
        v29 = sub_10052213C(v5, v4);
        if ((a2 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a2)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v5;
      v36[1] = v4;
      v37 = (v35[7] + 32 * v29);
      *v37 = v27;
      v37[1] = v26;
      v37[2] = v8;
      v37[3] = v9;
      v38 = v35[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v6;
      v35[2] = v39;
      v17 += 6;
      if (v42 == v6)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_10060F2D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100526470(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      aBlock = v6;
      v50 = v5;
      swift_bridgeObjectRetain_n();

      v9._countAndFlagsBits = 58;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      String.append(_:)(v10);
      v55 = v3;
      v11 = v3[2];
      v12 = v3[3];
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        sub_100526470((v12 > 1), v11 + 1, 1);
        v13 = v11 + 1;
        v3 = v55;
      }

      v3[2] = v13;
      v14 = &v3[6 * v11];
      v14[4] = v6;
      v14[5] = v5;
      v14[6] = v6;
      v14[7] = v5;
      v14[8] = v7;
      v14[9] = v8;
      v4 += 4;
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  if (_swiftEmptyArrayStorage[2])
  {
LABEL_8:
    sub_1001F0C48(&qword_1007887C0);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_9;
  }

  v15 = &_swiftEmptyDictionarySingleton;
LABEL_9:
  aBlock = v15;

  sub_10060EEE4(v16, 1, &aBlock);

  v17 = aBlock;
  v18 = [objc_opt_self() enumeratorWithOptions:192];
  v53 = sub_10060EEBC;
  v54 = 0;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100009BE4;
  v52 = &unk_10076F098;
  v19 = _Block_copy(&aBlock);
  [v18 setFilter:v19];
  _Block_release(v19);
  p_name = &stru_100779FF8.name;
  v21 = [v18 nextObject];
  if (v21)
  {
    v22 = v21;
    v23 = &stru_100779FF8.name;
    do
    {
      v24 = [v22 v23[62]];
      v25 = [v24 distributorInfo];

      v26 = [v25 accountID];
      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = [v22 v23[62]];
        v31 = [v30 distributorInfo];

        v32 = [v31 domain];
        if (v32)
        {
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v18;
          v35 = v23;
          v36 = p_name;
          v38 = v37;

          aBlock = v27;
          v50 = v29;
          v39._countAndFlagsBits = 58;
          v39._object = 0xE100000000000000;
          String.append(_:)(v39);
          v40._countAndFlagsBits = v33;
          v40._object = v38;
          String.append(_:)(v40);
          p_name = v36;
          v23 = v35;
          v18 = v34;

          v41 = sub_10052213C(aBlock, v50);
          LOBYTE(v33) = v42;

          if (v33)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v17;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1005C4AE8();
              v17 = aBlock;
            }

            sub_1005C069C(v41, v17);

            v44 = [v18 p_name[115]];
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v44 = [v18 p_name[115]];
LABEL_19:
      v22 = v44;
    }

    while (v22);
  }

  v45 = v17[2];
  if (!v45)
  {

    return _swiftEmptyArrayStorage;
  }

  v46 = sub_1003649F4(v17[2], 0);
  v47 = sub_10027A3C4(&aBlock, v46 + 4, v45, v17);

  sub_1001DFE18();
  if (v47 == v45)
  {

    return v46;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_10060F7E4()
{
  result = qword_1007850C8;
  if (!qword_1007850C8)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007850C8);
  }

  return result;
}

uint64_t sub_10060F844()
{
  sub_1001F0C48(&qword_100789CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 88) = 1;
  v4 = type metadata accessor for MarketplaceCertificate();
  v5 = v4[6];
  v6 = type metadata accessor for Date();
  *(inited + 120) = v6;
  *(inited + 128) = sub_10060FABC(&qword_100785A20);
  *(inited + 136) = sub_10060FABC(&qword_100785A40);
  v7 = sub_10020A748((inited + 96));
  (*(*(v6 - 8) + 16))(v7, v0 + v5, v6);
  *(inited + 144) = 2;
  v8 = (v0 + v4[7]);
  v9 = *v8;
  v10 = v8[1];
  *(inited + 176) = &type metadata for Data;
  *(inited + 184) = sub_100329ED8();
  *(inited + 192) = sub_100329F2C();
  *(inited + 152) = v9;
  *(inited + 160) = v10;
  *(inited + 200) = 3;
  v11 = *(v0 + v4[8]);
  *(inited + 232) = &type metadata for Int;
  *(inited + 240) = &protocol witness table for Int;
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 208) = v11;
  *(inited + 256) = 4;
  v12 = (v0 + v4[9]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 288) = &type metadata for String;
  *(inited + 296) = &protocol witness table for String;
  *(inited + 304) = &protocol witness table for String;
  *(inited + 264) = v13;
  *(inited + 272) = v14;

  sub_10020ABFC(v9, v10);

  v15 = sub_100529C60(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100786F48);
  swift_arrayDestroy();
  return sub_1004E774C(v15);
}

uint64_t type metadata accessor for MarketplaceCertificate()
{
  result = qword_100789D08;
  if (!qword_100789D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060FABC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10060FB28()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10060FBC4()
{
  result = qword_100789D50;
  if (!qword_100789D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789D50);
  }

  return result;
}

uint64_t sub_10060FC18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v14;
  *(v8 + 490) = a6;
  *(v8 + 489) = a5;
  *(v8 + 488) = a4;
  *(v8 + 40) = a3;
  *(v8 + 48) = a7;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1001F0C48(&unk_1007809E0);
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for DDMDeclaration(0);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  sub_1001F0C48(&qword_100789DB8);
  *(v8 + 184) = swift_task_alloc();
  v11 = type metadata accessor for AppState();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10060FE88, 0, 0);
}

uint64_t sub_10060FE88()
{
  v112 = v0;
  if ((*(v0 + 489) & 1) == 0)
  {
    v3 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v0 + 232) = v3;
    v4 = sub_1006109DC;
    goto LABEL_5;
  }

  v1 = *(v0 + 488);
  sub_100006190(0, &qword_100784500);
  if (v1)
  {
    v2 = sub_10060BC54(*(v0 + 32), *(v0 + 40), 0, 0, 2);
  }

  else
  {
    v2 = sub_10060DA14(*(v0 + 32), 0, 0, 2);
  }

  v9 = v2;
  *(v0 + 240) = v2;
  if (!v2)
  {
LABEL_14:
    v17 = StoreAppIdentifier.bundleID.getter();
    *(v0 + 472) = v18;
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v22 = *(v0 + 32);
      v21 = *(v0 + 40);
      v23 = *(v0 + 488);
      static Logger.library.getter();
      sub_1001DFDA4(v22, v21, v23 & 1);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      sub_1001DFEBC(v22, v21, v23 & 1);
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 128);
      v28 = *(v0 + 104);
      v29 = *(v0 + 112);
      if (v26)
      {
        v107 = *(v0 + 128);
        v109 = v19;
        v30 = swift_slowAlloc();
        v105 = v28;
        v31 = swift_slowAlloc();
        v111 = v31;
        *v30 = 136315138;
        v32 = StoreAppIdentifier.description.getter();
        v34 = sub_1002346CC(v32, v33, &v111);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: No record, return available and check history", v30, 0xCu);
        sub_10000710C(v31);

        v19 = v109;

        (*(v29 + 8))(v107, v105);
      }

      else
      {

        (*(v29 + 8))(v27, v28);
      }

      v53 = swift_task_alloc();
      *(v0 + 480) = v53;
      *v53 = v0;
      v53[1] = sub_1006153BC;
      v54 = *(v0 + 48);
      v55 = *(v0 + 24);
      v56 = v19;
      v57 = v20;
LABEL_21:

      return sub_100617A10(v55, v56, v57, v54);
    }

    v36 = *(v0 + 56);
    v35 = *(v0 + 64);
    v38 = *(v0 + 32);
    v37 = *(v0 + 40);
    v39 = *(v0 + 488);
    static Logger.library.getter();
    sub_1001DFDA4(v38, v37, v39 & 1);
    sub_100300EC0(v36, v35);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    sub_1001DFEBC(v38, v37, v39 & 1);
    sub_1002706F8(v36, v35);
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 112);
    v43 = *(v0 + 120);
    v45 = *(v0 + 104);
    if (v42)
    {
      v104 = *(v0 + 56);
      v106 = *(v0 + 64);
      v108 = *(v0 + 104);
      v46 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v46 = 136315394;
      v47 = StoreAppIdentifier.description.getter();
      v49 = sub_1002346CC(v47, v48, &v111);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = sub_100617150(v104, v106);
      v52 = sub_1002346CC(v50, v51, &v111);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s: No record nor bundle ID in library %s, return available", v46, 0x16u);
      swift_arrayDestroy();

      (*(v44 + 8))(v43, v108);
    }

    else
    {

      (*(v44 + 8))(v43, v45);
    }

    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    v61 = *(v0 + 24);
    v62 = type metadata accessor for AppState.Availability();
    v63 = swift_allocBox();
    (*(*(v62 - 8) + 104))(v64, enum case for AppState.Availability.available(_:), v62);
    *v61 = v63;
    (*(v60 + 104))(v61, enum case for AppState.available(_:), v59);
    goto LABEL_26;
  }

  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = v2;
  if ((sub_1006178E0(v12, v11, v10) & 1) == 0)
  {

    goto LABEL_14;
  }

  v13 = StoreAppIdentifier.bundleID.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v6 = [v12 bundleIdentifier];
    if (!v6)
    {
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v66 = v6;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v67;
  }

  *(v0 + 248) = v15;
  *(v0 + 256) = v16;
  if ([v12 isPlaceholder])
  {
    if ([v12 installType] - 7 < 3)
    {
      static Logger.library.getter();

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 168);
      v72 = *(v0 + 104);
      v73 = *(v0 + 112);
      if (v70)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v111 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_1002346CC(v15, v16, &v111);
        _os_log_impl(&_mh_execute_header, v68, v69, "%s: Offloaded, return available and check history", v74, 0xCu);
        sub_10000710C(v75);
      }

      (*(v73 + 8))(v71, v72);
      v76 = swift_task_alloc();
      *(v0 + 288) = v76;
      *v76 = v0;
      v76[1] = sub_100611A78;
      v54 = *(v0 + 48);
      v55 = *(v0 + 24);
      v56 = v15;
      v57 = v16;
      goto LABEL_21;
    }

    v3 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 264) = v3;
    v4 = sub_100611824;
    goto LABEL_5;
  }

  if ((*(v0 + 490) & 1) == 0)
  {
    v3 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 296) = v3;
    v4 = sub_100612604;
    goto LABEL_5;
  }

  v77 = [*(v0 + 240) iTunesMetadata];
  v78 = [v77 storeItemIdentifier];

  if (v78)
  {
    v79 = [*(v0 + 240) iTunesMetadata];
    v80 = [v79 storeItemIdentifier];
    *(v0 + 328) = v80;

    *(v0 + 336) = sub_10060BB74();
    if ((v81 & 1) == 0)
    {
      v90 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
      *(v0 + 344) = v90;
      v95 = swift_task_alloc();
      *(v0 + 352) = v95;
      *(v95 + 16) = v80;
      v110 = sub_1003AEB74;

      v96 = swift_task_alloc();
      *(v0 + 360) = v96;
      *v96 = v0;
      v96[1] = sub_1006135C0;
      v93 = sub_100619DDC;
      v94 = v95;
      goto LABEL_44;
    }
  }

  v82 = [*(v0 + 240) bundleVersion];
  if (v82)
  {
    v84 = *(v0 + 248);
    v83 = *(v0 + 256);
    v85 = *(v0 + 48);
    v86 = v82;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    *(v0 + 376) = v87;
    *(v0 + 384) = v89;
    v90 = *(*sub_100006D8C(v85, v85[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v90;
    v91 = swift_task_alloc();
    *(v0 + 400) = v91;
    *(v91 + 16) = v84;
    *(v91 + 24) = v83;
    v110 = sub_1003AF110;

    v92 = swift_task_alloc();
    *(v0 + 408) = v92;
    *v92 = v0;
    v92[1] = sub_100613FCC;
    v93 = sub_100619DC0;
    v94 = v91;
LABEL_44:

    return v110(v93, v94, v90);
  }

  v97 = sub_10060D18C();
  if (!v97 || (v98 = v97, v99 = [v97 managementDeclarationIdentifier], v98, !v99))
  {
    v3 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v3;
    v4 = sub_1006147E8;
LABEL_5:
    v5 = v4;

    v6 = v5;
    v7 = v3;
    v8 = 0;

    return _swift_task_switch(v6, v7, v8);
  }

  v100 = *(v0 + 240);
  v101 = *(v0 + 192);
  v102 = *(v0 + 200);
  v103 = *(v0 + 24);

  (*(v102 + 104))(v103, enum case for AppState.managed(_:), v101);
LABEL_26:

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1006109DC()
{
  sub_100385740(*(v0 + 32), *(v0 + 40), *(v0 + 488) & 1, *(v0 + 184));

  return _swift_task_switch(sub_100610A5C, 0, 0);
}

uint64_t sub_100610A5C()
{
  v140 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 488);
    v134 = *(v2 + 32);
    v134(v6, v3, v1);
    static Logger.library.getter();
    (*(v2 + 16))(v7, v6, v1);
    sub_1001DFDA4(v9, v8, v10 & 1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    sub_1001DFEBC(v9, v8, v10 & 1);
    v131 = v12;
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 176);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    if (v13)
    {
      v129 = *(v0 + 176);
      v20 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = StoreAppIdentifier.description.getter();
      v23 = sub_1002346CC(v21, v22, &v139);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      sub_100619CB0(&qword_1007820A8, &type metadata accessor for AppState);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v15 + 8))(v14, v16);
      v27 = sub_1002346CC(v24, v26, &v139);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v131, "%s: Active install, progress %s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v18 + 8))(v129, v19);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v18 + 8))(v17, v19);
    }

    v134(*(v0 + 24), *(v0 + 224), *(v0 + 192));
    goto LABEL_26;
  }

  sub_1000032A8(v3, &qword_100789DB8);
  v4 = *(v0 + 488);
  sub_100006190(0, &qword_100784500);
  if (v4)
  {
    v5 = sub_10060BC54(*(v0 + 32), *(v0 + 40), 0, 0, 2);
  }

  else
  {
    v5 = sub_10060DA14(*(v0 + 32), 0, 0, 2);
  }

  v28 = v5;
  *(v0 + 240) = v5;
  if (!v5)
  {
LABEL_14:
    v36 = StoreAppIdentifier.bundleID.getter();
    *(v0 + 472) = v37;
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      v41 = *(v0 + 32);
      v40 = *(v0 + 40);
      v42 = *(v0 + 488);
      static Logger.library.getter();
      sub_1001DFDA4(v41, v40, v42 & 1);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      sub_1001DFEBC(v41, v40, v42 & 1);
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 128);
      v47 = *(v0 + 104);
      v48 = *(v0 + 112);
      if (v45)
      {
        v135 = *(v0 + 128);
        v137 = v38;
        v49 = swift_slowAlloc();
        v132 = v47;
        v50 = swift_slowAlloc();
        v139 = v50;
        *v49 = 136315138;
        v51 = StoreAppIdentifier.description.getter();
        v53 = sub_1002346CC(v51, v52, &v139);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v43, v44, "%s: No record, return available and check history", v49, 0xCu);
        sub_10000710C(v50);

        v38 = v137;

        (*(v48 + 8))(v135, v132);
      }

      else
      {

        (*(v48 + 8))(v46, v47);
      }

      v72 = swift_task_alloc();
      *(v0 + 480) = v72;
      *v72 = v0;
      v72[1] = sub_1006153BC;
      v73 = *(v0 + 48);
      v74 = *(v0 + 24);
      v75 = v38;
      v76 = v39;
LABEL_21:

      return sub_100617A10(v74, v75, v76, v73);
    }

    v55 = *(v0 + 56);
    v54 = *(v0 + 64);
    v57 = *(v0 + 32);
    v56 = *(v0 + 40);
    v58 = *(v0 + 488);
    static Logger.library.getter();
    sub_1001DFDA4(v57, v56, v58 & 1);
    sub_100300EC0(v55, v54);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_1001DFEBC(v57, v56, v58 & 1);
    sub_1002706F8(v55, v54);
    v61 = os_log_type_enabled(v59, v60);
    v63 = *(v0 + 112);
    v62 = *(v0 + 120);
    v64 = *(v0 + 104);
    if (v61)
    {
      v130 = *(v0 + 56);
      v133 = *(v0 + 64);
      v136 = *(v0 + 104);
      v65 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = StoreAppIdentifier.description.getter();
      v68 = sub_1002346CC(v66, v67, &v139);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      v69 = sub_100617150(v130, v133);
      v71 = sub_1002346CC(v69, v70, &v139);

      *(v65 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s: No record nor bundle ID in library %s, return available", v65, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v62, v136);
    }

    else
    {

      (*(v63 + 8))(v62, v64);
    }

    v78 = *(v0 + 192);
    v79 = *(v0 + 200);
    v80 = *(v0 + 24);
    v81 = type metadata accessor for AppState.Availability();
    v82 = swift_allocBox();
    (*(*(v81 - 8) + 104))(v83, enum case for AppState.Availability.available(_:), v81);
    *v80 = v82;
    (*(v79 + 104))(v80, enum case for AppState.available(_:), v78);
    goto LABEL_26;
  }

  v30 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = v5;
  if ((sub_1006178E0(v31, v30, v29) & 1) == 0)
  {

    goto LABEL_14;
  }

  v32 = StoreAppIdentifier.bundleID.getter();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v85 = [v31 bundleIdentifier];
    if (!v85)
    {
      __break(1u);
      return _swift_task_switch(v85, v86, v87);
    }

    v88 = v85;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v89;
  }

  *(v0 + 248) = v34;
  *(v0 + 256) = v35;
  if ([v31 isPlaceholder])
  {
    if ([v31 installType] - 7 < 3)
    {
      static Logger.library.getter();

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();

      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 168);
      v94 = *(v0 + 104);
      v95 = *(v0 + 112);
      if (v92)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v139 = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_1002346CC(v34, v35, &v139);
        _os_log_impl(&_mh_execute_header, v90, v91, "%s: Offloaded, return available and check history", v96, 0xCu);
        sub_10000710C(v97);
      }

      (*(v95 + 8))(v93, v94);
      v98 = swift_task_alloc();
      *(v0 + 288) = v98;
      *v98 = v0;
      v98[1] = sub_100611A78;
      v73 = *(v0 + 48);
      v74 = *(v0 + 24);
      v75 = v34;
      v76 = v35;
      goto LABEL_21;
    }

    v117 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 264) = v117;
    v118 = sub_100611824;
    goto LABEL_43;
  }

  if ((*(v0 + 490) & 1) == 0)
  {
    v117 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 296) = v117;
    v118 = sub_100612604;
    goto LABEL_43;
  }

  v99 = [*(v0 + 240) iTunesMetadata];
  v100 = [v99 storeItemIdentifier];

  if (v100)
  {
    v101 = [*(v0 + 240) iTunesMetadata];
    v102 = [v101 storeItemIdentifier];
    *(v0 + 328) = v102;

    *(v0 + 336) = sub_10060BB74();
    if ((v103 & 1) == 0)
    {
      v112 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
      *(v0 + 344) = v112;
      v120 = swift_task_alloc();
      *(v0 + 352) = v120;
      *(v120 + 16) = v102;
      v138 = sub_1003AEB74;

      v121 = swift_task_alloc();
      *(v0 + 360) = v121;
      *v121 = v0;
      v121[1] = sub_1006135C0;
      v115 = sub_100619DDC;
      v116 = v120;
      goto LABEL_47;
    }
  }

  v104 = [*(v0 + 240) bundleVersion];
  if (v104)
  {
    v106 = *(v0 + 248);
    v105 = *(v0 + 256);
    v107 = *(v0 + 48);
    v108 = v104;
    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    *(v0 + 376) = v109;
    *(v0 + 384) = v111;
    v112 = *(*sub_100006D8C(v107, v107[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v112;
    v113 = swift_task_alloc();
    *(v0 + 400) = v113;
    *(v113 + 16) = v106;
    *(v113 + 24) = v105;
    v138 = sub_1003AF110;

    v114 = swift_task_alloc();
    *(v0 + 408) = v114;
    *v114 = v0;
    v114[1] = sub_100613FCC;
    v115 = sub_100619DC0;
    v116 = v113;
LABEL_47:

    return v138(v115, v116, v112);
  }

  v122 = sub_10060D18C();
  if (!v122 || (v123 = v122, v124 = [v122 managementDeclarationIdentifier], v123, !v124))
  {
    v117 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v117;
    v118 = sub_1006147E8;
LABEL_43:
    v119 = v118;

    v85 = v119;
    v86 = v117;
    v87 = 0;

    return _swift_task_switch(v85, v86, v87);
  }

  v125 = *(v0 + 240);
  v126 = *(v0 + 192);
  v127 = *(v0 + 200);
  v128 = *(v0 + 24);

  (*(v127 + 104))(v128, enum case for AppState.managed(_:), v126);
LABEL_26:

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_100611824()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = *(v0[33] + 112);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10061190C;

  return (sub_1003AE648)(sub_100271ED0, v4, v3);
}

uint64_t sub_10061190C(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 264);
  if (v1)
  {

    v7 = sub_100612318;
  }

  else
  {
    *(v5 + 491) = a1 & 1;

    v7 = sub_100611CAC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100611A78()
{

  return _swift_task_switch(sub_100611B90, 0, 0);
}

uint64_t sub_100611B90()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100611CAC()
{

  return _swift_task_switch(sub_100611D14, 0, 0);
}

uint64_t sub_100611D14()
{
  v51 = v0;
  if ((*(v0 + 491) & 1) == 0)
  {
    static Logger.library.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 256);
    if (v21)
    {
      v23 = *(v0 + 240);
      v24 = *(v0 + 248);
      v49 = *(v0 + 160);
      v25 = *(v0 + 104);
      v26 = *(v0 + 112);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136315138;
      v29 = sub_1002346CC(v24, v22, &v50);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Placeholder record, no active install", v27, 0xCu);
      sub_10000710C(v28);

      (*(v26 + 8))(v49, v25);
    }

    else
    {
      v33 = *(v0 + 240);
      v34 = *(v0 + 160);
      v35 = *(v0 + 104);
      v36 = *(v0 + 112);

      (*(v36 + 8))(v34, v35);
    }

    (*(*(v0 + 200) + 104))(*(v0 + 24), enum case for AppState.waiting(_:), *(v0 + 192));
    goto LABEL_15;
  }

  if (*(v0 + 490))
  {
    v1 = [*(v0 + 240) iTunesMetadata];
    v2 = [v1 storeItemIdentifier];

    if (v2)
    {
      v3 = [*(v0 + 240) iTunesMetadata];
      v4 = [v3 storeItemIdentifier];
      *(v0 + 328) = v4;

      *(v0 + 336) = sub_10060BB74();
      if ((v5 & 1) == 0)
      {
        v14 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
        *(v0 + 344) = v14;
        v38 = swift_task_alloc();
        *(v0 + 352) = v38;
        *(v38 + 16) = v4;
        v48 = sub_1003AEB74;

        v39 = swift_task_alloc();
        *(v0 + 360) = v39;
        *v39 = v0;
        v39[1] = sub_1006135C0;
        v17 = sub_100619DDC;
        v18 = v38;
        goto LABEL_19;
      }
    }

    v6 = [*(v0 + 240) bundleVersion];
    if (v6)
    {
      v8 = *(v0 + 248);
      v7 = *(v0 + 256);
      v9 = *(v0 + 48);
      v10 = v6;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(v0 + 376) = v11;
      *(v0 + 384) = v13;
      v14 = *(*sub_100006D8C(v9, v9[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
      *(v0 + 392) = v14;
      v15 = swift_task_alloc();
      *(v0 + 400) = v15;
      *(v15 + 16) = v8;
      *(v15 + 24) = v7;
      v48 = sub_1003AF110;

      v16 = swift_task_alloc();
      *(v0 + 408) = v16;
      *v16 = v0;
      v16[1] = sub_100613FCC;
      v17 = sub_100619DC0;
      v18 = v15;
LABEL_19:

      return v48(v17, v18, v14);
    }

    v40 = sub_10060D18C();
    if (v40)
    {
      v41 = v40;
      v42 = [v40 managementDeclarationIdentifier];

      if (v42)
      {
        v43 = *(v0 + 240);
        v44 = *(v0 + 192);
        v45 = *(v0 + 200);
        v46 = *(v0 + 24);

        (*(v45 + 104))(v46, enum case for AppState.managed(_:), v44);
LABEL_15:

        v37 = *(v0 + 8);

        return v37();
      }
    }

    v30 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v30;
    v31 = sub_1006147E8;
  }

  else
  {
    v30 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 296) = v30;
    v31 = sub_100612604;
  }

  v32 = v31;

  return _swift_task_switch(v32, v30, 0);
}

uint64_t sub_100612318()
{

  return _swift_task_switch(sub_100612380, 0, 0);
}

uint64_t sub_100612380()
{
  v20 = v0;
  static Logger.library.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[32];
  if (v3)
  {
    v5 = v0[30];
    v6 = v0[31];
    v18 = v0[20];
    v7 = v0[13];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1002346CC(v6, v4, &v19);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Placeholder record, no active install", v9, 0xCu);
    sub_10000710C(v10);

    (*(v8 + 8))(v18, v7);
  }

  else
  {
    v12 = v0[30];
    v13 = v0[20];
    v14 = v0[13];
    v15 = v0[14];

    (*(v15 + 8))(v13, v14);
  }

  (*(v0[25] + 104))(v0[3], enum case for AppState.waiting(_:), v0[24]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100612604()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = *(v0[37] + 112);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1006126EC;

  return (sub_1003AE648)(sub_1002716D8, v4, v3);
}

uint64_t sub_1006126EC(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 296);
  if (v1)
  {

    v7 = sub_100612D98;
  }

  else
  {
    *(v5 + 492) = a1 & 1;

    v7 = sub_100612858;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100612858()
{

  return _swift_task_switch(sub_1006128C0, 0, 0);
}

uint64_t sub_1006128C0()
{
  if (*(v0 + 492) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_100613248;
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v4 = *(v0 + 208);
    v5 = *(v0 + 48);

    return sub_100617A10(v4, v2, v3, v5);
  }

  v7 = [*(v0 + 240) iTunesMetadata];
  v8 = [v7 storeItemIdentifier];

  if (v8)
  {
    v9 = [*(v0 + 240) iTunesMetadata];
    v10 = [v9 storeItemIdentifier];
    *(v0 + 328) = v10;

    *(v0 + 336) = sub_10060BB74();
    if ((v11 & 1) == 0)
    {
      v20 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
      *(v0 + 344) = v20;
      v25 = swift_task_alloc();
      *(v0 + 352) = v25;
      *(v25 + 16) = v10;
      v36 = sub_1003AEB74;

      v26 = swift_task_alloc();
      *(v0 + 360) = v26;
      *v26 = v0;
      v26[1] = sub_1006135C0;
      v23 = sub_100619DDC;
      v24 = v25;
      goto LABEL_10;
    }
  }

  v12 = [*(v0 + 240) bundleVersion];
  if (v12)
  {
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = *(v0 + 48);
    v16 = v12;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v0 + 376) = v17;
    *(v0 + 384) = v19;
    v20 = *(*sub_100006D8C(v15, v15[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v20;
    v21 = swift_task_alloc();
    *(v0 + 400) = v21;
    *(v21 + 16) = v14;
    *(v21 + 24) = v13;
    v36 = sub_1003AF110;

    v22 = swift_task_alloc();
    *(v0 + 408) = v22;
    *v22 = v0;
    v22[1] = sub_100613FCC;
    v23 = sub_100619DC0;
    v24 = v21;
LABEL_10:

    return v36(v23, v24, v20);
  }

  v27 = sub_10060D18C();
  if (v27 && (v28 = v27, v29 = [v27 managementDeclarationIdentifier], v28, v29))
  {
    v30 = *(v0 + 240);
    v31 = *(v0 + 192);
    v32 = *(v0 + 200);
    v33 = *(v0 + 24);

    (*(v32 + 104))(v33, enum case for AppState.managed(_:), v31);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v35 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v35;

    return _swift_task_switch(sub_1006147E8, v35, 0);
  }
}

uint64_t sub_100612D98()
{

  return _swift_task_switch(sub_100612E00, 0, 0);
}

uint64_t sub_100612E00()
{
  v1 = [*(v0 + 240) iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  if (v2)
  {
    v3 = [*(v0 + 240) iTunesMetadata];
    v4 = [v3 storeItemIdentifier];
    *(v0 + 328) = v4;

    *(v0 + 336) = sub_10060BB74();
    if ((v5 & 1) == 0)
    {
      v14 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
      *(v0 + 344) = v14;
      v19 = swift_task_alloc();
      *(v0 + 352) = v19;
      *(v19 + 16) = v4;
      v31 = sub_1003AEB74;

      v20 = swift_task_alloc();
      *(v0 + 360) = v20;
      *v20 = v0;
      v20[1] = sub_1006135C0;
      v17 = sub_100619DDC;
      v18 = v19;
      goto LABEL_6;
    }
  }

  v6 = [*(v0 + 240) bundleVersion];
  if (v6)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 48);
    v10 = v6;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v0 + 376) = v11;
    *(v0 + 384) = v13;
    v14 = *(*sub_100006D8C(v9, v9[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v14;
    v15 = swift_task_alloc();
    *(v0 + 400) = v15;
    *(v15 + 16) = v8;
    *(v15 + 24) = v7;
    v31 = sub_1003AF110;

    v16 = swift_task_alloc();
    *(v0 + 408) = v16;
    *v16 = v0;
    v16[1] = sub_100613FCC;
    v17 = sub_100619DC0;
    v18 = v15;
LABEL_6:

    return v31(v17, v18, v14);
  }

  v22 = sub_10060D18C();
  if (v22 && (v23 = v22, v24 = [v22 managementDeclarationIdentifier], v23, v24))
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 192);
    v27 = *(v0 + 200);
    v28 = *(v0 + 24);

    (*(v27 + 104))(v28, enum case for AppState.managed(_:), v26);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v30 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v30;

    return _swift_task_switch(sub_1006147E8, v30, 0);
  }
}

uint64_t sub_100613248()
{

  return _swift_task_switch(sub_100613344, 0, 0);
}

uint64_t sub_100613344()
{
  v20 = v0;
  static Logger.library.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[32];
  if (v3)
  {
    v5 = v0[30];
    v6 = v0[31];
    v18 = v0[19];
    v7 = v0[13];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1002346CC(v6, v4, &v19);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Active install, paused", v9, 0xCu);
    sub_10000710C(v10);

    (*(v8 + 8))(v18, v7);
  }

  else
  {
    v12 = v0[30];
    v13 = v0[19];
    v14 = v0[13];
    v15 = v0[14];

    (*(v15 + 8))(v13, v14);
  }

  (*(v0[25] + 32))(v0[3], v0[26], v0[24]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1006135C0(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_100613CA8;
  }

  else
  {

    *(v6 + 368) = a1;
    *(v6 + 493) = a2;

    v7 = sub_100613748;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100613748()
{
  v47 = v0;
  if ((*(v0 + 493) & 1) == 0 && *(v0 + 336) < *(v0 + 368))
  {
    static Logger.library.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 328);
      v5 = *(v0 + 248);
      v4 = *(v0 + 256);
      v6 = *(v0 + 240);
      v7 = *(v0 + 112);
      v44 = *(v0 + 104);
      v45 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v8 = 136446466;
      v9 = sub_1002346CC(v5, v4, &v46);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2082;
      *(v0 + 16) = v3;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_1002346CC(v10, v11, &v46);

      *(v8 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "'%{public}s/%{public}s has update available", v8, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v45, v44);
    }

    else
    {
      v25 = *(v0 + 240);
      v26 = *(v0 + 144);
      v27 = *(v0 + 104);
      v28 = *(v0 + 112);

      (*(v28 + 8))(v26, v27);
    }

    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    v31 = *(v0 + 24);
    v32 = type metadata accessor for AppState.Availability();
    v33 = swift_allocBox();
    (*(*(v32 - 8) + 104))(v34, enum case for AppState.Availability.update(_:), v32);
    *v31 = v33;
    (*(v30 + 104))(v31, enum case for AppState.available(_:), v29);
    goto LABEL_11;
  }

  v13 = [*(v0 + 240) bundleVersion];
  if (v13)
  {
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    v16 = *(v0 + 48);
    v17 = v13;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v0 + 376) = v18;
    *(v0 + 384) = v20;
    v21 = *(*sub_100006D8C(v16, v16[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v21;
    v22 = swift_task_alloc();
    *(v0 + 400) = v22;
    *(v22 + 16) = v15;
    *(v22 + 24) = v14;

    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_100613FCC;

    return sub_1003AF110(sub_100619DC0, v22, v21);
  }

  else
  {
    v36 = sub_10060D18C();
    if (v36)
    {
      v37 = v36;
      v38 = [v36 managementDeclarationIdentifier];

      if (v38)
      {
        v39 = *(v0 + 240);
        v40 = *(v0 + 192);
        v41 = *(v0 + 200);
        v42 = *(v0 + 24);

        (*(v41 + 104))(v42, enum case for AppState.managed(_:), v40);
LABEL_11:

        v35 = *(v0 + 8);

        return v35();
      }
    }

    v43 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v43;

    return _swift_task_switch(sub_1006147E8, v43, 0);
  }
}

uint64_t sub_100613CA8()
{
  v1 = [*(v0 + 240) bundleVersion];
  if (v1)
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    v4 = *(v0 + 48);
    v5 = v1;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 376) = v6;
    *(v0 + 384) = v8;
    v9 = *(*sub_100006D8C(v4, v4[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 392) = v9;
    v10 = swift_task_alloc();
    *(v0 + 400) = v10;
    *(v10 + 16) = v3;
    *(v10 + 24) = v2;

    v11 = swift_task_alloc();
    *(v0 + 408) = v11;
    *v11 = v0;
    v11[1] = sub_100613FCC;

    return sub_1003AF110(sub_100619DC0, v10, v9);
  }

  else
  {
    v13 = sub_10060D18C();
    if (v13 && (v14 = v13, v15 = [v13 managementDeclarationIdentifier], v14, v15))
    {
      v16 = *(v0 + 240);
      v17 = *(v0 + 192);
      v18 = *(v0 + 200);
      v19 = *(v0 + 24);

      (*(v18 + 104))(v19, enum case for AppState.managed(_:), v17);

      v20 = *(v0 + 8);

      return v20();
    }

    else
    {
      v21 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      *(v0 + 432) = v21;

      return _swift_task_switch(sub_1006147E8, v21, 0);
    }
  }
}

uint64_t sub_100613FCC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 416) = a1;
  *(v4 + 424) = a2;

  if (v2)
  {

    v5 = sub_1006145E8;
  }

  else
  {

    v5 = sub_100614154;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100614154()
{
  v37 = v0;
  if (*(v0 + 424))
  {
    sub_100006190(0, &qword_1007866D0);
    v1 = sub_10060D498();

    if (v1)
    {
      static Logger.library.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.info.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 384);
      if (v4)
      {
        v6 = *(v0 + 376);
        v7 = *(v0 + 248);
        v8 = *(v0 + 256);
        v35 = *(v0 + 136);
        v9 = *(v0 + 112);
        v33 = *(v0 + 240);
        v34 = *(v0 + 104);
        v10 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v10 = 136446466;
        v11 = sub_1002346CC(v7, v8, &v36);

        *(v10 + 4) = v11;
        *(v10 + 12) = 2082;
        v12 = sub_1002346CC(v6, v5, &v36);

        *(v10 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s/%{public}s has update available", v10, 0x16u);
        swift_arrayDestroy();

        (*(v9 + 8))(v35, v34);
      }

      else
      {
        v21 = *(v0 + 240);
        v22 = *(v0 + 136);
        v23 = *(v0 + 104);
        v24 = *(v0 + 112);

        (*(v24 + 8))(v22, v23);
      }

      v25 = *(v0 + 192);
      v26 = *(v0 + 200);
      v27 = *(v0 + 24);
      v28 = type metadata accessor for AppState.Availability();
      v29 = swift_allocBox();
      (*(*(v28 - 8) + 104))(v30, enum case for AppState.Availability.update(_:), v28);
      *v27 = v29;
      (*(v26 + 104))(v27, enum case for AppState.available(_:), v25);
      goto LABEL_13;
    }
  }

  v13 = sub_10060D18C();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 managementDeclarationIdentifier];

    if (v15)
    {
      v16 = *(v0 + 240);
      v17 = *(v0 + 192);
      v18 = *(v0 + 200);
      v19 = *(v0 + 24);

      (*(v18 + 104))(v19, enum case for AppState.managed(_:), v17);
LABEL_13:

      v31 = *(v0 + 8);

      return v31();
    }
  }

  v20 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 432) = v20;

  return _swift_task_switch(sub_1006147E8, v20, 0);
}

uint64_t sub_1006145E8()
{
  v1 = sub_10060D18C();
  if (v1 && (v2 = v1, v3 = [v1 managementDeclarationIdentifier], v2, v3))
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 24);

    (*(v6 + 104))(v7, enum case for AppState.managed(_:), v5);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(*sub_100006D8C(*(v0 + 48), *(*(v0 + 48) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v0 + 432) = v10;

    return _swift_task_switch(sub_1006147E8, v10, 0);
  }
}

uint64_t sub_1006147E8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = *(v0[54] + 112);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_1006148D8;
  v6 = v0[9];

  return (sub_1003AF648)(v6, sub_1003D44BC, v4, v3);
}

uint64_t sub_1006148D8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = *(v3 + 240);

    v6 = sub_100614C8C;
    v7 = v4;
  }

  else
  {

    v6 = sub_100614A60;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100614A60()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[30];

    sub_1000032A8(v0[9], &unk_1007809E0);
    (*(v0[25] + 104))(v0[3], enum case for AppState.installed(_:), v0[24]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[30];
    sub_100619CF8(v1, v0[12], type metadata accessor for DDMDeclaration);
    v6 = swift_task_alloc();
    v0[57] = v6;
    *v6 = v0;
    v6[1] = sub_100614E70;
    v7 = v0[12];

    return sub_1003EA7B8(v7, v5);
  }
}

uint64_t sub_100614C8C()
{

  return _swift_task_switch(sub_100614CF4, 0, 0);
}

uint64_t sub_100614CF4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000032A8(*(v0 + 72), &unk_1007809E0);
  (*(*(v0 + 200) + 104))(*(v0 + 24), enum case for AppState.installed(_:), *(v0 + 192));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100614E70(char a1)
{
  *(*v1 + 494) = a1;

  return _swift_task_switch(sub_100614F70, 0, 0);
}

uint64_t sub_100614F70()
{
  if (*(v0 + 494) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_100615168;
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v4 = *(v0 + 48);
    v5 = *(v0 + 24);

    return sub_100617A10(v5, v2, v3, v4);
  }

  else
  {
    v7 = *(v0 + 240);
    sub_100619D60(*(v0 + 96), type metadata accessor for DDMDeclaration);

    (*(*(v0 + 200) + 104))(*(v0 + 24), enum case for AppState.installed(_:), *(v0 + 192));

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100615168()
{

  return _swift_task_switch(sub_100615280, 0, 0);
}

uint64_t sub_100615280()
{
  v1 = v0[30];
  v2 = v0[12];

  sub_100619D60(v2, type metadata accessor for DDMDeclaration);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006153BC()
{

  return _swift_task_switch(sub_1006154D4, 0, 0);
}

uint64_t sub_1006154D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006155EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_1001F0C48(&qword_100789D88);
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  sub_1001F0C48(&qword_100789D90);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for XPCApp();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1006157C8, 0, 0);
}

uint64_t sub_1006157C8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_1006158A4;
  v5 = v0[12];

  return sub_1003B290C(sub_100618C5C, v3, v5);
}

uint64_t sub_1006158A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_1006159D8;
  }

  else
  {
    v4 = sub_100615AB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006159D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100615AB8()
{
  v102 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v91 = sub_1003631A8(0, *(v0[33] + 16), 0, _swiftEmptyArrayStorage);
  v100 = v91;
  v3 = [objc_opt_self() enumeratorWithOptions:128];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[6] = sub_1006195D0;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100009BE4;
  v0[5] = &unk_10076F0E8;
  v5 = _Block_copy(v0 + 2);
  sub_100300EC0(v2, v1);

  [v3 setFilter:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v3;
  sub_1001F0C48(&qword_100789D98);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1006195E0;
  *(inited + 24) = v6;
  v9 = v7;
  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    v12 = v0[24];
    v13 = (v12 + 32);
    v96 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v0[22];
      v14 = v0[23];
      v16 = v0[15];
      v17 = v0[16];
      v101[0] = v11;
      sub_100618098(v101, v16, v17, v15);

      if ((*(v12 + 48))(v15, 1, v14) == 1)
      {
        sub_1000032A8(v0[22], &qword_100789D90);
      }

      else
      {
        v19 = v0[29];
        v18 = v0[30];
        v20 = v0[23];
        v21 = *v13;
        (*v13)(v18, v0[22], v20);
        v21(v19, v18, v20);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v96;
        }

        else
        {
          v22 = sub_1003631A8(0, v96[2] + 1, 1, v96);
        }

        v24 = v22[2];
        v23 = v22[3];
        if (v24 >= v23 >> 1)
        {
          v22 = sub_1003631A8(v23 > 1, v24 + 1, 1, v22);
        }

        v25 = v0[29];
        v26 = v0[23];
        v22[2] = v24 + 1;
        v96 = v22;
        v21(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v25, v26);
      }

      v11 = [v9 nextObject];
    }

    while (v11);
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
  }

  v27 = v96[2];
  if (!v27)
  {

    v84 = 0;
    v90 = 0;
    v32 = v0[33];
LABEL_37:
    v65 = v0[15];
    v64 = v0[16];

    sub_100653954(v66);
    static Logger.library.getter();
    sub_100300EC0(v65, v64);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    sub_1002706F8(v65, v64);
    v69 = os_log_type_enabled(v67, v68);
    v71 = v0[19];
    v70 = v0[20];
    v72 = v0[18];
    if (v69)
    {
      v99 = v0[20];
      v73 = v32;
      v75 = v0[15];
      v74 = v0[16];
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v101[0] = v77;
      *v76 = 134218754;
      *(v76 + 4) = v90;
      *(v76 + 12) = 2048;
      *(v76 + 14) = v73[2];
      *(v76 + 22) = 2048;
      *(v76 + 24) = v84;
      *(v76 + 32) = 2082;
      v78 = sub_100617150(v75, v74);
      v80 = sub_1002346CC(v78, v79, v101);

      *(v76 + 34) = v80;
      _os_log_impl(&_mh_execute_header, v67, v68, "Returning %ld apps installed, %ld apps installing, and %ld apps updating to %{public}s", v76, 0x2Au);
      sub_10000710C(v77);

      (*(v71 + 8))(v99, v72);
    }

    else
    {

      (*(v71 + 8))(v70, v72);
    }

    v81 = v0[1];

    return v81(v100);
  }

  v28 = 0;
  v29 = v0[24];
  v84 = 0;
  v85 = v0[14];
  v30 = *(v29 + 16);
  v29 += 16;
  v98 = v30;
  v88 = (*(v29 + 64) + 32) & ~*(v29 + 64);
  v31 = v96 + v88;
  v94 = (v29 + 16);
  v95 = *(v29 + 56);
  v93 = (v29 - 8);
  v83 = (v0[19] + 8);
  v32 = v0[33];
  v33 = v91;
  while (1)
  {
    v97 = v27;
    v98(v0[28], v31, v0[23]);
    v34 = XPCApp.bundleID.getter();
    v36 = v35;
    v37 = sub_10052213C(v34, v35);
    if ((v38 & 1) == 0)
    {
      break;
    }

    v39 = v37;
    v87 = v34;
    v89 = v28;
    v92 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v32;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C5954();
      v32 = v101[0];
    }

    v42 = v0[26];
    v41 = v0[27];
    v43 = v0[23];

    v44 = *v94;
    (*v94)(v42, v32[7] + v39 * v95, v43);
    v86 = v32;
    sub_1005C0B7C(v39, v32);
    v44(v41, v42, v43);
    if (v85 && (v87 == v0[13] && v0[14] == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v45 = v0[27];
      v46 = v0[23];

      result = (*v93)(v45, v46);
      v28 = v89;
      v33 = v92;
      goto LABEL_24;
    }

    static Logger.library.getter();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[21];
    v53 = v0[18];
    v28 = v89;
    if (v51)
    {
      v82 = v0[21];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v101[0] = v55;
      *v54 = 136446210;
      v56 = v53;
      v57 = sub_1002346CC(v87, v36, v101);

      *(v54 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Coalescing installing and installed metadata for %{public}s", v54, 0xCu);
      sub_10000710C(v55);

      (*v83)(v82, v56);
    }

    else
    {

      (*v83)(v52, v53);
    }

    v58 = v0[27];
    v59 = v0[23];
    XPCApp.installingMetadata.getter();
    XPCApp.installingMetadata.setter();
    result = (*v93)(v58, v59);
    if (__OFADD__(v84, 1))
    {
      goto LABEL_43;
    }

    ++v84;
    v33 = v92;
    v32 = v86;
LABEL_32:
    v98(v0[25], v0[28], v0[23]);
    v61 = v33[2];
    v60 = v33[3];
    if (v61 >= v60 >> 1)
    {
      v33 = sub_1003631A8(v60 > 1, v61 + 1, 1, v33);
    }

    v62 = v0[25];
    v63 = v0[23];
    (*v93)(v0[28], v63);
    v33[2] = v61 + 1;
    (*v94)(v33 + v88 + v61 * v95, v62, v63);
    v31 += v95;
    v27 = v97 - 1;
    if (v97 == 1)
    {
      v90 = v28;

      v100 = v33;
      goto LABEL_37;
    }
  }

LABEL_24:
  if (!__OFADD__(v28++, 1))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_100616448(uint64_t a1@<X8>)
{
  v37 = type metadata accessor for InternalError();
  v3 = __chkstk_darwin(v37);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v36 = &v33 - v6;
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for MarketplaceKitError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ManagedAppDistributionError();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  sub_100006190(0, &qword_100780900);
  v17 = v1;
  if (!swift_dynamicCast())
  {
    v34 = a1;
    v18 = v10;
    v19 = v9;
    if (swift_dynamicCast())
    {
      (*(v18 + 32))(v34, v12, v9);
      goto LABEL_49;
    }

    if (swift_dynamicCast())
    {
      v20 = v36;
      sub_100619CF8(v8, v36, type metadata accessor for InternalError);
      v21 = v35;
      sub_1004B5BE4(v20, v35);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 16)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100619D60(v20, type metadata accessor for InternalError);
            (*(v18 + 32))(v34, v21, v19);
            goto LABEL_49;
          }

          if (EnumCaseMultiPayload == 2)
          {
            v29 = [objc_opt_self() bytes];
            sub_100006190(0, &qword_10077E900);
            v30 = v34;
            Measurement.init(value:unit:)();
            sub_100619D60(v20, type metadata accessor for InternalError);
            (*(v18 + 104))(v30, enum case for MarketplaceKitError.insufficientStorageSpace(_:), v19);
            goto LABEL_49;
          }
        }

        else
        {
          switch(EnumCaseMultiPayload)
          {
            case 7:
              sub_100619D60(v20, type metadata accessor for InternalError);
              sub_100619D60(v21, type metadata accessor for InternalError);
              v23 = &enum case for MarketplaceKitError.missingInstallVerificationToken(_:);
              goto LABEL_46;
            case 15:
              sub_100619D60(v20, type metadata accessor for InternalError);
              v23 = &enum case for MarketplaceKitError.installationRestricted(_:);
              goto LABEL_46;
            case 16:
              sub_100619D60(v20, type metadata accessor for InternalError);
              v23 = &enum case for MarketplaceKitError.ratingRestricted(_:);
              goto LABEL_46;
          }
        }

        goto LABEL_43;
      }

      if (EnumCaseMultiPayload <= 21)
      {
        switch(EnumCaseMultiPayload)
        {
          case 17:
            sub_100619D60(v20, type metadata accessor for InternalError);
            v23 = &enum case for MarketplaceKitError.appNotInstalled(_:);
            goto LABEL_46;
          case 18:
            v21 = v20;
LABEL_44:
            sub_100619D60(v21, type metadata accessor for InternalError);
LABEL_45:
            v23 = &enum case for MarketplaceKitError.unknown(_:);
            goto LABEL_46;
          case 20:
            sub_100619D60(v20, type metadata accessor for InternalError);
            v23 = &enum case for MarketplaceKitError.noSupportedVariant(_:);
LABEL_46:
            v26 = *v23;
            v24 = *(v18 + 104);
            goto LABEL_47;
        }

LABEL_43:
        sub_100619D60(v20, type metadata accessor for InternalError);
        goto LABEL_44;
      }

      if (EnumCaseMultiPayload == 22)
      {
        sub_100619D60(v20, type metadata accessor for InternalError);
        v23 = &enum case for MarketplaceKitError.invalidManifest(_:);
        goto LABEL_46;
      }

      if (EnumCaseMultiPayload == 24)
      {
        sub_100619D60(v20, type metadata accessor for InternalError);
        v23 = &enum case for MarketplaceKitError.featureUnavailable(_:);
        goto LABEL_46;
      }

      if (EnumCaseMultiPayload != 29)
      {
        goto LABEL_43;
      }

      sub_100619D60(v20, type metadata accessor for InternalError);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v24 = *(v18 + 104);
        if (v39)
        {
          v25 = v34;
          v26 = enum case for MarketplaceKitError.unknown(_:);
LABEL_48:
          v24(v25, v26, v19);
          goto LABEL_49;
        }

        v26 = enum case for MarketplaceKitError.appNotInstalled(_:);
LABEL_47:
        v25 = v34;
        goto LABEL_48;
      }

      v27 = v40;
      v38 = v40;
      v39 = 203;
      sub_100619C48();
      v28 = v27;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v31 = v28;
      }

      type metadata accessor for Code(0);
      sub_100619CB0(&qword_10077E800, type metadata accessor for Code);
      v32 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v32 & 1) == 0)
      {
        type metadata accessor for AMSError(0);
        if (swift_dynamicCast())
        {
        }

        goto LABEL_45;
      }
    }

    v23 = &enum case for MarketplaceKitError.networkError(_:);
    goto LABEL_46;
  }

  (*(v10 + 104))(a1, enum case for MarketplaceKitError.unknown(_:), v9);
  (*(v14 + 8))(v16, v13);
LABEL_49:
}

void *sub_100616B70(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AppVersion();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() enumeratorWithOptions:128];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = sub_10061A5D0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009BE4;
  aBlock[3] = &unk_10076F1D8;
  v10 = _Block_copy(aBlock);
  v41 = a1;
  v42 = a2;
  sub_100300EC0(a1, a2);

  [v8 setFilter:v10];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = v8;
  sub_1001F0C48(&qword_100789D98);
  inited = swift_initStackObject();
  *(inited + 16) = sub_10061A5C4;
  *(inited + 24) = v11;
  v40 = inited;
  v14 = v12;
  v15 = [v14 nextObject];
  if (v15)
  {
    v16 = v15;
    v46 = v6 + 32;
    v17 = &_swiftEmptyArrayStorage;
    v18 = &selRef_versionIdentifier;
    while (1)
    {
      v19 = [v16 iTunesMetadata];
      v20 = [v19 storeItemIdentifier];

      if (v20)
      {
        v21 = [v16 iTunesMetadata];
        [v21 storeItemIdentifier];

        v22 = [v16 iTunesMetadata];
        v23 = [v22 versionIdentifier];

        v24 = [v16 iTunesMetadata];
        v25 = v24;
        if (v23)
        {
          goto LABEL_9;
        }

        v26 = [v24 betaVersionIdentifier];

        if (v26)
        {
          v25 = [v16 iTunesMetadata];
          v18 = &selRef_betaVersionIdentifier;
LABEL_9:
          [v25 *v18];

          AppVersion.init(appleItemID:appleVersionID:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100362988(0, v17[2] + 1, 1, v17);
          }

          v28 = v17[2];
          v27 = v17[3];
          v18 = &selRef_versionIdentifier;
          if (v28 >= v27 >> 1)
          {
            v17 = sub_100362988(v27 > 1, v28 + 1, 1, v17);
          }

          v17[2] = v28 + 1;
          (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, v48, v47);
          goto LABEL_4;
        }

        v18 = &selRef_versionIdentifier;
      }

      else
      {
      }

LABEL_4:
      v16 = [v14 nextObject];
      if (!v16)
      {
        goto LABEL_16;
      }
    }
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_16:

  v29 = v43;
  static Logger.library.getter();
  v31 = v41;
  v30 = v42;
  sub_100300EC0(v41, v42);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  sub_1002706F8(v31, v30);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = v17[2];

    *(v34 + 12) = 2082;
    v36 = sub_100617150(v31, v30);
    v38 = sub_1002346CC(v36, v37, aBlock);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Returning %ld installed apps for %{public}s", v34, 0x16u);
    sub_10000710C(v35);
  }

  else
  {
  }

  (*(v44 + 8))(v29, v45);
  return v17;
}

uint64_t sub_100617150(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0x616D6F6420626557;
    }

    if (a2 == 1)
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD000000000000024;
      case 3:
        return 0xD000000000000017;
      case 4:
        return 0xD000000000000010;
    }
  }

  strcpy(v3, "Marketplace ");
  String.append(_:)(*&a1);
  return v3[0];
}

uint64_t sub_10061726C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v56 = a6;
  v57 = a4;
  v8 = a5;
  v12 = ~a5;
  v13 = type metadata accessor for Logger();
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a7;
  v55 = v15;
  if (v12)
  {
    v51 = a2;
    v16 = v8;
    if (v8)
    {
      v17 = a1;
      v18 = &type metadata for WebDistributor;
      v19 = sub_100231E84();
    }

    else
    {
      v17 = a1;
      v18 = &type metadata for NativeDistributor;
      v19 = sub_1003000A4();
    }

    v59 = v18;
    v60 = v19;
    *&v58 = a3;
    *(&v58 + 1) = v57;
    sub_1001DFDBC(&v58, v61);
    v20 = v62;
    v21 = v63;
    sub_100006D8C(v61, v62);
    v22 = *(v21 + 40);
    sub_10032F7C8();
    v23 = v22(v20, v21);
    v25 = v24;
    sub_10000710C(v61);
    a1 = v17;
    if (v23 == v17 && v25 == v51)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v15 = v55;

    v8 = v16;
    a2 = v51;
    a7 = v52;
  }

  v27 = 1;
  if (a7 - 2 >= 3 && a7)
  {
    if (a7 == 1)
    {
      v27 = v12;
    }

    else if (a1 == v56 && a2 == a7)
    {
      v27 = 0;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  v51 = a1;
  static Logger.library.getter();
  v28 = v57;
  sub_10032F7B0(a3, v57, v8);
  v29 = v56;
  sub_100300EC0(v56, a7);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_1002706F8(v29, a7);

  sub_1003C7500(a3, v28, v8);
  if (os_log_type_enabled(v30, v31))
  {
    v49 = v31;
    v50 = v27;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64[0] = v33;
    *v32 = 136446978;
    v34 = sub_100617150(v56, a7);
    v36 = sub_1002346CC(v34, v35, v64);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1002346CC(v51, a2, v64);
    *(v32 + 22) = 2080;
    if (v8 == -1)
    {
      v39 = 0xE500000000000000;
      v40 = 0x296C696E28;
    }

    else
    {
      v48[1] = v33;
      if (v8)
      {
        v37 = &type metadata for WebDistributor;
        v38 = sub_100231E84();
      }

      else
      {
        v37 = &type metadata for NativeDistributor;
        v38 = sub_1003000A4();
      }

      v59 = v37;
      v60 = v38;
      *&v58 = a3;
      *(&v58 + 1) = v57;
      sub_1001DFDBC(&v58, v61);
      v41 = v62;
      v42 = v63;
      sub_100006D8C(v61, v62);
      v43 = *(v42 + 40);
      sub_10032F7C8();
      v40 = v43(v41, v42);
      v39 = v44;
      sub_10000710C(v61);
      a7 = v52;
    }

    v45 = sub_1002346CC(v40, v39, v64);

    *(v32 + 24) = v45;
    *(v32 + 32) = 1024;
    LOBYTE(v27) = v50;
    *(v32 + 34) = v50 & 1;
    _os_log_impl(&_mh_execute_header, v30, v49, "Library %{public}s containsApp %s from %s = %{BOOL}d", v32, 0x26u);
    swift_arrayDestroy();

    (*(v53 + 8))(v55, v54);
  }

  else
  {

    (*(v53 + 8))(v15, v54);
  }

  if (v27)
  {
    v46 = sub_100617744(a3, v57, v8, v56, a7);
  }

  else
  {
    v46 = 0;
  }

  return v46 & 1;
}

uint64_t sub_100617744(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5 > 1)
  {
    v5 = 1;
    if (a5 != 2)
    {
      if (a5 == 3)
      {
        if (a3 != -1)
        {
          if (a3)
          {
            v8 = &type metadata for WebDistributor;
            v9 = sub_100231E84();
          }

          else
          {
            v8 = &type metadata for NativeDistributor;
            v9 = sub_1003000A4();
          }

          v15 = v8;
          v16 = v9;
          *&v14 = a1;
          *(&v14 + 1) = a2;
          sub_1001DFDBC(&v14, v17);
          v10 = v18;
          v11 = v19;
          sub_100006D8C(v17, v18);
          v12 = *(v11 + 48);
          sub_10032F7C8();
          v5 = v12(v10, v11);
          sub_10000710C(v17);
        }

        return v5 & 1;
      }

      if (a5 != 4)
      {
        goto LABEL_15;
      }
    }

    return v5 & 1;
  }

  if (!a5)
  {
    if (a3 == -1 || (a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v5 = a3 != -1;
    return v5 & 1;
  }

LABEL_15:
  if (a3 == -1 || (a3 & 1) != 0)
  {
LABEL_17:
    v5 = 0;
    return v5 & 1;
  }

  if (a1 == a4 && a2 == a5)
  {
LABEL_22:
    v5 = 1;
    return v5 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_1006178E0(void *a1, uint64_t a2, unint64_t a3)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [a1 iTunesMetadata];
    v12 = [v11 distributorInfo];

    v13 = [v12 distributorID];
    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = 0;
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v17 = -1;
    }

    v18 = sub_10061726C(v8, v10, v14, v16, v17, a2, a3);
    sub_1003C7500(v14, v16, v17);

    return (v18 & 1);
  }

  return result;
}

uint64_t sub_100617A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100617A34, 0, 0);
}

uint64_t sub_100617A34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(*sub_100006D8C(*(v0 + 40), *(*(v0 + 40) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_100617B44;

  return (sub_1003AE0B4)(sub_10061A490, v4, v3);
}

uint64_t sub_100617B44(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100617DD4;
  }

  else
  {

    *(v4 + 72) = a1 & 1;

    v5 = sub_100617CC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100617CC0()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for AppState.Availability();
  v4 = swift_allocBox();
  v5 = *(v0 + 16);
  v6 = &enum case for AppState.Availability.redownload(_:);
  if (!v1)
  {
    v6 = &enum case for AppState.Availability.available(_:);
  }

  (*(*(v2 - 8) + 104))(v3, *v6, v2);
  *v5 = v4;
  v7 = enum case for AppState.available(_:);
  v8 = type metadata accessor for AppState();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100617DD4()
{
  v1 = type metadata accessor for AppState.Availability();
  v2 = swift_allocBox();
  v3 = *(v0 + 16);
  (*(*(v1 - 8) + 104))(v4, enum case for AppState.Availability.available(_:), v1);
  *v3 = v2;
  v5 = enum case for AppState.available(_:);
  v6 = type metadata accessor for AppState();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

void sub_100617ED4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = *a1;

  v8 = sub_100619E6C(0, 0, a2, a3, sub_100619DF8, 0, v7);

  if (v8)
  {
  }

  *a4 = v8 != 0;
}

void sub_100617F68(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003AA5D4(a2, *a1, v9);
  if (v10)
  {
    v5 = v11;
    v4 = v12;

    v6 = sub_1005B7724(v5, v4);
    v8 = v7;
    sub_1000032A8(v9, &qword_100789DC0);
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a3 = v6;
  *(a3 + 8) = v8 & 1;
}

void sub_10061800C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1003AA7F4(a2, a3, *a1, v7);
  if (v8)
  {
    v6 = v9;
    v5 = v10;

    sub_1000032A8(v7, &qword_100789DC0);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a4 = v6;
  a4[1] = v5;
}

uint64_t sub_100618098@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_1001F0C48(&qword_100789D88);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v60 - v11;
  v69 = type metadata accessor for Logger();
  v12 = *(v69 - 8);
  v13 = __chkstk_darwin(v69);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = *a1;
  v19 = [*a1 iTunesMetadata];
  v20 = [v19 storeItemIdentifier];

  v67 = v20;
  if (v20)
  {
    v21 = [v18 bundleIdentifier];
    if (v21)
    {
      v64 = a3;
      v22 = v21;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = [v18 iTunesMetadata];
      v26 = [v25 versionIdentifier];

      v65 = v26;
      if (v26)
      {
        static Logger.library.getter();

        v27 = v64;
        sub_100300EC0(a2, v64);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        sub_1002706F8(a2, v27);
        v30 = os_log_type_enabled(v28, v29);
        v62 = v24;
        v63 = v10;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v71 = v61;
          *v31 = 136446466;
          *(v31 + 4) = sub_1002346CC(v66, v24, &v71);
          *(v31 + 12) = 2082;
          v32 = sub_100617150(a2, v27);
          v34 = sub_1002346CC(v32, v33, &v71);

          *(v31 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "Returning %{public}s to %{public}s", v31, 0x16u);
          swift_arrayDestroy();
        }

        (*(v12 + 8))(v17, v69);
        v35 = [v18 exactBundleVersion];
        if (v35)
        {
          v36 = v35;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v50 = [v18 shortVersionString];
        if (v50)
        {
          v51 = v50;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v52 = [v18 iTunesMetadata];
        v53 = [v52 distributorInfo];

        v54 = [v53 accountID];
        if (v54)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v55 = v68;
        XPCApp.Metadata.init(appleVersionID:version:shortVersion:account:)();
        v56 = type metadata accessor for XPCApp.Metadata();
        v57 = *(*(v56 - 8) + 56);
        v57(v55, 0, 1, v56);
        v57(v63, 1, 1, v56);
        v49 = v70;
        XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)();
        v48 = 0;
        goto LABEL_20;
      }
    }
  }

  static Logger.library.getter();
  v37 = v18;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = v41;
    *v40 = 136446210;
    v42 = [v37 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE100000000000000;
      v44 = 63;
    }

    v47 = sub_1002346CC(v44, v46, &v71);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "App %{public}s is not installed", v40, 0xCu);
    sub_10000710C(v41);
  }

  (*(v12 + 8))(v15, v69);
  v48 = 1;
  v49 = v70;
LABEL_20:
  v58 = type metadata accessor for XPCApp();
  return (*(*(v58 - 8) + 56))(v49, v48, 1, v58);
}

void sub_100618718(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v47 = a3;
  v42 = a2;
  v36 = a4;
  v6 = sub_1001F0C48(&qword_100789DA0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v35 - v7);
  v41 = sub_1001F0C48(&qword_100781478);
  v39 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v35 - v11;
  v12 = *a1;
  v45 = sub_1001F0C48(&unk_1007843E0);
  v13 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  LOWORD(v44) = 283;
  v46 = v13;
  *(&v44 + 1) = &off_100757CE0;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  v43 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v44, inited + 32);
  sub_1001F0C48(&unk_1007843F0);
  v15 = swift_initStackObject();
  *(v15 + 16) = v43;
  *(v15 + 32) = inited;
  v16 = v15 + 32;
  v17 = sub_1005AE994(v15);
  swift_setDeallocating();
  sub_1000032A8(v16, &qword_10077FA00);
  v45 = sub_1001F0C48(&qword_10077F608);
  v18 = sub_100213FA0(&qword_10077F610, &qword_10077F608);
  LOBYTE(v44) = 0;
  v46 = v18;
  *(&v44 + 1) = v17;
  v20 = sub_100235740(&v44, v12, v19);
  v22 = v21;
  if (v45)
  {
    sub_10000710C(&v44);
  }

  v23 = *(v22 + 16);
  *&v43 = v22;
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
    v26 = (v39 + 48);
    v27 = _swiftEmptyArrayStorage;
    v37 = v20;
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v28 = *(v25 + 8 * v24);
      type metadata accessor for AppInstallEntity.Entity();
      v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v28 onConnection:v20];
      if (([v29 existsInDatabase] & 1) == 0)
      {
        break;
      }

      *&v44 = v29;
      sub_100618C78(&v44, v42, v47, v8);

      if ((*v26)(v8, 1, v41) == 1)
      {
        sub_1000032A8(v8, &qword_100789DA0);
      }

      else
      {
        v30 = v38;
        sub_100619B68(v8, v38);
        sub_100619B68(v30, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100364740(0, v27[2] + 1, 1, v27);
        }

        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = sub_100364740(v31 > 1, v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        sub_100619B68(v40, v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32);
        v20 = v37;
      }

      ++v24;
      v22 = v43;
      if (v23 == v24)
      {
        goto LABEL_16;
      }
    }

    if (v27[2])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_16:
    if (v27[2])
    {
LABEL_17:
      sub_1001F0C48(&qword_1007887B8);
      v33 = static _DictionaryStorage.allocate(capacity:)();
      goto LABEL_20;
    }
  }

  v33 = _swiftEmptyDictionarySingleton;
LABEL_20:
  *&v44 = v33;

  sub_10061961C(v34, 1, &v44);
  if (v4)
  {
LABEL_23:
    swift_unexpectedError();
    __break(1u);
  }

  else
  {

    *v36 = v44;
  }
}

uint64_t sub_100618C78@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_1001F0C48(&qword_100789D88);
  v10 = __chkstk_darwin(v9 - 8);
  v68 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = v66 - v12;
  v13 = type metadata accessor for Logger();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v67 = v66 - v17;
  v18 = *a1;
  v19 = sub_100536AC8(38, v18);
  if (v21 == -1)
  {
    v45 = sub_1001F0C48(&qword_100781478);
    return (*(*(v45 - 8) + 56))(a4, 1, 1, v45);
  }

  v22 = v19;
  v23 = v20;
  v24 = v21;
  v73 = a4;
  v70 = v4;
  v25 = sub_100617744(v19, v20, v21, a2, a3);
  sub_1003C7500(v22, v23, v24);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = sub_100536C4C(2, v18);
  if ((v27 & 1) != 0 || (v28 = v26, v29 = sub_100535D44(5, v18), !v30))
  {
    static Logger.library.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "AppInstallEntity was missing appleItemID or bundleID", v48, 2u);
    }

    (*(v71 + 8))(v16, v72);
LABEL_13:
    v49 = sub_1001F0C48(&qword_100781478);
    return (*(*(v49 - 8) + 56))(v73, 1, 1, v49);
  }

  v31 = v29;
  v32 = v30;
  v33 = sub_100537004(3, v18);
  if (v34)
  {

    v35 = v67;
    static Logger.library.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74[0] = v39;
      *v38 = 136315138;
      v75 = v28;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = sub_1002346CC(v40, v41, v74);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "AppInstallEntity for %s does not have an appleItemID", v38, 0xCu);
      sub_10000710C(v39);
    }

    (*(v71 + 8))(v35, v72);
    v43 = sub_1001F0C48(&qword_100781478);
    return (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
  }

  else
  {
    v66[3] = v33;
    v72 = v28;
    v50 = sub_100619304(v18);
    v66[4] = v51;
    v67 = v50;
    v52 = v73;
    v71 = v31;
    *v73 = v31;
    v52[1] = v32;
    v53 = type metadata accessor for XPCApp.Metadata();
    v54 = *(*(v53 - 8) + 56);
    v54(v69, 1, 1, v53);

    v55 = sub_100535D44(7, v18);
    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    v66[1] = v58;
    v66[2] = v57;
    v59 = sub_100536FD4(35, v18);
    if (v59)
    {
      v60 = v59;
      [v59 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_100006190(0, &qword_1007813E0);
      swift_dynamicCast();
      v61 = v75;
      v62 = [v75 bundleShortVersionString];

      if (v62)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v63 = sub_1001F0C48(&qword_100781478);
    sub_100535D44(39, v18);
    v64 = v68;
    XPCApp.Metadata.init(appleVersionID:version:shortVersion:account:)();
    v54(v64, 0, 1, v53);
    v65 = v73;
    XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)();
    return (*(*(v63 - 8) + 56))(v65, 0, 1, v63);
  }
}

uint64_t sub_100619304(void *a1)
{
  v2 = type metadata accessor for MarketplaceKitError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100536E10(11, a1);
  if (result)
  {
    v7 = result;
    sub_100616448(v5);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100619CB0(&qword_100789DA8, &type metadata accessor for MarketplaceKitError);
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    (*(v3 + 8))(v5, v2);

    return v8;
  }

  return result;
}

id sub_1006194AC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 typeForInstallMachinery];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v10)
  {
LABEL_10:

    return 0;
  }

  if (v8 != v11 || v10 != v12)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:

  return sub_1006178E0(a1, a2, a3);
}

id sub_1006195E0@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) nextObject];
  *a1 = result;
  return result;
}

uint64_t sub_10061961C(uint64_t a1, char a2, void *a3)
{
  v61 = type metadata accessor for XPCApp();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_100781478);
  v58 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_100619BD8(v54, v11);
  v15 = v11[1];
  v64 = *v11;
  v16 = v64;
  v65 = v15;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_10052213C(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1005C5954();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1005BCC8C(v23, a2 & 1);
  v25 = sub_10052213C(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v53((v29[7] + *(v59 + 72) * v20), v60, v61);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v56 != 1)
      {
        v34 = 1;
        while (v34 < *(v57 + 16))
        {
          sub_100619BD8(v54 + *(v58 + 72) * v34, v11);
          v35 = v11[1];
          v64 = *v11;
          v36 = v64;
          v65 = v35;
          v37 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v38 = *a3;
          v39 = sub_10052213C(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1005BCC8C(v43, 1);
            v39 = sub_10052213C(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v59 + 72) * v39), v60, v61);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v56 == v34)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v66 = v27;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v50._object = 0x80000001006C4E90;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v50);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100619B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100619BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100619C48()
{
  result = qword_100789DB0;
  if (!qword_100789DB0)
  {
    sub_100006190(255, &qword_100780900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789DB0);
  }

  return result;
}

uint64_t sub_100619CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100619CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100619D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100619DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100619E6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v49 = 0;
  type metadata accessor for DDMInstallHistoryEntryEntity.Entity();
  v14 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v15 = sub_100238D50(a2 & 1, a3, a4);
  [v14 setPredicate:v15];

  if (a1)
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      v45 = a5;
      v46 = v14;
      v47 = a7;

      v17 = _swiftEmptyArrayStorage;
      v18 = 32;
      v19 = _swiftEmptyArrayStorage;
      do
      {
        if (*(a1 + v18))
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
          }

          v24 = *(v17 + 2);
          v23 = *(v17 + 3);
          if (v24 >= v23 >> 1)
          {
            v17 = sub_100009530((v23 > 1), v24 + 1, 1, v17);
          }

          *(v17 + 2) = v24 + 1;
          v25 = &v17[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
        }

        else
        {
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
          }

          v30 = *(v17 + 2);
          v29 = *(v17 + 3);
          if (v30 >= v29 >> 1)
          {
            v17 = sub_100009530((v29 > 1), v30 + 1, 1, v17);
          }

          *(v17 + 2) = v30 + 1;
          v31 = &v17[16 * v30];
          *(v31 + 4) = v26;
          *(v31 + 5) = v28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100009530(0, *(v19 + 2) + 1, 1, v19);
        }

        v33 = *(v19 + 2);
        v32 = *(v19 + 3);
        if (v33 >= v32 >> 1)
        {
          v19 = sub_100009530((v32 > 1), v33 + 1, 1, v19);
        }

        *(v19 + 2) = v33 + 1;
        v34 = &v19[16 * v33];
        *(v34 + 4) = 0x695F656C646E7562;
        *(v34 + 5) = 0xE900000000000064;
        ++v18;
        --v16;
      }

      while (v16);

      v14 = v46;
      a7 = v47;
      a5 = v45;
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
      v19 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v17);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setOrderingDirections:isa];

    sub_100235974(v19);

    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setOrderingProperties:v36];
  }

  v37 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a7 descriptor:v14];
  v38 = swift_allocObject();
  v38[2] = &v49;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1002398F8;
  *(v39 + 24) = v38;
  aBlock[4] = sub_100239904;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10076F188;
  v40 = _Block_copy(aBlock);
  v41 = a7;

  [v37 enumeratePersistentIDsUsingBlock:v40];

  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v44 = v49;

    return v44;
  }

  return result;
}

uint64_t sub_10061A31C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  if (a4 & 1) == 0 && (a1 == 0xD000000000000010 && 0x80000001006C5750 == a2 || (v8 = a4, (_stringCompareWithSmolCheck(_:_:expecting:)()) || (v6 == 0xD000000000000015 ? (v10 = 0x80000001006CEE00 == a2) : (v10 = 0), !v10 ? (v11 = 0) : (v11 = 1), v11 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a4 = v8, (v12))) || v6 == 0xD000000000000024 && 0x80000001006CD390 == a2 || (v7 = a4, (_stringCompareWithSmolCheck(_:_:expecting:)()) || (a3 & 1) == 0 || (v7)
  {

    return 0;
  }

  return v6;
}

uint64_t sub_10061A4AC()
{
  if (*(v0 + 24) >= 5uLL)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10061A4EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10061A504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10061A55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10061A5E4(void *a1, void *a2)
{
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10 = 0;
  v3 = [a2 propertyListDataWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v10 = v5;
    v11 = v7;
    sub_100231ED8(v12, v13);
    sub_100329F2C();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100007158(v10, v11);
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10000710C(v12);
}

id sub_10061A720@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10061A834(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10061A768()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() metadataFromPlistData:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_10061A834(void *a1)
{
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100006D8C(v6, v6[3]);
  sub_100329ED8();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  sub_10047D06C();
  v2 = sub_10061A768();
  sub_100007158(v4, v5);
  sub_10000710C(v6);
  sub_10000710C(a1);
  return v2;
}

double sub_10061A948@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 iTunesMetadata];
  v5 = [v4 distributorInfo];

  v6 = [v5 distributorID];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [v2 bundleIdentifier];
  if (!v11)
  {
LABEL_8:
    *(a1 + 24) = &type metadata for NativeDistributor;
    *(a1 + 32) = sub_1003000A4();

    *a1 = v8;
    *(a1 + 8) = v10;
    return result;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v8 == v13 && v10 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v19 = [v5 domain];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(a1 + 24) = &type metadata for WebDistributor;
    *(a1 + 32) = sub_100231E84();

    *a1 = v21;
    *(a1 + 8) = v23;
  }

  else
  {
LABEL_12:

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_10061AAE8(uint64_t a1)
{
  v2 = &selRef_initWithUnsignedChar_;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setArtistName:v4];

  v5 = String._bridgeToObjectiveC()();
  [v3 setSoftwareVersionBundleID:v5];

  v6 = String._bridgeToObjectiveC()();
  [v3 setBundleShortVersionString:v6];

  v7 = String._bridgeToObjectiveC()();
  [v3 setBundleVersion:v7];

  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  [v3 setSoftwareVersionExternalIdentifier:isa];

  [v3 setGameCenterEverEnabled:*(a1 + 104)];
  v9 = String._bridgeToObjectiveC()();
  [v3 setGenre:v9];

  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setGenreID:v10];

  [v3 setHasMessagesExtension:*(a1 + 136) & 1];
  if (*(a1 + 137) != 2)
  {
    v11 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v3 setHasOrEverHasHadIAP:v11];
  }

  if (*(a1 + 152))
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v3 setIAdAttribution:v12];

  if (*(a1 + 168))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v3 setIAdConversionDate:v13];

  if (*(a1 + 184))
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v3 setIAdImpressionDate:v14];

  if (*(a1 + 200))
  {
    v15 = 0;
  }

  else
  {
    v15 = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  [v3 setInitialODRSize:v15];

  [v3 setIsAutoDownload:*(a1 + 202) & 1];
  [v3 setIsB2BCustomApp:*(a1 + 203) & 1];
  [v3 setGameCenterEnabled:*(a1 + 204)];
  [v3 setLaunchProhibited:*(a1 + 205) & 1];
  [v3 setPurchasedRedownload:*(a1 + 206) & 1];
  v16 = UInt64._bridgeToObjectiveC()().super.super.isa;
  [v3 setItemID:v16];

  v17 = String._bridgeToObjectiveC()();
  [v3 setItemName:v17];

  v18 = String._bridgeToObjectiveC()();
  [v3 setKind:v18];

  v19 = type metadata accessor for AppStoreMetadata(0);
  v20 = *(a1 + v19[30]);
  if (v20)
  {
    sub_1001F0C48(&unk_10077FB40);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v3 setNameTranscriptions:v20];

  if (*(a1 + v19[31] + 8))
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v3 setPurchaseDate:v21];

  sub_100397D84(v58);
  v22 = v59;
  v23 = v60;
  sub_100006D8C(v58, v59);
  (*(v23 + 16))(v22, v23);
  v24 = String._bridgeToObjectiveC()();

  sub_10000710C(v58);
  [v3 setRatingLabel:v24];

  sub_100397D84(v58);
  v25 = v59;
  v26 = v60;
  sub_100006D8C(v58, v59);
  (*(v26 + 8))(v25, v26);
  v27 = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setRatingRank:v27];

  sub_10000710C(v58);
  v28 = String._bridgeToObjectiveC()();
  [v3 setReleaseDate:v28];

  if (*(a1 + v19[37] + 8))
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v3 setStoreCohort:v29];

  v30 = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setStorefront:v30];

  v31 = *(a1 + v19[39]);
  if (v31)
  {
    v56 = v3;
    v57 = a1;
    v32 = 0;
    v58[0] = _swiftEmptyArrayStorage;
    v33 = *(v31 + 16);
    v34 = v31 + 48;
    v55 = v31 + 48;
LABEL_25:
    v35 = v34 + 24 * v32;
    while (1)
    {
      if (v33 == v32)
      {
        sub_10061BC04();
        v41.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v3 = v56;
        a1 = v57;
        v2 = &selRef_initWithUnsignedChar_;
        goto LABEL_34;
      }

      if (v32 >= *(v31 + 16))
      {
        break;
      }

      ++v32;
      v36 = v35 + 24;

      v37 = Int._bridgeToObjectiveC()().super.super.isa;
      v38 = objc_allocWithZone(MIStoreMetadataSubGenre);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithGenre:v39 genreID:v37];

      v35 = v36;
      if (v40)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v31 + 48;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v41.super.isa = 0;
LABEL_34:
    [v3 setSubGenres:{v41.super.isa, v55}];

    v42 = [objc_allocWithZone(MIStoreMetadataDistributor) v2[122]];
    v43 = String._bridgeToObjectiveC()();
    [v42 setDistributorID:v43];

    v44 = objc_allocWithZone(LSApplicationRecord);
    v45 = sub_10061BADC();
    if (v45)
    {
      v46 = v45;
      sub_1001F0C48(&qword_10077E988);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      *(inited + 32) = 0;
      *(inited + 40) = 0xE000000000000000;
      v48 = [v46 localizedName];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v3;
      v52 = v51;

      *(inited + 48) = v49;
      *(inited + 56) = v52;
      v3 = v50;
      sub_1005288C8(inited);
      swift_setDeallocating();
      sub_10036A738(inited + 32);
      v53 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v42 setLocalizedDistributorName:v53];
    }

    v54 = String._bridgeToObjectiveC()();
    [v42 setDeveloperName:v54];

    [v3 setDistributorInfo:v42];
    sub_10061BBA8(a1);
  }
}

void sub_10061B3A0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v67 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_27:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v10 = &v66;
      v9 = 0;
      goto LABEL_30;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (!v15)
    {
      v17 = __DataStorage._length.getter();
      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (v13)
      {
        v9 = v18;
      }

      else
      {
        v9 = 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_136;
      }

      if (HIDWORD(v9))
      {
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v10 = v13;
      goto LABEL_30;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (!v8)
  {
    *&v66 = a1;
    WORD4(v66) = a2;
    BYTE10(v66) = BYTE2(a2);
    BYTE11(v66) = BYTE3(a2);
    BYTE12(v66) = BYTE4(a2);
    v9 = BYTE6(a2);
    BYTE13(v66) = BYTE5(a2);
    v10 = &v66;
    goto LABEL_30;
  }

  v19 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_134;
  }

  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
    __DataStorage._length.getter();
    v10 = 0;
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v21 = v20;
  v22 = __DataStorage._offset.getter();
  if (__OFSUB__(v7, v22))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v23 = (v7 - v22 + v21);
  v24 = __DataStorage._length.getter();
  v10 = v23;
  if (!v23)
  {
    goto LABEL_29;
  }

  if (v24 >= v19)
  {
    v9 = (v7 >> 32) - v7;
  }

  else
  {
    v9 = v24;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  sub_10018F284(v10, v9, 40, &v67);
  if (v25)
  {
    isa = 0;
  }

  else
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  [v4 setDownloaderID:{isa, v66, v67}];

  v67 = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
LABEL_59:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v28 = &v66;
      v27 = 0;
      goto LABEL_63;
    }

    v29 = *(v7 + 16);
    v30 = *(v7 + 24);
    v31 = __DataStorage._bytes.getter();
    if (v31)
    {
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(v29, v32))
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v31 += v29 - v32;
    }

    v15 = __OFSUB__(v30, v29);
    v33 = v30 - v29;
    if (v15)
    {
      goto LABEL_137;
    }

    v34 = __DataStorage._length.getter();
    if (v34 >= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    if (v31)
    {
      v27 = v35;
    }

    else
    {
      v27 = 0;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_139;
    }

    if (!HIDWORD(v27))
    {
      goto LABEL_62;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *&v66 = v7;
    WORD4(v66) = a2;
    BYTE10(v66) = BYTE2(a2);
    BYTE11(v66) = BYTE3(a2);
    BYTE12(v66) = BYTE4(a2);
    v27 = BYTE6(a2);
    BYTE13(v66) = BYTE5(a2);
    v28 = &v66;
    goto LABEL_63;
  }

  if (v7 >> 32 < v7)
  {
    goto LABEL_135;
  }

  v31 = __DataStorage._bytes.getter();
  if (!v31)
  {
    __DataStorage._length.getter();
LABEL_61:
    v27 = 0;
    goto LABEL_62;
  }

  v36 = __DataStorage._offset.getter();
  if (__OFSUB__(v7, v36))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v31 += v7 - v36;
  v37 = __DataStorage._length.getter();
  if (!v31)
  {
    goto LABEL_61;
  }

  if (v37 >= (v7 >> 32) - v7)
  {
    v27 = (v7 >> 32) - v7;
  }

  else
  {
    v27 = v37;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

LABEL_62:
  v28 = v31;
LABEL_63:
  sub_10018F284(v28, v27, 41, &v67);
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  [v4 setFamilyID:{v39, v66, v67}];

  v67 = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
LABEL_92:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v41 = &v66;
      v40 = 0;
      goto LABEL_96;
    }

    v42 = *(v7 + 16);
    v43 = *(v7 + 24);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v45))
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v44 += v42 - v45;
    }

    v15 = __OFSUB__(v43, v42);
    v46 = v43 - v42;
    if (v15)
    {
      goto LABEL_141;
    }

    v47 = __DataStorage._length.getter();
    if (v47 >= v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    if (v44)
    {
      v40 = v48;
    }

    else
    {
      v40 = 0;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_142;
    }

    if (!HIDWORD(v40))
    {
      goto LABEL_95;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *&v66 = v7;
    WORD4(v66) = a2;
    BYTE10(v66) = BYTE2(a2);
    BYTE11(v66) = BYTE3(a2);
    BYTE12(v66) = BYTE4(a2);
    v40 = BYTE6(a2);
    BYTE13(v66) = BYTE5(a2);
    v41 = &v66;
    goto LABEL_96;
  }

  if (v7 >> 32 < v7)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v44 = __DataStorage._bytes.getter();
  if (!v44)
  {
    __DataStorage._length.getter();
    goto LABEL_94;
  }

  v49 = __DataStorage._offset.getter();
  if (__OFSUB__(v7, v49))
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v44 += v7 - v49;
  v50 = __DataStorage._length.getter();
  if (!v44)
  {
LABEL_94:
    v40 = 0;
    goto LABEL_95;
  }

  if (v50 >= (v7 >> 32) - v7)
  {
    v40 = (v7 >> 32) - v7;
  }

  else
  {
    v40 = v50;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_92;
  }

LABEL_95:
  v41 = v44;
LABEL_96:
  sub_10018F284(v41, v40, 1, &v67);
  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  [v4 setPurchaserID:{v52, v66, v67}];

  if (a3)
  {
    v67 = 0;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
LABEL_126:
        *(&v66 + 6) = 0;
        *&v66 = 0;
        v54 = &v66;
        v53 = 0;
        goto LABEL_130;
      }

      v55 = *(v7 + 16);
      v56 = *(v7 + 24);
      v7 = __DataStorage._bytes.getter();
      if (v7)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v55, v57))
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v7 += v55 - v57;
      }

      v15 = __OFSUB__(v56, v55);
      v58 = v56 - v55;
      if (v15)
      {
        goto LABEL_150;
      }

      v59 = __DataStorage._length.getter();
      if (v59 >= v58)
      {
        v60 = v58;
      }

      else
      {
        v60 = v59;
      }

      if (v7)
      {
        v53 = v60;
      }

      else
      {
        v53 = 0;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_151;
      }

      if (!HIDWORD(v53))
      {
        goto LABEL_129;
      }

      __break(1u);
    }

    else if (!v8)
    {
      *&v66 = v7;
      WORD4(v66) = a2;
      BYTE10(v66) = BYTE2(a2);
      BYTE11(v66) = BYTE3(a2);
      BYTE12(v66) = BYTE4(a2);
      v53 = BYTE6(a2);
      BYTE13(v66) = BYTE5(a2);
      v54 = &v66;
      goto LABEL_130;
    }

    v61 = v7;
    v62 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v7 = __DataStorage._bytes.getter();
      if (!v7)
      {
        __DataStorage._length.getter();
        goto LABEL_128;
      }

      v63 = __DataStorage._offset.getter();
      if (!__OFSUB__(v61, v63))
      {
        v7 += v61 - v63;
        v64 = __DataStorage._length.getter();
        if (v7)
        {
          if (v64 >= v62)
          {
            v53 = v62;
          }

          else
          {
            v53 = v64;
          }

          if ((v53 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_126;
          }

LABEL_129:
          v54 = v7;
LABEL_130:
          sub_10018F284(v54, v53, 42, &v67);
          if (!v65)
          {
            [v4 setDeviceBasedVPP:{v67 != 0, v66}];
          }

          return;
        }

LABEL_128:
        v53 = 0;
        goto LABEL_129;
      }

LABEL_153:
      __break(1u);
    }

LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }
}

id sub_10061BADC()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

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

uint64_t sub_10061BBA8(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10061BC04()
{
  result = qword_10077E990;
  if (!qword_10077E990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077E990);
  }

  return result;
}

uint64_t sub_10061BC50(void *a1)
{
  v3 = sub_1001F0C48(&qword_100789E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100006D8C(a1, a1[3]);
  sub_10061CD40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for ActionButtonInstallMetadata();
    v12 = 2;
    type metadata accessor for URL();
    sub_10039F230(&qword_100782898);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061BED8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v3 - 8);
  v26 = &v24 - v4;
  v5 = type metadata accessor for URL();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_100789E68);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ActionButtonInstallMetadata();
  __chkstk_darwin(v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006D8C(a1, a1[3]);
  sub_10061CD40();
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000710C(a1);
  }

  v31 = v11;
  v15 = v28;
  v37 = 0;
  v16 = v10;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v36 = 1;
  v13[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 2;
  v18 = v15;
  sub_10039F230(&qword_100781BB8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = a1;
  v20 = v31;
  (*(v27 + 32))(v13 + v31[6], v7, v18);
  v34 = 3;
  *(v13 + v20[7]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v33 = 4;
  v21 = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v29;
  sub_1002321B0(v21, v13 + v20[8]);
  v32 = 5;
  LOBYTE(v21) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v22 + 8))(v16, v30);
  *(v13 + v20[9]) = v21;
  sub_10061CD94(v13, v25);
  sub_10000710C(v19);
  return sub_10061CDF8(v13);
}

uint64_t sub_10061C3D4()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6574616470557369;
  v4 = 0x6572616853707061;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657449656C707061;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10061C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10061CF6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10061C4CC(uint64_t a1)
{
  v2 = sub_10061CD40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10061C508(uint64_t a1)
{
  v2 = sub_10061CD40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10061C574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57 = a6;
  v62 = a5;
  v63 = a4;
  v66 = a3;
  v50 = a2;
  v64 = a1;
  v65 = a11;
  v51 = a10;
  v13 = sub_1001F0C48(&unk_1007809F0);
  v14 = __chkstk_darwin(v13 - 8);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v50 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppInstallRequestType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v23;
  v24 = type metadata accessor for UUID();
  v25 = __chkstk_darwin(v24 - 8);
  v58 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a9;
  v61 = *(a9 - 8);
  v27 = v61;
  v28 = __chkstk_darwin(v25);
  v56 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v54 = &v50 - v30;
  v53 = *(v27 + 16);
  v53();
  v71[3] = a8;
  v71[4] = v51;
  v31 = sub_10020A748(v71);
  (*(*(a8 - 8) + 16))(v31, v57, a8);
  UUID.init()();
  v32 = type metadata accessor for ActionButtonInstallMetadata();
  if (*(a7 + v32[7]))
  {
    v33 = &enum case for AppInstallRequestType.update(_:);
  }

  else
  {
    v33 = &enum case for AppInstallRequestType.install(_:);
  }

  (*(v21 + 104))(v23, *v33, v20);
  v34 = a7[1];
  v57 = *a7;
  (*(v18 + 16))(v67, a7 + v32[6], v17);
  v35 = v59;
  (*(v18 + 56))(v59, 1, 1, v17);
  sub_10020A980(v62, v70);
  v51 = a7[2];
  v36 = v60;
  sub_100337114(a7 + v32[8], v60);
  LODWORD(v50) = *(a7 + v32[9]);
  v37 = type metadata accessor for ADPInstallConfiguration(0);
  sub_10020A980(v71, v68);
  v38 = sub_100231ED8(v68, v69);
  v62 = &v50;
  __chkstk_darwin(v38);
  v40 = &v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  v42 = v56;
  v43 = v54;
  v44 = v52;
  (v53)(v56, v54, v52);
  v45 = type metadata accessor for Dependencies();

  v46 = v63;

  v47 = v64;
  v48 = sub_10038B61C(v58, v47, v42, v55, 0, 0, 0, 0, v57, v34, v66, v46, v67, v35, v70, 0, 0xF000000000000000, 2u, 1u, 0, 1u, v51, 0, v36, v50 & 1, v40, v37, v44, v45, v65, &off_100770208);
  sub_10000710C(v68);
  (*(v61 + 8))(v43, v44);
  sub_10000710C(v71);
  return v48;
}

uint64_t type metadata accessor for ActionButtonInstallMetadata()
{
  result = qword_100789E20;
  if (!qword_100789E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10061CC34()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10037F89C();
    if (v1 <= 0x3F)
    {
      sub_10061CCF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10061CCF0()
{
  if (!qword_1007810F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1007810F8);
    }
  }
}

unint64_t sub_10061CD40()
{
  result = qword_100789E70;
  if (!qword_100789E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789E70);
  }

  return result;
}

uint64_t sub_10061CD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButtonInstallMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061CDF8(uint64_t a1)
{
  v2 = type metadata accessor for ActionButtonInstallMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10061CE68()
{
  result = qword_100789E80;
  if (!qword_100789E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789E80);
  }

  return result;
}

unint64_t sub_10061CEC0()
{
  result = qword_100789E88;
  if (!qword_100789E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789E88);
  }

  return result;
}

unint64_t sub_10061CF18()
{
  result = qword_100789E90;
  if (!qword_100789E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789E90);
  }

  return result;
}

uint64_t sub_10061CF6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006C3670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006CEE20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10061D17C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = [a1 ams_DSID];
  if (!isa)
  {
    sub_1003F9BE0();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v9 = [objc_opt_self() sharedInstance];
  v29 = 0;
  v10 = [v9 keybagSyncDataWithAccountID:isa transactionType:a2 error:&v29];

  v11 = v29;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.general.getter();
    v14 = isa;
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 138543618;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v26 = &v26;
      __chkstk_darwin(ErrorValue);
      (*(v21 + 16))(&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v14;
      v22 = String.init<A>(describing:)();
      v24 = sub_1002346CC(v22, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Generating keybag for accountID: %{public}@ failed: %{public}s", v17, 0x16u);
      sub_1001F8084(v27);

      sub_10000710C(v28);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v12;
}

id sub_10061D578()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v21 = 0;
  v6 = [v4 importKeybagWithData:isa error:&v21];

  v7 = v21;
  if (v6)
  {

    return v7;
  }

  else
  {
    v20 = v21;
    v9 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.general.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      ErrorValue = swift_getErrorValue();
      v20 = &v20;
      __chkstk_darwin(ErrorValue);
      (*(v16 + 16))(&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = String.init<A>(describing:)();
      v19 = sub_1002346CC(v17, v18, &v21);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Importing keybag failed: %{public}s", v12, 0xCu);
      sub_10000710C(v13);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t type metadata accessor for IPA_DownloadTask()
{
  result = qword_100789EF8;
  if (!qword_100789EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10061D964()
{
  result = type metadata accessor for LogKey();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppInstall();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppPackage();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ManagedAppDeclarationStore();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ManagedAppDeclarationStatusStore();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_10061DA30(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v28 = a6;
  v11 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for AppInstall();
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IPA_DownloadTask();
  __chkstk_darwin(v17);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a4;
  v20 = a1;
  sub_1003A85C8(v20, v16);
  if (v6)
  {
    sub_10000710C(a5);

    sub_10000710C(a3);
  }

  else
  {
    v21 = a5;
    v22 = v28;
    sub_100621AB4(v16, v19 + v17[5], type metadata accessor for AppInstall);
    v23 = [v20 persistentID];
    v24 = sub_1005AFEA0(v29, v23);
    if (v24)
    {
      sub_1003A84AC(v24, v13);
      v25 = type metadata accessor for AppPackage();
      (*(*(v25 - 8) + 56))(v13, 0, 1, v25);

      sub_10000710C(v21);
      sub_100621AB4(v13, v19 + v17[6], type metadata accessor for AppPackage);
      *(v19 + v17[7]) = *(*sub_100006D8C(a3, a3[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      *(v19 + v17[8]) = *(*sub_100006D8C(a3, a3[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
      sub_100621790(v19, v22, type metadata accessor for IPA_DownloadTask);

      sub_10000710C(a3);
      sub_1006217F8(v19, type metadata accessor for IPA_DownloadTask);
    }

    else
    {
      v26 = type metadata accessor for AppPackage();
      (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
      __break(1u);
    }
  }
}

uint64_t sub_10061DD6C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for AppInstallTaskResult();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for DDMDeclaration(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for DownloadRequest();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for IPA_DownloadTask();
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10061DFA4, 0, 0);
}

uint64_t sub_10061DFA4()
{
  if (os_variant_has_internal_content())
  {
    *(v0 + 268) = 0;
    v1 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 268));

    if (*(v0 + 268))
    {
      if (AppBooleanValue)
      {
        v4 = *(v0 + 64) + *(*(v0 + 136) + 24);
        if (*(v4 + *(type metadata accessor for AppPackage() + 68)) == 1)
        {

LABEL_7:
          v6 = *(v0 + 144);
          v7 = *(v0 + 64);
          static Logger.install.getter();
          sub_100621790(v7, v6, type metadata accessor for IPA_DownloadTask);
          v8 = Logger.logObject.getter();
          v9 = static os_log_type_t.default.getter();
          v10 = os_log_type_enabled(v8, v9);
          v11 = *(v0 + 144);
          if (v10)
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            *v12 = 138412290;
            v14 = *v11;
            sub_1006217F8(v11, type metadata accessor for IPA_DownloadTask);
            *(v12 + 4) = v14;
            *v13 = v14;
            _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Forcing failure of delta update (expect further error messages prior to expected retry with full update)…", v12, 0xCu);
            sub_1000032A8(v13, &qword_10077F920);
          }

          else
          {

            sub_1006217F8(v11, type metadata accessor for IPA_DownloadTask);
          }

          v20 = *(v0 + 56);
          (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
          type metadata accessor for InternalError();
          sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
          v21 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          *v20 = v21;
          swift_storeEnumTagMultiPayload();

          v22 = *(v0 + 8);

          return v22();
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v15 = *(v0 + 64);
  v16 = *(*(v0 + 136) + 24);
  *(v0 + 264) = v16;
  v17 = *(v15 + v16 + *(type metadata accessor for AppPackage() + 64));
  *(v0 + 176) = v17 + 1;
  if (v17 == -1)
  {
    __break(1u);
  }

  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_10061E414;

  return sub_10061F460(v0 + 16);
}

uint64_t sub_10061E414()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10061F240;
  }

  else
  {
    v2 = sub_10061E554;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10061E554()
{
  v1 = *(v0 + 192);
  sub_1006205BC(v0 + 16, *(v0 + 128));
  if (v1)
  {
    sub_10000710C(v0 + 16);

    v2 = *(v0 + 8);
LABEL_3:

    return v2();
  }

  v4 = *(v0 + 136);
  v5 = *(v0 + 64);
  v6 = *(v4 + 20);
  v7 = (v5 + *(type metadata accessor for AppInstall() + 60) + v6);
  v8 = v7[1];
  *(v0 + 200) = v8;
  if (!v8)
  {
    v20 = *(v0 + 176);
    v10 = *(v0 + 264);
    v11 = *(v0 + 128);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 56);
    sub_1001F0C48(&unk_100780A80);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = v15 + *(v13 + 72);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10069E680;
    sub_100621790(v11, v17 + v15, type metadata accessor for DownloadRequest);
    type metadata accessor for AppInstallScheduler.ParkReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v18 = *(v5 + v10);
    *v12 = v20;
    v12[1] = v18;
    swift_storeEnumTagMultiPayload();
    v19 = sub_10036453C(1uLL, 2, 1, v17);
    sub_1006217F8(v11, type metadata accessor for DownloadRequest);
    sub_10000710C(v0 + 16);
    *(v19 + 16) = 2;
    sub_100621AB4(v12, v16 + v19, type metadata accessor for AppInstallTaskResult);
    *v14 = v19;
    swift_storeEnumTagMultiPayload();

    v2 = *(v0 + 8);
    goto LABEL_3;
  }

  *(v0 + 208) = *v7;
  v9 = *(v5 + *(v4 + 28));
  *(v0 + 216) = v9;

  return _swift_task_switch(sub_10061E894, v9, 0);
}

uint64_t sub_10061E894()
{
  v1 = v0;
  v3 = v0 + 26;
  v2 = v0[26];
  v4 = v1[25];
  v5 = *(v3[1] + 112);
  v6 = swift_task_alloc();
  v1[28] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v1[29] = v7;
  *v7 = v1;
  v7[1] = sub_10061E9AC;
  v8 = v1[12];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_10061E9AC()
{

  if (v0)
  {

    v1 = sub_10061EDA8;
  }

  else
  {

    v1 = sub_10061EB20;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10061EB20()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[8];
  (*(v0[14] + 56))(v3, 0, 1, v0[13]);
  sub_100621AB4(v3, v2, type metadata accessor for DDMDeclaration);
  v5 = *(v4 + *(v1 + 32));
  v6 = *v4;
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_10061EC50;
  v8 = v0[15];

  return sub_1003EB708(v8, v5, v6);
}

uint64_t sub_10061EC50(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v7 = sub_10061F31C;
  }

  else
  {
    v7 = sub_10061F004;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10061EDA8()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 112) + 56))(v1, 1, 1, *(v0 + 104));
  sub_1000032A8(v1, &unk_1007809E0);
  v15 = *(v0 + 176);
  v2 = *(v0 + 264);
  v3 = *(v0 + 128);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);
  sub_1001F0C48(&unk_100780A80);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = v8 + *(v5 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10069E680;
  sub_100621790(v3, v10 + v8, type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = *(v6 + v2);
  *v4 = v15;
  v4[1] = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_10036453C(1uLL, 2, 1, v10);
  sub_1006217F8(v3, type metadata accessor for DownloadRequest);
  sub_10000710C(v0 + 16);
  *(v12 + 16) = 2;
  sub_100621AB4(v4, v9 + v12, type metadata accessor for AppInstallTaskResult);
  *v7 = v12;
  swift_storeEnumTagMultiPayload();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10061F004()
{
  sub_1006217F8(*(v0 + 120), type metadata accessor for DDMDeclaration);
  v14 = *(v0 + 176);
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 56);
  sub_1001F0C48(&unk_100780A80);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = v7 + *(v4 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10069E680;
  sub_100621790(v2, v9 + v7, type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = *(v5 + v1);
  *v3 = v14;
  v3[1] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = sub_10036453C(1uLL, 2, 1, v9);
  sub_1006217F8(v2, type metadata accessor for DownloadRequest);
  sub_10000710C(v0 + 16);
  *(v11 + 16) = 2;
  sub_100621AB4(v3, v8 + v11, type metadata accessor for AppInstallTaskResult);
  *v6 = v11;
  swift_storeEnumTagMultiPayload();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10061F240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10061F31C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[15];
  v3 = v0[16];
  sub_100270870();
  swift_allocError();
  *v5 = v1;
  v5[1] = v2;
  sub_1006217F8(v4, type metadata accessor for DDMDeclaration);
  sub_1006217F8(v3, type metadata accessor for DownloadRequest);
  sub_10000710C((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_10061F460(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = type metadata accessor for IPA_DownloadTask();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10061F664, 0, 0);
}

uint64_t sub_10061F664()
{
  v130 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 112);
  v5 = *(*(v0 + 120) + 20);
  v6 = type metadata accessor for AppInstall();
  sub_100621A44(v4 + *(v6 + 56) + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    sub_1000032A8(*(v0 + 208), &unk_100780A00);
    static Logger.install.getter();
    sub_100621790(v8, v7, type metadata accessor for IPA_DownloadTask);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *v12;
      sub_1006217F8(v12, type metadata accessor for IPA_DownloadTask);
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Coordinator identifier was incorrect type or missing", v13, 0xCu);
      sub_1000032A8(v14, &qword_10077F920);
    }

    else
    {

      sub_1006217F8(v12, type metadata accessor for IPA_DownloadTask);
    }

    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    type metadata accessor for InternalError();
    sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_19;
  }

  v16 = *(v0 + 240);
  (*(*(v0 + 224) + 32))(v16, *(v0 + 208), *(v0 + 216));
  v17 = sub_1005F8634(v16);
  if (!v17)
  {
LABEL_15:
    v45 = *(v0 + 136);
    v46 = *(v0 + 112);
    static Logger.install.getter();
    sub_100621790(v46, v45, type metadata accessor for IPA_DownloadTask);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 136);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = *v50;
      sub_1006217F8(v50, type metadata accessor for IPA_DownloadTask);
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%@] Expected coordinator could not be found", v51, 0xCu);
      sub_1000032A8(v52, &qword_10077F920);
    }

    else
    {

      sub_1006217F8(v50, type metadata accessor for IPA_DownloadTask);
    }

    v54 = *(v0 + 240);
    v56 = *(v0 + 216);
    v55 = *(v0 + 224);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    type metadata accessor for InternalError();
    sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    (*(v55 + 16))(v57, v54, v56);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v55 + 8))(v54, v56);
    goto LABEL_19;
  }

  v18 = v17;
  *(v0 + 64) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v19 = swift_dynamicCastObjCProtocolConditional();
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v21 = v18;
  v128 = v21;
  if ([v20 hasAppAssetPromise])
  {
    *(v0 + 88) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
    v22 = v21;
    v23 = swift_dynamicCastObjCProtocolUnconditional();
    v24 = v20;
    if ([v23 hasAppAssetPromise])
    {
      *(v0 + 96) = 0;
      v25 = [v23 appAssetPromiseWithError:v0 + 96];
      v26 = *(v0 + 96);
      if (v25)
      {
        v27 = v25;
        v28 = v26;

        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();

        if (v29)
        {
          v30 = *(v0 + 152);
          v31 = *(v0 + 112);
          static Logger.install.getter();
          sub_100621790(v31, v30, type metadata accessor for IPA_DownloadTask);
          v32 = v27;
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = *(v0 + 224);
            v36 = *(v0 + 232);
            v121 = *(v0 + 216);
            v124 = *(v0 + 168);
            v125 = *(v0 + 160);
            v126 = *(v0 + 200);
            v37 = *(v0 + 152);
            v123 = v32;
            v38 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v129 = v122;
            *v38 = 138412546;
            v39 = *v37;
            sub_1006217F8(v37, type metadata accessor for IPA_DownloadTask);
            *(v38 + 4) = v39;
            *v119 = v39;
            *(v38 + 12) = 2080;
            v40 = [v29 uniqueIdentifier];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1004B3E24(&qword_100789F60, &type metadata accessor for UUID);
            v41 = dispatch thunk of CustomStringConvertible.description.getter();
            v43 = v42;
            (*(v35 + 8))(v36, v121);
            v44 = sub_1002346CC(v41, v43, &v129);

            *(v38 + 14) = v44;
            _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Using existing extractor: %s", v38, 0x16u);
            sub_1000032A8(v119, &qword_10077F920);

            sub_10000710C(v122);

            v32 = v123;

            (*(v124 + 8))(v126, v125);
          }

          else
          {
            v105 = *(v0 + 200);
            v107 = *(v0 + 160);
            v106 = *(v0 + 168);
            v108 = *(v0 + 152);

            sub_1006217F8(v108, type metadata accessor for IPA_DownloadTask);
            (*(v106 + 8))(v105, v107);
          }

          v109 = *(v0 + 232);
          v111 = *(v0 + 104);
          v110 = *(v0 + 112);
          v112 = [v24 uniqueIdentifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v113 = *v110;
          v114 = type metadata accessor for StreamingExtractor();
          swift_allocObject();
          v127 = v32;
          v120 = sub_10048E714(v109, v29, v113);
          *(v111 + 24) = v114;
          *(v111 + 32) = &off_1007660C0;
          goto LABEL_40;
        }

        v22 = v27;
      }

      else
      {
        v60 = v26;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
    }
  }

  v61 = *(v0 + 112) + *(*(v0 + 120) + 24);
  v62 = *(v61 + 64);
  v63 = type metadata accessor for AppPackage();
  v64 = (v61 + *(v63 + 72));
  if (*(v64 + 8))
  {
    v65 = 0;
  }

  else
  {
    v65 = *v64;
  }

  v66 = (v61 + *(v63 + 36));
  v68 = v66[1];
  v67 = v66[2];
  *(v0 + 16) = *v66;
  *(v0 + 32) = v68;
  *(v0 + 48) = v67;
  v69 = sub_100625FA0();
  v70 = sub_10060B720(v0 + 16, 0);

  v71 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  sub_10020965C(v70);

  v72 = objc_allocWithZone(IXPromisedStreamingZipTransfer);
  v73 = v71;
  v74 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v76 = [v72 initWithName:v74 client:28 streamingZipOptions:isa archiveSize:v62 diskSpaceNeeded:v65 location:v73];

  if (!v76)
  {
    v89 = *(v0 + 144);
    v90 = *(v0 + 112);
    static Logger.install.getter();
    sub_100621790(v90, v89, type metadata accessor for IPA_DownloadTask);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 144);
    if (v93)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      v97 = *v94;
      sub_1006217F8(v94, type metadata accessor for IPA_DownloadTask);
      *(v95 + 4) = v97;
      *v96 = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "[%@] Configuring zip extractor failed", v95, 0xCu);
      sub_1000032A8(v96, &qword_10077F920);
    }

    else
    {

      sub_1006217F8(v94, type metadata accessor for IPA_DownloadTask);
    }

    v102 = *(v0 + 240);
    v104 = *(v0 + 216);
    v103 = *(v0 + 224);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    type metadata accessor for InternalError();
    sub_1004B3E24(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v103 + 8))(v102, v104);
    goto LABEL_19;
  }

  *(v0 + 72) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v77 = v128;
  v78 = swift_dynamicCastObjCProtocolUnconditional();
  *(v0 + 80) = 0;
  v79 = v20;
  v80 = [v78 setAppAssetPromise:v76 error:v0 + 80];
  v81 = *(v0 + 80);
  if (!v80)
  {
    v98 = *(v0 + 240);
    v100 = *(v0 + 216);
    v99 = *(v0 + 224);
    v101 = v81;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v99 + 8))(v98, v100);
LABEL_19:

    v58 = *(v0 + 8);
    goto LABEL_20;
  }

  v82 = *(v0 + 232);
  v84 = *(v0 + 104);
  v83 = *(v0 + 112);
  v85 = v81;

  v86 = [v79 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = *v83;
  v88 = type metadata accessor for StreamingExtractor();
  swift_allocObject();
  v127 = v76;
  v120 = sub_10048E714(v82, v76, v87);
  *(v84 + 24) = v88;
  *(v84 + 32) = &off_1007660C0;

LABEL_40:
  v115 = *(v0 + 240);
  v117 = *(v0 + 216);
  v116 = *(v0 + 224);
  v118 = *(v0 + 104);

  *v118 = v120;
  (*(v116 + 8))(v115, v117);

  v58 = *(v0 + 8);
LABEL_20:

  return v58();
}

uint64_t sub_1006205BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v3 = v2;
  v178 = type metadata accessor for DownloadRequest();
  __chkstk_darwin(v178);
  v192 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IPA_DownloadTask();
  v7 = __chkstk_darwin(v6);
  v9 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v171 = &v160 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v160 - v13;
  v15 = __chkstk_darwin(v12);
  v169 = (&v160 - v16);
  v17 = __chkstk_darwin(v15);
  v179 = &v160 - v18;
  __chkstk_darwin(v17);
  v20 = (&v160 - v19);
  v21 = type metadata accessor for Logger();
  v183 = *(v21 - 8);
  v184 = v21;
  v22 = __chkstk_darwin(v21);
  v174 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v173 = &v160 - v25;
  __chkstk_darwin(v24);
  v180 = &v160 - v26;
  v27 = 0x80000001006C41E0;
  v182 = v6;
  v28 = (v3 + *(v6 + 20));
  v29 = type metadata accessor for AppInstall();
  v30 = (v28 + v29[13]);
  v31 = v30[1];
  v219 = v29;
  if (v31)
  {
    v190 = *v30;

    v29 = v219;
    v27 = v31;
  }

  else
  {
    v190 = 0xD000000000000021;
  }

  v32 = *(v28 + v29[23]);
  v177 = v9;
  v33 = v182;
  if (v32 == 1 && !*(v28 + v29[35]))
  {
    v153 = (v28 + v29[10]);
    v154 = *v153;
    v188 = v153[1];
    v189 = v154;

    v29 = v219;
  }

  else
  {
    v188 = 0;
    v189 = 0;
  }

  v170 = v14;
  v191 = v27;
  v187 = *(v28 + v29[37]) == 0;
  v34 = *(v28 + v29[31]);
  if (v34)
  {
    v35 = (v34 >> 15) & 2 | 5;
  }

  else
  {
    v35 = (v34 >> 15) & 2;
  }

  if (*(v28 + v29[31]) == 2)
  {
    v35 = 0;
  }

  v186 = v35;
  sub_10020A980(a1, v212);
  v213 = 0;
  memset(v215, 0, 64);
  v214 = 1;
  v36 = (v3 + *(v33 + 24));
  v185 = type metadata accessor for AppPackage();
  sub_100621858(v36 + v185[21], v215);
  v175 = v28;
  v176 = v36;
  if (v36[1])
  {
    v168 = v36[1];
    static Logger.install.getter();
    v37 = v20;
    sub_100621790(v3, v20, type metadata accessor for IPA_DownloadTask);
    v38 = v179;
    sub_100621790(v3, v179, type metadata accessor for IPA_DownloadTask);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412546;
      v43 = *v20;
      v44 = v3;
      v45 = v43;
      sub_1006217F8(v37, type metadata accessor for IPA_DownloadTask);
      *(v41 + 4) = v45;
      *v42 = v45;
      *(v41 + 12) = 2048;
      v46 = *(v38 + *(v182 + 24) + 8);
      sub_1006217F8(v38, type metadata accessor for IPA_DownloadTask);
      *(v41 + 14) = v46;
      v3 = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%@] Expecting package data start at offset: %lu", v41, 0x16u);
      sub_1000032A8(v42, &qword_10077F920);
    }

    else
    {
      sub_1006217F8(v38, type metadata accessor for IPA_DownloadTask);

      sub_1006217F8(v20, type metadata accessor for IPA_DownloadTask);
    }

    (*(v183 + 8))(v180, v184);
    v213 = v168;
    v214 = 0;
    v28 = v175;
  }

  v181 = v3;
  v47 = v185[19];
  v48 = v178;
  v49 = *(v178 + 24);
  v50 = type metadata accessor for URL();
  v51 = v192;
  v52 = v176;
  (*(*(v50 - 8) + 16))(&v192[v49], v176 + v47, v50);
  v53 = &v51[v48[17]];
  v53[3] = &type metadata for DownloadRequest.Streaming;
  v53[4] = &off_100764198;
  v54 = swift_allocObject();
  *v53 = v54;
  sub_1006218C8(v212, v54 + 16);
  LOBYTE(v209) = 1;
  *(&v209 + 1) = v218[0];
  DWORD1(v209) = *(v218 + 3);
  *(&v209 + 1) = v186;
  LOWORD(v210) = v187;
  *(&v210 + 2) = v216;
  WORD3(v210) = v217;
  *(&v210 + 1) = v190;
  *&v211[0] = v191;
  *(&v211[0] + 1) = v189;
  *&v211[1] = v188;
  BYTE8(v211[1]) = 1;
  v180 = *v28;
  v55 = v219;
  v56 = v219[19];
  v57 = v48[5];
  v58 = type metadata accessor for UUID();
  (*(*(v58 - 8) + 16))(&v51[v57], v28 + v56, v58);
  v59 = v48[9];
  v60 = v28;
  v61 = &v51[v48[11]];
  *v61 = 0;
  v61[1] = 0;
  v61[2] = 1;
  v61[3] = 0;
  v61[4] = 0;
  v61[5] = 0;
  v62 = &v51[v48[12]];
  *(v62 + 10) = 0;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *(v62 + 4) = 0u;
  *(v62 + 11) = 0x8000000000000000;
  *(v62 + 12) = 0;
  v63 = v62 + 96;
  *(v62 + 13) = 0;
  v51[v48[13]] = 6;
  v64 = &v51[v48[14]];
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v168 = v64;
  *(v64 + 32) = 0;
  v51[v48[16]] = 0;
  v65 = *v181;
  v66 = &v51[v48[7]];
  *(v66 + 41) = *(v211 + 9);
  v67 = v211[0];
  v68 = v209;
  *(v66 + 1) = v210;
  *(v66 + 2) = v67;
  *v66 = v68;
  *v51 = v180;
  v69 = v48[8];
  v167 = v65;
  *&v51[v69] = v65;
  v70 = v185;
  v51[v59] = *(v52 + v185[14]);
  LODWORD(v59) = *(v60 + v55[35]);
  LODWORD(v179) = *(v60 + v55[35]) != 0;
  v51[v48[10]] = v59;
  LODWORD(v180) = v59 == 0;
  v71 = v52 + v70[11];
  v72 = *(v71 + 11);
  if (v72 >> 62 == 2 && v72 == 0x8000000000000000 && (v73 = vorrq_s8(vorrq_s8(*(v71 + 24), *(v71 + 56)), vorrq_s8(*(v71 + 40), *(v71 + 72))), !(*&vorr_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL)) | *(v71 + 12) | *(v71 + 13) | *(v71 + 2) | *(v71 + 1) | *v71)))
  {
    v74 = *(v62 + 5);
    v206 = *(v62 + 4);
    v207 = v74;
    v208 = *(v62 + 6);
    v75 = *(v62 + 1);
    v203 = *v62;
    v204 = v75;
    v76 = *(v62 + 3);
    v205[0] = *(v62 + 2);
    v205[1] = v76;
    sub_100621924(&v209, &v197);
    v77 = v167;
    sub_10031E0A0(&v203);
    *v62 = 0u;
    *(v62 + 1) = 0u;
    *(v62 + 2) = 0u;
    *(v62 + 3) = 0u;
    *(v62 + 4) = 0u;
    *(v62 + 10) = 0;
    *(v62 + 11) = 0x8000000000000000;
    *v63 = 0;
    *(v62 + 13) = 0;
    v78 = v181;
    v79 = v169;
  }

  else
  {
    v80 = *(v71 + 1);
    v203 = *v71;
    v204 = v80;
    v81 = *(v71 + 3);
    v205[0] = *(v71 + 2);
    v205[1] = v81;
    v82 = *(v71 + 5);
    v206 = *(v71 + 4);
    v207 = v82;
    v208 = *(v71 + 6);
    v163 = v203;
    v164 = v204;
    v165 = *(&v205[0] + 1);
    v83 = *&v205[0];
    v166 = *&v205[1];
    v84 = v206;
    if (*(&v82 + 1) >> 62)
    {
      v162 = v206;
      if (*(&v82 + 1) >> 62 != 1)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v89 = *(&v205[1] + 1);
      v161 = v208;
      v90 = v207 & 0xCFFFFFFFFFFFFFFFLL;
      v91 = BYTE8(v82) & 1 | 0x4000000000000000;
      v92 = *(v62 + 5);
      v200 = *(v62 + 4);
      v201 = v92;
      v202 = *(v62 + 6);
      v93 = *(v62 + 1);
      v197 = *v62;
      v198 = v93;
      v94 = *(v62 + 3);
      v199[0] = *(v62 + 2);
      v199[1] = v94;
      sub_100621924(&v209, v196);
      v95 = v167;
      sub_100361F08(&v203, v196);
      sub_10031E0A0(&v197);
      v96 = *(&v163 + 1);
      *v62 = v163;
      *(v62 + 1) = v96;
      v97 = *(&v164 + 1);
      *(v62 + 2) = v164;
      *(v62 + 3) = v97;
      v99 = v165;
      v98 = v166;
      *(v62 + 4) = v83;
      *(v62 + 5) = v99;
      *(v62 + 6) = v98;
      *(v62 + 7) = v89;
      *(v62 + 8) = v162;
      *(v62 + 9) = *(&v84 + 1);
      *(v62 + 10) = v90;
      *(v62 + 11) = v91;
      v100 = *(&v161 + 1);
      *(v62 + 12) = v161;
      *(v62 + 13) = v100;
    }

    else
    {
      v162 = *(&v205[1] + 1);
      sub_100621924(&v209, &v197);
      v85 = v167;
      sub_100361F08(&v203, &v197);
      sub_10020B0E0(v84, *(&v84 + 1));
      v86 = *(v62 + 5);
      v200 = *(v62 + 4);
      v201 = v86;
      v202 = *(v62 + 6);
      v87 = *(v62 + 1);
      v197 = *v62;
      v198 = v87;
      v88 = *(v62 + 3);
      v199[0] = *(v62 + 2);
      v199[1] = v88;
      sub_10031E0A0(&v197);
      if (v83 == 1)
      {
        *v62 = 0u;
        *(v62 + 1) = 0u;
        *(v62 + 2) = 0u;
        *(v62 + 3) = 0u;
        *(v62 + 4) = 0u;
        *(v62 + 10) = 0;
        *(v62 + 11) = 0x8000000000000000;
        *v63 = 0;
        *(v62 + 13) = 0;
      }

      else
      {
        v101 = *(&v163 + 1);
        *v62 = v163;
        *(v62 + 1) = v101;
        v102 = *(&v164 + 1);
        *(v62 + 2) = v164;
        *(v62 + 3) = v102;
        v103 = v165;
        v104 = v166;
        *(v62 + 4) = v83;
        *(v62 + 5) = v103;
        v105 = v162;
        *(v62 + 6) = v104;
        *(v62 + 7) = v105;
        *(v62 + 10) = 0;
        *(v62 + 11) = 0;
      }
    }

    v78 = v181;
    v79 = v169;
    v106 = v176[2];
    v107 = v176[3];
    v108 = v176[4];
    v109 = v176[5];
    v110 = v176[6];
    v111 = v176[7];
    *v61 = v106;
    v61[1] = v107;
    v61[2] = v108;
    v61[3] = v109;
    v61[4] = v110;
    v61[5] = v111;
    sub_10047D0D4(v106, v107, v108);
  }

  v112 = v175;
  v113 = v175 + v219[41];
  v114 = *v113;
  v115 = *(v113 + 1);
  v116 = v113[16];
  if (v116 == 255)
  {
    v195 = 0;
    memset(v194, 0, sizeof(v194));
  }

  else
  {
    if (v116)
    {
      v117 = &type metadata for WebDistributor;
      v118 = sub_100231E84();
    }

    else
    {
      v117 = &type metadata for NativeDistributor;
      v118 = sub_1003000A4();
    }

    *(&v204 + 1) = v117;
    *&v205[0] = v118;
    *&v203 = v114;
    *(&v203 + 1) = v115;
    sub_1001DFDBC(&v203, v194);
  }

  v119 = &v192[*(v178 + 60)];
  sub_10032F7B0(v114, v115, v116);
  sub_100621980(v194, v168);
  v120 = (v112 + v219[42]);
  v121 = v120[1];
  *v119 = *v120;
  *(v119 + 1) = v121;

  v122 = v173;
  static Logger.install.getter();
  sub_100621790(v78, v79, type metadata accessor for IPA_DownloadTask);
  LOBYTE(v203) = v179;
  *(&v203 + 1) = v218[0];
  DWORD1(v203) = *(v218 + 3);
  *(&v203 + 1) = v186;
  LOBYTE(v204) = v187;
  BYTE1(v204) = v180;
  *(&v204 + 2) = v216;
  WORD3(v204) = v217;
  *(&v204 + 1) = v190;
  *&v205[0] = v191;
  *(&v205[0] + 1) = v189;
  *&v205[1] = v188;
  BYTE8(v205[1]) = 1;
  sub_100621924(&v203, &v197);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  sub_1006219F0(&v203);
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v193 = v127;
    *v125 = 138412546;
    v128 = *v79;
    v129 = v79;
    v130 = v128;
    sub_1006217F8(v129, type metadata accessor for IPA_DownloadTask);
    *(v125 + 4) = v130;
    *v126 = v130;
    *(v125 + 12) = 2082;
    v197 = v203;
    v198 = v204;
    v199[0] = v205[0];
    *(v199 + 9) = *(v205 + 9);
    sub_100621924(&v203, v196);
    v131 = String.init<A>(describing:)();
    v133 = sub_1002346CC(v131, v132, &v193);

    *(v125 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v123, v124, "[%@] Will download package using request: %{public}s", v125, 0x16u);
    sub_1000032A8(v126, &qword_10077F920);

    sub_10000710C(v127);

    v134 = *(v183 + 8);
    v135 = v173;
  }

  else
  {

    sub_1006217F8(v79, type metadata accessor for IPA_DownloadTask);
    v134 = *(v183 + 8);
    v135 = v122;
  }

  v219 = v134;
  (v134)(v135, v184);
  v136 = v177;
  v137 = v170;
  v138 = v174;
  static Logger.install.getter();
  sub_100621790(v78, v137, type metadata accessor for IPA_DownloadTask);
  v139 = v78;
  v140 = v78;
  v141 = v171;
  sub_100621790(v139, v171, type metadata accessor for IPA_DownloadTask);
  sub_100621790(v140, v136, type metadata accessor for IPA_DownloadTask);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = v137;
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v197 = v147;
    *v144 = 138412802;
    v148 = *v145;
    sub_1006217F8(v145, type metadata accessor for IPA_DownloadTask);
    *(v144 + 4) = v148;
    *v146 = v148;
    *(v144 + 12) = 2082;
    v149 = (v141 + *(v182 + 24) + v185[20]);
    v150 = v141;
    if (v149[1])
    {
      v151 = *v149;
      v152 = v149[1];
    }

    else
    {
      v152 = 0xE90000000000006CLL;
      v151 = 0x6173726576696E55;
    }

    sub_1006217F8(v150, type metadata accessor for IPA_DownloadTask);
    v155 = sub_1002346CC(v151, v152, &v197);

    *(v144 + 14) = v155;
    *(v144 + 22) = 1024;
    v156 = v177;
    if (v177[*(v182 + 24) + v185[17]] == 1)
    {

      v157 = 1;
    }

    else
    {
      v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v157 = v158 & 1;
      v156 = v177;
    }

    sub_1006217F8(v156, type metadata accessor for IPA_DownloadTask);
    *(v144 + 24) = v157;
    _os_log_impl(&_mh_execute_header, v142, v143, "[%@] Downloading package with variant: %{public}s, isDelta: %{BOOL}d", v144, 0x1Cu);
    sub_1000032A8(v146, &qword_10077F920);

    sub_10000710C(v147);

    (v219)(v174, v184);
  }

  else
  {
    sub_1006217F8(v136, type metadata accessor for IPA_DownloadTask);

    sub_1006217F8(v141, type metadata accessor for IPA_DownloadTask);
    sub_1006217F8(v137, type metadata accessor for IPA_DownloadTask);
    (v219)(v138, v184);
  }

  sub_100621AB4(v192, v172, type metadata accessor for DownloadRequest);
  sub_10027323C(v212);
  LOBYTE(v197) = v179;
  *(&v197 + 1) = v218[0];
  DWORD1(v197) = *(v218 + 3);
  *(&v197 + 1) = v186;
  LOBYTE(v198) = v187;
  BYTE1(v198) = v180;
  *(&v198 + 2) = v216;
  WORD3(v198) = v217;
  *(&v198 + 1) = v190;
  *&v199[0] = v191;
  *(&v199[0] + 1) = v189;
  *&v199[1] = v188;
  BYTE8(v199[1]) = 1;
  return sub_1006219F0(&v197);
}

uint64_t sub_100621790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006217F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100621858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077E968);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100621980(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_10077FA50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100621A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100621AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100621B5C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_1007850A8);
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_100789F68);
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();

  return _swift_task_switch(sub_100621CEC, 0, 0);
}

uint64_t sub_100621CEC()
{
  v1 = v0[46];
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v0[56] = v2;
  if (v1)
  {
    if (v1 == 1)
    {
      if (qword_10077E590 != -1)
      {
        v12 = v2;
        swift_once();
        v2 = v12;
      }

      v3 = v0 + 10;
      v5 = v0[54];
      v4 = v0[55];
      v6 = v0[53];
      v7 = [v2 ams_activeiTunesAccountForMediaType:{qword_1007B88D8, v0 + 26}];
      v0[57] = v7;
      v0[10] = v0;
      v0[15] = v0 + 44;
      v0[11] = sub_10062214C;
      swift_continuation_init();
      v0[33] = v6;
      v8 = sub_10020A748(v0 + 30);
      sub_100006190(0, &qword_100781700);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v5 + 32))(v8, v4, v6);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_100621B30;
      v0[29] = &unk_10076F3E8;
    }

    else
    {
      if (qword_10077E590 != -1)
      {
        v13 = v2;
        swift_once();
        v2 = v13;
      }

      v3 = v0 + 2;
      v5 = v0[51];
      v11 = v0[52];
      v6 = v0[50];
      v7 = [v2 ams_iTunesAccountsForMediaType:{qword_1007B88D8, v0 + 18}];
      v0[59] = v7;
      v0[2] = v0;
      v0[7] = v0 + 42;
      v0[3] = sub_1006222F4;
      swift_continuation_init();
      v0[25] = v6;
      v8 = sub_10020A748(v0 + 22);
      sub_100006190(0, &qword_1007850B0);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v5 + 32))(v8, v11, v6);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_100621B1C;
      v0[21] = &unk_10076F3C0;
    }

    [v7 resultWithCompletion:?];
    (*(v5 + 8))(v8, v6);

    return _swift_continuation_await(v3);
  }

  else
  {

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_10062214C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_100622744;
  }

  else
  {
    v2 = sub_10062225C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10062225C()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 352);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006222F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 480) = v1;
  if (v1)
  {
    v2 = sub_1006227DC;
  }

  else
  {
    v2 = sub_100622404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100622404()
{
  v1 = *(v0 + 336);
  NSArray.makeIterator()();
  sub_10060F7E4();
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 296))
  {
    sub_1001F6498((v0 + 272), (v0 + 304));
    sub_100006190(0, &qword_100781700);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 344))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v2 = *(v0 + 472);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 376);

  (*(v4 + 8))(v3, v5);
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = _swiftEmptyArrayStorage[v7 + 4];
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 personaIdentifier];
      if (v11)
      {
        v12 = *(v0 + 360);
        v22 = *(v0 + 368);
        v13 = v11;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == v12 && v22 == v16)
        {
          v19 = *(v0 + 448);

          goto LABEL_26;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

LABEL_26:

          goto LABEL_31;
        }
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:

  v9 = 0;
LABEL_31:

  v20 = *(v0 + 8);

  return v20(v9);
}

uint64_t sub_100622744()
{
  v1 = v0[57];
  v2 = v0[56];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006227DC()
{
  v1 = v0[59];
  v2 = v0[56];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100622884(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 592) = a2;
  v12 = type metadata accessor for Logger();
  *(v6 + 424) = v12;
  *(v6 + 432) = *(v12 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v13 = type metadata accessor for LogKey.Prefix();
  *(v6 + 488) = v13;
  *(v6 + 496) = *(v13 - 8);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 264) = a3;
  *(v6 + 272) = a4;
  *(v6 + 280) = a5;
  *(v6 + 288) = a6;
  v14 = sub_10020A748((v6 + 240));
  (*(*(a3 - 8) + 16))(v14, a1, a3);

  return _swift_task_switch(sub_100622A40, 0, 0);
}

uint64_t sub_100622A40()
{
  v111 = v0;
  (*(*(v0 + 496) + 104))(*(v0 + 504), enum case for LogKey.Prefix.migrator(_:), *(v0 + 488));
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v2 = LogKey.init(prefix:)();
  *(v0 + 512) = v2;
  static Logger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Starting migrator", v6, 0xCu);
    sub_1001F8084(v7);
  }

  v9 = (v0 + 280);
  v10 = *(v0 + 480);
  v11 = *(v0 + 424);
  v12 = *(v0 + 432);

  v13 = *(v12 + 8);
  *(v0 + 520) = v13;
  *(v0 + 528) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v14 = *sub_100006D8C((v0 + 240), *(v0 + 264)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device;
  v107 = *(v14 + 24);
  *(v0 + 536) = v107;
  v15 = *(v14 + 32);
  *(v0 + 544) = v15;

  v16 = sub_10036BB34(1);
  if (v16 && (v17 = v16, v18 = String._bridgeToObjectiveC()(), v19 = [v17 stringForKey:v18], v18, v17, v19))
  {
    v20 = *(v0 + 592);
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v20 & 1) == 0 && (v107 == v21 && v15 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {

      static Logger.daemon.getter();
      v24 = v3;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 440);
      v29 = *(v0 + 424);
      if (v27)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v99 = v13;
        v32 = swift_slowAlloc();
        v110 = v32;
        *v30 = 138412546;
        *(v30 + 4) = v24;
        *v31 = v24;
        *(v30 + 12) = 2080;
        v104 = v24;
        v33 = sub_1002346CC(v107, v15, &v110);

        *(v30 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Migration not needed for '%s'", v30, 0x16u);
        sub_1001F8084(v31);

        sub_10000710C(v32);

        v99(v28, v29);
      }

      else
      {

        v13(v28, v29);
      }

LABEL_31:
      sub_10000710C(v0 + 240);

      v96 = *(v0 + 8);

      return v96();
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  static Logger.daemon.getter();

  v34 = v3;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v102 = *(v0 + 424);
  v105 = *(v0 + 472);
  if (v37)
  {
    v38 = swift_slowAlloc();
    v100 = v13;
    v39 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v38 = 138412802;
    *(v38 + 4) = v34;
    *v39 = v34;
    *(v38 + 12) = 2080;
    if (!v23)
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v40 = v34;
    v41 = sub_1002346CC(v21, v23, &v110);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_1002346CC(v107, v15, &v110);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Migrating from '%s' to '%s'", v38, 0x20u);
    sub_1001F8084(v39);

    swift_arrayDestroy();

    v9 = (v0 + 280);

    v100(v105, v102);
  }

  else
  {

    v13(v105, v102);
  }

  sub_1001F0C48(&qword_1007815C0);
  inited = swift_initStackObject();
  *(v0 + 552) = inited;
  *(inited + 16) = xmmword_10069E680;
  v43 = *(v0 + 264);
  v108 = *v9;
  v44 = sub_100006D8C((v0 + 240), v43);
  *(inited + 56) = &type metadata for CleanupOnMigrationTask;
  *(inited + 64) = &off_1007645C0;
  v45 = swift_allocObject();
  *(inited + 32) = v45;
  *(v45 + 40) = v43;
  *(v45 + 48) = v108;
  v46 = sub_10020A748((v45 + 16));
  (*(*(v43 - 8) + 16))(v46, v44, v43);
  *(v45 + 64) = v34;
  *(v45 + 72) = 0xD000000000000019;
  *(v45 + 80) = 0x80000001006CC1C0;
  *(v0 + 416) = inited;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1006A4050;
  v48 = *(v0 + 264);
  v49 = *(v0 + 280);
  v50 = sub_100006D8C((v0 + 240), v48);
  *(v47 + 56) = &type metadata for AppStoreInstallSheetConsistencyTask;
  *(v47 + 64) = &off_10075BDE8;
  v51 = swift_allocObject();
  *(v47 + 32) = v51;
  v51[5] = v48;
  v51[6] = v49;
  v52 = sub_10020A748(v51 + 2);
  (*(*(v48 - 8) + 16))(v52, v50, v48);
  v51[7] = v34;
  v51[8] = 0xD000000000000028;
  v51[9] = 0x80000001006CC1E0;
  *(v47 + 96) = &type metadata for MigrateMarketplacePriorityListTask;
  *(v47 + 104) = &off_10076EDF8;
  v53 = swift_allocObject();
  *(v47 + 72) = v53;
  v53[2] = v34;
  v53[3] = 0xD000000000000026;
  v53[4] = 0x80000001006CC210;
  v53[5] = 0xD000000000000023;
  v53[6] = 0x80000001006C3890;
  *(v47 + 136) = &type metadata for SetDistributorMetadataTask;
  *(v47 + 144) = &off_100762F28;
  *(v47 + 112) = v34;
  *(v47 + 120) = 0xD00000000000001DLL;
  *(v47 + 128) = 0x80000001006CC240;
  v54 = v34;
  sub_10065380C(v47);
  v55 = *(v0 + 416);
  *(v0 + 560) = v55;
  v56 = *(v55 + 16);
  *(v0 + 568) = v56;
  if (!v56)
  {

    v73 = [objc_opt_self() standardUserDefaults];
    if (v73)
    {
      v74 = v73;
      v75 = String._bridgeToObjectiveC()();

      v76 = String._bridgeToObjectiveC()();
      [v74 setObject:v75 forKey:v76];
    }

    else
    {
    }

    v83 = *(v0 + 512);
    static Logger.daemon.getter();
    v84 = v83;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 512);
    if (v87)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      *(v89 + 4) = v88;
      *v90 = v88;
      v91 = v88;
      _os_log_impl(&_mh_execute_header, v85, v86, "[%@] Migrator complete", v89, 0xCu);
      sub_1001F8084(v90);

      v92 = *(v0 + 512);
    }

    else
    {
      v92 = v85;
      v85 = *(v0 + 512);
    }

    v93 = *(v0 + 520);
    v94 = *(v0 + 464);
    v95 = *(v0 + 424);

    v93(v94, v95);
    goto LABEL_31;
  }

  *(v0 + 576) = 0;
  v57 = *(v0 + 512);
  sub_10020A980(v55 + 32, v0 + 296);
  static Logger.daemon.getter();
  sub_10020A980(v0 + 296, v0 + 336);
  v58 = v57;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 520);
  if (v61)
  {
    v63 = *(v0 + 512);
    v103 = *(v0 + 424);
    v106 = *(v0 + 456);
    v101 = *(v0 + 520);
    v64 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v110 = v98;
    *v64 = 138412546;
    *(v64 + 4) = v63;
    *v97 = v63;
    *(v64 + 12) = 2082;
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    sub_100006D8C((v0 + 336), v66);
    v67 = *(v65 + 8);
    v68 = v63;
    v69 = v67(v66, v65);
    v71 = v70;
    sub_10000710C(v0 + 336);
    v72 = sub_1002346CC(v69, v71, &v110);

    *(v64 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v59, v60, "[%@] Running %{public}s", v64, 0x16u);
    sub_1001F8084(v97);

    sub_10000710C(v98);

    v101(v106, v103);
  }

  else
  {
    v77 = *(v0 + 456);
    v78 = *(v0 + 424);

    v62(v77, v78);
    sub_10000710C(v0 + 336);
  }

  v79 = *(v0 + 320);
  v80 = *(v0 + 328);
  sub_100006D8C((v0 + 296), v79);
  v109 = (*(v80 + 16) + **(v80 + 16));
  v81 = swift_task_alloc();
  *(v0 + 584) = v81;
  *v81 = v0;
  v81[1] = sub_10062375C;

  return v109(v79, v80);
}

uint64_t sub_10062375C()
{

  return _swift_task_switch(sub_100623858, 0, 0);
}

uint64_t sub_100623858()
{
  v74 = v0;
  v1 = v0[64];
  static Logger.daemon.getter();
  sub_10020A980((v0 + 37), (v0 + 47));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[65];
  if (v5)
  {
    v7 = v0[64];
    v68 = v0[53];
    v70 = v0[56];
    v66 = v0[65];
    v8 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v73 = v64;
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v62 = v7;
    *(v8 + 12) = 2082;
    v10 = v0[50];
    v9 = v0[51];
    sub_100006D8C(v0 + 47, v10);
    v11 = *(v9 + 8);
    v12 = v7;
    v13 = v11(v10, v9);
    v15 = v14;
    sub_10000710C((v0 + 47));
    v16 = sub_1002346CC(v13, v15, &v73);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] %{public}s complete", v8, 0x16u);
    sub_1001F8084(v62);

    sub_10000710C(v64);

    v66(v70, v68);
  }

  else
  {
    v17 = v0[56];
    v18 = v0[53];

    v6(v17, v18);
    sub_10000710C((v0 + 47));
  }

  v19 = v0[71];
  v20 = v0[72] + 1;
  sub_10000710C((v0 + 37));
  if (v20 == v19)
  {

    v21 = [objc_opt_self() standardUserDefaults];
    if (v21)
    {
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();

      v24 = String._bridgeToObjectiveC()();
      [v22 setObject:v23 forKey:v24];
    }

    else
    {
    }

    v48 = v0[64];
    static Logger.daemon.getter();
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[64];
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v53;
      *v55 = v53;
      v56 = v53;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Migrator complete", v54, 0xCu);
      sub_1001F8084(v55);

      v57 = v0[64];
    }

    else
    {
      v57 = v50;
      v50 = v0[64];
    }

    v58 = v0[65];
    v59 = v0[58];
    v60 = v0[53];

    v58(v59, v60);
    sub_10000710C((v0 + 30));

    v61 = v0[1];

    return v61();
  }

  else
  {
    v25 = v0[72];
    v0[72] = v25 + 1;
    v26 = v0[64];
    sub_10020A980(v0[70] + 40 * v25 + 72, (v0 + 37));
    static Logger.daemon.getter();
    sub_10020A980((v0 + 37), (v0 + 42));
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[65];
    if (v30)
    {
      v32 = v0[64];
      v69 = v0[53];
      v71 = v0[57];
      v67 = v0[65];
      v33 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v33 = 138412546;
      *(v33 + 4) = v32;
      *v63 = v32;
      *(v33 + 12) = 2082;
      v35 = v0[45];
      v34 = v0[46];
      sub_100006D8C(v0 + 42, v35);
      v36 = *(v34 + 8);
      v37 = v32;
      v38 = v36(v35, v34);
      v40 = v39;
      sub_10000710C((v0 + 42));
      v41 = sub_1002346CC(v38, v40, &v73);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Running %{public}s", v33, 0x16u);
      sub_1001F8084(v63);

      sub_10000710C(v65);

      v67(v71, v69);
    }

    else
    {
      v42 = v0[57];
      v43 = v0[53];

      v31(v42, v43);
      sub_10000710C((v0 + 42));
    }

    v44 = v0[40];
    v45 = v0[41];
    sub_100006D8C(v0 + 37, v44);
    v72 = (*(v45 + 16) + **(v45 + 16));
    v46 = swift_task_alloc();
    v0[73] = v46;
    *v46 = v0;
    v46[1] = sub_10062375C;

    return v72(v44, v45);
  }
}

uint64_t sub_100623F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 232) = v12;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100624104, 0, 0);
}

uint64_t sub_100624104()
{
  v81 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 104);
  (*(*(v0 + 168) + 56))(v2, 1, 1, *(v0 + 160));
  sub_10060A8A4(v2, v1);
  type metadata accessor for LogActivity();
  v4 = swift_allocObject();
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v5 = _os_activity_create(&_mh_execute_header, "sendBackgroundAssetEvent", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v5, (v0 + 80));
  swift_unknownObjectRelease();
  *(v4 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v6 = *(v0 + 24);
  v7 = *(v0 + 104);
  if (v6)
  {

    *(swift_task_alloc() + 16) = v7;

    v8 = v7;
    os_unfair_lock_lock((v6 + 24));
    sub_100231C24((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v3;
    v9 = v7;
  }

  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = StaticString.description.getter();
  *(v10 + 24) = v11;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v10);
  os_unfair_lock_unlock(&dword_100788650);
  v79 = v4;
  v12 = *(v0 + 208);
  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  sub_10060A8A4(*(v0 + 216), v12);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = *(v0 + 216);
  v75 = v3;
  if (v15 == 1)
  {
    sub_1000032A8(v16, &unk_10077F8E0);

    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 200);
    v19 = *(v0 + 192);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    (*(v20 + 32))(v18, *(v0 + 208), v21);
    (*(v20 + 16))(v19, v18, v21);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v22 = sub_1005AD4D8("sendBackgroundAssetEvent", 24, 2, v19);

    (*(v20 + 8))(v18, v21);
    sub_1000032A8(v16, &unk_10077F8E0);
    v17 = v22;
  }

  v76 = *(v0 + 232);
  v23 = *(v0 + 136);
  v24 = *(v0 + 104);
  *(v0 + 48) = v79;
  *(v0 + 56) = v6;
  *(v0 + 64) = v10;
  *(v0 + 72) = v17;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1001F0C48(&qword_100783D78);
  swift_task_localValuePush();
  v25 = v24;
  sub_100625B04();

  v26 = String._bridgeToObjectiveC()();
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = [objc_opt_self() descriptorWithAppBundleIdentifier:v26 appBundleURL:v28 event:v23 client:0];

  v31 = (v76 - 2);
  v32 = v31 > -2;
  [v30 setAutomaticInstall:v31 < -1];
  [v30 setUserInitiated:v32];
  v33 = [objc_allocWithZone(BAAppStoreClient) init];
  *(v0 + 96) = 0;
  v34 = [v33 performEventWithDescriptor:v30 error:v0 + 96];
  v35 = *(v0 + 96);
  v36 = *(v0 + 104);
  if (v34)
  {
    v37 = v35;
    static Logger.install.getter();
    v38 = v36;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 184);
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);
    if (v41)
    {
      v66 = *(v0 + 144);
      v67 = *(v0 + 152);
      log = v39;
      v45 = *(v0 + 104);
      v77 = *(v0 + 184);
      v46 = swift_slowAlloc();
      v71 = v33;
      v47 = swift_slowAlloc();
      v73 = v44;
      v48 = swift_slowAlloc();
      v80[0] = v48;
      *v46 = 138412546;
      *(v46 + 4) = v45;
      *v47 = v75;
      *(v46 + 12) = 2082;
      v49 = v45;
      *(v46 + 14) = sub_1002346CC(v66, v67, v80);
      _os_log_impl(&_mh_execute_header, log, v40, "[%@] Sent %{public}s to Background Assets", v46, 0x16u);
      sub_1000032A8(v47, &qword_10077F920);

      sub_10000710C(v48);

      (*(v43 + 8))(v77, v73);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }
  }

  else
  {
    v50 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.install.getter();
    v51 = v36;

    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 168);
    v78 = *(v0 + 176);
    v56 = *(v0 + 160);
    if (v54)
    {
      v68 = *(v0 + 144);
      loga = *(v0 + 152);
      v72 = v52;
      v57 = *(v0 + 104);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v56;
      v60 = swift_slowAlloc();
      v80[0] = v60;
      *v58 = 138412802;
      *(v58 + 4) = v57;
      *v59 = v75;
      *(v58 + 12) = 2082;
      v61 = v57;
      *(v58 + 14) = sub_1002346CC(v68, loga, v80);
      *(v58 + 22) = 2114;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 24) = v62;
      v59[1] = v62;
      _os_log_impl(&_mh_execute_header, v72, v53, "[%@] Failed to send %{public}s to Background Assets: %{public}@", v58, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v60);

      (*(v55 + 8))(v78, v74);
    }

    else
    {

      (*(v55 + 8))(v78, v56);
    }
  }

  v63 = *(v0 + 224);
  swift_task_localValuePop();

  sub_1000032A8(v63, &unk_10077F8E0);

  v64 = *(v0 + 8);

  return v64();
}