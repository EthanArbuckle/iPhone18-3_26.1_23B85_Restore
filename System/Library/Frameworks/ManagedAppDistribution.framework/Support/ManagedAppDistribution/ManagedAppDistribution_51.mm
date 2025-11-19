id sub_100624AC0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  v34 = a3;
  v6 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = objc_allocWithZone(LSApplicationRecord);

  result = sub_10049E57C(a1, a2, 1);
  v33 = a1;
  if (result)
  {
    v32 = result;
    v18 = [result URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for TaskPriority();
    v20 = v8;
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v21 = v9;
    (*(v10 + 16))(v13, v15, v9);
    v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v31 = (v22 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v22 + v11 + 23;
    v24 = v35;
    v25 = v23 & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    v27 = v33;
    *(v26 + 4) = v24;
    *(v26 + 5) = v27;
    *(v26 + 6) = a2;
    (*(v10 + 32))(&v26[v22], v13, v21);
    v28 = &v26[v31];
    *v28 = 20;
    v28[8] = v34;
    v29 = &v26[v25];
    *v29 = 0x6573756170;
    *(v29 + 1) = 0xE500000000000000;

    v30 = v24;
    sub_1004A673C(0, 0, v20, &unk_1006B9B70, v26);

    return (*(v10 + 8))(v15, v21);
  }

  return result;
}

uint64_t sub_100624DF4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100623F88(a1, v12, v11, v5, v6, v7, v1 + v4, v8);
}

id sub_100624F60(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  v34 = a3;
  v6 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = objc_allocWithZone(LSApplicationRecord);

  result = sub_10049E57C(a1, a2, 1);
  v33 = a1;
  if (result)
  {
    v32 = result;
    v18 = [result URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for TaskPriority();
    v20 = v8;
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v21 = v9;
    (*(v10 + 16))(v13, v15, v9);
    v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v31 = (v22 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v22 + v11 + 23;
    v24 = v35;
    v25 = v23 & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    v27 = v33;
    *(v26 + 4) = v24;
    *(v26 + 5) = v27;
    *(v26 + 6) = a2;
    (*(v10 + 32))(&v26[v22], v13, v21);
    v28 = &v26[v31];
    *v28 = 21;
    v28[8] = v34;
    v29 = &v26[v25];
    *v29 = 0x656D75736572;
    *(v29 + 1) = 0xE600000000000000;

    v30 = v24;
    sub_1004A673C(0, 0, v20, &unk_1006B9B78, v26);

    return (*(v10 + 8))(v15, v21);
  }

  return result;
}

uint64_t sub_100625294(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_100623F88(a1, v12, v11, v5, v6, v7, v1 + v4, v8);
}

id sub_100625400(void *a1, int a2, void *a3)
{
  v34 = a3;
  v33 = a2;
  v4 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  result = [a1 bundleIdentifier];
  if (result)
  {
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v17;
    v32 = v16;

    v18 = [a1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0x80000001006CEEE0;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    (*(v8 + 16))(v11, v13, v7);
    v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v22 = v6;
    v23 = v34;
    v24 = v31;
    v25 = v32;
    *(v21 + 4) = v34;
    *(v21 + 5) = v25;
    *(v21 + 6) = v24;
    (*(v8 + 32))(&v21[v20], v11, v7);
    v26 = &v21[(v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v26 = 5;
    v26[8] = v33;
    v27 = &v21[(v20 + v9 + 23) & 0xFFFFFFFFFFFFFFF8];
    *v27 = 0xD000000000000011;
    *(v27 + 1) = v30;
    v28 = v23;
    sub_1004A673C(0, 0, v22, &unk_1006B9B80, v21);

    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006256E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1006257D0()
{
  sub_1001F0C48(&qword_100789F78);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1007B88E0 = result;
  return result;
}

uint64_t sub_100625874()
{
  v0 = type metadata accessor for Logger();
  sub_100367DEC(v0, qword_1007B88E8);
  sub_1002710CC(v0, qword_1007B88E8);
  static Logger.madSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006258D8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v13[1])
  {
    v4 = v13[0];

    if (v4)
    {
    }
  }

  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000710C(v9);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_100625B04()
{
  v0 = type metadata accessor for LogKey.Prefix();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v29[-v5];
  v7 = type metadata accessor for LogKey.Representation();
  __chkstk_darwin(v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LogKey.representation.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v10 = v9[1];
    sub_1006258D8();
    if (qword_10077E5A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1002710CC(v12, qword_1007B88E8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446210;

      *(v15 + 4) = sub_1002346CC(v11, v10, &v32);
      _os_log_impl(&_mh_execute_header, v13, v14, "Activity associated with %{public}s", v15, 0xCu);
      sub_10000710C(v16);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v17 = *(v9 + *(sub_1001F0C48(&qword_100789F70) + 48));
    (*(v1 + 32))(v6, v9, v0);
    sub_1006258D8();
    if (qword_10077E5A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1002710CC(v18, qword_1007B88E8);
    (*(v1 + 16))(v4, v6, v0);
    sub_1002141F4();
    sub_1002141F4();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = v17;
      v22 = v21;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v22 = 136315650;
      v23 = LogKey.Prefix.rawValue.getter();
      v25 = v24;
      v26 = *(v1 + 8);
      v26(v4, v0);
      v27 = sub_1002346CC(v23, v25, &v32);

      *(v22 + 4) = v27;
      *(v22 + 12) = 1040;
      *(v22 + 14) = 8;
      *(v22 + 18) = 1024;
      *(v22 + 20) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Activity associated with %s%.*X", v22, 0x18u);
      sub_10000710C(v31);

      v26(v6, v0);
    }

    else
    {

      v28 = *(v1 + 8);
      v28(v4, v0);
      v28(v6, v0);
    }
  }
}

uint64_t sub_100625FA0()
{
  v0 = type metadata accessor for LogKey.Prefix();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v4 = v10;
  if (v10)
  {

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);
    v6 = v5;
    os_unfair_lock_unlock((v4 + 24));

    if (v5)
    {
      return v6;
    }
  }

  (*(v1 + 104))(v3, enum case for LogKey.Prefix.undefined(_:), v0);
  v8 = objc_allocWithZone(type metadata accessor for LogKey());
  return LogKey.init(prefix:)();
}

uint64_t sub_10062611C()
{
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v0 = v5;
  if (v5)
  {

    v2 = __chkstk_darwin(v1);
    __chkstk_darwin(v2);

    os_unfair_lock_lock(v5 + 6);
    sub_1006262A8(&v4);
    os_unfair_lock_unlock(v0 + 6);
  }

  sub_100625B04();
}

id sub_100626258(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_1006262A8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_1006262F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 361) = a3;
  *(v4 + 16) = a1;
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 40) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3D8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  sub_1001F0C48(&qword_10077E908);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 120) = swift_task_alloc();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v4 + 136) = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  *(v4 + 200) = v7;
  *(v4 + 208) = *(v7 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  *(v4 + 232) = v8;
  *(v4 + 240) = *(v8 - 8);
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10062666C, 0, 0);
}

uint64_t sub_10062666C()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v50 = v0[24];
  v40 = v0[23];
  v43 = v0[19];
  v44 = v0[18];
  v46 = v0[21];
  v36 = v0[22];
  v38 = v0[14];
  v48 = v0[13];
  v5 = v0[2];
  v6 = type metadata accessor for DDMDeclaration(0);
  if (*(v5 + *(v6 + 76)))
  {
    v7 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v7 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v3 + 104))(v2, *v7, v4);
  (*(v3 + 32))(v1, v2, v4);
  DMCAppsClient.init(scope:)();
  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v8 = DMCAppsClient.organizationName.getter();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v49 = v6;
  sub_100632898(v8, v10, *(v5 + *(v6 + 84)), *(v5 + *(v6 + 84) + 8));

  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v43 + 56))(v38, 0, 1, v44);
  v11 = *(v43 + 16);
  v11(v46, v50, v44);
  v51 = sub_1005909DC(v46);
  v42 = v12;
  v11(v46, v40, v44);
  v13 = sub_1005909DC(v46);
  v39 = v14;
  v41 = v13;
  v11(v46, v36, v44);
  v47 = sub_1005909DC(v46);
  v37 = v15;
  sub_100005934(v38, v48, &qword_10077E908);
  v16 = 0;
  v17 = 0;
  if ((*(v43 + 48))(v48, 1, v44) != 1)
  {
    v19 = v0[20];
    v18 = v0[21];
    v21 = v0[18];
    v20 = v0[19];
    (*(v20 + 32))(v18, v0[13], v21);
    v11(v19, v18, v21);
    v16 = sub_1005909DC(v19);
    v17 = v22;
    (*(v20 + 8))(v18, v21);
  }

  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[22];
  v26 = v16;
  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[14];
  v45 = v0[2];
  type metadata accessor for SystemAlert();
  v30 = swift_allocObject();
  v0[32] = v30;
  swift_defaultActor_initialize();
  sub_1000032A8(v29, &qword_10077E908);
  v31 = *(v27 + 8);
  v31(v25, v28);
  v31(v24, v28);
  v31(v23, v28);
  *(v30 + 112) = v51;
  *(v30 + 120) = v42;
  *(v30 + 128) = v41;
  *(v30 + 136) = v39;
  *(v30 + 144) = v47;
  *(v30 + 152) = v37;
  *(v30 + 160) = v26;
  *(v30 + 168) = v17;
  *(v30 + 176) = 0;
  v32 = (v45 + *(v49 + 52));
  v0[33] = *v32;
  v0[34] = v32[1];
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100629C28(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v34 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[35] = v34;
  v0[36] = v33;

  return _swift_task_switch(sub_100626B80, v34, v33);
}

uint64_t sub_100626B80()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_100626C78;
  v5 = v0[11];

  return sub_10052E62C(v5, sub_100629D84, v3);
}

uint64_t sub_100626C78()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100626FD4;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100626DBC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100626DBC()
{
  sub_100629C70(*(v0 + 88), *(v0 + 96));

  return _swift_task_switch(sub_100626E24, 0, 0);
}

uint64_t sub_100626E24()
{
  v1 = v0[4];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Prompting user for management consent", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[39] = v12;
  v0[40] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_1006271E4;
  v14 = v0[4];
  v15 = v0[2];

  return sub_100306AD8(v15, 1, v14);
}

uint64_t sub_100626FF0()
{
  v1 = v0[12];
  v2 = type metadata accessor for ManagedAppStatus.State();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[4];
  static Logger.ddm.getter();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Prompting user for management consent", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[7];

  v14 = *(v13 + 8);
  v0[39] = v14;
  v0[40] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_1006271E4;
  v16 = v0[4];
  v17 = v0[2];

  return sub_100306AD8(v17, 1, v16);
}

uint64_t sub_1006271E4()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_1006272F4, v1, 0);
}

uint64_t sub_1006272F4()
{
  sub_100629C28(&qword_10077EC88, type metadata accessor for SystemAlert);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_100627408;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 360, &unk_1006B9C10);
}

uint64_t sub_100627408()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 256);

    return _swift_task_switch(sub_10062753C, v4, 0);
  }
}

uint64_t sub_100627560()
{
  if (*(v0 + 362))
  {
    v1 = *(v0 + 32);
    static Logger.ddm.getter();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 32);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] User rejected management consent", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920);
    }

    v9 = *(v0 + 312);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v9(v10, v11);
    v13 = enum case for ManagedAppStatus.Reason.userRejected(_:);
    v14 = type metadata accessor for ManagedAppStatus.Reason();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v12, v13, v14);
    (*(v15 + 56))(v12, 0, 1, v14);
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *v16 = v0;
    v16[1] = sub_100627CBC;
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = *(v0 + 361);
    v20 = *(v0 + 16);

    return sub_10030B39C(v20, v17, v19, v18);
  }

  else
  {
    v22 = *(v0 + 80);
    sub_100005934(*(v0 + 96), v22, &qword_10077F3D8);
    v23 = type metadata accessor for ManagedAppStatus.State();
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      v24 = *(v0 + 248);
      v25 = *(v0 + 232);
      v26 = *(v0 + 240);
      v27 = *(v0 + 96);
      v28 = *(v0 + 80);

      sub_1000032A8(v27, &qword_10077F3D8);
      (*(v26 + 8))(v24, v25);
      sub_1000032A8(v28, &qword_10077F3D8);
      v33 = *(v0 + 362) != 0;

      v29 = *(v0 + 8);

      return v29(v33);
    }

    else
    {
      sub_1000032A8(*(v0 + 80), &qword_10077F3D8);
      v30 = swift_task_alloc();
      *(v0 + 344) = v30;
      *v30 = v0;
      v30[1] = sub_100627A1C;
      v31 = *(v0 + 32);
      v32 = *(v0 + 16);

      return sub_100307250(v32, 0, v31);
    }
  }
}

uint64_t sub_100627A1C()
{

  return _swift_task_switch(sub_100627B18, 0, 0);
}

uint64_t sub_100627B18()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 96);

  sub_1000032A8(v4, &qword_10077F3D8);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 362) != 0;

  v5 = *(v0 + 8);

  return v5(v7);
}

uint64_t sub_100627CBC()
{
  v1 = *(*v0 + 40);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_100629D9C, 0, 0);
}

uint64_t sub_100627DE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 417) = a3;
  *(v4 + 16) = a1;
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 40) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3D8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  sub_1001F0C48(&qword_10077E908);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 120) = swift_task_alloc();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v4 + 136) = swift_task_alloc();
  v6 = type metadata accessor for DDMPurchaseMethod();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  *(v4 + 168) = v7;
  *(v4 + 176) = *(v7 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsScope();
  *(v4 + 240) = v8;
  *(v4 + 248) = *(v8 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsClient();
  *(v4 + 272) = v9;
  *(v4 + 280) = *(v9 - 8);
  *(v4 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_1006281CC, 0, 0);
}

uint64_t sub_1006281CC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[2];
  v9 = type metadata accessor for DDMDeclaration(0);
  if (*(v8 + v9[19]))
  {
    v10 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v10 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v4 + 104))(v2, *v10, v3);
  (*(v4 + 32))(v1, v2, v3);
  DMCAppsClient.init(scope:)();
  (*(v6 + 16))(v5, v8 + v9[25], v7);
  v11 = (*(v6 + 88))(v5, v7);
  if (v11 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v12 = v0[2];
    v13 = DMCAppsClient.organizationName.getter();
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v58 = v9;
    sub_100632488(v13, v15, *(v12 + v9[21]), *(v12 + v9[21] + 8));
  }

  else
  {
    if (v11 != enum case for DDMPurchaseMethod.manifest(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v16 = v0[2];
    v17 = DMCAppsClient.organizationName.getter();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v58 = v9;
    sub_100632690(v17, v19, *(v16 + v9[21]), *(v16 + v9[21] + 8));
  }

  v21 = v0[28];
  v20 = v0[29];
  v55 = v0[27];
  v59 = v0[26];
  v61 = v0[25];
  v22 = v0[21];
  v23 = v0[22];
  v49 = v0[14];
  v51 = v0[24];
  v57 = v0[13];

  v48 = *(v23 + 32);
  v48(v20, v21, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v23 + 16);
  v24(v59, v20, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v49, 0, 1, v22);
  v24(v51, v55, v22);
  v25 = sub_1005909DC(v51);
  v54 = v26;
  v56 = v25;
  v24(v51, v59, v22);
  v60 = sub_1005909DC(v51);
  v53 = v27;
  v24(v51, v61, v22);
  v62 = sub_1005909DC(v51);
  v52 = v28;
  sub_100005934(v49, v57, &qword_10077E908);
  v29 = 0;
  v30 = 0;
  if ((*(v23 + 48))(v57, 1, v22) != 1)
  {
    v31 = v0[23];
    v32 = v0[24];
    v33 = v0[21];
    v34 = v0[22];
    v48(v32, v0[13], v33);
    v24(v31, v32, v33);
    v29 = sub_1005909DC(v31);
    v30 = v35;
    (*(v34 + 8))(v32, v33);
  }

  v37 = v0[26];
  v36 = v0[27];
  v38 = v0[25];
  v40 = v0[21];
  v39 = v0[22];
  v41 = v0[14];
  v50 = v0[2];
  type metadata accessor for SystemAlert();
  v42 = swift_allocObject();
  v0[37] = v42;
  swift_defaultActor_initialize();
  sub_1000032A8(v41, &qword_10077E908);
  v43 = *(v39 + 8);
  v0[38] = v43;
  v0[39] = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v38, v40);
  v43(v37, v40);
  v43(v36, v40);
  *(v42 + 112) = v56;
  *(v42 + 120) = v54;
  *(v42 + 128) = v60;
  *(v42 + 136) = v53;
  *(v42 + 144) = v62;
  *(v42 + 152) = v52;
  *(v42 + 160) = v29;
  *(v42 + 168) = v30;
  *(v42 + 176) = 0;
  v44 = (v50 + v58[13]);
  v0[40] = *v44;
  v0[41] = v44[1];
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100629C28(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v46 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[42] = v46;
  v0[43] = v45;

  return _swift_task_switch(sub_1006288A0, v46, v45);
}

uint64_t sub_1006288A0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = swift_task_alloc();
  v0[44] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_100628998;
  v5 = v0[11];

  return sub_10052E62C(v5, sub_100271DA8, v3);
}

uint64_t sub_100628998()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_100628CF4;
  }

  else
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_100628ADC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100628ADC()
{
  sub_100629C70(*(v0 + 88), *(v0 + 96));

  return _swift_task_switch(sub_100628B44, 0, 0);
}

uint64_t sub_100628B44()
{
  v1 = v0[4];
  static Logger.ddm.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Prompting user for installation consent", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[46] = v12;
  v0[47] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_100628F04;
  v14 = v0[4];
  v15 = v0[2];

  return sub_100306360(v15, 1, v14);
}

uint64_t sub_100628D10()
{
  v1 = v0[12];
  v2 = type metadata accessor for ManagedAppStatus.State();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[4];
  static Logger.ddm.getter();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Prompting user for installation consent", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[7];

  v14 = *(v13 + 8);
  v0[46] = v14;
  v0[47] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_100628F04;
  v16 = v0[4];
  v17 = v0[2];

  return sub_100306360(v17, 1, v16);
}

uint64_t sub_100628F04()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_100629014, v1, 0);
}

uint64_t sub_100629014()
{
  sub_100629C28(&qword_10077EC88, type metadata accessor for SystemAlert);
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_100629128;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 416, &unk_1006B9C00);
}

uint64_t sub_100629128()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 296);

    return _swift_task_switch(sub_10062925C, v4, 0);
  }
}

uint64_t sub_100629280()
{
  if (*(v0 + 418))
  {
    v1 = *(v0 + 32);
    static Logger.ddm.getter();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 32);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] User rejected installation consent", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920);
    }

    v9 = *(v0 + 368);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v9(v10, v11);
    v13 = enum case for ManagedAppStatus.Reason.userRejected(_:);
    v14 = type metadata accessor for ManagedAppStatus.Reason();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v12, v13, v14);
    (*(v15 + 56))(v12, 0, 1, v14);
    v16 = swift_task_alloc();
    *(v0 + 408) = v16;
    *v16 = v0;
    v16[1] = sub_100629A5C;
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = *(v0 + 417);
    v20 = *(v0 + 16);

    return sub_10030B39C(v20, v17, v19, v18);
  }

  else
  {
    v22 = *(v0 + 80);
    sub_100005934(*(v0 + 96), v22, &qword_10077F3D8);
    v23 = type metadata accessor for ManagedAppStatus.State();
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      v24 = *(v0 + 304);
      v25 = *(v0 + 288);
      v26 = *(v0 + 272);
      v27 = *(v0 + 280);
      v28 = *(v0 + 232);
      v29 = *(v0 + 168);
      v30 = *(v0 + 96);
      v31 = *(v0 + 80);

      sub_1000032A8(v30, &qword_10077F3D8);
      v24(v28, v29);
      (*(v27 + 8))(v25, v26);
      sub_1000032A8(v31, &qword_10077F3D8);
      v36 = *(v0 + 418) != 0;

      v32 = *(v0 + 8);

      return v32(v36);
    }

    else
    {
      sub_1000032A8(*(v0 + 80), &qword_10077F3D8);
      v33 = swift_task_alloc();
      *(v0 + 400) = v33;
      *v33 = v0;
      v33[1] = sub_10062977C;
      v34 = *(v0 + 32);
      v35 = *(v0 + 16);

      return sub_100307250(v35, 0, v34);
    }
  }
}

uint64_t sub_10062977C()
{

  return _swift_task_switch(sub_100629878, 0, 0);
}

uint64_t sub_100629878()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 232);
  v6 = *(v0 + 168);
  v7 = *(v0 + 96);

  sub_1000032A8(v7, &qword_10077F3D8);
  v1(v5, v6);
  (*(v4 + 8))(v2, v3);
  v10 = *(v0 + 418) != 0;

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_100629A5C()
{
  v1 = *(*v0 + 40);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_100629D80, 0, 0);
}

uint64_t sub_100629B84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100214EFC;

  return sub_1004F8D6C(a1, v1);
}

uint64_t sub_100629C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100629C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100629CE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001F0E54;

  return sub_1004F8D6C(a1, v1);
}

__n128 sub_100629DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100629DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100629E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100629E70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x7562697274736964;
    }

    if (v2)
    {
      v5 = 0x80000001006C3E30;
    }

    else
    {
      v5 = 0xEE0064695F726F74;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = "certificate_data";
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = "certificate_type";
LABEL_12:
      v5 = (v3 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000010;
      goto LABEL_14;
    }

    v5 = 0xE300000000000000;
    v4 = 7107189;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x7562697274736964;
    }

    if (a2)
    {
      v8 = 0x80000001006C3E30;
    }

    else
    {
      v8 = 0xEE0064695F726F74;
    }

    if (v4 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v6 = "certificate_data";
LABEL_27:
    v8 = (v6 - 32) | 0x8000000000000000;
    if (v4 != 0xD000000000000010)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v6 = "certificate_type";
    goto LABEL_27;
  }

  v8 = 0xE300000000000000;
  if (v4 != 7107189)
  {
LABEL_32:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v5 != v8)
  {
    goto LABEL_32;
  }

  v9 = 1;
LABEL_33:

  return v9 & 1;
}

uint64_t sub_100629FE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064695F6E6F69;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEF79656B5F6E6F69;
    }

    else
    {
      v5 = 0xEE0064695F6E6F69;
    }

    v4 = 0x746172616C636564;
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x6574617473;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x735F657461647075;
    }

    else
    {
      v4 = 0x736E6F73616572;
    }

    if (v3 == 3)
    {
      v5 = 0xEC00000065746174;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6574617473;
  v8 = 0x735F657461647075;
  v9 = 0xEC00000065746174;
  if (a2 != 3)
  {
    v8 = 0x736E6F73616572;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v7 = v8;
    v6 = v9;
  }

  if (a2)
  {
    v2 = 0xEF79656B5F6E6F69;
  }

  if (a2 <= 1u)
  {
    v10 = 0x746172616C636564;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10062A16C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006469;
  v3 = 0x5F746E756F636361;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x695F656C646E7562;
    v13 = 0xE900000000000064;
    if (a1 != 2)
    {
      v12 = 0x765F656C646E7562;
      v13 = 0xEE006E6F69737265;
    }

    v14 = 0x726168735F707061;
    v15 = 0xED00006C72755F65;
    if (!a1)
    {
      v14 = 0x5F746E756F636361;
      v15 = 0xEA00000000006469;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x80000001006C3EA0;
    v6 = 0xE700000000000000;
    v7 = 0x64695F6D657469;
    if (a1 != 7)
    {
      v7 = 0x5F6E6F6973726576;
      v6 = 0xEA00000000006469;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v5 = v6;
    }

    v8 = 0xE700000000000000;
    v9 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v9 = 0x6C72755F706461;
    }

    else
    {
      v8 = 0x80000001006C2BB0;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000064;
        if (v10 != 0x695F656C646E7562)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v2 = 0xEE006E6F69737265;
        if (v10 != 0x765F656C646E7562)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_48;
    }

    if (a2)
    {
      v2 = 0xED00006C72755F65;
      if (v10 != 0x726168735F707061)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x6C72755F706461)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v2 = 0x80000001006C2BB0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_48;
    }

    if (a2 == 6)
    {
      v2 = 0x80000001006C3EA0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x64695F6D657469)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v3 = 0x5F6E6F6973726576;
  }

  if (v10 != v3)
  {
LABEL_51:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_52;
  }

LABEL_48:
  if (v11 != v2)
  {
    goto LABEL_51;
  }

  v16 = 1;
LABEL_52:

  return v16 & 1;
}

uint64_t sub_10062A45C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (v4)
    {
      v5 = "distributor_priority_list";
    }

    else
    {
      v5 = "";
    }
  }

  else if (a1 == 2)
  {
    v5 = "single_instance_id";
    v6 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v5 = "disabled_install_sheet";
    v6 = 0xD000000000000013;
  }

  else
  {
    v5 = "approved_developers";
    v6 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000019;
    }

    if (a2)
    {
      v3 = "distributor_priority_list";
    }
  }

  else if (a2 == 2)
  {
    v3 = "single_instance_id";
    v2 = 0xD000000000000016;
  }

  else if (a2 == 3)
  {
    v3 = "disabled_install_sheet";
    v2 = 0xD000000000000013;
  }

  else
  {
    v3 = "approved_developers";
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10062A5D0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v8 = 0x80000001006C3780;
      v7 = 0xD000000000000015;
      goto LABEL_16;
    }

    v2 = 0x80000001006C37A0;
    v3 = 0xD000000000000020;
    v4 = 0x80000001006C37D0;
    v5 = 0xD000000000000018;
    v6 = a1 == 4;
  }

  else
  {
    v2 = 0x80000001006C3730;
    v3 = 0xD000000000000016;
    v4 = 0x80000001006C3760;
    if (a1 == 1)
    {
      v5 = 0x6E655F6E656B6F74;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      v4 = 0xEE00746E696F7064;
    }

    v6 = a1 == 0;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

LABEL_16:
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x80000001006C3780;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001006C37A0;
      if (v7 != 0xD000000000000020)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0x80000001006C37D0;
      if (v7 != 0xD000000000000018)
      {
LABEL_38:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x6E655F6E656B6F74;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v10 = 0xEE00746E696F7064;
    }

    else
    {
      v10 = 0x80000001006C3760;
    }

    if (v7 != v9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = 0x80000001006C3730;
    if (v7 != 0xD000000000000016)
    {
      goto LABEL_38;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

uint64_t sub_10062A7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE400000000000000;
      v5 = 1684957547;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x656C746974627573;
      }

      else
      {
        v5 = 0x656C746974;
      }

      if (v2 == 4)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001006C3070;
    if (a1 == 1)
    {
      v3 = 0x762D656C646E7562;
      v4 = 0xEE006E6F69737265;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x80000001006C3040;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
      if (v5 != 1684957547)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xE800000000000000;
      if (v5 != 0x656C746974627573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0xE500000000000000;
      if (v5 != 0x656C746974)
      {
LABEL_39:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x762D656C646E7562;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v8 = 0xEE006E6F69737265;
    }

    else
    {
      v8 = 0x80000001006C3070;
    }

    if (v5 != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x80000001006C3040;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_10062A990(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7972746E65;
  if (a1 != 5)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = 0x7065725F7473616CLL;
  v7 = 0xEB0000000079616CLL;
  if (a1 != 3)
  {
    v6 = 0x635F79616C706572;
    v7 = 0xEC000000746E756FLL;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x746172616C636564;
  v9 = 0xEE0064695F6E6F69;
  if (a1 != 1)
  {
    v8 = 0x746172616C636564;
    v9 = 0xEF79656B5F6E6F69;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x4449574F52;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE0064695F6E6F69;
        if (v10 != 0x746172616C636564)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF79656B5F6E6F69;
        if (v10 != 0x746172616C636564)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x4449574F52)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7972746E65)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB0000000079616CLL;
    if (v10 != 0x7065725F7473616CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEC000000746E756FLL;
    if (v10 != 0x635F79616C706572)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10062ABE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726556656C707061;
    }

    else
    {
      v3 = 0x657449656C707061;
    }

    if (v2)
    {
      v4 = 0xEE0064496E6F6973;
    }

    else
    {
      v4 = 0xEB0000000064496DLL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001006C3670;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6572616853707061;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2 == 3)
    {
      v4 = 0xEB000000004C5255;
    }

    else
    {
      v4 = 0x80000001006C3690;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x726556656C707061;
    }

    else
    {
      v9 = 0x657449656C707061;
    }

    if (a2)
    {
      v8 = 0xEE0064496E6F6973;
    }

    else
    {
      v8 = 0xEB0000000064496DLL;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x6572616853707061;
    v6 = 0x80000001006C3690;
    if (a2 == 3)
    {
      v6 = 0xEB000000004C5255;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001ELL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001006C3670;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10062ADAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x7A69732D6C6C7566;
    }

    if (v2)
    {
      v3 = 0x80000001006C2F70;
    }

    else
    {
      v3 = 0xEF6567616D692D65;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000001006C2F90;
    v4 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001006C2FB0;
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x2D79616C70736964;
    v3 = 0xED00006567616D69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x7A69732D6C6C7566;
    }

    if (a2)
    {
      v5 = 0x80000001006C2F70;
    }

    else
    {
      v5 = 0xEF6567616D692D65;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001006C2F90;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001006C2FB0;
    if (v4 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00006567616D69;
    if (v4 != 0x2D79616C70736964)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10062AF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000064496DLL;
  v3 = 0x657449656C707061;
  v4 = a1;
  v5 = 0x6572616853707061;
  v6 = 0xEB000000004C5255;
  if (a1 == 5)
  {
    v5 = 0xD000000000000012;
    v6 = 0x80000001006C3B50;
  }

  v7 = 0x80000001006C3690;
  v8 = 0xD000000000000018;
  if (a1 != 3)
  {
    v8 = 0x6556656C646E7562;
    v7 = 0xED00006E6F697372;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0xD00000000000001ELL;
  if (a1 == 1)
  {
    v9 = 0x726556656C707061;
    v10 = 0xEE0064496E6F6973;
  }

  else
  {
    v10 = 0x80000001006C3670;
  }

  if (!a1)
  {
    v9 = 0x657449656C707061;
    v10 = 0xEB0000000064496DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE0064496E6F6973;
        if (v11 != 0x726556656C707061)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x80000001006C3670;
        if (v11 != 0xD00000000000001ELL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001006C3B50;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEB000000004C5255;
        if (v11 != 0x6572616853707061)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001006C3690;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x6556656C646E7562;
    v2 = 0xED00006E6F697372;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_10062B1C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746963696C706D69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5F68736572666572;
      v5 = 0xED00006E656B6F74;
    }

    else
    {
      v5 = 0x80000001006C3700;
      v4 = 0xD00000000000002FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746963696C706D69;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000001006C36D0;
    }
  }

  v6 = 0x5F68736572666572;
  v7 = 0x80000001006C3700;
  if (a2 == 2)
  {
    v7 = 0xED00006E656B6F74;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  v8 = 0x80000001006C36D0;
  if (a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10062B32C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064616F6C6ELL;
  v3 = 0x776F642D6F747561;
  v4 = a1;
  v5 = 0x752D6C61756E616DLL;
  v6 = 0xED00006574616470;
  v7 = 0x6F6C6E776F646572;
  v8 = 0xEA00000000006461;
  if (a1 != 4)
  {
    v7 = 0x65726F74736572;
    v8 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6470752D6F747561;
  v10 = 0xEB00000000657461;
  if (a1 != 1)
  {
    v9 = 7959906;
    v10 = 0xE300000000000000;
  }

  if (!a1)
  {
    v9 = 0x776F642D6F747561;
    v10 = 0xED000064616F6C6ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED00006574616470;
      if (v11 != 0x752D6C61756E616DLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000006461;
      if (v11 != 0x6F6C6E776F646572)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x65726F74736572)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000657461;
        if (v11 != 0x6470752D6F747561)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE300000000000000;
      v3 = 7959906;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_10062B52C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xEA00000000007365;
    v3 = 0xED00007370696873;
    if (a1 == 2)
    {
      v5 = 0x7475626972747461;
    }

    else
    {
      v5 = 0x6E6F6974616C6572;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE400000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 1717924456;
    }

    else
    {
      v5 = 25705;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0xE200000000000000;
  v8 = 25705;
  v9 = 0x7475626972747461;
  v10 = 0xEA00000000007365;
  if (a2 != 2)
  {
    v9 = 0x6E6F6974616C6572;
    v10 = 0xED00007370696873;
  }

  if (a2)
  {
    v8 = 1717924456;
    v7 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10062B674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7893871;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000073;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6F7674656C707061;
    }

    else
    {
      v6 = 0x736F6E6F69736976;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE300000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 7565161;
    }

    else
    {
      v6 = 7893871;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6F7674656C707061;
  v9 = 0xE900000000000073;
  if (a2 != 2)
  {
    v8 = 0x736F6E6F69736976;
    v9 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 7565161;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10062B7A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x447974696C616572;
  v5 = 0xED00006563697665;
  if (a1 != 6)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6863746177;
  if (a1 != 4)
  {
    v7 = 6513005;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 1685016681;
  v9 = 0xE400000000000000;
  if (a1 != 2)
  {
    v8 = 30324;
    v9 = 0xE200000000000000;
  }

  v10 = 1684099177;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x656E6F685069;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00006563697665;
        if (v11 != 0x447974696C616572)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6863746177)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 6513005)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1685016681)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 30324)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1684099177)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656E6F685069)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_10062B9E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x7461507465737361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x546C6C6174736E69;
    }

    else
    {
      v5 = 0x644963696C627570;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00737465677261;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x44746E6169726176;
    }

    else
    {
      v5 = 0x7461507465737361;
    }

    if (v4)
    {
      v6 = 0xEE00736C69617465;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  v7 = 0x546C6C6174736E69;
  v8 = 0xEE00737465677261;
  if (a2 != 2)
  {
    v7 = 0x644963696C627570;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x44746E6169726176;
    v2 = 0xEE00736C69617465;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10062BB5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x74654461746C6564;
    }

    else
    {
      v5 = 0x7461507465737361;
    }

    if (v2)
    {
      v6 = 0xEC000000736C6961;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  else
  {
    v3 = 0x6156656372756F73;
    v4 = 0xED0000746E616972;
    if (a1 != 3)
    {
      v3 = 0xD000000000000016;
      v4 = 0x80000001006C3C80;
    }

    if (a1 == 2)
    {
      v5 = 0x644963696C627570;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x74654461746C6564;
    }

    else
    {
      v11 = 0x7461507465737361;
    }

    if (a2)
    {
      v10 = 0xEC000000736C6961;
    }

    else
    {
      v10 = 0xE900000000000068;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6156656372756F73;
    v8 = 0x80000001006C3C80;
    if (a2 == 3)
    {
      v8 = 0xED0000746E616972;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v9 = 0x644963696C627570;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_10062BD10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7A69726F68747541;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6567412D72657355;
    }

    else
    {
      v5 = 0x65676E6152;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000746ELL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x2D746E65746E6F43;
    }

    else
    {
      v5 = 0x7A69726F68747541;
    }

    if (v4)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  v7 = 0x6567412D72657355;
  v8 = 0xEA0000000000746ELL;
  if (a2 != 2)
  {
    v7 = 0x65676E6152;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x2D746E65746E6F43;
    v2 = 0xEC00000065707954;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10062BE6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C626D61657270;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x64656873696E6966;
  if (a1 != 6)
  {
    v6 = 0x64656C696166;
    v5 = 0xE600000000000000;
  }

  v7 = 0x656C6C65636E6163;
  v8 = 0xE600000000000000;
  if (a1 == 4)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x646573756170;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C6174736E69;
  if (a1 != 2)
  {
    v10 = 0x6C626D6174736F70;
    v9 = 0xE900000000000065;
  }

  v11 = 0x64616F6C6E776F64;
  if (a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v11 = 0x656C626D61657270;
  }

  if (a1 <= 1u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  if (a1 <= 3u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  if (v3 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE800000000000000;
        if (v13 != 0x64656873696E6966)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v15 = 0xE600000000000000;
      v16 = 1818845542;
    }

    else
    {
      if (a2 == 4)
      {
        v15 = 0xE900000000000064;
        if (v13 != 0x656C6C65636E6163)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v15 = 0xE600000000000000;
      v16 = 1937072496;
    }

    if (v13 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v13 != 0x6C6C6174736E69)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v2 = 0x6C626D6174736F70;
      v15 = 0xE900000000000065;
    }

    else
    {
      v15 = 0xE800000000000000;
      if (a2)
      {
        if (v13 != 0x64616F6C6E776F64)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    if (v13 != v2)
    {
LABEL_46:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_47;
    }
  }

LABEL_42:
  if (v14 != v15)
  {
    goto LABEL_46;
  }

  v17 = 1;
LABEL_47:

  return v17 & 1;
}

uint64_t sub_10062C0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x737465737361;
  if (a1 != 4)
  {
    v5 = 0x2D64656E6E696874;
    v4 = 0xEE00737465737361;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001006C30C0;
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000014;
  if (a1 == 1)
  {
    v7 = 0x6D726F6674616C70;
  }

  else
  {
    v6 = 0x80000001006C30A0;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 0x617461646174656DLL;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x80000001006C30C0;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE600000000000000;
      if (v8 != 0x737465737361)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xEE00737465737361;
      if (v8 != 0x2D64656E6E696874)
      {
LABEL_35:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x6D726F6674616C70)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x80000001006C30A0;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v8 != 0x617461646174656DLL)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t sub_10062C2B4(uint64_t a1)
{
  v32 = type metadata accessor for URLQueryItem();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = _swiftEmptyArrayStorage;
  sub_100526344(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    URLQueryItem.init(name:value:)();

    v35 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_100526344(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_100323C00(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_100323C00(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10062C600()
{
  sub_1001F0C48(&qword_100789FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = 0;
  v8 = *(v0 + 16);
  v7 = v8;
  sub_100222DF8(&v8, &v6);
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3 = *(&v7 + 1);
  *(inited + 40) = v7;
  *(inited + 48) = v3;
  v4 = sub_100528B04(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &qword_100789FC0);
  return v4;
}

uint64_t sub_10062C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for Logger();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_1001F0C48(&qword_100782770);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for OAuthServerMetadata();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = type metadata accessor for ConfigurationBag(0);
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_10062C88C, 0, 0);
}

uint64_t sub_10062C88C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = type metadata accessor for OAuthClient();
  *(v3 + *(v4 + 24)) = v1;
  v5 = *(v4 + 20);
  *(v0 + 272) = v5;
  v6 = type metadata accessor for UUID();
  *(v0 + 208) = v6;
  v7 = *(v6 - 8);
  *(v0 + 216) = v7;
  (*(v7 + 16))(v3 + v5, v2, v6);
  *(v0 + 40) = type metadata accessor for PlainHTTP();
  *(v0 + 48) = &off_100769560;
  *(v0 + 16) = v1;

  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  *v8 = v0;
  v8[1] = sub_10062C9D0;
  v9 = *(v0 + 200);
  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);

  return sub_1003936EC(v9, v11, v12, v0 + 16, v10);
}

uint64_t sub_10062C9D0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_10062D2D0;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_10062CAF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10062CAF4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_100630638(*(v0 + 200) + *(*(v0 + 192) + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 240) = v4;
  *(v0 + 248) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_1000032A8(*(v0 + 152), &qword_100782770);
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_10062CDC0;
    v6 = *(v0 + 144);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);

    return sub_1003D9D40(v6, v9, v10, v7, v8);
  }

  else
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 152);

    sub_1006306A8(v13, v12);
    static Logger.oauth.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 136);
    v27 = *(v0 + 184);
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Found OAuth server metadata in configuration bag", v18, 2u);
    }

    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 200);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);

    (*(v19 + 8))(v25, v20);
    (*(v23 + 8))(v17, v22);
    sub_100489798(v21);
    sub_1006306A8(v27, v24);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10062CDC0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10062D400;
  }

  else
  {
    v2 = sub_10062CEF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10062CEF4()
{
  v1 = *(v0 + 144);
  if ((*(v0 + 240))(v1, 1, *(v0 + 160)) == 1)
  {
    sub_1000032A8(v1, &qword_100782770);
    static Logger.oauth.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Did not find OAuth server metadata", v4, 2u);
    }

    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = *(v0 + 64);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100630B84(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = *(v6 + 8);
    v13(v12, v5);
    sub_100489798(v7);
    v13(*(v0 + 56) + *(v0 + 272), *(v0 + 208));

    v14 = *(v0 + 8);
  }

  else
  {
    sub_1006306A8(v1, *(v0 + 176));
    static Logger.oauth.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v28 = *(v0 + 176);
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found OAuth server metadata", v19, 2u);
    }

    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);

    (*(v20 + 8))(v26, v21);
    (*(v23 + 8))(v18, v24);
    sub_100489798(v22);
    sub_1006306A8(v28, v25);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_10062D2D0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 64);

  v4 = *(v2 + 8);
  v4(v3, v1);
  sub_10000710C(v0 + 16);
  v4(*(v0 + 56) + *(v0 + 272), *(v0 + 208));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10062D400()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 64);

  v5 = *(v2 + 8);
  v5(v4, v1);
  sub_100489798(v3);
  v5(*(v0 + 56) + *(v0 + 272), *(v0 + 208));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10062D534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return _swift_task_switch(sub_10062D558, 0, 0);
}

uint64_t sub_10062D558()
{
  v1 = v0[26];
  v2 = *(v1 + 48);
  if (v2)
  {
    v19 = *(v1 + 40);
    v3 = v0[28];
    v20 = type metadata accessor for OAuthServerMetadata();
    v4 = *(v3 + *(v20 + 28));
    v5 = *(v4 + 16);
    v6 = (v4 + 32);

    while (1)
    {
      if (!v5)
      {

        sub_10048E514();
        swift_allocError();
        *v9 = xmmword_1006B9C20;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 8;
        v0 = v21;
        goto LABEL_10;
      }

      if (*v6 > 1u && *v6 != 3)
      {
        break;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v6;
      --v5;
      if (v7)
      {
        goto LABEL_14;
      }
    }

LABEL_14:
    v12 = v21[28];
    sub_1001F0C48(&qword_10077E988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069F6E0;
    *(inited + 32) = 0x79745F746E617267;
    *(inited + 40) = 0xEA00000000006570;
    strcpy((inited + 48), "refresh_token");
    *(inited + 62) = -4864;
    strcpy((inited + 64), "refresh_token");
    *(inited + 78) = -4864;
    *(inited + 80) = v19;
    *(inited + 88) = v2;
    v14 = sub_1005288C8(inited);
    v21[29] = v14;
    swift_setDeallocating();
    sub_1001F0C48(&qword_100784360);
    swift_arrayDestroy();
    v15 = *(v12 + *(type metadata accessor for OAuthClient() + 24));
    v16 = *(v20 + 20);
    v17 = swift_task_alloc();
    v21[30] = v17;
    *v17 = v21;
    v17[1] = sub_10062D8CC;
    v18 = v21[27];

    return sub_10048DA84((v21 + 14), v15, v14, v12 + v16, v18);
  }

  else
  {
    sub_10048E514();
    swift_allocError();
    *v8 = 3;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 12;
LABEL_10:
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10062D8CC()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10062DA30, 0, 0);
  }

  else
  {
    v3 = *(v2 + 200);

    v4 = *(v2 + 128);
    *v3 = *(v2 + 112);
    *(v3 + 16) = v4;
    v5 = *(v2 + 144);
    v6 = *(v2 + 160);
    v7 = *(v2 + 176);
    *(v3 + 80) = *(v2 + 192);
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    *(v3 + 32) = v5;
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_10062DA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062DA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  return _swift_task_switch(sub_10062DAB8, 0, 0);
}

uint64_t sub_10062DAB8()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  sub_1001F0C48(&qword_10077E988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 0x79745F746E617267;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = 0xD00000000000002FLL;
  *(inited + 56) = 0x80000001006C3700;
  *(inited + 64) = 0x695F746E65696C63;
  *(inited + 72) = 0xE900000000000064;
  v5 = type metadata accessor for OAuthClient();
  *(inited + 80) = UUID.uuidString.getter();
  *(inited + 88) = v6;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x80000001006CF130;
  *(inited + 112) = 0xD00000000000002DLL;
  *(inited + 120) = 0x80000001006CF150;
  strcpy((inited + 128), "subject_token");
  *(inited + 142) = -4864;
  *(inited + 144) = v3;
  *(inited + 152) = v1;
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001006CF180;
  *(inited + 176) = 0xD00000000000002DLL;
  *(inited + 184) = 0x80000001006CF150;

  v7 = sub_1005288C8(inited);
  v0[41] = v7;
  swift_setDeallocating();
  sub_1001F0C48(&qword_100784360);
  swift_arrayDestroy();
  v8 = *(v2 + *(v5 + 24));
  v9 = *(type metadata accessor for OAuthServerMetadata() + 20);
  v10 = sub_100625FA0();
  v0[42] = v10;
  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_10062DD10;

  return (sub_10048DA84)(v0 + 26, v8, v7, v2 + v9, v10);
}

uint64_t sub_10062DD10()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10062DE84, 0, 0);
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 296);

    v5 = *(v2 + 224);
    *v4 = *(v2 + 208);
    *(v4 + 16) = v5;
    v6 = *(v2 + 240);
    v7 = *(v2 + 256);
    v8 = *(v2 + 272);
    *(v4 + 80) = *(v2 + 288);
    *(v4 + 48) = v7;
    *(v4 + 64) = v8;
    *(v4 + 32) = v6;
    v9 = *(v2 + 8);

    return v9();
  }
}

uint64_t sub_10062DE84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for Logger();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for OAuthAuthorizationRequest();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = type metadata accessor for OAuthAuthorizationContext();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[27] = v10;
  v6[28] = *(v10 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_10062E0F0, 0, 0);
}

uint64_t sub_10062E0F0()
{
  v0[7] = sub_10062EE90(v0[30], v0[11], v0[12]);
  v0[8] = v1;
  v0[9] = v2;
  v0[10] = v3;
  v0[32] = v1;
  v0[33] = v2;
  v0[34] = v3;
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v13 = v0[23];
  (*(v6 + 32))(v4, v0[30], v7);
  LogKey.stringValue.getter();
  (*(v6 + 16))(v5, v4, v7);
  OAuthAuthorizationContext.init(logKey:requestURL:)();
  (*(v10 + 16))(v9, v8, v13);
  OAuthAuthorizationRequest.init(context:)();
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_10062E2F4;

  return OAuthAuthorizationRequest.run()();
}

uint64_t sub_10062E2F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_10062E924;
  }

  else
  {
    v4 = sub_10062E41C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10062E41C()
{
  v56 = v0;
  v1 = *(v0 + 288);
  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v2 = sub_10052213C(1701080931, 0xE400000000000000);
  if ((v3 & 1) == 0 || !*(v1 + 16))
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 288);
  v5 = (*(v4 + 56) + 16 * v2);
  v6 = *v5;
  v53 = v5[1];

  v7 = sub_10052213C(0x6574617473, 0xE500000000000000);
  if ((v8 & 1) == 0)
  {

LABEL_13:
    v26 = *(v0 + 288);

    sub_100630A6C(v26, v0 + 16);
    sub_10048E514();
    swift_allocError();
    v28 = *(v0 + 48);
    v29 = *(v0 + 32);
    *v27 = *(v0 + 16);
    *(v27 + 16) = v29;
    goto LABEL_14;
  }

  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = (*(v4 + 56) + 16 * v7);
  v13 = *v11;
  v12 = v11[1];

  v14 = v13 == v10 && v12 == v9;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v50 = v6;
    v51 = *(v0 + 56);
    v15 = *(v0 + 248);
    v16 = *(v0 + 224);
    v17 = *(v0 + 208);
    v49 = *(v0 + 216);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);

    (*(v22 + 8))(v19, v21);
    (*(v18 + 8))(v17, v20);
    (*(v16 + 8))(v15, v49);

    v23 = *(v0 + 8);
    v24 = *(v0 + 256);

    return v23(v50, v53, v51, v24);
  }

  static Logger.oauth.getter();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 272);
  if (v39)
  {
    v41 = *(v0 + 264);
    v42 = *(v0 + 144);
    v52 = *(v0 + 136);
    v54 = *(v0 + 152);
    v43 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v43 = 136315394;
    v44 = sub_1002346CC(v13, v12, v55);

    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    v45 = sub_1002346CC(v41, v40, v55);

    *(v43 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Invalid state, received '%s' but expected '%s'", v43, 0x16u);
    swift_arrayDestroy();

    (*(v42 + 8))(v54, v52);
  }

  else
  {
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 136);

    (*(v47 + 8))(v46, v48);
  }

  sub_10048E514();
  swift_allocError();
  *v27 = 2;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = 12;
LABEL_14:
  *(v27 + 32) = v28;
  swift_willThrow();
  v30 = *(v0 + 248);
  v31 = *(v0 + 216);
  v32 = *(v0 + 224);
  v33 = *(v0 + 208);
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  (*(v35 + 8))(v33, v34);
  (*(v32 + 8))(v30, v31);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10062E924()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10062EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  return _swift_task_switch(sub_10062EA64, 0, 0);
}

uint64_t sub_10062EA64()
{
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  sub_1001F0C48(&qword_10077E988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F230;
  *(inited + 32) = 0x695F746E65696C63;
  *(inited + 40) = 0xE900000000000064;
  v5 = type metadata accessor for OAuthClient();
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v6;
  *(inited + 64) = 1701080931;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v2;
  *(inited + 96) = 0x79745F746E617267;
  *(inited + 104) = 0xEA00000000006570;
  *(inited + 112) = 0xD000000000000012;
  *(inited + 120) = 0x80000001006C36D0;
  strcpy((inited + 128), "redirect_uri");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 0xD000000000000019;
  *(inited + 152) = 0x80000001006CEFF0;

  v7 = sub_1005288C8(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100784360);
  swift_arrayDestroy();
  v0[33] = v7;
  if (v1)
  {
    v9 = v0[37];
    v8 = v0[38];

    sub_1005B7830(v9, v8, 0x7265765F65646F63, 0xED00007265696669);
    v7 = v0[33];
  }

  v0[41] = v7;
  v10 = v0[40];
  v11 = *(v10 + *(v5 + 24));
  v12 = *(type metadata accessor for OAuthServerMetadata() + 20);
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_10062ECD4;
  v14 = v0[39];

  return sub_10048DA84((v0 + 22), v11, v7, v10 + v12, v14);
}

uint64_t sub_10062ECD4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10062EE2C;
  }

  else
  {

    v2 = sub_10062EDF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10062EDF0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  *v1 = *(v0 + 176);
  *(v1 + 16) = v2;
  v3 = *(v0 + 208);
  v4 = *(v0 + 224);
  v5 = *(v0 + 240);
  *(v1 + 80) = *(v0 + 256);
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_10062EE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062EE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v86 = a2;
  v75 = a1;
  v5 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v5 - 8);
  v84 = v71 - v6;
  v80 = type metadata accessor for SHA256();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SHA256Digest();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for String.Encoding();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v15 - 8);
  v17 = v71 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000032A8(v17, &unk_1007803A0);
    sub_10048E514();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 12;
    return swift_willThrow();
  }

  v83 = v19;
  v24 = *(v19 + 32);
  v74 = v21;
  v24(v21, v17, v18);
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v12 + 8))(v14, v11);
  sub_1001F0C48(&qword_10077E988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 0x695F746E65696C63;
  *(inited + 40) = 0xE900000000000064;
  type metadata accessor for OAuthClient();
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v29;
  *(inited + 64) = 0x69685F6E69676F6CLL;
  *(inited + 72) = 0xEA0000000000746ELL;
  v30 = v87;
  *(inited + 80) = v86;
  *(inited + 88) = v30;
  strcpy((inited + 96), "redirect_uri");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0xD000000000000019;
  *(inited + 120) = 0x80000001006CEFF0;
  strcpy((inited + 128), "response_type");
  *(inited + 142) = -4864;
  *(inited + 144) = 1701080931;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 160) = 0x6574617473;
  *(inited + 168) = 0xE500000000000000;
  v86 = v25;
  *(inited + 176) = v25;
  *(inited + 184) = v27;

  v87 = v27;

  v31 = sub_1005288C8(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100784360);
  swift_arrayDestroy();
  v32 = type metadata accessor for OAuthServerMetadata();
  if (*(v4 + *(v32 + 24)))
  {
    v90[0] = *(v4 + *(v32 + 24));
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v33 = BidirectionalCollection<>.joined(separator:)();
    v35 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v31;
    sub_1005C1D34(v33, v35, 0x65706F6373, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v31 = v90[0];
  }

  v37 = v93;
  v38 = *(v4 + *(v32 + 32));
  v39 = v83;
  if (v38)
  {
    v40 = *(v38 + 16);
    v41 = (v38 + 32);
    while (1)
    {
      if (!v40)
      {

        sub_10048E514();
        swift_allocError();
        *v43 = xmmword_1006B9C30;
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = 11;
        swift_willThrow();
        return (*(v39 + 8))(v74, v18);
      }

      if (*v41 == 1)
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v41;
      --v40;
      if (v42)
      {
        goto LABEL_14;
      }
    }

LABEL_14:
    v72 = v18;
    sub_10048E568();
    v45 = v44;
    v47 = v46;
    static String.Encoding.ascii.getter();
    v73 = v45;
    v71[1] = v47;
    v48 = String.data(using:allowLossyConversion:)();
    v50 = v49;
    (*(v76 + 8))(v10, v77);
    if (v50 >> 60 == 15)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    sub_100630B84(&qword_100789F80, &type metadata accessor for SHA256);
    v51 = v78;
    v52 = v80;
    dispatch thunk of HashFunction.init()();
    sub_10020ABFC(v48, v50);
    sub_100630298(v48, v50);
    v93 = v37;
    sub_10020B0E0(v48, v50);
    v53 = v85;
    dispatch thunk of HashFunction.finalize()();
    (*(v79 + 8))(v51, v52);
    v54 = v82;
    v91 = v82;
    v92 = sub_100630B84(&qword_100789F88, &type metadata accessor for SHA256Digest);
    v55 = sub_10020A748(v90);
    v56 = v81;
    (*(v81 + 16))(v55, v53, v54);
    sub_100006D8C(v90, v91);
    v57 = v93;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v93 = v57;
    v58 = v88;
    v59 = v89;
    sub_10000710C(v90);
    v60 = sub_1004B4220();
    v62 = v61;
    sub_100007158(v58, v59);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v31;
    sub_1005C1D34(v60, v62, 0x6168635F65646F63, 0xEE0065676E656C6CLL, v63);
    v64 = v90[0];
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v64;
    sub_1005C1D34(909455955, 0xE400000000000000, 0xD000000000000015, 0x80000001006CF110, v65);
    sub_10020B0E0(v48, v50);
    v31 = v90[0];
    (*(v56 + 8))(v85, v54);
    v18 = v72;
  }

  else
  {
    v73 = 0;
  }

  sub_10062C2B4(v31);

  v66 = v74;
  URLComponents.queryItems.setter();
  v67 = v84;
  URLComponents.url.getter();
  v68 = type metadata accessor for URL();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {

    sub_1000032A8(v67, &unk_1007809F0);
    sub_10048E514();
    swift_allocError();
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 12;
    swift_willThrow();
    return (*(v83 + 8))(v66, v18);
  }

  else
  {
    (*(v83 + 8))(v66, v18);
    (*(v69 + 32))(v75, v67, v68);
    return v73;
  }
}

uint64_t sub_10062FAEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x696669726576202CLL;
  v9._object = 0xED0000203D207265;
  String.append(_:)(v9);
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    a3 = 0x6F707075736E753CLL;
    v10 = 0xED00003E64657472;
  }

  v11._countAndFlagsBits = a3;
  v11._object = v10;
  String.append(_:)(v11);

  return 0x203D2065646F63;
}

uint64_t sub_10062FBEC(void *a1)
{
  v3 = sub_1001F0C48(&qword_100789FB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_10063161C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10062FDF8()
{
  v1 = *v0;
  v2 = 0x6F54737365636361;
  v3 = 0x5468736572666572;
  v4 = 0x6F54646575737369;
  if (v1 != 4)
  {
    v4 = 0x65706F6373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079546E656B6F74;
  if (v1 != 1)
  {
    v5 = 0x4973657269707865;
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

uint64_t sub_10062FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100630D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10062FEF8(uint64_t a1)
{
  v2 = sub_10063161C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10062FF34(uint64_t a1)
{
  v2 = sub_10063161C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10062FF70@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100630F98(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10062FFE4()
{
  _StringGuts.grow(_:)(32);

  strcpy(v4, "accessToken = ");
  HIBYTE(v4[1]) = -18;
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x657269707865202CLL;
  v1._object = 0xEE00203D206E4973;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4[0];
}

uint64_t sub_1006300BC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1006300F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006CF1A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1006301D8(uint64_t a1)
{
  v2 = sub_1006315C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100630214(uint64_t a1)
{
  v2 = sub_1006315C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100630250@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006313D8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100630298(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100630B84(&qword_100789F80, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100630478(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100630478(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100630B84(&qword_100789F80, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100630478(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100630B84(&qword_100789F80, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *sub_100630558@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_100630BCC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100630C84(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100630D00(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t type metadata accessor for OAuthClient()
{
  result = qword_10078A020;
  if (!qword_10078A020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100630638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100782770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006306A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthServerMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10063070C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v8 = a1;
  v10 = a1 == 0x645F737365636361 && a2 == 0xED00006465696E65;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 0;
  }

  else if (v8 == 0x5F64696C61766E69 && v7 == 0xEE00746E65696C63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 1;
  }

  else if (v8 == 0x5F64696C61766E69 && v7 == 0xED0000746E617267 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 2;
  }

  else if (v8 == 0x5F64696C61766E69 && v7 == 0xEF74736575716572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 3;
  }

  else if (v8 == 0x5F64696C61766E69 && v7 == 0xED000065706F6373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 4;
  }

  else if (v8 == 0x655F726576726573 && v7 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 5;
  }

  else if (v8 == 0xD000000000000017 && 0x80000001006CF030 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 6;
  }

  else if (v8 == 0xD000000000000013 && 0x80000001006CF050 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 7;
  }

  else if (v8 == 0xD000000000000016 && 0x80000001006CF070 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v12 = 8;
  }

  else
  {
    if (v8 != 0xD000000000000019 || 0x80000001006CF090 != v7)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        v12 = 10;
        goto LABEL_8;
      }
    }

    v12 = 9;
  }

  v8 = a3;
  v7 = a4;
  a3 = 0;
  a4 = 0;
LABEL_8:
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v12;
  return result;
}

uint64_t sub_100630A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10052213C(0x726F727265, 0xE500000000000000), (v5 & 1) != 0))
  {
    v6 = (*(a1 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];
    if (*(a1 + 16))
    {

      v9 = sub_10052213C(0xD000000000000011, 0x80000001006CF010);
      if (v10)
      {
        v11 = (*(a1 + 56) + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    result = sub_10063070C(v7, v8, v12, v13, v18);
    v15 = v18[0];
    v16 = v18[1];
    v17 = v19;
  }

  else
  {

    v15 = xmmword_10069E890;
    v16 = 0uLL;
    v17 = 12;
  }

  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_100630B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100630BCC(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_100630C84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
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

uint64_t sub_100630D00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
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

uint64_t sub_100630D84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4973657269707865 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5468736572666572 && a2 == 0xEC0000006E656B6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F54646575737369 && a2 == 0xEF657079546E656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_100630F98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100789FA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10063161C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v39[0]) = 1;
  *&v32 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v32 + 1) = v12;
  LOBYTE(v39[0]) = 2;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v39[0]) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v13;
  LOBYTE(v39[0]) = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v14;
  v48 = 5;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = *(v6 + 8);
  v17 = v15;
  v26 = v18;
  v16(v8, v5);
  *&v33 = v9;
  *(&v33 + 1) = v11;
  v34 = v32;
  *&v35 = v29;
  v19 = v31;
  *(&v35 + 1) = v28;
  *&v36 = v31;
  v20 = v30;
  *(&v36 + 1) = v27;
  *&v37 = v30;
  v21 = v26;
  *(&v37 + 1) = v17;
  v38 = v26;
  sub_100391998(&v33, v39);
  sub_10000710C(a1);
  v39[0] = v9;
  v39[1] = v11;
  v40 = v32;
  v41 = v29;
  v42 = v28;
  v43 = v19;
  v44 = v27;
  v45 = v20;
  v46 = v17;
  v47 = v21;
  result = sub_1003919F4(v39);
  v23 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v23;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  return result;
}

uint64_t sub_1006313D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100789F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1006315C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v20 = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v20 = 0;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10063070C(v13, v14, v12, v11, v18);
  (*(v6 + 8))(v8, v5);
  result = sub_10000710C(a1);
  v16 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v16;
  *(a2 + 32) = v19;
  return result;
}

unint64_t sub_1006315C8()
{
  result = qword_100789F98;
  if (!qword_100789F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789F98);
  }

  return result;
}

unint64_t sub_10063161C()
{
  result = qword_100789FA8;
  if (!qword_100789FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789FA8);
  }

  return result;
}

uint64_t sub_1006316C8()
{
  result = type metadata accessor for OAuthServerMetadata();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PlainHTTP();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100631774(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 0xB)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_100631790(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 33))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1006317D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100631820(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_100631850()
{
  result = qword_10078A060;
  if (!qword_10078A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A060);
  }

  return result;
}

unint64_t sub_1006318A8()
{
  result = qword_10078A068;
  if (!qword_10078A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A068);
  }

  return result;
}

unint64_t sub_100631900()
{
  result = qword_10078A070;
  if (!qword_10078A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A070);
  }

  return result;
}

unint64_t sub_100631958()
{
  result = qword_10078A078;
  if (!qword_10078A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A078);
  }

  return result;
}

unint64_t sub_1006319B0()
{
  result = qword_10078A080;
  if (!qword_10078A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A080);
  }

  return result;
}

unint64_t sub_100631A08()
{
  result = qword_10078A088;
  if (!qword_10078A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A088);
  }

  return result;
}

uint64_t sub_100631A5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  v22 = a3;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001006CF200;
  v17._countAndFlagsBits = 0xD000000000000035;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  URL.init(filePath:directoryHint:relativeTo:)();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100631DE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  v22 = a3;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001006CF1C0;
  v17._countAndFlagsBits = 0xD000000000000034;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  URL.init(filePath:directoryHint:relativeTo:)();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100632188@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.isDirectory(_:), v6);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  URL.init(filePath:directoryHint:relativeTo:)();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v10);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100632488(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001006CF240;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100632690(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001006CF260;
  v12._countAndFlagsBits = 0xD000000000000022;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100632898(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001006CF290;
  v12._countAndFlagsBits = 0xD000000000000019;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static LocalizedStringResource.BundleDescription.madFramework.getter();
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100632AC4()
{
  qword_10078A090 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100632B00(unint64_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_10077E5A8 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_10078A090;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_10077E5A8 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
}

Swift::Int sub_100632CCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100632DBC()
{
  String.hash(into:)();
}

Swift::Int sub_100632E98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100632F84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006335EC(*a1);
  *a2 = result;
  return result;
}

void sub_100632FB4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064695F726F74;
  v4 = 0x7562697274736964;
  v5 = 0xD000000000000010;
  v6 = 0x80000001006C3E50;
  v7 = 0x80000001006C3E70;
  v8 = 7107189;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001006C3E30;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_1006332C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketplaceCertificateEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10063334C()
{
  result = qword_10078A160;
  if (!qword_10078A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A160);
  }

  return result;
}

unint64_t sub_1006333A4()
{
  result = qword_10078A198;
  if (!qword_10078A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A198);
  }

  return result;
}

unint64_t sub_1006333FC()
{
  result = qword_10078A1A0;
  if (!qword_10078A1A0)
  {
    sub_1001F76D0(&qword_10078A1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1A0);
  }

  return result;
}

unint64_t sub_100633460(void *a1)
{
  a1[1] = sub_100633498();
  a1[2] = sub_1006334EC();
  result = sub_100633540();
  a1[3] = result;
  return result;
}

unint64_t sub_100633498()
{
  result = qword_10078A1B0;
  if (!qword_10078A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1B0);
  }

  return result;
}

unint64_t sub_1006334EC()
{
  result = qword_10078A1B8;
  if (!qword_10078A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1B8);
  }

  return result;
}

unint64_t sub_100633540()
{
  result = qword_10078A1C0;
  if (!qword_10078A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1C0);
  }

  return result;
}

unint64_t sub_100633598()
{
  result = qword_10078A1C8;
  if (!qword_10078A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1C8);
  }

  return result;
}

unint64_t sub_1006335EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B5A8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100633638()
{
  result = qword_10078A1D0;
  if (!qword_10078A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A1D0);
  }

  return result;
}

void sub_10063368C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  sub_100005934(a1, &v20[-v10], &qword_10077EF30);
  if ((*(v6 + 48))(v11, 1, v5) == 1 || ((*(v6 + 32))(v8, v11, v5), v21[3] = v5, v21[4] = sub_10064CB30(&qword_100785A20, &type metadata accessor for Date), v21[5] = sub_10064CB30(&qword_100785A40, &type metadata accessor for Date), v12 = sub_10020A748(v21), (*(v6 + 16))(v12, v8, v5), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v21, v22), (*(v6 + 8))(v8, v5), , sub_10000710C(v21), !v23))
  {
    v18 = 0;
  }

  else
  {
    v13 = v23;
    v14 = sub_100006D8C(v22, v23);
    v15 = *(v13 - 8);
    __chkstk_darwin(v14);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v17);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v17, v13);
    sub_10000710C(v22);
  }

  v19 = String._bridgeToObjectiveC()();

  [a3 setValue:v18 forProperty:v19];
  swift_unknownObjectRelease();
}

void sub_100633AE0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  if (a2 >> 60 != 15)
  {
    v9[3] = &type metadata for Data;
    v9[4] = sub_100329ED8();
    v9[5] = sub_100329F2C();
    v9[0] = a1;
    v9[1] = a2;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    sub_10020ABFC(a1, a2);
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v9, v10);

    sub_10000710C(v9);
    sub_100006D8C(v10, v10[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v10);
  }

  v8 = String._bridgeToObjectiveC()();

  [a4 setValue:v5 forProperty:v8];
  swift_unknownObjectRelease();
}

void sub_100633CE4(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for DDMCachedMetadata(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001F0C48(&qword_10077F130);
  __chkstk_darwin(v10 - 8);
  v12 = &v21[-v11];
  sub_100005934(a1, &v21[-v11], &qword_10077F130);
  if ((*(v7 + 48))(v12, 1, v6) == 1 || (sub_10064CA20(v12, v9, type metadata accessor for DDMCachedMetadata), v22[3] = v6, v22[4] = sub_10064CB30(&qword_100785B48, type metadata accessor for DDMCachedMetadata), v22[5] = sub_10064CB30(&qword_100785B50, type metadata accessor for DDMCachedMetadata), v13 = sub_10020A748(v22), sub_10064CED8(v9, v13, type metadata accessor for DDMCachedMetadata), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v22, v23), sub_10064CE78(v9, type metadata accessor for DDMCachedMetadata), , sub_10000710C(v22), !v24))
  {
    v19 = 0;
  }

  else
  {
    v14 = v24;
    v15 = sub_100006D8C(v23, v24);
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    sub_10000710C(v23);
  }

  sub_1004DC6A8(a2);
  v20 = String._bridgeToObjectiveC()();

  [a3 setValue:v19 forProperty:v20];
  swift_unknownObjectRelease();
}

void sub_1006340A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    v7[5] = &protocol witness table for String;
    v7[0] = a1;
    v7[1] = a2;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v7, v8);

    sub_10000710C(v7);
    sub_100006D8C(v8, v8[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = String._bridgeToObjectiveC()();

  [a4 setValue:v5 forProperty:v6];
  swift_unknownObjectRelease();
}

void sub_10063422C(char a1, char a2, void *a3)
{
  v5 = 0;
  if (a1 != 8)
  {
    v8[3] = &type metadata for AppInstallPhase;
    v8[4] = sub_1004D9570();
    v8[5] = sub_1004D95C4();
    LOBYTE(v8[0]) = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v8, v9);

    sub_10000710C(v8);
    sub_100006D8C(v9, v9[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v9);
  }

  sub_100234CBC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a3 setValue:v5 forProperty:v7];
  swift_unknownObjectRelease();
}

void sub_100634360(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (a1)
  {
    v6[3] = sub_1001F0C48(&qword_100781758);
    v6[4] = sub_1004D4DD0(&qword_1007852C8);
    v6[5] = sub_1004D4DD0(&qword_100781750);
    v6[0] = v4;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v6, v7);

    sub_10000710C(v6);
    sub_100006D8C(v7, v7[3]);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v7);
  }

  v5 = String._bridgeToObjectiveC()();

  [a3 setValue:v4 forProperty:v5];
  swift_unknownObjectRelease();
}

void sub_10063456C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    v7[5] = &protocol witness table for String;
    v7[0] = a1;
    v7[1] = a2;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v7, v8);

    sub_10000710C(v7);
    sub_100006D8C(v8, v8[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = String._bridgeToObjectiveC()();

  [a4 setValue:v5 forProperty:v6];
  swift_unknownObjectRelease();
}

void sub_100634744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (a1)
  {
    v6[3] = sub_1001F0C48(&qword_100787518);
    v6[4] = sub_10064CCA4(&qword_100787520, &qword_100787528);
    v6[5] = sub_10064CCA4(&qword_100789958, &qword_100789960);
    v6[0] = v4;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v6, v7);

    sub_10000710C(v6);
    sub_100006D8C(v7, v7[3]);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v7);
  }

  v5 = String._bridgeToObjectiveC()();

  [a3 setValue:v4 forProperty:v5];
  swift_unknownObjectRelease();
}

void sub_10063498C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ManagedAppStatus.State();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001F0C48(&qword_10077F3D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  sub_100005934(a1, &v20[-v10], &qword_10077F3D8);
  if ((*(v6 + 48))(v11, 1, v5) == 1 || ((*(v6 + 32))(v8, v11, v5), v21[3] = v5, v21[4] = sub_10064CB30(&qword_100787510, &type metadata accessor for ManagedAppStatus.State), v21[5] = sub_10064CB30(&qword_100789950, &type metadata accessor for ManagedAppStatus.State), v12 = sub_10020A748(v21), (*(v6 + 16))(v12, v8, v5), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v21, v22), (*(v6 + 8))(v8, v5), , sub_10000710C(v21), !v23))
  {
    v18 = 0;
  }

  else
  {
    v13 = v23;
    v14 = sub_100006D8C(v22, v23);
    v15 = *(v13 - 8);
    __chkstk_darwin(v14);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v17);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v17, v13);
    sub_10000710C(v22);
  }

  v19 = String._bridgeToObjectiveC()();

  [a3 setValue:v18 forProperty:v19];
  swift_unknownObjectRelease();
}

void sub_100634DDC(uint64_t a1, uint64_t a2, void *a3)
{
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v6 = *(updated - 8);
  __chkstk_darwin(updated);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  sub_100005934(a1, &v20[-v10], &qword_10077F3A0);
  if ((*(v6 + 48))(v11, 1, updated) == 1 || ((*(v6 + 32))(v8, v11, updated), v21[3] = updated, v21[4] = sub_10064CB30(&qword_100787580, &type metadata accessor for ManagedAppStatus.UpdateState), v21[5] = sub_10064CB30(&qword_100789968, &type metadata accessor for ManagedAppStatus.UpdateState), v12 = sub_10020A748(v21), (*(v6 + 16))(v12, v8, updated), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v21, v22), (*(v6 + 8))(v8, updated), , sub_10000710C(v21), !v23))
  {
    v18 = 0;
  }

  else
  {
    v13 = v23;
    v14 = sub_100006D8C(v22, v23);
    v15 = *(v13 - 8);
    __chkstk_darwin(v14);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v17);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v17, v13);
    sub_10000710C(v22);
  }

  v19 = String._bridgeToObjectiveC()();

  [a3 setValue:v18 forProperty:v19];
  swift_unknownObjectRelease();
}

void sub_10063522C(char a1, char a2, void *a3)
{
  v5 = 0;
  if (a1 != 5)
  {
    v8[3] = &type metadata for AppInstallPriority;
    v8[4] = sub_1004D9618();
    v8[5] = sub_1004D966C();
    LOBYTE(v8[0]) = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v8, v9);

    sub_10000710C(v8);
    sub_100006D8C(v9, v9[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v9);
  }

  sub_100234CBC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a3 setValue:v5 forProperty:v7];
  swift_unknownObjectRelease();
}

void sub_100635360(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  sub_100005934(a1, &v20[-v10], &unk_1007809F0);
  if ((*(v6 + 48))(v11, 1, v5) == 1 || ((*(v6 + 32))(v8, v11, v5), v21[3] = v5, v21[4] = sub_10064CB30(&qword_100781BB8, &type metadata accessor for URL), v21[5] = sub_10064CB30(&qword_100782898, &type metadata accessor for URL), v12 = sub_10020A748(v21), (*(v6 + 16))(v12, v8, v5), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v21, v22), (*(v6 + 8))(v8, v5), , sub_10000710C(v21), !v23))
  {
    v18 = 0;
  }

  else
  {
    v13 = v23;
    v14 = sub_100006D8C(v22, v23);
    v15 = *(v13 - 8);
    __chkstk_darwin(v14);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v15 + 16))(v17);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v17, v13);
    sub_10000710C(v22);
  }

  v19 = String._bridgeToObjectiveC()();

  [a3 setValue:v18 forProperty:v19];
  swift_unknownObjectRelease();
}

void sub_100635848(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7[3] = &type metadata for String;
    v7[4] = &protocol witness table for String;
    v7[5] = &protocol witness table for String;
    v7[0] = a1;
    v7[1] = a2;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v7, v8);

    sub_10000710C(v7);
    sub_100006D8C(v8, v8[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = String._bridgeToObjectiveC()();

  [a4 setValue:v5 forProperty:v6];
  swift_unknownObjectRelease();
}

void sub_100635AB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (a1)
  {
    v6[3] = sub_1001F0C48(&qword_100787690);
    v6[4] = sub_10064CF5C(&qword_100787698, &qword_1007876A0);
    v6[5] = sub_10064CF5C(&qword_100787FB0, &qword_100787FB8);
    v6[0] = v4;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v6, v7);

    sub_10000710C(v6);
    sub_100006D8C(v7, v7[3]);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v7);
  }

  v5 = String._bridgeToObjectiveC()();

  [a3 setValue:v4 forProperty:v5];
  swift_unknownObjectRelease();
}

void sub_100635CEC(int a1, char a2, void *a3)
{
  v5 = 0;
  if (a1 != 2)
  {
    v8[3] = &type metadata for NetworkPolicy.Decision;
    v8[4] = sub_1004D9D30();
    v8[5] = sub_1004D9D84();
    LOWORD(v8[0]) = a1 & 0x101;
    BYTE2(v8[0]) = BYTE2(a1) & 1;
    BYTE3(v8[0]) = HIBYTE(a1) & 1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v8, v9);

    sub_10000710C(v8);
    sub_100006D8C(v9, v9[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v9);
  }

  sub_100234CBC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a3 setValue:v5 forProperty:v7];
  swift_unknownObjectRelease();
}

void sub_100635E3C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a2)
  {
    v8[3] = &type metadata for String;
    v8[4] = &protocol witness table for String;
    v8[5] = &protocol witness table for String;
    v8[0] = a1;
    v8[1] = a2;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v8, v9);

    sub_10000710C(v8);
    sub_100006D8C(v9, v9[3]);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v9);
  }

  else
  {
    v6 = 0;
  }

  sub_100234CBC(a3);
  v7 = String._bridgeToObjectiveC()();

  [a4 setValue:v6 forProperty:v7];
  swift_unknownObjectRelease();
}

void sub_100635F7C(char a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = 0;
  if (a1 != 2)
  {
    v9[3] = &type metadata for Bool;
    v9[4] = &protocol witness table for Bool;
    v9[5] = &protocol witness table for Bool;
    LOBYTE(v9[0]) = a1 & 1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v9, v10);

    sub_10000710C(v9);
    sub_100006D8C(v10, v10[3]);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v10);
  }

  a4(a2);
  v8 = String._bridgeToObjectiveC()();

  [a3 setValue:v7 forProperty:v8];
  swift_unknownObjectRelease();
}

void sub_1006360C4(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v10 - 8);
  v12 = &v21[-v11];
  sub_100005934(a1, &v21[-v11], &unk_100780A00);
  if ((*(v7 + 48))(v12, 1, v6) == 1 || ((*(v7 + 32))(v9, v12, v6), v22[3] = v6, v22[4] = sub_10064CB30(&qword_100784988, &type metadata accessor for UUID), v22[5] = sub_10064CB30(&qword_1007849A0, &type metadata accessor for UUID), v13 = sub_10020A748(v22), (*(v7 + 16))(v13, v9, v6), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v22, v23), (*(v7 + 8))(v9, v6), , sub_10000710C(v22), !v24))
  {
    v19 = 0;
  }

  else
  {
    v14 = v24;
    v15 = sub_100006D8C(v23, v24);
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v18);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v14);
    sub_10000710C(v23);
  }

  sub_100234CBC(a2);
  v20 = String._bridgeToObjectiveC()();

  [a3 setValue:v19 forProperty:v20];
  swift_unknownObjectRelease();
}

void sub_10063647C(void *a1, char a2, void *a3)
{
  v5 = a1;
  if (a1)
  {
    v8[3] = &type metadata for AnyError;
    v8[4] = sub_1004D9EC8();
    v8[5] = sub_1004D9F1C();
    v8[0] = v5;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v6 = v5;
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v8, v9);

    sub_10000710C(v8);
    sub_100006D8C(v9, v9[3]);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v9);
  }

  sub_100234CBC(a2);
  v7 = String._bridgeToObjectiveC()();

  [a3 setValue:v5 forProperty:v7];
  swift_unknownObjectRelease();
}

void sub_1006365AC(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = 0;
  if ((a2 & 1) == 0)
  {
    v11[4] = a6;
    v11[5] = a7;
    v11[3] = a5;
    v11[0] = a1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v11, v12);

    sub_10000710C(v11);
    sub_100006D8C(v12, v12[3]);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000710C(v12);
  }

  sub_1005AF1B0(a3);
  v10 = String._bridgeToObjectiveC()();

  [a4 setValue:v9 forProperty:v10];
  swift_unknownObjectRelease();
}

void sub_1006366C0(uint64_t a1, char a2, void *a3)
{
  sub_100005934(a1, v15, &qword_10077E968);
  if (v16 && (v14[0] = v15[0], v14[1] = v15[1], v14[2] = v16, v14[3] = v17, v13[3] = &type metadata for BlockVerifierState, v13[4] = sub_1004EAE54(), v13[5] = sub_1004EB100(), v13[0] = swift_allocObject(), sub_10031E0F4(v14, v13[0] + 16), type metadata accessor for JSONEncoder(), swift_allocObject(), JSONEncoder.init()(), SQLiteEncodeValue(_:using:)(v13, v18), sub_10031E150(v14), , sub_10000710C(v13), v19))
  {
    v5 = v19;
    v6 = sub_100006D8C(v18, v19);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    sub_10000710C(v18);
  }

  else
  {
    v10 = 0;
  }

  sub_1005AF1B0(a2);
  v11 = String._bridgeToObjectiveC()();

  [a3 setValue:v10 forProperty:v11];
  swift_unknownObjectRelease();
}

uint64_t sub_100636928(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for FilePath();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100636A7C, v1, 0);
}

uint64_t sub_100636A7C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100005934(v0[2], v3, &qword_10077E958);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000032A8(v0[7], &qword_10077E958);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_100636E44;

    return sub_10063C2D0(3);
  }

  else
  {
    v6 = v0[10];
    v7 = v0[3];
    (*(v0[9] + 32))(v6, v0[7], v0[8]);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100636C50;

    return (sub_10052F328)();
  }
}

uint64_t sub_100636C50()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100636F94;
  }

  else
  {
    v4 = sub_100636D98;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100636D98()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100636E44;

  return sub_10063C2D0(3);
}

uint64_t sub_100636E44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100636F94()
{
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412546;
    v6 = *(v3 + 120);
    *(v4 + 4) = v6;
    *v5 = v6;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = v6;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v8;
    v5[1] = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Setting install path failed with error: %{public}@", v4, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v0[9] + 8))(v0[10], v0[8]);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100636E44;

  return sub_10063C2D0(3);
}

uint64_t sub_1006371A4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100637264, v0, 0);
}

uint64_t sub_100637264()
{
  v1 = *(*(v0 + 16) + 168);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100637328;
  v3 = *(v0 + 16);

  return sub_100530C78(sub_10064CD40, v3, v1);
}

uint64_t sub_100637328(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_100637480, v7, 0);
  }
}

uint64_t sub_100637480()
{
  v1 = *(v0 + 72);
  if (v1 == 2 || (v1 & 1) == 0)
  {

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    static Logger.install.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 16);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = *(v4 + 120);
      *(v5 + 4) = v7;
      *v6 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Cancelling installation", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);

    (*(v10 + 8))(v9, v11);
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_100637670;

    return sub_10063E9B4();
  }
}

uint64_t sub_100637670()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1006377B4;

  return sub_10063C2D0(4);
}

uint64_t sub_1006377B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006378C4()
{
  v1[6] = v0;
  sub_1001F0C48(&unk_100780A00);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_1001F0C48(&qword_1007875D0);
  v1[14] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10078A410);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100637AE4, v0, 0);
}

uint64_t sub_100637AE4()
{
  v1 = v0;
  v2 = *(v0[6] + 168);
  v3 = swift_task_alloc();
  v1[18] = v3;
  *v3 = v1;
  v3[1] = sub_100637BE4;
  v4 = v1[14];
  v5 = v1[6];

  return sub_1005311A8(v4, sub_10064CD78, v5, v2);
}

uint64_t sub_100637BE4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_100638464;
  }

  else
  {
    v4 = sub_100637D48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100637D48()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = *(v0[16] + 48);
  if (v3(v2, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[8];
    v7 = v0[9];
    v8 = *(v1 + 48);
    *v5 = 2;
    (*(v7 + 56))(&v5[v8], 1, 1, v6);
    if (v3(v2, 1, v1) != 1)
    {
      sub_1000032A8(v0[14], &qword_1007875D0);
    }
  }

  else
  {
    sub_10020A668(v2, v0[17], &qword_10078A410);
    v4 = v0[19];
  }

  v0[20] = v4;
  v9 = v0[17];
  v10 = *v9;
  sub_1000032A8(&v9[*(v0[15] + 48)], &unk_100780A00);
  if (v10 == 2 || (v10 & 1) == 0)
  {

    v23 = v0[1];

    return v23();
  }

  else
  {
    static Logger.install.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[6];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = *(v13 + 120);
      *(v14 + 4) = v16;
      *v15 = v16;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Pausing installation", v14, 0xCu);
      sub_1000032A8(v15, &qword_10077F920);
    }

    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];

    (*(v19 + 8))(v18, v20);
    v21 = swift_task_alloc();
    v0[21] = v21;
    *v21 = v0;
    v21[1] = sub_10063808C;

    return sub_10063E9B4();
  }
}

uint64_t sub_10063808C()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1006381C8, v1, 0);
}

void sub_1006381C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_coordinatorID;
  swift_beginAccess();
  sub_100005934(v4 + v5, v3, &unk_100780A00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000032A8(v0[7], &unk_100780A00);
LABEL_10:

    v21 = v0[1];

    v21();
    return;
  }

  v6 = v0[10];
  (*(v0[9] + 32))(v6, v0[7], v0[8]);
  v7 = sub_1005F8634(v6);
  if (v7)
  {
    v0[5] = 0;
    v8 = v7;
    v9 = [v7 pauseWithError:v0 + 5];

    v10 = v0[5];
    if (v9)
    {
      v11 = v0[20];
      v12 = v10;
    }

    else
    {
      v13 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v11 = 0;
    }
  }

  else
  {
    v11 = v0[20];
  }

  v14 = v0[10];
  v15 = *(*sub_100006D8C((v0[6] + 176), *(v0[6] + 200)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
  v16 = *&v15[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers];
  *(swift_task_alloc() + 16) = v14;
  v17 = v15;
  os_unfair_lock_lock((v16 + 24));
  sub_10064CD94((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  if (!v11)
  {
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];

    (*(v19 + 8))(v18, v20);
    goto LABEL_10;
  }
}

uint64_t sub_100638464()
{
  (*(v0[16] + 56))(v0[14], 1, 1, v0[15]);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[8];
  v6 = v0[9];
  v7 = *(v4 + 48);
  *v1 = 2;
  (*(v6 + 56))(&v1[v7], 1, 1, v5);
  if ((*(v2 + 48))(v3, 1, v4) != 1)
  {
    sub_1000032A8(v0[14], &qword_1007875D0);
  }

  v0[20] = 0;
  v8 = v0[17];
  v9 = *v8;
  sub_1000032A8(&v8[*(v0[15] + 48)], &unk_100780A00);
  if (v9 == 2 || (v9 & 1) == 0)
  {

    v22 = v0[1];

    return v22();
  }

  else
  {
    static Logger.install.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[6];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *(v12 + 120);
      *(v13 + 4) = v15;
      *v14 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Pausing installation", v13, 0xCu);
      sub_1000032A8(v14, &qword_10077F920);
    }

    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    (*(v18 + 8))(v17, v19);
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_10063808C;

    return sub_10063E9B4();
  }
}

uint64_t sub_10063877C()
{
  v1[3] = v0;
  sub_1001F0C48(&unk_100780A00);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for CellularIdentity();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for DDMDeclaration(0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for EvaluatorDownload();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  sub_1001F0C48(&qword_1007875E0);
  v1[18] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10078A418);
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  sub_1001F0C48(&qword_100787660);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1001F0C48(&qword_10078A420);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100638B28, v0, 0);
}

uint64_t sub_100638B28()
{
  v1 = v0;
  v2 = *(v0[3] + 168);
  v0[27] = v2;
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_100638C2C;
  v4 = v1[18];
  v5 = v1[3];

  return sub_1003B49C0(v4, sub_10064CDB0, v5, v2);
}

uint64_t sub_100638C2C()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_10063A6C8;
  }

  else
  {
    v4 = sub_100638D90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100638D90()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = *(v0[20] + 48);
  v4 = v3(v2, 1, v1);
  v5 = v0[21];
  if (v4 == 1)
  {
    v6 = v0[15];
    v7 = v0[16];
    v8 = *(v1 + 48);
    v9 = *(v1 + 64);
    *v5 = 0;
    (*(v7 + 56))(&v5[v8], 1, 1, v6);
    v10 = type metadata accessor for AppInstall();
    (*(*(v10 - 8) + 56))(&v5[v9], 1, 1, v10);
    if (v3(v2, 1, v1) != 1)
    {
      sub_1000032A8(v0[18], &qword_1007875E0);
    }
  }

  else
  {
    sub_10020A668(v2, v0[21], &qword_10078A418);
  }

  v11 = v0[24];
  v12 = v0[21];
  v13 = v0[19];
  v14 = *v12;
  v15 = *(v13 + 64);
  sub_10020A668(&v12[*(v13 + 48)], v0[26], &qword_10078A420);
  sub_10020A668(&v12[v15], v11, &qword_100787660);
  v16 = v0[26];
  if (v14)
  {
    v17 = v0[25];
    v18 = v0[15];
    v19 = v0[16];
    sub_100005934(v0[26], v17, &qword_10078A420);
    v20 = (*(v19 + 48))(v17, 1, v18);
    v21 = v0[25];
    if (v20 == 1)
    {
      sub_1000032A8(v21, &qword_10078A420);
      v22 = v0[22];
      sub_100005934(v0[24], v22, &qword_100787660);
      v23 = type metadata accessor for AppInstall();
      v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
      v25 = v0[22];
      v26 = v0[5];
      v27 = v0[6];
      v28 = v0[4];
      if (v24 == 1)
      {
        sub_1000032A8(v25, &qword_100787660);
        (*(v27 + 56))(v28, 1, 1, v26);
      }

      else
      {
        v36 = *(v23 + 56);
        v37 = v0[22];
        sub_100005934(v25 + v36, v0[4], &unk_100780A00);
        sub_10064CE78(v37, type metadata accessor for AppInstall);
        if ((*(v27 + 48))(v28, 1, v26) != 1)
        {
          v48 = v0[7];
          (*(v0[6] + 32))(v48, v0[4], v0[5]);
          v49 = sub_1005F8634(v48);
          if (v49)
          {
            v0[2] = 0;
            v50 = v49;
            v51 = [v49 resumeWithError:v0 + 2];

            v52 = v0[2];
            if (v51)
            {
              v53 = v52;
            }

            else
            {
              v54 = v52;
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }
          }

          (*(v0[6] + 8))(v0[7], v0[5]);
          goto LABEL_28;
        }
      }

      sub_1000032A8(v0[4], &unk_100780A00);
LABEL_28:
      v55 = swift_task_alloc();
      v0[38] = v55;
      *v55 = v0;
      v55[1] = sub_10063A424;

      return sub_10063C2D0(0);
    }

    v31 = v0[23];
    v32 = v0[24];
    sub_10064CA20(v21, v0[17], type metadata accessor for EvaluatorDownload);
    sub_100005934(v32, v31, &qword_100787660);
    v33 = type metadata accessor for AppInstall();
    v34 = (*(*(v33 - 8) + 48))(v31, 1, v33);
    v35 = v0[23];
    if (v34 == 1)
    {
      sub_1000032A8(v0[23], &qword_100787660);
LABEL_20:
      v41 = v0[3];
      v43 = v41[19];
      v42 = v41[20];
      v44 = sub_100006D8C(v41 + 16, v43);
      static CellularIdentity.current()();
      v45 = swift_task_alloc();
      v0[34] = v45;
      *v45 = v0;
      v45[1] = sub_100639BE0;
      v46 = v0[17];
      v47 = v0[10];

      return sub_1005C9BD8(v46, 0, 0, v47, 1, v44, v43, v42);
    }

    v38 = (v35 + *(v33 + 60));
    v0[29] = *v38;
    v39 = v38[1];
    v0[30] = v39;

    sub_10064CE78(v35, type metadata accessor for AppInstall);
    if (!v39)
    {
      goto LABEL_20;
    }

    v40 = *(*sub_100006D8C((v0[3] + 176), *(v0[3] + 200)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    v0[31] = v40;

    return _swift_task_switch(sub_100639558, v40, 0);
  }

  else
  {
    sub_1000032A8(v0[24], &qword_100787660);
    sub_1000032A8(v16, &qword_10078A420);

    v29 = v0[1];

    return v29(0);
  }
}

uint64_t sub_100639558()
{
  v1 = v0;
  v3 = v0 + 30;
  v2 = v0[30];
  v4 = v1[29];
  v5 = *(v3[1] + 112);
  v6 = swift_task_alloc();
  v1[32] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v1[33] = v7;
  *v7 = v1;
  v7[1] = sub_100639670;
  v8 = v1[11];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_100639670()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 248);
  if (v0)
  {

    v5 = sub_1006399F0;
    v6 = v4;
  }

  else
  {
    v7 = *(v3 + 24);

    v5 = sub_100639858;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100639858()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[11];
  (*(v0[13] + 56))(v5, 0, 1, v4);
  sub_10064CA20(v5, v2, type metadata accessor for DDMDeclaration);
  LOBYTE(v4) = *(v2 + *(v4 + 44));
  sub_10064CE78(v2, type metadata accessor for DDMDeclaration);
  *(v1 + *(v3 + 36)) = v4;
  v6 = v0[3];
  v8 = v6[19];
  v7 = v6[20];
  v9 = sub_100006D8C(v6 + 16, v8);
  static CellularIdentity.current()();
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_100639BE0;
  v11 = v0[17];
  v12 = v0[10];

  return sub_1005C9BD8(v11, 0, 0, v12, 1, v9, v8, v7);
}

uint64_t sub_1006399F0()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100639A88, v1, 0);
}

uint64_t sub_100639A88()
{
  v1 = v0[11];
  (*(v0[13] + 56))(v1, 1, 1, v0[12]);
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = v0[3];
  v4 = v2[19];
  v3 = v2[20];
  v5 = sub_100006D8C(v2 + 16, v4);
  static CellularIdentity.current()();
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_100639BE0;
  v7 = v0[17];
  v8 = v0[10];

  return sub_1005C9BD8(v7, 0, 0, v8, 1, v5, v4, v3);
}

uint64_t sub_100639BE0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 24);
  *(*v1 + 280) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100639D88, v5, 0);
}

uint64_t sub_100639D88()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 25) = BYTE1(v1) & 1;
  *(v3 + 26) = BYTE2(v1) & 1;
  *(v3 + 27) = HIBYTE(v1) & 1;
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_100639EAC;
  v5 = *(v0 + 216);

  return sub_1005316D0(sub_10064D00C, v3, v5);
}

uint64_t sub_100639EAC()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_10064D024;
  }

  else
  {

    v4 = sub_10063A03C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063A03C()
{
  v1 = v0[35];
  sub_10064CE78(v0[17], type metadata accessor for EvaluatorDownload);
  if ((v1 & 0x100000000) == 0)
  {
    v2 = v0[26];
    sub_1000032A8(v0[24], &qword_100787660);
    sub_1000032A8(v2, &qword_10078A420);

    v3 = v0[1];

    return v3(0);
  }

  v5 = v0[22];
  sub_100005934(v0[24], v5, &qword_100787660);
  v6 = type metadata accessor for AppInstall();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = v0[22];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];
  if (v7 == 1)
  {
    sub_1000032A8(v8, &qword_100787660);
    (*(v10 + 56))(v11, 1, 1, v9);
  }

  else
  {
    v12 = *(v6 + 56);
    v13 = v0[22];
    sub_100005934(v8 + v12, v0[4], &unk_100780A00);
    sub_10064CE78(v13, type metadata accessor for AppInstall);
    if ((*(v10 + 48))(v11, 1, v9) != 1)
    {
      v14 = v0[7];
      (*(v0[6] + 32))(v14, v0[4], v0[5]);
      v15 = sub_1005F8634(v14);
      if (v15)
      {
        v0[2] = 0;
        v16 = v15;
        v17 = [v15 resumeWithError:v0 + 2];

        v18 = v0[2];
        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v20 = v18;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      (*(v0[6] + 8))(v0[7], v0[5]);
      goto LABEL_14;
    }
  }

  sub_1000032A8(v0[4], &unk_100780A00);
LABEL_14:
  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_10063A424;

  return sub_10063C2D0(0);
}

uint64_t sub_10063A424()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10063A560, v1, 0);
}

uint64_t sub_10063A560()
{
  v1 = v0[26];
  sub_1000032A8(v0[24], &qword_100787660);
  sub_1000032A8(v1, &qword_10078A420);

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_10063A6C8()
{
  (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = *(v3 + 48);
  v8 = *(v3 + 64);
  *v1 = 0;
  (*(v6 + 56))(&v1[v7], 1, 1, v5);
  v9 = type metadata accessor for AppInstall();
  v10 = *(v9 - 8);
  (*(v10 + 56))(&v1[v8], 1, 1, v9);
  if ((*(v2 + 48))(v4, 1, v3) != 1)
  {
    sub_1000032A8(v0[18], &qword_1007875E0);
  }

  v11 = v0[24];
  v12 = v0[21];
  v13 = v0[19];
  v14 = *v12;
  v15 = *(v13 + 64);
  sub_10020A668(&v12[*(v13 + 48)], v0[26], &qword_10078A420);
  sub_10020A668(&v12[v15], v11, &qword_100787660);
  v16 = v0[26];
  if (v14)
  {
    v17 = v0[25];
    v18 = v0[15];
    v19 = v0[16];
    sub_100005934(v0[26], v17, &qword_10078A420);
    v20 = (*(v19 + 48))(v17, 1, v18);
    v21 = v0[25];
    if (v20 == 1)
    {
      sub_1000032A8(v21, &qword_10078A420);
      v22 = v0[22];
      sub_100005934(v0[24], v22, &qword_100787660);
      v23 = (*(v10 + 48))(v22, 1, v9);
      v24 = v0[22];
      v25 = v0[5];
      v26 = v0[6];
      v27 = v0[4];
      if (v23 == 1)
      {
        sub_1000032A8(v24, &qword_100787660);
        (*(v26 + 56))(v27, 1, 1, v25);
      }

      else
      {
        v34 = *(v9 + 56);
        v35 = v0[22];
        sub_100005934(v24 + v34, v0[4], &unk_100780A00);
        sub_10064CE78(v35, type metadata accessor for AppInstall);
        if ((*(v26 + 48))(v27, 1, v25) != 1)
        {
          v46 = v0[7];
          (*(v0[6] + 32))(v46, v0[4], v0[5]);
          v47 = sub_1005F8634(v46);
          if (v47)
          {
            v0[2] = 0;
            v48 = v47;
            v49 = [v47 resumeWithError:v0 + 2];

            v50 = v0[2];
            if (v49)
            {
              v51 = v50;
            }

            else
            {
              v52 = v50;
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }
          }

          (*(v0[6] + 8))(v0[7], v0[5]);
          goto LABEL_26;
        }
      }

      sub_1000032A8(v0[4], &unk_100780A00);
LABEL_26:
      v53 = swift_task_alloc();
      v0[38] = v53;
      *v53 = v0;
      v53[1] = sub_10063A424;

      return sub_10063C2D0(0);
    }

    v31 = v0[23];
    v30 = v0[24];
    sub_10064CA20(v21, v0[17], type metadata accessor for EvaluatorDownload);
    sub_100005934(v30, v31, &qword_100787660);
    v32 = (*(v10 + 48))(v31, 1, v9);
    v33 = v0[23];
    if (v32 == 1)
    {
      sub_1000032A8(v0[23], &qword_100787660);
LABEL_18:
      v39 = v0[3];
      v41 = v39[19];
      v40 = v39[20];
      v42 = sub_100006D8C(v39 + 16, v41);
      static CellularIdentity.current()();
      v43 = swift_task_alloc();
      v0[34] = v43;
      *v43 = v0;
      v43[1] = sub_100639BE0;
      v44 = v0[17];
      v45 = v0[10];

      return sub_1005C9BD8(v44, 0, 0, v45, 1, v42, v41, v40);
    }

    v36 = (v33 + *(v9 + 60));
    v0[29] = *v36;
    v37 = v36[1];
    v0[30] = v37;

    sub_10064CE78(v33, type metadata accessor for AppInstall);
    if (!v37)
    {
      goto LABEL_18;
    }

    v38 = *(*sub_100006D8C((v0[3] + 176), *(v0[3] + 200)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    v0[31] = v38;

    return _swift_task_switch(sub_100639558, v38, 0);
  }

  else
  {
    sub_1000032A8(v0[24], &qword_100787660);
    sub_1000032A8(v16, &qword_10078A420);

    v28 = v0[1];

    return v28(0);
  }
}

uint64_t sub_10063AE3C()
{
  v1[2] = v0;
  v2 = type metadata accessor for CellularIdentity();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DDMDeclaration(0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for EvaluatorDownload();
  v1[11] = swift_task_alloc();
  sub_1001F0C48(&qword_100787650);
  v1[12] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10078A428);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10063B06C, v0, 0);
}

uint64_t sub_10063B06C()
{
  v1 = *(v0[2] + 168);
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_10063B13C;
  v3 = v0[12];
  v4 = v0[2];

  return sub_1003B4EE8(v3, sub_10064CDCC, v4, v1);
}

uint64_t sub_10063B13C()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_10063C1EC;
  }

  else
  {
    v4 = sub_10063B274;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063B274()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_1000032A8(v2, &qword_100787650);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[11];
    sub_10020A668(v2, v5, &qword_10078A428);
    sub_100005934(v5, v6, &qword_10078A428);

    sub_10064CA20(v6, v7, type metadata accessor for EvaluatorDownload);
    sub_100005934(v5, v6, &qword_10078A428);
    v8 = (v6 + *(v1 + 48));
    v0[19] = *v8;
    v9 = v8[1];
    v0[20] = v9;
    sub_10064CE78(v6, type metadata accessor for EvaluatorDownload);
    if (v9)
    {
      v10 = *(*sub_100006D8C((v0[2] + 176), *(v0[2] + 200)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      v0[21] = v10;

      return _swift_task_switch(sub_10063B56C, v10, 0);
    }

    else
    {
      v11 = v0[2];
      v12 = v11[19];
      v13 = v11[20];
      v14 = sub_100006D8C(v11 + 16, v12);
      static CellularIdentity.current()();
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_10063BAC8;
      v16 = v0[5];
      v17 = v0[11];

      return sub_1005C9BD8(v17, 0, 0, v16, 1, v14, v12, v13);
    }
  }
}

uint64_t sub_10063B56C()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + 112);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10063B65C;
  v6 = v0[6];

  return sub_1003B0094(v6, sub_100302FC0, v4, v3);
}

uint64_t sub_10063B65C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 168);

    v4 = sub_10063B92C;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 16);

    v4 = sub_10063B7BC;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10063B7BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  (*(v0[8] + 56))(v5, 0, 1, v4);
  sub_10064CA20(v5, v3, type metadata accessor for DDMDeclaration);
  LOBYTE(v4) = *(v3 + *(v4 + 44));
  sub_10064CE78(v3, type metadata accessor for DDMDeclaration);
  *(v1 + *(v2 + 36)) = v4;
  v6 = v0[2];
  v7 = v6[19];
  v8 = v6[20];
  v9 = sub_100006D8C(v6 + 16, v7);
  static CellularIdentity.current()();
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_10063BAC8;
  v11 = v0[5];
  v12 = v0[11];

  return sub_1005C9BD8(v12, 0, 0, v11, 1, v9, v7, v8);
}

uint64_t sub_10063B92C()
{
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_10063B998, v1, 0);
}

uint64_t sub_10063B998()
{
  v1 = v0[6];
  (*(v0[8] + 56))(v1, 1, 1, v0[7]);
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = v0[2];
  v3 = v2[19];
  v4 = v2[20];
  v5 = sub_100006D8C(v2 + 16, v3);
  static CellularIdentity.current()();
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_10063BAC8;
  v7 = v0[5];
  v8 = v0[11];

  return sub_1005C9BD8(v8, 0, 0, v7, 1, v5, v3, v4);
}

uint64_t sub_10063BAC8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 200) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10063BC3C, v5, 0);
}

uint64_t sub_10063BC3C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 25) = BYTE1(v1) & 1;
  *(v3 + 26) = BYTE2(v1) & 1;
  *(v3 + 27) = HIBYTE(v1) & 1;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_10063BD3C;
  v5 = *(v0 + 136);

  return sub_1005316D0(sub_10064CDE8, v3, v5);
}

uint64_t sub_10063BD3C()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_10064D098;
  }

  else
  {

    v4 = sub_10063BE98;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063BE98()
{
  if (*(v0 + 204))
  {
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_10063BFF8;

    return sub_10063C2D0(1);
  }

  else
  {
    v1 = *(v0 + 128);
    sub_10064CE78(*(v0 + 88), type metadata accessor for EvaluatorDownload);
    sub_1000032A8(v1, &qword_10078A428);

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10063BFF8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10063C108, v1, 0);
}

uint64_t sub_10063C108()
{
  v1 = v0[16];
  sub_10064CE78(v0[11], type metadata accessor for EvaluatorDownload);
  sub_1000032A8(v1, &qword_10078A428);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10063C1EC()
{
  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_1000032A8(v0[12], &qword_100787650);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10063C2D0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for AppInstallEngine.Event(0);
  *(v2 + 64) = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10078A3D0);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10063C438, v1, 0);
}

uint64_t sub_10063C438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_10063C524;

  return (sub_10052F328)();
}

uint64_t sub_10063C524()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10063CA20;
  }

  else
  {
    v4 = sub_10063C66C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063C66C()
{
  v36 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  **(v0 + 64) = *(v0 + 120);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_1007835A8);
  AsyncStream.Continuation.yield(_:)();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for AsyncStream.Continuation.YieldResult.terminated<A>(_:);
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    static Logger.install.getter();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 16);
      v9 = *(v0 + 120);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      v13 = 0xE800000000000000;
      v14 = 0x656C626D61657270;
      *v10 = 138412546;
      v15 = 0xE800000000000000;
      v16 = 0x64656873696E6966;
      v17 = *(v8 + 120);
      *(v10 + 4) = v17;
      if (v9 != 6)
      {
        v16 = 0x64656C696166;
        v15 = 0xE600000000000000;
      }

      *v11 = v17;
      *(v10 + 12) = 2082;
      v18 = 0x656C6C65636E6163;
      v19 = 0xE600000000000000;
      if (v9 == 4)
      {
        v19 = 0xE900000000000064;
      }

      else
      {
        v18 = 0x646573756170;
      }

      if (v9 <= 5)
      {
        v15 = v19;
      }

      else
      {
        v18 = v16;
      }

      v20 = 0xE700000000000000;
      v21 = 0x6C6C6174736E69;
      if (v9 != 2)
      {
        v21 = 0x6C626D6174736F70;
        v20 = 0xE900000000000065;
      }

      if (v9)
      {
        v14 = 0x64616F6C6E776F64;
        v13 = 0xE800000000000000;
      }

      if (v9 > 1)
      {
        v14 = v21;
        v13 = v20;
      }

      if (v9 <= 3)
      {
        v22 = v14;
      }

      else
      {
        v22 = v18;
      }

      if (v9 <= 3)
      {
        v23 = v13;
      }

      else
      {
        v23 = v15;
      }

      v24 = v12;
      v34 = *(v0 + 48);
      v26 = *(v0 + 24);
      v25 = *(v0 + 32);
      v27 = v17;
      v28 = sub_1002346CC(v22, v23, &v35);

      *(v10 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Transition to phase '%{public}s' will be ignored", v10, 0x16u);
      sub_1000032A8(v11, &qword_10077F920);

      sub_10000710C(v24);

      (*(v25 + 8))(v34, v26);
    }

    else
    {
      v29 = *(v0 + 48);
      v30 = *(v0 + 24);
      v31 = *(v0 + 32);

      (*(v31 + 8))(v29, v30);
    }
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10063CA20()
{
  v44 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412546;
    v6 = *(v3 + 120);
    *(v4 + 4) = v6;
    *v5 = v6;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = v6;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v8;
    v5[1] = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Staging phase transition failed with error: %{public}@", v4, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 72);
  **(v0 + 64) = *(v0 + 120);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_1007835A8);
  AsyncStream.Continuation.yield(_:)();
  v12 = (*(v10 + 88))(v9, v11);
  v13 = enum case for AsyncStream.Continuation.YieldResult.terminated<A>(_:);
  (*(v10 + 8))(v9, v11);
  if (v12 == v13)
  {
    static Logger.install.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 16);
      v17 = *(v0 + 120);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      v21 = 0xE800000000000000;
      v22 = 0x656C626D61657270;
      *v18 = 138412546;
      v23 = 0xE800000000000000;
      v24 = 0x64656873696E6966;
      v25 = *(v16 + 120);
      *(v18 + 4) = v25;
      if (v17 != 6)
      {
        v24 = 0x64656C696166;
        v23 = 0xE600000000000000;
      }

      *v19 = v25;
      *(v18 + 12) = 2082;
      v26 = 0x656C6C65636E6163;
      v27 = 0xE600000000000000;
      if (v17 == 4)
      {
        v27 = 0xE900000000000064;
      }

      else
      {
        v26 = 0x646573756170;
      }

      if (v17 <= 5)
      {
        v23 = v27;
      }

      else
      {
        v26 = v24;
      }

      v28 = 0xE700000000000000;
      v29 = 0x6C6C6174736E69;
      if (v17 != 2)
      {
        v29 = 0x6C626D6174736F70;
        v28 = 0xE900000000000065;
      }

      if (v17)
      {
        v22 = 0x64616F6C6E776F64;
        v21 = 0xE800000000000000;
      }

      if (v17 > 1)
      {
        v22 = v29;
        v21 = v28;
      }

      if (v17 <= 3)
      {
        v30 = v22;
      }

      else
      {
        v30 = v26;
      }

      if (v17 <= 3)
      {
        v31 = v21;
      }

      else
      {
        v31 = v23;
      }

      v32 = v20;
      v42 = *(v0 + 48);
      v34 = *(v0 + 24);
      v33 = *(v0 + 32);
      v35 = v25;
      v36 = sub_1002346CC(v30, v31, &v43);

      *(v18 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Transition to phase '%{public}s' will be ignored", v18, 0x16u);
      sub_1000032A8(v19, &qword_10077F920);

      sub_10000710C(v32);

      (*(v33 + 8))(v42, v34);
    }

    else
    {
      v37 = *(v0 + 48);
      v38 = *(v0 + 24);
      v39 = *(v0 + 32);

      (*(v39 + 8))(v37, v38);
    }
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10063CF28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for AppInstallEngine.Event(0);
  v2[5] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_10078A3D0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for AppInstall();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_1001F0C48(&qword_100787660);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for DownloadRequest();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10063D194, v1, 0);
}

uint64_t sub_10063D194()
{
  sub_10064CED8(v0[2], v0[21], type metadata accessor for AppInstallScheduler.ParkReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v17 = swift_task_alloc();
      v0[26] = v17;
      *v17 = v0;
      v17[1] = sub_10063E0A4;

      return sub_10063877C();
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v11 = *(v0[3] + 168);
      v12 = swift_task_alloc();
      v0[24] = v12;
      *v12 = v0;
      v12[1] = sub_10063D7B4;
      v13 = v0[13];
      v14 = v0[3];

      return sub_1003B78B8(v13, sub_10064CE5C, v14, v11);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        static Logger.install.getter();
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.default.getter();
        v4 = os_log_type_enabled(v2, v3);
        v5 = v0[19];
        v6 = v0[15];
        v7 = v0[16];
        if (v4)
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for installation", v8, 2u);
        }

        (*(v7 + 8))(v5, v6);

        v9 = v0[1];

        return v9();
      }

      return _assertionFailure(_:_:file:line:flags:)();
    }

    sub_10064CA20(v0[21], v0[14], type metadata accessor for DownloadRequest);
    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v15[1] = sub_10063D588;
    v16 = v0[14];

    return sub_100640FD8(v16);
  }
}

uint64_t sub_10063D588()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10063E298;
  }

  else
  {
    v4 = sub_10063D6B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063D6B4()
{
  sub_10064CE78(*(v0 + 112), type metadata accessor for DownloadRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063D7B4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10063E3A0;
  }

  else
  {
    v4 = sub_10063D8E0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10063D8E0()
{
  v77 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_100005934(*(v0 + 104), v1, &qword_100787660);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_1000032A8(*(v0 + 104), &qword_100787660);
    v5 = v4;
LABEL_3:
    sub_1000032A8(v5, &qword_100787660);
    goto LABEL_63;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  sub_10064CA20(*(v0 + 96), v6, type metadata accessor for AppInstall);
  v8 = *(v6 + *(v7 + 132));
  static Logger.install.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v76 = v14;
    v15 = 0xE800000000000000;
    v16 = 0xE800000000000000;
    *v12 = 138412546;
    v17 = 0x64656873696E6966;
    v18 = *(v11 + 120);
    if (v8 != 6)
    {
      v17 = 0x64656C696166;
    }

    *(v12 + 4) = v18;
    if (v8 != 6)
    {
      v16 = 0xE600000000000000;
    }

    *v13 = v18;
    *(v12 + 12) = 2082;
    v19 = 0x656C6C65636E6163;
    v20 = 0xE600000000000000;
    if (v8 == 4)
    {
      v20 = 0xE900000000000064;
    }

    else
    {
      v19 = 0x646573756170;
    }

    if (v8 <= 5)
    {
      v16 = v20;
    }

    else
    {
      v19 = v17;
    }

    v21 = 0xE700000000000000;
    v22 = 0x6C6C6174736E69;
    if (v8 != 2)
    {
      v22 = 0x6C626D6174736F70;
      v21 = 0xE900000000000065;
    }

    v23 = 0x64616F6C6E776F64;
    if (v8)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v23 = 0x656C626D61657270;
    }

    if (v8 <= 1)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v8 > 1)
    {
      v15 = v21;
    }

    if (v8 <= 3)
    {
      v25 = v24;
    }

    else
    {
      v25 = v19;
    }

    if (v8 <= 3)
    {
      v26 = v15;
    }

    else
    {
      v26 = v16;
    }

    v27 = v14;
    v28 = *(v0 + 128);
    v72 = *(v0 + 120);
    v74 = *(v0 + 144);
    v29 = v18;
    v30 = sub_1002346CC(v25, v26, &v76);

    *(v12 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Resuming after restart at phase '%{public}s'", v12, 0x16u);
    sub_1000032A8(v13, &qword_10077F920);

    sub_10000710C(v27);

    v31 = *(v28 + 8);
    v31(v74, v72);
  }

  else
  {
    v32 = *(v0 + 144);
    v33 = *(v0 + 120);
    v34 = *(v0 + 128);

    v31 = *(v34 + 8);
    v31(v32, v33);
  }

  v36 = *(v0 + 56);
  v35 = *(v0 + 64);
  v37 = *(v0 + 48);
  **(v0 + 40) = v8;
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_1007835A8);
  AsyncStream.Continuation.yield(_:)();
  v38 = (*(v36 + 88))(v35, v37);
  v40 = *(v0 + 56);
  v39 = *(v0 + 64);
  v41 = *(v0 + 48);
  if (v38 == enum case for AsyncStream.Continuation.YieldResult.terminated<A>(_:))
  {
    (*(v40 + 8))(*(v0 + 64), *(v0 + 48));
    static Logger.install.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 24);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v76 = v47;
      v48 = 0xE800000000000000;
      v49 = 0xE800000000000000;
      *v45 = 138412546;
      v50 = 0x64656873696E6966;
      v51 = *(v44 + 120);
      if (v8 != 6)
      {
        v50 = 0x64656C696166;
      }

      *(v45 + 4) = v51;
      if (v8 != 6)
      {
        v49 = 0xE600000000000000;
      }

      *v46 = v51;
      *(v45 + 12) = 2082;
      v52 = 0x656C6C65636E6163;
      v53 = 0xE600000000000000;
      if (v8 == 4)
      {
        v53 = 0xE900000000000064;
      }

      else
      {
        v52 = 0x646573756170;
      }

      if (v8 <= 5)
      {
        v49 = v53;
      }

      else
      {
        v52 = v50;
      }

      v54 = 0xE700000000000000;
      v55 = 0x6C6C6174736E69;
      if (v8 != 2)
      {
        v55 = 0x6C626D6174736F70;
        v54 = 0xE900000000000065;
      }

      v56 = 0x64616F6C6E776F64;
      if (v8)
      {
        v48 = 0xE800000000000000;
      }

      else
      {
        v56 = 0x656C626D61657270;
      }

      if (v8 <= 1)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      if (v8 > 1)
      {
        v48 = v54;
      }

      if (v8 <= 3)
      {
        v58 = v57;
      }

      else
      {
        v58 = v52;
      }

      if (v8 <= 3)
      {
        v59 = v48;
      }

      else
      {
        v59 = v49;
      }

      v60 = v47;
      v70 = *(v0 + 120);
      v71 = *(v0 + 136);
      v73 = *(v0 + 88);
      v75 = *(v0 + 104);
      v61 = v51;
      v62 = sub_1002346CC(v58, v59, &v76);

      *(v45 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Transition to phase '%{public}s' will be ignored", v45, 0x16u);
      sub_1000032A8(v46, &qword_10077F920);

      sub_10000710C(v60);

      v31(v71, v70);
      sub_10064CE78(v73, type metadata accessor for AppInstall);
      v5 = v75;
    }

    else
    {
      v66 = *(v0 + 136);
      v67 = *(v0 + 120);
      v68 = *(v0 + 104);
      v69 = *(v0 + 88);

      v31(v66, v67);
      sub_10064CE78(v69, type metadata accessor for AppInstall);
      v5 = v68;
    }

    goto LABEL_3;
  }

  v63 = *(v0 + 104);
  sub_10064CE78(*(v0 + 88), type metadata accessor for AppInstall);
  sub_1000032A8(v63, &qword_100787660);
  (*(v40 + 8))(v39, v41);
LABEL_63:

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_10063E0A4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10063E1B4, v1, 0);
}

uint64_t sub_10063E1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063E298()
{
  sub_10064CE78(*(v0 + 112), type metadata accessor for DownloadRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063E3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063E48C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F0E54;

  return sub_100647A7C();
}

void sub_10063E51C(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v43[-v11];
  v13 = *(a2 + 112);
  v14 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v13 onConnection:v14];
  if (![v15 existsInDatabase])
  {

    static Logger.install.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v13;

      _os_log_impl(&_mh_execute_header, v27, v28, "Installation cancellation failed, %lld not found in the database", v29, 0xCu);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_18;
  }

  v16 = sub_100535ED0(27, v15);
  if (v16 != 8 && v16 <= 5u && ((1 << v16) & 0x23) != 0)
  {

    v30 = 1;
    goto LABEL_19;
  }

  v19 = v16;
  static Logger.install.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v20, v21))
  {

    (*(v7 + 8))(v12, v6);
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v44 = v21;
  v47 = v3;
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v49 = v46;
  *v22 = 138412546;
  v24 = *(a2 + 120);
  *(v22 + 4) = v24;
  v45 = v23;
  *v23 = v24;
  *(v22 + 12) = 2080;
  if (v19 == 8)
  {
    v25 = 0xEA00000000003E65;
    v26 = 0x73616850206F4E3CLL;
  }

  else
  {
    v31 = 0xE700000000000000;
    v32 = 0x6C6C6174736E69;
    v33 = 0xE600000000000000;
    v34 = 0x646573756170;
    v35 = 0xE800000000000000;
    v36 = 0x64656873696E6966;
    if (v19 != 6)
    {
      v36 = 0x64656C696166;
      v35 = 0xE600000000000000;
    }

    if (v19 != 5)
    {
      v34 = v36;
      v33 = v35;
    }

    v37 = 0xE900000000000065;
    v38 = 0x6C626D6174736F70;
    if (v19 != 3)
    {
      v38 = 0x656C6C65636E6163;
      v37 = 0xE900000000000064;
    }

    if (v19 != 2)
    {
      v32 = v38;
      v31 = v37;
    }

    v39 = v19 <= 4u;
    if (v19 <= 4u)
    {
      v26 = v32;
    }

    else
    {
      v26 = v34;
    }

    if (v39)
    {
      v25 = v31;
    }

    else
    {
      v25 = v33;
    }
  }

  v40 = v44;
  v41 = v24;
  v42 = sub_1002346CC(v26, v25, &v49);

  *(v22 + 14) = v42;
  _os_log_impl(&_mh_execute_header, v20, v40, "[%@] Installation cannot be cancelled right now: %s", v22, 0x16u);
  sub_1000032A8(v45, &qword_10077F920);

  sub_10000710C(v46);

  (*(v7 + 8))(v12, v6);
  v30 = 0;
LABEL_19:
  *v48 = v30;
}

uint64_t sub_10063E9B4()
{
  *(v1 + 16) = v0;
  sub_1001F0C48(&qword_10078A408);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10063EA50, v0, 0);
}

uint64_t sub_10063EA50()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload;
  v0[4] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_10063EBD0;

    return sub_100271F08();
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask))
    {
      type metadata accessor for AppInstallTaskResult();

      sub_1001F0C48(&unk_10077F940);
      Task.cancel()();

      v2 = v0[4];
      v1 = v0[2];
    }

    *(v1 + v2) = 0;

    *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10063EBD0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10063ECE0, v1, 0);
}

uint64_t sub_10063ECE0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    v3 = type metadata accessor for AppInstallTaskResult();
    v0[9] = v3;
    v4 = sub_1001F0C48(&unk_10077F940);
    *v2 = v0;
    v2[1] = sub_10063EEA0;
    v5 = v0[3];

    return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  else
  {

    v6 = type metadata accessor for AppInstallTaskResult();
    v7 = v0[3];
    (*(*(v6 - 8) + 56))(v7, 1, 1, v6);
    sub_1000032A8(v7, &qword_10078A408);
    v8 = v0[2];
    *(v8 + v0[4]) = 0;

    *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10063EEA0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 16);

    v4 = sub_10063F0D0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = sub_10063EFE0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10063EFE0()
{

  v1 = v0[3];
  (*(*(v0[9] - 8) + 56))(v1, 0, 1);
  sub_1000032A8(v1, &qword_10078A408);
  v2 = v0[2];
  *(v2 + v0[4]) = 0;

  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10063F0D0()
{

  v1 = v0[3];
  (*(*(v0[9] - 8) + 56))(v1, 1, 1);
  sub_1000032A8(v1, &qword_10078A408);
  v2 = v0[2];
  *(v2 + v0[4]) = 0;

  *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10063F1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v50[-v12];
  v14 = *(a2 + 112);
  v15 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v14 onConnection:v15];
  if ([v16 existsInDatabase])
  {
    v17 = sub_100535ED0(27, v16);
    v18 = v17;
    if (v17 == 8)
    {
      goto LABEL_3;
    }

    if (v17)
    {
      if (v17 == 5)
      {
      }

      else if (v17 == 1)
      {
        goto LABEL_38;
      }

LABEL_3:
      v55 = v3;
      static Logger.install.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v51 = v20;
        v54 = v7;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56 = v53;
        *v21 = 138412546;
        v23 = *(a2 + 120);
        *(v21 + 4) = v23;
        v52 = v22;
        *v22 = v23;
        *(v21 + 12) = 2080;
        if (v18 == 8)
        {
          v24 = 0xEA00000000003E65;
          v25 = 0x73616850206F4E3CLL;
        }

        else
        {
          v32 = 0x656C626D61657270;
          v33 = 0xE800000000000000;
          v34 = 0xE800000000000000;
          v35 = 0x64656873696E6966;
          if (v18 != 6)
          {
            v35 = 0x64656C696166;
            v34 = 0xE600000000000000;
          }

          v36 = 0x656C6C65636E6163;
          v37 = 0xE600000000000000;
          if (v18 == 4)
          {
            v37 = 0xE900000000000064;
          }

          else
          {
            v36 = 0x646573756170;
          }

          if (v18 <= 5u)
          {
            v35 = v36;
            v34 = v37;
          }

          v38 = 0xE700000000000000;
          v39 = 0x6C6C6174736E69;
          if (v18 != 2)
          {
            v39 = 0x6C626D6174736F70;
            v38 = 0xE900000000000065;
          }

          if (v18)
          {
            v32 = 0x64616F6C6E776F64;
            v33 = 0xE800000000000000;
          }

          if (v18 > 1u)
          {
            v32 = v39;
            v33 = v38;
          }

          v40 = v18 <= 3u;
          if (v18 <= 3u)
          {
            v25 = v32;
          }

          else
          {
            v25 = v35;
          }

          if (v40)
          {
            v24 = v33;
          }

          else
          {
            v24 = v34;
          }
        }

        v41 = v51;
        v42 = v23;
        v43 = sub_1002346CC(v25, v24, &v56);

        *(v21 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v19, v41, "[%@] Installation cannot be paused right now: %s", v21, 0x16u);
        sub_1000032A8(v52, &qword_10077F920);

        sub_10000710C(v53);

        (*(v8 + 8))(v13, v54);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
      }

      goto LABEL_35;
    }

LABEL_38:
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      sub_10063422C(5, 27, v16);
      v49 = *(sub_1001F0C48(&qword_10078A410) + 48);
      *a3 = 1;
      sub_100535A10(v16, &a3[v49]);

      goto LABEL_36;
    }

    goto LABEL_3;
  }

  static Logger.install.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v55 = v8;
    v29 = a3;
    v30 = v7;
    v31 = v28;
    *v28 = 134217984;
    *(v28 + 4) = v14;

    _os_log_impl(&_mh_execute_header, v26, v27, "Installation pause failed, %lld not found in the database", v31, 0xCu);
    v7 = v30;
    a3 = v29;
    v8 = v55;
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
LABEL_35:
  v44 = *(sub_1001F0C48(&qword_10078A410) + 48);
  *a3 = 0;
  v45 = type metadata accessor for UUID();
  (*(*(v45 - 8) + 56))(&a3[v44], 1, 1, v45);
LABEL_36:
  v46 = sub_1001F0C48(&qword_10078A410);
  return (*(*(v46 - 8) + 56))(a3, 0, 1, v46);
}

uint64_t sub_10063F7DC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v90 - v7;
  v9 = type metadata accessor for EvaluatorDownload();
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v90 - v12;
  v14 = type metadata accessor for AppPackage();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v100 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v102 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v105 = a2;
  v20 = *(a2 + 112);
  type metadata accessor for AppInstallEntity.Entity();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v20 onConnection:v19];
  if (![v21 existsInDatabase] || (v22 = sub_100535ED0(27, v21), v22 == 8))
  {

    v23 = sub_1001F0C48(&qword_10078A418);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    *a3 = 0;
    (*(v106 + 56))(&a3[v24], 1, 1, v9);
    v26 = type metadata accessor for AppInstall();
    (*(*(v26 - 8) + 56))(&a3[v25], 1, 1, v26);
    return (*(*(v23 - 8) + 56))(a3, 0, 1, v23);
  }

  v96 = v13;
  v97 = v9;
  v98 = v22;
  v93 = v8;
  static Logger.install.getter();
  v28 = v105;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v95 = v30;
  v31 = os_log_type_enabled(v29, v30);
  v99 = v21;
  if (v31)
  {
    v92 = v29;
    v94 = a3;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v108 = v91;
    v34 = v98;
    v35 = 0xE800000000000000;
    *v32 = 138412546;
    v36 = 0xE800000000000000;
    v37 = 0x64656873696E6966;
    v38 = *(v28 + 120);
    *(v32 + 4) = v38;
    if (v34 != 6)
    {
      v37 = 0x64656C696166;
      v36 = 0xE600000000000000;
    }

    v39 = v33;
    *v33 = v38;
    *(v32 + 12) = 2080;
    v40 = 0x656C6C65636E6163;
    v41 = 0xE600000000000000;
    if (v34 == 4)
    {
      v41 = 0xE900000000000064;
    }

    else
    {
      v40 = 0x646573756170;
    }

    if (v34 <= 5)
    {
      v36 = v41;
    }

    else
    {
      v40 = v37;
    }

    v42 = 0xE700000000000000;
    v43 = 0x6C6C6174736E69;
    if (v34 != 2)
    {
      v43 = 0x6C626D6174736F70;
      v42 = 0xE900000000000065;
    }

    v44 = 0x64616F6C6E776F64;
    if (v34)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v44 = 0x656C626D61657270;
    }

    if (v34 <= 1)
    {
      v45 = v44;
    }

    else
    {
      v45 = v43;
    }

    if (v34 > 1)
    {
      v35 = v42;
    }

    if (v34 <= 3)
    {
      v46 = v45;
    }

    else
    {
      v46 = v40;
    }

    if (v34 <= 3)
    {
      v47 = v35;
    }

    else
    {
      v47 = v36;
    }

    v48 = v38;
    v49 = sub_1002346CC(v46, v47, &v108);

    *(v32 + 14) = v49;
    v50 = v92;
    _os_log_impl(&_mh_execute_header, v92, v95, "[%@] Attempting to resume from phase '%s'", v32, 0x16u);
    sub_1000032A8(v39, &qword_10077F920);

    sub_10000710C(v91);

    (*(v102 + 8))(v18, v16);
    a3 = v94;
    v51 = v97;
    v21 = v99;
  }

  else
  {

    (*(v102 + 8))(v18, v16);
    v51 = v97;
  }

  v52 = sub_1005AFEA0(v19, v20);
  v53 = v107;
  v54 = v96;
  if (v52)
  {
    sub_1003A84AC(v52, v96);
    if (!v53)
    {
      v56 = v51;
      v94 = a3;
      v107 = 0;
      v57 = v104;
      (*(v103 + 56))(v54, 0, 1, v104);
      v58 = v100;
      sub_10064CA20(v54, v100, type metadata accessor for AppPackage);
      v59 = sub_100537334(20, v21);
      v60 = sub_100537334(21, v21);
      v61 = *(v57 + 76);
      v62 = type metadata accessor for URL();
      v63 = *(v62 - 8);
      v64 = v93;
      (*(v63 + 16))(v93, v58 + v61, v62);
      (*(v63 + 56))(v64, 0, 1, v62);
      result = sub_100535D44(6, v21);
      v66 = *(v58 + 64);
      if (v66 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v65)
        {
          v67 = v65;
        }

        else
        {
          v67 = 0xE000000000000000;
        }

        if (v65)
        {
          v68 = result;
        }

        else
        {
          v68 = 0;
        }

        if (v59)
        {
          v69 = 2;
        }

        else
        {
          v69 = 0;
        }

        v70 = v69 & 0xFE | ((v60 != 2) ^ v60) & 1;
        v71 = sub_1005371D0(25, v21);
        v72 = *(v105 + 120);
        v73 = v56[9];
        v74 = v64;
        v75 = v101;
        sub_10020A668(v74, v101, &unk_1007809F0);
        v76 = (v75 + v56[5]);
        *v76 = v68;
        v76[1] = v67;
        *(v75 + v56[6]) = v66;
        *(v75 + v56[7]) = v71;
        *(v75 + v73) = 3;
        *(v75 + v56[10]) = v70;
        *(v75 + v56[8]) = v72;
        if (v98 <= 3u || v98 > 5u || v98 == 4)
        {
          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {
          v81 = 1;
        }

        v82 = sub_1001F0C48(&qword_10078A418);
        v83 = *(v82 + 48);
        v84 = *(v82 + 64);
        v85 = v72;

        v86 = v94;
        *v94 = v81 & 1;
        sub_10064CED8(v101, &v86[v83], type metadata accessor for EvaluatorDownload);
        (*(v106 + 56))(&v86[v83], 0, 1, v56);
        v87 = v107;
        sub_1003A85C8(v99, &v86[v84]);
        if (v87)
        {

          v88 = 1;
        }

        else
        {
          v88 = 0;
        }

        sub_10064CE78(v101, type metadata accessor for EvaluatorDownload);
        sub_10064CE78(v100, type metadata accessor for AppPackage);
        v89 = type metadata accessor for AppInstall();
        (*(*(v89 - 8) + 56))(&v86[v84], v88, 1, v89);
        return (*(*(v82 - 8) + 56))(v86, 0, 1, v82);
      }

      return result;
    }
  }

  v55 = 1;
  (*(v103 + 56))(v54, 1, 1, v104);
  sub_1000032A8(v54, &unk_100780AB0);
  if (v98 <= 3u || v98 > 5u || v98 == 4)
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v77 = sub_1001F0C48(&qword_10078A418);
  v78 = *(v77 + 48);
  v79 = *(v77 + 64);
  *a3 = v55 & 1;
  (*(v106 + 56))(&a3[v78], 1, 1, v51);
  v80 = type metadata accessor for AppInstall();
  (*(*(v80 - 8) + 56))(&a3[v79], 1, 1, v80);
  return (*(*(v77 - 8) + 56))(a3, 0, 1, v77);
}

void sub_100640450(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v92 = type metadata accessor for LogKey.Prefix();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7 - 8);
  v96 = &v83 - v8;
  v93 = type metadata accessor for EvaluatorDownload();
  __chkstk_darwin(v93);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v10 - 8);
  v98 = &v83 - v11;
  v99 = type metadata accessor for AppPackage();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(a2 + 112);
  type metadata accessor for AppInstallEntity.Entity();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v18 onConnection:v17];
  if (![v19 existsInDatabase] || (v20 = sub_100535ED0(27, v19), v20 == 8))
  {

    v21 = sub_1001F0C48(&qword_10078A428);
    (*(*(v21 - 8) + 56))(v100, 1, 1, v21);
    return;
  }

  v88 = v20;
  v89 = v18;
  v22 = v3;
  static Logger.install.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v86 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v87 = v17;
  if (v25)
  {
    v84 = v23;
    v85 = v3;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v101 = v28;
    v29 = v88;
    v30 = v88;
    v31 = 0xE800000000000000;
    *v26 = 138412546;
    v32 = 0xE800000000000000;
    v33 = 0x64656873696E6966;
    v34 = *(a2 + 120);
    *(v26 + 4) = v34;
    if (v30 != 6)
    {
      v33 = 0x64656C696166;
      v32 = 0xE600000000000000;
    }

    v83 = v27;
    *v27 = v34;
    *(v26 + 12) = 2080;
    v35 = 0x656C6C65636E6163;
    v36 = 0xE600000000000000;
    if (v30 == 4)
    {
      v36 = 0xE900000000000064;
    }

    else
    {
      v35 = 0x646573756170;
    }

    if (v30 <= 5)
    {
      v32 = v36;
    }

    else
    {
      v35 = v33;
    }

    v37 = 0xE700000000000000;
    v38 = 0x6C6C6174736E69;
    if (v30 != 2)
    {
      v38 = 0x6C626D6174736F70;
      v37 = 0xE900000000000065;
    }

    v39 = 0x64616F6C6E776F64;
    if (v30)
    {
      v31 = 0xE800000000000000;
    }

    else
    {
      v39 = 0x656C626D61657270;
    }

    if (v30 <= 1)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    if (v30 > 1)
    {
      v31 = v37;
    }

    if (v30 <= 3)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35;
    }

    if (v30 <= 3)
    {
      v42 = v31;
    }

    else
    {
      v42 = v32;
    }

    v43 = v28;
    v44 = v34;
    v45 = sub_1002346CC(v41, v42, &v101);

    *(v26 + 14) = v45;
    v46 = v84;
    _os_log_impl(&_mh_execute_header, v84, v86, "[%@] Attempting to prioritize from phase '%s'", v26, 0x16u);
    sub_1000032A8(v83, &qword_10077F920);

    sub_10000710C(v43);

    (*(v14 + 8))(v16, v13);
    v22 = v85;
    v47 = v89;
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v47 = v89;
    v29 = v88;
  }

  if (v29 == 1)
  {
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      v51 = sub_1001F0C48(&qword_10078A428);
      (*(*(v51 - 8) + 56))(v100, 1, 1, v51);

      return;
    }
  }

  v49 = sub_1005AFEA0(v87, v47);
  if (!v49)
  {
    v50 = v98;
    goto LABEL_39;
  }

  v50 = v98;
  sub_1003A84AC(v49, v98);
  if (v22)
  {

LABEL_39:

    (*(v97 + 56))(v50, 1, 1, v99);
    sub_1000032A8(v50, &unk_100780AB0);
    v52 = sub_1001F0C48(&qword_10078A428);
    (*(*(v52 - 8) + 56))(v100, 1, 1, v52);
    return;
  }

  v85 = 0;
  v53 = v99;
  (*(v97 + 56))(v50, 0, 1, v99);
  v54 = v95;
  sub_10064CA20(v50, v95, type metadata accessor for AppPackage);
  if (sub_100537334(20, v19))
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_100537334(21, v19);
  v57 = *(v53 + 76);
  v58 = type metadata accessor for URL();
  v59 = *(v58 - 8);
  v60 = v54 + v57;
  v61 = v96;
  (*(v59 + 16))(v96, v60, v58);
  (*(v59 + 56))(v61, 0, 1, v58);
  v62 = sub_100535D44(6, v19);
  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0;
  }

  v65 = 0xE000000000000000;
  if (v63)
  {
    v65 = v63;
  }

  v66 = *(v54 + 64);
  if (v66 < 0)
  {
    __break(1u);
  }

  else
  {
    v99 = v65;
    v67 = v55 & 0xFE | ((v56 != 2) ^ v56) & 1;
    v68 = sub_1005371D0(25, v19);
    v69 = sub_100535BE0(22, v19);
    if (!v69)
    {
      (*(v90 + 104))(v91, enum case for LogKey.Prefix.undefined(_:), v92);
      v70 = objc_allocWithZone(type metadata accessor for LogKey());
      v69 = LogKey.init(prefix:)();
    }

    v71 = v69;
    v72 = v93;
    v73 = v94;
    v74 = *(v93 + 36);
    sub_10020A668(v96, v94, &unk_1007809F0);
    v75 = (v73 + v72[5]);
    v76 = v99;
    *v75 = v64;
    v75[1] = v76;
    *(v73 + v72[6]) = v66;
    *(v73 + v72[7]) = v68;
    *(v73 + v74) = 3;
    *(v73 + v72[10]) = v67;
    *(v73 + v72[8]) = v71;
    v77 = sub_1001F0C48(&qword_10078A428);
    v78 = v100;
    v79 = (v100 + *(v77 + 48));
    sub_10064CED8(v73, v100, type metadata accessor for EvaluatorDownload);
    v80 = sub_100535D44(10, v19);
    v82 = v81;

    sub_10064CE78(v73, type metadata accessor for EvaluatorDownload);
    sub_10064CE78(v95, type metadata accessor for AppPackage);
    *v79 = v80;
    v79[1] = v82;
    (*(*(v77 - 8) + 56))(v78, 0, 1, v77);
  }
}

void sub_100640F44(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v6 = *(a2 + 112);
  v7 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v6 onConnection:v7];
  if ([v8 existsInDatabase])
  {
    sub_100635CEC(a3 & 0x1010101, 25, v8);
  }

  *a4 = 0;
}

uint64_t sub_100640FD8(uint64_t a1)
{
  v2[125] = v1;
  v2[124] = a1;
  v3 = type metadata accessor for AppInstallTaskResult();
  v2[126] = v3;
  v2[127] = *(v3 - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = type metadata accessor for DownloadRequest();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();

  return _swift_task_switch(sub_1006410E4, v1, 0);
}

uint64_t sub_1006410E4()
{
  v1 = v0[132];
  v2 = v0[125];
  v3 = v0[124];
  v4 = type metadata accessor for Download();
  sub_10064CED8(v3, v1, type metadata accessor for DownloadRequest);
  v5 = v2[25];
  v6 = v2[28];
  v7 = v2[30];
  v8 = sub_100006D8C(v2 + 22, v5);
  v9 = *(v5 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v5);
  v11 = sub_100272FB8(v1, v10, v4, v5, v6, v7);
  v0[133] = v11;

  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload;
  v0[134] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload;
  *(v2 + v12) = v11;

  v13 = swift_task_alloc();
  v0[135] = v13;
  *v13 = v0;
  v13[1] = sub_1006412A8;

  return sub_100272078((v0 + 32));
}

uint64_t sub_1006412A8()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  v3 = *(v2 + 1000);
  if (v0)
  {
    v4 = sub_100642AF4;
  }

  else
  {
    v4 = sub_1006413D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006413D4()
{
  if (*(v0 + 328) > 1u)
  {
    if (*(v0 + 328) == 2)
    {
      *(v0 + 1128) = *(v0 + 256);
      v7 = *(v0 + 280);
      *(v0 + 336) = *(v0 + 264);
      *(v0 + 352) = v7;
      v8 = *(v0 + 312);
      *(v0 + 368) = *(v0 + 296);
      *(v0 + 384) = v8;
      sub_100005934(v0 + 336, v0 + 464, &qword_10077E968);
      if (*(v0 + 496))
      {
        v9 = *(v0 + 480);
        *(v0 + 400) = *(v0 + 464);
        *(v0 + 416) = v9;
        v10 = *(v0 + 512);
        *(v0 + 432) = *(v0 + 496);
        *(v0 + 448) = v10;
        v11 = swift_task_alloc();
        *(v0 + 1136) = v11;
        *v11 = v0;
        v11[1] = sub_1006421C4;
        v6 = v0 + 400;
        goto LABEL_10;
      }

      sub_1000032A8(v0 + 336, &qword_10077E968);
      sub_1000032A8(v0 + 464, &qword_10077E968);
      **(v0 + 1032) = *(v0 + 1128);
    }

    else
    {
      **(v0 + 1032) = 2;
    }

    goto LABEL_16;
  }

  if (!*(v0 + 328))
  {
    v1 = *(v0 + 272);
    *(v0 + 720) = *(v0 + 256);
    *(v0 + 736) = v1;
    v2 = *(v0 + 304);
    *(v0 + 752) = *(v0 + 288);
    *(v0 + 768) = v2;
    sub_100005934(v0 + 720, v0 + 848, &qword_10077E968);
    if (*(v0 + 880))
    {
      v3 = *(v0 + 864);
      *(v0 + 784) = *(v0 + 848);
      *(v0 + 800) = v3;
      v4 = *(v0 + 896);
      *(v0 + 816) = *(v0 + 880);
      *(v0 + 832) = v4;
      v5 = swift_task_alloc();
      *(v0 + 1096) = v5;
      *v5 = v0;
      v5[1] = sub_100641A2C;
      v6 = v0 + 784;
LABEL_10:

      return sub_100647218(v6);
    }

    sub_1000032A8(v0 + 720, &qword_10077E968);
    sub_1000032A8(v0 + 848, &qword_10077E968);
    type metadata accessor for AppInstallScheduler.ParkReason(0);
    swift_storeEnumTagMultiPayload();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  v12 = *(v0 + 272);
  *(v0 + 528) = *(v0 + 256);
  *(v0 + 544) = v12;
  v13 = *(v0 + 304);
  *(v0 + 560) = *(v0 + 288);
  *(v0 + 576) = v13;
  sub_100005934(v0 + 528, v0 + 656, &qword_10077E968);
  if (*(v0 + 688))
  {
    v14 = *(v0 + 672);
    *(v0 + 592) = *(v0 + 656);
    *(v0 + 608) = v14;
    v15 = *(v0 + 704);
    *(v0 + 624) = *(v0 + 688);
    *(v0 + 640) = v15;
    v16 = swift_task_alloc();
    *(v0 + 1112) = v16;
    *v16 = v0;
    v16[1] = sub_100641D28;
    v6 = v0 + 592;
    goto LABEL_10;
  }

  sub_1000032A8(v0 + 656, &qword_10077E968);
  v28 = *(v0 + 1040);
  v29 = *(v0 + 992);
  sub_10064CED8(v29, *(v0 + 1048), type metadata accessor for DownloadRequest);
  sub_10020A980(v29 + *(v28 + 68), v0 + 912);
  sub_1001F0C48(&qword_10077F4D8);
  if (swift_dynamicCast())
  {
    v30 = *(v0 + 1048);
    v31 = *(v0 + 216);
    *(v0 + 80) = *(v0 + 200);
    *(v0 + 96) = v31;
    *(v0 + 112) = *(v0 + 232);
    *(v0 + 128) = *(v0 + 248);
    v32 = *(v0 + 152);
    *(v0 + 16) = *(v0 + 136);
    *(v0 + 32) = v32;
    v33 = *(v0 + 184);
    *(v0 + 48) = *(v0 + 168);
    *(v0 + 64) = v33;
    sub_100621858(v0 + 528, v0 + 72);
    *(v0 + 976) = &type metadata for DownloadRequest.Streaming;
    *(v0 + 984) = &off_100764198;
    v34 = swift_allocObject();
    *(v0 + 952) = v34;
    sub_1006218C8(v0 + 16, v34 + 16);
    sub_1000032A8(v0 + 528, &qword_10077E968);
    v35 = *(v28 + 68);
    sub_10000710C(v30 + v35);
    sub_1001DFDBC((v0 + 952), v30 + v35);
    sub_10027323C(v0 + 16);
  }

  else
  {
    sub_1000032A8(v0 + 528, &qword_10077E968);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_1000032A8(v0 + 136, &qword_10078A430);
  }

  v36 = *(v0 + 1048);
  sub_10064CED8(v36, *(v0 + 1032), type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CE78(v36, type metadata accessor for DownloadRequest);
LABEL_17:
  v18 = *(v0 + 1032);
  v19 = *(v0 + 1024);
  v20 = *(v0 + 1016);
  v21 = *(v0 + 992);
  sub_1001F0C48(&unk_100780A80);
  v22 = *(v20 + 72);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10069F6E0;
  v25 = v24 + v23;
  sub_10064CED8(v21, v25, type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CED8(v18, v25 + v22, type metadata accessor for AppInstallTaskResult);
  *v19 = v24;
  swift_storeEnumTagMultiPayload();
  v26 = swift_task_alloc();
  *(v0 + 1152) = v26;
  *v26 = v0;
  v26[1] = sub_1006424AC;
  v27 = *(v0 + 1024);

  return sub_100643288(v27);
}

uint64_t sub_100641A2C()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 1000);
  if (v0)
  {
    v4 = sub_100642BF8;
  }

  else
  {
    v4 = sub_100641B58;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100641B58()
{
  sub_10031E150((v0 + 98));
  sub_1000032A8((v0 + 90), &qword_10077E968);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[124];
  sub_1001F0C48(&unk_100780A80);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069F6E0;
  v8 = v7 + v6;
  sub_10064CED8(v4, v8, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CED8(v1, v8 + v5, type metadata accessor for AppInstallTaskResult);
  *v2 = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  v0[144] = v9;
  *v9 = v0;
  v9[1] = sub_1006424AC;
  v10 = v0[128];

  return sub_100643288(v10);
}

uint64_t sub_100641D28()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  v3 = *(v2 + 1000);
  if (v0)
  {
    v4 = sub_100642D1C;
  }

  else
  {
    v4 = sub_100641E54;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100641E54()
{
  sub_10031E150(v0 + 592);
  v1 = *(v0 + 1040);
  v2 = *(v0 + 992);
  sub_10064CED8(v2, *(v0 + 1048), type metadata accessor for DownloadRequest);
  sub_10020A980(v2 + *(v1 + 68), v0 + 912);
  sub_1001F0C48(&qword_10077F4D8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1048);
    v4 = *(v0 + 216);
    *(v0 + 80) = *(v0 + 200);
    *(v0 + 96) = v4;
    *(v0 + 112) = *(v0 + 232);
    *(v0 + 128) = *(v0 + 248);
    v5 = *(v0 + 152);
    *(v0 + 16) = *(v0 + 136);
    *(v0 + 32) = v5;
    v6 = *(v0 + 184);
    *(v0 + 48) = *(v0 + 168);
    *(v0 + 64) = v6;
    sub_100621858(v0 + 528, v0 + 72);
    *(v0 + 976) = &type metadata for DownloadRequest.Streaming;
    *(v0 + 984) = &off_100764198;
    v7 = swift_allocObject();
    *(v0 + 952) = v7;
    sub_1006218C8(v0 + 16, v7 + 16);
    sub_1000032A8(v0 + 528, &qword_10077E968);
    v8 = *(v1 + 68);
    sub_10000710C(v3 + v8);
    sub_1001DFDBC((v0 + 952), v3 + v8);
    sub_10027323C(v0 + 16);
  }

  else
  {
    sub_1000032A8(v0 + 528, &qword_10077E968);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_1000032A8(v0 + 136, &qword_10078A430);
  }

  v9 = *(v0 + 1048);
  sub_10064CED8(v9, *(v0 + 1032), type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CE78(v9, type metadata accessor for DownloadRequest);
  v10 = *(v0 + 1032);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v13 = *(v0 + 992);
  sub_1001F0C48(&unk_100780A80);
  v14 = *(v12 + 72);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10069F6E0;
  v17 = v16 + v15;
  sub_10064CED8(v13, v17, type metadata accessor for DownloadRequest);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CED8(v10, v17 + v14, type metadata accessor for AppInstallTaskResult);
  *v11 = v16;
  swift_storeEnumTagMultiPayload();
  v18 = swift_task_alloc();
  *(v0 + 1152) = v18;
  *v18 = v0;
  v18[1] = sub_1006424AC;
  v19 = *(v0 + 1024);

  return sub_100643288(v19);
}

uint64_t sub_1006421C4()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  v3 = *(v2 + 1000);
  if (v0)
  {
    v4 = sub_100642E40;
  }

  else
  {
    v4 = sub_1006422F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006422F0()
{
  sub_10031E150((v0 + 50));
  sub_1000032A8((v0 + 42), &qword_10077E968);
  *v0[129] = v0[141];
  swift_storeEnumTagMultiPayload();
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[124];
  sub_1001F0C48(&unk_100780A80);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069F6E0;
  v8 = v7 + v6;
  sub_10064CED8(v4, v8, type metadata accessor for DownloadRequest);
  type metadata accessor for AppInstallScheduler.ParkReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10064CED8(v1, v8 + v5, type metadata accessor for AppInstallTaskResult);
  *v2 = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  v0[144] = v9;
  *v9 = v0;
  v9[1] = sub_1006424AC;
  v10 = v0[128];

  return sub_100643288(v10);
}

uint64_t sub_1006424AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  *(*v1 + 1160) = v0;

  sub_10064CE78(v3, type metadata accessor for AppInstallTaskResult);
  v4 = *(v2 + 1000);
  if (v0)
  {
    v5 = sub_100642F70;
  }

  else
  {
    v5 = sub_100642608;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100642608()
{
  v1 = v0[134];
  v2 = v0[129];
  v3 = v0[125];

  sub_10064CE78(v2, type metadata accessor for AppInstallTaskResult);
  *(v3 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006426D4()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  v3 = *(v2 + 1000);
  if (v0)
  {
    v4 = sub_100642A58;
  }

  else
  {
    v4 = sub_10064281C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064281C()
{
  v1 = swift_task_alloc();
  *(v0 + 1200) = v1;
  *v1 = v0;
  v1[1] = sub_1006428B0;

  return sub_10063C2D0(7);
}

uint64_t sub_1006428B0()
{
  v1 = *(*v0 + 1000);

  return _swift_task_switch(sub_1006429C0, v1, 0);
}

uint64_t sub_1006429C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100642A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100642AF4()
{

  v1 = v0[136];
  v0[146] = v1;
  v2 = v0[125];
  *(v2 + v0[134]) = 0;

  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_1006426D4;

  return (sub_10052F328)();
}

uint64_t sub_100642BF8()
{

  sub_10031E150((v0 + 98));
  sub_1000032A8((v0 + 90), &qword_10077E968);
  v1 = v0[138];
  v0[146] = v1;
  v2 = v0[125];
  *(v2 + v0[134]) = 0;

  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_1006426D4;

  return (sub_10052F328)();
}

uint64_t sub_100642D1C()
{

  sub_10031E150((v0 + 74));
  sub_1000032A8((v0 + 66), &qword_10077E968);
  v1 = v0[140];
  v0[146] = v1;
  v2 = v0[125];
  *(v2 + v0[134]) = 0;

  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_1006426D4;

  return (sub_10052F328)();
}

uint64_t sub_100642E40()
{

  sub_10031E150((v0 + 50));
  sub_1000032A8((v0 + 42), &qword_10077E968);
  v1 = v0[143];
  v0[146] = v1;
  v2 = v0[125];
  *(v2 + v0[134]) = 0;

  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_1006426D4;

  return (sub_10052F328)();
}

uint64_t sub_100642F70()
{
  v1 = v0[129];

  sub_10064CE78(v1, type metadata accessor for AppInstallTaskResult);
  v2 = v0[145];
  v0[146] = v2;
  v3 = v0[125];
  *(v3 + v0[134]) = 0;

  v4 = swift_task_alloc();
  v0[147] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[148] = v5;
  *v5 = v0;
  v5[1] = sub_1006426D4;

  return (sub_10052F328)();
}

uint64_t sub_100643094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 112);
  type metadata accessor for AppInstallEntity.Entity();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v6 onConnection:v5];
  if ([v7 existsInDatabase])
  {
    result = sub_1003A85C8(v7, a3);
    if (v3)
    {
      return result;
    }

    v9 = 0;
  }

  else
  {

    v9 = 1;
  }

  v10 = type metadata accessor for AppInstall();
  return (*(*(v10 - 8) + 56))(a3, v9, 1, v10);
}

void sub_10064316C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v3 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v2 onConnection:v3];
  if ([v4 existsInDatabase])
  {
    v5 = FilePath.string.getter();
    sub_100635E3C(v5, v6, 16, v4);
  }

  else
  {
  }
}

void sub_100643204(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 112);
  v5 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v4 onConnection:v5];
  if ([v6 existsInDatabase])
  {
    sub_10063422C(a3, 27, v6);
  }
}

uint64_t sub_100643288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for AppInstallTaskResult();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10064341C, v1, 0);
}

uint64_t sub_10064341C()
{
  v93 = v0;
  v1 = v0[13];
  v2 = v0[2];
  static Logger.install.getter();
  sub_10064CED8(v2, v1, type metadata accessor for AppInstallTaskResult);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  if (v5)
  {
    v90 = v0[17];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v88 = v8;
    v13 = swift_slowAlloc();
    v92 = v13;
    *v11 = 138412546;
    v14 = *(v10 + 120);
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = v14;
    v16 = sub_100609D90();
    v18 = v17;
    sub_10064CE78(v9, type metadata accessor for AppInstallTaskResult);
    v19 = sub_1002346CC(v16, v18, &v92);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Applying result: %s", v11, 0x16u);
    sub_1000032A8(v12, &qword_10077F920);

    sub_10000710C(v13);

    v20 = *(v7 + 8);
    v20(v90, v88);
  }

  else
  {

    sub_10064CE78(v9, type metadata accessor for AppInstallTaskResult);
    v20 = *(v7 + 8);
    v20(v6, v8);
  }

  sub_10064CED8(v0[2], v0[12], type metadata accessor for AppInstallTaskResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        result = *v0[12];
        v0[18] = result;
        v52 = *(result + 16);
        v0[19] = v52;
        if (v52)
        {
          v53 = v0[10];
          v0[20] = 0;
          if (*(result + 16))
          {
            sub_10064CED8(result + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v0[11], type metadata accessor for AppInstallTaskResult);
            v54 = swift_task_alloc();
            v0[21] = v54;
            *v54 = v0;
            v54[1] = sub_100643FFC;
            v55 = v0[11];

            return sub_100643288(v55);
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v29 = swift_task_alloc();
        v0[42] = v29;
        *v29 = v0;
        v29[1] = sub_1006453D4;

        return sub_100645CAC();
      }

      v69 = v0[1];

      return v69();
    }

    if (EnumCaseMultiPayload != 5)
    {
      v60 = v0[12];
      v61 = *v60;
      v62 = v60[1];
      v25 = *(v0[3] + 168);
      v26 = swift_task_alloc();
      v0[33] = v26;
      *(v26 + 16) = v62;
      *(v26 + 24) = v61;
      v63 = swift_task_alloc();
      v0[34] = v63;
      *v63 = v0;
      v63[1] = sub_100644C0C;
      v28 = sub_10064C9B0;
      goto LABEL_36;
    }

    v35 = v0[7];
    v36 = v0[8];
    sub_10064CA20(v0[12], v36, type metadata accessor for AppInstallScheduler.ParkReason);
    static Logger.install.getter();
    sub_10064CED8(v36, v35, type metadata accessor for AppInstallScheduler.ParkReason);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v37, v38))
    {
      v64 = v0[16];
      v65 = v0[14];
      v66 = v0[7];

      sub_10064CE78(v66, type metadata accessor for AppInstallScheduler.ParkReason);
      v67 = v64;
      v68 = v65;
LABEL_54:
      v20(v67, v68);
      v81 = v0[3];
      sub_100006D8C(v81 + 35, v81[38]);
      v82 = v81[14];
      v83 = swift_task_alloc();
      v0[29] = v83;
      *v83 = v0;
      v83[1] = sub_10064472C;
      v84 = v0[8];

      return sub_10055F44C(v82, v84);
    }

    v87 = v38;
    v91 = v37;
    v40 = v0[6];
    v39 = v0 + 6;
    v41 = v0 + 5;
    v42 = v0[5];
    v43 = v0[3];
    v85 = v0[7];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v92 = v86;
    *v44 = 138412546;
    v46 = *(v43 + 120);
    *(v44 + 4) = v46;
    *v45 = v46;
    v89 = v44;
    *(v44 + 12) = 2082;
    sub_10064CED8(v85, v40, type metadata accessor for AppInstallScheduler.ParkReason);
    sub_10064CED8(v40, v42, type metadata accessor for AppInstallScheduler.ParkReason);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 2)
    {
      if (v47 == 3)
      {
        v74 = v46;
        v71 = 0xE600000000000000;
        v72 = 0x646573756170;
      }

      else if (v47 == 4)
      {
        v70 = v46;
        v71 = 0xE800000000000000;
        v72 = 0x6E776F6474756873;
      }

      else
      {
        v76 = v46;
        v71 = 0xE700000000000000;
        v72 = 0x74726174736572;
      }
    }

    else
    {
      if (!v47)
      {
        v48 = *v39;
        v49 = "enqueue download";
        goto LABEL_48;
      }

      if (v47 == 1)
      {
        v48 = *v39;
        v49 = "dequeue download";
LABEL_48:
        v71 = (v49 - 32) | 0x8000000000000000;
        v73 = v46;
        v72 = 0xD000000000000010;
        sub_10064CE78(v48, type metadata accessor for AppInstallScheduler.ParkReason);
        v39 = v0 + 7;
LABEL_53:
        v77 = *v41;
        v78 = v0[16];
        v79 = v0[14];
        sub_10064CE78(*v39, type metadata accessor for AppInstallScheduler.ParkReason);
        sub_10064CE78(v77, type metadata accessor for AppInstallScheduler.ParkReason);
        v80 = sub_1002346CC(v72, v71, &v92);

        *(v89 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v91, v87, "[%@] Parking with reason: %{public}s", v89, 0x16u);
        sub_1000032A8(v45, &qword_10077F920);

        sub_10000710C(v86);

        v67 = v78;
        v68 = v79;
        goto LABEL_54;
      }

      v75 = v46;
      v71 = 0xE700000000000000;
      v72 = 0x6C6C6174736E69;
    }

    v41 = v0 + 7;
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v58 = *v0[12];
      v25 = *(v0[3] + 168);
      v26 = swift_task_alloc();
      v0[23] = v26;
      *(v26 + 16) = v58;
      v59 = swift_task_alloc();
      v0[24] = v59;
      *v59 = v0;
      v59[1] = sub_100644310;
      v28 = sub_10064CA88;
    }

    else
    {
      v31 = v0[12];
      v32 = *v31;
      v33 = v31[1];
      v25 = *(v0[3] + 168);
      v26 = swift_task_alloc();
      v0[30] = v26;
      *(v26 + 16) = v33;
      *(v26 + 24) = v32;
      v34 = swift_task_alloc();
      v0[31] = v34;
      *v34 = v0;
      v34[1] = sub_100644924;
      v28 = sub_10064C9E8;
    }

LABEL_36:

    return sub_10052F328(sub_10052F328, v28, v26, v25);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v50 = *v0[12];
    v0[26] = v50;
    v51 = swift_task_alloc();
    v0[27] = v51;
    *v51 = v0;
    v51[1] = sub_10064452C;

    return sub_100645784(v50);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = v0[12];
      v23 = v0[3];
      v24 = *v22;
      v0[37] = *v22;
      v25 = *(v23 + 168);
      v26 = swift_task_alloc();
      v0[38] = v26;
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      v27 = swift_task_alloc();
      v0[39] = v27;
      *v27 = v0;
      v27[1] = sub_100644F38;
      v28 = sub_1003D8050;
      goto LABEL_36;
    }

    v56 = *v0[12];
    v57 = swift_task_alloc();
    v0[36] = v57;
    *v57 = v0;
    v57[1] = sub_100644E28;

    return sub_10063C2D0(v56);
  }
}

uint64_t sub_100643FFC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 24);
    sub_10064CE78(v3, type metadata accessor for AppInstallTaskResult);

    v5 = sub_100645500;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 24);
    sub_10064CE78(*(v2 + 88), type metadata accessor for AppInstallTaskResult);
    v5 = sub_100644164;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

void sub_100644164()
{
  v1 = v0[20] + 1;
  if (v1 == v0[19])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[20] = v1;
    v3 = v0[18];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10064CED8(v3 + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v1, v0[11], type metadata accessor for AppInstallTaskResult);
      v4 = swift_task_alloc();
      v0[21] = v4;
      *v4 = v0;
      v4[1] = sub_100643FFC;
      v5 = v0[11];

      sub_100643288(v5);
    }
  }
}

uint64_t sub_100644310()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100644458;
  }

  else
  {
    v4 = sub_10064D008;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100644458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064452C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1006455D4;
  }

  else
  {
    v4 = sub_100644658;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100644658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10064472C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10064483C, v1, 0);
}

uint64_t sub_10064483C()
{
  sub_10064CE78(*(v0 + 64), type metadata accessor for AppInstallScheduler.ParkReason);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100644924()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100644B38;
  }

  else
  {
    v4 = sub_100644A6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100644A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100644B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100644C0C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100644D54;
  }

  else
  {
    v4 = sub_10064D008;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100644D54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100644E28()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10064D008, v1, 0);
}

uint64_t sub_100644F38()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1006452F8;
  }

  else
  {
    v4 = sub_100645080;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100645080()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_100645114;

  return sub_10063C2D0(7);
}

uint64_t sub_100645114()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100645224, v1, 0);
}

uint64_t sub_100645224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006452F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006453D4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1006456B0;
  }

  else
  {
    v4 = sub_10064D008;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100645500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006455D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006456B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100645784(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1001F0C48(&unk_100780A00);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10064587C, v1, 0);
}

uint64_t sub_10064587C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = [*(v0 + 40) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 16))(v3, v1, v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_coordinatorID;
  swift_beginAccess();
  sub_10064CAA4(v3, v5 + v7);
  swift_endAccess();
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_100645A04;

  return (sub_10052F328)();
}

uint64_t sub_100645A04()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100645C24;
  }

  else
  {
    v4 = sub_100645B4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100645B4C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = *(*sub_100006D8C((v0[6] + 176), *(v0[6] + 200)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
  sub_1003EF6B4(v4);

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100645C24()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100645CAC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100645DA4, v0, 0);
}

uint64_t sub_100645DA4()
{
  v1 = *(*(v0 + 16) + 168);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100645E68;
  v3 = *(v0 + 16);

  return sub_100531FC0(sub_10064CB78, v3, v1);
}

uint64_t sub_100645E68(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 65) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_100645FC0, v7, 0);
  }
}

uint64_t sub_100645FC0()
{
  v29 = v0;
  v1 = *(v0 + 65);
  if (v1 >= 6)
  {
    if (v1 == 6)
    {

      goto LABEL_7;
    }

    if (v1 != 7)
    {
LABEL_5:
      v3 = *(v0 + 48);
      v4 = *(v0 + 16);
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
      v6 = sub_10064CB30(&qword_10078A3E8, type metadata accessor for AppInstallEngine);
      v7 = swift_allocObject();
      v7[2] = v4;
      v7[3] = v6;
      v7[4] = v4;
      swift_retain_n();
      sub_1004A673C(0, 0, v3, &unk_1006BA658, v7);

      goto LABEL_10;
    }
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  static Logger.install.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 65);
    v11 = *(v0 + 32);
    v27 = *(v0 + 40);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 138412546;
    v17 = *(v13 + 120);
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2080;
    *(v0 + 64) = v10;
    v18 = v17;
    sub_1001F0C48(&qword_10078A3F0);
    v19 = String.init<A>(describing:)();
    v21 = sub_1002346CC(v19, v20, &v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Not finishing, previous phase '%s' wasn't finished", v14, 0x16u);
    sub_1000032A8(v15, &qword_10077F920);

    sub_10000710C(v16);

    (*(v11 + 8))(v27, v12);
  }

  else
  {
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);
    v24 = *(v0 + 24);

    (*(v23 + 8))(v22, v24);
  }

LABEL_10:

  v25 = *(v0 + 8);

  return v25();
}

void sub_1006463EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for AppPackageEntity.Entity();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a2 onConnection:v3];
  if ([v4 existsInDatabase])
  {
    sub_100635F7C(1, 8, v4, sub_1005AF1B0);
  }
}

void sub_100646480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a2 + 112);
  v10 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v9 onConnection:v10];
  if ([v11 existsInDatabase])
  {
    v12 = type metadata accessor for UUID();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v8, a3, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_1006360C4(v8, 9, v11);

    sub_1000032A8(v8, &unk_100780A00);
  }

  else
  {
  }
}

void sub_100646610(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v3 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v2 onConnection:v3];
  if ([v4 existsInDatabase])
  {
    swift_getErrorValue();
    v5 = sub_100329B50(v6);
    sub_10063647C(v5, 11, v4);
  }

  else
  {
  }
}

void sub_1006466C4(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *(a2 + 112);
  v5 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v4 onConnection:v5];
  if ([v6 existsInDatabase])
  {
    v7 = sub_100535ED0(27, v6);
    sub_10063422C(6, 27, v6);
  }

  else
  {
    v7 = 8;
  }

  *a3 = v7;
}

uint64_t sub_100646764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for AppInstallScheduler.ParkReason(0);
  v4[4] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100646858, a4, 0);
}

uint64_t sub_100646858()
{
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v3 + 120);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Applying finish", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1006469F8;

  return sub_100646D1C();
}

uint64_t sub_1006469F8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100646B08, v1, 0);
}

uint64_t sub_100646B08()
{
  v1 = v0[2];
  sub_100006D8C(v1 + 35, v1[38]);
  v2 = v1[14];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100646BD4;
  v4 = v0[4];

  return sub_10055F44C(v2, v4);
}

uint64_t sub_100646BD4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_10064CE78(v1, type metadata accessor for AppInstallScheduler.ParkReason);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100646D1C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100646DDC, v0, 0);
}

uint64_t sub_100646DDC()
{
  v1 = *(v0 + 16);
  v2 = sub_10064CB30(&qword_10078A3E8, type metadata accessor for AppInstallEngine);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100646EE4;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v3, v1, v2, 0x2928706F7473, 0xE600000000000000, sub_10064CC48, v4, &type metadata for () + 8);
}

uint64_t sub_100646EE4()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100646FF4, v1, 0);
}

uint64_t sub_100646FF4()
{
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *(v3 + 120);
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Event loop stopped", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

void sub_100647164(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  type metadata accessor for AppPackageEntity.Entity();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a2 onConnection:v13];
  if ([v14 existsInDatabase])
  {
    sub_1006365AC(a3, 0, a4, v14, a5, a6, a7);
  }
}

uint64_t sub_100647218(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Logger();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006472D8, v1, 0);
}

uint64_t sub_1006472D8()
{
  v29 = v0;
  v1 = v0[12];
  static Logger.install.getter();
  sub_10031E0F4(v1, (v0 + 2));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = v0[13];
    v24 = v0[14];
    v25 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v6 = 138412546;
    v9 = *(v5 + 120);
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    v0[10] = v0[9];
    v10 = v9;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v11;
    v12._countAndFlagsBits = 47;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v0[11] = v0[8];
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    sub_10031E150((v0 + 2));
    v14 = sub_1002346CC(v27, v28, &v26);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Persisting verifier state: %{public}s", v6, 0x16u);
    sub_1000032A8(v7, &qword_10077F920);

    sub_10000710C(v8);

    (*(v4 + 8))(v25, v24);
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];

    sub_10031E150((v0 + 2));
    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[12];
  v18 = v0[13];
  v20 = *(v18 + 168);
  v21 = swift_task_alloc();
  v0[17] = v21;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_1006475C4;

  return sub_10052F328(sub_10052F328, sub_10064CF40, v21, v20);
}

uint64_t sub_1006475C4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_100647770;
  }

  else
  {
    v4 = sub_10064770C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10064770C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100647770()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1006477D4(void **a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = type metadata accessor for AppPackage();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a2 + 112);
  v14 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v13 onConnection:v14];
  v16 = [v15 existsInDatabase];

  if (v16)
  {
    v17 = sub_1005AFEA0(v14, v13);
    if (!v17)
    {
LABEL_5:
      (*(v10 + 56))(v8, 1, 1, v9);
      sub_1000032A8(v8, &unk_100780AB0);
      return;
    }

    sub_1003A84AC(v17, v8);
    if (v3)
    {

      goto LABEL_5;
    }

    (*(v10 + 56))(v8, 0, 1, v9);
    sub_10064CA20(v8, v12, type metadata accessor for AppPackage);
    v18 = *v12;
    type metadata accessor for AppPackageEntity.Entity();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v18 onConnection:v14];
    if ([v19 existsInDatabase])
    {
      sub_10031E0F4(v21, v20);
      sub_1006366C0(v20, 12, v19);

      sub_1000032A8(v20, &qword_10077E968);
    }

    else
    {
    }

    sub_10064CE78(v12, type metadata accessor for AppPackage);
  }
}

uint64_t sub_100647A7C()
{
  v1[16] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for AppInstallTaskResult();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_100788E10);
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v5 = type metadata accessor for AppInstallEngine.Event(0);
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  sub_1001F0C48(&qword_10078A3D8);
  v1[40] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10078A3E0);
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_100647D98, v0, 0);
}

uint64_t sub_100647D98()
{
  sub_1001F0C48(&qword_1007835B0);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_10064CB30(&qword_10078A3E8, type metadata accessor for AppInstallEngine);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask;
  v0[44] = v1;
  v0[45] = v2;
  v3 = v0[16];
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_100647EBC;
  v5 = v0[40];
  v6 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v1, v6);
}

uint64_t sub_100647EBC()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100647FCC, v1, 0);
}

uint64_t sub_100647FCC()
{
  v1 = *(v0 + 320);
  if ((*(*(v0 + 304) + 48))(v1, 1, *(v0 + 296)) == 1)
  {
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_10064CA20(v1, *(v0 + 312), type metadata accessor for AppInstallEngine.Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(v0 + 312);
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *v5;
      *(v0 + 464) = v6;
      static Logger.install.getter();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 128);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *(v0 + 120) = v12;
        v13 = 0xE800000000000000;
        v14 = 0x656C626D61657270;
        *v10 = 138412546;
        v15 = 0xE800000000000000;
        v16 = 0x64656873696E6966;
        v17 = *(v9 + 120);
        *(v10 + 4) = v17;
        if (v6 != 6)
        {
          v16 = 0x64656C696166;
          v15 = 0xE600000000000000;
        }

        *v11 = v17;
        *(v10 + 12) = 2080;
        v18 = 0x656C6C65636E6163;
        v19 = 0xE600000000000000;
        if (v6 == 4)
        {
          v19 = 0xE900000000000064;
        }

        else
        {
          v18 = 0x646573756170;
        }

        if (v6 <= 5)
        {
          v15 = v19;
        }

        else
        {
          v18 = v16;
        }

        v20 = 0xE700000000000000;
        v21 = 0x6C6C6174736E69;
        if (v6 != 2)
        {
          v21 = 0x6C626D6174736F70;
          v20 = 0xE900000000000065;
        }

        if (v6)
        {
          v14 = 0x64616F6C6E776F64;
          v13 = 0xE800000000000000;
        }

        if (v6 > 1)
        {
          v14 = v21;
          v13 = v20;
        }

        if (v6 <= 3)
        {
          v22 = v14;
        }

        else
        {
          v22 = v18;
        }

        if (v6 <= 3)
        {
          v23 = v13;
        }

        else
        {
          v23 = v15;
        }

        v24 = v12;
        v25 = *(v0 + 200);
        v54 = *(v0 + 192);
        v55 = *(v0 + 256);
        v26 = v17;
        v27 = sub_1002346CC(v22, v23, (v0 + 120));

        *(v10 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Transitioning to phase '%s' #engine", v10, 0x16u);
        sub_1000032A8(v11, &qword_10077F920);

        sub_10000710C(v24);

        v28 = *(v25 + 8);
        v28(v55, v54);
      }

      else
      {
        v47 = *(v0 + 256);
        v48 = *(v0 + 192);
        v49 = *(v0 + 200);

        v28 = *(v49 + 8);
        v28(v47, v48);
      }

      *(v0 + 376) = v28;
      v50 = *(v0 + 128);
      v51 = *(v50 + 168);
      v52 = swift_task_alloc();
      *(v0 + 384) = v52;
      *(v52 + 16) = v50;
      *(v52 + 24) = v6;
      v53 = swift_task_alloc();
      *(v0 + 392) = v53;
      *v53 = v0;
      v53[1] = sub_100648690;

      return sub_1005324F0(v0 + 16, sub_10064C990, v52, v51);
    }

    else
    {
      (*(*(v0 + 280) + 32))(*(v0 + 288), v5, *(v0 + 272));
      static Logger.install.getter();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 128);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = *(v31 + 120);
        *(v32 + 4) = v34;
        *v33 = v34;
        v35 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Event loop drained", v32, 0xCu);
        sub_1000032A8(v33, &qword_10077F920);
      }

      v37 = *(v0 + 280);
      v36 = *(v0 + 288);
      v39 = *(v0 + 264);
      v38 = *(v0 + 272);
      v40 = *(v0 + 192);
      v41 = *(v0 + 200);

      (*(v41 + 8))(v39, v40);
      CheckedContinuation.resume(returning:)();
      (*(v37 + 8))(v36, v38);
      v42 = *(v0 + 352);
      v43 = *(v0 + 128);
      v44 = swift_task_alloc();
      *(v0 + 368) = v44;
      *v44 = v0;
      v44[1] = sub_100647EBC;
      v45 = *(v0 + 320);
      v46 = *(v0 + 328);

      return AsyncStream.Iterator.next(isolation:)(v45, v43, v42, v46);
    }
  }
}

uint64_t sub_100648690()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100649B98;
  }

  else
  {
    v4 = sub_1006487D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006487D8()
{
  if (*(*(v0 + 128) + *(v0 + 360)))
  {
    static Logger.install.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 464);
      v4 = *(v0 + 128);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *(v0 + 112) = v7;
      v8 = 0xE800000000000000;
      v9 = 0xE800000000000000;
      *v5 = 138412546;
      v10 = 0x64656873696E6966;
      v11 = *(v4 + 120);
      if (v3 != 6)
      {
        v10 = 0x64656C696166;
      }

      *(v5 + 4) = v11;
      if (v3 != 6)
      {
        v9 = 0xE600000000000000;
      }

      *v6 = v11;
      *(v5 + 12) = 2082;
      v12 = 0x656C6C65636E6163;
      v13 = 0xE600000000000000;
      if (v3 == 4)
      {
        v13 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x646573756170;
      }

      if (v3 <= 5)
      {
        v9 = v13;
      }

      else
      {
        v12 = v10;
      }

      v14 = 0xE700000000000000;
      v15 = 0x6C6C6174736E69;
      if (v3 != 2)
      {
        v15 = 0x6C626D6174736F70;
        v14 = 0xE900000000000065;
      }

      v16 = 0x64616F6C6E776F64;
      if (v3)
      {
        v8 = 0xE800000000000000;
      }

      else
      {
        v16 = 0x656C626D61657270;
      }

      if (v3 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (v3 > 1)
      {
        v8 = v14;
      }

      if (v3 <= 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = v12;
      }

      if (v3 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      v20 = v7;
      v68 = *(v0 + 224);
      v70 = *(v0 + 376);
      v21 = *(v0 + 192);
      v22 = v11;
      v23 = sub_1002346CC(v18, v19, (v0 + 112));

      *(v5 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Phase '%{public}s' superseded #engine", v5, 0x16u);
      sub_1000032A8(v6, &qword_10077F920);

      sub_10000710C(v20);

      v70(v68, v21);
    }

    else
    {
      v47 = *(v0 + 376);
      v48 = *(v0 + 224);
      v49 = *(v0 + 192);

      v47(v48, v49);
    }

    sub_10000710C(v0 + 16);
    v50 = *(v0 + 352);
    v51 = *(v0 + 128);
    v52 = swift_task_alloc();
    *(v0 + 368) = v52;
    *v52 = v0;
    v52[1] = sub_100647EBC;
    v53 = *(v0 + 320);
    v54 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v53, v51, v50, v54);
  }

  else
  {
    static Logger.install.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 464);
      v27 = *(v0 + 128);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *(v0 + 104) = v30;
      v31 = 0xE800000000000000;
      v32 = 0xE800000000000000;
      *v28 = 138412546;
      v33 = 0x64656873696E6966;
      v34 = *(v27 + 120);
      if (v26 != 6)
      {
        v33 = 0x64656C696166;
      }

      *(v28 + 4) = v34;
      if (v26 != 6)
      {
        v32 = 0xE600000000000000;
      }

      *v29 = v34;
      *(v28 + 12) = 2082;
      v35 = 0x656C6C65636E6163;
      v36 = 0xE600000000000000;
      if (v26 == 4)
      {
        v36 = 0xE900000000000064;
      }

      else
      {
        v35 = 0x646573756170;
      }

      if (v26 <= 5)
      {
        v32 = v36;
      }

      else
      {
        v35 = v33;
      }

      v37 = 0xE700000000000000;
      v38 = 0x6C6C6174736E69;
      if (v26 != 2)
      {
        v38 = 0x6C626D6174736F70;
        v37 = 0xE900000000000065;
      }

      v39 = 0x64616F6C6E776F64;
      if (v26)
      {
        v31 = 0xE800000000000000;
      }

      else
      {
        v39 = 0x656C626D61657270;
      }

      if (v26 <= 1)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      if (v26 > 1)
      {
        v31 = v37;
      }

      if (v26 <= 3)
      {
        v41 = v40;
      }

      else
      {
        v41 = v35;
      }

      if (v26 <= 3)
      {
        v42 = v31;
      }

      else
      {
        v42 = v32;
      }

      v43 = v30;
      v69 = *(v0 + 248);
      v71 = *(v0 + 376);
      v44 = *(v0 + 192);
      v45 = v34;
      v46 = sub_1002346CC(v41, v42, (v0 + 104));

      *(v28 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Phase '%{public}s' starting #engine", v28, 0x16u);
      sub_1000032A8(v29, &qword_10077F920);

      sub_10000710C(v43);

      v71(v69, v44);
    }

    else
    {
      v55 = *(v0 + 376);
      v56 = *(v0 + 248);
      v57 = *(v0 + 192);

      v55(v56, v57);
    }

    v58 = *(v0 + 360);
    v59 = *(v0 + 128);
    v60 = *(v0 + 40);
    v61 = *(v0 + 48);
    sub_100006D8C((v0 + 16), v60);
    v62 = (*(v61 + 24))(v60, v61);
    *(v0 + 408) = v62;
    *(v59 + v58) = v62;

    v63 = swift_task_alloc();
    *(v0 + 416) = v63;
    v64 = sub_1001F0C48(&unk_10077F940);
    *v63 = v0;
    v63[1] = sub_100648EA8;
    v65 = *(v0 + 184);
    v66 = *(v0 + 160);

    return Task.value.getter(v65, v62, v66, v64, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100648EA8()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_10064A448;
  }

  else
  {
    v4 = sub_100648FD4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100648FD4()
{
  if (swift_task_isCancelled())
  {
    static Logger.install.getter();

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 464);
      v4 = *(v0 + 128);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *(v0 + 96) = v7;
      v8 = 0xE800000000000000;
      v9 = 0xE800000000000000;
      *v5 = 138412546;
      v10 = 0x64656873696E6966;
      v11 = *(v4 + 120);
      if (v3 != 6)
      {
        v10 = 0x64656C696166;
      }

      *(v5 + 4) = v11;
      if (v3 != 6)
      {
        v9 = 0xE600000000000000;
      }

      *v6 = v11;
      *(v5 + 12) = 2082;
      v12 = 0x656C6C65636E6163;
      v13 = 0xE600000000000000;
      if (v3 == 4)
      {
        v13 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x646573756170;
      }

      if (v3 <= 5)
      {
        v9 = v13;
      }

      else
      {
        v12 = v10;
      }

      v14 = 0xE700000000000000;
      v15 = 0x6C6C6174736E69;
      if (v3 != 2)
      {
        v15 = 0x6C626D6174736F70;
        v14 = 0xE900000000000065;
      }

      v16 = 0x64616F6C6E776F64;
      if (v3)
      {
        v8 = 0xE800000000000000;
      }

      else
      {
        v16 = 0x656C626D61657270;
      }

      if (v3 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (v3 > 1)
      {
        v8 = v14;
      }

      if (v3 <= 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = v12;
      }

      if (v3 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      v20 = v7;
      v68 = *(v0 + 232);
      v70 = *(v0 + 376);
      v67 = *(v0 + 192);
      v72 = *(v0 + 184);
      v21 = v11;
      v22 = sub_1002346CC(v18, v19, (v0 + 96));

      *(v5 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Phase '%{public}s' cancelled #engine", v5, 0x16u);
      sub_1000032A8(v6, &qword_10077F920);

      sub_10000710C(v20);

      v70(v68, v67);
      v23 = v72;
    }

    else
    {
      v51 = *(v0 + 376);
      v52 = *(v0 + 232);
      v53 = *(v0 + 192);
      v54 = *(v0 + 184);

      v51(v52, v53);
      v23 = v54;
    }

    sub_10064CE78(v23, type metadata accessor for AppInstallTaskResult);
    sub_10000710C(v0 + 16);
    v55 = *(v0 + 352);
    v56 = *(v0 + 128);
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = sub_100647EBC;
    v58 = *(v0 + 320);
    v59 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v58, v56, v55, v59);
  }

  else
  {
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    *(*(v0 + 128) + *(v0 + 360)) = 0;

    static Logger.install.getter();
    sub_10064CED8(v24, v25, type metadata accessor for AppInstallTaskResult);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 464);
      v29 = *(v0 + 128);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *(v0 + 88) = swift_slowAlloc();
      v32 = 0xE800000000000000;
      v33 = 0xE800000000000000;
      *v30 = 138412802;
      v34 = 0x64656873696E6966;
      v35 = *(v29 + 120);
      if (v28 != 6)
      {
        v34 = 0x64656C696166;
      }

      *(v30 + 4) = v35;
      if (v28 != 6)
      {
        v33 = 0xE600000000000000;
      }

      *v31 = v35;
      *(v30 + 12) = 2082;
      v36 = 0x656C6C65636E6163;
      v37 = 0xE600000000000000;
      if (v28 == 4)
      {
        v37 = 0xE900000000000064;
      }

      else
      {
        v36 = 0x646573756170;
      }

      if (v28 <= 5)
      {
        v34 = v36;
        v33 = v37;
      }

      v38 = 0xE700000000000000;
      v39 = 0x6C6C6174736E69;
      if (v28 != 2)
      {
        v39 = 0x6C626D6174736F70;
        v38 = 0xE900000000000065;
      }

      v40 = 0x64616F6C6E776F64;
      if (v28)
      {
        v32 = 0xE800000000000000;
      }

      else
      {
        v40 = 0x656C626D61657270;
      }

      if (v28 <= 1)
      {
        v41 = v40;
      }

      else
      {
        v41 = v39;
      }

      if (v28 > 1)
      {
        v32 = v38;
      }

      if (v28 <= 3)
      {
        v42 = v41;
      }

      else
      {
        v42 = v34;
      }

      if (v28 <= 3)
      {
        v43 = v32;
      }

      else
      {
        v43 = v33;
      }

      v71 = *(v0 + 240);
      v73 = *(v0 + 376);
      v44 = *(v0 + 176);
      v69 = *(v0 + 192);
      v45 = v35;
      v46 = sub_1002346CC(v42, v43, (v0 + 88));

      *(v30 + 14) = v46;
      *(v30 + 22) = 2082;
      v47 = sub_100609D90();
      v49 = v48;
      sub_10064CE78(v44, type metadata accessor for AppInstallTaskResult);
      v50 = sub_1002346CC(v47, v49, (v0 + 88));

      *(v30 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Phase '%{public}s' completed with result: %{public}s #engine", v30, 0x20u);
      sub_1000032A8(v31, &qword_10077F920);

      swift_arrayDestroy();

      v73(v71, v69);
    }

    else
    {
      v60 = *(v0 + 376);
      v61 = *(v0 + 240);
      v62 = *(v0 + 192);
      v63 = *(v0 + 176);

      sub_10064CE78(v63, type metadata accessor for AppInstallTaskResult);
      v60(v61, v62);
    }

    v64 = swift_task_alloc();
    *(v0 + 432) = v64;
    *v64 = v0;
    v64[1] = sub_100649748;
    v65 = *(v0 + 184);

    return sub_100643288(v65);
  }
}

uint64_t sub_100649748()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_10064ACF8;
  }

  else
  {
    v4 = sub_100649874;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100649874()
{
  v1 = v0[23];

  sub_10064CE78(v1, type metadata accessor for AppInstallTaskResult);
  sub_10000710C((v0 + 2));
  v2 = v0[44];
  v3 = v0[16];
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_100647EBC;
  v5 = v0[40];
  v6 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100649958()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 128);
  if (v0)
  {

    sub_10064CE78(v3, type metadata accessor for AppInstallTaskResult);
    v5 = sub_10064D0B4;
  }

  else
  {
    sub_10064CE78(v3, type metadata accessor for AppInstallTaskResult);
    v5 = sub_100649ADC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100649ADC()
{

  v1 = v0[44];
  v2 = v0[16];
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_100647EBC;
  v4 = v0[40];
  v5 = v0[41];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_100649B98()
{
  v1 = *(v0 + 400);
  *(v0 + 56) = v1;
  *(v0 + 448) = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {

    goto LABEL_69;
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    static Logger.install.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 464);
      v5 = *(v0 + 128);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v0 + 80) = v8;
      v9 = 0xE800000000000000;
      v10 = 0xE800000000000000;
      *v6 = 138412546;
      v11 = 0x64656873696E6966;
      v12 = *(v5 + 120);
      if (v4 != 6)
      {
        v11 = 0x64656C696166;
      }

      *(v6 + 4) = v12;
      if (v4 != 6)
      {
        v10 = 0xE600000000000000;
      }

      *v7 = v12;
      *(v6 + 12) = 2082;
      v13 = 0x656C6C65636E6163;
      v14 = 0xE600000000000000;
      if (v4 == 4)
      {
        v14 = 0xE900000000000064;
      }

      else
      {
        v13 = 0x646573756170;
      }

      if (v4 <= 5)
      {
        v10 = v14;
      }

      else
      {
        v13 = v11;
      }

      v15 = 0xE700000000000000;
      v16 = 0x6C6C6174736E69;
      if (v4 != 2)
      {
        v16 = 0x6C626D6174736F70;
        v15 = 0xE900000000000065;
      }

      v17 = 0x64616F6C6E776F64;
      if (v4)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v17 = 0x656C626D61657270;
      }

      if (v4 <= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v4 > 1)
      {
        v9 = v15;
      }

      v19 = v4 <= 3;
      if (v4 <= 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = v13;
      }

      if (v19)
      {
        v21 = v9;
      }

      else
      {
        v21 = v10;
      }

      v22 = v8;
      v66 = *(v0 + 216);
      v68 = *(v0 + 376);
      v23 = *(v0 + 192);
      v24 = v12;
      v25 = sub_1002346CC(v20, v21, (v0 + 80));

      *(v6 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Phase '%{public}s' cancelled #engine", v6, 0x16u);
      sub_1000032A8(v7, &qword_10077F920);

      sub_10000710C(v22);

      v68(v66, v23);
    }

    else
    {
      v49 = *(v0 + 376);
      v50 = *(v0 + 216);
      v51 = *(v0 + 192);

      v49(v50, v51);
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    goto LABEL_69;
  }

  static Logger.install.getter();

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 464);
    v29 = *(v0 + 128);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *(v0 + 72) = v32;
    v33 = 0xE800000000000000;
    v34 = 0xE800000000000000;
    *v30 = 138412802;
    v35 = 0x64656873696E6966;
    v36 = *(v29 + 120);
    if (v28 != 6)
    {
      v35 = 0x64656C696166;
    }

    *(v30 + 4) = v36;
    if (v28 != 6)
    {
      v34 = 0xE600000000000000;
    }

    *v31 = v36;
    *(v30 + 12) = 2082;
    v37 = 0x656C6C65636E6163;
    v38 = 0xE600000000000000;
    if (v28 == 4)
    {
      v38 = 0xE900000000000064;
    }

    else
    {
      v37 = 0x646573756170;
    }

    if (v28 <= 5)
    {
      v34 = v38;
    }

    else
    {
      v37 = v35;
    }

    v39 = 0xE700000000000000;
    v40 = 0x6C6C6174736E69;
    if (v28 != 2)
    {
      v40 = 0x6C626D6174736F70;
      v39 = 0xE900000000000065;
    }

    v41 = 0x64616F6C6E776F64;
    if (v28)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v41 = 0x656C626D61657270;
    }

    if (v28 <= 1)
    {
      v42 = v41;
    }

    else
    {
      v42 = v40;
    }

    if (v28 > 1)
    {
      v33 = v39;
    }

    if (v28 <= 3)
    {
      v43 = v42;
    }

    else
    {
      v43 = v37;
    }

    if (v28 <= 3)
    {
      v44 = v33;
    }

    else
    {
      v44 = v34;
    }

    v45 = v32;
    v67 = *(v0 + 208);
    v69 = *(v0 + 376);
    v65 = *(v0 + 192);
    v46 = v36;
    v47 = sub_1002346CC(v43, v44, (v0 + 72));

    *(v30 + 14) = v47;
    *(v30 + 22) = 2114;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v48;
    v31[1] = v48;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Phase '%{public}s' failed with error: %{public}@ #engine", v30, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v45);

    v69(v67, v65);
  }

  else
  {
    v52 = *(v0 + 376);
    v53 = *(v0 + 208);
    v54 = *(v0 + 192);

    v52(v53, v54);
  }

  v55 = *(v0 + 464);
  *(*(v0 + 128) + *(v0 + 360)) = 0;

  if (v55 > 6)
  {

    goto LABEL_69;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
LABEL_69:

    v60 = *(v0 + 352);
    v61 = *(v0 + 128);
    v62 = swift_task_alloc();
    *(v0 + 368) = v62;
    *v62 = v0;
    v62[1] = sub_100647EBC;
    v63 = *(v0 + 320);
    v64 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v63, v61, v60, v64);
  }

  **(v0 + 168) = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v57 = swift_task_alloc();
  *(v0 + 456) = v57;
  *v57 = v0;
  v57[1] = sub_100649958;
  v58 = *(v0 + 168);

  return sub_100643288(v58);
}

uint64_t sub_10064A448()
{

  sub_10000710C(v0 + 16);
  v1 = *(v0 + 424);
  *(v0 + 56) = v1;
  *(v0 + 448) = v1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {

    goto LABEL_69;
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    static Logger.install.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 464);
      v5 = *(v0 + 128);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v0 + 80) = v8;
      v9 = 0xE800000000000000;
      v10 = 0xE800000000000000;
      *v6 = 138412546;
      v11 = 0x64656873696E6966;
      v12 = *(v5 + 120);
      if (v4 != 6)
      {
        v11 = 0x64656C696166;
      }

      *(v6 + 4) = v12;
      if (v4 != 6)
      {
        v10 = 0xE600000000000000;
      }

      *v7 = v12;
      *(v6 + 12) = 2082;
      v13 = 0x656C6C65636E6163;
      v14 = 0xE600000000000000;
      if (v4 == 4)
      {
        v14 = 0xE900000000000064;
      }

      else
      {
        v13 = 0x646573756170;
      }

      if (v4 <= 5)
      {
        v10 = v14;
      }

      else
      {
        v13 = v11;
      }

      v15 = 0xE700000000000000;
      v16 = 0x6C6C6174736E69;
      if (v4 != 2)
      {
        v16 = 0x6C626D6174736F70;
        v15 = 0xE900000000000065;
      }

      v17 = 0x64616F6C6E776F64;
      if (v4)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v17 = 0x656C626D61657270;
      }

      if (v4 <= 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v4 > 1)
      {
        v9 = v15;
      }

      v19 = v4 <= 3;
      if (v4 <= 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = v13;
      }

      if (v19)
      {
        v21 = v9;
      }

      else
      {
        v21 = v10;
      }

      v22 = v8;
      v67 = *(v0 + 216);
      v69 = *(v0 + 376);
      v23 = *(v0 + 192);
      v24 = v12;
      v25 = sub_1002346CC(v20, v21, (v0 + 80));

      *(v6 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Phase '%{public}s' cancelled #engine", v6, 0x16u);
      sub_1000032A8(v7, &qword_10077F920);

      sub_10000710C(v22);

      v69(v67, v23);
    }

    else
    {
      v50 = *(v0 + 376);
      v51 = *(v0 + 216);
      v52 = *(v0 + 192);

      v50(v51, v52);
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    goto LABEL_69;
  }

  static Logger.install.getter();

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 464);
    v29 = *(v0 + 128);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *(v0 + 72) = v32;
    v33 = 0xE800000000000000;
    v34 = 0xE800000000000000;
    *v30 = 138412802;
    v35 = 0x64656873696E6966;
    v36 = *(v29 + 120);
    if (v28 != 6)
    {
      v35 = 0x64656C696166;
    }

    *(v30 + 4) = v36;
    if (v28 != 6)
    {
      v34 = 0xE600000000000000;
    }

    *v31 = v36;
    *(v30 + 12) = 2082;
    v37 = 0x656C6C65636E6163;
    v38 = 0xE600000000000000;
    if (v28 == 4)
    {
      v38 = 0xE900000000000064;
    }

    else
    {
      v37 = 0x646573756170;
    }

    if (v28 <= 5)
    {
      v34 = v38;
    }

    else
    {
      v37 = v35;
    }

    v39 = 0xE700000000000000;
    v40 = 0x6C6C6174736E69;
    if (v28 != 2)
    {
      v40 = 0x6C626D6174736F70;
      v39 = 0xE900000000000065;
    }

    v41 = 0x64616F6C6E776F64;
    if (v28)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v41 = 0x656C626D61657270;
    }

    if (v28 <= 1)
    {
      v42 = v41;
    }

    else
    {
      v42 = v40;
    }

    if (v28 > 1)
    {
      v33 = v39;
    }

    v43 = v28 <= 3;
    if (v28 <= 3)
    {
      v44 = v42;
    }

    else
    {
      v44 = v37;
    }

    if (v43)
    {
      v45 = v33;
    }

    else
    {
      v45 = v34;
    }

    v46 = v32;
    v68 = *(v0 + 208);
    v70 = *(v0 + 376);
    v66 = *(v0 + 192);
    v47 = v36;
    v48 = sub_1002346CC(v44, v45, (v0 + 72));

    *(v30 + 14) = v48;
    *(v30 + 22) = 2114;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v49;
    v31[1] = v49;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Phase '%{public}s' failed with error: %{public}@ #engine", v30, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v46);

    v70(v68, v66);
  }

  else
  {
    v53 = *(v0 + 376);
    v54 = *(v0 + 208);
    v55 = *(v0 + 192);

    v53(v54, v55);
  }

  v56 = *(v0 + 464);
  *(*(v0 + 128) + *(v0 + 360)) = 0;

  if (v56 > 6)
  {

    goto LABEL_69;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
LABEL_69:

    v61 = *(v0 + 352);
    v62 = *(v0 + 128);
    v63 = swift_task_alloc();
    *(v0 + 368) = v63;
    *v63 = v0;
    v63[1] = sub_100647EBC;
    v64 = *(v0 + 320);
    v65 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v64, v62, v61, v65);
  }

  **(v0 + 168) = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v58 = swift_task_alloc();
  *(v0 + 456) = v58;
  *v58 = v0;
  v58[1] = sub_100649958;
  v59 = *(v0 + 168);

  return sub_100643288(v59);
}

uint64_t sub_10064ACF8()
{
  v1 = *(v0 + 184);

  sub_10064CE78(v1, type metadata accessor for AppInstallTaskResult);
  sub_10000710C(v0 + 16);
  v2 = *(v0 + 440);
  *(v0 + 56) = v2;
  *(v0 + 448) = v2;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {

    goto LABEL_69;
  }

  *(v0 + 64) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    static Logger.install.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 464);
      v6 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *(v0 + 80) = v9;
      v10 = 0xE800000000000000;
      v11 = 0xE800000000000000;
      *v7 = 138412546;
      v12 = 0x64656873696E6966;
      v13 = *(v6 + 120);
      if (v5 != 6)
      {
        v12 = 0x64656C696166;
      }

      *(v7 + 4) = v13;
      if (v5 != 6)
      {
        v11 = 0xE600000000000000;
      }

      *v8 = v13;
      *(v7 + 12) = 2082;
      v14 = 0x656C6C65636E6163;
      v15 = 0xE600000000000000;
      if (v5 == 4)
      {
        v15 = 0xE900000000000064;
      }

      else
      {
        v14 = 0x646573756170;
      }

      if (v5 <= 5)
      {
        v11 = v15;
      }

      else
      {
        v14 = v12;
      }

      v16 = 0xE700000000000000;
      v17 = 0x6C6C6174736E69;
      if (v5 != 2)
      {
        v17 = 0x6C626D6174736F70;
        v16 = 0xE900000000000065;
      }

      v18 = 0x64616F6C6E776F64;
      if (v5)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v18 = 0x656C626D61657270;
      }

      if (v5 <= 1)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      if (v5 > 1)
      {
        v10 = v16;
      }

      v20 = v5 <= 3;
      if (v5 <= 3)
      {
        v21 = v19;
      }

      else
      {
        v21 = v14;
      }

      if (v20)
      {
        v22 = v10;
      }

      else
      {
        v22 = v11;
      }

      v23 = v9;
      v68 = *(v0 + 216);
      v70 = *(v0 + 376);
      v24 = *(v0 + 192);
      v25 = v13;
      v26 = sub_1002346CC(v21, v22, (v0 + 80));

      *(v7 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Phase '%{public}s' cancelled #engine", v7, 0x16u);
      sub_1000032A8(v8, &qword_10077F920);

      sub_10000710C(v23);

      v70(v68, v24);
    }

    else
    {
      v51 = *(v0 + 376);
      v52 = *(v0 + 216);
      v53 = *(v0 + 192);

      v51(v52, v53);
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    goto LABEL_69;
  }

  static Logger.install.getter();

  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 464);
    v30 = *(v0 + 128);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *(v0 + 72) = v33;
    v34 = 0xE800000000000000;
    v35 = 0xE800000000000000;
    *v31 = 138412802;
    v36 = 0x64656873696E6966;
    v37 = *(v30 + 120);
    if (v29 != 6)
    {
      v36 = 0x64656C696166;
    }

    *(v31 + 4) = v37;
    if (v29 != 6)
    {
      v35 = 0xE600000000000000;
    }

    *v32 = v37;
    *(v31 + 12) = 2082;
    v38 = 0x656C6C65636E6163;
    v39 = 0xE600000000000000;
    if (v29 == 4)
    {
      v39 = 0xE900000000000064;
    }

    else
    {
      v38 = 0x646573756170;
    }

    if (v29 <= 5)
    {
      v35 = v39;
    }

    else
    {
      v38 = v36;
    }

    v40 = 0xE700000000000000;
    v41 = 0x6C6C6174736E69;
    if (v29 != 2)
    {
      v41 = 0x6C626D6174736F70;
      v40 = 0xE900000000000065;
    }

    v42 = 0x64616F6C6E776F64;
    if (v29)
    {
      v34 = 0xE800000000000000;
    }

    else
    {
      v42 = 0x656C626D61657270;
    }

    if (v29 <= 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41;
    }

    if (v29 > 1)
    {
      v34 = v40;
    }

    v44 = v29 <= 3;
    if (v29 <= 3)
    {
      v45 = v43;
    }

    else
    {
      v45 = v38;
    }

    if (v44)
    {
      v46 = v34;
    }

    else
    {
      v46 = v35;
    }

    v47 = v33;
    v69 = *(v0 + 208);
    v71 = *(v0 + 376);
    v67 = *(v0 + 192);
    v48 = v37;
    v49 = sub_1002346CC(v45, v46, (v0 + 72));

    *(v31 + 14) = v49;
    *(v31 + 22) = 2114;
    swift_errorRetain();
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v50;
    v32[1] = v50;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Phase '%{public}s' failed with error: %{public}@ #engine", v31, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v47);

    v71(v69, v67);
  }

  else
  {
    v54 = *(v0 + 376);
    v55 = *(v0 + 208);
    v56 = *(v0 + 192);

    v54(v55, v56);
  }

  v57 = *(v0 + 464);
  *(*(v0 + 128) + *(v0 + 360)) = 0;

  if (v57 > 6)
  {

    goto LABEL_69;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
LABEL_69:

    v62 = *(v0 + 352);
    v63 = *(v0 + 128);
    v64 = swift_task_alloc();
    *(v0 + 368) = v64;
    *v64 = v0;
    v64[1] = sub_100647EBC;
    v65 = *(v0 + 320);
    v66 = *(v0 + 328);

    return AsyncStream.Iterator.next(isolation:)(v65, v63, v62, v66);
  }

  **(v0 + 168) = v2;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v59 = swift_task_alloc();
  *(v0 + 456) = v59;
  *v59 = v0;
  v59[1] = sub_100649958;
  v60 = *(v0 + 168);

  return sub_100643288(v60);
}

void sub_10064B5C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppInstallEngine.Event(0);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_10078A3D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventContinuation;
  v14 = sub_1001F0C48(&qword_100788E10);
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_1007835A8);
  v22[1] = v13;
  AsyncStream.Continuation.yield(_:)();
  if ((*(v10 + 88))(v12, v9) == enum case for AsyncStream.Continuation.YieldResult.enqueued<A>(_:))
  {
    v15 = v22[0];
    static Logger.install.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = *(a2 + 120);
      *(v18 + 4) = v20;
      *v19 = v20;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Stopping event loop", v18, 0xCu);
      sub_1000032A8(v19, &qword_10077F920);
    }

    (*(v23 + 8))(v15, v24);
    AsyncStream.Continuation.finish()();
  }

  else
  {
    CheckedContinuation.resume(returning:)();
    (*(v10 + 8))(v12, v9);
  }
}

void sub_10064B978(uint64_t *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v73 = type metadata accessor for Logger();
  v8 = *(v73 - 8);
  v9 = __chkstk_darwin(v73);
  v11 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v67[-v12 - 8];
  v14 = a2[14];
  v15 = *a1;
  type metadata accessor for AppInstallEntity.Entity();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v14 onConnection:v15];
  if ([v16 existsInDatabase])
  {
    v17 = sub_100535ED0(27, v16);
    if (v17 == 8 || (sub_10062BE6C(v17, a3) & 1) == 0)
    {
      static Logger.install.getter();

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v68 = v66;
        v48 = 0xE800000000000000;
        *v46 = 138412546;
        v49 = 0xE800000000000000;
        v50 = 0x64656873696E6966;
        v51 = a2[15];
        *(v46 + 4) = v51;
        if (a3 != 6)
        {
          v50 = 0x64656C696166;
          v49 = 0xE600000000000000;
        }

        *v47 = v51;
        *(v46 + 12) = 2082;
        v52 = 0x656C6C65636E6163;
        v53 = 0xE600000000000000;
        if (a3 == 4)
        {
          v53 = 0xE900000000000064;
        }

        else
        {
          v52 = 0x646573756170;
        }

        if (a3 <= 5u)
        {
          v49 = v53;
        }

        else
        {
          v52 = v50;
        }

        v54 = 0xE700000000000000;
        v55 = 0x6C6C6174736E69;
        if (a3 != 2)
        {
          v55 = 0x6C626D6174736F70;
          v54 = 0xE900000000000065;
        }

        v56 = 0x64616F6C6E776F64;
        if (a3)
        {
          v48 = 0xE800000000000000;
        }

        else
        {
          v56 = 0x656C626D61657270;
        }

        if (a3 <= 1u)
        {
          v57 = v56;
        }

        else
        {
          v57 = v55;
        }

        if (a3 > 1u)
        {
          v48 = v54;
        }

        if (a3 <= 3u)
        {
          v58 = v57;
        }

        else
        {
          v58 = v52;
        }

        if (a3 <= 3u)
        {
          v59 = v48;
        }

        else
        {
          v59 = v49;
        }

        v60 = v51;
        v61 = sub_1002346CC(v58, v59, &v68);

        *(v46 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Skipping outdated transition to '%{public}s' #engine", v46, 0x16u);
        sub_1000032A8(v47, &qword_10077F920);

        sub_10000710C(v66);
      }

      (*(v8 + 8))(v13, v73);
      sub_10064CC50();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      sub_10063422C(a3, 27, v16);
      v18 = sub_10064C25C(a3, a2[34]);
      if (v18)
      {
        v20 = v18;
        v21 = v19;
        sub_100231CE8((a2 + 22), &v68);
        v22 = a2[15];
        sub_10020A980((a2 + 16), v67);
        v23 = *(v21 + 16);
        *(&v71 + 1) = v20;
        v72 = v21;
        sub_10020A748(&v70);
        v23(v16, v15, &v68, v22, v67, v20, v21);
        if (v4)
        {
          sub_10033E508(&v70);
        }

        else
        {
          sub_1001DFDBC(&v70, v66);
        }
      }

      else
      {
        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        sub_1000032A8(&v70, &qword_10078A400);
        v68 = 0;
        v69 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v62 = 0xE700000000000000;
        v68 = 0x27206573616850;
        v69 = 0xE700000000000000;
        if (a3 > 3u)
        {
          if (a3 > 5u)
          {
            if (a3 == 6)
            {
              v62 = 0xE800000000000000;
              v63 = 0x64656873696E6966;
            }

            else
            {
              v62 = 0xE600000000000000;
              v63 = 0x64656C696166;
            }
          }

          else if (a3 == 4)
          {
            v63 = 0x656C6C65636E6163;
            v62 = 0xE900000000000064;
          }

          else
          {
            v62 = 0xE600000000000000;
            v63 = 0x646573756170;
          }
        }

        else if (a3 > 1u)
        {
          if (a3 == 2)
          {
            v63 = 0x6C6C6174736E69;
          }

          else
          {
            v63 = 0x6C626D6174736F70;
            v62 = 0xE900000000000065;
          }
        }

        else
        {
          v62 = 0xE800000000000000;
          if (a3)
          {
            v63 = 0x64616F6C6E776F64;
          }

          else
          {
            v63 = 0x656C626D61657270;
          }
        }

        v64 = v62;
        String.append(_:)(*&v63);

        v65._object = 0x80000001006CF460;
        v65._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v65);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  else
  {

    static Logger.install.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v68 = v28;
      v29 = 0xE800000000000000;
      *v26 = 138412546;
      v30 = 0xE800000000000000;
      v31 = 0x64656873696E6966;
      v32 = a2[15];
      *(v26 + 4) = v32;
      if (a3 != 6)
      {
        v31 = 0x64656C696166;
        v30 = 0xE600000000000000;
      }

      *v27 = v32;
      *(v26 + 12) = 2082;
      v33 = 0x656C6C65636E6163;
      v34 = 0xE600000000000000;
      if (a3 == 4)
      {
        v34 = 0xE900000000000064;
      }

      else
      {
        v33 = 0x646573756170;
      }

      if (a3 <= 5u)
      {
        v30 = v34;
      }

      else
      {
        v33 = v31;
      }

      v35 = 0xE700000000000000;
      v36 = 0x6C6C6174736E69;
      if (a3 != 2)
      {
        v36 = 0x6C626D6174736F70;
        v35 = 0xE900000000000065;
      }

      v37 = 0x64616F6C6E776F64;
      if (a3)
      {
        v29 = 0xE800000000000000;
      }

      else
      {
        v37 = 0x656C626D61657270;
      }

      if (a3 <= 1u)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      if (a3 > 1u)
      {
        v29 = v35;
      }

      if (a3 <= 3u)
      {
        v39 = v38;
      }

      else
      {
        v39 = v33;
      }

      if (a3 <= 3u)
      {
        v40 = v29;
      }

      else
      {
        v40 = v30;
      }

      v41 = v28;
      v42 = v32;
      v43 = sub_1002346CC(v39, v40, &v68);

      *(v26 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Installation not found when transitioning to '%{public}s'", v26, 0x16u);
      sub_1000032A8(v27, &qword_10077F920);

      sub_10000710C(v41);
    }

    (*(v8 + 8))(v11, v73);
    type metadata accessor for InternalError();
    sub_10064CB30(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_10064C25C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a2 + 48;
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 16);
    if (v5 > 3)
    {
      if (*(v3 - 16) > 5u)
      {
        if (v5 == 6)
        {
          v10 = 0xE800000000000000;
          v9 = 0x64656873696E6966;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x64656C696166;
        }
      }

      else
      {
        if (v5 == 4)
        {
          v9 = 0x656C6C65636E6163;
        }

        else
        {
          v9 = 0x646573756170;
        }

        if (v5 == 4)
        {
          v10 = 0xE900000000000064;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }
    }

    else
    {
      if (v5 == 2)
      {
        v6 = 0x6C6C6174736E69;
      }

      else
      {
        v6 = 0x6C626D6174736F70;
      }

      if (v5 == 2)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xE900000000000065;
      }

      if (*(v3 - 16))
      {
        v8 = 0x64616F6C6E776F64;
      }

      else
      {
        v8 = 0x656C626D61657270;
      }

      if (*(v3 - 16) <= 1u)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      if (*(v3 - 16) <= 1u)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = v7;
      }
    }

    v22 = *(v3 - 8);
    v11 = 0x64656873696E6966;
    if (v4 == 6)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v11 = 0x64656C696166;
      v12 = 0xE600000000000000;
    }

    v13 = 0x656C6C65636E6163;
    if (v4 == 4)
    {
      v14 = 0xE900000000000064;
    }

    else
    {
      v13 = 0x646573756170;
      v14 = 0xE600000000000000;
    }

    if (v4 <= 5)
    {
      v11 = v13;
      v12 = v14;
    }

    if (v4 == 2)
    {
      v15 = 0x6C6C6174736E69;
    }

    else
    {
      v15 = 0x6C626D6174736F70;
    }

    if (v4 == 2)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE900000000000065;
    }

    if (v4)
    {
      v17 = 0x64616F6C6E776F64;
    }

    else
    {
      v17 = 0x656C626D61657270;
    }

    if (v4 <= 1)
    {
      v15 = v17;
      v16 = 0xE800000000000000;
    }

    v18 = v4 <= 3 ? v15 : v11;
    v19 = v4 <= 3 ? v16 : v12;
    if (v9 == v18 && v10 == v19)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      return v22;
    }

    v3 += 24;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

uint64_t sub_10064C4A8()
{
  sub_10000710C(v0 + 128);

  sub_10000710C(v0 + 176);

  sub_10000710C(v0 + 280);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_coordinatorID, &unk_100780A00);

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventStream;
  v2 = sub_1001F0C48(&qword_1007835B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventContinuation;
  v4 = sub_1001F0C48(&qword_1007835A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10064C5D8()
{
  sub_10064C4A8();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10064C62C()
{
  sub_10064C820(319, &qword_100785520, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10064C820(319, &qword_10078A238, type metadata accessor for AppInstallEngine.Event, &type metadata accessor for AsyncStream);
    if (v1 <= 0x3F)
    {
      sub_10064C820(319, &unk_10078A240, type metadata accessor for AppInstallEngine.Event, &type metadata accessor for AsyncStream.Continuation);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10064C820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10064C8A4()
{
  sub_10064C90C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10064C90C()
{
  if (!qword_10078A3A0)
  {
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_10078A3A0);
    }
  }
}

uint64_t sub_10064CA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064CAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10064CB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10064CB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_100646764(a1, v4, v5, v6);
}

unint64_t sub_10064CC50()
{
  result = qword_10078A3F8;
  if (!qword_10078A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A3F8);
  }

  return result;
}

uint64_t sub_10064CCA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_100787518);
    sub_10064CB30(a2, &type metadata accessor for ManagedAppStatus.Reason);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10064CE00(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 27))
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_100640F44(a1, *(v2 + 16), v5 | *(v2 + 24) | v4 | v3, a2);
}

uint64_t sub_10064CE78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064CED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064CF5C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_100787690);
    sub_10064CB30(a2, &type metadata accessor for ApprovedDeveloper);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10064D024()
{

  return sub_10063A03C();
}

uint64_t *sub_10064D0B8(uint64_t *result)
{
  v1 = *result;
  v2 = result[1] >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v6 = v1 + 16;
    v4 = *(v1 + 16);
    v5 = *(v6 + 8);
    v3 = __OFSUB__(v5, v4);
    v1 = v5 - v4;
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_11;
  }

  v3 = __OFSUB__(HIDWORD(v1), v1);
  LODWORD(v1) = HIDWORD(v1) - v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v1 = v1;
LABEL_7:
  if (v1 >= 0x8000)
  {
    return sub_10064D490(result, v1 >> 15);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10064D128(uint64_t a1)
{
  v2 = sub_10064DCAC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10064D164(uint64_t a1)
{
  v2 = sub_10064DCAC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10064D1A0()
{
  if (v0[24])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_10064D1B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  if (v4)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  sub_10064DD00();
  v9 = sub_100528684(inited);
  swift_setDeallocating();
  sub_10064DD0C(inited + 32);
  return v9;
}

uint64_t sub_10064D294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v4 = a2 - a1;
    if (a2 - a1 > 0xFFFFFFFFLL)
    {
      __break(1u);
      __break(1u);
      __break(1u);
    }

    if (v4)
    {
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v5[2] = v4;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_100027284();
    if (v10)
    {
      v11 = v10;
      sub_100590978();
      swift_allocError();
      *v12 = v11;
      *(v12 + 8) = xmmword_1006B50A0;
      *(v12 + 24) = 0;
      swift_willThrow();
      v5[2] = 0;
    }

    v5[2] = v4;
    v13 = sub_1005F5654(v5);
    v15 = v14;
  }

  else
  {
    sub_100027284();
    if (v6)
    {
      v7 = v6;
      sub_100590978();
      swift_allocError();
      *v8 = v7;
      *(v8 + 8) = xmmword_1006B50A0;
      *(v8 + 24) = 0;
      result = swift_willThrow();
      _swiftEmptyArrayStorage[2] = 0;
      return result;
    }

    _swiftEmptyArrayStorage[2] = 0;
    v13 = sub_1005F5654(_swiftEmptyArrayStorage);
    v15 = v16;
  }

  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_10064D490(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    v47 = a1;
    if (v6)
    {
      v26 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100007158(v5, v4);
      *v3 = xmmword_1006B8570;
      sub_100007158(0, 0xC000000000000000);
      v27 = v5 >> 32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v27 < v5)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
        {
LABEL_67:
          __break(1u);
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v36 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v26 = v36;
      }

      v37 = v27 - v5;
      if (v27 < v5)
      {
        goto LABEL_55;
      }

      result = __DataStorage._bytes.getter();
      if (result)
      {
        v38 = result;
        v39 = __DataStorage._offset.getter();
        v40 = v5 - v39;
        if (!__OFSUB__(v5, v39))
        {
          v41 = __DataStorage._length.getter();
          if (v41 < v37)
          {
            v37 = v41;
          }

          if ((a2 - 0x2000000000000000) >> 62 == 3)
          {
            v42 = swift_slowAlloc();
            v43 = v42;
            if (!a2)
            {
              goto LABEL_48;
            }

            if (a2 < 1)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            memset_pattern16(v42, &unk_1006BA7A0, 4 * a2);
            if (!HIDWORD(a2))
            {
LABEL_48:
              v49 = a2;
              v50 = v43;
              v51 = (v40 + v38);
              v52 = v37;
              sub_100035218();
              if (v44)
              {
                v45 = v44;
                sub_100590978();
                swift_allocError();
                *v46 = v45;
                *(v46 + 8) = xmmword_1006B50A0;
                *(v46 + 24) = 0;
                swift_willThrow();
              }

              v24 = v26 | 0x4000000000000000;
              v25 = v47;
              *v47 = v5;
              goto LABEL_51;
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }

        goto LABEL_57;
      }

LABEL_69:
      __break(1u);
      return result;
    }

    v3 = HIDWORD(v5);
    sub_100007158(v5, v4);
    *&v48 = v5;
    WORD4(v48) = v4;
    BYTE10(v48) = BYTE2(v4);
    BYTE11(v48) = BYTE3(v4);
    BYTE12(v48) = BYTE4(v4);
    BYTE13(v48) = BYTE5(v4);
    BYTE14(v48) = BYTE6(v4);
    if ((a2 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_53;
    }

    v7 = swift_slowAlloc();
    v5 = v7;
    if (!a2)
    {
LABEL_31:
      v8 = v47;
LABEL_32:
      v49 = a2;
      v50 = v5;
      v51 = &v48;
      v52 = BYTE6(v4);
      sub_100035218();
      if (v29)
      {
        v30 = v29;
        sub_100590978();
        swift_allocError();
        *v31 = v30;
        *(v31 + 8) = xmmword_1006B50A0;
        *(v31 + 24) = 0;
        swift_willThrow();
      }

      v32 = DWORD2(v48) | ((WORD6(v48) | (BYTE14(v48) << 16)) << 32);
      *v8 = v48;
      v8[1] = v32;
      return result;
    }

    v8 = v47;
    if (a2 < 1)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    memset_pattern16(v7, &unk_1006BA7A0, 4 * a2);
    v6 = HIDWORD(a2);
    if (!HIDWORD(a2))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  if (v6 == 2)
  {

    sub_100007158(v5, v4);
    *&v48 = v5;
    *(&v48 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1006B8570;
    sub_100007158(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = v48;
    v10 = *(v48 + 16);
    v11 = *(v48 + 24);
    result = __DataStorage._bytes.getter();
    if (result)
    {
      v13 = result;
      v14 = __DataStorage._offset.getter();
      v15 = v10 - v14;
      if (!__OFSUB__(v10, v14))
      {
        v16 = __OFSUB__(v11, v10);
        v17 = v11 - v10;
        if (!v16)
        {
          v18 = __DataStorage._length.getter();
          if (v18 < v17)
          {
            v17 = v18;
          }

          if ((a2 - 0x2000000000000000) >> 62 == 3)
          {
            v19 = swift_slowAlloc();
            v20 = v19;
            if (!a2)
            {
LABEL_18:
              v49 = a2;
              v50 = v20;
              v51 = (v15 + v13);
              v52 = v17;
              sub_100035218();
              if (v21)
              {
                v22 = v21;
                sub_100590978();
                swift_allocError();
                *v23 = v22;
                *(v23 + 8) = xmmword_1006B50A0;
                *(v23 + 24) = 0;
                swift_willThrow();
              }

              v24 = *(&v9 + 1) | 0x8000000000000000;
              v25 = v3;
              *v3 = v9;
LABEL_51:
              v25[1] = v24;
              return result;
            }

            if (a2 < 1)
            {
              goto LABEL_64;
            }

            memset_pattern16(v19, &unk_1006BA7A0, 4 * a2);
            if (!HIDWORD(a2))
            {
              goto LABEL_18;
            }

            goto LABEL_60;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_69;
  }

  *(&v48 + 7) = 0;
  *&v48 = 0;
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
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
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = swift_slowAlloc();
  v4 = v28;
  if (a2)
  {
    if (a2 < 1)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    memset_pattern16(v28, &unk_1006BA7A0, 4 * a2);
    if (HIDWORD(a2))
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v49 = a2;
  v50 = v4;
  v51 = &v48;
  v52 = 0;
  sub_100035218();
  if (v33)
  {
    v34 = v33;
    sub_100590978();
    swift_allocError();
    *v35 = v34;
    *(v35 + 8) = xmmword_1006B50A0;
    *(v35 + 24) = 0;
    swift_willThrow();
  }
}

id sub_10064DB34()
{
  v0 = [objc_opt_self() sharedInstance];
  v5 = 0;
  v1 = [v0 fairplayContextWithError:&v5];

  v2 = v5;
  if (v5)
  {
    swift_willThrow();
    v3 = v2;
  }

  return v1;
}

uint64_t sub_10064DBFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10064DC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10064DCAC()
{
  result = qword_10078A438[0];
  if (!qword_10078A438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10078A438);
  }

  return result;
}

uint64_t sub_10064DD0C(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_10077F9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10064DD7C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10064DDE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_10064DF00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10064E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a1;
  v41 = a8;
  v39 = a4;
  v42 = a9;
  v15 = *(a3 - 8);
  __chkstk_darwin(a1);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v37 = *(v18 - 8);
  v38 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v22 = *(a2 - 8);
  __chkstk_darwin(v19);
  v36 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v24 = type metadata accessor for UnknownStringCodingKey();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v36 - v26);
  v28 = v40;
  (*(v15 + 16))(v17);
  dispatch thunk of CodingKeyRepresentable.init<A>(codingKey:)();
  if ((*(v22 + 48))(v21, 1, a2) == 1)
  {
    (*(v37 + 8))(v21, v38);
    v29 = dispatch thunk of CodingKey.stringValue.getter();
    v31 = v30;
    (*(v15 + 8))(v28, a3);
    *v27 = v29;
    v27[1] = v31;
  }

  else
  {
    (*(v15 + 8))(v28, a3);
    v32 = *(v22 + 32);
    v33 = v36;
    v32(v36, v21, a2);
    v32(v27, v33, a2);
  }

  swift_storeEnumTagMultiPayload();
  v34 = v42;
  (*(v25 + 32))(v42, v27, v24);
  return (*(v25 + 56))(v34, 0, 1, v24);
}

uint64_t sub_10064E46C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = v10[1];
    v16[1] = v4;
    v14 = *(a1 + 40);
    v17 = *(a1 + 24);
    v18 = v14;
    a2[3] = type metadata accessor for UnknownStringCodingKey.StringCodingKey();
    result = swift_getWitnessTable();
    a2[4] = result;
    *a2 = v12;
    a2[1] = v13;
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    dispatch thunk of CodingKeyRepresentable.codingKey.getter();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_10064E64C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6BLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10064E714(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6E776F6E6BLL;
  }
}

uint64_t sub_10064E748(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10064E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v35 = *(a3 - 8);
  __chkstk_darwin(a1);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v5;
  v42 = v9;
  v10 = type metadata accessor for UnknownStringCodingKey();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v18 = __chkstk_darwin(TupleTypeMetadata2);
  v20 = &v31 - v19;
  v21 = &v31 + *(v18 + 48) - v19;
  v22 = *(v11 + 16);
  v22(&v31 - v19, v36, v10);
  v22(v21, v37, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22(v16, v20, v10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v35;
      v28 = v32;
      (*(v35 + 32))(v32, v21, a3);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v27 + 8);
      v29(v28, a3);
      v29(v16, a3);
      goto LABEL_14;
    }

    (*(v35 + 8))(v16, a3);
    goto LABEL_11;
  }

  v22(v14, v20, v10);
  v24 = *v14;
  v23 = v14[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    v26 = 0;
    v11 = v34;
    v10 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  if (v24 == *v21 && v23 == *(v21 + 1))
  {

    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_14:
  (*(v11 + 8))(v20, v10);
  return v26 & 1;
}

uint64_t sub_10064EB68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v4 + 8))(v7, v3);
  }
}

Swift::Int sub_10064ED2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10064EB68(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_10064ED74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v84 = a1;
  v61 = a7;
  *&v81 = a2;
  *(&v81 + 1) = a3;
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v83 = a6;
  v12 = type metadata accessor for UnknownStringCodingKey.UnknownCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v71 = v12;
  v65 = type metadata accessor for KeyedDecodingContainer();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v72 = &v58 - v13;
  *&v81 = a2;
  *(&v81 + 1) = a3;
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v83 = a6;
  v14 = type metadata accessor for UnknownStringCodingKey.KnownCodingKeys();
  v67 = swift_getWitnessTable();
  v68 = v14;
  v63 = type metadata accessor for KeyedDecodingContainer();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v69 = &v58 - v15;
  *&v81 = a2;
  *(&v81 + 1) = a3;
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v83 = a6;
  type metadata accessor for UnknownStringCodingKey.CodingKeys();
  v77 = swift_getWitnessTable();
  v74 = type metadata accessor for KeyedDecodingContainer();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v17 = &v58 - v16;
  v75 = a2;
  *&v81 = a2;
  *(&v81 + 1) = a3;
  v66 = a4;
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v83 = a6;
  v18 = type metadata accessor for UnknownStringCodingKey();
  v73 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v58 - v23;
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  sub_100006D8C(v84, v84[3]);
  v27 = v78;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v59 = v21;
    v77 = v24;
    v60 = v26;
    v78 = v18;
    v28 = v74;
    v29 = v17;
    *&v79 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v81 = ArraySlice.init<A>(_:)();
    *(&v81 + 1) = v30;
    *&v82 = v31;
    *(&v82 + 1) = v32;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v33 = v79;
    if (v79 == 2 || (v58 = v81, v79 = v81, v80 = v82, (Collection.isEmpty.getter() & 1) == 0))
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      sub_1001F0C48(&qword_1007896A0);
      *v41 = v78;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v76 + 8))(v17, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v79) = 1;
        v34 = v72;
        v35 = v29;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v65;
        v37 = KeyedDecodingContainer.decode(_:forKey:)();
        v38 = v76;
        v47 = v37;
        v49 = v48;
        (*(v64 + 8))(v34, v36);
        (*(v38 + 8))(v35, v28);
        swift_unknownObjectRelease();
        v50 = v59;
        *v59 = v47;
        v50[1] = v49;
        v51 = v78;
        swift_storeEnumTagMultiPayload();
        v52 = v50;
        v53 = v61;
        v54 = v73;
      }

      else
      {
        LOBYTE(v79) = 0;
        v42 = v69;
        v43 = v17;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v73;
        v44 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v45 = v76;
        (*(v62 + 8))(v42, v44);
        (*(v45 + 8))(v43, v28);
        swift_unknownObjectRelease();
        v55 = v77;
        v51 = v78;
        swift_storeEnumTagMultiPayload();
        v52 = v55;
        v53 = v61;
      }

      v56 = *(v54 + 32);
      v57 = v60;
      v56(v60, v52, v51);
      v56(v53, v57, v51);
    }
  }

  return sub_10000710C(v84);
}

uint64_t sub_10064F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = nullsub_1(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_10064F594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003254CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10064F5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10064F620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10064F68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10064E64C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10064F6C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100278BCC();
  *a1 = result;
  return result;
}

uint64_t sub_10064F6FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10064F750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10064F7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10064F810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10064F864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10064E748(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10064F8A0@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10064F8E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10064F938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_10064F994(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_10064EB68(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10064FAB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10064FC28(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v13 = a2;
  v4 = swift_beginAccess();
  v5 = 0;
  if (v3)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *v13;
      v12[0] = *(i - 1);
      v12[1] = v7;
      __chkstk_darwin(v4);
      v11[2] = v12;

      v9 = sub_10020A1BC(sub_1001F80EC, v11, v8);

      if (v9)
      {
        break;
      }

      if (v3 == ++v5)
      {
        return 0;
      }
    }
  }

  return v5;
}

void sub_10064FD5C(void *a1)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v31[0] = 0;
    v5 = [v3 getPreferredAppMarketplacesWithError:v31];
    v6 = v31[0];
    if (v5)
    {
      v7 = v5;
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v6;

      if (v8[2])
      {
        v11 = v8[4];
        v10 = v8[5];

        if (a1[2])
        {
          v13 = a1[4];
          v12 = a1[5];
          if (v11 != v13 || v10 != v12)
          {
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v15 & 1) == 0)
            {
              v17 = sub_1000071AC();
              v31[0] = v13;
              v31[1] = v12;
              __chkstk_darwin(v17);
              v30[2] = v31;
              if (sub_10020A1BC(sub_1001F80EC, v30, v17))
              {
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v17 = sub_100009530(0, *(v17 + 16) + 1, 1, v17);
                }

                v18 = *(v17 + 16);
                v19 = *(v17 + 24);
                v20 = v18 + 1;
                if (v18 >= v19 >> 1)
                {
                  v27 = v17;
                  v28 = *(v17 + 16);
                  v29 = sub_100009530((v19 > 1), v18 + 1, 1, v27);
                  v18 = v28;
                  v17 = v29;
                }

                *(v17 + 16) = v20;
                v21 = v17 + 16 * v18;
                *(v21 + 32) = v13;
                *(v21 + 40) = v12;
              }

              sub_100651160(v17);
              if (v1)
              {

LABEL_25:

                return;
              }
            }
          }
        }
      }

      v22 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v31[0] = 0;
      v24 = [v22 setPreferredAppMarketplaces:isa error:v31];

      if (v24)
      {
        v25 = v31[0];
        static PrivateNotifications.priorityOrAllowedDevelopersChangedNotificationName.getter();
        v26 = String.utf8CString.getter();

        notify_post((v26 + 32));

        return;
      }

      v16 = v31[0];
    }

    else
    {
      v16 = v31[0];
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_25;
  }
}

void sub_100650060()
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v50 = 0;
    v8 = [v6 getPreferredAppMarketplacesWithError:&v50];
    v9 = v50;
    if (!v8)
    {
      goto LABEL_30;
    }

    v10 = v8;
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v9;

    if (!*(v11 + 16))
    {

LABEL_31:

      return;
    }

    v13 = *(v0 + 24);
    v14 = *(v11 + 32) == *(v0 + 16) && *(v11 + 40) == v13;
    if (v14 || (v49 = *(v0 + 16), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      return;
    }

    v18 = sub_100007D50(v11, v0);
    v47 = v1;
    if (v19)
    {
      v20 = *(v11 + 16);
      v21 = v20;
      goto LABEL_20;
    }

    v48 = v18;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_56;
    }

    v23 = *(v11 + 16);

    if (v22 == v23)
    {
LABEL_18:

      v20 = *(v11 + 16);
      v21 = v48;
      if (v20 >= v48)
      {
        if ((v48 & 0x8000000000000000) == 0)
        {
LABEL_20:
          v24 = v21;
          v25 = v21 - v20;
          v26 = v20 + v25;
          if (!__OFADD__(v20, v25))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v26 > *(v11 + 24) >> 1)
            {
              if (v20 <= v26)
              {
                v28 = v26;
              }

              else
              {
                v28 = v20;
              }

              v11 = sub_100009530(isUniquelyReferenced_nonNull_native, v28, 1, v11);
              v51 = v11;
            }

            sub_100009640(v24, v20, 0);
            v51 = v11;
            v1 = *(v11 + 16);
            v29 = *(v11 + 24);

            if (v1 < v29 >> 1)
            {
LABEL_28:
              sub_100427854(0, 0, 1, v49, v13);

              isa = Array._bridgeToObjectiveC()().super.isa;

              v50 = 0;
              v31 = [v7 setPreferredAppMarketplaces:isa error:&v50];

              v9 = v50;
              if (v31)
              {
                v32 = v50;
                goto LABEL_31;
              }

LABEL_30:
              v33 = v9;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              goto LABEL_31;
            }

LABEL_53:
            v51 = sub_100009530(1, v1 + 1, 1, v11);
            goto LABEL_28;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      v34 = v49;
      v35 = 16 * v48;
      while (v22 < v23)
      {
        v36 = *(v11 + v35 + 48);
        v37 = *(v11 + v35 + 56);
        if (v36 != v34 || v37 != v13)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v34 = v49;
          }

          else
          {
            v39 = v48;
            if (v22 == v48)
            {
              v34 = v49;
            }

            else
            {
              if (v48 >= v23)
              {
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
              }

              v40 = (v11 + 32 + 16 * v48);
              v41 = v40[1];
              v46 = *v40;
              v42 = v41;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_100659A28(v11);
              }

              v43 = v11 + 16 * v48;
              *(v43 + 32) = v36;
              *(v43 + 40) = v37;

              if (v22 >= *(v11 + 16))
              {
                goto LABEL_55;
              }

              v44 = v11 + v35;
              *(v44 + 48) = v46;
              *(v44 + 56) = v42;

              v39 = v48;
              v34 = v49;
            }

            v48 = v39 + 1;
          }
        }

        ++v22;
        v23 = *(v11 + 16);
        v35 += 16;
        if (v22 == v23)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  static Logger.storage.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unable to handle emergency reset because LSApplicationWorkspace was unavailable", v17, 2u);
  }

  (*(v3 + 8))(v5, v2);
}

void sub_100650534(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    *keyExistsAndHasValidFormat = 0;
    v12 = [v10 getPreferredAppMarketplacesWithError:keyExistsAndHasValidFormat];
    v13 = *keyExistsAndHasValidFormat;
    if (v12)
    {
      v14 = v12;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v13;

      *keyExistsAndHasValidFormat = a1;
      v56 = a2;
      __chkstk_darwin(v17);
      *(&v50 - 2) = keyExistsAndHasValidFormat;

      v18 = sub_10020A1BC(sub_1001F7FFC, (&v50 - 4), v15);

      if (v18)
      {

LABEL_31:

        return;
      }

      v54 = a1;
      keyExistsAndHasValidFormat[0] = 0;
      v52 = "{ RestoreBatch: [";
      v26 = String._bridgeToObjectiveC()();
      v53 = "BackgroundAssetDownloadsEnabled";
      v27 = String._bridgeToObjectiveC()();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v26, v27, keyExistsAndHasValidFormat);

      if (keyExistsAndHasValidFormat[0] && AppBooleanValue)
      {
        v29 = v54;
      }

      else
      {
        v30 = sub_1000071AC();
        v31 = *(v2 + 16);
        v32 = *(v2 + 24);
        *keyExistsAndHasValidFormat = v31;
        v56 = v32;
        __chkstk_darwin(v30);
        *(&v50 - 2) = keyExistsAndHasValidFormat;
        if ((sub_10020A1BC(sub_1001F80EC, (&v50 - 4), v30) & 1) == 0)
        {
          v51 = v3;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_100009530(0, *(v30 + 16) + 1, 1, v30);
          }

          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          v3 = v51;
          if (v34 >= v33 >> 1)
          {
            v49 = sub_100009530((v33 > 1), v34 + 1, 1, v30);
            v3 = v51;
            v30 = v49;
          }

          *(v30 + 16) = v34 + 1;
          v35 = v30 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 40) = v32;
        }

        sub_100651160(v30);
        v29 = v54;
        if (v3)
        {

          return;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100009530(0, *(v15 + 16) + 1, 1, v15);
      }

      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        v15 = sub_100009530((v36 > 1), v37 + 1, 1, v15);
      }

      *(v15 + 16) = v37 + 1;
      v38 = v15 + 16 * v37;
      *(v38 + 32) = v29;
      *(v38 + 40) = a2;
      isa = Array._bridgeToObjectiveC()().super.isa;
      *keyExistsAndHasValidFormat = 0;
      v40 = [v11 setPreferredAppMarketplaces:isa error:keyExistsAndHasValidFormat];

      if (v40)
      {
        v41 = *keyExistsAndHasValidFormat;
        static PrivateNotifications.priorityOrAllowedDevelopersChangedNotificationName.getter();
        v42 = String.utf8CString.getter();

        notify_post((v42 + 32));

        v43 = *(v15 + 16);

        if (v43 >= 2)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v44 = [objc_opt_self() standardUserDefaults];
          }

          else
          {
            v46 = objc_allocWithZone(NSUserDefaults);
            v47 = String._bridgeToObjectiveC()();
            v44 = [v46 initWithSuiteName:v47];
          }

          if (v44)
          {
            v48 = String._bridgeToObjectiveC()();
            [v44 setBool:1 forKey:v48];
          }
        }

        goto LABEL_31;
      }

      v45 = *keyExistsAndHasValidFormat;

      _convertNSErrorToError(_:)();
    }

    else
    {
      v25 = *keyExistsAndHasValidFormat;
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    goto LABEL_31;
  }

  static Logger.storage.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = v22;
    *keyExistsAndHasValidFormat = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1002346CC(v23, a2, keyExistsAndHasValidFormat);
    _os_log_impl(&_mh_execute_header, v19, v20, "Unable to add %s to the marketplace list because LSApplicationWorkspace was unavailable", v21, 0xCu);
    sub_10000710C(v24);
  }

  (*(v7 + 8))(v9, v6);
}

void sub_100650BAC(char *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v16 = container_system_path_for_identifier();
  v17 = v16;
  if (v43 <= 1 && v16)
  {
    v40 = v3;
    v41 = v2;
    v42 = *(v13 + 56);
    v42(v11, 1, 1, v12);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000032A8(v11, &unk_1007809F0);
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v44[0] = 0;
    v22 = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v44];

    if (v22)
    {
      v23 = v44[0];
    }

    else
    {
      v27 = v44[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.storage.getter();
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = a1;
        v31 = v30;
        v32 = swift_slowAlloc();
        v38 = v28;
        v33 = v32;
        *v31 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v33 = v34;
        v35 = v29;
        v36 = v38;
        _os_log_impl(&_mh_execute_header, v38, v35, "Unable to obtain container path: error %@", v31, 0xCu);
        sub_1000032A8(v33, &qword_10077F920);

        a1 = v39;
      }

      else
      {
      }

      (*(v40 + 8))(v6, v41);
    }

    (*(v13 + 32))(a1, v15, v12);
    v42(a1, 0, 1, v12);
LABEL_14:
    free(v17);
    return;
  }

  static Logger.storage.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    swift_beginAccess();
    *(v26 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unable to obtain container path: error %llu", v26, 0xCu);
  }

  (*(v3 + 8))(v8, v2);
  (*(v13 + 56))(a1, 1, 1, v12);
  if (v17)
  {
    goto LABEL_14;
  }
}

uint64_t sub_1006510E4()
{
  sub_100007DE0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100651160(uint64_t a1)
{
  v47 = a1;
  v1 = type metadata accessor for Logger();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v50 = &v46 - v5;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = __chkstk_darwin(v13);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v49 = &v46 - v17;
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v21 = v20;
  sub_100005934(&v48[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DistributorPreferencesStore_containerURL], v12, &unk_1007809F0);
  if ((*(v21 + 48))(v12, 1, v13) == 1)
  {
    sub_1000032A8(v12, &unk_1007809F0);
    static Logger.storage.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to save events without a container url", v24, 2u);
    }

    return (*(v51 + 8))(v4, v52);
  }

  else
  {
    (*(v21 + 32))(v19, v12, v13);
    v53[0] = 0xD000000000000023;
    v53[1] = 0x80000001006C3890;
    (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v7 + 8))(v9, v6);
    static Logger.storage.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = v13;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v19;
      v31 = v30;
      v53[0] = v30;
      *v29 = 136380675;
      v32 = v49;
      swift_beginAccess();
      sub_1003C7308();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v21;
      v36 = sub_1002346CC(v33, v34, v53);

      *(v29 + 4) = v36;
      v21 = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saving preferences store to: %{private}s", v29, 0xCu);
      sub_10000710C(v31);
      v19 = v48;

      (*(v51 + 8))(v50, v52);
      v37 = v54;
      v38 = v32;
    }

    else
    {

      (*(v51 + 8))(v50, v52);
      v37 = v54;
      v38 = v49;
    }

    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v53[0] = v47;
    sub_100652BA4();
    v39 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v37)
    {
      v41 = *(v21 + 8);
      v41(v19, v28);

      return (v41)(v38, v28);
    }

    else
    {
      v42 = v39;
      v43 = v40;

      swift_beginAccess();
      v44 = v46;
      (*(v21 + 16))(v46, v38, v28);
      Data.write(to:options:)();
      v45 = *(v21 + 8);
      v45(v44, v28);
      swift_beginAccess();
      LOBYTE(v44) = sub_1005D835C();
      swift_endAccess();
      if (v44)
      {
        swift_beginAccess();
        sub_1005D79D0(0);
        swift_endAccess();
        sub_100007158(v42, v43);
        v45(v19, v28);
      }

      else
      {
        v45(v19, v28);
        sub_100007158(v42, v43);
      }

      return (v45)(v38, v28);
    }
  }
}

uint64_t sub_1006518C4()
{

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DistributorPreferencesStore_containerURL, &unk_1007809F0);

  return swift_deallocClassInstance();
}

void sub_100651948()
{
  sub_10037F89C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006519E4(void *a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10078A7A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100006D8C(a1, a1[3]);
  sub_100006D38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1001F0C48(&unk_10077FB40);
  sub_100006DD0(&qword_100780CC0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100651B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001006CED50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100651BF8(uint64_t a1)
{
  v2 = sub_100006D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100651C34(uint64_t a1)
{
  v2 = sub_100006D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100651C8C(uint64_t *a1, uint64_t *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_10064FC28(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    result = swift_beginAccess();
    v12 = (v6 + 16);
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v2;
    }

    v28 = a1;
    v29 = v4;
    v13 = 16 * v2;
    v14 = v6;
    while (v10 < v11)
    {
      v32 = v14;
      v15 = &v14[v13];
      v16 = *(v15 + 7);
      v17 = *v4;
      v31[0] = *(v15 + 6);
      v31[1] = v16;
      __chkstk_darwin(result);
      v27[2] = v31;

      v18 = v9;
      v19 = sub_10020A1BC(sub_1001F80EC, v27, v17);
      v30 = v18;

      if (v19)
      {
        v4 = v29;
        v9 = v30;
        v14 = v32;
      }

      else
      {
        if (v10 == v2)
        {
          v4 = v29;
          v9 = v30;
          v14 = v32;
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v2 >= *v12)
          {
            goto LABEL_24;
          }

          if (v10 >= *v12)
          {
            goto LABEL_25;
          }

          v20 = &v32[16 * v2 + 32];
          v21 = *v20;
          v22 = *(v20 + 1);
          v24 = *(v15 + 6);
          v23 = *(v15 + 7);
          v14 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100659A28(v14);
          }

          v25 = &v14[16 * v2];
          *(v25 + 4) = v24;
          *(v25 + 5) = v23;

          if (v10 >= *(v14 + 2))
          {
            goto LABEL_26;
          }

          v26 = &v14[v13];
          *(v26 + 6) = v21;
          *(v26 + 7) = v22;

          v4 = v29;
          *v28 = v14;
          v9 = v30;
        }

        ++v2;
      }

      ++v10;
      v12 = (v14 + 16);
      v11 = *(v14 + 2);
      v13 += 16;
      if (v10 == v11)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100651ED4()
{
  result = qword_10078A780;
  if (!qword_10078A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A780);
  }

  return result;
}

void *sub_100651F28()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v28 - v5;
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v30 = 0;
    v9 = [v7 getPreferredAppMarketplacesWithError:&v30];
    v10 = v30;
    if (v9)
    {
      v11 = v9;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v10;

      return v12;
    }

    v18 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.storage.getter();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v21 = 136446210;
      ErrorValue = swift_getErrorValue();
      v28[1] = v28;
      __chkstk_darwin(ErrorValue);
      (*(v24 + 16))(v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = String.init<A>(describing:)();
      v27 = sub_1002346CC(v25, v26, &v30);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to load distributor priority list from LSApplicationWorkspace: %{public}s", v21, 0xCu);
      sub_10000710C(v29);
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    static Logger.storage.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to load distributor priority list because LSApplicationWorkspace was unavailable", v17, 2u);
    }

    (*(v1 + 8))(v6, v0);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100652310(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  if ((a3 & 1) == 0)
  {
    v29 = a1;
    v30 = a2;
    __chkstk_darwin(a1);
    v28 = &v29;

    if ((sub_10020A1BC(sub_1001F80EC, v27, a4) & 1) == 0)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_7:
        v12 = *(a4 + 2);
        v11 = *(a4 + 3);
        if (v12 >= v11 >> 1)
        {
          a4 = sub_100009530((v11 > 1), v12 + 1, 1, a4);
        }

        *(a4 + 2) = v12 + 1;
        v13 = &a4[16 * v12];
        *(v13 + 4) = a1;
        *(v13 + 5) = a2;
        return a4;
      }

LABEL_40:
      a4 = sub_100009530(0, *(a4 + 2) + 1, 1, a4);
      goto LABEL_7;
    }

    return a4;
  }

  v29 = a1;
  v30 = a2;
  __chkstk_darwin(a1);
  v28 = &v29;

  if ((sub_10020A1BC(sub_1001F80EC, v27, a4) & 1) == 0)
  {
    return a4;
  }

  result = sub_1003D41C8(a4, a1, a2);
  if (v8)
  {
    v9 = *(a4 + 2);
    v10 = v9;
    goto LABEL_14;
  }

  v10 = result;
  v14 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v15 = *(a4 + 2);

    if (v14 == v15)
    {
LABEL_12:

      v9 = *(a4 + 2);
      if (v9 < v10)
      {
        __break(1u);
      }

      else if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_14:
        if (!__OFADD__(v9, v10 - v9))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = a4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v10 > *(a4 + 3) >> 1)
          {
            if (v9 <= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v9;
            }

            a4 = sub_100009530(isUniquelyReferenced_nonNull_native, v17, 1, a4);
            v29 = a4;
          }

          sub_100009640(v10, v9, 0);
          return a4;
        }

        goto LABEL_43;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v18 = 16 * v10;
    while (v14 < v15)
    {
      v20 = *&a4[v18 + 48];
      v21 = *&a4[v18 + 56];
      if (v20 != a1 || v21 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v14 != v10)
          {
            if (v10 >= v15)
            {
              goto LABEL_44;
            }

            v23 = &a4[16 * v10 + 32];
            v25 = *v23;
            v24 = *(v23 + 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_100659A28(a4);
            }

            v26 = &a4[16 * v10];
            *(v26 + 4) = v20;
            *(v26 + 5) = v21;

            if (v14 >= *(a4 + 2))
            {
              goto LABEL_45;
            }

            v19 = &a4[v18];
            *(v19 + 6) = v25;
            *(v19 + 7) = v24;
          }

          ++v10;
        }
      }

      ++v14;
      v15 = *(a4 + 2);
      v18 += 16;
      if (v14 == v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_46:
  __break(1u);
  return result;
}

void sub_10065263C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    v44 = 0;
    v13 = [v11 getPreferredAppMarketplacesWithError:&v44];
    v14 = v44;
    if (v13)
    {
      v15 = v13;
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v14;

      v45 = v16;
      v18 = *(v16 + 16);
      if (!v18)
      {
LABEL_11:

        return;
      }

      v19 = 0;
      v20 = (v16 + 40);
      while (1)
      {
        v21 = *(v20 - 1) == a1 && *v20 == a2;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v19;
        v20 += 2;
        if (v18 == v19)
        {
          goto LABEL_11;
        }
      }

      sub_100669F00(v19);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v44 = 0;
      v29 = [v12 setPreferredAppMarketplaces:isa error:&v44];

      v14 = v44;
      if (v29)
      {
        v30 = v44;
        static PrivateNotifications.priorityOrAllowedDevelopersChangedNotificationName.getter();
        v31 = String.utf8CString.getter();

        notify_post((v31 + 32));

        return;
      }
    }

    v32 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.storage.getter();

    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v35 = 136446466;
      *(v35 + 4) = sub_1002346CC(a1, a2, &v45);
      *(v35 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v43 = v4;
      __chkstk_darwin(ErrorValue);
      (*(v38 + 16))(&v42 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = String.init<A>(describing:)();
      v41 = sub_1002346CC(v39, v40, &v45);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unable to remove %{public}s from distributor list: %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v5 + 8))(v8, v43);
      return;
    }

    v26 = *(v5 + 8);
    v27 = v8;
  }

  else
  {
    static Logger.storage.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1002346CC(a1, a2, &v45);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to remove %s from the distributor list because LSApplicationWorkspace was unavailable", v24, 0xCu);
      sub_10000710C(v25);
    }

    v26 = *(v5 + 8);
    v27 = v10;
  }

  v26(v27, v4);
}

unint64_t sub_100652BA4()
{
  result = qword_10078A788;
  if (!qword_10078A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A788);
  }

  return result;
}

unint64_t sub_100652C14()
{
  result = qword_10078A7A8;
  if (!qword_10078A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A7A8);
  }

  return result;
}

uint64_t sub_100652C68()
{
  v1[6] = v0;
  v2 = type metadata accessor for ConfirmationSheetContext();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for ConfirmationSheetRequest();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100652DF8, 0, 0);
}

uint64_t sub_100652DF8()
{
  v14 = v0;
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  if (v3)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002346CC(*(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey), *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey + 8), &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Running confirmation sheet task", v8, 0xCu);
    sub_10000710C(v9);
  }

  v10 = *(v6 + 8);
  v10(v4, v5);
  v0[18] = v10;
  (*(v0[8] + 16))(v0[9], v0[6] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v0[7]);
  ConfirmationSheetRequest.init(context:)();
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100652FE8;

  return ConfirmationSheetRequest.run()();
}

uint64_t sub_100652FE8(char a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1006533A0;
  }

  else
  {
    v4 = sub_100653100;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100653100()
{
  v25 = v0;
  static Logger.install.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v22 = *(v0 + 144);
    v23 = *(v0 + 96);
    v20 = *(v0 + 128);
    v21 = *(v0 + 80);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1002346CC(*(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey), *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey + 8), &v24);
    *(v7 + 12) = 2082;
    if (v3)
    {
      v8 = 0x656D7269666E6F43;
    }

    else
    {
      v8 = 0x64656C65636E6143;
    }

    if (v3)
    {
      v9 = 0xE900000000000064;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    v10 = sub_1002346CC(v8, v9, &v24);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Confirmation sheet task finished with result: %{public}s", v7, 0x16u);
    swift_arrayDestroy();

    v22(v20, v4);
    (*(v5 + 8))(v23, v21);
  }

  else
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    v11(v12, v13);
    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);
  v18 = *(v0 + 168);

  return v17(v18);
}

uint64_t sub_1006533A0()
{
  v20 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v18 = v0[18];
    v3 = v0[15];
    v4 = v0[13];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1002346CC(*(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey), *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey + 8), v19);
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002346CC(v7, v8, v19);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Confirmation sheet task failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    v18(v3, v4);
  }

  else
  {
    v10 = v0[18];
    v11 = v0[15];
    v12 = v0[13];

    v10(v11, v12);
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  swift_willThrow();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100653618()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context;
  v2 = type metadata accessor for ConfirmationSheetContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmationSheetTask()
{
  result = qword_10078A7F8;
  if (!qword_10078A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065371C()
{
  result = type metadata accessor for ConfirmationSheetContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100653834(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1001F0C48(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100653954(uint64_t a1)
{
  v77 = type metadata accessor for XPCApp();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_100789D90);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1003631A8(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_10027A7F4(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1001DFE18();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 56) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_100005934(v14, v75, &qword_100789D90);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_1000032A8(v37, &qword_100789D90);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_1003631A8(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_100005934(v14, v76, &qword_100789D90);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_1000032A8(v43, &qword_100789D90);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_100005934(v14, v75, &qword_100789D90);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_1000032A8(v14, &qword_100789D90);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 56) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_100005934(v14, v76, &qword_100789D90);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_1000032A8(v14, &qword_100789D90);
    sub_1001DFE18();
    result = sub_1000032A8(v37, &qword_100789D90);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006540A0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100009530(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006541C0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100654304(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100363E28(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100654420(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_10020A6D0(a1, v13);
  swift_beginAccess();
  v6 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1003635C8(0, *(v6 + 2) + 1, 1, v6);
    *(v3 + 24) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1003635C8((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  sub_1001F6498(v13, &v6[32 * v9 + 32]);
  *(v3 + 24) = v6;
  swift_endAccess();
  v10 = *(v3 + 16);
  *(v3 + 16) = a2;

  a3(v11);
  sub_10065455C(v3, v10);
}

uint64_t sub_10065455C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_100659A64(v4);
    v4 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
LABEL_4:
    v7 = v6 - 1;
    sub_10000710C(v4 + 32 * v6);
    *(v4 + 16) = v7;
    *(a1 + 24) = v4;
    swift_endAccess();
    *(a1 + 16) = a2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100654614()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100654678()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10020A6D0(v2 + 32 * v3, &v10);
    sub_1001F0C48(&qword_100782D80);
    result = swift_dynamicCast();
    if (result)
    {
      v4 = *(v0 + 16);
      *&v10 = v0;
      *(&v10 + 1) = v4;
      *&v11 = v13[0];
      type metadata accessor for AppStoreResponseDecoderImpl.KeyedContainer();

      swift_getWitnessTable();
      return KeyedDecodingContainer.init<A>(_:)();
    }

    v5 = *(v0 + 24);
    v6 = *(v5 + 16);
    if (v6)
    {
      sub_10020A6D0(v5 + 32 * v6, v13);
      v7 = *(v0 + 16);
      type metadata accessor for DecodingError();
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
      swift_allocError();
      v9 = v8;

      sub_100654830(v13, v7, &v10, v9);

      sub_1000032A8(&v10, &qword_10078A9D0);
      sub_10000710C(v13);
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100654830@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&qword_100782D80);
  sub_100658558(a3, a2);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v18 = 0xD00000000000003DLL;
  v19 = 0x80000001006CF650;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v13._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v13);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v14 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = v12;
  (*(v9 + 32))(a4 + v14, v11, v8);
  v15 = enum case for DecodingError.typeMismatch(_:);
  v16 = type metadata accessor for DecodingError();
  return (*(*(v16 - 8) + 104))(a4, v15, v16);
}

uint64_t sub_100654A20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001006CF710;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for String;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100654C00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002ALL;
  v18 = 0x80000001006CF740;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Data;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100654DE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001006CF7B0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for UInt64;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100654FC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&qword_100784D98);
  sub_100658558(a3, a2);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v18 = 0xD000000000000030;
  v19 = 0x80000001006CF610;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v13._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v13);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v14 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = v12;
  (*(v9 + 32))(a4 + v14, v11, v8);
  v15 = enum case for DecodingError.typeMismatch(_:);
  v16 = type metadata accessor for DecodingError();
  return (*(*(v16 - 8) + 104))(a4, v15, v16);
}

uint64_t sub_1006551B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002ALL;
  v18 = 0x80000001006CF9F0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Bool;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655390@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001006CF9C0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Double;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002BLL;
  v18 = 0x80000001006CF990;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Float;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655750@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD000000000000029;
  v18 = 0x80000001006CF960;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Int;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655930@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002ALL;
  v18 = 0x80000001006CF930;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Int8;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655B10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002BLL;
  v18 = 0x80000001006CF900;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Int16;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655CF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002BLL;
  v18 = 0x80000001006CF8D0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Int32;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100655ED0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002BLL;
  v18 = 0x80000001006CF8A0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for Int64;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_1006560B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002ALL;
  v18 = 0x80000001006CF870;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for UInt;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100656290@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002BLL;
  v18 = 0x80000001006CF840;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for UInt8;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100656470@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001006CF810;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for UInt16;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100656650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for DecodingError.Context();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100658558(a3, a2);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v17 = 0xD00000000000002CLL;
  v18 = 0x80000001006CF7E0;
  sub_100006D8C(a1, a1[3]);
  swift_getDynamicType();
  v12._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v12);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v13 = *(sub_1001F0C48(&qword_1007896A0) + 48);
  *a4 = &type metadata for UInt32;
  (*(v9 + 32))(&a4[v13], v11, v8);
  v14 = enum case for DecodingError.typeMismatch(_:);
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

uint64_t sub_100656830@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10020A6D0(v4 + 32 * v5, v14);
    sub_1001F0C48(&qword_100784D98);
    result = swift_dynamicCast();
    if (result)
    {
      v6 = v16[0];
      v7 = *(v1 + 16);
      a1[3] = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer;
      a1[4] = sub_100657484();
      v8 = swift_allocObject();
      *a1 = v8;
      v8[2] = v1;
      v8[3] = v7;
      v8[4] = 0;
      v8[5] = v6;
    }

    v9 = *(v1 + 24);
    v10 = *(v9 + 16);
    if (v10)
    {
      sub_10020A6D0(v9 + 32 * v10, v16);
      v11 = *(v1 + 16);
      type metadata accessor for DecodingError();
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      swift_allocError();
      v13 = v12;

      sub_100654FC0(v16, v11, v14, v13);

      sub_1000032A8(v14, &qword_10078A9D0);
      sub_10000710C(v16);
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006569C4()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100656A94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_100659A78(&qword_10078A9C8);
  *a2 = v4;
}

uint64_t sub_100656AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_beginAccess();
  v10 = *(v4 + 24);
  v11 = *(v10 + 16);
  if (v11)
  {
    sub_10020A6D0(v10 + 32 * v11, v15);
    v12 = *(v4 + 16);
    v14 = 0;
    memset(v13, 0, sizeof(v13));

    sub_100656BE4(v15, a1, v4, v12, v13, a2, a3, a4);

    sub_1000032A8(v13, &qword_10078A9D0);
    return sub_10000710C(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100656BE4@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a6;
  v34 = a7;
  v35 = a3;
  v43 = a5;
  v38 = a4;
  v36 = a8;
  v10 = type metadata accessor for DecodingError.Context();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 == a2)
  {
    v35 = v13;
    sub_10020A6D0(a1, &v40);
    if (swift_dynamicCast())
    {
      v26 = v42;
      URL.init(string:encodingInvalidCharacters:)();
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1000032A8(v16, &unk_1007809F0);
        sub_100658558(v43, v38);
        v40 = 0;
        v41 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v40 = 0x3C20676E69727453;
        v41 = 0xE800000000000000;
        String.append(_:)(v26);

        v27._object = 0x80000001006CF6F0;
        v27._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v27);
        v28 = v35;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v29 = type metadata accessor for DecodingError();
        swift_allocError();
        v31 = v30;
        (*(v11 + 16))(v30, v28, v10);
        (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.dataCorrupted(_:), v29);
        swift_willThrow();
        return (*(v11 + 8))(v28, v10);
      }

      (*(v18 + 32))(v21, v16, v17);
      return swift_dynamicCast();
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100654A20(a1, v38, v43, v32);
    return swift_willThrow();
  }

  if (a2 != &type metadata for Data)
  {
    v22 = sub_100658558(v43, v38);
    __chkstk_darwin(v22);
    v23 = v34;
    v24 = v35;
    *(&v34 - 4) = v37;
    *(&v34 - 3) = v23;
    *(&v34 - 2) = a2;
    *(&v34 - 1) = v24;
    sub_100654420(a1, v22, sub_100659A08);
  }

  sub_10020A6D0(a1, &v40);
  if (!swift_dynamicCast())
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100654C00(a1, v38, v43, v33);
    return swift_willThrow();
  }

  v42 = v39;
  return swift_dynamicCast();
}

void sub_1006570E4()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100657484()
{
  result = qword_10078A9D8[0];
  if (!qword_10078A9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10078A9D8);
  }

  return result;
}

uint64_t sub_1006574D8()
{

  sub_1001F0C48(&qword_10078AA70);
  sub_10065C14C();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t sub_100657578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    sub_10052213C(v5, v6);
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1006575E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  sub_1006576B4(a1, a3, a4, a5, a6, v14);
  if (!v6)
  {
    v13[3] = a5;
    v13[4] = a6;
    v11 = sub_10020A748(v13);
    (*(*(a5 - 8) + 16))(v11, a1, a5);
    LOBYTE(v9) = sub_100659E50(v14, v9, v13);
    sub_10000710C(v14);
    sub_1000032A8(v13, &qword_10078A9D0);
  }

  return v9 & 1;
}

uint64_t sub_1006576B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v34 = a2;
  v37 = type metadata accessor for DecodingError.Context();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a3 + 16))
  {
    v14 = sub_10052213C(v12, v13);
    v16 = v15;

    if (v16)
    {
      return sub_10020A6D0(*(a3 + 56) + 32 * v14, a6);
    }
  }

  else
  {
  }

  v36[3] = a4;
  v36[4] = a5;
  v18 = sub_10020A748(v36);
  v32 = *(*(a4 - 8) + 16);
  v32(v18, a1, a4);
  sub_100658558(v36, v34);
  sub_1000032A8(v36, &qword_10078A9D0);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v19._object = 0x80000001006CFA20;
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v19);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v20._countAndFlagsBits = 2238496;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = dispatch thunk of CodingKey.stringValue.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 10530;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23 = v33;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v24 = type metadata accessor for DecodingError();
  swift_allocError();
  v26 = v25;
  v27 = *(sub_1001F0C48(&qword_10078AA68) + 48);
  v26[3] = a4;
  v26[4] = a5;
  v28 = sub_10020A748(v26);
  v32(v28, a1, a4);
  v29 = v35;
  v30 = v37;
  (*(v35 + 16))(v26 + v27, v23, v37);
  (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.keyNotFound(_:), v24);
  swift_willThrow();
  return (*(v29 + 8))(v23, v30);
}

uint64_t sub_1006579DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  sub_1006576B4(a1, a3, a4, a5, a6, v17);
  if (!v6)
  {
    v16[3] = a5;
    v16[4] = a6;
    v11 = sub_10020A748(v16);
    (*(*(a5 - 8) + 16))(v11, a1, a5);
    sub_10020A6D0(v17, v15);
    if (swift_dynamicCast())
    {
      sub_10000710C(v17);
      v9 = v14;
    }

    else
    {
      type metadata accessor for DecodingError();
      swift_allocError();
      sub_100654A20(v17, v9, v16, v12);
      swift_willThrow();
      sub_10000710C(v17);
    }

    sub_1000032A8(v16, &qword_10078A9D0);
  }

  return v9;
}

double sub_100657B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v15);
  if (!v6)
  {
    v14[3] = a5;
    v14[4] = a6;
    v12 = sub_10020A748(v14);
    (*(*(a5 - 8) + 16))(v12, a1, a5);
    v7 = sub_10065A0AC(v15, a3, v14);
    sub_10000710C(v15);
    sub_1000032A8(v14, &qword_10078A9D0);
  }

  return v7;
}

float sub_100657C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v15);
  if (!v6)
  {
    v14[3] = a5;
    v14[4] = a6;
    v12 = sub_10020A748(v14);
    (*(*(a5 - 8) + 16))(v12, a1, a5);
    v7 = sub_10065A33C(v15, a3, v14);
    sub_10000710C(v15);
    sub_1000032A8(v14, &qword_10078A9D0);
  }

  return v7;
}

uint64_t (*sub_100657CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t *)))(_BYTE *, uint64_t, uint64_t *)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v16);
  if (!v7)
  {
    v15[3] = a5;
    v15[4] = a6;
    v13 = sub_10020A748(v15);
    (*(*(a5 - 8) + 16))(v13, a1, a5);
    a7 = a7(v16, a3, v15);
    sub_10000710C(v16);
    sub_1000032A8(v15, &qword_10078A9D0);
  }

  return a7;
}

uint64_t (*sub_100657DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t *)))(_BYTE *, uint64_t, uint64_t *)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v16);
  if (!v7)
  {
    v15[3] = a5;
    v15[4] = a6;
    v13 = sub_10020A748(v15);
    (*(*(a5 - 8) + 16))(v13, a1, a5);
    a7 = a7(v16, a3, v15);
    sub_10000710C(v16);
    sub_1000032A8(v15, &qword_10078A9D0);
  }

  return a7;
}

uint64_t (*sub_100657EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t *)))(_BYTE *, uint64_t, uint64_t *)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v16);
  if (!v7)
  {
    v15[3] = a5;
    v15[4] = a6;
    v13 = sub_10020A748(v15);
    (*(*(a5 - 8) + 16))(v13, a1, a5);
    a7 = a7(v16, a3, v15);
    sub_10000710C(v16);
    sub_1000032A8(v15, &qword_10078A9D0);
  }

  return a7;
}

uint64_t (*sub_100657F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t *)))(_BYTE *, uint64_t, uint64_t *)
{
  sub_1006576B4(a1, a3, a4, a5, a6, v16);
  if (!v7)
  {
    v15[3] = a5;
    v15[4] = a6;
    v13 = sub_10020A748(v15);
    (*(*(a5 - 8) + 16))(v13, a1, a5);
    a7 = a7(v16, a3, v15);
    sub_10000710C(v16);
    sub_1000032A8(v15, &qword_10078A9D0);
  }

  return a7;
}

uint64_t sub_100658064@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  result = sub_1006576B4(a2, a4, a5, a6, a8, v22);
  if (!v10)
  {
    v21[3] = a6;
    v21[4] = a8;
    v20 = sub_10020A748(v21);
    (*(*(a6 - 8) + 16))(v20, a2, a6);
    sub_100656BE4(v22, a1, a3, a4, v21, a7, a10, a9);
    sub_10000710C(v22);
    return sub_1000032A8(v21, &qword_10078A9D0);
  }

  return result;
}

uint64_t sub_100658180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1006576B4(a2, a4, a5, a6, a8, &v14);
  if (!v8)
  {
    sub_1001F0C48(&qword_100782D80);
    if (swift_dynamicCast())
    {
      v14 = a3;
      v15 = a4;
      v16 = v13;
      type metadata accessor for AppStoreResponseDecoderImpl.KeyedContainer();

      swift_getWitnessTable();
      return KeyedDecodingContainer.init<A>(_:)();
    }

    else
    {
      v14 = 0x203A4F444F54;
      v15 = 0xE600000000000000;
      v12._countAndFlagsBits = StaticString.description.getter();
      String.append(_:)(v12);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100658300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_1006576B4(a1, a3, a4, a5, a6, v15);
  if (!v7)
  {
    sub_1001F0C48(&qword_100784D98);
    if (swift_dynamicCast())
    {
      v12 = v15[5];
      a7[3] = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer;
      a7[4] = sub_100657484();
      v13 = swift_allocObject();
      *a7 = v13;
      v13[2] = a2;
      v13[3] = a3;
      v13[4] = 0;
      v13[5] = v12;
    }

    else
    {
      v15[0] = 0x203A4F444F54;
      v15[1] = 0xE600000000000000;
      v14._countAndFlagsBits = StaticString.description.getter();
      String.append(_:)(v14);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void sub_100658448()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006584D0()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100658558(uint64_t a1, uint64_t a2)
{
  sub_100005934(a1, &v5, &qword_10078A9D0);
  if (v6)
  {
    sub_1001DFDBC(&v5, v7);
    sub_1001F0C48(&qword_100781410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    sub_10020A980(v7, inited + 32);
    *&v5 = a2;

    sub_100653834(inited, sub_100362814, &qword_100781418);
    sub_10000710C(v7);
    return v5;
  }

  else
  {
    sub_1000032A8(&v5, &qword_10078A9D0);
  }

  return a2;
}

uint64_t sub_100658A24()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100658A74()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100658B1C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100658B6C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100658CAC()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100658CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100658E74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v4 + 24);
  if (v6 >= *(v8 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v11 = result;
  sub_10020A6D0(v8 + 32 * v6 + 32, v18);
  v12 = *v4;
  v13 = *(v4 + 8);
  v16 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v17 = sub_10065B968();
  v14 = v6;
  v15 = 0;
  sub_100656BE4(v18, v11, v12, v13, &v14, a2, a3, a4);
  sub_10000710C(v18);
  result = sub_1000032A8(&v14, &qword_10078A9D0);
  if (!v5)
  {
    *(v4 + 16) = v6 + 1;
  }

  return result;
}

void sub_100658F70()
{
  if (*(v0 + 8))
  {
    __break(1u);
  }

  else
  {
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);
  }
}

uint64_t sub_100658FEC@<X0>(uint64_t a1@<X8>)
{

  *a1 = 0;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_10065902C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100659038(uint64_t a1)
{
  v2 = sub_10065B968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100659074(uint64_t a1)
{
  v2 = sub_10065B968();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1006590DC()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006593F8()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100659448()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1006594F0()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100659540()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100659680()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1006596D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

void sub_100659740()
{
  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006597C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_100658558(a3, a2);
  _StringGuts.grow(_:)(38);

  v10 = [a1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000012;
  v15._object = 0x80000001006CF790;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a4;
  v16._object = a5;
  String.append(_:)(v16);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v17 = enum case for DecodingError.dataCorrupted(_:);
  v18 = type metadata accessor for DecodingError();
  v19 = *(*(v18 - 8) + 104);

  return v19(a6, v17, v18);
}

uint64_t sub_100659930()
{
  sub_100659A78(&qword_100782D88);

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t sub_100659A78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppStoreResponseDecoderImpl();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100659ABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100659B48()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10020A6D0(v2 + 32 * v3, v10);
    v4 = *(v0 + 16);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10020A6D0(v10, v7);

    if (swift_dynamicCast())
    {

      sub_1000032A8(v8, &qword_10078A9D0);
      sub_10000710C(v10);
      return v6;
    }

    else
    {
      type metadata accessor for DecodingError();
      swift_allocError();
      sub_100654A20(v10, v4, v8, v5);

      swift_willThrow();
      sub_1000032A8(v8, &qword_10078A9D0);
      return sub_10000710C(v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100659C84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100654DE0(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 unsignedLongLongValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3436746E4955, 0xE600000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_100659E50(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, v15);
  sub_100006190(0, &qword_100783A50);
  if (swift_dynamicCast())
  {
    v6 = v14 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (kCFBooleanTrue)
    {
      swift_unknownObjectRelease();
      if (v14 == kCFBooleanTrue)
      {
        v8 = 1;
        return v8 & 1;
      }
    }

    else
    {
      v9 = 0;
      swift_unknownObjectRelease();
    }

LABEL_12:
    sub_10020A6D0(a1, v15);
    if (swift_dynamicCast() && v14)
    {
      if (kCFBooleanFalse)
      {
        swift_unknownObjectRelease();
        if (v14 == kCFBooleanFalse)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = 0;
        swift_unknownObjectRelease();
      }
    }

    else if (!kCFBooleanFalse)
    {
      v10 = 0;
LABEL_19:
      v8 = 0;
      return v8 & 1;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006551B0(a1, a2, a3, v12);
    swift_willThrow();
    return v8 & 1;
  }

  if (kCFBooleanTrue)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_100659FE8()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10020A6D0(v2 + 32 * v3, v8);
    v4 = *(v0 + 16);
    v7 = 0;
    memset(v6, 0, sizeof(v6));

    v5 = sub_100659E50(v8, v4, v6);

    sub_1000032A8(v6, &qword_10078A9D0);
    sub_10000710C(v8);
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10065A0AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v16);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v17;
  if (kCFBooleanTrue)
  {
    v8 = v17 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v17 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655390(a1, a2, a3, v13);
    swift_willThrow();
    return v3;
  }

  [v17 doubleValue];
  v3 = v10;
  sub_100006190(0, &qword_100782DF0);
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v3];
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x656C62756F44, 0xE600000000000000, v15);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065A278()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10020A6D0(v2 + 32 * v3, v7);
    v4 = *(v0 + 16);
    v6 = 0;
    memset(v5, 0, sizeof(v5));

    sub_10065A0AC(v7, v4, v5);

    sub_1000032A8(v5, &qword_10078A9D0);
    return sub_10000710C(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_10065A33C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v18);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v19;
  if (kCFBooleanTrue)
  {
    v8 = v19 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v19 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655570(a1, a2, a3, v15);
    swift_willThrow();
    return v3;
  }

  [v19 floatValue];
  v3 = v10;
  sub_100006190(0, &qword_100782DF0);
  v11 = objc_allocWithZone(NSNumber);
  *&v12 = v3;
  v13 = [v11 initWithFloat:v12];
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x74616F6C46, 0xE500000000000000, v17);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065A508()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10020A6D0(v2 + 32 * v3, v7);
    v4 = *(v0 + 16);
    v6 = 0;
    memset(v5, 0, sizeof(v5));

    sub_10065A33C(v7, v4, v5);

    sub_1000032A8(v5, &qword_10078A9D0);
    return sub_10000710C(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10065A5CC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655750(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 integerValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithInteger:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 7630409, 0xE300000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

id sub_10065A794(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655930(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 charValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithChar:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 947154505, 0xE400000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

id sub_10065A95C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655B10(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 shortValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithShort:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3631746E49, 0xE500000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

id sub_10065AB28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655CF0(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 intValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithInt:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3233746E49, 0xE500000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

id sub_10065ACF4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100655ED0(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 longLongValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithLongLong:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3436746E49, 0xE500000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

id sub_10065AEC0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006560B0(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 unsignedIntegerValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 1953384789, 0xE400000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065B088(uint64_t (*a1)(_BYTE *, uint64_t, _OWORD *))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10020A6D0(v4 + 32 * v5, v10);
    v6 = *(v1 + 16);
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    v7 = a1(v10, v6, v8);

    sub_1000032A8(v8, &qword_10078A9D0);
    sub_10000710C(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10065B154(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100656290(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 unsignedCharValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x38746E4955, 0xE500000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065B320(uint64_t (*a1)(_BYTE *, uint64_t, _OWORD *))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10020A6D0(v4 + 32 * v5, v10);
    v6 = *(v1 + 16);
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    v7 = a1(v10, v6, v8);

    sub_1000032A8(v8, &qword_10078A9D0);
    sub_10000710C(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10065B3EC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100656470(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 unsignedShortValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3631746E4955, 0xE600000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065B5B8(uint64_t (*a1)(_BYTE *, uint64_t, _OWORD *))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10020A6D0(v4 + 32 * v5, v10);
    v6 = *(v1 + 16);
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    v7 = a1(v10, v6, v8);

    sub_1000032A8(v8, &qword_10078A9D0);
    sub_10000710C(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10065B684(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10020A6D0(a1, &v15);
  sub_100006190(0, &qword_100783A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = v16;
  if (kCFBooleanTrue)
  {
    v8 = v16 == kCFBooleanTrue;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || (kCFBooleanFalse ? (v9 = v16 == kCFBooleanFalse) : (v9 = 0), v9))
  {

LABEL_14:
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100656650(a1, a2, a3, v12);
    swift_willThrow();
    return v3;
  }

  v3 = [v16 unsignedIntValue];
  sub_100006190(0, &qword_100782DF0);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v3];
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_1006597C8(v7, a2, a3, 0x3233746E4955, 0xE600000000000000, v14);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10065B850(uint64_t (*a1)(_BYTE *, uint64_t, _OWORD *))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_10020A6D0(v4 + 32 * v5, v10);
    v6 = *(v1 + 16);
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    v7 = a1(v10, v6, v8);

    sub_1000032A8(v8, &qword_10078A9D0);
    sub_10000710C(v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065B91C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10065B968()
{
  result = qword_10078AA60;
  if (!qword_10078AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AA60);
  }

  return result;
}

void sub_10065B9BC()
{
  v2 = v0[2];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v0[3];
  if (v2 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10020A6D0(v3 + 32 * v2 + 32, v9);
  v4 = v0[1];
  v7 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v8 = sub_10065B968();
  v5 = v2;
  v6 = 0;
  sub_100659E50(v9, v4, &v5);
  sub_10000710C(v9);
  sub_1000032A8(&v5, &qword_10078A9D0);
  if (!v1)
  {
    v0[2] = v2 + 1;
  }
}

void sub_10065BA8C()
{
  v1 = v0[2];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0[3];
  if (v1 >= *(v2 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10020A6D0(v2 + 32 * v1 + 32, v10);
  v3 = v0[1];
  v8 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v9 = sub_10065B968();
  v6 = v1;
  v7 = 0;
  sub_10020A6D0(v10, v5);
  if (swift_dynamicCast())
  {
    sub_10000710C(v10);
    sub_1000032A8(&v6, &qword_10078A9D0);
    v0[2] = v1 + 1;
  }

  else
  {
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100654A20(v10, v3, &v6, v4);
    swift_willThrow();
    sub_10000710C(v10);
    sub_1000032A8(&v6, &qword_10078A9D0);
  }
}

void sub_10065BBD8()
{
  v2 = v0[2];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v0[3];
  if (v2 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10020A6D0(v3 + 32 * v2 + 32, v9);
  v4 = v0[1];
  v7 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v8 = sub_10065B968();
  v5 = v2;
  v6 = 0;
  sub_10065A0AC(v9, v4, &v5);
  sub_10000710C(v9);
  sub_1000032A8(&v5, &qword_10078A9D0);
  if (!v1)
  {
    v0[2] = v2 + 1;
  }
}

void sub_10065BCB0()
{
  v2 = v0[2];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v0[3];
  if (v2 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10020A6D0(v3 + 32 * v2 + 32, v9);
  v4 = v0[1];
  v7 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v8 = sub_10065B968();
  v5 = v2;
  v6 = 0;
  sub_10065A33C(v9, v4, &v5);
  sub_10000710C(v9);
  sub_1000032A8(&v5, &qword_10078A9D0);
  if (!v1)
  {
    v0[2] = v2 + 1;
  }
}

uint64_t (*sub_10065BD88(uint64_t (*result)(_BYTE *, uint64_t, unint64_t *)))(_BYTE *, uint64_t, unint64_t *)
{
  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1[3];
  if (v3 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10020A6D0(v4 + 32 * v3 + 32, v12);
  v6 = v1[1];
  v10 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v11 = sub_10065B968();
  v8 = v3;
  v9 = 0;
  v7 = v5(v12, v6, &v8);
  sub_10000710C(v12);
  sub_1000032A8(&v8, &qword_10078A9D0);
  if (!v2)
  {
    v1[2] = v3 + 1;
  }

  return v7;
}

uint64_t (*sub_10065BE60(uint64_t (*result)(_BYTE *, uint64_t, unint64_t *)))(_BYTE *, uint64_t, unint64_t *)
{
  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1[3];
  if (v3 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10020A6D0(v4 + 32 * v3 + 32, v12);
  v6 = v1[1];
  v10 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v11 = sub_10065B968();
  v8 = v3;
  v9 = 0;
  v7 = v5(v12, v6, &v8);
  sub_10000710C(v12);
  sub_1000032A8(&v8, &qword_10078A9D0);
  if (!v2)
  {
    v1[2] = v3 + 1;
  }

  return v7;
}

uint64_t (*sub_10065BF38(uint64_t (*result)(_BYTE *, uint64_t, unint64_t *)))(_BYTE *, uint64_t, unint64_t *)
{
  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1[3];
  if (v3 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10020A6D0(v4 + 32 * v3 + 32, v12);
  v6 = v1[1];
  v10 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v11 = sub_10065B968();
  v8 = v3;
  v9 = 0;
  v7 = v5(v12, v6, &v8);
  sub_10000710C(v12);
  sub_1000032A8(&v8, &qword_10078A9D0);
  if (!v2)
  {
    v1[2] = v3 + 1;
  }

  return v7;
}

uint64_t (*sub_10065C010(uint64_t (*result)(_BYTE *, uint64_t, unint64_t *)))(_BYTE *, uint64_t, unint64_t *)
{
  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1[3];
  if (v3 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10020A6D0(v4 + 32 * v3 + 32, v12);
  v6 = v1[1];
  v10 = &type metadata for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey;
  v11 = sub_10065B968();
  v8 = v3;
  v9 = 0;
  v7 = v5(v12, v6, &v8);
  sub_10000710C(v12);
  sub_1000032A8(&v8, &qword_10078A9D0);
  if (!v2)
  {
    v1[2] = v3 + 1;
  }

  return v7;
}

unint64_t sub_10065C14C()
{
  result = qword_10078AA78;
  if (!qword_10078AA78)
  {
    sub_1001F76D0(&qword_10078AA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AA78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppStoreResponseDecoderImpl.UnkeyedContainer.IndexKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10065C210()
{
  result = qword_10078AA80;
  if (!qword_10078AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AA80);
  }

  return result;
}

unint64_t sub_10065C268()
{
  result = qword_10078AA88;
  if (!qword_10078AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AA88);
  }

  return result;
}

unint64_t sub_10065C2C4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x5F746E756F636361;
    v6 = 0x695F656C646E7562;
    if (a1 != 2)
    {
      v6 = 0x765F656C646E7562;
    }

    if (a1)
    {
      v5 = 0x726168735F707061;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64695F6D657469;
    if (a1 != 7)
    {
      v1 = 0x5F6E6F6973726576;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0x6C72755F706461;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_10065C40C()
{
  Hasher.init(_seed:)();
  sub_100605D8C();
  return Hasher._finalize()();
}

Swift::Int sub_10065C45C()
{
  Hasher.init(_seed:)();
  sub_100605D8C();
  return Hasher._finalize()();
}

unint64_t sub_10065C4A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065C91C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10065C4D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10065C2C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10065C6AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketplaceUpdateEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10065C72C()
{
  result = qword_10078AAE8;
  if (!qword_10078AAE8)
  {
    sub_1001F76D0(&qword_10078AAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AAE8);
  }

  return result;
}

unint64_t sub_10065C794()
{
  result = qword_10078AAF8;
  if (!qword_10078AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AAF8);
  }

  return result;
}

unint64_t sub_10065C7E8(void *a1)
{
  a1[1] = sub_10065C820();
  a1[2] = sub_10065C874();
  result = sub_10065C8C8();
  a1[3] = result;
  return result;
}

unint64_t sub_10065C820()
{
  result = qword_10078AB00;
  if (!qword_10078AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AB00);
  }

  return result;
}

unint64_t sub_10065C874()
{
  result = qword_10078AB08;
  if (!qword_10078AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AB08);
  }

  return result;
}

unint64_t sub_10065C8C8()
{
  result = qword_10078AB10;
  if (!qword_10078AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078AB10);
  }

  return result;
}

unint64_t sub_10065C91C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B668, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10065C968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_localizer) = 0;
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_lastFailedLoadAttempt;
  v11 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v20 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_dispatchQueue;
  v19 = sub_100006190(0, &qword_10077E680);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100660D40(&qword_1007863A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F0C48(&qword_1007863A8);
  sub_1004FE704(&qword_1007863B0, &qword_1007863A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(v3 + v20) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_url;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 32))(v4 + v12, v23, v13);
  v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_bagService;
  v15 = type metadata accessor for BagService();
  (*(*(v15 - 8) + 32))(v4 + v14, v24, v15);
  v16 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_continuousClock;
  v17 = type metadata accessor for ContinuousClock();
  (*(*(v17 - 8) + 32))(v4 + v16, v25, v17);
  return v4;
}

uint64_t sub_10065CD08()
{
  v1[38] = v0;
  v2 = type metadata accessor for BagLanguageSource();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = type metadata accessor for Bag();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  type metadata accessor for JetPackPath();
  v1[46] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringsBundle();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v5 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[50] = v5;
  v1[51] = *(v5 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = type metadata accessor for JetPackSigningPolicy();
  v1[54] = v6;
  v1[55] = *(v6 - 8);
  v1[56] = swift_task_alloc();
  v7 = type metadata accessor for InMemoryJetPackLoader();
  v1[57] = v7;
  v1[58] = *(v7 - 8);
  v1[59] = swift_task_alloc();
  v8 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v1[60] = v8;
  v1[61] = *(v8 - 8);
  v1[62] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[63] = v9;
  v1[64] = *(v9 - 8);
  v1[65] = swift_task_alloc();
  v10 = type metadata accessor for URLJetPackAssetRequest();
  v1[66] = v10;
  v1[67] = *(v10 - 8);
  v1[68] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset();
  v1[69] = v11;
  v1[70] = *(v11 - 8);
  v1[71] = swift_task_alloc();
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  v1[72] = v12;
  v1[73] = *(v12 - 8);
  v1[74] = swift_task_alloc();
  type metadata accessor for JetPackAssetSession.Configuration();
  v1[75] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v1[76] = v13;
  v1[77] = *(v13 - 8);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  sub_1001F0C48(&qword_10078AC80);
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock.Instant();
  v1[84] = v14;
  v1[85] = *(v14 - 8);
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();

  return _swift_task_switch(sub_10065D2FC, v0, 0);
}

uint64_t sub_10065D2FC()
{
  v42 = v0;
  v1 = v0[38];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_localizer;
  v0[88] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_localizer;
  if (!*(v1 + v2))
  {
    v3 = v0[85];
    v4 = v0[84];
    v5 = v0[83];
    v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_lastFailedLoadAttempt;
    v0[89] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_lastFailedLoadAttempt;
    swift_beginAccess();
    sub_100660B78(v1 + v6, v5);
    if ((*(v3 + 48))(v5, 1, v4) == 1)
    {
      sub_100660BE8(v0[83]);
LABEL_8:
      static Logger.general.getter();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[80];
      v24 = v0[77];
      v25 = v0[76];
      if (v22)
      {
        v40 = v0[80];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v41[0] = v27;
        *v26 = 136315138;
        sub_100660D40(&qword_10077EE18, &type metadata accessor for URL);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = sub_1002346CC(v28, v29, v41);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Loading localization resource bundle from %s", v26, 0xCu);
        sub_10000710C(v27);

        (*(v24 + 8))(v40, v25);
      }

      else
      {

        (*(v24 + 8))(v23, v25);
      }

      v31 = type metadata accessor for JetPackAssetDiskCache();
      v32 = JetPackAssetDiskCache.__allocating_init()();
      v0[90] = v32;
      v33 = v0[38];
      v41[3] = v31;
      v41[4] = &protocol witness table for JetPackAssetDiskCache;
      v41[0] = v32;

      JetPackAssetSession.Configuration.init(cache:)();
      type metadata accessor for JetPackAssetSession();
      swift_allocObject();
      v0[91] = JetPackAssetSession.init(configuration:)();
      v34 = sub_100660D40(&qword_10078AC88, type metadata accessor for LocalizationJetPack);
      v35 = swift_task_alloc();
      v0[92] = v35;
      v36 = sub_100006190(0, &qword_10078AC90);
      *v35 = v0;
      v35[1] = sub_10065DBA8;
      v37 = v0[38];

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 37, v33, v34, 0xD000000000000017, 0x80000001006CFB10, sub_100660CC0, v37, v36);
    }

    v7 = v0[86];
    v8 = v0[85];
    v9 = v0[84];
    (*(v8 + 32))(v0[87], v0[83], v9);
    ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v10 = *(v8 + 8);
    v10(v7, v9);
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v10(v0[87], v0[84]);
      goto LABEL_8;
    }

    static Logger.general.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[87];
    v15 = v0[84];
    v16 = v0[81];
    v17 = v0[77];
    v18 = v0[76];
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to load localization resource bundle within the past 60 minutes; not reattempting.", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);
    v10(v14, v15);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_10065DBA8()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_10065DCB8, v1, 0);
}

uint64_t sub_10065DCB8()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v16 = v0[60];
  v7 = v0[37];
  v6 = v0[38];
  v0[93] = v7;
  type metadata accessor for AMSCachedBag();
  v0[94] = static AMSCachedBag.makeBag(bagService:)();
  swift_unknownObjectRetain();
  v8 = v7;
  URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)();
  (*(v3 + 16))(v1, v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_url, v2);
  (*(v5 + 104))(v4, enum case for JetPackAssetRequestSourcePolicy.standard(_:), v16);
  URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
  v9 = swift_task_alloc();
  v0[95] = v9;
  v10 = sub_100660D40(&qword_10078AC98, &type metadata accessor for URLJetPackAssetFetcher);
  *v9 = v0;
  v9[1] = sub_10065DE78;
  v11 = v0[74];
  v12 = v0[72];
  v13 = v0[71];
  v14 = v0[68];

  return JetPackAssetSession.jetPack<A>(for:fetcher:)(v13, v14, v11, v12, v10);
}

uint64_t sub_10065DE78()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = v2[68];
  v4 = v2[67];
  v5 = v2[66];
  v6 = v2[38];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10065EE90;
  }

  else
  {
    v7 = sub_10065DFF4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10065DFF4()
{
  (*(v0[55] + 104))(v0[56], enum case for JetPackSigningPolicy.required(_:), v0[54]);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_10020A748(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  JetPackAsset.streamSource.getter();
  v1 = swift_task_alloc();
  v0[97] = v1;
  *v1 = v0;
  v1[1] = sub_10065E108;
  v2 = v0[53];

  return InMemoryJetPackLoader.bundle(from:)(v2, v0 + 7);
}

uint64_t sub_10065E108()
{
  v2 = *v1;
  *(v2 + 784) = v0;

  v3 = *(v2 + 304);
  sub_10000710C(v2 + 56);
  if (v0)
  {
    v4 = sub_10065F2B8;
  }

  else
  {
    v4 = sub_10065E240;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10065E240()
{
  v82 = v0;
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  static Logger.general.getter();
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v6, v80);
  v8 = v0[79];
  v9 = v0[77];
  v10 = v0[76];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[50];
  if (v7)
  {
    v76 = v5;
    v14 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v81[0] = v69;
    *v14 = 136315138;
    v15 = JetPackResourceBundle.version.getter();
    v71 = v8;
    v73 = v10;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 48;
    }

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    v19 = v13;
    v20 = *(v12 + 8);
    v20(v11, v19);
    v21 = sub_1002346CC(v17, v18, v81);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v80, "Loaded resource bundle version %s", v14, 0xCu);
    sub_10000710C(v69);

    v5 = v76;

    (*(v9 + 8))(v71, v73);
  }

  else
  {

    v22 = v13;
    v20 = *(v12 + 8);
    v20(v11, v22);
    (*(v9 + 8))(v8, v10);
  }

  v0[99] = v20;
  v23 = v0[98];
  v24 = v0[53];
  v25 = v0[50];
  v0[15] = v25;
  v0[16] = &protocol witness table for InMemoryJetPackResourceBundle;
  v26 = sub_10020A748(v0 + 12);
  v5(v26, v24, v25);
  JetPackPath.init(_:)();
  LocalizedStringsBundle.init(resourceBundle:indexPath:)();
  if (v23)
  {
    v27 = v0[93];
    v28 = v0[73];
    v74 = v0[72];
    v77 = v0[74];
    v29 = v0[70];
    v70 = v0[69];
    v72 = v0[71];
    v68 = v0[59];
    v30 = v20;
    v31 = v0[58];
    v67 = v0[57];
    v32 = v0[53];
    v33 = v0[50];

    swift_unknownObjectRelease();

    v30(v32, v33);
    (*(v31 + 8))(v68, v67);
    (*(v29 + 8))(v72, v70);
    (*(v28 + 8))(v77, v74);
    static Logger.general.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[78];
    v38 = v0[77];
    v39 = v0[76];
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81[0] = v41;
      *v40 = 136446210;
      swift_getErrorValue();
      v78 = v39;
      v42 = *(v0[34] - 8);
      swift_task_alloc();
      v75 = v37;
      (*(v42 + 16))();
      v43 = String.init<A>(describing:)();
      v45 = v44;

      v46 = sub_1002346CC(v43, v45, v81);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to load localization jetpack: %{public}s", v40, 0xCu);
      sub_10000710C(v41);

      (*(v38 + 8))(v75, v78);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }

    v60 = v0[89];
    v61 = v0[85];
    v62 = v0[84];
    v63 = v0[82];
    v64 = v0[38];
    static ContinuousClock.Instant.now.getter();

    (*(v61 + 56))(v63, 0, 1, v62);
    swift_beginAccess();
    sub_100660C50(v63, v64 + v60);
    swift_endAccess();

    v65 = v0[1];

    return v65();
  }

  else
  {
    v47 = v0[48];
    v48 = v0[47];
    v50 = v0[44];
    v49 = v0[45];
    v52 = v0[42];
    v51 = v0[43];
    v54 = v0[40];
    v53 = v0[41];
    v79 = v0[49];
    v55 = v0[39];
    swift_unknownObjectRetain();
    Bag.init(from:)();
    (*(v51 + 16))(v50, v49, v52);
    BagLanguageSource.init(bag:)();
    type metadata accessor for AppleServicesLocalizer();
    v0[20] = v48;
    v0[21] = &protocol witness table for LocalizedStringsBundle;
    v56 = sub_10020A748(v0 + 17);
    (*(v47 + 16))(v56, v79, v48);
    v0[25] = v55;
    v0[26] = &protocol witness table for BagLanguageSource;
    v57 = sub_10020A748(v0 + 22);
    (*(v54 + 16))(v57, v53, v55);
    type metadata accessor for BaseObjectGraph();
    v58 = BaseObjectGraph.__allocating_init(name:_:)();
    v0[100] = v58;
    v59 = swift_task_alloc();
    v0[101] = v59;
    *v59 = v0;
    v59[1] = sub_10065EA4C;

    return static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(v0 + 17, v0 + 22, v58);
  }
}

uint64_t sub_10065EA4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 816) = v1;

  if (v1)
  {
    v5 = *(v4 + 304);

    v6 = sub_10065F72C;
  }

  else
  {
    v5 = *(v4 + 304);

    *(v4 + 824) = a1;
    sub_10000710C(v4 + 176);
    sub_10000710C(v4 + 136);
    v6 = sub_10065EB98;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10065EB98()
{
  v27 = v0[103];
  v21 = v0[99];
  v12 = v0[93];
  v25 = v0[74];
  v26 = v0[88];
  v1 = v0[73];
  v24 = v0[72];
  v2 = v0[70];
  v22 = v0[69];
  v23 = v0[71];
  v3 = v0[58];
  v18 = v0[57];
  v19 = v0[59];
  v16 = v0[50];
  v17 = v0[53];
  v4 = v0[48];
  v15 = v0[49];
  v14 = v0[47];
  v13 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  v20 = v0[38];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v13, v6);
  (*(v4 + 8))(v15, v14);
  v21(v17, v16);
  (*(v3 + 8))(v19, v18);
  (*(v2 + 8))(v23, v22);
  (*(v1 + 8))(v25, v24);
  *(v20 + v26) = v27;

  v10 = v0[1];

  return v10();
}

uint64_t sub_10065EE90()
{
  v28 = v0;
  v1 = v0[93];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];

  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);
  static Logger.general.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v26 = v0[78];
    v24 = v0[77];
    v25 = v0[76];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v27);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load localization jetpack: %{public}s", v7, 0xCu);
    sub_10000710C(v8);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v14 = v0[78];
    v15 = v0[77];
    v16 = v0[76];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[89];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[82];
  v21 = v0[38];
  static ContinuousClock.Instant.now.getter();

  (*(v18 + 56))(v20, 0, 1, v19);
  swift_beginAccess();
  sub_100660C50(v20, v21 + v17);
  swift_endAccess();

  v22 = v0[1];

  return v22();
}

uint64_t sub_10065F2B8()
{
  v34 = v0;
  v1 = v0[93];
  v31 = v0[74];
  v2 = v0[73];
  v27 = v0[71];
  v29 = v0[72];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];

  swift_unknownObjectRelease();

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v27, v4);
  (*(v2 + 8))(v31, v29);
  static Logger.general.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = v0[78];
    v28 = v0[77];
    v30 = v0[76];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v16 = sub_1002346CC(v13, v15, &v33);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load localization jetpack: %{public}s", v10, 0xCu);
    sub_10000710C(v11);

    (*(v28 + 8))(v32, v30);
  }

  else
  {
    v17 = v0[78];
    v18 = v0[77];
    v19 = v0[76];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[89];
  v21 = v0[85];
  v22 = v0[84];
  v23 = v0[82];
  v24 = v0[38];
  static ContinuousClock.Instant.now.getter();

  (*(v21 + 56))(v23, 0, 1, v22);
  swift_beginAccess();
  sub_100660C50(v23, v24 + v20);
  swift_endAccess();

  v25 = v0[1];

  return v25();
}

uint64_t sub_10065F72C()
{
  v46 = v0;
  v37 = v0[99];
  v1 = v0[93];
  v2 = v0[73];
  v41 = v0[72];
  v43 = v0[74];
  v3 = v0[70];
  v38 = v0[69];
  v39 = v0[71];
  v4 = v0[58];
  v35 = v0[57];
  v36 = v0[59];
  v33 = v0[50];
  v34 = v0[53];
  v5 = v0[48];
  v32 = v0[49];
  v31 = v0[47];
  v6 = v0[43];
  v29 = v0[42];
  v30 = v0[45];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v30, v29);
  (*(v5 + 8))(v32, v31);
  v37(v34, v33);
  (*(v4 + 8))(v36, v35);
  (*(v3 + 8))(v39, v38);
  (*(v2 + 8))(v43, v41);
  sub_10000710C((v0 + 22));
  sub_10000710C((v0 + 17));
  static Logger.general.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v44 = v0[78];
    v40 = v0[77];
    v42 = v0[76];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = *(v0[34] - 8);
    swift_task_alloc();
    (*(v14 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    v18 = sub_1002346CC(v15, v17, &v45);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to load localization jetpack: %{public}s", v12, 0xCu);
    sub_10000710C(v13);

    (*(v40 + 8))(v44, v42);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];
    v21 = v0[76];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[89];
  v23 = v0[85];
  v24 = v0[84];
  v25 = v0[82];
  v26 = v0[38];
  static ContinuousClock.Instant.now.getter();

  (*(v23 + 56))(v25, 0, 1, v24);
  swift_beginAccess();
  sub_100660C50(v25, v26 + v22);
  swift_endAccess();

  v27 = v0[1];

  return v27();
}

uint64_t sub_10065FC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&qword_10078ACA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18[1] = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_dispatchQueue);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_100660CC8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100495FFC;
  aBlock[3] = &unk_1007700D8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100660D40(&qword_100780400, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F0C48(&qword_100780408);
  sub_1004FE704(&qword_100780410, &qword_100780408);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_10066000C()
{
  type metadata accessor for AMSCachedBag();
  v0 = static AMSCachedBag.makeBag(bagService:)();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() currentProcess];
  [v1 ams_configurationWithProcessInfo:v2 bag:v0];

  sub_1001F0C48(&qword_10078ACA0);
  CheckedContinuation.resume(returning:)();
  return swift_unknownObjectRelease();
}

uint64_t sub_1006600F0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for LocalizerLookupStrategy();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1006601B0, v1, 0);
}

uint64_t sub_1006601B0()
{
  v0[14] = sub_100368EFC();
  v0[15] = v1;
  v0[21] = v1;
  v0[22] = sub_100369B74();
  v0[23] = sub_100367E50();
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100660260;

  return sub_10065CD08();
}

uint64_t sub_100660260()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100660370, v1, 0);
}

uint64_t sub_100660370()
{
  if (!*(v0[17] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_localizer))
  {
    v10 = v0[22];

    v6 = v0[24];
    if (v10)
    {
      v11 = v0[22];
      v14 = *(v11 + 64);
      v13 = v11 + 64;
      v12 = v14;
      v15 = -1;
      v16 = -1 << *(v0[22] + 32);
      if (-v16 < 64)
      {
        v15 = ~(-1 << -v16);
      }

      v17 = v15 & v12;
      v18 = (63 - v16) >> 6;
      v58 = v0[22];

      v20 = 0;
      for (i = v0[23]; v17; result = )
      {
        v21 = v6;
        v22 = v20;
LABEL_13:
        v23 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v24 = (v22 << 10) | (16 * v23);
        v25 = (*(v58 + 48) + v24);
        v26 = *v25;
        v27 = v25[1];
        v28 = (*(v58 + 56) + v24);
        v29 = *v28;
        v30 = v28[1];
        v0[2] = i;
        v0[3] = v21;

        v31._countAndFlagsBits = v26;
        v31._object = v27;
        String.append(_:)(v31);

        v32._countAndFlagsBits = 16448;
        v32._object = 0xE200000000000000;
        String.append(_:)(v32);
        v0[4] = 16448;
        v0[5] = 0xE200000000000000;
        v0[6] = v29;
        v0[7] = v30;
        sub_100005E50();
        i = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v6 = v33;
      }

      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v18)
        {

          j = i;
          goto LABEL_30;
        }

        v17 = *(v13 + 8 * v22);
        ++v20;
        if (v17)
        {
          v21 = v6;
          v20 = v22;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_29:
    j = v0[23];
    goto LABEL_30;
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v1 + 104))(v2, enum case for LocalizerLookupStrategy.default(_:), v3);

  j = AppleServicesLocalizer.string(forKey:with:using:)();
  v6 = v5;

  (*(v1 + 8))(v2, v3);
  v7._countAndFlagsBits = j;
  v7._object = v6;
  v8 = AppleServicesLocalizer.isLocalizedString(_:)(v7);
  v9 = v0[22];
  if (!v8)
  {

    if (v9)
    {
      v34 = v0[22];
      v37 = *(v34 + 64);
      v36 = v34 + 64;
      v35 = v37;
      v6 = v0[24];
      v38 = -1;
      v39 = -1 << *(v0[22] + 32);
      if (-v39 < 64)
      {
        v38 = ~(-1 << -v39);
      }

      v40 = v38 & v35;
      v41 = (63 - v39) >> 6;
      v60 = v0[22];

      v42 = 0;
      for (j = v0[23]; v40; result = )
      {
        v43 = j;
        v44 = v6;
        v45 = v42;
LABEL_24:
        v46 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v47 = (v45 << 10) | (16 * v46);
        v48 = (*(v60 + 48) + v47);
        v49 = *v48;
        v50 = v48[1];
        v51 = (*(v60 + 56) + v47);
        v52 = *v51;
        v53 = v51[1];
        v0[8] = v43;
        v0[9] = v44;

        v54._countAndFlagsBits = v49;
        v54._object = v50;
        String.append(_:)(v54);

        v55._countAndFlagsBits = 16448;
        v55._object = 0xE200000000000000;
        String.append(_:)(v55);
        v0[10] = 16448;
        v0[11] = 0xE200000000000000;
        v0[12] = v52;
        v0[13] = v53;
        sub_100005E50();
        j = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v6 = v56;
      }

      while (1)
      {
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v45 >= v41)
        {

          goto LABEL_30;
        }

        v40 = *(v36 + 8 * v45);
        ++v42;
        if (v40)
        {
          v43 = j;
          v44 = v6;
          v42 = v45;
          goto LABEL_24;
        }
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v6 = v0[24];
    goto LABEL_29;
  }

LABEL_30:

  v57 = v0[1];

  return v57(j, v6);
}

uint64_t sub_100660844()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_bagService;
  v4 = type metadata accessor for BagService();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_continuousClock;
  v6 = type metadata accessor for ContinuousClock();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100660BE8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LocalizationJetPack_lastFailedLoadAttempt);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalizationJetPack()
{
  result = qword_10078AB70;
  if (!qword_10078AB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006609C0()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BagService();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContinuousClock();
      if (v2 <= 0x3F)
      {
        sub_100660B20();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100660B20()
{
  if (!qword_10078AB80)
  {
    type metadata accessor for ContinuousClock.Instant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10078AB80);
    }
  }
}

uint64_t sub_100660B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10078AC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100660BE8(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10078AC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100660C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10078AC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100660CC8()
{
  sub_1001F0C48(&qword_10078ACA0);

  return sub_10066000C();
}

uint64_t sub_100660D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IPA_PostambleTask()
{
  result = qword_10078AD00;
  if (!qword_10078AD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100660DFC()
{
  result = type metadata accessor for LogKey();
  if (v1 <= 0x3F)
  {
    result = sub_100660F28();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppInstall();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AppPackage();
        if (v4 <= 0x3F)
        {
          result = sub_100660F8C();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ManagedAppDeclarationStore();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for InstallCoordinationInstallObserver(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ProgressCache();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ManagedAppDeclarationStatusStore();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_100660F28()
{
  result = qword_10078AD10;
  if (!qword_10078AD10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10078AD10);
  }

  return result;
}

unint64_t sub_100660F8C()
{
  result = qword_10078AD18;
  if (!qword_10078AD18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10078AD18);
  }

  return result;
}

uint64_t sub_100661034@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v33 = a2;
  v35 = a1;
  v9 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AppInstall();
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IPA_PostambleTask();
  __chkstk_darwin(v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a4;
  *v17 = a4;
  sub_10020A980(a5, (v17 + 1));
  v18 = v15[8];
  v19 = a3;
  sub_100231CE8(a3, v17 + v18);
  v20 = v35;
  v21 = v36;
  sub_1003A85C8(v20, v14);
  v36 = v21;
  if (v21)
  {
    sub_10000710C(a5);

    sub_10000710C(v19);
    sub_10000710C((v17 + 1));
    return sub_10000710C(v17 + v18);
  }

  v23 = v11;
  v24 = v32;
  sub_100361FB4(v14, v17 + v15[6], type metadata accessor for AppInstall);
  v25 = [v20 persistentID];
  v26 = sub_1005AFEA0(v33, v25);
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v36;
  sub_1003A84AC(v26, v23);
  v36 = v27;
  if (v27)
  {

LABEL_8:
    v31 = type metadata accessor for AppPackage();
    result = (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
    __break(1u);
    return result;
  }

  v28 = type metadata accessor for AppPackage();
  (*(*(v28 - 8) + 56))(v23, 0, 1, v28);

  sub_10000710C(a5);
  sub_100361FB4(v23, v17 + v15[7], type metadata accessor for AppPackage);
  *(v17 + v15[9]) = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v29 = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
  *(v17 + v15[10]) = v29;
  *(v17 + v15[11]) = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v17 + v15[12]) = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  sub_100668F24(v17, v24);

  v30 = v29;

  sub_10000710C(v19);
  return sub_100668FA4(v17, type metadata accessor for IPA_PostambleTask);
}

uint64_t sub_100661400(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  sub_1001F0C48(&unk_100780380);
  v2[34] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequestType();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v2[42] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v2[47] = swift_task_alloc();
  v6 = type metadata accessor for DDMDeclaration(0);
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = type metadata accessor for IPA_PostambleTask();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v2[68] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[69] = v8;
  v2[70] = *(v8 - 8);
  v2[71] = swift_task_alloc();

  return _swift_task_switch(sub_10066189C, 0, 0);
}

uint64_t sub_10066189C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 264);
  v5 = *(*(v0 + 424) + 24);
  *(v0 + 872) = v5;
  v6 = type metadata accessor for AppInstall();
  *(v0 + 576) = v6;
  sub_100005934(v4 + *(v6 + 56) + v5, v3, &unk_100780A00);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 544), &unk_100780A00);
  }

  else
  {
    v7 = *(v0 + 568);
    v8 = *(v0 + 424);
    v9 = *(v0 + 264);
    (*(*(v0 + 560) + 32))(v7, *(v0 + 544), *(v0 + 552));
    v10 = *(*(v9 + *(v8 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers);
    *(swift_task_alloc() + 16) = v7;
    os_unfair_lock_lock((v10 + 24));
    sub_10064CD94((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
    v11 = *(v0 + 568);
    v12 = *(v0 + 560);
    v13 = *(v0 + 552);

    (*(v12 + 8))(v11, v13);
  }

  v14 = swift_task_alloc();
  *(v0 + 584) = v14;
  *v14 = v0;
  v14[1] = sub_100661AC0;

  return sub_100666600();
}

uint64_t sub_100661AC0()
{

  return _swift_task_switch(sub_100661BE8, 0, 0);
}

uint64_t sub_100661BE8()
{
  sub_100006D8C((*(v0 + 264) + 8), *(*(v0 + 264) + 32));
  if (sub_100364E28())
  {
    v1 = *(v0 + 576);
    v44 = *(v0 + 472);
    v2 = *(v0 + 264);
    v3 = v2 + *(v0 + 872);
    v4 = &v3[v1[22]];
    v5 = v4[1];
    v43 = *v4;
    v6 = (v2 + *(*(v0 + 424) + 32));
    sub_100006D8C(v6, v6[3]);
    v7 = &v3[v1[10]];
    v8 = *v7;
    v9 = v7[1];
    v10 = v1[21];
    v11 = *v2;

    v12 = sub_100365700(v8, v9, &v3[v10], v43, v5, v11);

    static Logger.install.getter();
    sub_100668F24(v2, v44);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 472);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      v19 = *v16;
      sub_100668FA4(v16, type metadata accessor for IPA_PostambleTask);
      *(v17 + 4) = v19;
      *v18 = v19;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Recorded app install event with result: %{BOOL}d", v17, 0x12u);
      sub_1000032A8(v18, &qword_10077F920);
    }

    else
    {

      sub_100668FA4(v16, type metadata accessor for IPA_PostambleTask);
    }

    v20 = (v0 + 536);
  }

  else
  {
    v20 = (v0 + 528);
    v21 = *(v0 + 464);
    v22 = *(v0 + 264);
    static Logger.install.getter();
    sub_100668F24(v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 464);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = *v26;
      sub_100668FA4(v26, type metadata accessor for IPA_PostambleTask);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Failed to record install event because we didn't have an installType", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    else
    {

      sub_100668FA4(v26, type metadata accessor for IPA_PostambleTask);
    }
  }

  v30 = *v20;
  v31 = *(v0 + 576);
  v32 = *(v0 + 480);
  v33 = *(v0 + 416);
  v34 = *(v0 + 264) + *(v0 + 872);
  v35 = *(*(v0 + 488) + 8);
  *(v0 + 592) = v35;
  v35(v30, v32);
  sub_100005934(v34 + *(v31 + 80), v33, &qword_10077E958);
  v36 = (v34 + *(v31 + 60));
  *(v0 + 600) = *v36;
  v37 = v36[1];
  *(v0 + 608) = v37;
  if (v37 && (v38 = *(v0 + 264), v39 = *(v38 + *(v0 + 872) + *(*(v0 + 576) + 116)), *(v0 + 885) = v39, v39 != 2))
  {
    v42 = *(v38 + *(*(v0 + 424) + 36));
    *(v0 + 616) = v42;

    return _swift_task_switch(sub_1006620EC, v42, 0);
  }

  else
  {
    v40 = swift_task_alloc();
    *(v0 + 776) = v40;
    *v40 = v0;
    v40[1] = sub_1006637C4;

    return sub_100666A6C();
  }
}

uint64_t sub_1006620EC()
{
  v1 = v0;
  v2 = v0[77];
  v3 = v0[76];
  v4 = v1[75];
  v5 = *(v2 + 112);
  v6 = swift_task_alloc();
  v1[78] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  v1[79] = v7;
  *v7 = v1;
  v7[1] = sub_100662208;
  v8 = v1[47];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_100662208()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_1006628C0;
  }

  else
  {

    v2 = sub_10066237C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10066237C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 376);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  (*(*(v0 + 392) + 56))(v4, 0, 1, *(v0 + 384));
  sub_100361FB4(v4, v3, type metadata accessor for DDMDeclaration);
  sub_100005934(v2, v1, &qword_10077E958);
  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    sub_1000032A8(*(v0 + 408), &qword_10077E958);
  }

  else
  {
    v7 = *(v0 + 640);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    (*(v11 + 32))(v9, *(v0 + 408), v10);
    sub_100006190(0, &qword_100784500);
    (*(v11 + 16))(v8, v9, v10);
    v12 = sub_10060EB8C(v8, 0);
    *(v0 + 648) = v12;
    if (!v7)
    {
      v20 = v12;
      v21 = *(v0 + 885);
      v37 = *(v0 + 264);
      v22 = *(v37 + *(*(v0 + 424) + 48));
      v23 = *v37;
      v24 = swift_task_alloc();
      *(v0 + 656) = v24;
      *v24 = v0;
      v25 = sub_1006629B8;
      goto LABEL_10;
    }

    v13 = *(v0 + 368);
    v14 = *(v0 + 344);
    v15 = *(v0 + 352);

    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  sub_100006190(0, &qword_100784500);
  v18 = sub_10060C720(v17, v16);
  *(v0 + 664) = v18;
  v19 = *(v0 + 264);
  if (v18)
  {
    v20 = v18;
    v21 = *(v0 + 885);
    v22 = *(v19 + *(*(v0 + 424) + 48));
    v23 = *v19;
    v24 = swift_task_alloc();
    *(v0 + 672) = v24;
    *v24 = v0;
    v25 = sub_100662C4C;
LABEL_10:
    v24[1] = v25;
    v38 = *(v0 + 400);

    return sub_1003E5984(v38, v20, v21 & 1, v22, v23);
  }

  v26 = *(v0 + 456);
  static Logger.install.getter();
  sub_100668F24(v19, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 592);
  v31 = *(v0 + 520);
  v32 = *(v0 + 480);
  v33 = *(v0 + 456);
  if (v29)
  {
    v45 = *(v0 + 592);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = *v33;
    sub_100668FA4(v33, type metadata accessor for IPA_PostambleTask);
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Installation completed, but record could not be found - skipping install notification!", v34, 0xCu);
    sub_1000032A8(v35, &qword_10077F920);

    v30 = v45;
  }

  else
  {

    sub_100668FA4(v33, type metadata accessor for IPA_PostambleTask);
  }

  v30(v31, v32);
  v40 = *(v0 + 264);
  v41 = *(*(v0 + 424) + 32);
  *(v0 + 876) = v41;
  v42 = *(*sub_100006D8C((v40 + v41), *(v40 + v41 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 680) = v42;
  v43 = swift_task_alloc();
  *(v0 + 688) = v43;
  *(v43 + 16) = v40;

  v44 = swift_task_alloc();
  *(v0 + 696) = v44;
  *v44 = v0;
  v44[1] = sub_100662EC0;

  return sub_10052EBA8(v44, sub_100668F88, v43, v42);
}

uint64_t sub_1006628C0()
{
  v1 = v0[47];
  (*(v0[49] + 56))(v1, 1, 1, v0[48]);
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = swift_task_alloc();
  v0[97] = v2;
  *v2 = v0;
  v2[1] = sub_1006637C4;

  return sub_100666A6C();
}

uint64_t sub_1006629B8()
{

  return _swift_task_switch(sub_100662AE0, 0, 0);
}

uint64_t sub_100662AE0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 264);
  v5 = *(*(v0 + 424) + 32);
  *(v0 + 876) = v5;
  v6 = *(*sub_100006D8C((v4 + v5), *(v4 + v5 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 680) = v6;
  v7 = swift_task_alloc();
  *(v0 + 688) = v7;
  *(v7 + 16) = v4;

  v8 = swift_task_alloc();
  *(v0 + 696) = v8;
  *v8 = v0;
  v8[1] = sub_100662EC0;

  return sub_10052EBA8(v8, sub_100668F88, v7, v6);
}

uint64_t sub_100662C4C()
{

  return _swift_task_switch(sub_100662D74, 0, 0);
}

uint64_t sub_100662D74()
{
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 424) + 32);
  *(v0 + 876) = v2;
  v3 = *(*sub_100006D8C((v1 + v2), *(v1 + v2 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installHistory);
  *(v0 + 680) = v3;
  v4 = swift_task_alloc();
  *(v0 + 688) = v4;
  *(v4 + 16) = v1;

  v5 = swift_task_alloc();
  *(v0 + 696) = v5;
  *v5 = v0;
  v5[1] = sub_100662EC0;

  return sub_10052EBA8(v5, sub_100668F88, v4, v3);
}

uint64_t sub_100662EC0()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_100665E00;
  }

  else
  {
    v2 = sub_100663044;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100663044()
{
  v1 = sub_1004DA6EC();
  v3 = v1;
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    *(v0 + 248) = v1;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  *(v0 + 712) = v2;
  v6 = (*(v0 + 264) + *(v0 + 876));
  v7 = v2;
  v8 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  *(v0 + 720) = v8;
  v9 = swift_task_alloc();
  *(v0 + 728) = v9;
  *(v9 + 16) = v5 & 1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v7;

  v10 = swift_task_alloc();
  *(v0 + 736) = v10;
  *v10 = v0;
  v10[1] = sub_1006631C8;

  return sub_10052EF68(v10, sub_100669004, v9, v8);
}

uint64_t sub_1006631C8()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_100666010;
  }

  else
  {
    v2 = sub_100663368;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100663368()
{
  v1 = *(v0 + 264);
  *(v0 + 752) = *(*sub_100006D8C((v1 + *(v0 + 876)), *(v1 + *(v0 + 876) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  *(v0 + 760) = *v1;
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_10066903C();

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100663460, v3, v2);
}

uint64_t sub_100663460()
{
  v1 = v0[42];
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  (*(*(updated - 8) + 56))(v1, 1, 1, updated);
  v3 = swift_task_alloc();
  v0[96] = v3;
  *v3 = v0;
  v3[1] = sub_100663574;
  v4 = v0[95];
  v5 = v0[50];
  v6 = v0[42];

  return sub_10030E4E0(v6, v5, 1, v4);
}

uint64_t sub_100663574()
{
  v1 = *(*v0 + 336);

  sub_1000032A8(v1, &qword_10077F3A0);

  return _swift_task_switch(sub_1006636EC, 0, 0);
}

uint64_t sub_1006636EC()
{
  sub_100668FA4(*(v0 + 400), type metadata accessor for DDMDeclaration);
  v1 = swift_task_alloc();
  *(v0 + 776) = v1;
  *v1 = v0;
  v1[1] = sub_1006637C4;

  return sub_100666A6C();
}

uint64_t sub_1006637C4()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_100666220;
  }

  else
  {
    v2 = sub_100663904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100663904()
{
  v1 = (*(v0 + 264) + *(v0 + 872) + *(*(v0 + 576) + 40));
  v2 = *v1;
  *(v0 + 792) = *v1;
  v3 = v1[1];
  *(v0 + 800) = v3;
  v4 = swift_task_alloc();
  *(v0 + 808) = v4;
  *v4 = v0;
  v4[1] = sub_1006639F8;

  return sub_1006674EC(v2, v3);
}

uint64_t sub_1006639F8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[102] = v3;
  *v3 = v2;
  v3[1] = sub_100663B90;
  v4 = v1[100];
  v5 = v1[99];

  return sub_100667E14(v5, v4);
}

uint64_t sub_100663B90()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_100666410;
  }

  else
  {
    v2 = sub_100663CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100663CD0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 264);
  v3 = v2 + *(v0 + 872);
  v4 = v3 + v1[41];
  v5 = *(v4 + 16);
  if (v5 != 255)
  {
    v6 = *v4;
    v7 = *(v4 + 8);
    if (v5)
    {
      v8 = &type metadata for WebDistributor;
      v9 = sub_100231E84();
    }

    else
    {
      v8 = &type metadata for NativeDistributor;
      v9 = sub_1003000A4();
    }

    v125 = *(v0 + 800);
    v130 = *(v0 + 424);
    *(v0 + 216) = v8;
    *(v0 + 224) = v9;
    *(v0 + 192) = v6;
    *(v0 + 200) = v7;
    sub_1001DFDBC((v0 + 192), v0 + 152);
    v25 = *(v3 + v1[43]);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    sub_100006D8C((v0 + 152), v27);
    v28 = v7;
    v29 = *(v26 + 40);
    v119 = v6;
    v30 = v28;
    sub_10032F7C8();
    v31 = v29(v27, v26);
    v33 = v32;
    sub_10000710C(v0 + 152);
    sub_10056D4A4(0, v31, v33, v25);

    v34 = (v2 + v130[8]);
    *(v0 + 832) = *(*sub_100006D8C(v34, v34[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v35 = *(*sub_100006D8C(v34, v34[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 840) = v35;

    v36 = swift_task_alloc();
    *(v0 + 848) = v36;
    *v36 = v0;
    v36[1] = sub_100664A10;
    v37 = *(v0 + 792);

    return sub_10066A1D8(v119, v30, v5 & 1, v35, v37, v125);
  }

  v10 = *(v0 + 824);
  if (*(v3 + v1[17]) == 1)
  {
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    objc_allocWithZone(LSApplicationRecord);

    v13 = sub_10049E57C(v12, v11, 0);
    if (v10)
    {
    }

    else if (v13)
    {
      v120 = v13;
      v38 = *(v0 + 576);
      v39 = *(v0 + 328);
      v40 = *(v0 + 304);
      v41 = *(v0 + 312);
      v42 = *(v0 + 264) + *(v0 + 872);
      v131 = [objc_allocWithZone(BAAppStoreClient) init];
      v43 = *(v38 + 84);
      v44 = *(v41 + 16);
      v44(v39, v42 + v43, v40);
      v45 = *(v41 + 88);
      v46 = v45(v39, v40);
      if (v46 == enum case for AppInstallRequestType.automaticInstall(_:))
      {
        v126 = 0;
        v47 = enum case for AppInstallRequestType.automaticUpdate(_:);
      }

      else
      {
        v47 = enum case for AppInstallRequestType.automaticUpdate(_:);
        if (v46 == enum case for AppInstallRequestType.install(_:))
        {
          v126 = 1;
        }

        else if (v46 == enum case for AppInstallRequestType.automaticUpdate(_:))
        {
          v126 = 0;
          v47 = v46;
        }

        else
        {
          v126 = 1;
          if (v46 != enum case for AppInstallRequestType.update(_:) && v46 != enum case for AppInstallRequestType.promotion(_:))
          {
            v126 = 0;
            if (v46 != enum case for AppInstallRequestType.restore(_:) && v46 != enum case for AppInstallRequestType.deviceVPP(_:) && v46 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v46 != enum case for AppInstallRequestType.userVPP(_:) && v46 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v46 != enum case for AppInstallRequestType.upp(_:) && v46 != enum case for AppInstallRequestType.restoreUpdate(_:))
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }
          }
        }
      }

      v48 = *(v0 + 320);
      v49 = *(v0 + 304);
      v50 = v42 + v43;
      v51 = v47;
      v44(v48, v50, v49);
      v52 = v45(v48, v49);
      v53 = 11;
      if (v52 == v51)
      {
        v54 = v120;
      }

      else
      {
        v54 = v120;
        if (v52 != enum case for AppInstallRequestType.update(_:))
        {
          v53 = 12;
          if (v52 != enum case for AppInstallRequestType.promotion(_:) && v52 != enum case for AppInstallRequestType.restore(_:))
          {
            (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
            v54 = v120;
            v53 = 10;
          }
        }
      }

      v56 = *(v0 + 288);
      v55 = *(v0 + 296);
      v57 = *(v0 + 280);
      v58 = v54;
      v59 = [v58 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = String._bridgeToObjectiveC()();
      URL._bridgeToObjectiveC()(v61);
      v63 = v62;
      v64 = objc_opt_self();
      v65 = [v64 descriptorWithAppBundleIdentifier:v60 appBundleURL:v63 event:v53 client:0];

      v66 = *(v56 + 8);
      v66(v55, v57);
      p_name = &stru_100779FF8.name;
      [v65 setAutomaticInstall:v126 ^ 1];
      [v65 setUserInitiated:v126];
      *(v0 + 232) = 0;
      v68 = [v131 performEventWithDescriptor:v65 error:v0 + 232];
      v69 = *(v0 + 232);
      if (v68)
      {
        v116 = v64;
        v70 = *(v0 + 448);
        v71 = *(v0 + 264);
        v72 = v69;
        static Logger.install.getter();
        sub_100668F24(v71, v70);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v0 + 448);
        if (v75)
        {
          v77 = swift_slowAlloc();
          v121 = v58;
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          v79 = *v76;
          sub_100668FA4(v76, type metadata accessor for IPA_PostambleTask);
          *(v77 + 4) = v79;
          *v78 = v79;
          _os_log_impl(&_mh_execute_header, v73, v74, "[%@] Sent event to Background Assets", v77, 0xCu);
          sub_1000032A8(v78, &qword_10077F920);
          v58 = v121;

          p_name = (&stru_100779FF8 + 8);
        }

        else
        {

          sub_100668FA4(v76, type metadata accessor for IPA_PostambleTask);
        }

        v81 = *(v0 + 296);
        v82 = *(v0 + 280);
        (*(v0 + 592))(*(v0 + 512), *(v0 + 480));
        v83 = [v58 URL];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = String._bridgeToObjectiveC()();
        URL._bridgeToObjectiveC()(v85);
        v87 = v86;
        v65 = [v116 descriptorWithAppBundleIdentifier:v84 appBundleURL:v86 event:30 client:0];

        v66(v81, v82);
        [v65 p_name[452]];
        [v65 setUserInitiated:v126];
        *(v0 + 240) = 0;
        v88 = [v131 performEventWithDescriptor:v65 error:v0 + 240];
        v89 = *(v0 + 240);
        if (v88)
        {
          v90 = *(v0 + 440);
          v91 = *(v0 + 264);
          v92 = v89;
          static Logger.install.getter();
          sub_100668F24(v91, v90);
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          v95 = os_log_type_enabled(v93, v94);
          v96 = *(v0 + 592);
          v97 = *(v0 + 504);
          v98 = *(v0 + 480);
          v99 = *(v0 + 440);
          if (v95)
          {
            v127 = *(v0 + 592);
            v100 = swift_slowAlloc();
            v117 = v97;
            v101 = swift_slowAlloc();
            *v100 = 138412290;
            v122 = v58;
            v102 = *v99;
            sub_100668FA4(v99, type metadata accessor for IPA_PostambleTask);
            *(v100 + 4) = v102;
            *v101 = v102;
            _os_log_impl(&_mh_execute_header, v93, v94, "[%@] Sent installed event to Background Assets", v100, 0xCu);
            sub_1000032A8(v101, &qword_10077F920);

            v127(v117, v98);
          }

          else
          {

            sub_100668FA4(v99, type metadata accessor for IPA_PostambleTask);
            v96(v97, v98);
          }

          goto LABEL_7;
        }

        v80 = v89;
      }

      else
      {
        v80 = v69;
      }

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v103 = *(v0 + 432);
      v104 = *(v0 + 264);

      static Logger.install.getter();
      sub_100668F24(v104, v103);
      swift_errorRetain();
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();

      v107 = os_log_type_enabled(v105, v106);
      v108 = *(v0 + 592);
      v109 = *(v0 + 496);
      v110 = *(v0 + 480);
      v111 = *(v0 + 432);
      if (v107)
      {
        v128 = *(v0 + 496);
        v112 = swift_slowAlloc();
        v123 = v58;
        v113 = swift_slowAlloc();
        *v112 = 138412546;
        v118 = v108;
        v114 = *v111;
        sub_100668FA4(v111, type metadata accessor for IPA_PostambleTask);
        *(v112 + 4) = v114;
        *v113 = v114;
        *(v112 + 12) = 2114;
        swift_errorRetain();
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v112 + 14) = v115;
        v113[1] = v115;
        _os_log_impl(&_mh_execute_header, v105, v106, "[%@] Failed to send perform event to Background Assets: %{public}@", v112, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        v118(v128, v110);
      }

      else
      {

        sub_100668FA4(v111, type metadata accessor for IPA_PostambleTask);
        v108(v109, v110);
      }
    }

LABEL_7:
    v10 = 0;
  }

  *(v0 + 856) = v10;
  v14 = *(v0 + 424);
  v15 = *(v0 + 264);
  v124 = *(v0 + 872);
  v129 = *(v15 + *(v14 + 44));
  v16 = *(*(v0 + 576) + 76);
  v17 = *(v14 + 32);
  *(v0 + 880) = v17;
  v18 = *(v15 + v17 + 24);
  v19 = *(v15 + v17 + 48);
  v20 = *(v15 + v17 + 72);
  v21 = *(v15 + v17 + 88);
  v22 = sub_100006D8C((v15 + v17), v18);
  v23 = swift_task_alloc();
  *(v0 + 864) = v23;
  *v23 = v0;
  v23[1] = sub_1006656F4;

  return sub_100387F08(v15 + v124 + v16, v22, v129, v18, v19, v20, v21);
}

uint64_t sub_100664A10()
{

  return _swift_task_switch(sub_100664B78, 0, 0);
}

uint64_t sub_100664B78()
{
  v1 = *(v0 + 824);
  if (*(*(v0 + 264) + *(v0 + 872) + *(*(v0 + 576) + 68)) == 1)
  {
    v2 = *(v0 + 800);
    v3 = *(v0 + 792);
    objc_allocWithZone(LSApplicationRecord);

    v4 = sub_10049E57C(v3, v2, 0);
    if (v1)
    {
    }

    else if (v4)
    {
      v97 = v4;
      v16 = v0;
      v17 = *(v0 + 576);
      v18 = *(v16 + 328);
      v19 = *(v16 + 304);
      v20 = *(v16 + 312);
      v21 = v16;
      v22 = *(v16 + 264) + *(v16 + 872);
      v105 = [objc_allocWithZone(BAAppStoreClient) init];
      v23 = *(v17 + 84);
      v24 = *(v20 + 16);
      v24(v18, v22 + v23, v19);
      v25 = *(v20 + 88);
      v26 = v25(v18, v19);
      if (v26 == enum case for AppInstallRequestType.automaticInstall(_:))
      {
        v101 = 0;
        v27 = enum case for AppInstallRequestType.automaticUpdate(_:);
        v0 = v21;
      }

      else
      {
        v27 = enum case for AppInstallRequestType.automaticUpdate(_:);
        v0 = v21;
        if (v26 == enum case for AppInstallRequestType.install(_:))
        {
          v101 = 1;
        }

        else if (v26 == enum case for AppInstallRequestType.automaticUpdate(_:))
        {
          v101 = 0;
          v27 = v26;
        }

        else
        {
          v101 = 1;
          if (v26 != enum case for AppInstallRequestType.update(_:) && v26 != enum case for AppInstallRequestType.promotion(_:))
          {
            v101 = 0;
            if (v26 != enum case for AppInstallRequestType.restore(_:) && v26 != enum case for AppInstallRequestType.deviceVPP(_:) && v26 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v26 != enum case for AppInstallRequestType.userVPP(_:) && v26 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v26 != enum case for AppInstallRequestType.upp(_:) && v26 != enum case for AppInstallRequestType.restoreUpdate(_:))
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }
          }
        }
      }

      v28 = *(v0 + 320);
      v29 = *(v0 + 304);
      v30 = v22 + v23;
      v31 = v27;
      v24(v28, v30, v29);
      v32 = v25(v28, v29);
      v33 = 11;
      if (v32 == v31)
      {
        v34 = v97;
        v35 = v105;
      }

      else
      {
        v34 = v97;
        v35 = v105;
        if (v32 != enum case for AppInstallRequestType.update(_:))
        {
          v33 = 12;
          if (v32 != enum case for AppInstallRequestType.promotion(_:) && v32 != enum case for AppInstallRequestType.restore(_:))
          {
            (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
            v34 = v97;
            v33 = 10;
          }
        }
      }

      v37 = *(v0 + 288);
      v36 = *(v0 + 296);
      v38 = *(v0 + 280);
      v39 = v34;
      v40 = [v39 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = String._bridgeToObjectiveC()();
      URL._bridgeToObjectiveC()(v42);
      v44 = v43;
      v94 = objc_opt_self();
      v45 = [v94 descriptorWithAppBundleIdentifier:v41 appBundleURL:v44 event:v33 client:0];

      v46 = *(v37 + 8);
      v46(v36, v38);
      [v45 setAutomaticInstall:v101 ^ 1];
      [v45 setUserInitiated:v101];
      *(v0 + 232) = 0;
      v47 = [v35 performEventWithDescriptor:v45 error:v0 + 232];
      v48 = *(v0 + 232);
      if (v47)
      {
        v98 = v39;
        v49 = *(v0 + 448);
        v50 = *(v0 + 264);
        v51 = v48;
        static Logger.install.getter();
        sub_100668F24(v50, v49);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        v54 = os_log_type_enabled(v52, v53);
        v55 = *(v0 + 448);
        if (v54)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          v58 = *v55;
          sub_100668FA4(v55, type metadata accessor for IPA_PostambleTask);
          *(v56 + 4) = v58;
          *v57 = v58;
          _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Sent event to Background Assets", v56, 0xCu);
          sub_1000032A8(v57, &qword_10077F920);
          v35 = v105;
        }

        else
        {

          sub_100668FA4(v55, type metadata accessor for IPA_PostambleTask);
        }

        v60 = *(v0 + 296);
        v61 = *(v0 + 280);
        (*(v0 + 592))(*(v0 + 512), *(v0 + 480));
        v62 = [v98 URL];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = String._bridgeToObjectiveC()();
        URL._bridgeToObjectiveC()(v64);
        v66 = v65;
        v45 = [v94 descriptorWithAppBundleIdentifier:v63 appBundleURL:v65 event:30 client:0];

        v46(v60, v61);
        [v45 setAutomaticInstall:v101 ^ 1];
        [v45 setUserInitiated:v101];
        *(v0 + 240) = 0;
        v67 = [v35 performEventWithDescriptor:v45 error:v0 + 240];
        v68 = *(v0 + 240);
        if (v67)
        {
          v69 = *(v0 + 440);
          v70 = *(v0 + 264);
          v71 = v68;
          static Logger.install.getter();
          sub_100668F24(v70, v69);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();
          v74 = os_log_type_enabled(v72, v73);
          v75 = *(v0 + 592);
          v76 = *(v0 + 504);
          v77 = *(v0 + 480);
          v78 = *(v0 + 440);
          if (v74)
          {
            v102 = *(v0 + 592);
            v79 = swift_slowAlloc();
            v95 = v76;
            v80 = swift_slowAlloc();
            *v79 = 138412290;
            v81 = *v78;
            sub_100668FA4(v78, type metadata accessor for IPA_PostambleTask);
            *(v79 + 4) = v81;
            *v80 = v81;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%@] Sent installed event to Background Assets", v79, 0xCu);
            sub_1000032A8(v80, &qword_10077F920);

            v102(v95, v77);
          }

          else
          {

            sub_100668FA4(v78, type metadata accessor for IPA_PostambleTask);
            v75(v76, v77);
          }

          goto LABEL_4;
        }

        v59 = v68;
        v39 = v98;
      }

      else
      {
        v59 = v48;
      }

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v82 = *(v0 + 432);
      v83 = *(v0 + 264);

      static Logger.install.getter();
      sub_100668F24(v83, v82);
      swift_errorRetain();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 592);
      v103 = *(v0 + 496);
      v88 = *(v0 + 480);
      v89 = *(v0 + 432);
      if (v86)
      {
        v96 = *(v0 + 592);
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412546;
        v99 = v39;
        v92 = *v89;
        sub_100668FA4(v89, type metadata accessor for IPA_PostambleTask);
        *(v90 + 4) = v92;
        *v91 = v92;
        *(v90 + 12) = 2114;
        swift_errorRetain();
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v90 + 14) = v93;
        v91[1] = v93;
        _os_log_impl(&_mh_execute_header, v84, v85, "[%@] Failed to send perform event to Background Assets: %{public}@", v90, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        v96(v103, v88);
      }

      else
      {

        sub_100668FA4(v89, type metadata accessor for IPA_PostambleTask);
        v87(v103, v88);
      }
    }

LABEL_4:
    v1 = 0;
  }

  *(v0 + 856) = v1;
  v5 = *(v0 + 424);
  v6 = *(v0 + 264);
  v100 = *(v0 + 872);
  v104 = *(v6 + *(v5 + 44));
  v7 = *(*(v0 + 576) + 76);
  v8 = *(v5 + 32);
  *(v0 + 880) = v8;
  v9 = *(v6 + v8 + 24);
  v10 = *(v6 + v8 + 48);
  v11 = *(v6 + v8 + 72);
  v12 = *(v6 + v8 + 88);
  v13 = sub_100006D8C((v6 + v8), v9);
  v14 = swift_task_alloc();
  *(v0 + 864) = v14;
  *v14 = v0;
  v14[1] = sub_1006656F4;

  return sub_100387F08(v6 + v100 + v7, v13, v104, v9, v10, v11, v12);
}

uint64_t sub_1006656F4()
{

  return _swift_task_switch(sub_10066581C, 0, 0);
}

uint64_t sub_10066581C()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  objc_allocWithZone(LSApplicationRecord);

  v4 = sub_10049E57C(v3, v2, 0);
  if (v1)
  {
    sub_1000032A8(*(v0 + 416), &qword_10077E958);

    v5 = *(v0 + 8);
    goto LABEL_16;
  }

  v6 = v4;
  if (([v4 isPlaceholder] & 1) == 0)
  {
    v7 = [v6 iTunesMetadata];
    v8 = [v7 distributorInfo];

    v9 = [v8 distributorID];
    if (v9)
    {
      v10 = *(v0 + 800);
      v11 = *(v0 + 792);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v11 == v12 && v10 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v17 = *(v0 + 416);
      v19 = *(v0 + 264);
      v18 = *(v0 + 272);
      v20 = (v19 + *(v0 + 880));
      v21 = *(*sub_100006D8C(v20, v20[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_restoreManager);
      v22 = *v19;
      *(v0 + 884) = 1;
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      sub_10020A980((v19 + 1), v0 + 112);
      sub_100231CE8(v20, v0 + 16);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = v22;
      sub_1001DFDBC((v0 + 112), v24 + 48);
      *(v24 + 88) = 2;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      *(v24 + 128) = 0u;
      *(v24 + 144) = *(v0 + 884);
      sub_100231D54((v0 + 16), (v24 + 152));
      *(v24 + 248) = 2;
      swift_retain_n();
      v25 = v22;
      sub_100494DB4(0, 0, v18, &unk_1006AC280, v24);

      goto LABEL_14;
    }

LABEL_11:
    v17 = *(v0 + 416);

LABEL_14:
    sub_1000032A8(v17, &qword_10077E958);
    goto LABEL_15;
  }

  sub_1000032A8(*(v0 + 416), &qword_10077E958);

LABEL_15:
  type metadata accessor for AppInstallTaskResult();
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);
LABEL_16:

  return v5();
}

uint64_t sub_100665E00()
{
  v1 = v0[52];
  sub_100668FA4(v0[50], type metadata accessor for DDMDeclaration);
  sub_1000032A8(v1, &qword_10077E958);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100666010()
{
  v1 = v0[52];
  sub_100668FA4(v0[50], type metadata accessor for DDMDeclaration);
  sub_1000032A8(v1, &qword_10077E958);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100666220()
{
  sub_1000032A8(*(v0 + 416), &qword_10077E958);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100666410()
{
  sub_1000032A8(*(v0 + 416), &qword_10077E958);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100666600()
{
  v1[2] = v0;
  sub_1001F0C48(&qword_10077E958);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for FilePath();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100666704, 0, 0);
}

uint64_t sub_100666704()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for IPA_PostambleTask() + 24);
  v3 = type metadata accessor for AppInstall();
  if (*(v2 + v3[37]) == 2)
  {
    v4 = (v2 + v3[36]);
    v5 = v4[1];
    if (v5 >> 60 != 15)
    {
      v6 = *v4;
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[3];
      v10 = v3;
      sub_100005934(v2 + v3[20], v9, &qword_10077E958);
      if ((*(v8 + 48))(v9, 1, v7) == 1)
      {
        v11 = v0[3];
        sub_10020ABFC(v6, v5);
        sub_1000032A8(v11, &qword_10077E958);
        sub_100493024(*(v2 + v10[10]), *(v2 + v10[10] + 8), *(v2 + v10[32]), *(v2 + v10[32] + 8), v6, v5);
        sub_1001CEE68(v6, v5);
      }

      else
      {
        v13 = v0[6];
        v12 = v0[7];
        v14 = v0[4];
        v15 = v0[5];
        (*(v15 + 32))(v12, v0[3], v14);
        sub_100006190(0, &qword_100784500);
        (*(v15 + 16))(v13, v12, v14);
        sub_10020ABFC(v6, v5);
        v16 = sub_10060EB8C(v13, 0);
        v17 = v0[7];
        v18 = v0[4];
        v19 = v0[5];
        v22 = v16;
        sub_1004932B0(v16, *(v2 + v10[32]), *(v2 + v10[32] + 8), v6, v5);

        sub_1001CEE68(v6, v5);
        (*(v19 + 8))(v17, v18);
      }
    }
  }

  v20 = v0[1];

  return v20();
}

void sub_100666980(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a2 + *(type metadata accessor for IPA_PostambleTask() + 24);
  v5 = (v4 + *(type metadata accessor for AppInstall() + 40));
  v6 = *v5;
  v7 = v5[1];
  v8 = v3;

  v9 = sub_100619E6C(0, 0, v6, v7, sub_100619DF8, 0, v8);

  if (v9)
  {

    v8 = v9;
  }

  else
  {

    v10 = sub_100564C98(0, v6, v7, v8);
    if (!v2)
    {
    }
  }
}

uint64_t sub_100666A6C()
{
  v1[19] = v0;
  v1[20] = type metadata accessor for IPA_PostambleTask();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_10078AD68);
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_100666BF4, 0, 0);
}

uint64_t sub_100666BF4()
{
  v1 = v0[19] + *(v0[20] + 24);
  if (*(v1 + *(type metadata accessor for AppInstall() + 148)) == 1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v7 = [objc_allocWithZone(AMSUniversalLinks) init];
    v8 = [v7 updateUniversalLinks];
    v0[32] = v8;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100666EA8;
    swift_continuation_init();
    v0[17] = v6;
    v9 = sub_10020A748(v0 + 14);
    sub_100006190(0, &qword_10078AD70);
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(v9, v4, v6);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100668CF8;
    v0[13] = &unk_100770178;
    [v8 resultWithCompletion:?];
    (*(v5 + 8))(v9, v6);

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100666EA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100667294;
  }

  else
  {
    v2 = sub_100666FB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100666FB8()
{
  v1 = *(v0 + 144);

  v2 = [v1 success];
  v3 = *(v0 + 152);
  if (v2)
  {
    v4 = (v0 + 224);
    v5 = *(v0 + 184);
    static Logger.install.getter();
    sub_100668F24(v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 184);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = *v9;
      sub_100668FA4(v9, type metadata accessor for IPA_PostambleTask);
      *(v10 + 4) = v12;
      *v11 = v12;
      v13 = "[%@] Successfully updated AMS universal links";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v13, v10, 0xCu);
      sub_1000032A8(v11, &qword_10077F920);

      goto LABEL_8;
    }
  }

  else
  {
    v4 = (v0 + 216);
    v14 = *(v0 + 176);
    static Logger.install.getter();
    sub_100668F24(v3, v14);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 176);
    if (v15)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v16 = *v9;
      sub_100668FA4(v9, type metadata accessor for IPA_PostambleTask);
      *(v10 + 4) = v16;
      *v11 = v16;
      v13 = "[%@] Unsuccessfully updated AMS universal links";
      goto LABEL_6;
    }
  }

  sub_100668FA4(v9, type metadata accessor for IPA_PostambleTask);
LABEL_8:
  (*(*(v0 + 200) + 8))(*v4, *(v0 + 192));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100667294()
{
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  static Logger.install.getter();
  sub_100668F24(v3, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *v7;
    sub_100668FA4(v7, type metadata accessor for IPA_PostambleTask);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to update AMS universal links: %{public}@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_100668FA4(v7, type metadata accessor for IPA_PostambleTask);
  }

  (*(v0[25] + 8))(v0[26], v0[24]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1006674EC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1001F0C48(&unk_100784B60);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for IPA_PostambleTask();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100667660, 0, 0);
}

uint64_t sub_100667660()
{
  v1 = v0[20];
  v2 = v1 + *(v0[24] + 24);
  if (*(v2 + *(type metadata accessor for AppInstall() + 96)) == 1)
  {
    v3 = v0[26];
    static Logger.install.getter();
    sub_100668F24(v1, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[26];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *v7;
      sub_100668FA4(v7, type metadata accessor for IPA_PostambleTask);
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Notifying Game Center of app install", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    else
    {

      sub_100668FA4(v7, type metadata accessor for IPA_PostambleTask);
    }

    v13 = v0[30];
    v14 = v0[27];
    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[21];
    v18 = *(v0[28] + 8);
    v0[31] = v18;
    v18(v13, v14);
    v21 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v0[32] = v19;
    v0[2] = v0;
    v0[3] = sub_100667A0C;
    swift_continuation_init();
    v0[17] = v17;
    v20 = sub_10020A748(v0 + 14);
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v16 + 32))(v20, v15, v17);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10041D918;
    v0[13] = &unk_100770150;
    [v21 notifyOfGameCenterEnabledAppInstall:v19 withCompletionHandler:v0 + 10];
    (*(v16 + 8))(v20, v17);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100667A0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100667BB4;
  }

  else
  {
    v2 = sub_100667B1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100667B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100667BB4()
{
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[20];
  swift_willThrow();

  static Logger.install.getter();
  sub_100668F24(v3, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  v8 = v0[29];
  v9 = v0[27];
  v10 = v0[25];
  if (v6)
  {
    v18 = v0[31];
    v11 = swift_slowAlloc();
    v17 = v8;
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *v10;
    sub_100668FA4(v10, type metadata accessor for IPA_PostambleTask);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to notify Game Center of app install: %{public}@", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
    v8 = v17;

    v7 = v18;
  }

  else
  {

    sub_100668FA4(v10, type metadata accessor for IPA_PostambleTask);
  }

  v7(v8, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100667E14(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = type metadata accessor for IPA_PostambleTask();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100667F94, 0, 0);
}

uint64_t sub_100667F94()
{
  v1 = v0[22];
  v2 = v0[23];
  objc_allocWithZone(LSApplicationRecord);

  v3 = sub_10049E57C(v1, v2, 0);
  v0[37] = v3;
  if (v3)
  {
    if ([v3 isManagedAppDistributor])
    {
      v7 = v0[22];
      v6 = v0[23];
      v8 = (v0[24] + *(v0[25] + 32));
      sub_100006D8C(v8, v8[3]);

      sub_100650534(v7, v6);
    }

    v10 = v0[22];
    v9 = v0[23];
    v11 = (v0[24] + *(v0[25] + 32));
    v12 = *(*sub_100006D8C(v11, v11[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
    v0[38] = v12;
    v13 = swift_task_alloc();
    v0[39] = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;

    v14 = swift_task_alloc();
    v0[40] = v14;
    *v14 = v0;
    v14[1] = sub_100668474;

    return sub_10052C9E4(sub_10052C9E4, sub_100669094, v13, v12);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100668474()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100668C34;
  }

  else
  {
    v2 = sub_1006685C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006685C4()
{
  v56 = v0;
  v1 = *(v0 + 192) + *(*(v0 + 200) + 24);
  v2 = type metadata accessor for AppInstall();
  v3 = (v1 + *(v2 + 164));
  v4 = *(v3 + 16);
  if (v4 == 255)
  {
    goto LABEL_11;
  }

  v5 = v2;
  v6 = *v3;
  v7 = v3[1];
  if (v4)
  {
    v8 = &type metadata for WebDistributor;
    v9 = sub_100231E84();
  }

  else
  {
    v8 = &type metadata for NativeDistributor;
    v9 = sub_1003000A4();
  }

  *(v0 + 80) = v8;
  *(v0 + 88) = v9;
  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  sub_1001DFDBC((v0 + 56), v0 + 16);
  sub_10032F7C8();
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
  }

  else if (*(v1 + *(v5 + 172)) != 1)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (*(v1 + 48) == 1)
  {
    goto LABEL_11;
  }

  if (!*(v1 + *(v5 + 88) + 8))
  {
    goto LABEL_11;
  }

  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 272);
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  if (v15 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v18 = *(v0 + 328);
  static TokenHandoff.handoffPODToken(tokenData:advertisedItemID:)();
  v19 = *(v0 + 192);
  if (v18)
  {
    v20 = *(v0 + 208);
    static Logger.install.getter();
    sub_100668F24(v19, v20);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 240);
    v53 = *(v0 + 248);
    v25 = *(v0 + 232);
    v26 = *(v0 + 208);
    if (v23)
    {
      v49 = *(v0 + 296);
      v51 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v48;
      *v27 = 138412546;
      v47 = v22;
      v28 = *v26;
      sub_100668FA4(v26, type metadata accessor for IPA_PostambleTask);
      *(v27 + 4) = v28;
      *v46 = v28;
      *(v27 + 12) = 2082;
      swift_getErrorValue();
      log = v21;
      v29 = *(*(v0 + 104) - 8);
      swift_task_alloc();
      (*(v29 + 16))();
      v30 = String.init<A>(describing:)();
      v32 = v31;

      v33 = sub_1002346CC(v30, v32, &v55);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@] Error handing off token: %{public}s", v27, 0x16u);
      sub_1000032A8(v46, &qword_10077F920);

      sub_10000710C(v48);

      sub_1001CEE68(v13, v15);

      (*(v24 + 8))(v53, v51);
    }

    else
    {

      sub_1001CEE68(v13, v15);

      sub_100668FA4(v26, type metadata accessor for IPA_PostambleTask);
      (*(v24 + 8))(v53, v25);
    }
  }

  else
  {
    v34 = *(v0 + 224);
    static Logger.install.getter();
    sub_100668F24(v19, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 264);
    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    v41 = *(v0 + 224);
    if (v37)
    {
      v52 = *(v0 + 296);
      v54 = *(v0 + 232);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v50 = v38;
      v44 = *v41;
      sub_100668FA4(v41, type metadata accessor for IPA_PostambleTask);
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Successfully handed off token", v42, 0xCu);
      sub_1000032A8(v43, &qword_10077F920);

      sub_1001CEE68(v13, v15);
      (*(v39 + 8))(v50, v54);
    }

    else
    {

      sub_1001CEE68(v13, v15);
      sub_100668FA4(v41, type metadata accessor for IPA_PostambleTask);
      (*(v39 + 8))(v38, v40);
    }
  }

LABEL_12:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100668C34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100668CF8(uint64_t a1, void *a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_10078AD68);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1001F0C48(&qword_10078AD68);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100668DA8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v12 = sub_1001F0C48(&qword_10077F9E0);
  v13 = sub_10038A048();
  LOWORD(v10) = 2;
  *(&v10 + 1) = a2;
  v11 = a3;
  sub_1001F0C48(&qword_10077F9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v10, inited + 32);
  sub_1001F0C48(&qword_10077F9F8);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10069E680;
  *(v7 + 32) = inited;

  v8 = sub_1005AEA0C(v7);
  swift_setDeallocating();
  sub_1000032A8(v7 + 32, &qword_10077FA00);
  v9 = sub_1003D3BE8(0, 0, v8, sub_1003D3B74, 0, v5);

  if (v9)
  {
    [v9 deleteFromDatabase];
  }
}

uint64_t sub_100668F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPA_PostambleTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100668FA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10066903C()
{
  result = qword_100780A90;
  if (!qword_100780A90)
  {
    type metadata accessor for ManagedAppDeclarationStatusStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780A90);
  }

  return result;
}

unint64_t sub_1006690D4(uint64_t a1)
{
  result = sub_1006690FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006690FC()
{
  result = qword_10077EA80;
  if (!qword_10077EA80)
  {
    type metadata accessor for ContinuousClock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EA80);
  }

  return result;
}

uint64_t sub_100669154(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1006691B4()
{

  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService;
  v2 = type metadata accessor for BagService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_continuousClock;
  v4 = type metadata accessor for ContinuousClock();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 64);
  v10[0] = v5;
  *(v10 + 15) = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 95);
  v6 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 32);
  v9[3] = v7;
  sub_10020A92C(v9);

  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, &qword_1007812A0);

  return v0;
}

uint64_t sub_100669468()
{
  sub_1006691B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Dependencies()
{
  result = qword_10078ADA0;
  if (!qword_10078ADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100669518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1006510C4(a1, v4, v5, v6);
}

uint64_t sub_1006695CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Container();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100669630(uint64_t a1)
{
  v2 = type metadata accessor for Container();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10066969C(uint64_t a1)
{
  v68 = type metadata accessor for AppProgress();
  v81 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for XPCClientMessage();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v75 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v64 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v49 - v10;
  updated = type metadata accessor for AppStateUpdateIdentifier();
  v12 = *(updated - 8);
  v13 = __chkstk_darwin(updated);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v51 = sub_1001F0C48(&qword_10077F378);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v79 = &v49 - v17;
  v49 = type metadata accessor for RegisteredXPCClient();
  v54 = *(v49 - 8);
  __chkstk_darwin(v49);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 16));
  v20 = *(v1 + 24);

  v21 = (v1 + 16);
  v22 = v6;
  os_unfair_lock_unlock(v21);
  v23 = 0;
  v25 = v20 + 64;
  v24 = *(v20 + 64);
  v56 = v20;
  v26 = 1 << *(v20 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v72 = (v7 + 32);
  v73 = (v12 + 32);
  v70 = (v12 + 8);
  v71 = (v7 + 8);
  v61 = (v12 + 16);
  v62 = (v7 + 16);
  v30 = v16;
  v60 = (v81 + 1);
  v65 = v4;
  v59 = v4 + 32;
  v55 = a1;
  v69 = v22;
  v53 = v20 + 64;
  v52 = v29;
  v80 = v19;
  v31 = v74;
  while (v28)
  {
LABEL_10:
    v57 = v28;
    v58 = v23;
    sub_10066FC84(*(v56 + 56) + *(v54 + 72) * (__clz(__rbit64(v28)) | (v23 << 6)), v19, type metadata accessor for RegisteredXPCClient);
    v33 = *(a1 + 16);
    if (v33)
    {
      v34 = *(v51 + 48);
      v77 = v79 + *(v51 + 64);
      v78 = v34;
      v35 = a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v76 = *(v50 + 72);
      v81 = _swiftEmptyArrayStorage;
      do
      {
        v36 = v79;
        sub_100005934(v35, v79, &qword_10077F378);
        v37 = *v77;
        v38 = *(v77 + 8);
        v39 = *(v77 + 16);
        (*v73)(v30, v36, updated);
        (*v72)(v31, v36 + v78, v22);
        v40 = v22;
        v41 = sub_10066C6A8(v30, v37, v38, v39);
        sub_1003C7500(v37, v38, v39);
        if (v41)
        {
          (*v62)(v64, v31, v40);
          (*v61)(v63, v30, updated);
          v42 = v67;
          AppProgress.init(state:identifier:)();
          static XPCClientMessage.appProgress(_:)();
          (*v60)(v42, v68);
          v43 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100362D80(0, v43[2] + 1, 1, v43);
          }

          v45 = v43[2];
          v44 = v43[3];
          v81 = v43;
          if (v45 >= v44 >> 1)
          {
            v81 = sub_100362D80(v44 > 1, v45 + 1, 1, v81);
          }

          v46 = v69;
          (*v71)(v31, v69);
          (*v70)(v30, updated);
          v47 = v81;
          v81[2] = v45 + 1;
          v22 = v46;
          (*(v65 + 32))(v47 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45, v75, v66);
        }

        else
        {
          (*v71)(v31, v40);
          (*v70)(v30, updated);
          v22 = v40;
        }

        v35 += v76;
        --v33;
      }

      while (v33);
    }

    else
    {
      v81 = _swiftEmptyArrayStorage;
    }

    v19 = v80;
    v48 = v81;
    if (v81[2])
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessages(_:)(v48);
      v22 = v69;
    }

    v28 = (v57 - 1) & v57;

    sub_10066FCEC(v19, type metadata accessor for RegisteredXPCClient);
    a1 = v55;
    v25 = v53;
    v23 = v58;
    v29 = v52;
  }

  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      return;
    }

    v28 = *(v25 + 8 * v32);
    ++v23;
    if (v28)
    {
      v23 = v32;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100669F00(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100659A28(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_100669F8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100659B20(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DownloadRequest() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100670958(v11, a2, type metadata accessor for DownloadRequest);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10066A0C0@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_10066A1D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_10066A204, 0, 0);
}

uint64_t sub_10066A204()
{
  v12 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 16));
  sub_10066F154((v1 + 24), v3, v4, v2 & 1, &v11);
  v5 = *(v0 + 48);
  v10 = *(v0 + 32);
  os_unfair_lock_unlock((v1 + 16));
  v6 = v11;
  *(v0 + 64) = v11;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v10;
  *(v7 + 40) = v5;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_10066A370;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10066A370()
{

  return _swift_task_switch(sub_10066A4A4, 0, 0);
}

uint64_t sub_10066A4B8(uint64_t a1)
{
  v170 = a1;
  v153 = type metadata accessor for AppState();
  v200 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v134[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = type metadata accessor for AppProgress();
  v198 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v134[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = type metadata accessor for XPCClientMessage();
  v156 = *(v149 - 8);
  __chkstk_darwin(v149);
  v157 = &v134[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for AppStateUpdateIdentifier();
  v195 = *(updated - 8);
  v5 = __chkstk_darwin(updated);
  v148 = &v134[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v174 = &v134[-v7];
  v199 = type metadata accessor for MessageRegistration();
  v8 = *(v199 - 8);
  v9 = __chkstk_darwin(v199);
  v11 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v192 = &v134[-v12];
  v147 = type metadata accessor for ProgressCache.Progress();
  v169 = *(v147 - 8);
  v13 = __chkstk_darwin(v147);
  v146 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v196 = &v134[-v16];
  __chkstk_darwin(v15);
  v168 = &v134[-v17];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v166 = &v134[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1001F0C48(&qword_10078B008);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v134[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v134[-v25];
  v179 = type metadata accessor for RegisteredXPCClient();
  v139 = *(v179 - 8);
  v27 = __chkstk_darwin(v179);
  v29 = &v134[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v138 = &v134[-v30];
  v31 = sub_1001F0C48(&qword_10078B010);
  v32 = __chkstk_darwin(v31 - 8);
  v142 = &v134[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v141 = &v134[-v34];
  os_unfair_lock_lock((v1 + 16));
  v35 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  v36 = 0;
  v191 = 0;
  v38 = v35 + 64;
  v37 = *(v35 + 64);
  v140 = v35;
  v39 = 1 << *(v35 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v136 = (v39 + 63) >> 6;
  v181 = v170 + 64;
  v165 = v19 + 16;
  v164 = v19 + 32;
  v190 = v8 + 16;
  v189 = v8 + 32;
  v188 = v8 + 88;
  v187 = enum case for MessageRegistration.appStateChange(_:);
  v173 = enum case for MessageRegistration.appCatalog(_:);
  v163 = enum case for MessageRegistration.ageRating(_:);
  v161 = enum case for MessageRegistration.globalAppProgress(_:);
  v160 = enum case for MessageRegistration.logging(_:);
  v193 = v8;
  v172 = (v8 + 96);
  v42 = v26;
  v176 = enum case for AppStateUpdateIdentifier.managedAppDistribution(_:);
  v175 = (v195 + 104);
  v171 = (v195 + 8);
  v135 = enum case for MessageRegistration.packageCatalog(_:);
  v145 = (v200 + 16);
  v144 = (v198 + 8);
  v143 = v156 + 32;
  v43 = v24;
  v167 = v19;
  v178 = (v19 + 8);
  v183 = v24;
  v182 = v26;
  v137 = v38;
  v197 = v11;
  v162 = v18;
  v180 = v29;
LABEL_6:
  if (v41)
  {
    v44 = v43;
    v155 = v36;
    v45 = v36;
    v46 = v142;
    goto LABEL_16;
  }

  if (v136 <= v36 + 1)
  {
    v47 = v36 + 1;
  }

  else
  {
    v47 = v136;
  }

  v48 = v47 - 1;
  v46 = v142;
  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= v136)
    {
      v44 = v43;
      v130 = sub_1001F0C48(&qword_10078B018);
      (*(*(v130 - 8) + 56))(v46, 1, 1, v130);
      v154 = 0;
      v155 = v48;
      goto LABEL_17;
    }

    v41 = *(v38 + 8 * v45);
    ++v36;
    if (v41)
    {
      v44 = v43;
      v155 = v45;
LABEL_16:
      v154 = (v41 - 1) & v41;
      v49 = __clz(__rbit64(v41)) | (v45 << 6);
      v50 = *(v140 + 56);
      v51 = (*(v140 + 48) + 48 * v49);
      v53 = v51[1];
      v52 = v51[2];
      v203 = *v51;
      v204 = v53;
      v205 = v52;
      v54 = v138;
      sub_10066FC84(v50 + *(v139 + 72) * v49, v138, type metadata accessor for RegisteredXPCClient);
      v55 = sub_1001F0C48(&qword_10078B018);
      v56 = *(v55 + 48);
      v57 = v204;
      *v46 = v203;
      v46[1] = v57;
      v46[2] = v205;
      sub_100670958(v54, v46 + v56, type metadata accessor for RegisteredXPCClient);
      (*(*(v55 - 8) + 56))(v46, 0, 1, v55);
      sub_1002FAF54(&v203, v201);
LABEL_17:
      v58 = v141;
      sub_10020A668(v46, v141, &qword_10078B010);
      v59 = sub_1001F0C48(&qword_10078B018);
      if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
      {
      }

      v60 = v58[1];
      v203 = *v58;
      v204 = v60;
      v205 = v58[2];
      sub_1002FAFB0(&v203);
      sub_100670958(v58 + *(v59 + 48), v29, type metadata accessor for RegisteredXPCClient);
      v61 = 1 << *(v170 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & *(v170 + 64);
      v159 = (v61 + 63) >> 6;

      v64 = 0;
      v158 = _swiftEmptyArrayStorage;
      v65 = v196;
      v43 = v44;
      while (2)
      {
        if (!v63)
        {
          if (v159 <= v64 + 1)
          {
            v67 = v64 + 1;
          }

          else
          {
            v67 = v159;
          }

          v68 = v67 - 1;
          while (1)
          {
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_71;
            }

            if (v66 >= v159)
            {
              v80 = v18;
              v127 = sub_1001F0C48(&qword_10078B020);
              (*(*(v127 - 8) + 56))(v43, 1, 1, v127);
              v63 = 0;
              v64 = v68;
              goto LABEL_35;
            }

            v63 = *(v181 + 8 * v66);
            ++v64;
            if (v63)
            {
              v64 = v66;
              goto LABEL_34;
            }
          }
        }

        v66 = v64;
LABEL_34:
        v69 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v70 = v69 | (v66 << 6);
        v71 = v170;
        v72 = v167;
        v73 = v166;
        (*(v167 + 16))(v166, *(v170 + 48) + *(v167 + 72) * v70, v18);
        v74 = v168;
        sub_10066FC84(*(v71 + 56) + *(v169 + 72) * v70, v168, type metadata accessor for ProgressCache.Progress);
        v75 = sub_1001F0C48(&qword_10078B020);
        v76 = *(v75 + 48);
        v77 = *(v72 + 32);
        v78 = v183;
        v79 = v73;
        v80 = v18;
        v77(v183, v79, v18);
        v81 = v78 + v76;
        v43 = v78;
        sub_100670958(v74, v81, type metadata accessor for ProgressCache.Progress);
        (*(*(v75 - 8) + 56))(v78, 0, 1, v75);
        v42 = v182;
        v65 = v196;
LABEL_35:
        sub_10020A668(v43, v42, &qword_10078B008);
        v82 = sub_1001F0C48(&qword_10078B020);
        if ((*(*(v82 - 8) + 48))(v42, 1, v82) != 1)
        {
          v83 = v43;
          sub_100670958(v42 + *(v82 + 48), v65, type metadata accessor for ProgressCache.Progress);
          v84 = &v180[*(v179 + 24)];
          v85 = *v84;
          v86 = v84[1];
          v87 = *v65;
          v88 = *(v65 + 4);
          v89 = *(v65 + 5);
          v90 = v65[48];
          v194 = *(v65 + 1);
          v195 = v87;
          if ((sub_10061726C(v87, v194, v88, v89, v90, v85, v86) & 1) == 0)
          {
            v18 = v80;
LABEL_65:
            v43 = v83;
LABEL_23:
            sub_10066FCEC(v65, type metadata accessor for ProgressCache.Progress);
            (*v178)(v42, v18);
            continue;
          }

          v91 = XPCClient.MessageRegistrationState.registrations.getter();
          v92 = 0;
          v94 = v91 + 56;
          v93 = *(v91 + 56);
          v200 = v91;
          v95 = 1 << *(v91 + 32);
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          else
          {
            v96 = -1;
          }

          v97 = v96 & v93;
          v98 = (v95 + 63) >> 6;
          while (v97)
          {
            v111 = v197;
LABEL_51:
            v113 = __clz(__rbit64(v97));
            v97 &= v97 - 1;
            v114 = v199;
            v115 = v193;
            v116 = v192;
            (*(v193 + 16))(v192, *(v200 + 48) + *(v193 + 72) * (v113 | (v92 << 6)), v199);
            (*(v115 + 32))(v111, v116, v114);
            v117 = (*(v115 + 88))(v111, v114);
            if (v117 == v187)
            {
              (*v172)(v111, v199);
              v99 = *(v111 + 1);
              v198 = *v111;
              v185 = v99;
              v100 = v111[16];
              v101 = *(v196 + 2);
              v102 = v196[24];
              if (v102)
              {
                v101 = 0;
              }

              v103 = v174;
              v104 = v194;
              *v174 = v195;
              v103[1] = v104;
              v103[2] = v101;
              *(v103 + 24) = v102;
              v105 = updated;
              (*v175)(v103, v176, updated);

              v106 = AppStateUpdateIdentifier.appStateIdentifiers.getter();
              v107 = (*v171)(v103, v105);
              v186 = v134;
              v108 = v185;
              v201[0] = v198;
              v201[1] = v185;
              v202 = v100;
              __chkstk_darwin(v107);
              v132 = v201;
              v109 = v106;
              v110 = v191;
              v184 = sub_10020A268(sub_100670AA4, &v134[-32], v109);
              v191 = v110;

              sub_1001DFEBC(v198, v108, v100);
              if (v184)
              {
                goto LABEL_57;
              }
            }

            else if (v117 != v173 && v117 != v163)
            {
              if (v117 == v161)
              {
                goto LABEL_57;
              }

              if (v117 != v160)
              {
                if (v117 != v135)
                {
                  goto LABEL_74;
                }

LABEL_57:

                v65 = v196;
                v118 = v146;
                sub_10066FC84(v196, v146, type metadata accessor for ProgressCache.Progress);
                (*v145)(v152, &v118[*(v147 + 24)], v153);
                v119 = *(v118 + 1);
                v120 = *(v118 + 2);
                v121 = v118[24];
                if (v121)
                {
                  v120 = 0;
                }

                v122 = v148;
                *v148 = *v118;
                v122[1] = v119;
                v122[2] = v120;
                *(v122 + 24) = v121;
                (*v175)(v122, v176, updated);

                v123 = v150;
                AppProgress.init(state:identifier:)();
                sub_10066FCEC(v118, type metadata accessor for ProgressCache.Progress);
                static XPCClientMessage.appProgress(_:)();
                (*v144)(v123, v151);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v158 = sub_100362D80(0, v158[2] + 1, 1, v158);
                }

                v18 = v162;
                v83 = v183;
                v42 = v182;
                v125 = v158[2];
                v124 = v158[3];
                if (v125 >= v124 >> 1)
                {
                  v158 = sub_100362D80(v124 > 1, v125 + 1, 1, v158);
                }

                v126 = v158;
                v158[2] = v125 + 1;
                (*(v156 + 32))(v126 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v125, v157, v149);
                goto LABEL_65;
              }
            }
          }

          v111 = v197;
          while (1)
          {
            v112 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              break;
            }

            if (v112 >= v98)
            {

              v65 = v196;
              v18 = v162;
              v43 = v183;
              v42 = v182;
              goto LABEL_23;
            }

            v97 = *(v94 + 8 * v112);
            ++v92;
            if (v97)
            {
              v92 = v112;
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_71:
          __break(1u);
        }

        break;
      }

      v128 = v158;
      v129 = v180;
      v18 = v80;
      if (v158[2])
      {
        swift_getObjectType();
        XPCClientProtocol.handleMessages(_:)(v128);
      }

      v29 = v129;
      sub_10066FCEC(v129, type metadata accessor for RegisteredXPCClient);
      v38 = v137;
      v36 = v155;
      v41 = v154;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_74:
  v133 = 0;
  v132 = 50;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10066B8F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for XPCClientMessage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for RegisteredXPCClient();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10066BA18, 0, 0);
}

uint64_t sub_10066BA18()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  *(v0 + 88) = v2;

  os_unfair_lock_unlock((v1 + 16));
  v3 = *(v2 + 32);
  *(v0 + 128) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 88);
LABEL_8:
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    sub_10066FC84(*(v8 + 56) + *(*(v0 + 64) + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), v12, type metadata accessor for RegisteredXPCClient);
    sub_100670958(v12, v11, type metadata accessor for RegisteredXPCClient);
    v14 = (v11 + *(v13 + 24));
    v16 = *v14;
    v15 = v14[1];
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_10066BC18;
    v18 = *(v0 + 16);

    return sub_1006155EC(v18, 0, 0, v16, v15);
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    v8 = *(v0 + 88);
    while (v10 != v9)
    {
      v7 = v9 + 1;
      v6 = *(v8 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10066BC18(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10066BF90;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_10066BD44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10066BD44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  swift_getObjectType();
  static XPCClientMessage.appCatalog(_:)();

  XPCClientProtocol.handleMessage(_:)();
  (*(v3 + 8))(v1, v2);
  result = sub_10066FCEC(*(v0 + 72), type metadata accessor for RegisteredXPCClient);
  v5 = *(v0 + 104);
  v6 = (*(v0 + 96) - 1) & *(v0 + 96);
  if (v6)
  {
    result = *(v0 + 88);
LABEL_7:
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    sub_10066FC84(*(result + 56) + *(*(v0 + 64) + 72) * (__clz(__rbit64(v6)) | (v5 << 6)), v9, type metadata accessor for RegisteredXPCClient);
    sub_100670958(v9, v8, type metadata accessor for RegisteredXPCClient);
    v11 = (v8 + *(v10 + 24));
    v13 = *v11;
    v12 = v11[1];
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_10066BC18;
    v15 = *(v0 + 16);

    return sub_1006155EC(v15, 0, 0, v13, v12);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 88);
      if (v7 >= (((1 << *(v0 + 128)) + 63) >> 6))
      {
        break;
      }

      v6 = *(result + 8 * v7 + 64);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10066BF90()
{
  result = sub_10066FCEC(*(v0 + 72), type metadata accessor for RegisteredXPCClient);
  v2 = *(v0 + 104);
  v3 = (*(v0 + 96) - 1) & *(v0 + 96);
  if (v3)
  {
    result = *(v0 + 88);
LABEL_7:
    *(v0 + 96) = v3;
    *(v0 + 104) = v2;
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    sub_10066FC84(*(result + 56) + *(*(v0 + 64) + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v6, type metadata accessor for RegisteredXPCClient);
    sub_100670958(v6, v5, type metadata accessor for RegisteredXPCClient);
    v8 = (v5 + *(v7 + 24));
    v10 = *v8;
    v9 = v8[1];
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_10066BC18;
    v12 = *(v0 + 16);

    return sub_1006155EC(v12, 0, 0, v10, v9);
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 88);
      if (v4 >= (((1 << *(v0 + 128)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

void sub_10066C170()
{
  v51 = type metadata accessor for MessageRegistration();
  v1 = *(v51 - 8);
  v2 = __chkstk_darwin(v51);
  v47 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v50 = &v31 - v4;
  v32 = type metadata accessor for RegisteredXPCClient();
  v43 = *(v32 - 8);
  v5 = __chkstk_darwin(v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v31 - v8;
  v9 = type metadata accessor for XPCClientMessage();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static XPCClientMessage.ageRating(_:)();
  os_unfair_lock_lock((v0 + 16));
  v11 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v44 = v11;
  v15 = 1 << *(v11 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v38 = enum case for MessageRegistration.ageRating(_:);
  v37 = (v1 + 104);
  v46 = v1 + 16;
  v35 = v1;
  v49 = (v1 + 8);
  v39 = v18;
  v40 = v11 + 64;
  v42 = v7;
  v19 = v47;
  if ((v16 & v13) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      (*(v33 + 8))(v36, v34);
      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v12;
    if (v17)
    {
      v12 = v20;
      do
      {
LABEL_9:
        v21 = v41;
        sub_10066FC84(*(v44 + 56) + *(v43 + 72) * (__clz(__rbit64(v17)) | (v12 << 6)), v41, type metadata accessor for RegisteredXPCClient);
        sub_100670958(v21, v7, type metadata accessor for RegisteredXPCClient);
        v22 = XPCClient.MessageRegistrationState.registrations.getter();
        (*v37)(v50, v38, v51);
        if (*(v22 + 16) && (sub_10066F978(&qword_100783A98, &type metadata accessor for MessageRegistration), v23 = dispatch thunk of Hashable._rawHashValue(seed:)(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, v48 = v22 + 56, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
        {
          v45 = ~v24;
          v26 = *(v35 + 72);
          v27 = *(v35 + 16);
          while (1)
          {
            v28 = v51;
            v27(v19, *(v22 + 48) + v26 * v25, v51);
            sub_10066F978(&qword_100783AA0, &type metadata accessor for MessageRegistration);
            v29 = dispatch thunk of static Equatable.== infix(_:_:)();
            v30 = *v49;
            (*v49)(v19, v28);
            if (v29)
            {
              break;
            }

            v25 = (v25 + 1) & v45;
            if (((*(v48 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v30(v50, v51);
          v7 = v42;
          swift_getObjectType();
          XPCClientProtocol.handleMessage(_:)();
        }

        else
        {
LABEL_14:

          (*v49)(v50, v51);
          v7 = v42;
        }

        v17 &= v17 - 1;
        sub_10066FCEC(v7, type metadata accessor for RegisteredXPCClient);
        v18 = v39;
        v14 = v40;
      }

      while (v17);
    }
  }

  __break(1u);
}

uint64_t sub_10066C6A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for MessageRegistration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v63 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v62 = &v48[-v13];
  v14 = (v5 + *(type metadata accessor for RegisteredXPCClient() + 24));
  v15 = v14[1];
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_16;
      }

      if (a4 != -1)
      {
        goto LABEL_26;
      }
    }

    else if (a4 != -1 && (a4 & 1) != 0)
    {
      goto LABEL_26;
    }

    return 0;
  }

  switch(v15)
  {
    case 2:
      goto LABEL_26;
    case 3:
      if (a4 != -1)
      {
        v55 = v10;
        if (a4)
        {
          v16 = &type metadata for WebDistributor;
          v17 = sub_100231E84();
        }

        else
        {
          v16 = &type metadata for NativeDistributor;
          v17 = sub_1003000A4();
        }

        v65 = v16;
        v66 = v17;
        *&v64 = a2;
        *(&v64 + 1) = a3;
        sub_1001DFDBC(&v64, v67);
        v20 = v69;
        v19 = v70;
        v61 = sub_100006D8C(v67, v69);
        v21 = *(v19 + 48);
        sub_10032F7C8();
        v22 = v21(v20, v19);
        sub_10000710C(v67);
        v10 = v55;
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_26;
    case 4:
      goto LABEL_26;
  }

LABEL_16:
  if (a4 == -1 || (a4 & 1) != 0)
  {
    return 0;
  }

  v18 = *v14 == a2 && v15 == a3;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  updated = AppStateUpdateIdentifier.appStateIdentifiers.getter();
  v23 = XPCClient.MessageRegistrationState.registrations.getter();
  v24 = v23;
  v25 = 0;
  v26 = v23 + 56;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 56);
  v30 = (v27 + 63) >> 6;
  v60 = v10 + 32;
  v61 = (v10 + 16);
  v59 = v10 + 88;
  v58 = enum case for MessageRegistration.appStateChange(_:);
  v53 = enum case for MessageRegistration.appCatalog(_:);
  v51 = enum case for MessageRegistration.ageRating(_:);
  v50 = enum case for MessageRegistration.globalAppProgress(_:);
  v49 = enum case for MessageRegistration.logging(_:);
  v52 = (v10 + 96);
  v31 = v63;
  v54 = v9;
  v55 = v10;
  while (1)
  {
    while (1)
    {
      if (!v29)
      {
        while (1)
        {
          v41 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v41 >= v30)
          {

            return 0;
          }

          v29 = *(v26 + 8 * v41);
          ++v25;
          if (v29)
          {
            v25 = v41;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_35:
      v42 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v43 = v62;
      (*(v10 + 16))(v62, *(v24 + 48) + *(v10 + 72) * (v42 | (v25 << 6)), v9);
      (*(v10 + 32))(v31, v43, v9);
      v44 = (*(v10 + 88))(v31, v9);
      if (v44 != v58)
      {
        break;
      }

      v32 = (*v52)(v31, v9);
      v56 = v48;
      v34 = v24;
      v35 = *(v63 + 1);
      v36 = v63[16];
      v67[0] = *v63;
      v33 = v67[0];
      v67[1] = v35;
      v68 = v36;
      __chkstk_darwin(v32);
      v46 = v67;
      v37 = sub_10020A268(sub_10066FBA0, &v48[-32], updated);
      v38 = v33;
      v31 = v63;
      v39 = v35;
      v24 = v34;
      v40 = v36;
      v10 = v55;
      sub_1001DFEBC(v38, v39, v40);
      v9 = v54;
      if (v37)
      {
        goto LABEL_41;
      }
    }

    if (v44 != v53 && v44 != v51)
    {
      if (v44 == v50)
      {
        goto LABEL_41;
      }

      if (v44 != v49)
      {
        break;
      }
    }
  }

  if (v44 == enum case for MessageRegistration.packageCatalog(_:))
  {
LABEL_41:

    return 1;
  }

LABEL_45:
  v47 = 0;
  v46 = 79;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10066CBF4(os_unfair_lock_s *a1, os_unfair_lock_s *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v66 = a6;
  v73 = a4;
  v63 = a1;
  v8 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for RegisteredXPCClient();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageRegistration();
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v64 = v16;
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F0C48(&qword_100781598);
  v18 = *&v17[-2]._os_unfair_lock_opaque;
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  os_unfair_lock_lock(a2 + 4);
  v71 = a2;
  v72 = a3;
  v21 = sub_1002FAE90(v75, a3);
  v23 = v22;
  v70 = v12;
  v25 = *(v12 + 48);
  v24 = (v12 + 48);
  if (!v25(v22, 1, v11))
  {
    v60 = v21;
    v61 = v20;
    v27 = *(v18 + 16);
    v28 = v63;
    v62 = v10;
    v63 = v17;
    v27(v20, v28, v17);
    v29 = *(v11 + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v23 + v29);
    v30 = v74;
    *(v23 + v29) = 0x8000000000000000;
    v20 = sub_100523154(v73);
    v32 = *(v30 + 16);
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_26;
    }

    v35 = v31;
    if (*(v30 + 24) >= v34)
    {
      v17 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1005C7290();
      }
    }

    else
    {
      sub_1005BFAAC(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_100523154(v73);
      v17 = v63;
      if ((v35 & 1) != (v37 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v20 = v36;
    }

    *(v23 + v29) = v74;

    v38 = *(v23 + v29);
    v23 = v73;
    if ((v35 & 1) == 0)
    {
      v39 = v67;
      (*(v68 + 16))(v67, v73, v69);
      sub_1005C3928(v20, v39, _swiftEmptyArrayStorage, v38);
    }

    isUniquelyReferenced_nonNull_native = v38[7];
    v24 = *(isUniquelyReferenced_nonNull_native + 8 * v20);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v20) = v24;
    if (v40)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  (v21)(v75, 0);
  v24 = 0;
  isUniquelyReferenced_nonNull_native = v72;
  v23 = v73;
  while (1)
  {
    v17 = v71;
    v44 = *&v71[6]._os_unfair_lock_opaque;
    if (!*(v44 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v45 = sub_100522E8C(isUniquelyReferenced_nonNull_native);
    if ((v46 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_10066FC84(*(v44 + 56) + *(v70 + 72) * v45, v14, type metadata accessor for RegisteredXPCClient);
    v47 = *&v14[*(v11 + 20)];
    if (!*(v47 + 16))
    {
      goto LABEL_24;
    }

    v48 = sub_100523154(v23);
    if (v49)
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v24 = sub_100364764(0, *(v24 + 2) + 1, 1, v24);
    *(isUniquelyReferenced_nonNull_native + 8 * v20) = v24;
LABEL_12:
    v42 = *(v24 + 2);
    v41 = *(v24 + 3);
    if (v42 >= v41 >> 1)
    {
      v24 = sub_100364764(v41 > 1, v42 + 1, 1, v24);
      *(isUniquelyReferenced_nonNull_native + 8 * v20) = v24;
    }

    isUniquelyReferenced_nonNull_native = v72;
    *(v24 + 2) = v42 + 1;
    v43 = *(v18 + 32);
    v18 += 32;
    v43(&v24[((*(v18 + 48) + 32) & ~*(v18 + 48)) + *(v18 + 40) * v42], v61, v17);
    v60(v75, 0);
    v24 = sub_1001DFE5C;
    v10 = v62;
  }

  v50 = *(*(*(v47 + 56) + 8 * v48) + 16);
  sub_10066FCEC(v14, type metadata accessor for RegisteredXPCClient);
  sub_1001DFE6C(v24);
  os_unfair_lock_unlock(v17 + 4);
  if (v50 == 1)
  {
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v10, 1, 1, v51);
    v52 = v17;
    v54 = v67;
    v53 = v68;
    v55 = v69;
    (*(v68 + 16))(v67, v23, v69);
    v56 = (*(v53 + 80) + 104) & ~*(v53 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    v58 = v66;
    *(v57 + 32) = v65;
    *(v57 + 40) = v58;
    *(v57 + 48) = v52;
    v59 = *(isUniquelyReferenced_nonNull_native + 16);
    *(v57 + 56) = *isUniquelyReferenced_nonNull_native;
    *(v57 + 72) = v59;
    *(v57 + 88) = *(isUniquelyReferenced_nonNull_native + 32);
    (*(v53 + 32))(v57 + v56, v54, v55);

    sub_1002FAF54(isUniquelyReferenced_nonNull_native, v75);
    sub_100270180(0, 0, v10, 0, 0, &unk_1006BBC58, v57);

    sub_1000032A8(v10, &unk_100780380);
  }
}

uint64_t sub_10066D270(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[6] = a6;
  v10 = sub_1001F0C48(&qword_100781598);
  v8[9] = v10;
  v8[10] = *(v10 - 8);
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v8[12] = v11;
  v8[13] = *(v11 - 8);
  v8[14] = swift_task_alloc();
  v12 = type metadata accessor for XPCClientMessage();
  v8[15] = v12;
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[18] = v13;
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v8[19] = v14;
  *v14 = v8;
  v14[1] = sub_10066D4A4;

  return v16(v13);
}

uint64_t sub_10066D4A4()
{

  return _swift_task_switch(sub_10066D5A0, 0, 0);
}

uint64_t sub_10066D5A0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v2 + 4);
  v3 = sub_1002FAE90((v0 + 16), v1);
  v5 = v4;
  v6 = type metadata accessor for RegisteredXPCClient();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    (v3)(v0 + 16, 0);
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v9 = sub_100532C90(*(v0 + 64));
    (v3)(v0 + 16, 0);
    os_unfair_lock_unlock(v2 + 4);
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        static Logger.xpc.getter();

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412546;
          v15 = sub_100625FA0();
          *(v13 + 4) = v15;
          *v14 = v15;
          *(v13 + 12) = 2048;
          *(v13 + 14) = *(v9 + 16);

          _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Returning response to %ld coalesced requests", v13, 0x16u);
          sub_1000032A8(v14, &qword_10077F920);
        }

        else
        {
        }

        v16 = *(v0 + 128);
        v17 = *(v0 + 80);
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        v18 = *(v17 + 16);
        v17 += 16;
        v19 = v9 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
        v30 = *(v17 + 56);
        v31 = v18;
        v20 = (v16 + 16);
        v21 = (v17 - 8);
        do
        {
          v23 = *(v0 + 136);
          v22 = *(v0 + 144);
          v24 = *(v0 + 120);
          v25 = *(v0 + 88);
          v26 = *(v0 + 72);
          v31(v25, v19, v26);
          (*v20)(v23, v22, v24);
          CheckedContinuation.resume(returning:)();
          (*v21)(v25, v26);
          v19 += v30;
          --v10;
        }

        while (v10);
        v27 = *(v0 + 144);
        v29 = *(v0 + 120);
        v28 = *(v0 + 128);

        (*(v28 + 8))(v27, v29);
      }

      else
      {
        (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      }

      goto LABEL_4;
    }
  }

  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
LABEL_4:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10066D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(type metadata accessor for RegisteredXPCClient() - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_10066DA38, 0, 0);
}

uint64_t sub_10066DA38()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v30 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v28 = *(v3 + 72);
    v29 = v4;
    v27 = (*(v0 + 120) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    do
    {
      v32 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 96);
      v31 = *(v0 + 104);
      v14 = *(v0 + 88);
      v26(v10, 1, 1, v6);
      sub_10066FC84(v5, v12, type metadata accessor for RegisteredXPCClient);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_100670958(v12, v15 + v29, type metadata accessor for RegisteredXPCClient);
      *(v15 + v27) = v14;
      v16 = (v15 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v16 = v13;
      v16[1] = v31;
      sub_100005934(v10, v11, &unk_100780380);
      LODWORD(v10) = (*v25)(v11, 1, v6);

      v17 = *(v0 + 136);
      if (v10 == 1)
      {
        sub_1000032A8(*(v0 + 136), &unk_100780380);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v17, v6);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1006BBBD8;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_1000032A8(v9, &unk_100780380);
      v5 += v28;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10066DDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  v7 = type metadata accessor for XPCClientMessage();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10066DEB8, 0, 0);
}

uint64_t sub_10066DEB8()
{
  v1 = v0[2];
  v2 = type metadata accessor for RegisteredXPCClient();
  v0[9] = v2;
  v3 = (v1 + *(v2 + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10066DF74;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_1006155EC(v9, v7, v8, v5, v4);
}

uint64_t sub_10066DF74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return _swift_task_switch(sub_10066E0D0, 0, 0);
  }
}

uint64_t sub_10066E0D0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  swift_getObjectType();
  static XPCClientMessage.appCatalog(_:)();

  XPCClientProtocol.handleMessage(_:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10066E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  v9 = *(type metadata accessor for RegisteredXPCClient() - 8);
  v8[16] = v9;
  v8[17] = *(v9 + 64);
  v8[18] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_10066E2B4, 0, 0);
}

uint64_t sub_10066E2B4()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for MarketplaceKitError();
  sub_10066F978(&qword_100789DA8, &type metadata accessor for MarketplaceKitError);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;

  v4 = *(v0 + 88);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 128);
    v39 = **(v0 + 72);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = v4 + v7;
    v37 = *(v6 + 72);
    v38 = v7;
    v36 = (*(v0 + 136) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = type metadata accessor for TaskPriority();
    v9 = *(v31 - 8);
    v30 = *(v9 + 56);
    v29 = (v9 + 48);
    v28 = (v9 + 8);
    v32 = v1;
    v33 = v3;
    do
    {
      v43 = v5;
      v12 = *(v0 + 152);
      v13 = *(v0 + 160);
      v14 = *(v0 + 144);
      v40 = *(v0 + 112);
      v41 = *(v0 + 120);
      v15 = *(v0 + 96);
      v16 = *(v0 + 104);
      v30(v13, 1, 1, v31);
      v42 = v8;
      sub_10066FC84(v8, v14, type metadata accessor for RegisteredXPCClient);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = (v17 + 16);
      *(v17 + 24) = 0;
      sub_100670958(v14, v17 + v38, type metadata accessor for RegisteredXPCClient);
      *(v17 + v36) = v15;
      v19 = (v17 + v35);
      *v19 = v16;
      v1 = v32;
      v3 = v33;
      v19[1] = v40;
      *(v17 + v34) = v41;
      v20 = (v17 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v20 = v32;
      v20[1] = v33;
      sub_100005934(v13, v12, &unk_100780380);
      LODWORD(v12) = (*v29)(v12, 1, v31);

      sub_1001DFECC(v32, v33);
      v21 = *(v0 + 152);
      if (v12 == 1)
      {
        sub_1000032A8(*(v0 + 152), &unk_100780380);
        if (*v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v21, v31);
        if (*v18)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = dispatch thunk of Actor.unownedExecutor.getter();
          v23 = v24;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_10:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_1006BBBB0;
      *(v25 + 24) = v17;

      if (v23 | v22)
      {
        v10 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v23;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + 160);
      *(v0 + 48) = 1;
      *(v0 + 56) = v10;
      *(v0 + 64) = v39;
      swift_task_create();

      sub_1000032A8(v11, &unk_100780380);
      v8 = v42 + v37;
      v5 = v43 - 1;
    }

    while (v43 != 1);
  }

  sub_10020B0E0(v1, v3);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10066E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a3;
  v9 = type metadata accessor for XPCClientMessage();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  sub_1001F0C48(&qword_100789D88);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for XPCApp();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_10066E900, 0, 0);
}

uint64_t sub_10066E900()
{
  v1 = v0[3];
  v2 = type metadata accessor for RegisteredXPCClient();
  v0[21] = v2;
  v3 = (v1 + *(v2 + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10066E9BC;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return sub_1006155EC(v9, v7, v8, v5, v4);
}

uint64_t sub_10066E9BC(uint64_t a1)
{
  *(*v2 + 184) = a1;

  if (v1)
  {

    v3 = sub_10066F0A8;
  }

  else
  {
    v3 = sub_10066EAD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10066EAD8()
{
  v1 = v0 + 23;
  v2 = v0[23];
  v0[2] = v2;
  v3 = v2[2];

  v53 = v3;
  if (v3)
  {
    v51 = (v0 + 2);
    v4 = 0;
    v5 = v0[16];
    while (1)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      v6 = v0[20];
      v7 = v0[15];
      v8 = v0[7];
      (*(v5 + 16))(v6, v0[23] + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v7);
      v9 = XPCApp.appleItemID.getter();
      v10 = *(v5 + 8);
      v10(v6, v7);
      if (v9 == v8)
      {
        break;
      }

      if (v53 == ++v4)
      {
        v1 = v0 + 23;
        goto LABEL_7;
      }
    }

    v11 = v0[20];
    v12 = v0[15];

    sub_10066A0C0(v4, sub_100659B34, &type metadata accessor for XPCApp, v11);
    v10(v11, v12);
    v1 = v0 + 2;
  }

  else
  {
LABEL_7:
  }

  v55 = *v1;
  v54 = v0[18];
  v13 = v0[16];
  v49 = v0[19];
  v52 = v0[15];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[8];
  v16 = v0[9];
  v18 = type metadata accessor for XPCApp.Metadata();
  v19 = *(*(v18 - 8) + 56);
  v19(v14, 1, 1, v18);
  v45 = v19;
  v46 = v18;
  v19(v15, 1, 1, v18);

  sub_1001DFECC(v17, v16);
  v2 = v55;
  XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)();
  v20 = v52;
  v51 = *(v13 + 16);
  v51(v54, v49, v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v22 = v2[2];
    v21 = v2[3];
    v56 = v22 >= v21 >> 1 ? sub_1003631A8(v21 > 1, v22 + 1, 1, v2) : v2;
    v23 = v0[18];
    v24 = v0[15];
    v25 = v0[16];
    v26 = v0[11];
    v2 = v0[12];
    v48 = v0[10];
    *(v56 + 2) = v22 + 1;
    v27 = *(v25 + 32);
    v25 += 32;
    v28 = (*(v25 + 48) + 32) & ~*(v25 + 48);
    v50 = *(v25 + 40);
    v27(&v56[v28 + v50 * v22], v23, v24);
    swift_getObjectType();
    static XPCClientMessage.appCatalog(_:)();
    XPCClientProtocol.handleMessage(_:)();
    v29 = v56;
    v47 = *(v26 + 8);
    v47(v2, v48);
    v30 = *(v56 + 2);
    v31 = (v25 - 24);
    if (!v30)
    {
      break;
    }

    v32 = 0;
    while (v32 < *(v29 + 2))
    {
      v33 = v0[20];
      v2 = v0[15];
      v34 = v0[7];
      v51(v33, &v29[v28], v2);
      v35 = XPCApp.appleItemID.getter();
      v36 = *v31;
      (*v31)(v33, v2);
      if (v35 == v34)
      {
        v37 = v0[13];
        v45(v0[14], 1, 1, v46);
        v45(v37, 1, 1, v46);
        XPCApp.init(appleItemID:bundleID:installedMetadata:installingMetadata:installErrorData:)();
        v38 = v56;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100659B34(v56);
          v38 = result;
        }

        if (v32 < v38[2])
        {
          v40 = v0[19];
          v41 = v0[15];
          v42 = v0[12];
          v43 = v0[10];
          (*(v0[16] + 40))(v38 + v28, v0[17], v41);
          static XPCClientMessage.appCatalog(_:)();

          XPCClientProtocol.handleMessage(_:)();
          v47(v42, v43);
          v36(v40, v41);
          goto LABEL_24;
        }

        __break(1u);
        return result;
      }

      ++v32;
      v28 += v50;
      v29 = v56;
      if (v30 == v32)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1003631A8(0, v2[2] + 1, 1, v2);
  }

  v36 = *v31;
LABEL_19:
  v36(v0[19], v0[15]);

LABEL_24:

  v44 = v0[1];

  return v44();
}

uint64_t sub_10066F0A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10066F154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v46 = a5;
  v9 = type metadata accessor for RegisteredXPCClient();
  v56 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v55 = &v45 - v13;
  __chkstk_darwin(v12);
  v58 = &v45 - v14;
  v15 = *a1;
  v16 = *a1 + 64;
  v17 = 1 << *(*a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(*a1 + 64);
  v20 = (v17 + 63) >> 6;
  v49 = (a4 != 0xFF) & a4;
  v57 = v15;

  v22 = 0;
  v50 = v9;
  v51 = _swiftEmptyArrayStorage;
  v47 = a4;
  v52 = a2;
  v53 = a3;
  if (v19)
  {
LABEL_11:
    while (1)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = *(v57 + 56);
      v54 = *(v56 + 72);
      v26 = v55;
      sub_10066FC84(v25 + v54 * (v24 | (v22 << 6)), v55, type metadata accessor for RegisteredXPCClient);
      v27 = v26;
      v28 = v58;
      sub_100670958(v27, v58, type metadata accessor for RegisteredXPCClient);
      v29 = (v28 + *(v9 + 24));
      v30 = v29[1];
      if (v30 > 1)
      {
        break;
      }

      if (v30)
      {
        if (v30 != 1)
        {
          goto LABEL_24;
        }

        if (a4 != 0xFF)
        {
          goto LABEL_33;
        }

LABEL_6:
        result = sub_10066FCEC(v58, type metadata accessor for RegisteredXPCClient);
        if (!v19)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_33:
        sub_100670958(v58, v45, type metadata accessor for RegisteredXPCClient);
        v39 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v39[2] + 1, 1);
          v39 = v65;
        }

        v42 = v39[2];
        v41 = v39[3];
        v43 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          v51 = (v42 + 1);
          sub_10052642C(v41 > 1, v42 + 1, 1);
          v43 = v51;
          v39 = v65;
        }

        v39[2] = v43;
        v44 = *(v56 + 80);
        v51 = v39;
        result = sub_100670958(v45, v39 + ((v44 + 32) & ~v44) + v42 * v54, type metadata accessor for RegisteredXPCClient);
        v9 = v50;
        if (!v19)
        {
          goto LABEL_7;
        }
      }
    }

    if (v30 == 3)
    {
      if (a4 == 0xFF)
      {
        goto LABEL_33;
      }

      if (a4)
      {
        v60 = &type metadata for WebDistributor;
        v31 = sub_100231E84();
      }

      else
      {
        v60 = &type metadata for NativeDistributor;
        v31 = sub_1003000A4();
      }

      v61 = v31;
      *&v59 = a2;
      *(&v59 + 1) = a3;
      sub_1001DFDBC(&v59, v62);
      v35 = v63;
      v34 = v64;
      sub_100006D8C(v62, v63);
      v48 = *(v34 + 48);
      LOBYTE(a4) = v47;
      sub_10032F7C8();
      v36 = v35;
      v37 = v34;
      a2 = v52;
      a3 = v53;
      v38 = v48(v36, v37);
      sub_10000710C(v62);
      v9 = v50;
      if (v38)
      {
        goto LABEL_33;
      }

      goto LABEL_6;
    }

    if (v30 == 2 || v30 == 4)
    {
      goto LABEL_33;
    }

LABEL_24:
    if ((a4 & 1) == 0)
    {
      v33 = *v29 == a2 && v30 == a3;
      if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      *v46 = v51;
      return result;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10066F5C0()
{
  sub_1000032A8(v0 + 24, &qword_10078B000);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RegisteredXPCClient()
{
  result = qword_10078B088;
  if (!qword_10078B088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10066F678(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10020B194;

  return v4();
}

uint64_t sub_10066F760()
{
  v2 = *(type metadata accessor for RegisteredXPCClient() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);
  v16 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v6);
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v12 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_100214EFC;

  return sub_10066E768(v16, v7, v0 + v3, v8, v10, v11, v9, v12);
}

uint64_t sub_10066F8CC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_10066F678(v2);
}

uint64_t sub_10066F978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10066F9C0()
{
  v2 = *(type metadata accessor for RegisteredXPCClient() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100214EFC;

  return sub_10066DDF4(v7, v8, v0 + v3, v6, v9, v10);
}

uint64_t sub_10066FAF4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001F0E54;

  return sub_10066F678(v2);
}

uint64_t sub_10066FBBC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1001F0E54;

  return sub_10066D928(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10066FC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10066FCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10066FD90(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1001F0C48(&unk_10077FD90);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for XPCClientMessage();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for MessageRegistration();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for RegisteredXPCClient();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1001F0C48(&qword_10078B028);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100670AA0, 0, 0);
}

uint64_t sub_10066FFA8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1001F0C48(&unk_10077FD90);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for XPCClientMessage();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for MessageRegistration();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for RegisteredXPCClient();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1001F0C48(&qword_10078B028);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1006701C0, 0, 0);
}

uint64_t sub_1006701C0()
{
  v1 = v0;
  v2 = v0[21];
  v58 = v0[16];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  v8 = *(v5 + 56);
  v7 = v5 + 56;
  v50 = v8;
  v8(v2, 1, 1, v4);
  os_unfair_lock_lock((v6 + 16));
  v9 = *(v6 + 24);

  os_unfair_lock_unlock((v6 + 16));
  v10 = v9 + 64;
  v59 = v9;
  v11 = -1 << *(v9 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v9 + 64);
  result = swift_beginAccess();
  v15 = 0;
  v16 = (63 - v11) >> 6;
  v55 = enum case for MessageRegistration.appCatalog(_:);
  v54 = (v3 + 104);
  v53 = v3;
  v64 = (v3 + 8);
  v48 = (v7 - 40);
  v49 = (v7 - 24);
  v51 = (v7 - 48);
  v52 = (v7 - 8);
  v56 = v16;
  v57 = v9 + 64;
  if (v13)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v16)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      do
      {
LABEL_9:
        v18 = v1[17];
        v19 = v1[18];
        v20 = v1[14];
        v21 = v1[11];
        sub_10066FC84(*(v59 + 56) + *(v58 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v19, type metadata accessor for RegisteredXPCClient);
        sub_100670958(v19, v18, type metadata accessor for RegisteredXPCClient);
        v22 = XPCClient.MessageRegistrationState.registrations.getter();
        (*v54)(v20, v55, v21);
        v65 = v22;
        if (*(v22 + 16) && (sub_10066F978(&qword_100783A98, &type metadata accessor for MessageRegistration), v23 = dispatch thunk of Hashable._rawHashValue(seed:)(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, v61 = v22 + 56, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
        {
          v60 = ~v24;
          v26 = *(v53 + 72);
          v27 = *(v53 + 16);
          while (1)
          {
            v28 = v1[13];
            v29 = v1;
            v30 = v1[11];
            v27(v28, *(v65 + 48) + v25 * v26, v30);
            sub_10066F978(&qword_100783AA0, &type metadata accessor for MessageRegistration);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v64;
            (*v64)(v28, v30);
            if (v31)
            {
              break;
            }

            v25 = (v25 + 1) & v60;
            v1 = v29;
            if (((*(v61 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v37 = v29[20];
          v36 = v29[21];
          v38 = v29[14];
          v39 = v29[11];
          v62 = v29[8];

          v32(v38, v39);
          sub_100005934(v36, v37, &qword_10078B028);
          if ((*v52)(v37, 1, v62) == 1)
          {
            v63 = v29[21];
            v40 = v29[19];
            v41 = v29[10];
            v42 = v29[7];
            v66 = v29[8];
            sub_1000032A8(v29[20], &qword_10078B028);
            v43 = type metadata accessor for ManagedAppDistributionError();
            (*(*(v43 - 8) + 56))(v42, 1, 1, v43);

            static XPCClientMessage.managedAppCatalog(apps:error:)();

            sub_1000032A8(v42, &unk_10077FD90);
            sub_1000032A8(v63, &qword_10078B028);
            (*v48)(v40, v41, v66);
            v50(v40, 0, 1, v66);
            sub_10020A668(v40, v63, &qword_10078B028);
          }

          else
          {
            (*v49)(v29[10], v29[20], v29[8]);
          }

          v1 = v29;
          v10 = v57;
          v33 = v29[17];
          v44 = v29[10];
          v45 = v29[8];
          swift_getObjectType();
          XPCClientProtocol.handleMessage(_:)();
          (*v51)(v44, v45);
        }

        else
        {
LABEL_14:
          v33 = v1[17];
          v34 = v1[14];
          v35 = v1[11];

          (*v64)(v34, v35);
          v10 = v57;
        }

        v13 &= v13 - 1;
        result = sub_10066FCEC(v33, type metadata accessor for RegisteredXPCClient);
        v16 = v56;
      }

      while (v13);
    }
  }

  v46 = v1[21];

  sub_1000032A8(v46, &qword_10078B028);

  v47 = v1[1];

  return v47();
}

uint64_t sub_100670848(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageRegistration() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100214EFC;

  return sub_10066D270(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_100670958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1006709E8()
{
  if (!qword_10078B098)
  {
    type metadata accessor for MessageRegistration();
    sub_1001F76D0(&unk_10078B0A0);
    sub_10066F978(&qword_100783A98, &type metadata accessor for MessageRegistration);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10078B098);
    }
  }
}

int *sub_100670AC0(int *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = ASUSQLiteCursor;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      *(a1 + 6) = sub_100670E48(v4);
      objc_storeStrong(a1 + 7, a2);
      v5 = sqlite3_column_count(*(a1 + 6));
      a1[2] = v5;
      v6 = [NSMutableArray arrayWithCapacity:v5];
      v7 = *(a1 + 5);
      *(a1 + 5) = v6;

      *(a1 + 2) = malloc_type_calloc(a1[2], 1uLL, 0x100004077774924uLL);
      if (a1[2] >= 1)
      {
        for (i = 0; i < a1[2]; ++i)
        {
          v9 = *(a1 + 5);
          v10 = [NSString stringWithUTF8String:sqlite3_column_name(*(a1 + 6), i)];
          [v9 addObject:v10];

          v11 = sqlite3_column_decltype(*(a1 + 6), i);
          if (v11)
          {
            v12 = v11;
            if (!strcmp(v11, "DATETIME"))
            {
              *(*(a1 + 2) + i) = 1;
              continue;
            }

            if (!strcmp(v12, "JSON"))
            {
              v14 = *(a1 + 2);
              v15 = 2;
              goto LABEL_18;
            }

            if (!strcmp(v12, "UUID"))
            {
              v14 = *(a1 + 2);
              v15 = 3;
              goto LABEL_18;
            }

            if (!strcmp(v12, "URL"))
            {
              v14 = *(a1 + 2);
              v15 = 4;
              goto LABEL_18;
            }

            v13 = strcmp(v12, "STRING");
            v14 = *(a1 + 2);
            if (!v13)
            {
              v15 = 5;
LABEL_18:
              *(v14 + i) = v15;
              continue;
            }
          }

          else
          {
            v14 = *(a1 + 2);
          }

          *(v14 + i) = 0;
        }
      }
    }
  }

  return a1;
}

id sub_100670CD0(id *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = [a1 dataForColumnIndex:a2];
    if (v4)
    {
      v11 = 0;
      v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v11];
      v6 = v11;
      if (v5)
      {
LABEL_9:
        v8 = v5;

        goto LABEL_10;
      }

      v7 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1[5] objectAtIndexedSubscript:v2];
        *buf = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v6;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

uint64_t sub_100670E3C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100670E48(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void *sub_100670E54(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = ASUSQLitePreparedStatement;
    v6 = objc_msgSendSuper2(&v10, "init");
    a1 = v6;
    if (v6)
    {
      v6[1] = a2;
      v7 = [v5 copy];
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

__CFString *sub_100670ED8(__CFString *result)
{
  if (result)
  {
    v1 = [(__CFString *)result comparisonType];
    if ((v1 - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_1007566D8[(v1 - 1)];
    }
  }

  return result;
}

id sub_100670F18(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_opt_class();
  [v4 databaseTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E5B3C;
  v10[3] = &unk_100756950;
  v11 = v13 = v4;
  v5 = v3;
  v12 = v5;
  v6 = v11;
  [v2 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v8;
}

void *sub_10067101C(void *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v6, v5];

    v8 = v3[1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001E5C50;
    v10[3] = &unk_100756978;
    v10[4] = v3;
    v3 = [v8 executeStatement:v7 error:0 bindings:v10];
  }

  return v3;
}

id *sub_1006710F8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [a1[2] entityClass];
    v6 = [v5 disambiguatedSQLForProperty:@"ROWID"];
    [v4 addObject:v6];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v5 disambiguatedSQLForProperty:{*(*(&v14 + 1) + 8 * v11), v14}];
          [v4 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    a1 = [a1[2] _newSelectSQLWithProperties:v7 columns:v4];
  }

  return a1;
}

uint64_t sub_100671460(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (a1)
  {
    sub_1001E916C();
    v10 = 3221225472;
    v11 = sub_1001E8EC8;
    v12 = &unk_100756B90;
    v6 = v5;
    v13 = v6;
    v7 = sub_1006717F4(a1, a3, v9);
    if (v7)
    {
      [v6 reset];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100671734(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = [v2 copy];
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;

      v5 = dispatch_get_global_queue(0, 0);
      sub_1001E916C();
      v8 = 3221225472;
      v9 = sub_1001E8ED0;
      v10 = &unk_100756BB8;
      v11 = v3;
      v6 = v3;
      dispatch_async(v5, block);
    }
  }
}

uint64_t sub_1006717E8(uint64_t a1, __CFString **a2, void *a3)
{
  if (a1)
  {
    return sub_1006717F4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1006717F4(uint64_t a1, __CFString **a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  v7 = 0;
  v8 = @"ASUSQLiteErrorDomain";
  while (2)
  {
    v9 = objc_autoreleasePoolPush();
    v16 = 0;
    v10 = v5[2](v5, &v16);
    switch(v10)
    {
      case 0:
        goto LABEL_13;
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
        goto LABEL_12;
      case 5:
      case 6:
        if (v6 < 10)
        {
          usleep(0xF4240u);
          ++v6;
          goto LABEL_8;
        }

        v12 = [NSError errorWithDomain:@"ASUSQLiteErrorDomain" code:3 userInfo:0];
        goto LABEL_15;
      case 10:
        ASUSQLiteCreateErrorForResultCode(v10);
        objc_claimAutoreleasedReturnValue();
        objc_autoreleasePoolPop(sub_1001E91BC());
        sub_100671CA0(a1);
        goto LABEL_17;
      case 11:
        goto LABEL_22;
      default:
        if (v10 != 100)
        {
          if (v10 == 101)
          {
LABEL_13:
            v8 = 0;
            v7 = 1;
          }

          else
          {
            if (v10 == 26)
            {
LABEL_22:
              ASUSQLiteCreateErrorForResultCode(v10);
              objc_claimAutoreleasedReturnValue();
              objc_autoreleasePoolPop(sub_1001E91BC());
              sub_100671ADC(a1);
              goto LABEL_17;
            }

LABEL_12:
            v12 = ASUSQLiteCreateErrorForResultCode(v10);
LABEL_15:
            v8 = v12;
          }

          objc_autoreleasePoolPop(v9);
          goto LABEL_17;
        }

        v7 = 1;
LABEL_8:
        v11 = v16;
        objc_autoreleasePoolPop(v9);
        if ((v11 & 1) == 0)
        {
          continue;
        }

        v8 = 0;
LABEL_17:
        if (a2 && (v7 & 1) == 0)
        {
          v13 = v8;
          *a2 = v8;
        }

        v17 = v7;

        v14 = v17;
LABEL_21:

        return v14;
    }
  }
}

sqlite3_stmt *sub_1006719AC(sqlite3_stmt *result)
{
  if (result)
  {
    v1 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(result + 4) objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6) finalizeStatement];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(v1 + 4) removeAllObjects];
    result = sqlite3_next_stmt(*(v1 + 2), 0);
    if (result)
    {
      v7 = result;
      do
      {
        sqlite3_finalize(v7);
        result = sqlite3_next_stmt(*(v1 + 2), v7);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_100671ADC(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = [sub_1001E91BC() databasePath];
        sub_1001E9154();
        sub_1001E918C(&_mh_execute_header, v11, v12, "[%@]: Asking delegate to reset database after corruption: %{public}@", v13, v14, v15, v16, v26);
      }

      v6 = objc_loadWeakRetained((v2 + 24));
      v7 = [v6 connectionNeedsResetForCorruption:v2];
    }

    else
    {
      if ([*(v2 + 56) isReadOnly])
      {
        return 0;
      }

      v17 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = [sub_1001E91BC() databasePath];
        sub_1001E9154();
        sub_1001E918C(&_mh_execute_header, v20, v21, "[%@]: Deleting database after corruption: %{public}@", v22, v23, v24, v25, v26);
      }

      v6 = [*(v2 + 56) databasePath];
      [ASUSQLiteConnection close]_0(v2);
      v7 = ASUSQLiteDeleteDatabase(v6, 0);
    }

    v2 = v7;
  }

  return v2;
}

uint64_t sub_100671CA0(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = [sub_1001E91BC() databasePath];
      sub_1001E9154();
      sub_1001E918C(&_mh_execute_header, v6, v7, "[%@]: Reopening database after IO error: %{public}@", v8, v9, v10, v11, v32[0]);
    }

    v12 = *(v2 + 8);
    v13 = v12;
    v14 = *(v2 + 40);
    if ([ASUSQLiteConnection close]_0(v2))
    {
      [ASUSQLiteConnection open]_0(v2, v15, v16, v17, v18, v19, v20, v21, *v32, *&v32[8], *&v32[16], v33, v34, v35, v36, v37, v38, v39);
      if (v22)
      {
        if (!v14)
        {
          goto LABEL_9;
        }

        if (!sqlite3_exec(*(v2 + 16), "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
        {
          objc_storeStrong((v2 + 8), v12);
          *(v2 + 40) = v14;
          *(v2 + 48) = 1;
LABEL_9:
          WeakRetained = objc_loadWeakRetained((v2 + 24));
          v24 = objc_opt_respondsToSelector();

          if (v24)
          {
            v25 = ASULogHandleForCategory(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_opt_class();
              v29 = *(v2 + 56);
              v30 = v28;
              v31 = [v29 databasePath];
              *v32 = 138412546;
              *&v32[4] = v28;
              *&v32[12] = 2114;
              *&v32[14] = v31;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after reopen: %{public}@", v32, 0x16u);
            }

            v26 = objc_loadWeakRetained((v2 + 24));
            v2 = [v26 connectionNeedsResetForReopen:v2];
          }

          else
          {
            v2 = 1;
          }

          goto LABEL_15;
        }
      }
    }

    v2 = sub_100671ADC(v2);
LABEL_15:
  }

  return v2;
}

id sub_100671ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __CFString *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001E91DC();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if (v23)
  {
    [*(v23 + 32) objectForKey:v25];
    if (objc_claimAutoreleasedReturnValue())
    {
      v26 = 0;
    }

    else
    {
      v27 = sub_100670E48(v25);
      a10 = 0;
      v28 = sub_1001E8C40(v23, v27, &a10);
      v26 = a10;

      if (v28)
      {
        [*(v23 + 32) setObject:v28 forKey:v25];
      }

      else if (v21)
      {
        v29 = v26;
        *v21 = v26;
      }
    }
  }

  sub_1001E91F0();

  return v30;
}

id *sub_100671FC8(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ASUSQLiteQueryResults;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t dispatch thunk of Bag.subscript.getter()
{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

uint64_t static Logger.general.getter()
{
  return static Logger.general.getter();
}

{
  return static Logger.general.getter();
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}