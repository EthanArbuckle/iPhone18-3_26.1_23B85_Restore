uint64_t sub_1000CFD54(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_10007EDA4(v20, qword_1003F26C8);
    v21 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v23 = static os_log_type_t.error.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v25 = 136446466;
      v26._countAndFlagsBits = v21;
      v26._object = v22;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 8285;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v65);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v15 = 136446466;
      v16._countAndFlagsBits = v11;
      v16._object = v12;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v65);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = [a1 responseCorrelationId];
LABEL_16:
    v35 = v29;
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  v30 = v8;

  if (v30)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v31 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_1000D3610();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v42 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v43;

    sub_1000D3610();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v32, v34);
    v64 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for SKLogger();
    sub_10007EDA4(v44, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v45._object = 0x80000001003166F0;
    v45._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 0x736E6F7073657220;
    v46._object = 0xEF206F746E692065;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0xD000000000000019;
    v47._object = 0x8000000100316710;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    v65 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v50 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v49 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v53 = 136446466;
      v54._countAndFlagsBits = v50;
      v54._object = v49;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 8285;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      v56 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_100080210(0, 0xE000000000000000, &v65);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = [v64 responseCorrelationId];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v63 = v60;
    v63[1] = v62;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v32, v34);
  }
}

uint64_t sub_1000D069C(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_10007EDA4(v20, qword_1003F26C8);
    v21 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v23 = static os_log_type_t.error.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v25 = 136446466;
      v26._countAndFlagsBits = v21;
      v26._object = v22;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 8285;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = sub_100080210(91, 0xE100000000000000, &v66);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v66);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v15 = 136446466;
      v16._countAndFlagsBits = v11;
      v16._object = v12;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v66);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v66);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = [a1 responseCorrelationId];
LABEL_16:
    v35 = v29;
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  v30 = v8;

  if (v30)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v31 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_1000D38F8();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v42 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v43;

    sub_1000D38F8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v32, v34);
    v64 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for SKLogger();
    sub_10007EDA4(v44, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v45._object = 0x80000001003166F0;
    v45._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 0x736E6F7073657220;
    v46._object = 0xEF206F746E692065;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0xD000000000000046;
    v47._object = 0x8000000100316880;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    v66 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v50 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v49 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v53 = 136446466;
      v54._countAndFlagsBits = v50;
      v54._object = v49;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 8285;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      v56 = sub_100080210(91, 0xE100000000000000, &v66);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_100080210(0, 0xE000000000000000, &v66);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = [v64 responseCorrelationId];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v63 = v60;
    v63[1] = v62;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v32, v34);

    return v65;
  }
}

uint64_t sub_1000D0FE8(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_10007EDA4(v20, qword_1003F26C8);
    v21 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v23 = static os_log_type_t.error.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v25 = 136446466;
      v26._countAndFlagsBits = v21;
      v26._object = v22;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 8285;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v65);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v15 = 136446466;
      v16._countAndFlagsBits = v11;
      v16._object = v12;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v65);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = [a1 responseCorrelationId];
LABEL_16:
    v35 = v29;
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  v30 = v8;

  v64 = a1;
  if (v30)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100080FB4(&qword_1003CDB98);
    v31 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_1000D3874();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100080FB4(&qword_1003CDB98);
    v42 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v43;

    sub_1000D3874();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v32, v34);

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for SKLogger();
    sub_10007EDA4(v44, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v45._object = 0x80000001003166F0;
    v45._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 0x736E6F7073657220;
    v46._object = 0xEF206F746E692065;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0xD000000000000029;
    v47._object = 0x8000000100316850;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    v65 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v50 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v49 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v53 = 136446466;
      v54._countAndFlagsBits = v50;
      v54._object = v49;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 8285;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      v56 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_100080210(0, 0xE000000000000000, &v65);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = [v64 responseCorrelationId];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v63 = v60;
    v63[1] = v62;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v32, v34);
  }
}

uint64_t sub_1000D1958(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_10007EDA4(v20, qword_1003F26C8);
    v21 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v23 = static os_log_type_t.error.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v25 = 136446466;
      v26._countAndFlagsBits = v21;
      v26._object = v22;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 8285;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v65);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v15 = 136446466;
      v16._countAndFlagsBits = v11;
      v16._object = v12;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v65);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = [a1 responseCorrelationId];
LABEL_16:
    v35 = v29;
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  v30 = v8;

  v64 = a1;
  if (v30)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    type metadata accessor for ExternalPurchaseTokenV2Response();
    v31 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_1000D381C();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for ExternalPurchaseTokenV2Response();
    v42 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v43;

    sub_1000D381C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v32, v34);

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for SKLogger();
    sub_10007EDA4(v44, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v45._object = 0x80000001003166F0;
    v45._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 0x736E6F7073657220;
    v46._object = 0xEF206F746E692065;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0xD00000000000001FLL;
    v47._object = 0x8000000100316830;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    v65 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v50 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v49 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v53 = 136446466;
      v54._countAndFlagsBits = v50;
      v54._object = v49;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 8285;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      v56 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_100080210(0, 0xE000000000000000, &v65);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = [v64 responseCorrelationId];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v63 = v60;
    v63[1] = v62;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v32, v34);
  }
}

uint64_t sub_1000D22B0(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_10007EDA4(v20, qword_1003F26C8);
    v21 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v23 = static os_log_type_t.error.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v25 = 136446466;
      v26._countAndFlagsBits = v21;
      v26._object = v22;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 8285;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v65);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v15 = 136446466;
      v16._countAndFlagsBits = v11;
      v16._object = v12;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v65);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = [a1 responseCorrelationId];
LABEL_16:
    v35 = v29;
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  v30 = v8;

  if (v30)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v31 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_1000D394C();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v42 = [a1 data];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v43;

    sub_1000D394C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v32, v34);
    v64 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for SKLogger();
    sub_10007EDA4(v44, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v45._object = 0x80000001003166F0;
    v45._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46._countAndFlagsBits = 0x736E6F7073657220;
    v46._object = 0xEF206F746E692065;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0xD00000000000004CLL;
    v47._object = 0x80000001003168D0;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    v65 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v50 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v49 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v53 = 136446466;
      v54._countAndFlagsBits = v50;
      v54._object = v49;
      String.append(_:)(v54);
      v55._countAndFlagsBits = 8285;
      v55._object = 0xE200000000000000;
      String.append(_:)(v55);
      v56 = sub_100080210(91, 0xE100000000000000, &v65);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_100080210(0, 0xE000000000000000, &v65);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = [v64 responseCorrelationId];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v63 = v60;
    v63[1] = v62;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v32, v34);
  }
}

uint64_t sub_1000D2BEC(void *a1)
{
  v4 = sub_1001571E8();
  if (!v5)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger();
    sub_10007EDA4(v21, qword_1003F26C8);
    v22 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v23 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v69 = v27;
      v28._countAndFlagsBits = v22;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 8285;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30 = sub_100080210(91, 0xE100000000000000, &v69);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_100080210(0xD000000000000045, 0x8000000100316670, &v69);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    v31 = [a1 responseCorrelationId];
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;

  v8 = sub_10021E46C();
  if (v8 == 2)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    _StringGuts.grow(_:)(37);

    v10._countAndFlagsBits = v6;
    v10._object = v7;
    String.append(_:)(v10);

    v11 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v12 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v69 = v16;
      v17._countAndFlagsBits = v11;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, &v69);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_100080210(0xD000000000000023, 0x80000001003166C0, &v69);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = [a1 responseCorrelationId];
LABEL_16:
    v37 = v31;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v42 = v39;
    v42[1] = v41;
    swift_willThrow();
    return v43 & 1;
  }

  v32 = v8;

  if (v32)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v33 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    sub_1000D37C8();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v44 = [a1 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v45;

    sub_1000D37C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (v2)
  {
    sub_10008E168(v34, v36);
    v68 = a1;

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for SKLogger();
    sub_10007EDA4(v46, qword_1003F26C8);
    _StringGuts.grow(_:)(40);
    v47._object = 0x80000001003166F0;
    v47._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48._countAndFlagsBits = 0x736E6F7073657220;
    v48._object = 0xEF206F746E692065;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD000000000000025;
    v49._object = 0x8000000100316800;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 8250;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v69 = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v52 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey);
    v51 = *(v1 + OBJC_IVAR____TtC9storekitd7Request_logKey + 8);

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 136446466;
      v69 = v56;
      v57._countAndFlagsBits = v52;
      v57._object = v51;
      String.append(_:)(v57);
      v58._countAndFlagsBits = 8285;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      v59 = sub_100080210(91, 0xE100000000000000, &v69);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_100080210(0, 0xE000000000000000, &v69);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v61 = [v68 responseCorrelationId];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1000D35BC();
    swift_allocError();
    *v66 = v63;
    v66[1] = v65;
    swift_willThrow();
  }

  else
  {
    sub_10008E168(v34, v36);

    v43 = v70;
  }

  return v43 & 1;
}

uint64_t sub_1000D3538(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CDB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D35BC()
{
  result = qword_1003D2C50;
  if (!qword_1003D2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2C50);
  }

  return result;
}

unint64_t sub_1000D3610()
{
  result = qword_1003CDB68;
  if (!qword_1003CDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB68);
  }

  return result;
}

unint64_t sub_1000D3664()
{
  result = qword_1003CDB70;
  if (!qword_1003CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB70);
  }

  return result;
}

unint64_t sub_1000D36CC()
{
  result = qword_1003CDB78;
  if (!qword_1003CDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB78);
  }

  return result;
}

unint64_t sub_1000D3720()
{
  result = qword_1003CDB80;
  if (!qword_1003CDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB80);
  }

  return result;
}

unint64_t sub_1000D3774()
{
  result = qword_1003CDB88;
  if (!qword_1003CDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB88);
  }

  return result;
}

unint64_t sub_1000D37C8()
{
  result = qword_1003CDB90;
  if (!qword_1003CDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDB90);
  }

  return result;
}

unint64_t sub_1000D381C()
{
  result = qword_1003D2750;
  if (!qword_1003D2750)
  {
    type metadata accessor for ExternalPurchaseTokenV2Response();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2750);
  }

  return result;
}

unint64_t sub_1000D3874()
{
  result = qword_1003CDBA0;
  if (!qword_1003CDBA0)
  {
    sub_1000852D4(&qword_1003CDB98);
    sub_1000D381C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDBA0);
  }

  return result;
}

unint64_t sub_1000D38F8()
{
  result = qword_1003CDBA8;
  if (!qword_1003CDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDBA8);
  }

  return result;
}

unint64_t sub_1000D394C()
{
  result = qword_1003CDBB0;
  if (!qword_1003CDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDBB0);
  }

  return result;
}

uint64_t sub_1000D39C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D0540);
    v9 = a1 + *(a3 + 20);

    return sub_100081D0C(v9, a2, v8);
  }
}

void *sub_1000D3A6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D0540);
    v8 = v5 + *(a4 + 20);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000D3AF8()
{
  type metadata accessor for Client(319);
  if (v0 <= 0x3F)
  {
    sub_1000B77F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000D3B7C()
{
  result = qword_1003CDC50;
  if (!qword_1003CDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDC50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyUnfinishedTransactionCountResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000D3C6CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D3CA8()
{
  result = qword_1003CDC58;
  if (!qword_1003CDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDC58);
  }

  return result;
}

unint64_t sub_1000D3D00()
{
  result = qword_1003CDC60;
  if (!qword_1003CDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDC60);
  }

  return result;
}

unint64_t sub_1000D3D58()
{
  result = qword_1003CDC68;
  if (!qword_1003CDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDC68);
  }

  return result;
}

uint64_t sub_1000D3DF4()
{

  return swift_once();
}

BOOL sub_1000D3E4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v15);
}

uint64_t sub_1000D3E6C()
{
}

unint64_t sub_1000D3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v7 + 4) = v6;
  *(v7 + 12) = 2082;

  return sub_100080210(0xD00000000000001DLL, a5 | 0x8000000000000000, va);
}

void sub_1000D3F34(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v9 + 760) = v8;
  *(v9 + 752) = v10;
  *(v9 + 744) = v7;
  *(v9 + 792) = a1;
  *(v9 + 736) = a7;
}

void sub_1000D3F54(float a1)
{
  *v2 = a1;
  *(v1 + 552) = 91;
  *(v1 + 560) = 0xE100000000000000;
  v6 = v4;
  v7 = v3;

  String.append(_:)(*&v6);
}

uint64_t sub_1000D3F84()
{
}

void sub_1000D3FA4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

void sub_1000D3FC0()
{
  *(v0 + 584) = 0;
  *(v0 + 592) = 0xE000000000000000;

  _StringGuts.grow(_:)(37);
}

unint64_t sub_1000D3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v7 + 4) = v6;
  *(v7 + 12) = 2082;

  return sub_100080210(v9, v8, va);
}

uint64_t sub_1000D401C()
{
}

unint64_t sub_1000D4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_100080210(a1, v7, va);
}

uint64_t sub_1000D40CC()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000D40EC()
{
}

BOOL sub_1000D410C()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

BOOL sub_1000D412C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v17);
}

uint64_t sub_1000D414C()
{
}

