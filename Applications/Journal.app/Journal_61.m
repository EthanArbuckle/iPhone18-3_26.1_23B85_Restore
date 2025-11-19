uint64_t sub_1006952BC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v4)
    {
      if (v5)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 1)
    {
      if (v5 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  if (v5 < 4)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  v10 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  sub_100651240(*(a1 + 24), *(a2 + 24));
  if (v11)
  {
    sub_1000065A8(0, &unk_100AD43A0);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

BOOL sub_100695428(uint64_t a1, uint64_t a2)
{
  if (!sub_1008895B4(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  if (!sub_1008895B4(a1 + v4[5], a2 + v4[5]) || !sub_1008895B4(a1 + v4[6], a2 + v4[6]) || !sub_1008895B4(a1 + v4[7], a2 + v4[7]) || !sub_1008895B4(a1 + v4[8], a2 + v4[8]))
  {
    return 0;
  }

  v5 = v4[9];

  return sub_1008895B4(a1 + v5, a2 + v5);
}

uint64_t sub_1006954E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&unk_100AD5BE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100088AC8(a1, &v21 - v13);
  sub_100088AC8(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100088AC8(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100034298(&qword_100AD5BF0, &type metadata accessor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100004F84(v14, &unk_100AD4790);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v14, &unk_100AD5BE0);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v14, &unk_100AD4790);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1006957D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5A9D8, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100695824()
{
  result = qword_100AECDE0;
  if (!qword_100AECDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDE0);
  }

  return result;
}

uint64_t sub_100695878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006958DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10069597C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100695A24()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10025AE08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100695AC0()
{
  result = qword_100AECE90;
  if (!qword_100AECE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECE90);
  }

  return result;
}

unint64_t sub_100695B14()
{
  result = qword_100AECEA8;
  if (!qword_100AECEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECEA8);
  }

  return result;
}

uint64_t sub_100695B68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100AECE98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100695BEC()
{
  result = qword_100AECEC0;
  if (!qword_100AECEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECEC0);
  }

  return result;
}

unint64_t sub_100695C54()
{
  result = qword_100AECEC8;
  if (!qword_100AECEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECEC8);
  }

  return result;
}

unint64_t sub_100695CAC()
{
  result = qword_100AECED0;
  if (!qword_100AECED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECED0);
  }

  return result;
}

unint64_t sub_100695D04()
{
  result = qword_100AECED8;
  if (!qword_100AECED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECED8);
  }

  return result;
}

uint64_t sub_100695D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447972746E65 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100695E78()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v62 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Date.FormatStyle.DateStyle();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v58);
  v57 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v66 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v52 - v7;
  v9 = type metadata accessor for Date();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v59 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  v14 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = type metadata accessor for VisitAssetMetadata();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100ADA938);
  __chkstk_darwin(v20 - 8);
  v22 = v52 - v21;
  v23 = type metadata accessor for GenericMapAssetMetadata();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AAA94(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v27 = &qword_100ADA938;
    v28 = v22;
LABEL_10:
    sub_100004F84(v28, v27);
    return 0;
  }

  (*(v24 + 32))(v26, v22, v23);
  GenericMapAssetMetadata.visitsData.getter();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    (*(v24 + 8))(v26, v23);
    v27 = &unk_100AEED20;
    v28 = v16;
    goto LABEL_10;
  }

  v29 = v17;
  v55 = v26;
  v56 = v13;
  v30 = v67;
  (*(v18 + 32))(v67, v16, v17);
  VisitAssetMetadata.visitStartTime.getter();
  v32 = v68;
  v31 = v69;
  v33 = *(v68 + 48);
  if (v33(v8, 1, v69) == 1)
  {
    (*(v18 + 8))(v30, v29);
LABEL_9:
    (*(v24 + 8))(v55, v23);
    v27 = &unk_100AD4790;
    v28 = v8;
    goto LABEL_10;
  }

  v53 = v18;
  v54 = v29;
  v34 = *(v32 + 32);
  v34(v56, v8, v31);
  v8 = v66;
  VisitAssetMetadata.visitEndTime.getter();
  v35 = v69;
  if (v33(v8, 1, v69) == 1)
  {
    (*(v32 + 8))(v56, v35);
    (*(v53 + 8))(v30, v54);
    goto LABEL_9;
  }

  v37 = v59;
  v34(v59, v8, v35);
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v52[1] = *(&xmmword_100B305A0 + 1);
  v66 = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100940050;
  v39 = v57;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  v40 = v56;
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v39);
  v41 = v70;
  v42 = v71;
  *(v38 + 56) = &type metadata for String;
  v43 = sub_100031B20();
  *(v38 + 64) = v43;
  *(v38 + 32) = v41;
  *(v38 + 40) = v42;
  v44 = v60;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v45 = v62;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v46 = Date.formatted(date:time:)();
  v48 = v47;
  (*(v64 + 8))(v45, v65);
  (*(v61 + 8))(v44, v63);
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v43;
  *(v38 + 72) = v46;
  *(v38 + 80) = v48;
  v49 = static String.localizedStringWithFormat(_:_:)();

  v50 = v69;
  v51 = *(v68 + 8);
  v51(v37, v69);
  v51(v40, v50);
  (*(v53 + 8))(v67, v54);
  (*(v24 + 8))(v55, v23);
  return v49;
}

uint64_t sub_1006966EC(uint64_t a1, UIImage *a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a1;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  sub_10069763C(v14);
  v32 = a3;
  v33 = a3;
  v34 = a4;
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v14, v10);
  v17 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fileExistsAtPath:v18];

  if ((v19 & 1) == 0)
  {
    v20 = UIImageHEICRepresentation(v30);
    if (v20)
    {
      v21 = v20;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      Data.write(to:options:)();
      sub_1000340DC(v22, v24);
    }

    else
    {
      if (qword_100AD00E0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000617C(v25, qword_100AECEE0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "ExportOptions.saveImageToResources error getting data from image.", v28, 2u);
      }
    }
  }

  (*(v11 + 32))(v31, v16, v10);

  return v32;
}

uint64_t sub_100696BC4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AECEE0);
  sub_10000617C(v0, qword_100AECEE0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100696C44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100696D14()
{
  String.hash(into:)();
}

Swift::Int sub_100696DD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100696E9C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006998DC(*a1);
  *a2 = result;
  return result;
}

void sub_100696ECC(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x74726F707865;
  v4 = 0xEB00000000464450;
  v5 = 0x656E4F746E697270;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001008DE250;
  }

  if (*v1)
  {
    v3 = 0x4D5448746E697270;
    v2 = 0xE90000000000004CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_100696F58(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v51 = a2;
  v50 = a1;
  v6 = type metadata accessor for URL.DirectoryHint();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FileStoreConfiguration();
  v11 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v49 - v19;
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v21 - 8);
  (*(v15 + 56))(&v5[OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL], 1, 1, v14);
  v5[OBJC_IVAR____TtC7Journal13ExportOptions_createExportZipArchive] = 0;
  v5[OBJC_IVAR____TtC7Journal13ExportOptions_exportAssetMetadataAsJSON] = 1;
  v22 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath];
  *v22 = 0xD000000000000013;
  v22[1] = 0x80000001009009A0;
  v23 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_entriesDirectoryPath];
  *v23 = 0x73656972746E45;
  v23[1] = 0xE700000000000000;
  v24 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath];
  *v24 = 0x656372756F736552;
  v24[1] = 0xE900000000000073;
  v25 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_printablePageFileName];
  strcpy(&v5[OBJC_IVAR____TtC7Journal13ExportOptions_printablePageFileName], "Journal.html");
  v25[13] = 0;
  *(v25 + 7) = -5120;
  v26 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_archiveFileName];
  *v26 = 0xD000000000000017;
  v26[1] = 0x80000001009009C0;
  v27 = &v5[OBJC_IVAR____TtC7Journal13ExportOptions_saveToDirectoryFilename];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v27 = String.init(localized:table:bundle:locale:comment:)();
  v27[1] = v28;
  *&v5[OBJC_IVAR____TtC7Journal13ExportOptions_printedAssetSize] = vdupq_n_s64(0x406F400000000000uLL);
  v29 = OBJC_IVAR____TtC7Journal13ExportOptions_progress;
  *&v5[v29] = [objc_allocWithZone(NSProgress) init];
  v5[OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectlyToDestinationURL] = 0;
  v30 = v50;
  v5[OBJC_IVAR____TtC7Journal13ExportOptions_format] = v50;
  *&v5[OBJC_IVAR____TtC7Journal13ExportOptions_entryIds] = v51;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  (*(v11 + 8))(v13, v49);
  v61 = 0;
  v62 = 0xE000000000000000;
  v31 = 0xE600000000000000;
  v32 = 0x74726F707865;
  v33 = 0xEB00000000464450;
  v34 = 0x656E4F746E697270;
  if (v30 != 2)
  {
    v34 = 0xD000000000000011;
    v33 = 0x80000001008DE250;
  }

  if (v30)
  {
    v32 = 0x4D5448746E697270;
    v31 = 0xE90000000000004CLL;
  }

  if (v30 <= 1u)
  {
    v35 = v32;
  }

  else
  {
    v35 = v34;
  }

  if (v30 <= 1u)
  {
    v36 = v31;
  }

  else
  {
    v36 = v33;
  }

  v37 = v36;
  String.append(_:)(*&v35);

  v38._countAndFlagsBits = 45;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  (*(v53 + 8))(v10, v54);
  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v44 = v55;
  v43 = v56;
  v45 = v57;
  (*(v56 + 104))(v55, enum case for URL.DirectoryHint.inferFromPath(_:), v57);
  sub_1000777B4();
  v46 = v52;
  URL.appending<A>(path:directoryHint:)();
  (*(v43 + 8))(v44, v45);

  (*(v15 + 8))(v18, v14);
  (*(v15 + 32))(&v5[OBJC_IVAR____TtC7Journal13ExportOptions_workingDirectoryURL], v46, v14);
  *&v5[OBJC_IVAR____TtC7Journal13ExportOptions_container] = v58;
  v5[OBJC_IVAR____TtC7Journal13ExportOptions_continueInBackground] = v59 & 1;
  v47 = type metadata accessor for ExportOptions();
  v60.receiver = v5;
  v60.super_class = v47;
  return objc_msgSendSuper2(&v60, "init");
}

uint64_t sub_100697648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
  v21 = *(v2 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
  v22 = v9;
  v10 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v16 = *(v4 + 104);
  v16(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  v15 = sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  v11 = *(v4 + 8);
  v11(v6, v3);

  v12 = (v2 + *v18);
  v13 = v12[1];
  v21 = *v12;
  v22 = v13;
  v16(v6, v10, v3);

  URL.appending<A>(path:directoryHint:)();
  v11(v6, v3);

  return (*(v17 + 8))(v8, v19);
}

void sub_1006978B8()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  sub_100697630(v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v54 = 0;
  v12 = [v7 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v54];

  v13 = v54;
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = qword_100AD00E0;
  v15 = v54;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000617C(v16, qword_100AECEE0);
  v18 = v1;
  v52[1] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52[0] = v18;
    v22 = v2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v53 = v11;
    v25 = v24;
    v54 = v24;
    *v23 = 136315138;
    sub_100697630(v5);
    sub_100209458();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v53(v5, v22);
    v29 = sub_100008458(v26, v28, &v54);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "ExportOptions.createDirectories created %s", v23, 0xCu);
    sub_10000BA7C(v25);
    v11 = v53;

    v2 = v22;
    v18 = v52[0];
  }

  v30 = [v6 defaultManager];
  sub_10069763C(v5);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v11(v5, v2);
  v54 = 0;
  v34 = [v30 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v54];

  v13 = v54;
  if (v34)
  {
    v35 = v18;
    v36 = v13;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136315138;
      sub_10069763C(v5);
      sub_100209458();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v11(v5, v2);
      v44 = sub_100008458(v41, v43, &v54);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "ExportOptions.createDirectories created %s", v39, 0xCu);
      sub_10000BA7C(v40);
    }
  }

  else
  {
LABEL_10:
    v45 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD00E0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000617C(v46, qword_100AECEE0);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v51;
      *v50 = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "ExportOptions.createDirectories error %@", v49, 0xCu);
      sub_100004F84(v50, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

void sub_100697E8C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v87 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v84 - v10;
  __chkstk_darwin(v9);
  v13 = v84 - v12;
  v88 = objc_opt_self();
  v14 = [v88 defaultManager];
  URL._bridgeToObjectiveC()(&unk_100B2F000);
  v16 = v15;
  v90[0] = 0;
  v17 = [v14 removeItemAtURL:v15 error:v90];

  if (v17)
  {
    v84[0] = v11;
    v85 = v6;
    v86 = v13;
    v18 = v5;
    v19 = qword_100AD00E0;
    v20 = v90[0];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_10000617C(v21, qword_100AECEE0);
    v23 = v1;
    v84[1] = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v90[0] = v27;
      *v26 = 136315138;
      sub_100209458();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = sub_100008458(v28, v29, v90);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "ExportOptions.cleanup removed %s", v26, 0xCu);
      sub_10000BA7C(v27);
    }

    v31 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
    swift_beginAccess();
    sub_100161650(v23 + v31, v4);
    v32 = v85;
    v33 = (*(v85 + 48))(v4, 1, v18);
    v34 = v86;
    if (v33 == 1)
    {
      sub_100004F84(v4, &unk_100AD6DD0);
      return;
    }

    v42 = v18;
    (*(v32 + 32))(v86, v4, v18);
    v43 = v88;
    v44 = [v88 defaultManager];
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    v89 = 0;
    v48 = [v44 contentsOfDirectoryAtURL:v46 includingPropertiesForKeys:0 options:0 error:&v89];

    v49 = v89;
    if (v48)
    {
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v49;

      v52 = *(v50 + 16);

      if (v52)
      {
        v53 = v87;
        (*(v32 + 16))(v87, v34, v18);
        v54 = Logger.logObject.getter();
        v55 = v34;
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v89 = v58;
          *v57 = 136315138;
          sub_100209458();
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v60;
          v62 = *(v32 + 8);
          v62(v53, v42);
          v63 = sub_100008458(v59, v61, &v89);

          *(v57 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v54, v56, "ExportOptions.cleanup did not remove %s because it is not empty", v57, 0xCu);
          sub_10000BA7C(v58);

          v62(v55, v42);
        }

        else
        {

          v81 = *(v32 + 8);
          v81(v53, v18);
          v81(v34, v18);
        }

        return;
      }

      v64 = [v43 defaultManager];
      URL._bridgeToObjectiveC()(v65);
      v67 = v66;
      v89 = 0;
      v68 = [v64 removeItemAtURL:v66 error:&v89];

      v69 = v89;
      if (v68)
      {
        v70 = v84[0];
        (*(v32 + 16))(v84[0], v34, v18);
        v71 = v69;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v89 = v75;
          *v74 = 136315138;
          sub_100209458();
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v79 = *(v32 + 8);
          v79(v70, v42);
          v80 = sub_100008458(v76, v78, &v89);

          *(v74 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v72, v73, "ExportOptions.cleanup removed %s", v74, 0xCu);
          sub_10000BA7C(v75);

          v79(v86, v42);
        }

        else
        {

          v83 = *(v32 + 8);
          v83(v70, v18);
          v83(v34, v18);
        }

        return;
      }
    }

    v82 = v89;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v32 + 8))(v34, v18);
  }

  else
  {
    v35 = v90[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100AD00E0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000617C(v36, qword_100AECEE0);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "ExportOptions.cleanup error %@", v39, 0xCu);
    sub_100004F84(v40, &unk_100AD4BB0);
  }

  else
  {
  }
}

id sub_1006987C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportOptions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ExportOptions()
{
  result = qword_100AECF30;
  if (!qword_100AECF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100698984()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100111924();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100698AC0()
{
  result = qword_100AECF40;
  if (!qword_100AECF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECF40);
  }

  return result;
}

uint64_t sub_100698B14(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v7;
  v3[16] = v6;

  return _swift_task_switch(sub_100698C6C, v7, v6);
}

uint64_t sub_100698C6C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  static Date.timeIntervalSinceReferenceDate.getter();
  v0[17] = v5;
  v0[18] = [objc_allocWithZone(type metadata accessor for PrintableHTMLContentController()) init];
  v6 = *(v3 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
  v0[2] = *(v3 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
  v0[3] = v6;
  (*(v2 + 104))(v1, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v1, v4);

  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_100698DFC;
  v8 = v0[12];
  v9 = v0[4];

  return sub_1003C0474(v9, v8);
}

uint64_t sub_100698DFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 160) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);

  return _swift_task_switch(sub_100698F88, v7, v6);
}

