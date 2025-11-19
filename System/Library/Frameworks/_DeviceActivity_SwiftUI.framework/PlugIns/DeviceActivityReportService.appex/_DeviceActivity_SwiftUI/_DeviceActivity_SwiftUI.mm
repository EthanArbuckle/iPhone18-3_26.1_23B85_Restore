DeviceActivityReportService::AppInfoSource_optional __swiftcall AppInfoSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int sub_1000019EC()
{
  v1 = *v0;
  sub_10001AFA4();
  sub_10001AFB4(v1);
  return sub_10001AFC4();
}

Swift::Int sub_100001A60()
{
  v1 = *v0;
  sub_10001AFA4();
  sub_10001AFB4(v1);
  return sub_10001AFC4();
}

uint64_t *sub_100001AA4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t AppInfo.source.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AppInfo.bundleIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AppInfo.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t AppInfo.displayName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AppInfo.displayName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_100001D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001DFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001F24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001A724();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100001F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100001D8C(v2 + v4, a2);
}

uint64_t sub_100001FFC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_100001E50(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t AppInfo.description.getter()
{
  v1 = v0;
  v2 = (*(*(sub_100001DFC(&qword_1000291D8, &qword_10001B990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v26 - v3;
  v33 = 0x203A656372756F53;
  v34 = 0xE800000000000000;
  swift_beginAccess();
  LOBYTE(v31) = *(v0 + 16);
  sub_100001DFC(&qword_1000291E0, &qword_10001B998);
  v35._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v35);

  v36._countAndFlagsBits = 10;
  v36._object = 0xE100000000000000;
  sub_10001AC64(v36);
  v6 = v33;
  v5 = v34;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_10001AEB4(22);

  v31 = 0xD000000000000013;
  v32 = 0x800000010001CCA0;
  swift_beginAccess();
  v7 = *(v0 + 32);
  v30[0] = *(v0 + 24);
  v30[1] = v7;

  sub_100001DFC(&qword_1000291E8, &unk_10001B9A0);
  v37._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v37);

  v38._countAndFlagsBits = 10;
  v38._object = 0xE100000000000000;
  sub_10001AC64(v38);
  v8 = v31;
  v9 = v32;
  v31 = v6;
  v32 = v5;

  v39._countAndFlagsBits = v8;
  v39._object = v9;
  sub_10001AC64(v39);

  v11 = v31;
  v10 = v32;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_10001AEB4(17);

  strcpy(v30, "Display Name: ");
  HIBYTE(v30[1]) = -18;
  swift_beginAccess();
  v12 = *(v0 + 48);
  v27 = *(v0 + 40);
  v28 = v12;

  v40._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v40);

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  sub_10001AC64(v41);
  v13 = v30[0];
  v14 = v30[1];
  v30[0] = v11;
  v30[1] = v10;

  v42._countAndFlagsBits = v13;
  v42._object = v14;
  sub_10001AC64(v42);

  v16 = v30[0];
  v15 = v30[1];
  v27 = 0x5255206C61636F4CLL;
  v28 = 0xEB00000000203A4CLL;
  v17 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
  swift_beginAccess();
  sub_100001D8C(v1 + v17, v4);
  v43._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v43);

  v44._countAndFlagsBits = 10;
  v44._object = 0xE100000000000000;
  sub_10001AC64(v44);
  v18 = v27;
  v19 = v28;
  v27 = v16;
  v28 = v15;

  v45._countAndFlagsBits = v18;
  v45._object = v19;
  sub_10001AC64(v45);

  v21 = v27;
  v20 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_10001AEB4(16);

  strcpy(v29, "Artwork URL: ");
  HIWORD(v29[1]) = -4864;
  v22 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL;
  swift_beginAccess();
  sub_100001D8C(v1 + v22, v4);
  v46._countAndFlagsBits = sub_10001AC34();
  sub_10001AC64(v46);

  v47._countAndFlagsBits = 10;
  v47._object = 0xE100000000000000;
  sub_10001AC64(v47);
  v23 = v29[0];
  v24 = v29[1];
  v29[0] = v21;
  v29[1] = v20;

  v48._countAndFlagsBits = v23;
  v48._object = v24;
  sub_10001AC64(v48);

  return v29[0];
}

uint64_t AppInfo.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, &qword_1000291D8, &qword_10001B990);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, &qword_1000291D8, &qword_10001B990);
  return v0;
}

uint64_t AppInfo.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[6];

  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, &qword_1000291D8, &qword_10001B990);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, &qword_1000291D8, &qword_10001B990);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id variable initialization expression of AppInfoCache.appInfoCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

