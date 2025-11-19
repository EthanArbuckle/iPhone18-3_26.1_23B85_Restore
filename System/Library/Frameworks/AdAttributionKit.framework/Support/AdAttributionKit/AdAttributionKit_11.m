uint64_t sub_1000FF01C()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FF054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  v15[0] = 0x696C702E6F666E49;
  v15[1] = 0xEA00000000007473;
  (*(v5 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10003E5C8();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_1000FF24C()
{
  v1 = [*v0 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000FF2AC()
{
  v1 = [*v0 iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  return v2;
}

uint64_t sub_1000FF2FC()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000FF364()
{
  v1 = [*v0 iTunesMetadata];
  v2 = [v1 distributorInfo];

  v3 = [v2 distributorID];
  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000FF410(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000FF57C, 0, 0);
}

uint64_t sub_1000FF57C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001B884(*(v0 + 176));
    sub_1000FFE84();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v5 = *(v0 + 144);
    (*(*(v0 + 192) + 32))(*(v0 + 216), *(v0 + 176), *(v0 + 184));
    v36 = v5[1];
    v37 = *v5;
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
    v8 = type metadata accessor for JSONEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 88) = v37;
    *(v0 + 104) = v36;
    *(v0 + 120) = v6;
    *(v0 + 128) = v7;
    sub_1000FFED8();
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 224) = v11;
    *(v0 + 232) = v12;
    v13 = *(v0 + 216);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    *&v37 = v11;
    v26 = v12;

    v27 = *(v24 + 16);
    v27(v21, v13, v23);
    v27(v22, v21, v23);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_1000438D8(v37, v26);
    URLRequest.httpBody.setter();
    v28._countAndFlagsBits = 0x2D746E65746E6F43;
    v28._object = 0xEC00000065707954;
    v29.value._object = 0x80000001001CB610;
    v29.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v29, v28);
    v30 = *(v24 + 8);
    *(v0 + 240) = v30;
    *(v0 + 248) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v21, v23);
    v31.value._countAndFlagsBits = sub_1000A2780();
    v32._countAndFlagsBits = 0x6567412D72657355;
    v32._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v31, v32);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    v33 = sub_1000A2858();
    *(v0 + 256) = v33;
    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    *v34 = v0;
    v34[1] = sub_1000FF924;
    v35 = *(v0 + 168);

    return sub_1000A2B84(v35, v33);
  }
}

uint64_t sub_1000FF924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 264);
  v9 = *v4;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = a3;
  v5[37] = v3;

  if (v3)
  {
    v7 = sub_1000FFD8C;
  }

  else
  {
    v7 = sub_1000FFA3C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000FFA3C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  (*(v3 + 8))(v2, v4);
  if ([v1 statusCode] != 200)
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000DAC0(v19, qword_10023FC88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Token exchange call has failed", v22, 2u);
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 288);
    v25 = *(v0 + 272);
    v44 = *(v0 + 240);
    v46 = *(v0 + 248);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = *(v0 + 216);
    v29 = *(v0 + 184);

    sub_1000FFE84();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    sub_10001BABC(v25, v23);
    sub_10001BABC(v27, v26);
    v44(v28, v29);
    goto LABEL_9;
  }

  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100101D44();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v11 = v5;
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 272);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  if (v11)
  {
    (v16)(*(v0 + 216), *(v0 + 184));

    sub_10001BABC(v14, v12);
    sub_10001BABC(v18, v17);
LABEL_9:
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v33 = *(v0 + 200);
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);

    v36 = *(v0 + 8);
    goto LABEL_10;
  }

  v38 = *(v0 + 200);
  v39 = *(v0 + 184);
  v45 = *(v0 + 176);
  v47 = *(v0 + 168);
  v40 = *(v0 + 136);
  v16();

  sub_10001BABC(v14, v12);
  sub_10001BABC(v18, v17);
  *v40 = *(v0 + 16);
  v41 = *(v0 + 32);
  v42 = *(v0 + 48);
  v43 = *(v0 + 64);
  *(v40 + 64) = *(v0 + 80);
  *(v40 + 32) = v42;
  *(v40 + 48) = v43;
  *(v40 + 16) = v41;

  v36 = *(v0 + 8);
LABEL_10:

  return v36();
}

uint64_t sub_1000FFD8C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);

  (*(v8 + 8))(v7, v9);
  sub_10001BABC(v4, v2);
  v3(v5, v6);
  v10 = *(v0 + 296);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 200);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_1000FFE84()
{
  result = qword_10023D350;
  if (!qword_10023D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D350);
  }

  return result;
}

unint64_t sub_1000FFED8()
{
  result = qword_10023D358;
  if (!qword_10023D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D358);
  }

  return result;
}

uint64_t sub_1000FFF2C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D370, &qword_1001C09C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100101FBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 3);
    v17 = v3[5];
    v15[15] = 2;
    sub_100102010();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100100114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_10000CDE0(&qword_10023D418, &qword_1001C0E30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100102E44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001002A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D3C8, &qword_1001C09E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001028AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v19 = v3[2];
  v16 = 0;
  sub_100102A34();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 6);
    v14 = *(v3 + 7);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v17 = *(v3 + 8);
    v16 = 2;
    sub_10000CDE0(&qword_10023D3A0, &qword_1001C09D8);
    sub_100102A88(&qword_10023D3D8, sub_100102B00);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001004EC(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D450, &qword_1001C0E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001031FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10010068C(uint64_t a1)
{
  *(v2 + 136) = a1;
  v3 = v1[1];
  *(v2 + 88) = *v1;
  *(v2 + 104) = v3;
  *(v2 + 120) = v1[2];
  v4 = swift_task_alloc();
  *(v2 + 144) = v4;
  *v4 = v2;
  v4[1] = sub_10010073C;

  return sub_1000FF410(v2 + 16);
}

uint64_t sub_10010073C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 136);
    *v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 48);
    v8 = *(v2 + 64);
    *(v5 + 64) = *(v2 + 80);
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    *(v5 + 16) = v6;
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_100100864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564692D6D657469;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E692D6E656B6F74;
    v4 = 0xEA00000000006F66;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6582128;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x6564692D6D657469;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E692D6E656B6F74;
    v8 = 0xEA00000000006F66;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6582128;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
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

Swift::Int sub_100100980()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100A2C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100100AC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100100B6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100102064(*a1);
  *a2 = result;
  return result;
}

void sub_100100B9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564692D6D657469;
  if (v2 != 1)
  {
    v5 = 0x6E692D6E656B6F74;
    v4 = 0xEA00000000006F66;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6582128;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100100C04()
{
  v1 = 0x6564692D6D657469;
  if (*v0 != 1)
  {
    v1 = 0x6E692D6E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6582128;
  }
}

unint64_t sub_100100C68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100102064(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100100C90(uint64_t a1)
{
  v2 = sub_100101FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100100CCC(uint64_t a1)
{
  v2 = sub_100101FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100100D08@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001020FC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100100D64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D617473656D6974;
  }

  else
  {
    v4 = 0x2D6465646E696C62;
  }

  if (v3)
  {
    v5 = 0xEF746E656D656C65;
  }

  else
  {
    v5 = 0xE900000000000070;
  }

  if (*a2)
  {
    v6 = 0x6D617473656D6974;
  }

  else
  {
    v6 = 0x2D6465646E696C62;
  }

  if (*a2)
  {
    v7 = 0xE900000000000070;
  }

  else
  {
    v7 = 0xEF746E656D656C65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100100E1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100EB0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100100F30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100100FCC(uint64_t *a1@<X8>)
{
  v2 = 0x2D6465646E696C62;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xEF746E656D656C65;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10010101C()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x2D6465646E696C62;
  }

  *v0;
  return result;
}

uint64_t sub_100101074(uint64_t a1)
{
  v2 = sub_100102E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001010B0(uint64_t a1)
{
  v2 = sub_100102E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001010EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100102334(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10010113C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x2D7972746E756F63;
  v4 = 0xEC00000065646F63;
  if (v2 != 1)
  {
    v3 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E692D6E656B6F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006F66;
  }

  v7 = 0x2D7972746E756F63;
  v8 = 0xEC00000065646F63;
  if (*a2 != 1)
  {
    v7 = 0x65722D726F727265;
    v8 = 0xEF7365736E6F7073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E692D6E656B6F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006F66;
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

Swift::Int sub_100101268()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100101324()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001013CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101484@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001020B0(*a1);
  *a2 = result;
  return result;
}

void sub_1001014B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F66;
  v4 = 0xEC00000065646F63;
  v5 = 0x2D7972746E756F63;
  if (v2 != 1)
  {
    v5 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E692D6E656B6F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10010152C()
{
  v1 = 0x2D7972746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x65722D726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E692D6E656B6F74;
  }
}

unint64_t sub_1001015A0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001020B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001015C8(uint64_t a1)
{
  v2 = sub_1001028AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101604(uint64_t a1)
{
  v2 = sub_1001028AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100101640@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010250C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1001016AC()
{
  v1 = 0x666F6F7270;
  if (*v0 != 1)
  {
    v1 = 0x6369666974726563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656D656C65;
  }
}

uint64_t sub_10010170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100102E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100101734(uint64_t a1)
{
  v2 = sub_1001031FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101770(uint64_t a1)
{
  v2 = sub_1001031FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001017AC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100102FB0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100101808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000CDE0(&qword_10023D458, &qword_1001C0E58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100103434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10010199C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F727265;
  }

  else
  {
    v4 = 0x737574617473;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F727265;
  }

  else
  {
    v6 = 0x737574617473;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100101A3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100101AB8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100101B20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100101BA4(uint64_t *a1@<X8>)
{
  v2 = 0x737574617473;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100101BDC()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_100101C1C@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100101C7C(uint64_t a1)
{
  v2 = sub_100103434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101CB8(uint64_t a1)
{
  v2 = sub_100103434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101CF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100103250(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100101D44()
{
  result = qword_10023D360;
  if (!qword_10023D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D360);
  }

  return result;
}

uint64_t sub_100101DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100101E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100101E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100101EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100101F14(uint64_t a1)
{
  result = sub_10005CBB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100101F3C(uint64_t a1)
{
  result = sub_1000FFE84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100101F68()
{
  result = qword_10023D368;
  if (!qword_10023D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D368);
  }

  return result;
}

unint64_t sub_100101FBC()
{
  result = qword_10023D378;
  if (!qword_10023D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D378);
  }

  return result;
}

unint64_t sub_100102010()
{
  result = qword_10023D380;
  if (!qword_10023D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D380);
  }

  return result;
}

unint64_t sub_100102064(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215B40, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001020B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215CF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001020FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D3B8, &qword_1001C09E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100101FBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v19) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v19) = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  sub_1001029E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v19;
  v15 = v20;
  result = sub_10000DB58(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_100102334(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023D448, &qword_1001C0E48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100102E44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000DB58(a1);
  return v8;
}

uint64_t sub_10010250C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D388, &qword_1001C09D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001028AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v32) = 0;
  sub_100102900();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v37;
  v31 = v38;
  v27 = v39;
  v30 = v40;
  v11 = v41;
  v29 = v42;
  LOBYTE(v37) = 1;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v11;
  v26 = v12;
  sub_10000CDE0(&qword_10023D3A0, &qword_1001C09D8);
  v46 = 2;
  sub_100102A88(&qword_10023D3A8, sub_100102954);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v23 = v47;
  v13 = v28;
  v15 = v30;
  v14 = v31;
  *&v32 = v28;
  *(&v32 + 1) = v31;
  v16 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v30;
  v17 = v29;
  *&v34 = v25;
  *(&v34 + 1) = v29;
  v18 = v26;
  *&v35 = v24;
  *(&v35 + 1) = v26;
  v36 = v47;
  sub_1001029A8(&v32, &v37);
  sub_10000DB58(a1);
  v37 = v13;
  v38 = v14;
  v39 = v16;
  v40 = v15;
  v41 = v25;
  v42 = v17;
  v43 = v24;
  v44 = v18;
  v45 = v23;
  result = sub_10005CADC(&v37);
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  *(a2 + 64) = v36;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_1001028AC()
{
  result = qword_10023D390;
  if (!qword_10023D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D390);
  }

  return result;
}

unint64_t sub_100102900()
{
  result = qword_10023D398;
  if (!qword_10023D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D398);
  }

  return result;
}

unint64_t sub_100102954()
{
  result = qword_10023D3B0;
  if (!qword_10023D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3B0);
  }

  return result;
}

unint64_t sub_1001029E0()
{
  result = qword_10023D3C0;
  if (!qword_10023D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3C0);
  }

  return result;
}

unint64_t sub_100102A34()
{
  result = qword_10023D3D0;
  if (!qword_10023D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3D0);
  }

  return result;
}

uint64_t sub_100102A88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023D3A0, &qword_1001C09D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100102B00()
{
  result = qword_10023D3E0;
  if (!qword_10023D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3E0);
  }

  return result;
}

uint64_t sub_100102B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100102BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100102C38()
{
  result = qword_10023D3E8;
  if (!qword_10023D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3E8);
  }

  return result;
}

unint64_t sub_100102C90()
{
  result = qword_10023D3F0;
  if (!qword_10023D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3F0);
  }

  return result;
}

unint64_t sub_100102CE8()
{
  result = qword_10023D3F8;
  if (!qword_10023D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D3F8);
  }

  return result;
}

unint64_t sub_100102D40()
{
  result = qword_10023D400;
  if (!qword_10023D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D400);
  }

  return result;
}

unint64_t sub_100102D98()
{
  result = qword_10023D408;
  if (!qword_10023D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D408);
  }

  return result;
}

unint64_t sub_100102DF0()
{
  result = qword_10023D410;
  if (!qword_10023D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D410);
  }

  return result;
}

unint64_t sub_100102E44()
{
  result = qword_10023D420;
  if (!qword_10023D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D420);
  }

  return result;
}

uint64_t sub_100102E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666F6F7270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461)
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

uint64_t sub_100102FB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023D428, &qword_1001C0E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1001031FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000DB58(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_1001031FC()
{
  result = qword_10023D430;
  if (!qword_10023D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D430);
  }

  return result;
}

uint64_t sub_100103250(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023D438, &qword_1001C0E40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_100103434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000DB58(a1);
  return v8;
}

unint64_t sub_100103434()
{
  result = qword_10023D440;
  if (!qword_10023D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D440);
  }

  return result;
}

unint64_t sub_1001034BC()
{
  result = qword_10023D460;
  if (!qword_10023D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D460);
  }

  return result;
}

unint64_t sub_100103514()
{
  result = qword_10023D468;
  if (!qword_10023D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D468);
  }

  return result;
}

unint64_t sub_10010356C()
{
  result = qword_10023D470;
  if (!qword_10023D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D470);
  }

  return result;
}