uint64_t sub_100698F88()
{
  v1 = v0[20];
  v2 = v0[5];
  v3 = [objc_allocWithZone(UIPrintInteractionController) init];
  v0[21] = v3;
  v4 = [objc_opt_self() printInfo];
  v0[22] = v4;
  [v4 setOutputType:0];
  [v3 setPrintInfo:v4];
  v5 = objc_allocWithZone(type metadata accessor for JournalPrintPageRenderer());
  v6 = v1;
  v7 = [v5 init];
  v8 = [v6 viewPrintFormatter];
  [v7 addPrintFormatter:v8 startingAtPageAtIndex:0];

  [v3 setPrintPageRenderer:v7];
  v9 = static MainActor.shared.getter();
  v0[23] = v9;
  v10 = swift_task_alloc();
  v0[24] = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_100699190;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v9, &protocol witness table for MainActor, 0xD000000000000027, 0x8000000100900930, sub_100699928, v10, &type metadata for () + 8);
}

uint64_t sub_100699190()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_100699374;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1006992B4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006992B4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 136);

  sub_100699450(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100699374()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 136);

  sub_100699450(v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_100699450(double a1)
{
  if (qword_100AD00E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AECEE0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = Current - a1;
    v8 = String.init(format:_:)();
    v10 = sub_100008458(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "ExportOptions.savePDF executed in %ss", v4, 0xCu);
    sub_10000BA7C(v5);
  }
}

void sub_100699608(uint64_t a1, void *a2)
{
  v4 = sub_1000F24EC(&qword_100AECF48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - v6);
  URL._bridgeToObjectiveC()(v6);
  v9 = v8;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100699930;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100699848;
  aBlock[3] = &unk_100A77E68;
  v12 = _Block_copy(aBlock);

  [a2 savePDFToURL:v9 showProgress:0 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1006997D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000F24EC(&qword_100AECF48);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000F24EC(&qword_100AECF48);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100699848(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

unint64_t sub_1006998DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AB00, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100699930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AECF48);

  return sub_1006997D0(a1, a2, a3);
}

uint64_t sub_1006999C4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AECF50);
  v1 = sub_10000617C(v0, qword_100AECF50);
  if (qword_100AD0180 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100699A8C(void *a1)
{
  type metadata accessor for SyncDataMO();
  static SyncDataMO.removeSyncData(context:)();
  static JournalDataUtilities.markAllLocalDataForReuploading(context:)();
  sub_10048EC28(a1);
}

uint64_t type metadata accessor for AdminMenuController()
{
  result = qword_100AECF68;
  if (!qword_100AECF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100699E94@<X0>(uint64_t *a1@<X8>)
{
  sub_1001D26E8(a1);
  KeyPath = swift_getKeyPath();
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v3 = (a1 + *(sub_1000F24EC(&qword_100AECFB8) + 36));
  *v3 = KeyPath;
  v3[1] = v5;

  return v5;
}

uint64_t sub_100699F54()
{
  type metadata accessor for AdminMenuController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100699F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdminMenuController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10069A060()
{
  result = qword_100AECFC0;
  if (!qword_100AECFC0)
  {
    sub_1000F2A18(&qword_100AECFB8);
    sub_10069A0EC();
    sub_10069A144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECFC0);
  }

  return result;
}

unint64_t sub_10069A0EC()
{
  result = qword_100AECFC8;
  if (!qword_100AECFC8)
  {
    type metadata accessor for AdminMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECFC8);
  }

  return result;
}

unint64_t sub_10069A144()
{
  result = qword_100AECFD0;
  if (!qword_100AECFD0)
  {
    sub_1000F2A18(&qword_100AECFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECFD0);
  }

  return result;
}

void sub_10069A1A8(char a1)
{
  v2 = OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType;
  v3 = v1[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType];
  v1[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType] = a1;
  if ([v1 isViewLoaded])
  {
    v4 = v1[v2];
    if (v4 == 5)
    {
      if (v3 == 5)
      {
        return;
      }
    }

    else if (v4 == v3)
    {
      return;
    }

    sub_10069AAB0();
    v5 = v1[v2];
    if (v5 > 2)
    {
      if (v5 == 3)
      {

        sub_10069C014();
      }

      else if (v5 == 4)
      {

        sub_10069C810();
      }
    }

    else if (v1[v2])
    {
      if (v5 == 1)
      {

        sub_10069B310();
      }

      else
      {

        sub_10069B928();
      }
    }

    else
    {

      sub_10069ACF8();
    }
  }
}

void sub_10069A2DC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PermissionViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    [v0 setPreferredContentSize:{280.0, 320.0}];
  }

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    sub_10069AAB0();
    v6 = v0[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        sub_10069C014();
      }

      else if (v6 == 4)
      {
        sub_10069C810();
      }
    }

    else if (v0[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType])
    {
      if (v6 == 1)
      {
        sub_10069B310();
      }

      else
      {
        sub_10069B928();
      }
    }

    else
    {
      sub_10069ACF8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10069A53C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AED028);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UIContentUnavailableConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  UIViewController.contentUnavailableConfiguration.getter();
  if (!v23)
  {
    sub_100004F84(v22, &unk_100ADFC00);
    (*(v7 + 56))(v5, 1, 1, v6);
    return sub_100004F84(v5, &qword_100AED028);
  }

  sub_1000F24EC(&qword_100AD3268);
  v13 = swift_dynamicCast();
  (*(v7 + 56))(v5, v13 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100004F84(v5, &qword_100AED028);
  }

  v19 = *(v7 + 32);
  v20 = v7 + 32;
  v19(v12, v5, v6);
  v23 = v6;
  v24 = &protocol witness table for UIContentUnavailableConfiguration;
  v18 = sub_10001A770(v22);
  (*(v7 + 16))(v9, v12, v6);
  if (*(v0 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v15 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v15(v21, 0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v16(v21, 0);
  v19(v18, v9, v6);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v7 + 8))(v12, v6);
}

void sub_10069AAB0()
{
  v1 = v0[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType];
  if (v1 > 2)
  {
    if (v1 - 3 >= 2)
    {
      return;
    }

    v4 = [v0 view];
    if (!v4)
    {
      goto LABEL_25;
    }

    v3 = v4;
    if (qword_100AD08B0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  if (v0[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType])
  {
    if (v1 == 1)
    {
      v2 = [v0 view];
      if (!v2)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v3 = v2;
      if (qword_100AD07D8 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = [v0 view];
      if (!v6)
      {
LABEL_28:
        __break(1u);
        return;
      }

      v3 = v6;
      if (qword_100AD08A8 == -1)
      {
        goto LABEL_17;
      }
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = v5;
  if (qword_100AD07C8 != -1)
  {
    goto LABEL_21;
  }

LABEL_17:
  v7 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityLabel:v7];

  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  [v8 setAccessibilityContainerType:4];
}

uint64_t sub_10069ACF8()
{
  v0 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v1 = *(v0 - 8);
  v25[1] = v0;
  v26 = v1;
  v2 = v1[8];
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v27 = type metadata accessor for UIContentUnavailableConfiguration();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25[0] = v9;
  String.init(localized:table:bundle:locale:comment:)();
  v15 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v15(v32, 0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v6, v3);
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_10069D55C(v3, v17 + v16);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v6);
  v18 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v18(v32, 0);
  if (qword_100AD0668 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0670 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v19 = v27;
  v32[3] = v27;
  v32[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v26 = sub_10001A770(v32);
  (*(v30 + 16))(v29, v14, v19);
  if (*(v28 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v20 = v29;
  v21 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v21(v31, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v22(v31, 0);
  v23 = v30;
  (*(v30 + 32))(v26, v20, v19);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v23 + 8))(v14, v19);
}

uint64_t sub_10069B310()
{
  v0 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v1 = *(v0 - 8);
  v25[1] = v0;
  v26 = v1;
  v2 = v1[8];
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v27 = type metadata accessor for UIContentUnavailableConfiguration();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25[0] = v9;
  String.init(localized:table:bundle:locale:comment:)();
  v15 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v15(v32, 0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v6, v3);
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_10069D55C(v3, v17 + v16);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v6);
  v18 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v18(v32, 0);
  if (qword_100AD0678 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0680 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v19 = v27;
  v32[3] = v27;
  v32[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v26 = sub_10001A770(v32);
  (*(v30 + 16))(v29, v14, v19);
  if (*(v28 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v20 = v29;
  v21 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v21(v31, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v22(v31, 0);
  v23 = v30;
  (*(v30 + 32))(v26, v20, v19);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v23 + 8))(v14, v19);
}

uint64_t sub_10069B928()
{
  v0 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v34 = *(v0 - 8);
  v1 = *(v34 + 64);
  __chkstk_darwin(v0);
  v2 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v33 - v4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIContentUnavailableConfiguration();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v36 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33[0] = v11;
  v33[1] = v8;
  String.init(localized:table:bundle:locale:comment:)();
  v17 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v17(v40, 0);
  v18 = sub_1000065A8(0, &qword_100AD4420);
  v33[2] = v0;
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v5, v2);
  v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v20 = swift_allocObject();
  sub_10069D55C(v2, v20 + v19);
  v34 = v18;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v5);
  v21 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v21(v40, 0);
  if (qword_100AD0688 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0690 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v5, v2);
  v22 = swift_allocObject();
  sub_10069D55C(v2, v22 + v19);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v5);
  v23 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v23(v40, 0);
  v24 = v38;
  v40[3] = v38;
  v40[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v25 = sub_10001A770(v40);
  (*(v37 + 16))(v36, v16, v24);
  if (*(v35 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v26 = v36;
  v27 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v27(v39, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v28(v39, 0);
  v29 = v37;
  v30 = v25;
  v31 = v38;
  (*(v37 + 32))(v30, v26, v38);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v29 + 8))(v16, v31);
}

uint64_t sub_10069C014()
{
  v0 = type metadata accessor for ImageResource();
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v34 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UIContentUnavailableConfiguration();
  v42 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33[1] = v13;
  v33[2] = v10;
  String.init(localized:table:bundle:locale:comment:)();
  v18 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v18(v44, 0);
  v19 = sub_1000065A8(0, &qword_100AD4420);
  v37 = v2;
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v7, v4);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_10069D55C(v4, v21 + v20);
  v40 = v19;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v7);
  v22 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v22(v44, 0);
  sub_1000065A8(0, &qword_100AE9450);
  if (qword_100AD0D88 != -1)
  {
    swift_once();
  }

  v23 = v36;
  v24 = sub_10000617C(v36, qword_100B317A8);
  (*(v35 + 16))(v34, v24, v23);
  UIImage.init(resource:)();
  UIContentUnavailableConfiguration.image.setter();
  if (qword_100AD06A8 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD06A0 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  swift_storeEnumTagMultiPayload();
  sub_10069D4F8(v7, v4);
  v25 = swift_allocObject();
  sub_10069D55C(v4, v25 + v20);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1001295EC(v7);
  v26 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v26(v44, 0);
  v27 = v38;
  v44[3] = v38;
  v44[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v37 = sub_10001A770(v44);
  (*(v42 + 16))(v41, v17, v27);
  if (*(v39 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v28 = v41;
  v29 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v29(v43, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v30 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v30(v43, 0);
  v31 = v42;
  (*(v42 + 32))(v37, v28, v27);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v31 + 8))(v17, v27);
}

uint64_t sub_10069C810()
{
  v0 = type metadata accessor for ImageResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = v6;
  String.init(localized:table:bundle:locale:comment:)();
  v13 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v13(v31, 0);
  sub_1000065A8(0, &qword_100AE9450);
  if (qword_100AD0D88 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B317A8);
  (*(v1 + 16))(v3, v14, v0);
  UIImage.init(resource:)();
  UIContentUnavailableConfiguration.image.setter();
  if (qword_100AD0698 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD06A0 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  v15 = v29;
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v16(v31, 0);
  v17 = v28;
  v31[3] = v28;
  v31[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v18 = sub_10001A770(v31);
  (*(v27 + 16))(v26, v12, v17);
  if (*(v15 + OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v19 = v26;
  v20 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.title.setter();
  v20(v30, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v21 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v21(v30, 0);
  v23 = v27;
  v22 = v28;
  (*(v27 + 32))(v18, v19, v28);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v23 + 8))(v12, v22);
}

void sub_10069CE4C()
{
  v1 = [v0 presentingViewController];
  if (!v1 || (v2 = v1, v3 = [v1 presentedViewController], v2, !v3) || (v4 = objc_msgSend(v3, "sheetPresentationController"), v3, !v4))
  {
LABEL_17:
    v16 = v0[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton];
    v0[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton] = 0;
    if ((v16 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  v5 = [v4 detents];

  sub_1000065A8(0, &qword_100AD85C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 identifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = v0[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton];
  v0[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton] = v14 & 1;
  if ((v14 & 1) != v15)
  {
LABEL_18:

    [v0 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_10069D084()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
      swift_unknownObjectRetain();
      sub_10017793C(1, v3, v2);
      swift_unknownObjectRelease_n();
    }
  }
}

id sub_10069D120(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7Journal24PermissionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType] = 5;
  v3[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for PermissionViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_10069D240(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal24PermissionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType] = 5;
  v1[OBJC_IVAR____TtC7Journal24PermissionViewController_wantsCancelButton] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PermissionViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10069D304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PermissionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10069D380()
{
  result = qword_100AED020;
  if (!qword_100AED020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED020);
  }

  return result;
}

void sub_10069D3D4()
{
  v0 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = type metadata accessor for UUID();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      sub_1003B7C3C(v2);
      swift_unknownObjectRelease();
      sub_100004F84(v2, &qword_100AD1420);
    }
  }
}

uint64_t sub_10069D4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenSensitiveURLAction.Destination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069D55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenSensitiveURLAction.Destination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10069D674(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = OBJC_IVAR____TtC7Journal35FullScreenWorkoutCollectionViewCell_workoutActivityView;
  type metadata accessor for WorkoutActivityGridView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal35FullScreenWorkoutCollectionViewCell_workoutAsset] = 0;
  v13 = type metadata accessor for FullScreenWorkoutCollectionViewCell();
  v41.receiver = v4;
  v41.super_class = v13;
  v14 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #1.0 }

  v40 = _Q0;
  v20 = v14;
  static UIView.Invalidating.subscript.setter();
  v21 = OBJC_IVAR____TtC7Journal35FullScreenWorkoutCollectionViewCell_workoutActivityView;
  v22 = *&v20[OBJC_IVAR____TtC7Journal35FullScreenWorkoutCollectionViewCell_workoutActivityView];
  v23 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v24 = v22[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v22[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v25 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v22[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v26 = v22;
    v27 = 7;
LABEL_9:
    v30 = *&v22[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v31 = *((swift_isaMask & *v30) + 0x58);
    v32 = v30;
    v31(7, v27);

    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v34;

    sub_1003E9628(0, 0, v11, &unk_10095F870, v36);

    v22[v25] = 1;

    goto LABEL_10;
  }

  if (v24 > 3 && v24 > 6)
  {

    goto LABEL_10;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29 = v22;

  if ((v28 & 1) == 0)
  {
    v27 = v22[v23];
    goto LABEL_9;
  }

LABEL_10:
  v37 = *&v20[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v37 addSubview:*&v20[v21]];
  v38 = *&v20[v21];
  sub_100013178(0.0);

  return v20;
}

void sub_10069DAF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal35FullScreenWorkoutCollectionViewCell_workoutAsset);
}

id sub_10069DB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenWorkoutCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenWorkoutCollectionViewCell()
{
  result = qword_100AED060;
  if (!qword_100AED060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10069DC70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10069DCB0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v129 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v130 = &v115 - v7;
  v8 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v125 = *(v8 - 8);
  v126 = v8;
  __chkstk_darwin(v8);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v10 - 8);
  v131 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v128 = &v115 - v13;
  __chkstk_darwin(v14);
  v16 = &v115 - v15;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v21 - 8);
  v23 = &v115 - v22;
  v24 = type metadata accessor for WorkoutIconAssetMetadata();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v0;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata))
  {
    (*(v25 + 56))(v23, 1, 1, v24, v26);
    goto LABEL_6;
  }

  sub_10008F5F4(v23);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_100004F84(v23, &qword_100AE4280);
    return 0;
  }

  v120 = v24;
  v121 = v3;
  v119 = v25;
  v29 = *(v25 + 32);
  v30 = v28;
  v29(v28, v23);
  static UTType.item.getter();
  v31 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v33 = [v31 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v34 = WorkoutIconAssetMetadata.type.getter();
  if (!v35)
  {
    v36 = v34;
    v37 = [objc_opt_self() mainBundle];
    v135._object = 0x8000000100900C90;
    v38._countAndFlagsBits = 0x74756F6B726F57;
    v38._object = 0xE700000000000000;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v36, v37, v39, v135);
  }

  v40 = v130;
  v41 = v131;
  v42 = String._bridgeToObjectiveC()();

  [v33 setDisplayName:v42];

  WorkoutIconAssetMetadata.startTime.getter();
  v43 = type metadata accessor for Date();
  v44 = *(v43 - 8);
  v122 = *(v44 + 48);
  v123 = v43;
  v117 = v44 + 48;
  v45 = 0;
  if (v122(v16, 1) != 1)
  {
    v45 = Date._bridgeToObjectiveC()().super.isa;
    (*(v44 + 8))(v16, v123);
  }

  [v33 setTimestamp:v45];

  v46 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  v118 = v44;
  if ((v47 & 1) == 0)
  {
    v54 = v46;
    if (qword_100AD04E8 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100940080;
    *(v55 + 56) = &type metadata for Int;
    *(v55 + 64) = &protocol witness table for Int;
    *(v55 + 32) = v54;
    static String.localizedStringWithFormat(_:_:)();

    v56 = String._bridgeToObjectiveC()();

    [v33 setDisplayName:v56];

    v48 = sub_10069EAE4(v30, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter);
    v116 = v57;
    v52 = WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter();
    goto LABEL_16;
  }

  v48 = sub_10069EAE4(v30, &WorkoutIconAssetMetadata.calories.getter, &WorkoutIconAssetMetadata.caloriesBurnt.getter);
  v116 = v49;
  v50 = WorkoutIconAssetMetadata.duration.getter();
  if (v51)
  {
    sub_10069EFE8();
LABEL_16:
    v58 = *&v52;
    v59 = v53;
    goto LABEL_18;
  }

  v58 = *&v50;
  v59 = 0;
LABEL_18:
  v60 = WorkoutIconAssetMetadata.distance.getter();
  if (v61)
  {
    v62 = v60;
    v63 = v61;
    v64 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v64 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      v115 = v33;
      v65 = v30;
      v66 = v40;
      v67 = v48;
      v68 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      if (v70 >= v69 >> 1)
      {
        v68 = sub_10009BCC8((v69 > 1), v70 + 1, 1, v68);
      }

      *(v68 + 2) = v70 + 1;
      v71 = &v68[16 * v70];
      *(v71 + 4) = v62;
      *(v71 + 5) = v63;
      v41 = v131;
      v48 = v67;
      v40 = v66;
      v30 = v65;
      v33 = v115;
      if (v59)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  v68 = _swiftEmptyArrayStorage;
  if (v59)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v58 > 0.0)
  {
    v72 = v41;
    static Duration.seconds(_:)();
    v73 = Duration.formatted()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v127;
    v76 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_10009BCC8(0, *(v68 + 2) + 1, 1, v68);
    }

    v78 = *(v68 + 2);
    v77 = *(v68 + 3);
    if (v78 >= v77 >> 1)
    {
      v68 = sub_10009BCC8((v77 > 1), v78 + 1, 1, v68);
    }

    *(v68 + 2) = v78 + 1;
    *&v68[16 * v78 + 32] = v73;
    v48 = v76;
    v41 = v72;
    v40 = v130;
    v79 = v116;
    if (!v116)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_35:
  v75 = v127;
  v79 = v116;
  if (v116)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_10009BCC8(0, *(v68 + 2) + 1, 1, v68);
    }

    v81 = *(v68 + 2);
    v80 = *(v68 + 3);
    if (v81 >= v80 >> 1)
    {
      v68 = sub_10009BCC8((v80 > 1), v81 + 1, 1, v68);
    }

    *(v68 + 2) = v81 + 1;
    v82 = &v68[16 * v81];
    *(v82 + 4) = v48;
    *(v82 + 5) = v79;
  }

LABEL_41:
  v83 = WorkoutIconAssetMetadata.mindfulnessHeartRate.getter();
  if ((v84 & 1) == 0 || (v83 = WorkoutIconAssetMetadata.averageGroupHeartRateBPM.getter(), (v85 & 1) == 0))
  {
    v132 = v83;
    v86 = v124;
    static FormatStyle<>.beatsPerMinute.getter();
    sub_10009BA68();
    sub_10004D1DC(&qword_100AEC7A0, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v87 = v126;
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v125 + 8))(v86, v87);
    v88 = v133;
    v89 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_10009BCC8(0, *(v68 + 2) + 1, 1, v68);
    }

    v91 = *(v68 + 2);
    v90 = *(v68 + 3);
    if (v91 >= v90 >> 1)
    {
      v68 = sub_10009BCC8((v90 > 1), v91 + 1, 1, v68);
    }

    *(v68 + 2) = v91 + 1;
    v92 = &v68[16 * v91];
    *(v92 + 4) = v88;
    *(v92 + 5) = v89;
  }

  sub_10008E398(0, 1);
  v93 = type metadata accessor for URL();
  v94 = *(v93 - 8);
  v96 = 0;
  if ((*(v94 + 48))(v40, 1, v93) != 1)
  {
    URL._bridgeToObjectiveC()(v95);
    v96 = v97;
    (*(v94 + 8))(v40, v93);
  }

  [v33 setThumbnailURL:v96];

  v133 = v68;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  BidirectionalCollection<>.joined(separator:)();

  v98 = String._bridgeToObjectiveC()();

  [v33 setContentDescription:v98];

  WorkoutIconAssetMetadata.startTime.getter();
  v99 = v123;
  if ((v122)(v41, 1, v123) == 1)
  {
    v100 = *(v75 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    v101 = v128;
    if (v100 && (v102 = [v100 entry]) != 0)
    {
      v103 = v102;
      JournalEntryMO.displayDate.getter();

      v104 = 0;
    }

    else
    {
      v104 = 1;
    }

    (*(v118 + 56))(v101, v104, 1, v99);
    if ((v122)(v41, 1, v99) != 1)
    {
      sub_100004F84(v41, &unk_100AD4790);
    }
  }

  else
  {
    v105 = v118;
    v101 = v128;
    (*(v118 + 32))(v128, v41, v99);
    (*(v105 + 56))(v101, 0, 1, v99);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v106 = String.init(localized:table:bundle:locale:comment:)();
  v108 = v107;
  sub_1000F24EC(&unk_100AD9A60);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_100940080;
  v110 = sub_10012C00C(v106, v108, v101);
  v112 = v111;

  *(v109 + 32) = v110;
  *(v109 + 40) = v112;
  v113 = Array._bridgeToObjectiveC()().super.isa;

  [v33 setAlternateNames:v113];

  sub_100004F84(v101, &unk_100AD4790);
  (*(v119 + 8))(v30, v120);
  return v33;
}

uint64_t sub_10069EAE4(uint64_t a1, uint64_t (*a2)(__n128), void (*a3)(uint64_t))
{
  v41 = a3;
  v42 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v5 - 8);
  v39 = &v31 - v6;
  v7 = sub_1000F24EC(&qword_100AD8D40);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1000F24EC(&qword_100AD8D48);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_1000F24EC(&qword_100AD8D50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v17 = sub_1000F24EC(&qword_100AD8D58);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  result = v42(v19);
  if (!v23)
  {
    v32 = v21;
    v33 = v16;
    v34 = v18;
    v35 = v14;
    v42 = v10;
    v24 = v39;
    v41(result);
    if (v25)
    {
      return 0;
    }

    else
    {
      v26 = [objc_opt_self() kilocalories];
      sub_10069F510();
      v27 = v32;
      Measurement.init(value:unit:)();
      static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
      static MeasurementFormatUnitUsage<>.workout.getter();
      static Locale.autoupdatingCurrent.getter();
      sub_10009BA68();
      FloatingPointFormatStyle.init(locale:)();
      v28 = sub_1000F24EC(&qword_100AD8D68);
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      v29 = v33;
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v24, &qword_100AD8D38);
      (*(v37 + 8))(v9, v38);
      (*(v36 + 8))(v12, v42);
      sub_10000B58C(&qword_100AD8D70, &qword_100AD8D50);
      Measurement<>.formatted<A>(_:)();
      (*(v35 + 8))(v29, v13);
      countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

      (*(v34 + 8))(v27, v17);
      return countAndFlagsBits;
    }
  }

  return result;
}

double sub_10069EFE8()
{
  v0 = type metadata accessor for Calendar();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  WorkoutIconAssetMetadata.startTime.getter();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  WorkoutIconAssetMetadata.endTime.getter();
  if (v18(v7, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v7, 1, v11) != 1)
    {
      sub_100004F84(v7, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v7, v11);
  }

  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10005FF80(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v28;
  Calendar.dateComponents(_:from:to:)();

  (*(v31 + 8))(v2, v32);
  v24 = DateComponents.second.getter();
  (*(v29 + 8))(v23, v30);
  v25 = *(v12 + 8);
  v25(v14, v11);
  v25(v17, v11);
  return v24;
}

unint64_t sub_10069F510()
{
  result = qword_100AD8D60;
  if (!qword_100AD8D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8D60);
  }

  return result;
}

uint64_t sub_10069F55C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AED0E8);
  sub_10000617C(v0, qword_100AED0E8);
  return Logger.init(subsystem:category:)();
}

char *sub_10069F5DC(void *a1, void *a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_indexTimeKeeper;
  type metadata accessor for IndexTimeKeeper();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = 1;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_protectedDataObservationTask] = 0;
  v10 = type metadata accessor for JournalCoreDataSpotlightDelegate();
  v18.receiver = v2;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, "initForStoreWithDescription:coordinator:", a1, a2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v15 = v11;
  v16 = sub_1004EC158(0, 0, v7, &unk_100962A08, v14);

  *&v15[OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_protectedDataObservationTask] = v16;

  return v15;
}

uint64_t sub_10069F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_1000F24EC(&qword_100AED218);
  v4[12] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AED220);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AED228);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for ProtectedData.ProtectedDataState();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10069F998, 0, 0);
}

uint64_t sub_10069F998()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  *(v0 + 224) = enum case for ProtectedData.ProtectedDataState.available(_:);
  (*(v4 + 104))(v2);
  v5 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v6 = *(v4 + 8);
  *(v0 + 200) = v6;
  *(v0 + 208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    if (qword_100AD00F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AED0E8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Calling startSpotlightIndexing()", v10, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong startSpotlightIndexing];
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_1006A0380();
    }
  }

  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 104);
  static ProtectedData.shared.getter();
  ProtectedData.stateStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v16 + 8))(v15, v17);
  swift_beginAccess();
  v18 = enum case for ProtectedData.ProtectedDataState.unavailable(_:);
  *(v0 + 228) = enum case for ProtectedData.ProtectedDataState.becomingUnavailable(_:);
  *(v0 + 232) = v18;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_10069FCA0;
  v20 = *(v0 + 128);
  v21 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v21, 0, 0, v20);
}

