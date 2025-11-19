uint64_t sub_10022C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10022C5F0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10022C614, 0, 0);
}

uint64_t sub_10022C614()
{
  v17 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[22] = sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10024B050(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching EULA for clientID: %s", v7, 0xCu);
    sub_1001AD48C(v8);
  }

  v9 = v0[20];
  v10 = v0[19];
  v11 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10029BEB0;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022C8C4;
  v14 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100374208, &unk_10029F5B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022CCF4;
  v0[13] = &unk_1003294A8;
  v0[14] = v14;
  [v11 appMetadataForBundleIDs:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022C8C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10022CBA4;
  }

  else
  {
    v3 = sub_10022C9D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022C9D4()
{
  v22 = v0;
  v1 = *(v0 + 144);

  if (*(v1 + 16) && (v2 = sub_10023A350(*(v0 + 152), *(v0 + 160)), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    v5 = [v4 eula];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = v8;
      v10 = v6;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 160);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10024B050(v16, v15, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "EULA not available for clientID: %s", v17, 0xCu);
    sub_1001AD48C(v18);
  }

  v10 = 0;
  v9 = 0xE000000000000000;
LABEL_9:
  v19 = *(v0 + 8);

  return v19(v10, v9);
}

uint64_t sub_10022CBA4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch EULA failed with error: %@", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  v10 = v0[24];

  swift_willThrow();
  v11 = v0[1];
  v12 = v0[24];

  return v11();
}

uint64_t sub_10022CCF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100234470(0, &unk_100374210, AKAppiTunesMetadata_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022CDF4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 184) = v4;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  return _swift_task_switch(sub_10022CE1C, 0, 0);
}

uint64_t sub_10022CE1C()
{
  v19 = v0;
  v0[24] = [objc_allocWithZone(AKIconContext) init];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[25] = sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10024B050(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching app icon from AMS for clientID: %s", v7, 0xCu);
    sub_1001AD48C(v8);
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v13 = *(v0[23] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  v14 = String._bridgeToObjectiveC()();
  v0[26] = v14;
  isa = CGSize._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022D0BC;
  v16 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100374230, &unk_10029F5D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022D3A4;
  v0[13] = &unk_100329480;
  v0[14] = v16;
  [v13 appIconForBundleID:v14 size:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022D0BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_10022D248;
  }

  else
  {
    v3 = sub_10022D1CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022D1CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = *(v0 + 192);
  if (v2)
  {

    v3 = v2;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10022D248()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetch app icon failed with error: %@", v8, 0xCu);
    sub_1001B4EB8(v9);
  }

  v11 = v0[28];
  v12 = v0[24];

  swift_willThrow();
  v13 = v0[1];
  v14 = v0[28];

  return v13();
}

uint64_t sub_10022D3A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022D610(int a1, void *aBlock, double a3, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_10022D6FC;

  return sub_10022CDF4(v9, v11, a3, a4);
}

uint64_t sub_10022D6FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10022D8B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_10022D8DC, 0, 0);
}

uint64_t sub_10022D8DC()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = *(v0[20] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  v4 = String._bridgeToObjectiveC()();
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10022DA20;
  v5 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C388;
  v0[13] = &unk_100329458;
  v0[14] = v5;
  [v3 cancelAppIconRequestForBundleID:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022DA20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10022DB94;
  }

  else
  {
    v3 = sub_10022DB30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022DB30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022DB94()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_10022DD8C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10022DE60;

  return sub_10022D8B8(v5, v7);
}

uint64_t sub_10022DE60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10022E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_10022E024, 0, 0);
}

uint64_t sub_10022E024()
{
  v1 = sub_100233EC4(v0[18]);
  v0[22] = v1;
  if (v1[2])
  {
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_10022E1C8;
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[19];

    return sub_10022EEFC(v5, v3);
  }

  else
  {

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377698);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No primary applications found, unable to update primary apps metadata.", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10022E1C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_10022E898;
  }

  else
  {
    v5 = sub_10022E2DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10022E2DC()
{
  v1 = v0[24];
  v2 = v0[22];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v10 = v0[22];
    sub_100232C34(v1);

    v3 = v10;
  }

  else
  {
    v3 = sub_100232D60(v0[24], v2);
  }

  v0[26] = v3;
  if (v3[2])
  {
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_10022E414;
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[19];

    return sub_10022F650(v3, v7, v5);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10022E414(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 216);
  v7 = *v2;

  v8 = *(v4 + 208);

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 224) = a1;

    return _swift_task_switch(sub_10022E580, 0, 0);
  }
}

uint64_t sub_10022E580()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[19];
  v4 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  sub_100234470(0, &unk_100374210, AKAppiTunesMetadata_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  v6 = String._bridgeToObjectiveC()();
  v0[30] = v6;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_10022E720;
  v7 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C388;
  v0[13] = &unk_100329430;
  v0[14] = v7;
  [v4 updatePrimaryAppsWithAMSAppMetadata:isa withAltDSID:v6 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022E720()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_10022E8FC;
  }

  else
  {
    v3 = sub_10022E830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022E830()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10022E898()
{
  v1 = v0[22];

  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10022E8FC()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  swift_willThrow();

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  sub_1001AD2E4(v5, qword_100377698);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Storing primary apps metadata failed with error: %@", v9, 0xCu);
    sub_1001B4EB8(v10);
  }

  v12 = v0[31];

  swift_willThrow();
  v13 = v0[31];
  v14 = v0[1];

  return v14();
}

uint64_t sub_10022EC28(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100234470(0, &unk_1003741F8, AKDeveloperTeam_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10022ED38;

  return sub_10022E000(v6, v7, v9);
}

uint64_t sub_10022ED38()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10022EEFC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10022EF20, 0, 0);
}

uint64_t sub_10022EF20()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022F064;
  v5 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100374220, &unk_10029F5C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022F540;
  v0[13] = &unk_100329408;
  v0[14] = v5;
  [v3 fetchAllPrimaryApplicationMetadataForAltDSID:v4 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022F064()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10022F4D0;
  }

  else
  {
    v3 = sub_10022F174;
  }

  return _swift_task_switch(v3, 0, 0);
}

char *sub_10022F174()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v33 = v0;
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v0 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = [v4 bundleId];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        goto LABEL_5;
      }

      v11 = [v5 appName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15 && (v16 = [v5 appDeveloperName]) != 0 && (v16, (v17 = objc_msgSend(v5, "adamID")) != 0))
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_5:
      }

      ++v3;
      if (v0 == i)
      {
        v0 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = _swiftEmptyArrayStorage[2];
    if (!v19)
    {
      goto LABEL_38;
    }
  }

  result = sub_100233A2C(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[v21 + 4];
    }

    v23 = v22;
    v24 = [v22 bundleId];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v29 = _swiftEmptyArrayStorage[2];
    v28 = _swiftEmptyArrayStorage[3];
    if (v29 >= v28 >> 1)
    {
      sub_100233A2C((v28 > 1), v29 + 1, 1);
    }

    ++v21;
    _swiftEmptyArrayStorage[2] = (v29 + 1);
    v30 = &_swiftEmptyArrayStorage[2 * v29];
    v30[4] = v25;
    v30[5] = v27;
  }

  while (v19 != v21);
LABEL_38:

  v31 = sub_100233E2C(_swiftEmptyArrayStorage);

  v32 = *(v0 + 8);

  return v32(v31);
}