uint64_t variable initialization expression of AppInfoCache.lookupQueue()
{
  v8 = sub_10001ADD4();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_10001ADC4() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_10001AB94() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_10000289C();
  sub_10001AB84();
  v9 = &_swiftEmptyArrayStorage;
  sub_100004450(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  sub_10000BDE8(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_10001AE14();
}

unint64_t sub_10000289C()
{
  result = qword_100029940;
  if (!qword_100029940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029940);
  }

  return result;
}

uint64_t sub_1000028E8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002930()
{
  type metadata accessor for AppInfoCache();
  swift_allocObject();
  result = sub_100002A18();
  static AppInfoCache.shared = result;
  return result;
}

uint64_t *AppInfoCache.shared.unsafeMutableAddressor()
{
  if (qword_1000291A0 != -1)
  {
    swift_once();
  }

  return &static AppInfoCache.shared;
}

uint64_t static AppInfoCache.shared.getter()
{
  if (qword_1000291A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002A18()
{
  v21 = sub_10001ADD4();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_10001ADC4() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_10001AB94() - 8) + 64);
  __chkstk_darwin();
  v20 = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  *(v0 + 24) = [objc_allocWithZone(NSCache) init];
  v7 = sub_10000289C();
  v19[1] = "Bundle Identifier: ";
  v19[2] = v7;
  sub_10001AB84();
  v22 = &_swiftEmptyArrayStorage;
  sub_100004450(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  sub_10000BDE8(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v8 = sub_10001AE14();
  v9 = v20;
  *(v20 + 32) = v8;
  v10 = [objc_opt_self() ephemeralSessionConfiguration];
  v11 = [objc_opt_self() sharedURLCache];
  [v10 setURLCache:v11];

  [v10 setRequestCachePolicy:2];
  [v10 setHTTPShouldUsePipelining:1];
  v12 = [objc_allocWithZone(NSOperationQueue) init];
  v13 = *(v9 + 32);
  sub_10001AE24();

  v14 = sub_10001ABF4();

  [v12 setName:v14];

  [v12 setUnderlyingQueue:*(v9 + 32)];
  v15 = [objc_opt_self() sessionWithConfiguration:v10 delegate:0 delegateQueue:v12];
  *(v9 + 40) = v15;
  v16 = v15;
  v17 = [v12 name];
  [v16 setSessionDescription:v17];

  return v9;
}

uint64_t AppInfoCache.appInfo(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001AB74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001AB94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003184(a1, a2);
  swift_beginAccess();
  if (!*(v15 + 16))
  {
    v27 = *(v2 + 32);
    v16 = swift_allocObject();
    v26 = v5;
    v17 = v16;
    swift_weakInit();
    v18 = swift_allocObject();
    v25 = v17;
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a2;
    aBlock[4] = sub_10000351C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024D90;
    v24 = _Block_copy(aBlock);

    sub_10001AB84();
    v28 = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    v23 = v10;
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0);
    v19 = v26;
    sub_10001AE64();
    v20 = v24;
    sub_10001AE04();
    _Block_release(v20);
    (*(v6 + 8))(v9, v19);
    (*(v11 + 8))(v14, v23);
  }

  return v15;
}

uint64_t sub_100003184(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEF74616843692E65;
  if (!v5 && (sub_10001AF34() & 1) == 0)
  {
  }

  v6 = *(v2 + 24);
  v7 = sub_10001ABF4();

  v8 = [v6 objectForKey:v7];

  result = v8;
  if (!v8)
  {
    result = sub_10000A7E4(a1, a2);
    if (!result)
    {
      v10 = type metadata accessor for AppInfo();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      *(v13 + 16) = 3;
      *(v13 + 40) = 0u;
      *(v13 + 24) = 0u;
      v19 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
      v14 = sub_10001A724();
      v15 = *(*(v14 - 8) + 56);
      v15(v13 + v19, 1, 1, v14);
      v15(v13 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v14);
      swift_beginAccess();
      *(v13 + 16) = 0;
      swift_beginAccess();
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      swift_beginAccess();
      *(v13 + 40) = a1;
      *(v13 + 48) = a2;
      v16 = *(v2 + 24);
      swift_bridgeObjectRetain_n();
      v17 = v16;
      v18 = sub_10001ABF4();
      [v17 setObject:v13 forKey:v18];

      return v13;
    }
  }

  return result;
}

uint64_t sub_1000033E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100001DFC(&qword_100029208, &qword_10001B9B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001B970;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v7 = sub_10000AC9C(inited);
    swift_setDeallocating();
    sub_10000AD34(inited + 32);
    sub_100003528(v7, 0, 0);
  }

  return result;
}

void sub_100003528(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v114 = a2;
  v96 = sub_10001A5A4();
  v95 = *(v96 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v96);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v101 = &v92 - v10;
  v103 = sub_10001A724();
  v105 = *(v103 - 8);
  v11 = *(v105 + 64);
  v12 = __chkstk_darwin(v103);
  v94 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v92 - v14;
  v100 = sub_10001A804();
  v99 = *(v100 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v100);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10001A824();
  v97 = *(v98 - 8);
  v18 = *(v97 + 64);
  __chkstk_darwin(v98);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001DFC(&qword_100029480, &qword_10001BCD8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v92 - v23;
  v104 = sub_10001A664();
  v108 = *(v104 - 8);
  v25 = *(v108 + 64);
  v26 = __chkstk_darwin(v104);
  v106 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v107 = &v92 - v29;
  __chkstk_darwin(v28);
  v113 = &v92 - v30;
  v31 = sub_100001DFC(&qword_100029488, &qword_10001BCE0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v92 - v33;
  v35 = sub_10001A6A4();
  v111 = *(v35 - 8);
  v112 = v35;
  v36 = *(v111 + 64);
  __chkstk_darwin(v35);
  v110 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10001ABA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (&v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v4 + 32);
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v44 = v43;
  LOBYTE(v43) = sub_10001ABB4();
  (*(v39 + 8))(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v116 = a1;
  swift_beginAccess();
  v45 = *(v4 + 16);

  sub_100009FAC(v46);

  v47 = v116;
  if (!*(v116 + 16))
  {

    if (qword_1000291B8 == -1)
    {
LABEL_9:
      v55 = sub_10001AB64();
      sub_10000BDA0(v55, qword_100029B70);
      v51 = sub_10001AB44();
      v52 = sub_10001ADB4();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_12;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "Requested bundle identifiers have all been cached or are inflight";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v51, v52, v54, v53, 2u);

LABEL_12:

      v56 = v114;
      if (v114)
      {

        v56(&_swiftEmptyDictionarySingleton);
        sub_10000BDD8(v56);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  sub_10001A694();
  v49 = v111;
  v48 = v112;
  if ((*(v111 + 48))(v34, 1, v112) == 1)
  {

    sub_10000BE84(v34, &qword_100029488, &qword_10001BCE0);
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v50 = sub_10001AB64();
    sub_10000BDA0(v50, qword_100029B70);
    v51 = sub_10001AB44();
    v52 = sub_10001ADA4();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_12;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Failed to initialize URL for app info lookup";
    goto LABEL_11;
  }

  (*(v49 + 32))(v110, v34, v48);
  aBlock[0] = v47;

  sub_100001DFC(&qword_100029490, &qword_10001BCE8);
  sub_10000BDE8(&qword_100029498, &qword_100029490, &qword_10001BCE8);
  sub_10000BE30();
  sub_10001ACA4();

  sub_10001A654();

  sub_10001A7E4();
  sub_10001A814();
  (*(v97 + 8))(v20, v98);
  sub_10001A7F4();
  (*(v99 + 8))(v17, v100);
  v57 = sub_10001A7D4();
  v58 = *(v57 - 8);
  v59 = (*(v58 + 48))(v24, 1, v57);
  v92 = v4;
  if (v59 == 1)
  {
    sub_10000BE84(v24, &qword_100029480, &qword_10001BCD8);
  }

  else
  {
    sub_10001A7C4();
    (*(v58 + 8))(v24, v57);
  }

  v61 = v107;
  v60 = v108;
  sub_10001A654();

  v62 = v106;
  sub_10001A654();
  sub_100001DFC(&qword_1000294A8, &qword_10001BCF0);
  v63 = *(v60 + 72);
  v64 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_10001B980;
  v66 = v65 + v64;
  v67 = *(v60 + 16);
  v68 = v104;
  v67(v66, v113, v104);
  v67(v66 + v63, v61, v68);
  v67(v66 + 2 * v63, v62, v68);
  sub_10001A674();
  v69 = v101;
  sub_10001A684();
  v70 = v105;
  v71 = v103;
  if ((*(v105 + 48))(v69, 1, v103) == 1)
  {

    sub_10000BE84(v69, &qword_1000291D8, &qword_10001B990);
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v72 = sub_10001AB64();
    sub_10000BDA0(v72, qword_100029B70);
    v73 = sub_10001AB44();
    v74 = sub_10001ADA4();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v108;
    if (v75)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Failed to initialize URL with query parameters for app info lookup", v77, 2u);
    }

    v78 = v114;
    if (v114)
    {

      v78(&_swiftEmptyDictionarySingleton);
      sub_10000BDD8(v78);
    }

    v79 = *(v76 + 8);
    v79(v106, v68);
    v79(v107, v68);
    v79(v113, v68);
  }

  else
  {
    v80 = v102;
    (*(v70 + 32))(v102, v69, v71);
    v81 = v92;
    swift_beginAccess();

    sub_1000050E0(v82);
    swift_endAccess();
    (*(v70 + 16))(v94, v80, v71);
    v83 = v93;
    sub_10001A594();
    v84 = *(v81 + 40);
    v85 = sub_10001A584();
    v86 = swift_allocObject();
    v86[2] = v81;
    v86[3] = v47;
    v87 = v114;
    v88 = v109;
    v86[4] = v114;
    v86[5] = v88;
    aBlock[4] = sub_10000BEE8;
    aBlock[5] = v86;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000066AC;
    aBlock[3] = &unk_100024F38;
    v89 = _Block_copy(aBlock);

    sub_10000BF1C(v87);

    v90 = [v84 dataTaskWithRequest:v85 completionHandler:v89];
    _Block_release(v89);

    [v90 resume];
    (*(v95 + 8))(v83, v96);
    (*(v105 + 8))(v102, v71);
    v91 = *(v108 + 8);
    v91(v106, v68);
    v91(v107, v68);
    v91(v113, v68);
  }

  (*(v111 + 8))(v110, v112);
}

uint64_t sub_1000043F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppInfoCache.fetchAppInfo(bundleIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  sub_100001DFC(&qword_100029208, &qword_10001B9B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B970;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = sub_10000AC9C(inited);
  swift_setDeallocating();
  sub_10000AD34(inited + 32);

  sub_10000AE24(v11, v5, a3, a4, a1, a2);
}

uint64_t sub_100004588(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v7 = sub_10000A0D8(a4, a5), (v8 & 1) != 0))
  {
    v9 = *(*(a1 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  a2(v9);
}

uint64_t AppInfoCache.fetchAppInfo(bundleIdentifiers:completionHandler:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v80 = a3;
  v79 = a2;
  v78 = sub_10001AB74();
  v77 = *(v78 - 8);
  v4 = *(v77 + 64);
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10001AB94();
  v74 = *(v75 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin();
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyDictionarySingleton;
  v88 = &_swiftEmptySetSingleton;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v81 = 0x800000010001CCF0;
  v84 = a1;

  v14 = 0;
  v83 = a1 + 56;
  v82 = v13;
  while (v12)
  {
    v15 = v14;
LABEL_11:
    v16 = (*(v84 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = *v16;
    v18 = v16[1];
    if (*v16 != 0x6C7070612E6D6F63 || v18 != 0xEF74616843692E65)
    {
      v20 = *v16;
      v21 = v16[1];
      if ((sub_10001AF34() & 1) == 0)
      {
      }
    }

    v22 = *(v85 + 24);

    v23 = v22;
    v24 = sub_10001ABF4();

    v25 = [v23 objectForKey:v24];

    if (!v25)
    {
      v26 = sub_10000A7E4(v17, v18);
      if (v26)
      {
        v25 = v26;
      }

      else
      {
        v27 = type metadata accessor for AppInfo();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        v25 = swift_allocObject();
        v25[16] = 3;
        *(v25 + 40) = 0u;
        v72 = (v25 + 40);
        *(v25 + 24) = 0u;
        v71 = (v25 + 24);
        v70 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
        v30 = v8;
        v31 = sub_10001A724();
        v32 = *(*(v31 - 8) + 56);
        v32(&v25[v70], 1, 1, v31);
        v33 = v31;
        v8 = v30;
        v32(&v25[OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL], 1, 1, v33);
        swift_beginAccess();
        v25[16] = 0;
        v34 = v71;
        swift_beginAccess();
        *v34 = v17;
        *(v25 + 4) = v18;
        v35 = v72;
        swift_beginAccess();
        *v35 = v17;
        *(v25 + 6) = v18;
        v36 = *(v85 + 24);
        swift_bridgeObjectRetain_n();
        v37 = v36;
        v38 = sub_10001ABF4();
        [v37 setObject:v25 forKey:v38];
      }
    }

    v12 &= v12 - 1;
    swift_beginAccess();
    if (!v25[16])
    {
      sub_100007040(aBlock, v17, v18);

      v14 = v15;
      goto LABEL_5;
    }

    v39 = *(v8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v39;
    v41 = v8;
    *(v8 + 16) = 0x8000000000000000;
    v43 = sub_10000A0D8(v17, v18);
    v44 = *(v39 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_10001AF54();
      __break(1u);
      return result;
    }

    v47 = v42;
    if (*(v39 + 24) >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v50 = aBlock[0];
        if ((v42 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_10000A62C();
        v50 = aBlock[0];
        if ((v47 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_10000A208(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_10000A0D8(v17, v18);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_42;
      }

      v43 = v48;
      v50 = aBlock[0];
      if ((v47 & 1) == 0)
      {
LABEL_32:
        v50[(v43 >> 6) + 8] |= 1 << v43;
        v53 = (v50[6] + 16 * v43);
        *v53 = v17;
        v53[1] = v18;
        *(v50[7] + 8 * v43) = v25;
        v54 = v50[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_41;
        }

        v50[2] = v56;
        goto LABEL_34;
      }
    }

    v51 = v50[7];
    v52 = *(v51 + 8 * v43);
    *(v51 + 8 * v43) = v25;

LABEL_34:
    v8 = v41;
    *(v41 + 16) = v50;
    v14 = v15;
LABEL_5:
    v9 = v83;
    v13 = v82;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v57 = v88;
  if (v88[2])
  {
    v58 = *(v85 + 32);
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v57;
    v61 = v79;
    v60[4] = v8;
    v60[5] = v61;
    v60[6] = v80;
    aBlock[4] = sub_10000B848;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024E08;
    v62 = _Block_copy(aBlock);

    v63 = v73;
    sub_10001AB84();
    v86 = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0);
    v64 = v76;
    v65 = v78;
    sub_10001AE64();
    sub_10001AE04();
    _Block_release(v62);
    (*(v77 + 8))(v64, v65);
    (*(v74 + 8))(v63, v75);
  }

  else
  {

    v67 = *(v8 + 16);

    v79(v68);
  }
}

uint64_t sub_100004F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;

    sub_100003528(a2, sub_10000BD94, v10);
  }

  return result;
}

uint64_t sub_100004FD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a1 + 16))
  {
    swift_beginAccess();

    v6 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000C044(a1, sub_10000A79C, 0, isUniquelyReferenced_nonNull_native, &v11);

    *(a2 + 16) = v11;
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = *(a2 + 16);

  a3(v9);
}

uint64_t sub_1000050E0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100007040(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1000051E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v7 = v6;
  v173 = a6;
  v174 = a5;
  v172 = sub_10001AB74();
  v12 = *(v172 - 8);
  v13 = *(v12 + 64);
  (__chkstk_darwin)();
  v169 = v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_10001AB94();
  v168 = *(v170 - 8);
  v15 = *(v168 + 64);
  (__chkstk_darwin)();
  v167 = v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(sub_100001DFC(&qword_1000291D8, &qword_10001B990) - 8) + 64);
  v18 = (__chkstk_darwin)();
  v166 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v171 = v154 - v20;
  v21 = sub_10001ABA4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v7 + 32);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = sub_10001ABB4();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  swift_beginAccess();
  sub_100009FAC(a1);
  swift_endAccess();
  v28 = a1;
  if (a3 >> 60 == 15 || a4)
  {
    if (qword_1000291B8 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_12;
  }

  v29 = v7;
  v30 = a3;
  v31 = objc_opt_self();
  v32 = a2;
  sub_10000BC84(a2, a3);
  isa = sub_10001A734().super.isa;
  aBlock[0] = 0;
  v34 = [v31 JSONObjectWithData:isa options:0 error:aBlock];

  v35 = aBlock[0];
  if (v34)
  {
    sub_10001AE54();
    swift_unknownObjectRelease();
    sub_10000BF40(&v178, aBlock);
    sub_100001DFC(&qword_1000294B8, &qword_10001BD08);
    if (!swift_dynamicCast())
    {
      if (qword_1000291B8 != -1)
      {
        swift_once();
      }

      v92 = sub_10001AB64();
      sub_10000BDA0(v92, qword_100029B70);

      v93 = sub_10001AB44();
      v94 = sub_10001AD94();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock[0] = v96;
        *v95 = 136315138;
        v97 = sub_10001AD64();
        v99 = sub_100019C94(v97, v98, aBlock);

        *(v95 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v93, v94, "Failed to deserialize lookup for %s", v95, 0xCu);
        sub_10000BF9C(v96);
      }

      v100 = v174;
      if (!v174)
      {
        sub_10000BF9C(&v178);
        sub_10000BF2C(a2, a3);
        return;
      }

      v100(&_swiftEmptyDictionarySingleton);
      sub_10000BF2C(a2, a3);
      sub_10000BDD8(v100);
      goto LABEL_43;
    }

    v36 = v176;
    v175 = v28;
    v37 = *(v176 + 16);
    v158 = v12;
    v38 = v174;
    v39 = v172;
    if (v37)
    {

      v40 = sub_10000A0D8(0x73746C75736572, 0xE700000000000000);
      if (v41)
      {
        sub_10000BF40(*(v36 + 56) + 32 * v40, aBlock);

        sub_100001DFC(&qword_1000294C0, &qword_10001BD10);
        if (swift_dynamicCast())
        {
          v156 = a2;
          a4 = v176;
          v42 = *(v176 + 16);
          v155 = v30;
          v154[1] = v29;
          if (!v42)
          {

            v102 = &_swiftEmptyDictionarySingleton;
            goto LABEL_48;
          }

          v165 = &_swiftEmptyDictionarySingleton;
          v43 = 32;
          v44 = v171;
          v157 = v176;
          while (1)
          {
            v70 = *(a4 + v43);

            v72 = sub_10000C2D0(v71, 0x6449656C646E7562, 0xE800000000000000);
            if (v73)
            {
              v74 = v72;
              v75 = v73;
              v76 = sub_10000C2D0(v70, 0x6D614E6B63617274, 0xE900000000000065);
              if (v77)
              {
                v159 = v42;
                v162 = v77;
                v163 = v76;
                v164 = v74;
                v78 = sub_10001A724();
                v79 = *(v78 - 8);
                *&v161 = *(v79 + 56);
                v160 = v79 + 56;
                (v161)(v44, 1, 1, v78);
                sub_10000C2D0(v70, 0x556B726F77747261, 0xED00003030316C72);
                v81 = v80;

                if (v81)
                {
                  v82 = v166;
                  sub_10001A714();

                  sub_10000BE84(v44, &qword_1000291D8, &qword_10001B990);
                  sub_10000C570(v82, v44);
                }

                v83 = type metadata accessor for AppInfo();
                v84 = *(v83 + 48);
                v85 = *(v83 + 52);
                v86 = swift_allocObject();
                *(v86 + 16) = 3;
                *(v86 + 40) = 0u;
                *(v86 + 24) = 0u;
                v87 = v161;
                (v161)(v86 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL, 1, 1, v78);
                v88 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL;
                v87(v86 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v78);
                swift_beginAccess();
                *(v86 + 16) = 2;
                swift_beginAccess();
                v89 = v164;
                *(v86 + 24) = v164;
                v44 = v171;
                *(v86 + 32) = v75;
                swift_beginAccess();
                *(v86 + 40) = v163;
                *(v86 + 48) = v162;
                swift_beginAccess();

                sub_10000C500(v44, v86 + v88);
                swift_endAccess();

                v90 = v165;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v90;
                sub_10000A4B0(v86, v89, v75, isUniquelyReferenced_nonNull_native);

                v165 = aBlock[0];
                sub_10000E7A8(v89, v75);

                sub_10000BE84(v44, &qword_1000291D8, &qword_10001B990);
                a4 = v157;
                v42 = v159;
                goto LABEL_24;
              }
            }

LABEL_24:
            v43 += 8;
            if (!--v42)
            {

              v28 = v175;
              v39 = v172;
              v102 = v165;
LABEL_48:
              v111 = 0;
              v112 = v28 + 56;
              v113 = 1 << *(v28 + 32);
              v114 = -1;
              if (v113 < 64)
              {
                v114 = ~(-1 << v113);
              }

              v115 = v114 & *(v28 + 56);
              v116 = (v113 + 63) >> 6;
              *&v110 = 136315138;
              v161 = v110;
              v32 = v156;
              v164 = v28;
              v163 = v28 + 56;
              v162 = v116;
              while (v115)
              {
                v119 = v111;
LABEL_58:
                v120 = (*(v28 + 48) + ((v119 << 10) | (16 * __clz(__rbit64(v115)))));
                v122 = *v120;
                v121 = v120[1];
                v123 = qword_1000291B8;

                if (v123 != -1)
                {
                  swift_once();
                }

                v124 = sub_10001AB64();
                sub_10000BDA0(v124, qword_100029B70);

                v125 = sub_10001AB44();
                v126 = sub_10001AD94();

                v127 = os_log_type_enabled(v125, v126);
                v165 = v102;
                v171 = v121;
                v166 = v122;
                if (v127)
                {
                  v128 = swift_slowAlloc();
                  v129 = swift_slowAlloc();
                  aBlock[0] = v129;
                  *v128 = v161;
                  *(v128 + 4) = sub_100019C94(v122, v121, aBlock);
                  _os_log_impl(&_mh_execute_header, v125, v126, "Failed to find app with bundle identifier %s", v128, 0xCu);
                  sub_10000BF9C(v129);
                }

                v130 = type metadata accessor for AppInfo();
                v131 = *(v130 + 48);
                v132 = *(v130 + 52);
                v133 = swift_allocObject();
                *(v133 + 16) = 3;
                *(v133 + 40) = 0u;
                *(v133 + 24) = 0u;
                v134 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
                v135 = sub_10001A724();
                v136 = *(*(v135 - 8) + 56);
                v136(v133 + v134, 1, 1, v135);
                v136(v133 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v135);
                swift_beginAccess();
                *(v133 + 16) = 2;
                swift_beginAccess();
                a4 = v166;
                *(v133 + 24) = v166;
                v137 = v171;
                *(v133 + 32) = v171;
                swift_beginAccess();
                *(v133 + 40) = a4;
                *(v133 + 48) = v137;
                swift_bridgeObjectRetain_n();
                v138 = v165;
                v139 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v138;
                v140 = sub_10000A0D8(a4, v137);
                v142 = v138[2];
                v143 = (v141 & 1) == 0;
                v144 = __OFADD__(v142, v143);
                v145 = v142 + v143;
                if (v144)
                {
                  __break(1u);
LABEL_76:
                  __break(1u);
                }

                v146 = v141;
                if (v138[3] >= v145)
                {
                  v147 = a4;
                  a4 = v137;
                  v149 = v172;
                  if ((v139 & 1) == 0)
                  {
                    v153 = v140;
                    sub_10000A62C();
                    v140 = v153;
                  }
                }

                else
                {
                  sub_10000A208(v145, v139);
                  v147 = a4;
                  v140 = sub_10000A0D8(a4, v137);
                  v149 = v172;
                  if ((v146 & 1) != (v148 & 1))
                  {
                    sub_10001AF54();
                    __break(1u);
                    return;
                  }
                }

                v115 &= v115 - 1;
                if (v146)
                {
                  a4 = v140;

                  v102 = aBlock[0];
                  v117 = *(aBlock[0] + 7);
                  v118 = *(v117 + 8 * a4);
                  *(v117 + 8 * a4) = v133;
                }

                else
                {
                  v102 = aBlock[0];
                  *(aBlock[0] + (v140 >> 6) + 8) |= 1 << v140;
                  v150 = (v102[6] + 16 * v140);
                  *v150 = v147;
                  v150[1] = v137;
                  *(v102[7] + 8 * v140) = v133;
                  v151 = v102[2];
                  v144 = __OFADD__(v151, 1);
                  v152 = v151 + 1;
                  if (v144)
                  {
                    goto LABEL_76;
                  }

                  v102[2] = v152;
                }

                v111 = v119;
                v28 = v164;
                v112 = v163;
                v116 = v162;
                v39 = v149;
                v32 = v156;
              }

              while (1)
              {
                v119 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  break;
                }

                if (v119 >= v116)
                {

                  v38 = v174;
                  v101 = v155;
                  goto LABEL_42;
                }

                v115 = *(v112 + 8 * v119);
                ++v111;
                if (v115)
                {
                  goto LABEL_58;
                }
              }

LABEL_73:
              __break(1u);
LABEL_74:
              swift_once();
LABEL_12:
              v45 = sub_10001AB64();
              sub_10000BDA0(v45, qword_100029B70);

              swift_errorRetain();
              v46 = sub_10001AB44();
              v47 = sub_10001AD94();

              if (os_log_type_enabled(v46, v47))
              {
                v48 = swift_slowAlloc();
                aBlock[0] = swift_slowAlloc();
                *v48 = 136315394;
                v49 = sub_10001AD64();
                v51 = sub_100019C94(v49, v50, aBlock);

                *(v48 + 4) = v51;
                *(v48 + 12) = 2080;
                v178 = a4;
                swift_errorRetain();
                sub_100001DFC(&qword_1000294B0, &qword_10001BCF8);
                v52 = sub_10001AC34();
                v54 = sub_100019C94(v52, v53, aBlock);

                *(v48 + 14) = v54;
                _os_log_impl(&_mh_execute_header, v46, v47, "Failed to lookup bundle identifiers %s with error %s", v48, 0x16u);
                swift_arrayDestroy();
              }

              v55 = v174;
              if (v174)
              {

                v55(&_swiftEmptyDictionarySingleton);
                v56 = v55;
                goto LABEL_22;
              }

              return;
            }
          }
        }

        v101 = v30;
        goto LABEL_41;
      }
    }

    v101 = v30;
LABEL_41:

    v102 = &_swiftEmptyDictionarySingleton;
LABEL_42:
    sub_10000289C();
    v103 = sub_10001ADE4();
    v104 = swift_allocObject();
    swift_weakInit();
    v105 = swift_allocObject();
    v105[2] = v104;
    v105[3] = v102;
    v106 = v173;
    v105[4] = v38;
    v105[5] = v106;
    aBlock[4] = sub_10000C038;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000043F4;
    aBlock[3] = &unk_100024F88;
    v107 = _Block_copy(aBlock);
    sub_10000BF1C(v38);

    v108 = v167;
    sub_10001AB84();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001DFC(&unk_100029950, &qword_10001B9B0);
    sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0);
    v109 = v169;
    sub_10001AE64();
    sub_10001AE04();
    sub_10000BF2C(v32, v101);
    _Block_release(v107);

    (*(v158 + 8))(v109, v39);
    (*(v168 + 8))(v108, v170);
LABEL_43:
    sub_10000BF9C(&v178);
    return;
  }

  v57 = v35;
  v58 = sub_10001A6F4();

  swift_willThrow();
  if (qword_1000291B8 != -1)
  {
    swift_once();
  }

  v59 = sub_10001AB64();
  sub_10000BDA0(v59, qword_100029B70);

  swift_errorRetain();
  v60 = sub_10001AB44();
  v61 = sub_10001AD94();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v62 = 136315394;
    v63 = sub_10001AD64();
    v65 = sub_100019C94(v63, v64, aBlock);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v178 = v58;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v66 = sub_10001AC34();
    v68 = sub_100019C94(v66, v67, aBlock);

    *(v62 + 14) = v68;
    v32 = a2;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to deserialize lookup for %s with error %s", v62, 0x16u);
    swift_arrayDestroy();
  }

  v69 = v174;
  if (v174)
  {

    v69(&_swiftEmptyDictionarySingleton);
    sub_10000BF2C(v32, a3);

    v56 = v69;
LABEL_22:
    sub_10000BDD8(v56);
  }

  else
  {
    sub_10000BF2C(v32, a3);
  }
}

uint64_t sub_1000066AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_10001A744();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_10000BF2C(v6, v11);
}

uint64_t sub_100006774(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006824(a2);
    if (a3)
    {

      a3(a2);

      return sub_10000BDD8(a3);
    }

    else
    {
    }
  }

  return result;
}

void sub_100006824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001ABA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000289C();
  *v8 = sub_10001ADE4();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_10001ABB4();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(a1 + 56) + 8 * v17);
      v22 = *(v2 + 24);

      v23 = v22;
      v24 = sub_10001ABF4();

      [v23 setObject:v21 forKey:v24];
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t AppInfoCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AppInfoCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100006AD0@<X0>(void *a1@<X8>)
{
  if (qword_1000291A0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AppInfoCache.shared;
}

id sub_100006B64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10001ABF4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10001A6F4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100006C48(uint64_t a1, id *a2)
{
  result = sub_10001AC04();
  *a2 = 0;
  return result;
}

uint64_t sub_100006CC0(uint64_t a1, id *a2)
{
  v3 = sub_10001AC14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006D40@<X0>(void *a1@<X8>)
{
  sub_10001AC24();
  v2 = sub_10001ABF4();

  *a1 = v2;
  return result;
}

uint64_t sub_100006D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001AC24();
  v6 = v5;
  if (v4 == sub_10001AC24() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001AF34();
  }

  return v9 & 1;
}

uint64_t sub_100006E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001ABF4();

  *a2 = v5;
  return result;
}

uint64_t sub_100006E54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001AC24();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100006E80(uint64_t a1)
{
  v2 = sub_100004450(&qword_100029448, type metadata accessor for _EXSceneRole);
  v3 = sub_100004450(&qword_100029450, type metadata accessor for _EXSceneRole);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006F3C()
{
  v1 = *v0;
  sub_10001AC24();
  v2 = sub_10001AC94();

  return v2;
}

uint64_t sub_100006F78()
{
  v1 = *v0;
  sub_10001AC24();
  sub_10001AC54();
}

Swift::Int sub_100006FCC()
{
  v1 = *v0;
  sub_10001AC24();
  sub_10001AFA4();
  sub_10001AC54();
  v2 = sub_10001AFC4();

  return v2;
}

uint64_t sub_100007040(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10001AFA4();
  sub_10001AC54();
  v9 = sub_10001AFC4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10001AF34() & 1) != 0)
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

    sub_100008608(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007190(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10001A7A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100004450(&qword_100029470, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_10001ABD4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100004450(&qword_100029478, &type metadata accessor for UUID);
      v23 = sub_10001ABE4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100008788(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100007470(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_10001AFA4();
  sub_10001A754();
  v8 = sub_10001AFC4();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v84;
    sub_10000BC84(a2, a3);
    sub_100008A2C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v84 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v90 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v87 = v16;
  v86 = v6;
  v82 = (a2 >> 32) - a2;
  v83 = a2 >> 32;
  v88 = v6 + 56;
  v89 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v90) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        sub_10000BCD8(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        sub_10000BC84(v79, *(&v79 + 1));
        return 0;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_147;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_146;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v87)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_148;
      }

      sub_10000BC84(v19, v18);
      v41 = sub_10001A6B4();
      if (v41)
      {
        v42 = v41;
        v43 = sub_10001A6D4();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_150;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      sub_10001A6C4();
      v12 = v89;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v81 = *(a2 + 24);
        v50 = sub_10001A6B4();
        if (v50)
        {
          v69 = sub_10001A6D4();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_164;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v81, v68);
        v70 = v81 - v68;
        if (v27)
        {
          goto LABEL_160;
        }

        result = sub_10001A6C4();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_176;
        }

        v9 = v88;
        v12 = v89;
        if (!v50)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v88;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v83 < a2)
        {
          goto LABEL_159;
        }

        v50 = sub_10001A6B4();
        if (v50)
        {
          v54 = sub_10001A6D4();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_166;
          }

          v50 += a2 - v54;
        }

        result = sub_10001A6C4();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_180;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v83 < a2)
      {
        goto LABEL_152;
      }

      sub_10000BC84(v19, v18);
      v31 = sub_10001A6B4();
      if (!v31)
      {
        goto LABEL_174;
      }

      v32 = v31;
      v33 = sub_10001A6D4();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_156;
      }

      v34 = (a2 - v33 + v32);
      v35 = sub_10001A6C4();
      if (!v34)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    sub_10000BC84(v19, v18);
    v46 = sub_10001A6B4();
    if (v46)
    {
      v57 = sub_10001A6D4();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_161;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_153;
    }

    v49 = sub_10001A6C4();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    sub_10000BCD8(v19, v18);
    v9 = v88;
    v12 = v89;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    sub_10000BC84(v19, v18);
    v37 = sub_10001A6B4();
    if (v37)
    {
      v38 = v37;
      v39 = sub_10001A6D4();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_149;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    sub_10001A6C4();
    v12 = v89;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v83 < a2)
        {
          goto LABEL_155;
        }

        v50 = sub_10001A6B4();
        if (v50)
        {
          v51 = sub_10001A6D4();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_165;
          }

          v50 += a2 - v51;
        }

        result = sub_10001A6C4();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_178;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v9 = v88;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_169;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      sub_10000BCD8(v19, v18);
      v6 = v86;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v80 = *(a2 + 24);
    v50 = sub_10001A6B4();
    if (v50)
    {
      v66 = sub_10001A6D4();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_163;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v80, v65);
    v67 = v80 - v65;
    if (v27)
    {
      goto LABEL_158;
    }

    result = sub_10001A6C4();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_182;
    }

    v9 = v88;
    v12 = v89;
    if (!v50)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v40 == v50)
    {
      sub_10000BCD8(v19, v18);
      sub_10000BCD8(a2, a3);
      v6 = v86;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v92 = a3;
    v93 = BYTE2(a3);
    v94 = BYTE3(a3);
    v95 = BYTE4(a3);
    v96 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    sub_10000BC84(v19, v18);
    v46 = sub_10001A6B4();
    if (v46)
    {
      v47 = sub_10001A6D4();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_162;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = sub_10001A6C4();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v83 < a2)
  {
    goto LABEL_151;
  }

  sub_10000BC84(v19, v18);
  v60 = sub_10001A6B4();
  if (v60)
  {
    v61 = v60;
    v62 = sub_10001A6D4();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_157;
    }

    v34 = (a2 - v62 + v61);
    v35 = sub_10001A6C4();
    if (!v34)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v35 >= v82)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    sub_10000BCD8(v19, v18);
    v9 = v88;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_10001A6C4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_10001A6C4();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100007DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  result = sub_10001AE94();
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
      sub_10001AFA4();
      sub_10001AC54();
      result = sub_10001AFC4();
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

