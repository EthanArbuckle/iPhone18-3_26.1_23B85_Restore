id sub_1001B12C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithContentsOfFile:v1];

  return v2;
}

void sub_1001B1610()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1001B17A0(319, &qword_1003D0EE0, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      sub_1001B17A0(319, &qword_1003D0EE8, type metadata accessor for Client.Server);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001B17A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001B1814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001B18D8(char a1)
{
  if (a1)
  {
    return 0x6C69746E75;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_1001B190C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1048);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001B32AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_1001B5280();
  sub_1001B3300(v9, v10);
  sub_1001B5628();
  if (!v1)
  {
    type metadata accessor for Client.TimedClientOverride(0);
    v14[14] = 1;
    type metadata accessor for Date();
    sub_1001B5158();
    sub_1001B3300(v11, v12);
    sub_1001B5628();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1001B1ABC()
{
  sub_1000892DC();
  v2 = v1;
  v25 = v3;
  v26 = type metadata accessor for Date();
  sub_1000890DC();
  v24 = v4;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v9);
  sub_100093D40();
  v27 = v11 - v10;
  sub_100080FB4(&qword_1003D1038);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for Client.TimedClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v14);
  sub_100093D40();
  v17 = v16 - v15;
  sub_100086D24(v2, v2[3]);
  sub_1001B32AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100080F0C(v2);
  }

  else
  {
    sub_1001B5280();
    sub_1001B3300(v18, v19);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001B5298();
    sub_1001B4A94(v27, v17);
    sub_1001B5158();
    sub_1001B3300(v20, v21);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = sub_1001B561C();
    v23(v22);
    (*(v24 + 32))(v17 + *(v13 + 20), v8, v26);
    sub_1001B339C(v17, v25);
    sub_100080F0C(v2);
    sub_1001B3348(v17, type metadata accessor for Client.TimedClientOverride);
  }

  sub_1000892C4();
}

uint64_t sub_1001B1E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B1814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B1E58(uint64_t a1)
{
  v2 = sub_1001B32AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1E94(uint64_t a1)
{
  v2 = sub_1001B32AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001B1F00()
{
  type metadata accessor for AppDefaultsManager();
  sub_100157F44();
  if (v0 >> 60 == 15)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v1 = type metadata accessor for SKLogger();
    sub_10007EDA4(v1, qword_1003F26C8);
    v2 = static os_log_type_t.info.getter();
    v3 = Logger.logObject.getter();
    if (os_log_type_enabled(v3, v2))
    {
      sub_1000B7DC8();
      v4 = swift_slowAlloc();
      sub_1000B7DBC();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446466;
      v6 = sub_1000B056C(v5);
      sub_100093BF8(v6);
      *(v4 + 14) = sub_100080210(0xD00000000000001ALL, 0x800000010031CBA0, &v11);
      sub_1001B552C(&_mh_execute_header, v7, v2, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1001B5198();
    }

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100080FB4(&qword_1003D1070);
    sub_1001B4C18();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v8 = sub_1000BD8B8();
    sub_1000BC8B4(v8, v9);
    return v11;
  }
}

uint64_t sub_1001B22AC()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100080FB4(&qword_1003D1070);
  sub_1001B4AEC();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;

  type metadata accessor for AppDefaultsManager();
  sub_100158034();
  sub_10008E168(v0, v2);
}

void sub_1001B2578()
{
  sub_100093D08();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Client.TimedClientOverride(0);
  sub_1000890DC();
  __chkstk_darwin(v12);
  sub_100093D40();
  v54 = v14 - v13;
  v15 = sub_100080FB4(&qword_1003D1068);
  v16 = sub_1000B01B0(v15);
  __chkstk_darwin(v16);
  sub_10018ECCC();
  v55 = v17;
  sub_10018ED10();
  __chkstk_darwin(v18);
  sub_1001B5458();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v19 = type metadata accessor for SKLogger();
  sub_10007EDA4(v19, qword_1003F26C8);
  sub_1000B01F4();
  _StringGuts.grow(_:)(40);

  v58[0] = 0xD00000000000001ALL;
  v58[1] = 0x800000010031CB50;
  v56 = v10;
  v20._countAndFlagsBits = sub_1001BC574();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x20726F6620;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v8;
  v22._object = v6;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x206C69746E7520;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24 = type metadata accessor for Date();
  sub_1001B5158();
  sub_1001B3300(v25, v26);
  v57 = v4;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v28))
  {
    sub_1000B7DC8();
    v30 = swift_slowAlloc();
    sub_1000B7DBC();
    v31 = swift_slowAlloc();
    v58[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_100093CF0(v31, v32, v58);
    *(v30 + 12) = 2082;
    v33 = sub_100080210(0xD00000000000001ALL, 0x800000010031CB50, v58);

    *(v30 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_1001B5170();
  sub_1001B339C(v56, v1);
  (*(*(v24 - 8) + 16))(v1 + *(v11 + 20), v57, v24);
  sub_1001B53E8();
  sub_100081DFC(v34, v35, v36, v37);

  sub_1001B1F00();
  sub_1001B55CC();
  sub_1001B53F4();
  sub_1001B5430(v38, v39, v40);
  if (v41)
  {
    sub_10013B1E8(v1, &qword_1003D1068);
    sub_1000B6328(v8, v6);
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v2;
      sub_100080FB4(&unk_1003D3160);
      v43 = sub_1001B5608();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v44);
      sub_1001B5648();
      sub_1001B50DC();
      v45 = v55;
      sub_1001B4A94(v46, v55);
      sub_1001073F0();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v45 = v55;
    }

    sub_1001B53E8();
    sub_100081DFC(v50, v51, v52, v53);

    sub_10013B1E8(v45, &qword_1003D1068);
  }

  else
  {
    sub_1001B50DC();
    sub_1001B4A94(v1, v54);
    swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v2;
    v47 = sub_1000BD8B8();
    sub_10023F1EC(v47, v48, v6, v49);
  }

  sub_1001B22AC();
  sub_100093CB8();
}

void sub_1001B2A60()
{
  sub_100093D08();
  v1 = sub_100080FB4(&qword_1003D1068);
  sub_1000B01B0(v1);
  sub_100089118();
  __chkstk_darwin(v2);
  sub_1001B540C();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  sub_10007EDA4(v3, qword_1003F26C8);
  sub_1000B01F4();
  _StringGuts.grow(_:)(36);

  v23[0] = 0xD000000000000026;
  v23[1] = 0x800000010031CB70;
  v4._countAndFlagsBits = sub_100093CAC();
  String.append(_:)(v4);
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    sub_1000B7DC8();
    v7 = swift_slowAlloc();
    sub_1000B7DBC();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_100093CF0(v8, v9, v23);
    *(v7 + 12) = 2082;
    v10 = sub_100080210(0xD000000000000026, 0x800000010031CB70, v23);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  v11 = sub_1001B1F00();
  v12 = sub_100093CAC();
  sub_1000B6328(v12, v13);
  if (v14)
  {
    sub_1001B55FC();
    swift_isUniquelyReferenced_nonNull_native();
    v23[0] = v11;
    sub_100080FB4(&unk_1003D3160);
    v15 = sub_1001B5608();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);

    v17 = type metadata accessor for Client.TimedClientOverride(0);
    sub_100098B7C();
    sub_1001B50DC();
    sub_1001B4A94(v18, v0);
    _NativeDictionary._delete(at:)();
    v19 = v0;
    v20 = 0;
    v21 = 1;
    v22 = v17;
  }

  else
  {
    type metadata accessor for Client.TimedClientOverride(0);
    sub_1000B0690();
  }

  sub_100081DFC(v19, v20, v21, v22);
  sub_10013B1E8(v0, &qword_1003D1068);
  sub_1001B22AC();
  sub_100093CB8();
}

uint64_t sub_1001B2D4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | (((a1 > 3u) | (1u >> (a1 & 0xF)) & 1) << 8);
}

uint64_t sub_1001B2D80@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B2D4C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1001B2E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B52B0();
  v7 = type metadata accessor for ClientOverride(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = v3 + *(a3 + 20);
  }

  return sub_100081D0C(v9, a2, v8);
}

uint64_t sub_1001B2F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001B52B0();
  v9 = type metadata accessor for ClientOverride(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = v4 + *(a4 + 20);
  }

  return sub_100081DFC(v11, a2, a2, v10);
}

uint64_t sub_1001B2FF0()
{
  result = type metadata accessor for ClientOverride(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B3088(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCB50);
  v5 = sub_100081D0C(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B30F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100080FB4(&qword_1003CCB50);

  return sub_100081DFC(a1, v5, a3, v6);
}

uint64_t sub_1001B315C()
{
  sub_1001B31B4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1001B31B4()
{
  if (!qword_1003D1000)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D1000);
    }
  }
}

unint64_t sub_1001B3200()
{
  result = qword_1003D1028;
  if (!qword_1003D1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1028);
  }

  return result;
}

unint64_t sub_1001B3258()
{
  result = qword_1003D1030;
  if (!qword_1003D1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1030);
  }

  return result;
}

unint64_t sub_1001B32AC()
{
  result = qword_1003D1040;
  if (!qword_1003D1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1040);
  }

  return result;
}

uint64_t sub_1001B3300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B3348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B339C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

id sub_1001B35E8(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v17 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v17];

  v9 = v17;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    sub_100098B7C();
    v12 = *(v11 + 8);
    v13 = v9;
    v12(a1, v10);
  }

  else
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for URL();
    sub_10013B618();
    (*(v15 + 8))(a1);
  }

  return v8;
}

id sub_1001B3728(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_1001B3804(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1001B3950()
{
  v0 = sub_1001B39B8();
  sub_1001B39EC(v0, v1, v2, v3);

  return sub_1001B5400();
}

uint64_t sub_1001B39EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001B3B4C(v9, 0), v12 = sub_1001B3BBC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_1001B3B4C(uint64_t a1, uint64_t a2)
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

  sub_100080FB4(&qword_1003CC1E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1001B3BBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1001C3EA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1001C3EA4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001B3DCC(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

unsigned __int8 *sub_1001B3E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    sub_100093DD0();
    v6 = sub_1001B3950();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_100093DD0();
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_1001B54A0();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_1001B54C4();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_1001B54A0();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_1001B54C4();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_1001B51C4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_1001B54C4();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_1001B51C4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_1001B54C4();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_1001B51C4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_1001B54C4();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1001B4318(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001B3950();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_1001B48A0(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(a1, a2);
  [a3 setAuditTokenData:isa];
}

id sub_1001B4914(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveBoolValueForSetting:v4];

  return v5;
}

unint64_t sub_1001B497C()
{
  result = qword_1003D1060;
  if (!qword_1003D1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1060);
  }

  return result;
}

uint64_t sub_1001B49D0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001B5400();
}

uint64_t sub_1001B4A38(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001073F0();
}

uint64_t sub_1001B4A94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

unint64_t sub_1001B4AEC()
{
  result = qword_1003D1078;
  if (!qword_1003D1078)
  {
    sub_1000852D4(&qword_1003D1070);
    sub_1001B3300(&qword_1003D1080, type metadata accessor for Client.TimedClientOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1078);
  }

  return result;
}

uint64_t sub_1001B4BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CE610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B4C18()
{
  result = qword_1003D1098;
  if (!qword_1003D1098)
  {
    sub_1000852D4(&qword_1003D1070);
    sub_1001B3300(&qword_1003D10A0, type metadata accessor for Client.TimedClientOverride);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1098);
  }

  return result;
}

unint64_t sub_1001B4CD4()
{
  result = qword_1003D10A8;
  if (!qword_1003D10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10A8);
  }

  return result;
}

unint64_t sub_1001B4D28()
{
  result = qword_1003D10B0;
  if (!qword_1003D10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10B0);
  }

  return result;
}

uint64_t sub_1001B4D7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1001B5668(a1, a2, a3);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return v3;
}

uint64_t sub_1001B4DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1001B5668(a1, a2, a3);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return v3;
}

_BYTE *sub_1001B4E28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001B4EF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B4F30()
{
  result = qword_1003D10B8;
  if (!qword_1003D10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10B8);
  }

  return result;
}

unint64_t sub_1001B4F88()
{
  result = qword_1003D10C0;
  if (!qword_1003D10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10C0);
  }

  return result;
}

unint64_t sub_1001B4FE0()
{
  result = qword_1003D10C8;
  if (!qword_1003D10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10C8);
  }

  return result;
}

unint64_t sub_1001B5038()
{
  result = qword_1003D10D0;
  if (!qword_1003D10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10D0);
  }

  return result;
}

