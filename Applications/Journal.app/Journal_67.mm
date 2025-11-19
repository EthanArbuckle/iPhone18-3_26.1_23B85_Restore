id sub_100737810(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityView;
  type metadata accessor for MotionActivityGridView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityAsset] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FullScreenMotionActivityView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1007378D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMotionActivityView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100737980()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007379EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = type metadata accessor for URL.DirectoryHint();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for Duration.TimeFormatStyle();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v4[30] = v11;
  v4[31] = v13;

  return _swift_task_switch(sub_100737CE4, v11, v13);
}

uint64_t sub_100737CE4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1000B43D4(0, 1);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[23], &unk_100AD6DD0);
LABEL_9:
    sub_1004D12DC();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  (*(v0[25] + 32))(v0[29], v0[23], v0[24]);
  URL.pathExtension.getter();
  v4 = sub_100690F5C();

  if ((v4 & 1) == 0 || (v5 = objc_opt_self(), v0[32] = v5, v6 = [v5 defaultManager], URL.path.getter(), v7 = String._bridgeToObjectiveC()(), , v8 = objc_msgSend(v6, "fileExistsAtPath:", v7), v7, v6, !v8))
  {
    (*(v0[25] + 8))(v0[29], v0[24]);
    goto LABEL_9;
  }

  v9 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v0[33] = [v9 initWithURL:v11 options:0];

  sub_1000F24EC(&qword_100AD8860);
  v13 = static AVPartialAsyncProperty<A>.duration.getter();
  v0[34] = v13;
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_100738044;
  v15 = v0[7];
  v16 = v0[8];

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 41, v13, v15, v16);
}

uint64_t sub_100738044()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100738BCC;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1007381BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1007381BC()
{
  CMTime.seconds.getter();
  static Duration.seconds(_:)();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  }

  else
  {
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  static FormatStyle<>.time(pattern:)();
  (*(v6 + 8))(v4, v5);
  sub_10073AF74(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(*(v0 + 72) + OBJC_IVAR____TtC7Journal13ExportOptions_format) <= 1u && !*(*(v0 + 72) + OBJC_IVAR____TtC7Journal13ExportOptions_format))
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_8:
    v71 = v8;
    v75 = *(v0 + 256);
    v76 = v7;
    v10 = *(v0 + 208);
    v11 = *(v0 + 200);
    v77 = *(v0 + 192);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);
    v72 = *(v0 + 88);
    v73 = *(v0 + 216);
    sub_10069763C(v10);
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    (*(v16 + 104))(v15, enum case for URL.DirectoryHint.inferFromPath(_:), v72);
    sub_1000777B4();
    URL.appending<A>(path:directoryHint:)();
    (*(v16 + 8))(v15, v72);

    v20 = *(v11 + 8);
    v20(v10, v77);
    URL.pathExtension.getter();
    URL.appendingPathExtension(_:)();

    v20(v73, v77);
    v21 = URL.lastPathComponent.getter();
    v23 = v22;
    v24 = [v75 defaultManager];
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    *(v0 + 48) = 0;
    LODWORD(v16) = [v24 copyItemAtURL:v27 toURL:v29 error:v0 + 48];

    v31 = *(v0 + 48);
    if (v16)
    {
      v74 = *(v0 + 224);
      v32 = *(v0 + 192);
      v33 = *(v0 + 72);
      v34 = v31;
      _StringGuts.grow(_:)(116);
      v35._countAndFlagsBits = 0xD00000000000003FLL;
      v35._object = 0x8000000100903280;
      String.append(_:)(v35);
      String.append(_:)(*(v33 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
      v36._countAndFlagsBits = 47;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = v21;
      v37._object = v23;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0xD00000000000001ALL;
      v38._object = 0x80000001009032C0;
      String.append(_:)(v38);
      v39 = [objc_opt_self() mainBundle];
      v79._object = 0x8000000100903320;
      v40._countAndFlagsBits = 0xD000000000000034;
      v40._object = 0x80000001009032E0;
      v79._countAndFlagsBits = 0xD00000000000004ALL;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v79);

      String.append(_:)(v42);

      v43._countAndFlagsBits = 0xD000000000000012;
      v43._object = 0x8000000100903370;
      String.append(_:)(v43);
      _StringGuts.grow(_:)(38);

      v44._countAndFlagsBits = v71;
      v44._object = v76;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 0x3E7669642F3CLL;
      v45._object = 0xE600000000000000;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 0xD00000000000001ELL;
      v46._object = 0x8000000100903260;
      String.append(_:)(v46);

      _StringGuts.grow(_:)(97);
      v47._countAndFlagsBits = 0x7669643C20202020;
      v47._object = 0xED0000223D646920;
      String.append(_:)(v47);
      v48._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 0xD00000000000001CLL;
      v49._object = 0x80000001008F7BE0;
      String.append(_:)(v49);
      v50._countAndFlagsBits = AssetType.rawValue.getter();
      String.append(_:)(v50);

      v51._countAndFlagsBits = 32;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = 8226;
      v52._object = 0xE200000000000000;
      String.append(_:)(v52);
      v53._countAndFlagsBits = 0x2020202020200A3ELL;
      v53._object = 0xEA00000000002020;
      String.append(_:)(v53);
      v54._countAndFlagsBits = 0x202020202020200ALL;
      v54._object = 0xE900000000000020;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 0x202020202020200ALL;
      v56._object = 0xE900000000000020;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 0x642F3C202020200ALL;
      v57._object = 0xEB000000003E7669;
      String.append(_:)(v57);
      v20(v74, v32);
      v20(*(v0 + 232), *(v0 + 192));

      v58 = *(v0 + 8);

      return v58(0, 0xE000000000000000);
    }

    else
    {
      v67 = *(v0 + 224);
      v66 = *(v0 + 232);
      v68 = *(v0 + 192);
      v69 = v31;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v20(v67, v68);
      v20(v66, v68);

      v70 = *(v0 + 8);

      return v70();
    }
  }

  _StringGuts.grow(_:)(38);

  v60._countAndFlagsBits = v8;
  v60._object = v7;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x3E7669642F3CLL;
  v61._object = 0xE600000000000000;
  String.append(_:)(v61);
  *(v0 + 288) = 0x8000000100903260;
  v62 = swift_task_alloc();
  *(v0 + 296) = v62;
  *v62 = v0;
  v62[1] = sub_1007394F0;
  v63 = *(v0 + 72);
  v65 = *(v0 + 56);
  v64 = *(v0 + 64);

  return sub_100847498(v65, v64, v63, 0, 0, 0, 0, 0);
}

uint64_t sub_100738BCC()
{
  if (*(*(v0 + 72) + OBJC_IVAR____TtC7Journal13ExportOptions_format) <= 1u && !*(*(v0 + 72) + OBJC_IVAR____TtC7Journal13ExportOptions_format))
  {

    goto LABEL_5;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
LABEL_5:
    v65 = *(v0 + 256);
    v2 = *(v0 + 208);
    v64 = *(v0 + 216);
    v3 = *(v0 + 200);
    v67 = *(v0 + 192);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v63 = *(v0 + 88);
    sub_10069763C(v2);
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v4 + 8))(v5, v7);
    *(v0 + 16) = v9;
    *(v0 + 24) = v11;
    (*(v8 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v63);
    sub_1000777B4();
    URL.appending<A>(path:directoryHint:)();
    (*(v8 + 8))(v6, v63);

    v12 = *(v3 + 8);
    v12(v2, v67);
    URL.pathExtension.getter();
    URL.appendingPathExtension(_:)();

    v12(v64, v67);
    v13 = URL.lastPathComponent.getter();
    v15 = v14;
    v16 = [v65 defaultManager];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    *(v0 + 48) = 0;
    LODWORD(v8) = [v16 copyItemAtURL:v19 toURL:v21 error:v0 + 48];

    v23 = *(v0 + 48);
    if (v8)
    {
      v66 = *(v0 + 224);
      v24 = *(v0 + 192);
      v25 = *(v0 + 72);
      v26 = v23;
      _StringGuts.grow(_:)(116);
      v27._countAndFlagsBits = 0xD00000000000003FLL;
      v27._object = 0x8000000100903280;
      String.append(_:)(v27);
      String.append(_:)(*(v25 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
      v28._countAndFlagsBits = 47;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v13;
      v29._object = v15;
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x80000001009032C0;
      String.append(_:)(v30);
      v31 = [objc_opt_self() mainBundle];
      v69._object = 0x8000000100903320;
      v32._countAndFlagsBits = 0xD000000000000034;
      v32._object = 0x80000001009032E0;
      v69._countAndFlagsBits = 0xD00000000000004ALL;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v69);

      String.append(_:)(v34);

      v35._countAndFlagsBits = 0xD000000000000012;
      v35._object = 0x8000000100903370;
      String.append(_:)(v35);
      _StringGuts.grow(_:)(38);

      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 0x3E7669642F3CLL;
      v37._object = 0xE600000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 0xD00000000000001ELL;
      v38._object = 0x8000000100903260;
      String.append(_:)(v38);

      _StringGuts.grow(_:)(97);
      v39._countAndFlagsBits = 0x7669643C20202020;
      v39._object = 0xED0000223D646920;
      String.append(_:)(v39);
      v40._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v40);

      v41._countAndFlagsBits = 0xD00000000000001CLL;
      v41._object = 0x80000001008F7BE0;
      String.append(_:)(v41);
      v42._countAndFlagsBits = AssetType.rawValue.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 32;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 8226;
      v44._object = 0xE200000000000000;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 0x2020202020200A3ELL;
      v45._object = 0xEA00000000002020;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 0x202020202020200ALL;
      v46._object = 0xE900000000000020;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      String.append(_:)(v47);

      v48._countAndFlagsBits = 0x202020202020200ALL;
      v48._object = 0xE900000000000020;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 0x642F3C202020200ALL;
      v49._object = 0xEB000000003E7669;
      String.append(_:)(v49);
      v12(v66, v24);
      v12(*(v0 + 232), *(v0 + 192));

      v50 = *(v0 + 8);

      return v50(0, 0xE000000000000000);
    }

    else
    {
      v59 = *(v0 + 224);
      v58 = *(v0 + 232);
      v60 = *(v0 + 192);
      v61 = v23;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12(v59, v60);
      v12(v58, v60);

      v62 = *(v0 + 8);

      return v62();
    }
  }

  _StringGuts.grow(_:)(38);

  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x3E7669642F3CLL;
  v53._object = 0xE600000000000000;
  String.append(_:)(v53);
  *(v0 + 288) = 0x8000000100903260;
  v54 = swift_task_alloc();
  *(v0 + 296) = v54;
  *v54 = v0;
  v54[1] = sub_1007394F0;
  v55 = *(v0 + 72);
  v57 = *(v0 + 56);
  v56 = *(v0 + 64);

  return sub_100847498(v57, v56, v55, 0, 0, 0, 0, 0);
}

uint64_t sub_1007394F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_100739798;
  }

  else
  {
    v6[39] = a2;
    v6[40] = a1;
    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_10073966C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10073966C()
{
  v3 = v0[39];
  v4 = v0[40];
  (*(v0[25] + 8))(v0[29], v0[24]);

  v1 = v0[1];

  return v1(v4, v3);
}

uint64_t sub_100739798()
{
  (*(v0[25] + 8))(v0[29], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007398B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_1007379EC(a1, a2, a3);
}

double sub_100739964@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PhotoLibraryAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
  {

    sub_100046ADC(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = PhotoLibraryAssetMetadata.placeName.getter();
      v13 = v12;
      *(a1 + 24) = _s6ResultVMa_9(0);
      *(a1 + 32) = sub_10073AF74(&qword_100AEF848, _s6ResultVMa_9);
      *(a1 + 40) = sub_10073AF74(&qword_100AEF850, _s6ResultVMa_9);
      v14 = sub_10001A770(a1);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v7 + 8))(v10, v6);
      *v14 = v11;
      v14[1] = v13;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD5B20);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

double sub_100739BE0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PhotoLibraryAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
  {

    sub_100046ADC(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = PhotoLibraryAssetMetadata.placeName.getter();
      v13 = v12;
      *(a1 + 24) = _s6ResultVMa_8(0);
      *(a1 + 32) = sub_10073AF74(&qword_100AEF858, _s6ResultVMa_8);
      *(a1 + 40) = sub_10073AF74(&qword_100AEF860, _s6ResultVMa_8);
      v14 = sub_10001A770(a1);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v7 + 8))(v10, v6);
      *v14 = v11;
      v14[1] = v13;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD5B20);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