uint64_t sub_1000D416C(_OWORD *a1, _OWORD *a2)
{
  sub_10008B5D0(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000D4194()
{
}

_OWORD *sub_1000D41AC()
{
  v3 = (*(v0 + 56) + 32 * v2);
  sub_100080F0C(v3);

  return sub_10008B5D0((v1 + 168), v3);
}

uint64_t sub_1000D41E4(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_100080FB4(&qword_1003CDC70);
  v2[16] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000D42AC, 0, 0);
}

uint64_t sub_1000D42AC()
{
  v53 = v0;
  v1 = *(v0 + 120);
  *(v0 + 76) = *(type metadata accessor for MessageServerRequest() + 32);
  sub_1000B7D48();
  _StringGuts.grow(_:)(44);

  v2 = v1[2];
  *(v0 + 144) = v2;
  *(v0 + 64) = v2;
  sub_1000C446C();
  v47 = 0xD00000000000002ALL;
  v48 = v3;
  *(v0 + 73) = v4;
  *(v0 + 72) = v4;
  *(v0 + 152) = sub_100080FB4(&qword_1003CDC78);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6 = v48;
  v45 = v47;
  v7 = v1[4];
  *(v0 + 160) = v7;
  v8 = v1[5];
  *(v0 + 168) = v8;
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_10008E688();
    sub_10008E670();
    *v11 = 136446466;
    sub_1000D891C();
    v12._countAndFlagsBits = v7;
    v12._object = v8;
    String.append(_:)(v12);
    sub_10009F134();
    v21 = sub_1000B0550(v13, v14, v15, v16, v17, v18, v19, v20, v41, v42, v43, v44, v45, v46, v47, v48);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2082;
    v22 = sub_100080210(v45, v6, &v46);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v31 = *(v0 + 136);
  sub_1001A7E5C(v23, v24, v25, v26, v27, v28, v29, v30, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v32 = sub_100080FB4(&qword_1003CCB50);
  if (!sub_100081D0C(v31, 2, v32))
  {
    sub_1000D5070(*(v0 + 128));
    v37 = *(v0 + 136);
    sub_1000D83C0(*(v0 + 128), *(v0 + 112));
    type metadata accessor for URL();
    sub_100098B7C();
    (*(v38 + 8))(v37);

    sub_1000D89F0();
    sub_1000D8A10();

    __asm { BRAA            X3, X16 }
  }

  v33 = swift_task_alloc();
  *(v0 + 176) = v33;
  *v33 = v0;
  v33[1] = sub_1000D49D8;
  sub_1000D8A10();

  return sub_1000D5374(v34);
}

uint64_t sub_1000D49D8(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v7 = sub_1000D4B90;
  }

  else
  {
    *(v6 + 74) = a2;
    *(v6 + 192) = a1;
    v7 = sub_1000D4B10;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000D4B10()
{
  sub_1000D894C();
  v1 = *(v0 + 192);
  v2 = *(v0 + 74);

  sub_1000D89F0();

  return v3(v1, v2 & 1);
}

uint64_t sub_1000D4B90()
{
  v50 = v0;
  sub_1000D894C();
  v1 = *(v0 + 184);
  sub_1000D8A2C();
  v2 = v49;
  *(v0 + 48) = v48;
  *(v0 + 56) = v2;
  v3._countAndFlagsBits = sub_1000D89FC();
  String.append(_:)(v3);
  *(v0 + 96) = v1;
  v4 = (v0 + 16);
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v45 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = static os_log_type_t.error.getter();
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = sub_10008E688();
    sub_10008E670();
    *v10 = 136446466;
    sub_10009F0F8();
    v47 = v11;
    v48 = v12;
    v49 = v13;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v4 = (v0 + 16);
    String.append(_:)(v14);
    sub_10009F134();
    v15 = v49;
    v16 = sub_100080210(v48, v49, &v47);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    sub_100080210(v45, v5, &v47);
    sub_1000D89D8();
    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v46 = _convertErrorToNSError(_:)();
  v17 = [v46 userInfo];
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = sub_1000D8974();
  sub_1001DA990(v19, v20, v18, v4);

  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v21 = 0;
      v22 = *(v0 + 104);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000AF25C(v4, &unk_1003CCB70);
  }

  v22 = 0;
  v21 = 1;
LABEL_9:
  sub_1000D8A2C();

  sub_1000C446C();
  v48 = 0xD000000000000019;
  v49 = v23;
  *(v0 + 80) = v22;
  *(v0 + 88) = v21;
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25 = v48;
  v26 = v49;
  v27 = static os_log_type_t.default.getter();
  v28 = Logger.logObject.getter();
  if (os_log_type_enabled(v28, v27))
  {
    v43 = *(v0 + 168);
    v44 = v25;
    v29 = v21;
    v30 = v22;
    v31 = *(v0 + 160);
    v32 = sub_10008E688();
    sub_10008E670();
    *v32 = 136446466;
    sub_10009F0F8();
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v36._countAndFlagsBits = v31;
    v22 = v30;
    v21 = v29;
    v36._object = v43;
    String.append(_:)(v36);
    sub_10009F134();
    v37 = v49;
    v38 = sub_100080210(v48, v49, &v47);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2082;
    sub_100080210(v44, v26, &v47);
    sub_1000D89D8();
    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v32, 0x16u);
    sub_1000D8998();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v39 = *(v0 + 73);
  if (sub_1000D631C(v22, v21, &off_100383798) && (v39 & 1) == 0)
  {
    sub_1000D6364(*(v0 + 144));
  }

  v40 = type metadata accessor for MessageServerResponse(0);
  sub_1000C4640(v40);

  sub_1000D89F0();

  return v41(v22, v21);
}

uint64_t type metadata accessor for MessageServerRequest()
{
  result = qword_1003CDCE8;
  if (!qword_1003CDCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D5070@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = [objc_opt_self() sharedInstance];
  v6 = (*v1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 messageForBundleID:v7];

  if (v8)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000D7718(v3[4], v3[5], v9, a1);

    if (v2)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    type metadata accessor for MessageServerRequest();
    _StringGuts.grow(_:)(27);

    v12 = *v6;
    v13 = v6[1];

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);

    v16 = v3[4];
    v15 = v3[5];
    v17 = static os_log_type_t.default.getter();
    v18 = Logger.logObject.getter();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v19 = 136446466;
      v20._countAndFlagsBits = v16;
      v20._object = v15;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 8285;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22 = sub_100080210(91, 0xE100000000000000, &v25);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = sub_100080210(0xD000000000000019, 0x8000000100316990, &v25);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = 1;
  }

  v24 = type metadata accessor for MessageServerResponse(0);
  return sub_100081DFC(a1, v11, 1, v24);
}

uint64_t sub_1000D5374(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  type metadata accessor for Client.Server(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = type metadata accessor for MessageServerResponse(0);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000D54C8, 0, 0);
}

uint64_t sub_1000D54C8(uint64_t a1)
{
  v2 = v1[36];
  v3 = *v2;
  v1[45] = *v2;
  v4 = sub_1001A7AB4(a1);
  v1[46] = v4;
  v5 = sub_1001A9498();
  v1[47] = v5;
  v6 = sub_1001A9564(v5);
  v1[48] = v6;
  sub_100080FB4(&unk_1003CEE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v8 = OBJC_IVAR____TtC9storekitd6Client_requestBundleID;
  v1[49] = OBJC_IVAR____TtC9storekitd6Client_requestBundleID;
  v9 = (v3 + v8);
  v10 = v9[1];
  *(inited + 48) = *v9;
  *(inited + 56) = v10;
  *(inited + 64) = 0x737574617473;
  *(inited + 72) = 0xE600000000000000;
  v1[30] = v2[1];

  *(inited + 80) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 88) = v11;
  Dictionary.init(dictionaryLiteral:)();
  if (qword_1003CBED8 != -1)
  {
    swift_once();
  }

  v12 = [v4 URLForKey:qword_1003F2740];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v6 requestWithMethod:2 bagURL:v12 parameters:isa];
  v1[50] = v14;

  v15 = [v5 dataTaskPromiseWithRequestPromise:v14];
  v1[51] = v15;
  v1[2] = v1;
  v1[7] = v1 + 31;
  v1[3] = sub_1000D57E0;
  v16 = swift_continuation_init();
  v1[29] = sub_100080FB4(&qword_1003CDC88);
  v1[22] = _NSConcreteStackBlock;
  v1[23] = 1107296256;
  v1[24] = sub_1000D67A8;
  v1[25] = &unk_100386788;
  v1[26] = v16;
  [v15 resultWithCompletion:v1 + 22];

  return _swift_continuation_await(v1 + 2, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1000D57E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_1000D61CC;
  }

  else
  {
    v2 = sub_1000D591C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000D591C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 248);

  v5 = [v4 responseStatusCode];
  v106 = *(v3 + 40);
  v107 = *(v3 + 32);
  sub_1000D6838(v4, v107, v106, v2);
  sub_1000B75B8(v2, v1, &qword_1003CDC70);
  sub_1000D89B4();
  if (v6)
  {
    v7 = sub_1000AF25C(*(v0 + 328), &qword_1003CDC70);
  }

  else
  {
    v109 = v4;
    v105 = v5;
    v15 = *(v0 + 352);
    v16 = *(v0 + 336);
    v17 = (*(v0 + 360) + *(v0 + 392));
    sub_1000D8934();
    sub_1000D84F4(v18, v15, v19);
    type metadata accessor for MessageServerRequest();
    _StringGuts.grow(_:)(27);

    sub_1000C446C();
    v112 = 0xD000000000000015;
    v114 = v20;
    v21 = *v17;
    v22 = v17[1];

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 8250;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    *(v0 + 272) = *(v15 + *(v16 + 24));
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26 = v114;
    v27 = static os_log_type_t.default.getter();
    v28 = Logger.logObject.getter();
    v29 = os_log_type_enabled(v28, v27);
    v30 = *(v0 + 352);
    if (v29)
    {
      v31 = sub_10008E688();
      v118[0] = sub_10008E670();
      *v31 = 136446466;
      sub_10009F0F8();
      v112 = v32;
      v114 = v33;
      v34._object = v106;
      v34._countAndFlagsBits = v107;
      String.append(_:)(v34);
      sub_10009F134();
      v35 = sub_100080210(v112, v114, v118);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      sub_100080210(0xD000000000000015, v26, v118);
      sub_1000D89D8();
      *(v31 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v31, 0x16u);
      sub_1000D8998();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_1000D8904();
    v7 = sub_1000D849C(v30, v36);
    v5 = v105;
    v4 = v109;
  }

  if (v5 == 200)
  {
    v38 = *(v0 + 296);
    v37 = *(v0 + 304);
    sub_1001A7E5C(v7, v8, v9, v10, v11, v12, v13, v14, v105, v106, v107, v109, v112, v114, v117, v118[0], v118[1], v118[2], v118[3], v118[4]);
    v39 = sub_100080FB4(&qword_1003CCB50);
    sub_100081DFC(v38, 1, 2, v39);
    v40 = sub_1001A9B8C(v37, v38);
    sub_1000D849C(v38, type metadata accessor for Client.Server);
    sub_1000D849C(v37, type metadata accessor for Client.Server);
    if ((v40 & 1) == 0)
    {
      sub_1000B75B8(*(v0 + 280), *(v0 + 312), &qword_1003CDC70);
      sub_1000D89B4();
      if (v6)
      {
        v41 = *(v0 + 400);
        v43 = *(v0 + 376);
        v42 = *(v0 + 384);
        v44 = *(v0 + 312);

        swift_unknownObjectRelease();
        sub_1000AF25C(v44, &qword_1003CDC70);
        goto LABEL_27;
      }

      sub_1000D8934();
      v65 = sub_1000D84F4(v62, v63, v64);
      v66 = sub_1001A81B0(v65);
      v67 = [v66 ams_DSID];

      v68 = sub_1001A79F8();
      if (v68)
      {
        sub_10008E5A4(0, &qword_1003D0520);
        isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

        v67 = isa;
      }

      else if (!v67)
      {
        v100 = *(v0 + 400);
        v102 = *(v0 + 376);
        v101 = *(v0 + 384);
        v103 = *(v0 + 344);

        swift_unknownObjectRelease();
        sub_1000D8904();
        sub_1000D849C(v103, v104);
        goto LABEL_27;
      }

      v111 = v4;
      v76 = v67;
      v78 = *(v0 + 336);
      v77 = *(v0 + 344);
      v79 = *(v0 + 288);
      v80 = (*(v0 + 360) + *(v0 + 392));
      v81 = *v80;
      v82 = v80[1];
      sub_10008E5A4(0, &qword_1003D0520);
      v83 = v76;

      v84 = NSNumber.init(integerLiteral:)(1).super.super.isa;
      v85 = *(v77 + *(v78 + 20));
      v86 = *(v77 + *(v78 + 24));
      v87 = objc_allocWithZone(StoreKitMessageInfo);
      v88 = sub_1000D8328(v83, v81, v82, v84, v85, v86);
      v89 = *(v79 + *(type metadata accessor for MessageServerRequest() + 36));
      *(v0 + 264) = 0;
      v90 = [v89 addMessage:v88 error:v0 + 264];
      v91 = *(v0 + 264);
      v92 = *(v0 + 400);
      v93 = *(v0 + 376);
      v94 = *(v0 + 384);
      v95 = *(v0 + 344);
      if (v90)
      {
        v96 = v91;

        swift_unknownObjectRelease();
        sub_1000D8904();
        v98 = v95;
      }

      else
      {
        v108 = *(v0 + 344);
        v99 = v91;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        swift_unknownObjectRelease();

        sub_1000D8904();
        v98 = v108;
      }

      sub_1000D849C(v98, v97);
LABEL_27:

      sub_1000D89F0();
      sub_1000D8A10();

      __asm { BRAA            X3, X16 }
    }

    goto LABEL_19;
  }

  type metadata accessor for MessageServerRequest();
  _StringGuts.grow(_:)(41);

  sub_1000C446C();
  v115 = v45;
  *(v0 + 256) = v5;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47 = v115;
  v48 = static os_log_type_t.default.getter();
  v49 = Logger.logObject.getter();
  if (os_log_type_enabled(v49, v48))
  {
    v110 = v4;
    v50 = sub_10008E688();
    v118[0] = sub_10008E670();
    *v50 = 136446466;
    sub_10009F0F8();
    v113 = v51;
    v116 = v52;
    v53._object = v106;
    v53._countAndFlagsBits = v107;
    String.append(_:)(v53);
    sub_10009F134();
    v54 = sub_100080210(v113, v116, v118);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    sub_100080210(0xD000000000000027, v47, v118);
    sub_1000D89D8();
    *(v50 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v49, v48, "%{public}s%{public}s", v50, 0x16u);
    sub_1000D8998();
    sub_100081C28();
    v4 = v110;
    sub_100081C28();
  }

  else
  {
  }

  sub_1000B75B8(*(v0 + 280), *(v0 + 320), &qword_1003CDC70);
  sub_1000D89B4();
  if (v6)
  {
    v55 = *(v0 + 288);
    sub_1000AF25C(*(v0 + 320), &qword_1003CDC70);
    if (*(v55 + 24) == 1)
    {
LABEL_19:
      v56 = *(v0 + 400);
      v58 = *(v0 + 376);
      v57 = *(v0 + 384);

LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    v59 = *(v55 + 16);
  }

  else
  {
    v59 = *(*(v0 + 320) + *(*(v0 + 336) + 24));
    sub_1000D8904();
    sub_1000D849C(v60, v61);
  }

  v70 = sub_1000D62F0(v59, &off_100383768);
  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v73 = *(v0 + 384);
  if (v70)
  {
    sub_1000D6364(v59);
  }

  goto LABEL_26;
}

uint64_t sub_1000D61CC()
{
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  swift_willThrow();

  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

BOOL sub_1000D62F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1000D631C(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 40);
  while (v3)
  {
    if (*v4)
    {
      if (a2)
      {
        return v3 != 0;
      }
    }

    else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
    {
      return v3 != 0;
    }

    v4 += 16;
    --v3;
  }

  return v3 != 0;
}

void sub_1000D6364(uint64_t a1)
{
  v2 = v1;
  v32 = type metadata accessor for MessageServerRequest();
  _StringGuts.grow(_:)(34);

  v34 = 0xD000000000000019;
  v35 = 0x80000001003169D0;
  v33 = a1;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x20726F6620;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6 = *(*v1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v7 = *(*v1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9 = v1[4];
  v10 = v1[5];
  v11 = static os_log_type_t.default.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446466;
    v33 = v14;
    v34 = 91;
    v35 = 0xE100000000000000;
    v15._countAndFlagsBits = v9;
    v15._object = v10;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_100080210(91, 0xE100000000000000, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_100080210(0xD000000000000019, 0x80000001003169D0, &v33);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = sub_1001A81B0(v19);
  if (v20 && (v21 = v20, v22 = [v20 ams_DSID], v21, v22))
  {
    v23 = *(v2 + *(v32 + 36));

    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = static os_log_type_t.error.getter();
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136446466;
      v33 = v28;
      v34 = 91;
      v35 = 0xE100000000000000;
      v29._object = v10;
      v29._countAndFlagsBits = v9;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 8285;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);
      v31 = sub_100080210(v34, v35, &v33);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_100080210(0xD000000000000035, 0x80000001003169F0, &v33);
      _os_log_impl(&_mh_execute_header, v22, v26, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t *sub_1000D67A8(uint64_t a1, void *a2, void *a3)
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10023FCD4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10023FCD0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D6838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v73._countAndFlagsBits = a2;
  v73._object = a3;
  v74 = a4;
  v5 = type metadata accessor for MessageServerResponse.MessageItem(0);
  __chkstk_darwin(v5);
  v72 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100080FB4(&unk_1003CCCB8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = (&v70 - v18);
  v20 = type metadata accessor for SKLogger();
  __chkstk_darwin(v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE50 != -1)
  {
    swift_once();
  }

  v23 = sub_10007EDA4(v20, qword_1003F26B0);
  sub_10007EDDC(v23, v22);
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v77[0] = v78;
  v77[1] = v79;
  if (!*(&v79 + 1))
  {
    sub_1000AF25C(v77, &unk_1003CCB70);
    goto LABEL_14;
  }

  sub_100080FB4(&unk_1003CE640);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v31 = static os_log_type_t.default.getter();
    v32 = Logger.logObject.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      *&v78 = swift_slowAlloc();
      *v33 = 136446466;
      *&v77[0] = 91;
      *(&v77[0] + 1) = 0xE100000000000000;
      String.append(_:)(v73);
      v34._countAndFlagsBits = 8285;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = sub_100080210(*&v77[0], *(&v77[0] + 1), &v78);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_100080210(0xD00000000000002ALL, 0x8000000100316AB0, &v78);
      _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_53;
  }

  v24 = v75;
  sub_100081DFC(v19, 1, 1, v5);
  v75 = 7107189;
  v76 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v77, v24, &v78);
  sub_10008E550(v77);
  if (!*(&v79 + 1))
  {
    sub_1000AF25C(&v78, &unk_1003CCB70);
LABEL_18:
    v75 = 0x726566666FLL;
    v76 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    sub_1001DAA40(v77, v24, &v78);
    sub_10008E550(v77);
    if (*(&v79 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v36 = v75;
      v75 = 0x6449726566666FLL;
      v76 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001DAA40(v77, v36, &v78);
      sub_10008E550(v77);
      if (*(&v79 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_55;
        }

        v38 = v75;
        v37 = v76;
        v75 = 0x49746375646F7270;
        v76 = 0xE900000000000064;
        AnyHashable.init<A>(_:)();
        sub_1001DAA40(v77, v36, &v78);

        sub_10008E550(v77);
        if (*(&v79 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_1000AF25C(v19, &unk_1003CCCB8);
            v39 = v76;
            *v19 = v75;
            v19[1] = v39;
            v19[2] = v38;
            v19[3] = v37;
LABEL_26:
            swift_storeEnumTagMultiPayload();
            sub_100081DFC(v19, 0, 1, v5);
            goto LABEL_33;
          }

LABEL_55:

          goto LABEL_33;
        }
      }
    }

    sub_1000AF25C(&v78, &unk_1003CCB70);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = v76;
  v71 = v75;
  URL.init(string:)();
  if (sub_100081D0C(v9, 1, v10) != 1)
  {
    sub_1000AF25C(v19, &unk_1003CCCB8);

    v40 = *(v11 + 32);
    v40(v13, v9, v10);
    v40(v19, v13, v10);
    goto LABEL_26;
  }

  sub_1000AF25C(v9, &unk_1003D0540);
  object = v73._object;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v77[0] = v70;
    *v29 = 136315395;
    *(v29 + 4) = sub_100080210(v73._countAndFlagsBits, object, v77);
    *(v29 + 12) = 2081;
    v30 = sub_100080210(v71, v25, v77);

    *(v29 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Invalid URL for message: %{private}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_33:
  sub_1000B75B8(v19, v17, &unk_1003CCCB8);
  if (sub_100081D0C(v17, 1, v5) == 1)
  {
    sub_1000AF25C(v17, &unk_1003CCCB8);
    v41 = v73._object;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *&v77[0] = swift_slowAlloc();
      *v44 = 136315395;
      *(v44 + 4) = sub_100080210(v73._countAndFlagsBits, v41, v77);
      *(v44 + 12) = 2081;
      v45 = Dictionary.description.getter();
      v47 = v46;

      v48 = sub_100080210(v45, v47, v77);

      *(v44 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] Missing message item in messages response: %{private}s.", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_52;
  }

  v49 = v72;
  sub_1000D84F4(v17, v72, type metadata accessor for MessageServerResponse.MessageItem);
  v75 = 0xD00000000000001BLL;
  v76 = 0x80000001003169B0;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v77, v24, &v78);
  sub_10008E550(v77);
  v50 = v73._object;
  if (!*(&v79 + 1))
  {
    sub_1000AF25C(&v78, &unk_1003CCB70);
LABEL_44:

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *&v77[0] = swift_slowAlloc();
      *v59 = 136315395;
      *(v59 + 4) = sub_100080210(v73._countAndFlagsBits, v50, v77);
      *(v59 + 12) = 2081;
      v60 = Dictionary.description.getter();
      v62 = v61;

      v63 = sub_100080210(v60, v62, v77);

      *(v59 + 14) = v63;
      v64 = "[%s] Missing developer control in messages response: %{private}s.";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v57, v58, v64, v59, 0x16u);
      swift_arrayDestroy();

LABEL_51:

      sub_1000D849C(v49, type metadata accessor for MessageServerResponse.MessageItem);
LABEL_52:
      sub_1000AF25C(v19, &unk_1003CCCB8);
LABEL_53:
      sub_1000D849C(v22, type metadata accessor for SKLogger);
      v54 = type metadata accessor for MessageServerResponse(0);
      v55 = v74;
      v56 = 1;
      return sub_100081DFC(v55, v56, 1, v54);
    }

LABEL_50:

    goto LABEL_51;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v51 = v75;
  v75 = 0x546567617373656DLL;
  v76 = 0xEB00000000657079;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v77, v24, &v78);
  sub_10008E550(v77);
  if (!*(&v79 + 1))
  {
    sub_1000AF25C(&v78, &unk_1003CCB70);
LABEL_47:

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *&v77[0] = swift_slowAlloc();
      *v59 = 136315395;
      *(v59 + 4) = sub_100080210(v73._countAndFlagsBits, v50, v77);
      *(v59 + 12) = 2081;
      v65 = Dictionary.description.getter();
      v67 = v66;

      v68 = sub_100080210(v65, v67, v77);

      *(v59 + 14) = v68;
      v64 = "[%s] Missing message type in messages response: %{private}s.";
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_1000AF25C(v19, &unk_1003CCCB8);
  sub_1000D849C(v22, type metadata accessor for SKLogger);
  v53 = v74;
  v52 = v75;
  sub_1000D84F4(v49, v74, type metadata accessor for MessageServerResponse.MessageItem);
  v54 = type metadata accessor for MessageServerResponse(0);
  *(v53 + *(v54 + 24)) = v52;
  *(v53 + *(v54 + 20)) = v51;
  v55 = v53;
  v56 = 0;
  return sub_100081DFC(v55, v56, 1, v54);
}

uint64_t sub_1000D7718@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v68 = a2;
  v65 = a1;
  v5 = type metadata accessor for MessageServerResponse.MessageItem(0);
  __chkstk_darwin(v5);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for URL();
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100080FB4(&unk_1003CCCB8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for SKLogger();
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE50 != -1)
  {
    swift_once();
  }

  v22 = sub_10007EDA4(v19, qword_1003F26B0);
  v73 = v21;
  sub_10007EDDC(v22, v21);
  v67 = v5;
  sub_100081DFC(v18, 1, 1, v5);
  v69[0] = 7107189;
  v69[1] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v23 = a3;
  sub_1001DAA40(v70, a3, &v71);
  sub_10008E550(v70);
  v24 = v18;
  if (v72)
  {
    v25 = swift_dynamicCast();
    sub_100081DFC(v9, v25 ^ 1u, 1, v10);
    if (sub_100081D0C(v9, 1, v10) != 1)
    {
      sub_1000AF25C(v18, &unk_1003CCCB8);
      v26 = *(v64 + 32);
      v26(v12, v9, v10);
      v26(v18, v12, v10);
      v27 = v67;
      swift_storeEnumTagMultiPayload();
      sub_100081DFC(v18, 0, 1, v27);
      v28 = v73;
      v29 = v23;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000AF25C(&v71, &unk_1003CCB70);
    sub_100081DFC(v9, 1, 1, v10);
  }

  sub_1000AF25C(v9, &unk_1003D0540);
  strcpy(v69, "offerID");
  v69[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v29 = v23;
  sub_1001DAA40(v70, v23, &v71);
  sub_10008E550(v70);
  if (v72)
  {
    v30 = swift_dynamicCast();
    v28 = v73;
    if (v30)
    {
      v31 = v69[0];
      v32 = v69[1];
      strcpy(v69, "productId");
      WORD1(v69[1]) = 0;
      HIDWORD(v69[1]) = -385875968;
      AnyHashable.init<A>(_:)();
      sub_1001DAA40(v70, v23, &v71);
      sub_10008E550(v70);
      if (v72)
      {
        if (swift_dynamicCast())
        {
          sub_1000AF25C(v24, &unk_1003CCCB8);
          v33 = v69[1];
          *v24 = v69[0];
          v24[1] = v33;
          v24[2] = v31;
          v24[3] = v32;
          v27 = v67;
          swift_storeEnumTagMultiPayload();
          sub_100081DFC(v24, 0, 1, v27);
          goto LABEL_16;
        }
      }

      else
      {

        sub_1000AF25C(&v71, &unk_1003CCB70);
      }
    }
  }

  else
  {
    sub_1000AF25C(&v71, &unk_1003CCB70);
    v28 = v73;
  }

  v27 = v67;
LABEL_16:
  sub_1000B75B8(v24, v16, &unk_1003CCCB8);
  if (sub_100081D0C(v16, 1, v27) == 1)
  {
    sub_1000AF25C(v16, &unk_1003CCCB8);
    v34 = v68;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v37 = 136315395;
      *(v37 + 4) = sub_100080210(v65, v34, v70);
      *(v37 + 12) = 2081;
      v38 = Dictionary.description.getter();
      v40 = sub_100080210(v38, v39, v70);

      *(v37 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Missing message parameters in server response: %{private}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000D8430();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    goto LABEL_33;
  }

  v42 = v66;
  sub_1000D84F4(v16, v66, type metadata accessor for MessageServerResponse.MessageItem);
  strcpy(v69, "messageReason");
  HIWORD(v69[1]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v70, v29, &v71);
  sub_10008E550(v70);
  if (v72)
  {
    v43 = swift_dynamicCast();
    v44 = v68;
    if (v43)
    {
      v45 = v69[0];
      v69[0] = 0xD00000000000001BLL;
      v69[1] = 0x80000001003169B0;
      AnyHashable.init<A>(_:)();
      sub_1001DAA40(v70, v29, &v71);
      sub_10008E550(v70);
      if (v72)
      {
        if (swift_dynamicCast())
        {
          sub_1000AF25C(v24, &unk_1003CCCB8);
          sub_1000D849C(v28, type metadata accessor for SKLogger);
          v46 = v69[0];
          v47 = v63;
          sub_1000D84F4(v42, v63, type metadata accessor for MessageServerResponse.MessageItem);
          result = type metadata accessor for MessageServerResponse(0);
          *(v47 + *(result + 24)) = v45;
          *(v47 + *(result + 20)) = v46;
          return result;
        }
      }

      else
      {
        sub_1000AF25C(&v71, &unk_1003CCB70);
      }

      v49 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v49, v56))
      {
        goto LABEL_32;
      }

      v57 = v44;
      v58 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v58 = 136315395;
      *(v58 + 4) = sub_100080210(v65, v57, v70);
      *(v58 + 12) = 2081;
      v59 = Dictionary.description.getter();
      v61 = sub_100080210(v59, v60, v70);

      *(v58 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v49, v56, "[%s] Missing developer control in server response: %{private}s", v58, 0x16u);
      swift_arrayDestroy();
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000AF25C(&v71, &unk_1003CCB70);
    v44 = v68;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v44;
    v52 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v52 = 136315395;
    *(v52 + 4) = sub_100080210(v65, v51, v70);
    *(v52 + 12) = 2081;
    v53 = Dictionary.description.getter();
    v55 = sub_100080210(v53, v54, v70);

    *(v52 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%s] Missing message type in server response: %{private}s", v52, 0x16u);
    swift_arrayDestroy();
    v28 = v73;
LABEL_31:
  }

LABEL_32:

  sub_1000D8430();
  swift_allocError();
  *v62 = 0;
  swift_willThrow();
  sub_1000D849C(v42, type metadata accessor for MessageServerResponse.MessageItem);
LABEL_33:
  sub_1000AF25C(v24, &unk_1003CCCB8);
  return sub_1000D849C(v28, type metadata accessor for SKLogger);
}

id sub_1000D8328(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v11 = String._bridgeToObjectiveC()();

  v12 = [v6 initWithUserID:a1 bundleID:v11 status:a4 allowDeveloperControl:a5 & 1 messageType:a6];

  return v12;
}

uint64_t sub_1000D83C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CDC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D8430()
{
  result = qword_1003CDC80;
  if (!qword_1003CDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDC80);
  }

  return result;
}

uint64_t sub_1000D849C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000D84F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for MessageError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000D8620);
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

uint64_t sub_1000D866C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SKLogger();
    v9 = a1 + *(a3 + 32);

    return sub_100081D0C(v9, a2, v8);
  }
}

void *sub_1000D8708(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SKLogger();
    v8 = v5 + *(a4 + 32);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000D8788()
{
  type metadata accessor for Client(319);
  if (v0 <= 0x3F)
  {
    sub_1000D885C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SKLogger();
      if (v2 <= 0x3F)
      {
        sub_10008E5A4(319, &unk_1003CDD00);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000D885C()
{
  if (!qword_1003CDCF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CDCF8);
    }
  }
}

unint64_t sub_1000D88B0()
{
  result = qword_1003CDD40;
  if (!qword_1003CDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDD40);
  }

  return result;
}

uint64_t sub_1000D894C()
{
  v2 = *(v0 + 136);

  return sub_1000D849C(v2, type metadata accessor for Client.Server);
}

uint64_t sub_1000D8998()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000D89D8()
{
}

void sub_1000D8A2C()
{

  _StringGuts.grow(_:)(27);
}

id sub_1000D8B3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000D8BE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1000D8C74()
{
  v1 = &v0[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_serverCorrelationID];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_environment];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode];
  v4 = type metadata accessor for StoreKitServiceErrorMetadata();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1000D8D04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreKitServiceErrorMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_1000D8DD8()
{
}

uint64_t sub_1000D8DF4(char a1)
{
  result = 0x746361736E617274;
  switch(a1)
  {
    case 1:
      result = sub_100093E18();
      break;
    case 2:
    case 3:
      result = sub_1000DC8C0();
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 0x617269707865;
      goto LABEL_9;
    case 6:
      v3 = 0x61636F766572;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 7:
      result = 0x61726770755F7369;
      break;
    case 8:
      result = 0x73696E69665F7369;
      break;
    case 9:
      result = 0x74706965636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D8F60()
{
  result = sub_100093E18();
  switch(v1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x5F6C6177656E6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D9034()
{
  _StringGuts.grow(_:)(216);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x656365725F706169;
  v1._object = 0xEC00000073747069;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x746361736E617274;
  v3._object = 0xEE0064695F6E6F69;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xA2C5458455420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x695F656C646E7562;
  v5._object = 0xE900000000000064;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x5F746375646F7270;
  v7._object = 0xEA00000000006469;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._object = 0xEC00000065707974;
  v9._countAndFlagsBits = 0x5F746375646F7270;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000010;
  v11._object = 0x8000000100314090;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x4D49544554414420;
  v12._object = 0xEB000000000A2C45;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6974617269707865;
  v13._object = 0xEF657461645F6E6FLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4D49544554414420;
  v14._object = 0xEB000000000A2C45;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x697461636F766572;
  v15._object = 0xEF657461645F6E6FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4D49544554414420;
  v16._object = 0xEB000000000A2C45;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x61726770755F7369;
  v17._object = 0xEB00000000646564;
  String.append(_:)(v17);
  v18._object = 0x8000000100316F80;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x73696E69665F7369;
  v19._object = 0xEB00000000646568;
  String.append(_:)(v19);
  v20._object = 0x8000000100316F80;
  v20._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x74706965636572;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD00000000000001DLL;
  v22._object = 0x8000000100316FA0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x746361736E617274;
  v23._object = 0xEE0064695F6E6F69;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x695F656C646E7562;
  v25._object = 0xE900000000000064;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000017;
  v26._object = 0x8000000100316F60;
  String.append(_:)(v26);
  qword_1003CDD88 = 0;
  unk_1003CDD90 = 0xE000000000000000;
}

void sub_1000D93B8()
{
  _StringGuts.grow(_:)(132);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._object = 0x8000000100316DE0;
  v1._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xA2C5458455420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x80000001003140F0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6470755F7473616CLL;
  v7._object = 0xEC00000064657461;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x4D49544554414420;
  v8._object = 0xEB000000000A2C45;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001003143A0;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x4D49544554414420;
  v10._object = 0xEB000000000A2C45;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x5F6C6177656E6572;
  v11._object = 0xEC0000006F666E69;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C424F4C4220;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100316D90;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000014;
  v14._object = 0x8000000100316F40;
  String.append(_:)(v14);
  v15._object = 0x8000000100316D90;
  v15._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v15);
  v16._object = 0x8000000100316F60;
  v16._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v16);
  qword_1003CDD98 = 0;
  unk_1003CDDA0 = 0xE000000000000000;
}

uint64_t sub_1000D960C(char a1)
{
  if (a1)
  {
    return 0x6470755F7473616CLL;
  }

  else
  {
    return 0x695F656C646E7562;
  }
}

void sub_1000D9650()
{
  _StringGuts.grow(_:)(84);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x8000000100316E00;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._object = 0x8000000100316FC0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6E6F697369766572;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6E656B6F74;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6470755F7473616CLL;
  v9._object = 0xEC00000064657461;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x4D49544554414420;
  v10._object = 0xEB000000003B2945;
  String.append(_:)(v10);
  qword_1003CDDA8 = 0;
  unk_1003CDDB0 = 0xE000000000000000;
}

uint64_t sub_1000D97EC()
{
  result = sub_100093E18();
  switch(v1)
  {
    case 1:
      result = 0x6E6F697369766572;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x6470755F7473616CLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D98AC()
{
  _StringGuts.grow(_:)(66);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x8000000100316DB0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._object = 0x8000000100316FC0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6470755F7473616CLL;
  v5._object = 0xEC00000064657461;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x4D49544554414420;
  v6._object = 0xEB000000003B2945;
  String.append(_:)(v6);
  qword_1003CDDB8 = 0;
  unk_1003CDDC0 = 0xE000000000000000;
}

void sub_1000D99F4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];

  v4 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v4];

  if (qword_1003CBC78 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v5];

  if (qword_1003CBC68 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v6];

  if (qword_1003CBC70 != -1)
  {
    swift_once();
  }

  v7 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v7];
}

id sub_1000D9BE0(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v75 = &v58 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v76 = &v58 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - v14;
  __chkstk_darwin(v13);
  v65 = &v58 - v16;
  v17 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v17];

  _s24SubscriptionStatusEntityCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [a1 connection];
  v20 = [ObjCClassFromMetadata allOnConnection:v19 predicate:0];

  sub_10008E5A4(0, &qword_1003CDF20);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = sub_1000AFC90(v21);
  if (!v64)
  {
  }

  v22 = 0;
  v66 = v21 & 0xC000000000000001;
  v59 = v21 + 32;
  v63 = (v3 + 16);
  v23 = (v3 + 32);
  v73 = (v3 + 8);
  v74 = 0x80000001003138B0;
  v60 = " with invalid product ID ";
  v71 = v10;
  v62 = v15;
  v61 = v21;
  while (2)
  {
    v24 = v66;
    sub_10017C8AC(v22, v66 == 0, v21);
    if (v24)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      result = *(v59 + 8 * v22);
    }

    v26 = result;
    v27 = __OFADD__(v22, 1);
    v28 = v22 + 1;
    if (v27)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v29 = String._bridgeToObjectiveC()();
    v30 = [v26 valueForProperty:v29];

    if (v30)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v78[0] = v81;
    v78[1] = v82;
    if (!*(&v82 + 1))
    {

      return sub_10008B69C(v78, &unk_1003CCB70);
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    v31 = v79;
    v70 = v80;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v33 = sub_100028E90(isa, 0);

    if (!v33)
    {

      sub_10008E168(v31, v70);
    }

    v67 = v31;
    v68 = v26;
    v69 = v28;
    sub_100080FB4(&unk_1003CE640);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    static Date.distantPast.getter();
    v35 = v76;
    result = (*v63)(v76, v15, v2);
    v36 = 0;
    v77 = *(v34 + 16);
    v37 = v74;
    while (v77 != v36)
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v38 = *(v34 + 8 * v36 + 32);
      v79 = 0xD000000000000011;
      v80 = v37;

      AnyHashable.init<A>(_:)();
      if (!*(v38 + 16) || (v39 = sub_100212CF4(v78), v35 = v76, (v40 & 1) == 0))
      {

        sub_10008E550(v78);
LABEL_23:
        v46 = *v23;
        (*v23)(v10, v35, v2);
        goto LABEL_24;
      }

      sub_100080F58(*(v38 + 56) + 32 * v39, &v81);
      sub_10008E550(v78);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_23;
      }

      v41 = String._bridgeToObjectiveC()();

      v42 = sub_100027A0C(v41);

      if (!v42)
      {

        v35 = v76;
        goto LABEL_23;
      }

      v43 = v2;
      v44 = v75;
      v45 = v72;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = *v23;
      v47 = v44;
      v2 = v43;
      (*v23)(v47, v45, v43);
      sub_1000DC6C0();
      v48 = v76;
      v49 = dispatch thunk of static Comparable.>= infix(_:_:)();

      v50 = *v73;
      if (v49)
      {
        v50(v48, v43);
        v10 = v71;
        v51 = v71;
        v52 = v75;
      }

      else
      {
        v50(v75, v43);
        v10 = v71;
        v51 = v71;
        v52 = v48;
      }

      v46(v51, v52, v2);
      v35 = v48;
      v37 = v74;
LABEL_24:
      result = (v46)(v35, v10, v2);
      ++v36;
    }

    v53 = *v73;
    v15 = v62;
    (*v73)(v62, v2);
    v54 = v65;
    (*v23)(v65, v35, v2);
    v55 = Date._bridgeToObjectiveC()().super.isa;
    v56 = String._bridgeToObjectiveC()();
    v57 = v68;
    [v68 setValue:v55 forProperty:v56];

    sub_10008E168(v67, v70);
    v53(v54, v2);
    v22 = v69;
    v21 = v61;
    if (v69 != v64)
    {
      continue;
    }
  }
}