unint64_t sub_1001035C4()
{
  result = qword_10023D478;
  if (!qword_10023D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D478);
  }

  return result;
}

unint64_t sub_10010361C()
{
  result = qword_10023D480;
  if (!qword_10023D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D480);
  }

  return result;
}

unint64_t sub_100103674()
{
  result = qword_10023D488;
  if (!qword_10023D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D488);
  }

  return result;
}

unint64_t sub_1001036CC()
{
  result = qword_10023D490;
  if (!qword_10023D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D490);
  }

  return result;
}

unint64_t sub_100103724()
{
  result = qword_10023D498;
  if (!qword_10023D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D498);
  }

  return result;
}

unint64_t sub_10010377C()
{
  result = qword_10023D4A0;
  if (!qword_10023D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D4A0);
  }

  return result;
}

void sub_1001037D8()
{
  v1 = [v0 connection];
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = sub_100086F10(v1, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v5 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_100103A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v18[11] = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 isNullPredicateWithProperty:v11];

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v14 = [v2 connection];
  v15 = v13;
  v16 = sub_100085138(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  v17 = type metadata accessor for SnoutStoryModel();
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  v18[2] = a2;
  sub_1000349A0(sub_1001048FC, v18, v16);

  if (v3)
  {
    sub_100104890(a2);
  }
}

void sub_100103CC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = [v3 connection];
  v9 = String._bridgeToObjectiveC()();
  v14[4] = a1;
  v14[5] = a2;

  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() predicateWithProperty:v9 equalToValue:v10];
  swift_unknownObjectRelease();

  v12 = sub_100085138(v8, v11, _swiftEmptyArrayStorage, 0, 0);
  v13 = type metadata accessor for SnoutStoryModel();
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  v14[2] = a3;
  sub_1000349A0(sub_100104888, v14, v12);

  if (v4)
  {
    sub_100104890(a3);
  }
}

uint64_t sub_100103E58()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v22) = 0;
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  result = Date.timeIntervalSince1970.getter();
  v10 = v9 * 1000.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 predicateWithProperty:v11 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 isNullPredicateWithProperty:v14];

  *(inited + 48) = v15;
  v16 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v17 = [v2 connection];
  v18 = v16;
  v19 = sub_100085138(v17, v16, _swiftEmptyArrayStorage, 0, 0);
  v22 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v19);
  v21[2] = &v22;
  sub_1000349A0(sub_1001048F8, v21, v19);

  v20 = v22;
  if (v1)
  {
  }

  return v20;
}

uint64_t sub_100104190()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023D500, &qword_1001C1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v22) = 0;
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 isNotNullPredicateWithProperty:v9];

  *(inited + 40) = v10;
  result = Date.timeIntervalSince1970.getter();
  v13 = v12 * 1000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v6 predicateWithProperty:v14 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 48) = v15;
  v16 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023D508, &unk_1001C1270);
  swift_arrayDestroy();
  v17 = [v2 connection];
  v18 = v16;
  v19 = sub_100085138(v17, v16, _swiftEmptyArrayStorage, 0, 0);
  v22 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v19);
  v21[2] = &v22;
  sub_1000349A0(sub_100104880, v21, v19);

  v20 = v22;
  if (v1)
  {
  }

  return v20;
}

void *sub_100104524(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, void *, void *))
{
  v9 = [v4 connection];
  v10 = a2();
  v13[2] = &v14;
  v14 = _swiftEmptyArrayStorage;
  a4(a3, v13, v10);

  v11 = v14;
  if (v5)
  {
  }

  return v11;
}

id sub_100104688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoutDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1001046E0(__n128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[13];
  v41 = a1[12];
  v42 = v5;
  v43 = a1[14];
  v6 = a1[9];
  v37 = a1[8];
  v38 = v6;
  v7 = a1[11];
  v39 = a1[10];
  v40 = v7;
  v8 = a1[5];
  v33 = a1[4];
  v34 = v8;
  v9 = a1[7];
  v35 = a1[6];
  v36 = v9;
  v10 = a1[1];
  v29 = *a1;
  v30 = v10;
  v11 = a1[3];
  v31 = a1[2];
  v32 = v11;
  v12 = *a4;
  sub_100104824(&v29, &v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100088D10(0, *(v12 + 2) + 1, 1, v12);
    *a4 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100088D10((v14 > 1), v15 + 1, 1, v12);
    *a4 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[240 * v15];
  v17 = v29;
  v18 = v31;
  *(v16 + 3) = v30;
  *(v16 + 4) = v18;
  *(v16 + 2) = v17;
  v19 = v32;
  v20 = v33;
  v21 = v35;
  *(v16 + 7) = v34;
  *(v16 + 8) = v21;
  *(v16 + 5) = v19;
  *(v16 + 6) = v20;
  v22 = v36;
  v23 = v37;
  v24 = v39;
  *(v16 + 11) = v38;
  *(v16 + 12) = v24;
  *(v16 + 9) = v22;
  *(v16 + 10) = v23;
  result = v40;
  v26 = v41;
  v27 = v43;
  *(v16 + 15) = v42;
  *(v16 + 16) = v27;
  *(v16 + 13) = result;
  *(v16 + 14) = v26;
  return result;
}

uint64_t sub_100104890(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100104900(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10010491C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001049C4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = [objc_opt_self() predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  v4 = [v0 connection];
  v5 = v3;
  v6 = sub_10008692C(v4, v3, _swiftEmptyArrayStorage, 0, 0);
  if (([v6 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_100104D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversionTagEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100104DEC()
{
  result = qword_10023D560;
  if (!qword_10023D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D560);
  }

  return result;
}

void sub_100104E40()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100086658(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_1001050C0()
{
  result = qword_10023D5A8;
  if (!qword_10023D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5A8);
  }

  return result;
}

Swift::Int sub_100105138()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001C1570[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001051C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001C1570[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10010520C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100105470(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10010527C(void *a1)
{
  a1[1] = sub_1001052B4();
  a1[2] = sub_100105308();
  result = sub_10010535C();
  a1[3] = result;
  return result;
}

unint64_t sub_1001052B4()
{
  result = qword_10023D5F0;
  if (!qword_10023D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5F0);
  }

  return result;
}

unint64_t sub_100105308()
{
  result = qword_10023D5F8;
  if (!qword_10023D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D5F8);
  }

  return result;
}

unint64_t sub_10010535C()
{
  result = qword_10023D600;
  if (!qword_10023D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D600);
  }

  return result;
}

unint64_t sub_1001053B4()
{
  result = qword_10023D608;
  if (!qword_10023D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D608);
  }

  return result;
}

unint64_t sub_10010540C()
{
  result = qword_10023D610;
  if (!qword_10023D610)
  {
    sub_10000CCC0(&qword_10023D618, &qword_1001C1510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D610);
  }

  return result;
}

uint64_t sub_100105470(uint64_t result)
{
  if (result <= 17999)
  {
    if (!result)
    {
      return result;
    }

    if (result == 17400)
    {
      return 1;
    }
  }

  else
  {
    switch(result)
    {
      case 18400:
        return 4;
      case 18001:
        return 3;
      case 18000:
        return 2;
    }
  }

  return 5;
}

uint64_t sub_1001054D8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(188);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._object = 0x80000001001CA000;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x52454745544E4920;
  v8._object = 0xEA00000000000A2CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001001CA900;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001001CA920;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x656B636F6C5F7369;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA00000000000A2CLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x7265747369676572;
  v15._object = 0xEA00000000006465;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA620;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEA00000000000A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x80000001001CA960;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x52454745544E4920;
  v20._object = 0xEA00000000000A2CLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6D69745F6B636F6CLL;
  v21._object = 0xEE00706D61747365;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x52454745544E4920;
  v22._object = 0xEA00000000000A2CLL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x69745F6863746566;
  v23._object = 0xEF706D617473656DLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x52454745544E4920;
  v24._object = 0xEA00000000000A2CLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x63616274736F6867;
  v25._object = 0xEC00000064695F6BLL;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xA2C5458455420;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6C7074656B72616DLL;
  v27._object = 0xEE0064695F656361;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x550A2C5458455420;
  v28._object = 0xEE0028455551494ELL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x63616274736F6867;
  v29._object = 0xEC00000064695F6BLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000018;
  v30._object = 0x80000001001CB550;
  String.append(_:)(v30);
  return 0;
}

void sub_100105830(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for GhostbackEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._object = 0xEF657079745F6E6FLL;
  v9._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(37);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x4C4F432044444120;
  v17._object = 0xEC000000204E4D55;
  String.append(_:)(v17);
  v18._object = 0x80000001001CAA20;
  v18._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4E41454C4F4F4220;
  v19._object = 0xE90000000000003BLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v20);

  _StringGuts.grow(_:)(23);

  v21 = [v2 databaseTable];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x205445530ALL;
  v26._object = 0xE500000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x69737265766E6F63;
  v27._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 656424224;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x64616F6C6E776F64;
  v29._object = 0xE800000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v31);

  _StringGuts.grow(_:)(20);

  v32 = [v2 databaseTable];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x205445530ALL;
  v37._object = 0xE500000000000000;
  String.append(_:)(v37);
  v38._object = 0x80000001001CAA20;
  v38._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 807419168;
  v39._object = 0xE400000000000000;
  String.append(_:)(v39);
  v40 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v40);
}

void sub_100105C54(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v2 = type metadata accessor for GhostbackEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  _StringGuts.grow(_:)(24);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x205445530ALL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6D6E6F7269766E65;
  v18._object = 0xEB00000000746E65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 656424224;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x69746375646F7270;
  v20._object = 0xEA00000000006E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 15143;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v22);
}

void sub_100105EC0(uint64_t a1)
{
  _StringGuts.grow(_:)(37);

  v2 = [type metadata accessor for GhostbackEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x4C4F432044444120;
  v7._object = 0xEC000000204E4D55;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x69737265766E6F63;
  v8._object = 0xEE006761745F6E6FLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x52454745544E4920;
  v9._object = 0xE90000000000003BLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v10);
}

void sub_100106018(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_100105830(a2);
    }

    else
    {
      v3 = [type metadata accessor for GhostbackEntity() databaseTable];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_1001054D8(v4, v6);

      v7 = String._bridgeToObjectiveC()();

      sub_1001ACB3C(a2, v7);
    }
  }

  else if (a1 == 2)
  {
    sub_100105C54(a2);
  }

  else if (a1 == 3)
  {
    sub_100105EC0(a2);
  }
}

uint64_t sub_100106118(uint64_t a1)
{
  v2[322] = v1;
  v2[321] = a1;
  v3 = type metadata accessor for Logger();
  v2[323] = v3;
  v4 = *(v3 - 8);
  v2[324] = v4;
  v5 = *(v4 + 64) + 15;
  v2[325] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[326] = v6;
  v7 = *(v6 - 8);
  v2[327] = v7;
  v8 = *(v7 + 64) + 15;
  v2[328] = swift_task_alloc();
  v2[329] = swift_task_alloc();

  return _swift_task_switch(sub_100106244, 0, 0);
}

uint64_t sub_100106244()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v1[3];
  v0[330] = v3;
  v4 = v1[4];
  v0[331] = v4;
  v5 = v1[5];
  v0[332] = v5;
  v6 = swift_allocObject();
  v0[333] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[334] = v7;
  *v7 = v0;
  v7[1] = sub_100106358;

  return sub_10010F818(sub_10014A92C, v6, v3, v4, v5);
}