uint64_t sub_1001B51E0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1001B51F0()
{
  sub_10008B5D0((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1001B5220()
{

  return swift_dynamicCast();
}

uint64_t sub_1001B52C8()
{

  return sub_1001B3348(v0 + v1, type metadata accessor for ClientOverride.Server);
}

uint64_t sub_1001B52F0()
{

  return sub_1001B3348(v0, type metadata accessor for Client.TimedClientOverride);
}

_OWORD *sub_1001B5418()
{

  return sub_10008B5D0((v0 - 112), (v0 - 144));
}

uint64_t sub_1001B5468(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1001B54D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1001B54EC()
{
}

_OWORD *sub_1001B5508(uint64_t a1)
{
  *(v3 - 152) = v1;

  return sub_10023ED0C(v3 - 144, v2, a1);
}

void sub_1001B552C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1001B5548(uint64_t a1)
{

  return sub_100219334(a1, v1);
}

uint64_t sub_1001B5628()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1001B5648()
{
}

uint64_t sub_1001B5668(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080FB4(a3);
}

uint64_t sub_1001B5688()
{

  return swift_slowAlloc();
}

BOOL sub_1001B56A0(char a1)
{
  sub_1001B5C3C(9, &v6);
  if (!v7)
  {
    sub_10008B69C(&v6, &unk_1003CCB70);
    return 0;
  }

  sub_100080FB4(&unk_1003D0530);
  if ((sub_1001B6A2C() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1001B5864(a1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100178848(sub_1001060A4, v5, v5[5]);

  return v3;
}

uint64_t sub_1001B57B8(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = 5;
      goto LABEL_11;
    case 2:
      v1 = 6;
      goto LABEL_11;
    case 3:
      if (sub_1001B5FAC(4))
      {
        return 1;
      }

      v1 = 7;
LABEL_11:

      return sub_1001B5FAC(v1);
    case 4:

      return sub_1001B56A0(3);
    default:
      v1 = 4;
      goto LABEL_11;
  }
}

unint64_t sub_1001B5864(char a1)
{
  result = 0x73746E756F636341;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = sub_1001B6A20(10);
      break;
    case 3:
      result = 0x6C616E7265747845;
      break;
    case 4:
      result = 0x4F786F62646E6153;
      break;
    case 5:
      result = sub_1001B6A20(9);
      break;
    case 6:
      result = 0x73656C6369747241;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B59B0(char a1)
{
  result = 0x6B7361742D746567;
  switch(a1)
  {
    case 1:
      sub_1001B6A58();
      result = v8 + 11;
      break;
    case 2:
      sub_1001B6A58();
      result = v5 + 8;
      break;
    case 3:
      sub_1001B6A58();
      result = v6 + 15;
      break;
    case 4:
      sub_1001B6A58();
      result = v4 + 25;
      break;
    case 5:
      sub_1001B6A58();
      result = v9 + 20;
      break;
    case 6:
      sub_1001B6A58();
      result = v10 + 24;
      break;
    case 7:
      sub_1001B6A58();
      result = v7 + 35;
      break;
    case 8:
      result = sub_1001B6A20(5);
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      sub_1001B6A58();
      result = v3 | 4;
      break;
  }

  return result;
}

uint64_t sub_1001B5BC8()
{
  sub_1001B5C3C(1, &v2);
  if (v3)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_10008B69C(&v2, &unk_1003CCB70);
    return 0;
  }

  return result;
}

double sub_1001B5C3C@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  sub_1001B59B0(a1);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001B5D10()
{
  sub_1001B5C3C(2, &v1);
  if (v2)
  {
    sub_10008B5D0(&v1, &v3);
  }

  else
  {
    sub_1001B5C3C(0, &v3);
    if (v2)
    {
      sub_10008B69C(&v1, &unk_1003CCB70);
    }
  }

  if (v4)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_10008B69C(&v3, &unk_1003CCB70);
    return 0;
  }

  return result;
}

uint64_t sub_1001B5E74()
{
  sub_1001B5C3C(8, &v3);
  if (v4)
  {
    sub_10008B5D0(&v3, &v5);
  }

  else
  {
    sub_1001B5C3C(3, &v1);
    if (v2)
    {
      sub_10008B5D0(&v1, &v5);
    }

    else
    {
      sub_1001B5C3C(0, &v5);
      if (v2)
      {
        sub_10008B69C(&v1, &unk_1003CCB70);
      }
    }

    if (v4)
    {
      sub_10008B69C(&v3, &unk_1003CCB70);
    }
  }

  if (v6)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_10008B69C(&v5, &unk_1003CCB70);
    return 0;
  }

  return result;
}

uint64_t sub_1001B5FAC(char a1)
{
  sub_1001B5C3C(a1, &v3);
  if (v4)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_10008B69C(&v3, &unk_1003CCB70);
    return 0;
  }

  return result;
}

uint64_t sub_1001B608C()
{
  if (sub_1001B5FAC(10))
  {
    return 1;
  }

  result = sub_100070464();
  if (result)
  {
    if (qword_1003CBDF8 != -1)
    {
      swift_once();
    }

    return byte_1003F25E1;
  }

  return result;
}

void sub_1001B610C()
{
  v1 = sub_100080FB4(&unk_1003D0540);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v51 - v9;
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  sub_1000AF0B0(v0, &selRef_sk_executablePath);
  if (!v22)
  {
    sub_1000AF0B0(v0, &selRef_sk_processName);
    return;
  }

  v54 = v0;
  v56 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = CFURLCreateWithFileSystemPath(0, v23, kCFURLPOSIXPathStyle, 0);

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v14;
    v25 = v56;
    v26 = v19;
    v27 = *(v14 + 32);
    v27(v56, v26, v13);
    sub_100081DFC(v12, 1, 1, v13);
    sub_10012A7F8(v12, v10);
    v28 = sub_100081D0C(v10, 1, v13);
    v53 = v24;
    if (v28 == 1)
    {
      sub_10008B69C(v10, &unk_1003D0540);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v32 = _CFBundleCopyBundleURLForExecutableURL();

      if (!v32)
      {
        __break(1u);
        return;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10008B69C(v12, &unk_1003D0540);
      sub_100081DFC(v7, 0, 1, v13);
      sub_1000B71B8(v7, v12);
      v25 = v56;
    }

    else
    {

      sub_10008B69C(v10, &unk_1003D0540);
    }

    v35 = v55;
    sub_10012A7F8(v12, v4);
    if (sub_100081D0C(v4, 1, v13) == 1)
    {
      sub_10008B69C(v4, &unk_1003D0540);
      v36 = v52;
    }

    else
    {
      v27(v35, v4, v13);
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v40 = CFBundleCreate(0, v38);

      if (v40)
      {
        v41 = CFBundleGetIdentifier(v40);
        v36 = v52;
        v42 = v54;
        if (v41)
        {
          v43 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = *(v36 + 8);
          v44(v35, v13);
          sub_10008B69C(v12, &unk_1003D0540);
          v44(v25, v13);
          return;
        }

        v49 = sub_1001B6A44();
        v50(v49);

        goto LABEL_18;
      }

      v36 = v52;
      v45 = sub_1001B6A44();
      v46(v45);
    }

    v42 = v54;
LABEL_18:
    v47 = [v42 sk_processName];
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    sub_10008B69C(v12, &unk_1003D0540);
    (*(v36 + 8))(v56, v13);
    return;
  }

  v33 = [v54 sk_processName];
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_1001B6698(uint64_t a1, id a2, int (*a3)(uint64_t, uint64_t, uint64_t))
{
  [a2 auditToken];
  v5 = sub_1001B6A18(v9);
  v6 = swift_slowAlloc();
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  if (a3(v5, v6, a1) < 1)
  {

    return 0;
  }

  else
  {
    v7 = String.init(cString:)();
  }

  return v7;
}

id sub_1001B67AC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001B68CC()
{
  [v0 auditToken];
  [v0 auditToken];
  return Data.init(bytes:count:)();
}

uint64_t sub_1001B6980()
{
  v1 = sub_1000AF0B0(v0, &selRef_sk_clientID);
  if (v2)
  {
    if (v1 == 0xD000000000000023 && v2 == 0x800000010031CD60)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1001B6A2C()
{

  return swift_dynamicCast();
}

uint64_t sub_1001B6A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D20F0);
    v9 = a1 + *(a3 + 24);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1001B6B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0);
    v8 = v5 + *(a4 + 24);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PerformPurchaseRequest()
{
  result = qword_1003D1130;
  if (!qword_1003D1130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6C00()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001B6C7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001B6D98(char a1)
{
  if (!a1)
  {
    return 0x6D61726150797562;
  }

  if (a1 == 1)
  {
    return 0x79654B676F6CLL;
  }

  return 0x764F746E65696C63;
}

uint64_t sub_1001B6DFC(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1190);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001B7494();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PerformPurchaseRequest();
    v12[13] = 2;
    type metadata accessor for ClientOverride(0);
    sub_1001B7798();
    sub_1001B7544(v9, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001B6FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  sub_100080FB4(&qword_1003D1180);
  sub_1000890DC();
  v24 = v8;
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for PerformPurchaseRequest();
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 32);
  v14 = type metadata accessor for ClientOverride(0);
  v26 = v13;
  sub_100081DFC(v12 + v13, 1, 1, v14);
  sub_100086D24(a1, a1[3]);
  sub_1001B7494();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100080F0C(a1);
    return sub_100086DC0(v12 + v26);
  }

  else
  {
    v29 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v22[1] = v15;
    v28 = 1;
    v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v12[3] = v16;
    v27 = 2;
    sub_1001B7798();
    sub_1001B7544(v17, v18);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = sub_1001B77B0();
    v20(v19);
    sub_1000E0B18(v6, v12 + v26);
    sub_10008DE64(v12, v23);
    sub_100080F0C(a1);
    return sub_1001B74E8(v12);
  }
}

uint64_t sub_1001B72E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B6C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B7310(uint64_t a1)
{
  v2 = sub_1001B7494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B734C(uint64_t a1)
{
  v2 = sub_1001B7494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B73B8(uint64_t a1)
{
  *(a1 + 8) = sub_1001B7544(&qword_1003CE2D8, type metadata accessor for PerformPurchaseRequest);
  result = sub_1001B7544(&qword_1003D1170, type metadata accessor for PerformPurchaseRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001B743C(uint64_t a1)
{
  result = sub_1001B7544(&qword_1003D1178, type metadata accessor for PerformPurchaseRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001B7494()
{
  result = qword_1003D1188;
  if (!qword_1003D1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1188);
  }

  return result;
}

uint64_t sub_1001B74E8(uint64_t a1)
{
  v2 = type metadata accessor for PerformPurchaseRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B7544(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PerformPurchaseRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001B7658);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B7694()
{
  result = qword_1003D1198;
  if (!qword_1003D1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1198);
  }

  return result;
}

unint64_t sub_1001B76EC()
{
  result = qword_1003D11A0;
  if (!qword_1003D11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D11A0);
  }

  return result;
}

unint64_t sub_1001B7744()
{
  result = qword_1003D11A8;
  if (!qword_1003D11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D11A8);
  }

  return result;
}

uint64_t sub_1001B77C0()
{
  sub_10008BE9C();
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = type metadata accessor for FinishTransactionTask();
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for SKLogger();
  v1[31] = swift_task_alloc();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B7E24()
{
  sub_10008BE9C();
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1001B7EB8;
  v2 = swift_continuation_init();
  sub_1001B8724(v2, v1);

  return _swift_continuation_await(v0 + 2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001B7EB8()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B7F88()
{
  sub_10008BE9C();
  *(v0 + 104) = &type metadata for StoreKitFeatureFlag;
  v1 = sub_1000B7380();
  *(v0 + 80) = 2;
  *(v0 + 112) = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100080F0C(v0 + 80);
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_1001B80B4;
    v4 = sub_1000B06F4(*(v0 + 208));

    return sub_1001B8BC0(v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    *v6 = v0;
    v6[1] = sub_1001B81E0;
    v7 = sub_1000B06F4(*(v0 + 208));

    return sub_1001B9420(v7);
  }
}

uint64_t sub_1001B80B4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100098AA4();

    return v10();
  }
}

uint64_t sub_1001B81E0()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100098AA4();

    return v10();
  }
}

uint64_t sub_1001B8724(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FinishTransactionTask();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E5A4(0, &qword_1003CC1F0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.utility(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  sub_1001BA1C4(v21, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinishTransactionTask);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1001BA3AC(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1001BA758;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_10038E770;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1001BA7FC();
  sub_100080FB4(&qword_1003CCB60);
  sub_10008E34C();
  v18 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v3, v18);
  (*(v24 + 8))(v6, v25);
}

uint64_t sub_1001B8B2C()
{
  v0 = [objc_allocWithZone(InAppDownloadManager) init];
  type metadata accessor for FinishTransactionTask();
  v1 = String._bridgeToObjectiveC()();
  [v0 removeDownloadsForTransactionID:v1];

  return swift_continuation_throwingResume();
}

uint64_t sub_1001B8BC0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for TransactionCacheManager();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1001B8C64;

  return sub_100108EE8(a1);
}

uint64_t sub_1001B8C64()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B8D50()
{
  v1 = type metadata accessor for FinishTransactionTask();
  sub_1001BA86C(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = sub_1001BA8B0(v2);

  return sub_10010C8DC(v3, v4);
}

uint64_t sub_1001B8DF0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B8EDC()
{
  v25 = v0;
  if (*(v0 + 112))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v1 = type metadata accessor for SKLogger();
    sub_10007EDA4(v1, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = static os_log_type_t.default.getter();

    v5 = Logger.logObject.getter();

    if (os_log_type_enabled(v5, v4))
    {
      v6 = sub_10008E688();
      sub_10008E670();
      *v6 = 136446466;
      sub_10008E5EC();
      v7._countAndFlagsBits = v3;
      v7._object = v2;
      String.append(_:)(v7);
      v8._countAndFlagsBits = 8285;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
      v9 = sub_100080210(v24[1], v24[2], v24);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_1001BA918(v10, v11, v12, v13, v14, v15, v16, v17, v24[0]);
      _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_1000AFF34();
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  v20 = swift_task_alloc();
  *(v0 + 88) = v20;
  *v20 = v0;
  v20[1] = sub_1001B9130;
  sub_1000B06F4(*(v0 + 32));
  sub_10008E654();

  return sub_1001B9C74(v21);
}

uint64_t sub_1001B9130()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[13] = v10;
    *v10 = v5;
    v10[1] = sub_1001B9288;
    sub_1000B06F4(v3[8]);

    return sub_10010D1F0();
  }
}

uint64_t sub_1001B9288()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B936C()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

uint64_t sub_1001B93C4()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1001B9420(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_10008E5A4(0, &unk_1003CE5F0);
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1001B94D4;

  return sub_100148CA8(a1);
}

uint64_t sub_1001B94D4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B95C0()
{
  v1 = type metadata accessor for FinishTransactionTask();
  sub_1001BA86C(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  sub_1001BA8B0(v2);

  return sub_10014AC4C();
}

uint64_t sub_1001B9660()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B974C()
{
  v28 = v0;
  if (*(v0 + 112))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v1 = type metadata accessor for SKLogger();
    sub_10007EDA4(v1, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = static os_log_type_t.default.getter();

    v5 = Logger.logObject.getter();

    v6 = os_log_type_enabled(v5, v4);
    v7 = *(v0 + 56);
    if (v6)
    {
      v8 = sub_10008E688();
      sub_10008E670();
      *v8 = 136446466;
      sub_10008E5EC();
      v9._countAndFlagsBits = v3;
      v9._object = v2;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 8285;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      sub_100080210(v27[1], v27[2], v27);

      sub_1000AFD94();
      *(v8 + 14) = sub_1001BA918(v11, v12, v13, v14, v15, v16, v17, v18, v27[0]);
      sub_1000AFE74(&_mh_execute_header, v19, v20, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000AFF34();
      sub_100081C28();
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  v23 = swift_task_alloc();
  *(v0 + 88) = v23;
  *v23 = v0;
  v23[1] = sub_1001B9984;
  sub_1000B06F4(*(v0 + 32));
  sub_10008E654();

  return sub_1001B9C74(v24);
}

uint64_t sub_1001B9984()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[13] = v10;
    *v10 = v5;
    v10[1] = sub_1001B9ADC;
    sub_1000B06F4(v3[8]);

    return sub_10014B1C0();
  }
}

uint64_t sub_1001B9ADC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B9BC0()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v1();
}

uint64_t sub_1001B9C18()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1001B9C74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for FinishTransactionTask() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9D38, 0, 0);
}

uint64_t sub_1001B9D38(uint64_t a1)
{
  sub_1001A7AB4(a1);
  ObjectType = swift_getObjectType();
  if (qword_1003CBF90 != -1)
  {
    swift_once();
  }

  v3 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  v6 = qword_1003F27F8;
  sub_1001BA854();
  sub_1001BA1C4(v7, v3, v8);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1001BA3AC(v3, v10 + v9);
  v11 = sub_100235724(v6, &unk_1002F89B8, v10, ObjectType);
  v1[7] = v11;
  swift_unknownObjectRelease();

  v12 = objc_allocWithZone(type metadata accessor for Request());
  v1[8] = sub_10021E56C(v5, v11, 3, 2, 0, 0);
  v13 = swift_task_alloc();
  v1[9] = v13;
  *v13 = v1;
  v13[1] = sub_1001B9EE8;

  return sub_10021E694();
}

uint64_t sub_1001B9EE8()
{
  sub_10008BE9C();
  v3 = v2;
  sub_10008C070();
  sub_10008BEFC();
  *v5 = v4;
  v6 = *v1;
  sub_100098AB4();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001B9FEC()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);

  sub_100098AA4();

  return v2();
}

uint64_t sub_1001BA054()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001BA0E0()
{
  sub_10008BE9C();
  v1 = *(v0 + 80);
  sub_100080FB4(&unk_1003CEE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED290;
  strcpy((inited + 32), "transactionId");
  *(inited + 46) = -4864;
  v3 = (v1 + *(type metadata accessor for FinishTransactionTask() + 24));
  v4 = v3[1];
  *(inited + 48) = *v3;
  *(inited + 56) = v4;

  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1001BA1C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001BA224()
{
  type metadata accessor for FinishTransactionTask();
  sub_1001BA8C8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v0 + v4);
  v8 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_10008E168(*v7, v9);
    }

    v10 = *(v1 + 28);
    v11 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v7 + v10, 3, v11))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v12 + 8))(v7 + v10);
    }

    v13 = *(v1 + 40);
    v14 = type metadata accessor for UUID();
    if (!sub_1001BA958(v14))
    {
      (*(*(v1 - 8) + 8))(v7 + v13, v1);
    }
  }

  sub_1001BA978();
  sub_1001BA978();

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_1001BA3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinishTransactionTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BA410()
{
  sub_10008BE9C();
  v2 = *(type metadata accessor for FinishTransactionTask() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BA4D8;

  return sub_1001BA0C0(v0 + v3);
}

uint64_t sub_1001BA4D8()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1001BA5C4()
{
  type metadata accessor for FinishTransactionTask();
  sub_1001BA8C8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v0 + v4);
  v8 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_10008E168(*v7, v9);
    }

    v10 = *(v1 + 28);
    v11 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v7 + v10, 3, v11))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v12 + 8))(v7 + v10);
    }

    v13 = *(v1 + 40);
    v14 = type metadata accessor for UUID();
    if (!sub_1001BA958(v14))
    {
      (*(*(v1 - 8) + 8))(v7 + v13, v1);
    }
  }

  sub_1001BA978();
  sub_1001BA978();

  return _swift_deallocObject(v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1001BA758()
{
  type metadata accessor for FinishTransactionTask();

  return sub_1001B8B2C();
}

uint64_t sub_1001BA7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001BA7FC()
{
  result = qword_1003CCB58;
  if (!qword_1003CCB58)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCB58);
  }

  return result;
}

