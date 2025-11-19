uint64_t sub_10020D298()
{
  v1 = *(*v0 + 48);
  *(*v0 + 848) = v1;
  if (v1)
  {
    v2 = sub_10020DFE8;
  }

  else
  {
    v2 = sub_10020D3A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020D3A8()
{
  v1 = v0[104];
  v2 = v0[85];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[51];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  URLRequest.httpMethod.setter();
  v7._countAndFlagsBits = 0x2D746E65746E6F43;
  v7._object = 0xEC00000065707954;
  v8.value._object = 0x80000001006C4680;
  v8.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v8, v7);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v10 = [v2 dataTaskPromiseWithRequest:{isa, ".title.download.roaming"}];
  v0[107] = v10;

  v0[10] = v0;
  v0[15] = v0 + 52;
  v0[11] = sub_10020D604;
  swift_continuation_init();
  v0[33] = v5;
  v11 = sub_10020A748(v0 + 30);
  sub_100006190(0, &qword_10077EA68);
  CheckedContinuation.init(continuation:function:)();
  (*(v4 + 32))(v11, v3, v5);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1004C2254;
  v0[29] = &unk_10075BE78;
  [v10 resultWithCompletion:?];
  (*(v4 + 8))(v11, v5);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_10020D604()
{
  v1 = *(*v0 + 112);
  *(*v0 + 864) = v1;
  if (v1)
  {
    v2 = sub_10020E32C;
  }

  else
  {
    v2 = sub_10020D714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020D714()
{
  v50 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 416);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v3 = [v2 data];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1002108D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v7 = *(v0 + 824);
    v8 = *(v0 + 816);
    v9 = *(v0 + 528);
    v46 = *(v0 + 520);
    v48 = *(v0 + 536);
    v10 = *(v0 + 496);
    v44 = *(v0 + 688);
    v45 = *(v0 + 504);
    v43 = *(v0 + 488);
    sub_100007158(v4, v6);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v45, v43);
    (*(v9 + 8))(v48, v46);
    sub_10000710C(v0 + 272);
    v11 = *(v0 + 680);
    [v11 finishTasksAndInvalidate];

    static Logger.updates.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v18 = 138412546;
      v21 = sub_100625FA0();
      *(v18 + 4) = v21;
      *v19 = v21;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v47 = v17;
      v24 = sub_1002346CC(v22, v23, &v49);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Sync age ratings failed with error: %s.", v18, 0x16u);
      sub_1000032A8(v19, &qword_10077F920);

      sub_10000710C(v20);

      (*(v16 + 8))(v15, v47);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }
  }

  else
  {
    sub_100007158(v4, v6);

    v25 = *(v0 + 424);
    if (*(v25 + 16))
    {
      static Logger.updates.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412546;
        v30 = sub_100625FA0();
        *(v28 + 4) = v30;
        *v29 = v30;
        *(v28 + 12) = 2048;
        *(v28 + 14) = *(v25 + 16);

        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Received age rating information for %ld apps.", v28, 0x16u);
        sub_1000032A8(v29, &qword_10077F920);
      }

      else
      {
      }

      v33 = *(v0 + 824);
      v32 = *(v0 + 816);
      (*(v0 + 800))(*(v0 + 576), *(v0 + 544));
      sub_100211364(v25);
    }

    else
    {
      v31 = *(v0 + 824);
      v32 = *(v0 + 816);
    }

    swift_unknownObjectRelease();
    v34 = *(v0 + 680);
    v35 = *(v0 + 536);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    v39 = *(v0 + 496);
    v38 = *(v0 + 504);
    v40 = *(v0 + 488);

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    sub_10000710C(v0 + 272);
    [v34 finishTasksAndInvalidate];
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10020DCFC()
{
  v20 = v0;

  v1 = *(v0 + 680);
  [v1 finishTasksAndInvalidate];

  static Logger.updates.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 552);
    v17 = *(v0 + 544);
    v18 = *(v0 + 560);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v5 = 138412546;
    v8 = sub_100625FA0();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1002346CC(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Sync age ratings failed with error: %s.", v5, 0x16u);
    sub_1000032A8(v6, &qword_10077F920);

    sub_10000710C(v7);

    (*(v4 + 8))(v18, v17);
  }

  else
  {
    v12 = *(v0 + 560);
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10020DFE8()
{
  v27 = v0;
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[86];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);

  sub_10000710C((v0 + 34));
  v8 = v0[85];
  [v8 finishTasksAndInvalidate];

  static Logger.updates.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[69];
    v24 = v0[68];
    v25 = v0[70];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 138412546;
    v15 = sub_100625FA0();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002346CC(v16, v17, &v26);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Sync age ratings failed with error: %s.", v12, 0x16u);
    sub_1000032A8(v13, &qword_10077F920);

    sub_10000710C(v14);

    (*(v11 + 8))(v25, v24);
  }

  else
  {
    v19 = v0[70];
    v20 = v0[69];
    v21 = v0[68];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10020E32C()
{
  v30 = v0;
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[86];
  v25 = v0[67];
  v27 = v0[107];
  v4 = v0[66];
  v24 = v0[65];
  v5 = v0[62];
  v6 = v0[63];
  v7 = v0[61];
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v25, v24);

  sub_10000710C((v0 + 34));
  v8 = v0[85];
  [v8 finishTasksAndInvalidate];

  static Logger.updates.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[69];
    v26 = v0[68];
    v28 = v0[70];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 138412546;
    v15 = sub_100625FA0();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002346CC(v16, v17, &v29);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Sync age ratings failed with error: %s.", v12, 0x16u);
    sub_1000032A8(v13, &qword_10077F920);

    sub_10000710C(v14);

    (*(v11 + 8))(v28, v26);
  }

  else
  {
    v19 = v0[70];
    v20 = v0[69];
    v21 = v0[68];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[1];

  return v22();
}

id sub_10020E698(void *a1)
{
  v2 = [a1 typeForInstallMachinery];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v6)
  {
LABEL_10:

    return 0;
  }

  if (v4 == v7 && v6 == v8)
  {

    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v10)
  {
LABEL_12:
    v12 = [a1 iTunesMetadata];
    v13 = [v12 distributorInfo];

    v14 = [v13 distributorIsThirdParty];
    return v14;
  }

  return result;
}

uint64_t sub_10020E7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v5 = type metadata accessor for URLQueryItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v41 = &v33 - v10;
  v11 = __chkstk_darwin(v9);
  v34 = &v33 - v12;
  v13 = __chkstk_darwin(v11);
  v40 = &v33 - v14;
  v15 = __chkstk_darwin(v13);
  v42 = &v33 - v16;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v43 = a1;
  sub_1001F0C48(&unk_10077FB40);
  sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
  BidirectionalCollection<>.joined(separator:)();
  v35 = v18;
  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();
  v19 = v40;
  URLQueryItem.init(name:value:)();
  sub_10021092C();
  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();
  v20 = v36;
  URLQueryItem.init(name:value:)();
  sub_1001F0C48(&qword_10077EAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E990;
  *(inited + 56) = v5;
  *(inited + 64) = &off_10076DDB8;
  v22 = sub_10020A748((inited + 32));
  v23 = *(v6 + 16);
  v23(v22, v18, v5);
  *(inited + 96) = v5;
  *(inited + 104) = &off_10076DDB8;
  v24 = sub_10020A748((inited + 72));
  v23(v24, v42, v5);
  *(inited + 136) = v5;
  *(inited + 144) = &off_10076DDB8;
  v25 = sub_10020A748((inited + 112));
  v23(v25, v19, v5);
  *(inited + 176) = v5;
  *(inited + 184) = &off_10076DDB8;
  v26 = sub_10020A748((inited + 152));
  v27 = v34;
  v23(v26, v34, v5);
  *(inited + 216) = v5;
  *(inited + 224) = &off_10076DDB8;
  v28 = sub_10020A748((inited + 192));
  v29 = v41;
  v23(v28, v41, v5);
  *(inited + 256) = v5;
  *(inited + 264) = &off_10076DDB8;
  v30 = sub_10020A748((inited + 232));
  v23(v30, v20, v5);
  sub_1005D67B0(inited, v39);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077EAD8);
  swift_arrayDestroy();
  v31 = *(v6 + 8);
  v31(v20, v5);
  v31(v29, v5);
  v31(v27, v5);
  v31(v40, v5);
  v31(v42, v5);
  return (v31)(v35, v5);
}

Swift::Int sub_10020EC98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10020ECF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10020ED3C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100757330, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10020EDB4@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100757368, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10020EE18(uint64_t a1)
{
  v2 = sub_100214010();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020EE54(uint64_t a1)
{
  v2 = sub_100214010();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_10020EF68(uint64_t a1)
{
  v2 = sub_100214AC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020EFA4(uint64_t a1)
{
  v2 = sub_100214AC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020EFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10021236C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_10020F010()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10020F054()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10020F0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001006C4710 == a2)
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

uint64_t sub_10020F144(uint64_t a1)
{
  v2 = sub_100214B1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020F180(uint64_t a1)
{
  v2 = sub_100214B1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10020F1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_10077EBA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_100214B1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000710C(a1);
  *a2 = v9;
  return result;
}

Swift::Int sub_10020F31C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10020F364()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10020F3A8()
{
  v1 = 0x6E69746152656761;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_10020F40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100212544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10020F434(uint64_t a1)
{
  v2 = sub_10021462C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020F470(uint64_t a1)
{
  v2 = sub_10021462C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10020F4AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10021266C(a1, v6);
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

uint64_t sub_10020F4F0()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10020F524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_10020F600(uint64_t a1)
{
  v2 = sub_100214318();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020F63C(uint64_t a1)
{
  v2 = sub_100214318();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10020F678@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002128EC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

void *sub_10020F6BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100212B68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10020F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10020F7C8, 0, 0);
}

uint64_t sub_10020F7C8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v13 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v3 + 8);
  v0[17] = v7;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v1, v4);
  sub_10020FC68(v6, v5, v13, &unk_10069EA20, v9);

  sub_10020FC68(v6, v5, v13, v15, v14);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = sub_1001F0C48(&qword_10077EA78);
  *v10 = v0;
  v10[1] = sub_10020F9C8;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_10020F9C8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10020FBE8;
  }

  else
  {
    v2 = sub_10020FADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10020FADC()
{
  v2 = v0[3];
  if (v2 == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[17];
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[2];
    sub_1001F0C48(&unk_10077FA80);
    sub_1001F0C48(&unk_10077F940);
    ThrowingTaskGroup.cancelAll()();
    v3(v4, v5);

    v7 = v0[1];

    v7(v6, v2);
  }
}

uint64_t sub_10020FBE8()
{
  (*(v0 + 136))(*(v0 + 128), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  sub_1002122FC(a3, v23 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000032A8(v13, &unk_100780380);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = 0;
    v18 = 0;
    v19 = *v6;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = *v6;
  if (a1)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_1001F0C48(&unk_10077FA80);
    v20 = (v18 | v16);
    if (v18 | v16)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v16;
      v25[3] = v18;
    }

    v24[0] = 1;
    v24[1] = v20;
    v24[2] = v19;
    if (a1 != 1)
    {
      v23[1] = 6;
      v23[2] = v24;
      v23[3] = a1;
      v23[4] = a2;
    }

    goto LABEL_13;
  }

LABEL_10:
  sub_1001F0C48(&unk_10077FA80);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v27[0] = 0;
    v27[1] = 0;
    v21 = v27;
    v27[2] = v16;
    v27[3] = v18;
  }

  v26[0] = 1;
  v26[1] = v21;
  v26[2] = v19;
  v25[4] = 6;
  v25[5] = v26;
  v25[6] = 0;
  v25[7] = a2;
LABEL_13:
  swift_task_create();
}

uint64_t sub_10020FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_10020FF9C;

  return sub_100213118(a4, a5, a6, a7);
}

uint64_t sub_10020FF9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1002100B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_100214EE8;

  return sub_10020F6E8(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1002101A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100214EE8;

  return sub_100212CEC(a4);
}

uint64_t sub_10021023C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 88) = a2;
  *(v4 + 32) = a1;
  sub_1001F0C48(&unk_100780380);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1002102E0, 0, 0);
}

uint64_t sub_1002102E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;

  v8 = v5;
  v9 = sub_1001F0C48(&unk_10077FA80);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = xmmword_10069E9A0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v2;
  *(v10 + 56) = &unk_10069E9F0;
  *(v10 + 64) = v7;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_100210490;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v9, v9, 0, 0, &unk_10069EA08, v10, v9);
}

uint64_t sub_100210490()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100210620, 0, 0);
  }

  else
  {

    v4 = v2[2];
    v5 = v2[3];
    sub_1000032A8(v2[7], &unk_100780380);

    v6 = v3[1];

    return v6(v4, v5);
  }
}

uint64_t sub_100210620()
{

  sub_1000032A8(*(v0 + 56), &unk_100780380);

  v1 = *(v0 + 8);

  return v1(0, 0);
}

char *sub_1002106AC()
{
  v0 = [objc_opt_self() enumeratorWithOptions:128];
  v14[4] = sub_10020E698;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100009BE4;
  v14[3] = &unk_10075BF18;
  v1 = _Block_copy(v14);
  [v0 setFilter:v1];
  _Block_release(v1);
  v2 = [v0 nextObject];
  if (v2)
  {
    v3 = v2;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = [v3 iTunesMetadata];
      v6 = [v5 storeItemIdentifier];

      v14[0] = v6;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100009530(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_100009530((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v9;
      v3 = [v0 nextObject];
    }

    while (v3);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  return v4;
}

unint64_t sub_1002108D8()
{
  result = qword_10077EA70;
  if (!qword_10077EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EA70);
  }

  return result;
}

uint64_t sub_10021092C()
{
  v0 = 0x6E776F6E6B6E75;
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v4 = 6513005;
    v5 = 1684107369;
    if (deviceClassNumber != 3)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (deviceClassNumber != 9)
    {
      v4 = v5;
    }

    if (deviceClassNumber == 1)
    {
      return 0x656E6F687069;
    }

    else
    {
      return v4;
    }
  }

  return v0;
}

id sub_1002109DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = __chkstk_darwin(v4);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v77 = &v66 - v8;
  __chkstk_darwin(v7);
  v71 = &v66 - v9;
  v10 = type metadata accessor for URL.DirectoryHint();
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v72 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&unk_1007809F0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  v18 = type metadata accessor for URL();
  v73 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v66 - v23;
  __chkstk_darwin(v22);
  v26 = &v66 - v25;
  v27 = objc_allocWithZone(LSApplicationRecord);

  v76 = a1;
  v28 = a2;
  v29 = sub_10049E57C(a1, a2, 1);
  v67 = v24;
  v68 = v21;
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v69 = v18;
  if (v29)
  {
    v77 = v29;
    v42 = [v29 bundleContainerURL];
    v43 = v28;
    if (v42)
    {
      v44 = v42;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v39;
      v46 = *(v39 + 56);
      v47 = v15;
      v48 = 0;
    }

    else
    {
      v45 = v39;
      v46 = *(v39 + 56);
      v47 = v15;
      v48 = 1;
    }

    v49 = v69;
    v46(v47, v48, 1, v69);
    v50 = v41;
    sub_10020A668(v15, v17, &unk_1007809F0);
    v51 = (*(v45 + 48))(v17, 1, v49);
    v52 = v72;
    if (v51 != 1)
    {
      v75 = v43;
      v80[0] = 0xD000000000000014;
      v80[1] = 0x80000001006C46D0;
      (*(v40 + 104))(v72, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
      sub_100005E50();
      v59 = v67;
      URL.appending<A>(component:directoryHint:)();
      (*(v40 + 8))(v52, v50);
      v60 = *(v45 + 8);
      v60(v17, v49);
      v61 = v26;
      (*(v45 + 32))(v26, v59, v49);
      sub_100006190(0, &qword_1007813E0);
      v62 = v68;
      (*(v45 + 16))(v68, v61, v49);
      v63 = sub_10060BA1C(v62);
      v64 = v49;
      v65 = v63;
      v60(v61, v64);

      return v65;
    }

    sub_1000032A8(v17, &unk_1007809F0);
    v30 = v71;
    static Logger.updates.getter();

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v80[0] = v57;
      *v55 = 138412546;
      v58 = sub_100625FA0();
      *(v55 + 4) = v58;
      *v56 = v58;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_1002346CC(v76, v43, v80);
      _os_log_impl(&_mh_execute_header, v53, v54, "[%@] No iTunesMetadata.plist found for app: %s.", v55, 0x16u);
      sub_1000032A8(v56, &qword_10077F920);

      sub_10000710C(v57);
    }
  }

  else
  {
    v30 = v77;
    static Logger.updates.getter();
    v31 = v28;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v80[0] = v36;
      *v34 = 138412546;
      v37 = sub_100625FA0();
      *(v34 + 4) = v37;
      *v35 = v37;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1002346CC(v76, v31, v80);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] No record found for app: %s.", v34, 0x16u);
      sub_1000032A8(v35, &qword_10077F920);

      sub_10000710C(v36);
    }
  }

  (*(v78 + 8))(v30, v79);
  return 0;
}