uint64_t sub_100106358(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2672);
  v6 = *v2;
  *(v4 + 2680) = a1;
  *(v4 + 2688) = v1;

  v7 = *(v3 + 2664);

  if (v1)
  {
    v8 = sub_100108838;
  }

  else
  {
    v8 = sub_100106498;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_100106498()
{
  v1 = *(v0 + 2680);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1200);
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 144 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v8 = v6[5];
        v9 = v6[6];
        v10 = v6[8];
        *(v0 + 1312) = v6[7];
        *(v0 + 1328) = v10;
        *(v0 + 1280) = v8;
        *(v0 + 1296) = v9;
        *v4 = *v6;
        v11 = v6[1];
        v12 = v6[2];
        v13 = v6[4];
        *(v0 + 1248) = v6[3];
        *(v0 + 1264) = v13;
        *(v0 + 1216) = v11;
        *(v0 + 1232) = v12;
        v3 = v7 + 1;
        if (*(v0 + 1288))
        {
          break;
        }

        v6 += 9;
        ++v7;
        if (v2 == v3)
        {
          goto LABEL_13;
        }
      }

      v45 = v5;
      sub_100070EEC(v0 + 1200, v0 + 1344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100147140(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100147140((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[18 * v15];
      v16[2] = *v4;
      v17 = *(v0 + 1216);
      v18 = *(v0 + 1232);
      v19 = *(v0 + 1264);
      v16[5] = *(v0 + 1248);
      v16[6] = v19;
      v16[3] = v17;
      v16[4] = v18;
      v20 = *(v0 + 1280);
      v21 = *(v0 + 1296);
      v22 = *(v0 + 1328);
      v16[9] = *(v0 + 1312);
      v16[10] = v22;
      v16[7] = v20;
      v16[8] = v21;
      v5 = v45;
    }

    while (v2 - 1 != v7);
  }

LABEL_13:
  *(v0 + 2696) = _swiftEmptyArrayStorage;
  v23 = *(v0 + 2680);

  v24 = _swiftEmptyArrayStorage[2];
  *(v0 + 2704) = v24;
  if (v24)
  {
    *(v0 + 2712) = 0;
    v25 = *(v0 + 2696);
    if (*(v25 + 16))
    {
      v26 = *(v25 + 48);
      v27 = *(v25 + 64);
      v28 = *(v25 + 80);
      *(v0 + 1552) = *(v25 + 96);
      v29 = *(v25 + 112);
      v30 = *(v25 + 128);
      v31 = *(v25 + 160);
      *(v0 + 1600) = *(v25 + 144);
      *(v0 + 1616) = v31;
      *(v0 + 1568) = v29;
      *(v0 + 1584) = v30;
      *(v0 + 1536) = v28;
      v32 = *(v25 + 32);
      *(v0 + 1504) = v26;
      *(v0 + 1520) = v27;
      *(v0 + 1488) = v32;
      v33 = *(v0 + 1552);
      *(v0 + 2720) = v33;
      v34 = *(v0 + 1544);
      sub_100070EEC(v0 + 1488, v0 + 1632);

      v35 = swift_task_alloc();
      *(v0 + 2728) = v35;
      *v35 = v0;
      v35[1] = sub_100106808;
      v36 = *(v0 + 2576);

      sub_1001260DC(v34, v33, 0);
    }

    else
    {
LABEL_22:
      __break(1u);
    }
  }

  else
  {
    v37 = *(v0 + 2696);
    v38 = *(v0 + 2576);
    v39 = *(v0 + 2568);

    v40 = *v38;
    *(v0 + 2744) = *v38;
    v41 = v38[1];
    *(v0 + 2752) = v41;
    v42 = v38[2];
    *(v0 + 2760) = v42;
    v43 = swift_allocObject();
    *(v0 + 2768) = v43;
    *(v43 + 16) = v39;
    v44 = swift_task_alloc();
    *(v0 + 2776) = v44;
    *v44 = v0;
    v44[1] = sub_100106B60;

    sub_10010EF70(sub_10010EF70, sub_10014A958, v43, v40, v41, v42);
  }
}

uint64_t sub_100106808()
{
  v2 = *v1;
  v3 = *(*v1 + 2728);
  v9 = *v1;
  *(*v1 + 2736) = v0;

  if (v0)
  {
    v4 = *(v2 + 2720);
    v5 = *(v2 + 2696);

    v6 = sub_100108A0C;
  }

  else
  {
    v7 = *(v2 + 2720);
    sub_10003BC20(v2 + 1488);

    v6 = sub_100106944;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100106944()
{
  v1 = *(v0 + 2712) + 1;
  if (v1 == *(v0 + 2704))
  {
    v2 = *(v0 + 2696);
    v3 = *(v0 + 2576);
    v4 = *(v0 + 2568);

    v5 = *v3;
    *(v0 + 2744) = *v3;
    v6 = v3[1];
    *(v0 + 2752) = v6;
    v7 = v3[2];
    *(v0 + 2760) = v7;
    v8 = swift_allocObject();
    *(v0 + 2768) = v8;
    *(v8 + 16) = v4;
    v9 = swift_task_alloc();
    *(v0 + 2776) = v9;
    *v9 = v0;
    v9[1] = sub_100106B60;

    sub_10010EF70(sub_10010EF70, sub_10014A958, v8, v5, v6, v7);
  }

  else
  {
    *(v0 + 2712) = v1;
    v10 = *(v0 + 2696);
    if (v1 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = (v10 + 144 * v1);
      v12 = v11[3];
      v13 = v11[4];
      v14 = v11[5];
      *(v0 + 1552) = v11[6];
      v15 = v11[7];
      v16 = v11[8];
      v17 = v11[10];
      *(v0 + 1600) = v11[9];
      *(v0 + 1616) = v17;
      *(v0 + 1568) = v15;
      *(v0 + 1584) = v16;
      *(v0 + 1536) = v14;
      v18 = v11[2];
      *(v0 + 1504) = v12;
      *(v0 + 1520) = v13;
      *(v0 + 1488) = v18;
      v19 = *(v0 + 1552);
      *(v0 + 2720) = v19;
      v20 = *(v0 + 1544);
      sub_100070EEC(v0 + 1488, v0 + 1632);

      v21 = swift_task_alloc();
      *(v0 + 2728) = v21;
      *v21 = v0;
      v21[1] = sub_100106808;
      v22 = *(v0 + 2576);

      sub_1001260DC(v20, v19, 0);
    }
  }
}

uint64_t sub_100106B60()
{
  v2 = *v1;
  v3 = *(*v1 + 2776);
  v4 = *v1;
  *(*v1 + 2784) = v0;

  v5 = *(v2 + 2768);

  if (v0)
  {
    v6 = sub_100108BE8;
  }

  else
  {
    v6 = sub_100106C94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100106C94()
{
  v1 = v0[329];
  v2 = v0[321];
  static Date.now.getter();
  v3 = swift_allocObject();
  v0[349] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[350] = v4;
  *v4 = v0;
  v4[1] = sub_100106D88;
  v5 = v0[332];
  v6 = v0[331];
  v7 = v0[330];

  return sub_10010F818(sub_10014A984, v3, v7, v6, v5);
}

uint64_t sub_100106D88(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2800);
  v6 = *v2;
  *(v4 + 2808) = a1;
  *(v4 + 2816) = v1;

  v7 = *(v3 + 2792);

  if (v1)
  {
    v8 = sub_100108DBC;
  }

  else
  {
    v8 = sub_100106EC8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100106EC8(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), void *a7, char *a8)
{
  v64 = v8;
  v9 = *(v8 + 2808);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v8 + 1776);
    v13 = v9 + 32;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = (v13 + 144 * v11);
      v16 = v11;
      while (1)
      {
        if (v16 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v17 = v15[5];
        v18 = v15[6];
        v19 = v15[8];
        *(v8 + 1888) = v15[7];
        *(v8 + 1904) = v19;
        *(v8 + 1856) = v17;
        *(v8 + 1872) = v18;
        *v12 = *v15;
        v20 = v15[1];
        v21 = v15[2];
        v22 = v15[4];
        *(v8 + 1824) = v15[3];
        *(v8 + 1840) = v22;
        *(v8 + 1792) = v20;
        *(v8 + 1808) = v21;
        v11 = v16 + 1;
        if (*(v8 + 1864))
        {
          break;
        }

        v15 += 9;
        ++v16;
        if (v10 == v11)
        {
          goto LABEL_15;
        }
      }

      v61 = v13;
      sub_100070EEC(v8 + 1776, v8 + 1920);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100147140(0, v14[2] + 1, 1);
        v14 = v63[0];
      }

      v24 = v14[2];
      v23 = v14[3];
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100147140((v23 > 1), v24 + 1, 1);
        v14 = v63[0];
      }

      v14[2] = v24 + 1;
      v25 = &v14[18 * v24];
      v25[2] = *v12;
      v26 = *(v8 + 1792);
      v27 = *(v8 + 1808);
      v28 = *(v8 + 1840);
      v25[5] = *(v8 + 1824);
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v29 = *(v8 + 1856);
      v30 = *(v8 + 1872);
      v31 = *(v8 + 1904);
      v25[9] = *(v8 + 1888);
      v25[10] = v31;
      v25[7] = v29;
      v25[8] = v30;
      v13 = v61;
    }

    while (v10 - 1 != v16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v8 + 2824) = v14;
  v32 = *(v8 + 2808);

  v33 = v14[2];
  *(v8 + 2832) = v33;
  if (v33)
  {
    *(v8 + 2840) = 0;
    v34 = *(v8 + 2824);
    if (*(v34 + 2))
    {
      v35 = *(v8 + 2632);
      *(v8 + 2064) = v34[2];
      v36 = v34[6];
      v38 = v34[3];
      v37 = v34[4];
      *(v8 + 2112) = v34[5];
      *(v8 + 2128) = v36;
      *(v8 + 2080) = v38;
      *(v8 + 2096) = v37;
      v39 = v34[10];
      v41 = v34[7];
      v40 = v34[8];
      *(v8 + 2176) = v34[9];
      *(v8 + 2192) = v39;
      *(v8 + 2144) = v41;
      *(v8 + 2160) = v40;
      v42 = swift_allocObject();
      *(v8 + 2848) = v42;
      memmove((v42 + 16), v34 + 2, 0x90uLL);
      swift_beginAccess();
      *(v42 + 67) = 1;
      sub_100070EEC(v8 + 2064, v8 + 2208);
      isUniquelyReferenced_nonNull_native = Date.timeIntervalSince1970.getter();
      v44 = v43 * 1000.0;
      if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v44 > -1.0)
        {
          if (v44 < 1.84467441e19)
          {
            v45 = *(v8 + 2656);
            v46 = *(v8 + 2648);
            v47 = *(v8 + 2640);
            *(v42 + 136) = v44;
            *(v42 + 144) = 0;
            *(v42 + 90) = 1;
            swift_endAccess();

            *(v8 + 2464) = &type metadata for GhostbackDatabaseStore;
            *(v8 + 2472) = sub_100146E28();
            *(v8 + 2440) = v47;
            *(v8 + 2448) = v46;
            *(v8 + 2456) = v45;

            v48 = v45;
            v49 = swift_task_alloc();
            *(v8 + 2856) = v49;
            v49[2] = v48;
            v49[3] = v8 + 2440;
            v49[4] = sub_10014A9B8;
            v49[5] = v42;
            v50 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
            isUniquelyReferenced_nonNull_native = swift_task_alloc();
            *(v8 + 2864) = isUniquelyReferenced_nonNull_native;
            *isUniquelyReferenced_nonNull_native = v8;
            *(isUniquelyReferenced_nonNull_native + 8) = sub_1001073F0;
            a6 = sub_10014D284;
            a5 = 0x80000001001CD620;
            a8 = &type metadata for () + 8;
            a2 = 0;
            a3 = 0;
            a4 = 0xD00000000000001BLL;
            a7 = v49;

            return withCheckedThrowingContinuation<A>(isolation:function:_:)(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8);
          }

LABEL_30:
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8);
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v51 = *(v8 + 2824);
  v52 = *(v8 + 2568);

  v53 = [objc_opt_self() sharedScheduler];
  v62[3] = &type metadata for ActivityManager;
  v62[4] = &off_100223E90;
  v54 = swift_allocObject();
  v62[0] = v54;
  v54[5] = &type metadata for BackgroundSystemTaskScheduler;
  v54[6] = &off_100217910;
  v54[2] = v53;
  v63[3] = &type metadata for LaunchServicesRecordFactory;
  v63[4] = &off_10021CBA8;
  sub_1000B8524(v62, v63, v8 + 2352);
  v55 = swift_allocObject();
  *(v8 + 2880) = v55;
  *(v55 + 16) = v52;
  v56 = swift_task_alloc();
  *(v8 + 2888) = v56;
  *v56 = v8;
  v56[1] = sub_100107B2C;
  v57 = *(v8 + 2760);
  v58 = *(v8 + 2752);
  v59 = *(v8 + 2744);

  return sub_100110084(sub_10014AA0C, v55, v59, v58, v57);
}

uint64_t sub_1001073F0()
{
  v2 = *v1;
  v3 = (*v1)[358];
  v10 = *v1;
  (*v1)[359] = v0;

  if (v0)
  {
    v4 = v2[357];
    v5 = v2[353];

    v6 = sub_100107918;
  }

  else
  {
    v7 = v2[357];
    v8 = v2[356];

    sub_10000DB58(v2 + 305);
    v6 = sub_100107534;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100107534()
{
  v43 = v0;
  v1 = *(v0 + 2848);
  v2 = *(v0 + 2840);
  v3 = *(v0 + 2832);

  if (v2 + 1 != v3)
  {
    v22 = *(v0 + 2840) + 1;
    *(v0 + 2840) = v22;
    v23 = *(v0 + 2824);
    if (v22 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = *(v0 + 2632);
      v25 = (v23 + 144 * v22);
      *(v0 + 2064) = v25[2];
      v26 = v25[6];
      v28 = v25[3];
      v27 = v25[4];
      *(v0 + 2112) = v25[5];
      *(v0 + 2128) = v26;
      *(v0 + 2080) = v28;
      *(v0 + 2096) = v27;
      v29 = v25[10];
      v31 = v25[7];
      v30 = v25[8];
      *(v0 + 2176) = v25[9];
      *(v0 + 2192) = v29;
      *(v0 + 2144) = v31;
      *(v0 + 2160) = v30;
      v32 = swift_allocObject();
      *(v0 + 2848) = v32;
      memmove((v32 + 16), v25 + 2, 0x90uLL);
      swift_beginAccess();
      *(v32 + 67) = 1;
      sub_100070EEC(v0 + 2064, v0 + 2208);
      v4 = Date.timeIntervalSince1970.getter();
      v34 = v33 * 1000.0;
      if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v34 > -1.0)
        {
          if (v34 < 1.84467441e19)
          {
            v35 = *(v0 + 2656);
            v36 = *(v0 + 2648);
            v37 = *(v0 + 2640);
            *(v32 + 136) = v34;
            *(v32 + 144) = 0;
            *(v32 + 90) = 1;
            swift_endAccess();

            *(v0 + 2464) = &type metadata for GhostbackDatabaseStore;
            *(v0 + 2472) = sub_100146E28();
            *(v0 + 2440) = v37;
            *(v0 + 2448) = v36;
            *(v0 + 2456) = v35;

            v38 = v35;
            v39 = swift_task_alloc();
            *(v0 + 2856) = v39;
            v39[2] = v38;
            v39[3] = v0 + 2440;
            v39[4] = sub_10014A9B8;
            v39[5] = v32;
            v40 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
            v4 = swift_task_alloc();
            *(v0 + 2864) = v4;
            *v4 = v0;
            v4[1] = sub_1001073F0;
            v9 = sub_10014D284;
            v8 = 0x80000001001CD620;
            v11 = &type metadata for () + 8;
            v5 = 0;
            v6 = 0;
            v7 = 0xD00000000000001BLL;
            v10 = v39;

            return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
          }

LABEL_15:
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v0 + 2824);
  v13 = *(v0 + 2568);

  v14 = [objc_opt_self() sharedScheduler];
  v41[3] = &type metadata for ActivityManager;
  v41[4] = &off_100223E90;
  v15 = swift_allocObject();
  v41[0] = v15;
  v15[5] = &type metadata for BackgroundSystemTaskScheduler;
  v15[6] = &off_100217910;
  v15[2] = v14;
  v42[3] = &type metadata for LaunchServicesRecordFactory;
  v42[4] = &off_10021CBA8;
  sub_1000B8524(v41, v42, v0 + 2352);
  v16 = swift_allocObject();
  *(v0 + 2880) = v16;
  *(v16 + 16) = v13;
  v17 = swift_task_alloc();
  *(v0 + 2888) = v17;
  *v17 = v0;
  v17[1] = sub_100107B2C;
  v18 = *(v0 + 2760);
  v19 = *(v0 + 2752);
  v20 = *(v0 + 2744);

  return sub_100110084(sub_10014AA0C, v16, v20, v19, v18);
}

uint64_t sub_100107918()
{
  v1 = v0[356];
  v2 = v0[329];
  v3 = v0[327];
  v4 = v0[326];

  sub_10000DB58(v0 + 305);
  (*(v3 + 8))(v2, v4);

  v5 = v0[359];
  v6 = v0[325];
  v7 = v0[324];
  v8 = v0[323];
  v9 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[321];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134218242;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to lock attribution for app: %llu, error: %@", v13, 0x16u);
    sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
  }

  v16 = v0[329];
  v17 = v0[328];
  v18 = v0[325];
  v19 = v0[324];
  v20 = v0[323];

  (*(v19 + 8))(v18, v20);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100107B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2888);
  v6 = *v2;
  *(v4 + 2896) = a1;
  *(v4 + 2904) = v1;

  v7 = *(v3 + 2880);

  if (v1)
  {
    v8 = sub_100108FAC;
  }

  else
  {
    v8 = sub_100107C6C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100107C6C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), void *a7, char *a8)
{
  v9 = *(v8 + 2896);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = (v9 + 32 + 296 * v11);
      v13 = v11;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        a1 = memcpy((v8 + 16), v12, 0x121uLL);
        v11 = v13 + 1;
        if (*(v8 + 224))
        {
          break;
        }

        v12 += 296;
        ++v13;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }

      sub_1000B3B24(v8 + 16, v8 + 312);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100147120(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100147120((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      a1 = memcpy(&_swiftEmptyArrayStorage[37 * v15 + 4], (v8 + 16), 0x121uLL);
    }

    while (v10 - 1 != v13);
  }

LABEL_13:
  *(v8 + 2912) = _swiftEmptyArrayStorage;
  v16 = *(v8 + 2896);

  v17 = _swiftEmptyArrayStorage[2];
  *(v8 + 2920) = v17;
  if (v17)
  {
    *(v8 + 2928) = 0;
    v18 = *(v8 + 2912);
    if (*(v18 + 16))
    {
      v19 = *(v8 + 2632);
      memcpy((v8 + 608), (v18 + 32), 0x121uLL);
      v20 = *(v8 + 800);
      v21 = *(v8 + 720);
      v22 = swift_allocObject();
      *(v8 + 2936) = v22;
      memmove((v22 + 16), (v18 + 32), 0x121uLL);
      swift_beginAccess();
      *(v22 + 187) = 1;
      sub_1000B3B24(v8 + 608, v8 + 904);
      a1 = Date.timeIntervalSince1970.getter();
      v24 = v23 * 1000.0;
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v24 > -1.0)
        {
          if (v24 < 1.84467441e19)
          {
            v25 = *(v8 + 2632);
            v26 = *(v8 + 2624);
            v27 = *(v8 + 2616);
            v28 = *(v8 + 2608);
            *(v22 + 280) = v24;
            *(v22 + 288) = 0;
            sub_1000F4FB4(v21, v20, v26);
            Date.timeIntervalSince1970.getter();
            v30 = v29;
            v31 = *(v27 + 8);
            *(v8 + 2944) = v31;
            *(v8 + 2952) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            a1 = v31(v26, v28);
            v32 = v30 * 1000.0;
            if (COERCE__INT64(fabs(v30 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v32 > -1.0)
              {
                if (v32 < 1.84467441e19)
                {
                  v33 = *(v8 + 2760);
                  v34 = *(v8 + 2752);
                  v35 = *(v8 + 2744);
                  *(v22 + 296) = v32;
                  *(v22 + 304) = 0;
                  swift_endAccess();

                  *(v8 + 2504) = &type metadata for PostbackDatabaseStore;
                  *(v8 + 2512) = sub_1001494B0();
                  *(v8 + 2480) = v35;
                  *(v8 + 2488) = v34;
                  *(v8 + 2496) = v33;

                  v36 = v33;
                  v37 = swift_task_alloc();
                  *(v8 + 2960) = v37;
                  v37[2] = v36;
                  v37[3] = v8 + 2480;
                  v37[4] = sub_10014AB00;
                  v37[5] = v22;
                  v38 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
                  a1 = swift_task_alloc();
                  *(v8 + 2968) = a1;
                  *a1 = v8;
                  a1[1] = sub_100108128;
                  a6 = sub_10014D288;
                  a5 = 0x80000001001CD620;
                  a8 = &type metadata for () + 8;
                  a2 = 0;
                  a3 = 0;
                  a4 = 0xD00000000000001BLL;
                  a7 = v37;

                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
                }

LABEL_34:
                __break(1u);
                return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v39 = *(v8 + 2912);
  v40 = *(v8 + 2632);
  v41 = *(v8 + 2624);
  v42 = *(v8 + 2616);
  v43 = *(v8 + 2608);
  v44 = *(v8 + 2600);

  sub_10014AA3C(v8 + 2352);
  (*(v42 + 8))(v40, v43);

  v45 = *(v8 + 8);

  return v45();
}

uint64_t sub_100108128()
{
  v2 = *v1;
  v3 = (*v1)[371];
  v10 = *v1;
  (*v1)[372] = v0;

  if (v0)
  {
    v4 = v2[370];
    v5 = v2[364];

    v6 = sub_100108624;
  }

  else
  {
    v7 = v2[370];
    v8 = v2[367];

    sub_10000DB58(v2 + 310);
    v6 = sub_10010826C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010826C()
{
  v1 = *(v0 + 2936);
  v2 = *(v0 + 2928);
  v3 = *(v0 + 2920);

  if (v2 + 1 != v3)
  {
    v20 = *(v0 + 2928) + 1;
    *(v0 + 2928) = v20;
    v21 = *(v0 + 2912);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = *(v0 + 2632);
      v23 = v21 + 296 * v20;
      memcpy((v0 + 608), (v23 + 32), 0x121uLL);
      v24 = *(v0 + 800);
      v25 = *(v0 + 720);
      v26 = swift_allocObject();
      *(v0 + 2936) = v26;
      memmove((v26 + 16), (v23 + 32), 0x121uLL);
      swift_beginAccess();
      *(v26 + 187) = 1;
      sub_1000B3B24(v0 + 608, v0 + 904);
      v4 = Date.timeIntervalSince1970.getter();
      v28 = v27 * 1000.0;
      if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v28 > -1.0)
        {
          if (v28 < 1.84467441e19)
          {
            v29 = *(v0 + 2632);
            v30 = *(v0 + 2624);
            v31 = *(v0 + 2616);
            v32 = *(v0 + 2608);
            *(v26 + 280) = v28;
            *(v26 + 288) = 0;
            sub_1000F4FB4(v25, v24, v30);
            Date.timeIntervalSince1970.getter();
            v34 = v33;
            v35 = *(v31 + 8);
            *(v0 + 2944) = v35;
            *(v0 + 2952) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v4 = v35(v30, v32);
            v36 = v34 * 1000.0;
            if (COERCE__INT64(fabs(v34 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v36 > -1.0)
              {
                if (v36 < 1.84467441e19)
                {
                  v37 = *(v0 + 2760);
                  v38 = *(v0 + 2752);
                  v39 = *(v0 + 2744);
                  *(v26 + 296) = v36;
                  *(v26 + 304) = 0;
                  swift_endAccess();

                  *(v0 + 2504) = &type metadata for PostbackDatabaseStore;
                  *(v0 + 2512) = sub_1001494B0();
                  *(v0 + 2480) = v39;
                  *(v0 + 2488) = v38;
                  *(v0 + 2496) = v37;

                  v40 = v37;
                  v41 = swift_task_alloc();
                  *(v0 + 2960) = v41;
                  v41[2] = v40;
                  v41[3] = v0 + 2480;
                  v41[4] = sub_10014AB00;
                  v41[5] = v26;
                  v42 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
                  v4 = swift_task_alloc();
                  *(v0 + 2968) = v4;
                  *v4 = v0;
                  v4[1] = sub_100108128;
                  v9 = sub_10014D288;
                  v8 = 0x80000001001CD620;
                  v11 = &type metadata for () + 8;
                  v5 = 0;
                  v6 = 0;
                  v7 = 0xD00000000000001BLL;
                  v10 = v41;

                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
                }

LABEL_21:
                __break(1u);
                return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v0 + 2912);
  v13 = *(v0 + 2632);
  v14 = *(v0 + 2624);
  v15 = *(v0 + 2616);
  v16 = *(v0 + 2608);
  v17 = *(v0 + 2600);

  sub_10014AA3C(v0 + 2352);
  (*(v15 + 8))(v13, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100108624()
{
  v1 = v0[369];
  v2 = v0[368];
  v3 = v0[367];
  v4 = v0[329];
  v5 = v0[326];

  sub_10000DB58(v0 + 310);
  sub_10014AA3C((v0 + 294));
  v2(v4, v5);

  v6 = v0[372];
  v7 = v0[325];
  v8 = v0[324];
  v9 = v0[323];
  v10 = Logger.postback.unsafeMutableAddressor();
  (*(v8 + 16))(v7, v10, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[321];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134218242;
    *(v14 + 4) = v13;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to lock attribution for app: %llu, error: %@", v14, 0x16u);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);
  }

  v17 = v0[329];
  v18 = v0[328];
  v19 = v0[325];
  v20 = v0[324];
  v21 = v0[323];

  (*(v20 + 8))(v19, v21);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100108838()
{
  v1 = v0[336];
  v2 = v0[325];
  v3 = v0[324];
  v4 = v0[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v0[329];
  v13 = v0[328];
  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100108A0C()
{
  sub_10003BC20((v0 + 186));
  v1 = v0[342];
  v2 = v0[325];
  v3 = v0[324];
  v4 = v0[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v0[329];
  v13 = v0[328];
  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100108BE8()
{
  v1 = v0[348];
  v2 = v0[325];
  v3 = v0[324];
  v4 = v0[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v0[329];
  v13 = v0[328];
  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100108DBC()
{
  (*(v0[327] + 8))(v0[329], v0[326]);
  v1 = v0[352];
  v2 = v0[325];
  v3 = v0[324];
  v4 = v0[323];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[321];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to lock attribution for app: %llu, error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = v0[329];
  v13 = v0[328];
  v14 = v0[325];
  v15 = v0[324];
  v16 = v0[323];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100108FAC()
{
  v1 = v0[329];
  v2 = v0[327];
  v3 = v0[326];
  sub_10014AA3C((v0 + 294));
  (*(v2 + 8))(v1, v3);
  v4 = v0[363];
  v5 = v0[325];
  v6 = v0[324];
  v7 = v0[323];
  v8 = Logger.postback.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[321];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to lock attribution for app: %llu, error: %@", v12, 0x16u);
    sub_10000DAF8(v13, &qword_100239F10, &qword_1001B4FD0);
  }

  v15 = v0[329];
  v16 = v0[328];
  v17 = v0[325];
  v18 = v0[324];
  v19 = v0[323];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001091AC(uint64_t a1)
{
  v2[209] = v1;
  v2[208] = a1;
  v3 = type metadata accessor for Logger();
  v2[210] = v3;
  v4 = *(v3 - 8);
  v2[211] = v4;
  v5 = *(v4 + 64) + 15;
  v2[212] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[213] = v6;
  v7 = *(v6 - 8);
  v2[214] = v7;
  v8 = *(v7 + 64) + 15;
  v2[215] = swift_task_alloc();

  return _swift_task_switch(sub_1001092CC, 0, 0);
}

uint64_t sub_1001092CC()
{
  v1 = *(v0 + 1664);
  v2 = *v1;
  *(v0 + 1728) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 1736) = v3;
  if (!v3)
  {
LABEL_17:
    v38 = *(v0 + 1720);
    v39 = *(v0 + 1696);

    v40 = *(v0 + 8);

    return v40();
  }

  v4 = 0;
  v78 = (v0 + 1568);
  v79 = (v0 + 1616);
  v81 = (v0 + 305);
  v73 = (v0 + 601);
  v74 = (v0 + 897);
  v77 = (v0 + 1587);
  v80 = (v0 + 1657);
  v75 = (v0 + 1594);
  v76 = (v0 + 1778);
  *(v0 + 1744) = v1[3];
  v90 = (v0 + 1600);
  *(v0 + 1600) = *(v1 + 1);
  *(v0 + 1777) = *(v1 + 32);
  v5 = v1[5];
  *(v0 + 1656) = *(v1 + 48);
  *(v0 + 1648) = v5;
  while (1)
  {
    *(v0 + 1752) = v4;
    memcpy((v0 + 904), (v2 + 264 * v4 + 32), 0x108uLL);
    v6 = *(v0 + 920);
    v7 = *(v0 + 928);
    v8 = *(v0 + 904);
    v9 = *(v0 + 912);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1096);
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1056);
    v88 = *(v0 + 1032);
    v89 = *(v0 + 1048);
    v14 = *(v0 + 1040);
    v87 = *(v0 + 1016);
    v15 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v13;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v90, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v16._countAndFlagsBits = v8;
    v16._object = v9;
    v17 = _findStringSwitchCase(cases:string:)(&off_100213B78, v16);
    if (!v17)
    {
      break;
    }

    if (v17 == 1)
    {
      v86 = v12;
      v18 = 1;
      goto LABEL_7;
    }

    v27 = 0;
LABEL_12:
    v28 = *(v0 + 1696);
    v29 = *(v0 + 1688);
    v30 = *(v0 + 1680);
    sub_10014A8BC(v90);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v31 = v27;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v32 = Logger.postback.unsafeMutableAddressor();
    (*(v29 + 16))(v28, v32, v30);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Adding postback failed: %@", v35, 0xCu);
      sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v4 = *(v0 + 1752) + 1;
    if (v4 == *(v0 + 1736))
    {
      goto LABEL_17;
    }

    v2 = *(v0 + 1728);
  }

  v86 = v12;
  v18 = 0;
LABEL_7:
  v19 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
  if (v19 > 2)
  {
    v27 = 1;
    goto LABEL_12;
  }

  v82 = v19;
  v83 = v18;
  v84 = v10;
  v20 = v7;
  v21 = *(v0 + 952);
  v22 = *(v0 + 960);
  v23 = *(v0 + 1104);
  v24 = *(v0 + 1112);

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  v26 = _findStringSwitchCase(cases:string:)(&off_100213C30, v25);
  if (v26 > 2)
  {
    v27 = 2;
    goto LABEL_12;
  }

  v42 = v26;
  v71 = v21;
  v72 = v6;
  v43 = *(v0 + 1720);
  v44 = *(v0 + 1712);
  v85 = *(v0 + 1704);
  v45 = *(v0 + 1160);
  v69 = *(v0 + 1128);
  v70 = *(v0 + 1152);
  v68 = *(v0 + 1120);
  v66 = *(v0 + 1072);
  v67 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v47 = v46;
  sub_1000BB914(v0 + 904);
  result = (*(v44 + 8))(v43, v85);
  v48 = v47 * 1000.0;
  if (COERCE__INT64(fabs(v47 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v48 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v48 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v49 = *v90;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v73;
  *(v0 + 665) = *v74;
  *(v0 + 714) = *v75;
  *(v0 + 738) = *v76;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v77;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v80;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v81;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v73;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v74;
  *(v0 + 1571) = v49;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v78;
  *(v0 + 801) = *v79;
  *(v0 + 1824) = *(v0 + 1777);
  v50 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v51 = *(v0 + 1816);
  *(v0 + 616) = v51;
  *(v0 + 320) = v51;
  *(v0 + 624) = v87;
  *(v0 + 328) = v87;
  *(v0 + 336) = v15;
  *(v0 + 632) = v15;
  *(v0 + 640) = v88;
  *(v0 + 344) = v88;
  *(v0 + 352) = v14;
  *(v0 + 648) = v14;
  *(v0 + 656) = v89;
  *(v0 + 360) = v89;
  v52 = *(v0 + 1776);
  *(v0 + 664) = v52;
  *(v0 + 368) = v52;
  *(v0 + 672) = v86;
  *(v0 + 376) = v86;
  v53 = v48;
  *(v0 + 608) = 0;
  *(v0 + 680) = v66;
  *(v0 + 688) = v67;
  *(v0 + 696) = v84;
  *(v0 + 704) = v11;
  *(v0 + 712) = v42;
  *(v0 + 713) = v68;
  *(v0 + 720) = v69;
  *(v0 + 728) = 0;
  *(v0 + 384) = v66;
  *(v0 + 392) = v67;
  v54 = *(v0 + 1808);
  *(v0 + 736) = v54;
  *(v0 + 737) = 3;
  *(v0 + 744) = v70;
  *(v0 + 752) = v45;
  *(v0 + 760) = v72;
  *(v0 + 768) = v20;
  *(v0 + 776) = v83;
  *(v0 + 777) = v82;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v84;
  *(v0 + 408) = v11;
  v55 = *(v0 + 1824);
  *(v0 + 800) = v55;
  *(v0 + 824) = v71;
  *(v0 + 832) = v22;
  *(v0 + 840) = v50;
  *(v0 + 848) = v48;
  *(v0 + 856) = 0;
  v56 = *(v0 + 1800);
  *(v0 + 864) = v56;
  *(v0 + 872) = 0;
  *(v0 + 416) = v42;
  v57 = *(v0 + 1784);
  *(v0 + 880) = v57;
  *(v0 + 888) = 0;
  *(v0 + 417) = v68;
  *(v0 + 422) = *(v0 + 1598);
  v58 = *(v0 + 1792);
  *(v0 + 896) = v58;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v75;
  *(v0 + 424) = v69;
  *(v0 + 432) = 0;
  *(v0 + 440) = v54;
  *(v0 + 441) = 3;
  v59 = *v76;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v59;
  *(v0 + 448) = v70;
  *(v0 + 456) = v45;
  *(v0 + 464) = v72;
  *(v0 + 472) = v20;
  *(v0 + 480) = v83;
  *(v0 + 481) = v82;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v60 = *v78;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v60;
  *(v0 + 504) = v55;
  *(v0 + 505) = *v79;
  v61 = *v77;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v61;
  *(v0 + 528) = v71;
  *(v0 + 536) = v22;
  *(v0 + 544) = v50;
  *(v0 + 552) = v53;
  *(v0 + 560) = 0;
  *(v0 + 568) = v56;
  v62 = *v80;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v62;
  *(v0 + 576) = 0;
  *(v0 + 584) = v57;
  v63 = *v81;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v63;
  *(v0 + 592) = 0;
  *(v0 + 600) = v58;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v64 = swift_task_alloc();
  *(v0 + 1760) = v64;
  *v64 = v0;
  v64[1] = sub_100109BC4;
  v65 = *(v0 + 1672);

  return sub_100124D0C(v0 + 608);
}

uint64_t sub_100109BC4()
{
  v1 = *(*v0 + 1760);
  v3 = *v0;

  return _swift_task_switch(sub_100109CC0, 0, 0);
}

uint64_t sub_100109CC0()
{
  if (*(*(v0 + 1664) + 33))
  {
    v1 = swift_task_alloc();
    *(v0 + 1768) = v1;
    *v1 = v0;
    v1[1] = sub_10010A630;
    v2 = *(v0 + 1672);

    return sub_100125218(v0 + 608);
  }

  sub_10003C04C(v0 + 608);
  v4 = *(v0 + 1752) + 1;
  if (v4 == *(v0 + 1736))
  {
LABEL_6:
    v5 = *(v0 + 1720);
    v6 = *(v0 + 1696);

    v7 = *(v0 + 8);

    return v7();
  }

  v76 = (v0 + 1568);
  v88 = (v0 + 1600);
  v79 = (v0 + 305);
  v71 = (v0 + 601);
  v75 = (v0 + 1587);
  v77 = (v0 + 1616);
  v78 = (v0 + 1657);
  v72 = (v0 + 897);
  v73 = (v0 + 1594);
  v74 = (v0 + 1778);
  while (1)
  {
    *(v0 + 1752) = v4;
    memcpy((v0 + 904), (*(v0 + 1728) + 264 * v4 + 32), 0x108uLL);
    v8 = *(v0 + 920);
    v9 = *(v0 + 928);
    v10 = *(v0 + 904);
    v11 = *(v0 + 912);
    v12 = *(v0 + 1088);
    v13 = *(v0 + 1096);
    v14 = *(v0 + 1064);
    v15 = *(v0 + 1056);
    v86 = *(v0 + 1032);
    v87 = *(v0 + 1048);
    v16 = *(v0 + 1040);
    v85 = *(v0 + 1016);
    v17 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v15;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v88, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v18._countAndFlagsBits = v10;
    v18._object = v11;
    v19 = _findStringSwitchCase(cases:string:)(&off_100213B78, v18);
    if (v19)
    {
      if (v19 != 1)
      {
        v30 = 0;
        goto LABEL_21;
      }

      v84 = v14;
      v20 = 1;
    }

    else
    {
      v84 = v14;
      v20 = 0;
    }

    v21 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
    if (v21 > 2)
    {
      v30 = 1;
      goto LABEL_21;
    }

    v80 = v21;
    v81 = v20;
    v22 = v12;
    v82 = v8;
    v23 = v9;
    v24 = *(v0 + 952);
    v25 = *(v0 + 1104);
    v26 = *(v0 + 1112);
    v27 = *(v0 + 960);

    v28._countAndFlagsBits = v25;
    v28._object = v26;
    v29 = _findStringSwitchCase(cases:string:)(&off_100213C30, v28);
    if (v29 <= 2)
    {
      break;
    }

    v30 = 2;
LABEL_21:
    v31 = *(v0 + 1696);
    v32 = *(v0 + 1688);
    v33 = *(v0 + 1680);
    sub_10014A8BC(v88);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v34 = v30;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v35 = Logger.postback.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v35, v33);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Adding postback failed: %@", v38, 0xCu);
      sub_10000DAF8(v39, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v4 = *(v0 + 1752) + 1;
    if (v4 == *(v0 + 1736))
    {
      goto LABEL_6;
    }
  }

  v41 = v29;
  v42 = *(v0 + 1720);
  v69 = v24;
  v70 = *(v0 + 1712);
  v83 = *(v0 + 1704);
  v43 = *(v0 + 1160);
  v67 = *(v0 + 1128);
  v68 = *(v0 + 1152);
  v66 = *(v0 + 1120);
  v64 = *(v0 + 1072);
  v65 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v45 = v44;
  sub_1000BB914(v0 + 904);
  result = (*(v70 + 8))(v42, v83);
  v46 = v45 * 1000.0;
  if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v46 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v47 = *v88;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v71;
  *(v0 + 665) = *v72;
  *(v0 + 714) = *v73;
  *(v0 + 738) = *v74;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v75;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v78;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v79;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v71;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v72;
  *(v0 + 1571) = v47;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v76;
  *(v0 + 801) = *v77;
  *(v0 + 1824) = *(v0 + 1777);
  v48 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v49 = *(v0 + 1816);
  *(v0 + 616) = v49;
  *(v0 + 320) = v49;
  *(v0 + 624) = v85;
  *(v0 + 328) = v85;
  *(v0 + 336) = v17;
  *(v0 + 632) = v17;
  *(v0 + 640) = v86;
  *(v0 + 344) = v86;
  *(v0 + 352) = v16;
  *(v0 + 648) = v16;
  *(v0 + 656) = v87;
  *(v0 + 360) = v87;
  v50 = *(v0 + 1776);
  *(v0 + 664) = v50;
  *(v0 + 368) = v50;
  *(v0 + 672) = v84;
  *(v0 + 376) = v84;
  v51 = v46;
  *(v0 + 608) = 0;
  *(v0 + 680) = v64;
  *(v0 + 688) = v65;
  *(v0 + 696) = v22;
  *(v0 + 704) = v13;
  *(v0 + 712) = v41;
  *(v0 + 713) = v66;
  *(v0 + 720) = v67;
  *(v0 + 728) = 0;
  *(v0 + 384) = v64;
  *(v0 + 392) = v65;
  v52 = *(v0 + 1808);
  *(v0 + 736) = v52;
  *(v0 + 737) = 3;
  *(v0 + 744) = v68;
  *(v0 + 752) = v43;
  *(v0 + 760) = v82;
  *(v0 + 768) = v23;
  *(v0 + 776) = v81;
  *(v0 + 777) = v80;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v22;
  *(v0 + 408) = v13;
  v53 = *(v0 + 1824);
  *(v0 + 800) = v53;
  *(v0 + 824) = v69;
  *(v0 + 832) = v27;
  *(v0 + 840) = v48;
  *(v0 + 848) = v46;
  *(v0 + 856) = 0;
  v54 = *(v0 + 1800);
  *(v0 + 864) = v54;
  *(v0 + 872) = 0;
  *(v0 + 416) = v41;
  v55 = *(v0 + 1784);
  *(v0 + 880) = v55;
  *(v0 + 888) = 0;
  *(v0 + 417) = v66;
  *(v0 + 422) = *(v0 + 1598);
  v56 = *(v0 + 1792);
  *(v0 + 896) = v56;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v73;
  *(v0 + 424) = v67;
  *(v0 + 432) = 0;
  *(v0 + 440) = v52;
  *(v0 + 441) = 3;
  v57 = *v74;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v57;
  *(v0 + 448) = v68;
  *(v0 + 456) = v43;
  *(v0 + 464) = v82;
  *(v0 + 472) = v23;
  *(v0 + 480) = v81;
  *(v0 + 481) = v80;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v58 = *v76;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v58;
  *(v0 + 504) = v53;
  *(v0 + 505) = *v77;
  v59 = *v75;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v59;
  *(v0 + 528) = v69;
  *(v0 + 536) = v27;
  *(v0 + 544) = v48;
  *(v0 + 552) = v51;
  *(v0 + 560) = 0;
  *(v0 + 568) = v54;
  v60 = *v78;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v60;
  *(v0 + 576) = 0;
  *(v0 + 584) = v55;
  v61 = *v79;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v61;
  *(v0 + 592) = 0;
  *(v0 + 600) = v56;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v62 = swift_task_alloc();
  *(v0 + 1760) = v62;
  *v62 = v0;
  v62[1] = sub_100109BC4;
  v63 = *(v0 + 1672);

  return sub_100124D0C(v0 + 608);
}

uint64_t sub_10010A630()
{
  v1 = *v0;
  v2 = *(*v0 + 1768);
  v4 = *v0;

  sub_10003C04C(v1 + 608);

  return _swift_task_switch(sub_10010A734, 0, 0);
}

uint64_t sub_10010A734()
{
  v1 = *(v0 + 1752) + 1;
  if (v1 == *(v0 + 1736))
  {
LABEL_2:
    v2 = *(v0 + 1720);
    v3 = *(v0 + 1696);

    v4 = *(v0 + 8);

    return v4();
  }

  v74 = (v0 + 1568);
  v86 = (v0 + 1600);
  v77 = (v0 + 305);
  v69 = (v0 + 601);
  v73 = (v0 + 1587);
  v75 = (v0 + 1616);
  v76 = (v0 + 1657);
  v70 = (v0 + 897);
  v71 = (v0 + 1594);
  v72 = (v0 + 1778);
  while (1)
  {
    *(v0 + 1752) = v1;
    memcpy((v0 + 904), (*(v0 + 1728) + 264 * v1 + 32), 0x108uLL);
    v6 = *(v0 + 920);
    v7 = *(v0 + 928);
    v8 = *(v0 + 904);
    v9 = *(v0 + 912);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1096);
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1056);
    v84 = *(v0 + 1032);
    v85 = *(v0 + 1048);
    v14 = *(v0 + 1040);
    v83 = *(v0 + 1016);
    v15 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v13;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v86, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v16._countAndFlagsBits = v8;
    v16._object = v9;
    v17 = _findStringSwitchCase(cases:string:)(&off_100213B78, v16);
    if (v17)
    {
      if (v17 != 1)
      {
        v28 = 0;
        goto LABEL_17;
      }

      v82 = v12;
      v18 = 1;
    }

    else
    {
      v82 = v12;
      v18 = 0;
    }

    v19 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
    if (v19 > 2)
    {
      v28 = 1;
      goto LABEL_17;
    }

    v78 = v19;
    v79 = v18;
    v20 = v10;
    v80 = v6;
    v21 = v7;
    v22 = *(v0 + 952);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1112);
    v25 = *(v0 + 960);

    v26._countAndFlagsBits = v23;
    v26._object = v24;
    v27 = _findStringSwitchCase(cases:string:)(&off_100213C30, v26);
    if (v27 <= 2)
    {
      break;
    }

    v28 = 2;
LABEL_17:
    v29 = *(v0 + 1696);
    v30 = *(v0 + 1688);
    v31 = *(v0 + 1680);
    sub_10014A8BC(v86);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v32 = v28;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v33 = Logger.postback.unsafeMutableAddressor();
    (*(v30 + 16))(v29, v33, v31);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Adding postback failed: %@", v36, 0xCu);
      sub_10000DAF8(v37, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v1 = *(v0 + 1752) + 1;
    if (v1 == *(v0 + 1736))
    {
      goto LABEL_2;
    }
  }

  v39 = v27;
  v40 = *(v0 + 1720);
  v67 = v22;
  v68 = *(v0 + 1712);
  v81 = *(v0 + 1704);
  v41 = *(v0 + 1160);
  v65 = *(v0 + 1128);
  v66 = *(v0 + 1152);
  v64 = *(v0 + 1120);
  v62 = *(v0 + 1072);
  v63 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v43 = v42;
  sub_1000BB914(v0 + 904);
  result = (*(v68 + 8))(v40, v81);
  v44 = v43 * 1000.0;
  if (COERCE__INT64(fabs(v43 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v44 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v44 >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v45 = *v86;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v69;
  *(v0 + 665) = *v70;
  *(v0 + 714) = *v71;
  *(v0 + 738) = *v72;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v73;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v76;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v77;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v69;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v70;
  *(v0 + 1571) = v45;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v74;
  *(v0 + 801) = *v75;
  *(v0 + 1824) = *(v0 + 1777);
  v46 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v47 = *(v0 + 1816);
  *(v0 + 616) = v47;
  *(v0 + 320) = v47;
  *(v0 + 624) = v83;
  *(v0 + 328) = v83;
  *(v0 + 336) = v15;
  *(v0 + 632) = v15;
  *(v0 + 640) = v84;
  *(v0 + 344) = v84;
  *(v0 + 352) = v14;
  *(v0 + 648) = v14;
  *(v0 + 656) = v85;
  *(v0 + 360) = v85;
  v48 = *(v0 + 1776);
  *(v0 + 664) = v48;
  *(v0 + 368) = v48;
  *(v0 + 672) = v82;
  *(v0 + 376) = v82;
  v49 = v44;
  *(v0 + 608) = 0;
  *(v0 + 680) = v62;
  *(v0 + 688) = v63;
  *(v0 + 696) = v20;
  *(v0 + 704) = v11;
  *(v0 + 712) = v39;
  *(v0 + 713) = v64;
  *(v0 + 720) = v65;
  *(v0 + 728) = 0;
  *(v0 + 384) = v62;
  *(v0 + 392) = v63;
  v50 = *(v0 + 1808);
  *(v0 + 736) = v50;
  *(v0 + 737) = 3;
  *(v0 + 744) = v66;
  *(v0 + 752) = v41;
  *(v0 + 760) = v80;
  *(v0 + 768) = v21;
  *(v0 + 776) = v79;
  *(v0 + 777) = v78;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v20;
  *(v0 + 408) = v11;
  v51 = *(v0 + 1824);
  *(v0 + 800) = v51;
  *(v0 + 824) = v67;
  *(v0 + 832) = v25;
  *(v0 + 840) = v46;
  *(v0 + 848) = v44;
  *(v0 + 856) = 0;
  v52 = *(v0 + 1800);
  *(v0 + 864) = v52;
  *(v0 + 872) = 0;
  *(v0 + 416) = v39;
  v53 = *(v0 + 1784);
  *(v0 + 880) = v53;
  *(v0 + 888) = 0;
  *(v0 + 417) = v64;
  *(v0 + 422) = *(v0 + 1598);
  v54 = *(v0 + 1792);
  *(v0 + 896) = v54;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v71;
  *(v0 + 424) = v65;
  *(v0 + 432) = 0;
  *(v0 + 440) = v50;
  *(v0 + 441) = 3;
  v55 = *v72;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v55;
  *(v0 + 448) = v66;
  *(v0 + 456) = v41;
  *(v0 + 464) = v80;
  *(v0 + 472) = v21;
  *(v0 + 480) = v79;
  *(v0 + 481) = v78;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v56 = *v74;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v56;
  *(v0 + 504) = v51;
  *(v0 + 505) = *v75;
  v57 = *v73;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v57;
  *(v0 + 528) = v67;
  *(v0 + 536) = v25;
  *(v0 + 544) = v46;
  *(v0 + 552) = v49;
  *(v0 + 560) = 0;
  *(v0 + 568) = v52;
  v58 = *v76;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v58;
  *(v0 + 576) = 0;
  *(v0 + 584) = v53;
  v59 = *v77;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v59;
  *(v0 + 592) = 0;
  *(v0 + 600) = v54;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v60 = swift_task_alloc();
  *(v0 + 1760) = v60;
  *v60 = v0;
  v60[1] = sub_100109BC4;
  v61 = *(v0 + 1672);

  return sub_100124D0C(v0 + 608);
}

uint64_t sub_10010B00C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10010B0E4, 0, 0);
}

uint64_t sub_10010B0E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v2;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10010B1F4;

  return sub_100110084(sub_10014A210, v6, v3, v4, v5);
}

uint64_t sub_10010B1F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v6 = sub_10010B808;
  }

  else
  {
    v6 = sub_10010B328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010B328()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = Logger.postback.unsafeMutableAddressor();
  v0[13] = v6;
  v7 = *(v4 + 16);
  v0[14] = v7;
  v0[15] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[4];
  v14 = v0[5];
  if (v10)
  {
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 134218242;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2080;
    sub_10014A2E0();
    v18 = Set.description.getter();
    v20 = sub_10017AD04(v18, v19, &v30);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Found %ld postbacks eligible for transmission for environments: %s", v16, 0x16u);
    sub_10000DB58(v17);
  }

  else
  {
    v21 = v0[11];
  }

  v22 = *(v14 + 8);
  v22(v12, v13);
  v0[16] = v22;
  v23 = v0[11];
  v24 = v0[3];
  v25 = swift_task_alloc();
  v0[17] = v25;
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_10010B5B0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10010B5B0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_10010B6E4, 0, 0);
}

uint64_t sub_10010B6E4()
{
  v1 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 56), *(v0 + 104), *(v0 + 32));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Postback transmission completed", v6, 2u);
  }

  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  (*(v0 + 128))(*(v0 + 56), *(v0 + 32));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10010B808()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Transmit eligible postbacks failure: %@", v10, 0xCu);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v13 = v0[12];
  }

  v15 = v0[7];
  v14 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10010B9C4()
{
  v1[22] = v0;
  v2 = type metadata accessor for Logger();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_10010BA90, 0, 0);
}

uint64_t sub_10010BA90()
{
  v1 = v0[22];
  v2 = v1[3];
  v0[27] = v2;
  v3 = v1[4];
  v0[28] = v3;
  v4 = v1[5];
  v0[29] = v4;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_10010BB78;

  return sub_10010F818(sub_1001260A4, 0, v2, v3, v4);
}

uint64_t sub_10010BB78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_10010DF94;
  }

  else
  {
    v5 = sub_10010BC8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10010BC8C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100146DA4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage[2];
    v4 = 2 * v3;
    v5 = (v1 + 96);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = _swiftEmptyArrayStorage[3];

      if (v3 >= v8 >> 1)
      {
        sub_100146DA4((v8 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      v9 = &_swiftEmptyArrayStorage[v4];
      v9[4] = v7;
      v9[5] = v6;
      v4 += 2;
      v5 += 18;
      ++v3;
      --v2;
    }

    while (v2);
  }

  v10 = v0[31];

  v0[33] = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  v0[34] = v11;
  if (v11)
  {
    v0[35] = 0;
    v12 = v0[28];
    v13 = v0[29];
    v14 = v0[27];
    v15 = _swiftEmptyArrayStorage[4];
    v0[36] = v15;
    v16 = _swiftEmptyArrayStorage[5];
    v0[37] = v16;
    v17 = swift_allocObject();
    v0[38] = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v14;
    v0[3] = v12;
    v0[4] = v13;

    v18 = v13;
    v19 = swift_task_alloc();
    v0[39] = v19;
    v19[2] = v18;
    v19[3] = v0 + 2;
    v19[4] = sub_100146DFC;
    v19[5] = v17;
    v20 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v21 = swift_task_alloc();
    v0[40] = v21;
    *v21 = v0;
    v21[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v19, &type metadata for () + 8);
  }

  else
  {

    v22 = v0[22];
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[2];
    v26 = swift_task_alloc();
    v0[54] = v26;
    *v26 = v0;
    v26[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v24, v23, v25);
  }
}

uint64_t sub_10010BFAC()
{
  v2 = *v1;
  v3 = (*v1)[40];
  v8 = *v1;
  (*v1)[41] = v0;

  if (v0)
  {
    v4 = sub_10010C378;
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];

    sub_10000DB58(v2 + 2);

    v4 = sub_10010C0D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010C0D8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[6];
  v4 = v3[7];
  v6 = v3[8];
  v7 = swift_allocObject();
  v0[42] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[10] = &type metadata for ImpressionDatabaseStore;
  v0[11] = sub_100146EB4();
  v0[7] = v5;
  v0[8] = v4;
  v0[9] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[43] = v9;
  v9[2] = v8;
  v9[3] = v0 + 7;
  v9[4] = sub_100146E88;
  v9[5] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[44] = v11;
  *v11 = v0;
  v11[1] = sub_10010C24C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146F08, v9, &type metadata for () + 8);
}

uint64_t sub_10010C24C()
{
  v2 = *v1;
  v3 = (*v1)[44];
  v8 = *v1;
  (*v1)[45] = v0;

  if (v0)
  {
    v4 = sub_10010CA64;
  }

  else
  {
    v6 = v2[42];
    v5 = v2[43];

    sub_10000DB58(v2 + 7);

    v4 = sub_10010C7C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010C378()
{
  v47 = v0;
  v1 = v0 + 2;
  v3 = v0[38];
  v2 = v0[39];

  sub_10000DB58(v0 + 2);

  v4 = v0[41];
  v5 = v0[37];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[37];
  if (v12)
  {
    v14 = v0[36];
    v15 = v0[24];
    v44 = v0[23];
    v45 = v0[26];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v18 = v46;
    *v16 = 136315394;
    v19 = sub_10017AD04(v14, v13, &v46);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear pre conversion state for development conversion %s: %@", v16, 0x16u);
    sub_10000DAF8(v17, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v18);
    v1 = v0 + 2;

    (*(v15 + 8))(v45, v44);
  }

  else
  {
    v21 = v0[26];
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[37];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[35] + 1;
  if (v25 == v0[34])
  {
    v26 = v0[33];

    v27 = v0[22];
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = swift_task_alloc();
    v0[54] = v31;
    *v31 = v0;
    v31[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v29, v28, v30);
  }

  else
  {
    v0[35] = v25;
    v34 = v0[28];
    v33 = v0[29];
    v35 = v0[27];
    v36 = v0[33] + 16 * v25;
    v37 = *(v36 + 32);
    v0[36] = v37;
    v38 = *(v36 + 40);
    v0[37] = v38;
    v39 = swift_allocObject();
    v0[38] = v39;
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v35;
    v0[3] = v34;
    v0[4] = v33;

    v40 = v33;
    v41 = swift_task_alloc();
    v0[39] = v41;
    v41[2] = v40;
    v41[3] = v1;
    v41[4] = sub_100146DFC;
    v41[5] = v39;
    v42 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v43 = swift_task_alloc();
    v0[40] = v43;
    *v43 = v0;
    v43[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v43, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v41, &type metadata for () + 8);
  }
}

uint64_t sub_10010C7C4()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[9];
  v4 = v3[10];
  v6 = v3[11];
  v7 = swift_allocObject();
  v0[46] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[15] = &type metadata for TokenDatabaseStore;
  v0[16] = sub_1000997C8();
  v0[12] = v5;
  v0[13] = v4;
  v0[14] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[47] = v9;
  v9[2] = v8;
  v9[3] = v0 + 12;
  v9[4] = sub_100146F14;
  v9[5] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[48] = v11;
  *v11 = v0;
  v11[1] = sub_10010C938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146F40, v9, &type metadata for () + 8);
}

uint64_t sub_10010C938()
{
  v2 = *v1;
  v3 = (*v1)[48];
  v8 = *v1;
  (*v1)[49] = v0;

  if (v0)
  {
    v4 = sub_10010D158;
  }

  else
  {
    v6 = v2[46];
    v5 = v2[47];

    sub_10000DB58(v2 + 12);

    v4 = sub_10010CEB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010CA64()
{
  v46 = v0;
  v2 = v0[42];
  v1 = v0[43];

  sub_10000DB58(v0 + 7);

  v3 = v0[45];
  v4 = v0[37];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[36];
    v14 = v0[24];
    v43 = v0[23];
    v44 = v0[26];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v15 = 136315394;
    v18 = sub_10017AD04(v13, v12, &v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clear pre conversion state for development conversion %s: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v14 + 8))(v44, v43);
  }

  else
  {
    v20 = v0[26];
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[37];

    (*(v22 + 8))(v20, v21);
  }

  v24 = v0[35] + 1;
  if (v24 == v0[34])
  {
    v25 = v0[33];

    v26 = v0[22];
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    v30[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v28, v27, v29);
  }

  else
  {
    v0[35] = v24;
    v32 = v0[28];
    v33 = v0[29];
    v34 = v0[27];
    v35 = v0[33] + 16 * v24;
    v36 = *(v35 + 32);
    v0[36] = v36;
    v37 = *(v35 + 40);
    v0[37] = v37;
    v38 = swift_allocObject();
    v0[38] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v34;
    v0[3] = v32;
    v0[4] = v33;

    v39 = v33;
    v40 = swift_task_alloc();
    v0[39] = v40;
    v40[2] = v39;
    v40[3] = v0 + 2;
    v40[4] = sub_100146DFC;
    v40[5] = v38;
    v41 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    v0[40] = v42;
    *v42 = v0;
    v42[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v42, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v40, &type metadata for () + 8);
  }
}

uint64_t sub_10010CEB8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[26];
  v4 = v3[27];
  v6 = v3[28];
  v7 = swift_allocObject();
  v0[50] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[20] = &type metadata for RetryCountDatabaseStore;
  v0[21] = sub_100146F68();
  v0[17] = v5;
  v0[18] = v4;
  v0[19] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[51] = v9;
  v9[2] = v8;
  v9[3] = v0 + 17;
  v9[4] = sub_100146F4C;
  v9[5] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[52] = v11;
  *v11 = v0;
  v11[1] = sub_10010D02C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146FBC, v9, &type metadata for () + 8);
}

uint64_t sub_10010D02C()
{
  v2 = *v1;
  v3 = (*v1)[52];
  v8 = *v1;
  (*v1)[53] = v0;

  if (v0)
  {
    v4 = sub_10010D810;
  }

  else
  {
    v6 = v2[50];
    v5 = v2[51];

    sub_10000DB58(v2 + 17);

    v4 = sub_10010D5AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010D158()
{
  v46 = v0;
  v2 = v0[46];
  v1 = v0[47];

  sub_10000DB58(v0 + 12);

  v3 = v0[49];
  v4 = v0[37];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[36];
    v14 = v0[24];
    v43 = v0[23];
    v44 = v0[26];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v15 = 136315394;
    v18 = sub_10017AD04(v13, v12, &v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clear pre conversion state for development conversion %s: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v14 + 8))(v44, v43);
  }

  else
  {
    v20 = v0[26];
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[37];

    (*(v22 + 8))(v20, v21);
  }

  v24 = v0[35] + 1;
  if (v24 == v0[34])
  {
    v25 = v0[33];

    v26 = v0[22];
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    v30[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v28, v27, v29);
  }

  else
  {
    v0[35] = v24;
    v32 = v0[28];
    v33 = v0[29];
    v34 = v0[27];
    v35 = v0[33] + 16 * v24;
    v36 = *(v35 + 32);
    v0[36] = v36;
    v37 = *(v35 + 40);
    v0[37] = v37;
    v38 = swift_allocObject();
    v0[38] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v34;
    v0[3] = v32;
    v0[4] = v33;

    v39 = v33;
    v40 = swift_task_alloc();
    v0[39] = v40;
    v40[2] = v39;
    v40[3] = v0 + 2;
    v40[4] = sub_100146DFC;
    v40[5] = v38;
    v41 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    v0[40] = v42;
    *v42 = v0;
    v42[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v42, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v40, &type metadata for () + 8);
  }
}

uint64_t sub_10010D5AC()
{
  v1 = v0[37];

  v2 = v0[35] + 1;
  if (v2 == v0[34])
  {
    v3 = v0[33];

    v4 = v0[22];
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_10010DC64;

    return (sub_10010EF70)();
  }

  else
  {
    v0[35] = v2;
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[27];
    v13 = v0[33] + 16 * v2;
    v14 = *(v13 + 32);
    v0[36] = v14;
    v15 = *(v13 + 40);
    v0[37] = v15;
    v16 = swift_allocObject();
    v0[38] = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v12;
    v0[3] = v10;
    v0[4] = v11;

    v17 = v11;
    v18 = swift_task_alloc();
    v0[39] = v18;
    v18[2] = v17;
    v18[3] = v0 + 2;
    v18[4] = sub_100146DFC;
    v18[5] = v16;
    v19 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    v0[40] = v20;
    *v20 = v0;
    v20[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v18, &type metadata for () + 8);
  }
}

uint64_t sub_10010D810()
{
  v46 = v0;
  v2 = v0[50];
  v1 = v0[51];

  sub_10000DB58(v0 + 17);

  v3 = v0[53];
  v4 = v0[37];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = Logger.postback.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[36];
    v14 = v0[24];
    v43 = v0[23];
    v44 = v0[26];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v15 = 136315394;
    v18 = sub_10017AD04(v13, v12, &v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clear pre conversion state for development conversion %s: %@", v15, 0x16u);
    sub_10000DAF8(v16, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v17);

    (*(v14 + 8))(v44, v43);
  }

  else
  {
    v20 = v0[26];
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[37];

    (*(v22 + 8))(v20, v21);
  }

  v24 = v0[35] + 1;
  if (v24 == v0[34])
  {
    v25 = v0[33];

    v26 = v0[22];
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    v30[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v28, v27, v29);
  }

  else
  {
    v0[35] = v24;
    v32 = v0[28];
    v33 = v0[29];
    v34 = v0[27];
    v35 = v0[33] + 16 * v24;
    v36 = *(v35 + 32);
    v0[36] = v36;
    v37 = *(v35 + 40);
    v0[37] = v37;
    v38 = swift_allocObject();
    v0[38] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v34;
    v0[3] = v32;
    v0[4] = v33;

    v39 = v33;
    v40 = swift_task_alloc();
    v0[39] = v40;
    v40[2] = v39;
    v40[3] = v0 + 2;
    v40[4] = sub_100146DFC;
    v40[5] = v38;
    v41 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    v0[40] = v42;
    *v42 = v0;
    v42[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v42, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v40, &type metadata for () + 8);
  }
}

uint64_t sub_10010DC64()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_10010E13C;
  }

  else
  {
    v3 = sub_10010DD78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010DD78()
{
  if (v0[34])
  {
    v1 = swift_task_alloc();
    v0[56] = v1;
    *v1 = v0;
    v1[1] = sub_10010DE50;
    v2 = v0[22];

    return sub_100128208();
  }

  else
  {
    v5 = v0[25];
    v4 = v0[26];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10010DE50()
{
  v2 = *(*v1 + 448);
  v3 = *v1;
  v3[57] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010E2E4, 0, 0);
  }

  else
  {
    v5 = v3[25];
    v4 = v3[26];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10010DF94()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v12 = v0[25];
  v11 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10010E13C()
{
  v1 = v0[55];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v12 = v0[25];
  v11 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10010E2E4()
{
  v1 = v0[57];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[24] + 8))(v0[25], v0[23]);
  v12 = v0[25];
  v11 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10010E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E4B4, 0, 0);
}

uint64_t sub_10010E4B4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AppMetadataDatabaseStore;
  v4 = sub_10014B970();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014BA78, v6, &type metadata for () + 8);
}

uint64_t sub_10010E5EC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10014D294, 0, 0);
  }

  else
  {
    v4 = v3[13];

    sub_10000DB58(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10010E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E758, 0, 0);
}

uint64_t sub_10010E758()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D280, v6, &type metadata for () + 8);
}

uint64_t sub_10010E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E8B8, 0, 0);
}

uint64_t sub_10010E8B8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for RetryCountDatabaseStore;
  v4 = sub_100146F68();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D278, v6, &type metadata for () + 8);
}

uint64_t sub_10010E9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EA18, 0, 0);
}

uint64_t sub_10010EA18()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for GhostbackDatabaseStore;
  v4 = sub_100146E28();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v6, &type metadata for () + 8);
}

uint64_t sub_10010EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EB78, 0, 0);
}