uint64_t sub_10022F4D0()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_10022F554(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v9 = swift_allocError();
    *v10 = a3;
    v11 = a3;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    sub_100234470(0, a4, a5);
    **(*(v8 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10022F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_10022F674, 0, 0);
}

uint64_t sub_10022F674()
{
  v10 = v0;
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_100230ACC(*(v1 + 16), 0);
    v4 = sub_100233C88(&v9, v3 + 4, v2, v1);

    sub_1000184B8();
    if (v4 != v2)
    {
      __break(1u);
    }
  }

  v5 = *(v0[22] + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022F848;
  v7 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100374208, &unk_10029F5B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022CCF4;
  v0[13] = &unk_1003293E0;
  v0[14] = v7;
  [v5 appMetadataForBundleIDs:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022F848()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10022FD40;
  }

  else
  {
    v3 = sub_10022F958;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022F958()
{
  v1 = *(v0 + 144);

  *(v0 + 200) = v1;
  v2 = *(v0 + 152);

  v4 = sub_10022C26C(v3);
  v5 = *(v2 + 16);
  v6 = *(v0 + 152);
  if (*(v4 + 16) <= v5 >> 3)
  {
    v15 = *(v0 + 152);

    sub_100232C34(v4);

    v8 = v15;
  }

  else
  {
    v7 = *(v0 + 152);

    v8 = sub_100232D60(v4, v6);
  }

  *(v0 + 208) = v8;
  if (v8[2])
  {
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_10022FAD4;
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);

    return sub_10022FFF0(v8, v12, v10);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(v1);
  }
}

uint64_t sub_10022FAD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  v7 = v3[26];
  if (v1)
  {

    v8 = v4[25];
    v9 = *(v6 + 8);

    return v9(v8);
  }

  else
  {

    return _swift_task_switch(sub_10022FC54, 0, 0);
  }
}

uint64_t sub_10022FC54()
{
  v11 = v0;
  v1 = v0[28];
  if (*(v1 + 16))
  {
    v2 = v0[29];
    v3 = v0[25];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v3;
    sub_1002341B4(v1, sub_100233DE0, 0, isUniquelyReferenced_nonNull_native, &v10);
    v5 = v0[28];

    v6 = v10;
    if (v2)
    {
    }
  }

  else
  {
    v8 = v0[28];

    v6 = v0[25];
  }

  v9 = v0[1];

  return v9(v6);
}

uint64_t sub_10022FD40()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_100377698);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching app metadata from AMS failed with error: %@", v9, 0xCu);
    sub_1001B4EB8(v10);
  }

  else
  {
  }

  v0[25] = &_swiftEmptyDictionarySingleton;
  v12 = v0[19];

  v14 = sub_10022C26C(v13);
  v15 = *(v12 + 16);
  v16 = v0[19];
  if (*(v14 + 16) <= v15 >> 3)
  {
    v25 = v0[19];

    sub_100232C34(v14);

    v18 = v25;
  }

  else
  {
    v17 = v0[19];

    v18 = sub_100232D60(v14, v16);
  }

  v0[26] = v18;
  if (v18[2])
  {
    v19 = swift_task_alloc();
    v0[27] = v19;
    *v19 = v0;
    v19[1] = sub_10022FAD4;
    v20 = v0[21];
    v21 = v0[22];
    v22 = v0[20];

    return sub_10022FFF0(v18, v22, v20);
  }

  else
  {

    v24 = v0[1];

    return v24(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_10022FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100230014, 0, 0);
}