double sub_100739E5C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PhotoLibraryAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
  {

    sub_100046ADC(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = PhotoLibraryAssetMetadata.placeName.getter();
      v13 = v12;
      *(a1 + 24) = _s6ResultVMa_7(0);
      *(a1 + 32) = sub_10073AF74(&qword_100AEF868, _s6ResultVMa_7);
      *(a1 + 40) = sub_10073AF74(&qword_100AEF870, _s6ResultVMa_7);
      v14 = sub_10001A770(a1);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v7 + 8))(v10, v6);
      *v14 = v11;
      v14[1] = v13;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD5B20);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10073A0D4(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEFA38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_10073B5C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_9(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_10073AF74(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10073A28C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000F24EC(&qword_100AEFA28);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = _s6ResultVMa_9(0);
  __chkstk_darwin(v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_10073B5C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v17 = v10;
  v13 = v19;
  v14 = v20;
  v22 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  type metadata accessor for Date();
  v21 = 1;
  sub_10073AF74(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  sub_1001679C0(v6, v12 + *(v17 + 20));
  sub_10073B66C(v12, v18, _s6ResultVMa_9);
  sub_10000BA7C(a1);
  return sub_10073B6D4(v12, _s6ResultVMa_9);
}

uint64_t sub_10073A578(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEFA50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_10073B618();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_8(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_10073AF74(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10073A730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000F24EC(&qword_100AEFA40);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = _s6ResultVMa_8(0);
  __chkstk_darwin(v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_10073B618();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v17 = v10;
  v13 = v19;
  v14 = v20;
  v22 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  type metadata accessor for Date();
  v21 = 1;
  sub_10073AF74(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  sub_1001679C0(v6, v12 + *(v17 + 20));
  sub_10073B66C(v12, v18, _s6ResultVMa_8);
  sub_10000BA7C(a1);
  return sub_10073B6D4(v12, _s6ResultVMa_8);
}

uint64_t sub_10073AA1C(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEFA68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_10073B734();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_7(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_10073AF74(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10073ABD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000F24EC(&qword_100AEFA58);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = _s6ResultVMa_7(0);
  __chkstk_darwin(v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_10073B734();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v17 = v10;
  v13 = v19;
  v14 = v20;
  v22 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  type metadata accessor for Date();
  v21 = 1;
  sub_10073AF74(&qword_100AE4998, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  sub_1001679C0(v6, v12 + *(v17 + 20));
  sub_10073B66C(v12, v18, _s6ResultVMa_7);
  sub_10000BA7C(a1);
  return sub_10073B6D4(v12, _s6ResultVMa_7);
}

uint64_t sub_10073AEC4(uint64_t a1)
{
  result = sub_10073AF74(&qword_100AEF830, type metadata accessor for LivePhotoAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10073AF1C(uint64_t a1)
{
  result = sub_10073AF74(&qword_100AEF838, type metadata accessor for PhotoAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10073AF74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10073AFBC(uint64_t a1)
{
  result = sub_10073AF74(&qword_100AEF840, type metadata accessor for VideoAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10073B0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000F24EC(&unk_100AD4790);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10073B1B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD4790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10073B264()
{
  sub_10034652C();
  if (v0 <= 0x3F)
  {
    sub_100008F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10073B2E8(uint64_t a1)
{
  v2 = sub_10073B5C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073B324(uint64_t a1)
{
  v2 = sub_10073B5C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073B390(uint64_t a1)
{
  v2 = sub_10073B618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073B3CC(uint64_t a1)
{
  v2 = sub_10073B618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073B438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
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

uint64_t sub_10073B51C(uint64_t a1)
{
  v2 = sub_10073B734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073B558(uint64_t a1)
{
  v2 = sub_10073B734();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10073B5C4()
{
  result = qword_100AEFA30;
  if (!qword_100AEFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA30);
  }

  return result;
}

unint64_t sub_10073B618()
{
  result = qword_100AEFA48;
  if (!qword_100AEFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA48);
  }

  return result;
}

uint64_t sub_10073B66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10073B6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10073B734()
{
  result = qword_100AEFA60;
  if (!qword_100AEFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA60);
  }

  return result;
}

unint64_t sub_10073B7BC()
{
  result = qword_100AEFA70;
  if (!qword_100AEFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA70);
  }

  return result;
}

unint64_t sub_10073B814()
{
  result = qword_100AEFA78;
  if (!qword_100AEFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA78);
  }

  return result;
}

unint64_t sub_10073B86C()
{
  result = qword_100AEFA80;
  if (!qword_100AEFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA80);
  }

  return result;
}

unint64_t sub_10073B8C4()
{
  result = qword_100AEFA88;
  if (!qword_100AEFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA88);
  }

  return result;
}

unint64_t sub_10073B91C()
{
  result = qword_100AEFA90;
  if (!qword_100AEFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA90);
  }

  return result;
}

unint64_t sub_10073B974()
{
  result = qword_100AEFA98;
  if (!qword_100AEFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFA98);
  }

  return result;
}

unint64_t sub_10073B9CC()
{
  result = qword_100AEFAA0;
  if (!qword_100AEFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFAA0);
  }

  return result;
}

unint64_t sub_10073BA24()
{
  result = qword_100AEFAA8;
  if (!qword_100AEFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFAA8);
  }

  return result;
}

unint64_t sub_10073BA7C()
{
  result = qword_100AEFAB0;
  if (!qword_100AEFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFAB0);
  }

  return result;
}

void sub_10073BADC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  *(v1 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_multiPinMapDelegate + 8) = &off_100A7AEB0;
    swift_unknownObjectWeakAssign();
    v5 = *(v1 + v2);
    if (v5)
    {
      *(v5 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegate + 8) = &off_100A7AE90;

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_10073BB7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset;
  v5 = *(v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for Asset();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  if (v9)
  {
    v10 = *(v2 + v4);
    v11 = v10;
    v22 = v9;
    sub_10057FA18(v10);
    v12 = *&v22[OBJC_IVAR____TtC7Journal19FullScreenAssetView_journalAssetView];
    v13 = OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView;
    v14 = *(v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView);
    *(v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView) = v12;
    v15 = v12;

    v16 = v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_loadingDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v2 + v13);
      if (v17)
      {
        v18 = *(v16 + 8);
        v19 = *((swift_isaMask & *v17) + 0xC8);
        v20 = v17;
        v21 = swift_unknownObjectRetain();
        v19(v21, v18);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

char *sub_10073BD3C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView] = 0;
  v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption] = 0;
  *&v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for FullScreenLegacyCollectionViewCell();
  v9 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v9 frame];
  v14 = [objc_allocWithZone(type metadata accessor for FullScreenAssetView()) initWithFrame:{v10, v11, v12, v13}];
  sub_10073BADC(v14);
  v15 = *&v9[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView];
  if (v15)
  {
    v16 = v15;
    v17 = [v9 contentView];
    [v17 addSubview:v16];

    sub_100013178(0.0);
  }

  else
  {
  }

  return v9;
}

id sub_10073BF28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenLegacyCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10073BFFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset);
    *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) = (v2 & 1) == 0;
    if (v2)
    {
      sub_1004E22A4();
    }

    else
    {
      sub_1004E28F8();
    }

    sub_1004E2C40();
    swift_unknownObjectRelease();
  }

  v3 = (*(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption) & 1) == 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  if (v4)
  {
    v5 = v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption];
    v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] = v3;
    v6 = v4;
    sub_10057F6D4(v5);
  }
}

void sub_10073C0F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) = 1;
    sub_1004E28F8();
    sub_1004E2C40();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption);
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption) = 1;
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
    if (v3)
    {
      v4 = v3[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption];
      v3[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] = 1;
      v5 = v3;
      sub_10057F6D4(v4);
    }
  }
}

uint64_t sub_10073C1CC()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave);
    if (v4 == 2 || (v4 & 1) == 0)
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v5 = result;
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v7 = static MainActor.shared.getter();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = &protocol witness table for MainActor;
      v8[4] = v5;
      sub_1003E9BBC(0, 0, v2, &unk_100959920, v8);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10073C348()
{
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_loadingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10073C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = a6;
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return _swift_task_switch(sub_10073C4A0, v8, v7);
}

uint64_t sub_10073C4A0()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  *(v0 + 72) = v3;
  v4 = [v3 newBackgroundContext];
  *(v0 + 80) = v4;

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10073C5CC;
  v6 = *(v0 + 32);

  return static JournalDataUtilities.getTimelineEntriesIDs(fetchLimit:context:)(v1, &protocol witness table for MainActor, v6, v2 & 1, v4);
}

uint64_t sub_10073C5CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_10073C714, v5, v4);
}

uint64_t sub_10073C714()
{

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = qword_100B30290;
  sub_100325058(v1, 0, v2, v4, 1);

  v6 = v0[1];

  return v6();
}

void sub_10073C800(void *a1, void *a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:0];

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = a2;
  v12 = String._bridgeToObjectiveC()();
  v36 = sub_10073FE34;
  v37 = v9;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B420;
  v13 = _Block_copy(&v32);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v8 addAction:v15];
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = a3;
  v17 = v10;
  v18 = v11;
  swift_unknownObjectRetain();
  v19 = String._bridgeToObjectiveC()();
  v36 = sub_10073FE44;
  v37 = v16;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B470;
  v20 = _Block_copy(&v32);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v8 addAction:v21];
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = a3;
  v23 = v17;
  v24 = v18;
  swift_unknownObjectRetain();
  v25 = String._bridgeToObjectiveC()();
  v36 = sub_10073FE9C;
  v37 = v22;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B4C0;
  v26 = _Block_copy(&v32);

  v27 = [v14 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v8 addAction:v27];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v28 = String._bridgeToObjectiveC()();
  v36 = DebugData.init(name:);
  v37 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B4E8;
  v29 = _Block_copy(&v32);

  v30 = [v14 actionWithTitle:v28 style:1 handler:v29];
  _Block_release(v29);

  [v8 addAction:v30];
  v31 = [v8 popoverPresentationController];
  [v31 setSourceItem:a3];

  [v24 presentViewController:v8 animated:1 completion:0];
}

void sub_10073CD0C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:0];

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v11 = a2;
  v12 = a3;
  v13 = String._bridgeToObjectiveC()();
  v48 = sub_10073FEAC;
  v49 = v10;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10016B4D8;
  v47 = &unk_100A7B538;
  v14 = _Block_copy(&aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  [v9 addAction:v16];
  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = a1;
  v17[4] = v12;
  v18 = v11;
  v19 = v12;
  v20 = String._bridgeToObjectiveC()();
  v48 = sub_10073FEE8;
  v49 = v17;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10016B4D8;
  v47 = &unk_100A7B588;
  v21 = _Block_copy(&aBlock);

  v22 = [v15 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v9 addAction:v22];
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = a1;
  v23[4] = v19;
  v24 = v18;
  v25 = v19;
  v26 = String._bridgeToObjectiveC()();
  v48 = sub_10073FF24;
  v49 = v23;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10016B4D8;
  v47 = &unk_100A7B5D8;
  v27 = _Block_copy(&aBlock);

  v28 = [v15 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v9 addAction:v28];
  v29 = swift_allocObject();
  v29[2] = v24;
  v29[3] = a1;
  v29[4] = v25;
  v30 = v24;
  v31 = v25;
  v32 = String._bridgeToObjectiveC()();
  v48 = sub_10073FF60;
  v49 = v29;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10016B4D8;
  v47 = &unk_100A7B628;
  v33 = _Block_copy(&aBlock);

  v34 = [v15 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  [v9 addAction:v34];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v35 = String._bridgeToObjectiveC()();
  v48 = DebugData.init(name:);
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10016B4D8;
  v47 = &unk_100A7B650;
  v36 = _Block_copy(&aBlock);

  v37 = [v15 actionWithTitle:v35 style:1 handler:v36];
  _Block_release(v36);

  [v9 addAction:v37];
  v38 = [v9 popoverPresentationController];
  [v38 setSourceItem:a4];

  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  *(v39 + 24) = v9;
  v48 = sub_10073FF9C;
  v49 = v39;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100006C7C;
  v47 = &unk_100A7B6A0;
  v40 = _Block_copy(&aBlock);
  v41 = v31;
  v42 = v9;

  [v41 dismissViewControllerAnimated:1 completion:v40];
  _Block_release(v40);
}

uint64_t sub_10073D3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a4;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = a3;
  *(v15 + 40) = 0;
  *(v15 + 48) = v13;
  sub_1003E9628(0, 0, v11, a6, v15);
}

void sub_10073D4E8(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = String._bridgeToObjectiveC()();
  v31 = sub_10073FC90;
  v32 = v7;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7B128;
  v10 = _Block_copy(&v27);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  [v6 addAction:v12];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = a2;
  v14 = v8;
  swift_unknownObjectRetain();
  v15 = String._bridgeToObjectiveC()();
  v31 = sub_10073FC9C;
  v32 = v13;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7B178;
  v16 = _Block_copy(&v27);

  v17 = [v11 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v6 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = a2;
  v19 = v14;
  swift_unknownObjectRetain();
  v20 = String._bridgeToObjectiveC()();
  v31 = sub_10073FCA8;
  v32 = v18;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7B1C8;
  v21 = _Block_copy(&v27);

  v22 = [v11 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v6 addAction:v22];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v23 = String._bridgeToObjectiveC()();
  v31 = DebugData.init(name:);
  v32 = 0;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7B1F0;
  v24 = _Block_copy(&v27);

  v25 = [v11 actionWithTitle:v23 style:1 handler:v24];
  _Block_release(v24);

  [v6 addAction:v25];
  v26 = [v6 popoverPresentationController];
  [v26 setSourceItem:a2];

  [v19 presentViewController:v6 animated:1 completion:0];
}

void sub_10073D9CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = a2;
  v10 = String._bridgeToObjectiveC()();
  v37 = sub_10073FCB4;
  v38 = v8;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10016B4D8;
  v36 = &unk_100A7B240;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = a1;
  v15 = v9;
  v16 = String._bridgeToObjectiveC()();
  v37 = sub_10073FCF0;
  v38 = v14;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10016B4D8;
  v36 = &unk_100A7B290;
  v17 = _Block_copy(&aBlock);

  v18 = [v12 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v7 addAction:v18];
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a1;
  v20 = v15;
  v21 = String._bridgeToObjectiveC()();
  v37 = sub_10073FD2C;
  v38 = v19;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10016B4D8;
  v36 = &unk_100A7B2E0;
  v22 = _Block_copy(&aBlock);

  v23 = [v12 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  [v7 addAction:v23];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v24 = String._bridgeToObjectiveC()();
  v37 = DebugData.init(name:);
  v38 = 0;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10016B4D8;
  v36 = &unk_100A7B308;
  v25 = _Block_copy(&aBlock);

  v26 = [v12 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  [v7 addAction:v26];
  v27 = [v7 popoverPresentationController];
  [v27 setSourceItem:a3];

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v7;
  v37 = sub_100740174;
  v38 = v28;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100006C7C;
  v36 = &unk_100A7B358;
  v29 = _Block_copy(&aBlock);
  v30 = v20;
  v31 = v7;

  [v30 dismissViewControllerAnimated:1 completion:v29];
  _Block_release(v29);
}

uint64_t sub_10073DF30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = a2;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = a3;
  *(v16 + 40) = a5;
  *(v16 + 48) = v14;
  sub_1003E9628(0, 0, v12, a6, v16);
}

uint64_t sub_10073E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = a6;
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return _swift_task_switch(sub_10073E108, v8, v7);
}

uint64_t sub_10073E108()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v0[9] = v2;
  v3 = [v2 newBackgroundContext];
  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10073E230;
  v5 = v0[4];

  return static JournalDataUtilities.getTimelineEntriesIDs(fetchLimit:context:)(v1, &protocol witness table for MainActor, v5, 0, v3);
}

uint64_t sub_10073E230(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_10073E378, v5, v4);
}

uint64_t sub_10073E378()
{

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 96);
  v6 = qword_100B30290;
  sub_1001A9F04(v1, v5, v4, 0, 0);

  v7 = *(v0 + 8);

  return v7();
}

void sub_10073E468()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100AD02B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = &protocol witness table for MainActor;
    *(v8 + 32) = 50;
    *(v8 + 40) = 0;
    *(v8 + 48) = v6;
    sub_1003E9628(0, 0, v2, &unk_100966550, v8);
  }
}

uint64_t sub_10073E5F8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100AD02B0 != -1)
    {
      swift_once();
    }

    v4 = qword_100B30290;
    sub_10073C800(v4, v3, [a1 presentationSourceItem]);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10073E6CC(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100AD02B0 != -1)
    {
      swift_once();
    }

    sub_10073D4E8(v3, [a1 presentationSourceItem]);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10073E798(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:0];

  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v11 = a3;
  v12 = String._bridgeToObjectiveC()();
  v36 = sub_10073FBDC;
  v37 = v10;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B010;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v9 addAction:v15];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v11;

  v17 = v11;
  v18 = String._bridgeToObjectiveC()();
  v36 = sub_10073FC00;
  v37 = v16;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B060;
  v19 = _Block_copy(&aBlock);

  v20 = [v14 actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  [v9 addAction:v20];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v17;

  v22 = v17;
  v23 = String._bridgeToObjectiveC()();
  v36 = sub_10073FC6C;
  v37 = v21;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B0B0;
  v24 = _Block_copy(&aBlock);

  v25 = [v14 actionWithTitle:v23 style:0 handler:v24];
  _Block_release(v24);

  [v9 addAction:v25];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v26 = String._bridgeToObjectiveC()();
  v36 = DebugData.init(name:);
  v37 = 0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10016B4D8;
  v35 = &unk_100A7B0D8;
  v27 = _Block_copy(&aBlock);

  v28 = [v14 actionWithTitle:v26 style:1 handler:v27];
  _Block_release(v27);

  [v9 addAction:v28];
  v29 = [v9 popoverPresentationController];
  if (v29)
  {
    v30 = v29;
    [v29 setSourceItem:{objc_msgSend(a4, "presentationSourceItem")}];

    swift_unknownObjectRelease();
  }

  [v22 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_10073ECE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v9 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v9 - 8);
  v11 = &v24[-v10];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  *(a2 + 16) = a5;
  sub_1001EDCD8(a3 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100004F84(v11, &qword_100AD1420);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v17 = qword_100B30290;
  sub_1000F24EC(&unk_100AE1A40);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100940080;
  (*(v13 + 16))(v19 + v18, v15, v12);
  swift_beginAccess();
  v20 = *(a2 + 16);
  v21 = qword_100ACFE28;
  v22 = v17;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  sub_100325058(v19, v20, v23, a4, 0);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10073EFF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    *(swift_allocObject() + 16) = 2;
    a4();
  }

  return result;
}