uint64_t sub_100211364(uint64_t a1)
{
  v81 = type metadata accessor for LogKey.Prefix();
  v2 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v90);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  v10 = __chkstk_darwin(v7);
  result = __chkstk_darwin(v10);
  v16 = *(a1 + 16);
  if (v16)
  {
    v89 = (v12 + 8);
    v78 = (v2 + 104);
    v17 = a1 + 88;
    v77 = enum case for LogKey.Prefix.undefined(_:);
    *&v15 = 138412546;
    v83 = v15;
    *&v15 = 138413058;
    v75 = v15;
    *&v15 = 138412802;
    v74 = v15;
    v87 = v6;
    v85 = v9;
    v79 = v14;
    v86 = &v74 - v13;
    do
    {
      v18 = *(v17 - 32);
      if (v18)
      {
        v19 = *(v17 - 40);
        v21 = *(v17 - 16);
        v20 = *(v17 - 8);

        swift_bridgeObjectRetain_n();

        v22 = sub_1002109DC(v19, v18);

        if (v22)
        {

          if (v21)
          {
          }

          else
          {
            v20 = 0;
          }

          v23 = [v22 ratingRank];
          if (v23 && (v24 = v23, v25 = [v23 integerValue], v24, v25 == v20))
          {
            v26 = v86;
            static Logger.updates.getter();

            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v27, v28))
            {
              LODWORD(v88) = v28;
              v29 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v93 = v84;
              *v29 = v83;
              if (qword_10077E598 != -1)
              {
                swift_once();
              }

              TaskLocal.get()();
              v30 = v92;
              if (!v92 || (, , , os_unfair_lock_lock((v30 + 24)), v31 = *(v30 + 16), v32 = v31, os_unfair_lock_unlock((v30 + 24)), , !v31))
              {
                (*v78)(v80, v77, v81);
                v33 = objc_allocWithZone(type metadata accessor for LogKey());
                v32 = LogKey.init(prefix:)();
              }

              *(v29 + 4) = v32;
              v34 = v82;
              *v82 = v32;
              *(v29 + 12) = 2080;
              v35 = sub_1002346CC(v19, v18, &v93);

              *(v29 + 14) = v35;
              _os_log_impl(&_mh_execute_header, v27, v88, "[%@] App already has correct age rating: %s", v29, 0x16u);
              sub_1000032A8(v34, &qword_10077F920);

              sub_10000710C(v84);

              result = (*v89)(v86, v90);
LABEL_38:
              v6 = v87;
              goto LABEL_4;
            }
          }

          else
          {
            v36 = [v22 ratingRank];
            if (v36)
            {
              v37 = v36;
              v88 = [v36 integerValue];
            }

            else
            {
              v88 = 0;
            }

            v38 = [objc_allocWithZone(NSNumber) initWithInteger:v20];
            [v22 setRatingRank:v38];

            v39 = objc_allocWithZone(IXApplicationIdentity);
            v40 = String._bridgeToObjectiveC()();
            v41 = [v39 initWithBundleIdentifier:v40];

            if (v41)
            {
              v42 = objc_opt_self();
              v91 = 0;
              if (![v42 updateiTunesMetadata:v22 forAppWithIdentity:v41 error:&v91])
              {
                v61 = v91;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                static Logger.updates.getter();

                swift_errorRetain();
                v62 = Logger.logObject.getter();
                v63 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v62, v63))
                {
                  v64 = swift_slowAlloc();
                  v65 = swift_slowAlloc();
                  LODWORD(v84) = v63;
                  v66 = v65;
                  v82 = v65;
                  v88 = swift_slowAlloc();
                  v91 = v88;
                  *v64 = v74;
                  v67 = sub_100625FA0();
                  *(v64 + 4) = v67;
                  *v66 = v67;
                  *(v64 + 12) = 2080;
                  v68 = sub_1002346CC(v19, v18, &v91);
                  v69 = v62;
                  v70 = v68;

                  *(v64 + 14) = v70;
                  *(v64 + 22) = 2080;
                  swift_getErrorValue();
                  v71 = Error.localizedDescription.getter();
                  v73 = sub_1002346CC(v71, v72, &v91);

                  *(v64 + 24) = v73;
                  _os_log_impl(&_mh_execute_header, v69, v84, "[%@] Unable to update iTunesMetadata for %s: %s.", v64, 0x20u);
                  sub_1000032A8(v82, &qword_10077F920);

                  swift_arrayDestroy();

                  v6 = v87;
                }

                else
                {
                }

                result = (*v89)(v6, v90);
                goto LABEL_4;
              }

              v43 = v91;
              v44 = v79;
              static Logger.updates.getter();

              v45 = Logger.logObject.getter();
              v46 = static os_log_type_t.default.getter();

              v84 = v45;
              if (os_log_type_enabled(v45, v46))
              {
                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                v76 = v41;
                v49 = v48;
                v82 = swift_slowAlloc();
                v91 = v82;
                *v47 = v75;
                v50 = sub_100625FA0();
                *(v47 + 4) = v50;
                *v49 = v50;
                *(v47 + 12) = 2080;
                v51 = sub_1002346CC(v19, v18, &v91);

                *(v47 + 14) = v51;
                *(v47 + 22) = 2048;
                *(v47 + 24) = v88;
                *(v47 + 32) = 2048;
                *(v47 + 34) = v20;
                v52 = v84;
                _os_log_impl(&_mh_execute_header, v84, v46, "[%@] Updated age rating for %s from %ld to %ld.", v47, 0x2Au);
                sub_1000032A8(v49, &qword_10077F920);

                sub_10000710C(v82);
              }

              else
              {
              }

              result = (*v89)(v44, v90);
              goto LABEL_38;
            }

            v26 = v85;
            static Logger.updates.getter();

            v27 = Logger.logObject.getter();
            v53 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v27, v53))
            {
              LODWORD(v88) = v53;
              v54 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v93 = v84;
              *v54 = v83;
              if (qword_10077E598 != -1)
              {
                swift_once();
              }

              TaskLocal.get()();
              v55 = v92;
              if (!v92 || (, , , os_unfair_lock_lock((v55 + 24)), v56 = *(v55 + 16), v57 = v56, os_unfair_lock_unlock((v55 + 24)), , !v56))
              {
                (*v78)(v80, v77, v81);
                v58 = objc_allocWithZone(type metadata accessor for LogKey());
                v57 = LogKey.init(prefix:)();
              }

              *(v54 + 4) = v57;
              v59 = v82;
              *v82 = v57;
              *(v54 + 12) = 2080;
              v60 = sub_1002346CC(v19, v18, &v93);

              *(v54 + 14) = v60;
              _os_log_impl(&_mh_execute_header, v27, v88, "[%@] No identity found for app: %s.", v54, 0x16u);
              sub_1000032A8(v59, &qword_10077F920);

              sub_10000710C(v84);

              result = (*v89)(v85, v90);
              goto LABEL_38;
            }
          }

          result = (*v89)(v26, v90);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }
      }

LABEL_4:
      v17 += 64;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100211FAC()
{
  type metadata accessor for AccountIdentity();

  return sub_1005F6258();
}

uint64_t sub_100212020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001F0E54;

  return sub_10020FEE4(a1, v4, v5, v6, v7, v8, v9);
}

void sub_100212104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100214EFC;

  JUMPOUT(0x1002100B8);
}

uint64_t sub_100212200(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002101A4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002122FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021236C(void *a1)
{
  v3 = sub_1001F0C48(&qword_10077EB98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_100214AC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_100212544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006C46F0 == a2)
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

uint64_t sub_10021266C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_10077EB50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10021462C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v20) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v19 = v9;
  v23 = 1;
  sub_100214680();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v20;
  v18 = v21;
  v16 = v22;
  sub_1001F0C48(&qword_10077EB68);
  v23 = 2;
  sub_1002146D4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  result = sub_10000710C(a1);
  *a2 = v19;
  a2[1] = v11;
  v14 = v18;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v12;
  return result;
}

uint64_t sub_1002128EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_10077EB20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_100214318();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v26[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = v9;
  v33 = 1;
  sub_10021436C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = *(&v30 + 1);
  v20 = v30;
  v13 = v31;
  v19 = *(&v32 + 1);
  v14 = v32;
  v15 = v21;
  *&v22 = v21;
  *(&v22 + 1) = v11;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  sub_1002143C0(&v22, v26);
  sub_10000710C(a1);
  v26[0] = v15;
  v26[1] = v11;
  v26[2] = v20;
  v26[3] = v12;
  v27 = v13;
  v28 = v14;
  v29 = v19;
  result = sub_1002143F8(v26);
  v17 = v23;
  *a2 = v22;
  a2[1] = v17;
  v18 = v25;
  a2[2] = v24;
  a2[3] = v18;
  return result;
}

void *sub_100212B68(void *a1)
{
  v3 = sub_1001F0C48(&qword_10077EAE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100214010();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1001F0C48(&qword_10077EAF0);
    sub_100214064();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000710C(a1);
  }

  return v7;
}

uint64_t sub_100212CEC(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100212DAC, 0, 0);
}

uint64_t sub_100212DAC()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_100213EE8(&qword_10077EA80, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100212EA0;
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v4, v0 + 16, v3, v5, v2);
}

uint64_t sub_100212EA0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1002130B4;
  }

  else
  {
    v3 = sub_100212FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100212FE4()
{
  type metadata accessor for CancellationError();
  sub_100213EE8(&qword_10077EA88, &type metadata accessor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002130B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100213118(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 296) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1001F0C48(&qword_10077EA90);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = type metadata accessor for AccountCachedServerData.Error();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_10077EA98);
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();
  sub_1001F0C48(&qword_10077EAA0);
  *(v4 + 192) = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_10077EAA8);
  *(v4 + 200) = v9;
  *(v4 + 208) = *(v9 - 8);
  *(v4 + 216) = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_10077EAB0);
  *(v4 + 224) = v10;
  *(v4 + 232) = *(v10 - 8);
  *(v4 + 240) = swift_task_alloc();
  sub_1001F0C48(&qword_10077EAB8);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100213470, 0, 0);
}

uint64_t sub_100213470()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9 = v8(v1, 1, 1, v5);
  v7(v9);
  AsyncValueSequence.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_100213FA0(&qword_10077EAC0, &qword_10077EAB0);
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_1002135C8;
  v12 = v0[28];
  v13 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v12, v10);
}

uint64_t sub_1002135C8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_100213E5C;
  }

  else
  {
    v2 = sub_1002136DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002136F8()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 72);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    static Logger.general.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 72);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "[AccountCachedServerData/%@] Sequence abruptly ended or timed out without returning a value", v7, 0xCu);
      sub_1000032A8(v8, &qword_10077F920);
    }

    v10 = *(v0 + 256);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);

    (*(v13 + 8))(v11, v12);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
    }

    else
    {
      v35 = *(v0 + 88);
      v34 = *(v0 + 96);
      v36 = *(v0 + 80);
      (*(v35 + 16))(v34, *(v0 + 256), v36);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_21;
  }

  sub_10020A668(v1, *(v0 + 184), &qword_10077EA98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v61 = *(v0 + 224);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 152) + 32);
    v21(v19, *(v0 + 184), v20);
    sub_100213EE8(&qword_10077EAC8, &type metadata accessor for AccountCachedServerData.Error);
    swift_willThrowTypedImpl();
    swift_allocError();
    v21(v22, v19, v20);
    (*(v17 + 8))(v18, v61);
    sub_1000032A8(v16, &qword_10077EAB8);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 264);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    (*(v29 + 32))(v26, *(v0 + 184), v28);
    v25(v26, 0, 1, v28);
    sub_100213F30(v26, v27);
    if (!(*(v29 + 48))(v27, 1, v28))
    {
      v37 = *(v0 + 296);
      (*(*(v0 + 88) + 16))(*(v0 + 104), *(v0 + 256), *(v0 + 80));
      if ((v37 & 1) != 0 || (AccountCachedServerData.CachedValue.isStale.getter() & 1) == 0)
      {
        v53 = *(v0 + 232);
        v52 = *(v0 + 240);
        v54 = *(v0 + 224);
        v55 = *(v0 + 104);
        v56 = *(v0 + 80);
        v57 = *(v0 + 88);
        AccountCachedServerData.CachedValue.value.getter();
        v58 = *(v0 + 32);
        v59 = *(v0 + 40);
        (*(v57 + 8))(v55, v56);
        (*(v53 + 8))(v52, v54);
        *(v0 + 16) = v58;
        *(v0 + 24) = v59;
LABEL_21:
        sub_1000032A8(*(v0 + 256), &qword_10077EAB8);
        v62 = *(v0 + 24);
        v63 = *(v0 + 16);

        v60 = *(v0 + 8);

        return v60(v63, v62);
      }

      v38 = *(v0 + 72);
      static Logger.general.getter();
      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 72);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v42;
        *v44 = v42;
        v45 = v42;
        _os_log_impl(&_mh_execute_header, v40, v41, "[AccountCachedServerData/%@] Not using stale value)", v43, 0xCu);
        sub_1000032A8(v44, &qword_10077F920);
      }

      v47 = *(v0 + 120);
      v46 = *(v0 + 128);
      v49 = *(v0 + 104);
      v48 = *(v0 + 112);
      v50 = *(v0 + 80);
      v51 = *(v0 + 88);

      (*(v47 + 8))(v46, v48);
      (*(v51 + 8))(v49, v50);
    }

    v30 = sub_100213FA0(&qword_10077EAC0, &qword_10077EAB0);
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_1002135C8;
    v32 = *(v0 + 224);
    v33 = *(v0 + 192);

    return dispatch thunk of AsyncIteratorProtocol.next()(v33, v32, v30);
  }
}

uint64_t sub_100213E5C()
{
  *(v0 + 48) = *(v0 + 288);
  sub_1001F0C48(&unk_10077F940);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100213EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100213F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077EAB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100213FA0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100213FE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100214010()
{
  result = qword_10077EAE8;
  if (!qword_10077EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EAE8);
  }

  return result;
}

unint64_t sub_100214064()
{
  result = qword_10077EAF8;
  if (!qword_10077EAF8)
  {
    sub_1001F76D0(&qword_10077EAF0);
    sub_1002140E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EAF8);
  }

  return result;
}

unint64_t sub_1002140E8()
{
  result = qword_10077EB00;
  if (!qword_10077EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB00);
  }

  return result;
}

uint64_t sub_10021413C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100214184(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100214214()
{
  result = qword_10077EB08;
  if (!qword_10077EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB08);
  }

  return result;
}

unint64_t sub_10021426C()
{
  result = qword_10077EB10;
  if (!qword_10077EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB10);
  }

  return result;
}

unint64_t sub_1002142C4()
{
  result = qword_10077EB18;
  if (!qword_10077EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB18);
  }

  return result;
}

unint64_t sub_100214318()
{
  result = qword_10077EB28;
  if (!qword_10077EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB28);
  }

  return result;
}

unint64_t sub_10021436C()
{
  result = qword_10077EB30;
  if (!qword_10077EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB30);
  }

  return result;
}

__n128 sub_100214428(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10021443C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_100214498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100214528()
{
  result = qword_10077EB38;
  if (!qword_10077EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB38);
  }

  return result;
}

unint64_t sub_100214580()
{
  result = qword_10077EB40;
  if (!qword_10077EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB40);
  }

  return result;
}

unint64_t sub_1002145D8()
{
  result = qword_10077EB48;
  if (!qword_10077EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB48);
  }

  return result;
}

unint64_t sub_10021462C()
{
  result = qword_10077EB58;
  if (!qword_10077EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB58);
  }

  return result;
}

unint64_t sub_100214680()
{
  result = qword_10077EB60;
  if (!qword_10077EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB60);
  }

  return result;
}

unint64_t sub_1002146D4()
{
  result = qword_10077EB70;
  if (!qword_10077EB70)
  {
    sub_1001F76D0(&qword_10077EB68);
    sub_100214760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB70);
  }

  return result;
}

unint64_t sub_100214760()
{
  result = qword_10077EB78;
  if (!qword_10077EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB78);
  }

  return result;
}

__n128 sub_1002147C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002147D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100214820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncAgeRatingsTask.Response.AgeRatingApp.AgeRatingAppAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncAgeRatingsTask.Response.AgeRatingApp.AgeRatingAppAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002149C4()
{
  result = qword_10077EB80;
  if (!qword_10077EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB80);
  }

  return result;
}

unint64_t sub_100214A1C()
{
  result = qword_10077EB88;
  if (!qword_10077EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB88);
  }

  return result;
}

unint64_t sub_100214A74()
{
  result = qword_10077EB90;
  if (!qword_10077EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EB90);
  }

  return result;
}

unint64_t sub_100214AC8()
{
  result = qword_10077EBA0;
  if (!qword_10077EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBA0);
  }

  return result;
}

unint64_t sub_100214B1C()
{
  result = qword_10077EBB0;
  if (!qword_10077EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnterpriseAsset.Variant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnterpriseAsset.Variant.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100214CD4()
{
  result = qword_10077EBB8;
  if (!qword_10077EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBB8);
  }

  return result;
}

unint64_t sub_100214D2C()
{
  result = qword_10077EBC0;
  if (!qword_10077EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBC0);
  }

  return result;
}

unint64_t sub_100214D84()
{
  result = qword_10077EBC8;
  if (!qword_10077EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBC8);
  }

  return result;
}

unint64_t sub_100214DDC()
{
  result = qword_10077EBD0;
  if (!qword_10077EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBD0);
  }

  return result;
}

unint64_t sub_100214E34()
{
  result = qword_10077EBD8;
  if (!qword_10077EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBD8);
  }

  return result;
}

unint64_t sub_100214E8C()
{
  result = qword_10077EBE0;
  if (!qword_10077EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EBE0);
  }

  return result;
}

uint64_t sub_100214F68()
{
  result = type metadata accessor for MediaAPIMetadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_100214FDC(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppInstallRequestType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = *(v10 + 16);
  v16(&v35 - v14, a1, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for AppInstallRequestType.automaticInstall(_:) || v17 == enum case for AppInstallRequestType.install(_:))
  {
    return a3 == 1;
  }

  if (v17 == enum case for AppInstallRequestType.automaticUpdate(_:) || v17 == enum case for AppInstallRequestType.update(_:))
  {
    return a3 == 2 || a3 == 4;
  }

  if (v17 == enum case for AppInstallRequestType.promotion(_:))
  {
    return a3 == 3;
  }

  else if (v17 == enum case for AppInstallRequestType.restore(_:))
  {
    return a3 == 4;
  }

  else
  {
    static Logger.install.getter();
    v16(v13, a1, v9);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v24;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = v27;
      v39 = swift_slowAlloc();
      v42 = v39;
      v36 = v26;
      *v26 = 138412546;
      *(v26 + 4) = v22;
      *v27 = v22;
      *(v26 + 12) = 2082;
      v28 = v22;
      v29 = AppInstallRequestType.rawValue.getter();
      v31 = v30;
      v32 = *(v10 + 8);
      v32(v13, v9);
      v33 = sub_1002346CC(v29, v31, &v42);

      v34 = v36;
      *(v36 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v38, "[%@] Unhandled install type: %{public}s", v34, 0x16u);
      sub_1000032A8(v37, &qword_10077F920);

      sub_10000710C(v39);
    }

    else
    {

      v32 = *(v10 + 8);
      v32(v13, v9);
    }

    (*(v40 + 8))(v8, v41);
    v32(v15, v9);
    return 0;
  }
}

uint64_t sub_100215400(uint64_t a1, uint64_t a2)
{
  v3[202] = v2;
  v3[201] = a2;
  v3[200] = a1;
  type metadata accessor for MediaAPIMetadata();
  v3[203] = swift_task_alloc();
  v4 = type metadata accessor for Platform();
  v3[204] = v4;
  v3[205] = *(v4 - 8);
  v3[206] = swift_task_alloc();
  v5 = type metadata accessor for AppInstallRequestType();
  v3[207] = v5;
  v3[208] = *(v5 - 8);
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[213] = v6;
  v3[214] = *(v6 - 8);
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[220] = swift_task_alloc();
  v3[221] = swift_task_alloc();
  v3[222] = swift_task_alloc();
  v3[223] = swift_task_alloc();
  v3[224] = swift_task_alloc();
  v3[225] = swift_task_alloc();
  v3[226] = type metadata accessor for ADP();
  v3[227] = swift_task_alloc();

  return _swift_task_switch(sub_1002156A4, 0, 0);
}

uint64_t sub_1002156A4()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1616);
  v3 = type metadata accessor for ADPPreflightTask(0);
  *(v0 + 1824) = v3;
  sub_100222D40(v2 + *(v3 + 20), v1);
  v4 = *v2;
  *(v0 + 1832) = *v2;
  v5 = *(v2 + *(v3 + 28));
  *(v0 + 1840) = v5;
  static Logger.install.getter();
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Starting ADP preflight", v9, 0xCu);
    sub_1000032A8(v10, &qword_10077F920);
  }

  v12 = *(v0 + 1816);
  v13 = *(v0 + 1808);
  v14 = *(v0 + 1800);
  v15 = *(v0 + 1712);
  v16 = *(v0 + 1704);

  v17 = *(v15 + 8);
  *(v0 + 1848) = v17;
  *(v0 + 1856) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v16);
  v18 = *(v13 + 24);
  *(v0 + 2052) = v18;
  v19 = v12 + v18;
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  v22 = swift_task_alloc();
  *(v0 + 1864) = v22;
  *v22 = v0;
  v22[1] = sub_1002158E4;

  return sub_100219B60(v0 + 1192, v4, v20, v21);
}

uint64_t sub_1002158E4(char a1)
{
  v3 = *v2;
  *(v3 + 863) = a1;
  *(v3 + 1872) = v1;

  if (v1)
  {
    v4 = sub_100219268;
  }

  else
  {
    v4 = sub_100215A28;
  }

  return _swift_task_switch(v4, 0, 0);
}