uint64_t sub_100230014()
{
  v18 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = sub_10024B050(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using WWDR client names for bundleIDs : %s", v6, 0xCu);
    sub_1001AD48C(v7);
  }

  v11 = v0[21];
  v12 = v0[20];
  v13 = *(v0[22] + OBJC_IVAR___AKAccountsMetadataController_localStorageController);
  v14 = String._bridgeToObjectiveC()();
  v0[23] = v14;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100230290;
  v15 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373620, &qword_10029E4B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10022C54C;
  v0[13] = &unk_1003293B8;
  v0[14] = v15;
  [v13 fetchAllDeveloperTeamsAndApplicationsForAltDSID:v14 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100230290()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100230538;
  }

  else
  {
    v3 = sub_1002303A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002303A0()
{
  v13 = v0;
  v1 = *(v0 + 144);

  v11 = &_swiftEmptyDictionarySingleton;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = *(v0 + 152);
      v12 = v4;
      sub_1002305A8(&v11, &v12, v7);

      ++v3;
      if (v6 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = &_swiftEmptyDictionarySingleton;
LABEL_15:

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_100230538()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

void sub_1002305A8(uint64_t *a1, id *a2, uint64_t a3)
{
  v4 = [*a2 apps];
  sub_100234470(0, &qword_100373630, AKConsentedApplication_ptr);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v45 = a3;
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v42 = v5;
  v43 = v6 + 56;
  while (v11)
  {
LABEL_11:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v5 + 56) + ((v7 << 9) | (8 * v14)));
    v16 = [v15 clientID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (*(v45 + 16))
    {
      v20 = *(v45 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v45 + 32);
      v23 = v21 & ~v22;
      if ((*(v43 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(v45 + 48) + 16 * v23);
          v26 = *v25 == v17 && v25[1] == v19;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v43 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v27 = [objc_allocWithZone(AKAppiTunesMetadata) init];
        v28 = v15;
        v29 = [v15 clientID];
        if (!v29)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String._bridgeToObjectiveC()();
        }

        [v27 setBundleId:v29];

        v30 = [v15 clientName];
        if (v30)
        {
          v31 = v30;
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1280070990 && v32 == 0xE400000000000000)
          {
          }

          else
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v33 & 1) == 0)
            {
              [v27 setAppName:v31];
              v28 = v15;
              goto LABEL_32;
            }

            v28 = v15;
          }
        }

        v31 = [v28 clientID];
        if (!v31)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = String._bridgeToObjectiveC()();
          v28 = v15;
        }

        [v27 setAppName:v31];
LABEL_32:

        v34 = [v28 clientID];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = v27;
        v38 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *a1;
        sub_100231848(v37, v41, v36, isUniquelyReferenced_nonNull_native, &qword_1003741F0, &unk_10029F5A0);

        *a1 = v44;
        v5 = v42;
      }

      else
      {
LABEL_20:

        v5 = v42;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_100230A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountsMetadataController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100230ACC(uint64_t a1, uint64_t a2)
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

  sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

id *sub_100230B50(uint64_t a1, uint64_t a2)
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

  sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
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

uint64_t sub_100230BD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001AD17C(&qword_100372838, &qword_10029D400);
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

uint64_t sub_100230EAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001AD17C(&unk_100372C30, &unk_10029D990);
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

        swift_unknownObjectRetain();
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

uint64_t sub_100231154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001AD17C(&unk_100374240, &unk_10029F630);
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

uint64_t sub_1002313FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1001AD17C(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1002316AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10023A350(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100230BD8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10023A350(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100231DA8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_100231848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10023A350(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1002313FC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10023A350(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100232214(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_1002319E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10023A350(a2, a3);
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
      sub_100231154(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10023A350(a2, a3);
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
      sub_1002320A4();
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

unint64_t sub_100231B60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100231BA8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_100231BF0()
{
  v1 = v0;
  sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
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
        sub_1000087A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000122C0(v25, (*(v4 + 56) + v22));
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

void *sub_100231DA8()
{
  v1 = v0;
  sub_1001AD17C(&qword_100372838, &qword_10029D400);
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

void *sub_100231F34()
{
  v1 = v0;
  sub_1001AD17C(&unk_100372C30, &unk_10029D990);
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

        result = swift_unknownObjectRetain();
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

void *sub_1002320A4()
{
  v1 = v0;
  sub_1001AD17C(&unk_100374240, &unk_10029F630);
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

id sub_100232214(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001AD17C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100232370(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100232720(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1002324C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
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

Swift::Int sub_100232720(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1002324C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1002328A0();
      goto LABEL_16;
    }

    sub_1002329FC(v8 + 1);
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

void *sub_1002328A0()
{
  v1 = v0;
  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
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

uint64_t sub_1002329FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
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

uint64_t sub_100232C34(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1002332D0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100232D60(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_100233644(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10023340C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_1000184B8();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002332D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002328A0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100233868(v9);
  *v2 = v20;
  return v13;
}

unint64_t *sub_10023340C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_100233644(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100233644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100233868(unint64_t result)
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
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

char *sub_100233A2C(char *a1, int64_t a2, char a3)
{
  result = sub_100233A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100233A4C(id *a1, int64_t a2, char a3)
{
  result = sub_100233B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100233A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

id *sub_100233B78(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001AD17C(&unk_100374270, &qword_10029DE30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100233C88(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_100233DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100233E2C(uint64_t a1)
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

      sub_100232370(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_100233EC4(unint64_t a1)
{
  v34 = &_swiftEmptySetSingleton;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  while (1)
  {
    v2 = 0;
    v30 = v1;
    v31 = a1 & 0xC000000000000001;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 + 32;
LABEL_5:
    if (v31)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = __OFADD__(v2++, 1);
      if (!v3)
      {
        break;
      }

      goto LABEL_33;
    }

    if (v2 >= *(v29 + 16))
    {
      goto LABEL_34;
    }

    a1 = *(v28 + 8 * v2);
    v3 = __OFADD__(v2++, 1);
    if (!v3)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v27 = a1;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v27;
    if (!v1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  v32 = a1;
  v4 = [a1 apps];
  sub_100234470(0, &qword_100373630, AKConsentedApplication_ptr);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = 0;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_22:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(v5 + 56) + ((v6 << 9) | (8 * v16)));
    v18 = [v17 primaryClientID];
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = [v17 primaryClientID];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v21 == 1280070990 && v23 == 0xE400000000000000)
      {

LABEL_16:
        v11 = [v17 clientID];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        sub_100232370(&v33, v12, v14);

        continue;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v5 + 64 + 8 * v15);
    ++v6;
    if (v9)
    {
      v6 = v15;
      goto LABEL_22;
    }
  }

  if (v2 != v30)
  {
    goto LABEL_5;
  }

  return v34;
}

uint64_t sub_1002341B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_10023A350(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_100232214(&qword_1003741F0, &unk_10029F5A0);
      }
    }

    else
    {
      v32 = v51;
      sub_1002313FC(v30, v46 & 1, &qword_1003741F0, &unk_10029F5A0);
      v33 = *v32;
      v34 = sub_10023A350(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1000184B8();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100234470(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1002344B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100234578;

  return sub_10022EC28(v2, v3, v5, v4);
}

uint64_t sub_100234578()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10023466C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100234B74;

  return sub_10022DD8C(v2, v3, v4);
}

uint64_t sub_100234720()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100234B78;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1002347E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100234B7C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_1002348AC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100234B80;

  return sub_10022D610(v2, v6, v3, v4, v5);
}

uint64_t sub_100234974()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100234B84;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100234A34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100234A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100234B88;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_100234B90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {

    v9 = a2;
    v10 = v5;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v12 = 0xF000000000000000;
  }

  v14 = a4;
  v8(a2, v5, v12, a4);

  sub_1001AE1E4(v5, v12);
}

uint64_t sub_100234C58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_100234C9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_10023B388(*(a1 + 48) + 40 * v14, v29);
        sub_1000087A8(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_10023B388(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000087A8(v27 + 8, v22);
        sub_10023B3E4(v26, &unk_100374320, &unk_10029F700);
        v23 = v20;
        sub_1000122C0(v22, v24);
        v15 = v23;
        sub_1000122C0(v24, v25);
        sub_1000122C0(v25, &v23);
        result = sub_10023A350(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1001AD48C(v12);
          result = sub_1000122C0(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1000122C0(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_10023B3E4(v26, &unk_100374320, &unk_10029F700);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100234F78()
{
  v0 = NSHomeDirectory();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4._object = 0x80000001002AD290;
  v4._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v4);

  qword_100374280 = v1;
  *algn_100374288 = v3;
  return result;
}

id sub_100235008()
{
  if (qword_100371BF0 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for DeviceListStoreMigrator());

  v1 = [v0 init];
  v2 = objc_allocWithZone(AKSQLiteExecutor);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithDatabasePath:v3 migrationController:v1];

  v5 = type metadata accessor for DeviceListStoreManager();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_executor] = v4;
  type metadata accessor for DeviceListProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_deviceListProvider] = v7;
  type metadata accessor for DeletedDeviceListProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider] = v8;
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = v4;
  result = objc_msgSendSuper2(&v11, "init");
  qword_1003776D0 = result;
  return result;
}

uint64_t sub_1002351D4()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_100235264, 0, 0);
}

uint64_t sub_100235264()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceListStoreManager - Begin clearing database", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + OBJC_IVAR___AKDeviceListStoreManager_executor);
  v0[2] = 0;
  [v6 wipeDatabase:v0 + 2];
  v7 = v0[2];
  if (v7)
  {
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v7;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Clearing database failed with error %@", v11, 0xCu);
      sub_10023B3E4(v12, &unk_1003726A0, &unk_10029CFA0);
    }

    swift_willThrow();
    v14 = v0[1];
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "DeviceListStoreManager - Cleared database successfully", v17, 2u);
    }

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1002356C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10023576C;

  return sub_1002351D4();
}

uint64_t sub_10023576C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1002358F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100235918, 0, 0);
}

void sub_100235918()
{
  v31 = v0;
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v7 altDSID];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10024B050(v11, v13, &v30);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "DeviceListStoreManager - Fetching device list for altDSID %s", v8, 0xCu);
    sub_1001AD48C(v9);
  }

  else
  {
  }

  v15 = *(v0 + 48);
  v16 = [*(v0 + 40) altDSID];
  LODWORD(v15) = [v15 isHSA2EnabledForAltDSID:v16];

  if (!v15 || ([*(v0 + 40) includeFamilyDevices] & 1) != 0 || (objc_msgSend(*(v0 + 40), "isForceFetch") & 1) != 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not eligible for device cache. Fetching from server instead.", v19, 2u);
    }

    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_100235DBC;
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = *(v0 + 40);

    sub_100236230(v25, v23, v24, v21);
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 88) = v26;
    *v26 = v0;
    v26[1] = sub_100235C80;
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    v29 = *(v0 + 40);

    sub_100237E94(v29, v27);
  }
}

uint64_t sub_100235C80(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(v5 + 96) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100235EBC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_100235DBC(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100235EBC()
{
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceListStoreManager - Failed to fetch devices from cache with error %@. Trying server now.", v6, 0xCu);
    sub_10023B3E4(v7, &unk_1003726A0, &unk_10029CFA0);
  }

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100236048;
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[5];

  return sub_100236230(v14, v12, v13, v10);
}

uint64_t sub_100236048(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[14];
  v8 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v6 = sub_1002361CC;
  }

  else
  {
    v6 = sub_100236164;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100236164()
{
  v1 = v0[12];

  v2 = v0[3];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1002361CC()
{
  v1 = v0[12];

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100236230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100236258, 0, 0);
}

uint64_t sub_100236258()
{
  if ([*(v0 + 40) type] == 2)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, qword_100377668);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch device list context is cache only. Skipping fetch from server.", v4, 2u);
    }

    type metadata accessor for DeviceListError(0);
    *(v0 + 32) = -14008;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = *(v0 + 24);
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    *(v0 + 80) = sub_1001AD2E4(v8, qword_100377668);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "DeviceListStoreManager - Begin fetching device list from server", v11, 2u);
    }

    v12 = *(v0 + 56);
    v13 = *(v0 + 40);

    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    v17 = sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
    *v16 = v0;
    v16[1] = sub_100236574;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001002AD240, sub_10023B2B0, v14, v17);
  }
}

uint64_t sub_100236574()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100236918;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100236690;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100236690()
{
  v1 = v0[10];
  v2 = v0[2];
  v0[14] = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceListStoreManager - Finished fetching device list from server", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];

  v8 = [v7 altDSID];
  LODWORD(v6) = [v6 isHSA2EnabledForAltDSID:v8];

  if (v6 && ([v0[5] includeFamilyDevices] & 1) == 0)
  {
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10023697C;
    v20 = v0[9];
    v21 = v0[5];

    return sub_100238F8C(v21, v2);
  }

  else
  {
    v9 = v0[10];
    v10 = v0[5];
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "DeviceListStoreManager - Cache is not supported for context - %@", v14, 0xCu);
      sub_10023B3E4(v15, &unk_1003726A0, &unk_10029CFA0);
    }

    v17 = v0[1];

    return v17(v2);
  }
}

uint64_t sub_100236918()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10023697C()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100236C80, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_100236AF0;
    v5 = v3[8];
    v6 = v3[9];
    v7 = v3[5];

    return sub_100237E94(v7, v5);
  }
}

uint64_t sub_100236AF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_100236CE4;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_100236C18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100236C18()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100236C80()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100236CE4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100236EF4(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_100236FF8;

  return sub_1002358F0(v12, v13, v14, v15);
}

uint64_t sub_100236FF8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v5 + 56);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, v14);

    _Block_release(v13);
  }

  else
  {
    (v13)[2](*(v5 + 56), a1, 0);
    _Block_release(v13);
  }

  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_100237390(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10023741C, 0, 0);
}