void sub_1000DA3C4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];
}

void sub_1000DA434(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  if (qword_1003CBC70 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];

  v4 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v4];

  if (qword_1003CBC80 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v5];
}

BOOL sub_1000DA594(void *a1, __n128 a2)
{
  v84 = "tabase migration function for ";
  a2.n128_u64[0] = 136446466;
  v81 = a2;
  while (1)
  {
    v4 = sub_1000DC8F8();
    if (v4 > 18399)
    {
      return v4 > 18399;
    }

    v5 = sub_1000DC8F8();
    if ((v5 - 15000) < 5 || v5 == 0)
    {
      sub_1000DC768();
      v87 = v9;
      v88 = &unk_100386A20;
      _Block_copy(&aBlock);
      sub_1000DC88C();
      v10 = [a1 migrateToVersion:16200 usingBlock:v2];
      _Block_release(v2);
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else if (v5 != 18400)
    {
      if (v5 == 15400)
      {
        sub_1000DC768();
        v87 = v13;
        v88 = &unk_1003869D0;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:16000 usingBlock:{v2, *&v81}];
      }

      else if (v5 == 16000)
      {
        sub_1000DC768();
        v87 = v14;
        v88 = &unk_1003869A8;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:16001 usingBlock:{v2, *&v81}];
      }

      else if (v5 == 16001)
      {
        sub_1000DC768();
        v87 = v15;
        v88 = &unk_100386980;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:16200 usingBlock:{v2, *&v81}];
      }

      else if (v5 == 16200)
      {
        sub_1000DC768();
        v87 = v11;
        v88 = &unk_100386958;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:18000 usingBlock:{v2, *&v81}];
      }

      else if (v5 == 18000)
      {
        sub_1000DC768();
        v87 = v12;
        v88 = &unk_100386930;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:18400 usingBlock:{v2, *&v81}];
      }

      else
      {
        if (v5 != 15005)
        {
          if (qword_1003CBE58 != -1)
          {
            sub_1000B7CD0();
            swift_once();
          }

          v40 = type metadata accessor for SKLogger();
          sub_10007EDA4(v40, qword_1003F26C8);
          sub_1000DC87C();
          _StringGuts.grow(_:)(73);
          sub_1000DC7B4();
          v41._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v41);

          v42._countAndFlagsBits = 0xD00000000000003ELL;
          v42._object = 0x8000000100316E40;
          String.append(_:)(v42);
          v89 = sub_1000DC8F8();
          v43._countAndFlagsBits = sub_1000DC860();
          String.append(_:)(v43);

          sub_1000DC840();
          v89 = 18400;
          v44._countAndFlagsBits = sub_1000DC860();
          String.append(_:)(v44);

          v46 = aBlock;
          v45 = v86;
          v47 = static os_log_type_t.error.getter();

          v48 = Logger.logObject.getter();

          if (os_log_type_enabled(v48, v47))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            aBlock = v50;
            *v49 = v81.n128_u32[0];
            *(v49 + 4) = sub_1000DC8A4(v50, v51, v52, v53, v54);
            *(v49 + 12) = 2082;
            v55 = sub_100080210(v46, v45, &aBlock);

            *(v49 + 14) = v55;
            _os_log_impl(&_mh_execute_header, v48, v47, "%{public}s%{public}s", v49, 0x16u);
            swift_arrayDestroy();
            sub_100081C28();
            sub_100081C28();
          }

          else
          {
          }