uint64_t sub_10010EB78()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D27C, v6, &type metadata for () + 8);
}

uint64_t sub_10010ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010ECD8, 0, 0);
}

uint64_t sub_10010ECD8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionTagDatabaseStore;
  v4 = sub_10014AD70();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B93C, v6, &type metadata for () + 8);
}

uint64_t sub_10010EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EE38, 0, 0);
}

uint64_t sub_10010EE38()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionHistoryDatabaseStore;
  v4 = sub_10014ACC4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B908, v6, &type metadata for () + 8);
}

uint64_t sub_10010EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EF98, 0, 0);
}

uint64_t sub_10010EF98()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for PostbackDatabaseStore;
  v4 = sub_1001494B0();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100149504, v6, &type metadata for () + 8);
}

uint64_t sub_10010F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F0F8, 0, 0);
}

uint64_t sub_10010F0F8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AppLaunchDatabaseStore;
  v4 = sub_10014AE44();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B060, v6, &type metadata for () + 8);
}

uint64_t sub_10010F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F258, 0, 0);
}

uint64_t sub_10010F258()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AggregatedReportingDatabaseStore;
  v4 = sub_10014B71C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B770, v6, &type metadata for () + 8);
}

uint64_t sub_10010F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F3B8, 0, 0);
}