uint64_t sub_10073F0A0(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v22 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v12 = qword_100B30290;
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D50;
  *(inited + 32) = a1;
  swift_beginAccess();
  v21 = *(a2 + 16);
  v14 = v12;

  if ((inited & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_15:
      v8 = sub_100055CEC(0, v8[2] + 1, 1, v8);
      goto LABEL_9;
    }

    v15 = *(inited + 32);
  }

  sub_1001EDCD8(v15 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100004F84(v8, &qword_100AD1420);
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v20 = a3;
  a3 = *(v10 + 32);
  a3(v22, v8, v9);
  v8 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v17 = v8[2];
  v16 = v8[3];
  if (v17 >= v16 >> 1)
  {
    v8 = sub_100055CEC(v16 > 1, v17 + 1, 1, v8);
  }

  v8[2] = v17 + 1;
  a3(v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v22, v9);
  a3 = v20;
LABEL_12:
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1001A9F04(v8, v21, a3, 0, 0);
}

void sub_10073F3F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:0];

  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v11 = a3;
  v12 = String._bridgeToObjectiveC()();
  v31 = sub_10073FB6C;
  v32 = v10;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7AF48;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v9 addAction:v15];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v11;

  v17 = v11;
  v18 = String._bridgeToObjectiveC()();
  v31 = sub_10073FB74;
  v32 = v16;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7AF98;
  v19 = _Block_copy(&aBlock);

  v20 = [v14 actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  [v9 addAction:v20];
  if (qword_100AD0420 != -1)
  {
    swift_once();
  }

  v21 = String._bridgeToObjectiveC()();
  v31 = DebugData.init(name:);
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10016B4D8;
  v30 = &unk_100A7AFC0;
  v22 = _Block_copy(&aBlock);

  v23 = [v14 actionWithTitle:v21 style:1 handler:v22];
  _Block_release(v22);

  [v9 addAction:v23];
  v24 = [v9 popoverPresentationController];
  if (v24)
  {
    v25 = v24;
    [v24 setSourceItem:{objc_msgSend(a4, "presentationSourceItem")}];

    swift_unknownObjectRelease();
  }

  [v17 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_10073FB7C(uint64_t a1, char a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  swift_beginAccess();
  *(v4 + 16) = a2;
  return sub_10073F0A0(v5, v4, v6);
}

uint64_t sub_10073FC24()
{

  return swift_deallocObject();
}

uint64_t sub_10073FD68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10073E06C(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_10073FE54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10073FFB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10073C404(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100740080()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100740178@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __asm { FMOV            V0.2D, #12.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 32) = xmmword_100943320;
  *(a1 + 48) = 0x4018000000000000;
  v16 = 0x404E000000000000;
  v11 = enum case for Font.TextStyle.headline(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for Font.TextStyle.headline(_:), v2);
  v13 = type metadata accessor for SidebarBrickLayoutMetrics();
  sub_10015DD78();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v13[9]) = 0xC008000000000000;
  v16 = 0x4041000000000000;
  v12(v5, v11, v2);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v13[11]) = static Font.body.getter();
  *(a1 + v13[12]) = static Font.headline.getter();
  result = static Font.footnote.getter();
  *(a1 + v13[13]) = result;
  return result;
}

uint64_t type metadata accessor for SidebarBrickLayoutMetrics()
{
  result = qword_100AEFB68;
  if (!qword_100AEFB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074039C()
{
  sub_100740438();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100740438()
{
  if (!qword_100AEFB78)
  {
    sub_10015DD78();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEFB78);
    }
  }
}

uint64_t sub_1007404AC()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v19[-v1];
  v3 = type metadata accessor for Tips.InvalidationReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100ACFF10 != -1)
  {
    swift_once();
  }

  v13 = sub_1000F24EC(&qword_100ADC240);
  sub_10000617C(v13, qword_100B2FAC0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v14 = v19[7];
  swift_endAccess();
  if (v14 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1008B4384(v9);
    sub_1008B4EFC(v9, 0, 0, 0);
    sub_1001616C0(v9);
    sub_1001295EC(v12);
    (*(v4 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v3);
    sub_10009F12C();
    Tip.invalidate(reason:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_100ACF988 != -1)
    {
      swift_once();
    }

    v16 = qword_100B2F3C0;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = &off_100A5ADE8;
    v18[6] = sub_100740998;
    v18[7] = 0;

    sub_1003E9628(0, 0, v2, &unk_100966688, v18);
  }
}

uint64_t sub_10074085C()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Tips.InvalidationReason.actionPerformed(_:), v0, v2);
  sub_10009F12C();
  Tip.invalidate(reason:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100740954@<X0>(uint64_t *a1@<X8>)
{
  sub_10009F12C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10074099C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_100136E24(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100740A70(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for StreakSummary();
  v3[9] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AE6880);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE6860);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE6868);
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AE6870);
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = sub_1000F24EC(&qword_100AEFBE0);
  v3[25] = swift_task_alloc();
  v3[26] = sub_1000F24EC(&qword_100AEFBE8);
  v3[27] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AEFBF0);
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for Publishers.PrefetchStrategy();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AEFBF8);
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v11 = sub_1000F24EC(&qword_100AEFC00);
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v12 = sub_1000F24EC(&qword_100AEFC08);
  v3[40] = v12;
  v3[41] = *(v12 - 8);
  v3[42] = swift_task_alloc();
  v13 = sub_1000F24EC(&qword_100AEFC10);
  v3[43] = v13;
  v3[44] = *(v13 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = sub_1000F24EC(&qword_100AEFC18);
  v3[47] = swift_task_alloc();
  v14 = sub_1000F24EC(&qword_100AEFC20);
  v3[48] = v14;
  v3[49] = *(v14 - 8);
  v3[50] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v3[51] = v15;
  v3[52] = v17;

  return _swift_task_switch(sub_100741060, v15, v17);
}

uint64_t sub_100741060()
{
  sub_10074308C(*(v0 + 376));
  sub_10000B58C(&qword_100AEFC28, &qword_100AEFC18);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 28) = enum case for Publishers.PrefetchStrategy.byRequest(_:);
  *(v0 + 592) = enum case for Publishers.BufferingStrategy.dropOldest<A>(_:);
  *(v0 + 596) = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  sub_10000B58C(&qword_100AEFC30, &qword_100AEFC20);
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_1007411CC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, v2, v3);
}

uint64_t sub_1007411CC()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 408);
    v5 = *(v2 + 416);

    return _swift_task_switch(sub_1007412D8, v4, v5);
  }

  return result;
}

uint64_t sub_1007412D8()
{
  if (*(v0 + 24))
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

    v1 = *(v0 + 8);

    return v1();
  }

  else if (*(v0 + 16) >= 2uLL)
  {
    v17 = *(v0 + 28);
    v18 = *(v0 + 592);
    v24 = *(v0 + 336);
    v27 = *(v0 + 328);
    v25 = *(v0 + 304);
    v26 = *(v0 + 320);
    v23 = *(v0 + 296);
    v6 = *(v0 + 288);
    v22 = *(v0 + 280);
    v7 = *(v0 + 264);
    v19 = *(v0 + 272);
    v20 = *(v0 + 312);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 224);
    sub_100026188();
    v13 = static NSUserDefaults.shared.getter();
    [v13 isJournalingScheduleEnabled];

    v21 = static NSUserDefaults.shared.getter();
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();
    (*(v9 + 104))(v7, v17, v8);
    (*(v11 + 104))(v10, v18, v12);
    sub_10000B58C(&qword_100AEFC38, &qword_100AEFBF8);
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    (*(v22 + 8))(v6, v19);
    sub_10000B58C(&qword_100AEFC40, &qword_100AEFC00);
    Publisher<>.values.getter();

    (*(v25 + 8))(v20, v23);
    AsyncPublisher.makeAsyncIterator()();
    (*(v27 + 8))(v24, v26);
    v14 = sub_10000B58C(&qword_100AEFC48, &qword_100AEFC10);
    v15 = swift_task_alloc();
    *(v0 + 432) = v15;
    *v15 = v0;
    v15[1] = sub_100741810;
    v16 = *(v0 + 344);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 25, v16, v14);
  }

  else
  {
    sub_10000B58C(&qword_100AEFC30, &qword_100AEFC20);
    v3 = swift_task_alloc();
    *(v0 + 424) = v3;
    *v3 = v0;
    v3[1] = sub_1007411CC;
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, v4, v5);
  }
}

uint64_t sub_100741810()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_100741B84;
  }

  else
  {
    v5 = sub_10074194C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10074194C()
{
  v1 = *(v0 + 25);
  if (v1 == 2)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_10000B58C(&qword_100AEFC30, &qword_100AEFC20);
    v2 = swift_task_alloc();
    *(v0 + 424) = v2;
    *v2 = v0;
    v2[1] = sub_1007411CC;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, v3, v4);
  }

  else if (v1)
  {
    *(v0 + 448) = type metadata accessor for MainActor();
    *(v0 + 456) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100741C10, v6, v5);
  }

  else
  {
    v7 = sub_10000B58C(&qword_100AEFC48, &qword_100AEFC10);
    v8 = swift_task_alloc();
    *(v0 + 432) = v8;
    *v8 = v0;
    v8[1] = sub_100741810;
    v9 = *(v0 + 344);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 25, v9, v7);
  }
}

uint64_t sub_100741B84()
{
  *(v0 + 32) = *(v0 + 440);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100741C10()
{

  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return _swift_task_switch(sub_100741CA4, v1, v2);
}

uint64_t sub_100741CA4()
{
  *(v0 + 464) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100741D30, v2, v1);
}

uint64_t sub_100741D30()
{

  v0[59] = qword_100B2FD90;
  v1 = v0[51];
  v2 = v0[52];

  return _swift_task_switch(sub_100741DA0, v1, v2);
}

uint64_t sub_100741DA0()
{
  *(v0 + 480) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100741E2C, v2, v1);
}

uint64_t sub_100741E2C()
{
  v1 = *(v0 + 596);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  *v2 = 1;
  (*(v3 + 104))(v2, v1, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);

  return _swift_task_switch(sub_100741F0C, v5, v6);
}

uint64_t sub_100741F0C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 88);
  v16 = *(v0 + 80);
  sub_10000B58C(&qword_100AEFC50, &qword_100AE6870);
  AsyncSequence.removeDuplicates(by:)();
  (*(v6 + 8))(v5, v7);
  (*(v6 + 16))(v5, v3, v7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = (v3 + *(v4 + 36));
  v10 = *v9;
  *(v0 + 488) = *v9;
  v11 = v9[1];
  *(v0 + 496) = v11;

  sub_100004F84(v3, &qword_100AEFBE0);
  v12 = *(v2 + 40);
  *(v0 + 600) = v12;
  v13 = *(v8 + 56);
  *(v0 + 504) = v13;
  *(v0 + 512) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v1 + v12, 1, 1, v16);
  v14 = (v1 + *(v2 + 36));
  *v14 = v10;
  v14[1] = v11;

  return _swift_task_switch(sub_1007420C0, 0, 0);
}

uint64_t sub_1007420C0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1000082B4(*(v0 + 216) + *(v0 + 600), v1, &qword_100AE6860);
  v4 = *(v3 + 48);
  *(v0 + 520) = v4;
  *(v0 + 528) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 128);
  if (v5 == 1)
  {
    sub_100004F84(v6, &qword_100AE6860);
    v7 = sub_1000F24EC(&qword_100AE6878);
    v8 = sub_10000B58C(&qword_100AEFC58, &qword_100AE6878);
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_1007422DC;
    v10 = *(v0 + 120);
  }

  else
  {
    sub_10074385C(v6, *(v0 + 104));
    v7 = sub_1000F24EC(&qword_100AE6878);
    v8 = sub_10000B58C(&qword_100AEFC58, &qword_100AE6878);
    v11 = swift_task_alloc();
    *(v0 + 552) = v11;
    *v11 = v0;
    v11[1] = sub_1007423F0;
    v10 = *(v0 + 112);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v7, v8);
}

uint64_t sub_1007422DC()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_100742D1C;
  }

  else
  {
    v2 = sub_100742C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007423F0()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1007426C4;
  }

  else
  {
    v2 = sub_100742504;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100742504()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  if ((*(v0 + 520))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 504);
    v4 = *(v0 + 136);
    sub_100004F84(*(v0 + 104), &qword_100AE6880);
    sub_100004F84(v1, &qword_100AE6860);
    v3(v4, 1, 1, v2);
    v5 = *(v0 + 408);
    v6 = *(v0 + 416);

    return _swift_task_switch(sub_100742A4C, v5, v6);
  }

  else
  {
    v7 = *(v0 + 488);
    sub_10074385C(v1, *(v0 + 96));
    v12 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 568) = v8;
    *v8 = v0;
    v8[1] = sub_100742740;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    return v12(v10, v9);
  }
}

uint64_t sub_1007426C4()
{
  sub_100004F84(v0[13], &qword_100AE6880);
  v0[72] = v0[70];
  v1 = v0[51];
  v2 = v0[52];

  return _swift_task_switch(sub_100742BF8, v1, v2);
}

uint64_t sub_100742740(char a1)
{
  *(*v1 + 26) = a1;

  return _swift_task_switch(sub_100742840, 0, 0);
}

uint64_t sub_100742840()
{
  if (*(v0 + 26) == 1)
  {
    sub_100004F84(*(v0 + 96), &qword_100AE6880);
    v1 = sub_1000F24EC(&qword_100AE6878);
    v2 = sub_10000B58C(&qword_100AEFC58, &qword_100AE6878);
    v3 = swift_task_alloc();
    *(v0 + 552) = v3;
    *v3 = v0;
    v3[1] = sub_1007423F0;
    v4 = *(v0 + 112);

    return dispatch thunk of AsyncIteratorProtocol.next()(v4, v1, v2);
  }

  else
  {
    v5 = *(v0 + 504);
    v6 = *(v0 + 600);
    v7 = *(v0 + 216);
    v8 = *(v0 + 136);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    sub_100004F84(*(v0 + 104), &qword_100AE6880);
    sub_100004F84(v7 + v6, &qword_100AE6860);
    sub_1000082B4(v9, v7 + v6, &qword_100AE6880);
    v5(v7 + v6, 0, 1, v10);
    sub_10074385C(v9, v8);
    v5(v8, 0, 1, v10);
    v11 = *(v0 + 408);
    v12 = *(v0 + 416);

    return _swift_task_switch(sub_100742A4C, v11, v12);
  }
}

uint64_t sub_100742A4C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  if ((*(v0 + 520))(v1, 1, v2) == 1)
  {
    sub_100004F84(*(v0 + 216), &qword_100AEFBE8);
    v3 = sub_10000B58C(&qword_100AEFC48, &qword_100AEFC10);
    v4 = swift_task_alloc();
    *(v0 + 432) = v4;
    *v4 = v0;
    v4[1] = sub_100741810;
    v5 = *(v0 + 344);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 25, v5, v3);
  }

  else
  {
    v6 = *v1;
    sub_1003D86F0(&v1[*(v2 + 48)], *(v0 + 72));
    v7 = swift_task_alloc();
    *(v0 + 584) = v7;
    *v7 = v0;
    v7[1] = sub_100742D3C;
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);

    return sub_1003C2990(v10, v9, v8, v6);
  }
}

uint64_t sub_100742BF8()
{
  *(v0 + 40) = *(v0 + 576);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100742C84()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 216);
  v3 = *(v0 + 136);
  sub_1007437EC(*(v0 + 120), v2 + v1);
  sub_1000082B4(v2 + v1, v3, &qword_100AE6860);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);

  return _swift_task_switch(sub_100742A4C, v4, v5);
}

uint64_t sub_100742D3C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1007439D4;
  }

  else
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_100742E60;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100742E60()
{
  sub_100041CB8(*(v0 + 72));

  return _swift_task_switch(sub_1007420C0, 0, 0);
}

BOOL sub_100742EC8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_1000F24EC(&qword_100AE6880);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = a3 & 1;
  if (a3)
  {
    v15 = 0x796C6B656577;
  }

  else
  {
    v15 = 0x796C696164;
  }

  if (a3)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  *v13 = a1 & 1;
  v17 = *(v8 + 56);
  if (a1)
  {
    v18 = 0x796C6B656577;
  }

  else
  {
    v18 = 0x796C696164;
  }

  if (a1)
  {
    v19 = 0xE600000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  sub_100041C54(a2, &v13[v17]);
  *v10 = v14;
  v20 = *(v8 + 56);
  sub_100041C54(v25, &v10[v20]);
  if (v18 == v15 && v19 == v16)
  {

LABEL_17:
    v22 = sub_100889658(&v13[v17], &v10[v20]);
    goto LABEL_18;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v22 = 0;
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_100004F84(v10, &qword_100AE6880);
  sub_100004F84(v13, &qword_100AE6880);
  return v22;
}

uint64_t sub_10074308C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v12[0] = a1;
  v3 = sub_1000F24EC(&qword_100AEFC60);
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AE7020);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = [objc_opt_self() defaultCenter];
  v9 = NSNotificationCenter.notifications(named:object:)();

  v12[1] = v9;
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_1007438CC();
  AsyncMapSequence.init(_:transform:)();
  sub_1000F24EC(&qword_100AD5BA0);
  sub_10000B58C(&qword_100AEFC68, &qword_100AE7020);
  sub_10000B58C(&qword_100AD5BA8, &qword_100AD5BA0);
  merge<A, B>(_:_:)();
  *(swift_allocObject() + 16) = v2;
  type metadata accessor for UNAuthorizationStatus(0);
  sub_10000B58C(&qword_100AEFC70, &qword_100AEFC60);
  v10 = v2;
  AsyncMapSequence.init(_:transform:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100743378(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1000F24EC(&qword_100AE6880);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100743424, 0, 0);
}