uint64_t sub_10000804C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10001A7A4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  result = sub_10001AE94();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100004450(&qword_100029470, &type metadata accessor for UUID);
      result = sub_10001ABD4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000083A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  result = sub_10001AE94();
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
      sub_10001AFA4();
      sub_10001A754();
      result = sub_10001AFC4();
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

Swift::Int sub_100008608(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100007DEC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000932C();
      goto LABEL_16;
    }

    sub_10000981C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001AFA4();
  sub_10001AC54();
  result = sub_10001AFC4();
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

      result = sub_10001AF34();
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
  result = sub_10001AF44();
  __break(1u);
  return result;
}

uint64_t sub_100008788(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10001A7A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000804C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100009488();
      goto LABEL_12;
    }

    sub_100009A54(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100004450(&qword_100029470, &type metadata accessor for UUID);
  v15 = sub_10001ABD4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100004450(&qword_100029478, &type metadata accessor for UUID);
      v23 = sub_10001ABE4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10001AF44();
  __break(1u);
  return result;
}

Swift::Int sub_100008A2C(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1000083A8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000096C0();
      goto LABEL_143;
    }

    sub_100009D70(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001AFA4();
  sub_10001A754();
  result = sub_10001AFC4();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v80;
    *(*v80 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v84 = v17;
  v79 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v81 = v18;
  v77 = (v7 >> 32) - v7;
  v78 = v7 >> 32;
  v82 = v14;
  v83 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v84) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v81)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v78 < v7)
        {
          goto LABEL_152;
        }

        sub_10000BC84(v21, v20);
        v31 = sub_10001A6B4();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = sub_10001A6D4();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = sub_10001A6C4();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v77)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = sub_10000BCD8(v21, v20);