uint64_t sub_10010F3B8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014AC48, v6, &type metadata for () + 8);
}

uint64_t sub_10010F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010F518, 0, 0);
}

uint64_t sub_10010F518()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D7E8, &qword_1001C1910);
  *v9 = v0;
  v9[1] = sub_10010F65C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014BF60, v6, v10);
}

uint64_t sub_10010F65C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010F7AC, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[7];
    sub_10000DB58(v3 + 2);
    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_10010F7AC()
{
  v1 = v0[13];

  sub_10000DB58(v0 + 2);
  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_10010F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010F840, 0, 0);
}

uint64_t sub_10010F840()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for GhostbackDatabaseStore;
  v4 = sub_100146E28();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D648, &qword_1001C1620);
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A0AC, v6, v10);
}

uint64_t sub_10010F984()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10014D294, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[7];
    sub_10000DB58(v3 + 2);
    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_10010FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FAFC, 0, 0);
}

uint64_t sub_10010FAFC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for GhostbackDatabaseStore;
  v4 = sub_100146E28();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023CBD8, &qword_1001C1840);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B6A8, v6, v10);
}

uint64_t sub_10010FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FC68, 0, 0);
}

uint64_t sub_10010FC68()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023AFD8, qword_1001B7F28);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014BFE8, v6, v10);
}