uint64_t sub_100743424()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_1000082B4(v0[2], v2, &qword_100AE6880);
  v5 = *v2;
  v6 = *(v4 + 48);
  sub_1000082B4(v3, v1, &qword_100AE6880);
  v7 = *(v4 + 48);
  v8 = sub_100742EC8(v5, &v2[v6], *v1, &v1[v7]);
  sub_100041CB8(&v1[v7]);
  sub_100041CB8(&v2[v6]);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10074351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_10074353C, 0, 0);
}

uint64_t sub_10074353C()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100743664;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD9C90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004A75BC;
  v0[13] = &unk_100A7B828;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100743664()
{

  return _swift_task_switch(sub_100743744, 0, 0);
}

uint64_t sub_100743768()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = [v1 authorizationStatus];

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1007437EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE6860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074385C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE6880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007438CC()
{
  result = qword_100AE7028;
  if (!qword_100AE7028)
  {
    type metadata accessor for NSNotificationCenter.Notifications();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7028);
  }

  return result;
}

uint64_t sub_100743924(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_10074351C(a1, a2, v6);
}

uint64_t sub_1007439D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&qword_100AD8440);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for ContactAssetMetadata();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[14] = v8;
  v4[15] = v10;

  return _swift_task_switch(sub_100743B70, v8, v10);
}

uint64_t sub_100743B70()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[16] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = swift_allocObject();
    v0[17] = v5;
    swift_unknownObjectWeakInit();
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v1;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_100743EA0;
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v9, sub_100744C10, v5, v8);
  }

  else
  {
    (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_1007449E4(v12);
      sub_1004D12DC();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();

      v14 = v0[1];

      return v14();
    }

    else
    {
      (*(v11 + 32))(v0[13], v12, v10);
      v15 = ContactAssetMetadata.name.getter();
      sub_10031BCE4(v15, v16, 0xD000000000000029, 0x80000001008EACB0, 0, 0);
      v18 = v17;

      v0[19] = v18;
      v19 = swift_task_alloc();
      v0[20] = v19;
      *v19 = v0;
      v19[1] = sub_1004D0AF0;
      v20 = v0[4];
      v22 = v0[2];
      v21 = v0[3];

      return sub_100847498(v22, v21, v20, 0, 0, 0, 0, 0);
    }
  }
}

uint64_t sub_100743EA0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_100743FF4, v5, v6);
  }
}

uint64_t sub_100743FF4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1007449E4(v3);
    sub_1004D12DC();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v7 = ContactAssetMetadata.name.getter();
    sub_10031BCE4(v7, v8, 0xD000000000000029, 0x80000001008EACB0, 0, 0);
    v10 = v9;

    v0[19] = v10;
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1004D0AF0;
    v12 = v0[4];
    v14 = v0[2];
    v13 = v0[3];

    return sub_100847498(v14, v13, v12, 0, 0, 0, 0, 0);
  }
}

uint64_t sub_1007441E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_1007439D8(a1, a2, a3);
}

double sub_100744290@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8440);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for ContactAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata))
  {

    sub_10025D81C(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = ContactAssetMetadata.name.getter();
      v13 = v12;
      *(a1 + 24) = _s6ResultVMa_10();
      *(a1 + 32) = sub_100744DB4(&qword_100AEFC80, _s6ResultVMa_10);
      *(a1 + 40) = sub_100744DB4(&qword_100AEFC88, _s6ResultVMa_10);
      v14 = sub_10001A770(a1);
      ContactAssetMetadata.startTime.getter();
      (*(v7 + 8))(v10, v6);
      *v14 = v11;
      v14[1] = v13;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_1007449E4(v5);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_1007444F8(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AEFD30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100744CA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    _s6ResultVMa_10();
    v8[14] = 1;
    type metadata accessor for Date();
    sub_100744DB4(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007446B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000F24EC(&qword_100AEFD20);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = _s6ResultVMa_10();
  __chkstk_darwin(v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_100744CA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v18 = v10;
  v13 = v20;
  v23 = 0;
  v14 = v12;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  type metadata accessor for Date();
  v22 = 1;
  sub_100744DB4(&qword_100AE4998, &type metadata accessor for Date);
  v16 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v16);
  sub_1001679C0(v6, v14 + *(v18 + 20));
  sub_100744CF4(v14, v19);
  sub_10000BA7C(a1);
  return sub_100744D58(v14);
}

uint64_t sub_10074498C(uint64_t a1)
{
  result = sub_100744DB4(&qword_100AEFC78, type metadata accessor for ContactAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007449E4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD8440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100744A4C()
{
  if (*v0)
  {
    return 0x6D69547472617473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_100744A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
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

uint64_t sub_100744B68(uint64_t a1)
{
  v2 = sub_100744CA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100744BA4(uint64_t a1)
{
  v2 = sub_100744CA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s6ResultVMa_10()
{
  result = qword_100AEFCE8;
  if (!qword_100AEFCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100744CA0()
{
  result = qword_100AEFD28;
  if (!qword_100AEFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD28);
  }

  return result;
}

uint64_t sub_100744CF4(uint64_t a1, uint64_t a2)
{
  v4 = _s6ResultVMa_10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100744D58(uint64_t a1)
{
  v2 = _s6ResultVMa_10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100744DB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100744E10()
{
  result = qword_100AEFD38;
  if (!qword_100AEFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD38);
  }

  return result;
}

unint64_t sub_100744E68()
{
  result = qword_100AEFD40;
  if (!qword_100AEFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD40);
  }

  return result;
}

unint64_t sub_100744EC0()
{
  result = qword_100AEFD48;
  if (!qword_100AEFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFD48);
  }

  return result;
}

void *sub_100744F14()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100744F44()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD8440);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for ContactAssetMetadata();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v1 addSubview:{*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView), v7}];
  v11 = *(v1 + v10);
  sub_100013178(0.0);

  v12 = *(v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_bgView);
  [v1 addSubview:v12];
  v13 = *(v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);
  [v12 addSubview:v13];
  v14 = *(v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel);
  [v12 addSubview:v14];
  [v12 setContentMode:2];
  v15 = default argument 0 of UIView.applyBlurEffectToBackground(style:)();

  sub_100013178(0.0);

  LODWORD(v16) = 1144750080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1132068864;
  [v13 setContentCompressionResistancePriority:1 forAxis:v17];
  [v13 setAlpha:0.0];
  [v13 setContentMode:1];
  [v13 setIsAccessibilityElement:1];
  v18 = UIAccessibilityTraitImage;
  v19 = [v13 accessibilityTraits];
  if ((v18 & ~v19) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  [v13 setAccessibilityTraits:v20 | v19];
  [v13 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD07F8 != -1)
  {
    swift_once();
  }

  v21 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityLabel:v21];

  v22 = *(v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
  if (!v22)
  {
    v24 = 0;
    goto LABEL_14;
  }

  if (!*&v22[OBJC_IVAR____TtC7Journal12ContactAsset_metadata])
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_12;
  }

  v23 = v22;

  sub_10025D81C(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

LABEL_12:
    sub_100004F84(v4, &qword_100AD8440);
    v24 = 0;
    goto LABEL_14;
  }

  (*(v6 + 32))(v9, v4, v5);
  ContactAssetMetadata.name.getter();

  (*(v6 + 8))(v9, v5);
  v24 = String._bridgeToObjectiveC()();

LABEL_14:
  [v13 setAccessibilityValue:v24];

  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  [v14 setFont:qword_100B303E8];
  v25 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor:v25];

  [v14 setBaselineAdjustment:0];
  [v14 setAdjustsFontForContentSizeCategory:1];
  v26 = [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  return (*((swift_isaMask & *v1) + 0x100))(v26);
}

void sub_100745474()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD8440);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
  if (v5)
  {
    v6 = v5;
    sub_1006AC354(v4);
    v7 = type metadata accessor for ContactAssetMetadata();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_100004F84(v4, &qword_100AD8440);
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v9 = ContactAssetMetadata.name.getter();
      v10 = v11;
      (*(v8 + 8))(v4, v7);
    }

    v12 = (v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactName);
    *v12 = v9;
    v12[1] = v10;

    v13 = *(v1 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel);
    if (*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) == 6)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    sub_1005765B4();
    v16 = v15;

    if (!v16)
    {
      v17 = 0;
LABEL_12:
      [v13 setText:v17];

      return;
    }

LABEL_11:
    v17 = String._bridgeToObjectiveC()();

    goto LABEL_12;
  }
}

uint64_t sub_100745770()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
  if (v9)
  {
    v23 = v9;
    Date.init()();
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v12 = &qword_100B2F628;
LABEL_11:
        v13 = *v12;
        v14 = *(v0 + v10);
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v2 + 16))(v5, v8, v1);
        v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v2 + 32))(v17 + v16, v5, v1);
        v18 = objc_opt_self();
        v19 = v13;

        v20 = [v18 currentTraitCollection];
        v21 = v23;
        sub_100076220(v14, 0, 1, v19, v20, sub_100746DC4, v17);

        (*(v2 + 8))(v8, v1);
      }
    }

    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v12 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100745B2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEFD50);
  v1 = sub_10000617C(v0, qword_100AEFD50);
  if (qword_100AD0218 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100745BF4()
{
  sub_100745770();
  sub_100745474();
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v4 = *&v1[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v3 = sub_100746DBC;
    v3[1] = v2;
    v5 = v1;

    sub_100004DF8(v4);
  }
}

void sub_100745CC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100745770();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100745474();
  }
}

id sub_100745D40(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC7Journal16ContactAssetView_contactName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC7Journal16ContactAssetView_bgView;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ContactAssetView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100744F44();

  return v13;
}

id sub_100745E70(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC7Journal16ContactAssetView_contactName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC7Journal16ContactAssetView_bgView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ContactAssetView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100744F44();
  }

  return v8;
}

uint64_t sub_100745F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v23 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v22, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_100746E38;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7B9A8;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

void sub_100746338(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v51 = v9;
      v52 = a3;
      v50 = v11;
      v53 = v6;
      v19 = *&Strong[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
      v20 = Strong;
      v21 = a2;
      v22 = v20;
      v23 = 1;
      [v19 setHidden:1];
      v24 = OBJC_IVAR____TtC7Journal16ContactAssetView_bgView;
      [*&v22[OBJC_IVAR____TtC7Journal16ContactAssetView_bgView] setHidden:0];
      v25 = OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView;
      v26 = *&v22[OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView];
      v27 = v21;
      [v26 setImage:v27];
      v28 = *&v22[v24];
      [v28 setImage:v27];

      [*&v22[v25] setContentMode:1];
      [*&v22[v25] setClipsToBounds:1];
      [*&v22[v25] setAccessibilityIgnoresInvertColors:1];
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if (v22[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
      {
        if (v22[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u)
        {
          v30 = v53;
          if (v22[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
          {
LABEL_18:

            (*(v30 + 16))(v17, v52, v5);
            (*(v30 + 56))(v17, 0, 1, v5);
            if (v23)
            {
              goto LABEL_19;
            }

            sub_100088AC8(v17, v15);
            if ((*(v30 + 48))(v15, 1, v5) == 1)
            {
              sub_100004F84(v15, &unk_100AD4790);
            }

            else
            {
              v43 = v50;
              (*(v30 + 32))(v50, v15, v5);
              v44 = v51;
              static Date.now.getter();
              Date.timeIntervalSince(_:)();
              v46 = v45;
              v47 = *(v30 + 8);
              v47(v44, v5);
              v47(v43, v5);
              if (v46 < 0.1)
              {
LABEL_19:
                swift_beginAccess();
                v39 = swift_unknownObjectWeakLoadStrong();
                if (v39)
                {
                  v40 = v27;
                  v41 = v39;
                  v42 = *(v39 + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);

                  [v42 setAlpha:1.0];
                }

                else
                {
                }

                goto LABEL_26;
              }
            }

            v48 = objc_opt_self();
            aBlock[4] = sub_100746E9C;
            aBlock[5] = v29;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006C7C;
            aBlock[3] = &unk_100A7B9D0;
            v49 = _Block_copy(aBlock);

            [v48 animateWithDuration:0x10000 delay:v49 options:0 animations:0.1 completion:0.0];

            _Block_release(v49);

LABEL_26:
            sub_100004F84(v17, &unk_100AD4790);

LABEL_27:
            v22[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;

            return;
          }
        }

        else
        {
          v30 = v53;
        }
      }

      else
      {
        v30 = v53;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_18;
    }
  }

  if (qword_100AD02D0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000617C(v31, qword_100AEFD50);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "%@.getImage returned nil", v34, 0xCu);
    sub_100004F84(v35, &unk_100AD4BB0);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    [*(v37 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:0];
    [*&v38[OBJC_IVAR____TtC7Journal16ContactAssetView_bgView] setHidden:1];
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    goto LABEL_27;
  }
}

void sub_100746B48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView);

    [v2 setAlpha:1.0];
  }
}

uint64_t sub_100746BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(6, v3);

  return sub_100745770();
}

void sub_100746C70()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset);
}

id sub_100746CE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100746DC4(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100745F8C(a1, v4, v5);
}

void sub_100746E38()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100746338(v2, v3, v4);
}

uint64_t _s14HostControllerCMa()
{
  result = qword_100AEFDB8;
  if (!qword_100AEFDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100746F38@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.managedObjectContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100746F90()
{
  _s14HostControllerCMa();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100746FD0(char a1)
{
  v12[0] = a1;
  v13 = 0u;
  v14 = 0u;
  v1 = UIHostingController.init(rootView:)();
  v2 = [v1 navigationItem];
  [v2 setLargeTitleDisplayMode:1];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  v6 = *(v5 + 8);
  *(v5 + 8) = sub_100747E4C;
  *(v5 + 16) = v3;
  sub_100004DF8(v6);
  v4(v12, 0);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = dispatch thunk of UIHostingController.rootView.modify();
  v10 = *(v9 + 24);
  *(v9 + 24) = sub_100747E54;
  *(v9 + 32) = v7;
  sub_100004DF8(v10);
  v8(v12, 0);

  return v1;
}

void sub_100747148(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100747874(a1);
  }
}

void sub_1007471A4(void **a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100747E5C(*a1);
  }
}

void sub_100747204(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = _s14HostControllerCMa();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewIsAppearing:", a3);
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setToolbarHidden:1 animated:a3];
  }
}

void sub_1007472A0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = _s14HostControllerCMa();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewWillLayoutSubviews");
  sub_10023DCC0();
}

id sub_1007472FC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for SettingsKey();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsightsView();
  __chkstk_darwin(v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 3);
  v10 = swift_allocObject();
  v11 = *(v1 + 1);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 4);
  v12 = swift_allocObject();
  v13 = *(v1 + 1);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 4);
  *v6 = v7;
  *(v6 + 1) = sub_100747C80;
  *(v6 + 2) = v10;
  *(v6 + 3) = sub_100747CB0;
  *(v6 + 4) = v12;
  *(v6 + 5) = 0x4020000000000000;
  v42 = 0;
  v43 = 1;
  sub_100021E80(v8);
  sub_100021E80(v9);
  sub_100021E80(v8);
  sub_100021E80(v9);
  sub_1000F24EC(&qword_100AE6908);
  State.init(wrappedValue:)();
  v14 = v45;
  v15 = v46;
  *(v6 + 6) = v44;
  v6[56] = v14;
  *(v6 + 8) = v15;
  type metadata accessor for InsightsDataManager(0);
  sub_100040858(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  *(v6 + 9) = Environment.init<A>(_:)();
  v6[80] = v16 & 1;
  KeyPath = swift_getKeyPath();
  LOBYTE(v42) = 0;
  *(v6 + 11) = KeyPath;
  v6[192] = 0;
  v18 = v4[11];
  *&v6[v18] = swift_getKeyPath();
  v36[1] = sub_1000F24EC(&qword_100AE27B0);
  swift_storeEnumTagMultiPayload();
  v36[0] = v4[12];
  v19 = v37;
  v20 = v38;
  v21 = v39;
  (*(v38 + 104))(v37, enum case for SettingsKey.isStreakReminderEnabled(_:), v39);
  SettingsKey.rawValue.getter();
  (*(v20 + 8))(v19, v21);
  sub_1000065A8(0, &qword_100AE1A30);
  static NSUserDefaults.shared.getter();
  *&v6[v36[0]] = AppStorage.init<A>(wrappedValue:_:store:)();
  v22 = &v6[v4[13]];
  *v22 = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27A0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for InsightsTipViewModel();
  v24 = v22 + v23[5];
  *v24 = Environment.init<A>(_:)();
  v24[8] = v25 & 1;
  v26 = v23[6];
  *(v22 + v26) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v22 + v23[7]) = 0;
  v27 = v22 + v23[8];
  v41 = 0;
  State.init(wrappedValue:)();
  v28 = v45;
  *v27 = v44;
  *(v27 + 1) = v28;
  v29 = (v22 + v23[9]);
  *v29 = 0u;
  v29[1] = 0u;
  v30 = (v22 + v23[10]);
  *v30 = 0u;
  v30[1] = 0u;
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  sub_100040858(&qword_100AEFE08, type metadata accessor for InsightsView);
  v31 = v40;
  View.environment<A>(_:)();
  sub_100747DF0(v6);
  v32 = swift_getKeyPath();
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v39 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v33 = (v31 + *(sub_1000F24EC(&qword_100AEFE10) + 36));
  v34 = v39;
  *v33 = v32;
  v33[1] = v34;

  return v34;
}