uint64_t sub_1001BA86C(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  *(v2 + 64) = *v3;
  *(v2 + 72) = v3[1];
  return result;
}

unint64_t sub_1001BA888(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_100080210(a1, v1, va);
}

void sub_1001BA8E0(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001DLL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

unint64_t sub_1001BA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100080210(0xD00000000000001FLL, v9 | 0x8000000000000000, &a9);
}

void sub_1001BA938()
{

  _StringGuts.grow(_:)(31);
}

uint64_t sub_1001BA958(uint64_t a1)
{

  return sub_100081D0C(v1 + v2, 1, a1);
}

uint64_t sub_1001BA978()
{
}

uint64_t sub_1001BA9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_100080FB4(&unk_1003CE610);
      v11 = *(a3 + 40);
    }

    return sub_100081D0C(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001BAABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_100080FB4(&unk_1003CE610);
      v10 = *(a4 + 40);
    }

    return sub_100081DFC(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_1001BABB0()
{
  sub_10016D86C(319, &qword_1003CD708);
  if (v0 <= 0x3F)
  {
    sub_10016D86C(319, &qword_1003CD3C0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClientOverride.Server(319);
      if (v2 <= 0x3F)
      {
        sub_10016D86C(319, &unk_1003D1218);
        if (v3 <= 0x3F)
        {
          sub_1001BACAC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001BACAC()
{
  if (!qword_1003D0EE0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D0EE0);
    }
  }
}

uint64_t sub_1001BAD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCB50);
  v5 = sub_100081D0C(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001BAD80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100080FB4(&qword_1003CCB50);

  return sub_100081DFC(a1, v5, a3, v6);
}

uint64_t sub_1001BADEC()
{
  sub_1001B31B4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1001BAE44(uint64_t a1, uint64_t a2)
{
  sub_1001BE170();
  v5 = v5 && v4 == 0xE900000000000063;
  if (v5 || (sub_1000DCD4C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1001BE11C();
    v8 = v5 && a2 == v7;
    if (v8 || (sub_1000DCD4C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_1001BE158();
      v9 = v5 && a2 == 0xE700000000000000;
      if (v9 || (sub_1000DCD4C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73655465646F6378 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v11 = sub_1000DCD4C();

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001BAF4C(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x69746375646F7270;
      break;
    case 2:
      result = 0x786F62646E6173;
      break;
    case 3:
      result = 0x73655465646F6378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BAFE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010031D1A0 == a2)
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

uint64_t sub_1001BB08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BAE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BB0C0(uint64_t a1)
{
  v2 = sub_1001BD680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB0FC(uint64_t a1)
{
  v2 = sub_1001BD680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BB158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BAFE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001BB190(uint64_t a1)
{
  v2 = sub_1001BD6D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB1CC(uint64_t a1)
{
  v2 = sub_1001BD6D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BB208()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = sub_1000B01B0(v9);
  __chkstk_darwin(v10);
  sub_100093D40();
  v13 = v12 - v11;
  sub_1001BE0A0();
  sub_1001BD5C8(v1, v13, v14);
  v15 = sub_100080FB4(&qword_1003CCB50);
  v16 = 0x6974616D6F747541;
  switch(sub_100081D0C(v13, 3, v15))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x69746375646F7250;
      break;
    case 3u:
      v16 = 0x786F62646E6153;
      break;
    default:
      (*(v4 + 32))(v8, v13, v2);
      sub_1001BE058();
      sub_1001BD4C8(v17, v18);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v16 = 0x73655465646F6358;
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v16;
}

uint64_t sub_1001BB444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v4 = sub_100080FB4(&qword_1003D1338);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v88 = v6;
  v90 = sub_100080FB4(&qword_1003D1340);
  sub_1000890DC();
  v87 = v7;
  sub_100089118();
  __chkstk_darwin(v8);
  sub_1000891AC();
  v86 = v9;
  v92 = sub_100080FB4(&qword_1003D1348);
  sub_1000890DC();
  v89 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  sub_1000891AC();
  v91 = v12;
  type metadata accessor for URL();
  sub_1000890DC();
  v97 = v14;
  v98 = v13;
  __chkstk_darwin(v13);
  sub_100093D40();
  v93 = v16 - v15;
  v17 = sub_100080FB4(&qword_1003D1350);
  sub_1000890DC();
  v94 = v18;
  sub_100089118();
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  v22 = sub_100080FB4(&qword_1003D1358);
  sub_1000B01B0(v22);
  sub_100089118();
  __chkstk_darwin(v23);
  v25 = &v84 - v24;
  v26 = sub_100080FB4(&qword_1003D1360);
  sub_1000890DC();
  v28 = v27;
  sub_100089118();
  __chkstk_darwin(v29);
  sub_10018ED2C();
  v30 = type metadata accessor for ClientOverride.Server(0);
  v31 = sub_1000B01B0(v30);
  __chkstk_darwin(v31);
  sub_100093D40();
  v96 = v33 - v32;
  v34 = a1[3];
  v101 = a1;
  sub_100086D24(a1, v34);
  sub_1001BD680();
  v35 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {

    sub_100081DFC(v25, 1, 1, v26);
    sub_1000AF25C(v25, &qword_1003D1358);
  }

  else
  {
    v99 = v21;
    v85 = v17;
    v40 = v97;
    v39 = v98;
    sub_100081DFC(v25, 0, 1, v26);
    (*(v28 + 32))(v2, v25, v26);
    v41 = KeyedDecodingContainer.allKeys.getter();
    if (*(v41 + 16))
    {
      v42 = *(v41 + 32);

      switch(v42)
      {
        case 1:
          v64 = sub_1001BE0E0();
          v65(v64);
          sub_100080FB4(&qword_1003CCB50);
          v45 = sub_1001BE0D0();
          v47 = 2;
          goto LABEL_24;
        case 2:
          v57 = sub_1001BE0E0();
          v58(v57);
          sub_100080FB4(&qword_1003CCB50);
          v45 = sub_1001BE0D0();
          v47 = 3;
          goto LABEL_24;
        case 3:
          v59 = v39;
          v60 = v40;
          LOBYTE(v100[0]) = 3;
          sub_1001BD6D4();
          v61 = v99;
          v62 = v2;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v63 = v28;
          sub_1001BE058();
          sub_1001BD4C8(v67, v68);
          v69 = v93;
          v70 = v61;
          v71 = v85;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v94 + 8))(v70, v71);
          (*(v63 + 8))(v62, v26);
          v36 = v101;
          v42 = v96;
          (*(v60 + 32))(v96, v69, v59);
          v72 = sub_100080FB4(&qword_1003CCB50);
          sub_100081DFC(v42, 0, 3, v72);
          break;
        default:
          v43 = sub_1001BE0E0();
          v44(v43);
          sub_100080FB4(&qword_1003CCB50);
          v45 = sub_1001BE0D0();
          v47 = 1;
LABEL_24:
          sub_100081DFC(v45, v47, 3, v46);
          v36 = v101;
          break;
      }

LABEL_25:
      sub_1001BD564(v42, v95);
      return sub_100080F0C(v36);
    }

    v48 = sub_1001BE0E0();
    v49(v48);
  }

  v36 = v101;
  sub_100086D24(v101, v101[3]);
  sub_1001BE1EC();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v35)
  {
    sub_100086D24(v100, v100[3]);
    sub_1001BE1EC();
    v37 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v42 = v37;
    v50 = v38;
    v51 = v37 == 1869903201 && v38 == 0xE400000000000000;
    if (v51 || (sub_1001BE100() & 1) != 0 || ((sub_1001BE170(), v51) ? (v53 = v50 == v52) : (v53 = 0), v53 || (sub_1001BE100() & 1) != 0))
    {

      v54 = 1;
    }

    else
    {
      v73 = v42 == 1685025392 && v50 == 0xE400000000000000;
      if (v73 || (sub_1001BE100() & 1) != 0 || ((sub_1001BE11C(), v51) ? (v75 = v50 == v74) : (v75 = 0), v75 || (sub_1001BE100() & 1) != 0))
      {

        v54 = 2;
      }

      else
      {
        sub_1001BE158();
        v76 = v51 && v50 == 0xE700000000000000;
        if (v76 || (sub_1001BE100() & 1) != 0)
        {

          v54 = 3;
        }

        else
        {
          sub_100080FB4(&qword_1003D1370);
          Regex.init(_regexString:version:)();
          v77 = v88;
          Regex.wholeMatch(in:)();

          if (sub_100081D0C(v77, 1, v90) == 1)
          {
            sub_1000AF25C(v77, &qword_1003D1338);
            v78 = type metadata accessor for DecodingError();
            swift_allocError();
            v80 = v79;
            v36 = v101;
            sub_100086D24(v101, v101[3]);
            dispatch thunk of Decoder.codingPath.getter();
            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v78 - 8) + 104))(v80, enum case for DecodingError.dataCorrupted(_:), v78);
            swift_willThrow();
            (*(v89 + 8))(v91, v92);
            sub_100080F0C(v100);
            return sub_100080F0C(v36);
          }

          v81 = v87;
          v82 = v86;
          v83 = v90;
          (*(v87 + 32))(v86, v77, v90);
          swift_getKeyPath();
          Regex.Match.subscript.getter();

          v42 = static String._fromSubstring(_:)();

          URL.init(fileURLWithPath:)();

          (*(v81 + 8))(v82, v83);
          (*(v89 + 8))(v91, v92);
          v54 = 0;
          v36 = v101;
        }
      }
    }

    sub_100080FB4(&qword_1003CCB50);
    v55 = sub_1001BE0D0();
    sub_100081DFC(v55, v54, 3, v56);
    sub_100080F0C(v100);
    goto LABEL_25;
  }

  return sub_100080F0C(v36);
}

uint64_t sub_1001BBE8C(void *a1)
{
  sub_100080FB4(&qword_1003D1380);
  sub_1000890DC();
  v55 = v4;
  v56 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v52 = v6;
  type metadata accessor for URL();
  sub_1000890DC();
  v53 = v8;
  v54 = v7;
  __chkstk_darwin(v7);
  sub_100093D40();
  v57 = v10 - v9;
  sub_100080FB4(&qword_1003D1388);
  sub_1000890DC();
  v50 = v12;
  v51 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  sub_1000891AC();
  v49 = v14;
  sub_100080FB4(&qword_1003D1390);
  sub_1000890DC();
  v47 = v16;
  v48 = v15;
  sub_100089118();
  __chkstk_darwin(v17);
  sub_100089350();
  sub_100080FB4(&qword_1003D1398);
  sub_1000890DC();
  v45 = v19;
  v46 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for ClientOverride.Server(0);
  v24 = sub_1000B01B0(v23);
  __chkstk_darwin(v24);
  sub_100093D40();
  v27 = v26 - v25;
  v28 = sub_100080FB4(&qword_1003D13A0);
  sub_1000890DC();
  v30 = v29;
  sub_100089118();
  __chkstk_darwin(v31);
  v33 = &v44 - v32;
  sub_100086D24(a1, a1[3]);
  sub_1001BD680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001BE0A0();
  sub_1001BD5C8(v58, v27, v34);
  v35 = sub_100080FB4(&qword_1003CCB50);
  switch(sub_100081D0C(v27, 3, v35))
  {
    case 1u:
      v59 = 0;
      sub_1001BD7D0();
      sub_1001BE13C();
      (*(v45 + 8))(v22, v46);
      goto LABEL_6;
    case 2u:
      v60 = 1;
      sub_1001BD77C();
      sub_1001BE13C();
      (*(v47 + 8))(v1, v48);
      goto LABEL_6;
    case 3u:
      v61 = 2;
      sub_1001BD728();
      v43 = v49;
      sub_1001BE13C();
      (*(v50 + 8))(v43, v51);
LABEL_6:
      result = (*(v30 + 8))(v33, v28);
      break;
    default:
      v37 = v53;
      v36 = v54;
      (*(v53 + 32))(v57, v27, v54);
      v62 = 3;
      sub_1001BD6D4();
      v38 = v52;
      sub_1001BE13C();
      sub_1001BE058();
      sub_1001BD4C8(v39, v40);
      v41 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v38, v41);
      (*(v37 + 8))(v57, v36);
      result = (*(v30 + 8))(v33, v28);
      break;
  }

  return result;
}

uint64_t sub_1001BC3D8(uint64_t a1)
{
  v2 = sub_1001BD7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC414(uint64_t a1)
{
  v2 = sub_1001BD7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC450(uint64_t a1)
{
  v2 = sub_1001BD77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC48C(uint64_t a1)
{
  v2 = sub_1001BD77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC4C8(uint64_t a1)
{
  v2 = sub_1001BD728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC504(uint64_t a1)
{
  v2 = sub_1001BD728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC574()
{
  v3 = sub_100080FB4(&unk_1003CE610);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_100089350();
  v5 = type metadata accessor for UUID();
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100093D40();
  sub_10018ED2C();
  v9 = v0[3];
  if (v9)
  {
    v10 = v0[2];
    String.append(_:)(*(&v9 - 1));
    sub_1001BE1A0();
    v11._countAndFlagsBits = 0x2864696272;
    v11._object = 0xE500000000000000;
    String.append(_:)(v11);
  }

  v12 = v0[5];
  if (v12)
  {
    v13 = v0[4];
    String.append(_:)(*(&v12 - 1));
    sub_1001BE1A0();
    v14._countAndFlagsBits = 0x287372766272;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
  }

  v15 = type metadata accessor for ClientOverride(0);
  if ((*(v0 + v15[9] + 8) & 1) == 0)
  {
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_1001BE1A0();
    v17._countAndFlagsBits = 0x2864496D616461;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
  }

  if ((*(v0 + v15[8] + 8) & 1) == 0)
  {
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    sub_1001BE1A0();
    v19._countAndFlagsBits = 0x6449737256747865;
    v19._object = 0xE900000000000028;
    String.append(_:)(v19);
  }

  sub_1000E3228(v0 + v15[10], v2);
  if (sub_100081D0C(v2, 1, v5) == 1)
  {
    sub_1000AF25C(v2, &unk_1003CE610);
  }

  else
  {
    (*(v7 + 32))(v1, v2, v5);
    sub_1001BE070();
    sub_1001BD4C8(v20, v21);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_1001BE1A0();
    v23._countAndFlagsBits = 677669238;
    v23._object = 0xE400000000000000;
    String.append(_:)(v23);

    (*(v7 + 8))(v1, v5);
  }

  v24._countAndFlagsBits = sub_1001BB208();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x28726576726573;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);

  return 0;
}

uint64_t sub_1001BC930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000010031D160 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000010031C620 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000010031D180 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65744965726F7473 && a2 == 0xEB0000000044496DLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BCB78(char a1)
{
  result = 0x4274736575716572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x726576726573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65744965726F7473;
      break;
    case 6:
      result = 0x4449726F646E6576;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1001BCC78(void *a1)
{
  v4 = v1;
  v6 = sub_100080FB4(&qword_1003D1320);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_10018ED2C();
  sub_100086D24(a1, a1[3]);
  sub_1001BD510();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v4;
  v16 = v4[1];
  sub_1000BC7F4(*v4, v16);
  sub_1000BC860();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_1000BC8B4(v15, v16);
  }

  else
  {
    sub_1000BC8B4(v15, v16);
    sub_1001BE088(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001BE088(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ClientOverride(0);
    type metadata accessor for ClientOverride.Server(0);
    sub_1001BE0B8();
    sub_1001BD4C8(v10, v11);
    sub_1001BE188();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1001BE088(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001BE088(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for UUID();
    sub_1001BE070();
    sub_1001BD4C8(v12, v13);
    sub_1001BE188();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1001BCEFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100080FB4(&unk_1003CE610);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_100089350();
  type metadata accessor for ClientOverride.Server(0);
  sub_100098B7C();
  __chkstk_darwin(v7);
  sub_100093D40();
  sub_10018ED2C();
  sub_100080FB4(&qword_1003D1300);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v9);
  sub_100093D40();
  v12 = (v11 - v10);
  *(v11 - v10) = xmmword_1002F0420;
  v32 = v13;
  v14 = v13[10];
  v15 = type metadata accessor for UUID();
  v33 = v14;
  sub_100081DFC(v12 + v14, 1, 1, v15);
  v16 = sub_100086D24(a1, a1[3]);
  sub_1001BD510();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    sub_1001BE1B8();
    sub_100080F0C(a1);
    sub_1000BC8B4(*v12, v12[1]);

    if (v16)
    {
      sub_1001BD628(v12 + *(v3 + 28), type metadata accessor for ClientOverride.Server);
    }

    return sub_1000AF25C(v12 + v33, &unk_1003CE610);
  }

  else
  {
    sub_1000BC95C();
    sub_1000BD838();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000BC8B4(*v12, v12[1]);
    *v12 = v34;
    v12[1] = v35;
    sub_1001BE1E0(1);
    sub_1000BD838();
    v12[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[3] = v17;
    sub_1001BE1E0(2);
    sub_1000BD838();
    v12[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[5] = v18;
    sub_1001BE0B8();
    sub_1001BD4C8(v19, v20);
    sub_1000BD838();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001BD564(v2, v12 + v32[7]);
    sub_1001BE1E0(4);
    sub_1000BD838();
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1001BE1CC(v21, v22, v32[8]);
    sub_1001BE1E0(5);
    sub_1000BD838();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1001BE1CC(v23, v24, v32[9]);
    sub_1001BE070();
    sub_1001BD4C8(v25, v26);
    sub_1000BD838();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = sub_1001BE0F0();
    v28(v27);
    sub_1001B4BA8(v3, v12 + v33);
    sub_1001BD5C8(v12, a2, type metadata accessor for ClientOverride);
    sub_100080F0C(a1);
    return sub_1001BD628(v12, type metadata accessor for ClientOverride);
  }
}

uint64_t sub_1001BD3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BC930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BD41C(uint64_t a1)
{
  v2 = sub_1001BD510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BD458(uint64_t a1)
{
  v2 = sub_1001BD510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BD4C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001BD510()
{
  result = qword_1003D1308;
  if (!qword_1003D1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1308);
  }

  return result;
}

uint64_t sub_1001BD564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BD5C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001BD628(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1001BD680()
{
  result = qword_1003D1368;
  if (!qword_1003D1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1368);
  }

  return result;
}

unint64_t sub_1001BD6D4()
{
  result = qword_1003D1378;
  if (!qword_1003D1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1378);
  }

  return result;
}

unint64_t sub_1001BD728()
{
  result = qword_1003D13A8;
  if (!qword_1003D13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13A8);
  }

  return result;
}

unint64_t sub_1001BD77C()
{
  result = qword_1003D13B0;
  if (!qword_1003D13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13B0);
  }

  return result;
}

unint64_t sub_1001BD7D0()
{
  result = qword_1003D13B8;
  if (!qword_1003D13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001BD920);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.XcodeTestCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001BD9F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001BDAF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001BDB34()
{
  result = qword_1003D13C0;
  if (!qword_1003D13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13C0);
  }

  return result;
}

unint64_t sub_1001BDB8C()
{
  result = qword_1003D13C8;
  if (!qword_1003D13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13C8);
  }

  return result;
}

unint64_t sub_1001BDBE4()
{
  result = qword_1003D13D0;
  if (!qword_1003D13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13D0);
  }

  return result;
}

unint64_t sub_1001BDC3C()
{
  result = qword_1003D13D8;
  if (!qword_1003D13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13D8);
  }

  return result;
}

unint64_t sub_1001BDC94()
{
  result = qword_1003D13E0;
  if (!qword_1003D13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13E0);
  }

  return result;
}

unint64_t sub_1001BDCEC()
{
  result = qword_1003D13E8;
  if (!qword_1003D13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13E8);
  }

  return result;
}

unint64_t sub_1001BDD44()
{
  result = qword_1003D13F0;
  if (!qword_1003D13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13F0);
  }

  return result;
}

unint64_t sub_1001BDD9C()
{
  result = qword_1003D13F8;
  if (!qword_1003D13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13F8);
  }

  return result;
}

unint64_t sub_1001BDDF4()
{
  result = qword_1003D1400;
  if (!qword_1003D1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1400);
  }

  return result;
}

unint64_t sub_1001BDE4C()
{
  result = qword_1003D1408;
  if (!qword_1003D1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1408);
  }

  return result;
}

unint64_t sub_1001BDEA4()
{
  result = qword_1003D1410;
  if (!qword_1003D1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1410);
  }

  return result;
}

unint64_t sub_1001BDEFC()
{
  result = qword_1003D1418;
  if (!qword_1003D1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1418);
  }

  return result;
}

unint64_t sub_1001BDF54()
{
  result = qword_1003D1420;
  if (!qword_1003D1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1420);
  }

  return result;
}

unint64_t sub_1001BDFAC()
{
  result = qword_1003D1428;
  if (!qword_1003D1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1428);
  }

  return result;
}

unint64_t sub_1001BE004()
{
  result = qword_1003D1430;
  if (!qword_1003D1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1430);
  }

  return result;
}