uint64_t sub_10010FDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010FDD4, 0, 0);
}

uint64_t sub_10010FDD4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D938, &qword_1001C1DB8);
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D030, v6, v10);
}

uint64_t sub_10010FF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FF40, 0, 0);
}

uint64_t sub_10010FF40()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionHistoryDatabaseStore;
  v4 = sub_10014ACC4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AD18, v6, v10);
}

uint64_t sub_100110084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_1001100AC, 0, 0);
}

uint64_t sub_1001100AC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for PostbackDatabaseStore;
  v4 = sub_1001494B0();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D678, &qword_1001C16E0);
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A818, v6, v10);
}

uint64_t sub_1001101F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_100110218, 0, 0);
}

uint64_t sub_100110218()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10009981C, v6, &type metadata for Int);
}

uint64_t sub_10011034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(sub_100110374, 0, 0);
}

uint64_t sub_100110374()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 56);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1001104A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 120, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014C0E0, v6, &type metadata for Bool);
}

uint64_t sub_1001104A8()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001105F8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 96);

    v5 = *(v3 + 120);
    sub_10000DB58((v3 + 16));
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1001105F8()
{
  v1 = v0[12];

  sub_10000DB58(v0 + 2);
  v2 = v0[1];
  v3 = v0[14];

  return v2(0);
}