id sub_100215A28()
{
  v286 = v0;
  v1 = (v0 + 1432);
  v279 = *(v0 + 1832);
  v282 = *(v0 + 1824);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1664);
  v4 = *(v0 + 1656);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1816) + *(v0 + 2052);
  v7 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v0 + 1880) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v277 = v7;
  v8 = *(v279 + v7);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  v11 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  *(v0 + 1888) = v11;
  v270 = v11;
  v12 = v8 + *(v11 + 28);
  v13 = *(v3 + 16);
  *(v0 + 1896) = v13;
  *(v0 + 1904) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v273 = v13;
  v13(v2, v12 + v9, v4);
  os_unfair_lock_unlock((v8 + v10));
  v14 = (v5 + *(v282 + 24));
  v15 = *v14;
  v16 = v14[1];
  *(v0 + 2048) = *(v14 + 32);
  *(v0 + 2032) = v16;
  *(v0 + 2016) = v15;
  v18 = *(v6 + 160);
  v17 = *(v6 + 168);
  v20 = (v6 + 176);
  v19 = *(v6 + 176);
  v264 = v19;
  v262 = *(v6 + 184);
  if (v17)
  {
    if (v18 == 0x6C7074656B72616DLL && v17 == 0xEB00000000656361)
    {
      v21 = 1;
      v22 = 0xEB00000000656361;
      v18 = 0x6C7074656B72616DLL;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = *(v6 + 160);
      v22 = *(v6 + 168);
    }
  }

  else
  {
    v23 = v19 & 1;
    v22 = 0;
    if (*(v6 + 184))
    {
      v21 = 0;
    }

    else
    {
      v21 = v23;
    }
  }

  v24 = *(v0 + 1832);
  v25 = *(v0 + 1696);
  v26 = *(v0 + 1664);
  v27 = *(v0 + 1656);
  v28 = (*(v0 + 1816) + *(v0 + 2052));
  v283 = v28[9];
  v29 = v20[1];
  *v1 = *v20;
  *(v0 + 1448) = v29;
  memmove((v0 + 16), v28, 0x90uLL);
  *(v0 + 160) = v283;
  v266 = v18;
  v268 = v22;
  *(v0 + 176) = v18;
  *(v0 + 184) = v22;
  v30 = *(v0 + 1448);
  *(v0 + 192) = *v1;
  *(v0 + 208) = v30;
  nullsub_1(v0 + 16, v31, v32, v33, v34, v35, v36);
  v37 = *(v0 + 192);
  *(v0 + 384) = *(v0 + 176);
  *(v0 + 400) = v37;
  *(v0 + 416) = *(v0 + 208);
  v38 = *(v0 + 128);
  *(v0 + 320) = *(v0 + 112);
  *(v0 + 336) = v38;
  v39 = *(v0 + 160);
  *(v0 + 352) = *(v0 + 144);
  *(v0 + 368) = v39;
  v40 = *(v0 + 64);
  *(v0 + 256) = *(v0 + 48);
  *(v0 + 272) = v40;
  v41 = *(v0 + 96);
  *(v0 + 288) = *(v0 + 80);
  *(v0 + 304) = v41;
  v42 = *(v0 + 32);
  *(v0 + 224) = *(v0 + 16);
  *(v0 + 240) = v42;
  v43 = sub_1002223D8(v25, v24, v0 + 2016, v21 & 1, (v0 + 224));
  v44 = *(v26 + 8);
  *(v0 + 1912) = v44;
  *(v0 + 1920) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v25, v27);
  if ((v43 & 1) == 0)
  {
    v55 = *(v0 + 1840);
    static Logger.install.getter();
    v56 = v55;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 1848);
    if (v59)
    {
      v61 = *(v0 + 1840);
      v267 = *(v0 + 1704);
      v269 = *(v0 + 1720);
      v263 = v58;
      v62 = *(v0 + 1672);
      v259 = *(v0 + 1656);
      v63 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      *v63 = 138412546;
      *(v63 + 4) = v61;
      *v260 = v61;
      *(v63 + 12) = 2082;
      v265 = v60;
      v64 = *(v279 + v277);
      v285[0] = v261;
      v65 = *(*v64 + class metadata base offset for ManagedBuffer + 16);
      v66 = (*(*v64 + 48) + 3) & 0x1FFFFFFFCLL;
      v67 = v61;
      os_unfair_lock_lock((v64 + v66));
      v273(v62, v64 + *(v270 + 28) + v65, v259);
      os_unfair_lock_unlock((v64 + v66));
      v68 = AppInstallRequestType.rawValue.getter();
      v70 = v69;
      v44(v62, v259);
      v71 = sub_1002346CC(v68, v70, v285);

      *(v63 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v57, v263, "[%@] Not eligible for install of type: %{public}s", v63, 0x16u);
      sub_1000032A8(v260, &qword_10077F920);

      sub_10000710C(v261);

      v265(v269, v267);
    }

    else
    {
      v100 = *(v0 + 1720);
      v101 = *(v0 + 1704);

      v60(v100, v101);
    }

    v102 = *(v0 + 1608);
    v103 = v102[3];
    v104 = v102[7];
    v105 = sub_100006D8C(v102, v103);
    *(v0 + 1256) = v103;
    *(v0 + 1264) = v104;
    v106 = sub_10020A748((v0 + 1232));
    (*(*(v103 - 8) + 16))(v106, v105, v103);
    v107 = swift_task_alloc();
    *(v0 + 2000) = v107;
    *v107 = v0;
    v107[1] = sub_100218EB4;

    return sub_10021A8B8(v0 + 1232);
  }

  v45 = *(v0 + 1688);
  v46 = *(v0 + 1680);
  v47 = *(v0 + 1664);
  v48 = *(v279 + v277);
  v49 = *(v0 + 1656);
  v50 = *(*v48 + class metadata base offset for ManagedBuffer + 16);
  v51 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v48 + v51));
  v273(v45, v48 + *(v270 + 28) + v50, v49);
  os_unfair_lock_unlock((v48 + v51));
  (*(v47 + 104))(v46, enum case for AppInstallRequestType.automaticUpdate(_:), v49);
  sub_100223050(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v52 = *(v0 + 1688);
  v53 = *(v0 + 1680);
  v54 = *(v0 + 1656);
  if (*(v0 + 1464) == *(v0 + 1480) && *(v0 + 1472) == *(v0 + 1488))
  {
    v44(*(v0 + 1680), *(v0 + 1656));
    v44(v52, v54);
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v44(v53, v54);
    v44(v52, v54);

    if ((v72 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  *(v0 + 751) = 0;
  v73 = String._bridgeToObjectiveC()();
  v74 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v73, v74, (v0 + 751));

  if (*(v0 + 751) && !AppBooleanValue)
  {
    v168 = *(v0 + 1840);
    static Logger.install.getter();
    v169 = v168;
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v170, v171))
    {
      v172 = *(v0 + 1840);
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v173 = 138412290;
      *(v173 + 4) = v172;
      *v174 = v172;
      v175 = v172;
      _os_log_impl(&_mh_execute_header, v170, v171, "[%@] Automatic updates are disabled", v173, 0xCu);
      sub_1000032A8(v174, &qword_10077F920);
    }

    v176 = *(v0 + 1848);
    v161 = *(v0 + 1816);
    v177 = *(v0 + 1792);
    v178 = *(v0 + 1704);

    v176(v177, v178);
    v164 = type metadata accessor for MarketplaceKitError();
    sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v166 = v179;
    v167 = &enum case for MarketplaceKitError.featureUnavailable(_:);
    goto LABEL_54;
  }

LABEL_18:
  if (v268)
  {
    if ((v266 != 0x6C7074656B72616DLL || v268 != 0xEB00000000656361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_34:
    v109 = *(v279 + v277);
    v110 = *(*v109 + class metadata base offset for ManagedBuffer + 16);
    v111 = (*(*v109 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v109 + v111));
    sub_10020A980(v109 + v110, v0 + 1392);
    os_unfair_lock_unlock((v109 + v111));
    sub_1001F0C48(&qword_10077E970);
    if (!swift_dynamicCast())
    {
      v152 = *(v0 + 1840);
      static Logger.install.getter();
      v153 = v152;
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = *(v0 + 1840);
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v157 = 138412290;
        *(v157 + 4) = v156;
        *v158 = v156;
        v159 = v156;
        _os_log_impl(&_mh_execute_header, v154, v155, "[%@] Marketplace not eligible for this distributor", v157, 0xCu);
        sub_1000032A8(v158, &qword_10077F920);
      }

      v160 = *(v0 + 1848);
      v161 = *(v0 + 1816);
      v162 = *(v0 + 1784);
      v163 = *(v0 + 1704);

      v160(v162, v163);
      v164 = type metadata accessor for MarketplaceKitError();
      sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      v166 = v165;
      v167 = &enum case for MarketplaceKitError.installationOfMarketplaceDenied(_:);
      goto LABEL_54;
    }

LABEL_36:
    v112 = (v0 + 864);
    v113 = *(v0 + 1648);
    v114 = *(v0 + 1640);
    v115 = *(v0 + 1632);
    v116 = *(v0 + 1608);
    v117 = (*sub_100006D8C(v116, v116[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v119 = v117[4];
    v118 = v117[5];
    v120 = v117[3];
    *(v0 + 959) = *(v117 + 95);
    *(v0 + 928) = v119;
    *(v0 + 944) = v118;
    *(v0 + 912) = v120;
    v122 = v117[1];
    v121 = v117[2];
    *(v0 + 864) = *v117;
    *(v0 + 880) = v122;
    *(v0 + 896) = v121;
    sub_10020A7AC(v0 + 864, v0 + 752);
    static Platform.iOS.getter();
    Platform.description.getter();
    (*(v114 + 8))(v113, v115);
    v123 = String.lowercased()();

    if (*(v283 + 16))
    {
      v124 = sub_10052213C(v123._countAndFlagsBits, v123._object);
      v126 = v125;

      if (v126)
      {
        v127 = (*(v283 + 56) + 40 * v124);
        v128 = *v127;
        v129 = v127[1];
        v130 = v127[2];
        v131 = v127[3];
        v132 = v127[4];
        *(v0 + 1936) = v132;

        if (sub_1005AE2EC(v128, v129, v130))
        {
          v133 = (*(v0 + 1816) + *(v0 + 2052));
          *(v0 + 432) = *v133;
          v134 = v133[4];
          v136 = v133[1];
          v135 = v133[2];
          *(v0 + 480) = v133[3];
          *(v0 + 496) = v134;
          *(v0 + 448) = v136;
          *(v0 + 464) = v135;
          v137 = v133[8];
          v139 = v133[5];
          v138 = v133[6];
          *(v0 + 544) = v133[7];
          *(v0 + 560) = v137;
          *(v0 + 512) = v139;
          *(v0 + 528) = v138;
          v140 = v133[12];
          v142 = v133[9];
          v141 = v133[10];
          *(v0 + 608) = v133[11];
          *(v0 + 624) = v140;
          *(v0 + 576) = v142;
          *(v0 + 592) = v141;
          sub_100337D34(v0 + 864, (v0 + 1040));
          v143 = *(v0 + 1048);
          if (v143)
          {
            v144 = *(v0 + 1608);
            *(v0 + 976) = *(v0 + 1040);
            *(v0 + 984) = v143;
            v145 = *(v0 + 1072);
            *(v0 + 992) = *(v0 + 1056);
            *(v0 + 1008) = v145;
            *(v0 + 1024) = *(v0 + 1088);
            v146 = v116[3];
            v147 = v144[4];
            v148 = v144[7];
            v149 = sub_100006D8C(v144, v146);
            *(v0 + 1128) = v146;
            *(v0 + 1136) = v147;
            *(v0 + 1144) = v148;
            v150 = sub_10020A748((v0 + 1104));
            (*(*(v146 - 8) + 16))(v150, v149, v146);
            v151 = swift_task_alloc();
            *(v0 + 1944) = v151;
            *v151 = v0;
            v151[1] = sub_100217A18;

            return sub_10021B35C(v0 + 976, v0 + 1104);
          }

          else
          {
            v284 = (v0 + 1512);
            v231 = *(v0 + 1840);

            static Logger.install.getter();
            v232 = v231;
            v233 = Logger.logObject.getter();
            v234 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v233, v234))
            {
              v235 = *(v0 + 1840);
              v236 = swift_slowAlloc();
              v237 = swift_slowAlloc();
              *v236 = 138412290;
              *(v236 + 4) = v235;
              *v237 = v235;
              v238 = v235;
              _os_log_impl(&_mh_execute_header, v233, v234, "[%@] No eligible variant found", v236, 0xCu);
              sub_1000032A8(v237, &qword_10077F920);
            }

            v239 = *(v0 + 1848);
            v240 = *(v0 + 1744);
            v241 = *(v0 + 1704);
            v281 = *(v0 + 1608);

            v243 = *(v0 + 440);
            v242 = *(v0 + 448);
            v239(v240, v241);
            sub_1001F0C48(&unk_100784480);
            v244 = swift_allocObject();
            *(v244 + 16) = xmmword_10069F230;
            *(v244 + 32) = 0x44496D657469;
            *(v244 + 40) = 0xE600000000000000;
            *(v0 + 1560) = v242;
            *(v244 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
            *(v244 + 56) = v245;
            *(v244 + 72) = &type metadata for String;
            *(v244 + 80) = 1684633189;
            *(v244 + 88) = 0xE400000000000000;
            *(v0 + 1568) = v243;
            *(v244 + 96) = dispatch thunk of CustomStringConvertible.description.getter();
            *(v244 + 104) = v246;
            *(v244 + 120) = &type metadata for String;
            *(v244 + 128) = 0xD000000000000015;
            *(v244 + 136) = 0x80000001006C47F0;
            v247 = *v112;
            *v284 = *v112;
            *(v244 + 144) = v247;
            *(v244 + 168) = &type metadata for String;
            *(v244 + 176) = 0xD000000000000019;
            *(v244 + 184) = 0x80000001006C4810;
            v248 = *(v0 + 880);
            *(v0 + 1592) = v248;
            *(v0 + 1576) = v248;
            sub_100222DF8(v284, v0 + 1528);
            sub_100005934(v0 + 1592, v0 + 1584, &unk_10077FB40);
            sub_1001F0C48(&unk_10077FB40);
            sub_1001F766C();
            v249 = BidirectionalCollection<>.joined(separator:)();
            v251 = v250;
            sub_1000032A8(v0 + 1592, &unk_10077FB40);
            *(v244 + 216) = &type metadata for String;
            *(v244 + 192) = v249;
            *(v244 + 200) = v251;
            sub_10020A92C(v0 + 864);
            v252 = sub_100528684(v244);
            swift_setDeallocating();
            sub_1001F0C48(&unk_10077F9B0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_10039E440(2, v252);

            v253 = v116[3];
            v254 = v281[4];
            v255 = v281[7];
            v256 = sub_100006D8C(v281, v253);
            v257 = swift_task_alloc();
            *(v0 + 1992) = v257;
            *v257 = v0;
            v257[1] = sub_100218B28;
            v258 = *(v0 + 1616);

            return sub_1002213E8(v256, v258, v253, v254, v255);
          }
        }

        v193 = *(v0 + 1840);
        static Logger.install.getter();
        v194 = v193;
        sub_10020A7AC(v0 + 864, v0 + 640);

        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.error.getter();

        sub_10020A92C(v0 + 864);
        v197 = os_log_type_enabled(v195, v196);
        v198 = *(v0 + 1848);
        if (v197)
        {
          v199 = *(v0 + 1840);
          v278 = *(v0 + 1704);
          v280 = *(v0 + 1736);
          v276 = *(v0 + 1848);
          v200 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v285[0] = swift_slowAlloc();
          *v200 = 138412802;
          *(v200 + 4) = v199;
          *v272 = v199;
          v201 = v131;
          *(v200 + 12) = 2082;
          v202 = v199;

          v203 = sub_1002346CC(v131, v132, v285);

          *(v200 + 14) = v203;
          *(v200 + 22) = 2082;
          *(v0 + 1184) = *(v0 + 952);
          v204 = *(v0 + 936);
          *(v0 + 1152) = *(v0 + 920);
          *(v0 + 1168) = v204;
          v205 = *(v0 + 1176);
          v206 = *(v0 + 1184);

          sub_10020A92C(v0 + 864);
          v207 = v206;
          v131 = v201;
          v208 = sub_1002346CC(v205, v207, v285);
          sub_100222DA4(v0 + 1152);
          *(v200 + 24) = v208;
          _os_log_impl(&_mh_execute_header, v195, v196, "[%@] Minimum OS version not satisfied (Minimum: %{public}s, Actual: %{public}s)", v200, 0x20u);
          sub_1000032A8(v272, &qword_10077F920);

          swift_arrayDestroy();

          v276(v280, v278);
        }

        else
        {
          v226 = *(v0 + 1736);
          v227 = *(v0 + 1704);
          sub_10020A92C(v0 + 864);

          v198(v226, v227);
        }

        v161 = *(v0 + 1816);
        v164 = type metadata accessor for MarketplaceKitError();
        sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
        swift_allocError();
        v166 = v228;
        *v228 = v131;
        v228[1] = v132;
        v167 = &enum case for MarketplaceKitError.minimumPlatformVersionNotSatisfied(_:);
        goto LABEL_54;
      }

      sub_10020A92C(v0 + 864);
    }

    else
    {
      sub_10020A92C(v0 + 864);
    }

    v180 = *(v0 + 1840);
    static Logger.install.getter();
    v181 = v180;
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = *(v0 + 1840);
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *v185 = 138412290;
      *(v185 + 4) = v184;
      *v186 = v184;
      v187 = v184;
      _os_log_impl(&_mh_execute_header, v182, v183, "[%@] No minimum OS specified for the current platform", v185, 0xCu);
      sub_1000032A8(v186, &qword_10077F920);
    }

    v188 = *(v0 + 1848);
    v161 = *(v0 + 1816);
    v189 = *(v0 + 1728);
    v190 = *(v0 + 1704);

    v188(v189, v190);
    v164 = type metadata accessor for MarketplaceKitError();
    sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v166 = v191;
    v167 = &enum case for MarketplaceKitError.unsupportedPlatform(_:);
LABEL_54:
    (*(*(v164 - 8) + 104))(v166, *v167, v164);
    swift_willThrow();
    sub_1000032A8(v0 + 1192, &unk_10077FA50);
    sub_100223344(v161, type metadata accessor for ADP);

    v192 = *(v0 + 8);

    return v192();
  }

  v108 = v262;
  if ((v264 & 1) == 0)
  {
    v108 = 1;
  }

  if ((v108 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v76 = *(v279 + v277);
  v77 = *(*v76 + class metadata base offset for ManagedBuffer + 16);
  v78 = (*(*v76 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v76 + v78));
  sub_10020A980(v76 + v77, v0 + 1272);
  os_unfair_lock_unlock((v76 + v78));
  sub_1001F0C48(&qword_10077E970);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v80 = result;
  v81 = [result isWebDistributionAppInstallationAllowed];

  v82 = *(v0 + 1840);
  if (v81)
  {
    static Logger.install.getter();
    v83 = v82;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1848);
    if (v86)
    {
      v88 = *(v0 + 1840);
      v274 = *(v0 + 1704);
      v275 = *(v0 + 1776);
      v271 = *(v0 + 1848);
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v89 = 138412546;
      *(v89 + 4) = v88;
      *v90 = v88;
      *(v89 + 12) = 2082;
      v92 = *(v279 + v277);
      v285[0] = v91;
      v93 = *(*v92 + class metadata base offset for ManagedBuffer + 16);
      v94 = (*(*v92 + 48) + 3) & 0x1FFFFFFFCLL;
      v95 = v88;
      os_unfair_lock_lock((v92 + v94));
      sub_10020A980(v92 + v93, v0 + 1352);
      os_unfair_lock_unlock((v92 + v94));
      sub_100006D8C((v0 + 1352), *(v0 + 1376));
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      sub_10000710C(v0 + 1352);
      v99 = sub_1002346CC(v96, v98, v285);

      *(v89 + 14) = v99;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%@] Allowing distribution from %{public}s", v89, 0x16u);
      sub_1000032A8(v90, &qword_10077F920);

      sub_10000710C(v91);

      v271(v275, v274);
    }

    else
    {
      v229 = *(v0 + 1776);
      v230 = *(v0 + 1704);

      v87(v229, v230);
    }

    goto LABEL_36;
  }

  static Logger.install.getter();
  v209 = v82;
  v210 = Logger.logObject.getter();
  v211 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v210, v211))
  {
    v212 = *(v0 + 1840);
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    *v213 = 138412290;
    *(v213 + 4) = v212;
    *v214 = v212;
    v215 = v212;
    _os_log_impl(&_mh_execute_header, v210, v211, "[%@] Web distribution is restricted", v213, 0xCu);
    sub_1000032A8(v214, &qword_10077F920);
  }

  v216 = *(v0 + 1848);
  v217 = *(v0 + 1768);
  v218 = *(v0 + 1704);
  v219 = *(v0 + 1608);

  v216(v217, v218);
  v221 = v219[3];
  v220 = v219[4];
  v222 = v219[7];
  v223 = sub_100006D8C(v219, v221);
  v224 = swift_task_alloc();
  *(v0 + 1928) = v224;
  *v224 = v0;
  v224[1] = sub_1002176B8;
  v225 = *(v0 + 1616);

  return sub_10021EE0C(0, 1, v223, v225, v221, v220, v222);
}

uint64_t sub_1002176B8()
{

  return _swift_task_switch(sub_1002177E0, 0, 0);
}

uint64_t sub_1002177E0()
{
  v1 = *(v0 + 1816);
  type metadata accessor for InternalError();
  sub_100223050(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100217A18()
{
  v2 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {

    sub_1000032A8(v2 + 1040, &qword_10077EC80);
    sub_10020A92C(v2 + 864);
    v3 = sub_1002195EC;
  }

  else
  {
    sub_10000710C(v2 + 1104);
    v3 = sub_100217B90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100217B90()
{
  v68 = v0;
  v1 = *(v0 + 863);
  if (v1)
  {
    v65 = *(v0 + 1912);
    v2 = *(v0 + 1896);
    v3 = *(v0 + 1888);
    v63 = *(v0 + 1840);
    v4 = *(v0 + 1672);
    v5 = *(v0 + 1656);
    v6 = *(*(v0 + 1832) + *(v0 + 1880));
    v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    v2(v4, v6 + *(v3 + 28) + v7, v5);
    os_unfair_lock_unlock((v6 + v8));
    sub_10020A92C(v0 + 864);

    v9 = sub_100214FDC(v4, v63, v1);
    v65(v4, v5);
    if (v9 || (*(*(v0 + 1832) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) == 1 ? (v10 = *(v0 + 863) == 2) : (v10 = 0), v10))
    {
      v27 = swift_task_alloc();
      *(v0 + 1960) = v27;
      *v27 = v0;
      v27[1] = sub_10021841C;
      v28 = *(v0 + 1624);
      v29 = *(v0 + 1608);

      return sub_10021D26C(v28, v29);
    }

    else
    {
      v11 = *(v0 + 1840);
      sub_1000032A8(v0 + 1040, &qword_10077EC80);
      static Logger.install.getter();
      v12 = v11;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 1840);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v15;
        *v17 = v15;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Mismatched installType", v16, 0xCu);
        sub_1000032A8(v17, &qword_10077F920);
      }

      v19 = *(v0 + 1848);
      v20 = *(v0 + 1816);
      v21 = *(v0 + 1760);
      v22 = *(v0 + 1704);

      v19(v21, v22);
      v23 = type metadata accessor for MarketplaceKitError();
      sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, enum case for MarketplaceKitError.mismatchedInstallType(_:), v23);
      swift_willThrow();
      sub_1000032A8(v0 + 1192, &unk_10077FA50);
      sub_100223344(v20, type metadata accessor for ADP);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v30 = *(v0 + 1840);
    sub_1000032A8(v0 + 1040, &qword_10077EC80);
    sub_10020A92C(v0 + 864);

    static Logger.install.getter();
    v31 = v30;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v60 = *(v0 + 1912);
      v59 = *(v0 + 1896);
      v34 = *(v0 + 1880);
      v66 = *(v0 + 1848);
      v35 = *(v0 + 1840);
      v36 = *(v0 + 1832);
      v62 = *(v0 + 1704);
      v64 = *(v0 + 1752);
      v37 = *(v0 + 1672);
      v57 = *(v0 + 1656);
      v58 = *(v0 + 1888);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67 = v61;
      *v38 = 138412546;
      *(v38 + 4) = v35;
      *v39 = v35;
      *(v38 + 12) = 2082;
      v40 = *(v36 + v34);
      v41 = *(*v40 + class metadata base offset for ManagedBuffer + 16);
      v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;
      v43 = v35;
      os_unfair_lock_lock((v40 + v42));
      v59(v37, v40 + *(v58 + 28) + v41, v57);
      os_unfair_lock_unlock((v40 + v42));
      v44 = AppInstallRequestType.rawValue.getter();
      v46 = v45;
      v60(v37, v57);
      v47 = sub_1002346CC(v44, v46, &v67);

      *(v38 + 14) = v47;
      sub_1000032A8(v39, &qword_10077F920);

      sub_10000710C(v61);

      v66(v64, v62);
    }

    else
    {
      v48 = *(v0 + 1848);
      v49 = *(v0 + 1752);
      v50 = *(v0 + 1704);

      v48(v49, v50);
    }

    v51 = *(v0 + 1608);
    v52 = v51[3];
    v53 = v51[7];
    v54 = sub_100006D8C(v51, v52);
    *(v0 + 1336) = v52;
    *(v0 + 1344) = v53;
    v55 = sub_10020A748((v0 + 1312));
    (*(*(v52 - 8) + 16))(v55, v54, v52);
    v56 = swift_task_alloc();
    *(v0 + 1976) = v56;
    *v56 = v0;
    v56[1] = sub_100218774;

    return sub_10021C718(v0 + 1192, v0 + 1312);
  }
}

uint64_t sub_10021841C()
{
  v2 = *v1;
  *(*v1 + 1968) = v0;

  if (v0)
  {
    sub_1000032A8(v2 + 1040, &qword_10077EC80);
    v3 = sub_100219994;
  }

  else
  {
    v3 = sub_10021857C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021857C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1600);
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100222E54(v2, v3);
  v4 = (v3 + *(type metadata accessor for ADPPreflightResultingMetadata(0) + 20));
  v6 = *(v0 + 1008);
  v5 = *(v0 + 1024);
  v7 = *(v0 + 992);
  *v4 = *(v0 + 976);
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
  sub_100223344(v1, type metadata accessor for ADP);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100218774()
{
  v2 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v3 = sub_1002197C0;
  }

  else
  {
    sub_10000710C(v2 + 1312);
    v3 = sub_1002188C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002188C4()
{
  v1 = *(v0 + 1816);
  v2 = type metadata accessor for MarketplaceKitError();
  sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, enum case for MarketplaceKitError.mismatchedInstallType(_:), v2);
  swift_willThrow();
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100218B28()
{

  return _swift_task_switch(sub_100218C50, 0, 0);
}

uint64_t sub_100218C50()
{
  v1 = *(v0 + 1816);
  v2 = type metadata accessor for MarketplaceKitError();
  sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, enum case for MarketplaceKitError.noSupportedVariant(_:), v2);
  swift_willThrow();
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100218EB4()
{
  v2 = *v1;
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v3 = sub_100219418;
  }

  else
  {
    sub_10000710C(v2 + 1232);
    v3 = sub_100219004;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100219004()
{
  v1 = *(v0 + 1816);
  v2 = type metadata accessor for MarketplaceKitError();
  sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, enum case for MarketplaceKitError.featureUnavailable(_:), v2);
  swift_willThrow();
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100219268()
{
  sub_100223344(*(v0 + 1816), type metadata accessor for ADP);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100219418()
{
  v1 = *(v0 + 1816);
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);
  sub_10000710C(v0 + 1232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002195EC()
{
  v1 = *(v0 + 1816);
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);
  sub_10000710C(v0 + 1104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002197C0()
{
  v1 = *(v0 + 1816);
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);
  sub_10000710C(v0 + 1312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100219994()
{
  v1 = *(v0 + 1816);
  sub_1000032A8(v0 + 1192, &unk_10077FA50);
  sub_100223344(v1, type metadata accessor for ADP);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100219B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = type metadata accessor for Logger();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallRequestType();
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();

  return _swift_task_switch(sub_100219D10, 0, 0);
}

uint64_t sub_100219D10()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = *(v0[36] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v5 = v4 + *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_10020A980(v5, (v0 + 2));
  os_unfair_lock_unlock((v4 + v6));
  v77 = sub_10021D7F0(v3, v1, v2, v0 + 2);
  sub_10000710C((v0 + 2));
  os_unfair_lock_lock((v4 + v6));
  sub_10020A980(v5, (v0 + 7));
  os_unfair_lock_unlock((v4 + v6));
  sub_1001F0C48(&qword_10077E970);
  v75 = v6;
  v76 = v5;
  if (swift_dynamicCast())
  {
    v8 = v0[55];
    v7 = v0[56];
    v10 = v0[44];
    v9 = v0[45];

    os_unfair_lock_lock((v4 + v6));
    v67 = *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
    v69 = *(v9 + 16);
    v69(v7, v5 + v67, v10);
    os_unfair_lock_unlock((v4 + v6));
    v74 = enum case for AppInstallRequestType.install(_:);
    v72 = *(v9 + 104);
    v72(v8);
    sub_100223050(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v0[27] == v0[29] && v0[28] == v0[30])
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v12 = v0[56];
    v13 = v0[44];
    v14 = *(v0[45] + 8);
    v14(v0[55], v13);
    v71 = v14;
    v14(v12, v13);

    if ((v11 & 1) == 0)
    {
      v15 = v0[53];
      v16 = v0[54];
      v17 = v0[44];
      os_unfair_lock_lock((v4 + v6));
      v69(v16, v76 + v67, v17);
      os_unfair_lock_unlock((v4 + v6));
      (v72)(v15, enum case for AppInstallRequestType.update(_:), v17);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = v0[53];
      v18 = v0[54];
      v20 = v0[44];
      if (v0[31] == v0[33] && v0[32] == v0[34])
      {
        v71(v0[53], v0[44]);
        v71(v18, v20);
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v71(v19, v20);
        v71(v18, v20);

        if ((v21 & 1) == 0)
        {
          v5 = v76;
          goto LABEL_17;
        }
      }
    }

    v5 = v76;
    if (v77 == 4 || v77 == 2)
    {
      v22 = v0[52];
      (v72)(v22, enum case for AppInstallRequestType.update(_:), v0[44]);
      *(swift_task_alloc() + 16) = v22;
      os_unfair_lock_lock((v4 + v6));
      sub_100223834(v76);
      os_unfair_lock_unlock((v4 + v6));
      v23 = v0[52];
      v24 = v0 + 43;
      v25 = v0[44];

      v71(v23, v25);
      static Logger.install.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = "[%@] Allowing web update";
LABEL_38:
        v56 = *v24;
        v57 = v0[36];
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = *(v57 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v58 + 4) = v60;
        *v59 = v60;
        v61 = v60;
        _os_log_impl(&_mh_execute_header, v26, v27, v28, v58, 0xCu);
        sub_1000032A8(v59, &qword_10077F920);

LABEL_40:
        v62 = v0[39];
        v63 = v0[40];

        (*(v63 + 8))(v56, v62);
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v74 = enum case for AppInstallRequestType.install(_:);
  }

LABEL_17:
  v29 = v0[50];
  v30 = v0[51];
  v32 = v0[44];
  v31 = v0[45];
  os_unfair_lock_lock((v4 + v6));
  v66 = *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
  v68 = *(v31 + 16);
  v68(v30, v5 + v66, v32);
  os_unfair_lock_unlock((v4 + v6));
  v73 = *(v31 + 104);
  v73(v29, v74, v32);
  sub_100223050(&qword_10077E8F8, &type metadata accessor for AppInstallRequestType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[19] == v0[21] && v0[20] == v0[22])
  {
    v33 = 1;
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v34 = v0[51];
  v35 = v0[44];
  v36 = *(v0[45] + 8);
  v36(v0[50], v35);
  v70 = v36;
  v36(v34, v35);

  if ((v33 & 1) != 0 && v77 == 2)
  {
    sub_100005934(v0[35], (v0 + 12), &unk_10077FA50);
    v37 = v0[15];
    if (v37)
    {
      v38 = v0[16];
      sub_100006D8C(v0 + 12, v0[15]);
      v39 = (*(v38 + 40))(v37, v38);
      v41 = v40;
      sub_10000710C((v0 + 12));
      if (v39 == 0xD000000000000014 && 0x80000001006C47D0 == v41)
      {

        goto LABEL_29;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
LABEL_29:
        v43 = v0[49];
        v73(v43, enum case for AppInstallRequestType.update(_:), v0[44]);
        *(swift_task_alloc() + 16) = v43;
        os_unfair_lock_lock((v4 + v6));
        sub_100223834(v76);
        os_unfair_lock_unlock((v4 + v6));
        v44 = v0[49];
        v45 = v0[44];
        v24 = v0 + 42;

        v70(v44, v45);
        static Logger.install.getter();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = "[%@] Allowing update from TestFlight app";
          goto LABEL_38;
        }

LABEL_39:
        v56 = *v24;
        goto LABEL_40;
      }
    }

    else
    {
      sub_1000032A8((v0 + 12), &unk_10077FA50);
    }
  }

  v46 = v0[47];
  v47 = v0[48];
  v48 = v0[44];
  os_unfair_lock_lock((v4 + v6));
  v68(v47, v76 + v66, v48);
  os_unfair_lock_unlock((v4 + v6));
  v73(v46, v74, v48);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v50 = v0[47];
  v49 = v0[48];
  v51 = v0[44];
  if (v0[23] == v0[25] && v0[24] == v0[26])
  {
    v70(v0[47], v0[44]);
    v70(v49, v51);
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v70(v50, v51);
    v70(v49, v51);

    if ((v52 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v77 == 3)
  {
    v53 = v0[46];
    v73(v53, enum case for AppInstallRequestType.promotion(_:), v0[44]);
    *(swift_task_alloc() + 16) = v53;
    os_unfair_lock_lock((v4 + v75));
    sub_100222D04(v76);
    os_unfair_lock_unlock((v4 + v75));
    v54 = v0[46];
    v55 = v0[44];
    v24 = v0 + 41;

    v70(v54, v55);
    static Logger.install.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = "[%@] Allowing promotion";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_41:

  v64 = v0[1];

  return v64(v77);
}

uint64_t sub_10021A8B8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1001F0C48(&unk_100780380);
  v2[13] = swift_task_alloc();
  type metadata accessor for MediaAPIMetadata();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for AppInstallRequestType();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10021A9E8, 0, 0);
}

uint64_t sub_10021A9E8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = **(v0 + 96);
  *(v0 + 152) = v5;
  v27 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v28 = v5;
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v10 = *(v4 + 16);
  v10(v2, v6 + *(v9 + 28) + v7, v3);
  os_unfair_lock_unlock((v6 + v8));
  v10(v1, v2, v3);
  v11 = (*(v4 + 88))(v1, v3);
  if (v11 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

    v12 = *(v0 + 8);

    return v12();
  }

  if (v11 != enum case for AppInstallRequestType.install(_:))
  {
    if (v11 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v11 != enum case for AppInstallRequestType.update(_:) && v11 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v11 != enum case for AppInstallRequestType.restore(_:) && v11 != enum case for AppInstallRequestType.deviceVPP(_:) && v11 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.userVPP(_:) && v11 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.upp(_:) && v11 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v14 = *(v0 + 96);
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v15 = type metadata accessor for ADPPreflightTask(0);
  *(v0 + 160) = v15;
  v16 = v14 + *(v15 + 20);
  v17 = v16 + *(type metadata accessor for ADP() + 24);
  v18 = *(v14 + *(v15 + 28));
  v19 = *(v28 + v27);
  v21 = *(v17 + 8);
  v20 = *(v17 + 16);
  v22 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v23 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v24 = v18;
  os_unfair_lock_lock((v19 + v23));
  sub_10020A980(v19 + v22, v0 + 48);
  os_unfair_lock_unlock((v19 + v23));
  *(v0 + 16) = v20;
  *(v0 + 24) = v21;
  *(v0 + 32) = 0;
  *(v0 + 40) = v24;
  v25 = swift_task_alloc();
  *(v0 + 168) = v25;
  *v25 = v0;
  v25[1] = sub_10021AE10;
  v26 = *(v0 + 112);

  return sub_10033EF00(v26);
}

uint64_t sub_10021AE10()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10021B2C8;
  }

  else
  {
    v2 = sub_10021AF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021AF24()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *v1;
  v4 = v1[1];
  v0[23] = v4;

  sub_100223344(v1, type metadata accessor for MediaAPIMetadata);
  v5 = *sub_100006D8C(v2, v2[3]);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_10021B028;
  v7 = v0[19];

  return (sub_10041E5E0)(v7, v3, v4, v5);
}

uint64_t sub_10021B028(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_10021B148, 0, 0);
}

uint64_t sub_10021B148()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[13];
    *(v0[12] + *(v0[20] + 32)) = 1;
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v1;
    v5[5] = v2;

    sub_1004F8754(0xD000000000000013, 0x80000001006C4890, v3, &unk_10069F320, v5);

    sub_1000032A8(v3, &unk_100780380);
  }

  sub_1002232F0((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021B2C8()
{
  sub_1002232F0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021B35C(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  v4 = type metadata accessor for Logger();
  v3[56] = v4;
  v3[57] = *(v4 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = type metadata accessor for ADP();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();

  return _swift_task_switch(sub_10021B48C, 0, 0);
}

id sub_10021B48C()
{
  v127 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = type metadata accessor for ADPPreflightTask(0);
  sub_100222D40(v3 + *(v4 + 20), v1);
  v5 = (*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v6 = *(v5 + 95);
  v7 = v5[5];
  v8 = v5[3];
  *(v0 + 80) = v5[4];
  *(v0 + 96) = v7;
  *(v0 + 111) = v6;
  *(v0 + 64) = v8;
  v9 = *v5;
  v10 = v5[2];
  *(v0 + 32) = v5[1];
  *(v0 + 48) = v10;
  *(v0 + 16) = v9;
  v11 = *(v3 + *(v4 + 28));
  sub_10020A7AC(v0 + 16, v0 + 128);
  if (sub_1005F5734())
  {
    sub_10020A92C(v0 + 16);
    static Logger.install.getter();
    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] App installation is restricted", v15, 0xCu);
      sub_1000032A8(v16, &qword_10077F920);
    }

    v19 = *(v0 + 456);
    v18 = *(v0 + 464);
    v20 = *(v0 + 448);
    v21 = *(v0 + 432);

    (*(v19 + 8))(v18, v20);
    v22 = v2[3];
    v23 = v21[4];
    v24 = v21[5];
    v25 = sub_100006D8C(v21, v22);
    v26 = swift_task_alloc();
    *(v0 + 544) = v26;
    *v26 = v0;
    v27 = sub_10021C61C;
    goto LABEL_30;
  }

  v28 = *(v0 + 504);
  v29 = *(v0 + 520) + *(v28 + 24);
  v30 = *(v29 + 168);
  if (v30)
  {
    if ((*(v29 + 160) != 0x6C7074656B72616DLL || v30 != 0xEB00000000656361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_16:
      v53 = *(**(v0 + 440) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v54 = *(*v53 + class metadata base offset for ManagedBuffer + 16);
      v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v53 + v55));
      sub_10020A980(v53 + v54, v0 + 368);
      os_unfair_lock_unlock((v53 + v55));
      sub_1001F0C48(&qword_10077E970);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      v57 = *(v0 + 408);
      v56 = *(v0 + 416);
      v58 = objc_opt_self();

      result = [v58 sharedConnection];
      if (result)
      {
        v59 = result;
        v60 = String._bridgeToObjectiveC()();

        v61 = [v59 isMarketplaceAllowed:v60];

        if (!v61)
        {
          sub_10020A92C(v0 + 16);
          static Logger.install.getter();
          v95 = v11;

          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();

          v98 = os_log_type_enabled(v96, v97);
          v99 = *(v0 + 488);
          v101 = *(v0 + 448);
          v100 = *(v0 + 456);
          if (v98)
          {
            v125 = *(v0 + 448);
            v102 = swift_slowAlloc();
            v122 = v99;
            v103 = swift_slowAlloc();
            v119 = v96;
            v104 = swift_slowAlloc();
            v126[0] = v104;
            *v102 = 138412546;
            *(v102 + 4) = v95;
            *v103 = v95;
            *(v102 + 12) = 2080;
            v105 = v95;
            v106 = sub_1002346CC(v57, v56, v126);

            *(v102 + 14) = v106;
            _os_log_impl(&_mh_execute_header, v119, v97, "[%@] Installations from %s are restricted", v102, 0x16u);
            sub_1000032A8(v103, &qword_10077F920);

            sub_10000710C(v104);

            (*(v100 + 8))(v122, v125);
          }

          else
          {

            (*(v100 + 8))(v99, v101);
          }

          v115 = *(v0 + 432);
          v22 = v2[3];
          v23 = v115[4];
          v24 = v115[5];
          v25 = sub_100006D8C(v115, v22);
          v116 = swift_task_alloc();
          *(v0 + 536) = v116;
          *v116 = v0;
          v116[1] = sub_10021C520;
          v84 = *(v0 + 440);
          v85 = 1;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

LABEL_47:
      __break(1u);
      return result;
    }
  }

  else if ((*(v29 + 184) & 1) != 0 || (*(v29 + 176) & 1) == 0)
  {
    goto LABEL_16;
  }

  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v32 = result;
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 isMarketplaceAllowed:v33];

  if ((v34 & 1) == 0)
  {
    v35 = *(v0 + 520);
    v36 = *(v0 + 512);
    sub_10020A92C(v0 + 16);
    static Logger.install.getter();
    sub_100222D40(v35, v36);
    v37 = v11;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 512);
    v42 = *(v0 + 496);
    v43 = *(v0 + 448);
    v44 = *(v0 + 456);
    if (v40)
    {
      v123 = *(v0 + 448);
      v45 = swift_slowAlloc();
      log = v38;
      v46 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v126[0] = v118;
      *v45 = 138412546;
      *(v45 + 4) = v37;
      *v46 = v37;
      *(v45 + 12) = 2080;
      v47 = v41 + *(v28 + 24);
      v120 = v42;
      v48 = v39;
      v49 = *(v47 + 24);
      v50 = *(v47 + 32);
      v51 = v37;

      sub_100223344(v41, type metadata accessor for ADP);
      v52 = sub_1002346CC(v49, v50, v126);

      *(v45 + 14) = v52;
      _os_log_impl(&_mh_execute_header, log, v48, "[%@] Installation of %s is restricted", v45, 0x16u);
      sub_1000032A8(v46, &qword_10077F920);

      sub_10000710C(v118);

      (*(v44 + 8))(v120, v123);
    }

    else
    {

      sub_100223344(v41, type metadata accessor for ADP);
      (*(v44 + 8))(v42, v43);
    }

    v83 = *(v0 + 432);
    v22 = v2[3];
    v23 = v83[4];
    v24 = v83[5];
    v25 = sub_100006D8C(v83, v22);
    v26 = swift_task_alloc();
    *(v0 + 528) = v26;
    *v26 = v0;
    v27 = sub_10021C2A8;
LABEL_30:
    v26[1] = v27;
    v84 = *(v0 + 440);
    v85 = 0;
LABEL_31:

    return sub_10021EE0C(v85, 0, v25, v84, v22, v23, v24);
  }

LABEL_20:
  v62 = sub_1004FED84(*(v29 + 152));
  sub_10020A92C(v0 + 16);
  if (v62[2])
  {
    static Logger.install.getter();
    v63 = v11;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 472);
    v69 = *(v0 + 448);
    v68 = *(v0 + 456);
    if (v66)
    {
      v124 = *(v0 + 448);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v126[0] = v72;
      *v70 = 138412546;
      *(v70 + 4) = v63;
      *v71 = v63;
      *(v70 + 12) = 2080;
      v73 = v63;
      v74 = Array.description.getter();
      v121 = v67;
      v76 = sub_1002346CC(v74, v75, v126);

      *(v70 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%@] Mismatched capabilities: %s", v70, 0x16u);
      sub_1000032A8(v71, &qword_10077F920);

      sub_10000710C(v72);

      (*(v68 + 8))(v121, v124);
    }

    else
    {

      (*(v68 + 8))(v67, v69);
    }

    v81 = type metadata accessor for MarketplaceKitError();
    sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    *v82 = v62;
    (*(*(v81 - 8) + 104))(v82, enum case for MarketplaceKitError.missingCapabilities(_:), v81);
LABEL_40:
    v114 = *(v0 + 520);
    swift_willThrow();
    sub_100223344(v114, type metadata accessor for ADP);

    v80 = *(v0 + 8);
    goto LABEL_41;
  }

  v77 = *(v0 + 424);

  v78 = *(v77 + 40);
  v79 = sub_1004FF1E8();
  if ((v79 & 0x8000000000000000) != 0 || v79 < v78)
  {
    v86 = *(v0 + 424);
    static Logger.install.getter();
    sub_100223458(v86, v0 + 240);
    v87 = v11;
    sub_100223458(v86, v0 + 304);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 424);
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412802;
      *(v92 + 4) = v87;
      *v93 = v87;
      *(v92 + 12) = 2050;
      v94 = v87;
      sub_1002234B4(v91);
      *(v92 + 14) = v78;
      sub_1002234B4(v91);
      *(v92 + 22) = 2050;
      *(v92 + 24) = sub_1004FF1E8();
      _os_log_impl(&_mh_execute_header, v88, v89, "[%@] Insufficient space available. Need %{public}llu, available: %{public}ld", v92, 0x20u);
      sub_1000032A8(v93, &qword_10077F920);
    }

    else
    {
      sub_1002234B4(*(v0 + 424));
      sub_1002234B4(v91);
    }

    v107 = *(v0 + 480);
    v108 = *(v0 + 448);
    v109 = *(v0 + 456);

    (*(v109 + 8))(v107, v108);
    v110 = type metadata accessor for MarketplaceKitError();
    sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v112 = v111;
    v113 = [objc_opt_self() bytes];
    sub_100223508();
    Measurement.init(value:unit:)();
    (*(*(v110 - 8) + 104))(v112, enum case for MarketplaceKitError.insufficientStorageSpace(_:), v110);
    goto LABEL_40;
  }

  sub_100223344(*(v0 + 520), type metadata accessor for ADP);

  v80 = *(v0 + 8);
LABEL_41:

  return v80();
}

uint64_t sub_10021C2A8()
{

  return _swift_task_switch(sub_10021C3A4, 0, 0);
}

uint64_t sub_10021C3A4()
{
  v1 = type metadata accessor for MarketplaceKitError();
  sub_100223050(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for MarketplaceKitError.installationRestricted(_:), v1);
  v3 = *(v0 + 520);
  swift_willThrow();
  sub_100223344(v3, type metadata accessor for ADP);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10021C520()
{

  return _swift_task_switch(sub_100223830, 0, 0);
}

uint64_t sub_10021C61C()
{

  return _swift_task_switch(sub_100223830, 0, 0);
}

uint64_t sub_10021C718(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_1001F0C48(&unk_100780380);
  v3[19] = swift_task_alloc();
  type metadata accessor for MediaAPIMetadata();
  v3[20] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequestType();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10021C84C, 0, 0);
}

uint64_t sub_10021C84C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = **(v0 + 144);
  *(v0 + 200) = v5;
  v29 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v30 = v5;
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v9 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v10 = *(v4 + 16);
  v10(v2, v6 + *(v9 + 28) + v7, v3);
  os_unfair_lock_unlock((v6 + v8));
  v10(v1, v2, v3);
  v11 = (*(v4 + 88))(v1, v3);
  if (v11 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

    v12 = *(v0 + 8);

    return v12();
  }

  if (v11 != enum case for AppInstallRequestType.install(_:))
  {
    if (v11 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v11 != enum case for AppInstallRequestType.update(_:) && v11 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v11 != enum case for AppInstallRequestType.restore(_:) && v11 != enum case for AppInstallRequestType.deviceVPP(_:) && v11 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.userVPP(_:) && v11 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v11 != enum case for AppInstallRequestType.upp(_:) && v11 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v14 = *(v0 + 144);
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  v15 = *(v30 + v29);
  v16 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_10020A980(v15 + v16, v0 + 88);
  os_unfair_lock_unlock((v15 + v17));
  v18 = type metadata accessor for ADPPreflightTask(0);
  *(v0 + 208) = v18;
  v19 = *(v18 + 20);
  *(v0 + 272) = v19;
  v20 = v14 + v19;
  v21 = *(type metadata accessor for ADP() + 24);
  *(v0 + 276) = v21;
  v22 = v20 + v21;
  v23 = *(v22 + 16);
  *(v0 + 216) = v23;
  v24 = *(v22 + 8);
  *(v0 + 224) = v24;
  v25 = *(v14 + *(v18 + 28));
  sub_10020A980(v0 + 88, v0 + 48);
  *(v0 + 16) = v23;
  *(v0 + 24) = v24;
  *(v0 + 32) = 0;
  *(v0 + 40) = v25;
  v26 = v25;
  v27 = swift_task_alloc();
  *(v0 + 232) = v27;
  *v27 = v0;
  v27[1] = sub_10021CC94;
  v28 = *(v0 + 160);

  return sub_10033EF00(v28);
}

uint64_t sub_10021CC94()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10021D1C8;
  }

  else
  {
    sub_100223344(*(v2 + 160), type metadata accessor for MediaAPIMetadata);
    v3 = sub_10021CDC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021CDC4()
{
  v1 = *(v0 + 144) + *(v0 + 272) + *(v0 + 276);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_10021CE98;
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  return (sub_1004A4D04)(v9, v3, v2, v7, v5, v6, v8);
}

uint64_t sub_10021CE98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_10021D124;
  }

  else
  {
    v4 = sub_10021CFAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10021CFAC()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[19];
    *(v0[18] + *(v0[26] + 32)) = 1;
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_1004F8A04(0xD000000000000017, 0x80000001006C4870, v2, &unk_10069F2F8, v4);

    sub_1000032A8(v2, &unk_100780380);
  }

  sub_1002232F0((v0 + 2));
  sub_10000710C((v0 + 11));

  v5 = v0[1];

  return v5();
}

uint64_t sub_10021D124()
{
  sub_1002232F0(v0 + 16);
  sub_10000710C(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D1C8()
{
  sub_1002232F0(v0 + 16);
  sub_10000710C(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D26C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1001F0C48(&qword_10077EC90);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for MediaAPIMetadata();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021D368, 0, 0);
}

uint64_t sub_10021D368()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = **(v0 + 80);
  v5 = *(v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  sub_100005934(v5 + *(v8 + 36) + v6, v3, &qword_10077EC90);
  os_unfair_lock_unlock((v5 + v7));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 80);
    sub_1000032A8(*(v0 + 88), &qword_10077EC90);
    v10 = type metadata accessor for ADPPreflightTask(0);
    *(v0 + 120) = v10;
    v11 = v9 + *(v10 + 20);
    v12 = v11 + *(type metadata accessor for ADP() + 24);
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    v15 = *(v12 + 8);
    *(v0 + 16) = v4;
    *(v0 + 24) = v13;
    *(v0 + 32) = v14;
    *(v0 + 40) = vextq_s8(v15, v15, 8uLL);
    *(v0 + 56) = 0;

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_10021D5B4;
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);

    return sub_1003A0B90(v17, v18);
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 64);
    sub_100222E54(*(v0 + 88), v20);
    sub_100222E54(v20, v21);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10021D5B4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10021D74C;
  }

  else
  {
    v2 = sub_10021D6C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021D6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D74C()
{
  *(*(v0 + 80) + *(*(v0 + 120) + 32)) = *(v0 + 56);
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021D7F0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  *&v32 = 0;
  v7 = [objc_allocWithZone(LSApplicationRecord) initWithStoreItemIdentifier:a2 error:&v32];
  if (!v7)
  {
    v11 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return 1;
  }

  v8 = v7;
  v9 = v32;
  v10 = [v8 installType] == 8 || objc_msgSend(v8, "installType") == 7 || objc_msgSend(v8, "installType") == 10;
  if ([v8 installType] == 2 || v10)
  {
    if ([v8 installType] == 2)
    {
      sub_10020A980(a4, &v32);
      sub_1001F0C48(&qword_10077E970);
      if (swift_dynamicCast())
      {

        sub_10061A948(a1);

        return 4;
      }
    }
  }

  else
  {
    v13 = sub_10060BB74();
    if ((v14 & 1) != 0 || v13 > a3)
    {
      sub_10061A948(a1);

      return 0;
    }
  }

  sub_10061A948(&v32);
  if (!v33)
  {
    sub_1000032A8(&v32, &unk_10077FA50);
    goto LABEL_22;
  }

  sub_1001DFDBC(&v32, &v35);
  sub_10020A980(&v35, &v32);
  sub_10020A980(a4, v34);
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if ([v8 installType] == 2)
      {

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        sub_10000710C(v34);
        sub_10000710C(&v32);
        sub_10000710C(&v35);
        return 4;
      }

      if (v10)
      {

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        sub_10000710C(v34);
        sub_10000710C(&v32);
        sub_10000710C(&v35);
        return 3;
      }

      if (v30 == v28 && v31 == v29)
      {

LABEL_53:

        sub_10000710C(v34);
        sub_10000710C(&v32);
        sub_10000710C(&v35);
LABEL_22:
        v15 = [v8 isPlaceholder];

        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        if (v15)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_53;
      }

      if (v30 == 0xD000000000000014 && 0x80000001006C47D0 == v31)
      {

LABEL_58:
        sub_10020A980(&v35, a1);
        sub_10000710C(v34);
        sub_10000710C(&v32);
        goto LABEL_46;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_58;
      }

      sub_10020A980(&v35, a1);
      sub_10000710C(v34);
      sub_10000710C(&v32);
LABEL_51:
      sub_10000710C(&v35);
      return 0;
    }
  }

  if (!swift_dynamicCast() || (, !swift_dynamicCast()))
  {
    v18 = v36;
    v19 = v37;
    sub_100006D8C(&v35, v36);
    if ((*(v19 + 40))(v18, v19) == 0xD000000000000014 && 0x80000001006C47D0 == v20)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
      }

      else
      {
        v22 = a4[3];
        v23 = a4[4];
        sub_100006D8C(a4, v22);
        if ((*(v23 + 40))(v22, v23) == 0xD000000000000014 && 0x80000001006C47D0 == v24)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            sub_10020A980(&v35, a1);
            sub_1000032A8(&v32, &qword_10077EC78);
            goto LABEL_51;
          }
        }
      }
    }

    sub_10020A980(&v35, a1);
    sub_1000032A8(&v32, &qword_10077EC78);
LABEL_46:
    sub_10000710C(&v35);
    return 2;
  }

  v16 = [v8 installType];

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_10000710C(v34);
  sub_10000710C(&v32);
  sub_10000710C(&v35);
  if (v10)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if (v16 == 2)
  {
    return 4;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_10021DE94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_10020A980(v1 + v2, v5);
  os_unfair_lock_unlock((v1 + v3));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {

    return 1;
  }

  else
  {
    os_unfair_lock_lock((v1 + v3));
    sub_10020A980(v1 + v2, v5);
    os_unfair_lock_unlock((v1 + v3));
    if (swift_dynamicCast())
    {

      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10021DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = sub_1001F0C48(&qword_10077EC98);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021E134, a4, 0);
}

uint64_t sub_10021E134()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 232) = qword_100786178;

  return _swift_task_switch(sub_10021E1CC, v1, 0);
}

uint64_t sub_10021E1CC()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_10021E308;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 35, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10021E308()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10021E434, v1, 0);
}