LABEL_141:
        v14 = v82;
        v12 = v83;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      sub_10000BC84(v21, v20);
      v34 = sub_10001A6B4();
      if (v34)
      {
        v55 = sub_10001A6D4();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = sub_10001A6C4();
      v10 = v79;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_10000BC84(v21, v20);
    v39 = sub_10001A6B4();
    if (v39)
    {
      v45 = sub_10001A6D4();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    sub_10001A6C4();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = sub_10001A6B4();
      if (v41)
      {
        v67 = sub_10001A6D4();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v76, v66);
      v68 = v76 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = sub_10001A6C4();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_160;
      }

      v41 = sub_10001A6B4();
      if (v41)
      {
        v46 = sub_10001A6D4();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = sub_10001A6C4();
      v44 = (v7 >> 32) - v7;
      if (v47 < v77)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_10000BC84(v21, v20);
    v39 = sub_10001A6B4();
    if (v39)
    {
      v40 = sub_10001A6D4();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    sub_10001A6C4();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v75 = *(v7 + 24);
      v41 = sub_10001A6B4();
      if (v41)
      {
        v63 = sub_10001A6D4();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v75, v62);
      v64 = v75 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = sub_10001A6C4();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_155;
      }

      v41 = sub_10001A6B4();
      if (v41)
      {
        v42 = sub_10001A6D4();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = sub_10001A6C4();
      v44 = (v7 >> 32) - v7;
      if (v43 < v77)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = sub_10000BCD8(v21, v20);
      v10 = v79;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    sub_10000BC84(v21, v20);
    v34 = sub_10001A6B4();
    if (v34)
    {
      v50 = sub_10001A6D4();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = sub_10001A6C4();
    v10 = v79;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v78 < v7)
  {
    goto LABEL_153;
  }

  sub_10000BC84(v21, v20);
  v57 = sub_10001A6B4();
  if (v57)
  {
    v58 = v57;
    v59 = sub_10001A6D4();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = sub_10001A6C4();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_10001A6C4();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_10001A6C4();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_10000BCD8(v21, v20);
LABEL_185:
  result = sub_10001AF44();
  __break(1u);
  return result;
}

void *sub_10000932C()
{
  v1 = v0;
  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  v2 = *v0;
  v3 = sub_10001AE84();
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

void *sub_100009488()
{
  v1 = v0;
  v2 = sub_10001A7A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  v7 = *v0;
  v8 = sub_10001AE84();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1000096C0()
{
  v1 = v0;
  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  v2 = *v0;
  v3 = sub_10001AE84();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10000BC84(v18, *(&v18 + 1));
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

uint64_t sub_10000981C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DFC(&qword_1000294C8, &qword_10001BD18);
  result = sub_10001AE94();
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
      sub_10001AFA4();

      sub_10001AC54();
      result = sub_10001AFC4();
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

uint64_t sub_100009A54(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10001A7A4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001DFC(&qword_100029468, &qword_10001BCD0);
  v10 = sub_10001AE94();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100004450(&qword_100029470, &type metadata accessor for UUID);
      result = sub_10001ABD4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100009D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001DFC(&qword_100029460, &qword_10001BCC8);
  result = sub_10001AE94();
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
      sub_10001AFA4();
      sub_10000BC84(v19, v20);
      sub_10001A754();
      result = sub_10001AFC4();
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

uint64_t sub_100009FAC(uint64_t result)
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

        sub_10000E7A8(v12, v13);

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

unint64_t sub_10000A0D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001AFA4();
  sub_10001AC54();
  v6 = sub_10001AFC4();

  return sub_10000A150(a1, a2, v6);
}

unint64_t sub_10000A150(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001AF34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000A208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001DFC(&qword_1000294D0, &unk_10001BD20);
  v38 = a2;
  result = sub_10001AF04();
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
      sub_10001AFA4();
      sub_10001AC54();
      result = sub_10001AFC4();
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

uint64_t sub_10000A4B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0D8(a2, a3);
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
      sub_10000A208(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000A0D8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10001AF54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000A62C();
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

void *sub_10000A62C()
{
  v1 = v0;
  sub_100001DFC(&qword_1000294D0, &unk_10001BD20);
  v2 = *v0;
  v3 = sub_10001AEF4();
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

uint64_t sub_10000A79C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_10000A7E4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_100001DFC(&qword_1000291D8, &qword_10001B990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = objc_allocWithZone(LSApplicationRecord);

  v8 = sub_100006B64(a1, a2, 0);
  if (a1 == 0xD000000000000012 && 0x800000010001CE80 == a2 || (sub_10001AF34() & 1) != 0)
  {
    MGGetBoolAnswer();

    return 0;
  }

  else
  {
    v10 = type metadata accessor for AppInfo();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    *(v13 + 16) = 3;
    *(v13 + 40) = 0u;
    v29 = (v13 + 40);
    *(v13 + 24) = 0u;
    v14 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
    v30 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
    v15 = sub_10001A724();
    v16 = *(*(v15 - 8) + 56);
    v17 = v13 + v14;
    v18 = v15;
    v16(v17, 1, 1);
    (v16)(v13 + OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL, 1, 1, v18);
    swift_beginAccess();
    *(v13 + 16) = 1;
    swift_beginAccess();
    *(v13 + 24) = a1;
    *(v13 + 32) = a2;

    v19 = v8;
    sub_10001A7B4();
    isa = sub_10001ACB4().super.isa;

    v21 = [v19 localizedNameWithPreferredLocalizations:isa];

    v22 = sub_10001AC24();
    v24 = v23;

    v25 = v29;
    swift_beginAccess();
    *v25 = v22;
    *(v13 + 48) = v24;
    v26 = [v19 URL];

    sub_10001A704();
    (v16)(v6, 0, 1, v18);
    v27 = v30;
    swift_beginAccess();
    sub_100001E50(v6, v13 + v27);
    swift_endAccess();
    return v13;
  }
}

uint64_t sub_10000AC9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001AD74();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100007040(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000AD88(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000BC30();
  result = sub_10001AD74();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10000BC84(v6, *v4);
      sub_100007470(v7, v6, v5);
      sub_10000BCD8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000AE24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a2;
  v82 = sub_10001AB74();
  v81 = *(v82 - 8);
  v11 = *(v81 + 64);
  __chkstk_darwin();
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10001AB94();
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  __chkstk_darwin();
  v77 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v73 = a3;
  v15[2] = a3;
  v15[3] = a4;
  v75 = a5;
  v15[4] = a5;
  v15[5] = a6;
  v83 = v15;
  v87 = swift_allocObject();
  *(v87 + 16) = &_swiftEmptyDictionarySingleton;
  v91 = &_swiftEmptySetSingleton;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v84 = 0x800000010001CCF0;
  v74 = a4;

  v76 = a6;

  v85 = a1;

  v21 = 0;
  if (v19)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      v60 = v91;
      if (v91[2])
      {
        v88 = *(v86 + 32);
        v61 = swift_allocObject();
        swift_weakInit();
        v62 = swift_allocObject();
        v62[2] = v61;
        v62[3] = v60;
        v62[4] = v87;
        v62[5] = sub_10000C628;
        v62[6] = v83;
        aBlock[4] = sub_10000C710;
        aBlock[5] = v62;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000043F4;
        aBlock[3] = &unk_100025000;
        v63 = _Block_copy(aBlock);

        v64 = v77;
        sub_10001AB84();
        v89 = &_swiftEmptyArrayStorage;
        sub_100004450(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
        sub_100001DFC(&unk_100029950, &qword_10001B9B0);
        sub_10000BDE8(&qword_100029200, &unk_100029950, &qword_10001B9B0);
        v65 = v80;
        v66 = v82;
        sub_10001AE64();
        sub_10001AE04();
        _Block_release(v63);
        (*(v81 + 8))(v65, v66);
        (*(v78 + 8))(v64, v79);
      }

      else
      {

        v68 = *(v87 + 16);

        sub_100004588(v69, v73, v74, v75, v76);
      }
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      while (1)
      {
        v23 = (*(v85 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v19)))));
        v24 = v23[1];
        v25 = *v23 == 0x6C7070612E6D6F63 && v24 == 0xEF74616843692E65;
        v88 = *v23;
        if (!v25 && (sub_10001AF34() & 1) == 0)
        {
        }

        v26 = *(v86 + 24);

        v27 = v26;
        v28 = sub_10001ABF4();

        v29 = [v27 objectForKey:v28];

        v30 = v88;
        if (!v29)
        {
          v31 = sub_10000A7E4(v88, v24);
          if (v31)
          {
            v29 = v31;
          }

          else
          {
            v32 = type metadata accessor for AppInfo();
            v33 = *(v32 + 48);
            v34 = *(v32 + 52);
            v29 = swift_allocObject();
            v29[16] = 3;
            *(v29 + 40) = 0u;
            v72 = (v29 + 40);
            *(v29 + 24) = 0u;
            v71 = (v29 + 24);
            v70 = OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_localURL;
            v35 = sub_10001A724();
            v36 = *(*(v35 - 8) + 56);
            v36(&v29[v70], 1, 1, v35);
            v36(&v29[OBJC_IVAR____TtC27DeviceActivityReportService7AppInfo_artworkURL], 1, 1, v35);
            v30 = v88;
            swift_beginAccess();
            v29[16] = 0;
            v37 = v71;
            swift_beginAccess();
            *v37 = v30;
            *(v29 + 4) = v24;
            v38 = v72;
            swift_beginAccess();
            *v38 = v30;
            *(v29 + 6) = v24;
            v39 = *(v86 + 24);
            swift_bridgeObjectRetain_n();
            v40 = v39;
            v41 = sub_10001ABF4();
            [v40 setObject:v29 forKey:v41];
          }
        }

        v19 &= v19 - 1;
        swift_beginAccess();
        if (!v29[16])
        {
          sub_100007040(aBlock, v30, v24);

          v21 = v22;
          if (!v19)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

        v42 = v87;
        v43 = *(v87 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v43;
        *(v42 + 16) = 0x8000000000000000;
        v46 = sub_10000A0D8(v30, v24);
        v47 = *(v43 + 16);
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_40;
        }

        v50 = v45;
        if (*(v43 + 24) >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v53 = aBlock[0];
            if (v45)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_10000A62C();
            v53 = aBlock[0];
            if (v50)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          sub_10000A208(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_10000A0D8(v88, v24);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_42;
          }

          v46 = v51;
          v53 = aBlock[0];
          if (v50)
          {
LABEL_30:
            v54 = v53[7];
            v55 = *(v54 + 8 * v46);
            *(v54 + 8 * v46) = v29;

            goto LABEL_34;
          }
        }

        v53[(v46 >> 6) + 8] |= 1 << v46;
        v56 = (v53[6] + 16 * v46);
        *v56 = v88;
        v56[1] = v24;
        *(v53[7] + 8 * v46) = v29;
        v57 = v53[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_41;
        }

        v53[2] = v59;
LABEL_34:
        *(v87 + 16) = v53;
        v21 = v22;
        if (!v19)
        {
          goto LABEL_6;
        }

LABEL_10:
        v22 = v21;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_10001AF54();
  __break(1u);
  return result;
}

uint64_t sub_10000B7C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AppInfo()
{
  result = qword_100029240;
  if (!qword_100029240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B850()
{
  result = qword_100029210;
  if (!qword_100029210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029210);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInfoSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInfoSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10000BA20()
{
  sub_10000BAC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000BAC8()
{
  if (!qword_100029250)
  {
    sub_10001A724();
    v0 = sub_10001AE44();
    if (!v1)
    {
      atomic_store(v0, &qword_100029250);
    }
  }
}

unint64_t sub_10000BC30()
{
  result = qword_100029458;
  if (!qword_100029458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029458);
  }

  return result;
}

uint64_t sub_10000BC84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BCD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000BD44(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10000BDA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BDD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BDE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BE30()
{
  result = qword_1000294A0;
  if (!qword_1000294A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294A0);
  }

  return result;
}

uint64_t sub_10000BE84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10000BEE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v10 = v4[2];
  sub_1000051E4(v7, a1, a2, a4, v8, v9);
}

uint64_t sub_10000BF1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BF2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000BCD8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BF40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BF9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000BFE8()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C044(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
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
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_10000A0D8(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_10000A62C();
      }
    }

    else
    {
      v30 = v49;
      sub_10000A208(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_10000A0D8(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10000C5E0();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_10001AF54();
  __break(1u);
  return result;
}

uint64_t sub_10000C2D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_10000A0D8(a2, a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10000BF40(*(a1 + 56) + 32 * v6, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  result = v17;
  v9 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v9 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_8:
    if (qword_1000291B8 != -1)
    {
      swift_once();
    }

    v10 = sub_10001AB64();
    sub_10000BDA0(v10, qword_100029B70);

    v11 = sub_10001AB44();
    v12 = sub_10001AD94();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100019C94(a2, a3, v19);
      *(v13 + 12) = 2080;
      v14 = sub_10001ABC4();
      v16 = sub_100019C94(v14, v15, v19);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to extract value for key %s from lookup results %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000C500(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DFC(&qword_1000291D8, &qword_10001B990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C5E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C634()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000C6A8(uint64_t a1, unint64_t *a2)
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

id sub_10000C728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_10000C754(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_10000C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    sub_10001A6F4();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10000C85C()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10001AC24();

  return v3;
}

NSString sub_10000C8C4()
{
  result = sub_10001ABF4();
  qword_100029B60 = result;
  return result;
}

uint64_t sub_10000C904()
{
  v0 = sub_10001A934();
  v1 = sub_10000E56C();
  v2 = type metadata accessor for DataRefresher();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 48) = &_swiftEmptySetSingleton;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  v6 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  v7 = sub_10001A784();
  result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + 16) = v0;
  *(v5 + 24) = &off_100025128;
  *(v5 + 32) = v1;
  *(v5 + 40) = &off_100029AA0;
  qword_100029B68 = v5;
  return result;
}

uint64_t sub_10000C9DC()
{
  swift_beginAccess();
  if (v0[10])
  {
    sub_10000EB64((v0 + 7), &v7);
    v1 = *(&v8 + 1);
    v2 = v9;
    sub_10000EBC8(&v7, *(&v8 + 1));
    (*(v2 + 48))(v1, v2);
    sub_10000BF9C(&v7);
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  swift_beginAccess();
  sub_10000F5CC(&v7, (v0 + 7), &qword_100029630, &qword_10001BE78);
  swift_endAccess();
  v3 = v0[6];

  sub_10000BE84((v0 + 7), &qword_100029630, &qword_10001BE78);
  sub_10000BE84(v0 + OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate, &qword_100029638, &qword_10001BE80);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataRefresher()
{
  result = qword_100029510;
  if (!qword_100029510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CB78()
{
  sub_10000E514();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10000CC2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A784();
  v43 = *(v4 - 8);
  v5 = v43[8];
  __chkstk_darwin(v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001DFC(&qword_100029638, &qword_10001BE80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = sub_10001A7A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  (*(v15 + 16))(v19, a1, v14);
  swift_beginAccess();
  sub_100007190(v21, v19);
  (*(v15 + 8))(v21, v14);
  swift_endAccess();
  swift_beginAccess();
  sub_10000F3BC(v2 + 56, &v44, &qword_100029630, &qword_10001BE78);
  if (v45)
  {
    sub_10000F1BC(&v44, v47);
    v22 = AssociatedTypeWitness;
    v23 = AssociatedConformanceWitness;
    sub_10000EBC8(v47, AssociatedTypeWitness);
    if ((*(v23 + 24))(v22, v23))
    {
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v24 = sub_10001AB64();
      sub_10000BDA0(v24, qword_100029B88);
      v25 = sub_10001AB44();
      v26 = sub_10001AD84();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Data refresh timer has already been started.", v27, 2u);
      }

      return sub_10000BF9C(v47);
    }

    sub_10000BF9C(v47);
  }

  else
  {
    sub_10000BE84(&v44, &qword_100029630, &qword_10001BE78);
  }

  v29 = *(v2 + 32);
  v30 = *(v2 + 40);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v31[4] = sub_10000F10C;
  v31[5] = v2;
  v32 = *(v30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000F158(v47);

  v32(1, sub_10000F14C, v31, v29, v30, 60.0);

  swift_beginAccess();
  sub_10000F5CC(v47, v2 + 56, &qword_100029630, &qword_10001BE78);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  swift_beginAccess();
  sub_10000F3BC(v2 + v33, v13, &qword_100029638, &qword_10001BE80);
  v34 = v43[6];
  LODWORD(v31) = v34(v13, 1, v4);
  sub_10000BE84(v13, &qword_100029638, &qword_10001BE80);
  if (v31 == 1)
  {
    goto LABEL_13;
  }

  v35 = v42;
  sub_10001A774();
  sub_10000F3BC(v2 + v33, v11, &qword_100029638, &qword_10001BE80);
  result = v34(v11, 1, v4);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  sub_10001A764();
  v37 = v36;
  v38 = v43[1];
  v38(v35, v4);
  result = (v38)(v11, v4);
  if (v37 > 60.0)
  {
LABEL_13:
    sub_10000F3BC(v2 + 56, v47, &qword_100029630, &qword_10001BE78);
    if (AssociatedTypeWitness)
    {
      sub_10000EB64(v47, &v44);
      sub_10000BE84(v47, &qword_100029630, &qword_10001BE78);
      v39 = v45;
      v40 = v46;
      sub_10000EBC8(&v44, v45);
      (*(v40 + 40))(v39, v40);
      return sub_10000BF9C(&v44);
    }

    else
    {
      return sub_10000BE84(v47, &qword_100029630, &qword_10001BE78);
    }
  }

  return result;
}

uint64_t sub_10000D28C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001DFC(&qword_100029640, &qword_10001BE88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v7 = sub_10001AB64();
  sub_10000BDA0(v7, qword_100029B88);
  v8 = sub_10001AB44();
  v9 = sub_10001AD84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Data refresh timer fired, updating local activity.", v10, 2u);
  }

  sub_10001AD14();
  v11 = sub_10001AD34();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  sub_10000DF5C(0, 0, v6, &unk_10001BE98, v12);
}

uint64_t sub_10000D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_10001A784();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(sub_100001DFC(&qword_100029638, &qword_10001BE80) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000D560, 0, 0);
}

uint64_t sub_10000D560()
{
  *(v0 + 160) = sub_10001AD04();
  *(v0 + 168) = sub_10001ACF4();
  v2 = sub_10001ACE4();

  return _swift_task_switch(sub_10000D5F8, v2, v1);
}

uint64_t sub_10000D5F8()
{
  v1 = v0[21];
  v2 = v0[14];

  v0[22] = *(v2 + 16);
  v0[23] = *(v2 + 24);

  return _swift_task_switch(sub_10000D674, 0, 0);
}

uint64_t sub_10000D674()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = *(v1 + 16);
  v0[5] = v2;
  v0[6] = v1;
  v0[24] = sub_10000F158(v0 + 2);
  v4(v2, v1);
  v0[25] = sub_10001ACF4();
  v6 = sub_10001ACE4();

  return _swift_task_switch(sub_10000D744, v6, v5);
}

uint64_t sub_10000D744()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[14];

  v4 = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  v0[26] = OBJC_IVAR____TtC27DeviceActivityReportService13DataRefresher_lastRefreshDate;
  swift_beginAccess();
  sub_10000F3BC(v3 + v4, v2, &qword_100029638, &qword_10001BE80);

  return _swift_task_switch(sub_10000D7F8, 0, 0);
}

uint64_t sub_10000D7F8()
{
  v11 = v0[23];
  v1 = sub_10001AA44();
  v0[27] = v1;
  v2 = *(v11 + 56);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_10000D928;
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  return v10(v8, v1, v7, v5);
}

uint64_t sub_10000D928()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 232) = v0;

  sub_10000BE84(v4, &qword_100029638, &qword_10001BE80);

  if (v0)
  {
    v5 = sub_10000DD64;
  }

  else
  {
    v5 = sub_10000DA8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000DA8C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  (*(v0[23] + 64))(v0[22]);
  sub_10001A774();
  v0[30] = sub_10001ACF4();
  v5 = sub_10001ACE4();

  return _swift_task_switch(sub_10000DB48, v5, v4);
}

uint64_t sub_10000DB48()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];

  (*(v6 + 16))(v4, v3, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_beginAccess();
  sub_10000F5CC(v4, v7 + v2, &qword_100029638, &qword_10001BE80);
  swift_endAccess();
  v8 = [objc_opt_self() defaultCenter];
  if (qword_1000291A8 != -1)
  {
    swift_once();
  }

  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  [v8 postNotificationName:qword_100029B60 object:0];

  (*(v10 + 8))(v9, v11);

  return _swift_task_switch(sub_10000DCDC, 0, 0);
}

uint64_t sub_10000DCDC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_10000BF9C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000DD64()
{
  v18 = v0;
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_10001AB64();
  sub_10000BDA0(v2, qword_100029B88);
  swift_errorRetain();
  v3 = sub_10001AB44();
  v4 = sub_10001AD94();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v0[13] = v6;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v9 = sub_10001AC34();
    v11 = sub_100019C94(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to refresh local activity with error: %{public}s", v7, 0xCu);
    sub_10000BF9C(v8);
  }

  else
  {
  }

  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  sub_10000BF9C(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DFC(&qword_100029640, &qword_10001BE88);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000F3BC(a3, v27 - v11, &qword_100029640, &qword_10001BE88);
  v13 = sub_10001AD34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE84(v12, &qword_100029640, &qword_10001BE88);
  }

  else
  {
    sub_10001AD24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10001ACE4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10001AC44() + 32;
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

      sub_10000BE84(a3, &qword_100029640, &qword_10001BE88);

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

  sub_10000BE84(a3, &qword_100029640, &qword_10001BE88);
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

uint64_t sub_10000E25C(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v7[4] = swift_getAssociatedConformanceWitness();
  v5 = sub_10000F158(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(v5, a1, AssociatedTypeWitness);
  a2(v7);
  return sub_10000BF9C(v7);
}

uint64_t sub_10000E348(uint64_t a1)
{
  v3 = sub_100001DFC(&qword_100029628, &qword_10001BE70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v10 - v5;
  swift_beginAccess();
  sub_10000E8E4(a1, v6);
  sub_10000BE84(v6, &qword_100029628, &qword_10001BE70);
  result = swift_endAccess();
  if (!*(*(v1 + 48) + 16))
  {
    swift_beginAccess();
    sub_10000F3BC(v1 + 56, &v13, &qword_100029630, &qword_10001BE78);
    if (*(&v14 + 1))
    {
      sub_10000EB64(&v13, v10);
      sub_10000BE84(&v13, &qword_100029630, &qword_10001BE78);
      v8 = v11;
      v9 = v12;
      sub_10000EBC8(v10, v11);
      (*(v9 + 48))(v8, v9);
      sub_10000BF9C(v10);
    }

    else
    {
      sub_10000BE84(&v13, &qword_100029630, &qword_10001BE78);
    }

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    swift_beginAccess();
    sub_10000F5CC(&v13, v1 + 56, &qword_100029630, &qword_10001BE78);
    return swift_endAccess();
  }

  return result;
}

void sub_10000E514()
{
  if (!qword_100029520)
  {
    sub_10001A784();
    v0 = sub_10001AE44();
    if (!v1)
    {
      atomic_store(v0, &qword_100029520);
    }
  }
}

unint64_t sub_10000E56C()
{
  result = qword_100029620;
  if (!qword_100029620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029620);
  }

  return result;
}

uint64_t sub_10000E5B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E6B0;

  return v7(a1);
}

uint64_t sub_10000E6B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10001AFA4();
  sub_10001AC54();
  v7 = sub_10001AFC4();
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
    if (v12 || (sub_10001AF34() & 1) != 0)
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
    sub_10000932C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10000EC50(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10000E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10001A7A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10000EC0C(&qword_100029470);
  v35 = a1;
  v13 = sub_10001ABD4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10000EC0C(&qword_100029478);
      v22 = sub_10001ABE4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100009488();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10000EE14(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10000EB64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000EBC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000EC0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001A7A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000EC50(unint64_t result)
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

    v9 = sub_10001AE74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10001AFA4();

        sub_10001AC54();
        v15 = sub_10001AFC4();

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

uint64_t sub_10000EE14(int64_t a1)
{
  v3 = sub_10001A7A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_10001AE74();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v38 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v18 = v13;
      v19 = *(v16 + 56);
      v39 = v16;
      v36 = (v16 - 8);
      v37 = v17;
      do
      {
        v20 = v10;
        v21 = v19;
        v22 = v19 * v12;
        v37(v8, *(v9 + 48) + v19 * v12, v3);
        v23 = v9;
        v24 = v18;
        v25 = v23;
        v26 = *(v23 + 40);
        sub_10000EC0C(&qword_100029470);
        v27 = sub_10001ABD4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v18 = v24;
        if (a1 >= v38)
        {
          if (v28 >= v38 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v21;
            v32 = v21 * a1;
            if (v21 * a1 < v22 || v31 + v21 * a1 >= (v31 + v22 + v21))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v22)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v38 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v21;
LABEL_5:
        v12 = (v12 + 1) & v18;
        v10 = v20;
      }

      while (((*(v20 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_10000F114()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F14C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_10000E25C(a1, *(v1 + 32));
}

uint64_t *sub_10000F158(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F1BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000F1D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F2C8;

  return sub_10000D45C(a1, v4, v5, v6);
}

uint64_t sub_10000F2C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F3BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F424()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F45C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F638;

  return sub_10000E5B8(a1, v5);
}

uint64_t sub_10000F514(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F2C8;

  return sub_10000E5B8(a1, v5);
}

uint64_t sub_10000F5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F640(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F2C8;

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(a1, a2);
}

void sub_10000F704(void *a1)
{
  [v1 addChildViewController:a1];
  v28 = [a1 view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 view];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 addSubview:v28];

  sub_100001DFC(&qword_100029A00, &unk_10001C020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001C010;
  v6 = [v1 view];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v28 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v5 + 32) = v10;
  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v28 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v5 + 40) = v15;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v28 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v5 + 48) = v20;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 trailingAnchor];

  v25 = [v28 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v5 + 56) = v26;
  sub_10000FA5C();
  isa = sub_10001ACB4().super.isa;

  [v23 activateConstraints:isa];

  [a1 didMoveToParentViewController:v1];
}

unint64_t sub_10000FA5C()
{
  result = qword_1000296F0;
  if (!qword_1000296F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000296F0);
  }

  return result;
}

uint64_t sub_10000FAA8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000FBC4(0, &qword_100029728, _EXQuery_ptr);
  isa = sub_10001ACB4().super.isa;

  v6 = [v4 initWithQueries:isa delegate:a1];

  result = swift_unknownObjectRelease();
  *a2 = v6;
  return result;
}

uint64_t sub_10000FB5C()
{
  v1 = [*v0 extensionIdentities];
  sub_10000FBC4(0, &qword_100029930, _EXExtensionIdentity_ptr);
  v2 = sub_10001ACC4();

  return v2;
}

uint64_t sub_10000FBC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000FC48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001AB64();
  sub_10000FD34(v3, a2);
  sub_10000BDA0(v3, a2);
  return sub_10001AB54();
}

uint64_t sub_10000FCC0()
{
  v0 = sub_10001AB64();
  sub_10000FD34(v0, qword_100029BA0);
  sub_10000BDA0(v0, qword_100029BA0);
  return sub_10001AB54();
}

uint64_t *sub_10000FD34(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000FDA8()
{
  v1 = sub_10001AB74();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001AB94();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v9 = sub_10001ADE4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100017BC0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_1000255F8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_10001AB84();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void sub_100010088(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole);
  if (!v1)
  {
    return;
  }

  v13 = v1;
  v3 = sub_100010580();
  v4 = [v3 configuration];

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [v4 role];
  v6 = sub_10001AC24();
  v8 = v7;
  if (v6 != sub_10001AC24() || v8 != v9)
  {
    v11 = sub_10001AF34();

    if ((v11 & 1) == 0)
    {
      [v4 setRole:v13];
      v12 = *(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
      v4 = v4;
      [v12 setConfiguration:v4];
    }

LABEL_10:

    return;
  }
}

uint64_t sub_100010238@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  if (v3)
  {
    v7[4] = sub_100010374;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100010518;
    v7[3] = &unk_100025738;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v4];
    _Block_release(v4);

    sub_10001AE54();
    swift_unknownObjectRelease();
    sub_100001DFC(&qword_1000299E8, &qword_10001C210);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_100010374()
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001AB64();
  sub_10000BDA0(v0, qword_100029B88);
  swift_errorRetain();
  oslog = sub_10001AB44();
  v1 = sub_10001AD94();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v4 = sub_10001AC34();
    v6 = sub_100019C94(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to create extension proxy: %{public}s", v2, 0xCu);
    sub_10000BF9C(v3);
  }

  else
  {
  }
}

void sub_100010518(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100010580()
{
  v1 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController;
  v2 = *(v0 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController);
  }

  else
  {
    v4 = [objc_allocWithZone(EXHostViewController) init];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100010608@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController;
  swift_beginAccess();
  sub_10000F3BC(v1 + v3, &v12, &qword_1000299F8, &unk_10001C220);
  if (v13)
  {
    return sub_10000F1BC(&v12, a1);
  }

  sub_10000BE84(&v12, &qword_1000299F8, &unk_10001C220);
  v5 = objc_allocWithZone(_EXQuery);
  v6 = sub_10001ABF4();
  v7 = [v5 initWithExtensionPointIdentifier:v6];

  v8 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController);
  v9 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController + 8);
  sub_100001DFC(&qword_100029A00, &unk_10001C020);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001C0B0;
  *(v10 + 32) = v7;
  v11 = *(v9 + 24);
  a1[3] = v8;
  a1[4] = v9;
  sub_10000F158(a1);
  swift_unknownObjectRetain();
  v11(v10, v1, v8, v9);
  sub_10000EB64(a1, &v12);
  swift_beginAccess();
  sub_10000F5CC(&v12, v1 + v3, &qword_1000299F8, &unk_10001C220);
  return swift_endAccess();
}

uint64_t sub_1000107D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource;
  swift_beginAccess();
  sub_10000F3BC(v1 + v3, &v8, &qword_1000299F0, &qword_10001C218);
  if (v9)
  {
    return sub_10000F1BC(&v8, a1);
  }

  sub_10000BE84(&v8, &qword_1000299F0, &qword_10001C218);
  v5 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource);
  v6 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource + 8);
  v7 = *(v6 + 16);
  a1[3] = v5;
  a1[4] = v6;
  sub_10000F158(a1);
  v7(v5, v6);
  sub_10000EB64(a1, &v8);
  swift_beginAccess();
  sub_10000F5CC(&v8, v1 + v3, &qword_1000299F0, &qword_10001C218);
  return swift_endAccess();
}

uint64_t sub_100010CC8()
{
  v1 = sub_10001AB74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001AB94();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100017C54;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_1000256C0;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_10001AB84();
  v16 = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void sub_100010F84(uint64_t a1)
{
  v2 = sub_10001A624();
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  __chkstk_darwin(v2);
  v104 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10001A994();
  v102 = *(v103 - 8);
  v5 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A8E4();
  v8 = *(v7 - 8);
  v112 = v7;
  v113 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v107 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v91 - v16;
  v18 = sub_10001AA34();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v108 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v91 - v23;
  v25 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  swift_beginAccess();
  v106 = v25;
  sub_10000F3BC(a1 + v25, v17, &qword_100029968, &qword_10001C1B0);
  v26 = *(v19 + 48);
  if (v26(v17, 1, v18) == 1)
  {
    sub_10000BE84(v17, &qword_100029968, &qword_10001C1B0);
    if (qword_1000291C0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v27 = sub_10001AB64();
    sub_10000BDA0(v27, qword_100029B88);
    v28 = sub_10001AB44();
    v29 = sub_10001ADB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not updating report because we don't have a filter", v30, 2u);
    }
  }

  else
  {
    v98 = v26;
    v99 = v19 + 48;
    v31 = *(v19 + 32);
    v96 = v19 + 32;
    v95 = v31;
    v31(v24, v17, v18);
    v100 = a1;
    sub_1000107D4(&aBlock);
    sub_10000EBC8(&aBlock, v119);
    v32 = 0;
    v33 = sub_10001A914();
    v97 = v19;
    v94 = v2;
    v48 = v33;
    v92 = v24;
    v93 = v18;
    sub_10000BF9C(&aBlock);
    v49 = *(v48 + 16);
    if (v49)
    {
      aBlock = &_swiftEmptyArrayStorage;
      sub_100014C58(0, v49, 0);
      v50 = 0;
      v51 = aBlock;
      v110 = v48 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
      v109 = v113 + 16;
      v111 = (v113 + 8);
      while (1)
      {
        if (v50 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v52 = v112;
        (*(v113 + 16))(v11, v110 + *(v113 + 72) * v50, v112);
        v53 = sub_10001A604();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        sub_10001A5F4();
        sub_100017C7C(&qword_1000299D8, &type metadata accessor for _DeviceActivityData);
        v56 = sub_10001A5E4();
        if (v32)
        {
          break;
        }

        v58 = v56;
        v59 = v57;
        v114 = 0;
        (*v111)(v11, v52);

        aBlock = v51;
        v61 = v51[2];
        v60 = v51[3];
        if (v61 >= v60 >> 1)
        {
          sub_100014C58((v60 > 1), v61 + 1, 1);
          v51 = aBlock;
        }

        ++v50;
        v51[2] = (v61 + 1);
        v62 = &v51[2 * v61];
        v62[4] = v58;
        v62[5] = v59;
        v32 = v114;
        if (v49 == v50)
        {

          v19 = v97;
          v2 = v94;
          goto LABEL_29;
        }
      }

      (*v111)(v11, v52);
      v74 = *(v97 + 8);
      v43 = v93;
      v74(v92, v93);

      v114 = 0;
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v34 = sub_10001AB64();
      sub_10000BDA0(v34, qword_100029B88);
      swift_errorRetain();
      v35 = sub_10001AB44();
      v36 = sub_10001AD94();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v115 = v32;
        aBlock = v38;
        *v37 = 136446210;
        swift_errorRetain();
        sub_100001DFC(&qword_100029920, &qword_10001BD00);
        v39 = sub_10001AC34();
        v41 = v43;
        v42 = sub_100019C94(v39, v40, &aBlock);

        *(v37 + 4) = v42;
        v43 = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to request activity data with error: %{public}s", v37, 0xCu);
        sub_10000BF9C(v38);
      }

      v44 = v100;
      v45 = v107;
      sub_10000F3BC(v100 + v106, v107, &qword_100029968, &qword_10001C1B0);
      v46 = v98(v45, 1, v43);
      v47 = v108;
      if (v46 == 1)
      {
        sub_10000BE84(v45, &qword_100029968, &qword_10001C1B0);
      }

      else
      {
        v63 = v95(v108, v45, v43);
        v64 = *(v44 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
        __chkstk_darwin(v63);
        *(&v91 - 2) = v44;
        sub_100001DFC(&qword_1000299D0, &qword_10001C200);
        sub_10001ADF4();
        v65 = aBlock;
        if (aBlock)
        {
          isa = sub_10001ACB4().super.isa;
          v67 = v101;
          sub_10001A9A4();
          v68 = v104;
          sub_10001A984();
          (*(v102 + 8))(v67, v103);
          v69 = sub_10001A614().super.isa;
          (*(v105 + 8))(v68, v94);
          v120 = sub_100017F20;
          v121 = 0;
          aBlock = _NSConcreteStackBlock;
          v117 = 1107296256;
          v118 = sub_100011D80;
          v119 = &unk_1000256E8;
          v70 = _Block_copy(&aBlock);
          [v65 updateDeviceActivityData:isa segmentInterval:v69 replyHandler:v70];
          _Block_release(v70);
          swift_unknownObjectRelease();

          v74(v47, v43);
          return;
        }

        v74(v47, v43);
      }

      v71 = sub_10001AB44();
      v72 = sub_10001ADB4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Not updating report because we don't have a filter or a proxy", v73, 2u);
      }
    }

    else
    {

LABEL_29:
      v76 = *(v100 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
      __chkstk_darwin(v75);
      *(&v91 - 2) = v77;
      sub_100001DFC(&qword_1000299D0, &qword_10001C200);
      sub_10001ADF4();
      v78 = aBlock;
      if (aBlock)
      {
        v79 = sub_10001ACB4().super.isa;
        v80 = v101;
        v81 = v92;
        sub_10001A9A4();
        v82 = v104;
        sub_10001A984();
        (*(v102 + 8))(v80, v103);
        v83 = sub_10001A614().super.isa;
        (*(v105 + 8))(v82, v2);
        v120 = sub_100017F20;
        v121 = 0;
        aBlock = _NSConcreteStackBlock;
        v117 = 1107296256;
        v118 = sub_100011D80;
        v119 = &unk_100025710;
        v84 = _Block_copy(&aBlock);
        [v78 updateDeviceActivityData:v79 segmentInterval:v83 replyHandler:v84];
        _Block_release(v84);
        swift_unknownObjectRelease();

        (*(v19 + 8))(v81, v93);
      }

      else
      {

        if (qword_1000291C0 != -1)
        {
          swift_once();
        }

        v85 = sub_10001AB64();
        sub_10000BDA0(v85, qword_100029B88);
        v86 = sub_10001AB44();
        v87 = sub_10001ADB4();
        v88 = os_log_type_enabled(v86, v87);
        v89 = v93;
        if (v88)
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Not updating report because we don't have a proxy", v90, 2u);
        }

        (*(v19 + 8))(v92, v89);
      }
    }
  }
}

void sub_100011D80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100011DEC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v1 = sub_10001AB64();
    sub_10000BDA0(v1, qword_100029B88);
    swift_errorRetain();
    v2 = sub_10001AB44();
    v3 = sub_10001AD94();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100001DFC(&qword_100029920, &qword_10001BD00);
      v6 = sub_10001AC34();
      v8 = sub_100019C94(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update scene device activity data: %{public}s", v4, 0xCu);
      sub_10000BF9C(v5);
    }

    else
    {
    }
  }
}

id sub_100011FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v34[1] = a1;
  v37 = sub_10001ADD4();
  v40 = *(v37 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v37);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001ADC4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_10001AB94();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache];
  *v11 = type metadata accessor for AppInfoCache();
  v11[1] = &off_100025058;
  v12 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_authorization;
  *&v3[v12] = sub_10001A944();
  v13 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord];
  *v13 = sub_10000FBC4(0, &qword_100029A08, LSBundleRecord_ptr);
  v13[1] = &off_100025070;
  v14 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection];
  *v14 = sub_10000FBC4(0, &qword_100029A10, NSXPCConnection_ptr);
  v14[1] = &off_100025840;
  v15 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource];
  *v15 = sub_10001A934();
  v15[1] = &off_100025128;
  v16 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController];
  *v16 = sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v16[1] = &off_1000296F8;
  v17 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection];
  *v17 = sub_10000FBC4(0, &qword_100029A18, USTrackingAgentPrivateConnection_ptr);
  v17[1] = &off_100025850;
  v18 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole] = 0;
  v19 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  v20 = sub_10001AA34();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 0;
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection] = 0;
  v36 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue;
  v34[2] = sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v34[3] = "activityui.report-extension";
  sub_10001AB84();
  v42 = &_swiftEmptyArrayStorage;
  v34[5] = sub_100017C7C(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes);
  v34[4] = sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  v34[6] = sub_100017CC4(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  v21 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v22 = *(v40 + 104);
  v40 += 104;
  v23 = v35;
  v24 = v37;
  v22(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  *&v3[v36] = sub_10001AE14();
  *&v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController] = 0;
  v25 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v26 = &v3[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  sub_10001A794();
  v36 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue;
  sub_10001AB84();
  v42 = &_swiftEmptyArrayStorage;
  sub_10001AE64();
  v22(v23, v21, v24);
  v27 = sub_10001AE14();
  v28 = v38;
  *&v4[v36] = v27;
  if (v28)
  {
    v29 = sub_10001ABF4();
  }

  else
  {
    v29 = 0;
  }

  v30 = type metadata accessor for ReportViewController();
  v41.receiver = v4;
  v41.super_class = v30;
  v31 = v39;
  v32 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", v29, v39);

  return v32;
}

id sub_1000125AC(void *a1)
{
  v32 = a1;
  v31 = sub_10001ADD4();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v31);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001ADC4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10001AB94();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache];
  *v8 = type metadata accessor for AppInfoCache();
  v8[1] = &off_100025058;
  v9 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_authorization;
  *&v1[v9] = sub_10001A944();
  v10 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord];
  *v10 = sub_10000FBC4(0, &qword_100029A08, LSBundleRecord_ptr);
  v10[1] = &off_100025070;
  v11 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection];
  *v11 = sub_10000FBC4(0, &qword_100029A10, NSXPCConnection_ptr);
  v11[1] = &off_100025840;
  v12 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_deviceActivityDataSource];
  *v12 = sub_10001A934();
  v12[1] = &off_100025128;
  v13 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionQueryController];
  *v13 = sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v13[1] = &off_1000296F8;
  v14 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection];
  *v14 = sub_10000FBC4(0, &qword_100029A18, USTrackingAgentPrivateConnection_ptr);
  v14[1] = &off_100025850;
  v15 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
  *v15 = 0;
  v15[1] = 0;
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole] = 0;
  v16 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
  v17 = sub_10001AA34();
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 0;
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection] = 0;
  v30 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue;
  v28[1] = sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v28[2] = "activityui.report-extension";
  sub_10001AB84();
  v35 = &_swiftEmptyArrayStorage;
  v28[4] = sub_100017C7C(&unk_100029A20, &type metadata accessor for OS_dispatch_queue.Attributes);
  v28[3] = sub_100001DFC(&qword_1000291F0, &qword_10001C230);
  v28[5] = sub_100017CC4(&qword_100029A30, &qword_1000291F0, &qword_10001C230);
  sub_10001AE64();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v33 + 104);
  v33 += 104;
  v20 = v29;
  v21 = v31;
  v19(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *&v1[v30] = sub_10001AE14();
  *&v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___reportExtensionHostingController] = 0;
  v22 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___extensionController];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v1[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController____lazy_storage___dataSource];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  sub_10001A794();
  v30 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataUpdateQueue;
  sub_10001AB84();
  v35 = &_swiftEmptyArrayStorage;
  sub_10001AE64();
  v19(v20, v18, v21);
  *&v1[v30] = sub_10001AE14();
  v24 = type metadata accessor for ReportViewController();
  v34.receiver = v1;
  v34.super_class = v24;
  v25 = v32;
  v26 = objc_msgSendSuper2(&v34, "initWithCoder:", v32);

  if (v26)
  {
  }

  return v26;
}