uint64_t sub_10023741C()
{
  v1 = *(v0[3] + OBJC_IVAR___AKDeviceListStoreManager_deviceListProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1002374C0;
  v3 = v0[2];

  return sub_1001BCE30(v3);
}

uint64_t sub_1002374C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1002376F8;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v7 = sub_1002375EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002375EC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 72) == 1)
  {
    v2 = *&v1[OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider];
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_1002377A4;
    v4 = *(v0 + 16);

    return sub_1001BCE30(v4);
  }

  else
  {
    v6 = *(v0 + 16);

    (*(*(v0 + 32) + 16))();
    _Block_release(*(v0 + 32));
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1002376F8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002377A4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10023791C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 24);

    (*(*(v2 + 32) + 16))();
    _Block_release(*(v2 + 32));
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10023791C()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100237B50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100237BDC, 0, 0);
}

uint64_t sub_100237BDC()
{
  v1 = *(v0[3] + OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100237C80;
  v3 = v0[2];

  return sub_1001D4E3C(v3);
}

uint64_t sub_100237C80()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100237DEC, 0, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v3 + 32));
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100237DEC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100237E94(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_100237EB8, 0, 0);
}

uint64_t sub_100237EB8()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceListStoreManager - Begin fetching device list from cache", v4, 2u);
  }

  v5 = v0[1].i64[1];
  v11 = v0[2];

  v6 = swift_task_alloc();
  v0[3].i64[0] = v6;
  v6[1] = vextq_s8(v11, v11, 8uLL);
  v6[2].i64[0] = v5;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[3].i64[1] = v8;
  v9 = sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
  *v8 = v0;
  v8[1] = sub_10023808C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[1], 0, 0, 0xD00000000000002ELL, 0x80000001002AD210, sub_10023B1B4, v6, v9);
}

uint64_t sub_10023808C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1002381C4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1002381A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002381C4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_100238228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v11, a1, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v8 + 32))(v15 + v13, v11, v7);
  *(v15 + v14) = a3;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_10023B1C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234C58;
  aBlock[3] = &unk_100329688;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  v18 = a4;

  [v20 performBlockAndWait:v16];
  _Block_release(v16);
}

uint64_t sub_100238448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1002384F4;

  return sub_100237E94(a2, a3);
}

uint64_t sub_1002384F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v4 + 64) = v9;
    *v9 = v6;
    v9[1] = sub_100238678;
    v10 = *(v4 + 16);

    return sub_10023A9B0(v10, a1);
  }
}

uint64_t sub_100238678()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002387EC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[10] = v4;
    *v4 = v3;
    v4[1] = sub_1002388B8;
    v5 = v3[7];
    v6 = v3[2];

    return sub_10023AB64(v6, v5);
  }
}

uint64_t sub_1002387EC()
{
  v1 = *(v0 + 72);
  sub_10023AD18(50, 0x2AD190, *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1002388B8;
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  return sub_10023AB64(v4, v3);
}

uint64_t sub_1002388B8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100238A3C;
  }

  else
  {
    v3 = sub_1002389CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002389CC()
{
  v1 = *(v0 + 72) == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100238A3C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  sub_10023AD18(50, 0x2AD1D0, *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_100238C84(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_100238D88;

  return sub_100238448(v12, v13, v14, v15);
}

uint64_t sub_100238D88(char a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v4 + 56);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(*(v4 + 56), a1 & 1, 0);
  }

  _Block_release(*(v5 + 56));
  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_100238F8C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_100238FB0, 0, 0);
}

id sub_100238FB0()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating device list cache. Saving server response.", v4, 2u);
  }

  v5 = v0[9];

  sub_1001AD17C(&qword_1003742D0, &qword_10029F6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029BEB0;
  result = [v5 altDSID];
  if (result)
  {
    v8 = result;
    v10 = v0[10];
    v9 = v0[11];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(inited + 32) = v11;
    *(inited + 40) = v13;
    *(inited + 48) = v10;
    v14 = v10;
    v15 = sub_10023A8B4(inited, &unk_1003742E0, &qword_10029F6C0);
    v0[12] = v15;
    swift_setDeallocating();
    sub_10023B3E4(inited + 32, &qword_1003742D8, &qword_10029F6B8);
    v16 = *(v9 + OBJC_IVAR___AKDeviceListStoreManager_deviceListProvider);
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1002391D0;
    v18 = v0[9];

    return sub_1001F84F4(v18, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002391D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 96);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10023931C, 0, 0);
  }
}

uint64_t sub_10023931C()
{
  v1 = *(v0[11] + OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1002393D4;
  v3 = v0[12];

  return sub_1001D5B24(v3);
}

uint64_t sub_1002393D4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100239674(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10023974C;

  return sub_100238F8C(v8, v9);
}

uint64_t sub_10023974C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

id sub_100239938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceListStoreManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002399EC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10023B2B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_1003296D8;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 executeRequestWithCompletion:v13];
  _Block_release(v13);
}

void sub_100239BB8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377668);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed with server error %@", v10, 0xCu);
      sub_10023B3E4(v11, &unk_1003726A0, &unk_10029CFA0);
    }

    v55 = a4;
    swift_errorRetain();
    sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
LABEL_13:
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (a3 >> 60 == 15)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_100377668);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing server response data", v16, 2u);
    }

    type metadata accessor for DeviceListError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
    goto LABEL_13;
  }

  v20 = objc_opt_self();
  sub_1001F9DCC(a2, a3);
  v21 = a2;
  v22 = a3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = [v20 dictionaryFromObject:isa ofType:@"application/json"];

  if (!v24 || (v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v24, v26 = sub_100234C9C(v25), , !v26))
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1001AD2E4(v41, qword_100377668);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_32;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Missing response parameters", v44, 2u);
    goto LABEL_30;
  }

  v27 = objc_opt_self();
  v28 = Dictionary._bridgeToObjectiveC()().super.isa;
  v29 = [v27 deviceMapFromResponseBody:v28];

  sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [a6 altDSID];
  if (v31)
  {
    v32 = v31;

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (*(v30 + 16))
    {
      v36 = sub_10023A350(v33, v35);
      v38 = v37;

      if (v38)
      {
        v39 = *(*(v30 + 56) + 8 * v36);

        v55 = v39;
        v40 = v39;
        sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
        CheckedContinuation.resume(returning:)();
        sub_1001AE1E4(v21, v22);

        return;
      }
    }

    else
    {
    }

    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1001AD2E4(v45, qword_100377668);
    v46 = a6;
    v42 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v47))
    {

      goto LABEL_32;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v48 = 136315138;
    v50 = [v46 altDSID];

    if (v50)
    {
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10024B050(v51, v53, &v55);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v42, v47, "Missing deviceListResponse for altDSID %s", v48, 0xCu);
      sub_1001AD48C(v49);

LABEL_30:

LABEL_32:

      type metadata accessor for DeviceListError(0);
      sub_1001E4150(&_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
      CheckedContinuation.resume(throwing:)();
      sub_1001AE1E4(v21, v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10023A30C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10023A3C8(a1, v4);
}

unint64_t sub_10023A350(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10023A490(a1, a2, v6);
}

unint64_t sub_10023A3C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10023B388(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1001AD3EC(v8);
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

unint64_t sub_10023A490(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10023A55C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100372C30, &unk_10029D990);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10023A350(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10023A660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100372C20, &qword_10029D980);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014260(v4, v13, &qword_100373320, qword_10029E210);
      result = sub_10023A30C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000122C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10023A79C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100374240, &unk_10029F630);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10023A350(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10023A8B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001AD17C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10023A350(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_10023A9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10023A9D0, 0, 0);
}

uint64_t sub_10023A9D0()
{
  v1 = [*(v0 + 32) trustedDevicesClientHash];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 40) trustedDevicesClientHash];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!v5)
    {

      goto LABEL_14;
    }

    if (v3 != v8 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }

LABEL_14:
      type metadata accessor for DeviceListError(0);
      *(v0 + 24) = -14009;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = *(v0 + 16);
      swift_willThrow();
      v14 = *(v0 + 8);
      goto LABEL_18;
    }
  }

LABEL_17:
  v14 = *(v0 + 8);
LABEL_18:

  return v14();
}

uint64_t sub_10023AB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10023AB84, 0, 0);
}

uint64_t sub_10023AB84()
{
  v1 = [*(v0 + 32) deletedDevicesClientHash];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 40) deletedDevicesClientHash];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!v5)
    {

      goto LABEL_14;
    }

    if (v3 != v8 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }

LABEL_14:
      type metadata accessor for DeviceListError(0);
      *(v0 + 24) = -14010;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      v13 = *(v0 + 16);
      swift_willThrow();
      v14 = *(v0 + 8);
      goto LABEL_18;
    }
  }

LABEL_17:
  v14 = *(v0 + 8);
LABEL_18:

  return v14();
}

void sub_10023AD18(int a1, int a2, id a3, void *a4, void *a5)
{
  v8 = [a3 altDSID];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  v10 = [a4 authKitAccountWithAltDSID:v8];

  if (!v10)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1001AD2E4(v16, qword_100377668);
    v17 = a3;
    v37 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v37, v18))
    {

      goto LABEL_18;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38[0] = v20;
    *v19 = 136315138;
    v21 = [v17 altDSID];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_10024B050(v22, v24, v38);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v37, v18, "DeviceListStoreManager - Unable to report MID hash mismatch event. No idms account found for altDSID - %s.", v19, 0xCu);
      sub_1001AD48C(v20);

LABEL_15:

      return;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v37 = v10;
  v13 = _convertErrorToNSError(_:)();
  v14 = [v11 ak_analyticsEventWithEventName:v12 account:v37 error:v13];

  if (v14)
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    [a4 securityLevelForAccount:v37];
    type metadata accessor for AKAppleIDSecurityLevel(0);
    _print_unlocked<A, B>(_:_:)();
    v15 = String._bridgeToObjectiveC()();

    [v14 setObject:v15 forKeyedSubscript:@"securityLevel"];

    [a5 sendEvent:v14];
    return;
  }

  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1001AD2E4(v26, qword_100377668);
  v27 = a3;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    v32 = [v27 altDSID];

    if (v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10024B050(v33, v35, v38);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "DeviceListStoreManager - Unable to create MID hash mismatch event for altDSID - %s.", v30, 0xCu);
      sub_1001AD48C(v31);

      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_18:
}

void sub_10023B1C0()
{
  v1 = *(sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100014FF8(v4, v0 + v2, v5, v6);
}

uint64_t sub_10023B268(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_10023B2B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = *(sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100239BB8(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_10023B3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10023B444()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C278;

  return sub_100239674(v2, v3, v5, v4);
}

uint64_t sub_10023B504()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10023C260;

  return sub_100238C84(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10023B5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C264;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10023B698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10023C268;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10023B764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C26C;

  return sub_100237B50(v2, v3, v4);
}

uint64_t sub_10023B818()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C270;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10023B8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10023C274;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10023B9A4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023B9EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C284;

  return sub_100237390(v2, v3, v4);
}

uint64_t sub_10023BAA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C27C;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10023BB60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10023C280;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10023BC2C()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10023BC8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10023BD60;

  return sub_100236EF4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10023BD60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10023BE54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C288;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10023BF14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10023C28C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10023BFE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10023C290;

  return sub_1002356C4(v2, v3);
}

uint64_t sub_10023C08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C294;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10023C14C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10023C18C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10023C298;

  return sub_1000099A4(a1, v4, v5, v7);
}

id SignInWithAppleDaemonService.exportedObject.getter@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for SignInWithAppleDaemonService();
  *a1 = v3;

  return v3;
}

id *sub_10023C350(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_100233A4C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      sub_1001AD17C(&qword_1003743F8, &qword_10029FA50);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100233A4C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = (v6 + 1);
      sub_1000122C0(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Bool __swiftcall SignInWithAppleDaemonService.shouldAcceptNewConnection(_:)(NSXPCConnection a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SignInWithAppleDaemonService();
  v3 = objc_msgSendSuper2(&v8, "shouldAcceptNewConnection:", a1.super.isa);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(AKClient) initWithConnection:a1.super.isa];
    v6 = *&v1[OBJC_IVAR___AKSignInWithAppleDaemonService_client];
    *&v1[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = v5;

    LOBYTE(v3) = v4;
  }

  return v3;
}

id SignInWithAppleDaemonService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignInWithAppleDaemonService.init()()
{
  *&v0[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return objc_msgSendSuper2(&v2, "init");
}

id SignInWithAppleDaemonService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SignInWithAppleDaemonService.fetchAccounts(with:)(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_10023C720, 0, 0);
}

uint64_t sub_10023C720()
{
  v1 = v0;
  v2 = *(v0[33] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[34] = v2;
  if (v2)
  {
    v3 = qword_100371BD8;
    v51 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching SIWA accounts", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    v10 = [objc_allocWithZone(AKCDPFactory) init];
    v44 = type metadata accessor for AccountSharingPreFlightChecker();
    v11 = swift_allocObject();
    v1[35] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = [objc_allocWithZone(AAFKeychainManager) init];
    v13 = objc_opt_self();
    v14 = [v13 sharedInstance];
    v15 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v16 = sub_100244CAC(v12, v14, v15);
    v1[36] = v16;
    v17 = [v13 sharedInstance];
    v18 = [objc_allocWithZone(AAFKeychainManager) init];
    v45 = type metadata accessor for SharedGroupsMembershipController();
    v19 = swift_allocObject();
    v1[37] = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = objc_opt_self();
    v52 = v51;
    v50 = [v20 sharedManager];
    v49 = [v8 sharedInstance];
    v48 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
    v21 = objc_allocWithZone(AKApplicationInformationController);
    v47 = v16;

    v46 = [v21 init];
    v1[20] = v11;
    v1[23] = v44;
    v1[24] = &off_100328630;
    v1[28] = v45;
    v1[29] = &off_100328758;
    v1[25] = v19;
    type metadata accessor for AccountsListingController();
    inited = swift_initStackObject();
    v1[38] = inited;
    v23 = v1[23];
    v24 = sub_1001E947C((v1 + 20), v23);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64) + 15;
    v27 = swift_task_alloc();
    (*(v25 + 16))(v27, v24, v23);
    v28 = v1[28];
    v29 = sub_1001E947C((v1 + 25), v28);
    v30 = *(v28 - 8);
    v31 = *(v30 + 64) + 15;
    v32 = swift_task_alloc();
    (*(v30 + 16))(v32, v29, v28);
    v33 = *v27;
    v34 = *v32;
    inited[10] = v44;
    inited[11] = &off_100328630;
    inited[16] = v45;
    inited[17] = &off_100328758;
    inited[2] = v50;
    inited[3] = v52;
    inited[4] = v49;
    inited[5] = v48;
    inited[7] = v33;
    inited[6] = v47;
    inited[12] = v46;
    inited[13] = v34;

    sub_1001BB7D0(v1 + 25);

    sub_1001BB7D0(v1 + 20);

    v35 = swift_task_alloc();
    v1[39] = v35;
    *v35 = v1;
    v35[1] = sub_10023CD70;
    v36 = v1[32];

    return sub_1002016A0(v36);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1001AD2E4(v38, qword_100377698);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Client is not set. Invalid connection", v41, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v1[31] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = v1[30];
    swift_willThrow();
    v43 = v1[1];

    return v43();
  }
}

uint64_t sub_10023CD70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = sub_10023CF44;
  }

  else
  {
    *(v4 + 328) = a1;
    v7 = sub_10023CE98;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10023CE98()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v6 = v0[1];
  v7 = v0[41];

  return v6(v7);
}

uint64_t sub_10023CF44()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v6 = v0[40];
  v7 = v0[1];

  return v7();
}

uint64_t sub_10023D174(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10023D238;

  return SignInWithAppleDaemonService.fetchAccounts(with:)(v6);
}