uint64_t sub_10021E458()
{
  if (*(v0 + 281) == 1)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    v3 = *(v0 + 200);
    sub_100006D8C((*(v0 + 160) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag), *(*(v0 + 160) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag + 24));
    sub_100364C94();
    URL.init(string:)();

    v4 = *(v2 + 48);
    if (v4(v3, 1, v1) == 1)
    {
      v5 = *(v0 + 208);
      v6 = *(v0 + 192);
      URL.init(string:)();
      v7 = v4(v6, 1, v5);
      if (v7 == 1)
      {
        goto LABEL_15;
      }

      v8 = *(v0 + 200);
      v9 = *(v0 + 208);
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 192), v9);
      if (v4(v8, 1, v9) != 1)
      {
        sub_1000032A8(*(v0 + 200), &unk_1007809F0);
      }
    }

    else
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
    }

    v7 = [objc_opt_self() defaultWorkspace];
    *(v0 + 256) = v7;
    if (v7)
    {
      v12 = v7;
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      URL._bridgeToObjectiveC()((v0 + 80));
      v18 = v16;
      *(v0 + 264) = v16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_10021E80C;
      swift_continuation_init();
      *(v0 + 136) = v15;
      v17 = sub_10020A748((v0 + 112));
      sub_1001F0C48(&qword_10077ECA0);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v13 + 32))(v17, v14, v15);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1003FA170;
      *(v0 + 104) = &unk_10075C4D0;
      [v12 openURL:v18 configuration:0 completionHandler:?];
      (*(v13 + 8))(v17, v15);
      v7 = (v0 + 16);

      return _swift_continuation_await(v7);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return _swift_continuation_await(v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10021E80C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_10021E9D4;
  }

  else
  {
    v2 = sub_10021E91C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021E91C()
{
  v2 = v0[32];
  v1 = v0[33];
  (*(v0[27] + 8))(v0[28], v0[26]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10021E9D4()
{
  v1 = v0[33];
  v2 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10021EACC, a4, 0);
}

uint64_t sub_10021EACC()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 32) = qword_100786178;

  return _swift_task_switch(sub_10021EB64, v1, 0);
}