uint64_t sub_1001BE100()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001BE13C()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_1001BE1A0()
{
  v1 = 8233;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1001BE1CC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

id sub_1001BE200(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components] = a1;
  v5.receiver = v3;
  v5.super_class = v1;

  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1001BE34C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = String._bridgeToObjectiveC()();

      v8 = [v6 transformSQLWithRoot:v7];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
    }

    while (v4 != v5);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BE514(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *(v2 + OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components);
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v8 applyTransformBinding:v4 atIndex:a2];
      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001BE66C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 65) = a4;
  *(v4 + 24) = a3;
  return _swift_task_switch(sub_1001BE690, 0, 0);
}

uint64_t sub_1001BE690()
{
  v17 = v0;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 65);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SKLogger();
  sub_10007EDA4(v3, qword_1003F26C8);
  _StringGuts.grow(_:)(36);

  v15 = 0xD00000000000001ELL;
  v16 = 0x800000010031D240;
  *(v0 + 16) = v2;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  *(v0 + 64) = v1 & 1;
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v8 = v15;
  v7 = v16;
  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100080210(0, 0xE000000000000000, &v15);
    *(v11 + 12) = 2082;
    v12 = sub_100080210(v8, v7, &v15);

    *(v11 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_1003CBDE0 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F25D8;
  *(v0 + 32) = qword_1003F25D8;

  return _swift_task_switch(sub_1001BE944, v13, 0);
}

uint64_t sub_1001BE944()
{
  *(v0 + 40) = sub_10019D99C();

  return _swift_task_switch(sub_1001BE9B0, 0, 0);
}

uint64_t sub_1001BE9B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 65) & 1;
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1001BEA90;

  return sub_1001D5E3C(sub_1001BEBCC, v3);
}