uint64_t sub_10023D238()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100248004(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t SignInWithAppleDaemonService.fetchEULA(forClientID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10023D4A8;

  return (sub_1002450DC)(a1, a2);
}

uint64_t sub_10023D4A8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_10023D740(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10023D828;

  return sub_1002450DC(v5, v7);
}

uint64_t sub_10023D828(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    a2 = _convertErrorToNSError(_:)();

    v11 = a2;
LABEL_3:
    v12 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v11 = 0;
    goto LABEL_3;
  }

  v13 = String._bridgeToObjectiveC()();

  v12 = v13;
  v11 = 0;
  a2 = v13;
LABEL_6:
  v14 = *(v6 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t SignInWithAppleDaemonService.revokeAcccount(with:)(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return _swift_task_switch(sub_10023DA00, 0, 0);
}

uint64_t sub_10023DA00()
{
  v1 = *(v0[21] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[22] = v1;
  if (v1)
  {
    v2 = qword_100371BD8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Revoking SIWA account", v7, 2u);
    }

    v8 = v0[20];

    v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v9;
    v10 = [v8 altDSID];
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    [v9 setAltDSID:v10];

    v11 = [objc_allocWithZone(type metadata accessor for AccountRevokingRequestProvider()) initWithContext:v9 urlBagKey:AKURLBagKeyDeleteAuthorizedApp];
    v0[24] = v11;
    [v11 setAuthenticatedRequest:1];
    [v11 setClient:v3];
    v12 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v11];
    v0[25] = v12;
    v13 = type metadata accessor for AccountRevokingService();
    v14 = swift_allocObject();
    v0[26] = v14;
    *(v14 + 16) = v12;
    v15 = objc_allocWithZone(AAFKeychainManager);
    v16 = v12;
    v17 = [v15 init];
    v18 = [objc_opt_self() sharedInstance];
    v19 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v20 = sub_100244CAC(v17, v18, v19);
    v0[27] = v20;
    v21 = objc_opt_self();
    v41 = v3;
    v40 = [v21 sharedManager];
    v39 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
    v0[16] = v13;
    v0[17] = &off_1003268D8;
    v0[13] = v14;
    type metadata accessor for AccountRevokingController();
    inited = swift_initStackObject();
    v0[28] = inited;
    v23 = v0[16];
    v24 = sub_1001E947C((v0 + 13), v23);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64) + 15;
    v27 = swift_task_alloc();
    (*(v25 + 16))(v27, v24, v23);
    v28 = *v27;
    inited[9] = v13;
    inited[10] = &off_1003268D8;
    inited[5] = v20;
    inited[6] = v28;
    inited[2] = v40;
    inited[3] = v41;
    inited[4] = v39;
    v29 = v20;

    sub_1001BB7D0(v0 + 13);

    v30 = swift_task_alloc();
    v0[29] = v30;
    *v30 = v0;
    v30[1] = sub_10023DF8C;
    v31 = v0[20];

    return sub_1001C76A4(v31);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1001AD2E4(v33, qword_100377698);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Client is not set. Invalid connection", v36, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[19] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v0[18];
    swift_willThrow();
    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_10023DF8C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10023E170;
  }

  else
  {
    v3 = sub_10023E0A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10023E0A0()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  swift_setDeallocating();

  v8 = *(v1 + 32);
  swift_unknownObjectRelease();
  v9 = *(v1 + 40);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 48));

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023E170()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  swift_setDeallocating();

  v8 = *(v1 + 32);
  swift_unknownObjectRelease();
  v9 = *(v1 + 40);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 48));

  v10 = v0[30];
  v11 = v0[1];

  return v11();
}

uint64_t sub_10023E3C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248050;

  return SignInWithAppleDaemonService.revokeAcccount(with:)(v6);
}

uint64_t SignInWithAppleDaemonService.fetchAppIcon(forClientID:iconSize:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10023E55C;

  return sub_1002454E0(a1, a2, a3, a4);
}

uint64_t sub_10023E55C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10023E7F8(int a1, void *aBlock, double a3, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_10023E8FC;

  return sub_1002454E0(v9, v11, a3, a4);
}

uint64_t sub_10023E8FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t SignInWithAppleDaemonService.cancelAppIconRequest(forClientID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10023EB6C;

  return (sub_100245830)(a1, a2);
}

uint64_t sub_10023EB6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10023EDE8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10023EED0;

  return sub_100245830(v5, v7);
}

uint64_t sub_10023EED0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 1, 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t SignInWithAppleDaemonService.shareAccount(context:with:)(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return _swift_task_switch(sub_10023F09C, 0, 0);
}

uint64_t sub_10023F09C()
{
  v1 = *(*(v0 + 256) + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = qword_100371BD8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sharing SIWA account", v7, 2u);
    }

    v8 = *(v0 + 240);

    v9 = [objc_opt_self() sharedInstance];
    v10 = [objc_allocWithZone(AKCDPFactory) init];
    v11 = type metadata accessor for AccountSharingPreFlightChecker();
    v12 = swift_allocObject();
    *(v0 + 272) = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    *(v0 + 280) = v13;
    v14 = [v8 altDSID];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = *(v0 + 240);
    [v13 setAltDSID:v14];

    v16 = [v15 _isMoveAccountRequest];
    *(v0 + 368) = v16;
    v17 = AKURLBagKeySIWAUpdateShareToken;
    v18 = AKURLBagKeySIWAGenerateShareToken;
    *(v0 + 288) = AKURLBagKeySIWAUpdateShareToken;
    *(v0 + 296) = v18;
    if (v16)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    v20 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v13 urlBagKey:v19];
    *(v0 + 304) = v20;
    [v20 setAuthenticatedRequest:1];
    [v20 setClient:v3];
    v21 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v20];
    *(v0 + 312) = v21;
    v56 = type metadata accessor for AccountSharingService();
    v22 = swift_allocObject();
    *(v0 + 320) = v22;
    *(v22 + 16) = v21;
    v23 = v22;
    v24 = objc_allocWithZone(AAFKeychainManager);
    v25 = v21;
    v26 = [v24 init];
    v27 = [objc_opt_self() sharedInstance];
    v28 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v60 = sub_100244CAC(v26, v27, v28);
    *(v0 + 328) = v60;
    v29 = objc_opt_self();
    v59 = v3;
    v58 = [v29 sharedManager];
    v30 = objc_allocWithZone(AKAuthorizationStoreManager);

    v57 = [v30 init];
    *(v0 + 144) = v12;
    *(v0 + 168) = v11;
    *(v0 + 176) = &off_100328630;
    *(v0 + 208) = v56;
    *(v0 + 216) = &off_1003270E8;
    *(v0 + 184) = v23;
    type metadata accessor for AccountSharingController();
    inited = swift_initStackObject();
    *(v0 + 336) = inited;
    v32 = *(v0 + 168);
    v33 = v11;
    v34 = sub_1001E947C(v0 + 144, v32);
    v35 = *(v32 - 8);
    v36 = *(v35 + 64) + 15;
    v37 = swift_task_alloc();
    (*(v35 + 16))(v37, v34, v32);
    v38 = *(v0 + 208);
    v39 = sub_1001E947C(v0 + 184, v38);
    v40 = *(v38 - 8);
    v41 = *(v40 + 64) + 15;
    v42 = swift_task_alloc();
    (*(v40 + 16))(v42, v39, v38);
    v43 = *v37;
    v44 = *v42;
    inited[7] = v33;
    inited[8] = &off_100328630;
    inited[4] = v43;
    inited[14] = v56;
    inited[15] = &off_1003270E8;
    inited[2] = v59;
    inited[3] = v58;
    inited[9] = v57;
    inited[10] = v60;
    inited[11] = v44;
    v45 = v60;

    sub_1001BB7D0((v0 + 184));

    sub_1001BB7D0((v0 + 144));

    v46 = swift_task_alloc();
    *(v0 + 344) = v46;
    *v46 = v0;
    v46[1] = sub_10023F7A4;
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);

    return sub_10020907C(v48, v47);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1001AD2E4(v50, qword_100377698);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Client is not set. Invalid connection", v53, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 232) = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v54 = *(v0 + 224);
    swift_willThrow();
    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_10023F7A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_10023F9D8;
  }

  else
  {
    *(v4 + 360) = a1;
    v7 = sub_10023F8CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10023F8CC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = (v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  if (*(v0 + 368))
  {
    v6 = (v0 + 288);
  }

  v10 = *v6;
  v11 = *(v0 + 336);
  swift_setDeallocating();

  sub_1001BB7D0((v1 + 32));
  v12 = *(v1 + 72);
  swift_unknownObjectRelease();
  v13 = *(v1 + 80);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 88));

  v14 = *(v0 + 8);
  v15 = *(v0 + 360);

  return v14(v15);
}