uint64_t sub_10021EB64()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10021EC9C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10021EC9C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10021EDC8, v1, 0);
}

uint64_t sub_10021EE0C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2112) = a4;
  *(v7 + 1406) = a2;
  *(v7 + 1405) = a1;
  v12 = type metadata accessor for AppInstallRequestType();
  *(v7 + 2120) = v12;
  *(v7 + 2128) = *(v12 - 8);
  *(v7 + 2136) = swift_task_alloc();
  *(v7 + 2144) = swift_task_alloc();
  *(v7 + 2056) = a5;
  *(v7 + 2064) = a6;
  *(v7 + 2072) = a7;
  v13 = sub_10020A748((v7 + 2032));
  (*(*(a5 - 8) + 16))(v13, a3, a5);

  return _swift_task_switch(sub_10021EF44, 0, 0);
}

uint64_t sub_10021EF44()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2136);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2120);
  v5 = *(**(v0 + 2112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v9 = *(v3 + 16);
  v9(v1, v5 + *(v8 + 28) + v6, v4);
  os_unfair_lock_unlock((v5 + v7));
  v9(v2, v1, v4);
  v10 = (*(v3 + 88))(v2, v4);
  if (v10 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
    sub_10000710C(v0 + 2032);

    v11 = *(v0 + 8);

    return v11();
  }

  if (v10 != enum case for AppInstallRequestType.install(_:))
  {
    if (v10 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v10 != enum case for AppInstallRequestType.update(_:) && v10 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v10 != enum case for AppInstallRequestType.restore(_:) && v10 != enum case for AppInstallRequestType.deviceVPP(_:) && v10 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v10 != enum case for AppInstallRequestType.userVPP(_:) && v10 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v10 != enum case for AppInstallRequestType.upp(_:) && v10 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v13 = *(v0 + 2112);
  (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
  v14 = *(*sub_100006D8C((v0 + 2032), *(v0 + 2056)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  v15 = type metadata accessor for ADPPreflightTask(0);
  *(v0 + 2152) = v15;
  v16 = v13 + *(v15 + 20);
  v17 = v16 + *(type metadata accessor for ADP() + 24);
  v18 = *(v17 + 168);
  if (v18)
  {
    if ((*(v17 + 160) != 0x6C7074656B72616DLL || v18 != 0xEB00000000656361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v19 = 46;
    if (v14)
    {
      v19 = 47;
    }

    *(v0 + 1960) = v19;
    *(v0 + 1984) = 0u;
    *(v0 + 1968) = 0u;
    *(v0 + 2000) = 0u;
    *(v0 + 2016) = 0;
    *(v0 + 2024) = 41;
    *(v0 + 1808) = 41;
    v20 = *(v0 + 2008);
    *(v0 + 1776) = *(v0 + 1992);
    *(v0 + 1792) = v20;
    v21 = *(v0 + 1976);
    *(v0 + 1744) = *(v0 + 1960);
    *(v0 + 1760) = v21;
    *(v0 + 1672) = 45;
    *(v0 + 1680) = 0u;
    *(v0 + 1696) = 0u;
    *(v0 + 1712) = 0u;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 41;
    *(v0 + 1848) = 0u;
    *(v0 + 1864) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0u;
    *(v0 + 1880) = 41;
    v22 = *(*sub_100006D8C((v0 + 2032), *(v0 + 2056)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 2160) = v22;

    v23 = swift_allocObject();
    *(v0 + 2168) = v23;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = -1;
    *(v23 + 88) = v22;
    v24 = swift_task_alloc();
    *(v0 + 2176) = v24;
    *(v24 + 16) = &unk_10069F2D8;
    *(v24 + 24) = v23;

    sub_1001F0C48(&unk_10077FA80);
    swift_asyncLet_begin();
    v25 = swift_task_alloc();
    *(v0 + 2184) = v25;
    *v25 = v0;
    v25[1] = sub_10021F77C;
    v26 = v0 + 1672;
    goto LABEL_27;
  }

  if (*(v17 + 184) & 1) == 0 && (*(v17 + 176))
  {
    goto LABEL_24;
  }

LABEL_30:
  if (*(v0 + 1405) == 1)
  {
    v27 = *(*sub_100006D8C((v0 + 2032), *(v0 + 2056)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 2288) = v27;
    v37 = sub_1004A3E18;

    v28 = swift_task_alloc();
    *(v0 + 2296) = v28;
    *v28 = v0;
    v29 = sub_100220170;
LABEL_34:
    v28[1] = v29;

    return v37(v27, v14);
  }

  if (*(v0 + 1406) == 1)
  {
    v27 = *(*sub_100006D8C((v0 + 2032), *(v0 + 2056)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 2336) = v27;
    v37 = sub_1004A45A0;

    v28 = swift_task_alloc();
    *(v0 + 2344) = v28;
    *v28 = v0;
    v29 = sub_1002205F8;
    goto LABEL_34;
  }

  v30 = 52;
  if (v14)
  {
    v30 = 53;
  }

  *(v0 + 1888) = v30;
  *(v0 + 1896) = 0u;
  *(v0 + 1912) = 0u;
  *(v0 + 1928) = 0u;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = 41;
  *(v0 + 1512) = 41;
  v31 = *(v0 + 1904);
  v32 = *(v0 + 1936);
  *(v0 + 1480) = *(v0 + 1920);
  *(v0 + 1496) = v32;
  *(v0 + 1448) = *(v0 + 1888);
  *(v0 + 1464) = v31;
  *(v0 + 1336) = 51;
  *(v0 + 1344) = 0u;
  *(v0 + 1360) = 0u;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0;
  *(v0 + 1400) = 41;
  *(v0 + 1592) = 0u;
  *(v0 + 1608) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0u;
  *(v0 + 1624) = 41;
  v33 = *(*sub_100006D8C((v0 + 2032), *(v0 + 2056)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 2384) = v33;

  v34 = swift_allocObject();
  *(v0 + 2392) = v34;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  *(v34 + 80) = -1;
  *(v34 + 88) = v33;
  v35 = swift_task_alloc();
  *(v0 + 2400) = v35;
  *(v35 + 16) = &unk_10069F2C0;
  *(v35 + 24) = v34;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v36 = swift_task_alloc();
  *(v0 + 2408) = v36;
  *v36 = v0;
  v36[1] = sub_100220A80;
  v26 = v0 + 1336;
LABEL_27:

  return sub_1006600F0(v26);
}

uint64_t sub_10021F77C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[274] = a1;
  v3[275] = a2;

  v4 = swift_task_alloc();
  v3[276] = v4;
  *v4 = v6;
  v4[1] = sub_10021F8D4;

  return sub_1006600F0((v3 + 218));
}

uint64_t sub_10021F8D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[277] = a1;
  v3[278] = a2;

  sub_100222FFC((v3 + 245));
  v4 = swift_task_alloc();
  v3[279] = v4;
  *v4 = v6;
  v4[1] = sub_10021FA34;

  return sub_1006600F0((v3 + 227));
}

uint64_t sub_10021FA34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2240) = a1;
  *(v3 + 2248) = a2;

  return _swift_asyncLet_get(v3 + 656, v3 + 2096, sub_10021FB3C, v3 + 1520);
}

uint64_t sub_10021FB58()
{
  v6 = *(v0 + 2216);
  v7 = *(v0 + 2240);
  v5 = *(v0 + 2192);
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2104);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 2256) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 656, v0 + 2096, sub_10021FC30, v0 + 1632);
}

uint64_t sub_10021FC30()
{
  sub_100223050(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10021FCE4, v1, v0);
}

uint64_t sub_10021FCE4()
{
  v1 = *(v0 + 2256);

  return _swift_task_switch(sub_10021FD7C, v1, 0);
}

uint64_t sub_10021FD7C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2264) = qword_100786178;

  return _swift_task_switch(sub_10021FE14, v1, 0);
}

uint64_t sub_10021FE14()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[284] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[285] = v5;
  *v5 = v0;
  v5[1] = sub_10021FF50;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1404, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_10021FF50()
{
  v1 = *(*v0 + 2264);

  return _swift_task_switch(sub_10022007C, v1, 0);
}

uint64_t sub_10022007C()
{

  return _swift_task_switch(sub_1002200E4, 0, 0);
}

uint64_t sub_1002200E4()
{
  *(v0[264] + *(v0[269] + 32)) = 1;
  sub_10000710C((v0 + 254));

  v1 = v0[1];

  return v1();
}

uint64_t sub_100220170(uint64_t a1)
{
  *(*v1 + 2304) = a1;

  return _swift_task_switch(sub_100220290, a1, 0);
}

uint64_t sub_100220290()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2312) = qword_100786178;

  return _swift_task_switch(sub_100220328, v1, 0);
}

uint64_t sub_100220328()
{
  v1 = v0[289];
  v2 = v0[288];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[290] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[291] = v5;
  *v5 = v0;
  v5[1] = sub_100220464;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1403, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100220464()
{
  v1 = *(*v0 + 2312);

  return _swift_task_switch(sub_100220590, v1, 0);
}

uint64_t sub_100220590()
{

  return _swift_task_switch(sub_1002200E4, 0, 0);
}

uint64_t sub_1002205F8(uint64_t a1)
{
  *(*v1 + 2352) = a1;

  return _swift_task_switch(sub_100220718, a1, 0);
}

uint64_t sub_100220718()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2360) = qword_100786178;

  return _swift_task_switch(sub_1002207B0, v1, 0);
}