void sub_100747874(uint64_t a1)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 navigationController];
  if (!v7)
  {
    return;
  }

  v21 = v7;
  v8 = [v7 viewControllers];
  sub_1000065A8(0, &qword_100AD4C80);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_4:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
          goto LABEL_9;
        }

        __break(1u);
        return;
      }

      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
      v14 = v13;

      v15 = v1;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        (*(v4 + 16))(v6, a1, v3);
        v17 = objc_allocWithZone(type metadata accessor for InsightsCalendarDetailViewController());
        v18 = sub_100137980(v6);
        [v21 pushViewController:v18 animated:1];
      }

      else
      {
        v19 = v21;
      }

      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }
}

id sub_100747AFC()
{
  v2.receiver = v0;
  v2.super_class = _s14HostControllerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100747B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100747BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100747C80()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100747CB0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100747D28(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._openSensitiveURL.setter();
}

uint64_t sub_100747DF0(uint64_t a1)
{
  v2 = type metadata accessor for InsightsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100747E5C(void *a1)
{
  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v15 = v3;
  v4 = [v3 viewControllers];
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
LABEL_4:
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (v7)
      {
        __break(1u);
      }

      else if ((v5 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v5 + 8 * v8 + 32);
          goto LABEL_9;
        }

        __break(1u);
        return;
      }

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
      v10 = v9;

      v11 = v1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v13 = objc_allocWithZone(_s14HostControllerCMa_0());
        State.init(wrappedValue:)();
        sub_10025A7B0(a1);

        v14 = UIHostingController.init(rootView:)();
        [v15 pushViewController:v14 animated:1];
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }
  }
}

unint64_t sub_100748078()
{
  result = qword_100AEFE18;
  if (!qword_100AEFE18)
  {
    sub_1000F2A18(&qword_100AEFE10);
    type metadata accessor for InsightsView();
    type metadata accessor for InsightsDataManager(255);
    sub_100040858(&qword_100AEFE08, type metadata accessor for InsightsView);
    sub_100040858(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    swift_getOpaqueTypeConformance2();
    sub_10069A144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFE18);
  }

  return result;
}

uint64_t sub_1007481BC()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v55 = *(v0 - 8);
  __chkstk_darwin(v0);
  v53 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Date.FormatStyle.DateStyle();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v50);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v56 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v42 - v14;
  v15 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for MotionActivityAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AD0D4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_100AD8740;
    v23 = v17;
LABEL_8:
    sub_100004F84(v23, v22);
    return 0;
  }

  v48 = v0;
  (*(v19 + 32))(v21, v17, v18);
  v24 = v18;
  MotionActivityAssetMetadata.startTime.getter();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    (*(v19 + 8))(v21, v24);
LABEL_7:
    v22 = &unk_100AD4790;
    v23 = v8;
    goto LABEL_8;
  }

  v46 = v12;
  v47 = v24;
  v26 = v57;
  v45 = *(v10 + 32);
  v45(v57, v8, v9);
  v8 = v56;
  MotionActivityAssetMetadata.endTime.getter();
  if (v25(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v26, v9);
    (*(v19 + 8))(v21, v47);
    goto LABEL_7;
  }

  v43 = v10;
  v28 = v46;
  v45(v46, v8, v9);
  v56 = v9;
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v44 = *(&xmmword_100B305A0 + 1);
  v45 = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100940050;
  v30 = v49;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v30);
  v31 = v58;
  v32 = v59;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100031B20();
  *(v29 + 64) = v33;
  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v34 = v51;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v35 = v53;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v36 = Date.formatted(date:time:)();
  v38 = v37;
  (*(v55 + 8))(v35, v48);
  (*(v52 + 8))(v34, v54);
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v33;
  *(v29 + 72) = v36;
  *(v29 + 80) = v38;
  v39 = static String.localizedStringWithFormat(_:_:)();

  v40 = *(v43 + 8);
  v41 = v56;
  v40(v28, v56);
  v40(v57, v41);
  (*(v19 + 8))(v21, v47);
  return v39;
}

void *sub_1007488A8()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Date.FormatStyle.DateStyle();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v55);
  v54 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v50 - v9;
  v11 = type metadata accessor for Date();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v56 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v50 - v14;
  v16 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v16 - 8);
  v18 = v50 - v17;
  v19 = type metadata accessor for WorkoutIconAssetMetadata();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006ACE94(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100004F84(v18, &qword_100AE4280);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  v23 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  if ((v24 & 1) == 0 && v23 != 1)
  {
LABEL_10:
    started = WorkoutIconAssetMetadata.groupWorkoutStartDates.getter();
    if (started)
    {
      v32 = started;
      v33 = WorkoutIconAssetMetadata.groupWorkoutEndDates.getter();
      if (v33)
      {
        v34 = sub_1004932CC(v32, v33, 0);

        (*(v20 + 8))(v22, v19);
        return v34;
      }

      (*(v20 + 8))(v22, v19);
    }

    else
    {
      (*(v20 + 8))(v22, v19);
    }

    return 0;
  }

  v52 = v0;
  v53 = v15;
  v51 = v1;
  WorkoutIconAssetMetadata.startTime.getter();
  v26 = v61;
  v25 = v62;
  v27 = *(v61 + 48);
  if (v27(v10, 1, v62) == 1)
  {
    v7 = v10;
LABEL_9:
    sub_100004F84(v7, &unk_100AD4790);
    goto LABEL_10;
  }

  v28 = v10;
  v29 = *(v26 + 32);
  (v29)(v53, v28, v25);
  WorkoutIconAssetMetadata.endTime.getter();
  v30 = v62;
  if (v27(v7, 1, v62) == 1)
  {
    (*(v26 + 8))(v53, v30);
    goto LABEL_9;
  }

  v36 = v56;
  v29();
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v50[0] = *(&xmmword_100B305A0 + 1);
  v50[1] = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100940050;
  v38 = v54;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v38);
  v39 = v63;
  v40 = v64;
  *(v37 + 56) = &type metadata for String;
  v41 = sub_100031B20();
  *(v37 + 64) = v41;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  v42 = v57;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v43 = v59;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v44 = Date.formatted(date:time:)();
  v46 = v45;
  (*(v51 + 8))(v43, v52);
  (*(v58 + 8))(v42, v60);
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = v41;
  *(v37 + 72) = v44;
  *(v37 + 80) = v46;
  v47 = static String.localizedStringWithFormat(_:_:)();

  v48 = v62;
  v49 = *(v61 + 8);
  v49(v36, v62);
  v49(v53, v48);
  (*(v20 + 8))(v22, v19);
  return v47;
}

uint64_t sub_100749020@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_100004F84(v12, &qword_100AD13D0);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100749180(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 16);
  sub_100088AC8(a1, &v12 - v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setValue:isa forKey:v10];
  swift_unknownObjectRelease();

  return sub_100004F84(a1, &unk_100AD4790);
}

uint64_t sub_1007492F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for Date();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_100004F84(v12, &qword_100AD13D0);
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100749458(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 16);
  sub_100088AC8(a1, &v12 - v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setValue:isa forKey:v10];
  swift_unknownObjectRelease();

  return sub_100004F84(a1, &unk_100AD4790);
}

uint64_t sub_1007495D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000F24EC(&unk_100AD4790);
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1007496A0, v7, v6);
}

uint64_t sub_1007496A0()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100749754;

  return sub_10074998C(v1, &protocol witness table for MainActor);
}

uint64_t sub_100749754(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1007498A0, v4, v3);
}

uint64_t sub_1007498A0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  if (v1 == 1 && v2 != 0)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 24);
    static AppStore.requestReview(in:)();
    static Date.now.getter();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    sub_100749458(v4);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10074998C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_100749A20, v4, v6);
}

uint64_t sub_100749A20()
{
  v1 = *(v0[4] + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
LABEL_11:
    v10 = v0[1];

    return v10(v3);
  }

  if (!sub_100749E84())
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = "isFirstLaunchMoreThanAWeekAgo returned false";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  v4 = sub_1000880C0();
  if (!v4 || (v5 = *(v4 + 16), , v5 < 6))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = "isAppLaunchCountSatisfied returned false";
LABEL_9:
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, v8, v9, 2u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!sub_10074A37C())
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_10;
    }

    v8 = "didNotRequestRecently returned false";
    goto LABEL_9;
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_100749C74;
  v13 = v0[3];
  v14 = v0[2];

  return sub_10074A874(v14, v13);
}

uint64_t sub_100749C74(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_100749D9C, v4, v3);
}

uint64_t sub_100749D9C()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "isNumEntriesSatisfied returned false", v4, 2u);
    }
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

BOOL sub_100749E84()
{
  v57 = type metadata accessor for Calendar.Component();
  v0 = *(v57 - 8);
  __chkstk_darwin(v57);
  v2 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v46 - v16;
  __chkstk_darwin(v17);
  v58 = &v46 - v18;
  sub_100749020(v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
LABEL_5:
    sub_100004F84(v20, &unk_100AD4790);
    return 0;
  }

  v49 = *(v12 + 32);
  v50 = v12 + 32;
  v49(v58, v10, v11);
  static Date.now.getter();
  v52 = v19;
  v21 = v56;
  static Calendar.current.getter();
  v22 = *(v0 + 104);
  v55 = v4;
  v23 = v3;
  v24 = v57;
  v47 = v22;
  v48 = v0 + 104;
  v22(v2, enum case for Calendar.Component.weekOfYear(_:), v57);
  v25 = v11;
  v26 = v12;
  v27 = v59;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v28 = *(v0 + 8);
  v51 = v2;
  v29 = v2;
  v30 = v23;
  v31 = v55;
  v46 = v28;
  v28(v29, v24);
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  (v34)(v21, v30);
  v35 = *(v26 + 8);
  v53 = v26 + 8;
  v35(v14, v25);
  v36 = v25;
  if (v52(v27, 1, v25) == 1)
  {
    v35(v58, v25);
    v20 = v59;
    goto LABEL_5;
  }

  v38 = v54;
  v49(v54, v59, v36);
  v59 = v33;
  v39 = v56;
  static Calendar.current.getter();
  v55 = v32;
  v40 = v51;
  v41 = v57;
  v47(v51, enum case for Calendar.Component.day(_:), v57);
  v42 = v58;
  v43 = v30;
  v44 = v35;
  v45 = Calendar.compare(_:to:toGranularity:)();
  v46(v40, v41);
  (v59)(v39, v43);
  v44(v38, v36);
  v44(v42, v36);
  return (v45 + 1) < 2;
}

BOOL sub_10074A37C()
{
  v57 = type metadata accessor for Calendar.Component();
  v0 = *(v57 - 8);
  __chkstk_darwin(v57);
  v2 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v46 - v16;
  __chkstk_darwin(v17);
  v58 = &v46 - v18;
  sub_1007492F8(v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
LABEL_5:
    sub_100004F84(v20, &unk_100AD4790);
    return 1;
  }

  v49 = *(v12 + 32);
  v50 = v12 + 32;
  v49(v58, v10, v11);
  static Date.now.getter();
  v52 = v19;
  v21 = v56;
  static Calendar.current.getter();
  v22 = *(v0 + 104);
  v55 = v4;
  v23 = v3;
  v24 = v57;
  v47 = v22;
  v48 = v0 + 104;
  v22(v2, enum case for Calendar.Component.month(_:), v57);
  v25 = v11;
  v26 = v12;
  v27 = v59;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v28 = *(v0 + 8);
  v51 = v2;
  v29 = v2;
  v30 = v23;
  v31 = v55;
  v46 = v28;
  v28(v29, v24);
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  (v34)(v21, v30);
  v35 = *(v26 + 8);
  v53 = v26 + 8;
  v35(v14, v25);
  v36 = v25;
  if (v52(v27, 1, v25) == 1)
  {
    v35(v58, v25);
    v20 = v59;
    goto LABEL_5;
  }

  v38 = v54;
  v49(v54, v59, v36);
  v59 = v33;
  v39 = v56;
  static Calendar.current.getter();
  v55 = v32;
  v40 = v51;
  v41 = v57;
  v47(v51, enum case for Calendar.Component.day(_:), v57);
  v42 = v58;
  v43 = v30;
  v44 = v35;
  v45 = Calendar.compare(_:to:toGranularity:)();
  v46(v40, v41);
  (v59)(v39, v43);
  v44(v38, v36);
  v44(v42, v36);
  return (v45 + 1) < 2;
}

uint64_t sub_10074A874(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&unk_100AD4790);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[7] = v5;
  v3[8] = v7;

  return _swift_task_switch(sub_10074A95C, v5, v7);
}

uint64_t sub_10074A95C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v5(v1, 1, 1, v4);
  v6 = *(v3 + 24);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_10074AA78;
  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[2];
  v10 = v0[3];

  return static JournalDataUtilities.getValidEntriesCount(from:to:context:)(v11, v10, v8, v9, v6);
}

uint64_t sub_10074AA78(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {

    sub_100004F84(v7, &unk_100AD4790);
    sub_100004F84(v6, &unk_100AD4790);
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_10074ACA8;
  }

  else
  {
    v5[10] = a1;
    sub_100004F84(v7, &unk_100AD4790);
    sub_100004F84(v6, &unk_100AD4790);
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_10074AC30;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10074AC30()
{
  v1 = *(v0 + 80) > 9;

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10074ACA8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10074AD14()
{
  v1 = OBJC_IVAR____TtC7Journal21AppStoreRatingManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10074ADC8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

char *sub_10074AEBC()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v9[0] = v0[6];
  *(v9 + 9) = *(v0 + 105);
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = v0[3];
  v8[2] = v0[2];
  v8[3] = v3;
  v4 = objc_allocWithZone(type metadata accessor for TextFieldContentView());
  sub_1005A59AC(v8, &v7);
  v5 = sub_10074B45C(v8);
  sub_10074C650();
  return v5;
}

uint64_t sub_10074AF40@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 105);
  v5 = *(v16 + 9);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_1005A59AC(v11, &v10);
}

void (*sub_10074AFAC(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x280uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 632) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  *(v3 + 32) = v5[2];
  *(v3 + 48) = v8;
  *v3 = v6;
  *(v3 + 16) = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[6];
  *(v3 + 105) = *(v5 + 105);
  *(v3 + 80) = v10;
  *(v3 + 96) = v11;
  *(v3 + 64) = v9;
  *(v3 + 536) = &type metadata for TextFieldContentConfiguration;
  *(v3 + 544) = sub_1005A5A64();
  v12 = swift_allocObject();
  *(v4 + 512) = v12;
  v13 = v5[1];
  v12[1] = *v5;
  v12[2] = v13;
  v14 = v5[3];
  v12[3] = v5[2];
  v12[4] = v14;
  v15 = v5[5];
  v12[5] = v5[4];
  v12[6] = v15;
  v12[7] = v5[6];
  *(v12 + 121) = *(v5 + 105);
  sub_1005A59AC(v4, v4 + 384);
  return sub_10074B0B0;
}

void sub_10074B0B0(_OWORD **a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 24;
  sub_100086C04((*a1 + 32), *a1 + 552);
  if (a2)
  {
    sub_100086C04(v3 + 552, (v3 + 37));
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v5 = v4[5];
      v3[12] = v4[4];
      v3[13] = v5;
      v3[14] = v4[6];
      *(v3 + 233) = *(v4 + 105);
      v6 = v4[1];
      v3[8] = *v4;
      v3[9] = v6;
      v7 = v4[3];
      v3[10] = v4[2];
      v3[11] = v7;
      sub_10074B208((v3 + 8));
      sub_1005A5A08((v3 + 8));
    }

    sub_10000BA7C(v3 + 552);
  }

  else
  {
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v8 = v4[5];
      v3[20] = v4[4];
      v3[21] = v8;
      v3[22] = v4[6];
      *(v3 + 361) = *(v4 + 105);
      v9 = v4[1];
      v3[16] = *v4;
      v3[17] = v9;
      v10 = v4[3];
      v3[18] = v4[2];
      v3[19] = v10;
      sub_10074B208((v3 + 16));
      sub_1005A5A08((v3 + 16));
    }
  }

  sub_10000BA7C((v3 + 32));

  free(v3);
}