uint64_t sub_10023F9D8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v6 = (v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  if (*(v0 + 368))
  {
    v6 = (v0 + 288);
  }

  v10 = *v6;
  v11 = *(v0 + 336);
  swift_setDeallocating();

  sub_1001BB7D0((v1 + 32));
  v12 = *(v1 + 72);
  swift_unknownObjectRelease();
  v13 = *(v1 + 80);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 88));

  v14 = *(v0 + 352);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10023FC70(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10023FD48;

  return SignInWithAppleDaemonService.shareAccount(context:with:)(v8, v9);
}

uint64_t sub_10023FD48(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t SignInWithAppleDaemonService.unshareAccount(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10023FF40, 0, 0);
}

uint64_t sub_10023FF40()
{
  v1 = *(v0[20] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = objc_allocWithZone(AAFKeychainManager);
    v4 = v1;
    v5 = [v3 init];
    v6 = [objc_opt_self() sharedInstance];
    v7 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v35 = sub_100244CAC(v5, v6, v7);
    v0[22] = v35;
    v8 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v8;
    v9 = [v2 altDSID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v8 setAltDSID:v9];

    v10 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v8 urlBagKey:AKURLBagKeySIWARevokeShareToken];
    v0[24] = v10;
    [v10 setAuthenticatedRequest:1];
    [v10 setClient:v4];
    v11 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v10];
    v0[25] = v11;
    v12 = type metadata accessor for AccountUnsharingService();
    v13 = swift_allocObject();
    v0[26] = v13;
    *(v13 + 16) = v11;
    v14 = objc_opt_self();
    v34 = v4;
    v15 = v11;
    v16 = [v14 sharedManager];
    v0[15] = v12;
    v0[16] = &off_1003269B8;
    v0[12] = v13;
    type metadata accessor for AccountUnsharingController();
    inited = swift_initStackObject();
    v0[27] = inited;
    v18 = v0[15];
    v19 = sub_1001E947C((v0 + 12), v18);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64) + 15;
    v22 = swift_task_alloc();
    (*(v20 + 16))(v22, v19, v18);
    v23 = *v22;
    inited[8] = v12;
    inited[9] = &off_1003269B8;
    inited[2] = v34;
    inited[3] = v16;
    inited[4] = v35;
    inited[5] = v23;
    v24 = v35;

    sub_1001BB7D0(v0 + 12);

    v25 = swift_task_alloc();
    v0[28] = v25;
    *v25 = v0;
    v25[1] = sub_1002403FC;
    v26 = v0[19];

    return sub_1001B5714(v26);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377698);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is not set. Invalid connection", v31, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v0[17];
    swift_willThrow();
    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1002403FC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100248104;
  }

  else
  {
    v3 = sub_10024810C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100240698(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10024804C;

  return SignInWithAppleDaemonService.unshareAccount(context:)(v6);
}

uint64_t SignInWithAppleDaemonService.leaveGroup(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10024077C, 0, 0);
}

uint64_t sub_10024077C()
{
  v1 = *(v0[20] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = objc_allocWithZone(AAFKeychainManager);
    v4 = v1;
    v5 = [v3 init];
    v6 = [objc_opt_self() sharedInstance];
    v7 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v35 = sub_100244CAC(v5, v6, v7);
    v0[22] = v35;
    v8 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v8;
    v9 = [v2 altDSID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v8 setAltDSID:v9];

    v10 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v8 urlBagKey:AKURLBagKeySIWARevokeShareToken];
    v0[24] = v10;
    [v10 setAuthenticatedRequest:1];
    [v10 setClient:v4];
    v11 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v10];
    v0[25] = v11;
    v12 = type metadata accessor for AccountUnsharingService();
    v13 = swift_allocObject();
    v0[26] = v13;
    *(v13 + 16) = v11;
    v14 = objc_opt_self();
    v34 = v4;
    v15 = v11;
    v16 = [v14 sharedManager];
    v0[15] = v12;
    v0[16] = &off_1003269B8;
    v0[12] = v13;
    type metadata accessor for AccountUnsharingController();
    inited = swift_initStackObject();
    v0[27] = inited;
    v18 = v0[15];
    v19 = sub_1001E947C((v0 + 12), v18);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64) + 15;
    v22 = swift_task_alloc();
    (*(v20 + 16))(v22, v19, v18);
    v23 = *v22;
    inited[8] = v12;
    inited[9] = &off_1003269B8;
    inited[2] = v34;
    inited[3] = v16;
    inited[4] = v35;
    inited[5] = v23;
    v24 = v35;

    sub_1001BB7D0(v0 + 12);

    v25 = swift_task_alloc();
    v0[28] = v25;
    *v25 = v0;
    v25[1] = sub_100240C38;
    v26 = v0[19];

    return sub_1001B6B50(v26);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377698);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is not set. Invalid connection", v31, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v0[17];
    swift_willThrow();
    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100240C38()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100240E14;
  }

  else
  {
    v3 = sub_100240D4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100240D4C()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  swift_setDeallocating();

  v8 = *(v2 + 32);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v2 + 40));

  v9 = v0[1];

  return v9();
}

uint64_t sub_100240E14()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  swift_setDeallocating();

  v8 = *(v2 + 32);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v2 + 40));

  v9 = v0[29];
  v10 = v0[1];

  return v10();
}

uint64_t sub_100241064(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100241128;

  return SignInWithAppleDaemonService.leaveGroup(context:)(v6);
}

uint64_t sub_100241128()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 1, 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t SignInWithAppleDaemonService.deleteAllItemsFromDepartedGroup(context:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1002412EC, 0, 0);
}

uint64_t sub_1002412EC()
{
  if (*(*(v0 + 40) + OBJC_IVAR___AKSignInWithAppleDaemonService_client))
  {
    v1 = [*(v0 + 32) currentGroupID];
    if (v1)
    {
      v2 = v1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = [objc_allocWithZone(AAFKeychainManager) init];
      v4 = [objc_opt_self() sharedInstance];
      v5 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
      v6 = sub_100244CAC(v3, v4, v5);
      sub_1001F0774();

      goto LABEL_16;
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_100377698);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      v11 = -16007;
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, v13, "Context is missing groupID", v14, 2u);
    v11 = -16007;
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377698);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      v11 = -16003;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Client is not set. Invalid connection", v10, 2u);
    v11 = -16003;
  }

LABEL_15:

  type metadata accessor for SignInWithAppleError(0);
  *(v0 + 24) = v11;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B754C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = *(v0 + 16);
  swift_willThrow();
LABEL_16:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100241760(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248054;

  return SignInWithAppleDaemonService.deleteAllItemsFromDepartedGroup(context:)(v6);
}

uint64_t SignInWithAppleDaemonService.participantRemovedWithContext(context:participantID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100241848, 0, 0);
}