LABEL_33:
          if (qword_1003CBE58 != -1)
          {
            sub_1000B7CD0();
            swift_once();
          }

          v56 = type metadata accessor for SKLogger();
          sub_10007EDA4(v56, qword_1003F26C8);
          sub_1000DC87C();
          _StringGuts.grow(_:)(55);
          sub_1000DC7B4();
          v57._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v57);

          sub_1000DC8D4(v58, v59, v60, v61, v62, v63, v64, v65, v81.n128_i64[0], v81.n128_i64[1], v83, v84);
          v89 = sub_1000DC8F8();
          v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v66);

          sub_1000DC840();
          v89 = 18400;
          v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v67);

          v68._countAndFlagsBits = 0x4C49414620;
          v68._object = 0xE500000000000000;
          String.append(_:)(v68);
          v70 = aBlock;
          v69 = v86;
          v71 = static os_log_type_t.error.getter();

          v72 = Logger.logObject.getter();

          if (os_log_type_enabled(v72, v71))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            aBlock = v74;
            *v73 = v82;
            *(v73 + 4) = sub_1000DC8A4(v74, v75, v76, v77, v78);
            *(v73 + 12) = 2082;
            v79 = sub_100080210(v70, v69, &aBlock);

            *(v73 + 14) = v79;
            _os_log_impl(&_mh_execute_header, v72, v71, "%{public}s%{public}s", v73, 0x16u);
            swift_arrayDestroy();
            sub_100081C28();
            sub_100081C28();
          }

          else
          {
          }

          return v4 > 18399;
        }

        sub_1000DC768();
        v87 = v7;
        v88 = &unk_1003869F8;
        _Block_copy(&aBlock);
        sub_1000DC88C();
        v8 = [a1 migrateToVersion:15400 usingBlock:{v2, *&v81}];
      }

      v16 = v8;
      _Block_release(v2);
      if ((v16 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v17 = type metadata accessor for SKLogger();
    sub_10007EDA4(v17, qword_1003F26C8);
    sub_1000DC87C();
    _StringGuts.grow(_:)(58);
    sub_1000DC7B4();
    v18._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v18);

    sub_1000DC8D4(v19, v20, v21, v22, v23, v24, v25, v26, v81.n128_i64[0], v81.n128_i64[1], v83, v84);
    v89 = sub_1000DC8F8();
    v27._countAndFlagsBits = sub_1000DC860();
    String.append(_:)(v27);

    sub_1000DC840();
    v89 = 18400;
    v28._countAndFlagsBits = sub_1000DC860();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x5353454343555320;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v30 = aBlock;
    v31 = v86;
    v32 = static os_log_type_t.default.getter();

    v2 = Logger.logObject.getter();

    if (os_log_type_enabled(v2, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = v81.n128_u32[0];
      *(v33 + 4) = sub_1000DC8A4(v34, v35, v36, v37, v38);
      *(v33 + 12) = 2082;
      v39 = sub_100080210(v30, v31, &aBlock);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v2, v32, "%{public}s%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }
  }
}

id sub_1000DAE94()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

id sub_1000DAF68(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s16TransactionStoreCMa();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

id sub_1000DB070(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v1;
  v7.super_class = _s7ReceiptCMa();
  v5 = objc_msgSendSuper2(&v7, "initWithDatabaseID:propertyValues:externalPropertyValues:", a1, isa, v4);

  return v5;
}

uint64_t sub_1000DB2C8()
{
  sub_1000DC8C0();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 unsignedCharValue];

  LODWORD(result) = sub_1000DC93C(v3);
  if (result == 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000DB4E4()
{
  sub_1000DC910();
  sub_10008E5A4(0, &qword_1003CCBB8);
  v14 = v1;

  v3 = sub_1000DC7EC(v2);
  v4 = [swift_getObjCClassFromMetadata() queryOnConnection:v0 predicate:v3];
  v19 = 0;
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = &v19;
  *(v5 + 24) = v0;
  sub_1000B7E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000DC62C;
  *(v6 + 24) = v5;
  v17 = sub_1000939AC;
  v18 = v6;
  aBlock = _NSConcreteStackBlock;
  sub_1000DC79C();
  v15 = v7;
  v16 = &unk_100386890;
  v8 = _Block_copy(&aBlock);
  v9 = v0;

  [v4 enumeratePersistentIDsUsingBlock:v8];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v19;

    return v12;
  }

  return result;
}

id sub_1000DB6C0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLValueForProperty:v1];

  return v2;
}

uint64_t sub_1000DB740()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000DB7F8(uint64_t a1, uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 stringValueForProperty:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    sub_10009E7E4();
    v9 = sub_1000894A0();
    *v10 = a1;
    v10[1] = a2;
    return sub_1000DC924(v9, v10);
  }
}

uint64_t sub_1000DBA48()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForProperty:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_10008B69C(v9, &unk_1003CCB70);
  }

  sub_10009E7E4();
  v4 = sub_1000894A0();
  strcpy(v5, "renewal_info");
  v5[13] = 0;
  *(v5 + 7) = -5120;
  return sub_1000DC924(v4, v5);
}

uint64_t sub_1000DBB74()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    sub_10009E7E4();
    v5 = sub_1000894A0();
    *v6 = 0xD000000000000015;
    v6[1] = 0x80000001003140F0;
    return sub_1000DC924(v5, v6);
  }
}

uint64_t sub_1000DBDC0()
{
  sub_1000DC910();
  sub_10008E5A4(0, &qword_1003CCBB8);
  v14 = v1;

  v3 = sub_1000DC7EC(v2);
  v4 = [swift_getObjCClassFromMetadata() queryOnConnection:v0 predicate:v3];
  v19 = 0;
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = &v19;
  *(v5 + 24) = v0;
  sub_1000B7E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000DC690;
  *(v6 + 24) = v5;
  v17 = sub_1000DC764;
  v18 = v6;
  aBlock = _NSConcreteStackBlock;
  sub_1000DC79C();
  v15 = v7;
  v16 = &unk_100386908;
  v8 = _Block_copy(&aBlock);
  v9 = v0;

  [v4 enumeratePersistentIDsUsingBlock:v8];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v19;

    return v12;
  }

  return result;
}

void sub_1000DBF7C(uint64_t a1, uint64_t a2, _BYTE *a3, void **a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = [objc_allocWithZone(a6()) initWithPersistentID:a1 onConnection:a5];
  v9 = *a4;
  *a4 = v8;

  *a3 = 1;
}

id sub_1000DC004(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_1000DC074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  sub_1000DC820();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 valueForProperty:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    v13 = type metadata accessor for Date();
    v14 = swift_dynamicCast();
    sub_100081DFC(v10, v14 ^ 1u, 1, v13);
    if (sub_100081D0C(v10, 1, v13) != 1)
    {
      return (*(*(v13 - 8) + 32))(a3, v10, v13);
    }
  }

  else
  {
    sub_10008B69C(v21, &unk_1003CCB70);
    v16 = type metadata accessor for Date();
    sub_100081DFC(v10, 1, 1, v16);
  }

  sub_10008B69C(v10, &qword_1003CD9A0);
  sub_10009E7E4();
  v17 = sub_1000894A0();
  *v18 = a1;
  v18[1] = a2;
  return sub_1000DC924(v17, v18);
}

id sub_1000DC274(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithPropertyValues:isa onConnection:a2];

  return v6;
}

id sub_1000DC31C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, "initWithPropertyValues:onConnection:", isa, a2);

  return v8;
}

id sub_1000DC450(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v8.receiver = v3;
  v8.super_class = a3();
  v6 = objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a1, a2);

  return v6;
}

id sub_1000DC514(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000DC59C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000DC5F8()
{
  sub_1000B7E4C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000DC678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000DC6C0()
{
  result = qword_1003CDF28;
  if (!qword_1003CDF28)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF28);
  }

  return result;
}

void sub_1000DC7B4()
{
  v1 = 91;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

id sub_1000DC7EC(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, va);
}

void sub_1000DC840()
{
  v1 = 540949792;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000DC860()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000DC88C()
{
}

unint64_t sub_1000DC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_100080210(0, 0xE000000000000000, va);
}

void sub_1000DC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = 0xD000000000000027;

  v13 = a12 | 0x8000000000000000;
  String.append(_:)(*&v14);
}

id sub_1000DC8F8()
{
  v3 = *(v1 + 3584);

  return [v0 v3];
}