uint64_t sub_1002207B0()
{
  v1 = v0[295];
  v2 = v0[294];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[296] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[297] = v5;
  *v5 = v0;
  v5[1] = sub_1002208EC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1402, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1002208EC()
{
  v1 = *(*v0 + 2360);

  return _swift_task_switch(sub_100220A18, v1, 0);
}

uint64_t sub_100220A18()
{

  return _swift_task_switch(sub_100223850, 0, 0);
}

uint64_t sub_100220A80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[302] = a1;
  v3[303] = a2;

  v4 = swift_task_alloc();
  v3[304] = v4;
  *v4 = v6;
  v4[1] = sub_100220BD8;

  return sub_1006600F0((v3 + 181));
}

uint64_t sub_100220BD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[305] = a1;
  v3[306] = a2;

  sub_100222FFC((v3 + 236));
  v4 = swift_task_alloc();
  v3[307] = v4;
  *v4 = v6;
  v4[1] = sub_100220D38;

  return sub_1006600F0((v3 + 195));
}

uint64_t sub_100220D38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2464) = a1;
  *(v3 + 2472) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 2080, sub_100220E40, v3 + 1296);
}

uint64_t sub_100220E5C()
{
  v6 = *(v0 + 2440);
  v7 = *(v0 + 2464);
  v5 = *(v0 + 2416);
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2088);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 2480) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 2080, sub_100220F34, v0 + 1408);
}

uint64_t sub_100220F34()
{
  sub_100223050(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100220FE8, v1, v0);
}

uint64_t sub_100220FE8()
{
  v1 = *(v0 + 2480);

  return _swift_task_switch(sub_100221080, v1, 0);
}

uint64_t sub_100221080()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2488) = qword_100786178;

  return _swift_task_switch(sub_100221118, v1, 0);
}

uint64_t sub_100221118()
{
  v1 = v0[311];
  v2 = v0[310];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[312] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[313] = v5;
  *v5 = v0;
  v5[1] = sub_100221254;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1401, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_100221254()
{
  v1 = *(*v0 + 2488);

  return _swift_task_switch(sub_100221380, v1, 0);
}

uint64_t sub_100221380()
{

  return _swift_task_switch(sub_1002200E4, 0, 0);
}

uint64_t sub_1002213E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[136] = a2;
  v10 = type metadata accessor for AppInstallRequestType();
  v5[137] = v10;
  v5[138] = *(v10 - 8);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[131] = a3;
  v5[132] = a4;
  v5[133] = a5;
  v11 = sub_10020A748(v5 + 128);
  (*(*(a3 - 8) + 16))(v11, a1, a3);

  return _swift_task_switch(sub_100221518, 0, 0);
}

uint64_t sub_100221518()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1096);
  v5 = *(**(v0 + 1088) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v6 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v9 = *(v3 + 16);
  v9(v1, v5 + *(v8 + 28) + v6, v4);
  os_unfair_lock_unlock((v5 + v7));
  v9(v2, v1, v4);
  v10 = (*(v3 + 88))(v2, v4);
  if (v10 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    (*(*(v0 + 1104) + 8))(*(v0 + 1120), *(v0 + 1096));
    sub_10000710C(v0 + 1024);

    v11 = *(v0 + 8);

    return v11();
  }

  if (v10 != enum case for AppInstallRequestType.install(_:))
  {
    if (v10 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v10 != enum case for AppInstallRequestType.update(_:) && v10 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v10 != enum case for AppInstallRequestType.restore(_:) && v10 != enum case for AppInstallRequestType.deviceVPP(_:) && v10 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v10 != enum case for AppInstallRequestType.userVPP(_:) && v10 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v10 != enum case for AppInstallRequestType.upp(_:) && v10 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  v13 = *(v0 + 1088);
  (*(*(v0 + 1104) + 8))(*(v0 + 1120), *(v0 + 1096));
  *(v13 + *(type metadata accessor for ADPPreflightTask(0) + 32)) = 1;
  v14 = sub_100006D8C((v0 + 1024), *(v0 + 1048));
  v15 = 63;
  if (!*(*v14 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108))
  {
    v15 = 64;
  }

  *(v0 + 952) = v15;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 0;
  *(v0 + 1016) = 41;
  *(v0 + 872) = 41;
  v16 = *(v0 + 1000);
  *(v0 + 840) = *(v0 + 984);
  *(v0 + 856) = v16;
  v17 = *(v0 + 968);
  *(v0 + 808) = *(v0 + 952);
  *(v0 + 824) = v17;
  *(v0 + 696) = 57;
  *(v0 + 752) = 0;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 704) = 0u;
  *(v0 + 760) = 41;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 944) = 41;
  v18 = *(*sub_100006D8C((v0 + 1024), *(v0 + 1048)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1128) = v18;

  v19 = swift_allocObject();
  *(v0 + 1136) = v19;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = -1;
  *(v19 + 88) = v18;
  v20 = swift_task_alloc();
  *(v0 + 1144) = v20;
  *(v20 + 16) = &unk_10069F308;
  *(v20 + 24) = v19;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v21 = swift_task_alloc();
  *(v0 + 1152) = v21;
  *v21 = v0;
  v21[1] = sub_1002219F4;

  return sub_1006600F0(v0 + 696);
}

uint64_t sub_1002219F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[145] = a1;
  v3[146] = a2;

  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v6;
  v4[1] = sub_100221B4C;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_100221B4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[148] = a1;
  v3[149] = a2;

  sub_100222FFC((v3 + 119));
  v4 = swift_task_alloc();
  v3[150] = v4;
  *v4 = v6;
  v4[1] = sub_100221CAC;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_100221CAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1208) = a1;
  *(v3 + 1216) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1072, sub_100221DB4, v3 + 656);
}

uint64_t sub_100221DD0()
{
  v6 = *(v0 + 1184);
  v7 = *(v0 + 1208);
  v5 = *(v0 + 1160);
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1080);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1224) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1072, sub_100221EAC, v0 + 768);
}

uint64_t sub_100221EAC()
{
  sub_100223050(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100221F60, v1, v0);
}

uint64_t sub_100221F60()
{
  v1 = *(v0 + 1224);

  return _swift_task_switch(sub_100221FF8, v1, 0);
}

uint64_t sub_100221FF8()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1232) = qword_100786178;

  return _swift_task_switch(sub_100222090, v1, 0);
}

uint64_t sub_100222090()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = sub_100223050(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[155] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[156] = v5;
  *v5 = v0;
  v5[1] = sub_1002221CC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_100223854, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1002221CC()
{
  v1 = *(*v0 + 1232);

  return _swift_task_switch(sub_1002222F8, v1, 0);
}

uint64_t sub_1002222F8()
{

  return _swift_task_switch(sub_100222360, 0, 0);
}

uint64_t sub_100222360()
{
  sub_10000710C(v0 + 1024);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002223D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5)
{
  v72 = a4;
  v73 = a3;
  v75 = type metadata accessor for Logger();
  v74 = *(v75 - 8);
  v8 = __chkstk_darwin(v75);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v71 = &v69 - v12;
  __chkstk_darwin(v11);
  v70 = &v69 - v13;
  v14 = type metadata accessor for OSEligibilityDomain();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppInstallRequestType();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18);
  v23 = *(v19 + 88);
  v22 = (v19 + 88);
  v24 = v23(v21, v18);
  if (v24 == enum case for AppInstallRequestType.automaticInstall(_:) || v24 == enum case for AppInstallRequestType.install(_:))
  {
    goto LABEL_6;
  }

  if (v24 != enum case for AppInstallRequestType.automaticUpdate(_:) && v24 != enum case for AppInstallRequestType.update(_:) && v24 != enum case for AppInstallRequestType.promotion(_:) && v24 != enum case for AppInstallRequestType.restore(_:))
  {
    if (v24 == enum case for AppInstallRequestType.deviceVPP(_:))
    {
      goto LABEL_6;
    }

    if (v24 != enum case for AppInstallRequestType.deviceVPPUpdate(_:))
    {
      if (v24 == enum case for AppInstallRequestType.userVPP(_:))
      {
        goto LABEL_6;
      }

      if (v24 != enum case for AppInstallRequestType.userVPPUpdate(_:))
      {
        if (v24 != enum case for AppInstallRequestType.upp(_:))
        {
          if (v24 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_37:
            v44 = &enum case for OSEligibilityDomain.helium(_:);
            goto LABEL_39;
          }

          goto LABEL_18;
        }

LABEL_6:
        LODWORD(v21) = 1;
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  LODWORD(v21) = 0;
LABEL_19:
  v29 = sub_10021DE94(a2);
  if (v29 == 2)
  {
    static Logger.install.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v76 = v34;
      *v32 = 138412546;
      v35 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v32 + 4) = v35;
      *v33 = v35;
      *(v32 + 12) = 2082;
      v36 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
      v37 = *(*v36 + class metadata base offset for ManagedBuffer + 16);
      v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
      v39 = v35;
      os_unfair_lock_lock((v36 + v38));
      sub_10020A980(v36 + v37, &v77);
      os_unfair_lock_unlock((v36 + v38));
      sub_100006D8C(&v77, *(&v78 + 1));
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_10000710C(&v77);
      v43 = sub_1002346CC(v40, v42, &v76);

      *(v32 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Invalid distribution source: %{public}s", v32, 0x16u);
      sub_1000032A8(v33, &qword_10077F920);

      sub_10000710C(v34);
    }

LABEL_23:
    (*(v74 + 8))(v10, v75);
    return 0;
  }

  v22 = *(v15 + 104);
  v18 = (v15 + 8);
  if (v29 & 1) == 0 || (v72)
  {
    if (v21)
    {
      v44 = &enum case for OSEligibilityDomain.hydrogen(_:);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (v21)
  {
    v44 = &enum case for OSEligibilityDomain.argon(_:);
  }

  else
  {
    v44 = &enum case for OSEligibilityDomain.potassium(_:);
  }

LABEL_39:
  v22(v17, *v44, v14);
  v45 = sub_10027B42C(v17, v73);
  v46 = *v18;
  (*v18)(v17, v14);
  if ((v45 & 1) == 0)
  {
    v55 = v71;
    static Logger.install.getter();

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v58 + 4) = v60;
      *v59 = v60;
      v61 = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Failing due to ineligibility", v58, 0xCu);
      sub_1000032A8(v59, &qword_10077F920);
    }

    (*(v74 + 8))(v55, v75);
    return 0;
  }

  v47 = a5[11];
  v87 = a5[10];
  v88 = v47;
  v89 = a5[12];
  v48 = a5[7];
  v83 = a5[6];
  v84 = v48;
  v49 = a5[9];
  v85 = a5[8];
  v86 = v49;
  v50 = a5[3];
  v79 = a5[2];
  v51 = a5[4];
  v82 = a5[5];
  v80 = v50;
  v81 = v51;
  v52 = *a5;
  v78 = a5[1];
  v77 = v52;
  result = sub_100222CEC(&v77);
  if (result != 1)
  {
    result = 1;
    if ((BYTE8(v88) & 1) == 0 && (v88 & 2) != 0)
    {
      if (v21)
      {
        v54 = &enum case for OSEligibilityDomain.carbon(_:);
      }

      else
      {
        v54 = &enum case for OSEligibilityDomain.lithium(_:);
      }

      v22(v17, *v54, v14);
      v62 = sub_10027B42C(v17, v73);
      v46(v17, v14);
      if (v62)
      {
        return 1;
      }

      v10 = v70;
      static Logger.install.getter();

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;
        v67 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
        *(v65 + 4) = v67;
        *v66 = v67;
        v68 = v67;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%@] Failing due to ineligibility", v65, 0xCu);
        sub_1000032A8(v66, &qword_10077F920);
      }

      goto LABEL_23;
    }
  }

  return result;
}

uint64_t sub_100222CEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100222D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADP();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100222E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPIMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100222EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = a2;
  switch(a9)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 34:
    case 39:
    case 40:
      goto LABEL_5;
    case 4:
    case 32:
    case 35:
      goto LABEL_3;
    case 5:
    case 20:
    case 33:
    case 36:
    case 37:
    case 38:
      goto LABEL_4;
    case 12:
    case 15:
    case 31:

LABEL_3:

LABEL_4:

LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100222F60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10022384C;

  return sub_1004F9320(v0 + 16);
}

uint64_t sub_100223050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100223098()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100223134;

  return sub_1004F9320(v0 + 16);
}

uint64_t sub_100223134(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_100223238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_1005CFD04(a1, v4);
}

uint64_t sub_100223344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002233A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_10021EAAC(a1, v4, v5, v6);
}

unint64_t sub_100223508()
{
  result = qword_10077E900;
  if (!qword_10077E900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077E900);
  }

  return result;
}

uint64_t sub_100223554()
{
  if (*(v0 + 80) != 255)
  {
    sub_100222EB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002235B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_1005CFD04(a1, v4);
}

uint64_t sub_100223670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10021DFC4(a1, v4, v5, v7, v6);
}

void sub_100223774()
{
  type metadata accessor for ADPInstallConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ADP();
    if (v1 <= 0x3F)
    {
      sub_10020B064();
      if (v2 <= 0x3F)
      {
        type metadata accessor for LogKey();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100223858(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v4 = type metadata accessor for BagService();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  result = sub_100225E50(0x526B636F4C796164, 0xEE00736E6F736165, 1, 0);
  v25 = a1;
  if ((v11 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result <= 0xFF)
    {
      v12 = result;
      goto LABEL_6;
    }

    __break(1u);
    return result;
  }

  v12 = 0;
LABEL_6:
  v13 = [objc_opt_self() standardUserDefaults];
  if (v13)
  {
    v14 = v13;
    v26 = 0;
    v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v16 = String._bridgeToObjectiveC()();
    [v14 setObject:v15 forKey:v16];

    swift_unknownObjectRelease();
  }

  if (v12)
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    (*(v5 + 32))(v19 + v18, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_100494DB4(0, 0, v9, &unk_10069F378, v19);
  }

  if ((v12 & 2) != 0)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    (*(v5 + 32))(v22 + v21, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_100494DB4(0, 0, v9, &unk_10069F368, v22);
  }

  return [v25 setTaskCompleted];
}

uint64_t sub_100223C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v6 = type metadata accessor for Logger();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for LogKey.Prefix();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100223DD4, 0, 0);
}

uint64_t sub_100223DD4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for LogKey.Prefix.automaticUpdate(_:), *(v0 + 176));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 200) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *(v4 + 16) = v6;

  return _swift_task_switch(sub_100223EF8, 0, 0);
}