uint64_t sub_10074B208(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_textField);
  if (*(a1 + 40))
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText:v4];

  v5 = [objc_opt_self() labelColor];
  [v3 setTextColor:v5];

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    [v3 setPlaceholder:v7];
  }

  if (*(a1 + 24))
  {
    if (*(a1 + 72))
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v3 setClearButtonMode:*(a1 + 16)];
    if (*(a1 + 72))
    {
LABEL_8:
      if (*(a1 + 88))
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  [v3 setTextAlignment:*(a1 + 64)];
  if (*(a1 + 88))
  {
LABEL_9:
    if (!*(a1 + 96))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  [*(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldHeightConstraint) setConstant:*(a1 + 80)];
  if (*(a1 + 96))
  {
LABEL_10:
    [v3 setMinimumContentSizeCategory:?];
  }

LABEL_11:
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = v8;
    [v3 setFont:v9];
    [v3 setAdjustsFontForContentSizeCategory:1];
  }

  if (v6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v3 setAccessibilityLabel:v10];

  v11 = (v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration);
  v12 = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 80);
  v20[4] = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 64);
  v20[5] = v12;
  v21[0] = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 96);
  *(v21 + 9) = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 105);
  v13 = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 16);
  v20[0] = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration);
  v20[1] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 48);
  v20[2] = *(v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 32);
  v20[3] = v14;
  v15 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v15;
  v16 = *(a1 + 16);
  *v11 = *a1;
  v11[1] = v16;
  *(v11 + 105) = *(a1 + 105);
  v17 = *(a1 + 96);
  v11[5] = *(a1 + 80);
  v11[6] = v17;
  v11[4] = *(a1 + 64);
  sub_1005A59AC(a1, &v19);
  return sub_1005A5A08(v20);
}

char *sub_10074B45C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal20TextFieldContentView_textField;
  *&v1[v3] = [objc_allocWithZone(UITextField) init];
  *&v1[OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldHeightConstraint] = 0;
  v4 = &v1[OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldObserver];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration];
  LOBYTE(aBlock[0]) = 1;
  v24 = 1;
  v23 = 1;
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v5[24] = 1;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  v5[72] = 1;
  *(v5 + 10) = 0;
  v5[88] = 1;
  *(v5 + 13) = 0;
  *(v5 + 14) = 0;
  *(v5 + 12) = 0;
  v5[120] = 1;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for TextFieldContentView();
  v6 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setPreservesSuperviewLayoutMargins:1];
  sub_10074BB1C();
  sub_10074B208(a1);
  v7 = OBJC_IVAR____TtC7Journal20TextFieldContentView_textField;
  [*&v6[OBJC_IVAR____TtC7Journal20TextFieldContentView_textField] setDelegate:v6];
  v8 = [objc_opt_self() defaultCenter];
  v9 = *&v6[v7];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_10074C6A4;
  v21 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10074ADC8;
  ObjectType = &unk_100A7BC18;
  v14 = _Block_copy(aBlock);

  v15 = [v8 addObserverForName:UITextFieldTextDidChangeNotification object:v11 queue:v12 usingBlock:v14];
  _Block_release(v14);

  ObjectType = swift_getObjectType();
  sub_1005A5A08(a1);
  aBlock[0] = v15;
  v16 = OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldObserver;
  swift_beginAccess();
  sub_10002823C(aBlock, &v6[v16]);
  swift_endAccess();

  return v6;
}

void sub_10074B724()
{
  Notification.object.getter();
  if (*(&v25 + 1))
  {
    sub_1000065A8(0, &unk_100AE88A0);
    if (swift_dynamicCast())
    {
      v0 = v23;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 48);
        v4 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration);
        v3 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 16);
        v26 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 32);
        v27 = v2;
        v24 = v4;
        v25 = v3;
        v6 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 80);
        v5 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 96);
        v7 = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 64);
        *&v30[9] = *(Strong + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 105);
        v29 = v6;
        *v30 = v5;
        v28 = v7;
        v8 = Strong;
        sub_1005A59AC(&v24, &v23);

        v9 = v27;
        if (v27)
        {

          sub_1005A5A08(&v24);
          v10 = [v0 text];
          if (v10)
          {
            v11 = v10;
            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;
          }

          else
          {
            v12 = 0;
            v14 = 0;
          }

          v9(v12, v14);
          sub_100004DF8(v9);
        }

        else
        {
          sub_1005A5A08(&v24);
        }
      }

      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = [v0 text];
        if (v17)
        {
          v18 = v17;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
        }

        else
        {

          v19 = 0;
          v21 = 0;
        }

        v22 = &v16[OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration];
        *(v22 + 4) = v19;
        *(v22 + 5) = v21;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000261D4(&v24);
  }
}

id sub_10074B944()
{
  v1 = OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldObserver;
  swift_beginAccess();
  sub_10005D974(v0 + v1, &v5);
  if (v6)
  {
    sub_10002432C(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_10000CA14(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_10000BA7C(&v7);
  }

  else
  {
    sub_1000261D4(&v5);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TextFieldContentView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10074BB1C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal20TextFieldContentView_textField];
  [v1 addSubview:v2];
  v3 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D60;
  v5 = [v2 leadingAnchor];
  v6 = [v1 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  v14 = [v2 superview];
  if (v14)
  {
    v15 = v14;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v2 topAnchor];
    v17 = [v15 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:0.0];
    [v18 setActive:1];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v2 heightAnchor];
  v20 = [v19 constraintGreaterThanOrEqualToConstant:60.0];

  [v20 setActive:1];
  v21 = *&v1[OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldHeightConstraint];
  *&v1[OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldHeightConstraint] = v20;
}

uint64_t sub_10074BE98@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration);
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v14[0] = v3[6];
  *(v14 + 9) = *(v3 + 105);
  v5 = v3[1];
  v13[0] = *v3;
  v13[1] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  a1[3] = &type metadata for TextFieldContentConfiguration;
  a1[4] = sub_1005A5A64();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = v3[5];
  v7[5] = v3[4];
  v7[6] = v8;
  v7[7] = v3[6];
  *(v7 + 121) = *(v3 + 105);
  v9 = v3[1];
  v7[1] = *v3;
  v7[2] = v9;
  v10 = v3[3];
  v7[3] = v3[2];
  v7[4] = v10;
  return sub_1005A59AC(v13, &v12);
}

uint64_t sub_10074BF5C(uint64_t a1)
{
  sub_100086C04(a1, v10);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    v11[4] = v7;
    v11[5] = v8;
    v12[0] = *v9;
    *(v12 + 9) = *&v9[9];
    v11[0] = v3;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    sub_10074B208(v11);
    sub_1005A5A08(v11);
  }

  return sub_10000BA7C(a1);
}

void (*sub_10074C010(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10074AFAC(v2);
  return sub_100113D90;
}

BOOL sub_10074C080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (*(v5 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 120))
  {
    return 1;
  }

  v9 = *(v5 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration + 112);
  v10 = [a1 text];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = Range<>.init(_:in:)();
  if (v17)
  {

    return 0;
  }

  else
  {
    sub_10074C188(v15, v16, a4, a5, v12, v14);

    v18 = String.count.getter();

    return v9 >= v18;
  }
}

unint64_t sub_10074C188(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  Substring.init<A>(_:)();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Substring.init<A>(_:)();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1005770D0(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = String.UTF8View._foreignDistance(from:to:)();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1005770D0(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1005770D0(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = String.UTF8View._foreignCount()();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        String.reserveCapacity(_:)(result);
LABEL_23:
        String.subscript.getter();
        sub_10074C6AC();
        String.append<A>(contentsOf:)();

        String.append<A>(contentsOf:)();
        sub_10047E900(a2, a5, a6);
        String.append<A>(contentsOf:)();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10074C52C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10074C544(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10074C570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10074C5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10074C650()
{
  result = qword_100AEFFC8;
  if (!qword_100AEFFC8)
  {
    type metadata accessor for TextFieldContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFFC8);
  }

  return result;
}

unint64_t sub_10074C6AC()
{
  result = qword_100AEFFD0;
  if (!qword_100AEFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEFFD0);
  }

  return result;
}

void sub_10074C700()
{
  v1 = OBJC_IVAR____TtC7Journal20TextFieldContentView_textField;
  *(v0 + v1) = [objc_allocWithZone(UITextField) init];
  *(v0 + OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldHeightConstraint) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Journal20TextFieldContentView_textFieldObserver);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = v0 + OBJC_IVAR____TtC7Journal20TextFieldContentView_appliedConfiguration;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 96) = 0;
  *(v3 + 120) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10074C7FC()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1000F24EC(&qword_100AF0018);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RecentPlacesVC();
  v24.receiver = v0;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = objc_allocWithZone(sub_1000F24EC(&qword_100AF0020));
  v11 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v12 = *&v0[OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource];
  *&v0[OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource] = v11;

  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000F24EC(&qword_100AD5B68);
  Published.projectedValue.getter();
  swift_endAccess();
  *(swift_allocObject() + 16) = v0;
  sub_10074D830();
  v13 = v0;
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  *&v13[OBJC_IVAR____TtC7Journal14RecentPlacesVC_cancellable] = v14;

  result = [v13 tableView];
  if (!result)
  {
    goto LABEL_10;
  }

  v15 = result;
  v16 = [objc_allocWithZone(UIRefreshControl) init];
  [v15 setRefreshControl:v16];

  result = [v13 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = [result refreshControl];

  if (v18)
  {
    [v18 addTarget:v13 action:"refreshData" forControlEvents:4096];
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v13;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_1003E9628(0, 0, v3, &unk_100966D30, v22);
}

id sub_10074CC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for Date();
    sub_10074D99C(&qword_100AE1D80, &type metadata accessor for Date);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v7;
    v8._countAndFlagsBits = 10;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9 = type metadata accessor for DataAggregator.Place(0);
    v10 = (a3 + *(v9 + 32));
    if (v10[1])
    {
      v11 = *v10;
      v12 = v10[1];
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13._countAndFlagsBits = v11;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = (a3 + *(v9 + 28));
    if (v15[1])
    {
      v16 = *v15;
      v17 = v15[1];
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = String._bridgeToObjectiveC()();

    [v6 setText:{v19, v26, v27}];
  }

  v20 = [v4 textLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setNumberOfLines:0];
  }

  v22 = [v4 detailTextLabel];
  if (v22)
  {
    v23 = v22;
    v24 = [*(a3 + *(type metadata accessor for DataAggregator.Place(0) + 20)) _navigation_locationDescription];
    [v23 setText:v24];
  }

  return v4;
}

uint64_t sub_10074CE58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AF0030);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  type metadata accessor for DataAggregator.Place(0);
  sub_10074D948();
  sub_10074D99C(&qword_100AF0040, type metadata accessor for DataAggregator.Place);
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5AE10);
  v10[15] = 1;
  result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v8 = *(a2 + OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource);
  if (v8)
  {
    v9 = v8;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10074D0DC, v6, v5);
}

uint64_t sub_10074D0DC()
{
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10074D1A0;

  return sub_100179B44();
}

uint64_t sub_10074D1A0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10074D2C0, v3, v2);
}

id sub_10074D2C0()
{
  result = [*(v0 + 16) tableView];
  if (result)
  {
    v2 = result;

    v3 = [v2 refreshControl];

    [v3 endRefreshing];
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10074D668()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentPlacesVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10074D720()
{
  result = qword_100AF0010;
  if (!qword_100AF0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0010);
  }

  return result;
}

uint64_t sub_10074D774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10074D044(a1, v4, v5, v6);
}

unint64_t sub_10074D830()
{
  result = qword_100AF0028;
  if (!qword_100AF0028)
  {
    sub_1000F2A18(&qword_100AF0018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0028);
  }

  return result;
}

uint64_t sub_10074D894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10074D044(a1, v4, v5, v6);
}

unint64_t sub_10074D948()
{
  result = qword_100AF0038;
  if (!qword_100AF0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0038);
  }

  return result;
}

uint64_t sub_10074D99C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10074D9E4()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setZeroFormattingBehavior:0x10000];
  [v0 setAllowedUnits:192];
  result = [v0 setUnitsStyle:0];
  qword_100AF0048 = v0;
  return result;
}

uint64_t sub_10074DA5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1007521A0;
  *(v2 + 24) = v0;
  v5[4] = sub_100177C4C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001A7D4;
  v5[3] = &unk_100A7C0B8;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10074DBA4()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100752190;
  *(v2 + 24) = v0;
  v5[4] = sub_100028EF4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001A7D4;
  v5[3] = &unk_100A7BFF0;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_10074DCE0(uint64_t a1)
{
  isEscapingClosureAtFileLocation = a1;
  v2 = *(a1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  sub_100657094(v2, 0x636E795365766173, 0xEA00000000002928, 0x6E6F6320706D6574, 0xEC00000074786574);
  v17[0] = 0;
  if (![v2 save:v17])
  {
    v4 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v3 = v17[0];
  while (1)
  {
    result = [v2 parentContext];
    if (!result)
    {
      break;
    }

    v2 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = isEscapingClosureAtFileLocation;
    *(v13 + 24) = v2;
    v14 = swift_allocObject();
    v14[2] = sub_100752198;
    v14[3] = v13;
    v17[4] = sub_100177C4C;
    v17[5] = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10001A7D4;
    v17[3] = &unk_100A7C130;
    v15 = _Block_copy(v17);

    v16 = v2;

    [v16 performBlockAndWait:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
LABEL_4:
    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE6A68);

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v2;
      *v9 = v2;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "(saveSync) Unable to save context %@ with error: %@", v8, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }
  }

  return result;
}

id sub_10074E080(uint64_t a1)
{
  isEscapingClosureAtFileLocation = a1;
  v2 = *(a1 + 24);
  sub_100657094(v2, 0x636E795365766173, 0xEA00000000002928, 0x6E6F6320706D6574, 0xEC00000074786574);
  v17[0] = 0;
  if (![v2 save:v17])
  {
    v4 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v3 = v17[0];
  while (1)
  {
    result = [v2 parentContext];
    if (!result)
    {
      break;
    }

    v2 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = isEscapingClosureAtFileLocation;
    *(v13 + 24) = v2;
    v14 = swift_allocObject();
    v14[2] = sub_100752198;
    v14[3] = v13;
    v17[4] = sub_100177C4C;
    v17[5] = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10001A7D4;
    v17[3] = &unk_100A7C068;
    v15 = _Block_copy(v17);

    v16 = v2;

    [v16 performBlockAndWait:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
LABEL_4:
    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE6A68);

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v2;
      *v9 = v2;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "(saveSync) Unable to save context %@ with error: %@", v8, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }
  }

  return result;
}

uint64_t sub_10074E414()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF0060);
  v1 = sub_10000617C(v0, qword_100AF0060);
  if (qword_100AD0178 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10074E4DC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = type metadata accessor for EntryDebugInfoVC();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC7Journal16EntryDebugInfoVC_entry] = a3;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = a2;

    v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
    v9 = objc_allocWithZone(UINavigationController);
    v10 = [v9 initWithRootViewController:{v8, v11.receiver, v11.super_class}];

    [v7 presentViewController:v10 animated:1 completion:0];
  }
}