uint64_t sub_1000DC924(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t sub_1000DC93C(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000DC950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001003170E0 == a2;
  if (v3 || (sub_1000DCD4C() & 1) != 0)
  {

    return 3;
  }

  else
  {
    v6 = a1 == 0x62616D75736E6F43 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1000DCD4C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F432D6E6F4ELL && a2 == 0xEE00656C62616D75;
      if (v7 || (sub_1000DCD4C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x8000000100317100 == a2)
      {

        return 4;
      }

      else
      {
        v9 = sub_1000DCD4C();

        if (v9)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_1000DCAB0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DC93C(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TransactionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000DCBB4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000DCBF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DC950(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000DCC2C()
{
  result = qword_1003CDF30;
  if (!qword_1003CDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF30);
  }

  return result;
}

unint64_t sub_1000DCC90()
{
  result = qword_1003CDF38;
  if (!qword_1003CDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF38);
  }

  return result;
}

unint64_t sub_1000DCCF4()
{
  result = qword_1003CDF40;
  if (!qword_1003CDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF40);
  }

  return result;
}

uint64_t sub_1000DCD4C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000DCD68(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == sub_1000DCEE4() && v1 == v4)
  {

    return 0;
  }

  v6 = sub_1000DCEC0();

  if (v6)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v6 == sub_1000DCEE4() && v1 == v8)
  {

    return 2;
  }

  v10 = sub_1000DCEC0();

  if (v10)
  {

    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10 == sub_1000DCEE4() && v1 == v11)
  {

    return 1;
  }

  else
  {
    v13 = sub_1000DCEC0();

    if (v13)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000DCEC0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000DCEE4()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000DCF00(uint64_t a1)
{
  sub_100080FB4(&qword_1003CDF48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002ED2C0;
  v3 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v4 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  sub_1000DCFE0();

  v5 = String.init<A>(_:radix:uppercase:)();
  *(v2 + 56) = 1;
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  *(v2 + 80) = 2;
  *(v2 + 88) = xmmword_1002EF790;
  return v2;
}

unint64_t sub_1000DCFE0()
{
  result = qword_1003CDF50;
  if (!qword_1003CDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF50);
  }

  return result;
}

uint64_t sub_1000DD034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for URLQueryItem();
  v4[15] = v5;
  sub_1000B046C(v5);
  v4[16] = v6;
  v4[17] = sub_1000B05D0();
  sub_100080FB4(&unk_1003D0540);
  v4[18] = sub_1000B05D0();
  v7 = type metadata accessor for URL();
  v4[19] = v7;
  sub_1000B046C(v7);
  v4[20] = v8;
  v4[21] = sub_1000B05D0();
  sub_100080FB4(&qword_1003CEDE0);
  v4[22] = sub_1000B05D0();
  v9 = type metadata accessor for URLComponents();
  v4[23] = v9;
  sub_1000B046C(v9);
  v4[24] = v10;
  v4[25] = sub_1000B05D0();
  type metadata accessor for Client.Server(0);
  v4[26] = sub_1000B05D0();

  return _swift_task_switch(sub_1000DD204, 0, 0);
}

uint64_t sub_1000DD39C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1000DDE60;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 240) = a1;
    v5 = sub_1000DD4CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1000DD4CC()
{
  if (v0[30] == 1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v1 = v0[12];
    v2 = type metadata accessor for SKLogger();
    v3 = sub_10007EDA4(v2, qword_1003F26C8);
    v4 = v0;
    _StringGuts.grow(_:)(36);

    v116 = 0xD000000000000022;
    v117 = 0x8000000100317150;
    String.append(_:)(*(v1 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID));
    v5 = static os_log_type_t.default.getter();

    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = v0[13];
      v8 = v0[14];
      v9 = sub_10008E688();
      sub_10008E670();
      *v9 = 136446466;
      sub_1000DEDB8();
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      String.append(_:)(v10);
      sub_1000DEE0C();
      v19 = sub_1000DEE28(v11, v12, v13, v14, v15, v16, v17, v18, v108, v109, v3, v111, v115, 0xD000000000000022, 0x8000000100317150);

      *(v9 + 4) = v19;
      sub_1000DEE88();
      v21 = sub_100080210(0xD000000000000022, 0x8000000100317150, v20);

      *(v9 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      v3 = v110;
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    v24 = v0[22];
    v25 = v0[23];
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if (sub_100081D0C(v24, 1, v25) == 1)
    {
      v112 = (v0 + 5);
      sub_10008B69C(v0[22], &qword_1003CEDE0);
      sub_1000DC87C();
      _StringGuts.grow(_:)(63);
      sub_1000DEEEC();
      sub_1000DEE44();
      sub_1000DEE54();
      String.append(_:)(v26);
      sub_1000DEDD0();
      sub_1000DEB10(v27, v28);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      sub_1000DEDE8("' for offer code redemption.");
      v30 = v116;
      v31 = v117;
      v32 = static os_log_type_t.error.getter();

      v33 = Logger.logObject.getter();

      if (os_log_type_enabled(v33, v32))
      {
        v34 = v4[13];
        v35 = v4[14];
        v36 = sub_10008E688();
        sub_10008E670();
        *v36 = 136446466;
        sub_1000DEDB8();
        v37._countAndFlagsBits = v34;
        v37._object = v35;
        String.append(_:)(v37);
        sub_1000DEE0C();
        v46 = sub_1000DEE28(v38, v39, v40, v41, v42, v43, v44, v45, v108, v109, v110, v112, v115, v116, v117);

        *(v36 + 4) = v46;
        sub_1000DEE88();
        v48 = sub_100080210(v30, v31, v47);

        *(v36 + 14) = v48;
        sub_10009F1D4(&_mh_execute_header, v49, v50, "%{public}s%{public}s");
        sub_1000DEE7C();
        swift_arrayDestroy();
        sub_10008BF90();
        sub_100081C28();
      }

      else
      {
      }

      type metadata accessor for ASDError(0);
      sub_1000DEEE0();
      v4[6] = v59;
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_1000DEDA0();
      sub_1000DEB10(v60, v61);
      v22 = v4;
      v62 = v112;
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    else
    {
      v51 = v0[12];
      (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
      v52 = sub_1000DCF00(v51);
      v53 = *(v52 + 16);
      if (v53)
      {
        v110 = v3;
        v54 = v4[16];
        sub_1002133B4();
        v109 = v52;
        v55 = v4;
        do
        {
          sub_1000DEE60();

          sub_1000DEEF8();
          URLQueryItem.init(name:value:)();

          v116 = _swiftEmptyArrayStorage;
          v56 = _swiftEmptyArrayStorage[2];
          if (v56 >= _swiftEmptyArrayStorage[3] >> 1)
          {
            sub_1002133B4();
          }

          v57 = v55[17];
          v58 = v55[15];
          _swiftEmptyArrayStorage[2] = v56 + 1;
          (*(v54 + 32))(_swiftEmptyArrayStorage + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v56, v57, v58);
          --v53;
        }

        while (v53);
      }

      else
      {

        v55 = v4;
      }

      v64 = v55[18];
      v63 = v55[19];
      URLComponents.queryItems.setter();
      sub_1000DEE98();
      URLComponents.url.getter();
      if (sub_100081D0C(v64, 1, v63) == 1)
      {
        v62 = v55 + 7;
        sub_10008B69C(v55[18], &unk_1003D0540);
        sub_1000DC87C();
        _StringGuts.grow(_:)(76);
        sub_1000DEEEC();
        sub_1000DEE44();
        sub_1000DEE54();
        String.append(_:)(v65);
        sub_1000DEDD0();
        sub_1000DEB10(v66, v67);
        v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v68);

        sub_1000DEDE8("' for offer code redemption.");
        v69 = v117;
        v70 = static os_log_type_t.error.getter();

        v71 = Logger.logObject.getter();

        if (os_log_type_enabled(v71, v70))
        {
          v73 = v55[13];
          v72 = v55[14];
          v74 = sub_10008E688();
          sub_10008E670();
          *v74 = 136446466;
          sub_1000DEDB8();
          v75._countAndFlagsBits = v73;
          v75._object = v72;
          String.append(_:)(v75);
          sub_1000DEE0C();
          v84 = sub_1000DEE28(v76, v77, v78, v79, v80, v81, v82, v83, v108, v109, v110, v116, v115, v116, v117);

          *(v74 + 4) = v84;
          v62 = v55 + 7;
          sub_1000DEE88();
          v86 = sub_100080210(v113, v69, v85);

          *(v74 + 14) = v86;
          sub_10009F1D4(&_mh_execute_header, v87, v88, "%{public}s%{public}s");
          sub_1000DEE7C();
          swift_arrayDestroy();
          sub_10008BF90();
          sub_100081C28();
        }

        else
        {
        }

        v102 = v55[24];
        v101 = v55[25];
        v103 = v55[23];
        type metadata accessor for ASDError(0);
        sub_1000DEEE0();
        v55[8] = v104;
        sub_1000B61D4(_swiftEmptyArrayStorage);
        sub_1000DEDA0();
        sub_1000DEB10(v105, v106);
        v22 = v55;
        _BridgedStoredNSError.init(_:userInfo:)();
        (*(v102 + 8))(v101, v103);
      }

      else
      {
        (*(v55[20] + 32))(v55[21], v55[18], v55[19]);
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v90 = result;
        v62 = v55 + 9;
        v91 = v55[24];
        v114 = v55[25];
        v92 = v55[23];
        v93 = v55[20];
        v94 = v55[21];
        v95 = v55[19];
        URL._bridgeToObjectiveC()(v114);
        v97 = v96;
        sub_1000DEE7C();
        v98 = Dictionary.init(dictionaryLiteral:)();
        sub_1000DEB58(v97, v98, v90);

        type metadata accessor for ASDError(0);
        v55[10] = 910;
        sub_1000B61D4(_swiftEmptyArrayStorage);
        sub_1000DEDA0();
        sub_1000DEB10(v99, v100);
        v22 = v55;
        _BridgedStoredNSError.init(_:userInfo:)();
        (*(v93 + 8))(v94, v95);
        (*(v91 + 8))(v114, v92);
      }
    }

    v23 = *v62;
  }

  else
  {
    v22 = v0;
    v23 = 0;
  }

  v107 = v22[1];

  return v107(v23);
}

id sub_1000DDE60()
{
  v148 = v0;
  swift_unknownObjectRelease();
  v1 = &off_1003CB000;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = v0[29];
  v3 = type metadata accessor for SKLogger();
  sub_10007EDA4(v3, qword_1003F26C8);
  sub_1000DC87C();
  _StringGuts.grow(_:)(50);
  v4 = v147;
  v0[2] = v146;
  v0[3] = v4;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  v5._object = 0x8000000100317120;
  String.append(_:)(v5);
  sub_1000DEDD0();
  v140 = sub_1000DEB10(v6, v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v0[4] = v2;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v10 = v0[2];
  v11 = v0[3];
  v12 = static os_log_type_t.error.getter();

  v13 = v0;
  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v12))
  {
    v137 = v10;
    v138 = v0[29];
    v16 = v0[13];
    v15 = v0[14];
    v142 = v3;
    v17 = sub_10008E688();
    sub_10008E670();
    *v17 = 136446466;
    sub_1000DEDB8();
    v18._countAndFlagsBits = v16;
    v1 = &off_1003CB000;
    v18._object = v15;
    String.append(_:)(v18);
    sub_1000DEE0C();
    v27 = sub_1000DEE28(v19, v20, v21, v22, v23, v24, v25, v26, v137, v138, v140, v142, v145, v146, v147);

    *(v17 + 4) = v27;
    *(v17 + 12) = 2082;
    sub_100080210(v136, v11, &v145);
    sub_1000DEF2C();
    *(v17 + 14) = v0;
    v13 = v0;
    _os_log_impl(&_mh_execute_header, v14, v12, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    v3 = v141;
    sub_100081C28();
  }

  else
  {
  }

  if (v1[459] != -1)
  {
    sub_100081C08();
  }

  v28 = v13[12];
  v29 = sub_10007EDA4(v3, qword_1003F26C8);
  v146 = 0;
  v147 = 0xE000000000000000;
  v30 = v13;
  _StringGuts.grow(_:)(36);

  v146 = 0xD000000000000022;
  v147 = 0x8000000100317150;
  String.append(_:)(*(v28 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID));
  v31 = v146;
  v32 = v147;
  v33 = static os_log_type_t.default.getter();

  v139 = v29;
  v34 = v29;
  v35 = Logger.logObject.getter();

  if (os_log_type_enabled(v35, v33))
  {
    v36 = v30[13];
    v37 = v30[14];
    v38 = sub_10008E688();
    sub_10008E670();
    *v38 = 136446466;
    sub_1000DEDB8();
    v39._countAndFlagsBits = v36;
    v39._object = v37;
    String.append(_:)(v39);
    sub_1000DEE0C();
    v48 = sub_1000DEE28(v40, v41, v42, v43, v44, v45, v46, v47, v136, v139, v140, v141, v145, v146, v147);

    *(v38 + 4) = v48;
    *(v38 + 12) = 2082;
    sub_100080210(v31, v32, &v145);
    sub_1000DEF2C();
    *(v38 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v35, v33, "%{public}s%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_10008BF90();
  }

  else
  {
  }

  v49 = v30[22];
  v50 = v30[23];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_100081D0C(v49, 1, v50) == 1)
  {
    v51 = v30 + 5;
    sub_10008B69C(v30[22], &qword_1003CEDE0);
    sub_1000DC87C();
    _StringGuts.grow(_:)(63);
    sub_1000DEEEC();
    sub_1000DEE44();
    sub_1000DEE54();
    String.append(_:)(v52);
    v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v53);

    sub_1000DEDE8("' for offer code redemption.");
    v54 = v146;
    v55 = static os_log_type_t.error.getter();

    v56 = v139;
    v57 = Logger.logObject.getter();

    if (os_log_type_enabled(v57, v55))
    {
      v58 = v30[13];
      v59 = v30[14];
      v60 = sub_10008E688();
      sub_10008E670();
      *v60 = 136446466;
      sub_1000DEDB8();
      v61._countAndFlagsBits = v58;
      v61._object = v59;
      String.append(_:)(v61);
      sub_1000DEE0C();
      v70 = sub_1000DEE28(v62, v63, v64, v65, v66, v67, v68, v69, v136, v139, v140, v54, v145, v146, v147);

      *(v60 + 4) = v70;
      v51 = v30 + 5;
      sub_1000DEEBC(v71, v72, v73, v74);
      sub_1000DEF2C();
      *(v60 + 14) = v56;
      sub_1000DEF0C(&_mh_execute_header, v75, v76, "%{public}s%{public}s");
      sub_1000DEE7C();
      swift_arrayDestroy();
      sub_10008BF90();
      sub_100081C28();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    sub_1000DEEE0();
    v30[6] = v86;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_1000DEDA0();
    sub_1000DEB10(v87, v88);
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else
  {
    v77 = v30[12];
    (*(v30[24] + 32))(v30[25], v30[22], v30[23]);
    v78 = sub_1000DCF00(v77);
    v79 = *(v78 + 16);
    if (v79)
    {
      v80 = v30[16];
      v146 = _swiftEmptyArrayStorage;
      sub_1002133B4();
      v81 = v146;
      v136 = v78;
      v82 = v30;
      do
      {
        sub_1000DEE60();

        sub_1000DEEF8();
        URLQueryItem.init(name:value:)();

        v146 = v81;
        v83 = v81[2];
        if (v83 >= v81[3] >> 1)
        {
          sub_1002133B4();
          v81 = v146;
        }

        v84 = v30[17];
        v85 = v30[15];
        v81[2] = v83 + 1;
        (*(v80 + 32))(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v83, v84, v85);
        --v79;
      }

      while (v79);
    }

    else
    {

      v82 = v30;
    }

    v30 = v82;
    v90 = v82[18];
    v89 = v82[19];
    URLComponents.queryItems.setter();
    sub_1000DEE98();
    URLComponents.url.getter();
    if (sub_100081D0C(v90, 1, v89) == 1)
    {
      v51 = v82 + 7;
      sub_10008B69C(v82[18], &unk_1003D0540);
      sub_1000DC87C();
      _StringGuts.grow(_:)(76);
      sub_1000DEEEC();
      sub_1000DEE44();
      sub_1000DEE54();
      String.append(_:)(v91);
      v92._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v92);

      sub_1000DEDE8("' for offer code redemption.");
      v93 = v146;
      v94 = static os_log_type_t.error.getter();

      v95 = v139;
      v96 = Logger.logObject.getter();

      if (os_log_type_enabled(v96, v94))
      {
        v143 = v93;
        v97 = v82[13];
        v98 = v82[14];
        v99 = sub_10008E688();
        sub_10008E670();
        *v99 = 136446466;
        sub_1000DEDB8();
        v100._countAndFlagsBits = v97;
        v100._object = v98;
        String.append(_:)(v100);
        sub_1000DEE0C();
        v109 = sub_1000DEE28(v101, v102, v103, v104, v105, v106, v107, v108, v136, v139, v140, v143, v145, v146, v147);

        *(v99 + 4) = v109;
        sub_1000DEEBC(v110, v111, v112, v113);
        sub_1000DEF2C();
        *(v99 + 14) = v95;
        sub_1000DEF0C(&_mh_execute_header, v114, v115, "%{public}s%{public}s");
        sub_1000DEE7C();
        swift_arrayDestroy();
        sub_10008BF90();
        sub_100081C28();
      }

      else
      {
      }

      v129 = v30[24];
      v128 = v30[25];
      v130 = v30[23];
      type metadata accessor for ASDError(0);
      sub_1000DEEE0();
      v30[8] = v131;
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_1000DEDA0();
      sub_1000DEB10(v132, v133);
      _BridgedStoredNSError.init(_:userInfo:)();
      (*(v129 + 8))(v128, v130);
    }

    else
    {
      (*(v82[20] + 32))(v82[21], v82[18], v82[19]);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v117 = result;
      v118 = v30[24];
      v144 = v30[25];
      v119 = v30[23];
      v120 = v30[20];
      v121 = v30[21];
      v122 = v30[19];
      URL._bridgeToObjectiveC()(v144);
      v124 = v123;
      sub_1000DEE7C();
      v125 = Dictionary.init(dictionaryLiteral:)();
      sub_1000DEB58(v124, v125, v117);

      type metadata accessor for ASDError(0);
      v30[10] = 910;
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_1000DEDA0();
      sub_1000DEB10(v126, v127);
      _BridgedStoredNSError.init(_:userInfo:)();
      (*(v120 + 8))(v121, v122);
      v51 = v30 + 9;
      (*(v118 + 8))(v144, v119);
    }
  }

  v134 = *v51;

  v135 = v30[1];

  return v135(v134);
}

uint64_t sub_1000DE9A4(char a1)
{
  if (!a1)
  {
    return 1684628080;
  }

  if (a1 == 1)
  {
    return 1684627824;
  }

  return 7894115;
}

id sub_1000DE9E0()
{
  if (qword_1003CC038 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F28A0;
  qword_1003F25A0 = qword_1003F28A0;

  return v1;
}

unint64_t sub_1000DEA44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003837D8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000DEAB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DEA44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000DEAE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DE9A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000DEB10(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000DEB58(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

_BYTE *storeEnumTagSinglePayload for OfferCodeRedeemEngagementDestination.QueryParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000DECB8);
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

unint64_t sub_1000DECF4()
{
  result = qword_1003CDF60;
  if (!qword_1003CDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF60);
  }

  return result;
}

unint64_t sub_1000DED4C()
{
  result = qword_1003CDF68;
  if (!qword_1003CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF68);
  }

  return result;
}

void sub_1000DEDE8(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001CLL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

void sub_1000DEE0C()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_1000DEE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a14;
  v17 = a15;

  return sub_100080210(v16, v17, &a13);
}

uint64_t sub_1000DEE98()
{

  return URLComponents.scheme.setter(0x69752D736D7469, 0xE700000000000000);
}

unint64_t sub_1000DEEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 12) = 2082;

  return sub_100080210(a4, v5, va);
}

void sub_1000DEF0C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1000DEF2C()
{
}

unint64_t sub_1000DEF44(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t sub_1000DEF8C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DEF44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000DEFB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DEF6C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000DF004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DF5D8();
  v5 = sub_100080B0C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1000DF074(uint64_t result)
{
  v1 = (result - 1001) > 5 || result == 1002;
  if (v1 && ((result - 3004) > 0x38 || ((1 << (result + 68)) & 0x180000400800001) == 0) && (result - 3900) >= 5 && ((result - 2002) > 0x35 || ((1 << (result + 46)) & 0x20000100000001) == 0))
  {
    v2 = (result - 3603) < 2 || result == -1;
    if (!v2 && result != 3504 && result != 3513 && result != 3705 && result != 500317 && result != 500328 && result != 4000029)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000DF164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DF7F4();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000DF1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000DF074(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000DF20C(uint64_t a1)
{
  v2 = sub_1000DF7F4();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000DF268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DF7F4();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_1000DF324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000DF37C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for StoreKitInternalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitInternalError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
        JUMPOUT(0x1000DF528);
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DF564()
{
  result = qword_1003CDFE8;
  if (!qword_1003CDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDFE8);
  }

  return result;
}

unint64_t sub_1000DF5D8()
{
  result = qword_1003CDFF0;
  if (!qword_1003CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDFF0);
  }

  return result;
}

unint64_t sub_1000DF640()
{
  result = qword_1003CDFF8;
  if (!qword_1003CDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDFF8);
  }

  return result;
}

unint64_t sub_1000DF698()
{
  result = qword_1003CE000;
  if (!qword_1003CE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE000);
  }

  return result;
}

unint64_t sub_1000DF6F0()
{
  result = qword_1003CE008;
  if (!qword_1003CE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE008);
  }

  return result;
}

unint64_t sub_1000DF748()
{
  result = qword_1003CE010;
  if (!qword_1003CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE010);
  }

  return result;
}

unint64_t sub_1000DF7A0()
{
  result = qword_1003CE018;
  if (!qword_1003CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE018);
  }

  return result;
}