uint64_t sub_10069FCA0()
{

  return _swift_task_switch(sub_10069FD9C, 0, 0);
}

uint64_t sub_10069FD9C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    goto LABEL_11;
  }

  (*(v2 + 32))(*(v0 + 176), v3, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0 + 200))(*(v0 + 176), *(v0 + 152));
LABEL_11:
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v18 = *(v0 + 8);

    return v18();
  }

  v5 = Strong;
  v6 = *(v0 + 224);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  (*(v9 + 16))(v7, *(v0 + 176), v8);
  v10 = (*(v9 + 88))(v7, v8);
  if (v10 == v6)
  {
    if (([v5 isIndexingEnabled] & 1) == 0)
    {
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000617C(v11, qword_100AED0E8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "ProtectedData became available, calling startSpotlightIndexing()", v14, 2u);
      }

      v15 = *(v0 + 200);
      v16 = *(v0 + 176);
      v17 = *(v0 + 152);

      [v5 startSpotlightIndexing];
      sub_1006A0380();
LABEL_25:

      v15(v16, v17);
LABEL_27:
      v25 = swift_task_alloc();
      *(v0 + 216) = v25;
      *v25 = v0;
      v25[1] = sub_10069FCA0;
      v26 = *(v0 + 128);
      v27 = *(v0 + 96);

      return AsyncStream.Iterator.next(isolation:)(v27, 0, 0, v26);
    }

    goto LABEL_26;
  }

  if (v10 == *(v0 + 228) || v10 == *(v0 + 232))
  {
    if ([v5 isIndexingEnabled])
    {
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000617C(v21, qword_100AED0E8);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "ProtectedData became or is becoming unavailable, calling stopSpotlightIndexing()", v24, 2u);
      }

      v15 = *(v0 + 200);
      v16 = *(v0 + 176);
      v17 = *(v0 + 152);

      [v5 stopSpotlightIndexing];
      goto LABEL_25;
    }

LABEL_26:
    (*(v0 + 200))(*(v0 + 176), *(v0 + 152));

    goto LABEL_27;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

id sub_1006A01F4()
{
  if (*&v0[OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_protectedDataObservationTask])
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalCoreDataSpotlightDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006A0380()
{
  v1 = v0;
  v2 = type metadata accessor for ProtectedData.ProtectedDataState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v3 + 104))(v5, enum case for ProtectedData.ProtectedDataState.available(_:), v2);
  v9 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = *(sub_1006A2820() + 16);

    if (v11)
    {
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000617C(v12, qword_100AED0E8);
      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        v17 = *(sub_1006A2820() + 16);

        *(v16 + 4) = v17;

        _os_log_impl(&_mh_execute_header, v14, v15, "Reindexing %ld missed objects.", v16, 0xCu);
      }

      else
      {

        v14 = v13;
      }

      v18 = objc_allocWithZone(CSSearchableIndex);
      v19 = NSFileProtectionCompleteUnlessOpen;
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      v22 = [v18 initWithName:v20 protectionClass:v19 bundleIdentifier:v21];

      v23 = sub_1006A2820();
      v24 = v23;
      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = sub_1003E745C(*(v23 + 16), 0);
        v27 = sub_1001C16E4(aBlock, v26 + 4, v25, v24);
        sub_100014FF8();
        if (v27 == v25)
        {
LABEL_12:
          isa = Array._bridgeToObjectiveC()().super.isa;

          aBlock[4] = DebugData.init(name:);
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006C7C;
          aBlock[3] = &unk_100A78198;
          v29 = _Block_copy(aBlock);
          [v13 searchableIndex:v22 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v29];
          _Block_release(v29);

          return;
        }

        __break(1u);
      }

      goto LABEL_12;
    }
  }
}

void *sub_1006A0774(char *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v246 = &v232 - v3;
  v4 = type metadata accessor for JournalFeatureFlags();
  v238 = *(v4 - 8);
  v239 = v4;
  __chkstk_darwin(v4);
  v240 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsKey();
  v242 = *(v6 - 8);
  v243 = v6;
  __chkstk_darwin(v6);
  v241 = &v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v244 = v8;
  v245 = v9;
  __chkstk_darwin(v8);
  v11 = &v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v232 - v13;
  __chkstk_darwin(v15);
  v17 = &v232 - v16;
  __chkstk_darwin(v18);
  v20 = &v232 - v19;
  __chkstk_darwin(v21);
  v23 = &v232 - v22;
  v24 = type metadata accessor for ProtectedData.ProtectedDataState();
  v248 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v232 - v28;
  v30 = sub_1000F24EC(&qword_100AED208);
  __chkstk_darwin(v30 - 8);
  v237 = &v232 - v31;
  v236 = type metadata accessor for JournalEntity();
  v235 = *(v236 - 1);
  __chkstk_darwin(v236);
  v234 = &v232 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntryMO();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = a1;
    v36 = a1;
    if ([v34 isRemovedFromCloud] & 1) != 0 || (objc_msgSend(v34, "isDraft") & 1) != 0 || (JournalEntryMO.isPermanentlyDeleted.getter())
    {
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000617C(v37, qword_100AED0E8);
      v38 = v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v55 = sub_10022E46C();
    if (v55)
    {
      v56 = v55;
      v57 = v36;
      v248 = v56;
      v58 = v56;
      v59 = [v34 managedObjectContext];
      v60 = v247;
      if (!v59)
      {
        v59 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v34, 0, 0, v59);
      v61 = v237;
      sub_10067B0A8(v237);

      v99 = (*(v235 + 6))(v61, 1, v236);
      if (v99 == 1)
      {

        sub_100004F84(v61, &qword_100AED208);
      }

      else
      {
        v169 = v61;
        v170 = v234;
        sub_100237BBC(v169, v234);
        sub_1006A2AD0();
        CSSearchableItemAttributeSet.associateAppEntity<A>(_:priority:)();

        sub_100542920(v170);
      }

      goto LABEL_69;
    }

    goto LABEL_34;
  }

  v233 = v23;
  v234 = v17;
  v236 = v26;
  v237 = v29;
  v232 = v14;
  v235 = v20;
  type metadata accessor for JournalEntryAssetMO();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
LABEL_30:
      v248 = 0;
      v60 = v247;
LABEL_70:
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v171 = type metadata accessor for Logger();
      sub_10000617C(v171, qword_100AED0E8);
      v172 = a1;
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        *v175 = 138412290;
        v177 = [v172 objectID];
        *(v175 + 4) = v177;
        *v176 = v177;
        _os_log_impl(&_mh_execute_header, v173, v174, "NSCoreDataCoreSpotlightDelegate.attributeSet indexed: %@", v175, 0xCu);
        sub_100004F84(v176, &unk_100AD4BB0);
      }

      v178 = type metadata accessor for TaskPriority();
      v179 = v246;
      (*(*(v178 - 8) + 56))(v246, 1, 1, v178);
      v180 = swift_allocObject();
      v180[2] = 0;
      v180[3] = 0;
      v180[4] = v60;
      v181 = v60;
      sub_1003E9628(0, 0, v179, &unk_1009629F0, v180);

      return v248;
    }

    v49 = v48;
    v50 = a1;
    v51 = [v49 asset];
    if (!v51)
    {
LABEL_37:
      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_10000617C(v94, qword_100AED0E8);
      v38 = v50;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_41;
      }