void sub_10074E5B4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 32);
    v5 = type metadata accessor for ManagedObjectBrowser();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_dataSource] = 0;
    *&v6[OBJC_IVAR____TtC7Journal20ManagedObjectBrowser_managedObject] = v4;
    v12.receiver = v6;
    v12.super_class = v5;
    v7 = a2;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
    v10 = objc_allocWithZone(UINavigationController);
    v11 = [v10 initWithRootViewController:{v9, v12.receiver, v12.super_class}];

    [v7 presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t sub_10074E844(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a2;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  v11[5] = a3;
  sub_1003E9628(0, 0, v7, &unk_100966D90, v11);
}

uint64_t sub_10074E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10074EA08, v7, v6);
}

uint64_t sub_10074EA08()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = *(v0[3] + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
    v4 = v1;

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10074EB3C;

    return (sub_1007AA880)(v2, &protocol witness table for MainActor, v3, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10074EB3C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1007521B4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_10074EC80;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10074EC80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10074ECE8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = type metadata accessor for UnsupportedEntryMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a2, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + v15 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v8 + 32))(v17 + v15, v10, v7);
  *(v17 + v16) = a3;
  *(v17 + ((v16 + 9) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1003E9628(0, 0, v13, &unk_100966D78, v17);
}

uint64_t sub_10074EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for JournalAppVersion();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for UnsupportedEntryMode();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10074F00C, 0, 0);
}

uint64_t sub_10074F00C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 104))(v1, enum case for UnsupportedEntryMode.none(_:), v3);
  sub_100751D94(&qword_100ADC210);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    (*(v6 + 104))(v5, enum case for JournalAppVersion.none(_:), v7);
    v8 = JournalAppVersion.rawValue.getter();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *(v0 + 96);
  }

  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_10074F19C;
  v10 = *(v0 + 16);

  return sub_10074F424(0, 0, v8, v10);
}

uint64_t sub_10074F19C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_10074F2F8;

  return sub_10062833C(0);
}

uint64_t sub_10074F2F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10074F424(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 120) = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v5 + 32) = v7;
  *(v5 + 40) = *(v7 - 8);
  *(v5 + 48) = swift_task_alloc();
  v8 = type metadata accessor for UnsupportedEntryMode();
  *(v5 + 56) = v8;
  v9 = *(v8 - 8);
  *(v5 + 64) = v9;
  *(v5 + 72) = *(v9 + 64);
  *(v5 + 80) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v5 + 88) = v10;
  *(v5 + 96) = v12;

  return _swift_task_switch(sub_10074F588, v10, v12);
}

uint64_t sub_10074F588()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 120);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v5, v3);
  v8 = (*(v2 + 80) + 26) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v0 + 104) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  (*(v2 + 32))(v9 + v8, v1, v3);
  (*(v4 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v13);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_100572488;
  v11 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100751DD8, v9, &type metadata for () + 8);
}

uint64_t sub_10074F738(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  sub_1003E9628(0, 0, v7, &unk_100966D68, v10);
}

uint64_t sub_10074F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 156) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v8;
  *(v5 + 64) = v7;

  return _swift_task_switch(sub_10074F95C, v8, v7);
}

uint64_t sub_10074F95C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  *(v0 + 72) = v1;
  if (v1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 80) = v11;
    if (v11)
    {
LABEL_3:
      *(v0 + 152) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
      v3 = *(v0 + 72);

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v4, v5, v6);
        }

        v7 = *(v3 + 32);
      }

      *(v0 + 96) = v7;
      *(v0 + 104) = 1;
      v8 = *(v0 + 48);

      if (v8)
      {
        swift_getObjectType();
        v9 = dispatch thunk of Actor.unownedExecutor.getter();
        v6 = v10;
      }

      else
      {
        v9 = 0;
        v6 = 0;
      }

      *(v0 + 112) = v9;
      *(v0 + 120) = v6;
      v4 = sub_10074FC84;
      v5 = v9;

      return _swift_task_switch(v4, v5, v6);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 80) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v12 = *(v0 + 48);

  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_10074FB40;

  return sub_10062833C(v12);
}

uint64_t sub_10074FB40()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100163E38, v3, v2);
}

uint64_t sub_10074FC84()
{
  v1 = *(v0 + 96);
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = *(v0 + 156);
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v0 + 136) = v9;
    *(v9 + 16) = sub_100751BAC;
    *(v9 + 24) = v8;
    (*(v5 + 104))(v4, v3, v6);
    v2;
    v10 = v1;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    v12 = sub_1000F24EC(&qword_100AD38E0);
    *v11 = v0;
    v11[1] = sub_10074FE5C;
    v13 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 158, v13, sub_100751C1C, v9, v12);
  }

  else
  {

    v14 = *(v0 + 56);
    v15 = *(v0 + 64);

    return _swift_task_switch(sub_100750014, v14, v15);
  }
}

uint64_t sub_10074FE5C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[4] + 8))(v2[5], v2[3]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_10074FFB0, v5, v6);
  }
}

uint64_t sub_10074FFB0()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100750014, v1, v2);
}

uint64_t sub_100750014()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  v5 = *(v0 + 72);
  if (v1 != v2)
  {
    v9 = *(v0 + 104);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v3 = *(v5 + 8 * v9 + 32);
    }

    *(v0 + 96) = v3;
    *(v0 + 104) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v10 = *(v0 + 48);

      if (v10)
      {
        swift_getObjectType();
        v11 = dispatch thunk of Actor.unownedExecutor.getter();
        v4 = v12;
      }

      else
      {
        v11 = 0;
        v4 = 0;
      }

      *(v0 + 112) = v11;
      *(v0 + 120) = v4;
      v3 = sub_10074FC84;
      v5 = v11;

      return _swift_task_switch(v3, v5, v4);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return _swift_task_switch(v3, v5, v4);
  }

  v6 = *(v0 + 48);

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10074FB40;

  return sub_10062833C(v6);
}

uint64_t sub_1007501B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a2;
  sub_1003E9628(0, 0, v5, &unk_100966D58, v8);
}

uint64_t sub_1007502DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for JournalAppVersion();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1007503D0, v7, v6);
}

void sub_1007503D0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = v0[4];
  v4 = enum case for JournalAppVersion.none(_:);
  v5 = (v3 + 104);
  v6 = (v3 + 8);

  v7 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v1 + 8 * v7 + 32);
    }

    v11 = v10;
    (*v5)(v0[5], v4, v0[3]);
    v12 = *&v11[OBJC_IVAR____TtC7Journal5Asset_assetMO];
    if (v12)
    {
      v13 = v12;
      JournalEntryAssetMO.setMinimumSupportedAppVersion(_:)();

      v11 = v13;
    }

    ++v7;
    v8 = v0[5];
    v9 = v0[3];

    (*v6)(v8, v9);
  }

  while (v2 != v7);

LABEL_12:
  v14 = v0[6];

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_1007505E4;

  sub_10062833C(v14);
}

uint64_t sub_1007505E4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1005C0820, v3, v2);
}

void sub_10075074C(uint64_t a1, __int16 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    [v4 setMinimumSupportedAppVersion:a2];
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = *(v5 + 32);

    [v6 setMinimumSupportedAppVersionMode:UnsupportedEntryMode.rawValue.getter()];
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + 32);

    [v8 setIsUploadedToCloud:0];
  }
}

unint64_t sub_100750888(uint64_t a1)
{
  v63 = type metadata accessor for UnsupportedEntryMode();
  v3 = *(v63 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v63);
  v57 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v43 - v6;
  v8 = type metadata accessor for JournalAppVersion();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static JournalAppVersion.current.getter();
  v12 = JournalAppVersion.rawValue.getter();
  (*(v9 + 8))(v11, v8);
  v13 = v12 + 1;
  if (v12 + 1 == (v12 + 1))
  {
    v14 = v3;
    v67 = _swiftEmptyArrayStorage;
    v15 = static UnsupportedEntryMode.allCases.getter();
    v16 = *(v15 + 16);
    if (v16)
    {
      v66 = _swiftEmptyArrayStorage;
      v17 = v15;
      specialized ContiguousArray.reserveCapacity(_:)();
      v56 = sub_1000065A8(0, &qword_100AD4420);
      v55 = objc_opt_self();
      v18 = v14 + 16;
      v53 = *(v14 + 16);
      v19 = *(v14 + 80);
      v43[1] = v17;
      v20 = v17 + ((v19 + 32) & ~v19);
      v51 = *(v18 + 56);
      v50 = enum case for UnsupportedEntryMode.none(_:);
      v48 = (v18 - 8);
      v49 = (v18 + 88);
      v52 = v19;
      v47 = (v19 + 16) & ~v19;
      v46 = (v4 + v47 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = (v46 + 9) & 0xFFFFFFFFFFFFFFF8;
      v54 = v18;
      v44 = (v18 + 16);
      v59 = a1;
      v58 = v13;
      v21 = v63;
      do
      {
        v62 = v16;
        v22 = v21;
        v23 = v57;
        v24 = v53;
        v53(v7, v20, v22);
        (*v49)(v23, v50, v63);
        sub_100751D94(&unk_100ADE5E0);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v61 = *v48;
        v61(v23, v63);
        v64 = 0;
        v65 = 0xE000000000000000;
        v25._countAndFlagsBits = 0x203A7972746E45;
        v25._object = 0xE700000000000000;
        String.append(_:)(v25);
        _print_unlocked<A, B>(_:_:)();
        v60 = v65;
        v26 = String._bridgeToObjectiveC()();

        v27 = [v55 systemImageNamed:v26];

        v24(v23, v7, v63);
        v28 = v62;
        v21 = v63;
        v29 = v45;
        v30 = swift_allocObject();
        (*v44)(v30 + v47, v23, v21);
        *(v30 + v46) = v58;
        *(v30 + v29) = v59;

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v61(v7, v21);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += v51;
        v16 = v28 - 1;
      }

      while (v16);

      v31 = v66;
      a1 = v59;
      LOWORD(v13) = v58;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    sub_1006AD908(v31);
    v1 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
    v32 = *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (!(v32 >> 62))
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  if (v33)
  {
    sub_1000065A8(0, &qword_100AD4420);
    v34 = String._bridgeToObjectiveC()();
    v35 = [objc_opt_self() systemImageNamed:v34];

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v13;

    v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v38 = *(a1 + v1);
  if (v38 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return v67;
    }
  }

  else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v67;
  }

  sub_1000065A8(0, &qword_100AD4420);
  v39 = String._bridgeToObjectiveC()();
  v40 = [objc_opt_self() systemImageNamed:v39];

  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v67;
}

UIMenu sub_100751090(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1000F24EC(&unk_100AD4780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941830;
  sub_1000065A8(0, &qword_100AD4420);
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = a3;

  v46 = v9;
  *(v5 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v7 systemImageNamed:{v11, 0, 0, 0, sub_100751948, v46}];

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = v10;

  v47 = v13;
  *(v5 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v7 systemImageNamed:{v15, 0, 0, 0, sub_100751950, v47}];

  *(v5 + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v7 _systemImageNamed:{v17, 0, 0, 0, sub_100751958, a1}];

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a1;
  v20 = v14;

  v48 = v19;
  *(v5 + 56) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50 = v5;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v7 systemImageNamed:{v21, 0, 0, 0, sub_100751960, v48}];

  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100941D60;
  if (qword_100AD0910 != -1)
  {
    swift_once();
  }

  v24 = qword_100B30DE8;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = a1;
  v27 = v24;

  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD0918 != -1)
  {
    swift_once();
  }

  v28 = qword_100B30DF0;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = a1;
  v31 = v28;

  *(preferredElementSize + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &unk_100AD4D00);
  v32._countAndFlagsBits = 0x74726F707845;
  v32._object = 0xE600000000000000;
  v51.value.super.isa = v22;
  v51.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v7 systemImageNamed:v33];

  v35 = sub_100750888(a1);
  if (v35 >> 62)
  {
    sub_1000065A8(0, &unk_100ADC630);
    v36 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000065A8(0, &unk_100ADC630);
    v36 = v35;
  }

  v37._countAndFlagsBits = 0x206D756D696E694DLL;
  v37._object = 0xEF6E6F6973726556;
  v52.value.super.isa = v34;
  v52.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, v36, v44);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v38 = a2;
  if (a2 >> 62)
  {
    sub_1000065A8(0, &unk_100ADC630);

    v43 = _bridgeCocoaArray<A>(_:)();

    v38 = v43;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000065A8(0, &unk_100ADC630);
  }

  sub_1006AD920(v38);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v7 systemImageNamed:v39];

  v41._countAndFlagsBits = 0x6C616E7265746E49;
  v41._object = 0xE800000000000000;
  v53.value.super.isa = v40;
  v53.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v50, v45);
}

uint64_t sub_100751978(uint64_t a1)
{
  v3 = *(type metadata accessor for UnsupportedEntryMode() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v1 + ((v5 + 9) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + v5);

  return sub_10074ECE8(a1, v1 + v4, v7, v6);
}

uint64_t sub_100751A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1007502DC(a1, v4, v5, v6);
}

uint64_t sub_100751AE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10074F864(a1, v4, v5, v6, v7);
}

id sub_100751BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  [*(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO) setMinimumSupportedAppVersion:v2];
  result = *(v1 + v3);
  if (result)
  {

    return [result setIsUploadedToCloud:0];
  }

  return result;
}

uint64_t sub_100751C1C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_100751C5C(uint64_t a1)
{
  v4 = *(type metadata accessor for UnsupportedEntryMode() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v6 + 9) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + v6);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_10074EEEC(a1, v7, v8, v1 + v5, v10, v9);
}

uint64_t sub_100751D94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnsupportedEntryMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100751E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10074E970(a1, v4, v5, v7, v6);
}

void sub_100751F0C(void *a1)
{
  sub_100657094(a1, 0x636E795365766173, 0xEA00000000002928, 0xD000000000000013, 0x80000001008FF260);
  v14 = 0;
  v2 = [a1 save:&v14];
  v3 = v14;
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFE88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AE6A68);
    v7 = a1;
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = v7;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      v11[1] = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "(saveSync) Unable to save parentContext %@ with error: %@", v10, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1007521C4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[39];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v5 = v2[25];
    v6 = v2[26];

    return _swift_task_switch(sub_100752318, v5, v6);
  }
}

uint64_t sub_100752318()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v7 = objc_allocWithZone(UIImage);
    sub_100049ED8(v2, v1);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithData:isa];

    sub_10003A5C8(v2, v1);
    if (v9)
    {
      v10 = *(v0 + 80);
      sub_10003B9B4();
      v11 = sub_10059B604(v9);
      if (sub_100511E4C(*(v10 + qword_100B302E0)))
      {
        sub_100752914(v11, *(v0 + 256), *(v0 + 264));
      }

      v12 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v13 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v39 = v13;
        v14 = *(v0 + 96);
        v15 = *(v0 + 104);
        v16 = *(v0 + 88);

        checkForErrorAndConsumeState(state:)();

        if ((*(v14 + 88))(v15, v16) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v17 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v17 = "";
        }

        v25 = *(v0 + 312);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v39, v27, "Image attachment loading", v17, v26, 2u);

        sub_10003A5C8(v2, v1);
        v12 = v37;
        v9 = v38;
      }

      else
      {
        v23 = *(v0 + 312);
        v24 = *(v0 + 296);

        sub_10003A5C8(v2, v1);
      }

      v28 = *(v0 + 80);
      (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
      sub_10008D238(v28, "Image attachment loading", 24, 2);
      goto LABEL_28;
    }

    sub_100049ED8(v2, v1);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_10003A5C8(v2, v1);
LABEL_26:
      v33 = *(v0 + 304);
      v34 = *(v0 + 296);
      v35 = *(v0 + 80);

      sub_10003A5C8(v2, v1);
      v6 = v35;
      goto LABEL_27;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v21 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v30 = *(v2 + 16);
      v29 = *(v2 + 24);
      v31 = __OFSUB__(v29, v30);
      v22 = v29 - v30;
      if (!v31)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v1);
LABEL_25:
      *(result + 4) = v22;
      v32 = result;
      sub_10003A5C8(v2, v1);
      _os_log_impl(&_mh_execute_header, v18, v19, "can't create image from data (size: %{bytes}ld)", v32, 0xCu);

      goto LABEL_26;
    }

    LODWORD(v22) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_25;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 296);
  v5 = *(v0 + 80);

  v6 = v5;