unint64_t sub_1000DF7F4()
{
  result = qword_1003CE020;
  if (!qword_1003CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE020);
  }

  return result;
}

uint64_t sub_1000DF864(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DF8A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DF920()
{
  v33 = v0;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for SKLogger();
  v0[17] = sub_10007EDA4(v2, qword_1003F26C8);
  v3 = *(v1 + 24);
  v0[18] = v3;
  v4 = *(v1 + 32);
  v0[19] = v4;

  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v32[0] = v8;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v9._countAndFlagsBits = v3;
    v9._object = v4;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8285;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_100080210(91, 0xE100000000000000, v32);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_100080210(0xD000000000000018, 0x80000001003172B0, v32);
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  v12 = v0[16];
  sub_100080FB4(&unk_1003CEE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v14 = *v12;
  v15 = (*v12 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v16 = v15[1];
  *(inited + 48) = *v15;
  *(inited + 56) = v16;
  strcpy((inited + 64), "inAppPinningId");
  *(inited + 79) = -18;
  v17 = *(v12 + 8);
  v18 = v14;

  v19 = [v17 pinningID];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(inited + 80) = v20;
  *(inited + 88) = v22;
  v23 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for Request();
  if (qword_1003CBFF8 != -1)
  {
    swift_once();
  }

  v24 = v0[16];
  v25 = qword_1003F2860;
  v26 = sub_1002235CC(v23);

  v27 = sub_10021E3B0(v18, v25, 3, 4, 1, v26);
  v0[20] = v27;
  v28 = *(v24 + 16);
  v0[14] = v28;
  *&v27[OBJC_IVAR____TtC9storekitd7Request_dialogContext] = v28;
  sub_1000E0120((v0 + 14), (v0 + 15));
  swift_unknownObjectRelease();
  v29 = &v27[OBJC_IVAR____TtC9storekitd7Request_logKey];
  *v29 = v3;
  v29[1] = v4;

  v27[OBJC_IVAR____TtC9storekitd7Request_useBiometrics] = 1;
  v30 = swift_task_alloc();
  v0[21] = v30;
  *v30 = v0;
  v30[1] = sub_1000DFD34;

  return sub_10021E694();
}

uint64_t sub_1000DFD34(void *a1)
{
  *(*v2 + 176) = v1;

  if (v1)
  {
    v4 = sub_1000DFEB4;
  }

  else
  {

    v4 = sub_1000DFE50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DFE50()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFEB4()
{
  v23 = v0;
  _StringGuts.grow(_:)(26);

  v21 = 0xD000000000000018;
  v22 = 0x80000001003172D0;
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = static os_log_type_t.error.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v10 = v0[18];
    v9 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v20 = v12;
    v21 = 91;
    v22 = 0xE100000000000000;
    v13._countAndFlagsBits = v10;
    v13._object = v9;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_100080210(91, 0xE100000000000000, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_100080210(0xD000000000000018, 0x80000001003172D0, &v20);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v17 = v0[20];
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000E0120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CE028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E01A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1000E024C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0);
    v8 = v5 + *(a4 + 20);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClientTypeRequest()
{
  result = qword_1003CE088;
  if (!qword_1003CE088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0324()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000E03A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265)
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

uint64_t sub_1000E046C(char a1)
{
  if (a1)
  {
    return 0x764F746E65696C63;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_1000E04AC(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CE0E8);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000E0AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ClientTypeRequest();
    v12[14] = 1;
    type metadata accessor for ClientOverride(0);
    sub_1000E0E9C();
    sub_1000E0C48(v9, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000E0648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v4 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  sub_100080FB4(&qword_1003CE0D8);
  sub_1000890DC();
  v21[1] = v8;
  v21[2] = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for ClientTypeRequest();
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 28);
  v14 = type metadata accessor for ClientOverride(0);
  v22 = v13;
  sub_100081DFC(v12 + v13, 1, 1, v14);
  sub_100086D24(a1, a1[3]);
  sub_1000E0AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100080F0C(a1);
    return sub_100086DC0(v12 + v22);
  }

  else
  {
    v24 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v23 = 1;
    sub_1000E0E9C();
    sub_1000E0C48(v16, v17);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = sub_1000E0EB4();
    v19(v18);
    sub_1000E0B18(v6, v12 + v22);
    sub_1000E0B88(v12, v21[0]);
    sub_100080F0C(a1);
    return sub_1000E0BEC(v12);
  }
}

uint64_t sub_1000E0918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E03A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E0940(uint64_t a1)
{
  v2 = sub_1000E0AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E097C(uint64_t a1)
{
  v2 = sub_1000E0AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E09E8(uint64_t a1)
{
  *(a1 + 8) = sub_1000E0C48(&qword_1003CE0C0, type metadata accessor for ClientTypeRequest);
  result = sub_1000E0C48(&qword_1003CE0C8, type metadata accessor for ClientTypeRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E0A6C(uint64_t a1)
{
  result = sub_1000E0C48(&qword_1003CE0D0, type metadata accessor for ClientTypeRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E0AC4()
{
  result = qword_1003CE0E0;
  if (!qword_1003CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE0E0);
  }

  return result;
}

uint64_t sub_1000E0B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D20F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E0B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientTypeRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E0BEC(uint64_t a1)
{
  v2 = type metadata accessor for ClientTypeRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E0C48(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ClientTypeRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000E0D5CLL);
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

unint64_t sub_1000E0D98()
{
  result = qword_1003CE0F0;
  if (!qword_1003CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE0F0);
  }

  return result;
}

unint64_t sub_1000E0DF0()
{
  result = qword_1003CE0F8;
  if (!qword_1003CE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE0F8);
  }

  return result;
}

unint64_t sub_1000E0E48()
{
  result = qword_1003CE100;
  if (!qword_1003CE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE100);
  }

  return result;
}

uint64_t sub_1000E0EC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001003138B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001003138D0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_1000E0FDC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x737574617473;
}

uint64_t sub_1000E103C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CE158);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000E3694();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000E11AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100080FB4(&qword_1003CE168);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100086D24(a1, a1[3]);
  sub_1000E3694();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v7;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = sub_10008BD1C();
  v11(v10);
  result = sub_100080F0C(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;
  return result;
}

uint64_t sub_1000E13CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E0EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E13F4(uint64_t a1)
{
  v2 = sub_1000E3694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E1430(uint64_t a1)
{
  v2 = sub_1000E3694();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E146C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E11AC(a1, v6);
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

uint64_t sub_1000E14CC@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  sub_1000890DC();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  static Date.distantPast.getter();
  v18 = *(v6 + 16);
  v6 += 16;
  v33 = v17;
  v18(a2, v17, v4);
  v19 = *(a1 + 16);
  v20 = (v6 + 16);
  v21 = (v6 - 8);
  v22 = a1 + 56;
  v35 = v21;
  v36 = v20 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v37 = v15;
  if (v19)
  {
    while (1)
    {

      v23 = String._bridgeToObjectiveC()();
      v24 = sub_100027A0C(v23);

      if (!v24)
      {
        break;
      }

      v25 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *v20;
      (*v20)(v12, v25, v4);
      sub_1000E3454(&qword_1003CDF28, &type metadata accessor for Date);
      LOBYTE(v25) = dispatch thunk of static Comparable.>= infix(_:_:)();

      v27 = *v35;
      if ((v25 & 1) == 0)
      {
        v27(v12, v4);
        goto LABEL_7;
      }

      v27(a2, v4);
      v28 = v37;
      v29 = v37;
      v30 = v12;
LABEL_8:
      v26(v29, v30, v4);
      v26(a2, v28, v4);
      v22 += 40;
      if (!--v19)
      {
        return (*v35)(v33, v4);
      }
    }

    v26 = *v20;
LABEL_7:
    v28 = v37;
    v29 = v37;
    v30 = a2;
    goto LABEL_8;
  }

  return (*v35)(v33, v4);
}

uint64_t sub_1000E17B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000100313570 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100313890 == a2)
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

unint64_t sub_1000E1890(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1000E18CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100080FB4(&qword_1003CE108);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_100086D24(a1, a1[3]);
  sub_1000E34C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100080FB4(&qword_1003CE118);
    sub_1000E36E8(&qword_1003CE120, sub_1000E3514);
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1000E1A88(void *a1)
{
  sub_100080FB4(&qword_1003CE170);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_1000E34C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100080FB4(&qword_1003CE118);
    sub_1000E36E8(&qword_1003CE178, sub_1000E3760);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_1000E3F18();
    v7(v6);
  }

  sub_100080F0C(a1);
  return v4;
}

uint64_t sub_1000E1C94(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

void *sub_1000E1D1C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CE130);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_100086D24(a1, a1[3]);
  sub_1000E3568();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100080F0C(a1);
  }

  else
  {
    sub_100080FB4(&qword_1003CE140);
    sub_1000E35BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    sub_100080F0C(a1);
  }

  return v9;
}

uint64_t sub_1000E1E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E17B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E1EC0(uint64_t a1)
{
  v2 = sub_1000E34C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E1EFC(uint64_t a1)
{
  v2 = sub_1000E34C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E1F38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000E1A88(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000E1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E1C94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000E1FBC(uint64_t a1)
{
  v2 = sub_1000E3568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E1FF8(uint64_t a1)
{
  v2 = sub_1000E3568();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E2034@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000E1D1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000E2060()
{
  sub_10008BE9C();
  *(v0 + 440) = v1;
  *(v0 + 360) = v2;
  sub_100080FB4(&unk_1003CE610);
  *(v0 + 368) = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  *(v0 + 376) = v3;
  *(v0 + 384) = *(v3 - 8);
  *(v0 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1000E2158, 0, 0);
}

uint64_t sub_1000E2158()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 440);
  sub_100080FB4(&qword_1003D27E0);
  type metadata accessor for URLQueryItem();
  v3 = swift_allocObject();
  *(v0 + 400) = v3;
  *(v3 + 16) = xmmword_1002ED020;
  v4 = [objc_opt_self() deviceGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLQueryItem.init(name:value:)();

  sub_10014F1DC(v2);
  URLQueryItem.init(name:value:)();

  v5 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 408) = v5;
  v1;
  if (sub_1001A79F8())
  {
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    sub_1000E3228(*(v0 + 360) + OBJC_IVAR____TtC9storekitd6Client_deviceVendorID, v7);
    if (sub_100081D0C(v7, 1, v6) == 1)
    {
      v8 = *(v0 + 360);
      v9 = *(v0 + 368);

      sub_10008B69C(v9, &unk_1003CE610);
      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v10 = type metadata accessor for SKLogger();
      sub_10007EDA4(v10, qword_1003F26C8);
      sub_1000E3E68();
      _StringGuts.grow(_:)(65);
      sub_1000E3E10();
      sub_1000E3EE0();
      String.append(_:)(v11);
      sub_1000E3EE0();
      String.append(_:)(v12);
      v14 = v72;
      v13 = v75;
      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC();
      }

      TaskLocal.get()();
      v15 = static os_log_type_t.error.getter();

      v16 = Logger.logObject.getter();

      if (os_log_type_enabled(v16, v15))
      {
        swift_slowAlloc();
        v17 = sub_10008BF58();
        sub_1000E3DA8(v17, v18, v19, v20, v21, v22, v23, v24, 4.8752e-34, v64, v66, v72, v70, v72, v75);
        sub_1000E3F28();
        sub_1000E3F4C(v25, v26, v27, v28, v29, v30, v31, v32, v65, v67, v68, v71, v73, v76);

        sub_1000E3E54();
        v34 = sub_100080210(v69, v13, v33);

        *(v14 + 14) = v34;
        sub_10008C0B8(&_mh_execute_header, v35, v36, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_10008BF90();
        sub_10008BF3C();
      }

      else
      {
      }

      sub_10008B5E0();
      v60 = swift_allocError();
      sub_10008C05C(v60, v61);
      swift_willThrow();

      sub_10009F1B8();

      __asm { BRAA            X1, X16 }
    }

    v40 = *(v0 + 360);
    (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
    *(v0 + 352) = *(v40 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = v41;
    *(v0 + 88) = v42;
    sub_10008B5D0((v0 + 80), (v0 + 112));
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v5;
    sub_1000E3EB0();
    v43 = *(v40 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v44 = *(v40 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
    *(v0 + 168) = &type metadata for String;
    *(v0 + 144) = v43;
    *(v0 + 152) = v44;
    sub_10008B5D0((v0 + 144), (v0 + 176));

    swift_isUniquelyReferenced_nonNull_native();
    sub_1000E3E7C();
    UUID.uuidString.getter();
    v45 = String.lowercased()();

    *(v0 + 232) = &type metadata for String;
    *(v0 + 208) = v45;
    sub_10008B5D0((v0 + 208), (v0 + 240));
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
    if (qword_1003CC068 != -1)
    {
      sub_1000E3E34();
    }

    sub_1000E3F68();
    sub_1001A7AB4(v46);
    swift_getObjectType();
    v47 = swift_allocObject();
    sub_1000E3DD8(v47);
    swift_unknownObjectRelease();

    v48 = objc_allocWithZone(type metadata accessor for Request());
    sub_1000E3EEC(v48, v49, v50, v51, v52, v53, v54, v55, v64, v66, v74);
    v56 = sub_1000E3F7C();
    v57(v56);

    sub_10008C048();
    sub_10009F1B8();

    __asm { BRAA            X2, X16 }
  }

  v37 = swift_task_alloc();
  *(v0 + 416) = v37;
  *v37 = v0;
  v37[1] = sub_1000E27C8;
  sub_10009F1B8();

  return sub_1000A8544();
}

uint64_t sub_1000E27C8()
{
  sub_10008BE9C();
  v2 = v1;
  v3 = *v0;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v0;
  sub_10008BEFC();
  *v6 = v5;

  v7 = swift_task_alloc();
  *(v3 + 424) = v7;
  *v7 = v5;
  v7[1] = sub_1000E28EC;

  return sub_1000A10AC(v2);
}

uint64_t sub_1000E28EC()
{
  sub_10008BE9C();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  return _swift_task_switch(sub_1000E29E4, 0, 0);
}

void sub_1000E29E4()
{
  v2 = *(v0 + 432);
  if (v2)
  {
    v3 = [*(v0 + 432) ams_DSID];
    v4 = *(v0 + 408);
    if (v3)
    {
      v5 = v3;
      v6 = [v3 stringValue];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      *(v0 + 40) = &type metadata for String;
      *(v0 + 16) = v7;
      *(v0 + 24) = v9;
      sub_10008B5D0((v0 + 16), (v0 + 48));
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v4;
      sub_10023E7C0();

      v10 = v4;
    }

    else
    {
      v39 = sub_1000B6328(1684632420, 0xE400000000000000);
      if (v40)
      {
        v41 = v39;
        v42 = *(v0 + 408);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v42;
        v44 = *(v42 + 24);
        sub_100080FB4(&qword_1003CCA88);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
        v10 = v42;

        sub_10008B5D0((*(v42 + 56) + 32 * v41), (v0 + 272));
        _NativeDictionary._delete(at:)();
      }

      else
      {
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0u;
        v10 = *(v0 + 408);
      }

      sub_10008B69C(v0 + 272, &unk_1003CCB70);
    }

    v45 = *(v0 + 368);
    v46 = *(v0 + 376);
    sub_1000E3228(*(v0 + 360) + OBJC_IVAR____TtC9storekitd6Client_deviceVendorID, v45);
    if (sub_100081D0C(v45, 1, v46) != 1)
    {
      v76 = *(v0 + 360);
      (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 368), *(v0 + 376));
      *(v0 + 352) = *(v76 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 104) = &type metadata for String;
      *(v0 + 80) = v77;
      *(v0 + 88) = v78;
      sub_10008B5D0((v0 + 80), (v0 + 112));
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v10;
      sub_1000E3EB0();
      v79 = *(v76 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
      v80 = *(v76 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
      *(v0 + 168) = &type metadata for String;
      *(v0 + 144) = v79;
      *(v0 + 152) = v80;
      sub_10008B5D0((v0 + 144), (v0 + 176));

      swift_isUniquelyReferenced_nonNull_native();
      sub_1000E3E7C();
      UUID.uuidString.getter();
      v81 = String.lowercased()();

      *(v0 + 232) = &type metadata for String;
      *(v0 + 208) = v81;
      sub_10008B5D0((v0 + 208), (v0 + 240));
      swift_isUniquelyReferenced_nonNull_native();
      sub_10023E7C0();
      if (qword_1003CC068 != -1)
      {
        sub_1000E3E34();
      }

      sub_1000E3F68();
      sub_1001A7AB4(v82);
      swift_getObjectType();
      v83 = swift_allocObject();
      sub_1000E3DD8(v83);
      swift_unknownObjectRelease();

      v84 = objc_allocWithZone(type metadata accessor for Request());
      sub_1000E3EEC(v84, v85, v86, v87, v88, v89, v90, v91, v100, v103, v115);
      v92 = sub_1000E3F7C();
      v93(v92);

      sub_10008C048();
      sub_10009F1B8();

      __asm { BRAA            X2, X16 }
    }

    v47 = *(v0 + 360);
    v48 = *(v0 + 368);

    sub_10008B69C(v48, &unk_1003CE610);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v49 = type metadata accessor for SKLogger();
    sub_10007EDA4(v49, qword_1003F26C8);
    sub_1000E3E68();
    _StringGuts.grow(_:)(65);
    sub_1000E3E10();
    sub_1000E3EE0();
    v50._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v50);
    sub_1000E3EE0();
    String.append(_:)(v51);
    v53 = v112;
    v52 = v116;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v54 = static os_log_type_t.error.getter();

    v55 = Logger.logObject.getter();

    if (os_log_type_enabled(v55, v54))
    {
      swift_slowAlloc();
      v56 = sub_10008BF58();
      sub_1000E3DA8(v56, v57, v58, v59, v60, v61, v62, v63, 4.8752e-34, v100, v103, v106, v109, v112, v116);
      sub_1000E3F28();
      sub_1000E3F4C(v64, v65, v66, v67, v68, v69, v70, v71, v102, v105, v108, v111, v114, v118);

      sub_1000E3E54();
      v73 = sub_100080210(v53, v52, v72);

      *(&type metadata for String + 14) = v73;
      sub_10008C0B8(&_mh_execute_header, v74, v75, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10008BF90();
      sub_10008BF3C();
    }

    else
    {
    }

    sub_10008B5E0();
    v96 = swift_allocError();
    sub_10008C05C(v96, v97);
  }

  else
  {
    v11 = *(v0 + 360);

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v12 = type metadata accessor for SKLogger();
    sub_10007EDA4(v12, qword_1003F26C8);
    sub_1000E3E68();
    _StringGuts.grow(_:)(54);
    sub_1000E3E10();
    sub_1000E3EE0();
    v13._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v13);
    sub_1000E3EE0();
    String.append(_:)(v14);
    v16 = v112;
    v15 = v116;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v17 = static os_log_type_t.error.getter();

    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      swift_slowAlloc();
      v19 = sub_10008BF58();
      sub_1000E3DA8(v19, v20, v21, v22, v23, v24, v25, v26, 4.8752e-34, v100, v103, v106, v109, v112, v116);
      sub_1000E3F28();
      sub_1000E3F4C(v27, v28, v29, v30, v31, v32, v33, v34, v101, v104, v107, v110, v113, v117);

      sub_1000E3E54();
      v36 = sub_100080210(v16, v15, v35);

      *(v1 + 14) = v36;
      sub_10008C0B8(&_mh_execute_header, v37, v38, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10008BF90();
      sub_10008BF3C();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    *(v0 + 344) = 509;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_1000E3454(&qword_1003CC170, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  swift_willThrow();

  sub_10009F1B8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000E3228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CE610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3298()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E32D0()
{
  sub_10008BE9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000E3360;

  return sub_10008B510();
}

uint64_t sub_1000E3360()
{
  sub_10008BE9C();
  v2 = v1;
  v3 = *v0;
  sub_10008BEFC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1000E3454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E34C0()
{
  result = qword_1003CE110;
  if (!qword_1003CE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE110);
  }

  return result;
}

unint64_t sub_1000E3514()
{
  result = qword_1003CE128;
  if (!qword_1003CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE128);
  }

  return result;
}

unint64_t sub_1000E3568()
{
  result = qword_1003CE138;
  if (!qword_1003CE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE138);
  }

  return result;
}

unint64_t sub_1000E35BC()
{
  result = qword_1003CE148;
  if (!qword_1003CE148)
  {
    sub_1000852D4(&qword_1003CE140);
    sub_1000E3640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE148);
  }

  return result;
}

unint64_t sub_1000E3640()
{
  result = qword_1003CE150;
  if (!qword_1003CE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE150);
  }

  return result;
}

unint64_t sub_1000E3694()
{
  result = qword_1003CE160;
  if (!qword_1003CE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE160);
  }

  return result;
}

uint64_t sub_1000E36E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&qword_1003CE118);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E3760()
{
  result = qword_1003CE180;
  if (!qword_1003CE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE180);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.SubscriptionGroupStatus.Item.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000E3880);
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

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1000E3954);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.SubscriptionGroupStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000E3A58);
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

unint64_t sub_1000E3A94()
{
  result = qword_1003CE188;
  if (!qword_1003CE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE188);
  }

  return result;
}

unint64_t sub_1000E3AEC()
{
  result = qword_1003CE190;
  if (!qword_1003CE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE190);
  }

  return result;
}

unint64_t sub_1000E3B44()
{
  result = qword_1003CE198;
  if (!qword_1003CE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE198);
  }

  return result;
}

unint64_t sub_1000E3B9C()
{
  result = qword_1003CE1A0;
  if (!qword_1003CE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1A0);
  }

  return result;
}

unint64_t sub_1000E3BF4()
{
  result = qword_1003CE1A8;
  if (!qword_1003CE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1A8);
  }

  return result;
}

unint64_t sub_1000E3C4C()
{
  result = qword_1003CE1B0;
  if (!qword_1003CE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1B0);
  }

  return result;
}

unint64_t sub_1000E3CA4()
{
  result = qword_1003CE1B8;
  if (!qword_1003CE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1B8);
  }

  return result;
}

unint64_t sub_1000E3CFC()
{
  result = qword_1003CE1C0;
  if (!qword_1003CE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1C0);
  }

  return result;
}

unint64_t sub_1000E3D54()
{
  result = qword_1003CE1C8;
  if (!qword_1003CE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE1C8);
  }

  return result;
}