id sub_100012B30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReportViewController()
{
  result = qword_1000297E8;
  if (!qword_1000297E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012CEC()
{
  sub_100012E18();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10001A7A4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100012E18()
{
  if (!qword_1000297F8)
  {
    sub_10001AA34();
    v0 = sub_10001AE44();
    if (!v1)
    {
      atomic_store(v0, &qword_1000297F8);
    }
  }
}

void sub_100012E70(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TokenCoder()) init];
    v5 = v4;
    if (*&v4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_teamIdentifier + 8])
    {
      v6 = *&v4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_teamIdentifier];
      v7 = *&v4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_teamIdentifier + 8];

      sub_10001A8D4();
    }

    else
    {
      if (qword_1000291C0 != -1)
      {
        swift_once();
      }

      v8 = sub_10001AB64();
      sub_10000BDA0(v8, qword_100029B88);
      v9 = sub_10001AB44();
      v10 = sub_10001AD94();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to extract team identifier of client application", v11, 2u);
      }
    }

    sub_100010608(v14);
    v12 = v15;
    v13 = v16;
    sub_10000EBC8(v14, v15);
    (*(v13 + 32))(v12, v13);
    sub_10000BF9C(v14);
    a2(0);
  }
}

void sub_1000131E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10001A6E4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100013248(void *a1)
{
  if (*(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData) == 1)
  {
    v2 = [a1 viewIfLoaded];
    v3 = [v2 window];

    if (v3)
    {

      if (qword_1000291B0 != -1)
      {
        swift_once();
      }

      sub_10000CC2C(a1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_dataRefresherObserverID);
    }
  }
}