LABEL_40:
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      v97 = [v38 objectID];
      *(v95 + 4) = v97;
      *v96 = v97;
      _os_log_impl(&_mh_execute_header, v39, v40, "NSCoreDataCoreSpotlightDelegate.attributeSet skipped: %@", v95, 0xCu);
      sub_100004F84(v96, &unk_100AD4BB0);

LABEL_41:

      return 0;
    }

    v52 = v51;
    v53 = [v51 entry];
    if (!v53)
    {
      v54 = v52;
      goto LABEL_36;
    }

    v54 = v53;
    if ([v53 isRemovedFromCloud])
    {

LABEL_36:
      goto LABEL_37;
    }

    v234 = v50;
    v233 = v54;
    v101 = v238;
    v100 = v239;
    v102 = v240;
    (*(v238 + 104))(v240, enum case for JournalFeatureFlags.search(_:), v239);
    v103 = JournalFeatureFlags.isEnabled.getter();
    (*(v101 + 8))(v102, v100);
    if ((v103 & 1) == 0)
    {
      v182 = objc_allocWithZone(CSSearchableIndex);
      v183 = NSFileProtectionCompleteUnlessOpen;
      v184 = String._bridgeToObjectiveC()();
      v185 = String._bridgeToObjectiveC()();
      v186 = [v182 initWithName:v184 protectionClass:v183 bundleIdentifier:v185];

      sub_1000F24EC(&unk_100AD9A60);
      v187 = swift_allocObject();
      *(v187 + 16) = xmmword_100940080;
      v188 = [v52 objectID];
      v189 = [v188 URIRepresentation];

      v190 = v235;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v191 = URL.absoluteString.getter();
      v193 = v192;
      (*(v245 + 8))(v190, v244);
      *(v187 + 32) = v191;
      *(v187 + 40) = v193;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v255 = DebugData.init(name:);
      v256 = 0;
      aBlock = _NSConcreteStackBlock;
      v252 = 1107296256;
      v253 = sub_100006C7C;
      v254 = &unk_100A781E8;
      v195 = _Block_copy(&aBlock);
      [v247 searchableIndex:v186 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v195];

      _Block_release(v195);
      return 0;
    }

    v240 = v52;
    type metadata accessor for ProtectedData();
    static ProtectedData.shared.getter();
    v104 = v237;
    ProtectedData.state.getter();

    v105 = v248;
    v60 = v236;
    (v248[13])(v236, enum case for ProtectedData.ProtectedDataState.available(_:), v24);
    v106 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
    v107 = v105[1];
    v107(v60, v24);
    v107(v104, v24);
    v108 = v244;
    v109 = v245;
    if (v106)
    {
      v110 = [v234 objectID];
      v111 = [v110 URIRepresentation];

      v112 = v232;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = URL.absoluteString.getter();
      v115 = v114;
      v116 = *(v109 + 8);
      v35 = (v109 + 8);
      v116(v112, v108);
      v250 = sub_1006A2820();
      v117 = sub_10044AAC8(v113, v115);
      v119 = v118;

      v120 = v250;
      sub_100026188();
      v121 = static NSUserDefaults.shared.getter();
      v122 = *(v120 + 16);
      v248 = v117;
      if (v122)
      {
        v123 = sub_1003E745C(v122, 0);
        v124 = sub_1001C16E4(&aBlock, v123 + 4, v122, v120);
        sub_100014FF8();
        if (v124 != v122)
        {
          __break(1u);

          goto LABEL_69;
        }
      }

      else
      {
      }

      v210 = Array._bridgeToObjectiveC()().super.isa;

      v211 = v241;
      v212 = v242;
      v213 = v243;
      (*(v242 + 104))(v241, enum case for SettingsKey.objectURIsNeedingSpotlightReindexing(_:), v243);
      SettingsKey.rawValue.getter();
      (*(v212 + 8))(v211, v213);
      v214 = String._bridgeToObjectiveC()();

      [v121 setObject:v210 forKey:v214];

      v11 = v234;
      v207 = v240;
      if (!v119)
      {
LABEL_92:
        v248 = sub_10022FDF0();

        v60 = v247;
        goto LABEL_70;
      }

      v196 = a1;
      a1 = *(sub_1006A2820() + 16);

      if (qword_100AD00F0 == -1)
      {
LABEL_82:
        v215 = type metadata accessor for Logger();
        sub_10000617C(v215, qword_100AED0E8);

        v216 = Logger.logObject.getter();
        v217 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v216, v217))
        {
          v218 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          aBlock = v219;
          *v218 = 136315394;
          v220 = sub_100008458(v248, v119, &aBlock);

          *(v218 + 4) = v220;
          *(v218 + 12) = 2048;
          *(v218 + 14) = a1;
          _os_log_impl(&_mh_execute_header, v216, v217, "Indexing missed object %s. Total remaining: %ld", v218, 0x16u);
          sub_10000BA7C(v219);
          v11 = v234;
        }

        else
        {
        }

        a1 = v196;
        goto LABEL_92;
      }

LABEL_94:
      swift_once();
      goto LABEL_82;
    }

    v196 = v234;
    v197 = [v234 objectID];
    v198 = [v197 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v199 = URL.absoluteString.getter();
    v201 = v200;
    (*(v109 + 8))(v11, v108);
    v249 = sub_1006A2820();
    sub_100286DEC(&v250, v199, v201);

    v202 = v249;
    sub_100026188();
    v119 = static NSUserDefaults.shared.getter();
    v203 = *(v202 + 16);
    if (v203)
    {
      v204 = sub_1003E745C(*(v202 + 16), 0);
      v205 = sub_1001C16E4(&aBlock, v204 + 4, v203, v202);
      sub_100014FF8();
      v206 = v243;
      v207 = v240;
      if (v205 != v203)
      {
        __break(1u);
        goto LABEL_94;
      }

      v209 = v241;
      v208 = v242;
    }

    else
    {

      v208 = v242;
      v206 = v243;
      v207 = v240;
      v209 = v241;
    }

    v221 = Array._bridgeToObjectiveC()().super.isa;

    (*(v208 + 104))(v209, enum case for SettingsKey.objectURIsNeedingSpotlightReindexing(_:), v206);
    SettingsKey.rawValue.getter();
    (*(v208 + 8))(v209, v206);
    v222 = String._bridgeToObjectiveC()();

    [v119 setObject:v221 forKey:v222];

    v223 = *(sub_1006A2820() + 16);

    if (qword_100AD00F0 != -1)
    {
      swift_once();
    }

    v224 = type metadata accessor for Logger();
    sub_10000617C(v224, qword_100AED0E8);
    v225 = v233;
    v226 = Logger.logObject.getter();
    v227 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      *v228 = 138412546;
      v230 = [v225 objectID];
      *(v228 + 4) = v230;
      *v229 = v230;
      *(v228 + 12) = 2048;
      *(v228 + 14) = v223;
      _os_log_impl(&_mh_execute_header, v226, v227, "Skipping indexing of %@ because ProtectedData is not available. Will reindex when ProtectedData becomes available. Total missed objects: %ld", v228, 0x16u);
      sub_100004F84(v229, &unk_100AD4BB0);
    }

    v231 = [objc_allocWithZone(CSSearchableItemAttributeSet) init];
    return v231;
  }

  v42 = v41;
  v43 = a1;
  v44 = [v42 entry];
  v45 = v248;
  if (!v44)
  {
    goto LABEL_13;
  }

  v35 = v44;
  v46 = v24;
  if ([v44 isRemovedFromCloud])
  {

LABEL_13:
    if (qword_100AD00F0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000617C(v47, qword_100AED0E8);
    v38 = v43;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v62 = v237;
  ProtectedData.state.getter();

  v63 = v236;
  v45[13](v236, enum case for ProtectedData.ProtectedDataState.available(_:), v24);
  v64 = v45;
  v65 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v66 = v64[1];
  v66(v63, v46);
  v66(v62, v46);
  if (v65)
  {
    v248 = v42;
    v236 = v35;
    v237 = a1;
    v67 = [v43 objectID];
    v68 = [v67 URIRepresentation];

    v69 = v233;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = URL.absoluteString.getter();
    v72 = v71;
    v73 = v244;
    a1 = *(v245 + 8);
    v245 += 8;
    (a1)(v69, v244);
    v250 = sub_1006A2820();
    v74 = sub_10044AAC8(v70, v72);
    v76 = v75;

    v77 = v250;
    sub_100026188();
    v78 = static NSUserDefaults.shared.getter();
    v79 = *(v77 + 16);
    v232 = v43;
    v234 = a1;
    if (v79)
    {
      v80 = sub_1003E745C(v79, 0);
      v81 = sub_1001C16E4(&aBlock, v80 + 4, v79, v77);
      sub_100014FF8();
      if (v81 != v79)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
    }

    v125 = Array._bridgeToObjectiveC()().super.isa;

    v126 = v241;
    v127 = v242;
    v128 = v243;
    (*(v242 + 104))(v241, enum case for SettingsKey.objectURIsNeedingSpotlightReindexing(_:), v243);
    SettingsKey.rawValue.getter();
    (*(v127 + 8))(v126, v128);
    v129 = String._bridgeToObjectiveC()();

    [v78 setObject:v125 forKey:v129];

    v130 = v235;
    v132 = v238;
    v131 = v239;
    v133 = v240;
    if (v76)
    {
      v134 = *(sub_1006A2820() + 16);

      if (qword_100AD00F0 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      sub_10000617C(v135, qword_100AED0E8);

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        aBlock = v139;
        *v138 = 136315394;
        v140 = sub_100008458(v74, v76, &aBlock);

        *(v138 + 4) = v140;
        *(v138 + 12) = 2048;
        *(v138 + 14) = v134;
        _os_log_impl(&_mh_execute_header, v136, v137, "Indexing missed object %s. Total remaining: %ld", v138, 0x16u);
        sub_10000BA7C(v139);

        v133 = v240;
      }

      else
      {
      }

      v73 = v244;
    }

    v248 = sub_10022F114();
    (*(v132 + 104))(v133, enum case for JournalFeatureFlags.search(_:), v131);
    v154 = JournalFeatureFlags.isEnabled.getter();
    (*(v132 + 8))(v133, v131);
    if (v154)
    {
      v155 = objc_allocWithZone(CSSearchableIndex);
      v156 = NSFileProtectionCompleteUnlessOpen;
      v157 = String._bridgeToObjectiveC()();
      v158 = String._bridgeToObjectiveC()();
      v159 = [v155 initWithName:v157 protectionClass:v156 bundleIdentifier:v158];

      sub_1000F24EC(&unk_100AD9A60);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100940080;
      v161 = v236;
      v162 = [v236 objectID];
      v163 = [v162 URIRepresentation];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v164 = URL.absoluteString.getter();
      v166 = v165;
      (v234)(v130, v73);
      *(v160 + 32) = v164;
      *(v160 + 40) = v166;
      v167 = Array._bridgeToObjectiveC()().super.isa;

      v255 = DebugData.init(name:);
      v256 = 0;
      aBlock = _NSConcreteStackBlock;
      v252 = 1107296256;
      v253 = sub_100006C7C;
      v254 = &unk_100A78210;
      v168 = _Block_copy(&aBlock);
      v60 = v247;
      [v247 searchableIndex:v159 reindexSearchableItemsWithIdentifiers:v167 acknowledgementHandler:v168];

      _Block_release(v168);
    }

    else
    {

      v60 = v247;
    }

    a1 = v237;
    goto LABEL_70;
  }

  v82 = [v43 objectID];
  v83 = [v82 URIRepresentation];

  v84 = v234;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = URL.absoluteString.getter();
  v87 = v86;
  (*(v245 + 8))(v84, v244);
  v249 = sub_1006A2820();
  sub_100286DEC(&v250, v85, v87);

  v88 = v249;
  sub_100026188();
  v89 = static NSUserDefaults.shared.getter();
  v36 = *(v88 + 16);
  if (v36)
  {
    v90 = v43;
    v91 = sub_1003E745C(*(v88 + 16), 0);
    v92 = sub_1001C16E4(&aBlock, v91 + 4, v36, v88);
    sub_100014FF8();
    v93 = v243;
    if (v92 != v36)
    {
      __break(1u);
LABEL_34:

      v248 = 0;
      v60 = v247;
LABEL_69:
      a1 = v35;
      goto LABEL_70;
    }
  }

  else
  {
    v90 = v43;

    v93 = v243;
  }

  v142 = v241;
  v141 = v242;
  v143 = Array._bridgeToObjectiveC()().super.isa;

  (*(v141 + 104))(v142, enum case for SettingsKey.objectURIsNeedingSpotlightReindexing(_:), v93);
  SettingsKey.rawValue.getter();
  (*(v141 + 8))(v142, v93);
  v144 = String._bridgeToObjectiveC()();

  [v89 setObject:v143 forKey:v144];

  v145 = *(sub_1006A2820() + 16);

  if (qword_100AD00F0 != -1)
  {
    swift_once();
  }

  v146 = type metadata accessor for Logger();
  sub_10000617C(v146, qword_100AED0E8);
  v147 = v35;
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v150 = 138412546;
    v152 = [v147 objectID];
    *(v150 + 4) = v152;
    *v151 = v152;
    *(v150 + 12) = 2048;
    *(v150 + 14) = v145;
    _os_log_impl(&_mh_execute_header, v148, v149, "Skipping indexing of %@ because ProtectedData is not available. Will reindex when ProtectedData becomes available. Total missed objects: %ld", v150, 0x16u);
    sub_100004F84(v151, &unk_100AD4BB0);
  }

  v153 = [objc_allocWithZone(CSSearchableItemAttributeSet) init];
  return v153;
}

uint64_t sub_1006A2720()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_indexTimeKeeper);
  *(v0 + 24) = v1;
  *(v0 + 32) = CFAbsoluteTimeGetCurrent();

  return _swift_task_switch(sub_1006A279C, v1, 0);
}

uint64_t sub_1006A279C()
{
  v1 = *(v0 + 24);
  *(v1 + 112) = *(v0 + 32);
  *(v1 + 120) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_1006A2820()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.objectURIsNeedingSpotlightReindexing(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_100004F84(v13, &qword_100AD13D0);
    goto LABEL_8;
  }

  sub_1000F24EC(&qword_100AD60A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v7 = v10[1];
LABEL_9:
  v8 = sub_100891094(v7);

  return v8;
}

uint64_t sub_1006A2A1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1006A2700(a1, v4, v5, v6);
}

unint64_t sub_1006A2AD0()
{
  result = qword_100AED210;
  if (!qword_100AED210)
  {
    type metadata accessor for JournalEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED210);
  }

  return result;
}

uint64_t sub_1006A2B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10069F7AC(a1, v4, v5, v6);
}