void sub_1000E3DA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *v16 = a9;
  v19 = v17;
  v20 = v15;

  String.append(_:)(*&v19);
}

void sub_1000E3DD8(uint64_t a1)
{
  *(a1 + 16) = v1;

  sub_100235238(v2, &unk_1002EFF20, a1, v3);
}

void sub_1000E3E10()
{
  v1 = 91;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000E3E34()
{

  return swift_once();
}

_OWORD *sub_1000E3E7C()
{

  return sub_10023E7C0();
}

_OWORD *sub_1000E3EB0()
{

  return sub_10023E7C0();
}

id sub_1000E3EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_10021E56C(v11, v12, 3, 4, 0, a11);
}

void sub_1000E3F28()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_1000E3F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a13;
  v16 = a14;

  return sub_100080210(v15, v16, &a12);
}

id sub_1000E3F90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void), unint64_t *a13, void (*a14)(uint64_t), uint64_t a15, void (*a16)(void), uint64_t a17, uint64_t a18, uint64_t a19)
{
  v126 = a7;
  v22 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v22 - 8);
  v125 = &v122 - v23;
  v133 = a12(0);
  sub_100098B7C();
  __chkstk_darwin(v24);
  v136 = &v122 - v25;
  v26 = sub_100080FB4(&unk_1003D20F0);
  v27 = __chkstk_darwin(v26 - 8);
  v127 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v122 - v30;
  __chkstk_darwin(v29);
  v33 = &v122 - v32;
  v145 = a1;
  v146 = a2;

  swift_task_localValuePush();
  v130 = a9;
  v149 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v34 = type metadata accessor for SKLogger();
  v35 = sub_10007EDA4(v34, qword_1003F26C8);
  v36 = qword_1003CBE98;

  if (v36 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v137 = a16;
  v134 = a17;
  v135 = qword_1003F2700;
  TaskLocal.get()();
  v37 = v145;
  v38 = v146;
  v39 = static os_log_type_t.default.getter();

  v129 = v35;
  v40 = Logger.logObject.getter();

  v41 = os_log_type_enabled(v40, v39);
  v131 = a8;
  v132 = v33;
  if (v41)
  {
    sub_1000B7DC8();
    v42 = swift_slowAlloc();
    sub_1000B7DBC();
    v143 = swift_slowAlloc();
    *v42 = 136446466;
    sub_10009F0F8();
    v145 = v43;
    v146 = v44;
    v45._countAndFlagsBits = v37;
    v45._object = v38;
    String.append(_:)(v45);
    sub_10009F134();
    v46 = sub_100080210(v145, v146, &v143);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2082;
    v47 = sub_100080210(v126, a8, &v143);

    *(v42 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v42, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    v33 = v132;
    sub_1000B7D68();
  }

  else
  {
  }

  v48 = v133;
  v49 = [objc_opt_self() currentConnection];
  if (!v49)
  {
    v145 = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    sub_1000EDCF0();
    v143 = v57 + 5;
    v144 = v56;
    sub_1000EDA6C();
    sub_1000EDB20();
    sub_1000EDDCC();
    v58._countAndFlagsBits = sub_1000EDDE4();
    String.append(_:)(v58);

    v60 = v143;
    v59 = v144;
    TaskLocal.get()();
    v62 = v143;
    v61 = v144;
    v63 = static os_log_type_t.error.getter();

    v64 = Logger.logObject.getter();

    if (os_log_type_enabled(v64, v63))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1000EDBB0();
      sub_1000B7DBC();
      v138 = swift_slowAlloc();
      *a11 = 136446466;
      sub_10009F0F8();
      v143 = v65;
      v144 = v66;
      v67._countAndFlagsBits = v62;
      v67._object = v61;
      String.append(_:)(v67);
      sub_10009F134();
      v68 = v144;
      v69 = sub_100080210(v143, v144, &v138);

      *(a11 + 4) = v69;
      *(a11 + 12) = 2082;
      sub_100080210(v60, v59, &v138);
      sub_1000EDD18();

      *(a11 + 14) = v68;
      sub_1000EDD4C(&_mh_execute_header, v70, v71, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000EDB90();
      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v72 = swift_allocError();
    sub_1000EDDAC(v72, v73);
    goto LABEL_29;
  }

  v50 = v49;
  v51 = v149;
  swift_beginAccess();
  v147 = v48;
  v148 = sub_1000ED5C0(a13, a14);
  v52 = sub_10009E720(&v145);
  sub_1000ED370(v51, v52, v137);
  v53 = sub_100086D24(&v145, v147);
  sub_1000ED008(v53 + v48[5], v31);
  v54 = type metadata accessor for ClientOverride(0);
  v55 = sub_100081D0C(v31, 1, v54);
  sub_1000AF25C(v31, &unk_1003D20F0);
  if (v55 == 1)
  {
    sub_100080F0C(&v145);
    sub_1000EDD8C();
  }

  else
  {
    if ([v50 sk_allowClientOverride])
    {
      sub_1000ED008(v52 + v48[5], v33);
    }

    else
    {
      v138 = 0;
      v139 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v141 = v138;
      v142 = v139;
      v74._countAndFlagsBits = 0xD00000000000001DLL;
      v74._object = 0x80000001003174C0;
      String.append(_:)(v74);
      sub_1000EDA6C();
      sub_1000EDB20();
      sub_1000EDDCC();
      v75._countAndFlagsBits = sub_1000EDDE4();
      String.append(_:)(v75);

      v76._countAndFlagsBits = 0xD00000000000001FLL;
      v76._object = 0x80000001003174E0;
      String.append(_:)(v76);
      v77 = v142;
      v124 = v141;
      TaskLocal.get()();
      v78 = v142;
      v122 = v141;
      v79 = static os_log_type_t.error.getter();

      v80 = Logger.logObject.getter();

      v123 = v79;
      if (sub_1000EDB78())
      {
        sub_1000B7DC8();
        v81 = swift_slowAlloc();
        sub_1000B7DBC();
        swift_slowAlloc();
        sub_1000EDBB0();
        v140._countAndFlagsBits = v82;
        *v81 = 136446466;
        sub_10009F0F8();
        v141 = v83;
        v142 = v84;
        v85 = v80;
        v86._countAndFlagsBits = v122;
        v86._object = v78;
        String.append(_:)(v86);
        sub_10009F134();
        v87 = sub_100080210(v141, v142, &v140._countAndFlagsBits);

        *(v81 + 4) = v87;
        *(v81 + 12) = 2082;
        v88 = sub_100080210(v124, v77, &v140._countAndFlagsBits);

        *(v81 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v85, v123, "%{public}s%{public}s", v81, 0x16u);
        sub_1000ED7C8();
        swift_arrayDestroy();
        sub_1000EDB90();
        sub_1000B7D68();

        v33 = v132;
        sub_1000B7D68();
      }

      else
      {
      }

      sub_1000EDD8C();
    }

    sub_100080F0C(&v145);
  }

  type metadata accessor for Client(0);
  sub_1000ED008(v33, v127);
  v133 = v50;
  v89 = v128;
  sub_1001ABF2C();
  if (v89)
  {

    v145 = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    sub_1000EDCF0();
    v141 = v92;
    v142 = v91;
    sub_1000EDA6C();
    sub_1000EDB20();
    sub_1000EDDCC();
    v93._countAndFlagsBits = sub_1000EDDE4();
    String.append(_:)(v93);

    v95 = v141;
    v94 = v142;
    TaskLocal.get()();
    v97 = v141;
    v96 = v142;
    v98 = static os_log_type_t.error.getter();

    v99 = Logger.logObject.getter();

    if (os_log_type_enabled(v99, v98))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1000EDBB0();
      sub_1000B7DBC();
      v140._countAndFlagsBits = swift_slowAlloc();
      *a11 = 136446466;
      sub_10009F0F8();
      v141 = v100;
      v142 = v101;
      v102._countAndFlagsBits = v97;
      v102._object = v96;
      String.append(_:)(v102);
      sub_10009F134();
      v103 = v142;
      v104 = sub_100080210(v141, v142, &v140._countAndFlagsBits);

      *(a11 + 4) = v104;
      *(a11 + 12) = 2082;
      sub_100080210(v95, v94, &v140._countAndFlagsBits);
      sub_1000EDD18();

      *(a11 + 14) = v103;
      sub_1000EDD4C(&_mh_execute_header, v105, v106, "%{public}s%{public}s");
      swift_arrayDestroy();
      v33 = v132;
      sub_1000B7D68();

      sub_1000EDB90();
      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v120 = swift_allocError();
    sub_1000EDDAC(v120, v121);

    sub_1000AF25C(v33, &unk_1003D20F0);
LABEL_29:
    swift_task_localValuePop();
  }

  v107 = v90;
  v126 = a11;
  sub_1000EDA6C();
  sub_1000EDB20();
  sub_1000EDDCC();
  v141 = sub_1000EDDE4();
  v142 = v108;
  v109._countAndFlagsBits = 95;
  v109._object = 0xE100000000000000;
  String.append(_:)(v109);
  TaskLocal.get()();
  String.append(_:)(v140);

  v110 = v141;
  v111 = v142;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v113 = result;
    v149 = a19;
    v114 = String._bridgeToObjectiveC()();
    [v113 takeKeepAliveTransaction:v114];

    v115 = type metadata accessor for TaskPriority();
    sub_100081DFC(v125, 1, 1, v115);
    v116 = swift_allocObject();
    v116[2] = 0;
    v116[3] = 0;
    v117 = v126;
    v116[4] = a10;
    v116[5] = v117;
    v118 = v130;
    v116[6] = v107;
    v116[7] = v118;
    v116[8] = v110;
    v116[9] = v111;

    v119 = v107;

    sub_100165CBC();

    sub_1000AF25C(v132, &unk_1003D20F0);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

id sub_1000E4C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v148 = a7;
  v14 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v14 - 8);
  v141 = &v140 - v15;
  v16 = sub_100080FB4(&unk_1003D20F0);
  v17 = __chkstk_darwin(v16 - 8);
  v145 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v144 = &v140 - v20;
  __chkstk_darwin(v19);
  v147 = &v140 - v21;
  v22 = sub_100080FB4(&unk_1003CE2C0);
  __chkstk_darwin(v22 - 8);
  v149 = &v140 - v23;
  v24 = type metadata accessor for PerformPurchaseRequest();
  v25 = __chkstk_darwin(v24);
  v27 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v143 = &v140 - v28;
  v164 = a1;
  v165 = a2;

  swift_task_localValuePush();
  v152 = a9;
  v167 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for SKLogger();
  v30 = sub_10007EDA4(v29, qword_1003F26C8);
  v31 = qword_1003CBE98;

  if (v31 != -1)
  {
    swift_once();
  }

  v154 = qword_1003F2700;
  TaskLocal.get()();
  v33 = v164;
  v32 = v165;
  v34 = static os_log_type_t.default.getter();

  v151 = v30;
  v35 = Logger.logObject.getter();

  v36 = os_log_type_enabled(v35, v34);
  v153 = a8;
  if (v36)
  {
    v37 = a8;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v150 = v27;
    *v162 = v39;
    *v38 = 136446466;
    v164 = 91;
    v165 = 0xE100000000000000;
    v40._countAndFlagsBits = v33;
    v40._object = v32;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 8285;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    v42 = sub_100080210(v164, v165, v162);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    v43 = sub_100080210(v148, v37, v162);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    v27 = v150;
  }

  else
  {
  }

  v44 = [objc_opt_self() currentConnection];
  if (!v44)
  {
    v164 = 0;
    v165 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *v162 = 0xD000000000000021;
    *&v162[8] = 0x8000000100317450;
    v53 = v167;
    swift_beginAccess();
    sub_1000ED370(v53, v27, type metadata accessor for PerformPurchaseRequest);
    sub_1000ED608(v27, type metadata accessor for PerformPurchaseRequest);
    v54._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v54);

    v55 = *v162;
    TaskLocal.get()();
    v56 = *v162;
    v57 = static os_log_type_t.error.getter();

    v58 = Logger.logObject.getter();

    if (os_log_type_enabled(v58, v57))
    {
      v59 = swift_slowAlloc();
      v148 = a11;
      v60 = v59;
      v163 = swift_slowAlloc();
      *v60 = 136446466;
      *v162 = 91;
      *&v162[8] = 0xE100000000000000;
      String.append(_:)(v56);
      v61._countAndFlagsBits = 8285;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      v62 = sub_100080210(*v162, *&v162[8], &v163);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2082;
      v63 = sub_100080210(v55, *(&v55 + 1), &v163);

      *(v60 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v58, v57, "%{public}s%{public}s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v89 = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  v45 = v44;
  v148 = a11;
  v46 = v167;
  swift_beginAccess();
  v142 = v24;
  *&v166 = v24;
  *(&v166 + 1) = &off_100384D58;
  v47 = sub_10009E720(&v164);
  sub_1000ED370(v46, v47, type metadata accessor for PerformPurchaseRequest);
  v150 = v166;
  v48 = v166;
  sub_100086D24(&v164, v166);
  v49 = type metadata accessor for Optional();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v140 - v51;
  sub_10008DC80(&v140 - v51);
  if (sub_100081D0C(v52, 1, v48) == 1)
  {
    (*(v50 + 8))(v52, v49);
    memset(v162, 0, sizeof(v162));
  }

  else
  {
    *&v162[24] = v150;
    v64 = sub_10009E720(v162);
    (*(*(v48 - 8) + 32))(v64, v52, v48);
  }

  sub_100080FB4(&qword_1003D27C0);
  v65 = v149;
  v66 = v142;
  if (!swift_dynamicCast())
  {
    sub_100081DFC(v65, 1, 1, v66);
    sub_1000AF25C(v65, &unk_1003CE2C0);
    *v162 = 0;
    *&v162[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v160 = 0xD00000000000001BLL;
    v161 = 0x8000000100317480;
    v75 = v167;
    swift_beginAccess();
    sub_1000ED370(v75, v27, type metadata accessor for PerformPurchaseRequest);
    sub_1000ED608(v27, type metadata accessor for PerformPurchaseRequest);
    v76._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v76);

    v78 = v160;
    v77 = v161;
    TaskLocal.get()();
    v80 = v160;
    v79 = v161;
    v81 = static os_log_type_t.error.getter();

    v82 = Logger.logObject.getter();

    if (os_log_type_enabled(v82, v81))
    {
      v83 = swift_slowAlloc();
      v167 = v78;
      v84 = v83;
      v155 = swift_slowAlloc();
      *v84 = 136446466;
      v160 = 91;
      v161 = 0xE100000000000000;
      v85._countAndFlagsBits = v80;
      v85._object = v79;
      String.append(_:)(v85);
      v86._countAndFlagsBits = 8285;
      v86._object = 0xE200000000000000;
      String.append(_:)(v86);
      v87 = sub_100080210(v160, v161, &v155);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2082;
      v88 = sub_100080210(v167, v77, &v155);

      *(v84 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v82, v81, "%{public}s%{public}s", v84, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v91 = 3;
    swift_willThrow();

    sub_100080F0C(&v164);
    goto LABEL_37;
  }

  *&v150 = v27;
  sub_100081DFC(v65, 0, 1, v66);
  v67 = v65;
  v68 = v143;
  sub_1000ED4C4(v67, v143, type metadata accessor for PerformPurchaseRequest);
  v69 = v167;
  swift_beginAccess();
  sub_1000ECFA4(v68, v69);
  sub_100080F0C(&v164);
  swift_beginAccess();
  *&v166 = v66;
  *(&v166 + 1) = sub_1000ED5C0(&qword_1003CE2D0, type metadata accessor for PerformPurchaseRequest);
  v70 = sub_10009E720(&v164);
  sub_1000ED370(v69, v70, type metadata accessor for PerformPurchaseRequest);
  v71 = sub_100086D24(&v164, v166);
  v72 = v144;
  sub_1000ED008(v71 + *(v66 + 24), v144);
  v73 = type metadata accessor for ClientOverride(0);
  LODWORD(v69) = sub_100081D0C(v72, 1, v73);
  sub_1000AF25C(v72, &unk_1003D20F0);
  if (v69 == 1)
  {
    sub_100080F0C(&v164);
    v74 = v147;
    sub_100081DFC(v147, 1, 1, v73);
  }

  else
  {
    v90 = [v45 sk_allowClientOverride];
    v74 = v147;
    if (v90)
    {
      sub_1000ED008(v70 + *(v66 + 24), v147);
    }

    else
    {
      v155 = 0;
      v156 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v158 = v155;
      v159 = v156;
      v92._countAndFlagsBits = 0xD00000000000001DLL;
      v92._object = 0x80000001003174C0;
      String.append(_:)(v92);
      v93 = v167;
      swift_beginAccess();
      v94 = v93;
      v95 = v150;
      sub_1000ED370(v94, v150, type metadata accessor for PerformPurchaseRequest);
      sub_1000ED608(v95, type metadata accessor for PerformPurchaseRequest);
      v96._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v96);

      v97._countAndFlagsBits = 0xD00000000000001FLL;
      v97._object = 0x80000001003174E0;
      String.append(_:)(v97);
      v98 = v159;
      v149 = v158;
      TaskLocal.get()();
      v99 = v159;
      v143 = v158;
      v100 = static os_log_type_t.error.getter();

      v101 = Logger.logObject.getter();

      LODWORD(v144) = v100;
      if (os_log_type_enabled(v101, v100))
      {
        v102 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v157._countAndFlagsBits = v140;
        *v102 = 136446466;
        v158 = 91;
        v159 = 0xE100000000000000;
        v103 = v101;
        v104._countAndFlagsBits = v143;
        v104._object = v99;
        String.append(_:)(v104);
        v105._countAndFlagsBits = 8285;
        v105._object = 0xE200000000000000;
        String.append(_:)(v105);
        v106 = sub_100080210(v158, v159, &v157._countAndFlagsBits);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2082;
        v107 = sub_100080210(v149, v98, &v157._countAndFlagsBits);

        *(v102 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v103, v144, "%{public}s%{public}s", v102, 0x16u);
        swift_arrayDestroy();

        v74 = v147;
      }

      else
      {
      }

      sub_100081DFC(v74, 1, 1, v73);
    }

    sub_100080F0C(&v164);
  }

  type metadata accessor for Client(0);
  sub_1000ED008(v74, v145);
  v149 = v45;
  v108 = v146;
  sub_1001ABF2C();
  if (v108)
  {

    v164 = 0;
    v165 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v158 = 0xD00000000000001CLL;
    v159 = 0x80000001003174A0;
    v110 = v167;
    swift_beginAccess();
    v111 = v110;
    v112 = v150;
    sub_1000ED370(v111, v150, type metadata accessor for PerformPurchaseRequest);
    sub_1000ED608(v112, type metadata accessor for PerformPurchaseRequest);
    v113._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v113);

    v115 = v158;
    v114 = v159;
    TaskLocal.get()();
    v117 = v158;
    v116 = v159;
    v118 = static os_log_type_t.error.getter();

    v119 = Logger.logObject.getter();

    if (os_log_type_enabled(v119, v118))
    {
      v120 = swift_slowAlloc();
      v157._countAndFlagsBits = swift_slowAlloc();
      *v120 = 136446466;
      v158 = 91;
      v159 = 0xE100000000000000;
      v121._countAndFlagsBits = v117;
      v121._object = v116;
      String.append(_:)(v121);
      v122._countAndFlagsBits = 8285;
      v122._object = 0xE200000000000000;
      String.append(_:)(v122);
      v123 = sub_100080210(v158, v159, &v157._countAndFlagsBits);

      *(v120 + 4) = v123;
      *(v120 + 12) = 2082;
      v124 = sub_100080210(v115, v114, &v157._countAndFlagsBits);

      *(v120 + 14) = v124;
      _os_log_impl(&_mh_execute_header, v119, v118, "%{public}s%{public}s", v120, 0x16u);
      swift_arrayDestroy();

      v74 = v147;
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v139 = 1;
    swift_willThrow();

    sub_1000AF25C(v74, &unk_1003D20F0);
LABEL_37:
    swift_task_localValuePop();

    goto LABEL_38;
  }

  v125 = v109;
  v126 = v167;
  swift_beginAccess();
  v127 = v126;
  v128 = v150;
  sub_1000ED370(v127, v150, type metadata accessor for PerformPurchaseRequest);
  sub_1000ED608(v128, type metadata accessor for PerformPurchaseRequest);
  v158 = _typeName(_:qualified:)();
  v159 = v129;
  v130._countAndFlagsBits = 95;
  v130._object = 0xE100000000000000;
  String.append(_:)(v130);
  TaskLocal.get()();
  String.append(_:)(v157);

  v131 = v158;
  v132 = v159;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v134 = result;
    v135 = String._bridgeToObjectiveC()();
    [v134 takeKeepAliveTransaction:v135];

    v136 = type metadata accessor for TaskPriority();
    sub_100081DFC(v141, 1, 1, v136);
    v137 = swift_allocObject();
    v137[2] = 0;
    v137[3] = 0;
    v137[4] = a10;
    v137[5] = v148;
    v137[6] = v125;
    v137[7] = v152;
    v137[8] = v131;
    v137[9] = v132;

    v138 = v125;

    sub_100165CBC();

    sub_1000AF25C(v74, &unk_1003D20F0);
    swift_task_localValuePop();

LABEL_38:
  }

  __break(1u);
  return result;
}

void sub_1000E6104(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000ED6A0;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = &unk_1002F0430;
  v8[4] = 0;
  v8[5] = sub_1000ED6AC;
  v8[6] = v7;
  type metadata accessor for ClientTypeRequest();
  v9 = swift_allocBox();
  v11 = v10;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EA120(v11);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v12 = qword_1003F2700;
  v14 = *v11;
  v13 = v11[1];

  sub_1000E3F90(v14, v13, 0xD000000000000029, 0x80000001003173B0, 150, v12, 0xD00000000000001BLL, 0x8000000100317390, v9, &unk_1002F0488, v8, type metadata accessor for ClientTypeRequest, &unk_1003CE300, type metadata accessor for ClientTypeRequest, &unk_1002EFDC0, type metadata accessor for ClientTypeRequest, type metadata accessor for ClientTypeRequest, &unk_100387358, &unk_1002F0550);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.clientTypeRequest(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  sub_1000EDD24();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = &unk_1002F0430;
  v6[4] = 0;
  v6[5] = sub_1000E670C;
  v6[6] = v5;
  type metadata accessor for ClientTypeRequest();
  swift_allocBox();
  sub_1000EDD6C();
  v7 = v1;
  sub_1000EDD18();

  sub_1000EDD04();
  sub_1000EA120(v8);
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v16 = sub_1000EDABC();
    v3(v16);

    sub_1000EDBF0();
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v9 = sub_1000EDADC();
    sub_1000E3F90(v9, v10, v11, v12, v13, v14, 0xD00000000000001BLL, v15, v4, &unk_1002F0440, v6, type metadata accessor for ClientTypeRequest, &unk_1003CE300, type metadata accessor for ClientTypeRequest, &unk_1002EFDC0, type metadata accessor for ClientTypeRequest, type metadata accessor for ClientTypeRequest, &unk_100387358, &unk_1002F0550);

    sub_1000EDBF0();
  }
}

uint64_t sub_1000E66D8()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000E6740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000E6764, 0, 0);
}

uint64_t sub_1000E6764()
{
  sub_10008BE9C();
  sub_10012ADF0(*(v0 + 16));
  sub_100098AA4();

  return v1();
}

void sub_1000E67D8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000EBF9C;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = &unk_1002F0448;
  v8[4] = 0;
  v8[5] = sub_1000ED6AC;
  v8[6] = v7;
  type metadata accessor for ProcessPurchaseResultRequest();
  v9 = swift_allocBox();
  v11 = v10;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EA494(v11);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v12 = qword_1003F2700;
  v14 = *v11;
  v13 = v11[1];

  sub_1000E3F90(v14, v13, 0xD000000000000029, 0x80000001003173B0, 150, v12, 0xD00000000000001FLL, 0x80000001003173E0, v9, &unk_1002F0480, v8, type metadata accessor for ProcessPurchaseResultRequest, &qword_1003CE2E8, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5E0C, type metadata accessor for ProcessPurchaseResultRequest, type metadata accessor for ProcessPurchaseResultRequest, &unk_100387330, &unk_1002F0530);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.processPurchaseResult(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  sub_1000EDD24();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = &unk_1002F0448;
  v6[4] = 0;
  v6[5] = sub_1000ED6AC;
  v6[6] = v5;
  type metadata accessor for ProcessPurchaseResultRequest();
  swift_allocBox();
  sub_1000EDD6C();
  v7 = v1;
  sub_1000EDD18();

  sub_1000EDD04();
  sub_1000EA494(v8);
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v16 = sub_1000EDABC();
    v3(v16);

    sub_1000EDBF0();
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v9 = sub_1000EDADC();
    sub_1000E3F90(v9, v10, v11, v12, v13, v14, 0xD00000000000001FLL, v15, v4, &unk_1002F0458, v6, type metadata accessor for ProcessPurchaseResultRequest, &qword_1003CE2E8, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5E0C, type metadata accessor for ProcessPurchaseResultRequest, type metadata accessor for ProcessPurchaseResultRequest, &unk_100387330, &unk_1002F0530);

    sub_1000EDBF0();
  }
}

uint64_t sub_1000E6D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000E6E10;

  return sub_100128CD8(a2);
}

uint64_t sub_1000E6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000B0780();
  sub_1000B02BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10008C070();
  v21 = v20;
  sub_1000AFE64();
  *v22 = v21;
  v23 = *v11;
  sub_100098AB4();
  *v24 = v23;

  if (v10)
  {
    sub_1000B0604();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v21[4] = v13;
    v21[5] = v15;
    v21[6] = v17;
    v21[7] = v19;
    sub_100098AD0();
    sub_1000B0604();

    return _swift_task_switch(v34, v35, v36);
  }
}