uint64_t sub_100241848()
{
  v1 = *(v0[22] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = v1;
    v4 = [v2 currentGroupID];
    if (v4)
    {
      v5 = v0[19];
      v6 = v4;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v8;
      v40 = v7;
      v9 = v8;

      v0[24] = v9;
      v10 = [objc_allocWithZone(AAFKeychainManager) init];
      v11 = [objc_opt_self() sharedInstance];
      v12 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
      v13 = sub_100244CAC(v10, v11, v12);
      v0[25] = v13;
      v14 = sub_100245C10(v3, v5);
      v0[26] = v14;
      v15 = type metadata accessor for SharedAccountsTokenRotationController();
      v0[13] = v15;
      v0[14] = &off_1003274B8;
      v0[10] = v14;
      type metadata accessor for ParticipantGroupDepartureController();
      inited = swift_initStackObject();
      v0[27] = inited;
      v17 = v0[13];
      v18 = sub_1001E947C((v0 + 10), v17);
      v19 = *(v17 - 8);
      v20 = *(v19 + 64) + 15;
      v21 = swift_task_alloc();
      (*(v19 + 16))(v21, v18, v17);
      v22 = *v21;
      inited[6] = v15;
      inited[7] = &off_1003274B8;
      inited[2] = v13;
      inited[3] = v22;
      v23 = v13;

      sub_1001BB7D0(v0 + 10);

      v24 = swift_task_alloc();
      v0[28] = v24;
      *v24 = v0;
      v24[1] = sub_100241D0C;
      v26 = v0[20];
      v25 = v0[21];

      return sub_1001BB340(v26, v25, v40, v39);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1001AD2E4(v33, qword_100377698);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Context is missing groupID", v36, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v0[17];
    swift_willThrow();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377698);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is not set. Invalid connection", v31, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[16] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v0[15];
    swift_willThrow();
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_100241D0C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 192);

  if (v0)
  {
    v6 = sub_100241ED8;
  }

  else
  {
    v6 = sub_100241E40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100241E40()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v2 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100241ED8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_unknownObjectRelease();
  sub_1001BB7D0((v2 + 24));
  v5 = *(v0 + 232);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100242100(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1002421EC;

  return SignInWithAppleDaemonService.participantRemovedWithContext(context:participantID:)(v10, v7, v9);
}

uint64_t sub_1002421EC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 1, 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t SignInWithAppleDaemonService.fetchSharedGroups(with:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1002423D4, 0, 0);
}

uint64_t sub_1002423D4()
{
  v1 = *(v0[8] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = objc_allocWithZone(AKAppleIDAuthenticationContext);
    v4 = v1;
    v5 = [v3 init];
    v0[10] = v5;
    v6 = [v2 altDSID];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [v5 setAltDSID:v6];

    v7 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v5 urlBagKey:AKURLBagKeySIWAFetchSharedGroups];
    v0[11] = v7;
    [v7 setAuthenticatedRequest:1];
    [v7 setClient:v4];
    v8 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v7];
    v0[12] = v8;
    type metadata accessor for AccountSharingService();
    inited = swift_initStackObject();
    v0[13] = inited;
    *(inited + 16) = v8;
    v10 = v8;
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1002426EC;

    return sub_1001CF4A8();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_100377698);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Client is not set. Invalid connection", v16, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[6] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = v0[5];
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1002426EC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10024288C;
  }

  else
  {

    v3 = sub_10024280C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024280C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10024288C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[15];
  v6 = v0[1];

  return v6();
}

uint64_t sub_100242A94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248058;

  return SignInWithAppleDaemonService.fetchSharedGroups(with:)(v6);
}

uint64_t SignInWithAppleDaemonService.performTokenRotation(with:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100242B78, 0, 0);
}

uint64_t sub_100242B78()
{
  v1 = *(v0[7] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = v1;
    v4 = [v2 _groups];
    if (v4)
    {
      v5 = v0[6];
      v6 = v4;
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v0[9] = v7;

      v0[10] = sub_100245C10(v3, v5);
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_100242ED4;

      return sub_1001DFD48(v7);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, qword_100377698);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Groups is not set.", v18, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[5] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v0[4];
    swift_willThrow();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_100377698);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Client is not set. Invalid connection", v13, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[3] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v0[2];
    swift_willThrow();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100242ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);

  if (v0)
  {
    v6 = sub_100243074;
  }

  else
  {
    v6 = sub_100243008;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100243008()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100243074()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100243268(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10024805C;

  return SignInWithAppleDaemonService.performTokenRotation(with:)(v6);
}

uint64_t sub_100243348()
{
  if (qword_100371BB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100243418;

  return sub_1001E8BF0();
}

uint64_t sub_100243418()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100243698(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return _swift_task_switch(sub_100243704, 0, 0);
}

uint64_t sub_100243704()
{
  if (qword_100371BB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002437D4;

  return sub_1001E8BF0();
}

uint64_t sub_1002437D4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2, 1, 0);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10024391C()
{
  v1 = *(v0[36] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[37] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    v5 = [v4 primaryAuthKitAccount];
    v0[38] = v5;

    if (v5)
    {
      v6 = [v2 sharedInstance];
      v7 = [v6 altDSIDForAccount:v5];

      if (v7)
      {
        v63 = [objc_allocWithZone(AKSignInWithAppleRequestContext) initWithAltDSID:v7];
        v0[39] = v63;

        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1001AD2E4(v8, qword_100377698);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching SIWA accounts", v11, 2u);
        }

        v12 = [v2 sharedInstance];
        v13 = [objc_allocWithZone(AKCDPFactory) init];
        v56 = type metadata accessor for AccountSharingPreFlightChecker();
        v14 = swift_allocObject();
        v0[40] = v14;
        *(v14 + 16) = v12;
        *(v14 + 24) = v13;
        v15 = [objc_allocWithZone(AAFKeychainManager) init];
        v16 = objc_opt_self();
        v17 = [v16 sharedInstance];
        v18 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
        v19 = sub_100244CAC(v15, v17, v18);
        v0[41] = v19;
        v20 = [v16 sharedInstance];
        v21 = [objc_allocWithZone(AAFKeychainManager) init];
        v57 = type metadata accessor for SharedGroupsMembershipController();
        v22 = swift_allocObject();
        v0[42] = v22;
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = objc_opt_self();
        v64 = v3;
        v62 = [v23 sharedManager];
        v61 = [v2 sharedInstance];
        v60 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
        v24 = objc_allocWithZone(AKApplicationInformationController);
        v59 = v19;

        v58 = [v24 init];
        v0[20] = v14;
        v0[23] = v56;
        v0[24] = &off_100328630;
        v0[28] = v57;
        v0[29] = &off_100328758;
        v0[25] = v22;
        type metadata accessor for AccountsListingController();
        inited = swift_initStackObject();
        v0[43] = inited;
        v26 = v0[23];
        v27 = sub_1001E947C((v0 + 20), v26);
        v28 = *(v26 - 8);
        v29 = *(v28 + 64) + 15;
        v30 = swift_task_alloc();
        (*(v28 + 16))(v30, v27, v26);
        v31 = v0[28];
        v32 = sub_1001E947C((v0 + 25), v31);
        v33 = *(v31 - 8);
        v34 = *(v33 + 64) + 15;
        v35 = swift_task_alloc();
        (*(v33 + 16))(v35, v32, v31);
        v36 = *v30;
        v37 = *v35;
        inited[10] = v56;
        inited[11] = &off_100328630;
        inited[16] = v57;
        inited[17] = &off_100328758;
        inited[2] = v62;
        inited[3] = v64;
        inited[4] = v61;
        inited[5] = v60;
        inited[7] = v36;
        inited[6] = v59;
        inited[12] = v58;
        inited[13] = v37;

        sub_1001BB7D0(v0 + 25);

        sub_1001BB7D0(v0 + 20);

        v38 = swift_task_alloc();
        v0[44] = v38;
        *v38 = v0;
        v38[1] = sub_100244220;

        return sub_100203DDC(v63);
      }

      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1001AD2E4(v50, qword_100377698);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "No authKit account", v53, 2u);
      }

      type metadata accessor for SignInWithAppleError(0);
      v0[35] = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      v54 = v0[34];
      swift_willThrow();
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1001AD2E4(v45, qword_100377698);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "No primary authKit account", v48, 2u);
      }

      type metadata accessor for SignInWithAppleError(0);
      v0[33] = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      v49 = v0[32];
      swift_willThrow();
    }
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1001AD2E4(v40, qword_100377698);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Client is not set. Invalid connection", v43, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[31] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v44 = v0[30];
    swift_willThrow();
  }

  v55 = v0[1];

  return v55();
}

uint64_t sub_100244220(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = sub_10024440C;
  }

  else
  {
    *(v4 + 368) = a1;
    v7 = sub_100244348;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100244348()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_10024440C()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v8 = v0[45];
  v9 = v0[1];

  return v9();
}