uint64_t sub_100110668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100110690, 0, 0);
}

uint64_t sub_100110690()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AF68, v6, v10);
}

uint64_t sub_1001107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  return _swift_task_switch(sub_1001107FC, 0, 0);
}

uint64_t sub_1001107FC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  *(v0 + 104) = &type metadata for AppLaunchDatabaseStore;
  v4 = sub_10014AE44();
  *(v0 + 80) = v3;
  *(v0 + 112) = v4;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  v7 = *(v0 + 128);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 80;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_10000CDE0(&qword_10023B218, qword_1001B83B0);
  *v9 = v0;
  v9[1] = sub_100110940;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AE98, v6, v10);
}

uint64_t sub_100110940()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  *(v3 + 184) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100110ABC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 168);
    v5 = *(v3 + 120);
    v8 = *(v3 + 16);
    v9 = *(v3 + 32);
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    sub_10000DB58((v3 + 80));
    *v5 = v8;
    v5[1] = v9;
    v5[2] = v10;
    v5[3] = v11;

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100110ABC()
{
  v1 = v0[21];

  sub_10000DB58(v0 + 10);
  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t sub_100110B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_100110B50, 0, 0);
}

uint64_t sub_100110B50()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 88) = &type metadata for ConversionTagDatabaseStore;
  v4 = sub_10014AD70();
  *(v0 + 64) = v3;
  *(v0 + 96) = v4;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = *(v0 + 112);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 64;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  v10 = sub_10000CDE0(&qword_10023D6F8, &qword_1001C17A8);
  *v9 = v0;
  v9[1] = sub_100110C94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014ADC4, v6, v10);
}

uint64_t sub_100110C94()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100110E18, 0, 0);
  }

  else
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 104);

    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v10 = *(v3 + 32);
    v11 = *(v3 + 16);
    sub_10000DB58((v3 + 64));
    *v5 = v11;
    *(v5 + 16) = v10;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_100110E18()
{
  v1 = v0[19];

  sub_10000DB58(v0 + 8);
  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_100110E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_100110EAC, 0, 0);
}

uint64_t sub_100110EAC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D690, &qword_1001C1718);
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AB70, v6, v10);
}

uint64_t sub_100110FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111018, 0, 0);
}

uint64_t sub_100111018()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AggregatedReportingDatabaseStore;
  v4 = sub_10014B71C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D768, &qword_1001C1880);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B7A4, v6, v10);
}

uint64_t sub_10011115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111184, 0, 0);
}

uint64_t sub_100111184()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  *v9 = v0;
  v9[1] = sub_10010E5EC;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014ABB8, v6, v10);
}

uint64_t sub_1001112C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return _swift_task_switch(sub_1001112F0, 0, 0);
}

uint64_t sub_1001112F0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  *(v0 + 40) = &type metadata for AppMetadataDatabaseStore;
  v4 = sub_10014B970();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = sub_10000CDE0(&qword_10023D788, &qword_1001C18B8);
  *v9 = v0;
  v9[1] = sub_100111434;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B9C4, v6, v10);
}

uint64_t sub_100111434()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111598, 0, 0);
  }

  else
  {
    v4 = *(v3 + 112);

    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    sub_10000DB58((v3 + 16));
    v7 = *(v3 + 8);

    return v7(v5, v6);
  }
}

uint64_t sub_100111598()
{
  v1 = v0[14];

  sub_10000DB58(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_100111604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10011162C, 0, 0);
}

uint64_t sub_10011162C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D6C8, &qword_1001C1770);
  *v9 = v0;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AC7C, v6, v10);
}

uint64_t sub_100111770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return _swift_task_switch(sub_100111798, 0, 0);
}

uint64_t sub_100111798()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  *(v0 + 96) = &type metadata for RetryCountDatabaseStore;
  v4 = sub_100146F68();
  *(v0 + 72) = v3;
  *(v0 + 104) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = *(v0 + 120);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 72;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  v10 = sub_10000CDE0(&qword_10023CEF0, &unk_1001BF6E8);
  *v9 = v0;
  v9[1] = sub_1001118DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A7A4, v6, v10);
}

uint64_t sub_1001118DC()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  *(v3 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111A5C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 112);

    v6 = *(v3 + 64);
    v10 = *(v3 + 16);
    v11 = *(v3 + 48);
    v9 = *(v3 + 32);
    sub_10000DB58((v3 + 72));
    *v5 = v10;
    *(v5 + 16) = v9;
    *(v5 + 32) = v11;
    *(v5 + 48) = v6;
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_100111A5C()
{
  v1 = v0[20];

  sub_10000DB58(v0 + 9);
  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_100111AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111AF0, 0, 0);
}

uint64_t sub_100111AF0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ImpressionDatabaseStore;
  v4 = sub_100146EB4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023C6E8, &unk_1001BC790);
  *v9 = v0;
  v9[1] = sub_100111C34;
  v11 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014CAB8, v6, v10);
}

uint64_t sub_100111C34()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010F7AC, 0, 0);
  }

  else
  {
    v4 = v3[13];

    sub_10000DB58(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100111D78()
{
  v1[140] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[141] = v2;
  v3 = *(v2 - 8);
  v1[142] = v3;
  v4 = *(v3 + 64) + 15;
  v1[143] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[144] = v5;
  v6 = *(v5 - 8);
  v1[145] = v6;
  v7 = *(v6 + 64) + 15;
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[148] = v8;
  v9 = *(v8 - 8);
  v1[149] = v9;
  v10 = *(v9 + 64) + 15;
  v1[150] = swift_task_alloc();

  return _swift_task_switch(sub_100111EFC, 0, 0);
}

uint64_t sub_100111EFC()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  v6 = *(v2 + 8);
  v0[151] = v6;
  v0[152] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v6(v1, v3);
  v8 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = v0[140];
  v10 = v8;
  v12 = v9[3];
  v11 = v9[4];
  v13 = v9[5];
  v14 = swift_allocObject();
  v0[153] = v14;
  *(v14 + 16) = v10;
  v15 = swift_task_alloc();
  v0[154] = v15;
  *v15 = v0;
  v15[1] = sub_100112098;

  return sub_10010F818(sub_10014C180, v14, v12, v11, v13);
}

uint64_t sub_100112098(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1232);
  v5 = *(*v2 + 1224);
  v8 = *v2;
  *(v3 + 1240) = a1;
  *(v3 + 1248) = v1;

  if (v1)
  {
    v6 = sub_100112980;
  }

  else
  {
    v6 = sub_1001121D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001121D0()
{
  v1 = v0[155];
  v2 = v0[140];
  v3 = swift_task_alloc();
  v0[157] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[158] = v5;
  *v5 = v0;
  v5[1] = sub_1001122C0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001122C0()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1256);
  v4 = *v0;

  return _swift_task_switch(sub_1001123D8, 0, 0);
}

uint64_t sub_1001123D8()
{
  v1 = *(v0 + 1240);
  v2 = *(v1 + 16);
  *(v0 + 1272) = v2;
  if (v2)
  {
    *(v0 + 1380) = enum case for Calendar.Component.hour(_:);
    *(v0 + 1280) = 0;
    *(v0 + 688) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 96);
    *(v0 + 736) = *(v1 + 80);
    *(v0 + 752) = v5;
    *(v0 + 704) = v3;
    *(v0 + 720) = v4;
    v6 = *(v1 + 112);
    v7 = *(v1 + 128);
    v8 = *(v1 + 160);
    *(v0 + 800) = *(v1 + 144);
    *(v0 + 816) = v8;
    *(v0 + 768) = v6;
    *(v0 + 784) = v7;
    v9 = *(v0 + 744);
    *(v0 + 1288) = v9;
    v10 = *(v0 + 752);
    *(v0 + 1296) = v10;
    sub_100070EEC(v0 + 688, v0 + 832);

    v11 = swift_task_alloc();
    *(v0 + 1304) = v11;
    *v11 = v0;
    v11[1] = sub_100112560;
    v12 = *(v0 + 1120);

    return sub_1001260DC(v9, v10, 0);
  }

  else
  {

    v14 = swift_task_alloc();
    *(v0 + 1320) = v14;
    *v14 = v0;
    v14[1] = sub_100112814;
    v15 = *(v0 + 1120);

    return sub_100128208();
  }
}