uint64_t sub_1000133B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001DFC(&qword_100029998, &qword_10001C1D8);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(*v1 + 16);
  if (v10 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v10 >= v11)
    {
      __break(1u);
    }

    else
    {
      v20 = v6;
      v13 = sub_10001A884();
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
      v1[1] = v10 + 1;
      v17 = *(v3 + 48);
      v18 = v1[2];
      *v8 = v18;
      result = v15(&v8[v17], v16, v13);
      if (!__OFADD__(v18, 1))
      {
        v1[2] = v18 + 1;
        sub_100017AC8(v8, a1, &qword_100029998, &qword_10001C1D8);
        return (*(v20 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100013694(void *a1)
{
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI30DeviceActivityReportServiceXPC_];
  [a1 setExportedInterface:v3];

  [a1 setExportedObject:v1];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100015450;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000043F4;
  v12 = &unk_100025440;
  v5 = _Block_copy(&v9);

  [a1 setInterruptionHandler:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100015458;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000043F4;
  v12 = &unk_100025468;
  v7 = _Block_copy(&v9);

  [a1 setInvalidationHandler:v7];
  _Block_release(v7);
  [a1 activate];
  return 1;
}

uint64_t sub_10001388C()
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001AB64();
  sub_10000BDA0(v0, qword_100029B88);
  v1 = sub_10001AB44();
  v2 = sub_10001ADB4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection from client application was interrupted.", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 1;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100017F28;
    *(v8 + 24) = v7;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_100025558;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100013AD0()
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001AB64();
  sub_10000BDA0(v0, qword_100029B88);
  v1 = sub_10001AB44();
  v2 = sub_10001ADB4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection from client application was invalidated.", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 1;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100017F28;
    *(v8 + 24) = v7;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_1000254E0;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100013D60(uint64_t a1, void *a2)
{
  v5 = sub_10001AB74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001AB94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  aBlock[6] = a1;
  v14 = *(v2 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix + 8);
  if (!v14)
  {
    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v24 = sub_10001AB64();
    sub_10000BDA0(v24, qword_100029B88);
    v54._object = sub_10001AB44();
    v25 = sub_10001AD94();
    if (os_log_type_enabled(v54._object, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v54._object, v25, "Failed to find an extension because we do not have a prefix to search for.", v26, 2u);
    }

    object = v54._object;

    return;
  }

  v46 = v2;
  v47 = a2;
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54._countAndFlagsBits = *(v2 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix);
  v15 = off_100029720;
  sub_10000FBC4(0, &qword_100029938, _EXQueryController_ptr);
  v54._object = v14;

  v16 = v15();
  v17 = v16;
  v52 = v6;
  v53 = v5;
  v50 = v9;
  v51 = v10;
  v49 = v11;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_26:

    if (qword_1000291C0 != -1)
    {
      swift_once();
    }

    v38 = sub_10001AB64();
    sub_10000BDA0(v38, qword_100029B88);
    v39 = v54._object;

    v40 = sub_10001AB44();
    v41 = sub_10001AD94();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136446210;
      v44 = sub_100019C94(v54._countAndFlagsBits, v39, aBlock);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find an extension for %{public}s", v42, 0xCu);
      sub_10000BF9C(v43);
    }

    else
    {
    }

    return;
  }

LABEL_25:
  v18 = sub_10001AEE4();
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_4:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = sub_10001AEC4();
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = [v20 bundleIdentifier];
    sub_10001AC24();

    LOBYTE(v23) = sub_10001AC84(v54);

    if (v23)
    {
      break;
    }

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_26;
    }
  }

  v28 = swift_allocObject();
  v29 = [objc_allocWithZone(_EXHostViewControllerConfiguration) initWithExtensionIdentity:v21];
  *(v28 + 16) = v29;
  [v29 setBeginHostingImmediately:1];
  v30 = v47;
  if (*(v46 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole))
  {
    [v29 setRole:?];
  }

  sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
  v31 = sub_10001ADE4();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v28;
  aBlock[4] = sub_1000153F8;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000043F4;
  aBlock[3] = &unk_100025418;
  v33 = _Block_copy(aBlock);
  v34 = v30;

  v35 = v48;
  sub_10001AB84();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001DFC(&unk_100029950, &qword_10001B9B0);
  sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
  v36 = v50;
  v37 = v53;
  sub_10001AE64();
  sub_10001AE04();
  _Block_release(v33);

  (*(v52 + 8))(v36, v37);
  (*(v49 + 8))(v35, v51);
}

