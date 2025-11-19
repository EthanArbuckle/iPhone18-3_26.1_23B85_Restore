uint64_t sub_100001078()
{
  v1 = v0;
  v80 = type metadata accessor for CharacterSet();
  v71 = *(v80 - 8);
  v2 = *(v71 + 64);
  __chkstk_darwin(v80);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkInfo = type metadata accessor for GetNetworkInfo();
  v10 = NetworkInfo[8];
  sub_100002A20(&qword_1000184A0, &qword_10000E218);
  Argument.wrappedValue.getter();
  sub_100002A20(&qword_100018498, &qword_10000E210);
  Flag.wrappedValue.getter();
  v69 = v74;
  v11 = v1 + NetworkInfo[5];
  Flag.wrappedValue.getter();
  v68 = v74;
  v12 = v1 + NetworkInfo[6];
  Flag.wrappedValue.getter();
  v67 = v74;
  v13 = v1 + NetworkInfo[7];
  Flag.wrappedValue.getter();
  v66 = v74;
  v14 = type metadata accessor for GNICollector();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;

  FilePath.init(_:)();
  v64 = v5;
  v65 = v4;
  (*(v5 + 16))(v8, v17 + v18, v4);
  v19 = type metadata accessor for GNISubprocessRunner(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_10000C4D8(v8);
  if (!v22)
  {
LABEL_18:
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10000E200;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = 0xD000000000000036;
    *(v52 + 40) = 0x800000010000F8A0;
    print(_:separator:terminator:)();
    goto LABEL_24;
  }

  v23 = v22;
  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr) = v22;

  sub_100009C0C(0xD000000000000011, 0x800000010000F8E0, 0, 0, 0, 0);
  if (!v25)
  {
    v53 = static os_log_type_t.error.getter();
    sub_10000B344(0xD00000000000001BLL, 0x800000010000F900, v53);
    exit(1);
  }

  v26 = v24;
  v27 = v25;

  v63 = v23;

  v74 = v26;
  v75 = v27;
  v28 = v70;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100002D38();
  v29 = StringProtocol.components(separatedBy:)();
  (*(v71 + 8))(v28, v80);

  v30 = 0;
  v31 = *(v29 + 16);
  v32 = v29 + 40;
  v33 = _swiftEmptyArrayStorage;
LABEL_4:
  v34 = (v32 + 16 * v30);
  while (v31 != v30)
  {
    if (v30 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v30;
    v35 = *(v34 - 1);
    v36 = *v34;
    v34 += 2;
    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v33;
      v80 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, v33[2] + 1, 1);
        v33 = v74;
      }

      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        sub_100003288((v39 > 1), v40 + 1, 1);
        v33 = v74;
      }

      v33[2] = v40 + 1;
      v41 = &v33[2 * v40];
      v41[4] = v35;
      v41[5] = v36;
      v32 = v80;
      goto LABEL_4;
    }
  }

  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList) = v33;
  v42 = v68;
  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSystemConfigurationFiles) = v69;
  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectNDFInformation) = v42;
  v43 = v66;
  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) = v67;
  *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector__disablePacketCapture) = v43;
  v44 = [objc_opt_self() standardUserDefaults];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 BOOLForKey:v45];

  if ((v46 & 1) == 0)
  {
    sub_100003F00();
    swift_setDeallocating();
    (*(v64 + 8))(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v65);
    v47 = *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

    v48 = *(v17 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);

    v49 = *(*v17 + 48);
    v50 = *(*v17 + 52);
    return swift_deallocClassInstance();
  }

  v78 = 32;
  v79 = 0xE100000000000000;
  result = static CommandLine.arguments.getter();
  v54 = *(result + 16);
  if (v54)
  {
    v74 = result;
    v75 = result + 32;
    v76 = 1;
    v77 = (2 * v54) | 1;
    sub_100002A20(&qword_100018578, &qword_10000E2F0);
    sub_100003798(&qword_100018580, &qword_100018578, &qword_10000E2F0);
    v55 = BidirectionalCollection<>.joined(separator:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v74 = v78;
    v75 = v79;
    v72 = 0xD000000000000054;
    v73 = 0x800000010000F940;

    v72 = String.init<A>(_:)();
    v73 = v59;
    String.append<A>(contentsOf:)();

    v61 = v72;
    v60 = v73;

    LOBYTE(v60) = sub_1000096A4(v61, v60);

    if (v60)
    {
      exit(0);
    }

    sub_100002A20(&qword_100018568, &qword_10000E950);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10000E200;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 32) = 0xD00000000000006FLL;
    *(v62 + 40) = 0x800000010000F9A0;
    print(_:separator:terminator:)();
LABEL_24:

    exit(1);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000184C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000018C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100001904()
{
  v1 = *v0;
  v2 = 0x657269446F666E69;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  v3 = 0xD00000000000001FLL;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000019BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000019FC(uint64_t a1)
{
  v2 = sub_10000369C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001A38(uint64_t a1)
{
  v2 = sub_10000369C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001A74()
{
  v0 = (*(*(sub_100002A20(&qword_1000185B0, &qword_10000E320) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v16 - v1;
  v3 = (*(*(sub_100002A20(&qword_1000185B8, &qword_10000E328) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = *(*(type metadata accessor for NameSpecification() - 8) + 64);
  __chkstk_darwin();
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v7 = type metadata accessor for ArgumentHelp();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  NetworkInfo = type metadata accessor for GetNetworkInfo();
  v10 = NetworkInfo[5];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  v11 = NetworkInfo[6];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  v12 = NetworkInfo[7];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  v13 = NetworkInfo[8];
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  v14 = type metadata accessor for CompletionKind();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  return Argument<A>.init(help:completion:)();
}

uint64_t sub_100001E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v50 = a2;
  v52 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
  v49 = *(v52 - 8);
  v2 = *(v49 + 64);
  __chkstk_darwin(v52);
  v51 = &v49 - v3;
  v61 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v58 = *(v61 - 8);
  v4 = *(v58 + 64);
  v5 = __chkstk_darwin(v61);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v56 = &v49 - v8;
  v9 = __chkstk_darwin(v7);
  v57 = &v49 - v10;
  __chkstk_darwin(v9);
  v60 = &v49 - v11;
  v62 = sub_100002A20(&qword_1000185C0, &qword_10000E330);
  v59 = *(v62 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v62);
  v66 = &v49 - v13;
  v14 = sub_100002A20(&qword_1000185B0, &qword_10000E320);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v63 = &v49 - v16;
  v17 = sub_100002A20(&qword_1000185B8, &qword_10000E328);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v49 - v19;
  v21 = type metadata accessor for NameSpecification();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  NetworkInfo = type metadata accessor for GetNetworkInfo();
  v24 = (NetworkInfo - 8);
  v25 = *(*(NetworkInfo - 8) + 64);
  __chkstk_darwin(NetworkInfo);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v28 = type metadata accessor for ArgumentHelp();
  v29 = *(*(v28 - 8) + 56);
  v29(v20, 0, 1, v28);
  Flag<A>.init(wrappedValue:name:help:)();
  v30 = v24[7];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v29(v20, 0, 1, v28);
  v55 = v30;
  Flag<A>.init(wrappedValue:name:help:)();
  v31 = v24[8];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v29(v20, 0, 1, v28);
  v53 = v31;
  Flag<A>.init(wrappedValue:name:help:)();
  v32 = v24[9];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v29(v20, 0, 1, v28);
  Flag<A>.init(wrappedValue:name:help:)();
  v33 = v24[10];
  v34 = v64;
  ArgumentHelp.init(stringLiteral:)();
  v29(v20, 0, 1, v28);
  v35 = v33;
  v36 = type metadata accessor for CompletionKind();
  (*(*(v36 - 8) + 56))(v63, 1, 1, v36);
  Argument<A>.init(help:completion:)();
  v37 = v34[4];
  sub_100003658(v34, v34[3]);
  sub_10000369C();
  v38 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v38)
  {
    v63 = v35;
    v65 = v32;
    v39 = v58;
    v71 = 0;
    sub_100003798(&qword_1000185D0, &qword_100018498, &qword_10000E210);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = *(v39 + 40);
    v40(v27, v60, v61);
    v70 = 1;
    v41 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40(v27 + v55, v41, v61);
    v69 = 2;
    v42 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40(v27 + v53, v42, v61);
    v68 = 3;
    v43 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40(v27 + v65, v43, v61);
    v67 = 4;
    sub_100003798(&qword_1000185D8, &qword_1000184A0, &qword_10000E218);
    v46 = v51;
    v45 = v52;
    v47 = v62;
    v48 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v59 + 8))(v48, v47);
    (*(v49 + 40))(&v63[v27], v46, v45);
    sub_1000037E0(v27, v50);
  }

  sub_1000036F0(v34);
  return sub_10000373C(v27);
}

uint64_t sub_1000026C4()
{
  v0 = (*(*(sub_100002A20(&qword_1000185A8, &qword_10000E318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v5 - v1;
  v3 = type metadata accessor for NameSpecification();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GetNetworkInfo();
  sub_100002CA8(&qword_100018490, type metadata accessor for GetNetworkInfo);
  static ParsableCommand.main()();
  return 0;
}

uint64_t type metadata accessor for GetNetworkInfo()
{
  result = qword_100018500;
  if (!qword_100018500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100002A20(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100002B90()
{
  sub_100003A08(319, &qword_100018510, &type metadata for Bool, &type metadata accessor for Flag);
  if (v0 <= 0x3F)
  {
    sub_100003A08(319, &unk_100018518, &type metadata for String, &type metadata accessor for Argument);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100002CA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100002D38()
{
  result = qword_100018570;
  if (!qword_100018570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018570);
  }

  return result;
}

uint64_t sub_100002DAC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002E24(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002EA4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002EEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100002F78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002FC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v2 = sub_100002CA8(&qword_100018648, type metadata accessor for FileAttributeKey);
  v3 = sub_100002CA8(&qword_100018650, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000030A8(uint64_t a1)
{
  v2 = sub_100002CA8(&qword_100018638, type metadata accessor for FileAttributeType);
  v3 = sub_100002CA8(&qword_100018640, type metadata accessor for FileAttributeType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003164()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000031A0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000031F4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

char *sub_100003268(char *a1, int64_t a2, char a3)
{
  result = sub_100003310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003288(char *a1, int64_t a2, char a3)
{
  result = sub_100003418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000032A8(uint64_t *a1, uint64_t *a2)
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

void *sub_1000032F0(void *a1, int64_t a2, char a3)
{
  result = sub_100003524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003310(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018588, &qword_10000E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100003418(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_1000185A0, &qword_10000E310);
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

void *sub_100003524(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002A20(&qword_100018590, &qword_10000E300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002A20(&qword_100018598, &qword_10000E308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100003658(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000369C()
{
  result = qword_1000185C8;
  if (!qword_1000185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185C8);
  }

  return result;
}

uint64_t sub_1000036F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000373C(uint64_t a1)
{
  NetworkInfo = type metadata accessor for GetNetworkInfo();
  (*(*(NetworkInfo - 8) + 8))(a1, NetworkInfo);
  return a1;
}

uint64_t sub_100003798(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000032A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000037E0(uint64_t a1, uint64_t a2)
{
  NetworkInfo = type metadata accessor for GetNetworkInfo();
  (*(*(NetworkInfo - 8) + 16))(a2, a1, NetworkInfo);
  return a2;
}

uint64_t getEnumTagSinglePayload for GetNetworkInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GetNetworkInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100003A08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100003BC4()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

unint64_t sub_100003C1C()
{
  result = qword_100018620;
  if (!qword_100018620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018620);
  }

  return result;
}

unint64_t sub_100003C74()
{
  result = qword_100018628;
  if (!qword_100018628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018628);
  }

  return result;
}

uint64_t sub_100003D10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x800000010000FB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000FB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010000FBB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000FBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657269446F666E69 && a2 == 0xED000079726F7463)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100003F00()
{
  sub_100008168();
  sub_100004F8C();
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectNDFInformation) == 1)
  {
    sub_100003FA4(&off_100015340, _swiftEmptyArrayStorage);
  }

  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSystemConfigurationFiles) == 1)
  {
    sub_100004334(&off_1000153B0);
  }

  result = sub_1000085BC();
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) == 1)
  {

    return sub_100003FA4(&off_100015590, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100003FA4(uint64_t result, uint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {
    v3 = *(v2 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v6 = result + 32;

    v7 = 0;
    v34 = (v3 + 40);
    v35 = v3;
    v36 = v6;
    v37 = v4;
    v41 = v2;
    while (1)
    {
      v8 = v6 + 40 * v7;
      v10 = *v8;
      v9 = *(v8 + 8);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (*(v8 + 32) == 1)
      {
        v13 = *(v3 + 16);
        if (!v13)
        {
          goto LABEL_7;
        }

        v39 = *(v8 + 16);
        v40 = *(v8 + 24);
        v38 = v7;

        v14 = v34;
        do
        {
          v16 = *(v14 - 1);
          v15 = *v14;
          v17 = v5;
          v18 = *(v41 + v5);
          sub_100002A20(&qword_100018778, &qword_10000E7D8);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10000E200;
          *(v19 + 56) = &type metadata for String;
          *(v19 + 64) = sub_1000092A4();
          *(v19 + 32) = v16;
          *(v19 + 40) = v15;
          sub_100002D38();

          v20 = StringProtocol.appendingFormat<A>(_:_:)();
          v22 = v21;

          LOBYTE(v20) = sub_100009C0C(v20, v22, v39, v40, 0, 0);

          if ((v20 & 1) == 0)
          {
            v23 = *(v41 + v17);

            v24._countAndFlagsBits = v10;
            v24._object = v9;
            String.append(_:)(v24);
            v25._countAndFlagsBits = 39;
            v25._object = 0xE100000000000000;
            String.append(_:)(v25);
            v26 = static os_log_type_t.error.getter();
            sub_10000B344(0x203A44454C494146, 0xE900000000000027, v26);
          }

          v14 += 2;
          --v13;
          v5 = v17;
        }

        while (v13);

        v2 = v41;
        v3 = v35;
      }

      else
      {
        v38 = v7;
        v27 = *(v2 + v5);
        v28 = *(v8 + 24);

        v29 = sub_100009C0C(v10, v9, v12, v28, 0, 0);

        if (!v29)
        {
          v30 = *(v2 + v5);

          v31._countAndFlagsBits = v10;
          v31._object = v9;
          String.append(_:)(v31);

          v32._countAndFlagsBits = 39;
          v32._object = 0xE100000000000000;
          String.append(_:)(v32);
          v33 = static os_log_type_t.error.getter();
          sub_10000B344(0x203A44454C494146, 0xE900000000000027, v33);
        }
      }

      v6 = v36;
      v4 = v37;

      v7 = v38;
LABEL_7:
      if (++v7 == v4)
      {
      }
    }
  }

  return result;
}

uint64_t sub_100004334(uint64_t a1)
{
  v2 = sub_100002A20(&qword_100018768, &qword_10000E7C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v114 = v111 - v4;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v111 - v11;
  v13 = sub_100002A20(&qword_100018770, &qword_10000E7D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v123 = v111 - v15;
  v131 = type metadata accessor for FilePath();
  v16 = *(v131 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v131);
  v125 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v124 = v111 - v21;
  v22 = __chkstk_darwin(v20);
  v122 = v111 - v23;
  v24 = __chkstk_darwin(v22);
  v121 = v111 - v25;
  result = __chkstk_darwin(v24);
  v120 = v111 - v27;
  v28 = *(a1 + 16);
  if (v28)
  {
    v136 = objc_opt_self();
    v132 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v129 = "_disablePacketCapture";
    v130 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v127 = (v16 + 8);
    v128 = (v16 + 16);
    v119 = NSFileType;
    v113 = (v6 + 56);
    v112 = (v6 + 8);
    v118 = NSFileTypeSymbolicLink;
    v29 = (a1 + 56);
    v126 = xmmword_10000E200;
    v117 = v5;
    v116 = v10;
    v115 = v12;
    do
    {
      v37 = *(v29 - 3);
      v36 = *(v29 - 2);
      v39 = *(v29 - 1);
      v38 = *v29;

      v40 = [v136 defaultManager];
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 fileExistsAtPath:v41];

      if (v42)
      {
        v134 = v37;
        v135 = v36;
        v43 = *v128;
        if (v38)
        {
          v44 = v131;
          v43(v125, v133 + v130, v131);
          v45 = v124;
          FilePath.appending(_:)();
          v46 = FilePath.description.getter();
          v48 = v47;
          (*v127)(v45, v44);
        }

        else
        {
          v49 = v131;
          v43(v121, v133 + v130, v131);

          v50 = v122;
          FilePath.init(_:)();
          v51 = v123;
          FilePath.lastComponent.getter();
          v52 = *v127;
          (*v127)(v50, v49);
          v53 = type metadata accessor for FilePath.Component();
          if ((*(*(v53 - 8) + 48))(v51, 1, v53) == 1)
          {
            __break(1u);
          }

          v54 = v120;
          FilePath.appending(_:)();
          v55 = FilePath.description.getter();
          v48 = v56;
          v57 = v54;
          v46 = v55;
          v52(v57, v49);
        }

        v58 = [v136 defaultManager];
        v59 = v134;
        v60 = String._bridgeToObjectiveC()();
        v138 = 0;
        v61 = [v58 attributesOfItemAtPath:v60 error:&v138];

        v62 = v138;
        if (v61)
        {
          type metadata accessor for FileAttributeKey(0);
          sub_10000965C(&qword_100018648, type metadata accessor for FileAttributeKey);
          v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v62;

          if (*(v63 + 16) && (v65 = sub_1000092F8(v119), (v66 & 1) != 0))
          {
            sub_10000938C(*(v63 + 56) + 32 * v65, &v138);

            type metadata accessor for FileAttributeType(0);
            if (swift_dynamicCast())
            {
              v67 = v137;
              v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v70 = v69;
              if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
              {

LABEL_26:
                v90 = [v136 defaultManager];
                v91 = String._bridgeToObjectiveC()();
                v138 = 0;
                v92 = [v90 destinationOfSymbolicLinkAtPath:v91 error:&v138];

                v93 = v138;
                if (!v92)
                {
                  v107 = v138;

                  _convertNSErrorToError(_:)();

                  swift_willThrow();

                  goto LABEL_5;
                }

                v111[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v94 = v93;

                v95 = v114;
                URL.init(fileURLWithPath:)();
                (*v113)(v95, 0, 1, v117);
                URL.init(fileURLWithPath:relativeTo:)();

                sub_1000095C8(v95, &qword_100018768, &qword_10000E7C8);
                URL.init(fileURLWithPath:)();
                v96 = [v136 defaultManager];
                URL._bridgeToObjectiveC()(v97);
                v99 = v98;
                URL._bridgeToObjectiveC()(v100);
                v102 = v101;
                v138 = 0;
                v103 = [v96 copyItemAtURL:v99 toURL:v101 error:&v138];

                if (v103)
                {
                  v104 = v138;

                  v105 = *v112;
                  v106 = v117;
                  (*v112)(v116, v117);
                  result = (v105)(v115, v106);
                  goto LABEL_5;
                }

                v108 = v138;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v109 = *v112;
                v110 = v117;
                (*v112)(v116, v117);
                v109(v115, v110);
LABEL_24:
                v79 = *(v133 + v132);
                v138 = 0;
                v139 = 0xE000000000000000;

                _StringGuts.grow(_:)(34);
                v80._countAndFlagsBits = 0x203A44454C494146;
                v80._object = 0xEC00000020706327;
                String.append(_:)(v80);
                v81._countAndFlagsBits = v59;
                v81._object = v135;
                String.append(_:)(v81);

                v82._countAndFlagsBits = 32;
                v82._object = 0xE100000000000000;
                String.append(_:)(v82);
                v83._countAndFlagsBits = v46;
                v83._object = v48;
                String.append(_:)(v83);

                v84._countAndFlagsBits = 0x6520687469772027;
                v84._object = 0xEE002720726F7272;
                String.append(_:)(v84);
                swift_getErrorValue();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                v85._countAndFlagsBits = 39;
                v85._object = 0xE100000000000000;
                String.append(_:)(v85);
                v86 = v138;
                v87 = v139;
                v88 = static os_log_type_t.error.getter();
                sub_10000B344(v86, v87, v88);

                goto LABEL_5;
              }

              v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v89)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v72 = v138;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v73 = [v136 defaultManager];
        v74 = String._bridgeToObjectiveC()();
        v75 = String._bridgeToObjectiveC()();
        v138 = 0;
        v76 = [v73 copyItemAtPath:v74 toPath:v75 error:&v138];

        if (!v76)
        {
          v78 = v138;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v59 = v134;
          goto LABEL_24;
        }

        v77 = v138;
      }

      else
      {

        v30 = *(v133 + v132);
        sub_100002A20(&qword_100018778, &qword_10000E7D8);
        v31 = swift_allocObject();
        *(v31 + 16) = v126;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_1000092A4();
        *(v31 + 32) = v37;
        *(v31 + 40) = v36;

        v32 = String.init(format:_:)();
        v34 = v33;
        v35 = static os_log_type_t.info.getter();
        sub_10000B344(v32, v34, v35);
      }

LABEL_5:
      v29 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_100004F8C()
{
  v1 = v0;
  v127 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v121 = *(v127 - 8);
  v2 = *(v121 + 64);
  __chkstk_darwin(v127);
  v126 = &v118 - v3;
  v4 = type metadata accessor for String.Encoding();
  v123 = *(v4 - 8);
  v124 = v4;
  v5 = *(v123 + 64);
  v6 = __chkstk_darwin(v4);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v118 - v8;
  v9 = type metadata accessor for FilePath();
  v131 = *(v9 - 8);
  v10 = *(v131 + 64);
  v11 = __chkstk_darwin(v9);
  v129 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = &v118 - v13;
  v14 = type metadata accessor for CharacterSet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v135 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FA4(&off_1000149E8, _swiftEmptyArrayStorage);
  v18 = *(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = (v18 + 40);
    while (v20 < *(v18 + 16))
    {
      ++v20;
      v22 = *v21;
      v137 = *(v21 - 1);
      v138 = v22;

      sub_100005DB4(&v137, v1);

      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

LABEL_5:
  v136 = v9;
  v23 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
  v24 = *(v1 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

  sub_100009C0C(0xD00000000000001CLL, 0x800000010000FE70, 0, 0, 0, 0);
  v26 = v25;
  v28 = v27;

  v132 = v15;
  v133 = v14;
  v134 = v23;
  if (v28)
  {
    v137 = v26;
    v138 = v28;
    v29 = v135;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100002D38();
    v30 = StringProtocol.components(separatedBy:)();
    (*(v15 + 8))(v29, v14);

    v31 = 0;
    v32 = *(v30 + 16);
    v33 = (v30 + 40);
    v34 = _swiftEmptyArrayStorage;
LABEL_7:
    v35 = &v33[16 * v31];
    while (v32 != v31)
    {
      if (v31 >= *(v30 + 16))
      {
        goto LABEL_55;
      }

      ++v31;
      v36 = *(v35 - 1);
      v37 = *v35;
      v35 += 16;
      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v34;
        v125 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100003288(0, v34[2] + 1, 1);
          v34 = v137;
        }

        v41 = v34[2];
        v40 = v34[3];
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          sub_100003288((v40 > 1), v41 + 1, 1);
          v42 = v41 + 1;
          v34 = v137;
        }

        v34[2] = v42;
        v43 = &v34[2 * v41];
        v43[4] = v36;
        v43[5] = v37;
        v33 = v125;
        goto LABEL_7;
      }
    }

    sub_100003FA4(&off_100015250, v34);

    sub_1000095C8(&unk_100015270, &qword_1000187C0, &qword_10000E800);
    v15 = v132;
    v14 = v133;
    v23 = v134;
  }

  else
  {
    v44 = *(v1 + v23);

    v45 = static os_log_type_t.error.getter();
    sub_10000B344(0xD000000000000029, 0x800000010000FE90, v45);
  }

  v46 = *(v1 + v23);

  sub_100009C0C(0xD000000000000019, 0x800000010000FEC0, 0, 0, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  v48 = v47;
  v50 = v49;

  if (v50)
  {
    v137 = v48;
    v138 = v50;
    v51 = v135;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100002D38();
    v52 = StringProtocol.components(separatedBy:)();
    (*(v15 + 8))(v51, v14);

    v53 = 0;
    v54 = *(v52 + 16);
    v55 = (v52 + 40);
    v56 = _swiftEmptyArrayStorage;
LABEL_22:
    v57 = v136;
    v58 = &v55[16 * v53];
    while (v54 != v53)
    {
      if (v53 >= *(v52 + 16))
      {
        goto LABEL_56;
      }

      ++v53;
      v59 = *(v58 - 1);
      v60 = *v58;
      v58 += 16;
      v61 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v61 = v59 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {

        v62 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v56;
        if ((v62 & 1) == 0)
        {
          sub_100003288(0, v56[2] + 1, 1);
          v56 = v137;
        }

        v64 = v56[2];
        v63 = v56[3];
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v125 = v55;
          sub_100003288((v63 > 1), v64 + 1, 1);
          v65 = v64 + 1;
          v55 = v125;
          v56 = v137;
        }

        v56[2] = v65;
        v66 = &v56[2 * v64];
        v66[4] = v59;
        v66[5] = v60;
        goto LABEL_22;
      }
    }

    sub_100003FA4(&off_100015298, v56);

    sub_1000095C8(&unk_1000152B8, &qword_1000187C0, &qword_10000E800);
    v67 = v134;
  }

  else
  {
    v68 = *(v1 + v23);
    v67 = v23;

    v69 = static os_log_type_t.error.getter();
    sub_10000B344(0xD000000000000026, 0x800000010000FEE0, v69);

    v57 = v136;
  }

  v70 = *(v1 + v67);

  v71 = sub_100009C0C(0xD000000000000013, 0x800000010000FF30, 0xD000000000000017, 0x800000010000FF10, 0, 0);

  v72 = &_s10Foundation12CharacterSetV22whitespacesAndNewlinesACvgZ_ptr;
  v73 = &GNICollector;
  if (v71)
  {
    v74 = v131;
    v75 = *(v131 + 16);
    v120 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v76 = v57;
    v77 = v129;
    v125 = v75;
    (v75)(v129, v1 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v76);
    v78 = v130;
    FilePath.appending(_:)();
    v79 = FilePath.description.getter();
    v81 = v80;
    v119 = *(v74 + 8);
    v119(v78, v76);
    static String.Encoding.utf8.getter();
    v131 = v79;
    v134 = v81;
    v82 = String.init(contentsOfFile:encoding:)();
    v84 = v83;
    (v125)(v77, v1 + v120, v76);
    FilePath.appending(_:)();
    FilePath.description.getter();
    v119(v78, v76);
    v85 = String._bridgeToObjectiveC()();
    v86 = [objc_opt_self() fileHandleForUpdatingAtPath:v85];

    if (v86)
    {
      [v86 seekToEndOfFile];
      sub_100002A20(&qword_100018798, &qword_10000E7F0);
      sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0);
      v87 = v126;
      Regex.init<A>(_:)();
      v137 = v82;
      v138 = v84;
      v88 = v135;
      static CharacterSet.newlines.getter();
      sub_100002D38();
      v89 = StringProtocol.components(separatedBy:)();
      v90 = (*(v132 + 8))(v88, v133);
      __chkstk_darwin(v90);
      *(&v118 - 2) = v87;
      v91 = sub_100006B00(sub_1000094EC, (&v118 - 4), v89);

      v137 = v91;
      sub_100002A20(&qword_1000187A8, &qword_10000E7F8);
      sub_100003798(&qword_1000187B0, &qword_1000187A8, &qword_10000E7F8);
      BidirectionalCollection<>.joined(separator:)();
      v92 = v122;
      static String.Encoding.utf8.getter();
      v93 = String.data(using:allowLossyConversion:)();
      v95 = v94;

      result = (*(v123 + 8))(v92, v124);
      if (v95 >> 60 == 15)
      {
        __break(1u);
        return result;
      }

      v137 = v93;
      v138 = v95;
      sub_100009520();
      NSFileHandle.write<A>(contentsOf:)();
      v73 = &GNICollector;
      v72 = &_s10Foundation12CharacterSetV22whitespacesAndNewlinesACvgZ_ptr;
      sub_100009574(v137, v138);
      v137 = 0;
      if ([v86 closeAndReturnError:&v137])
      {
        v97 = v137;
      }

      else
      {
        v98 = v137;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v121 + 8))(v126, v127);
    }

    else
    {

      v73 = &GNICollector;
      v72 = &_s10Foundation12CharacterSetV22whitespacesAndNewlinesACvgZ_ptr;
    }

    v99 = v72[191];
    v100 = [objc_opt_self() *&v73[11].ivar_base_size];
    v101 = String._bridgeToObjectiveC()();

    v137 = 0;
    v102 = [v100 removeItemAtPath:v101 error:&v137];

    if (v102)
    {
      v103 = v137;
    }

    else
    {
      v104 = v137;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v105 = v72[191];
  v106 = [objc_opt_self() *&v73[11].ivar_base_size];
  v107 = String._bridgeToObjectiveC()();
  v137 = 0;
  v108 = [v106 contentsOfDirectoryAtPath:v107 error:&v137];

  v109 = v137;
  if (v108)
  {
    v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v109;

    v112 = *(v110 + 16);
    if (v112)
    {
      v113 = 0;
      v114 = (v110 + 40);
      while (v113 < *(v110 + 16))
      {
        ++v113;
        v115 = *v114;
        v137 = *(v114 - 1);
        v138 = v115;

        sub_100006C28(&v137, v1);

        v114 += 2;
        if (v112 == v113)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_57;
    }

LABEL_51:
  }

  else
  {
    v116 = v137;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v117 = sub_10000801C(&off_1000152E0);
  sub_100002A20(&qword_100018790, &qword_10000E7E8);
  swift_arrayDestroy();
  sub_100004334(v117);
}

uint64_t sub_100005DB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_100002A20(&qword_100018778, &qword_10000E7D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000E200;
  *(v5 + 56) = &type metadata for String;
  v25 = sub_1000092A4();
  *(v5 + 64) = v25;
  v26 = v3;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;

  v6 = String.init(format:_:)();
  v8 = v7;
  v9 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
  v10 = *(a2 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

  sub_100009C0C(v6, v8, 0, 0, 0, 0);
  v12 = v11;

  if (v12)
  {

    sub_100002D38();
    if (StringProtocol.contains<A>(_:)())
    {
      sub_100002A20(&qword_100018828, &qword_10000E890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10000E200;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10000E200;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = v25;
      *(v14 + 32) = v26;
      *(v14 + 40) = v4;

      *(inited + 32) = String.init(format:_:)();
      *(inited + 40) = v15;
      *(inited + 48) = xmmword_10000E790;
      *(inited + 64) = 0;
      sub_100003FA4(inited, &_swiftEmptyArrayStorage);
      swift_setDeallocating();
      sub_1000095C8(inited + 32, &qword_1000187C0, &qword_10000E800);
    }

    v16 = StringProtocol.contains<A>(_:)();

    if (v16)
    {
      sub_100002A20(&qword_100018828, &qword_10000E890);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_10000E200;
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10000E200;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = v25;
      *(v19 + 32) = v26;
      *(v19 + 40) = v4;

      *(v18 + 32) = String.init(format:_:)();
      *(v18 + 40) = v20;
      *(v18 + 48) = xmmword_10000E790;
      *(v18 + 64) = 0;
      sub_100003FA4(v18, &_swiftEmptyArrayStorage);
      swift_setDeallocating();
      return sub_1000095C8(v18 + 32, &qword_1000187C0, &qword_10000E800);
    }
  }

  else
  {
    v21 = *(a2 + v9);

    v22._countAndFlagsBits = v6;
    v22._object = v8;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 39;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = static os_log_type_t.error.getter();
    sub_10000B344(0x203A44454C494146, 0xE900000000000027, v24);
  }

  return result;
}

uint64_t sub_100006194(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v6 = *v2;
      v4 = *(v2 - 1);
      swift_bridgeObjectRetain_n();
      v5._countAndFlagsBits = String.init<A>(_:)();
      v5._object = v3;
      String.append<A>(contentsOf:)();
      String.append(_:)(v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10000627C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = sub_100002A20(&qword_1000187D8, &qword_10000E858);
  v63 = *(v61 - 8);
  v1 = *(v63 + 64);
  __chkstk_darwin(v61);
  v60 = v51 - v2;
  v3 = sub_100002A20(&qword_1000187E0, &qword_10000E860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  v65 = v51 - v12;
  v68 = sub_100002A20(&qword_1000187E8, &qword_10000E868);
  v73 = *(v68 - 8);
  v13 = *(v73 + 64);
  v14 = __chkstk_darwin(v68);
  v58 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v51 - v16;
  v18 = type metadata accessor for _RegexFactory();
  v55 = v18;
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002A20(&qword_1000187F0, &qword_10000E870);
  v74 = *(v22 - 8);
  v23 = *(v74 + 64);
  v24 = __chkstk_darwin(v22);
  v59 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v71 = v51 - v27;
  __chkstk_darwin(v26);
  v72 = v51 - v28;
  makeFactory()();
  v54 = v8;
  Regex.init(_regexString:version:)();
  v69 = &protocol conformance descriptor for Regex<A>;
  sub_100003798(&qword_1000187F8, &qword_1000187E0, &qword_10000E860);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v29 = v4 + 8;
  v30 = *(v4 + 8);
  v30(v8, v3);
  v31 = v65;
  v53 = v11;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v30(v11, v3);
  v51[1] = v29;
  sub_100002A20(&qword_100018800, &qword_10000E878);
  _RegexFactory.capture<A, B>(_:)();
  v30(v31, v3);
  v32 = *(v70 + 8);
  v70 += 8;
  v56 = v32;
  v32(v21, v18);
  v33 = v71;
  v66 = v17;
  Capture.init(_:)();
  v64 = sub_100003798(&qword_100018808, &qword_1000187F0, &qword_10000E870);
  v52 = v22;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v34 = *(v74 + 8);
  v74 += 8;
  v67 = v34;
  v34(v33, v22);
  v35 = v58;
  Regex.init(_regexString:version:)();
  sub_100003798(&qword_100018810, &qword_1000187E8, &qword_10000E868);
  v36 = v68;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v57 = *(v73 + 8);
  v73 += 8;
  v57(v35, v36);
  makeFactory()();
  v37 = v54;
  Regex.init(_regexString:version:)();
  v38 = v53;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v30(v37, v3);
  v39 = v65;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v30(v38, v3);
  _RegexFactory.capture<A, B>(_:)();
  v30(v39, v3);
  v40 = v55;
  v41 = v56;
  v56(v21, v55);
  v42 = v59;
  Capture.init(_:)();
  v43 = v52;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v67(v42, v43);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_100002A20(&qword_100018818, &unk_10000E880);
  v44 = v60;
  v45 = v68;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v41(v21, v40);
  makeFactory()();
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_100018820, &qword_1000187D8, &qword_10000E858);
  v46 = v71;
  v47 = v61;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v41(v21, v40);
  (*(v63 + 8))(v44, v47);
  v48 = v57;
  v57(v35, v45);
  v49 = v67;
  v67(v46, v43);
  v48(v66, v45);
  return v49(v72, v43);
}

uint64_t sub_100006B00(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100003288(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100003288((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100006C28(uint64_t *a1, uint64_t (*a2)(char *, uint64_t))
{
  v55 = a2;
  v4 = type metadata accessor for CharacterSet();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v51 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v50 = *(v57 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v57);
  v56 = v47 - v8;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v47 - v15;
  v58 = type metadata accessor for String.Encoding();
  v54 = *(v58 - 8);
  v17 = *(v54 + 64);
  v18 = __chkstk_darwin(v58);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = *a1;
  v21 = a1[1];
  v23._countAndFlagsBits = 0x666E6F632ELL;
  v23._object = 0xE500000000000000;
  result = String.hasSuffix(_:)(v23);
  if ((result & 1) == 0)
  {
    return result;
  }

  static String.Encoding.utf8.getter();
  v25 = String.init(contentsOfFile:encoding:)();
  if (v2)
  {
  }

  v49 = v25;
  v27 = v26;
  (*(v10 + 16))(v14, v55 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v9);
  FilePath.appending(_:)();
  FilePath.description.getter();
  v29 = v28;
  (*(v10 + 8))(v16, v9);
  v30 = String._bridgeToObjectiveC()();
  v31 = [objc_opt_self() fileHandleForUpdatingAtPath:v30];

  if (!v31)
  {
  }

  [v31 seekToEndOfFile];
  static String.Encoding.utf8.getter();
  v32 = String.data(using:allowLossyConversion:)();
  v34 = v33;
  v35 = *(v54 + 8);
  result = v35(v20, v58);
  if (v34 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v59 = v32;
  v60 = v34;
  v54 = sub_100009520();
  NSFileHandle.write<A>(contentsOf:)();
  v47[1] = v29;
  v48 = v31;
  v55 = v35;
  sub_100009574(v59, v60);
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0);
  v36 = v56;
  Regex.init<A>(_:)();
  v59 = v49;
  v60 = v27;
  v37 = v51;
  static CharacterSet.newlines.getter();
  sub_100002D38();
  v38 = StringProtocol.components(separatedBy:)();
  v39 = (*(v52 + 8))(v37, v53);
  __chkstk_darwin(v39);
  v47[-2] = v36;
  v40 = sub_100006B00(sub_100009628, &v47[-4], v38);

  v59 = v40;
  sub_100002A20(&qword_1000187A8, &qword_10000E7F8);
  sub_100003798(&qword_1000187B0, &qword_1000187A8, &qword_10000E7F8);
  BidirectionalCollection<>.joined(separator:)();
  static String.Encoding.utf8.getter();
  v41 = String.data(using:allowLossyConversion:)();
  v43 = v42;

  result = v55(v20, v58);
  if (v43 >> 60 == 15)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v59 = v41;
  v60 = v43;
  v44 = v48;
  NSFileHandle.write<A>(contentsOf:)();
  sub_100009574(v59, v60);
  v59 = 0;
  if ([v44 closeAndReturnError:&v59])
  {
    v45 = v59;
  }

  else
  {
    v46 = v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v50 + 8))(v56, v57);
}

uint64_t sub_10000736C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = sub_100002A20(&qword_1000187D8, &qword_10000E858);
  v63 = *(v61 - 8);
  v1 = *(v63 + 64);
  __chkstk_darwin(v61);
  v60 = v51 - v2;
  v3 = sub_100002A20(&qword_1000187E0, &qword_10000E860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  v65 = v51 - v12;
  v68 = sub_100002A20(&qword_1000187E8, &qword_10000E868);
  v73 = *(v68 - 8);
  v13 = *(v73 + 64);
  v14 = __chkstk_darwin(v68);
  v58 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v51 - v16;
  v18 = type metadata accessor for _RegexFactory();
  v55 = v18;
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002A20(&qword_1000187F0, &qword_10000E870);
  v74 = *(v22 - 8);
  v23 = *(v74 + 64);
  v24 = __chkstk_darwin(v22);
  v59 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v71 = v51 - v27;
  __chkstk_darwin(v26);
  v72 = v51 - v28;
  makeFactory()();
  v54 = v8;
  Regex.init(_regexString:version:)();
  v69 = &protocol conformance descriptor for Regex<A>;
  sub_100003798(&qword_1000187F8, &qword_1000187E0, &qword_10000E860);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v29 = v4 + 8;
  v30 = *(v4 + 8);
  v30(v8, v3);
  v31 = v65;
  v53 = v11;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v30(v11, v3);
  v51[1] = v29;
  sub_100002A20(&qword_100018800, &qword_10000E878);
  _RegexFactory.capture<A, B>(_:)();
  v30(v31, v3);
  v32 = *(v70 + 8);
  v70 += 8;
  v56 = v32;
  v32(v21, v18);
  v33 = v71;
  v66 = v17;
  Capture.init(_:)();
  v64 = sub_100003798(&qword_100018808, &qword_1000187F0, &qword_10000E870);
  v52 = v22;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v34 = *(v74 + 8);
  v74 += 8;
  v67 = v34;
  v34(v33, v22);
  v35 = v58;
  Regex.init(_regexString:version:)();
  sub_100003798(&qword_100018810, &qword_1000187E8, &qword_10000E868);
  v36 = v68;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v57 = *(v73 + 8);
  v73 += 8;
  v57(v35, v36);
  makeFactory()();
  v37 = v54;
  Regex.init(_regexString:version:)();
  v38 = v53;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v30(v37, v3);
  v39 = v65;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v30(v38, v3);
  _RegexFactory.capture<A, B>(_:)();
  v30(v39, v3);
  v40 = v55;
  v41 = v56;
  v56(v21, v55);
  v42 = v59;
  Capture.init(_:)();
  v43 = v52;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v67(v42, v43);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_100002A20(&qword_100018818, &unk_10000E880);
  v44 = v60;
  v45 = v68;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v41(v21, v40);
  makeFactory()();
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_100018820, &qword_1000187D8, &qword_10000E858);
  v46 = v71;
  v47 = v61;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v41(v21, v40);
  (*(v63 + 8))(v44, v47);
  v48 = v57;
  v57(v35, v45);
  v49 = v67;
  v67(v46, v43);
  v48(v66, v45);
  return v49(v72, v43);
}

uint64_t sub_100007BF4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v42 = a3;
  v4 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = sub_100002A20(&qword_1000187C8, &qword_10000E808);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_100002A20(&qword_1000187D0, &qword_10000E810);
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v18 = *a1;
  v17 = a1[1];
  sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0);
  dispatch thunk of RegexComponent.regex.getter();
  v19 = String.subscript.getter();
  v20 = v36;
  v37(v19);
  if (v20)
  {

    (*(v5 + 8))(v8, v4);
    (*(v38 + 56))(v12, 1, 1, v39);
LABEL_4:
    sub_1000095C8(v12, &qword_1000187C8, &qword_10000E808);
    v23 = v42;
    *v42 = v18;
    v23[1] = v17;
  }

  (*(v5 + 8))(v8, v4);

  v22 = v38;
  v21 = v39;
  if ((*(v38 + 48))(v12, 1, v39) == 1)
  {
    goto LABEL_4;
  }

  (*(v22 + 32))(v16, v12, v21);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v25 = static String._fromSubstring(_:)();
  v27 = v26;

  v40 = v25;
  v41 = v27;
  v28._countAndFlagsBits = 0x657463616465725BLL;
  v28._object = 0xEA00000000005D64;
  String.append(_:)(v28);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v29 = static String._fromSubstring(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33 = v40;
  v34 = v41;
  result = (*(v22 + 8))(v16, v21);
  v35 = v42;
  *v42 = v33;
  v35[1] = v34;
  return result;
}

void *sub_10000801C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032F0(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v9 = *(v3 - 3);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;

      sub_100002A20(&qword_100018790, &qword_10000E7E8);
      sub_100002A20(&qword_100018598, &qword_10000E308);
      swift_dynamicCast();
      v4 = v15;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000032F0((v5 > 1), v6 + 1, 1);
        v4 = v15;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[4 * v6];
      *(v7 + 4) = v13;
      *(v7 + 5) = v14;
      *(v7 + 3) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100008168()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = v3[8];
  result = __chkstk_darwin(v2);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) == 1 && (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__disablePacketCapture) & 1) == 0)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    v40 = "/usr/sbin/netstat -qq -I %@";
    v8._object = 0x8000000100010040;
    String.append(_:)(v8);
    v9 = v3[2];
    v37 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v38 = v9;
    v39 = v3 + 2;
    v9(v7, v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v2);
    v36[1] = sub_10000965C(&qword_100018830, &type metadata accessor for FilePath);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v36[0] = v3[1];
    (v36[0])(v7, v2);
    v11._object = 0x8000000100010060;
    v11._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v11);
    v13 = v41;
    v12 = v42;
    v14 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v15 = *(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

    v16 = sub_100009C0C(v13, v12, 0x6C756E2F7665642FLL, 0xE90000000000006CLL, 0, 0);

    if (!v16)
    {
      v17 = *(v1 + v14);
      v41 = 0x203A44454C494146;
      v42 = 0xE900000000000027;

      v18._countAndFlagsBits = v13;
      v18._object = v12;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 39;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v41;
      v21 = v42;
      v22 = static os_log_type_t.error.getter();
      sub_10000B344(v20, v21, v22);
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v23._countAndFlagsBits = 0xD00000000000001ELL;
    v23._object = (v40 | 0x8000000000000000);
    String.append(_:)(v23);
    v38(v7, v1 + v37, v2);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    (v36[0])(v7, v2);
    v25._object = 0x8000000100010080;
    v25._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v25);
    v27 = v41;
    v26 = v42;
    v28 = *(v1 + v14);

    v29 = sub_100009C0C(v27, v26, 0x6C756E2F7665642FLL, 0xE90000000000006CLL, 0, 0);

    if (!v29)
    {
      v30 = *(v1 + v14);
      v41 = 0x203A44454C494146;
      v42 = 0xE900000000000027;

      v31._countAndFlagsBits = v27;
      v31._object = v26;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 39;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = v41;
      v34 = v42;
      v35 = static os_log_type_t.error.getter();
      sub_10000B344(v33, v34, v35);
    }
  }

  return result;
}

uint64_t sub_1000085BC()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  v4 = &unk_100019000;
  if (v3)
  {
    strcpy(v56, "/etc/resolver");
    HIWORD(v56[1]) = -4864;
    v54 = String.init<A>(_:)();
    v55 = v5;
    String.append<A>(contentsOf:)();
    v7 = v54;
    v6 = v55;
    v8 = "LPS-resolver.tar";
  }

  else
  {
    v9 = [v0 defaultManager];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 fileExistsAtPath:v10];

    if (!v11)
    {
      goto LABEL_8;
    }

    v56[0] = 0xD000000000000031;
    v56[1] = 0x800000010000FD20;
    v54 = String.init<A>(_:)();
    v55 = v12;
    String.append<A>(contentsOf:)();
    v7 = v54;
    v6 = v55;
    v8 = "/usr/bin/tar -c -H";
    v4 = &unk_100019000;
  }

  v13 = v4[158];
  v14 = *(v53 + v13);

  v15 = sub_100009C0C(v7, v6, 0xD000000000000010, v8 | 0x8000000000000000, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);

  if (!v15)
  {
    v16 = *(v53 + v13);
    strcpy(v56, "FAILED: ");
    BYTE1(v56[1]) = 0;
    WORD1(v56[1]) = 0;
    HIDWORD(v56[1]) = -402653184;

    v17._countAndFlagsBits = v7;
    v17._object = v6;
    String.append(_:)(v17);

    v18 = static os_log_type_t.error.getter();
    sub_10000B344(v56[0], v56[1], v18);
  }

LABEL_8:
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  v19 = [v0 defaultManager];
  v20 = String._bridgeToObjectiveC()();
  v54 = 0;
  v21 = [v19 contentsOfDirectoryAtPath:v20 error:&v54];

  v22 = v54;
  if (v21)
  {
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v22;

    v25 = *(v23 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = (v23 + 40);
      do
      {
        if (v26 >= *(v23 + 16))
        {
          __break(1u);
        }

        v28 = *(v27 - 1);
        v29 = *v27;
        v54 = v28;
        v55 = v29;

        if (sub_100008C70(&v54))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100003288(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v31 = _swiftEmptyArrayStorage[2];
          v30 = _swiftEmptyArrayStorage[3];
          if (v31 >= v30 >> 1)
          {
            sub_100003288((v30 > 1), v31 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v31 + 1;
          v32 = &_swiftEmptyArrayStorage[2 * v31];
          v32[4] = v28;
          v32[5] = v29;
        }

        else
        {
        }

        ++v26;
        v27 += 2;
      }

      while (v25 != v26);
    }

    sub_100006194(_swiftEmptyArrayStorage);

    v35 = v56[1];
    v34 = v56[0] & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v34 = 0;
    v35 = 0xE000000000000000;
  }

  if ((v35 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v35) & 0xF;
  }

  if (v34)
  {
    v36._countAndFlagsBits = 0xD00000000000003BLL;
    v36._object = 0x800000010000FD90;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 0xD000000000000040;
    v37._object = 0x800000010000F5A0;
    String.append(_:)(v37);
    v54 = 0xD000000000000012;
    v55 = 0x800000010000FDD0;
    sub_100002A20(&qword_100018778, &qword_10000E7D8);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10000E200;
    v39 = v56[0];
    v40 = v56[1];
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000092A4();
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    sub_100002D38();

    v41 = StringProtocol.appendingFormat<A>(_:_:)();
    v43 = v42;

    v44 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v45 = *(v53 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

    v46 = sub_100009C0C(v41, v43, 0x6F6974617267696DLL, 0xED00007261742E6ELL, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);

    if (v46)
    {
    }

    else
    {
      v47 = *(v53 + v44);
      v54 = 0x203A44454C494146;
      v55 = 0xE800000000000000;

      v48._countAndFlagsBits = v41;
      v48._object = v43;
      String.append(_:)(v48);

      v49 = v54;
      v50 = v55;
      v51 = static os_log_type_t.error.getter();
      sub_10000B344(v49, v50, v51);
    }
  }
}

uint64_t sub_100008C70(uint64_t *a1)
{
  v2 = sub_100002A20(&qword_100018770, &qword_10000E7D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v38 = &v38 - v7;
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = a1[1];

  v45 = v20;
  FilePath.init(_:)();
  FilePath.lastComponent.getter();
  v22 = *(v11 + 8);
  v41 = v10;
  v44 = v22;
  v22(v19, v10);
  v23 = type metadata accessor for FilePath.Component();
  v24 = *(v23 - 8);
  v43 = *(v24 + 48);
  result = v43(v9, 1, v23);
  if (result == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  FilePath.Component.stem.getter();
  v42 = *(v24 + 8);
  v42(v9, v23);
  v26._object = 0x800000010000FE30;
  v26._countAndFlagsBits = 0xD000000000000010;
  v27 = String.hasPrefix(_:)(v26);

  v28 = v41;
  if (v27)
  {
LABEL_5:

    v32 = v39;
    FilePath.init(_:)();
    v33 = v40;
    FilePath.lastComponent.getter();
    v44(v32, v28);
    result = v43(v33, 1, v23);
    if (result != 1)
    {
      v34 = FilePath.Component.extension.getter();
      v36 = v35;
      v42(v33, v23);
      if (v36)
      {
        if (v34 == 0x7473696C70 && v36 == 0xE500000000000000)
        {
          v37 = 1;
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v37 & 1;
      }

LABEL_10:
      v37 = 0;
      return v37 & 1;
    }

    goto LABEL_15;
  }

  FilePath.init(_:)();
  v29 = v38;
  FilePath.lastComponent.getter();
  v44(v17, v28);
  result = v43(v29, 1, v23);
  if (result != 1)
  {
    FilePath.Component.stem.getter();
    v42(v29, v23);
    v30._countAndFlagsBits = 0xD000000000000016;
    v30._object = 0x800000010000FE50;
    v31 = String.hasPrefix(_:)(v30);

    if (!v31)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000090D8()
{
  v1 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
  v2 = type metadata accessor for FilePath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr);

  v4 = *(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GNICollector()
{
  result = qword_1000186B0;
  if (!qword_1000186B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000091E8()
{
  result = type metadata accessor for FilePath();
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

unint64_t sub_1000092A4()
{
  result = qword_100018780;
  if (!qword_100018780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018780);
  }

  return result;
}

unint64_t sub_1000092F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000093E8(a1, v4);
}

uint64_t sub_10000938C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000093E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100009520()
{
  result = qword_1000187B8;
  if (!qword_1000187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000187B8);
  }

  return result;
}

uint64_t sub_100009574(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000095C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000965C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000096A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *__s1 = a1;
  v60 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100002D38();
  v9 = StringProtocol.components(separatedBy:)();
  (*(v5 + 8))(v8, v4);
  v10 = 0;
  v55 = 0;
  v11 = *(v9 + 16);
  v12 = _swiftEmptyArrayStorage;
LABEL_2:
  v13 = (v9 + 40 + 16 * v10);
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    ++v10;
    v15 = *(v13 - 1);
    v14 = *v13;
    v13 += 2;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__s1 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, v12[2] + 1, 1);
        v12 = *__s1;
      }

      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_100003288((v18 > 1), v19 + 1, 1);
        v12 = *__s1;
      }

      v12[2] = v19 + 1;
      v20 = &v12[2 * v19];
      v20[4] = v15;
      v20[5] = v14;
      goto LABEL_2;
    }
  }

  v21 = v12[2];
  if (v21)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100003268(0, v21, 0);
    v22 = v58;
    v23 = v12 + 5;
    while (1)
    {
      v24 = *v23;
      if ((*v23 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v24 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v23 - 1);
        v60 = v24 & 0xFFFFFFFFFFFFFFLL;

        v26 = __s1;
      }

      else
      {
        if ((*(v23 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v25 = *v23;

        v26 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      *v61 = strdup(v26);
LABEL_21:

      v27 = *v61;
      v58 = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_100003268((v28 > 1), v29 + 1, 1);
        v22 = v58;
      }

      v22[2] = v29 + 1;
      v22[v29 + 4] = v27;
      v23 += 2;
      if (!--v21)
      {

        goto LABEL_27;
      }
    }

    v30 = *v23;

    sub_100002A20(&qword_100018A28, &unk_10000E940);
    v31 = v55;
    _StringGuts._slowWithCString<A>(_:)();
    v55 = v31;
    goto LABEL_21;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_27:
  v58 = v22;
  sub_10000D420(&off_100015768);
  v61[0] = -1;
  v32 = v58;
  if (!v58[2])
  {
LABEL_41:
    __break(1u);
  }

  v34 = (v58 + 4);
  v33 = v58[4];
  v35 = environ.getter();
  v36 = posix_spawn(v61, v33, 0, 0, v32 + 4, v35);
  v57[0] = v36;
  if (v36)
  {
    v37 = v36;
    *__s1 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *__s1 = 0xD00000000000001FLL;
    v60 = 0x80000001000101E0;
    v56 = v37;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v40 = *__s1;
    v41 = v60;
    v42 = static os_log_type_t.error.getter();
    sub_10000B344(v40, v41, v42);

    for (i = *(v32 + 2); i; --i)
    {
      v44 = *v34++;
      free(v44);
    }
  }

  else
  {
    waitpid(v61[0], v57, 0);
    if (v57[0])
    {
      *__s1 = 0;
      v60 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      *__s1 = 0xD00000000000001BLL;
      v60 = 0x8000000100010200;
      v56 = v57[0];
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = 39;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47 = *__s1;
      v48 = v60;
      v49 = static os_log_type_t.error.getter();
      sub_10000B344(v47, v48, v49);

      for (i = *(v32 + 2); i; --i)
      {
        v50 = *v34++;
        free(v50);
      }
    }

    else
    {
      for (j = *(v32 + 2); j; --j)
      {
        v52 = *v34++;
        free(v52);
      }

      i = 1;
    }
  }

  return i;
}

BOOL sub_100009C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v219 = a4;
  v211 = a6;
  v213 = a5;
  v215 = a3;
  v9 = (*(*(sub_100002A20(&qword_100018A40, qword_10000E960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v207 = &v198 - v10;
  v206 = type metadata accessor for URL.DirectoryHint();
  v205 = *(v206 - 8);
  v11 = *(v205 + 64);
  (__chkstk_darwin)();
  v202 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for URL();
  v204 = *(v209 - 8);
  v13 = *(v204 + 64);
  v14 = (__chkstk_darwin)();
  v203 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v208 = &v198 - v16;
  v214 = type metadata accessor for FilePath();
  v217 = *(v214 - 8);
  v17 = *(v217 + 64);
  v18 = __chkstk_darwin(v214);
  v210 = &v198 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v200 = &v198 - v21;
  v22 = __chkstk_darwin(v20);
  v212 = &v198 - v23;
  __chkstk_darwin(v22);
  v216 = &v198 - v24;
  v25 = type metadata accessor for CharacterSet();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = 0;
  v218._countAndFlagsBits = a1;
  v218._object = a2;
  *__s1 = a1;
  *&__s1[8] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  v201 = sub_100002D38();
  v30 = StringProtocol.components(separatedBy:)();
  (*(v26 + 8))(v29, v25);
  v31 = 0;
  v199 = 0;
  v32 = *(v30 + 16);
  v33 = &_swiftEmptyArrayStorage;
LABEL_2:
  v34 = (v30 + 40 + 16 * v31);
  while (v32 != v31)
  {
    if (v31 >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    ++v31;
    v35 = *(v34 - 1);
    v6 = *v34;
    v34 += 2;
    v36 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v36 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__s1 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, *(v33 + 2) + 1, 1);
        v33 = *__s1;
      }

      v25 = *(v33 + 2);
      v38 = *(v33 + 3);
      if (v25 >= v38 >> 1)
      {
        sub_100003288((v38 > 1), v25 + 1, 1);
        v33 = *__s1;
      }

      *(v33 + 2) = v25 + 1;
      v39 = &v33[16 * v25];
      *(v39 + 4) = v35;
      *(v39 + 5) = v6;
      goto LABEL_2;
    }
  }

  v40 = *(v33 + 2);
  if (!v40)
  {

    v60 = static os_log_type_t.error.getter();
    sub_10000B344(0xD00000000000001ALL, 0x8000000100010340, v60);
    return 0;
  }

  v226 = &_swiftEmptyArrayStorage;
  sub_100003268(0, v40, 0);
  v41 = v226;
  v42 = (v33 + 40);
  v43 = v40;
  v44 = v219;
  do
  {
    v45 = *v42;
    if ((*v42 & 0x1000000000000000) == 0)
    {
      if ((v45 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v42 - 1);
        *&__s1[8] = v45 & 0xFFFFFFFFFFFFFFLL;

        v47 = __s1;
        goto LABEL_20;
      }

      if ((*(v42 - 1) & 0x1000000000000000) != 0)
      {
        v46 = *v42;

        v47 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_20:
        *v225 = strdup(v47);
        goto LABEL_21;
      }
    }

    v52 = *v42;

    sub_100002A20(&qword_100018A28, &unk_10000E940);
    v53 = v199;
    _StringGuts._slowWithCString<A>(_:)();
    v199 = v53;
LABEL_21:

    v48 = *v225;
    v226 = v41;
    v50 = v41[2];
    v49 = v41[3];
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      sub_100003268((v49 > 1), v50 + 1, 1);
      v41 = v226;
    }

    v41[2] = v51;
    v41[v50 + 4] = v48;
    v42 += 2;
    --v43;
  }

  while (v43);
  v222 = v41;
  if (v51 != v40)
  {

    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v61._countAndFlagsBits = 0xD000000000000038;
    v61._object = 0x8000000100010220;
    String.append(_:)(v61);
    String.append(_:)(v218);
    v62._countAndFlagsBits = 39;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    v63 = *__s1;
    v64 = *&__s1[8];
    v65 = static os_log_type_t.error.getter();
    sub_10000B344(v63, v64, v65);

    goto LABEL_83;
  }

  sub_10000D420(&off_1000149C0);
  v54 = v220;
  if (!*(v33 + 2))
  {
    __break(1u);
    goto LABEL_103;
  }

  v55 = *(v33 + 4);
  v56 = *(v33 + 5);

  v57._countAndFlagsBits = 7496052;
  v57._object = 0xE300000000000000;
  LOBYTE(v55) = String.hasSuffix(_:)(v57);

  if (v55)
  {
    goto LABEL_31;
  }

  if (v44)
  {
    v58._countAndFlagsBits = 1918989358;
    v58._object = 0xE400000000000000;
    if (String.hasSuffix(_:)(v58))
    {
LABEL_31:
      v59 = 1;
    }

    else
    {
      v66._countAndFlagsBits = 0x7473696C702ELL;
      v66._object = 0xE600000000000000;
      v59 = String.hasSuffix(_:)(v66);
    }
  }

  else
  {
    v59 = 0;
  }

  v25 = objc_opt_self();
  v31 = &GNICollector;
  v67 = [v25 defaultManager];
  v68 = *(v33 + 4);
  v69 = *(v33 + 5);

  v70 = String._bridgeToObjectiveC()();

  LODWORD(v69) = [v67 fileExistsAtPath:v70];

  if (!v69)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(__s1, "command '");
    *&__s1[10] = 0;
    *&__s1[12] = -385875968;
    v76 = *(v33 + 4);
    v77 = *(v33 + 5);

    v78._countAndFlagsBits = v76;
    v78._object = v77;
    String.append(_:)(v78);

    v79._countAndFlagsBits = 0x276E73656F642027;
    v79._object = 0xEF74736978652074;
    String.append(_:)(v79);
    v80 = *__s1;
    v81 = *&__s1[8];
    v82 = static os_log_type_t.error.getter();
    sub_10000B344(v80, v81, v82);

    v83 = v222[2];
    if (v83)
    {
      v84 = (v222 + 4);
      do
      {
        v85 = *v84++;
        free(v85);
        --v83;
      }

      while (v83);
    }

    goto LABEL_83;
  }

  LODWORD(v199) = v59;
  object = v218._object;

  v72 = static os_log_type_t.default.getter();
  sub_10000B344(v218._countAndFlagsBits, object, v72);

  if (!v44)
  {
    v86 = [v25 defaultManager];
    v87 = [v86 temporaryDirectory];

    v88 = v203;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *__s1 = FilePath.string.getter();
    *&__s1[8] = v89;
    v90 = v205;
    v91 = v202;
    v92 = v206;
    (*(v205 + 104))(v202, enum case for URL.DirectoryHint.inferFromPath(_:), v206);
    v93 = v208;
    URL.appending<A>(component:directoryHint:)();
    (*(v90 + 8))(v91, v92);

    v94 = v204;
    v95 = *(v204 + 8);
    v96 = v209;
    v95(v88, v209);
    (*(v94 + 16))(v88, v93, v96);
    v97 = v207;
    FilePath.init(_:)();
    v98 = v214;
    if ((*(v217 + 48))(v97, 1, v214) == 1)
    {

      sub_10000D50C(v97);
      *__s1 = 0;
      *&__s1[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      *__s1 = 0xD00000000000002DLL;
      *&__s1[8] = 0x8000000100010260;
      sub_10000D574(&qword_100018A48, &type metadata accessor for URL);
      v99._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v99);

      v100._countAndFlagsBits = 39;
      v100._object = 0xE100000000000000;
      String.append(_:)(v100);
      v101 = *__s1;
      v102 = *&__s1[8];
      v103 = static os_log_type_t.error.getter();
      sub_10000B344(v101, v102, v103);

      v95(v93, v96);
      v104 = v222[2];
      if (v104)
      {
        v105 = (v222 + 4);
        do
        {
          v106 = *v105++;
          free(v106);
          --v104;
        }

        while (v104);
      }

      goto LABEL_83;
    }

    v95(v93, v96);
    (*(v217 + 32))(v216, v97, v98);
    v73 = v98;
    v54 = v220;
    v31 = 0x100018000;
    v74 = v211;
    if (!v211)
    {
      goto LABEL_56;
    }

LABEL_42:
    if (v213 == 0x6C756E2F7665642FLL && v74 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v6 = v212;
      FilePath.init(stringLiteral:)();
      v75 = *(v217 + 16);
    }

    else
    {
      v75 = *(v217 + 16);
      (v75)(v200, v54 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot, v73);

      v6 = v212;
      FilePath.appending(_:)();
    }

    v107 = v216;
    goto LABEL_61;
  }

  if ((v215 != 0x6C756E2F7665642FLL || v44 != 0xE90000000000006CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v73 = v214;
    (*(v217 + 16))(v200, v54 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot, v214);

    FilePath.appending(_:)();
    v74 = v211;
    if (!v211)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  FilePath.init(stringLiteral:)();
  v73 = v214;
  v74 = v211;
  if (v211)
  {
    goto LABEL_42;
  }

LABEL_56:

  v107 = v216;
  v75 = *(v217 + 16);
  v6 = v212;
  v75();
LABEL_61:
  v108 = v210;
  (v75)(v210, v107, v73);
  v109 = type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  swift_allocObject();
  if (!sub_10000B638(v108))
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *__s1 = 0xD00000000000001ELL;
    *&__s1[8] = 0x8000000100010290;
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath);
    v124._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v124);

    v125._countAndFlagsBits = 39;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);
    v126 = *__s1;
    v127 = *&__s1[8];
    v128 = static os_log_type_t.error.getter();
    sub_10000B344(v126, v127, v128);

    v129 = *(v217 + 8);
    v129(v6, v73);
    v129(v107, v73);
    v130 = v222[2];
    if (v130)
    {
      v131 = (v222 + 4);
      do
      {
        v132 = *v131++;
        free(v132);
        --v130;
      }

      while (v130);
    }

LABEL_83:

    return 0;
  }

  v33 = v107;
  if (!((v44 == 0) | v199 & 1))
  {
    sub_10000BE00();
    *__s1 = 8227;
    *&__s1[8] = 0xE200000000000000;
    String.append(_:)(v218);
    v112._countAndFlagsBits = 10;
    v112._object = 0xE100000000000000;
    String.append(_:)(v112);
    sub_10000BE00();

    sub_10000BE00();
  }

  v226 = 0;
  v113 = posix_spawn_file_actions_init(&v226);
  v224 = v113;
  if (v113)
  {
    v114 = v113;
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v115._countAndFlagsBits = 0xD000000000000031;
    v115._object = 0x80000001000102B0;
    String.append(_:)(v115);
    v225[0] = v114;
    v116._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v116);

    v117 = *__s1;
    v118 = *&__s1[8];
    v119 = static os_log_type_t.error.getter();
    sub_10000B344(v117, v118, v119);

    posix_spawn_file_actions_destroy(&v226);

    v120 = *(v217 + 8);
    v120(v6, v73);
    v120(v33, v73);
    v121 = v222[2];
    if (v121)
    {
      v122 = (v222 + 4);
      do
      {
        v123 = *v122++;
        free(v123);
        --v121;
      }

      while (v121);
    }

    goto LABEL_83;
  }

  FilePath.description.getter();
  v133 = String.utf8CString.getter();

  v134 = posix_spawn_file_actions_addopen(&v226, 1, (v133 + 32), 10, 0x1A4u);

  v224 = v134;
  if (v134)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v135._countAndFlagsBits = 0xD000000000000022;
    v135._object = 0x80000001000102F0;
    String.append(_:)(v135);
    v225[0] = 1;
    v136._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v136);

    v137._object = 0x8000000100010320;
    v137._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v137);
    v225[0] = v224;
    v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v138);

    v139._countAndFlagsBits = 39;
    v139._object = 0xE100000000000000;
    String.append(_:)(v139);
    v140 = *__s1;
    v141 = *&__s1[8];
    v142 = static os_log_type_t.error.getter();
    sub_10000B344(v140, v141, v142);

    posix_spawn_file_actions_destroy(&v226);

    v143 = *(v217 + 8);
    v144 = v214;
    v143(v6, v214);
    v143(v33, v144);
    v145 = v222[2];
    if (v145)
    {
      v146 = (v222 + 4);
      do
      {
        v147 = *v146++;
        free(v147);
        --v145;
      }

      while (v145);
    }

    goto LABEL_83;
  }

LABEL_79:
  FilePath.description.getter();
  v148 = String.utf8CString.getter();

  v149 = posix_spawn_file_actions_addopen(&v226, 2, (v148 + 32), 10, 0x1A4u);

  v224 = v149;
  if (v149)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v150._countAndFlagsBits = 0xD000000000000022;
    v150._object = 0x80000001000102F0;
    String.append(_:)(v150);
    v225[0] = 2;
    v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v151);

    v152._object = 0x8000000100010320;
    v152._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v152);
    v225[0] = v224;
    v153._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v153);

    v154._countAndFlagsBits = 39;
    v154._object = 0xE100000000000000;
    String.append(_:)(v154);
    v155 = *__s1;
    v156 = *&__s1[8];
    v157 = static os_log_type_t.error.getter();
    sub_10000B344(v155, v156, v157);

    posix_spawn_file_actions_destroy(&v226);

    v158 = *(v217 + 8);
    v159 = v214;
    v158(v6, v214);
    v158(v33, v159);
    v160 = v222[2];
    if (v160)
    {
      v161 = (v222 + 4);
      do
      {
        v162 = *v161++;
        free(v162);
        --v160;
      }

      while (v160);
    }

    goto LABEL_83;
  }

  v225[0] = -1;
  v164 = v222;
  if (!v222[2])
  {
LABEL_103:
    __break(1u);
  }

  v166 = (v222 + 4);
  v165 = v222[4];
  v167 = environ.getter();
  v168 = posix_spawn(v225, v165, &v226, 0, v164 + 4, v167);
  v224 = v168;
  if (v168)
  {
    v169 = v168;
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *__s1 = 0xD00000000000001FLL;
    *&__s1[8] = 0x80000001000101E0;
    v221 = v169;
    v170._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v170);

    v171._countAndFlagsBits = 39;
    v171._object = 0xE100000000000000;
    String.append(_:)(v171);
    v172 = *__s1;
    v173 = *&__s1[8];
    v174 = static os_log_type_t.error.getter();
    sub_10000B344(v172, v173, v174);

    posix_spawn_file_actions_destroy(&v226);

    v175 = *(v217 + 8);
    v176 = v214;
    v175(v6, v214);
    v175(v33, v176);
    for (i = *(v164 + 2); i; --i)
    {
      v178 = *v166++;
      free(v178);
    }

    goto LABEL_83;
  }

  waitpid(v225[0], &v224, 0);
  if (v224)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *__s1 = 0xD00000000000001BLL;
    *&__s1[8] = 0x8000000100010200;
    v221 = v224;
    v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v179);

    v180._countAndFlagsBits = 39;
    v180._object = 0xE100000000000000;
    String.append(_:)(v180);
    v181 = *__s1;
    v182 = *&__s1[8];
    v183 = static os_log_type_t.error.getter();
    sub_10000B344(v181, v182, v183);

    posix_spawn_file_actions_destroy(&v226);

    v184 = *(v217 + 8);
    v185 = v214;
    v184(v6, v214);
    v184(v33, v185);
    for (j = *(v164 + 2); j; --j)
    {
      v187 = *v166++;
      free(v187);
    }

    goto LABEL_83;
  }

  if (v219)
  {
    sub_10000BA88();
  }

  else
  {
    sub_10000C0B4();
    sub_10000BA88();
    v188 = [v25 *(v31 + 800)];
    FilePath.description.getter();
    v189 = String._bridgeToObjectiveC()();

    *__s1 = 0;
    v190 = [v188 removeItemAtPath:v189 error:__s1];

    v191 = *__s1;
    if (!v190)
    {
      v192 = v191;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v33 = v216;
  }

  v193 = v224;
  posix_spawn_file_actions_destroy(&v226);

  v194 = *(v217 + 8);
  v195 = v214;
  v194(v212, v214);
  v194(v33, v195);
  for (k = *(v164 + 2); k; --k)
  {
    v197 = *v166++;
    free(v197);
  }

  return v193 == 0;
}

void sub_10000B344(uint64_t a1, void *a2, os_log_type_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A20(&qword_100018568, &qword_10000E950);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000E200;
  v14 = *(v4 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_dateFormatter);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v16 = [v14 stringFromDate:isa];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v28 = v17;
  v29 = v19;
  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.append(_:)(v21);
  v22 = v28;
  v23 = v29;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = v22;
  *(v13 + 40) = v23;
  swift_beginAccess();
  type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  sub_10000D574(&qword_100018A30, type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile);
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();

  v24 = Logger.logObject.getter();

  if (os_log_type_enabled(v24, a3))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10000CE78(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v24, a3, "%s", v25, 0xCu);
    sub_1000036F0(v26);
  }
}

uint64_t sub_10000B638(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin();
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed) = 0;
  v9 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v10 = v5[2];
  v10(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath, a1, v4);
  v10(v8, v2 + v9, v4);
  v20 = 0x20800000002;
  v21 = 16777636;
  FilePath.withCString<A>(_:)();
  v11 = v5[1];
  v11(v8, v4);
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileDescriptor) = v22;
  FilePath.string.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() fileHandleForWritingAtPath:v12];

  if (!v13)
  {
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10000E200;
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v22 = 0xD000000000000020;
    v23 = 0x80000001000103E0;
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v18 = v22;
    v17 = v23;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;

    print(_:separator:terminator:)();

    exit(1);
  }

  v11(a1, v4);
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle) = v13;
  return v2;
}

void sub_10000BA88()
{
  v1 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed;
  if (*(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed))
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileDescriptor);
  v3 = FileDescriptor._close()();
  if ((v3 & 0x100000000) != 0)
  {
    LODWORD(v15) = v3;
    v5 = v3;
    sub_10000D5BC();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v5;
    goto LABEL_9;
  }

  v4 = *(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle);
  v15 = 0;
  if (([v4 closeAndReturnError:&v15] & 1) == 0)
  {
    v7 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_9:
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10000E200;
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v9._object = 0x8000000100010380;
    v9._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v9);
    type metadata accessor for FilePath();
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6520687469772027;
    v11._object = 0xEE002720726F7272;
    String.append(_:)(v11);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12._countAndFlagsBits = 39;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v15;
    v14 = v16;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    print(_:separator:terminator:)();

    exit(1);
  }

  *(v0 + v1) = 1;

  _objc_retain_x1();
}

uint64_t sub_10000BD50()
{
  sub_10000BA88();
  v1 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v2 = type metadata accessor for FilePath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10000BE00()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle) seekToEndOfFile];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  if (v8 >> 60 == 15)
  {
    __break(1u);
    sub_100009574(v18, v19);
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10000E200;
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v11._object = 0x8000000100010360;
    v11._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v11);
    type metadata accessor for FilePath();
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x6520687469772027;
    v13._object = 0xEE002720726F7272;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v14._countAndFlagsBits = 39;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v18;
    v16 = v19;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 32) = v15;
    *(v10 + 40) = v16;
    print(_:separator:terminator:)();

    exit(1);
  }

  v18 = v6;
  v19 = v8;
  sub_100009520();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100009574(v18, v19);
}

uint64_t sub_10000C0B4()
{
  v1 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_100002A20(&qword_100018768, &qword_10000E7C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v17 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v18 = v0;
  FilePath.description.getter();
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  URL.init(filePath:directoryHint:relativeTo:)();
  static String.Encoding.utf8.getter();
  v15 = String.init(contentsOf:encoding:)();
  (*(v11 + 8))(v14, v10);
  return v15;
}

char *sub_10000C4D8(char *a1)
{
  v2 = v1;
  v38 = a1;
  v35 = *v1;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v37 = &v29 - v10;
  __chkstk_darwin(v9);
  v36 = &v29 - v11;
  v34 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_logger;
  Logger.init(subsystem:category:)();
  v12 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_dateFormatter;
  v13 = [objc_allocWithZone(NSDateFormatter) init];
  v14 = String._bridgeToObjectiveC()();
  [v13 setDateFormat:v14];

  *&v2[v12] = v13;
  v32 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerTmpStdoutFilename;
  v33 = v12;
  FilePath.init(stringLiteral:)();
  v15 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutFilename;
  FilePath.init(stringLiteral:)();
  v16 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot;
  v17 = v4[2];
  v17(&v2[OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot], v38, v3);
  v30 = v16;
  v17(v37, &v2[v16], v3);
  v31 = v15;
  v17(v8, &v2[v15], v3);
  sub_10000D574(&qword_100018830, &type metadata accessor for FilePath);
  dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v4[1];
  v18(v8, v3);
  v19 = v36;
  v20 = v37;
  FilePath.appending(_:)();
  v17(v20, v19, v3);
  v21 = type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_10000B638(v20);
  v18(v38, v3);
  v18(v19, v3);
  if (v24)
  {
    *&v2[OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutTarget] = v24;
  }

  else
  {
    v25 = type metadata accessor for Logger();
    (*(*(v25 - 8) + 8))(&v2[v34], v25);

    v18(&v2[v30], v3);
    v18(&v2[v32], v3);
    v18(&v2[v31], v3);
    v26 = *(*v2 + 48);
    v27 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_10000C924()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutTarget;
  swift_beginAccess();
  v3 = *(v0 + v2);

  sub_10000BA88();

  v4 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  v6 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot;
  v7 = type metadata accessor for FilePath();
  v8 = *(*(v7 - 8) + 8);
  v8(v1 + v6, v7);
  v8(v1 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerTmpStdoutFilename, v7);
  v8(v1 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutFilename, v7);
  v9 = *(v1 + v2);

  v10 = *(*v1 + 48);
  v11 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_10000CAC0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for FilePath();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000CBD0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CC08()
{
  result = type metadata accessor for FilePath();
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

char *sub_10000CCBC@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000CCEC@<X0>(_DWORD *a1@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_10000D5BC();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

char *sub_10000CD74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018588, &qword_10000E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_10000CE78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CF44(v11, 0, 0, 1, a1, a2);
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
    sub_10000938C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000036F0(v11);
  return v7;
}

unint64_t sub_10000CF44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D050(a5, a6);
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

char *sub_10000D050(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000D09C(a1, a2);
  sub_10000D1CC(&off_100014998);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000D09C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D2B8(v5, 0);
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
        v7 = sub_10000D2B8(v10, 0);
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

uint64_t sub_10000D1CC(uint64_t result)
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

  result = sub_10000D32C(result, v12, 1, v3);
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

void *sub_10000D2B8(uint64_t a1, uint64_t a2)
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

  sub_100002A20(&qword_100018A38, &qword_10000E958);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D32C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018A38, &qword_10000E958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_10000D420(uint64_t result)
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

  result = sub_10000CD74(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10000D50C(uint64_t a1)
{
  v2 = sub_100002A20(&qword_100018A40, qword_10000E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D574(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000D5BC()
{
  result = qword_100018A50;
  if (!qword_100018A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A50);
  }

  return result;
}

uint64_t sub_10000D610@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return sub_10000CCEC(a1);
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

uint64_t FilePath.appending(_:)()
{
  return FilePath.appending(_:)();
}

{
  return FilePath.appending(_:)();
}