uint64_t sub_100112560()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v7 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v4 = sub_100112B4C;
  }

  else
  {
    v5 = *(v2 + 1296);
    sub_10003BC20(v2 + 688);

    v4 = sub_100112688;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100112688()
{
  v1 = *(v0 + 1280) + 1;
  if (v1 == *(v0 + 1272))
  {
    v2 = *(v0 + 1240);

    v3 = swift_task_alloc();
    *(v0 + 1320) = v3;
    *v3 = v0;
    v3[1] = sub_100112814;
    v4 = *(v0 + 1120);

    return sub_100128208();
  }

  else
  {
    *(v0 + 1280) = v1;
    v6 = (*(v0 + 1240) + 144 * v1);
    v7 = v6[3];
    v8 = v6[4];
    v9 = v6[6];
    *(v0 + 736) = v6[5];
    *(v0 + 752) = v9;
    v10 = v6[7];
    v11 = v6[8];
    v12 = v6[10];
    *(v0 + 800) = v6[9];
    *(v0 + 816) = v12;
    *(v0 + 768) = v10;
    *(v0 + 784) = v11;
    v13 = v6[2];
    *(v0 + 704) = v7;
    *(v0 + 720) = v8;
    *(v0 + 688) = v13;
    v14 = *(v0 + 744);
    *(v0 + 1288) = v14;
    v15 = *(v0 + 752);
    *(v0 + 1296) = v15;
    sub_100070EEC(v0 + 688, v0 + 832);

    v16 = swift_task_alloc();
    *(v0 + 1304) = v16;
    *v16 = v0;
    v16[1] = sub_100112560;
    v17 = *(v0 + 1120);

    return sub_1001260DC(v14, v15, 0);
  }
}

uint64_t sub_100112814()
{
  v2 = *(*v1 + 1320);
  v3 = *v1;
  v3[166] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100113434, 0, 0);
  }

  else
  {
    v4 = v3[150];
    v5 = v3[147];
    v6 = v3[146];
    v7 = v3[143];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_100112980()
{
  v1 = v0[156];
  v2 = v0[147];
  v3 = v0[145];
  v4 = v0[144];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching postbacks encountered failure %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[145] + 8))(v0[147], v0[144]);
  v11 = v0[150];
  v12 = v0[147];
  v13 = v0[146];
  v14 = v0[143];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100112B4C()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1152);

  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  sub_100070EEC(v0 + 688, v0 + 976);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v0 + 704);
    sub_10003BC20(v0 + 688);
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete pre-conversion state for advertised app: %llu", v8, 0xCu);
  }

  else
  {
    sub_10003BC20(v0 + 688);
  }

  v51 = (v0 + 1385);
  v9 = *(v0 + 1312);
  v46 = (v0 + 1369);
  v44 = (v0 + 1390);
  v53 = *(v0 + 1296);
  v50 = (v0 + 1374);
  v47 = (v0 + 1361);
  v39 = *(v0 + 1380);
  v45 = (v0 + 1353);
  v43 = (v0 + 1345);
  v41 = *(v0 + 1208);
  v42 = *(v0 + 1216);
  v10 = *(v0 + 1200);
  v40 = *(v0 + 1184);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1144);
  v15 = *(v0 + 1136);
  v16 = *(v0 + 1128);
  v54 = *(v0 + 1120);

  v17 = *(v0 + 760);
  (*(v12 + 8))(v11, v13);
  v52 = v17 > 1;
  swift_errorRetain();
  v18 = sub_1000C7C10(v9);
  v20 = v19;
  v48 = v21;
  v49 = v22;
  static Date.now.getter();
  (*(v15 + 104))(v14, v39, v16);
  v23 = sub_100025808(v10, v14);
  LOBYTE(v17) = v24;
  (*(v15 + 8))(v14, v16);
  v41(v10, v40);
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = [objc_opt_self() buildVersion];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 340) = *(v0 + 1348);
  *(v0 + 337) = *v43;
  *(v0 + 354) = *v44;
  *(v0 + 372) = *(v0 + 1356);
  *(v0 + 369) = *v45;
  *(v0 + 387) = *v46;
  *(v0 + 404) = *(v0 + 1364);
  *(v0 + 401) = *v47;
  *(v0 + 427) = *v51;
  *(v0 + 1344) = 1;
  *(v0 + 1352) = 1;
  *(v0 + 1360) = 1;
  *(v0 + 1368) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 18) = *v50;
  *(v0 + 22) = *(v0 + 1378);
  *(v0 + 321) = 33686018;
  *(v0 + 97) = 33686018;
  *(v0 + 113) = *v43;
  *(v0 + 116) = *(v0 + 1348);
  *(v0 + 130) = *v44;
  *(v0 + 134) = *(v0 + 1394);
  *(v0 + 148) = *(v0 + 1356);
  *(v0 + 145) = *v45;
  *(v0 + 167) = *(v0 + 1373);
  *(v0 + 163) = *v46;
  *(v0 + 177) = *v47;
  *(v0 + 180) = *(v0 + 1364);
  *(v0 + 207) = *(v0 + 1389);
  *(v0 + 16) = 5;
  *(v0 + 203) = *v51;
  *(v0 + 240) = 5;
  *(v0 + 246) = *(v0 + 1378);
  *(v0 + 242) = *v50;
  *(v0 + 248) = v18;
  *(v0 + 256) = v20;
  *(v0 + 24) = v18;
  *(v0 + 32) = v20;
  *(v0 + 264) = v48;
  *(v0 + 272) = v49;
  *(v0 + 40) = v48;
  *(v0 + 48) = v49;
  *(v0 + 296) = v25;
  *(v0 + 304) = v27;
  *(v0 + 72) = v25;
  *(v0 + 80) = v27;
  *(v0 + 88) = v29;
  *(v0 + 312) = v29;
  *(v0 + 101) = 1;
  *(v0 + 325) = 1;
  v30 = *(v0 + 1344);
  *(v0 + 112) = v30;
  *(v0 + 336) = v30;
  v31 = *(v0 + 1352);
  *(v0 + 128) = v31;
  *(v0 + 352) = v31;
  *(v0 + 358) = *(v0 + 1394);
  v32 = *(v0 + 1360);
  *(v0 + 144) = v32;
  *(v0 + 368) = v32;
  v33 = *(v0 + 1368);
  *(v0 + 160) = v33;
  *(v0 + 384) = v33;
  *(v0 + 161) = v52;
  *(v0 + 385) = v52;
  *(v0 + 129) = 3;
  *(v0 + 162) = 3;
  *(v0 + 353) = 3;
  *(v0 + 386) = 3;
  *(v0 + 391) = *(v0 + 1373);
  v34 = *(v0 + 1384);
  *(v0 + 176) = v34;
  *(v0 + 400) = v34;
  *(v0 + 200) = 514;
  *(v0 + 424) = 514;
  *(v0 + 202) = 2;
  *(v0 + 426) = 2;
  *(v0 + 431) = *(v0 + 1389);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = 0;
  *(v0 + 168) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 344) = 0;
  *(v0 + 360) = 0;
  *(v0 + 376) = 0;
  *(v0 + 392) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v54 + 560), *(v54 + 584));
  v35 = type metadata accessor for SnoutManager();

  v36 = swift_task_alloc();
  *(v0 + 1336) = v36;
  *v36 = v0;
  v36[1] = sub_100113178;
  v37 = *(v0 + 1288);

  return (sub_10016E27C)(v0 + 16, v37, v53, 1, v35, &off_100223858);
}

uint64_t sub_100113178()
{
  v1 = *v0;
  v2 = *(*v0 + 1336);
  v3 = *(*v0 + 1296);
  v5 = *v0;

  sub_10003AE8C(v1 + 16);

  sub_10003BC20(v1 + 688);

  return _swift_task_switch(sub_1001132A0, 0, 0);
}

uint64_t sub_1001132A0()
{
  v1 = *(v0 + 1312);

  v2 = *(v0 + 1280) + 1;
  if (v2 == *(v0 + 1272))
  {
    v3 = *(v0 + 1240);

    v4 = swift_task_alloc();
    *(v0 + 1320) = v4;
    *v4 = v0;
    v4[1] = sub_100112814;
    v5 = *(v0 + 1120);

    return sub_100128208();
  }

  else
  {
    *(v0 + 1280) = v2;
    v7 = (*(v0 + 1240) + 144 * v2);
    v8 = v7[3];
    v9 = v7[4];
    v10 = v7[6];
    *(v0 + 736) = v7[5];
    *(v0 + 752) = v10;
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[10];
    *(v0 + 800) = v7[9];
    *(v0 + 816) = v13;
    *(v0 + 768) = v11;
    *(v0 + 784) = v12;
    v14 = v7[2];
    *(v0 + 704) = v8;
    *(v0 + 720) = v9;
    *(v0 + 688) = v14;
    v15 = *(v0 + 744);
    *(v0 + 1288) = v15;
    v16 = *(v0 + 752);
    *(v0 + 1296) = v16;
    sub_100070EEC(v0 + 688, v0 + 832);

    v17 = swift_task_alloc();
    *(v0 + 1304) = v17;
    *v17 = v0;
    v17[1] = sub_100112560;
    v18 = *(v0 + 1120);

    return sub_1001260DC(v15, v16, 0);
  }
}

uint64_t sub_100113434()
{
  v1 = v0[166];
  v2 = v0[147];
  v3 = v0[145];
  v4 = v0[144];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching postbacks encountered failure %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[145] + 8))(v0[147], v0[144]);
  v11 = v0[150];
  v12 = v0[147];
  v13 = v0[146];
  v14 = v0[143];

  v15 = v0[1];

  return v15();
}

id sub_100113600(void *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF094(v11, a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for PostbackEntity();
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      a2 = [v8 initWithPropertyValues:isa onConnection:a2];

      if (([a2 existsInDatabase] & 1) == 0)
      {
        type metadata accessor for AKSQLError(0);
        v12 = 5;
        sub_10008976C(_swiftEmptyArrayStorage);
        sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      v12 = 3;
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_100113838(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFCC8(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for GhostbackEntity();
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      a2 = [v8 initWithPropertyValues:isa onConnection:a2];

      if (([a2 existsInDatabase] & 1) == 0)
      {
        type metadata accessor for AKSQLError(0);
        sub_10008976C(_swiftEmptyArrayStorage);
        sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_100113A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    sub_100146DA4(0, v3, 0);
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 == 1;
      if (v6 == 1)
      {
        v8 = 0x6F6C6E776F646572;
      }

      else
      {
        v8 = 0x6761676E652D6572;
      }

      if (v7)
      {
        v9 = 0xEA00000000006461;
      }

      else
      {
        v9 = 0xED0000746E656D65;
      }

      if (v5)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x64616F6C6E776F64;
      }

      if (v5)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100146DA4((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      --v3;
    }

    while (v3);
  }

  v15 = String._bridgeToObjectiveC()();

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v17 = [objc_opt_self() containsPredicateWithProperty:v15 values:v16];

  swift_unknownObjectRelease();

  return v17;
}

id sub_100113DBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_100146DA4(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a2 + 32);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = 2 * v7;
    v9 = 0x69746375646F7270;
    do
    {
      if (*v6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x6D706F6C65766564;
      }

      if (*v6)
      {
        v11 = 0xEA00000000006E6FLL;
      }

      else
      {
        v11 = 0xEB00000000746E65;
      }

      v20 = v5;
      v12 = v5[3];
      v13 = v7 + 1;
      if (v7 >= v12 >> 1)
      {
        v15 = v9;
        sub_100146DA4((v12 > 1), v7 + 1, 1);
        v9 = v15;
        v5 = v20;
      }

      v5[2] = v13;
      v14 = &v5[v8];
      v14[4] = v10;
      v14[5] = v11;
      v8 += 2;
      ++v6;
      v7 = v13;
      --v4;
    }

    while (v4);
  }

  v16 = String._bridgeToObjectiveC()();

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v18 = [objc_opt_self() containsPredicateWithProperty:v16 values:v17];

  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_100113F8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D7F0, &qword_1001C1918);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014BF80;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221BB8;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100114338(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D650, &qword_1001C1628);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014A0CC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002205B0;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_1001146E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D750, &qword_1001C1858);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014B6C8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221348;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100114A90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D7F8, &qword_1001C1930);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014C008;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221C80;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100114E3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D940, &qword_1001C1DC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014D050;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002223D0;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_1001151E8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D6E0, &qword_1001C1790);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014AD38;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220EC0;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100115594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D680, &qword_1001C16E8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014A838;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220998;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100115940(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D808, &qword_1001C1948);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014C054;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221D48;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100115CEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014C100;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221E10;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100116098(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D730, &qword_1001C17F8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014AF88;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221118;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100116444(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D720, &qword_1001C17D8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014AEB8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221050;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_1001167F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D700, &qword_1001C17B0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014ADE4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220F88;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100116B9C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D698, &qword_1001C1720);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014AB90;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220BA0;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_100116F48(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D770, &qword_1001C1888);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014B7C4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002214D8;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

uint64_t sub_1001172F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CDE0(&qword_10023D6A0, &qword_1001C1738);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v34);
  (*(v17 + 16))(v20, v26, v16);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  sub_10000DA64(v34, (v22 + 24));
  *(v22 + 8) = v27;
  *(v22 + 9) = a5;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_10014ABD8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220C68;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}