uint64_t sub_100014758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014794()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000147BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000147D4()
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001AB64();
  sub_10000BDA0(v0, qword_100029B88);
  v1 = sub_10001AB44();
  v2 = sub_10001ADB4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection from client extension was interrupted.", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 1;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100017F28;
    *(v8 + 24) = v7;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_1000253A0;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100014A18()
{
  if (qword_1000291C0 != -1)
  {
    swift_once();
  }

  v0 = sub_10001AB64();
  sub_10000BDA0(v0, qword_100029B88);
  v1 = sub_10001AB44();
  v2 = sub_10001ADB4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection from client extension was invalidated.", v3, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100017F28;
    *(v8 + 24) = v7;
    aBlock[4] = sub_100017F54;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011FAC;
    aBlock[3] = &unk_100025328;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_100014C58(char *a1, int64_t a2, char a3)
{
  result = sub_100014C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014C78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_1000299E0, &qword_10001C208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void sub_100014DAC(void *a1, char *a2)
{
  aBlock = 0;
  v3 = [a1 makeXPCConnectionWithError:&aBlock];
  v4 = aBlock;
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI30DeviceActivityReportServiceXPC_];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:a2];
    v9 = [v6 interfaceWithProtocol:&OBJC_PROTOCOL____TtP23_DeviceActivity_SwiftUI32DeviceActivityReportExtensionXPC_];
    [v5 setRemoteObjectInterface:v9];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_10001531C;
    v33 = v10;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000043F4;
    v31 = &unk_100025210;
    v11 = _Block_copy(&aBlock);

    [v5 setInterruptionHandler:v11];
    _Block_release(v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_100015324;
    v33 = v12;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000043F4;
    v31 = &unk_100025238;
    v13 = _Block_copy(&aBlock);

    [v5 setInvalidationHandler:v13];
    _Block_release(v13);
    [v5 activate];
    v14 = *&a2[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v5;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10001536C;
    *(v16 + 24) = v15;
    v32 = sub_100017F54;
    v33 = v16;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100011FAC;
    v31 = &unk_1000252B0;
    v17 = _Block_copy(&aBlock);
    a2;
    v18 = v5;

    dispatch_sync(v14, v17);

    _Block_release(v17);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      sub_100010CC8();

      return;
    }

    __break(1u);
  }

  else
  {
    v19 = aBlock;
    sub_10001A6F4();

    swift_willThrow();
    if (qword_1000291C0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v20 = sub_10001AB64();
  sub_10000BDA0(v20, qword_100029B88);
  swift_errorRetain();
  v21 = sub_10001AB44();
  v22 = sub_10001AD94();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136446210;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v25 = sub_10001AC34();
    v27 = sub_100019C94(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to establish a connection with the client's extension: %{public}s", v23, 0xCu);
    sub_10000BF9C(v24);
  }

  else
  {
  }
}

uint64_t sub_1000152E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001532C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001536C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) = v2;
  v3 = v2;
}

uint64_t sub_1000153B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000153F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  return [v1 setConfiguration:*(v2 + 16)];
}

void sub_100015470()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) invalidate];
  }

  v2 = *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection);
  *(v1 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnection) = 0;
}