uint64_t sub_100223EF8()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "dayLock:automaticUpdatesRuntime", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 200);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 224) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("dayLock:automaticUpdatesRuntime", 31, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 240) = v12;
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069F390;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_100224430;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100224430()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1002245E0;
  }

  else
  {
    v2 = sub_10023231C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002245E0()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1002322A4, 0, 0);
}

uint64_t sub_1002246D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  v4 = swift_task_alloc();
  *(v3 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_100224774;

  return sub_100324268(v3 + 16);
}

uint64_t sub_100224774()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100224ABC;
  }

  else
  {
    v2 = sub_100224888;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100224888()
{
  v1 = sub_100625FA0();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100224944;
  v3 = v0[7];

  return sub_100225F5C((v0 + 2), v1, v3);
}

uint64_t sub_100224944()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100224A58, 0, 0);
}

uint64_t sub_100224A58()
{
  sub_10000710C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100224AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v6 = type metadata accessor for Logger();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for LogKey.Prefix();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100224C7C, 0, 0);
}

uint64_t sub_100224C7C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for LogKey.Prefix.automaticUpdate(_:), *(v0 + 176));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 200) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *(v4 + 16) = v6;

  return _swift_task_switch(sub_100224DA0, 0, 0);
}

uint64_t sub_100224DA0()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "dayLock:webDistributionUpdateDiscovery", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 200);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 224) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("dayLock:webDistributionUpdateDiscovery", 38, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 240) = v12;
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069F3C8;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_1002252D8;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_10069F3D0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1002252D8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1002255C4;
  }

  else
  {
    v2 = sub_100225488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100225488()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002255C4()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_1002256BC, 0, 0);
}

uint64_t sub_1002256BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100225790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;

  return _swift_task_switch(sub_100225820, 0, 0);
}

uint64_t sub_100225820()
{
  *(v0 + 129) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 130) = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 129));

  *(v0 + 131) = *(v0 + 129);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_10022595C;

  return sub_100324268(v0 + 16);
}

uint64_t sub_10022595C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100225D2C, 0, 0);
  }

  else
  {
    *(v2 + 96) = 0u;
    if (*(v2 + 130))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v2 + 131) == 0;
    }

    v4 = v3;
    *(v2 + 112) = 0uLL;
    *(v2 + 128) = 1;
    v5 = swift_task_alloc();
    *(v2 + 88) = v5;
    *v5 = v2;
    v5[1] = sub_100225B74;
    v6 = *(v2 + 64);

    return sub_10022B450(v6, v2 + 16, 0, 0, v4, 0, v2 + 96);
  }
}

uint64_t sub_100225B74()
{

  return _swift_task_switch(sub_100225C9C, 0, 0);
}

uint64_t sub_100225C9C()
{
  sub_10000710C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100225D2C()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_100225DB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100225E50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = sub_10036BB34(a3);
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
    }
  }

  sub_1001F0C48(&qword_100783A30);
  v9 = swift_dynamicCast();
  v10 = v12;
  if (!v9)
  {
    return a4;
  }

  return v10;
}

uint64_t sub_100225F5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v3[43] = a2;
  v3[44] = v5;
  v3[42] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v3[45] = v6;
  v3[46] = *(v6 - 8);
  v3[47] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EDE0);
  v3[48] = swift_task_alloc();
  v7 = type metadata accessor for _AppExtensionProcess();
  v3[49] = v7;
  v3[50] = *(v7 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[54] = v8;
  v3[55] = *(v8 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[5] = v5;
  v3[6] = &off_1007702B0;
  v3[7] = &off_100770270;
  v3[8] = &off_100770230;
  v3[9] = &off_100770218;
  v3[10] = &off_100770208;
  v3[11] = &off_1007701D0;
  v3[12] = &off_1007701C0;
  v3[13] = &off_1007701B0;
  v3[2] = a3;

  return _swift_task_switch(sub_1002261FC, 0, 0);
}

uint64_t sub_1002261FC()
{
  sub_100006D8C((v0 + 16), *(v0 + 352));

  v1 = sub_10042A954();

  v2 = *(v0 + 344);
  if (!v1)
  {
    static Logger.install.getter();
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 344);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Ignoring update poll request as device is locked", v20, 0xCu);
      sub_1000032A8(v21, &qword_10077F920);
    }

    v23 = *(v0 + 480);
    v24 = *(v0 + 432);
    v25 = *(v0 + 440);

    (*(v25 + 8))(v23, v24);
    sub_100231094(0);
LABEL_27:
    sub_10000710C(v0 + 16);

    v55 = *(v0 + 8);

    return v55();
  }

  static Logger.install.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Granting run time for automatic updates for extensions", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  v10 = *(v0 + 488);
  v11 = *(v0 + 432);
  v12 = *(v0 + 440);

  v13 = *(v12 + 8);
  *(v0 + 496) = v13;
  *(v0 + 504) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v14 = objc_allocWithZone(LSExtensionPointRecord);
  v15 = sub_10049E658();
  *(v0 + 512) = v15;
  v26 = [objc_opt_self() enumeratorWithExtensionPointRecord:v15 options:0];
  *(v0 + 520) = v26;
  v27 = [v26 nextObject];
  v28 = v27;
  v29 = &_swiftEmptyArrayStorage;
  if (!v28)
  {
LABEL_20:
    *(v0 + 560) = v29;
    if (v29[2])
    {
      static Clock<>.continuous.getter();
      v40 = swift_task_alloc();
      *(v0 + 608) = v40;
      *v40 = v0;
      v40[1] = sub_100228260;

      return sub_10049E724(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    v42 = *(v0 + 344);
    static Logger.install.getter();
    v43 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 344);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v46;
      *v48 = v46;
      v49 = v46;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Automatic updates for extensions is complete", v47, 0xCu);
      sub_1000032A8(v48, &qword_10077F920);
    }

    v50 = *(v0 + 520);
    v51 = *(v0 + 512);
    v52 = *(v0 + 496);
    v53 = *(v0 + 448);
    v54 = *(v0 + 432);

    v52(v53, v54);
    goto LABEL_27;
  }

  *(v0 + 528) = &_swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 536) = v28;
    v31 = [v28 containingBundleRecord];
    *(v0 + 544) = v31;
    if (!v31)
    {
      goto LABEL_12;
    }

    v32 = v31;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    *(v0 + 552) = v33;
    if (!v33)
    {
      goto LABEL_10;
    }

    v34 = [v33 bundleIdentifier];
    if (!v34)
    {
      v30 = v28;
      v28 = v32;
      goto LABEL_11;
    }

    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_100616B70(v36, v38);
    *(v0 + 568) = v39;

    if (v39[2])
    {
      break;
    }

LABEL_10:
    v30 = v32;
LABEL_11:

LABEL_12:
    v28 = [*(v0 + 520) nextObject];
    if (!v28)
    {
      v29 = *(v0 + 528);
      goto LABEL_20;
    }
  }

  v56 = [v28 bundleIdentifier];
  if (v56)
  {
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v60 = 0xE700000000000000;
    v58 = 0x6E776F6E6B6E75;
  }

  *(v0 + 584) = v60;
  *(v0 + 576) = v58;
  v61 = swift_task_alloc();
  *(v0 + 592) = v61;
  *v61 = v0;
  v61[1] = sub_100226B6C;
  v62 = *(v0 + 384);

  return sub_10049AB44(v62, v28);
}

uint64_t sub_100226B6C()
{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = sub_100227BE4;
  }

  else
  {
    v2 = sub_100226C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100226C94()
{
  v135 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 424);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  v8 = *(v0 + 344);
  (*(v6 + 56))(v7, 0, 1, v5);
  v9 = v5;
  v10 = *(v6 + 32);
  v10(v4, v7, v9);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v3;
  v11[4] = v2;
  v12 = v8;

  sub_1004A15C0(v4, v12, sub_100231C40, v11);
  if (!v1)
  {
    v31 = v13;
    v130 = v10;
    v32 = *(v0 + 344);

    v121 = _AppExtensionProcess.auditToken.getter();
    v122 = v33;
    v124 = v34;
    v127 = v35;
    static Logger.install.getter();
    swift_bridgeObjectRetain_n();
    v36 = v32;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v133 = v31;
    if (os_log_type_enabled(v37, v38))
    {
      v112 = *(v0 + 576);
      v114 = *(v0 + 584);
      v39 = *(v0 + 568);
      v118 = *(v0 + 472);
      v119 = *(v0 + 496);
      v116 = *(v0 + 432);
      v40 = *(v0 + 344);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v134[0] = v43;
      *v41 = 138412802;
      *(v41 + 4) = v40;
      *v42 = v40;
      *(v41 + 12) = 2082;
      v44 = v40;
      *(v41 + 14) = sub_1002346CC(v112, v114, v134);
      *(v41 + 22) = 2050;
      v45 = *(v39 + 16);

      *(v41 + 24) = v45;

      _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Granting automatic update run time to: %{public}s with %{public}ld installed apps", v41, 0x20u);
      sub_1000032A8(v42, &qword_10077F920);

      sub_10000710C(v43);

      v119(v118, v116);
    }

    else
    {
      v77 = *(v0 + 496);
      v78 = *(v0 + 472);
      v79 = *(v0 + 432);
      swift_bridgeObjectRelease_n();

      v77(v78, v79);
    }

    *(v0 + 328) = *(v0 + 568);
    sub_1001F0C48(&qword_10077EDE8);
    sub_100231C4C(&qword_10077EDF0, &qword_10077EDF8);
    sub_100231C4C(&qword_10077EE00, &qword_10077EE08);
    v80 = encodeXPCValues<A>(_:)();
    v132 = *(v0 + 584);
    v108 = *(v0 + 576);
    v109 = *(v0 + 568);
    v107 = *(v0 + 552);
    v111 = *(v0 + 544);
    v120 = *(v0 + 424);
    v113 = *(v0 + 400);
    v115 = *(v0 + 392);
    v117 = *(v0 + 416);
    v81 = *(v0 + 336);
    v82 = *(v0 + 344);
    v83 = v80;
    v85 = v84;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100007158(v83, v85);
    sub_10020A980(v81, v0 + 256);
    sub_100231CE8(v0 + 16, v0 + 112);
    v86 = swift_allocObject();
    *(v86 + 16) = v82;
    *(v86 + 24) = v108;
    *(v86 + 32) = v132;
    *(v86 + 40) = v107;
    *(v86 + 48) = v109;
    *(v86 + 56) = v121;
    *(v86 + 64) = v122;
    *(v86 + 72) = v124;
    *(v86 + 80) = v127;
    sub_1001DFDBC((v0 + 256), v86 + 88);
    sub_100231D54((v0 + 112), (v86 + 128));
    *(v0 + 240) = sub_100231D74;
    *(v0 + 248) = v86;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10049AA68;
    *(v0 + 232) = &unk_10075C5E8;
    v87 = _Block_copy((v0 + 208));
    v88 = v82;
    v89 = v111;

    [v133 automaticUpdatesFor:isa reply:v87];
    _Block_release(v87);

    (*(v113 + 16))(v117, v120, v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_1003629B0(0, *(v61 + 2) + 1, 1, *(v0 + 528));
    }

    v92 = *(v61 + 2);
    v91 = *(v61 + 3);
    if (v92 >= v91 >> 1)
    {
      v61 = sub_1003629B0(v91 > 1, v92 + 1, 1, v61);
    }

    v93 = *(v0 + 544);
    v94 = *(v0 + 536);
    v95 = *(v0 + 424);
    v125 = *(v0 + 416);
    v128 = *(v0 + 520);
    v97 = *(v0 + 392);
    v96 = *(v0 + 400);
    swift_unknownObjectRelease();

    (*(v96 + 8))(v95, v97);
    *(v61 + 2) = v92 + 1;
    v130(&v61[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v92], v125, v97);
    v98 = [v128 nextObject];
    if (v98)
    {
      v50 = v98;
      *(v0 + 528) = v61;
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v14 = *(v0 + 424);
  v15 = *(v0 + 392);
  v16 = *(v0 + 400);

  (*(v16 + 8))(v14, v15);
  v17 = *(v0 + 344);
  static Logger.install.getter();
  v18 = v17;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 584);
  if (v21)
  {
    v23 = *(v0 + 576);
    v24 = *(v0 + 536);
    v129 = *(v0 + 544);
    v131 = *(v0 + 496);
    v123 = *(v0 + 432);
    v126 = *(v0 + 456);
    v25 = *(v0 + 344);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v134[0] = v28;
    *v26 = 138412546;
    *(v26 + 4) = v25;
    *v27 = v25;
    *(v26 + 12) = 2082;
    v29 = v25;
    v30 = sub_1002346CC(v23, v22, v134);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Failed to create proxy for extension: %{public}s", v26, 0x16u);
    sub_1000032A8(v27, &qword_10077F920);

    sub_10000710C(v28);

    v131(v126, v123);
  }

  else
  {
    v46 = *(v0 + 544);
    v47 = *(v0 + 496);
    v48 = *(v0 + 456);
    v49 = *(v0 + 432);

    v47(v48, v49);
  }

  v50 = [*(v0 + 520) nextObject];
  if (!v50)
  {
LABEL_18:
    v61 = *(v0 + 528);
LABEL_19:
    *(v0 + 560) = v61;
    if (*(v61 + 2))
    {
      static Clock<>.continuous.getter();
      v62 = swift_task_alloc();
      *(v0 + 608) = v62;
      *v62 = v0;
      v62[1] = sub_100228260;

      return (sub_10049E724)(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    else
    {

      v64 = *(v0 + 344);
      static Logger.install.getter();
      v65 = v64;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 344);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v68;
        *v70 = v68;
        v71 = v68;
        _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Automatic updates for extensions is complete", v69, 0xCu);
        sub_1000032A8(v70, &qword_10077F920);
      }

      v72 = *(v0 + 520);
      v73 = *(v0 + 512);
      v74 = *(v0 + 496);
      v75 = *(v0 + 448);
      v76 = *(v0 + 432);

      v74(v75, v76);
      sub_10000710C(v0 + 16);

      v99 = *(v0 + 8);

      return v99();
    }
  }

  while (1)
  {
LABEL_12:
    *(v0 + 536) = v50;
    v52 = [v50 containingBundleRecord];
    *(v0 + 544) = v52;
    if (!v52)
    {
      goto LABEL_11;
    }

    v53 = v52;
    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    *(v0 + 552) = v54;
    if (!v54)
    {
      goto LABEL_9;
    }

    v55 = [v54 bundleIdentifier];
    if (!v55)
    {
      v51 = v50;
      v50 = v53;
      goto LABEL_10;
    }

    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_100616B70(v57, v59);
    *(v0 + 568) = v60;

    if (v60[2])
    {
      break;
    }

LABEL_9:
    v51 = v53;
LABEL_10:

LABEL_11:
    v50 = [*(v0 + 520) nextObject];
    if (!v50)
    {
      goto LABEL_18;
    }
  }

  v100 = [v50 bundleIdentifier];
  if (v100)
  {
    v101 = v100;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;
  }

  else
  {
    v104 = 0xE700000000000000;
    v102 = 0x6E776F6E6B6E75;
  }

  *(v0 + 584) = v104;
  *(v0 + 576) = v102;
  v105 = swift_task_alloc();
  *(v0 + 592) = v105;
  *v105 = v0;
  v105[1] = sub_100226B6C;
  v106 = *(v0 + 384);

  return sub_10049AB44(v106, v50);
}

uint64_t sub_100227BE4()
{
  v61 = v0;
  v1 = *(v0 + 384);
  (*(*(v0 + 400) + 56))(v1, 1, 1, *(v0 + 392));
  sub_1000032A8(v1, &qword_10077EDE0);
  v2 = *(v0 + 344);
  static Logger.install.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 584);
  if (v6)
  {
    v8 = *(v0 + 576);
    v9 = *(v0 + 536);
    v58 = *(v0 + 544);
    v59 = *(v0 + 496);
    v56 = *(v0 + 432);
    v57 = *(v0 + 456);
    v10 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    v14 = v10;
    v15 = sub_1002346CC(v8, v7, &v60);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to create proxy for extension: %{public}s", v11, 0x16u);
    sub_1000032A8(v12, &qword_10077F920);

    sub_10000710C(v13);

    v59(v57, v56);
  }

  else
  {
    v16 = *(v0 + 544);
    v17 = *(v0 + 496);
    v18 = *(v0 + 456);
    v19 = *(v0 + 432);

    v17(v18, v19);
  }

  v20 = [*(v0 + 520) nextObject];
  if (!v20)
  {
LABEL_15:
    v32 = *(v0 + 528);
    *(v0 + 560) = v32;
    if (*(v32 + 16))
    {
      static Clock<>.continuous.getter();
      v33 = swift_task_alloc();
      *(v0 + 608) = v33;
      *v33 = v0;
      v33[1] = sub_100228260;

      return sub_10049E724(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    else
    {

      v35 = *(v0 + 344);
      static Logger.install.getter();
      v36 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 344);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v39;
        *v41 = v39;
        v42 = v39;
        _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Automatic updates for extensions is complete", v40, 0xCu);
        sub_1000032A8(v41, &qword_10077F920);
      }

      v43 = *(v0 + 520);
      v44 = *(v0 + 512);
      v45 = *(v0 + 496);
      v46 = *(v0 + 448);
      v47 = *(v0 + 432);

      v45(v46, v47);
      sub_10000710C(v0 + 16);

      v48 = *(v0 + 8);

      return v48();
    }
  }

  v21 = v20;
  while (1)
  {
    *(v0 + 536) = v21;
    v23 = [v21 containingBundleRecord];
    *(v0 + 544) = v23;
    if (!v23)
    {
      goto LABEL_8;
    }

    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    *(v0 + 552) = v25;
    if (!v25)
    {
      goto LABEL_6;
    }

    v26 = [v25 bundleIdentifier];
    if (!v26)
    {
      v22 = v21;
      v21 = v24;
      goto LABEL_7;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100616B70(v28, v30);
    *(v0 + 568) = v31;

    if (v31[2])
    {
      break;
    }

LABEL_6:
    v22 = v24;
LABEL_7:

LABEL_8:
    v21 = [*(v0 + 520) nextObject];
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  v49 = [v21 bundleIdentifier];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v53 = 0xE700000000000000;
    v51 = 0x6E776F6E6B6E75;
  }

  *(v0 + 584) = v53;
  *(v0 + 576) = v51;
  v54 = swift_task_alloc();
  *(v0 + 592) = v54;
  *v54 = v0;
  v54[1] = sub_100226B6C;
  v55 = *(v0 + 384);

  return sub_10049AB44(v55, v21);
}

uint64_t sub_100228260()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {

    v3 = sub_100228620;
  }

  else
  {
    v3 = sub_1002283B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002283B0()
{
  v1 = v0[70];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[50];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = v0[51];
      v10 = v0[49];
      v5(v9, v7, v10);
      _AppExtensionProcess.invalidate()();
      (*(v4 - 8))(v9, v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v11 = v0[43];
  static Logger.install.getter();
  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[43];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Automatic updates for extensions is complete", v16, 0xCu);
    sub_1000032A8(v17, &qword_10077F920);
  }

  v19 = v0[65];
  v20 = v0[64];
  v21 = v0[62];
  v22 = v0[56];
  v23 = v0[54];

  v21(v22, v23);
  sub_10000710C((v0 + 2));

  v24 = v0[1];

  return v24();
}

uint64_t sub_100228620()
{
  v25 = v0;
  v1 = *(v0 + 512);

  v2 = *(v0 + 344);
  static Logger.install.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = *(v0 + 496);
    v21 = *(v0 + 432);
    v22 = *(v0 + 464);
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v19 = v6;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(*(v0 + 304) - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = v6;
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error granting automatic update runtime: %{public}s", v7, 0x16u);
    sub_1000032A8(v19, &qword_10077F920);

    sub_10000710C(v20);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 496);
    v15 = *(v0 + 464);
    v16 = *(v0 + 432);

    v14(v15, v16);
  }

  sub_10000710C(v0 + 16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10022895C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = *a4;
  *(v4 + 343) = a3;
  *(v4 + 648) = a2;
  *(v4 + 640) = a1;
  v7 = v6;
  v8 = type metadata accessor for LogKey.Prefix();
  *(v4 + 656) = v8;
  *(v4 + 664) = *(v8 - 8);
  *(v4 + 672) = swift_task_alloc();
  v9 = type metadata accessor for IdentifiableAvailableUpdate(0);
  *(v4 + 680) = v9;
  *(v4 + 688) = *(v9 - 8);
  *(v4 + 696) = swift_task_alloc();
  v10 = type metadata accessor for AvailableUpdate(0);
  *(v4 + 704) = v10;
  *(v4 + 712) = *(v10 - 8);
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 744) = v11;
  *(v4 + 752) = *(v11 - 8);
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 768) = swift_task_alloc();
  *(v4 + 776) = swift_task_alloc();
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 480) = v7;
  *(v4 + 488) = &off_100770208;
  *(v4 + 456) = a4;

  return _swift_task_switch(sub_100228BE8, 0, 0);
}