id sub_1006A2BEC()
{
  v1 = v0;
  v2 = type metadata accessor for CustomJournalEmojiIconCellContentView();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView;
  *&v3[v4] = sub_1006A2FC8();
  *&v3[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel] = 0;
  *&v3[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField] = 0;
  v5 = *(v1 + 16);
  v16 = *v1;
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = &v3[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration];
  *v9 = v16;
  v9[1] = v5;
  v10 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v10;
  sub_1006A4130(&v16, v15);
  v11 = v7;
  sub_100021E80(v6);
  sub_100021E80(v8);
  v14.receiver = v3;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1006A34D8();
  sub_1006A38E0(v1);

  sub_1006A41A0();
  return v12;
}

uint64_t sub_1006A2D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE6AC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100086C04(a1, v30);
  sub_1000F24EC(&qword_100AE6AD0);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    v14 = v2[7];
    v15 = v2[4];
    v16 = v2[5];
    v17 = v2[3];
    v18 = *v2;
    v19 = v2[1];
    v28 = v2[6];
    v29 = v18;
    sub_100021E80(v28);
    sub_100021E80(v15);

    v20 = v17;
    v21 = UICellConfigurationState.isSelected.getter();
    v22 = v11;
    v23 = v29;
    result = (*(v9 + 8))(v22, v8);
    v25 = v28;
  }

  else
  {
    v13(v7, 1, 1, v8);
    sub_100004F84(v7, &qword_100AE6AC8);
    v23 = *v2;
    v19 = v2[1];
    v26 = v2[3];
    v15 = v2[4];
    v16 = v2[5];
    v25 = v2[6];
    v14 = v2[7];
    v21 = *(v2 + 16);

    v20 = v26;
    sub_100021E80(v15);
    result = sub_100021E80(v25);
  }

  *a2 = v23;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v25;
  *(a2 + 56) = v14;
  return result;
}

double sub_1006A2F88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1006A2D04(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

id sub_1006A2FC8()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setContentMode:1];

  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTintColor:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  [v0 setImage:v3];
  return v0;
}

id sub_1006A30DC()
{
  v1 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setTextAlignment:1];
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 setFont:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*sub_1006A31C0(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[43] = v1;
  v5 = (v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration);
  v7 = *(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration + 8);
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v13 = v5[7];
  v3[27] = &type metadata for CustomJournalEmojiIconContentConfiguration;
  v3[28] = sub_1005A5938();
  v14 = swift_allocObject();
  v4[24] = v14;
  v14[2] = v7;
  v14[3] = v6;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v14[7] = v11;
  v14[8] = v12;
  v14[9] = v13;

  v15 = v9;
  sub_100021E80(v10);
  sub_100021E80(v12);
  return sub_1006A32C4;
}

void sub_1006A32C4(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_100086C04(*a1 + 192, *a1 + 232);
  if (a2)
  {
    sub_100086C04(v3 + 232, v3 + 272);
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 144);
      *v3 = *(v3 + 128);
      *(v3 + 16) = v4;
      v5 = *(v3 + 176);
      *(v3 + 32) = *(v3 + 160);
      *(v3 + 48) = v5;
      sub_1006A38E0(v3);
      *(v3 + 328) = *v3;
      sub_100004F84(v3 + 328, &unk_100AE4870);

      sub_100004DF8(*(v3 + 32));
      sub_100004DF8(*(v3 + 48));
    }

    sub_10000BA7C(v3 + 232);
  }

  else
  {
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v6 = *(v3 + 144);
      *(v3 + 64) = *(v3 + 128);
      *(v3 + 80) = v6;
      v7 = *(v3 + 176);
      *(v3 + 96) = *(v3 + 160);
      *(v3 + 112) = v7;
      sub_1006A38E0((v3 + 64));
      *(v3 + 312) = *(v3 + 64);
      sub_100004F84(v3 + 312, &unk_100AE4870);

      sub_100004DF8(*(v3 + 96));
      sub_100004DF8(*(v3 + 112));
    }
  }

  sub_10000BA7C(v3 + 192);

  free(v3);
}

id sub_1006A34D8()
{
  v1 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView]];
  v2 = sub_1006A30DC();
  [v0 addSubview:v2];

  v32 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100957D10;
  v4 = [*&v0[v1] leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintLessThanOrEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] centerXAnchor];
  v11 = [v0 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  v16 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel;
  v17 = [*&v0[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];

  *(v3 + 64) = v19;
  v20 = [*&v0[v16] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21];

  *(v3 + 72) = v22;
  v23 = [*&v0[v16] centerXAnchor];
  v24 = [v0 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v3 + 80) = v25;
  v26 = [*&v0[v16] centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v3 + 88) = v28;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

  v30 = *&v0[v16];

  return [v30 setHidden:1];
}

uint64_t sub_1006A38E0(__int128 *a1)
{
  if (a1[1])
  {
    sub_1006A3A9C();
  }

  else
  {
    sub_1006A3B90();
    if (*(a1 + 1))
    {
      v3 = sub_1006A30DC();
      v4 = String._bridgeToObjectiveC()();
      [v3 setText:v4];

      [*(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView) setHidden:1];
    }

    else
    {
      v5 = sub_1006A30DC();
      [v5 setText:0];

      [*(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView____lazy_storage___emojiLabel) setHidden:1];
      [*(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView) setHidden:0];
    }
  }

  v6 = *(a1 + 3);
  [*(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView) setTintColor:v6];
  v7 = v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration;
  v8 = a1[1];
  v18 = *a1;
  v9 = *(a1 + 4);
  v10 = *(a1 + 6);
  v12 = *(v7 + 24);
  v11 = *(v7 + 32);
  v16 = *(v7 + 48);
  *v7 = v18;
  *(v7 + 16) = v8;
  v13 = a1[3];
  *(v7 + 32) = a1[2];
  *(v7 + 48) = v13;
  sub_1006A4130(&v18, v17);
  v14 = v6;
  sub_100021E80(v9);
  sub_100021E80(v10);

  sub_100004DF8(v11);
  return sub_100004DF8(v16);
}

void sub_1006A3A9C()
{
  v1 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField;
  if (!*&v0[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField])
  {
    v2 = [objc_allocWithZone(UITextField) init];
    [v2 setKeyboardType:124];
    [v2 setAlpha:0.0];
    [v2 setTextAlignment:1];
    [v2 setDelegate:v0];
    [v0 insertSubview:v2 belowSubview:*&v0[OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_placeholderImageView]];
    [v2 becomeFirstResponder];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }
}

void sub_1006A3B90()
{
  v1 = OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_emojiTextField);
  if (v2)
  {
    [v2 resignFirstResponder];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 removeFromSuperview];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

id sub_1006A3C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomJournalEmojiIconCellContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006A3D28@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration);
  v5 = *(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration);
  v4 = *(v1 + OBJC_IVAR____TtC7Journal37CustomJournalEmojiIconCellContentView_appliedConfiguration + 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  a1[3] = &type metadata for CustomJournalEmojiIconContentConfiguration;
  a1[4] = sub_1005A5938();
  v12 = swift_allocObject();
  *a1 = v12;
  v12[2] = v5;
  v12[3] = v4;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v12[8] = v10;
  v12[9] = v11;

  v13 = v7;
  sub_100021E80(v8);

  return sub_100021E80(v10);
}

uint64_t sub_1006A3DF0(uint64_t a1)
{
  sub_100086C04(a1, v4);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    v5 = v3[0];
    v6 = v3[1];
    v7 = v3[2];
    v8 = v3[3];
    sub_1006A38E0(&v5);
    v3[0] = v5;
    sub_100004F84(v3, &unk_100AE4870);

    sub_100004DF8(v7);
    sub_100004DF8(v8);
  }

  return sub_10000BA7C(a1);
}

void (*sub_1006A3EAC(void *a1))(void *a1)
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
  v2[4] = sub_1006A31C0(v2);
  return sub_100113D90;
}

uint64_t sub_1006A4088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006A40D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1006A4130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE4870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006A41A0()
{
  result = qword_100AED2D8;
  if (!qword_100AED2D8)
  {
    type metadata accessor for CustomJournalEmojiIconCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED2D8);
  }

  return result;
}

uint64_t sub_1006A41FC(uint64_t a1)
{
  v3 = type metadata accessor for NWPath.Status();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1000F24EC(&qword_100AED2E0);
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for NWPath();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for NWPathMonitor.Iterator();
  v1[11] = v5;
  v1[12] = *(v5 - 8);
  v1[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE5518);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1000F24EC(&qword_100AED2E8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[19] = v6;
  v1[20] = v8;

  return _swift_task_switch(sub_1006A4478, v6, v8);
}

uint64_t sub_1006A4478()
{
  *(v0 + 168) = type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 176) = NWPathMonitor.init()();

  return _swift_task_switch(sub_1006A44FC, 0, 0);
}

uint64_t sub_1006A44FC()
{
  v0[2] = v0[22];
  sub_1006A4D60(&qword_100AED2F0, &type metadata accessor for NWPathMonitor);

  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_1006A4D60(&qword_100AE5520, &type metadata accessor for NWPathMonitor.Iterator);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1006A4644;
  v3 = v0[14];
  v4 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1006A4644()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[11];

    (*(v4 + 8))(v3, v5);
    v6 = DebugData.init(name:);
  }

  else
  {
    v6 = sub_1006A4784;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006A4784()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *(v3 + 48);
  v0[24] = v4;
  v0[25] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];

    (*(v6 + 8))(v5, v7);
    v8 = 1;
  }

  else
  {
    v17 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    v13 = *(v3 + 32);
    v13(v12, v1, v2);

    (*(v10 + 8))(v9, v11);
    v13(v17, v12, v2);
    v8 = 0;
  }

  (*(v0[9] + 56))(v0[15], v8, 1, v0[8]);
  v14 = v0[19];
  v15 = v0[20];

  return _swift_task_switch(sub_1006A48F4, v14, v15);
}

uint64_t sub_1006A48F4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  if ((*(v0 + 192))(v1, 1, v2) == 1)
  {
    sub_100004F84(v1, &qword_100AE5518);
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 72);
    NWPath.status.getter();
    (*(v4 + 8))(v1, v2);
    v3 = 0;
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v10 + 56);
  v11(v5, v3, 1, v9);
  (*(v10 + 104))(v6, enum case for NWPath.Status.unsatisfied(_:), v9);
  v11(v6, 0, 1, v9);
  v12 = *(v8 + 48);
  sub_1006A4CF0(v5, v7);
  sub_1006A4CF0(v6, v7 + v12);
  v13 = *(v10 + 48);
  if (v13(v7, 1, v9) == 1)
  {
    v14 = *(v0 + 144);
    v15 = *(v0 + 24);
    sub_100004F84(*(v0 + 136), &qword_100AED2E8);
    sub_100004F84(v14, &qword_100AED2E8);
    if (v13(v7 + v12, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 56), &qword_100AED2E8);
      v16 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v17 = *(v0 + 24);
  sub_1006A4CF0(*(v0 + 56), *(v0 + 128));
  v18 = v13(v7 + v12, 1, v17);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  if (v18 == 1)
  {
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    sub_100004F84(*(v0 + 136), &qword_100AED2E8);
    sub_100004F84(v19, &qword_100AED2E8);
    (*(v23 + 8))(v21, v22);
LABEL_9:
    sub_100004F84(*(v0 + 56), &qword_100AED2E0);
    v16 = 1;
    goto LABEL_11;
  }

  v31 = *(v0 + 56);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  v26 = *(v0 + 24);
  (*(v25 + 32))(v24, v7 + v12, v26);
  sub_1006A4D60(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v25 + 8);
  v28(v24, v26);
  sub_100004F84(v20, &qword_100AED2E8);
  sub_100004F84(v19, &qword_100AED2E8);
  v28(v21, v26);
  sub_100004F84(v31, &qword_100AED2E8);
  v16 = v27 ^ 1;
LABEL_11:

  v29 = *(v0 + 8);

  return v29(v16 & 1);
}

uint64_t sub_1006A4CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AED2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A4D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006A4DA8()
{
  v0 = type metadata accessor for UIButton.Configuration.MacIdiomStyle();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v2 = &v25[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v5 - 8);
  v27 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  static UIContentUnavailableConfiguration.empty()();
  v8 = UIContentUnavailableConfiguration.imageProperties.modify();
  UIContentUnavailableConfiguration.ImageProperties.maximumSize.setter();
  v8(v32, 0);
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v11 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  v11(v32, 0);
  v12 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v13 = UIContentUnavailableConfiguration.secondaryTextProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  v13(v32, 0);
  v14 = [objc_opt_self() currentTraitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 5)
  {
    static UIButton.Configuration.bordered()();
  }

  else
  {
    static UIButton.Configuration.tinted()();
  }

  UIContentUnavailableConfiguration.button.setter();
  v26 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v28 = *(v28 + 104);
  (v28)(v4);
  v16 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.cornerStyle.setter();
  v16(v32, 0);
  v17 = enum case for UIButton.Configuration.MacIdiomStyle.bordered(_:);
  v18 = v30;
  v29 = *(v29 + 104);
  (v29)(v2, enum case for UIButton.Configuration.MacIdiomStyle.bordered(_:), v30);
  v19 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.macIdiomStyle.setter();
  v19(v32, 0);
  v20 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v20(v32, 0);
  static UIButton.Configuration.borderless()();
  UIContentUnavailableConfiguration.secondaryButton.setter();
  (v28)(v4, v26, v31);
  v21 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.cornerStyle.setter();
  v21(v32, 0);
  (v29)(v2, v17, v18);
  v22 = UIContentUnavailableConfiguration.secondaryButton.modify();
  UIButton.Configuration.macIdiomStyle.setter();
  v22(v32, 0);
  v23 = UIContentUnavailableConfiguration.secondaryButtonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v23(v32, 0);
  UIContentUnavailableConfiguration.directionalLayoutMargins.setter();
  UIContentUnavailableConfiguration.imageToTextPadding.setter();
  return UIContentUnavailableConfiguration.textToSecondaryTextPadding.setter();
}

BOOL sub_1006A52A4()
{
  v0 = type metadata accessor for PresentationKind();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  EnvironmentValues.presentationKind.getter();
  static PresentationKind.popover.getter();
  v7 = static PresentationKind.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return 1;
  }

  sub_1006A53F8();
  EnvironmentValues.subscript.getter();
  return v10[1] == 3;
}

unint64_t sub_1006A53F8()
{
  result = qword_100AED2F8;
  if (!qword_100AED2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED2F8);
  }

  return result;
}

id sub_1006A544C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 _presentationSemanticContext];
  *a2 = result;
  return result;
}

uint64_t sub_1006A547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006A5548();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1006A54F4()
{
  result = qword_100AED300;
  if (!qword_100AED300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED300);
  }

  return result;
}

unint64_t sub_1006A5548()
{
  result = qword_100AED308;
  if (!qword_100AED308)
  {
    type metadata accessor for _UIUserInterfacePresentationSemanticContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AED308);
  }

  return result;
}

char *sub_1006A55A0()
{
  v1 = OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_fetchResult;
  *&v0[v1] = [objc_opt_self() fetchAssetsWithMediaType:2 options:0];
  *&v0[OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_indexes] = _swiftEmptyArrayStorage;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for RandomVideoAssetGenerator();
  v2 = objc_msgSendSuper2(&v20, "init");
  v3 = *&v2[OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_fetchResult];
  v4 = v2;
  v5 = [v3 countOfAssetsWithMediaType:2];
  if (v5 > 9)
  {
    goto LABEL_4;
  }

  sub_1000F24EC(&unk_100AE88B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v7._object = 0x8000000100900FF0;
  v7._countAndFlagsBits = 0x1000000000000059;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v8._object;
  v10 = &v18;
  String.append(_:)(v8);

  v11 = v18;
  v12 = v19;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = v11;
  *(v6 + 40) = v12;
  print(_:separator:terminator:)();

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    object = OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_indexes;
    v10 = *&v4[OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_indexes];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&object[v4] = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  v10 = sub_1003E5564(0, *(v10 + 2) + 1, 1, v10);
LABEL_5:
  v14 = 0;
  do
  {
    *&object[v4] = v10;
    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_1003E5564((v15 > 1), v16 + 1, 1, v10);
    }

    *&v10[8 * v16 + 32] = v14;
    *(v10 + 2) = v16 + 1;
    *&object[v4] = v10;
    ++v14;
  }

  while (v5 != v14);
LABEL_9:

  return v4;
}

uint64_t sub_1006A580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a2)
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

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_1006A58A4, v5, v7);
}