LABEL_27:
  sub_10008D238(v6, "Image attachment loading", 24, 2);
  v11 = 0;
LABEL_28:

  v36 = *(v0 + 8);

  return v36(v11);
}

uint64_t sub_100752794()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_10075289C, v2, v1);
}

uint64_t sub_10075289C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100752914(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFCB8 != -1)
  {
    swift_once();
  }

  v18[1] = qword_100B2F858;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1007539B0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7C1D0;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10008D1F0(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

void sub_100752C38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = a2;
    sub_100753708(v7, a3, a4);
  }
}

uint64_t sub_100752CB8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return _swift_task_switch(sub_100752DE0, v4, v3);
}

uint64_t sub_100752DE0()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  if (v0[43])
  {
    v3 = v0[34];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v3, v1);
    v36 = v0[43];
  }

  else
  {
    (*(v2 + 16))(v0[33], v0[34], v0[31]);
    v10 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v10, v33);
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v35 = v0[13];
    v37 = v0[14];
    v34 = v0[11];
    if (v11)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v19 = 136315138;
      sub_10008D1F0(&qword_100ADEFD0, &type metadata accessor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v14;
      v31 = v14;
      v32 = v16;
      v22 = v20;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v12, v21);
      v26 = sub_100008458(v22, v24, &v38);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v10, v33, "getImageStoredInFile can't create image from %s", v19, 0xCu);
      sub_10000BA7C(v30);

      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v32, v37);
      v25(v13, v31);
    }

    else
    {

      v27 = *(v15 + 8);
      v27(v12, v14);
      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v16, v37);
      v27(v13, v14);
    }

    v36 = 0;
  }

  v28 = v0[1];

  return v28(v36);
}

void sub_1007531C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  type metadata accessor for JournalEntryAssetMO();
  if (!swift_dynamicCastClass())
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve assetMO based on NSManagedObjectID", v16, 2u);
    }

    goto LABEL_11;
  }

  v5 = sub_1000958AC(0);
  if (!v5 || (v6 = v5, v7 = [v5 data], v6, !v7))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "data attachment [0] is nil", v13, 2u);
    }

LABEL_11:
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_12;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

LABEL_12:
  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_1007533B8()
{

  v1 = qword_100B302B8;
  v2 = type metadata accessor for AssetType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_100AF0118;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_100AF0120;
  v6 = type metadata accessor for OSSignposter();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_100753504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailCacheOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100753708(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v16, qword_100B2FC48);
  FileStoreConfiguration.cachesDirectoryURL.getter();
  v26 = a2;
  v27 = a3;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = UIImageHEICRepresentation(v25);
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_100753544();
    sub_1000340DC(v20, v22);
  }

  return (v17)(v15, v9);
}

id sub_1007539D4(void *a1)
{
  v2 = type metadata accessor for FileStoreConfiguration();
  v177 = *(v2 - 1);
  v178 = v2;
  __chkstk_darwin(v2);
  v176 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v179 = *(v4 - 8);
  v180 = v4;
  __chkstk_darwin(v4);
  v175 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v183 = &v170 - v7;
  v181 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v181);
  v9 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v174 = &v170 - v11;
  __chkstk_darwin(v12);
  v172 = &v170 - v13;
  __chkstk_darwin(v14);
  v173 = &v170 - v15;
  __chkstk_darwin(v16);
  v18 = &v170 - v17;
  __chkstk_darwin(v19);
  v21 = &v170 - v20;
  __chkstk_darwin(v22);
  v24 = &v170 - v23;
  v25 = type metadata accessor for UUID();
  v187 = *(v25 - 8);
  v188 = v25;
  __chkstk_darwin(v25);
  v27 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v184 = &v170 - v29;
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v34 = sub_10000617C(v30, qword_100B2FF80);
  v185 = v30;
  v186 = v31;
  (*(v31 + 16))(v33, v34, v30);
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_100759750(&qword_100AEB688, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  v35 = RecordUploading.partialCloudKitRecord.getter();
  if (!v35)
  {
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v190 = v48;
      *v47 = 136315138;
      v49 = [v44 id];
      if (v49)
      {
        v50 = v49;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      (*(v187 + 56))(v9, v51, 1, v188);
      v57 = String.init<A>(describing:)();
      v59 = sub_100008458(v57, v58, &v190);

      *(v47 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create partial CKRecord for fileAttachment: %s", v47, 0xCu);
      sub_10000BA7C(v48);
    }

    (*(v186 + 8))(v33, v185);
    return 0;
  }

  v36 = v35;
  v182 = v33;
  v37 = [a1 parentID];
  if (v37)
  {
    v38 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v187;
    v40 = v188;
    v41 = *(v187 + 32);
    v41(v21, v27, v188);
    v42 = *(v39 + 56);
    v42(v21, 0, 1, v40);
    v41(v24, v21, v40);
    v42(v24, 0, 1, v40);
    v43 = (*(v39 + 48))(v24, 1, v40);
  }

  else
  {
    v171 = v36;
    v39 = v187;
    v40 = v188;
    v52 = *(v187 + 56);
    v52(v21, 1, 1, v188);
    v53 = sub_1007574E0(a1);
    if (v53)
    {
      v54 = v53;
      v55 = [v53 id];

      if (v55)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v40 = v188;
      v52(v18, v56, 1, v188);
      v42 = v52;
      sub_100024EC0(v18, v24);
    }

    else
    {
      v52(v24, 1, 1, v40);
      v42 = v52;
    }

    v60 = *(v39 + 48);
    v61 = v60(v21, 1, v40);
    v36 = v171;
    if (v61 != 1)
    {
      sub_100004F84(v21, &qword_100AD1420);
    }

    v43 = v60(v24, 1, v40);
  }

  if (v43 == 1)
  {
    sub_100004F84(v24, &qword_100AD1420);
    v62 = a1;
    v63 = v182;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v190 = v67;
      *v66 = 136315138;
      v68 = [v62 debugDescription];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_100008458(v69, v71, &v190);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Unable to get parentRecordUUID for fileAttachment: %s", v66, 0xCu);
      sub_10000BA7C(v67);
    }

    (*(v186 + 8))(v63, v185);
    return 0;
  }

  v170 = v42;
  (*(v39 + 32))(v184, v24, v40);
  v73 = UUID.uuidString.getter();
  v75 = v74;
  sub_1000065A8(0, &qword_100AF02B0);
  v76 = static CloudKitStackConfiguration.zone.getter();
  v77 = [v76 zoneID];

  v78._countAndFlagsBits = v73;
  v78._object = v75;
  v79.super.isa = CKRecordID.init(recordName:zoneID:)(v78, v77).super.isa;
  v80 = [objc_allocWithZone(CKReference) initWithRecordID:v79.super.isa action:1];
  CKRecord.subscript.setter();
  v81 = [v36 encryptedValues];
  swift_getObjectType();
  v82 = [a1 index];
  v193 = &type metadata for Int16;
  v194 = &protocol witness table for Int16;
  LOWORD(v190) = v82;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v83 = [v36 encryptedValues];
  v84 = [a1 name];
  if (v84)
  {
    v85 = v84;
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = &protocol witness table for String;
    v90 = &type metadata for String;
  }

  else
  {
    v86 = 0;
    v88 = 0;
    v90 = 0;
    v89 = 0;
    v192 = 0;
  }

  v91 = v183;
  v190 = v86;
  v191 = v88;
  v193 = v90;
  v194 = v89;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v92 = [a1 filePath];
  if (!v92)
  {
    v119 = a1;
    v120 = v182;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v171 = v80;
      v123 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *v123 = 136315394;
      v124 = [v119 id];
      isa = v79.super.isa;
      if (v124)
      {
        v126 = v174;
        v127 = v124;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v128 = 0;
      }

      else
      {
        v128 = 1;
        v126 = v174;
      }

      v170(v126, v128, 1, v188);
      v144 = String.init<A>(describing:)();
      v146 = sub_100008458(v144, v145, &v189);

      *(v123 + 4) = v146;
      *(v123 + 12) = 2080;
      v147 = [v119 filePath];
      if (v147)
      {
        v148 = v147;
        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;
      }

      else
      {
        v149 = 0;
        v151 = 0;
      }

      v190 = v149;
      v191 = v151;
      sub_1000F24EC(&unk_100AE4870);
      v152 = String.init<A>(describing:)();
      v154 = sub_100008458(v152, v153, &v189);

      *(v123 + 14) = v154;
      _os_log_impl(&_mh_execute_header, v121, v122, "Unable to get attachment url for JournalEntryAssetFileAttachmentMO with id %s. filePath: %s", v123, 0x16u);
      swift_arrayDestroy();

      (*(v187 + 8))(v184, v188);
      goto LABEL_52;
    }

LABEL_42:
    (*(v187 + 8))(v184, v188);
    (*(v186 + 8))(v120, v185);
    return 0;
  }

  v171 = v80;
  v93 = v92;
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  v97 = v176;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.getAttachmentURL(from:)();
  (*(v177 + 8))(v97, v178);
  v98 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v99 = String._bridgeToObjectiveC()();

  LODWORD(v97) = [v98 fileExistsAtPath:v99];

  if (!v97)
  {
    v178 = v79.super.isa;

    v129 = v91;
    v131 = v179;
    v130 = v180;
    v132 = v175;
    (*(v179 + 16))(v175, v129, v180);
    v133 = a1;
    v120 = v182;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v190 = v176;
      *v136 = 136446466;
      v137 = [v133 id];
      v138 = v188;
      LODWORD(v177) = v135;
      if (v137)
      {
        v139 = v172;
        v140 = v137;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v141 = 0;
        v142 = v170;
      }

      else
      {
        v141 = 1;
        v142 = v170;
        v139 = v172;
      }

      v159 = v187;
      v142(v139, v141, 1, v138);
      v160 = String.init<A>(describing:)();
      v162 = sub_100008458(v160, v161, &v190);

      *(v136 + 4) = v162;
      *(v136 + 12) = 2080;
      sub_100759750(&qword_100ADEFD0, &type metadata accessor for URL);
      v163 = v180;
      v164 = dispatch thunk of CustomStringConvertible.description.getter();
      v166 = v165;
      v167 = *(v179 + 8);
      v167(v132, v163);
      v168 = sub_100008458(v164, v166, &v190);

      *(v136 + 14) = v168;
      _os_log_impl(&_mh_execute_header, v134, v177, "File attachment file does not exist for %{public}s: %s", v136, 0x16u);
      swift_arrayDestroy();

      v167(v183, v163);
      (*(v159 + 8))(v184, v188);
LABEL_52:
      (*(v186 + 8))(v182, v185);
      return 0;
    }

    v143 = *(v131 + 8);
    v143(v132, v130);
    v143(v129, v130);
    goto LABEL_42;
  }

  v100 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v101);
  v103 = v102;
  v104 = [v100 initWithFileURL:v102];

  v105 = v104;
  CKRecord.subscript.setter();
  v106 = [v36 encryptedValues];
  swift_getObjectType();
  v193 = &type metadata for String;
  v194 = &protocol witness table for String;
  v190 = v94;
  v191 = v96;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v107 = a1;
  v108 = v182;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v109, v110))
  {
    v178 = v105;
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v190 = v112;
    *v111 = 136446210;
    v113 = [v107 id];
    v114 = v188;
    v115 = v79.super.isa;
    if (v113)
    {
      v116 = v173;
      v117 = v113;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = 0;
    }

    else
    {
      v118 = 1;
      v116 = v173;
    }

    v155 = v187;
    v170(v116, v118, 1, v114);
    v156 = String.init<A>(describing:)();
    v158 = sub_100008458(v156, v157, &v190);

    *(v111 + 4) = v158;
    _os_log_impl(&_mh_execute_header, v109, v110, "Created CKRecord from JournalEntryAssetFileAttachmentMO for id %{public}s", v111, 0xCu);
    sub_10000BA7C(v112);

    (*(v179 + 8))(v183, v180);
    (*(v155 + 8))(v184, v114);
    (*(v186 + 8))(v182, v185);
  }

  else
  {

    (*(v179 + 8))(v91, v180);
    (*(v187 + 8))(v184, v188);
    (*(v186 + 8))(v108, v185);
  }

  return v36;
}

uint64_t sub_100754D50()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF0290);
  v1 = sub_10000617C(v0, qword_100AF0290);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100754E18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_100759750(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  result = static Identifiable<>.fetch(id:context:)();
  if (v1)
  {
    if (qword_100AD02F8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AF0290);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to fetch asset file attachment by id: %@", v7, 0xCu);
      sub_100004F84(v8, &unk_100AD4BB0);
    }

    else
    {
    }

    result = 0;
  }

  *a1 = result;
  return result;
}

void sub_100755004(void *a1, void *a2, uint64_t a3)
{
  v71 = a3;
  v5 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v5 - 8);
  v70 = &v69 - v6;
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_100759750(&qword_100AEB688, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  v7 = RecordUploading.currentChangeTags.getter();
  v9 = v8;
  v10 = [a2 recordChangeTag];
  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (!v9)
  {
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_13:

    goto LABEL_19;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  if (v7 == v12 && v9 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_19:
      if (([a1 isUploadedToCloud] & 1) == 0)
      {
        v31 = a2;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v34 = 136446466;
          v35 = CKRecord.recordType.getter();
          v37 = sub_100008458(v35, v36, &v72);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2080;
          v38 = [v31 recordID];
          v39 = [v38 recordName];

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = sub_100008458(v40, v42, &v72);

          *(v34 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v32, v33, "JournalEntryAssetFileAttachmentMO has local changes that will be overwritten by %{public}s record. ID: %s", v34, 0x16u);
          swift_arrayDestroy();
        }
      }

      v44 = CKRecord.subscript.getter();
      v45 = v70;
      if (v44)
      {
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v47 = [v46 recordID];
          v48 = [v47 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          UUID.init(uuidString:)();

          v49 = type metadata accessor for UUID();
          v50 = *(v49 - 8);
          isa = 0;
          if ((*(v50 + 48))(v45, 1, v49) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v50 + 8))(v45, v49);
          }

          [a1 setParentID:isa];
          swift_unknownObjectRelease();

LABEL_32:
          v58 = [a2 encryptedValues];
          v59 = String._bridgeToObjectiveC()();
          v60 = [v58 objectForKeyedSubscript:v59];
          swift_unknownObjectRelease();

          if (v60)
          {
            v73 = v60;
            sub_1000F24EC(&unk_100AE4C70);
            if (swift_dynamicCast())
            {
              v61 = String._bridgeToObjectiveC()();

              [a1 setName:v61];
            }
          }

          v62 = [a2 encryptedValues];
          v63 = String._bridgeToObjectiveC()();
          v64 = [v62 objectForKeyedSubscript:v63];
          swift_unknownObjectRelease();

          if (v64)
          {
            v72 = v64;
            sub_1000F24EC(&unk_100AE4C70);
            if (swift_dynamicCast())
            {
              [a1 setIndex:v73];
            }
          }

          v65 = CKRecord.encodedSystemFields.getter();
          v67 = v66;
          v68 = Data._bridgeToObjectiveC()().super.isa;
          sub_1000340DC(v65, v67);
          [a1 setRecordSystemFields:v68];

          [a1 setIsUploadedToCloud:1];
          return;
        }

        swift_unknownObjectRelease();
      }

      v52 = a2;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v52;
        v57 = v52;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unable to update parentReference for fileAttachment for a record: %@", v55, 0xCu);
        sub_100004F84(v56, &unk_100AD4BB0);
      }

      goto LABEL_32;
    }
  }

LABEL_15:
  RecordUploading.currentChangeTags.getter();
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = CKRecord.recordType.getter();
    v24 = sub_100008458(v22, v23, &v72);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = [v18 recordID];
    v26 = [v25 recordName];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100008458(v27, v29, &v72);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring remote %s record update with ID %s since local copy has already processed the same change tag", v21, 0x16u);
    swift_arrayDestroy();
  }
}

double *sub_10075586C@<X0>(const char *a1@<X2>, const char *a2@<X3>, double **a3@<X8>)
{
  if (qword_100AD02F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000617C(v6, qword_100AF0290);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [objc_opt_self() isMainThread];
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 8u);
  }

  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 0xCu);
      sub_100004F84(v14, &unk_100AD4BB0);
    }

    result = _swiftEmptyArrayStorage;
  }

  *a3 = result;
  return result;
}