uint64_t sub_1000154D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100001DFC(&qword_1000299A8, &qword_10001C1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v159 = &v146 - v8;
  v158 = sub_10001AA04();
  v157 = *(v158 - 8);
  v9 = *(v157 + 64);
  __chkstk_darwin(v158);
  v160 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A994();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v163 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10001A9D4();
  v166 = *(v169 - 8);
  v14 = *(v166 + 64);
  v15 = __chkstk_darwin(v169);
  v162 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v161 = &v146 - v17;
  v18 = sub_100001DFC(&qword_1000299B0, &qword_10001C1E8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v168 = &v146 - v20;
  v21 = sub_100001DFC(&qword_1000299B8, &unk_10001C1F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v165 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v164 = &v146 - v26;
  v27 = __chkstk_darwin(v25);
  v167 = &v146 - v28;
  __chkstk_darwin(v27);
  v170 = &v146 - v29;
  v30 = sub_10001AB74();
  v176 = *(v30 - 8);
  v177 = v30;
  v31 = *(v176 + 64);
  __chkstk_darwin(v30);
  v174 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10001AB94();
  v173 = *(v175 - 8);
  v33 = *(v173 + 64);
  __chkstk_darwin(v175);
  v172 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v171 = &v146 - v37;
  v38 = sub_10001AA34();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v156 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v181 = &v146 - v43;
  v44 = sub_10001AB34();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v49 = &v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v180 = &v146 - v50;
  v178 = a3;
  v51 = *(a3 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection);
  v52 = (*(*(a3 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_connection + 8) + 8))();
  if (v52)
  {
    v179 = v52;
    v53 = sub_10001A5D4();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    sub_10001A5C4();
    sub_100017C7C(&qword_1000299C0, &type metadata accessor for DeviceActivityReport.ClientConfiguration);
    sub_10001A5B4();

    (*(v45 + 32))(v180, v49, v44);
    sub_10001AB14();
    v59 = sub_10001AB04();
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      v64 = v178;
      v63 = v179;
      v65 = *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection);
      if (((*(*(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection + 8) + 8))(v179) & 1) == 0)
      {

        sub_100017A74();
        swift_allocError();
        *v83 = 2;
        v84 = sub_10001A6E4();
        (*(a4 + 16))(a4, v84);

        (*(v39 + 8))(v181, v38);
        return (*(v45 + 8))(v180, v44);
      }

      v66 = &v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
      v67 = *&v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix + 8];
      *v66 = v61;
      v66[1] = v62;

      v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData] = 1;
LABEL_9:
      v68 = v171;
      (*(v39 + 16))(v171, v181, v38);
      (*(v39 + 56))(v68, 0, 1, v38);
      v69 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
      swift_beginAccess();
      sub_10000F5CC(v68, &v64[v69], &qword_100029968, &qword_10001C1B0);
      swift_endAccess();
      sub_10001AB24();
      v70 = sub_10001ABF4();

      v71 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole;
      v72 = *&v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_sceneRole];
      v154 = v38;
      v155 = v39;
      v171 = v70;
      if (v72)
      {
        v73 = sub_10001AC24();
        v75 = v74;
        if (v73 == sub_10001AC24() && v75 == v76)
        {

LABEL_20:

          v64 = v178;
          sub_100010CC8();
LABEL_23:
          sub_10000FBC4(0, &qword_100029940, OS_dispatch_queue_ptr);
          v178 = sub_10001ADE4();
          v102 = swift_allocObject();
          *(v102 + 16) = v64;
          v184 = sub_100017BB8;
          v185 = v102;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000043F4;
          v183 = &unk_1000255A8;
          v103 = _Block_copy(aBlock);
          v104 = v64;
          v105 = v103;
          v106 = v104;

          v107 = v172;
          sub_10001AB84();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_100017C7C(&qword_1000291F8, &type metadata accessor for DispatchWorkItemFlags);
          sub_100001DFC(&unk_100029950, &qword_10001B9B0);
          sub_100017CC4(&qword_100029200, &unk_100029950, &qword_10001B9B0);
          v108 = v174;
          v109 = v177;
          sub_10001AE64();
          v110 = v178;
          sub_10001AE04();
          _Block_release(v105);

          (*(v176 + 8))(v108, v109);
          (*(v173 + 8))(v107, v175);
          (*(a4 + 16))(a4, 0);

          (*(v155 + 8))(v181, v154);
          return (*(v45 + 8))(v180, v44);
        }

        v100 = sub_10001AF34();

        if (v100)
        {
          goto LABEL_20;
        }

        v64 = v178;
        v99 = *(v178 + v71);
      }

      else
      {
        v98 = v70;
        v99 = 0;
      }

      *&v64[v71] = v70;
      v101 = v70;

      sub_10000FDA8();
      goto LABEL_23;
    }

    v155 = v39;
    v154 = v38;
    v153 = v45;
    v151 = v44;
    v152 = a4;
    v77 = *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord);
    v78 = *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_bundleRecord + 8);
    [v179 auditToken];
    v79 = v186;
    v80 = v187;
    v82 = v188;
    v81 = v189;
    v150 = *(v78 + 8);
    v183 = v77;
    v184 = v78;
    sub_10000F158(aBlock);
    v150(v79, v80, v82, v81, v77, v78);
    v85 = (*(v78 + 16))(v77, v78);
    a4 = v152;
    v87 = v153;
    if (!v86)
    {
      sub_100017A74();
      swift_allocError();
      *v111 = 1;
      v112 = sub_10001A6E4();
      (*(a4 + 16))(a4, v112);

      (*(v155 + 8))(v181, v154);
      (*(v87 + 8))(v180, v151);
      return sub_10000BF9C(aBlock);
    }

    v149 = v85;
    v150 = v86;
    v88 = v179;
    v89 = (v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection);
    v90 = *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection);
    v91 = (*(*(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_usageTrackingConnection + 8) + 8))(v179);
    v92 = *v89;
    v93 = (*(v89[1] + 16))(v88);
    v44 = v151;
    v39 = v155;
    if (v91)
    {
      v94 = 1;
      v95 = v168;
      v96 = v170;
      v97 = v167;
    }

    else
    {
      v96 = v170;
      v97 = v167;
      if ((v93 & 1) == 0)
      {

        sub_100017A74();
        swift_allocError();
        *v127 = 2;
        v128 = sub_10001A6E4();
        (*(a4 + 16))(a4, v128);

        (*(v39 + 8))(v181, v154);
        (*(v87 + 8))(v180, v44);
        return sub_10000BF9C(aBlock);
      }

      v113 = *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_authorization);
      v114 = v168;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v116 = sub_10001ABF4();
      v94 = [ObjCClassFromMetadata isAuthorized:v116];

      v95 = v114;
    }

    v146 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData;
    *(v178 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData) = v94;
    sub_10001A9E4();
    sub_10001A9B4();
    v117 = v97;
    v118 = v96;
    v119 = v166;
    v120 = v169;
    (*(v166 + 56))(v117, 0, 1, v169);
    v121 = *(v18 + 48);
    sub_10000F3BC(v118, v95, &qword_1000299B8, &unk_10001C1F0);
    v147 = v121;
    sub_10000F3BC(v117, v95 + v121, &qword_1000299B8, &unk_10001C1F0);
    v122 = *(v119 + 48);
    v123 = v122(v95, 1, v120);
    v148 = v119 + 48;
    if (v123 == 1)
    {
      sub_10000BE84(v117, &qword_1000299B8, &unk_10001C1F0);
      v124 = v168;
      sub_10000BE84(v170, &qword_1000299B8, &unk_10001C1F0);
      if (v122(v124 + v147, 1, v120) == 1)
      {
        sub_10000BE84(v124, &qword_1000299B8, &unk_10001C1F0);
        v64 = v178;
LABEL_38:
        if (v64[v146])
        {
          goto LABEL_45;
        }

        sub_10001A9A4();
        sub_10001A9C4();
        v132 = v159;
        sub_10001AA14();
        v133 = v157;
        v134 = *(v157 + 48);
        v135 = v158;
        if (v134(v132, 1, v158) == 1)
        {
          sub_10001A9F4();
          if (v134(v132, 1, v135) != 1)
          {
            sub_10000BE84(v132, &qword_1000299A8, &qword_10001C1E0);
          }
        }

        else
        {
          (*(v133 + 32))(v160, v132, v135);
        }

        v136 = v181;
        sub_10001A974();
        sub_10001A954();
        sub_10001A964();
        v137 = v156;
        sub_10001AA24();
        v138 = v154;
        (*(v39 + 8))(v136, v154);
        (*(v39 + 32))(v136, v137, v138);
LABEL_44:
        v64 = v178;
LABEL_45:
        v139 = v165;
        sub_10001A9E4();
        v140 = v122(v139, 1, v169);
        sub_10000BE84(v139, &qword_1000299B8, &unk_10001C1F0);
        if (v140 != 1 || v64[v146] == 1)
        {
          v141 = &v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix];
          v142 = *&v64[OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_extensionIdentifierPrefix + 8];
          v143 = v150;
          *v141 = v149;
          v141[1] = v143;

          sub_10000BF9C(aBlock);
          v45 = v153;
          v38 = v154;
          goto LABEL_9;
        }

        sub_100017A74();
        swift_allocError();
        *v144 = 2;
        v145 = sub_10001A6E4();
        (*(a4 + 16))(a4, v145);

        (*(v39 + 8))(v181, v154);
        (*(v153 + 8))(v180, v44);
        return sub_10000BF9C(aBlock);
      }
    }

    else
    {
      v125 = v164;
      sub_10000F3BC(v95, v164, &qword_1000299B8, &unk_10001C1F0);
      v126 = v147;
      v124 = v95;
      if (v122(v95 + v147, 1, v120) != 1)
      {
        v129 = v166;
        v130 = v161;
        (*(v166 + 32))(v161, v124 + v126, v120);
        sub_100017C7C(&qword_1000299C8, &type metadata accessor for DeviceActivityFilter.Users);
        LODWORD(v168) = sub_10001ABE4();
        v131 = *(v129 + 8);
        v131(v130, v120);
        sub_10000BE84(v167, &qword_1000299B8, &unk_10001C1F0);
        sub_10000BE84(v170, &qword_1000299B8, &unk_10001C1F0);
        v131(v125, v120);
        v39 = v155;
        sub_10000BE84(v124, &qword_1000299B8, &unk_10001C1F0);
        v64 = v178;
        if ((v168 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      sub_10000BE84(v167, &qword_1000299B8, &unk_10001C1F0);
      sub_10000BE84(v170, &qword_1000299B8, &unk_10001C1F0);
      (*(v166 + 8))(v125, v120);
    }

    sub_10000BE84(v124, &qword_1000299B0, &qword_10001C1E8);
    goto LABEL_44;
  }

  sub_100017A74();
  swift_allocError();
  *v56 = 0;
  v57 = sub_10001A6E4();
  (*(a4 + 16))(a4, v57);
}

uint64_t sub_100016ABC(uint64_t *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int (**a6)(char *, uint64_t, uint64_t), void (**a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, unint64_t a9)
{
  v141 = a7;
  v140 = a6;
  v139 = a4;
  v138 = a3;
  v137 = a2;
  v135 = a1;
  v10 = sub_10001A854();
  v147 = *(v10 - 8);
  v11 = *(v147 + 64);
  __chkstk_darwin(v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_100001DFC(&qword_100029960, &qword_10001C1A8);
  v134 = *(v144 - 8);
  v14 = *(v134 + 64);
  __chkstk_darwin(v144);
  v131 = (&v111 - v15);
  v16 = sub_100001DFC(&qword_100029968, &qword_10001C1B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v120 = &v111 - v18;
  v122 = sub_10001AA34();
  v121 = *(v122 - 8);
  v19 = *(v121 + 64);
  __chkstk_darwin(v122);
  v119 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001DFC(&qword_100029970, &qword_10001C1B8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v143 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v142 = &v111 - v25;
  v129 = sub_10001A884();
  v145 = *(v129 - 8);
  v26 = *(v145 + 64);
  __chkstk_darwin(v129);
  v128 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100001DFC(&qword_100029978, &qword_10001C1C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v127 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v126 = &v111 - v32;
  v33 = sub_100001DFC(&qword_100029980, &qword_10001C1C8);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v111 - v35;
  v124 = sub_10001A8C4();
  v123 = *(v124 - 8);
  v37 = *(v123 + 64);
  __chkstk_darwin(v124);
  v146 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100001DFC(&qword_100029988, &qword_10001C1D0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v111 - v41;
  v43 = sub_10001AA64();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AA54();
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_10000BE84(v42, &qword_100029988, &qword_10001C1D0);
    sub_100017A74();
    swift_allocError();
    *v48 = 3;
    v49 = sub_10001A6E4();
    (*(a9 + 16))(a9, 0, v49);
  }

  v125 = a9;
  v136 = v13;
  (*(v44 + 32))(v47, v42, v43);
  sub_1000107D4(&v152);
  v51 = v44;
  v52 = v154;
  sub_10000EBC8(&v152, v153);
  v110 = *(v52 + 8);
  sub_10001AA74();
  v113 = v51;
  v114 = v43;
  v53 = v123;
  v54 = v124;
  if ((*(v123 + 48))(v36, 1, v124) != 1)
  {
    v112 = 0;
    (*(v53 + 32))(v146, v36, v54);
    sub_10000BF9C(&v152);
    v55 = sub_10001A8A4();
    v135 = (a8 + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_appInfoCache);
    v118 = (v145 + 32);
    v150 = 0;
    v151 = 0;
    v130 = v147 + 16;
    v141 = (v134 + 56);
    v140 = (v134 + 48);
    v134 = v147 + 32;
    v149 = v55;
    v132 = v147 + 8;
    v115 = (v145 + 8);
    v56 = v136;
    v58 = v143;
    v57 = v144;
    v59 = v142;
    v60 = v125;
    v117 = a8;
    v116 = v47;
    v133 = v10;
LABEL_7:
    v61 = v127;
    sub_1000133B8(v127);
    v62 = v61;
    v63 = v126;
    sub_100017AC8(v62, v126, &qword_100029978, &qword_10001C1C0);
    v64 = sub_100001DFC(&qword_100029998, &qword_10001C1D8);
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {

      v96 = OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_filter;
      swift_beginAccess();
      v97 = a8 + v96;
      v98 = v120;
      sub_10000F3BC(v97, v120, &qword_100029968, &qword_10001C1B0);
      v99 = v121;
      v100 = v122;
      if ((*(v121 + 48))(v98, 1, v122) == 1)
      {
        sub_10000BE84(v98, &qword_100029968, &qword_10001C1B0);
        v73 = v146;
      }

      else
      {
        v101 = v119;
        (*(v99 + 32))(v119, v98, v100);
        v73 = v146;
        sub_10001A8A4();
        sub_10001ACD4();

        sub_10001A8B4();
        (*(v99 + 8))(v101, v100);
      }

      v102 = sub_10001A604();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      sub_10001A5F4();
      sub_100017C7C(&qword_1000299A0, &type metadata accessor for _DeviceActivityData.ActivitySegment);
      v105 = v112;
      isUniquelyReferenced_nonNull_native = sub_10001A5E4();
      if (v105)
      {

        swift_errorRetain();
        v106 = sub_10001A6E4();
        (*(v60 + 16))(v60, 0, v106);

LABEL_34:
        (*(v123 + 8))(v73, v124);
        return (*(v113 + 8))(v47, v114);
      }
    }

    else
    {
      v65 = *v63;
      (*v118)(v128, &v63[*(v64 + 48)], v129);
      result = sub_10001A874();
      v66 = result;
      v47 = 0;
      v67 = *(result + 16);
      v137 = v67;
      v139 = v65;
      v138 = result;
      if (!v67)
      {
LABEL_9:
        v68 = 1;
        v47 = v67;
        goto LABEL_13;
      }

      while (1)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        if (v47 >= *(v66 + 16))
        {
          goto LABEL_37;
        }

        v69 = v147;
        v70 = v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v47;
        v71 = *(v57 + 48);
        v72 = v131;
        *v131 = v47;
        (*(v69 + 16))(v72 + v71, v70, v10);
        sub_100017AC8(v72, v58, &qword_100029960, &qword_10001C1A8);
        v68 = 0;
        ++v47;
LABEL_13:
        (*v141)(v58, v68, 1, v57);
        sub_100017AC8(v58, v59, &qword_100029970, &qword_10001C1B8);
        if ((*v140)(v59, 1, v57) == 1)
        {
          (*v115)(v128, v129);

          v60 = v125;
          a8 = v117;
          v47 = v116;
          goto LABEL_7;
        }

        v73 = *v59;
        (*v134)(v56, &v59[*(v57 + 48)], v10);
        v74 = sub_10001A834();
        v76 = v75;
        v78 = v135[1];
        v79 = *(v78 + 8);
        v153 = *v135;
        v77 = v153;
        v154 = v78;
        sub_10000F158(&v152);
        v79(v77, v78);
        v80 = (*(v78 + 16))(v74, v76, v77, v78);

        swift_beginAccess();
        v81 = *(v80 + 40);
        v82 = *(v80 + 48);

        sub_10000BF9C(&v152);
        v83 = sub_10001A894();
        v85 = v84;
        v86 = *v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v85 = v86;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100014D98(v86);
          v86 = isUniquelyReferenced_nonNull_native;
          *v85 = isUniquelyReferenced_nonNull_native;
        }

        v60 = v139;
        if ((v139 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v139 >= v86[2])
        {
          goto LABEL_30;
        }

        v89 = v86 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v139;
        v90 = sub_10001A864();
        v92 = v91;
        v93 = *v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v92 = v93;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100014D84(v93);
          v93 = isUniquelyReferenced_nonNull_native;
          *v92 = isUniquelyReferenced_nonNull_native;
        }

        v56 = v136;
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v73 >= v93[2])
        {
          goto LABEL_32;
        }

        v94 = v147;
        v95 = v93 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v147 + 72) * v73;
        sub_10001A844();
        v90(v148, 0);
        v83(&v152, 0);
        v10 = v133;
        result = (*(v94 + 8))(v56, v133);
        v58 = v143;
        v57 = v144;
        v59 = v142;
        v66 = v138;
        v67 = v137;
        if (v47 == v137)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v107 = isUniquelyReferenced_nonNull_native;
    v108 = v88;

    sub_10000BC84(v107, v108);
    isa = sub_10001A734().super.isa;
    (*(v60 + 16))(v60, isa, 0);

    sub_10000BCD8(v107, v108);
    sub_10000BCD8(v107, v108);
    goto LABEL_34;
  }

  sub_10000BE84(v36, &qword_100029980, &qword_10001C1C8);
  sub_10000BF9C(&v152);
  (*(v125 + 16))(v125, 0, 0);
  return (*(v113 + 8))(v47, v114);
}