uint64_t sub_1006A58A4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_indexes;
  v0[8] = OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_indexes;
  v3 = *(*(v1 + v2) + 16);
  if (v3)
  {
    v4 = sub_1001C2FA4(v3);
    v0[9] = v4;
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v1 + v2);
      if (v4 < *(v12 + 16))
      {
        v13 = v0[5];
        v14 = *(v12 + 8 * v4 + 32);
        v15 = swift_task_alloc();
        v0[10] = v15;
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
        v16 = swift_task_alloc();
        v0[11] = v16;
        v11 = sub_1000F24EC(&qword_100AEABE8);
        *v16 = v0;
        v16[1] = sub_1006A5ADC;
        v5 = v0[3];
        v6 = v0[4];
        v4 = v0[2];
        v9 = sub_1006A6718;
        v8 = 0x8000000100900F20;
        v7 = 0xD000000000000019;
        v10 = v15;

        return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v17 = v0[2];
  sub_1000F24EC(&unk_100AE88B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100940080;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 32) = 0x1000000000000047;
  *(v18 + 40) = 0x8000000100900F40;
  print(_:separator:terminator:)();

  v19 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = v0[1];

  return v20();
}

uint64_t sub_1006A5ADC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1006A5C20, v3, v2);
}

uint64_t sub_1006A5C20()
{
  sub_100691AB4(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006A5C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F24EC(&qword_100AED348);
  v8 = *(v40 - 8);
  v39 = *(v8 + 64);
  __chkstk_darwin(v40);
  v38 = &v36 - v9;
  sub_1000F24EC(&qword_100AEABE8);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = dispatch_group_create();
  v15 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v15 setVersion:1];
  [v15 setNetworkAccessAllowed:1];
  v16 = [*(a2 + OBJC_IVAR____TtC7Journal25RandomVideoAssetGenerator_fetchResult) objectAtIndex:a3];
  dispatch_group_enter(v14);
  sub_1000F24EC(&unk_100AE88B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100940080;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0xD000000000000016;
  *(v17 + 40) = 0x8000000100900F90;
  print(_:separator:terminator:)();

  v18 = [objc_opt_self() defaultManager];
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v16;
  v19[4] = v14;
  v53 = sub_1006A676C;
  v54 = v19;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_1006A64E4;
  v52 = &unk_100A78388;
  v20 = _Block_copy(&aBlock);
  v21 = v15;
  v22 = v10;

  v23 = v16;
  v37 = v23;
  v36 = v14;

  [v18 requestAVAssetForVideo:v23 options:v21 resultHandler:v20];
  _Block_release(v20);

  sub_100005508();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = v38;
  v26 = v40;
  (*(v8 + 16))(v38, v41, v40);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v8 + 32))(v29 + v27, v25, v26);
  *(v29 + v28) = v22;
  v53 = sub_1006A6778;
  v54 = v29;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100006C7C;
  v52 = &unk_100A783D8;
  v30 = _Block_copy(&aBlock);

  v31 = v42;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v33 = v43;
  v32 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v36;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v30);

  (*(v47 + 8))(v33, v32);
  (*(v45 + 8))(v31, v46);
}

uint64_t sub_1006A6278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6)
{
  v9 = sub_1000F24EC(&qword_100AEABE8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_projectBox();
  if (a1)
  {
    v17 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v18 = result;
      v30 = a1;
      v19 = [v18 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = URL.lastPathComponent.getter();
      v29 = a6;
      v22 = v21;
      v23 = [a5 localIdentifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset();
      (*(v13 + 16))(v11 + *(v27 + 24), v15, v12);
      *v11 = v20;
      v11[1] = v22;
      v11[2] = v24;
      v11[3] = v26;
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      swift_beginAccess();
      sub_1006A6880(v11, v17);
      dispatch_group_leave(v29);

      return (*(v13 + 8))(v15, v12);
    }
  }

  return result;
}

uint64_t sub_1006A64E4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a3;
  v6(a2, a3, v7);
}

uint64_t sub_1006A65AC()
{
  v0 = sub_1000F24EC(&qword_100AEABE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = swift_projectBox();
  swift_beginAccess();
  sub_1006A6810(v3, v2);
  sub_1000F24EC(&qword_100AED348);
  return CheckedContinuation.resume(returning:)();
}

id sub_1006A6674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RandomVideoAssetGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RandomVideoAssetGenerator.VideoAsset()
{
  result = qword_100AED3A8;
  if (!qword_100AED3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006A6778()
{
  sub_1000F24EC(&qword_100AED348);

  return sub_1006A65AC();
}

uint64_t sub_1006A6810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEABE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A6880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEABE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A6918()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1006A69A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AED3E8);
  v1 = sub_10000617C(v0, qword_100AED3E8);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006A6A68(char a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 336) = a1;

  sub_100004F84(v2, &qword_100AD1350);

  return _swift_task_switch(sub_1006A6B98, 0, 0);
}

uint64_t sub_1006A6B98()
{
  v10 = v0;
  if (*(v0 + 336))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_1006A6DC4;

    return sub_1006AA260(0);
  }

  else
  {
    if (qword_100AD00F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AED3E8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, &v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s - transcription is not supported.", v6, 0xCu);
      sub_10000BA7C(v7);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1006A6DC4(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1006A6F28, 0, 0);
  }
}

uint64_t sub_1006A6F28()
{
  v17 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    if (qword_100AD00F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[27] = sub_10000617C(v3, qword_100AED3E8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "Found %ld audio assets to transcribe", v6, 0xCu);
    }

    else
    {
    }

    v0[28] = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006A723C, v15, v14);
  }

  else
  {

    if (qword_100AD00F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AED3E8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s - No existing audio files to transcribe", v10, 0xCu);
      sub_10000BA7C(v11);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1006A723C()
{

  return _swift_task_switch(sub_1006A72A4, 0, 0);
}

uint64_t sub_1006A72A4()
{
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A7330, v2, v1);
}

uint64_t sub_1006A7330()
{

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1006A73C8;

  return sub_10079CAB4();
}

uint64_t sub_1006A73C8(char a1)
{
  *(*v1 + 337) = a1;

  return _swift_task_switch(sub_1006A74C8, 0, 0);
}

uint64_t sub_1006A74C8()
{
  v23 = v0;
  if (*(v0 + 337) == 1)
  {
    v2 = *(v0 + 192);
    v1 = *(v0 + 200);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 88);
    v6 = *(*(v0 + 112) + 48);
    *(v0 + 328) = v6;
    *(v0 + 280) = sub_1000065A8(0, &qword_100AD43F0);
    v7 = *(v4 + 80);
    *(v0 + 332) = v7;
    *(v0 + 288) = v1;
    *(v0 + 296) = 0;
    if (*(v2 + 16))
    {
      v8 = *(v0 + 104);
      v9 = *(v0 + 80);
      sub_1002093E8(v2 + ((v7 + 32) & ~v7), v3);
      *(v0 + 304) = *v3;
      (*(v5 + 32))(v8, &v3[v6], v9);
      if (qword_100AD0040 == -1)
      {
LABEL_4:
        v10 = qword_100B2FC20;
        *(v0 + 312) = qword_100B2FC20;

        v11 = sub_1006A7B2C;
        v12 = v10;
        v13 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, &v22);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s - downloading asr asset", v16, 0xCu);
    sub_10000BA7C(v17);
  }

  *(v0 + 248) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v20 = v19;
  v11 = sub_1006A7734;
  v12 = v18;
  v13 = v20;
LABEL_8:

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1006A7734()
{

  return _swift_task_switch(sub_1006A779C, 0, 0);
}

uint64_t sub_1006A779C()
{
  *(v0 + 256) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A7828, v2, v1);
}

uint64_t sub_1006A7828()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1006A78C4;

  return sub_10079A954(0);
}

uint64_t sub_1006A78C4()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_1006A8554;
  }

  else
  {
    v2 = sub_1006A79E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A79E0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 88);
  v6 = *(*(v0 + 112) + 48);
  *(v0 + 328) = v6;
  *(v0 + 280) = sub_1000065A8(0, &qword_100AD43F0);
  v7 = *(v4 + 80);
  *(v0 + 332) = v7;
  *(v0 + 288) = v1;
  *(v0 + 296) = 0;
  if (*(v2 + 16))
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    sub_1002093E8(v2 + ((v7 + 32) & ~v7), v3);
    *(v0 + 304) = *v3;
    (*(v5 + 32))(v8, &v3[v6], v9);
    if (qword_100AD0040 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = qword_100B2FC20;
  *(v0 + 312) = qword_100B2FC20;

  return _swift_task_switch(sub_1006A7B2C, v10, 0);
}

uint64_t sub_1006A7B2C()
{
  v1 = *(v0 + 312);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = *(v0 + 304);

    v4 = v3;
    *(v0 + 338) = __CocoaSet.contains(_:)() & 1;

    v5 = sub_1006A7D00;
  }

  else if (*(v2 + 16))
  {
    v6 = *(v2 + 40);

    v7 = NSObject._rawHashValue(seed:)(v6);
    v8 = -1 << *(v2 + 32);
    v9 = v7 & ~v8;
    if ((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (1)
      {
        v11 = *(*(v2 + 48) + 8 * v9);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          break;
        }

        v9 = (v9 + 1) & v10;
        if (((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v5 = sub_1006A7F5C;
    }

    else
    {
LABEL_8:

      v5 = sub_1006AAA90;
    }
  }

  else
  {

    v5 = sub_1006A7EE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006A7D00()
{
  if (*(v0 + 338))
  {
    v1 = *(v0 + 304);
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));

    v2 = *(v0 + 296) + 1;
    if (v2 == *(v0 + 208))
    {

      v3 = *(v0 + 8);

      return v3();
    }

    *(v0 + 296) = v2;
    v7 = *(v0 + 192);
    if (v2 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + 328);
      v9 = *(v0 + 128);
      v10 = *(v0 + 104);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      sub_1002093E8(v7 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + *(*(v0 + 120) + 72) * v2, v9);
      *(v0 + 304) = *v9;
      (*(v12 + 32))(v10, &v9[v8], v11);
      if (qword_100AD0040 == -1)
      {
LABEL_9:
        v5 = qword_100B2FC20;
        *(v0 + 312) = qword_100B2FC20;
        v6 = sub_1006A7B2C;
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_9;
  }

  v5 = qword_100B2FC20;
  *(v0 + 320) = qword_100B2FC20;
  v6 = sub_1006A811C;
LABEL_10:
  v13 = v6;

  return _swift_task_switch(v13, v5, 0);
}

uint64_t sub_1006A7EE4()
{
  v1 = qword_100B2FC20;
  *(v0 + 320) = qword_100B2FC20;

  return _swift_task_switch(sub_1006A811C, v1, 0);
}

uint64_t sub_1006A7F5C()
{
  v1 = *(v0 + 304);
  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));

  v2 = *(v0 + 296) + 1;
  if (v2 == *(v0 + 208))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  *(v0 + 296) = v2;
  v5 = *(v0 + 192);
  if (v2 >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v0 + 328);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_1002093E8(v5 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + *(*(v0 + 120) + 72) * v2, v7);
  *(v0 + 304) = *v7;
  (*(v10 + 32))(v8, &v7[v6], v9);
  if (qword_100AD0040 != -1)
  {
LABEL_11:
    swift_once();
  }

  v11 = qword_100B2FC20;
  *(v0 + 312) = qword_100B2FC20;

  return _swift_task_switch(sub_1006A7B2C, v11, 0);
}

uint64_t sub_1006A811C()
{
  v5 = v0;
  v1 = *(v0 + 304);
  swift_beginAccess();
  sub_100288038(&v4, v1);
  v2 = v4;
  swift_endAccess();

  return _swift_task_switch(sub_1006A81CC, 0, 0);
}

void sub_1006A81CC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v5 + 16);
  v6(v3, *(v0 + 104), v4);
  v7 = type metadata accessor for AudioAssetTranscriptionOperation();
  v8 = objc_allocWithZone(v7);
  *&v8[qword_100B2F9D0] = v1;
  v6(&v8[qword_100B2F9C8], v3, v4);
  *(v0 + 64) = v8;
  *(v0 + 72) = v7;
  v9 = v1;
  v10 = objc_msgSendSuper2((v0 + 64), "init");
  v11 = *(v5 + 8);
  v11(v3, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = *&v10[qword_100AE7BA8];
  v14 = swift_task_alloc();
  *(v14 + 16) = sub_1006AA7D8;
  *(v14 + 24) = v12;
  v15 = v9;
  os_unfair_lock_lock(v13 + 10);
  sub_1006AA7E0(&v13[4]);
  os_unfair_lock_unlock(v13 + 10);
  if (v2)
  {
    return;
  }

  [v10 setQueuePriority:-8];
  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 304);
  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  [qword_100B2FC18 addOperation:v10];

  v11(v17, v18);
  v19 = *(v0 + 296) + 1;
  if (v19 == *(v0 + 208))
  {

    v20 = *(v0 + 8);

    v20();
    return;
  }

  *(v0 + 288) = 0;
  *(v0 + 296) = v19;
  v21 = *(v0 + 192);
  if (v19 >= *(v21 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);
  sub_1002093E8(v21 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + *(*(v0 + 120) + 72) * v19, v23);
  *(v0 + 304) = *v23;
  (*(v26 + 32))(v24, &v23[v22], v25);
  if (qword_100AD0040 != -1)
  {
LABEL_14:
    swift_once();
  }

  v27 = qword_100B2FC20;
  *(v0 + 312) = qword_100B2FC20;

  _swift_task_switch(sub_1006A7B2C, v27, 0);
}

uint64_t sub_1006A8554()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, &v9);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - error occurred downloading asr asset: %@", v3, 0x16u);
    sub_100004F84(v4, &unk_100AD4BB0);

    sub_10000BA7C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006A873C(uint64_t a1, void *a2)
{
  v95 = type metadata accessor for TranscriptViewModelSegment();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v80[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v80[-v6];
  v92 = type metadata accessor for ProtectedData.ProtectedDataState();
  v8 = *(v92 - 8);
  v9 = __chkstk_darwin(v92);
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v80[-v12];
  v14 = *(a1 + 8);
  v93 = *a1;
  v15 = *(a1 + 16);
  if (qword_100AD00F8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000617C(v16, qword_100AED3E8);
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v91 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v90 = v14;
    v23 = v22;
    v24 = v7;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    LODWORD(v88) = v15;
    v27 = v26;
    v97[0] = v26;
    *v23 = 136315394;
    *(v23 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, v97);
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    *v25 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - Transcribing existing audio from asset with objectID: %@", v23, 0x16u);
    sub_100004F84(v25, &unk_100AD4BB0);
    v7 = v24;

    sub_10000BA7C(v27);
    v15 = v88;

    v14 = v90;
  }

  if (v15)
  {
    v29 = v18;
    v30 = v18;
    v31 = v93;
    sub_1006AA8B0(v93, v14, 1);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v14;
      v37 = swift_slowAlloc();
      v97[0] = v37;
      *v34 = 136315650;
      *(v34 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, v97);
      *(v34 + 12) = 2112;
      *(v34 + 14) = v30;
      *v35 = v30;
      *(v34 + 22) = 2112;
      v38 = v30;
      sub_1006AA8B0(v31, v36, 1);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 24) = v39;
      v35[1] = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Error processing audio asset from %@. Error: %@", v34, 0x20u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();

      sub_10000BA7C(v37);

      sub_1006AA9D0(v31, v36, 1);
    }

    else
    {

      sub_1006AA9D0(v31, v14, 1);
    }

    v64 = type metadata accessor for TaskPriority();
    (*(*(v64 - 8) + 56))(v7, 1, 1, v64);
    v65 = &unk_100962CA8;
    v18 = v29;
  }

  else
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    type metadata accessor for ProtectedData();
    static ProtectedData.shared.getter();
    ProtectedData.state.getter();

    v40 = v92;
    (*(v8 + 104))(v11, enum case for ProtectedData.ProtectedDataState.available(_:), v92);
    v41 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
    v42 = *(v8 + 8);
    v42(v11, v40);
    v42(v13, v40);
    if (v41)
    {
      v43 = v93;
      sub_1006AA8B0(v93, v14, 0);
      v44 = v43;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v88 = v7;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v97[0] = v87;
        *v47 = 136315651;
        *(v47 + 4) = sub_100008458(0xD00000000000001CLL, 0x8000000100901050, v97);
        *(v47 + 12) = 2112;
        *(v47 + 14) = v44;
        v86 = v48;
        *v48 = v43;
        *(v47 + 22) = 2081;
        v49 = *(v14 + 16);
        if (v49)
        {
          v81 = v46;
          v82 = v47;
          v83 = v45;
          v85 = v18;
          v96 = _swiftEmptyArrayStorage;
          v84 = v44;
          v50 = v44;
          sub_1001999C0(0, v49, 0);
          v51 = v96;
          v52 = *(v89 + 16);
          v53 = *(v89 + 80);
          v90 = v14;
          v54 = v14 + ((v53 + 32) & ~v53);
          v92 = *(v89 + 72);
          v93 = v52;
          v55 = (v89 + 8);
          do
          {
            v56 = v94;
            v57 = v95;
            (v93)(v94, v54, v95);
            v58 = TranscriptViewModelSegment.text.getter();
            v60 = v59;
            (*v55)(v56, v57);
            v96 = v51;
            v62 = v51[2];
            v61 = v51[3];
            if (v62 >= v61 >> 1)
            {
              sub_1001999C0((v61 > 1), v62 + 1, 1);
              v51 = v96;
            }

            v51[2] = v62 + 1;
            v63 = &v51[2 * v62];
            v63[4] = v58;
            v63[5] = v60;
            v54 += v92;
            --v49;
          }

          while (v49);
          v44 = v84;
          v18 = v85;
          v14 = v90;
          v47 = v82;
          v45 = v83;
          LOBYTE(v46) = v81;
        }

        else
        {
          v70 = v44;
          v51 = _swiftEmptyArrayStorage;
        }

        v96 = v51;
        sub_1000F24EC(&qword_100AD60A0);
        sub_10009BDD4();
        v71 = BidirectionalCollection<>.joined(separator:)();
        v73 = v72;

        v74 = sub_100008458(v71, v73, v97);

        *(v47 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v45, v46, "%s - Transcribed objectID: %@ segments: %{private}s)", v47, 0x20u);
        sub_100004F84(v86, &unk_100AD4BB0);

        swift_arrayDestroy();

        v7 = v88;
      }

      else
      {
      }

      v75 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
      *&v80[-32] = __chkstk_darwin(v75);
      *&v80[-24] = v44;
      *&v80[-16] = v14;
      NSManagedObjectContext.performAndWait<A>(_:)();

      v76 = type metadata accessor for TaskPriority();
      (*(*(v76 - 8) + 56))(v7, 1, 1, v76);
      v65 = &unk_100962CA0;
    }

    else
    {
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Skipping AssetPostprocessingOperation.update. Device is locked.", v68, 2u);
      }

      v69 = type metadata accessor for TaskPriority();
      (*(*(v69 - 8) + 56))(v7, 1, 1, v69);
      v65 = &unk_100962C98;
    }
  }

  v77 = swift_allocObject();
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = v18;
  v78 = v18;
  sub_1003E9628(0, 0, v7, v65, v77);
}