uint64_t sub_100228BE8()
{
  v88 = v0;
  v1 = *(v0 + 640);
  v2 = *(v1 + 16);
  *(v0 + 816) = v2;
  if (v2)
  {
    *(v0 + 896) = enum case for LogKey.Prefix.undefined(_:);
    *(v0 + 840) = _swiftEmptyArrayStorage;
    *(v0 + 832) = _swiftEmptyArrayStorage;
    *(v0 + 824) = 0;
    sub_100231F70(v1 + 32, v0 + 344);
    static Logger.updates.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Sending installed versions:", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 792);
    v9 = *(v0 + 752);
    v10 = *(v0 + 744);

    v11 = *(v9 + 8);
    *(v0 + 848) = v11;
    *(v0 + 856) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81 = v11;
    result = v11(v8, v10);
    v13 = *(v0 + 400);
    *(v0 + 864) = v13;
    v80 = *(v13 + 16);
    if (v80)
    {
      v14 = 0;
      v78 = (v0 + 632);
      v15 = (v13 + 72);
      v70 = v0;
      v79 = v13;
      while (v14 < *(v13 + 16))
      {
        v18 = *(v15 - 4);
        v82 = *(v15 - 5);
        v19 = *(v15 - 3);
        v20 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;

        static Logger.updates.getter();

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        v83 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v75 = v19;
          v76 = v21;
          log = v23;
          v25 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v78 = swift_slowAlloc();
          *v25 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v26 = *(v0 + 504);
          v27 = v0;
          if (!v26 || (, , , os_unfair_lock_lock((v26 + 24)), v28 = *(v26 + 16), v29 = v28, os_unfair_lock_unlock((v26 + 24)), , !v28))
          {
            (*(*(v27 + 664) + 104))(*(v27 + 672), *(v27 + 896), *(v27 + 656));
            v30 = objc_allocWithZone(type metadata accessor for LogKey());
            v29 = LogKey.init(prefix:)();
          }

          v72 = *(v27 + 744);
          v73 = *(v27 + 760);
          *(v25 + 4) = v29;
          *v74 = v29;
          *(v25 + 12) = 2082;

          v31 = sub_1002346CC(v82, v18, v78);

          *(v25 + 14) = v31;
          *(v25 + 22) = 2082;

          v32 = sub_1002346CC(v75, v20, v78);

          *(v25 + 24) = v32;
          *(v25 + 32) = 2082;

          v33 = sub_1002346CC(v76, v22, v78);

          *(v25 + 34) = v33;
          _os_log_impl(&_mh_execute_header, log, v83, "[%@] %{public}s - %{public}s : %{public}s", v25, 0x2Au);
          sub_1000032A8(v74, &qword_10077F920);

          swift_arrayDestroy();

          result = v81(v73, v72);
          v0 = v70;
        }

        else
        {
          v16 = *(v0 + 760);
          v17 = *(v0 + 744);

          result = v81(v16, v17);
        }

        v13 = v79;
        ++v14;
        v15 += 6;
        if (v80 == v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v34 = *(v0 + 343);
      v35 = *(v0 + 648);
      sub_100231F70(v0 + 344, v0 + 16);
      sub_10020A980(v0 + 456, v0 + 192);
      v36 = *v35;
      v37 = v35[2];
      *(v0 + 96) = v35[1];
      *(v0 + 112) = v37;
      *(v0 + 80) = v36;
      v38 = v35[3];
      v39 = v35[4];
      v40 = v35[5];
      *(v0 + 175) = *(v35 + 95);
      *(v0 + 144) = v39;
      *(v0 + 160) = v40;
      *(v0 + 128) = v38;
      *(v0 + 191) = v34;
      sub_10020A7AC(v35, v0 + 232);
      v41 = swift_task_alloc();
      *(v0 + 872) = v41;
      *v41 = v0;
      v41[1] = sub_100229584;

      return sub_1005D00A0();
    }
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      static Logger.updates.getter();

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 800);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      if (v44)
      {
        v84 = *(v0 + 800);
        v48 = (v0 + 616);
        v71 = v0;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v85 = v51;
        *v49 = 138412546;
        v52 = sub_100625FA0();
        *(v49 + 4) = v52;
        *v50 = v52;
        *(v49 + 12) = 2082;
        v53 = _swiftEmptyArrayStorage[2];
        *v48 = v53;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v54;
        v55._countAndFlagsBits = 32;
        v55._object = 0xE100000000000000;
        String.append(_:)(v55);
        v56._countAndFlagsBits = 0x657461647075;
        v56._object = 0xE600000000000000;
        String.append(_:)(v56);
        if (v53 == 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = 115;
        }

        if (v53 == 1)
        {
          v58 = 0xE000000000000000;
        }

        else
        {
          v58 = 0xE100000000000000;
        }

        v59 = v58;
        String.append(_:)(*&v57);

        v60 = sub_1002346CC(v86, v87, &v85);

        *(v49 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Discovered %{public}s", v49, 0x16u);
        sub_1000032A8(v50, &qword_10077F920);

        sub_10000710C(v51);

        v0 = v71;

        (*(v46 + 8))(v84, v47);
      }

      else
      {

        (*(v46 + 8))(v45, v47);
      }
    }

    else
    {
      static Logger.updates.getter();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        v65 = sub_100625FA0();
        *(v63 + 4) = v65;
        *v64 = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "[%@] No updates discovered", v63, 0xCu);
        sub_1000032A8(v64, &qword_10077F920);
      }

      v66 = *(v0 + 808);
      v67 = *(v0 + 752);
      v68 = *(v0 + 744);

      (*(v67 + 8))(v66, v68);
    }

    sub_10000710C(v0 + 456);

    v69 = *(v0 + 8);

    return v69(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100229584(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 880) = a1;
  *(v3 + 888) = v1;

  if (v1)
  {
    v4 = sub_10022A854;
  }

  else
  {
    v4 = sub_10022969C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10022969C()
{
  v175 = v0;
  v1 = *(v0 + 880);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 552);
    v140 = (v0 + 568);
    v4 = *(v0 + 712);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v163 = *(v4 + 72);
    v6 = *(v0 + 888);
    v141 = *(v0 + 840);
    v144 = *(v0 + 832);
    v149 = (v0 + 424);
    while (1)
    {
      v7 = *(v0 + 864);
      v8 = *(v0 + 736);
      sub_100232074(v5, v8, type metadata accessor for AvailableUpdate);
      *(swift_task_alloc() + 16) = v8;
      sub_100209AA0(sub_1002320DC, v7, (v0 + 408));
      v170 = v6;

      v9 = *(v0 + 416);
      if (v9)
      {
        v160 = *(v0 + 408);
        v10 = *(v0 + 440);
        v11 = *(v0 + 448);

        v12 = sub_1005B6FBC(v10, v11);
        if ((v13 & 1) == 0)
        {
          v44 = v12;
          v45 = *(v0 + 736);
          v46 = *(v45 + 16);
          v47 = *(v45 + 24);

          v48 = sub_1005B6FBC(v46, v47);
          if ((v49 & 1) == 0 && v44 < v48)
          {
            v167 = v2;
            v50 = *(v0 + 728);
            v51 = *(v0 + 704);
            v52 = *(v0 + 696);
            v53 = *(v0 + 680);
            v55 = *(v0 + 384);
            v54 = *(v0 + 392);
            sub_100232074(*(v0 + 736), v50, type metadata accessor for AvailableUpdate);
            *v52 = v55;
            *(v52 + 1) = v54;
            *(v52 + 2) = v160;
            *(v52 + 3) = v9;
            *v140 = *v149;

            sub_10023215C(v140);

            v56 = *(v50 + 1);
            *(v52 + 4) = *v50;
            *(v52 + 5) = v56;
            v57 = *(v50 + 3);
            *(v52 + 6) = *(v50 + 2);
            *(v52 + 7) = v57;
            v58 = v51[8];
            v59 = v53[8];
            v60 = type metadata accessor for URL();
            (*(*(v60 - 8) + 32))(&v52[v59], &v50[v58], v60);
            v61 = *(v50 + 5);
            v62 = &v52[v53[9]];
            *v62 = *(v50 + 4);
            *(v62 + 1) = v61;
            v63 = *(v50 + 7);
            v64 = &v52[v53[10]];
            *v64 = *(v50 + 6);
            *(v64 + 1) = v63;
            v65 = &v50[v51[9]];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = &v52[v53[11]];
            *v68 = v67;
            *(v68 + 1) = v66;
            sub_1002321B0(&v50[v51[10]], &v52[v53[12]]);
            v69 = v144;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_100362C2C(0, v144[2] + 1, 1, v144);
            }

            v2 = v167;
            v6 = v170;
            v71 = v69[2];
            v70 = v69[3];
            v3 = (v0 + 552);
            if (v71 >= v70 >> 1)
            {
              v69 = sub_100362C2C(v70 > 1, v71 + 1, 1, v69);
            }

            v72 = *(v0 + 696);
            v73 = *(v0 + 688);
            v69[2] = v71 + 1;
            sub_100232220(v72, v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, type metadata accessor for IdentifiableAvailableUpdate);
            v144 = v69;
            v141 = v69;
            goto LABEL_5;
          }
        }

        v14 = *(v0 + 736);
        v15 = *(v0 + 720);
        static Logger.updates.getter();
        *v3 = *v149;
        sub_100232074(v14, v15, type metadata accessor for AvailableUpdate);

        sub_100222DF8(v3, v0 + 600);
        v16 = Logger.logObject.getter();
        LOBYTE(v14) = static os_log_type_t.error.getter();

        sub_10023215C(v3);

        v150 = v14;
        v17 = os_log_type_enabled(v16, v14);
        v154 = *(v0 + 768);
        v157 = *(v0 + 848);
        log = *(v0 + 744);
        v18 = v3;
        v19 = *(v0 + 720);
        if (v17)
        {
          v20 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *v20 = 138413058;
          v21 = sub_100625FA0();
          *(v20 + 4) = v21;
          *v146 = v21;
          *(v20 + 12) = 2082;

          v165 = v2;
          v22 = sub_1002346CC(v160, v9, &v173);

          *(v20 + 14) = v22;
          *(v20 + 22) = 2082;

          sub_10023215C(v18);

          v23 = sub_1002346CC(v10, v11, &v173);

          *(v20 + 24) = v23;
          *(v20 + 32) = 2082;
          v24 = *(v19 + 16);
          v25 = *(v19 + 24);

          sub_1002320FC(v19, type metadata accessor for AvailableUpdate);
          v26 = sub_1002346CC(v24, v25, &v173);
          v2 = v165;

          *(v20 + 34) = v26;
          _os_log_impl(&_mh_execute_header, v16, v150, "[%@] Dropping update for %{public}s, have %{public}s and received %{public}s", v20, 0x2Au);
          sub_1000032A8(v146, &qword_10077F920);

          swift_arrayDestroy();
        }

        else
        {

          sub_10023215C(v18);

          sub_1002320FC(v19, type metadata accessor for AvailableUpdate);
        }

        v157(v154, log);
        v3 = v18;
      }

      else
      {
        v27 = *(v0 + 736);
        object = v27->_object;
        *(v0 + 584) = v27->_countAndFlagsBits;
        *(v0 + 592) = object;

        v29._countAndFlagsBits = 58;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        String.append(_:)(v27[1]);
        v30._countAndFlagsBits = 32;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        String.append(_:)(v27[3]);
        v31._countAndFlagsBits = 10272;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);
        String.append(_:)(v27[2]);
        v32._countAndFlagsBits = 41;
        v32._object = 0xE100000000000000;
        String.append(_:)(v32);
        v158 = *(v0 + 584);
        v33 = *(v0 + 592);
        static Logger.updates.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        v36 = os_log_type_enabled(v34, v35);
        v37 = *(v0 + 848);
        v161 = *(v0 + 776);
        v38 = *(v0 + 744);
        if (v36)
        {
          v166 = v2;
          v39 = swift_slowAlloc();
          v155 = v37;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v173 = v41;
          *v39 = 138412546;
          v42 = sub_100625FA0();
          *(v39 + 4) = v42;
          *v40 = v42;
          *(v39 + 12) = 2082;
          v43 = sub_1002346CC(v158, v33, &v173);

          *(v39 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Dropping update for unrequested app: %{public}s", v39, 0x16u);
          sub_1000032A8(v40, &qword_10077F920);

          sub_10000710C(v41);
          v3 = (v0 + 552);

          v2 = v166;

          v155(v161, v38);
        }

        else
        {

          v37(v161, v38);
        }
      }

      v6 = v170;
LABEL_5:
      sub_1002320FC(*(v0 + 736), type metadata accessor for AvailableUpdate);
      v5 += v163;
      if (!--v2)
      {
        v74 = v141;
        goto LABEL_23;
      }
    }
  }

  v74 = *(v0 + 840);
  v144 = *(v0 + 832);
LABEL_23:
  sub_100231FCC(v0 + 16);

  sub_100232020(v0 + 344);
  v75 = *(v0 + 824) + 1;
  if (v75 == *(v0 + 816))
  {
    if (v144[2])
    {
      static Logger.updates.getter();

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 800);
      v80 = *(v0 + 752);
      v81 = *(v0 + 744);
      if (v78)
      {
        v168 = *(v0 + 744);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v172 = v84;
        *v82 = 138412546;
        v85 = sub_100625FA0();
        *(v82 + 4) = v85;
        *v83 = v85;
        *(v82 + 12) = 2082;
        v142 = v74;
        v86 = v74[2];
        *(v0 + 616) = v86;
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v87;
        v88._countAndFlagsBits = 32;
        v88._object = 0xE100000000000000;
        String.append(_:)(v88);
        v89._countAndFlagsBits = 0x657461647075;
        v89._object = 0xE600000000000000;
        String.append(_:)(v89);
        if (v86 == 1)
        {
          v90 = 0;
        }

        else
        {
          v90 = 115;
        }

        if (v86 == 1)
        {
          v91 = 0xE000000000000000;
        }

        else
        {
          v91 = 0xE100000000000000;
        }

        v92 = v91;
        String.append(_:)(*&v90);

        v93 = sub_1002346CC(v173, v174, &v172);

        *(v82 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Discovered %{public}s", v82, 0x16u);
        sub_1000032A8(v83, &qword_10077F920);

        sub_10000710C(v84);

        (*(v80 + 8))(v79, v168);
      }

      else
      {
        v142 = v74;

        (*(v80 + 8))(v79, v81);
      }
    }

    else
    {
      v142 = v74;
      static Logger.updates.getter();
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        v135 = sub_100625FA0();
        *(v133 + 4) = v135;
        *v134 = v135;
        _os_log_impl(&_mh_execute_header, v131, v132, "[%@] No updates discovered", v133, 0xCu);
        sub_1000032A8(v134, &qword_10077F920);
      }

      v136 = *(v0 + 808);
      v137 = *(v0 + 752);
      v138 = *(v0 + 744);

      (*(v137 + 8))(v136, v138);
    }

    sub_10000710C(v0 + 456);

    v139 = *(v0 + 8);

    return v139(v142);
  }

  else
  {
    *(v0 + 840) = v74;
    *(v0 + 832) = v144;
    *(v0 + 824) = v75;
    sub_100231F70(*(v0 + 640) + (v75 << 6) + 32, v0 + 344);
    static Logger.updates.getter();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      v98 = sub_100625FA0();
      *(v96 + 4) = v98;
      *v97 = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "[%@] Sending installed versions:", v96, 0xCu);
      sub_1000032A8(v97, &qword_10077F920);
    }

    v99 = *(v0 + 792);
    v100 = *(v0 + 752);
    v101 = *(v0 + 744);

    v102 = *(v100 + 8);
    *(v0 + 848) = v102;
    *(v0 + 856) = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v162 = v102;
    result = v102(v99, v101);
    v104 = *(v0 + 400);
    *(v0 + 864) = v104;
    v159 = *(v104 + 16);
    if (v159)
    {
      v105 = 0;
      v156 = (v0 + 632);
      v106 = (v104 + 72);
      v143 = v104;
      while (v105 < *(v104 + 16))
      {
        v109 = *(v106 - 4);
        v164 = *(v106 - 5);
        v110 = *(v106 - 2);
        v169 = *(v106 - 3);
        v171 = v105;
        v111 = *(v106 - 1);
        v112 = *v106;

        static Logger.updates.getter();

        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v151 = v111;
          loga = v113;
          v115 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v156 = swift_slowAlloc();
          *v115 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v116 = *(v0 + 504);
          if (!v116 || (, , , os_unfair_lock_lock((v116 + 24)), v117 = *(v116 + 16), v118 = v117, os_unfair_lock_unlock((v116 + 24)), , !v117))
          {
            (*(*(v0 + 664) + 104))(*(v0 + 672), *(v0 + 896), *(v0 + 656));
            v119 = objc_allocWithZone(type metadata accessor for LogKey());
            v118 = LogKey.init(prefix:)();
          }

          v145 = *(v0 + 744);
          v147 = *(v0 + 760);
          *(v115 + 4) = v118;
          *v148 = v118;
          *(v115 + 12) = 2082;

          v120 = sub_1002346CC(v164, v109, v156);

          *(v115 + 14) = v120;
          *(v115 + 22) = 2082;

          v121 = sub_1002346CC(v169, v110, v156);

          *(v115 + 24) = v121;
          *(v115 + 32) = 2082;

          v122 = sub_1002346CC(v151, v112, v156);

          *(v115 + 34) = v122;
          _os_log_impl(&_mh_execute_header, loga, v114, "[%@] %{public}s - %{public}s : %{public}s", v115, 0x2Au);
          sub_1000032A8(v148, &qword_10077F920);

          swift_arrayDestroy();

          result = v162(v147, v145);
          v104 = v143;
        }

        else
        {
          v107 = *(v0 + 760);
          v108 = *(v0 + 744);

          result = v162(v107, v108);
        }

        v105 = v171 + 1;
        v106 += 6;
        if (v159 == v171 + 1)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_47:
      v123 = *(v0 + 343);
      v124 = *(v0 + 648);
      sub_100231F70(v0 + 344, v0 + 16);
      sub_10020A980(v0 + 456, v0 + 192);
      v125 = *v124;
      v126 = v124[2];
      *(v0 + 96) = v124[1];
      *(v0 + 112) = v126;
      *(v0 + 80) = v125;
      v127 = v124[3];
      v128 = v124[4];
      v129 = v124[5];
      *(v0 + 175) = *(v124 + 95);
      *(v0 + 144) = v128;
      *(v0 + 160) = v129;
      *(v0 + 128) = v127;
      *(v0 + 191) = v123;
      sub_10020A7AC(v124, v0 + 232);
      v130 = swift_task_alloc();
      *(v0 + 872) = v130;
      *v130 = v0;
      v130[1] = sub_100229584;

      return sub_1005D00A0();
    }
  }

  return result;
}