uint64_t sub_1001BEA90()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001BEBD8()
{
  sub_100093D08();
  sub_1001C5518();
  *&v41 = v2;
  *(&v41 + 1) = v3;

  sub_100080FB4(&qword_1003D1570);
  if (swift_dynamicCast())
  {
    sub_1000F2C78(v39, &v42);
    sub_100086D24(&v42, v43);
    sub_1001C543C();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    sub_100080F0C(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10013B1E8(v39, &qword_1003D1578);
  if ((v0 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    *&v39[0] = v1;
    *(&v39[0] + 1) = v0 & 0xFFFFFFFFFFFFFFLL;
    v4 = v39;
    v5 = HIBYTE(v0) & 0xF;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v4 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    sub_100107174();
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1001C4608(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v8;
  __chkstk_darwin(*&v39[0]);
  v9 = sub_1001C4724(sub_1001C51E0);
  v11 = *(&v39[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v39[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v39[0] + 16);
      v19 = *(*&v39[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v38 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v30 = sub_1001073E4();
      v26 = sub_1001C3EA4(v30, v31, v14);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_100107174();
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v42 = v12;
      *(&v42 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v42 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v32 = sub_1001073E4();
      v16 = sub_1001C3EA4(v32, v33, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    sub_1001073E4();
    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      sub_1001C559C();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_1000BC8B4(v38, v6);
    goto LABEL_56;
  }

  sub_1001C559C();
  Data._Representation.append(contentsOf:)();
  sub_1000BC8B4(v38, v6);
LABEL_55:

LABEL_56:
  v34 = sub_1001B5400();
  sub_1000BC808(v34, v35);

  v36 = sub_1001B5400();
  sub_10008E168(v36, v37);
  sub_1001B5400();
  sub_100093CB8();
}

uint64_t sub_1001BF094(uint64_t a1)
{
  v2 = type metadata accessor for Insecure.SHA1Digest();
  v7 = v2;
  v8 = sub_1001C5198(&qword_1003D1568, &type metadata accessor for Insecure.SHA1Digest);
  v3 = sub_10009E720(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100086D24(v6, v7);
  sub_1001C543C();
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100080F0C(v6);
  (*(v4 + 8))(a1, v2);
  return sub_1001B5400();
}

Class sub_1001BF1C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10008E5A4(0, &qword_1003D0210);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1001BF25C()
{
  type metadata accessor for MessageActor();
  v0 = swift_allocObject();
  result = sub_1001BF938();
  qword_1003F26A8 = v0;
  return result;
}

uint64_t sub_1001BF29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1001BF2C8, v6, 0);
}

uint64_t sub_1001BF2C8()
{
  v31 = v0;
  v2 = v0[7];
  v1 = v0[8];
  if (v1[14])
  {
    static os_log_type_t.default.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v28 = v3;
      v29 = v4;
      v30 = v5;
      v6._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v6);
      sub_10009F134();
      sub_100080210(v29, v30, &v28);
      sub_1000B0494();
      sub_10013BBCC();
      *(v2 + 14) = sub_100080210(0xD000000000000037, 0x800000010031D5F0, &v28);
      sub_10013BF7C(&_mh_execute_header, v7, v8, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }

    sub_100098AC4();

    return v9();
  }

  else
  {
    v11 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    v1[14] = v14;
    v1[15] = v13;
    v1[16] = v11;
    v1[17] = v12;
    v0[9] = OBJC_IVAR____TtC9storekitd12MessageActor_logger;
    v15 = v14;

    v16 = v12;
    static os_log_type_t.default.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v20._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v20);
      sub_10009F134();
      sub_100080210(v29, v30, &v28);
      sub_1000B0494();
      sub_10013BBCC();
      *(v2 + 14) = sub_100080210(0x676E697472617453, 0xEE002E6B73617420, &v28);
      sub_10013BF7C(&_mh_execute_header, v21, v22, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }

    v23 = swift_task_alloc();
    v0[10] = v23;
    *v23 = v0;
    v23[1] = sub_1001BF578;
    v24 = sub_1000B06F4(v0[2]);

    return sub_10022FCA4(v24, v25, v26, v27);
  }
}

uint64_t sub_1001BF578()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  return _swift_task_switch(sub_1001BF678, v2, 0);
}

uint64_t sub_1001BF678()
{
  sub_1000EDA60();
  v19 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  static os_log_type_t.default.getter();
  sub_10019DE64();
  Logger.logObject.getter();
  sub_100107EE4();
  if (sub_10009F1F4())
  {
    sub_10008E688();
    sub_10019DB8C();
    sub_10019DAD0(4.8752e-34);
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v6._countAndFlagsBits = sub_1001073E4();
    String.append(_:)(v6);
    sub_10009F134();
    sub_100080210(v17, v18, &v16);
    sub_1000B0494();
    sub_10013BBCC();
    *(v2 + 14) = sub_100080210(0x6574656C706D6F43, 0xEF2E6B7361742064, &v16);
    sub_10013BF7C(&_mh_execute_header, v7, v8, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000AFFE8();
    sub_1000D3E6C();
  }

  v9 = *(v0 + 64);
  v10 = v9[14];
  v11 = v9[15];
  v12 = v9[16];
  v13 = v9[17];
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  sub_1001C521C(v10, v11, v12, v13);
  sub_100098AC4();

  return v14();
}

uint64_t sub_1001BF7C4()
{
  sub_1001C521C(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1001C5270(v0 + OBJC_IVAR____TtC9storekitd12MessageActor_logger, type metadata accessor for SKLogger);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001BF814()
{
  sub_1001BF7C4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MessageActor()
{
  result = qword_1003D14B0;
  if (!qword_1003D14B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BF894()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001BF938()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  if (qword_1003CBE50 != -1)
  {
    sub_1001C532C();
  }

  v1 = type metadata accessor for SKLogger();
  sub_10007EDA4(v1, qword_1003F26B0);
  sub_1001C534C();
  sub_1001C50E8();
  return v0;
}

void sub_1001BFCB0()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v8 = type metadata accessor for SKLogger();
  sub_100107C34(v8, qword_1003F26C8);
  sub_1001CA63C();
  v10 = v9;
  v12 = v11;
  if (qword_1003CBE50 != -1)
  {
    sub_1001C532C();
  }

  v13 = sub_10007EDA4(v8, qword_1003F26B0);
  sub_1000B01F4();
  _StringGuts.grow(_:)(30);

  sub_1000C446C();
  v45 = 0xD00000000000001CLL;
  v46 = v14;
  v42 = v3;
  String.append(_:)(*&v3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID]);
  v15 = v45;
  v16 = v46;

  v17 = static os_log_type_t.default.getter();

  v41 = v13;
  v18 = Logger.logObject.getter();

  v19 = os_log_type_enabled(v18, v17);
  v43 = v10;
  if (v19)
  {
    sub_10008E688();
    v40 = v1;
    v20 = sub_10019DB8C();
    v39 = v7;
    *v1 = 136446466;
    sub_10016C84C(v20);
    v21._countAndFlagsBits = v10;
    v21._object = v12;
    String.append(_:)(v21);
    sub_10009F134();
    sub_1000B0340();
    sub_1000B0494();
    sub_10013BBCC();
    v22 = sub_100080210(v15, v16, &v44);

    *(v1 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v1, 0x16u);
    swift_arrayDestroy();
    v7 = v39;
    sub_100081C28();
    v1 = v40;
    sub_100081C28();
  }

  else
  {
  }

  v23 = v42;
  v24 = *(v42 + OBJC_IVAR____TtC9storekitd6Client_isClip);

  if ((v24 & 1) == 0)
  {
    v31 = type metadata accessor for TaskPriority();
    sub_1001C55D0(v7, v32, v33, v31);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v35 = v43;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v12;
    v34[7] = v1;
    v34[8] = v35;
    v34[9] = v12;

    v36 = v23;
    v37 = v1;
    sub_1001C5454();
    sub_100165CBC();

    goto LABEL_12;
  }

  v25 = static os_log_type_t.default.getter();

  v26 = Logger.logObject.getter();

  v27 = os_log_type_enabled(v26, v25);
  v28 = v43;
  if (v27)
  {
    sub_10008E688();
    v29 = sub_10019DB8C();
    *v1 = 136446466;
    sub_10016C84C(v29);
    v30._countAndFlagsBits = v28;
    v30._object = v12;
    String.append(_:)(v30);
    sub_10009F134();
    sub_1000B0340();
    sub_1000B0494();
    sub_10013BBCC();
    *(v1 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031D580, &v44);
    _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v1, 0x16u);
    swift_arrayDestroy();
    sub_1000AFFE8();
    sub_1000D3E6C();

LABEL_12:
    sub_100093CB8();
    return;
  }

  sub_100093CB8();
}

uint64_t sub_1001C00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_1001C00EC, 0, 0);
}

uint64_t sub_1001C00EC()
{
  sub_10008BE9C();
  if (qword_1003CBE48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001C01B8;
  v2 = sub_1000B06F4(*(v0 + 16));

  return sub_1001BF29C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001C01B8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

void sub_1001C0320()
{
  sub_100093D08();
  v145 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v128 - v9;
  v11 = type metadata accessor for Client.Server(0);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  type metadata accessor for MessageServerRequest();
  sub_1000890DC();
  v136 = v16;
  v137 = v17;
  v18 = __chkstk_darwin(v16);
  v138 = v19;
  v139 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = (&v128 - v20);
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v21 = type metadata accessor for SKLogger();
  sub_100107C34(v21, qword_1003F26C8);
  sub_1001CA63C();
  v23 = v22;
  v25 = v24;
  if (v6)
  {
    v135 = v10;
    v26 = v4;
    v27 = v6;
    v28 = sub_1001A81B0(v27);
    v144 = [v28 ams_DSID];

    v142 = v26;
    if (sub_1001A79F8())
    {
      sub_10008E5A4(0, &qword_1003D0520);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

      v144 = isa;
      goto LABEL_11;
    }

    if (v144)
    {
LABEL_11:
      v132 = v23;
      v133 = v15;
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C();
      }

      v37 = sub_10007EDA4(v21, qword_1003F26B0);
      v146 = 0;
      v147 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      sub_1000C446C();
      v146 = 0xD00000000000001ELL;
      v147 = v38;
      v141 = v27;
      v39 = [v27 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 0x20726F6620;
      v44._object = 0xE500000000000000;
      String.append(_:)(v44);
      v45._countAndFlagsBits = *&v142[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v129 = *&v142[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
      v45._object = v129;
      countAndFlagsBits = v45._countAndFlagsBits;
      String.append(_:)(v45);
      v46 = v146;
      v47 = v147;

      v48 = static os_log_type_t.default.getter();

      v134 = v37;
      v49 = Logger.logObject.getter();

      v50 = os_log_type_enabled(v49, v48);
      v51 = v145;
      v140 = v25;
      v131 = v2;
      if (v50)
      {
        v52 = sub_10008E688();
        v53 = sub_10008E670();
        sub_1001C537C(v53, 4.8752e-34);
        v54 = v132;
        v55._countAndFlagsBits = v132;
        String.append(_:)(v55);
        sub_10009F134();
        v56 = sub_10018ED38();

        *(v52 + 4) = v56;
        v51 = v145;
        *(v52 + 12) = 2082;
        v57 = sub_100080210(v46, v47, v148);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v49, v48, "%{public}s%{public}s", v52, 0x16u);
        swift_arrayDestroy();
        sub_100081C28();
        sub_100081C28();
      }

      else
      {

        v54 = v132;
      }

      v66 = v133;
      v67 = v142;
      sub_1001A7E5C(v58, v59, v60, v61, v62, v63, v64, v65, v128, v129, countAndFlagsBits, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      v68 = sub_100080FB4(&qword_1003CCB50);
      v69 = sub_100081D0C(v66, 2, v68);
      v70 = v141;
      if (v69)
      {
        v71 = v140;
        if (v69 == 1)
        {
          v72 = [v51 messageInfoForClient:v67 messageType:v141];

          if (v72)
          {
            v73 = [v72 status];
            v74 = [v73 integerValue];

            v75 = [v72 type];
            v76 = v143;
            *v143 = v67;
            v76[1] = v74;
            v76[2] = v75;
            *(v76 + 24) = 0;
            v76[4] = v54;
            v76[5] = v71;
            v77 = v136;
            sub_1001C534C();
            sub_1001C50E8();
            v78 = *(v77 + 36);
            v79 = objc_opt_self();

            v80 = v67;
            v81 = [v79 sharedManager];

            *(v76 + v78) = v81;
LABEL_24:
            v87 = v67;
            v88 = type metadata accessor for TaskPriority();
            sub_1001C55D0(v135, v89, v90, v88);
            sub_1001C53D8();
            sub_1001C50E8();
            v91 = (v138 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
            v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
            v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
            v94 = swift_allocObject();
            sub_1001C53B8(v94);
            sub_1001C4254();
            v95 = v145;
            *&v72[v91] = v145;
            *&v72[v92] = v87;
            v96 = v131;
            *&v72[v93] = v131;
            v97 = &v72[(v93 + 15) & 0xFFFFFFFFFFFFFFF8];
            v98 = v140;
            *v97 = v54;
            v97[1] = v98;
            v99 = v96;
            v100 = v87;
            v101 = v95;
            sub_1001C5454();
            sub_100165CBC();

            sub_1001C5424();
            sub_1001C5270(v143, v102);
LABEL_37:
            sub_100093CB8();
            return;
          }

          v146 = 0;
          v147 = 0xE000000000000000;
          _StringGuts.grow(_:)(50);

          sub_1000C446C();
          v146 = 0xD000000000000029;
          v147 = v110;
          v111 = [v70 description];
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          v115._countAndFlagsBits = v112;
          v115._object = v114;
          String.append(_:)(v115);

          v116._countAndFlagsBits = sub_1000B7E68();
          v116._object = 0xE500000000000000;
          String.append(_:)(v116);
          v117._object = v129;
          v117._countAndFlagsBits = countAndFlagsBits;
          String.append(_:)(v117);
          v119 = v146;
          v118 = v147;
          v120 = static os_log_type_t.default.getter();

          v121 = Logger.logObject.getter();

          if (os_log_type_enabled(v121, v120))
          {
            v122 = sub_10008E688();
            v123 = sub_10008E670();
            sub_1001C537C(v123, 4.8752e-34);
            v124._countAndFlagsBits = v54;
            v124._object = v71;
            String.append(_:)(v124);
            sub_10009F134();
            sub_10018ED38();
            sub_1000B02F8();
            *(v122 + 4) = v70;
            *(v122 + 12) = 2082;
            v125 = sub_100080210(v119, v118, v148);

            *(v122 + 14) = v125;
            sub_1001C5558(&_mh_execute_header, v126, v120, "%{public}s%{public}s");
            sub_1000B0010();
            sub_100081C28();
            sub_100081C28();
          }

          else
          {
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      else
      {
        v71 = v140;

        type metadata accessor for URL();
        sub_10013B618();
        (*(v82 + 8))(v66);
      }

      v83 = v143;
      *v143 = v67;
      *(v83 + 1) = xmmword_1002F9150;
      *(v83 + 24) = 1;
      v83[4] = v54;
      v83[5] = v71;
      v84 = v136;
      sub_1001C534C();
      sub_1001C50E8();
      v85 = *(v84 + 36);
      v72 = objc_opt_self();

      v86 = v67;
      *(v83 + v85) = [v72 sharedManager];
      goto LABEL_24;
    }

    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    sub_100107C34(v21, qword_1003F26B0);
    v103 = static os_log_type_t.error.getter();

    v104 = Logger.logObject.getter();

    if (os_log_type_enabled(v104, v103))
    {
      v105 = sub_10008E688();
      v106 = sub_10008E670();
      sub_1001C537C(v106, 4.8752e-34);
      v107._countAndFlagsBits = v23;
      v107._object = v25;
      String.append(_:)(v107);
      sub_10009F134();
      sub_10018ED38();

      sub_1001C54B8();
      *(v105 + 14) = sub_100080210(v108 + 5, 0x800000010031D4E0, v148);
      sub_1001C5558(&_mh_execute_header, v109, v103, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000D3E6C();
      sub_100081C28();

      goto LABEL_36;
    }
  }

  else
  {
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    sub_100107C34(v21, qword_1003F26B0);
    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = sub_10008E688();
      v33 = sub_10008E670();
      sub_1001C537C(v33, 4.8752e-34);
      v34._countAndFlagsBits = v23;
      v34._object = v25;
      String.append(_:)(v34);
      sub_10009F134();
      sub_10018ED38();

      sub_1001C54B8();
      *(v32 + 14) = sub_100080210(v35 + 10, 0x800000010031D4B0, v148);
      sub_1001C5558(&_mh_execute_header, v36, v30, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000D3E6C();
      sub_100081C28();

      goto LABEL_36;
    }
  }

  sub_100093CB8();
}

uint64_t sub_1001C0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v13;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v8[7] = type metadata accessor for MessageServerResponse(0);
  v8[8] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70);
  v8[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[10] = v9;
  v10 = swift_task_alloc();
  v8[11] = v10;
  *v10 = v8;
  v10[1] = sub_1001C0F4C;

  return sub_1000D41E4(v9);
}

uint64_t sub_1001C0F4C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C1030()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_1001C3F00();
  if (sub_100081D0C(v1, 1, v2) == 1)
  {
    sub_10013B1E8(v0[10], &qword_1003CDC70);
    sub_10013B1E8(v0[9], &qword_1003CDC70);

    sub_100098AC4();

    return v3();
  }

  else
  {
    sub_1001C53F4();
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1001C11A8;
    sub_1000B06F4(v0[8]);

    return sub_1001C132C();
  }
}

uint64_t sub_1001C11A8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C128C()
{
  sub_1001C5364();
  sub_1001C5270(v1, v2);
  sub_10013B1E8(*(v0 + 80), &qword_1003CDC70);

  sub_100098AC4();

  return v3();
}

uint64_t sub_1001C132C()
{
  sub_10008BE9C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = swift_getObjectType();
  v8 = type metadata accessor for URL();
  v1[10] = v8;
  sub_1000B046C(v8);
  v1[11] = v9;
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for SKLogger();
  v1[13] = v10;
  sub_1000B01B0(v10);
  v1[14] = swift_task_alloc();
  v11 = type metadata accessor for MessageServerResponse.MessageItem(0);
  v1[15] = v11;
  sub_1000B01B0(v11);
  v1[16] = swift_task_alloc();
  v12 = sub_10009F0B8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1001C1448()
{
  v48 = v0;
  sub_1001C50E8();
  sub_100107174();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[16];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[4];
    v4 = *v2;
    v5 = *(v2 + 8);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v3)
    {
      v43 = *(v2 + 24);
      v44 = *(v2 + 8);
      v8 = v0[4];
LABEL_12:
      v0[17] = v8;
      v23 = qword_1003CBE58;
      v24 = v3;
      v25 = v8;
      if (v23 != -1)
      {
        sub_100081C08();
      }

      v26 = v7;
      v0[18] = sub_10007EDA4(v0[13], qword_1003F26C8);
      sub_1001CA63C();
      v28 = v27;
      v30 = v29;
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C();
      }

      v31 = v0[14];
      v32 = v0[5];
      v33 = v0[3];
      sub_10007EDA4(v0[13], qword_1003F26B0);
      sub_1001C534C();
      sub_1001C50E8();
      v34 = objc_allocWithZone(type metadata accessor for SubscriptionOfferRemoteAlert(0));
      v0[19] = sub_1001CE134(v33, v4, v44, v26, v43, v25, v32, v28, v30, 0, 0, v31);
      v35 = swift_task_alloc();
      v0[20] = v35;
      *v35 = v0;
      v35[1] = sub_1001C1878;

      return sub_1001CCDA4();
    }

    v22 = [objc_opt_self() currentConnection];
    if (v22)
    {
      v8 = v22;
      v43 = v6;
      v44 = v5;
      v3 = v0[4];
      goto LABEL_12;
    }

    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    v36 = v0[7];
    sub_100107C34(v0[13], qword_1003F26B0);
    static os_log_type_t.error.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v45 = v37;
      v46 = v38;
      v47 = v39;
      v40._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v40);
      sub_10009F134();
      sub_100080210(v46, v47, &v45);
      sub_1000B0494();
      sub_10013BBCC();
      *(v36 + 14) = sub_100080210(0xD000000000000043, 0x800000010031D370, &v45);
      sub_10013BF7C(&_mh_execute_header, v41, v42, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v2, v0[10]);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[3];
    sub_100107C34(v0[13], qword_1003F26C8);
    sub_1001CA63C();
    sub_1001C390C();
    v16 = v15;

    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    [v12 _showMessage:v18 forClient:v14 messageType:v13 useItmsUI:v16 & 1];

    (*(v11 + 8))(v9, v10);
  }

  sub_100098AC4();

  return v20();
}

uint64_t sub_1001C1878()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1001C195C()
{
  v2 = v1[7];
  static os_log_type_t.default.getter();
  sub_10019DE64();
  Logger.logObject.getter();
  sub_100107EE4();
  v3 = sub_10009F1F4();
  v4 = v1[19];
  v5 = v1[17];
  if (v3)
  {
    sub_10008E688();
    sub_10019DB8C();
    sub_10019DAD0(4.8752e-34);
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v9._countAndFlagsBits = sub_1001073E4();
    String.append(_:)(v9);
    sub_10009F134();
    sub_100080210(v15, v16, &v14);
    sub_1000B0494();
    sub_10013BBCC();
    *(v2 + 14) = sub_100080210(0xD000000000000026, 0x800000010031D3C0, &v14);
    sub_10013BF7C(&_mh_execute_header, v10, v11, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000AFFE8();
    sub_1000D3E6C();
  }

  sub_100098AC4();
  sub_10008BE10();

  __asm { BRAA            X1, X16 }
}

void sub_1001C1B60()
{
  sub_100093D08();
  v105 = v0;
  v106 = v2;
  v109 = v3;
  v112 = v4;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  v107 = &v100 - v7;
  v8 = type metadata accessor for ConsultMessageListenerTask();
  sub_1000890DC();
  v103 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  sub_1001C5588();
  v104 = v13;
  __chkstk_darwin(v14);
  v16 = (&v100 - v15);
  v17 = type metadata accessor for Client.Server(0);
  v18 = sub_1000B01B0(v17);
  __chkstk_darwin(v18);
  sub_100093D40();
  sub_10018ED2C();
  v19 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v19);
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v100 - v21;
  v23 = type metadata accessor for URL();
  sub_1000890DC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100093D40();
  v110 = v28 - v27;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v29 = type metadata accessor for SKLogger();
  sub_100107C34(v29, qword_1003F26C8);
  sub_1001CA63C();
  v108 = v30;
  v111 = v31;
  sub_1001C3F00();
  if (sub_100081D0C(v22, 1, v23) == 1)
  {
    sub_10013B1E8(v22, &unk_1003D0540);
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    sub_10007EDA4(v29, qword_1003F26B0);
    sub_1000B01F4();
    _StringGuts.grow(_:)(48);

    sub_1000C446C();
    v114 = 0xD000000000000027;
    v115 = v32;
    v113 = [v109 type];
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = sub_1000B7E68();
    v34._object = 0xE500000000000000;
    String.append(_:)(v34);
    sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v36 = v114;
    v35 = v115;
    v37 = static os_log_type_t.error.getter();
    v38 = v111;

    v39 = Logger.logObject.getter();

    if (os_log_type_enabled(v39, v37))
    {
      v40 = sub_10008E688();
      v41 = sub_10008E670();
      *v40 = 136446466;
      sub_10016C84C(v41);
      v42._countAndFlagsBits = v108;
      v42._object = v38;
      String.append(_:)(v42);
      sub_10009F134();
      sub_1000B0340();
      sub_1000B02F8();
      *(v40 + 4) = v11;
      *(v40 + 12) = 2082;
      v43 = sub_100080210(v36, v35, &v113);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v39, v37, "%{public}s%{public}s", v40, 0x16u);
      sub_1000B0010();
      sub_100081C28();
      sub_1000AFFE8();
    }

    else
    {
    }
  }

  else
  {
    v44 = (*(v25 + 32))(v110, v22, v23);
    sub_1001A7E5C(v44, v45, v46, v47, v48, v49, v50, v51, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    v52 = sub_100080FB4(&qword_1003CCB50);
    if (sub_100081D0C(v1, 2, v52))
    {
      v102 = v23;
      sub_1001C5270(v1, type metadata accessor for Client.Server);
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C();
      }

      v53 = sub_10007EDA4(v29, qword_1003F26B0);
      sub_1000B01F4();
      _StringGuts.grow(_:)(60);
      v54._object = 0x800000010031D420;
      v54._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v54);
      v113 = [v109 type];
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 0xD000000000000021;
      v56._object = 0x800000010031D440;
      String.append(_:)(v56);
      sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
      v57 = static os_log_type_t.error.getter();
      v58 = v111;

      Logger.logObject.getter();
      sub_100107EE4();

      if (os_log_type_enabled(v53, v57))
      {
        v59 = sub_10008E688();
        v60 = sub_10008E670();
        *v59 = 136446466;
        sub_10016C84C(v60);
        v61._countAndFlagsBits = v108;
        v61._object = v58;
        String.append(_:)(v61);
        sub_10009F134();
        sub_1000B0340();
        sub_1000B02F8();
        v62 = sub_1001C5490();

        *(v59 + 14) = v62;
        sub_1001C55B0(&_mh_execute_header, v63, v64, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100081C28();
        sub_100081C28();
      }

      else
      {
      }

      (*(v25 + 8))(v110, v102);
    }

    else
    {
      v65 = v25 + 8;
      v101 = *(v25 + 8);
      v101(v1, v23);
      v66 = v106;
      if (v106)
      {
        v100 = v25 + 8;
        v67 = *(v25 + 16);
        v68 = v16 + *(v8 + 32);
        v102 = v23;
        v67(v68, v110, v23);
        type metadata accessor for MessageServerResponse.MessageItem(0);
        swift_storeEnumTagMultiPayload();
        v69 = qword_1003CBE50;
        v70 = v66;
        v71 = v111;

        if (v69 != -1)
        {
          sub_1001C532C();
        }

        sub_10007EDA4(v29, qword_1003F26B0);
        sub_1001C534C();
        sub_1001C50E8();
        v72 = v112;
        v16[2] = v112;
        v16[3] = v70;
        v73 = v108;
        v16[4] = v109;
        *v16 = v73;
        v16[1] = v71;
        v74 = type metadata accessor for TaskPriority();
        sub_1001C55D0(v107, v75, v76, v74);
        v106 = v70;
        sub_1001C50E8();
        sub_1001C5500();
        sub_1001C54E8();
        v77 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        *(v78 + 24) = 0;
        sub_1001C4254();
        v80 = v105;
        v79 = v106;
        *(v78 + v71) = v105;
        *(v78 + v29) = v72;
        *(v78 + v8) = v79;
        v81 = v108;
        v82 = v109;
        *(v78 + v77) = v109;
        v83 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
        v84 = v111;
        *v83 = v81;
        v83[1] = v84;
        v85 = v72;
        v86 = v82;
        v87 = v85;
        v88 = v86;
        v89 = v80;
        sub_1001C5454();
        sub_100165CBC();

        sub_1001C5270(v16, type metadata accessor for ConsultMessageListenerTask);
        v101(v110, v102);
      }

      else
      {
        if (qword_1003CBE50 != -1)
        {
          sub_1001C532C();
        }

        v90 = sub_10007EDA4(v29, qword_1003F26B0);
        sub_1000B01F4();
        _StringGuts.grow(_:)(53);
        v91._countAndFlagsBits = 0xD000000000000033;
        v91._object = 0x800000010031D470;
        String.append(_:)(v91);
        sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
        v92 = static os_log_type_t.error.getter();
        v93 = v111;

        Logger.logObject.getter();
        sub_100107EE4();

        if (os_log_type_enabled(v90, v92))
        {
          v94 = sub_10008E688();
          v95 = sub_10008E670();
          v100 = v65;
          *v94 = 136446466;
          sub_10016C84C(v95);
          v96._countAndFlagsBits = v108;
          v96._object = v93;
          String.append(_:)(v96);
          sub_10009F134();
          sub_1000B0340();
          sub_1000B02F8();
          v97 = sub_1001C5490();

          *(v94 + 14) = v97;
          sub_1001C55B0(&_mh_execute_header, v98, v99, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

        v101(v110, v23);
      }
    }
  }

  sub_100093CB8();
}

uint64_t sub_1001C2598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v12;
  v8[7] = v13;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  sub_100080FB4(&unk_1003CCCB8);
  v8[8] = swift_task_alloc();
  v8[9] = type metadata accessor for MessageServerResponse.MessageItem(0);
  v8[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[11] = v9;
  *v9 = v8;
  v9[1] = sub_1001C26B0;

  return sub_100094C6C();
}

uint64_t sub_1001C26B0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C2794()
{
  v1 = v0[8];
  if (sub_100081D0C(v1, 1, v0[9]) == 1)
  {
    sub_10013B1E8(v1, &unk_1003CCCB8);

    sub_100098AC4();

    return v2();
  }

  else
  {
    v4 = v0[5];
    sub_1001C4254();
    [v4 type];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1001C28E8;
    sub_1000B06F4(v0[10]);

    return sub_1001C132C();
  }
}

uint64_t sub_1001C28E8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C29CC()
{
  sub_10008BE9C();
  sub_1001C5270(*(v0 + 80), type metadata accessor for MessageServerResponse.MessageItem);

  sub_100098AC4();

  return v1();
}

void sub_1001C2B7C()
{
  sub_100093D08();
  sub_1001C5518();
  v66 = v3;
  ObjectType = swift_getObjectType();
  v5 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_10018ED2C();
  type metadata accessor for MessageServerRequest();
  sub_1000890DC();
  v65 = v7;
  __chkstk_darwin(v8);
  sub_1001C5588();
  v64 = v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v56 - v12;
  if (v1 && v0)
  {
    v60 = v11;
    v61 = ObjectType;
    v14 = qword_1003CBE58;
    v15 = v1;
    v16 = v0;
    if (v14 != -1)
    {
      sub_100081C08();
    }

    v17 = type metadata accessor for SKLogger();
    sub_100107C34(v17, qword_1003F26C8);
    sub_1001CA63C();
    v62 = v18;
    v20 = v19;
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    v21 = sub_10007EDA4(v17, qword_1003F26B0);
    sub_1000B01F4();
    _StringGuts.grow(_:)(44);

    sub_1000C446C();
    v68 = 0xD000000000000023;
    v69 = v22;
    v67 = [v15 type];
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = sub_1000B7E68();
    v24._object = 0xE500000000000000;
    String.append(_:)(v24);
    v59 = v16;
    v25 = *&v16[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
    v26 = *&v16[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = v69;
    v57 = v68;

    v29 = static os_log_type_t.default.getter();

    v58 = v21;
    v30 = Logger.logObject.getter();

    v31 = os_log_type_enabled(v30, v29);
    v63 = v15;
    if (v31)
    {
      v32 = sub_10008E688();
      v56 = v2;
      v33 = v32;
      v34 = sub_10008E670();
      *v33 = 136446466;
      sub_10016C84C(v34);
      v35._countAndFlagsBits = v62;
      v35._object = v20;
      String.append(_:)(v35);
      sub_10009F134();
      v36 = v29;
      v37 = v20;
      v38 = sub_1000B0340();

      *(v33 + 4) = v38;
      v20 = v37;
      *(v33 + 12) = 2082;
      v39 = sub_100080210(v57, v28, &v67);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v36, "%{public}s%{public}s", v33, 0x16u);
      sub_1000B0010();
      v15 = v63;
      sub_100081C28();
      v2 = v56;
      sub_100081C28();
    }

    else
    {
    }

    v40 = v59;
    v59 = v40;
    v41 = [v15 status];
    v42 = [v41 integerValue];

    v43 = [v15 type];
    *v13 = v40;
    *(v13 + 1) = v42;
    *(v13 + 2) = v43;
    v13[24] = 0;
    v44 = v62;
    *(v13 + 4) = v62;
    *(v13 + 5) = v20;
    v45 = v60;
    sub_1001C534C();
    sub_1001C50E8();
    v46 = *(v45 + 36);
    v47 = objc_opt_self();

    *&v13[v46] = [v47 sharedManager];
    v48 = type metadata accessor for TaskPriority();
    sub_1001C55D0(v2, v49, v50, v48);
    sub_1001C53D8();
    sub_1001C50E8();
    sub_1001C5500();
    v65 = v13;
    sub_1001C54E8();
    v51 = swift_allocObject();
    sub_1001C53B8(v51);
    sub_1001C4254();
    v52 = v66;
    *(v47 + v2) = v66;
    *(v47 + v28) = v59;
    v53 = &v15[v47];
    *v53 = v44;
    v53[1] = v20;
    *(v47 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v61;
    v54 = v52;
    sub_1001C5454();
    sub_100165CBC();

    sub_1001C5424();
    sub_1001C5270(v65, v55);
  }

  sub_100093CB8();
}

uint64_t sub_1001C307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[7] = type metadata accessor for MessageServerResponse(0);
  v8[8] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70);
  v8[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[10] = v9;
  v10 = swift_task_alloc();
  v8[11] = v10;
  *v10 = v8;
  v10[1] = sub_1001C3198;

  return sub_1000D41E4(v9);
}

uint64_t sub_1001C3198()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C327C()
{
  v38 = v0;
  v1 = v0[9];
  v2 = v0[7];
  sub_1001C3F00();
  if (sub_100081D0C(v1, 1, v2) == 1)
  {
    sub_10013B1E8(v0[10], &qword_1003CDC70);
    v3 = sub_100107174();
    goto LABEL_3;
  }

  sub_1001C53F4();
  if (*(v1 + *(v2 + 20)))
  {
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C();
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[4];
    v10 = type metadata accessor for SKLogger();
    sub_10007EDA4(v10, qword_1003F26B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v11._object = 0x800000010031D320;
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v11);
    v0[2] = *(v7 + *(v8 + 24));
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = sub_1000B7E68();
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    String.append(_:)(*(v9 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
    v14._countAndFlagsBits = 0xD000000000000029;
    v14._object = 0x800000010031D340;
    String.append(_:)(v14);
    v15 = v37;
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    v18 = os_log_type_enabled(v17, v16);
    v19 = v0[10];
    v20 = v0[8];
    if (v18)
    {
      v33 = v36;
      v21 = v0[5];
      v22 = v0[6];
      v23 = sub_10008E688();
      v24 = sub_10008E670();
      *v23 = 136446466;
      v35 = v24;
      v36 = 91;
      v37 = 0xE100000000000000;
      v34 = v19;
      v25._countAndFlagsBits = v21;
      v25._object = v22;
      String.append(_:)(v25);
      sub_10009F134();
      v26 = sub_100080210(91, 0xE100000000000000, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = sub_100080210(v33, v15, &v35);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();

      sub_1001C5364();
      sub_1001C5270(v20, v28);
      v4 = &qword_1003CDC70;
      v3 = v34;
    }

    else
    {

      sub_1001C5364();
      sub_1001C5270(v20, v32);
      v4 = &qword_1003CDC70;
      v3 = v19;
    }

LABEL_3:
    sub_10013B1E8(v3, v4);

    sub_100098AC4();
    sub_10008BE10();

    __asm { BRAA            X1, X16 }
  }

  v29 = swift_task_alloc();
  v0[12] = v29;
  *v29 = v0;
  v29[1] = sub_1001C3690;
  sub_1000B06F4(v0[8]);
  sub_10008BE10();

  return sub_1001C132C();
}

uint64_t sub_1001C3690()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C3774()
{
  sub_10008BE9C();
  v1 = *(v0 + 80);
  sub_1001C5364();
  sub_1001C5270(v2, v3);
  sub_10013B1E8(v1, &qword_1003CDC70);

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001C3890()
{
  v0 = type metadata accessor for SKLogger();
  sub_1001C52C4(v0, qword_1003F26B0);
  v1 = sub_1001073F0();
  sub_10007EDA4(v1, v2);
  return Logger.init(subsystem:category:)();
}

void sub_1001C390C()
{
  sub_100093D08();
  v1 = v0;
  type metadata accessor for URL();
  sub_1000890DC();
  __chkstk_darwin(v2);
  sub_100093D40();
  sub_10018ED2C();
  type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_100093D40();
  v4 = sub_1001A79F8();
  if ((v4 & 1) == 0)
  {
    v5 = sub_1001A7AB4(v4);
    sub_1001881F8(v1, v5);
    swift_unknownObjectRelease();
  }

  sub_100093CB8();
}

uint64_t sub_1001C3C60()
{
  sub_100093D08();
  type metadata accessor for MessageServerRequest();
  sub_1001C5574();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = (v1 + v3);

  v7 = *(v0 + 40);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v8 + 8))(v6 + v7);

  sub_100093CB8();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_1001C3D8C()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v0 = type metadata accessor for MessageServerRequest();
  sub_1000B046C(v0);
  sub_1001C5398();
  v1 = swift_task_alloc();
  v2 = sub_1001C5480(v1);
  *v2 = v3;
  sub_1001C54D0(v2);
  sub_1000EDC30();

  return sub_1001C307C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001C3EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1001C5524(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_1001C5524(v3);
    return v4 | 8;
  }
}

uint64_t sub_1001C3F00()
{
  sub_1001C5518();
  sub_100080FB4(v1);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_1001C3F58()
{
  sub_100093D08();
  v2 = type metadata accessor for ConsultMessageListenerTask();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v2 + 32);
  type metadata accessor for MessageServerResponse.MessageItem(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for URL();
    sub_10013B618();
    (*(v6 + 8))(v5);
  }

  sub_1001C5464();
  v7 = *(v2 + 36);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v8 + 8))(v0 + v3 + v7);

  sub_100093CB8();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_1001C4100(uint64_t a1)
{
  v2 = type metadata accessor for ConsultMessageListenerTask();
  sub_1000B046C(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1001C5398();
  v17 = *(v1 + v5);
  v7 = *(v1 + v6);
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  v14 = sub_1001C5480(v13);
  *v14 = v15;
  v14[1] = sub_1000AFC98;

  return sub_1001C2598(a1, v11, v12, v1 + v4, v17, v7, v9, v10);
}

uint64_t sub_1001C4254()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_1001C42AC()
{
  sub_100093D08();
  type metadata accessor for MessageServerRequest();
  sub_1001C5574();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1001C5464();
  swift_unknownObjectRelease();
  v7 = (v1 + v6);

  v8 = *(v0 + 40);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v9 + 8))(v7 + v8);

  sub_100093CB8();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_1001C43CC()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v0 = type metadata accessor for MessageServerRequest();
  sub_1000B046C(v0);
  sub_1001C5398();
  v1 = swift_task_alloc();
  v2 = sub_1001C5480(v1);
  *v2 = v3;
  sub_1001C54D0(v2);
  sub_1000EDC30();

  return sub_1001C0E28(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001C44E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001C453C()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A7644;
  sub_1000EDC30();

  return sub_1001C00BC(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001C4608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1001C46D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1001C4C64(sub_1001C51FC, v5, a1, a2);
}

uint64_t sub_1001C4724(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10008E168(v6, v5);
      *v4 = xmmword_1002F9160;
      sub_10008E168(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1001C4CC8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10008E168(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1002F9160;
      sub_10008E168(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v16;
      v9 = sub_1001C4CC8(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_10008E168(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1001C4AF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001C4B70(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_1001C4E50(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1001C4C0CLL);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_1001C4D7C();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_1001C4C1C(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001C4C64(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1001C4CC8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001C4D7C()
{
  type metadata accessor for Insecure.SHA1();
  sub_1001C5198(&qword_1003CEB10, &type metadata accessor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001C4E50(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_1001C5198(&qword_1003CEB10, &type metadata accessor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001C4F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1001C46D0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1001C4F68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C4C1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1001C4FA8()
{
  v6[3] = type metadata accessor for StoreKitMessageAnalyticsEvent();
  v6[4] = &off_10038A5B8;
  sub_10009E720(v6);
  sub_1001C50E8();
  v0 = String._bridgeToObjectiveC()();
  sub_10015490C(v6, v5);
  v1 = swift_allocObject();
  sub_1000F2C78(v5, v1 + 16);
  v4[4] = sub_1001C5178;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001BF1C0;
  v4[3] = &unk_10038EAA8;
  v2 = _Block_copy(v4);

  AnalyticsSendEventLazy();
  _Block_release(v2);

  return sub_100080F0C(v6);
}

uint64_t sub_1001C50E8()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_1001C5140()
{
  sub_100080F0C(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C5180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C5198(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001C521C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1001C5270(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *sub_1001C52C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001C532C()
{

  return swift_once();
}

uint64_t sub_1001C537C(uint64_t result, float a2)
{
  *v2 = a2;
  *(v3 - 112) = 91;
  *(v3 - 104) = 0xE100000000000000;
  *(v3 - 96) = result;
  return result;
}

uint64_t sub_1001C53B8(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001C53F4()
{

  return sub_1001C4254();
}

unint64_t sub_1001C5490()
{
  *(v2 + 4) = v3;
  *(v2 + 12) = 2082;

  return sub_100080210(v1, v0, (v4 - 104));
}

uint64_t sub_1001C54D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

void sub_1001C553C(uint64_t a1@<X8>)
{
  v3 = (*(v1 - 112) + a1);
  v4 = *v3;
  v5 = v3[1];

  String.append(_:)(*&v4);
}

void sub_1001C5558(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

void sub_1001C55B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1001C55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100081DFC(a1, 1, 1, a4);
}

uint64_t sub_1001C55F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1001C5680(void *a1)
{
  v2 = sub_100080FB4(&qword_1003D1580);
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_100086D24(a1, a1[3]);
  sub_1001C59F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1001C57B4(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1590);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100086D24(a1, a1[3]);
  sub_1001C59F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100080F0C(a1);
  return v9;
}

uint64_t sub_1001C5908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C55F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C5934(uint64_t a1)
{
  v2 = sub_1001C59F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5970(uint64_t a1)
{
  v2 = sub_1001C59F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C59AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C57B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1001C59F4()
{
  result = qword_1003D1588;
  if (!qword_1003D1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001C5AE4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001C5B20()
{
  result = qword_1003D1598;
  if (!qword_1003D1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1598);
  }

  return result;
}

unint64_t sub_1001C5B78()
{
  result = qword_1003D15A0;
  if (!qword_1003D15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D15A0);
  }

  return result;
}

unint64_t sub_1001C5BD0()
{
  result = qword_1003D15A8;
  if (!qword_1003D15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D15A8);
  }

  return result;
}

uint64_t sub_1001C5C2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 67))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C5CD4()
{
  v1[68] = v0;
  v2 = type metadata accessor for URL();
  v1[69] = v2;
  v1[70] = *(v2 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = type metadata accessor for SKLogger();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5E68, 0, 0);
}

uint64_t sub_1001C5E68()
{
  v1 = v0[82];
  v2 = v0[69];
  sub_100081DFC(v0[83], 1, 1, v2);
  sub_100081DFC(v1, 1, 1, v2);
  if (qword_1003CC0C8 != -1)
  {
    swift_once();
  }

  v3 = v0[68];
  v4 = qword_1003F2930;
  v0[84] = qword_1003F2930;
  v5 = objc_allocWithZone(AMSLookup);
  swift_unknownObjectRetain_n();

  v6 = sub_1001C9ED0(v4);
  v0[85] = v6;
  v7 = sub_1001A8808();
  v0[86] = v7;
  [v7 setAccountMediaType:AMSAccountMediaTypeProduction];
  [v6 setClientInfo:v7];
  v8 = String._bridgeToObjectiveC()();
  [v6 setPlatform:v8];

  sub_100080FB4(&unk_1003D2720);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002ED290;
  v10 = *(v3 + 8);
  v0[87] = v10;
  v11 = *(v3 + 16);
  v0[88] = v11;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;

  v12 = sub_1001CA2F8(0, v9, v6);
  v0[89] = v12;
  v0[2] = v0;
  v0[7] = v0 + 67;
  v0[3] = sub_1001C6128;
  v13 = swift_continuation_init();
  v0[62] = sub_100080FB4(&qword_1003D15B0);
  v0[55] = _NSConcreteStackBlock;
  v0[56] = 1107296256;
  v0[57] = sub_1000D67A8;
  v0[58] = &unk_10038EC78;
  v0[59] = v13;
  [v12 resultWithCompletion:v0 + 55];

  return _swift_continuation_await(v0 + 2, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1001C6128()
{
  v1 = *(*v0 + 48);
  *(*v0 + 720) = v1;
  if (v1)
  {
    v2 = sub_1001C7190;
  }

  else
  {
    v2 = sub_1001C6238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C6238()
{
  v112 = v1;
  v2 = v1[67];
  v3 = [v2 allItems];
  sub_10008E5A4(0, &qword_1003D15B8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = &unk_1002F8000;
  if (!sub_1000AFC90(v4))
  {

    sub_1001CA458();
    if (!v65)
    {
      sub_100081C08();
    }

    v12 = v1[75];
    v13 = sub_1001CA464();
    sub_1001CA4A0(v13, qword_1003F26C8);
    sub_1001CA388(v0, (v1 + 46));
    v14 = v12;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v15 + 8))(v12);
    v16 = static os_log_type_t.error.getter();
    sub_1001CA3C0(v0);
    if (os_log_type_enabled(v14, v16))
    {
      v17 = v1[88];
      v18 = v1[87];
      v19 = v1[68];
      v20 = swift_slowAlloc();
      v111[0] = sub_1001CA470();
      *v20 = 136446722;
      *(v20 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_100080210(*(v19 + 40), *(v19 + 48), v111);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_100080210(v18, v17, v111);
      _os_log_impl(&_mh_execute_header, v14, v16, "[%{public}s][%{public}s]: Lookup for %{public}s completed without an item", v20, 0x20u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = objc_allocWithZone(NSError);
    sub_1001CA430();
    swift_willThrow();

    goto LABEL_11;
  }

  v108 = v2;
  sub_10017C8AC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 itemDictionary];
  v105 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v7 productPageURL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v32 = v1[83];
  v33 = v1[81];
  v34 = v1[69];
  sub_10013B1E8(v32, &unk_1003D0540);
  sub_100081DFC(v33, v11, 1, v34);
  sub_1000B71B8(v33, v32);
  v35 = sub_1001C74D4(v7);
  v36 = sub_1001CA1A0(v7);
  if (!v37)
  {

LABEL_24:
    v106 = 0;
    v110 = 0;
LABEL_31:
    sub_1001CA458();
    if (!v65)
    {
      sub_100081C08();
    }

    v55 = v1[73];
    v56 = sub_1001CA464();
    sub_1001CA4A0(v56, qword_1003F26C8);
    sub_1001CA388(v33, (v1 + 19));

    v57 = v55;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v58 + 8))(v55);
    v59 = static os_log_type_t.default.getter();
    sub_1001CA3C0(v33);
    if (os_log_type_enabled(v55, v59))
    {
      v60 = v1[88];
      v61 = v1[87];
      v62 = v5;
      v63 = v1[68];
      v64 = swift_slowAlloc();
      v111[0] = sub_1001CA470();
      *v64 = v62[85];
      *(v64 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v64 + 12) = 2082;
      *(v64 + 14) = sub_100080210(*(v63 + 40), *(v63 + 48), v111);
      *(v64 + 22) = 2082;
      *(v64 + 24) = sub_100080210(v61, v60, v111);
      *(v64 + 32) = 1024;
      v66 = 0;
      if (v110)
      {
        v65 = v106 == 0xD000000000000027 && v110 == 0x800000010031D6A0;
        if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v66 = 1;
        }
      }

      *(v64 + 34) = v66;

      _os_log_impl(&_mh_execute_header, v57, v59, "[%{public}s][%{public}s]: Lookup for %{public}s completed. App Store: %{BOOL}d", v64, 0x26u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    v101 = v1[89];
    v102 = v1[86];
    v103 = v1[85];
    v67 = v1[83];
    v68 = v1[82];
    v69 = v1[79];
    v70 = v1[78];
    v71 = v1[68];
    sub_10008B634(v67, v69, &unk_1003D0540);
    v72 = *(v71 + 64);
    v73 = *(v71 + 56);
    sub_10008B634(v68, v70, &unk_1003D0540);
    v74 = *(v71 + 66);
    v75 = objc_allocWithZone(SKProductLookupResponse);

    v76 = sub_1001C9F70(v105, v106, v110, v69, v72, v73, v70, v74);

    swift_unknownObjectRelease();
    sub_10013B1E8(v68, &unk_1003D0540);
    sub_10013B1E8(v67, &unk_1003D0540);

    v77 = v1[1];

    return v77(v76);
  }

  v38 = v37;
  if (v35)
  {

    sub_1001CA458();
    if (!v65)
    {
      sub_100081C08();
    }

    v39 = v1[77];
    v40 = v1[68];
    sub_1001CA4A0(v1[72], qword_1003F26C8);
    sub_1001CA388(v40, (v1 + 37));
    v41 = v39;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v42 + 8))(v39);
    v33 = static os_log_type_t.default.getter();
    sub_1001CA3C0(v40);
    if (os_log_type_enabled(v39, v33))
    {
      v43 = v1[68];
      v44 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v44 = 136446466;
      *(v44 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v44 + 12) = 2082;
      v45 = *(v43 + 40);
      v46 = *(v43 + 48);
      v5 = &unk_1002F8000;
      *(v44 + 14) = sub_100080210(v45, v46, v111);
      _os_log_impl(&_mh_execute_header, v41, v33, "[%{public}s][%{public}s]: Treating item for lookup as an article", v44, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    v110 = 0x800000010031D6A0;
    v106 = 0xD000000000000027;
    goto LABEL_31;
  }

  if ((*(v1[68] + 65) & 1) != 0 || (v78 = v36, v1[63] = v36, v1[64] = v37, v79 = swift_task_alloc(), *(v79 + 16) = v1 + 63, v33 = 0, v80 = sub_100178848(sub_1001060A4, v79, &off_100383C90), , !v80) && (v1[65] = v78, v1[66] = v38, v81 = swift_task_alloc(), *(v81 + 16) = v1 + 65, v82 = sub_100178848(sub_1001CA3F0, v81, &off_100383D00), , !v82))
  {

    v106 = sub_1001C873C(v7);
    v110 = v54;

    goto LABEL_31;
  }

  v83 = v1[80];
  v84 = v1[69];
  sub_10008B634(v1[83], v83, &unk_1003D0540);
  if (sub_100081D0C(v83, 1, v84) != 1)
  {
    v93 = v1[82];
    v94 = v1[80];
    v33 = v1[79];
    v95 = v1[71];
    v96 = v1[70];
    v97 = v1[69];
    v98 = v1[68];

    (*(v96 + 32))(v95, v94, v97);
    sub_1001C77E8(v95, *(v98 + 56), v33);

    (*(v96 + 8))(v95, v97);
    sub_10013B1E8(v93, &unk_1003D0540);
    v99 = v97;
    v5 = &unk_1002F8000;
    sub_100081DFC(v33, 0, 1, v99);
    sub_1000B71B8(v33, v93);
    goto LABEL_24;
  }

  sub_10013B1E8(v1[80], &unk_1003D0540);
  sub_1001CA458();
  if (!v65)
  {
    sub_100081C08();
  }

  v85 = v1[76];
  v86 = sub_1001CA464();
  sub_1001CA4A0(v86, qword_1003F26C8);
  sub_1001CA388(0, (v1 + 28));

  v87 = v85;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v88 + 8))(v85);
  v89 = static os_log_type_t.error.getter();
  sub_1001CA3C0(0);

  if (os_log_type_enabled(v87, v89))
  {
    v107 = v1[88];
    v104 = v1[87];
    v90 = v1[68];
    v91 = swift_slowAlloc();
    v111[0] = swift_slowAlloc();
    *v91 = 136446978;
    *(v91 + 4) = sub_1001CA40C("ProductLookupTask");
    *(v91 + 12) = 2082;
    *(v91 + 14) = sub_100080210(*(v90 + 40), *(v90 + 48), v111);
    *(v91 + 22) = 2082;
    *(v91 + 24) = sub_100080210(v104, v107, v111);
    *(v91 + 32) = 2080;
    v92 = sub_100080210(v78, v38, v111);

    *(v91 + 34) = v92;
    _os_log_impl(&_mh_execute_header, v87, v89, "[%{public}s][%{public}s]: Lookup for %{public}s (%s) is missing a URL", v91, 0x2Au);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = objc_allocWithZone(NSError);
  sub_1001CA430();
  swift_willThrow();

LABEL_11:
  sub_1001CA458();
  if (!v65)
  {
    sub_100081C08();
  }

  v22 = v1[74];
  v23 = v1[68];
  sub_1001CA4A0(v1[72], qword_1003F26C8);
  sub_1001CA388(v23, (v1 + 10));
  swift_errorRetain();
  v24 = v22;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v25 + 8))(v22);
  v26 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v23);

  if (os_log_type_enabled(v22, v26))
  {
    v109 = v1[88];
    v27 = v1[87];
    v28 = v1[68];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v111[0] = sub_1001CA470();
    *v29 = 136446978;
    *(v29 + 4) = sub_1001CA40C("ProductLookupTask");
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100080210(*(v28 + 40), *(v28 + 48), v111);
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_100080210(v27, v109, v111);
    *(v29 + 32) = 2112;
    v31 = _convertErrorToNSError(_:)();
    *(v29 + 34) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v24, v26, "[%{public}s][%{public}s]: Lookup for %{public}s completed with error: %@", v29, 0x2Au);
    sub_10013B1E8(v30, &qword_1003D18D0);
    sub_100081C28();
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v47 = v1[89];
  v48 = v1[86];
  v49 = v1[85];
  v50 = v1[83];
  v51 = v1[82];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_1001CA488(v51);
  sub_1001CA488(v50);

  v52 = v1[1];

  return v52();
}

uint64_t sub_1001C7190()
{
  v21 = v0;
  v1 = v0[90];
  swift_willThrow();
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = v0[74];
  v3 = sub_1001CA464();
  sub_1001CA4A0(v3, qword_1003F26C8);
  sub_1001CA388(v1, (v0 + 10));
  swift_errorRetain();
  v4 = v2;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v5 + 8))(v2);
  v6 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v1);

  if (os_log_type_enabled(v2, v6))
  {
    v7 = v0[88];
    v8 = v0[87];
    v9 = v0[68];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = sub_1001CA470();
    *v10 = 136446978;
    *(v10 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v20);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100080210(*(v9 + 40), *(v9 + 48), v20);
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_100080210(v8, v7, v20);
    *(v10 + 32) = 2112;
    v12 = _convertErrorToNSError(_:)();
    *(v10 + 34) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v4, v6, "[%{public}s][%{public}s]: Lookup for %{public}s completed with error: %@", v10, 0x2Au);
    sub_10013B1E8(v11, &qword_1003D18D0);
    sub_100081C28();
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  v13 = v0[89];
  v14 = v0[86];
  v15 = v0[85];
  v16 = v0[83];
  v17 = v0[82];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_1001CA488(v17);
  sub_1001CA488(v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001C74D4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SKLogger();
  __chkstk_darwin(v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001CA1A0(a1);
  if (!v8)
  {
    return 0;
  }

  if (v7 == 0x6169726F74696465 && v8 == 0xED00006D6574496CLL)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v2[7];
  v20 = 0x6C63697472417369;
  v21 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v19, v11, &v22);
  sub_10008E550(v19);
  if (v23)
  {
    if (swift_dynamicCast() & 1) != 0 && (v20)
    {
      return 1;
    }
  }

  else
  {
    sub_10013B1E8(&v22, &unk_1003CCB70);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v13 = sub_10007EDA4(v4, qword_1003F26C8);
  sub_10007EDDC(v13, v6);
  sub_1001CA388(v2, v19);
  v14 = Logger.logObject.getter();
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v6, v15);
  v16 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v2);
  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v19);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(v2[5], v2[6], v19);
    _os_log_impl(&_mh_execute_header, v14, v16, "[%{public}s][%{public}s]: Lookup item indicates editorial item, but parameters did not indicate article preference", v17, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t sub_1001C77E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v131 = type metadata accessor for SKLogger();
  v5 = __chkstk_darwin(v131);
  v128 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v104 - v7;
  v8 = sub_100080FB4(&qword_1003D15C0);
  __chkstk_darwin(v8 - 8);
  v113 = &v104 - v9;
  v114 = type metadata accessor for URLQueryItem();
  v10 = *(v114 - 8);
  v11 = __chkstk_darwin(v114);
  v112 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v104 - v13;
  v14 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v14 - 8);
  v117 = &v104 - v15;
  v16 = type metadata accessor for URL();
  v120 = *(v16 - 8);
  v121 = v16;
  v17 = __chkstk_darwin(v16);
  v119 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v115 = &v104 - v19;
  v20 = sub_100080FB4(&qword_1003CEDE0);
  v21 = __chkstk_darwin(v20 - 8);
  v118 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v125 = &v104 - v23;
  v122 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;
  v127 = &unk_1002F9450;
  v109 = v10;
  v110 = (v10 + 32);
  v107 = v10 + 8;
  v108 = (v10 + 16);

  v29 = 0;
  v116 = 0;
  v124 = _swiftEmptyArrayStorage;
  v30 = &qword_1003CE658;
  v31 = &unk_1002F94B0;
  *&v32 = 136446722;
  v126 = v32;
  v132 = a2;
  v129 = a2 + 64;
  v130 = v28;
  if (v27)
  {
    while (1)
    {
LABEL_8:
      v34 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v35 = v34 | (v29 << 6);
      v36 = v132;
      sub_1001060C4(*(v132 + 48) + 40 * v35, v146);
      sub_100080F58(*(v36 + 56) + 32 * v35, v148);
      v143[0] = v146[0];
      v143[1] = v146[1];
      v144 = v147;
      sub_10008B5D0(v148, v145);
      sub_10008B634(v143, v141, &qword_1003CE658);
      if (swift_dynamicCast())
      {
        v51 = v135[0];
        v52 = sub_100080F0C(v142);
        v105 = v51;
        *v141 = v51;
        v133 = *(&v51 + 1);
        __chkstk_darwin(v52);
        *(&v104 - 2) = v141;
        v53 = v116;
        v54 = sub_100178848(sub_1001CA3F0, (&v104 - 4), &off_100383D40);
        v116 = v53;
        if (!v54 && (*(v134 + 64) & 1) == 0)
        {
          v66 = v31;
          if (qword_1003CBE58 != -1)
          {
            swift_once();
          }

          v67 = sub_10007EDA4(v131, qword_1003F26C8);
          v68 = v106;
          sub_10007EDDC(v67, v106);
          v69 = v134;
          sub_1001CA388(v134, v141);
          v70 = v133;

          v71 = Logger.logObject.getter();
          v72 = type metadata accessor for Logger();
          (*(*(v72 - 8) + 8))(v68, v72);
          v73 = static os_log_type_t.error.getter();
          v74 = v69;
          v75 = v70;
          sub_1001CA3C0(v74);

          if (os_log_type_enabled(v71, v73))
          {
            v76 = swift_slowAlloc();
            v141[0] = swift_slowAlloc();
            *v76 = v126;
            *(v76 + 4) = sub_100080210(0xD000000000000011, v127 | 0x8000000000000000, v141);
            *(v76 + 12) = 2082;
            *(v76 + 14) = sub_100080210(*(v134 + 40), *(v134 + 48), v141);
            *(v76 + 22) = 2080;
            v77 = sub_100080210(v105, v75, v141);

            *(v76 + 24) = v77;
            _os_log_impl(&_mh_execute_header, v71, v73, "[%{public}s][%{public}s]: Ignoring query parameter for unentitled client: %s", v76, 0x20u);
            swift_arrayDestroy();
            v24 = v129;
          }

          else
          {
          }

          v30 = &qword_1003CE658;
          v31 = v66;
          sub_10013B1E8(v143, &qword_1003CE658);
          goto LABEL_16;
        }

        v55 = v113;
        sub_1001C97C4(v105, v133, v145, v113);
        v56 = v55;

        v57 = v55;
        v58 = v114;
        if (sub_100081D0C(v57, 1, v114) == 1)
        {
          v30 = &qword_1003CE658;
          sub_10013B1E8(v143, &qword_1003CE658);
          sub_10013B1E8(v56, &qword_1003D15C0);
          goto LABEL_16;
        }

        v59 = v111;
        v60 = *v110;
        (*v110)(v111, v56, v58);
        (*v108)(v112, v59, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D9D58();
          v124 = v78;
        }

        v61 = *(v124 + 2);
        if (v61 >= *(v124 + 3) >> 1)
        {
          sub_1001D9D58();
          v124 = v79;
        }

        v62 = v109;
        v63 = v114;
        (*(v109 + 8))(v111, v114);
        sub_10013B1E8(v143, &qword_1003CE658);
        v64 = v124;
        *(v124 + 2) = v61 + 1;
        v65 = v63;
        v30 = &qword_1003CE658;
        v60(&v64[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v61], v112, v65);
      }

      else
      {
        sub_100080F0C(v142);
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v37 = sub_10007EDA4(v131, qword_1003F26C8);
        v38 = v128;
        sub_10007EDDC(v37, v128);
        sub_10008B634(v143, v141, &qword_1003CE658);
        v39 = v134;
        sub_1001CA388(v134, v135);
        v40 = Logger.logObject.getter();
        v41 = type metadata accessor for Logger();
        (*(*(v41 - 8) + 8))(v38, v41);
        v42 = static os_log_type_t.error.getter();
        sub_1001CA3C0(v39);
        v133 = v40;
        if (os_log_type_enabled(v40, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v45 = v134;
          v140 = v44;
          *v43 = v126;
          *(v43 + 4) = sub_100080210(0xD000000000000011, v127 | 0x8000000000000000, &v140);
          *(v43 + 12) = 2082;
          *(v43 + 14) = sub_100080210(*(v45 + 40), *(v45 + 48), &v140);
          *(v43 + 22) = 2080;
          sub_10008B634(v141, v135, &qword_1003CE658);
          v138[0] = v135[0];
          v138[1] = v135[1];
          v139 = v136;
          sub_100080F0C(&v137);
          v46 = AnyHashable.description.getter();
          v48 = v47;
          sub_10008E550(v138);
          sub_10013B1E8(v141, &qword_1003CE658);
          v49 = sub_100080210(v46, v48, &v140);

          *(v43 + 24) = v49;
          v50 = v133;
          _os_log_impl(&_mh_execute_header, v133, v42, "[%{public}s][%{public}s]: Invalid key format: %s", v43, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10013B1E8(v141, &qword_1003CE658);
        }

        sub_10013B1E8(v143, &qword_1003CE658);
      }

      v24 = v129;
LABEL_16:
      v28 = v130;
      if (!v27)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v33 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v33);
    ++v29;
    if (v27)
    {
      v29 = v33;
      goto LABEL_8;
    }
  }

  v80 = v118;
  sub_10008B634(v125, v118, &qword_1003CEDE0);
  v81 = type metadata accessor for URLComponents();
  if (sub_100081D0C(v80, 1, v81) == 1)
  {
    sub_10013B1E8(v80, &qword_1003CEDE0);
    v82 = v122;
    v83 = v123;
    v24 = v120;
    v30 = v121;
LABEL_37:
    (*(v24 + 16))(v83, v82, v30);
    goto LABEL_39;
  }

  v84 = v117;
  URLComponents.url.getter();
  (*(*(v81 - 8) + 8))(v80, v81);
  v30 = v121;
  v85 = sub_100081D0C(v84, 1, v121);
  v82 = v122;
  v83 = v123;
  v24 = v120;
  if (v85 == 1)
  {
    sub_10013B1E8(v84, &unk_1003D0540);
    goto LABEL_37;
  }

  v86 = v115;
  URL.appending(queryItems:)();
  (*(v24 + 8))(v84, v30);
  (*(v24 + 32))(v83, v86, v30);
LABEL_39:

  if (qword_1003CBE58 == -1)
  {
    goto LABEL_40;
  }

LABEL_45:
  swift_once();
LABEL_40:
  sub_10007EDA4(v131, qword_1003F26C8);
  *&v146[0] = 0;
  *(&v146[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  strcpy(v146, "Original URL: ");
  HIBYTE(v146[0]) = -18;
  v87._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v87);

  v88._countAndFlagsBits = 0x3A736D6172617020;
  v88._object = 0xE900000000000020;
  String.append(_:)(v88);
  v89._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v89);

  v90._countAndFlagsBits = 0x4C52552077654E0ALL;
  v90._object = 0xEA0000000000203ALL;
  String.append(_:)(v90);
  v91 = v119;
  URL.absoluteURL.getter();
  sub_10017EABC();
  v92._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v92);

  (*(v24 + 8))(v91, v30);
  v93 = v146[0];
  v94 = *(v134 + 40);
  v95 = *(v134 + 48);
  v96 = static os_log_type_t.debug.getter();

  v97 = Logger.logObject.getter();

  if (os_log_type_enabled(v97, v96))
  {
    v98 = swift_slowAlloc();
    *&v143[0] = swift_slowAlloc();
    *v98 = 136446466;
    *&v146[0] = 91;
    *(&v146[0] + 1) = 0xE100000000000000;
    v99._countAndFlagsBits = v94;
    v99._object = v95;
    String.append(_:)(v99);
    v100._countAndFlagsBits = 8285;
    v100._object = 0xE200000000000000;
    String.append(_:)(v100);
    v101 = sub_100080210(*&v146[0], *(&v146[0] + 1), v143);

    *(v98 + 4) = v101;
    *(v98 + 12) = 2082;
    v102 = sub_100080210(v93, *(&v93 + 1), v143);

    *(v98 + 14) = v102;
    _os_log_impl(&_mh_execute_header, v97, v96, "%{public}s%{public}s", v98, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_10013B1E8(v125, &qword_1003CEDE0);
}