void sub_1006A9398(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ProtectedData.ProtectedDataState();
  v47 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  v13 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v13 - 8);
  v15 = v43 - v14;
  v48 = 0;
  v16 = [a1 existingObjectWithID:a2 error:&v48];
  v17 = v48;
  if (!v16)
  {
    v28 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v18 = v16;
  v46 = v7;
  type metadata accessor for JournalEntryAssetMO();
  v19 = swift_dynamicCastClass();
  v20 = v17;
  if (v19)
  {
    v21 = sub_100039CE0();
    type metadata accessor for AudioAsset();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v44 = a1;
      v45 = v21;
      v23 = a3;
      v24 = v22;
      sub_10021A71C(0, 1, 0, v23);
      v43[1] = v24;
      sub_1000A8720(v15);
      v25 = type metadata accessor for AudioAssetMetadata();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v15, 1, v25) == 1)
      {
        sub_100004F84(v15, &qword_100AD8F98);
        isa = 0;
      }

      else
      {
        v43[0] = v3;
        sub_1006AAA1C();
        v30 = Encodable.asData.getter();
        v32 = v31;
        (*(v26 + 8))(v15, v25);
        if (v32 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10003A5C8(v30, v32);
        }
      }

      v33 = v44;
      [v19 setAssetMetaData:isa];

      v34 = [objc_opt_self() currentDevice];
      v35 = [v34 systemVersion];

      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      [v19 setOsVersion:v35];

      [v19 setIsUploadedToCloud:0];
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      type metadata accessor for ProtectedData();
      static ProtectedData.shared.getter();
      ProtectedData.state.getter();

      v36 = v46;
      v37 = v47;
      (*(v47 + 104))(v10, enum case for ProtectedData.ProtectedDataState.available(_:), v46);
      v38 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
      v39 = *(v37 + 8);
      v39(v10, v36);
      v39(v12, v36);
      if (v38)
      {
        v48 = 0;
        if (![v33 save:&v48])
        {
          v42 = v48;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_22;
        }

        v40 = v48;
      }

      v29 = [objc_opt_self() defaultCenter];
      if (qword_100ACFFA8 != -1)
      {
        swift_once();
      }

      v41 = qword_100B2FB98;
      v21 = UUID._bridgeToObjectiveC()().super.isa;
      [v29 postNotificationName:v41 object:v21];
    }

    else
    {
      v29 = v18;
    }

    v18 = v21;
  }

LABEL_22:
}

void sub_1006A9920(void (**a1)(void), unint64_t a2)
{
  v62 = a2;
  v59 = a1;
  v2 = sub_1000F24EC(&qword_100AD8858);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v65 = (&v54 - v4);
  v5 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v5 - 8);
  v64 = &v54 - v6;
  v68 = type metadata accessor for URL();
  v54 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for JournalEntryAssetMO();
  v56 = static JournalEntryAssetMO.fetchRequest()();
  v57 = sub_1000065A8(0, &qword_100ADB900);
  v55 = "scheduleAssetTranscription()";
  sub_1000F24EC(&unk_100AD5B10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100941FE0;
  *(v12 + 56) = &type metadata for String;
  v13 = sub_100031B20();
  *(v12 + 64) = v13;
  *(v12 + 32) = 0x7079547465737361;
  *(v12 + 40) = 0xE900000000000065;
  (*(v9 + 104))(v11, enum case for AssetType.audio(_:), v8);
  v14 = AssetType.rawValue.getter();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = v16;
  v17 = v56;
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v13;
  *(v12 + 112) = 0x6F6973726556736FLL;
  *(v12 + 120) = 0xE90000000000006ELL;
  *(v12 + 176) = &type metadata for String;
  *(v12 + 184) = v13;
  strcpy((v12 + 152), "isBeingEdited");
  *(v12 + 166) = -4864;
  v18 = NSPredicate.init(format:_:)();
  [v17 setPredicate:v18];

  v19 = v66;
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v21 = v19;
  if (v19)
  {
    if (qword_100AD00F8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000617C(v22, qword_100AED3E8);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_100008458(0xD00000000000001BLL, 0x80000001009010A0, v67);
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s Error fetching untranscribed audio assets: %@", v25, 0x16u);
      sub_100004F84(v26, &unk_100AD4BB0);

      sub_10000BA7C(v27);
    }

    swift_willThrow();
  }

  else
  {
    v29 = v20;
    v30 = v54;
    v55 = 0;
    if (qword_100AD00F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_10000617C(v31, qword_100AED3E8);

    v33 = Logger.logObject.getter();
    LOBYTE(v34) = static os_log_type_t.debug.getter();
    v35 = v29 >> 62;
    if (!os_log_type_enabled(v33, v34))
    {

      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v67[0] = v21;
    *v32 = 136315394;
    *(v32 + 4) = sub_100008458(0xD00000000000001BLL, 0x80000001009010A0, v67);
    *(v32 + 12) = 2048;
    if (v35)
    {
      goto LABEL_34;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v32 + 14) = i;

      _os_log_impl(&_mh_execute_header, v33, v34, "%s - Fetched %ld untranscribed audio assets", v32, 0x16u);
      sub_10000BA7C(v21);

LABEL_14:
      v33 = v30;
      if (v35)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
        v35 = v62;
        if (!v34)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v35 = v62;
        if (!v34)
        {
          goto LABEL_32;
        }
      }

      if (v34 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v37 = 0;
    v66 = v29 & 0xC000000000000001;
    v38 = (v30 + 48);
    v58 = v33 + 2;
    v59 = &v33[4];
    v57 = v33 + 1;
    do
    {
      if (v66)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v29 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = sub_100039CE0();
      type metadata accessor for AudioAsset();
      if (swift_dynamicCastClass())
      {
        v42 = v64;
        sub_100093C08(v64);
        v43 = v68;
        if ((*v38)(v42, 1, v68) == 1)
        {

          sub_100004F84(v42, &unk_100AD6DD0);
        }

        else
        {
          v44 = v63;
          (*v59)();
          v45 = [v40 objectID];
          v46 = *(v60 + 48);
          v47 = v65;
          *v65 = v45;
          (v58->isa)(v47 + v46, v44, v43);
          swift_beginAccess();
          v48 = *(v35 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v35 + 16) = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v48 = sub_1003E50C0(0, v48[2] + 1, 1, v48);
            *(v35 + 16) = v48;
          }

          v51 = v48[2];
          v50 = v48[3];
          v52 = v61;
          if (v51 >= v50 >> 1)
          {
            v53 = sub_1003E50C0(v50 > 1, v51 + 1, 1, v48);
            v52 = v61;
            v48 = v53;
          }

          v48[2] = v51 + 1;
          sub_10020950C(v65, v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51);
          v35 = v62;
          *(v62 + 16) = v48;
          swift_endAccess();

          (v57->isa)(v63, v68);
        }
      }

      else
      {
      }

      ++v37;
    }

    while (v34 != v37);
LABEL_32:
  }
}

uint64_t sub_1006AA260(uint64_t a1)
{
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
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

  v1[8] = v4;
  v1[9] = v6;

  return _swift_task_switch(sub_1006AA34C, v4, v6);
}

uint64_t sub_1006AA34C()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[10] = v4;
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4;

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1006AA500;
  v8 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_1006AAA74, v6, &type metadata for () + 8);
}

uint64_t sub_1006AA500()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_1006AA760;
  }

  else
  {
    v8 = sub_1006AA6BC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1006AA6BC()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006AA760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006AA7FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1006AA240(a1, v4, v5, v6);
}

uint64_t sub_1006AA8B0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return swift_errorRetain();
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_1006AA91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1006AA240(a1, v4, v5, v6);
}

uint64_t sub_1006AA9D0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1006AAA1C()
{
  result = qword_100AD8F58;
  if (!qword_100AD8F58)
  {
    type metadata accessor for AudioAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8F58);
  }

  return result;
}

uint64_t sub_1006AAA94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA928);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100ADF500);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100ADA938);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA928);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025B3B4(a1);
  }

  else
  {
    v18 = type metadata accessor for GenericMapAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006AACD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8A0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E20);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AD5B28);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA8A0);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025B758(a1);
  }

  else
  {
    v18 = type metadata accessor for WorkoutRouteAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006AAF14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD64C0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD64C8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AE6680);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100AD64C0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025BAFC(a1);
  }

  else
  {
    v17 = type metadata accessor for StateOfMindAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AB154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &unk_100AEE0A0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100046ADC(a1);
  }

  else
  {
    v17 = type metadata accessor for PhotoLibraryAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AB394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8C0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal9BookAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal9BookAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AEABF8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD4318);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100ADA8C0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025C5E8(a1);
  }

  else
  {
    v17 = type metadata accessor for BookAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AB5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA908);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE26C8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100ADA918);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100ADA908);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025CD30(a1);
  }

  else
  {
    v17 = type metadata accessor for ReflectionAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AB814@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD6C98);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal12DrawingAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal12DrawingAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD6CA0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD6C90);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100AD6C98);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025D0D4(a1);
  }

  else
  {
    v17 = type metadata accessor for DrawingAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006ABA54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA948);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal10VisitAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal10VisitAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE9768);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&unk_100AEED20);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA948);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025D478(a1);
  }

  else
  {
    v18 = type metadata accessor for VisitAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006ABC94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8E0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E90);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD6F70);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100ADA8E0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025BEA0(a1);
  }

  else
  {
    v17 = type metadata accessor for MusicAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006ABED4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &unk_100AEE0A0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100046ADC(a1);
  }

  else
  {
    v17 = type metadata accessor for PhotoLibraryAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AC114@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &unk_100AEE0A0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_100046ADC(a1);
  }

  else
  {
    v17 = type metadata accessor for PhotoLibraryAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AC354@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8F0);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal12ContactAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E60);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100AD8440);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100ADA8F0);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025D81C(a1);
  }

  else
  {
    v17 = type metadata accessor for ContactAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006AC594@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA958);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AD2A70);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA958);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025C244(a1);
  }

  else
  {
    v18 = type metadata accessor for PodcastAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006AC7D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA970);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata))
  {
    goto LABEL_6;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v7)
  {
    v8 = [v7 assetMetaData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *v5 = v10;
      v5[1] = v12;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DA8);
      v13 = swift_allocObject();
      v14 = *(*v13 + 104);
      v15 = sub_1000F24EC(&qword_100ADA980);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + *(*v13 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v5, v13 + *(*v13 + 120), &qword_100ADA970);
      *(v1 + v6) = v13;
    }
  }

  if (*(v1 + v6))
  {
LABEL_6:

    sub_10025DBC0(a1);
  }

  else
  {
    v17 = type metadata accessor for ConfettiAssetMetadata();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_1006ACA14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA870);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E70);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AD50C0);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA870);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025C98C(a1);
  }

  else
  {
    v18 = type metadata accessor for ThirdPartyMediaAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006ACC54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD7A38);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal9LinkAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD7A40);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AD50C8);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100AD7A38);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025E308(a1);
  }

  else
  {
    v18 = type metadata accessor for LinkAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006ACE94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA888);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DD0);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AE4280);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100ADA888);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10008F5F4(a1);
  }

  else
  {
    v18 = type metadata accessor for WorkoutIconAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

uint64_t sub_1006AD0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8B30);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v19 - v5);
  v7 = OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD8B40);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&qword_100AD8740);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100AD8B30);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_10025DF64(a1);
  }

  else
  {
    v18 = type metadata accessor for MotionActivityAssetMetadata();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

void sub_1006AD314(uint64_t a1, void *a2)
{
  v4 = sub_1000F24EC(&qword_100AED4C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_1000065A8(0, &qword_100AE9450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1006B62C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006AD5D8;
  aBlock[3] = &unk_100A78540;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1006AD4F8(uint64_t a1, uint64_t a2)
{
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    sub_1000F24EC(&qword_100AED4C8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      sub_100160EEC();
      swift_allocError();
      *v4 = 0;
    }

    swift_errorRetain();
    sub_1000F24EC(&qword_100AED4C8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1006AD5D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_1006AD6B8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10009B77C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000F24EC(&unk_100AE4870);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006AD7E8(uint64_t result)
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

  result = sub_10009BCC8(result, v10, 1, v3);
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

uint64_t sub_1006AD9E0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
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

  sub_1000F24EC(a3);
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

uint64_t sub_1006ADB44(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

uint64_t sub_1006ADCB8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003E59DC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1006ADDA4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1003E5F28(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000F24EC(&qword_100AD64B8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006ADEC0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1003E6900(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000F24EC(&qword_100AE2C28);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006AE010(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1006B3500(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1006AE108(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003E6584(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006AE1F4(uint64_t result)
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

  result = sub_1003E7094(result, v10, 1, v3);
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

char *sub_1006AE2EC(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v5 = a2;
  v6 = [objc_allocWithZone(v2) init];
  v7 = v6;
  if (v5 == 8)
  {
    v3 = 6;
  }

  v8 = v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = v3;
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v10 = v6[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
  v11 = v6;
  if (v10 != 1 || (sub_10003C2FC(v3, v8) & 1) == 0)
  {
    sub_1006AFC1C();
    v7[v9] = 1;
  }

  v12 = *&v11[OBJC_IVAR____TtC7Journal17LinkAssetGridView_asset];
  *&v11[OBJC_IVAR____TtC7Journal17LinkAssetGridView_asset] = a1;
  v13 = a1;

  sub_1006AE500(a1);
  return v11;
}

uint64_t sub_1006AE3D4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AED400);
  v1 = sub_10000617C(v0, qword_100AED400);
  if (qword_100AD0218 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006AE49C()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AED418);
  sub_10000617C(v0, qword_100AED418);
  return UUID.init()();
}

void sub_1006AE500(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v63 - v4;
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Date.FormatStyle.DateStyle();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Duration.TimeFormatStyle();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v76 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - v15;
  v83 = type metadata accessor for Date();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100AD8F98);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v24 = type metadata accessor for Locale();
  __chkstk_darwin(v24 - 8);
  v84 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v26 - 8);
  if (!a1)
  {
LABEL_7:
    *v92 = 1;
    memset(&v92[8], 0, 73);
    sub_1006B01B0(v92);
    return;
  }

  v66 = v7;
  type metadata accessor for AudioAsset();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LinkAsset();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v1;
      v35 = a1;
      v36 = v1;
      static Task<>.startOnMainActor(priority:_:)();

      sub_100004F84(v5, &qword_100AD5170);
      return;
    }

    goto LABEL_7;
  }

  v65 = v6;
  v69 = v1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v68 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v27;
  sub_1000A8720(v23);
  v28 = type metadata accessor for AudioAssetMetadata();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) == 1)
  {
    sub_100004F84(v23, &qword_100AD8F98);
LABEL_9:
    v41 = 0;
    v42 = 0;
    goto LABEL_18;
  }

  v64 = AudioAssetMetadata.duration.getter();
  v38 = v37;
  v39 = v23;
  v40 = *(v29 + 8);
  v40(v39, v28);
  if (v38)
  {
    goto LABEL_9;
  }

  sub_1000A8720(v21);
  if (v30(v21, 1, v28) == 1)
  {
    sub_100004F84(v21, &qword_100AD8F98);
    (*(v82 + 56))(v16, 1, 1, v83);
  }

  else
  {
    AudioAssetMetadata.recordingDate.getter();
    v40(v21, v28);
    v43 = v82;
    v44 = v83;
    if ((*(v82 + 48))(v16, 1, v83) != 1)
    {
      v45 = *&v64;
      (*(v43 + 32))(v81, v16, v44);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
      static Duration.seconds(_:)();
      v47 = v70;
      if (v45 >= 3600.0)
      {
        static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
      }

      else
      {
        static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
      }

      v48 = v65;
      v49 = v71;
      static FormatStyle<>.time(pattern:)();
      (*(v72 + 8))(v47, v73);
      sub_1006B6364(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
      v50 = v75;
      Duration.formatted<A>(_:)();
      (*(v74 + 8))(v49, v50);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v92);

      v51._countAndFlagsBits = 548913696;
      v51._object = 0xA400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
      v52 = v81;
      v53._countAndFlagsBits = sub_10048FE64();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v53);

      v54._countAndFlagsBits = 8236;
      v54._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
      v55 = v77;
      static Date.FormatStyle.DateStyle.omitted.getter();
      v56 = v79;
      static Date.FormatStyle.TimeStyle.shortened.getter();
      v57 = Date.formatted(date:time:)();
      v59 = v58;
      (*(v66 + 8))(v56, v48);
      (*(v78 + 8))(v55, v80);
      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v60);

      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v41 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v62;
      (*(v43 + 8))(v52, v83);
      goto LABEL_18;
    }
  }

  sub_100004F84(v16, &unk_100AD4790);
  v41 = 0;
  v42 = 0;
LABEL_18:
  *&v85 = 0;
  *(&v85 + 1) = v68;
  *&v86 = v67;
  *(&v86 + 1) = v41;
  v87 = v42;
  v88 = 0;
  *v89 = 0;
  *&v89[8] = xmmword_100962CB0;
  v90 = 0;
  v91 = 1;
  v92[80] = 1;
  *v92 = v85;
  *&v92[16] = v86;
  *&v92[32] = v42;
  *&v92[48] = *v89;
  *&v92[64] = 0xE800000000000000;
  sub_1006B01B0(v92);
  sub_1006B12A8(&v85);
}

id sub_1006AF088(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_labelStack;
  *&v4[v11] = [objc_allocWithZone(UIStackView) init];
  v12 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_subtitleLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkLabel;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView;
  v16 = objc_opt_self();
  v17 = [v16 effectWithStyle:6];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v4[v15] = v18;
  v19 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel;
  *&v4[v19] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView] = 0;
  v20 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurredEffectView;
  v21 = [v16 effectWithStyle:6];
  v22 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v21];

  *&v4[v20] = v22;
  *&v4[OBJC_IVAR____TtC7Journal17LinkAssetGridView_sizeConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Journal17LinkAssetGridView_asset] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for LinkAssetGridView();
  v23 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  sub_1006AF2CC();

  return v23;
}

void sub_1006AF2CC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView];
  [v0 addSubview:v2];
  sub_100013178(0.0);

  v3 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurredEffectView;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurredEffectView]];
  v26 = v3;
  v4 = *&v1[v3];
  sub_100013178(0.0);

  v5 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView;
  [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:*&v1[v5]];
  [v2 setAlpha:0.0];
  [v2 setContentMode:2];
  [*&v1[v5] setAlpha:0.0];
  [*&v1[v5] setContentMode:2];
  [*&v1[v5] setClipsToBounds:1];
  [*&v1[v5] setAccessibilityIgnoresInvertColors:1];
  [*&v1[v5] setIsAccessibilityElement:1];
  v6 = qword_100AD0850;
  v7 = *&v1[v5];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityLabel:v8];

  v9 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_titleLabel];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v9 setTextColor:v11];

  [v9 setPreferredVibrancy:1];
  v12 = sub_100047788(UIFontTextStyleFootnote, &off_100A5AB80, 0);
  swift_arrayDestroy();
  [v9 setFont:v12];

  [v9 setNumberOfLines:1];
  [v9 setLineBreakMode:0];
  [v9 setAdjustsFontForContentSizeCategory:1];
  if (qword_100AD0110 != -1)
  {
    swift_once();
  }

  v13 = qword_100AED430;
  [v9 setMaximumContentSizeCategory:qword_100AED430];
  v14 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_subtitleLabel];
  v15 = [v10 secondaryLabelColor];
  [v14 setTextColor:v15];

  [v14 setPreferredVibrancy:1];
  v16 = sub_100047788(UIFontTextStyleFootnote, &off_100A5ABD0, 0);
  sub_100047D60(&unk_100A5ABF0);
  [v14 setFont:v16];

  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setMaximumContentSizeCategory:v13];
  v17 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_labelStack];
  [v17 setAxis:1];
  [v17 setAlignment:1];
  [v17 setDistribution:4];
  [v17 setSpacing:5.0];
  [v17 setMaximumContentSizeCategory:v13];
  v18 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkLabel];
  v19 = [v10 tertiaryLabelColor];
  [v18 setTextColor:v19];

  [v18 setPreferredVibrancy:1];
  v20 = sub_100047788(UIFontTextStyleFootnote, &off_100A5AC08, 0);
  sub_100047D60(&unk_100A5AC28);
  [v18 setFont:v20];

  [v18 setAdjustsFontForContentSizeCategory:1];
  [v18 setMaximumContentSizeCategory:v13];
  v27 = [objc_allocWithZone(UIStackView) init];
  [v27 setAxis:1];
  [v27 setDistribution:4];
  [v27 setAlignment:1];
  [v27 addArrangedSubview:v9];
  [v27 addArrangedSubview:v14];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v17 addArrangedSubview:v27];
  [v17 addArrangedSubview:v18];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [*&v1[v26] contentView];
  [v21 addSubview:v17];

  v22 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel];
  v23 = [v10 secondaryLabelColor];
  [v22 setTextColor:v23];

  [v22 setPreferredVibrancy:1];
  [v22 setTextAlignment:1];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v24];
  v25 = [v24 contentView];
  [v25 addSubview:v22];

  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  sub_1006B01B0(&v28);
}

id sub_1006AF9CC(void *a1)
{
  v2 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView;
  *&v1[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_labelStack;
  *&v1[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_titleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_subtitleLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView;
  v9 = objc_opt_self();
  v10 = [v9 effectWithStyle:6];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *&v1[v8] = v11;
  v12 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteLabel;
  *&v1[v12] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView] = 0;
  v13 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurredEffectView;
  v14 = [v9 effectWithStyle:6];
  v15 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v14];

  *&v1[v13] = v15;
  *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_sizeConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_asset] = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for LinkAssetGridView();
  v16 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

void sub_1006AFC1C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView];
  if (!v2)
  {
    v4 = objc_opt_self();
    v5 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_sizeConstraints;
    swift_beginAccess();
    sub_1000065A8(0, &qword_100AD8000);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 deactivateConstraints:isa];

    *&v1[v5] = _swiftEmptyArrayStorage;

    sub_1006B2980();
    v7 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    if (((1 << v7) & 0x79) != 0)
    {
      [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView] setHidden:1];
      [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView] setHidden:0];
      sub_1000F24EC(&unk_100AD4780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100941D50;
      v9 = [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView] trailingAnchor];
      v10 = [v1 trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
    }

    else
    {
      if (((1 << v7) & 6) == 0)
      {
LABEL_10:

        v13 = Array._bridgeToObjectiveC()().super.isa;

        [v4 activateConstraints:v13];

        return;
      }

      [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView] setHidden:0];
      [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView] setHidden:1];
      sub_1000F24EC(&unk_100AD4780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100941D50;
      v9 = [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_assetImageView] widthAnchor];
      v10 = [v1 heightAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
    }

    v12 = v11;

    *(inited + 32) = v12;
    swift_beginAccess();
    sub_1006AE010(inited, sub_1006B36A8);
    swift_endAccess();
    goto LABEL_10;
  }

  v3 = v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v14 = v2;
  sub_10021BE90(v3);
}

void sub_1006AFF8C()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_asset);
}

id sub_1006B006C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006B01B0(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[2];
  v34 = a1[4];
  v5 = a1[5];
  v35 = a1[6];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView;
  v9 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView];
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v10 = *a1;
  v11 = *&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_blurImageView];
  if (*a1 >= 2)
  {
    [v11 setHidden:0];
    [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView] setHidden:0];
    v14 = *&v1[v8];
    *&v1[v8] = 0;

    sub_1006B22F4(a1);
LABEL_25:
    sub_1006AFC1C();
    return;
  }

  v12 = 1802398060;
  [v11 setHidden:1];
  [*&v1[OBJC_IVAR____TtC7Journal17LinkAssetGridView_footnoteBlurView] setHidden:1];
  v13 = 0xE400000000000000;
  if (v10 == 1)
  {
    v32 = 0xE400000000000000;
    v33 = 1802398060;
  }

  else
  {
    if (a1[8])
    {
      v12 = a1[7];
      v13 = a1[8];
    }

    v32 = v13;
    v33 = v12;
    if (v4)
    {
      v31 = v5;

      v15 = v34;
      goto LABEL_19;
    }
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();

  if (v10 == 1)
  {
    v5 = 0;
  }

  v31 = v5;
  if (v10 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v35;
  }

  v15 = v34;
  v35 = v16;
  if (v10 == 1)
  {
    v15 = 0;
  }

LABEL_19:
  v17 = [objc_allocWithZone(type metadata accessor for SymbolAndTextFallbackView()) initWithFrame:{0.0, 0.0, 0.0, 0.0, v31}];
  v18 = &v17[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName];
  *v18 = v33;
  v18[1] = v32;
  v19 = v17;

  v20 = *&v19[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v22 = *&v19[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel];
  v23 = v22;
  if (v15)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v25 = v35;
  [v22 setText:v24];

  v26 = *&v19[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel];
  v27 = v26;
  if (v35)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  [v26 setText:v25];

  v28 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack;
  [*&v19[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack] setAxis:1];
  [*&v19[v28] setDistribution:4];
  v29 = *&v19[v28];

  [v29 setAlignment:1];
  [v2 addSubview:v19];
  sub_100013178(0.0);

  sub_10021BE90(v2[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType]);
  v30 = *&v2[v8];
  *&v2[v8] = v19;

  if (*a1 != 1)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1006B05D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = type metadata accessor for LinkAssetMetadata();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD50C8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_1006B0754, v6, v5);
}

uint64_t sub_1006B0754()
{
  v1 = sub_1001D863C();
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[26] = v3;
    *v3 = v0;
    v3[1] = sub_1006B09B0;

    return sub_1006B4D38((v0 + 2), v2);
  }

  if (*(v0[13] + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    v5 = v0[19];
    v6 = v0[15];
    v7 = v0[16];

    sub_10025E308(v5);

    if (!(*(v7 + 48))(v5, 1, v6))
    {
      v10 = v0[19];
      v12 = v0[16];
      v11 = v0[17];
      v13 = v0[15];
      (*(v12 + 16))(v11, v10, v13);
      sub_100004F84(v10, &qword_100AD50C8);
      LinkAssetMetadata.url.getter();
      (*(v12 + 8))(v11, v13);
      goto LABEL_10;
    }

    sub_100004F84(v0[19], &qword_100AD50C8);
  }

  v8 = v0[21];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_10:
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_1006B0E1C;
  v15 = v0[21];

  return sub_1006B12D8(v15, 0);
}

uint64_t sub_1006B09B0()
{
  v1 = *v0;

  v1[27] = v1[2];
  v1[28] = v1[4];
  v1[29] = v1[6];
  v1[30] = v1[8];
  v1[31] = v1[10];
  v2 = v1[24];
  v3 = v1[23];

  return _swift_task_switch(sub_1006B0B4C, v3, v2);
}

uint64_t sub_1006B0B4C()
{
  if (v0[2] == 1)
  {
    if (*(v0[13] + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
    {
      v1 = v0[18];
      v2 = v0[15];
      v3 = v0[16];

      sub_10025E308(v1);

      if (!(*(v3 + 48))(v1, 1, v2))
      {
        v12 = v0[17];
        v11 = v0[18];
        v13 = v0[15];
        v14 = v0[16];
        (*(v14 + 16))(v12, v11, v13);
        sub_100004F84(v11, &qword_100AD50C8);
        LinkAssetMetadata.url.getter();
        (*(v14 + 8))(v12, v13);
        goto LABEL_10;
      }

      sub_100004F84(v0[18], &qword_100AD50C8);
    }

    v4 = v0[20];
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
LABEL_10:
    v15 = v0[13];
    v16 = swift_task_alloc();
    v0[33] = v16;
    *v16 = v0;
    v16[1] = sub_1006B1008;
    v17 = v0[20];

    return sub_1006B12D8(v17, v15);
  }

  v6 = v0[27];
  v7 = v0[25];

  v8 = v6;

  sub_1006B01B0(v0 + 2);

  sub_100004F84((v0 + 2), &qword_100AED4C0);
  sub_100004F84((v0 + 2), &qword_100AED4C0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006B0E1C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  sub_100004F84(v2, &unk_100AD6DD0);
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_1006B0F70, v4, v3);
}

uint64_t sub_1006B0F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B1008()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  sub_100004F84(v2, &unk_100AD6DD0);
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_1006B115C, v4, v3);
}

uint64_t sub_1006B115C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B11FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032ECC;

  return sub_1006B05D8(a1, v5, v4);
}

uint64_t sub_1006B12D8(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  type metadata accessor for Locale();
  v3[44] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[45] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v3[46] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for MainActor();
  v3[51] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[52] = v6;
  v3[53] = v5;

  return _swift_task_switch(sub_1006B1464, v6, v5);
}

uint64_t sub_1006B1464()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_1000082B4(v0[41], v3, &unk_100AD6DD0);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[46];
  if (v4 == 1)
  {

    sub_100004F84(v5, &unk_100AD6DD0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[43];
    (*(v0[48] + 32))(v0[49], v0[46], v0[47]);
    v9 = OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView;
    v10 = *(v8 + OBJC_IVAR____TtC7Journal17LinkAssetGridView_linkFallbackView);
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    v11 = v0[43];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = [objc_allocWithZone(type metadata accessor for SymbolAndTextFallbackView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v0[54] = v12;
    *&v12[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName] = xmmword_100946A30;
    v13 = v12;

    v14 = *&v13[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
    v15 = String._bridgeToObjectiveC()();

    [v14 setText:v15];

    [*&v13[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel] setText:0];
    [*&v13[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel] setText:0];
    v16 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack;
    [*&v13[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack] setAxis:1];
    [*&v13[v16] setDistribution:4];
    v17 = *&v13[v16];

    [v17 setAlignment:1];
    [v11 addSubview:v13];
    sub_100013178(0.0);

    sub_10021BE90(v11[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType]);
    v18 = *(v8 + v9);
    *(v8 + v9) = v13;
    v19 = v13;

    v20 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[55] = v20;
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v0[56] = v22;
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_1006B189C;
    v24 = swift_continuation_init();
    v0[39] = sub_1000F24EC(&qword_100AD7A50);
    v0[32] = _NSConcreteStackBlock;
    v0[33] = 1107296256;
    v0[34] = sub_10039677C;
    v0[35] = &unk_100A78568;
    v0[36] = v24;
    [v20 startFetchingMetadataForURL:v23 completionHandler:v0 + 32];

    return _swift_continuation_await(v0 + 2);
  }
}