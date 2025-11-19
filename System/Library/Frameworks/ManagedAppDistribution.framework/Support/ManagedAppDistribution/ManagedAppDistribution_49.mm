uint64_t sub_1005F204C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0x2064696C61766E49;
  }

  _StringGuts.grow(_:)(18);

  strcpy(v9, "Error code: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);
  return v9[0];
}

uint64_t sub_1005F2140()
{
  type metadata accessor for AppLicenseDelivery();
  swift_allocObject();
  result = sub_1005F2358();
  qword_100789500 = result;
  return result;
}

unint64_t sub_1005F217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1001F0C48(&unk_100784480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
  }

  else
  {
    sub_1001F0C48(&unk_100784480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x80000001006CE570;
  }

  v9 = sub_100528684(inited);
  swift_setDeallocating();
  sub_1000032A8(v6, &unk_10077F9B0);
  return v9;
}

uint64_t sub_1005F22B8(uint64_t a1)
{
  v2 = sub_1005F54A8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1005F22F4(uint64_t a1)
{
  v2 = sub_1005F54A8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1005F2330()
{
  if (v0[2])
  {
    return *v0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1005F2358()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = xrPnDyPw();
  if (v5 != noErr.getter())
  {
    v14 = v2;
    v13 = v5;
    static Logger.ald.getter();
    v15 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      v11 = sub_100625FA0();
      *(v9 + 4) = v11;
      *v10 = v11;
      *(v9 + 12) = 1026;
      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Unable to initialize ALD: %{public}d", v9, 0x12u);
      sub_1000032A8(v10, &qword_10077F920);
    }

    (*(v14 + 8))(v15, v1);
    abort();
  }

  return v0;
}

uint64_t sub_1005F2518(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000020, 0x80000001006CE4B0, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000020;
    v11[2] = 0x80000001006CE4B0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F2718(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000022, 0x80000001006CE480, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000022;
    v11[2] = 0x80000001006CE480;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F2918(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD00000000000001ALL, 0x80000001006CE430, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD00000000000001ALL;
    v11[2] = 0x80000001006CE430;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F2B18(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000039, 0x80000001006CE3F0, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000039;
    v11[2] = 0x80000001006CE3F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F2D18(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000022, 0x80000001006CE450, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000022;
    v11[2] = 0x80000001006CE450;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F2F18(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD00000000000001ALL, 0x80000001006CE4E0, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD00000000000001ALL;
    v11[2] = 0x80000001006CE4E0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F3118(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000014, 0x80000001006CE530, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000014;
    v11[2] = 0x80000001006CE530;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F3318(unsigned int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.ald.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 67240450;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2082;
      *(v9 + 10) = sub_1002346CC(0xD000000000000017, 0x80000001006CE550, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Got ALD error: %{public}d: %{public}s", v9, 0x12u);
      sub_10000710C(v10);
    }

    (*(v3 + 8))(v6, v2);
    sub_1005F4B9C();
    swift_allocError();
    *v11 = a1;
    v11[1] = 0xD000000000000017;
    v11[2] = 0x80000001006CE550;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F3518(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = QSIlMWCo();
  if (v10 != noErr.getter())
  {
    static Logger.ald.getter();
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = v3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v27 = a2;
      v17 = v16;
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 1026;
      *(v15 + 14) = v10;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Unable to dispose of license response: %{public}d", v15, 0x12u);
      sub_1000032A8(v17, &qword_10077F920);
      a2 = v27;

      v3 = v28;
    }

    (*(v4 + 8))(v9, v3);
  }

  v19 = cdHFeFDJ();
  result = noErr.getter();
  if (v19 != result)
  {
    static Logger.ald.getter();
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 1026;
      *(v24 + 14) = v19;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Unable to destroy context: %{public}d", v24, 0x12u);
      sub_1000032A8(v25, &qword_10077F920);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1005F384C(uint64_t *a1, unsigned int a2, unint64_t *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {

      sub_100007158(v6, v5);
      *&v81 = v6;
      *(&v81 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1006B8570;
      sub_100007158(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v15 = v81;
      v16 = *(v81 + 16);
      v17 = *(v81 + 24);
      result = __DataStorage._bytes.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_93;
      }

      v19 = result;
      v20 = __DataStorage._offset.getter();
      v21 = v16 - v20;
      if (__OFSUB__(v16, v20))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v22 = __OFSUB__(v17, v16);
      v23 = v17 - v16;
      if (v22)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v80 = a1;
      v24 = __DataStorage._length.getter();
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      v26 = *a3;
      if ((*a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_84;
      }

      if (!v26)
      {
        LODWORD(v42) = 0;
        v28 = &_swiftEmptyArrayStorage[4];
LABEL_53:
        v82 = v42;
        v83 = v28;
        v84 = (v21 + v19);
        v85 = v25;
        v58 = FbLnABIk();
        sub_1005F3318(v58);

        v59 = *(&v15 + 1) | 0x8000000000000000;
        v60 = v80;
        *v80 = v15;
LABEL_73:
        v60[1] = v59;
        return result;
      }

      v27 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v27 + 16) = v26;
      v28 = (v27 + 32);
      if (v26 > 7)
      {
        v29 = v26 & 0x7FFFFFFFFFFFFFF8;
        v30 = v28 + (v26 & 0x7FFFFFFFFFFFFFF8);
        v54 = vdupq_n_s32(a2);
        v55 = (v27 + 48);
        v56 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v55[-1] = v54;
          *v55 = v54;
          v55 += 2;
          v56 -= 8;
        }

        while (v56);
        if (v26 == v29)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v29 = 0;
        v30 = (v27 + 32);
      }

      v57 = v26 - v29;
      do
      {
        *v30++ = a2;
        --v57;
      }

      while (v57);
LABEL_51:
      v42 = *a3;
      if ((*a3 & 0x8000000000000000) != 0)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (HIDWORD(v42))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      goto LABEL_53;
    }

    *(&v81 + 7) = 0;
    *&v81 = 0;
    v33 = *a3;
    if ((*a3 & 0x8000000000000000) != 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v33)
    {
      LODWORD(v41) = 0;
      v36 = &_swiftEmptyArrayStorage[4];
LABEL_45:
      v82 = v41;
      v83 = v36;
      v84 = &v81;
      v85 = 0;
      v53 = FbLnABIk();
      sub_1005F3318(v53);
    }

    v35 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v35 + 16) = v33;
    v36 = (v35 + 32);
    if (v33 > 7)
    {
      v37 = v33 & 0x7FFFFFFFFFFFFFF8;
      v38 = v36 + (v33 & 0x7FFFFFFFFFFFFFF8);
      v49 = vdupq_n_s32(a2);
      v50 = (v35 + 48);
      v51 = v33 & 0x7FFFFFFFFFFFFFF8;
      v39 = a3;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (v33 == v37)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v37 = 0;
      v38 = (v35 + 32);
      v39 = a3;
    }

    v52 = v33 - v37;
    do
    {
      *v38++ = a2;
      --v52;
    }

    while (v52);
LABEL_43:
    v41 = *v39;
    if ((*v39 & 0x8000000000000000) != 0)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (HIDWORD(v41))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    goto LABEL_45;
  }

  if (!v7)
  {
    sub_100007158(v6, v5);
    *&v81 = v6;
    WORD4(v81) = v5;
    BYTE10(v81) = BYTE2(v5);
    BYTE11(v81) = BYTE3(v5);
    BYTE12(v81) = BYTE4(v5);
    BYTE13(v81) = BYTE5(v5);
    BYTE14(v81) = BYTE6(v5);
    v8 = *a3;
    if ((*a3 & 0x8000000000000000) == 0)
    {
      if (!v8)
      {
        LODWORD(v40) = 0;
        v10 = &_swiftEmptyArrayStorage[4];
        v11 = a1;
LABEL_37:
        v82 = v40;
        v83 = v10;
        v84 = &v81;
        v85 = BYTE6(v5);
        v47 = FbLnABIk();
        sub_1005F3318(v47);

        v48 = DWORD2(v81) | ((WORD6(v81) | (BYTE14(v81) << 16)) << 32);
        *v11 = v81;
        v11[1] = v48;
        return result;
      }

      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
      v10 = (v9 + 32);
      v11 = a1;
      if (v8 > 7)
      {
        v12 = v8 & 0x7FFFFFFFFFFFFFF8;
        v13 = v10 + (v8 & 0x7FFFFFFFFFFFFFF8);
        v43 = vdupq_n_s32(a2);
        v44 = (v9 + 48);
        v45 = v8 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v44[-1] = v43;
          *v44 = v43;
          v44 += 2;
          v45 -= 8;
        }

        while (v45);
        if (v8 == v12)
        {
LABEL_35:
          v40 = *a3;
          if ((*a3 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v40))
            {
              goto LABEL_37;
            }

            goto LABEL_82;
          }

          goto LABEL_78;
        }
      }

      else
      {
        v12 = 0;
        v13 = (v9 + 32);
      }

      v46 = v8 - v12;
      do
      {
        *v13++ = a2;
        --v46;
      }

      while (v46);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_75;
  }

  v31 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100007158(v6, v5);
  *a1 = xmmword_1006B8570;
  sub_100007158(0, 0xC000000000000000);
  v32 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v32 < v6)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
    {
LABEL_91:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v61 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v31 = v61;
  }

  v62 = v32 - v6;
  if (v32 < v6)
  {
    goto LABEL_77;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v63 = result;
    v64 = __DataStorage._offset.getter();
    v65 = v6 - v64;
    if (__OFSUB__(v6, v64))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v66 = __DataStorage._length.getter();
    if (v66 < v62)
    {
      v62 = v66;
    }

    v67 = *a3;
    if ((*a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_85;
    }

    if (!v67)
    {
      LODWORD(v72) = 0;
      v69 = &_swiftEmptyArrayStorage[4];
LABEL_72:
      v82 = v72;
      v83 = v69;
      v84 = (v65 + v63);
      v85 = v62;
      v77 = FbLnABIk();
      sub_1005F3318(v77);

      v59 = v31 | 0x4000000000000000;
      v60 = a1;
      *a1 = v6;
      goto LABEL_73;
    }

    v68 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v68 + 16) = v67;
    v69 = (v68 + 32);
    if (v67 > 7)
    {
      v70 = v67 & 0x7FFFFFFFFFFFFFF8;
      v71 = v69 + (v67 & 0x7FFFFFFFFFFFFFF8);
      v73 = vdupq_n_s32(a2);
      v74 = (v68 + 48);
      v75 = v67 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v74[-1] = v73;
        *v74 = v73;
        v74 += 2;
        v75 -= 8;
      }

      while (v75);
      if (v67 == v70)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v70 = 0;
      v71 = (v68 + 32);
    }

    v76 = v67 - v70;
    do
    {
      *v71++ = a2;
      --v76;
    }

    while (v76);
LABEL_70:
    v72 = *a3;
    if ((*a3 & 0x8000000000000000) != 0)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (HIDWORD(v72))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_72;
  }

LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_1005F3F28(uint64_t a1)
{
  v9 = sub_1001F0C48(&qword_100782968);
  v10 = sub_100213FA0(&qword_100782970, &qword_100782968);
  v8[0] = a1;
  v2 = sub_100006D8C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100630558(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000710C(v8);
  return v5;
}

uint64_t sub_1005F4004(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = a3;
  sub_10032F9EC(a3, a4);
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_13;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v10 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    goto LABEL_13;
  }

  if (__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = HIDWORD(v10) - v10;
LABEL_10:
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(v10))
  {
    __break(1u);
  }

LABEL_13:
  sub_10032F9EC(a5, a6);
  v16 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_25;
    }

    v18 = *(a5 + 16);
    v17 = *(a5 + 24);
    v19 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v16)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = HIDWORD(a5) - a5;
LABEL_22:
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v19))
  {
    __break(1u);
  }

LABEL_25:
  v20 = fyzGzQHg();
  result = sub_1005F2518(v20);
  if (v6)
  {
    return result;
  }

  v22 = *(a1 + 16);
  v23 = HIDWORD(v22);
  if ((a2 & 1) == 0)
  {
    if (!v23)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100362674(0, v22, 0, a1);
      }

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);
  }

  if (v23)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100362674(0, v22, 0, a1);
  }

LABEL_34:
  v24 = niaOacKH();

  sub_1005F2718(v24);
  v25 = type metadata accessor for MarketplaceKitError();
  sub_1003040A8();
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, enum case for MarketplaceKitError.invalidLicense(_:), v25);
  swift_willThrow();
  qENIaLkr();
  return qENIaLkr();
}

char *sub_1005F43D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v74 = a8;
  v19 = type metadata accessor for Logger();
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v72 = v71 - v24;
  __chkstk_darwin(v23);
  v73 = v71 - v25;
  v80 = a7;
  if (!a7)
  {
    v26 = sub_10032F9EC(a1, a2);
    v28 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      goto LABEL_12;
    }

    if (!v28)
    {
      goto LABEL_41;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v32 = HIDWORD(a1) - a1;
      goto LABEL_38;
    }

    goto LABEL_67;
  }

  while (1)
  {
    sub_10020ABFC(a5, a6);
    v26 = sub_1005F1ED0(a5, a6);
    v82 = 0;
    a1 = v80;
    v27 = a6 >> 62;
    if ((a6 >> 62) <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      goto LABEL_20;
    }

    v29 = *(a5 + 16);
    v28 = *(a5 + 24);
    a4 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_12:
    if (v28 == 2)
    {
      v31 = *(a1 + 16);
      v30 = *(a1 + 24);
      v32 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        __break(1u);
LABEL_16:
        if (!__OFSUB__(HIDWORD(a5), a5))
        {
          a4 = HIDWORD(a5) - a5;
LABEL_18:
          if ((a4 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (!HIDWORD(a4))
          {
            goto LABEL_20;
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
      }

LABEL_38:
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (HIDWORD(v32))
      {
        __break(1u);
      }
    }

LABEL_41:
    sub_10032F9EC(a3, a4);
    v57 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v57 != 2)
      {
        goto LABEL_53;
      }

      v59 = *(a3 + 16);
      v58 = *(a3 + 24);
      v60 = v58 - v59;
      if (!__OFSUB__(v58, v59))
      {
        goto LABEL_50;
      }

      __break(1u);
    }

    else if (!v57)
    {
      goto LABEL_53;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_68;
    }

    v60 = HIDWORD(a3) - a3;
LABEL_50:
    if ((v60 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    if (HIDWORD(v60))
    {
      __break(1u);
    }

LABEL_53:
    v61 = fyzGzQHg();
    sub_1005F2918(v61);
    if (v11)
    {
      return v22;
    }

    v62 = niaOacKH();
    sub_1005F2B18(v62);
    v11 = 0;
  }

  if (v27)
  {
    goto LABEL_16;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v26 + 2), 0, v26);
  }

  v33 = jYWQDEvI();

  sub_1005F2D18(v33);
  if (!v11)
  {
    if (v82)
    {
      v71[1] = 0;
      v34 = sub_100396924(*(v82 + 16), *(v82 + 20), *(v82 + 24), v74, a9);
      if (v34)
      {
        v22 = v34;
        v35 = v73;
        static Logger.ald.getter();
        v36 = a10;

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v81 = v41;
          *v39 = 138412546;
          *(v39 + 4) = v36;
          *v40 = v36;
          *(v39 + 12) = 2082;
          v77 = *(v22 + 2);
          v42 = v77;
          v43 = v36;
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v44;
          v45._countAndFlagsBits = 32;
          v45._object = 0xE100000000000000;
          String.append(_:)(v45);
          v46._countAndFlagsBits = 7955819;
          v46._object = 0xE300000000000000;
          String.append(_:)(v46);
          if (v42 == 1)
          {
            v47 = 0;
          }

          else
          {
            v47 = 115;
          }

          if (v42 == 1)
          {
            v48 = 0xE000000000000000;
          }

          else
          {
            v48 = 0xE100000000000000;
          }

          v49 = v48;
          String.append(_:)(*&v47);

          v50 = sub_1002346CC(v78, v79, &v81);

          *(v39 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Successfully fetched %{public}s", v39, 0x16u);
          sub_1000032A8(v40, &qword_10077F920);

          sub_10000710C(v41);

          (*(v75 + 8))(v73, v76);
        }

        else
        {

          (*(v75 + 8))(v35, v76);
        }

        sub_1005F3518(&v82, v36);
        return v22;
      }

      v63 = v72;
      static Logger.ald.getter();
      v51 = a10;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v22 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v51;
        *v66 = v51;
        v67 = v51;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%@] No license parsed from response", v22, 0xCu);
        sub_1000032A8(v66, &qword_10077F920);
      }

      (*(v75 + 8))(v63, v76);
    }

    else
    {
      static Logger.ald.getter();
      v51 = a10;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&_mh_execute_header, v52, v53, "[%@] No license provided from response", v54, 0xCu);
        sub_1000032A8(v55, &qword_10077F920);
      }

      (*(v75 + 8))(v22, v76);
    }

    v68 = type metadata accessor for MarketplaceKitError();
    sub_1003040A8();
    swift_allocError();
    (*(*(v68 - 8) + 104))(v69, enum case for MarketplaceKitError.invalidLicense(_:), v68);
    swift_willThrow();
    sub_1005F3518(&v82, v51);
  }

  return v22;
}

unint64_t sub_1005F4B9C()
{
  result = qword_1007895A0;
  if (!qword_1007895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007895A0);
  }

  return result;
}

uint64_t sub_1005F4BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_10020ABFC(v8, v7);
  v9 = sub_1005F1ED0(v8, v7);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  sub_10020ABFC(v10, v11);
  v12 = sub_1005F1ED0(v10, v11);
  v13 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
LABEL_10:
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v16))
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_35;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    v16 = HIDWORD(v8) - v8;
    goto LABEL_10;
  }

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_12:
  v17 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    v10 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v17)
  {
    goto LABEL_24;
  }

  if (__OFSUB__(HIDWORD(v10), v10))
  {
    goto LABEL_37;
  }

  v10 = HIDWORD(v10) - v10;
LABEL_21:
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v10))
  {
    __break(1u);
  }

LABEL_24:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v9 + 2), 0, v9);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v12 + 2), 0, v12);
  }

  v20 = CWeMQvFE();

  swift_bridgeObjectRelease_n();
  result = v30;
  if (!v30)
  {
    static Logger.ald.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      v26 = sub_100625FA0();
      *(v24 + 4) = v26;
      *v25 = v26;
      *(v24 + 12) = 1026;
      *(v24 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Failed to instantiate ALD decoder session: %{public}d", v24, 0x12u);
      sub_1000032A8(v25, &qword_10077F920);
    }

    (*(v29 + 8))(v6, v4);
    sub_1005F4B9C();
    swift_allocError();
    v27[1] = 0;
    v27[2] = 0;
    *v27 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1005F4F84(unsigned int a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v20 = 0xD000000000000021;
    v21 = 0x80000001006CE500;
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    String.append(_:)(v11);
    v13 = v20;
    v12 = v21;
    static Logger.ald.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = v6;
      v17 = v16;
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 67240450;
      *(v17 + 4) = a1;
      *(v17 + 8) = 2082;
      *(v17 + 10) = sub_1002346CC(v13, v12, &v20);
      _os_log_impl(&_mh_execute_header, v14, v15, "Got ALD error: %{public}d: %{public}s", v17, 0x12u);
      sub_10000710C(v18);

      (*(v7 + 8))(v10, v22);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_1005F4B9C();
    swift_allocError();
    *v19 = a1;
    v19[1] = v13;
    v19[2] = v12;
    return swift_willThrow();
  }

  return result;
}

__n128 sub_1005F51E0@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10020ABFC(a1, a2);
  v7 = sub_1005F1ED0(a1, a2);
  v8 = a2 >> 62;
  memset(v16, 0, sizeof(v16));
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_19;
    }

    v11 = HIDWORD(a1) - a1;
LABEL_10:
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v11))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_12:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v7 + 2), 0, v7);
  }

  v12 = TBQFRWlW();

  sub_1005F2F18(v12);
  if (v3)
  {
    v13 = type metadata accessor for MarketplaceKitError();
    sub_1003040A8();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for MarketplaceKitError.invalidLicense(_:), v13);
    swift_willThrow();
  }

  else
  {
    result = *&v16[8];
    *a3 = *v16;
    *(a3 + 8) = *&v16[8];
    *(a3 + 24) = *&v16[24];
  }

  return result;
}

uint64_t sub_1005F53B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1005F5404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1005F545C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1005F5474(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1005F54A8()
{
  result = qword_1007895A8;
  if (!qword_1007895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007895A8);
  }

  return result;
}

uint64_t *sub_1005F54FC(uint64_t *result, uint64_t a2, char a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_44;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_10;
  }

  LODWORD(v6) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = v6;
LABEL_10:
  if (v6 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v6 + 0x7FFF;
  }

  v18 = v10 >> 15;
  if ((v6 + 0x7FFF) > 0xFFFE)
  {
    if (v6 >= 0x8000)
    {
      if (v5 == 2)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

LABEL_44:
    __break(1u);
    return result;
  }

  if (v5 == 2)
  {
    v13 = *(v3 + 16);
    v12 = *(v3 + 24);
    v9 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v9)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v5 != 1)
  {
LABEL_27:
    v11 = BYTE6(v4);
    goto LABEL_28;
  }

  LODWORD(v11) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v11 = v11;
LABEL_28:
  if (v11 < 1 || (a3 & 1) == 0)
  {
    goto LABEL_44;
  }

  v18 = 1;
  if (v5 == 2)
  {
LABEL_31:
    v16 = v3 + 16;
    v14 = *(v3 + 16);
    v15 = *(v16 + 8);
    v9 = __OFSUB__(v15, v14);
    v3 = v15 - v14;
    if (v9)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_32:
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v3))
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_20:
  if (v5 == 1)
  {
    v9 = __OFSUB__(HIDWORD(v3), v3);
    LODWORD(v3) = HIDWORD(v3) - v3;
    if (v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v3 = v3;
    goto LABEL_32;
  }

  LODWORD(v3) = BYTE6(v4);
LABEL_34:
  if (v3 >= 0x8000)
  {
    v17 = 0x8000;
  }

  else
  {
    v17 = v3;
  }

  return sub_1005F384C(result, v17, &v18);
}

uint64_t sub_1005F5654(uint64_t a1)
{
  v9 = sub_1001F0C48(&qword_10077F798);
  v10 = sub_100213FA0(&qword_1007895B0, &qword_10077F798);
  v8[0] = a1;
  v2 = sub_100006D8C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100630558(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000710C(v8);
  return v5;
}

uint64_t sub_1005F5734()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = [result effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed];

    if (v3 == 2)
    {
      return 1;
    }

    result = [v0 sharedConnection];
    if (result)
    {
      v4 = result;
      v5 = [result effectiveBoolValueForSetting:MCFeatureUIAppInstallationAllowed];

      return v5 == 2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1005F5804()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = [result effectiveValueForSetting:MCFeatureMaximumAppsRating];

    if (v6)
    {
      v7 = [v6 integerValue];

      v8 = v7;
    }

    else
    {
      v8 = 0;
      v7 = 2000;
    }

    static Logger.general.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v6 == 0;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v17[1] = v8;
      v18 = v11;
      sub_1001F0C48(&qword_1007895B8);
      v14 = String.init<A>(describing:)();
      v16 = sub_1002346CC(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Reading age rating from MCProfileConnection... Value: %s", v12, 0xCu);
      sub_10000710C(v13);
    }

    (*(v1 + 8))(v3, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1005F5A5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005F5B34()
{
  String.hash(into:)();
}

Swift::Int sub_1005F5BF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005F5CCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005F5EA8(*a1);
  *a2 = result;
  return result;
}

void sub_1005F5CFC(uint64_t *a1@<X8>)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7A69726F68747541;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x6567412D72657355;
  if (*v1 != 2)
  {
    v5 = 0x65676E6152;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x2D746E65746E6F43;
    v2 = 0xEC00000065707954;
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

unint64_t sub_1005F5E54()
{
  result = qword_1007895C0;
  if (!qword_1007895C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007895C0);
  }

  return result;
}

unint64_t sub_1005F5EA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B388, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005F5EF4()
{
  result = qword_1007895C8[0];
  if (!qword_1007895C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1007895C8);
  }

  return result;
}

void sub_1005F5F48(void *a1)
{
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    return;
  }

  v3 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v3))
  {
    return;
  }

  String.init(cString:)();
  v4 = xpc_dictionary_get_dictionary(a1, "UserInfo");
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = xpc_get_type(v4);
  if (v5 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = [objc_opt_self() defaultCenter];
    v11 = String._bridgeToObjectiveC()();

    [v6 postNotificationName:v11 object:0];

    return;
  }

  if (_CFXPCCreateCFObjectFromXPCObject() && (sub_1001F0C48(&qword_100780DF0), swift_dynamicCast()))
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() defaultCenter];
  v9 = String._bridgeToObjectiveC()();

  if (v7)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v8 postNotificationName:v9 object:0 userInfo:v10.super.isa];
  swift_unknownObjectRelease();
}

void sub_1005F6174(void *a1)
{
  type = xpc_get_type(a1);
  if (type == XPC_TYPE_DICTIONARY.getter())
  {
    v3 = XPC_EVENT_KEY_NAME.getter();
    if (xpc_dictionary_get_string(a1, v3))
    {
      String.init(cString:)();
      v4 = [objc_opt_self() defaultCenter];
      v5 = String._bridgeToObjectiveC()();

      [v4 postNotificationName:v5 object:0];
    }
  }
}

uint64_t sub_1005F62E8()
{

  sub_10027070C(*(v0 + 48));

  return v0;
}

uint64_t sub_1005F6318()
{
  sub_1005F62E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1005F6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_1001F0C48(&unk_100780380);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  swift_getObjectType();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005F649C, v8, v7);
}

uint64_t sub_1005F649C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v16 = v0[4];
  v17 = v0[3];
  v7 = v0[2];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v18 = *(v4 + 8);
  v18(v2, v6);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v6);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v16;
  (*(v4 + 32))(v11 + v9, v2, v6);
  v12 = (v11 + v10);
  *v12 = v7;
  v12[1] = v16;
  *(v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)) = v17;
  swift_unknownObjectRetain_n();

  v13 = sub_100494DB4(0, 0, v5, &unk_1006A1590, v11);
  v18(v1, v6);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1005F66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_1001F0C48(&unk_100780380);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  swift_getObjectType();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005F67FC, v8, v7);
}

uint64_t sub_1005F67FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v16 = v0[4];
  v17 = v0[3];
  v7 = v0[2];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v18 = *(v4 + 8);
  v18(v2, v6);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v6);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v16;
  (*(v4 + 32))(v11 + v9, v2, v6);
  v12 = (v11 + v10);
  *v12 = v7;
  v12[1] = v16;
  *(v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)) = v17;
  swift_unknownObjectRetain_n();

  v13 = sub_100494DB4(0, 0, v5, &unk_1006B8870, v11);
  v18(v1, v6);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1005F6A24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100214EFC;

  return sub_100261A70(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1005F6B68()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1005F6C58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  v13 = IXCreateUserPresentableError();

  if (!v13)
  {
    __break(1u);
  }

  v14 = _convertErrorToNSError(_:)();
  v40 = 0;
  v15 = [v3 cancelForReason:v14 client:28 error:&v40];

  if (v15)
  {
    v16 = v40;
  }

  else
  {
    v39 = v10;
    v17 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.install.getter();
    v18 = v3;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = v9;
      v22 = v21;
      v37 = swift_slowAlloc();
      v40 = v37;
      *v22 = 136315394;
      v23 = [v18 uniqueIdentifier];
      v36 = v20;
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1005F85EC(&qword_100789F60, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v6 + 8))(v8, v5);
      v28 = sub_1002346CC(v25, v27, &v40);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      __chkstk_darwin(ErrorValue);
      (*(v31 + 16))(&v35[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v32 = String.init<A>(describing:)();
      v34 = sub_1002346CC(v32, v33, &v40);

      *(v22 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v19, v36, "An error occurred while canceling coordinator '%s': %s", v22, 0x16u);
      swift_arrayDestroy();

      (*(v39 + 8))(v12, v38);
    }

    else
    {

      (*(v39 + 8))(v12, v9);
    }
  }
}

uint64_t sub_1005F7114()
{
  *(v1 + 32) = v0;

  return _swift_task_switch(sub_1005F71A4, 0, 0);
}

uint64_t sub_1005F71A4()
{
  *(v0 + 16) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = *(v0 + 32);
  if (![v2 hasAppAssetPromise])
  {

    goto LABEL_7;
  }

  *(v0 + 24) = 0;
  v4 = [v2 appAssetPromiseWithError:v0 + 24];
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v4)
  {
    v7 = v4;
    v8 = v5;

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
LABEL_8:
      v10 = *(v0 + 8);

      return v10(v9);
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v12 = v5;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

void sub_1005F735C()
{
  v1 = objc_allocWithZone(IXPromisedOutOfBandTransfer);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithName:v2 client:28 diskSpaceNeeded:0];

  if (v3)
  {
    [v3 setPercentComplete:1.0];
    [v3 setComplete:1];
    v6 = 0;
    if ([v0 setPreparationPromise:v3 withError:&v6])
    {
      v4 = v6;
    }

    else
    {
      v5 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id sub_1005F74C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  v11 = 0;
  v7 = [v4 initWithName:v5 client:28 transferPath:0 diskSpaceNeeded:a3 location:v6 error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

id sub_1005F75EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  v7 = objc_allocWithZone(IXPlaceholderSpecification);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 initWithLocalizedBundleName:v8 bundleID:v9 type:1 client:28 location:v6];

  [v10 setInstallType:a5];
  v15 = 0;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSpecification:v10 error:&v15];
  if (v11)
  {
    v12 = v15;
  }

  else
  {
    v13 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1005F777C(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_1001F0C48(&qword_1007896C8);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_1001F0C48(&qword_1007896D0);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_1001F0C48(&qword_1007896D8);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_1001F0C48(&qword_1007896E0);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_1001F0C48(&qword_1007896E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_100006D8C(a1, a1[3]);
  sub_1005F94AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1005F9554();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1005F9500();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1005F95A8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1005F95FC();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1005F7BB8()
{
  v1 = 0x6974616974696E69;
  v2 = 0x6E69726F74736572;
  if (*v0 != 2)
  {
    v2 = 0x6E69746F6D6F7270;
  }

  if (*v0)
  {
    v1 = 0x676E697461647075;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1005F7C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F8CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F7C68(uint64_t a1)
{
  v2 = sub_1005F94AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7CA4(uint64_t a1)
{
  v2 = sub_1005F94AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F7CE0(uint64_t a1)
{
  v2 = sub_1005F95FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7D1C(uint64_t a1)
{
  v2 = sub_1005F95FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F7D58(uint64_t a1)
{
  v2 = sub_1005F9500();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7D94(uint64_t a1)
{
  v2 = sub_1005F9500();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F7DD0(uint64_t a1)
{
  v2 = sub_1005F9554();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7E0C(uint64_t a1)
{
  v2 = sub_1005F9554();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F7E48(uint64_t a1)
{
  v2 = sub_1005F95A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7E84(uint64_t a1)
{
  v2 = sub_1005F95A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005F7EC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005F8E6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1005F7F08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static UUID.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = a1;

    v12 = a1;
  }

  return (v10 & 1) == 0;
}

void sub_1005F8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F0C48(&qword_100789660);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v10, v7);
  aBlock[4] = sub_1005F8BFC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005F829C;
  aBlock[3] = &unk_10076E990;
  v14 = _Block_copy(aBlock);

  [ObjCClassFromMetadata uninstallAppWithIdentity:a3 options:a4 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1005F821C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1001F0C48(&qword_100789660);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&qword_100789660);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1005F829C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id protocol witness for CustomStringConvertible.description.getter in conformance IXCoordinatorImportance()
{
  result = IXStringForCoordinatorImportance();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005F83DC(uint64_t a1, uint64_t a2)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = -1;
      v2 = 3;
      if (a2 > 2)
      {
        if (a2 != 3)
        {
          goto LABEL_30;
        }

        v2 = 3;
LABEL_36:
        v3 = 3;
        return v2 < v3;
      }

      if (!a2)
      {
        return v2 < v3;
      }

      if (a2 == 1)
      {
        v3 = 0;
        v2 = 3;
        return v2 < v3;
      }

      v3 = 3;
      goto LABEL_42;
    }

    if (a1 == 4)
    {
      v3 = -1;
      v2 = 1;
      if (a2 > 2)
      {
        goto LABEL_29;
      }

      if (!a2)
      {
        return v2 < v3;
      }

      if (a2 == 1)
      {
        v3 = 0;
        v2 = 1;
        return v2 < v3;
      }

      v3 = 1;
      goto LABEL_42;
    }

    if (a1 != 5)
    {
      goto LABEL_45;
    }

    goto LABEL_24;
  }

  if (!a1)
  {
LABEL_24:
    v3 = -1;
    if (a2 > 2)
    {
      v2 = -1;
      goto LABEL_29;
    }

    if (!a2)
    {
      v2 = -1;
      return v2 < v3;
    }

    if (a2 == 1)
    {
      v3 = 0;
      v2 = -1;
      return v2 < v3;
    }

    goto LABEL_42;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_45;
    }

    v3 = -1;
    v2 = 2;
    if (a2 > 2)
    {
      goto LABEL_29;
    }

    if (!a2)
    {
      return v2 < v3;
    }

    if (a2 == 1)
    {
      v3 = 0;
      v2 = 2;
      return v2 < v3;
    }

    v3 = a2;
LABEL_42:
    if (a2 == 2)
    {
      v2 = v3;
      v3 = 2;
      return v2 < v3;
    }

    goto LABEL_45;
  }

  v2 = 0;
  v3 = -1;
  if (a2 <= 2)
  {
    if (!a2)
    {
      return v2 < v3;
    }

    if (a2 == 1)
    {
      v3 = 0;
      v2 = 0;
      return v2 < v3;
    }

    v3 = 0;
    goto LABEL_42;
  }

LABEL_29:
  if (a2 == 3)
  {
    goto LABEL_36;
  }

LABEL_30:
  if (a2 == 4)
  {
    v3 = 1;
    return v2 < v3;
  }

  if (a2 == 5)
  {
    return v2 < v3;
  }

LABEL_45:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005F85EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1005F8634(void *a1)
{
  v2 = type metadata accessor for Logger();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v40 = v10 + 16;
  v11 = objc_opt_self();
  v12 = *(v5 + 16);
  v35 = a1;
  v12(v9, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(&v15[v13], v9, v4);
  *&v15[v14] = v10;
  aBlock[4] = sub_1005F8B58;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009BE4;
  aBlock[3] = &unk_10076E940;
  v16 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v9) = [v11 enumerateCoordinatorsWithError:aBlock usingBlock:v16];
  _Block_release(v16);
  if (v9)
  {
    v17 = aBlock[0];
  }

  else
  {
    v18 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = v37;
    static Logger.install.getter();
    v20 = v36;
    v12(v36, v35, v4);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v23 = 136446466;
      sub_1005F85EC(&qword_100789F60, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v20;
      v27 = v26;
      (*(v5 + 8))(v25, v4);
      v28 = sub_1002346CC(v24, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_1002346CC(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error looking for coordinator with ID: %{public}s: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v20, v4);
    }

    (*(v38 + 8))(v19, v39);
  }

  swift_beginAccess();
  v32 = *(v10 + 16);
  v33 = v32;

  return v32;
}

BOOL sub_1005F8B58(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005F7F08(a1, v1 + v4, v5);
}

uint64_t sub_1005F8BFC(uint64_t a1, uint64_t a2)
{
  sub_1001F0C48(&qword_100789660);

  return sub_1005F821C(a1, a2);
}

unint64_t sub_1005F8C9C()
{
  result = qword_100789668;
  if (!qword_100789668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789668);
  }

  return result;
}

uint64_t sub_1005F8CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616974696E69 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697461647075 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69726F74736572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69746F6D6F7270 && a2 == 0xE900000000000067)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1005F8E6C(void *a1)
{
  v39 = sub_1001F0C48(&qword_100789670);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v31 - v2;
  v40 = sub_1001F0C48(&qword_100789678);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v31 - v3;
  v4 = sub_1001F0C48(&qword_100789680);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1001F0C48(&qword_100789688);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1001F0C48(&qword_100789690);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_100006D8C(a1, v14);
  sub_1005F94AC();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1005CD748();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1005F95A8();
        v29 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1005F95FC();
        v23 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_10000710C(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1005F9554();
      v28 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1005F9500();
      v30 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = type metadata accessor for DecodingError();
  swift_allocError();
  v11 = v25;
  sub_1001F0C48(&qword_1007896A0);
  *v11 = &_s6IntentON;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v24 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_10000710C(v44);
  return v11;
}

unint64_t sub_1005F94AC()
{
  result = qword_100789698;
  if (!qword_100789698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789698);
  }

  return result;
}

unint64_t sub_1005F9500()
{
  result = qword_1007896A8;
  if (!qword_1007896A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896A8);
  }

  return result;
}

unint64_t sub_1005F9554()
{
  result = qword_1007896B0;
  if (!qword_1007896B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896B0);
  }

  return result;
}

unint64_t sub_1005F95A8()
{
  result = qword_1007896B8;
  if (!qword_1007896B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896B8);
  }

  return result;
}

unint64_t sub_1005F95FC()
{
  result = qword_1007896C0;
  if (!qword_1007896C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896C0);
  }

  return result;
}

unint64_t sub_1005F96A4()
{
  result = qword_1007896F0;
  if (!qword_1007896F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896F0);
  }

  return result;
}

unint64_t sub_1005F96FC()
{
  result = qword_1007896F8;
  if (!qword_1007896F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007896F8);
  }

  return result;
}

unint64_t sub_1005F9754()
{
  result = qword_100789700;
  if (!qword_100789700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789700);
  }

  return result;
}

unint64_t sub_1005F97AC()
{
  result = qword_100789708;
  if (!qword_100789708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789708);
  }

  return result;
}

unint64_t sub_1005F9804()
{
  result = qword_100789710;
  if (!qword_100789710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789710);
  }

  return result;
}

unint64_t sub_1005F985C()
{
  result = qword_100789718;
  if (!qword_100789718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789718);
  }

  return result;
}

unint64_t sub_1005F98B4()
{
  result = qword_100789720;
  if (!qword_100789720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789720);
  }

  return result;
}

unint64_t sub_1005F990C()
{
  result = qword_100789728;
  if (!qword_100789728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789728);
  }

  return result;
}

unint64_t sub_1005F9964()
{
  result = qword_100789730;
  if (!qword_100789730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789730);
  }

  return result;
}

unint64_t sub_1005F99BC()
{
  result = qword_100789738;
  if (!qword_100789738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789738);
  }

  return result;
}

unint64_t sub_1005F9A14()
{
  result = qword_100789740;
  if (!qword_100789740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789740);
  }

  return result;
}

uint64_t type metadata accessor for InternalError()
{
  result = qword_1007897C0;
  if (!qword_1007897C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005F9ABC()
{
  type metadata accessor for ManagedAppDistributionError();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MarketplaceKitError();
    if (v1 <= 0x3F)
    {
      sub_1005F9BEC();
      if (v2 <= 0x3F)
      {
        sub_1005F9C1C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UUID();
          if (v4 <= 0x3F)
          {
            sub_10038C230();
            if (v5 <= 0x3F)
            {
              sub_1005F9C64(319, &qword_1007897E0);
              if (v6 <= 0x3F)
              {
                sub_1005F9C64(319, &unk_1007897E8);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1005F9BEC()
{
  result = qword_1007897D0;
  if (!qword_1007897D0)
  {
    result = &type metadata for Int64;
    atomic_store(&type metadata for Int64, &qword_1007897D0);
  }

  return result;
}

void sub_1005F9C1C()
{
  if (!qword_1007897D8)
  {
    sub_10038C230();
    if (!v1)
    {
      atomic_store(v0, &qword_1007897D8);
    }
  }
}

void sub_1005F9C64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1005F9CC0()
{
  v1 = type metadata accessor for UUID();
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MarketplaceKitError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManagedAppDistributionError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InternalError();
  __chkstk_darwin(v12);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004B5BE4(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6874756120746F4ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v5 + 32))(v7, v14, v4);
      v42 = MarketplaceKitError.description.getter();
      (*(v5 + 8))(v7, v4);
      return v42;
    case 2:
      v44 = *v14;
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(47);
      v45 = [objc_allocWithZone(NSByteCountFormatter) init];
      v46 = [v45 stringFromByteCount:v44];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v77[0] = v47;
      v77[1] = v49;
      v50._countAndFlagsBits = 0xD00000000000002DLL;
      v50._object = 0x80000001006CECB0;
      String.append(_:)(v50);
      return v77[0];
    case 3:
      v26 = v14[1];
      if (!v26)
      {
        return 0xD00000000000002ELL;
      }

      v27 = *v14;
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v28._countAndFlagsBits = 0xD000000000000038;
      v28._object = 0x80000001006CEB10;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v27;
      v29._object = v26;
      String.append(_:)(v29);

      v30 = 34;
LABEL_32:
      v62 = 0xE100000000000000;
      String.append(_:)(*&v30);
      return v77[0];
    case 4:
      v55 = *v14;
      v56 = v14[1];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v77[0] = 0xD000000000000019;
      v77[1] = 0x80000001006CEAC0;
      v57._countAndFlagsBits = v55;
      v57._object = v56;
      String.append(_:)(v57);

      v58._countAndFlagsBits = 0x766E692073692022;
      v58._object = 0xEC00000064696C61;
      String.append(_:)(v58);
      return v77[0];
    case 5:
      v64 = v74;
      v63 = v75;
      (*(v74 + 32))(v3, v14, v75);
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v77[0] = 0xD00000000000001FLL;
      v77[1] = 0x80000001006CE9E0;
      sub_1005FA910();
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      v66 = 34;
      v67 = 0xE100000000000000;
      goto LABEL_36;
    case 6:
      v51 = *v14;
      v52 = v14[1];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v77[0] = 0xD000000000000015;
      v77[1] = 0x80000001006CE970;
      v53._countAndFlagsBits = v51;
      v53._object = v52;
      String.append(_:)(v53);
      goto LABEL_40;
    case 7:
      v69 = v14[1];
      if (!v69)
      {
        return 0xD000000000000022;
      }

      v70 = *v14;
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v71._countAndFlagsBits = 0xD000000000000033;
      v71._object = 0x80000001006CE930;
      String.append(_:)(v71);
      v72._countAndFlagsBits = v70;
      v72._object = v69;
      String.append(_:)(v72);
LABEL_40:

      return v77[0];
    case 8:
      v35 = *v14;
      v36 = v14[1];
      v37 = v14[2];
      v38 = v14[3];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      strcpy(v77, "Failed to ");
      BYTE3(v77[1]) = 0;
      HIDWORD(v77[1]) = -369098752;
      v39._countAndFlagsBits = v35;
      v39._object = v36;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 0x65736E6563696C20;
      v40._object = 0xEA0000000000203ALL;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v37;
      v41._object = v38;
      String.append(_:)(v41);
      goto LABEL_40;
    case 9:
      v64 = v74;
      v63 = v75;
      (*(v74 + 32))(v3, v14, v75);
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      strcpy(v77, "Coordinator '");
      HIWORD(v77[1]) = -4864;
      sub_1005FA910();
      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      v66 = 0x6F6620746F6E2027;
      v67 = 0xEB00000000646E75;
LABEL_36:
      String.append(_:)(*&v66);
      v42 = v77[0];
      (*(v64 + 8))(v3, v63);
      return v42;
    case 10:
      v21 = *v14;
      v20 = v14[1];
      v22 = v14[2];
      v23 = v14[3];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v77[0] = 0xD00000000000001ALL;
      v77[1] = 0x80000001006CE800;
      v24._countAndFlagsBits = v22;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0xD000000000000010;
      v25._object = 0x80000001006CE820;
      String.append(_:)(v25);
      v18 = v21;
      v19 = v20;
      goto LABEL_11;
    case 11:
      v31 = *v14;
      v32 = v14[1];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v33 = 0x80000001006CE700;
      v34 = 0xD00000000000001CLL;
      goto LABEL_20;
    case 12:
      v59 = *v14;
      v60 = v14[1];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v77[0] = 0xD000000000000013;
      v77[1] = 0x80000001006CE690;
      v61._countAndFlagsBits = v59;
      v61._object = v60;
      String.append(_:)(v61);
      goto LABEL_31;
    case 13:
      v17 = *v14;
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v77[0] = 0xD000000000000015;
      v77[1] = 0x80000001006CE670;
      v76 = v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_11:
      String.append(_:)(*&v18);
LABEL_31:

      v30 = 39;
      goto LABEL_32;
    case 14:
      v31 = *v14;
      v32 = v14[1];
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v33 = 0x80000001006CE650;
      v34 = 0xD000000000000012;
LABEL_20:
      v77[0] = v34;
      v77[1] = v33;
      v43._countAndFlagsBits = v31;
      v43._object = v32;
      String.append(_:)(v43);

      v30 = 41;
      goto LABEL_32;
    case 15:
      return 0xD00000000000002CLL;
    case 16:
      return 0xD000000000000050;
    case 17:
      return 0xD000000000000019;
    case 18:
      return 0xD00000000000001BLL;
    case 19:
      return 0xD000000000000048;
    case 20:
      return 0xD00000000000003ELL;
    case 21:
      return result;
    case 22:
      return 0xD00000000000002ALL;
    case 23:
    case 41:
      return 0xD000000000000049;
    case 24:
      return 0xD000000000000024;
    case 25:
      return 0xD00000000000001ALL;
    case 26:
    case 40:
      return 0xD000000000000011;
    case 27:
      return 0xD000000000000013;
    case 28:
      return 0xD000000000000021;
    case 29:
      return 0xD000000000000013;
    case 30:
      return 0xD000000000000012;
    case 31:
      return 0xD000000000000013;
    case 32:
      return 0xD00000000000001CLL;
    case 33:
      return 0xD00000000000001FLL;
    case 34:
      return 0xD00000000000001ELL;
    case 35:
      return 0xD000000000000010;
    case 36:
      return 0xD000000000000020;
    case 37:
      return 0xD000000000000026;
    case 38:
      return 0xD000000000000016;
    case 39:
      return 0xD000000000000035;
    case 42:
      return 0xD00000000000002DLL;
    default:
      (*(v9 + 32))(v11, v14, v8);
      v54 = ManagedAppDistributionError.description.getter();
      (*(v9 + 8))(v11, v8);
      return v54;
  }
}

unint64_t sub_1005FA910()
{
  result = qword_100789F60;
  if (!qword_100789F60)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789F60);
  }

  return result;
}

uint64_t sub_1005FA968(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1005FAFB4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1005FA9E4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_100489638(result, *(a1 + 36), a1, &v10);
    v5 = v10;
    v6 = v11;
    v14[0] = v10;
    v14[1] = v11;
    v7 = v12;
    v8 = v13;
    v14[2] = v12;
    v14[3] = v13;
    *a2 = v10;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
    v15[2] = v7;
    v15[3] = v8;
    v15[0] = v5;
    v15[1] = v6;
    sub_1001F71F4(v14, &v9);
    return sub_1001F7250(v15);
  }

  return result;
}

uint64_t sub_1005FAA9C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1005FAB2C()
{
  v0 = 16;
  sub_1005267A0(0, 16, 0);
  v1 = &unk_100758DE8;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = sub_1005FAA9C(*(v1 - 1), *v1);
    if ((result & 0x100) != 0)
    {
      break;
    }

    v8 = v2;
    v5 = v2[2];
    v4 = v2[3];
    if (v5 >= v4 >> 1)
    {
      v6 = result;
      sub_1005267A0((v4 > 1), v5 + 1, 1);
      LOBYTE(result) = v6;
      v2 = v8;
    }

    v2[2] = v5 + 1;
    *(v2 + v5 + 32) = result;
    v1 += 2;
    if (!--v0)
    {
      swift_arrayDestroy();
      result = dispatch thunk of static Digest.byteCount.getter();
      if (result + 0x4000000000000000 >= 0)
      {
        __chkstk_darwin(2 * result);
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v7;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FACB4(void *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v15 = a1;
  v7 = type metadata accessor for LazySequence();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  Sequence.lazy.getter();
  v16 = a4;
  sub_1001F0C48(&qword_100782968);
  swift_getWitnessTable();
  sub_1005FAF50();
  v11 = Sequence.flatMap<A>(_:)();
  result = (*(v8 + 8))(v10, v7);
  v13 = *(v11 + 16);
  if (!v13)
  {
    goto LABEL_4;
  }

  if (v13 <= v17)
  {
    memcpy(v15, (v11 + 32), v13);
LABEL_4:

    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FAE70@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1001F0C48(&qword_10077EF80);
  result = swift_allocObject();
  *(result + 16) = xmmword_10069F6E0;
  v7 = *(a2 + 16);
  if (v7 <= v5 >> 4)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = *(a2 + 32 + (v5 >> 4));
    if (v7 > (v5 & 0xF))
    {
      *(result + 33) = *(a2 + 32 + (v5 & 0xF));
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1005FAF50()
{
  result = qword_100789818;
  if (!qword_100789818)
  {
    sub_1001F76D0(&qword_100782968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789818);
  }

  return result;
}

uint64_t sub_1005FAFB4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1005FB00C()
{
  v0 = type metadata accessor for Logger();
  sub_100367DEC(v0, qword_100789820);
  sub_1002710CC(v0, qword_100789820);
  return static Logger.updates.getter();
}

uint64_t sub_1005FB058(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 127) = a3;
  *(v8 + 416) = a2;
  *(v8 + 424) = type metadata accessor for ManagedAppInstallationTask();
  *(v8 + 432) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v8 + 440) = v15;
  *(v8 + 448) = *(v15 - 8);
  *(v8 + 456) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F148);
  *(v8 + 464) = swift_task_alloc();
  v16 = type metadata accessor for ManagedApp();
  *(v8 + 472) = v16;
  *(v8 + 480) = *(v16 - 8);
  *(v8 + 488) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  *(v8 + 496) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v8 + 504) = v17;
  *(v8 + 512) = *(v17 - 8);
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = *(type metadata accessor for EnterpriseApp() - 8);
  *(v8 + 536) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 544) = swift_task_alloc();
  v18 = type metadata accessor for URL();
  *(v8 + 552) = v18;
  *(v8 + 560) = *(v18 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  v19 = type metadata accessor for DDMPurchaseMethod();
  *(v8 + 592) = v19;
  *(v8 + 600) = *(v19 - 8);
  *(v8 + 608) = swift_task_alloc();
  v20 = type metadata accessor for DDMDeclaration(0);
  *(v8 + 616) = v20;
  *(v8 + 624) = *(v20 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 400) = a5;
  *(v8 + 408) = a7;
  v21 = sub_10020A748((v8 + 376));
  (*(*(a5 - 8) + 16))(v21, a1, a5);
  *(v8 + 264) = a6;
  *(v8 + 272) = a8;
  *(v8 + 280) = v25;
  *(v8 + 296) = v26;
  *(v8 + 304) = v27;
  v22 = sub_10020A748((v8 + 240));
  (*(*(a6 - 8) + 16))(v22, a4, a6);

  return _swift_task_switch(sub_1005FB518, 0, 0);
}

uint64_t sub_1005FB518()
{
  v1 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v0[82] = v1;

  return _swift_task_switch(sub_1005FB5A8, v1, 0);
}

uint64_t sub_1005FB5A8()
{
  v1 = *(*(v0 + 656) + 112);
  v2 = swift_task_alloc();
  *(v0 + 664) = v2;
  *v2 = v0;
  v2[1] = sub_1005FB66C;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_1005FB66C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 672) = a1;
  *(v4 + 680) = v1;

  v5 = *(v3 + 656);
  if (v1)
  {
    v6 = sub_1005FBCDC;
  }

  else
  {
    v6 = sub_1005FB7A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005FB7A4()
{

  return _swift_task_switch(sub_1005FB80C, 0, 0);
}

uint64_t sub_1005FB80C()
{
  v1 = *(v0 + 672);
  v2 = *(v1 + 16);
  *(v0 + 688) = v2;
  if (!v2)
  {
LABEL_11:

    sub_10000710C(v0 + 376);
    sub_10000710C(v0 + 240);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 912) = *(*(v0 + 624) + 80);
  *(v0 + 916) = enum case for DDMPurchaseMethod.manifest(_:);
  *(v0 + 920) = enum case for ManagedAppStatus.UpdateState.available(_:);
  *(v0 + 696) = 0;
  if (!*(v1 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v0 + 916);
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    v7 = *(v0 + 592);
    sub_1005FFF78(v1 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v3, *(v0 + 648), type metadata accessor for DDMDeclaration);
    (*(v6 + 104))(v5, v4, v7);
    LOBYTE(v4) = static DDMPurchaseMethod.== infix(_:_:)();
    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 648);
    if ((v4 & 1) == 0 || *(v8 + 40))
    {
      goto LABEL_8;
    }

    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    sub_100337114(v8 + *(*(v0 + 616) + 80), v11);
    if ((*(v9 + 48))(v11, 1, v10) != 1)
    {
      break;
    }

    sub_1000032A8(*(v0 + 544), &unk_1007809F0);
    v8 = *(v0 + 648);
LABEL_8:
    v12 = *(v0 + 688);
    v13 = *(v0 + 696) + 1;
    sub_1005FFFE0(v8, type metadata accessor for DDMDeclaration);
    if (v13 == v12)
    {
      goto LABEL_11;
    }

    v3 = *(v0 + 696) + 1;
    *(v0 + 696) = v3;
    v1 = *(v0 + 672);
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_10;
    }
  }

  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 416);
  (*(v19 + 32))(v16, *(v0 + 544), v20);
  v22 = [objc_opt_self() ephemeralSessionConfiguration];
  [v22 setHTTPShouldSetCookies:0];
  [v22 setHTTPCookieAcceptPolicy:1];
  [v22 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v23 = [objc_opt_self() sessionWithConfiguration:v22];

  type metadata accessor for PlainHTTP();
  v24 = swift_allocObject();
  *(v0 + 704) = v24;
  *(v24 + 24) = 1;
  *(v24 + 16) = v23;
  v25 = *(v19 + 16);
  v25(v17, v16, v20);

  v26 = v21;
  v25(v18, v17, v20);

  v27 = v26;
  v28 = swift_task_alloc();
  *(v0 + 712) = v28;
  *v28 = v0;
  v28[1] = sub_1005FBFEC;
  v29 = *(v0 + 568);
  v30 = *(v0 + 416);

  return sub_10035A314(v29, v24, v30);
}

uint64_t sub_1005FBCDC()
{

  return _swift_task_switch(sub_1005FBD44, 0, 0);
}

uint64_t sub_1005FBD44()
{
  if (qword_10077E588 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  sub_1002710CC(v0[63], qword_100789820);
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Error fetching enterprise app metadata: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000710C((v0 + 47));
  sub_10000710C((v0 + 30));

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005FBFEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 720) = a1;
  *(v3 + 728) = v1;

  if (v1)
  {
    v4 = sub_1005FC6B8;
  }

  else
  {
    v4 = sub_1005FC104;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005FC104()
{
  v1 = v0[90];
  if (*(v1 + 16))
  {
    v2 = v0[81];
    v3 = v0[72];
    v4 = v0[70];
    v5 = v0[69];
    v6 = v0[67];
    v7 = v0[52];
    v8 = *(v0[66] + 80);
    sub_1005FFF78(v1 + ((v8 + 32) & ~v8), v6, type metadata accessor for EnterpriseApp);

    v9 = *(v4 + 8);
    v0[92] = v9;
    v0[93] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    v0[94] = v10;
    v11 = swift_task_alloc();
    v0[95] = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v2;

    v12 = swift_task_alloc();
    v0[96] = v12;
    *v12 = v0;
    v12[1] = sub_1005FC9E4;

    return sub_10052EF68(sub_10052EF68, sub_100270AAC, v11, v10);
  }

  else
  {

    static Logger.ddm.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Enterprise manifest invalid: No item found", v16, 2u);
    }

    v17 = v0[65];
    v18 = v0[63];
    v19 = v0[64];
    v20 = v0[52];

    (*(v19 + 8))(v17, v18);
    type metadata accessor for InternalError();
    sub_100600040(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v21 = v0[81];
    v22 = v0[73];
    v23 = v0[69];
    v24 = *(v0[70] + 8);
    v24(v0[72], v23);

    v24(v22, v23);
    sub_1005FFFE0(v21, type metadata accessor for DDMDeclaration);
    if (qword_10077E588 != -1)
    {
      swift_once();
    }

    v25 = v0[52];
    sub_1002710CC(v0[63], qword_100789820);
    v26 = v25;
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[52];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v29;
      *v31 = v29;
      *(v30 + 12) = 2114;
      v32 = v29;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v33;
      v31[1] = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Error fetching enterprise app metadata: %{public}@", v30, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10000710C((v0 + 47));
    sub_10000710C((v0 + 30));

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1005FC6B8()
{

  v1 = *(v0 + 648);
  v2 = *(v0 + 584);
  v3 = *(v0 + 552);
  v4 = *(*(v0 + 560) + 8);
  v4(*(v0 + 576), v3);

  v4(v2, v3);
  sub_1005FFFE0(v1, type metadata accessor for DDMDeclaration);
  if (qword_10077E588 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 416);
  sub_1002710CC(*(v0 + 504), qword_100789820);
  v6 = v5;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 416);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2114;
    v12 = v9;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Error fetching enterprise app metadata: %{public}@", v10, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000710C(v0 + 376);
  sub_10000710C(v0 + 240);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005FC9E4()
{
  *(*v1 + 776) = v0;

  if (v0)
  {

    v2 = sub_1005FCDDC;
  }

  else
  {

    v2 = sub_1005FCB54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005FCB54()
{
  v1 = v0[81];
  v2 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  v0[98] = v2;
  v3 = swift_task_alloc();
  v0[99] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1005FCC60;

  return sub_1003B254C(sub_100270D8C, v3, v2);
}

uint64_t sub_1005FCC60(char a1)
{
  v4 = *v2;
  *(*v2 + 808) = v1;

  if (v1)
  {

    v5 = sub_1005FD898;
  }

  else
  {
    *(v4 + 239) = a1 & 1;

    v5 = sub_1005FD0E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005FCDDC()
{
  v1 = v0[92];
  v2 = v0[81];
  v3 = v0[73];
  v4 = v0[69];
  v5 = v0[67];

  v1(v3, v4);
  sub_1005FFFE0(v5, type metadata accessor for EnterpriseApp);
  sub_1005FFFE0(v2, type metadata accessor for DDMDeclaration);
  if (qword_10077E588 != -1)
  {
    swift_once();
  }

  v6 = v0[52];
  sub_1002710CC(v0[63], qword_100789820);
  v7 = v6;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[52];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Error fetching enterprise app metadata: %{public}@", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000710C((v0 + 47));
  sub_10000710C((v0 + 30));

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005FD0E8()
{
  v51 = v0;
  if ((*(v0 + 239) & 1) == 0)
  {
    (*(v0 + 736))(*(v0 + 584), *(v0 + 552));

    sub_1005FFFE0(*(v0 + 536), type metadata accessor for EnterpriseApp);
    v17 = *(v0 + 688);
    v18 = *(v0 + 696) + 1;
    sub_1005FFFE0(*(v0 + 648), type metadata accessor for DDMDeclaration);
    if (v18 == v17)
    {
LABEL_6:

      sub_10000710C(v0 + 376);
      sub_10000710C(v0 + 240);

      v19 = *(v0 + 8);

      return v19();
    }

    while (1)
    {
      v25 = *(v0 + 696) + 1;
      *(v0 + 696) = v25;
      v26 = *(v0 + 672);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v27 = *(v0 + 916);
      v28 = *(v0 + 608);
      v29 = *(v0 + 600);
      v30 = *(v0 + 592);
      sub_1005FFF78(v26 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v25, *(v0 + 648), type metadata accessor for DDMDeclaration);
      (*(v29 + 104))(v28, v27, v30);
      LOBYTE(v27) = static DDMPurchaseMethod.== infix(_:_:)();
      (*(v29 + 8))(v28, v30);
      v31 = *(v0 + 648);
      if ((v27 & 1) != 0 && !*(v31 + 40))
      {
        v32 = *(v0 + 560);
        v33 = *(v0 + 552);
        v34 = *(v0 + 544);
        sub_100337114(v31 + *(*(v0 + 616) + 80), v34);
        if ((*(v32 + 48))(v34, 1, v33) != 1)
        {
          v35 = *(v0 + 584);
          v36 = *(v0 + 576);
          v37 = *(v0 + 568);
          v38 = *(v0 + 560);
          v39 = *(v0 + 552);
          v40 = *(v0 + 416);
          (*(v38 + 32))(v35, *(v0 + 544), v39);
          v41 = [objc_opt_self() ephemeralSessionConfiguration];
          [v41 setHTTPShouldSetCookies:0];
          [v41 setHTTPCookieAcceptPolicy:1];
          [v41 setRequestCachePolicy:1];
          sub_10043D15C(1);
          v42 = [objc_opt_self() sessionWithConfiguration:v41];

          type metadata accessor for PlainHTTP();
          v43 = swift_allocObject();
          *(v0 + 704) = v43;
          *(v43 + 24) = 1;
          *(v43 + 16) = v42;
          v44 = *(v38 + 16);
          v44(v36, v35, v39);

          v45 = v40;
          v44(v37, v36, v39);

          v46 = v45;
          v47 = swift_task_alloc();
          *(v0 + 712) = v47;
          *v47 = v0;
          v47[1] = sub_1005FBFEC;
          v48 = *(v0 + 568);
          v49 = *(v0 + 416);

          return sub_10035A314(v48, v43, v49);
        }

        sub_1000032A8(*(v0 + 544), &unk_1007809F0);
        v31 = *(v0 + 648);
      }

      v23 = *(v0 + 688);
      v24 = *(v0 + 696) + 1;
      sub_1005FFFE0(v31, type metadata accessor for DDMDeclaration);
      if (v24 == v23)
      {
        goto LABEL_6;
      }
    }
  }

  if (qword_10077E588 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 416);
  *(v0 + 816) = sub_1002710CC(*(v0 + 504), qword_100789820);
  sub_1005FFF78(v1, v2, type metadata accessor for DDMDeclaration);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 640);
  if (v7)
  {
    v9 = *(v0 + 416);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v50 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2082;
    v13 = *(v8 + 48);
    v14 = *(v8 + 56);
    v15 = v9;

    sub_1005FFFE0(v8, type metadata accessor for DDMDeclaration);
    v16 = sub_1002346CC(v13, v14, &v50);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Discovered update for %{public}s", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920);

    sub_10000710C(v12);
  }

  else
  {

    sub_1005FFFE0(v8, type metadata accessor for DDMDeclaration);
  }

  *(v0 + 824) = *(*sub_100006D8C((v0 + 240), *(v0 + 264)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100600040(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);

  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005FDBA4, v22, v21);
}

uint64_t sub_1005FD898()
{
  v1 = v0[92];
  v2 = v0[81];
  v3 = v0[73];
  v4 = v0[69];
  v5 = v0[67];

  v1(v3, v4);
  sub_1005FFFE0(v5, type metadata accessor for EnterpriseApp);
  sub_1005FFFE0(v2, type metadata accessor for DDMDeclaration);
  if (qword_10077E588 != -1)
  {
    swift_once();
  }

  v6 = v0[52];
  sub_1002710CC(v0[63], qword_100789820);
  v7 = v6;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[52];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Error fetching enterprise app metadata: %{public}@", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000710C((v0 + 47));
  sub_10000710C((v0 + 30));

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005FDBA4()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 496);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v2, v1, updated);
  (*(v4 + 56))(v2, 0, 1, updated);
  v5 = swift_task_alloc();
  *(v0 + 832) = v5;
  *v5 = v0;
  v5[1] = sub_1005FDCE4;
  v6 = *(v0 + 648);
  v7 = *(v0 + 496);
  v8 = *(v0 + 416);

  return sub_10030E4E0(v7, v6, 1, v8);
}

uint64_t sub_1005FDCE4()
{
  v1 = *(*v0 + 496);

  sub_1000032A8(v1, &qword_10077F3A0);

  return _swift_task_switch(sub_1005FDE28, 0, 0);
}

uint64_t sub_1005FDE28()
{
  v1 = (*(v0 + 648) + *(*(v0 + 616) + 52));
  v2 = *v1;
  *(v0 + 840) = *v1;
  v3 = v1[1];
  *(v0 + 848) = v3;
  v4 = (*sub_100006D8C((v0 + 240), *(v0 + 264)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[3];
  *(v0 + 111) = *(v4 + 95);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 64) = v7;
  v9 = v4[1];
  v8 = v4[2];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  sub_10020A7AC(v0 + 16, v0 + 128);
  v10 = swift_task_alloc();
  *(v0 + 856) = v10;
  *v10 = v0;
  v10[1] = sub_1005FDF48;
  v11 = *(v0 + 704);
  v12 = *(v0 + 536);
  v13 = *(v0 + 464);
  v14 = *(v0 + 416);

  return sub_100341050(v13, v12, v2, v3, v11, v0 + 16, v14);
}

uint64_t sub_1005FDF48()
{
  v2 = *v1;

  if (v0)
  {

    sub_10020A92C(v2 + 16);
    v3 = sub_1005FE3D0;
  }

  else
  {
    sub_10020A92C(v2 + 16);
    v3 = sub_1005FE07C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005FE07C()
{
  v2 = v0[60];
  v1 = v0[61];
  v4 = v0[58];
  v3 = v0[59];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v0[108] = v5;

  static Date.now.getter();

  return _swift_task_switch(sub_1005FE16C, v5, 0);
}

uint64_t sub_1005FE16C()
{
  v7 = *(v0 + 840);
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(*(v0 + 864) + 112);
  v4 = swift_task_alloc();
  *(v0 + 872) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 880) = v5;
  *v5 = v0;
  v5[1] = sub_1005FE274;

  return sub_10052DB90(sub_100352860, v4, v3);
}

uint64_t sub_1005FE274()
{
  v2 = *v1;

  v3 = *(v2 + 864);
  if (v0)
  {

    v4 = sub_100600088;
  }

  else
  {

    v4 = sub_1005FEAA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005FE3D0()
{
  v1 = *(v0 + 464);
  (*(*(v0 + 480) + 56))(v1, 1, 1, *(v0 + 472));
  sub_1000032A8(v1, &qword_10077F148);
  if (*(v0 + 127))
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 840);
    v4 = *(v0 + 704);
    v5 = *(v0 + 648);
    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
    v8 = *(v0 + 416);
    sub_100235E64();
    v9 = sub_10060C720(v3, v2);
    *(v0 + 888) = v9;
    sub_1005FFF78(v5, v6, type metadata accessor for DDMDeclaration);
    *(v6 + v7[6]) = 0;
    *(v6 + v7[7]) = v8;
    *(v6 + v7[5]) = v4;
    v10 = v6 + v7[8];
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v6 + v7[9]) = 0;
    *(v6 + v7[10]) = 1;
    v11 = *(v0 + 264);
    v12 = *(v0 + 280);
    v13 = *(v0 + 304);
    v49 = *(v0 + 288);
    v14 = sub_100006D8C((v0 + 240), v11);
    *(v0 + 336) = v11;
    *(v0 + 344) = v12;
    *(v0 + 352) = v49;
    *(v0 + 368) = v13;
    v15 = sub_10020A748((v0 + 312));
    (*(*(v11 - 8) + 16))(v15, v14, v11);

    v16 = v8;
    v17 = swift_task_alloc();
    *(v0 + 896) = v17;
    *v17 = v0;
    v17[1] = sub_1005FF1EC;

    return sub_1004B5EE8(v0 + 376, v9, v0 + 312);
  }

  (*(v0 + 736))(*(v0 + 584), *(v0 + 552));

  sub_1005FFFE0(*(v0 + 536), type metadata accessor for EnterpriseApp);
  v19 = *(v0 + 688);
  v20 = *(v0 + 696) + 1;
  result = sub_1005FFFE0(*(v0 + 648), type metadata accessor for DDMDeclaration);
  if (v20 == v19)
  {
LABEL_6:

    sub_10000710C(v0 + 376);
    sub_10000710C(v0 + 240);

    v21 = *(v0 + 8);

    return v21();
  }

  while (1)
  {
    v24 = *(v0 + 696) + 1;
    *(v0 + 696) = v24;
    v25 = *(v0 + 672);
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v0 + 916);
    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    sub_1005FFF78(v25 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v24, *(v0 + 648), type metadata accessor for DDMDeclaration);
    (*(v28 + 104))(v27, v26, v29);
    LOBYTE(v26) = static DDMPurchaseMethod.== infix(_:_:)();
    (*(v28 + 8))(v27, v29);
    v30 = *(v0 + 648);
    if ((v26 & 1) != 0 && !*(v30 + 40))
    {
      break;
    }

LABEL_10:
    v22 = *(v0 + 688);
    v23 = *(v0 + 696) + 1;
    result = sub_1005FFFE0(v30, type metadata accessor for DDMDeclaration);
    if (v23 == v22)
    {
      goto LABEL_6;
    }
  }

  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  sub_100337114(v30 + *(*(v0 + 616) + 80), v33);
  if ((*(v31 + 48))(v33, 1, v32) == 1)
  {
    sub_1000032A8(*(v0 + 544), &unk_1007809F0);
    v30 = *(v0 + 648);
    goto LABEL_10;
  }

  v34 = *(v0 + 584);
  v35 = *(v0 + 576);
  v36 = *(v0 + 568);
  v37 = *(v0 + 560);
  v38 = *(v0 + 552);
  v39 = *(v0 + 416);
  (*(v37 + 32))(v34, *(v0 + 544), v38);
  v40 = [objc_opt_self() ephemeralSessionConfiguration];
  [v40 setHTTPShouldSetCookies:0];
  [v40 setHTTPCookieAcceptPolicy:1];
  [v40 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v41 = [objc_opt_self() sessionWithConfiguration:v40];

  type metadata accessor for PlainHTTP();
  v42 = swift_allocObject();
  *(v0 + 704) = v42;
  *(v42 + 24) = 1;
  *(v42 + 16) = v41;
  v43 = *(v37 + 16);
  v43(v35, v34, v38);

  v44 = v39;
  v43(v36, v35, v38);

  v45 = v44;
  v46 = swift_task_alloc();
  *(v0 + 712) = v46;
  *v46 = v0;
  v46[1] = sub_1005FBFEC;
  v47 = *(v0 + 568);
  v48 = *(v0 + 416);

  return sub_10035A314(v47, v42, v48);
}

uint64_t sub_1005FEAA8()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1005FEB38, 0, 0);
}

uint64_t sub_1005FEB38()
{
  (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
  if (*(v0 + 127))
  {
    v1 = *(v0 + 848);
    v2 = *(v0 + 840);
    v3 = *(v0 + 704);
    v4 = *(v0 + 648);
    v6 = *(v0 + 424);
    v5 = *(v0 + 432);
    v7 = *(v0 + 416);
    sub_100235E64();
    v8 = sub_10060C720(v2, v1);
    *(v0 + 888) = v8;
    sub_1005FFF78(v4, v5, type metadata accessor for DDMDeclaration);
    *(v5 + v6[6]) = 0;
    *(v5 + v6[7]) = v7;
    *(v5 + v6[5]) = v3;
    v9 = v5 + v6[8];
    *v9 = 0;
    *(v9 + 8) = 1;
    *(v5 + v6[9]) = 0;
    *(v5 + v6[10]) = 1;
    v10 = *(v0 + 264);
    v11 = *(v0 + 280);
    v12 = *(v0 + 304);
    v48 = *(v0 + 288);
    v13 = sub_100006D8C((v0 + 240), v10);
    *(v0 + 336) = v10;
    *(v0 + 344) = v11;
    *(v0 + 352) = v48;
    *(v0 + 368) = v12;
    v14 = sub_10020A748((v0 + 312));
    (*(*(v10 - 8) + 16))(v14, v13, v10);

    v15 = v7;
    v16 = swift_task_alloc();
    *(v0 + 896) = v16;
    *v16 = v0;
    v16[1] = sub_1005FF1EC;

    return sub_1004B5EE8(v0 + 376, v8, v0 + 312);
  }

  (*(v0 + 736))(*(v0 + 584), *(v0 + 552));

  sub_1005FFFE0(*(v0 + 536), type metadata accessor for EnterpriseApp);
  v18 = *(v0 + 688);
  v19 = *(v0 + 696) + 1;
  result = sub_1005FFFE0(*(v0 + 648), type metadata accessor for DDMDeclaration);
  if (v19 == v18)
  {
LABEL_6:

    sub_10000710C(v0 + 376);
    sub_10000710C(v0 + 240);

    v20 = *(v0 + 8);

    return v20();
  }

  while (1)
  {
    v23 = *(v0 + 696) + 1;
    *(v0 + 696) = v23;
    v24 = *(v0 + 672);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    v25 = *(v0 + 916);
    v26 = *(v0 + 608);
    v27 = *(v0 + 600);
    v28 = *(v0 + 592);
    sub_1005FFF78(v24 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v23, *(v0 + 648), type metadata accessor for DDMDeclaration);
    (*(v27 + 104))(v26, v25, v28);
    LOBYTE(v25) = static DDMPurchaseMethod.== infix(_:_:)();
    (*(v27 + 8))(v26, v28);
    v29 = *(v0 + 648);
    if ((v25 & 1) != 0 && !*(v29 + 40))
    {
      break;
    }

LABEL_10:
    v21 = *(v0 + 688);
    v22 = *(v0 + 696) + 1;
    result = sub_1005FFFE0(v29, type metadata accessor for DDMDeclaration);
    if (v22 == v21)
    {
      goto LABEL_6;
    }
  }

  v30 = *(v0 + 560);
  v31 = *(v0 + 552);
  v32 = *(v0 + 544);
  sub_100337114(v29 + *(*(v0 + 616) + 80), v32);
  if ((*(v30 + 48))(v32, 1, v31) == 1)
  {
    sub_1000032A8(*(v0 + 544), &unk_1007809F0);
    v29 = *(v0 + 648);
    goto LABEL_10;
  }

  v33 = *(v0 + 584);
  v34 = *(v0 + 576);
  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  v38 = *(v0 + 416);
  (*(v36 + 32))(v33, *(v0 + 544), v37);
  v39 = [objc_opt_self() ephemeralSessionConfiguration];
  [v39 setHTTPShouldSetCookies:0];
  [v39 setHTTPCookieAcceptPolicy:1];
  [v39 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v40 = [objc_opt_self() sessionWithConfiguration:v39];

  type metadata accessor for PlainHTTP();
  v41 = swift_allocObject();
  *(v0 + 704) = v41;
  *(v41 + 24) = 1;
  *(v41 + 16) = v40;
  v42 = *(v36 + 16);
  v42(v34, v33, v37);

  v43 = v38;
  v42(v35, v34, v37);

  v44 = v43;
  v45 = swift_task_alloc();
  *(v0 + 712) = v45;
  *v45 = v0;
  v45[1] = sub_1005FBFEC;
  v46 = *(v0 + 568);
  v47 = *(v0 + 416);

  return sub_10035A314(v46, v41, v47);
}

uint64_t sub_1005FF1EC()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v3 = sub_1005FF82C;
  }

  else
  {
    sub_10000710C(v2 + 312);
    v3 = sub_1005FF308;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005FF308()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 736);
  v3 = *(v0 + 584);
  v4 = *(v0 + 552);
  v5 = *(v0 + 432);

  sub_1005FFFE0(v5, type metadata accessor for ManagedAppInstallationTask);
  v2(v3, v4);
  sub_1005FFFE0(*(v0 + 536), type metadata accessor for EnterpriseApp);
  v6 = *(v0 + 688);
  v7 = *(v0 + 696) + 1;
  result = sub_1005FFFE0(*(v0 + 648), type metadata accessor for DDMDeclaration);
  if (v7 == v6)
  {
LABEL_2:

    sub_10000710C(v0 + 376);
    sub_10000710C(v0 + 240);

    v9 = *(v0 + 8);

    return v9();
  }

  while (1)
  {
    v12 = *(v0 + 696) + 1;
    *(v0 + 696) = v12;
    v13 = *(v0 + 672);
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v0 + 916);
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    sub_1005FFF78(v13 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v12, *(v0 + 648), type metadata accessor for DDMDeclaration);
    (*(v16 + 104))(v15, v14, v17);
    LOBYTE(v14) = static DDMPurchaseMethod.== infix(_:_:)();
    (*(v16 + 8))(v15, v17);
    v18 = *(v0 + 648);
    if ((v14 & 1) != 0 && !*(v18 + 40))
    {
      break;
    }

LABEL_6:
    v10 = *(v0 + 688);
    v11 = *(v0 + 696) + 1;
    result = sub_1005FFFE0(v18, type metadata accessor for DDMDeclaration);
    if (v11 == v10)
    {
      goto LABEL_2;
    }
  }

  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  sub_100337114(v18 + *(*(v0 + 616) + 80), v21);
  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    sub_1000032A8(*(v0 + 544), &unk_1007809F0);
    v18 = *(v0 + 648);
    goto LABEL_6;
  }

  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 416);
  (*(v25 + 32))(v22, *(v0 + 544), v26);
  v28 = [objc_opt_self() ephemeralSessionConfiguration];
  [v28 setHTTPShouldSetCookies:0];
  [v28 setHTTPCookieAcceptPolicy:1];
  [v28 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v29 = [objc_opt_self() sessionWithConfiguration:v28];

  type metadata accessor for PlainHTTP();
  v30 = swift_allocObject();
  *(v0 + 704) = v30;
  *(v30 + 24) = 1;
  *(v30 + 16) = v29;
  v31 = *(v25 + 16);
  v31(v23, v22, v26);

  v32 = v27;
  v31(v24, v23, v26);

  v33 = v32;
  v34 = swift_task_alloc();
  *(v0 + 712) = v34;
  *v34 = v0;
  v34[1] = sub_1005FBFEC;
  v35 = *(v0 + 568);
  v36 = *(v0 + 416);

  return sub_10035A314(v35, v30, v36);
}

uint64_t sub_1005FF82C()
{
  v57 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 632);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);

  sub_1005FFFE0(v3, type metadata accessor for ManagedAppInstallationTask);
  sub_10000710C(v0 + 312);
  sub_1005FFF78(v1, v2, type metadata accessor for DDMDeclaration);
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 736);
  v10 = *(v0 + 632);
  v11 = *(v0 + 584);
  v12 = *(v0 + 552);
  if (v8)
  {
    v55 = *(v0 + 584);
    v13 = *(v0 + 416);
    v54 = *(v0 + 552);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v56 = v16;
    *v14 = 138412802;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2082;
    v53 = v9;
    v17 = *(v10 + 48);
    v18 = *(v10 + 56);
    v19 = v13;

    sub_1005FFFE0(v10, type metadata accessor for DDMDeclaration);
    v20 = sub_1002346CC(v17, v18, &v56);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    v15[1] = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Error updating enterprise app %{public}s: %{public}@", v14, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v16);

    v53(v55, v54);
  }

  else
  {

    sub_1005FFFE0(v10, type metadata accessor for DDMDeclaration);
    v9(v11, v12);
  }

  sub_1005FFFE0(*(v0 + 536), type metadata accessor for EnterpriseApp);
  v22 = *(v0 + 688);
  v23 = *(v0 + 696) + 1;
  result = sub_1005FFFE0(*(v0 + 648), type metadata accessor for DDMDeclaration);
  if (v23 == v22)
  {
LABEL_5:

    sub_10000710C(v0 + 376);
    sub_10000710C(v0 + 240);

    v25 = *(v0 + 8);

    return v25();
  }

  while (1)
  {
    v28 = *(v0 + 696) + 1;
    *(v0 + 696) = v28;
    v29 = *(v0 + 672);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = *(v0 + 916);
    v31 = *(v0 + 608);
    v32 = *(v0 + 600);
    v33 = *(v0 + 592);
    sub_1005FFF78(v29 + ((*(v0 + 912) + 32) & ~*(v0 + 912)) + *(*(v0 + 624) + 72) * v28, *(v0 + 648), type metadata accessor for DDMDeclaration);
    (*(v32 + 104))(v31, v30, v33);
    LOBYTE(v30) = static DDMPurchaseMethod.== infix(_:_:)();
    (*(v32 + 8))(v31, v33);
    v34 = *(v0 + 648);
    if ((v30 & 1) != 0 && !*(v34 + 40))
    {
      break;
    }

LABEL_9:
    v26 = *(v0 + 688);
    v27 = *(v0 + 696) + 1;
    result = sub_1005FFFE0(v34, type metadata accessor for DDMDeclaration);
    if (v27 == v26)
    {
      goto LABEL_5;
    }
  }

  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v37 = *(v0 + 544);
  sub_100337114(v34 + *(*(v0 + 616) + 80), v37);
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    sub_1000032A8(*(v0 + 544), &unk_1007809F0);
    v34 = *(v0 + 648);
    goto LABEL_9;
  }

  v38 = *(v0 + 584);
  v39 = *(v0 + 576);
  v40 = *(v0 + 568);
  v41 = *(v0 + 560);
  v42 = *(v0 + 552);
  v43 = *(v0 + 416);
  (*(v41 + 32))(v38, *(v0 + 544), v42);
  v44 = [objc_opt_self() ephemeralSessionConfiguration];
  [v44 setHTTPShouldSetCookies:0];
  [v44 setHTTPCookieAcceptPolicy:1];
  [v44 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v45 = [objc_opt_self() sessionWithConfiguration:v44];

  type metadata accessor for PlainHTTP();
  v46 = swift_allocObject();
  *(v0 + 704) = v46;
  *(v46 + 24) = 1;
  *(v46 + 16) = v45;
  v47 = *(v41 + 16);
  v47(v39, v38, v42);

  v48 = v43;
  v47(v40, v39, v42);

  v49 = v48;
  v50 = swift_task_alloc();
  *(v0 + 712) = v50;
  *v50 = v0;
  v50[1] = sub_1005FBFEC;
  v51 = *(v0 + 568);
  v52 = *(v0 + 416);

  return sub_10035A314(v51, v46, v52);
}

uint64_t sub_1005FFF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005FFFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100600040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10060008C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  String.append(_:)(v11);
  if (a1 == 1)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  else
  {
  }

  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);

  return v14;
}

void sub_10060014C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v48 = a2;
  v51 = 46;
  v52 = 0xE100000000000000;
  sub_100005E50();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = v8;
  v10 = *(v8 + 2);
  if (v10)
  {
    if (*(v8 + 4) != 7829367 || *(v8 + 5) != 0xE300000000000000)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_12;
      }

      v10 = *(v9 + 2);
      if (!v10)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v9;
    if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 3) >> 1)
    {
      v9 = sub_100009530(isUniquelyReferenced_nonNull_native, v10, 1, v9);
      v51 = v9;
    }

    sub_100009640(0, 1, 0);
  }

LABEL_12:
  v13 = *(v9 + 2);
  if (!v13)
  {
    static Logger.general.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "URL does not have a valid host.", v19, 2u);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_25;
  }

  if (v13 == 1)
  {
LABEL_25:

    return;
  }

  v14 = v9 + 40;
  v15 = v13 + 1;
  while (--v15)
  {
    if (*(v14 - 1))
    {
      v16 = 0;
    }

    else
    {
      v16 = *v14 == 0xE000000000000000;
    }

    if (!v16)
    {
      v14 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  v46 = v9 + 32;
  if (v13 > *(v9 + 2))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = &v46[16 * v13];
  v21 = *(v20 - 2);
  v22 = *(v20 - 1);
  v47 = 46;
  v48 = 0xE100000000000000;

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  String.append(_:)(v24);

  v26 = v47;
  v25 = v48;
  v27 = String._bridgeToObjectiveC()();
  LODWORD(v22) = _CFHostIsDomainTopLevel();

  HIDWORD(v45) = v22;
  if (v22)
  {
    v28 = &v9[16 * v13 + 8];
    v29 = v13;
    while (--v29 >= 1)
    {
      if (v29 > *(v9 + 2))
      {
        goto LABEL_41;
      }

      v30 = *(v28 - 1);
      v31 = *v28;
      v47 = 46;
      v48 = 0xE100000000000000;

      v32._countAndFlagsBits = v30;
      v32._object = v31;
      String.append(_:)(v32);

      v33._countAndFlagsBits = v26;
      v33._object = v25;
      String.append(_:)(v33);

      v26 = v47;
      v25 = v48;
      v34 = String._bridgeToObjectiveC()();
      LODWORD(v30) = _CFHostIsDomainTopLevel();

      v28 -= 2;
      if (!v30)
      {
        goto LABEL_34;
      }
    }

    v35 = v46;

    goto LABEL_37;
  }

  v29 = v13;
LABEL_34:

  v35 = v46;
  if (!HIDWORD(v45))
  {
    goto LABEL_25;
  }

LABEL_37:
  v36 = *(v9 + 2);
  if (v36 < v29)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v9;
  v48 = v35;
  v49 = v29;
  v50 = (2 * v36) | 1;

  sub_1001F0C48(&qword_100789838);
  sub_1006005F0();
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  v40 = v29 - 1;
  if ((v29 - 1) < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v40 < *(v9 + 2))
  {
    v41 = (v35 + 16 * v40);
    v42 = v41[1];
    v47 = *v41;
    v48 = v42;

    v43._countAndFlagsBits = 46;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44._countAndFlagsBits = v37;
    v44._object = v39;
    String.append(_:)(v44);

    return;
  }

LABEL_45:
  __break(1u);
}

unint64_t sub_1006005F0()
{
  result = qword_100789840;
  if (!qword_100789840)
  {
    sub_1001F76D0(&qword_100789838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789840);
  }

  return result;
}

void *sub_100600654()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_10060072C;
  v1[3] = 0;
  v1[4] = 0xD000000000000016;
  v1[5] = 0x80000001006CD370;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_10060072C()
{
  strcpy(v42, "declaration_id");
  v42[15] = -18;
  v0 = 1415071060;
  v1 = 0xE400000000000000;
  v43 = 1415071060;
  v44 = 0xE400000000000000;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v37[0] = 0x746172616C636564;
  v37[1] = 0xEF79656B5F6E6F69;
  v37[2] = 1415071060;
  v37[3] = 0xE400000000000000;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v32[0] = 0x6574617473;
  v32[1] = 0xE500000000000000;
  type metadata accessor for ManagedAppStatus.State();
  v2 = swift_dynamicCastMetatype();
  v3 = 0uLL;
  v4 = 1415071060;
  if (!v2)
  {
    v4 = 0x52454745544E49;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v1 = 0xE700000000000000;
    }

    else
    {
      v4 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v4 = 1145656661;
        }

        else
        {
          v4 = 1112493122;
        }
      }
    }

    v3 = 0uLL;
  }

  v32[2] = v4;
  v32[3] = v1;
  v33 = v3;
  v34 = v3;
  v35 = v3;
  v36 = 1;
  strcpy(v25, "update_state");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  type metadata accessor for ManagedAppStatus.UpdateState();
  v5 = swift_dynamicCastMetatype();
  v6 = 0xE400000000000000;
  if (!v5)
  {
    v0 = 0x52454745544E49;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v0 = 1279346002;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        type metadata accessor for UUID();
        if (swift_dynamicCastMetatype())
        {
          v0 = 1145656661;
        }

        else
        {
          v0 = 1112493122;
        }
      }

      v6 = 0xE400000000000000;
    }
  }

  v26 = v0;
  v27 = v6;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v20[0] = 0x736E6F73616572;
  v20[1] = 0xE700000000000000;
  v20[2] = 1112493122;
  v20[3] = 0xE400000000000000;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  strcpy(v19, "declaration_id");
  HIBYTE(v19[1]) = -18;
  v7._countAndFlagsBits = 2019846495;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  v8 = v19[0];
  v9 = v19[1];
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E990;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  sub_1002783D8(v42, v11 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  sub_1002783D8(v37, v12 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v13 = swift_allocObject();
  *(inited + 112) = v13;
  sub_1002783D8(v32, v13 + 16);
  *(inited + 176) = &type metadata for SQLiteColumn;
  *(inited + 184) = &off_10076CDE0;
  v14 = swift_allocObject();
  *(inited + 152) = v14;
  sub_1002783D8(v25, v14 + 16);
  *(inited + 216) = &type metadata for SQLiteColumn;
  *(inited + 224) = &off_10076CDE0;
  v15 = swift_allocObject();
  *(inited + 192) = v15;
  sub_1002783D8(v20, v15 + 16);
  *(inited + 256) = &type metadata for SQLiteIndex;
  *(inited + 264) = &off_10076CDD8;
  v16 = swift_allocObject();
  *(inited + 232) = v16;
  strcpy((v16 + 16), "declaration_id");
  *(v16 + 31) = -18;
  *(v16 + 32) = v8;
  *(v16 + 40) = v9;
  *(v16 + 48) = 1;
  v17 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v20);
  sub_100278434(v25);
  sub_100278434(v32);
  sub_100278434(v37);
  sub_100278434(v42);
  return v17;
}

uint64_t sub_100600BD8(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100789B68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_100603544();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus(0);
    v14 = 2;
    type metadata accessor for ManagedAppStatus.State();
    sub_100602C84(&qword_100789950, &type metadata accessor for ManagedAppStatus.State);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    type metadata accessor for ManagedAppStatus.UpdateState();
    sub_100602C84(&qword_100789968, &type metadata accessor for ManagedAppStatus.UpdateState);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_1001F0C48(&qword_100787518);
    sub_100602E04(&qword_100789958, &qword_100789960);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100600EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v3 - 8);
  v22 = v20 - v4;
  v5 = type metadata accessor for ManagedAppStatus.State();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F0C48(&qword_100789B58);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus(0);
  __chkstk_darwin(v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006D8C(a1, a1[3]);
  sub_100603544();
  v25 = v9;
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000710C(a1);
  }

  v14 = v23;
  v15 = v24;
  v33 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v16;
  v27 = v16;
  v32 = 1;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v17;
  v31 = 2;
  sub_100602C84(&qword_100787510, &type metadata accessor for ManagedAppStatus.State);
  v20[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v12 + v10[6], v7, v5);
  type metadata accessor for ManagedAppStatus.UpdateState();
  v30 = 3;
  sub_100602C84(&qword_100787580, &type metadata accessor for ManagedAppStatus.UpdateState);
  v18 = v22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100603598(v18, v12 + v10[7]);
  sub_1001F0C48(&qword_100787518);
  v29 = 4;
  sub_100602E04(&qword_100787520, &qword_100787528);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v25, v26);
  *(v12 + v10[8]) = v28;
  sub_100602D3C(v12, v21, type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus);
  sub_10000710C(a1);
  return sub_100602DA4(v12, type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus);
}

unint64_t sub_100601438()
{
  v1 = *v0;
  v2 = 0x746172616C636564;
  v3 = 0x6574617473;
  v4 = 0x7453657461647075;
  if (v1 != 3)
  {
    v4 = 0x736E6F73616572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1006014E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100603608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100601510(uint64_t a1)
{
  v2 = sub_100603544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10060154C(uint64_t a1)
{
  v2 = sub_100603544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006015B8(id *a1)
{
  v2 = v1;
  v92 = a1;
  v3 = type metadata accessor for CocoaError.Code();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v5 - 8);
  v95 = &v76 - v6;
  v7 = type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v94 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DDMDeclarationStatus(0);
  v10 = __chkstk_darwin(v93);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v76 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v82 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v76 - v19;
  v21 = v100;
  v22 = Data.init(contentsOf:options:)();
  if (v21)
  {
    v25 = v90;
    v24 = v91;
    v26 = v89;
    v27 = v16;
  }

  else
  {
    v99 = v20;
    v100 = v14;
    v88 = v12;
    v80 = v16;
    v81 = v15;
    v79 = v2;
    v28 = v22;
    v29 = v23;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v30 = PropertyListDecoder.init()();
    sub_1001F0C48(&qword_100789930);
    sub_100602BD0();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v87 = v30;
    v77 = v28;
    v78 = v29;
    v40 = v101;
    v86 = v101[2];
    if (!v86)
    {
LABEL_19:

      v70 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(&var18);
      v72 = v71;
      v101 = 0;
      v73 = [v70 removeItemAtURL:v71 error:&v101];

      if (v73)
      {
        v74 = v101;

        return sub_100007158(v77, v78);
      }

      else
      {
        v75 = v101;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        sub_100007158(v77, v78);
      }
    }

    v41 = v99;
    static Logger.ddm.getter();

    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = v42[2];

      _os_log_impl(&_mh_execute_header, v43, v44, "Migrating %{public}ld legacy declaration statuses", v45, 0xCu);
    }

    else
    {
    }

    v46 = v95;
    v47 = v93;
    v48 = v42;
    (*(v80 + 8))(v41, v81);
    v49 = 0;
    v50 = v94;
    v83 = v7;
    v84 = v8;
    v85 = v48;
    while (1)
    {
      if (v49 >= v48[2])
      {
        __break(1u);
      }

      v51 = v48 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49;
      v96 = type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus;
      sub_100602D3C(v51, v50, type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus);
      v52 = *v50;
      v53 = *(v50 + 1);
      v54 = *(v50 + 3);
      v97 = *(v50 + 2);
      v98 = v52;
      v99 = 0;
      v55 = v7[6];
      v56 = v47[7];
      v57 = type metadata accessor for ManagedAppStatus.State();
      (*(*(v57 - 8) + 16))(v100 + v56, &v50[v55], v57);
      sub_100602CCC(&v50[v7[7]], v46);
      v58 = *&v50[v7[8]];
      v59 = v47[8];
      updated = type metadata accessor for ManagedAppStatus.UpdateState();
      (*(*(updated - 8) + 56))(v100 + v59, 1, 1, updated);
      v61 = v47[9];

      v62 = v50;
      v63 = v100;
      sub_100602DA4(v62, v96);
      v64 = v97;
      v65 = v98;
      *v63 = 0;
      v63[1] = v65;
      v63[2] = v53;
      v63[3] = v64;
      v63[4] = v54;
      sub_100310AE0(v46, v63 + v59);
      *(v63 + v61) = v58;
      v66 = v88;
      sub_100602D3C(v63, v88, type metadata accessor for DDMDeclarationStatus);
      v67 = *v92;
      v68 = v99;
      v69 = sub_10056565C(v66, v67);
      if (v68)
      {
        break;
      }

      ++v49;
      sub_100602DA4(v63, type metadata accessor for DDMDeclarationStatus);
      v50 = v94;
      v46 = v95;
      v7 = v83;
      v8 = v84;
      v47 = v93;
      v48 = v85;
      if (v86 == v49)
      {
        goto LABEL_19;
      }
    }

    sub_100007158(v77, v78);
    sub_100602DA4(v63, type metadata accessor for DDMDeclarationStatus);
    v15 = v81;
    v27 = v80;
    v25 = v90;
    v24 = v91;
    v26 = v89;
  }

  swift_errorRetain();
  static CocoaError.fileReadNoSuchFile.getter();
  sub_100602C84(&qword_1007804F0, &type metadata accessor for CocoaError.Code);
  v31 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v25 + 8))(v26, v24);
  if (v31)
  {
  }

  v33 = v82;
  static Logger.ddm.getter();
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v27;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to read declaration status from disk: %{public}@", v37, 0xCu);
    sub_1000032A8(v38, &qword_10077F920);

    v27 = v36;
  }

  else
  {
  }

  return (*(v27 + 8))(v33, v15);
}

Swift::Int sub_100601F4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100602038()
{
  String.hash(into:)();
}

Swift::Int sub_100602110()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006021F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006037CC(*a1);
  *a2 = result;
  return result;
}

void sub_100602228(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064695F6E6F69;
  v4 = 0xE500000000000000;
  v5 = 0x6574617473;
  v6 = 0xEC00000065746174;
  v7 = 0x735F657461647075;
  if (v2 != 3)
  {
    v7 = 0x736E6F73616572;
    v6 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEF79656B5F6E6F69;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x746172616C636564;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

id sub_100602494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDMDeclarationStatusEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100602554()
{
  v1 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v1 - 8);
  v3 = v19 - v2;
  sub_1001F0C48(&qword_100789948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = 0;
  v19[1] = inited + 32;
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 88) = 1;
  v7 = *(v0 + 3);
  v8 = *(v0 + 4);
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = &protocol witness table for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  *(inited + 144) = 2;
  v9 = type metadata accessor for DDMDeclarationStatus(0);
  v10 = v9[7];
  v11 = type metadata accessor for ManagedAppStatus.State();
  *(inited + 176) = v11;
  *(inited + 184) = sub_100602C84(&qword_100787510, &type metadata accessor for ManagedAppStatus.State);
  *(inited + 192) = sub_100602C84(&qword_100789950, &type metadata accessor for ManagedAppStatus.State);
  v12 = sub_10020A748((inited + 152));
  (*(*(v11 - 8) + 16))(v12, &v0[v10], v11);
  *(inited + 200) = 3;
  sub_100602CCC(&v0[v9[8]], v3);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v14 = *(updated - 8);
  if ((*(v14 + 48))(v3, 1, updated) == 1)
  {

    sub_1000032A8(v3, &qword_10077F3A0);
    *(inited + 208) = 0u;
    *(inited + 224) = 0u;
    *(inited + 240) = 0u;
  }

  else
  {
    *(inited + 232) = updated;
    *(inited + 240) = sub_100602C84(&qword_100787580, &type metadata accessor for ManagedAppStatus.UpdateState);
    *(inited + 248) = sub_100602C84(&qword_100789968, &type metadata accessor for ManagedAppStatus.UpdateState);
    v15 = sub_10020A748((inited + 208));
    (*(v14 + 32))(v15, v3, updated);
  }

  *(inited + 256) = 4;
  v16 = *&v0[v9[9]];
  *(inited + 288) = sub_1001F0C48(&qword_100787518);
  *(inited + 296) = sub_100602E04(&qword_100787520, &qword_100787528);
  *(inited + 304) = sub_100602E04(&qword_100789958, &qword_100789960);
  *(inited + 264) = v16;

  v17 = sub_100529978(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100786FE0);
  swift_arrayDestroy();
  return sub_1004E6E8C(v17);
}

uint64_t sub_10060295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_10077F3A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ManagedAppStatus.State();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DDMDeclarationStatus(0);
  v14 = v13[8];
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  (*(*(updated - 8) + 56))(&a3[v14], 1, 1, updated);
  *a3 = a1;
  sub_1005E86C8(0, a2);
  if (v3)
  {

    return sub_1000032A8(&a3[v14], &qword_10077F3A0);
  }

  else
  {
    v25 = v10;
    v18 = v26;
    *(a3 + 1) = v16;
    *(a3 + 2) = v17;
    sub_1005E86C8(1, a2);
    *(a3 + 3) = v19;
    *(a3 + 4) = v20;
    v24 = v20;
    sub_1005E8920(2u, a2, v12);
    (*(v18 + 32))(&a3[v13[7]], v12, v25);
    sub_1005EBED8(3u, a2, v9);
    sub_100310AE0(v9, &a3[v14]);
    v22 = sub_1005EBDE8(4u, a2);

    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      v23 = v22;
    }

    *&a3[v13[9]] = v23;
  }

  return result;
}

unint64_t sub_100602BD0()
{
  result = qword_100789938;
  if (!qword_100789938)
  {
    sub_1001F76D0(&qword_100789930);
    sub_100602C84(&qword_100789940, type metadata accessor for DDMDeclarationStatusDatabaseConfig.LegacyDeclarationStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789938);
  }

  return result;
}

uint64_t sub_100602C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100602CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100602D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100602DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100602E04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_100787518);
    sub_100602C84(a2, &type metadata accessor for ManagedAppStatus.Reason);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100602EA0(void *a1)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v1 = sub_10023579C(&v9, a1);
  v3 = v2;
  if (*(&v10 + 1))
  {
    sub_10000710C(&v9);
  }

  *&v9 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = *(v3 + 8 * v6 + 32);
      type metadata accessor for DDMDeclarationStatusEntity.Entity();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:v1];
      if (([v8 existsInDatabase] & 1) == 0)
      {

        v1 = v8;
        goto LABEL_10;
      }

      ++v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

LABEL_10:

    return v9;
  }

  return result;
}

void sub_100603030()
{
  type metadata accessor for ManagedAppStatus.State();
  if (v0 <= 0x3F)
  {
    sub_10060314C(319, &qword_1007899D8, &type metadata accessor for ManagedAppStatus.UpdateState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10060314C(319, &unk_1007899E0, &type metadata accessor for ManagedAppStatus.Reason, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10060314C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1006031D8()
{
  type metadata accessor for ManagedAppStatus.State();
  if (v0 <= 0x3F)
  {
    sub_10060314C(319, &qword_1007899D8, &type metadata accessor for ManagedAppStatus.UpdateState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10060314C(319, &unk_1007899E0, &type metadata accessor for ManagedAppStatus.Reason, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1006032F8()
{
  result = qword_100789AC0;
  if (!qword_100789AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789AC0);
  }

  return result;
}

unint64_t sub_100603350()
{
  result = qword_100789AF8;
  if (!qword_100789AF8)
  {
    sub_1001F76D0(&qword_100789B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789AF8);
  }

  return result;
}

unint64_t sub_1006033B8()
{
  result = qword_100789B08;
  if (!qword_100789B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B08);
  }

  return result;
}

unint64_t sub_100603410(void *a1)
{
  a1[1] = sub_100603448();
  a1[2] = sub_10060349C();
  result = sub_1006034F0();
  a1[3] = result;
  return result;
}

unint64_t sub_100603448()
{
  result = qword_100789B40;
  if (!qword_100789B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B40);
  }

  return result;
}

unint64_t sub_10060349C()
{
  result = qword_100789B48;
  if (!qword_100789B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B48);
  }

  return result;
}

unint64_t sub_1006034F0()
{
  result = qword_100789B50;
  if (!qword_100789B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B50);
  }

  return result;
}

unint64_t sub_100603544()
{
  result = qword_100789B60;
  if (!qword_100789B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B60);
  }

  return result;
}

uint64_t sub_100603598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100603608(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001006CED30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453657461647075 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
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

unint64_t sub_1006037CC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B408, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10060382C()
{
  result = qword_100789B70;
  if (!qword_100789B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B70);
  }

  return result;
}

unint64_t sub_100603884()
{
  result = qword_100789B78;
  if (!qword_100789B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B78);
  }

  return result;
}

unint64_t sub_1006038DC()
{
  result = qword_100789B80;
  if (!qword_100789B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B80);
  }

  return result;
}

uint64_t sub_100603940()
{
  v1[10] = v0;
  v2 = type metadata accessor for Logger();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100603A00, 0, 0);
}

uint64_t sub_100603A00()
{
  v1 = sub_100603BFC();
  if (v2)
  {
    v3 = v2;
    if (v1)
    {
      v4 = *(v0 + 80);

      static Logger.daemon.getter();
      v5 = *v4;
      *(v0 + 16) = *(v4 + 8);
      *(v0 + 32) = *(v4 + 24);
      v6 = v5;
      sub_100222DF8(v0 + 16, v0 + 48);
      sub_100222DF8(v0 + 32, v0 + 64);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      sub_10023215C(v0 + 16);
      sub_10023215C(v0 + 32);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v6;
        *v10 = v6;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Found marketplace priority list, migrating to LS.", v9, 0xCu);
        sub_1000032A8(v10, &qword_10077F920);
      }

      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 88);

      (*(v13 + 8))(v12, v14);
      v15 = sub_1006041C8();

      if (v15)
      {
        sub_1006050A0(v3);
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100603BFC()
{
  v1 = type metadata accessor for Logger();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100604600(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_1007809F0);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v29 = *(v0 + 24);
    v30 = v29;
    (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
    sub_100005E50();

    URL.appending<A>(component:directoryHint:)();
    (*(v4 + 8))(v6, v3);
    sub_10023215C(&v30);
    v17 = [objc_opt_self() defaultManager];
    URL.path(percentEncoded:)(1);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 fileExistsAtPath:v18];

    if (v19)
    {
      v20 = Data.init(contentsOf:options:)();
      v22 = v21;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100605994();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_100007158(v20, v22);
      v24 = *(v11 + 8);
      v24(v14, v10);
      v24(v16, v10);
      return v29;
    }

    v23 = *(v11 + 8);
    v23(v14, v10);
    v23(v16, v10);
  }

  return 0;
}

uint64_t sub_1006041C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v32[-v6];
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *&v35 = 0;
    v11 = [v9 setPreferredAppMarketplaces:isa error:&v35];

    if (v11)
    {
      v12 = v35;

      return 1;
    }

    v22 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.daemon.getter();
    v23 = *v0;
    v24 = *(v0 + 8);
    v34 = *(v0 + 24);
    v35 = v24;
    v25 = v23;
    sub_100222DF8(&v35, v33);
    sub_100222DF8(&v34, v33);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    sub_10023215C(&v35);
    sub_10023215C(&v34);

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2112;
      v30 = v25;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Error when setting marketplace priority list in LSApplicationWorkspace: %@", v28, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    static Logger.daemon.getter();
    v14 = *v0;
    v15 = *(v0 + 8);
    v34 = *(v0 + 24);
    v35 = v15;
    v16 = v14;
    sub_100222DF8(&v35, v33);
    sub_100222DF8(&v34, v33);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    sub_10023215C(&v35);
    sub_10023215C(&v34);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Unable to migrate distributor priority list because LSApplicationWorkspace was unavailable", v19, 0xCu);
      sub_1000032A8(v20, &qword_10077F920);
    }

    (*(v2 + 8))(v7, v1);
  }

  return 0;
}

void sub_100604600(char *a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v17 = container_system_path_for_identifier();
  v54 = v17;
  if (v55 <= 1 && v17)
  {
    v52 = a1;
    v53 = v4;
    v50 = v3;
    v18 = v1;
    v51 = *(v14 + 56);
    v51(v12, 1, 1, v13);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000032A8(v12, &unk_1007809F0);
    v19 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    *&v58 = 0;
    v23 = [v19 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v58];

    if (v23)
    {
      v24 = v58;
      v25 = v52;
    }

    else
    {
      v36 = v58;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.daemon.getter();
      v37 = *v18;
      v38 = *(v18 + 8);
      v57 = *(v18 + 24);
      v58 = v38;
      v39 = v37;
      sub_100222DF8(&v58, &v56);
      sub_100222DF8(&v57, &v56);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      sub_10023215C(&v58);
      sub_10023215C(&v57);

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v49 = v40;
        v43 = v42;
        v44 = swift_slowAlloc();
        *v43 = 138412546;
        *(v43 + 4) = v39;
        *v44 = v39;
        *(v43 + 12) = 2112;
        v45 = v39;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v46;
        v44[1] = v46;
        v47 = v41;
        v48 = v49;
        _os_log_impl(&_mh_execute_header, v49, v47, "[%@] Unable to obtain container path: %@", v43, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {
      }

      v25 = v52;
      (*(v53 + 8))(v7, v50);
    }

    (*(v14 + 32))(v25, v16, v13);
    v51(v25, 0, 1, v13);
    v35 = v54;
LABEL_14:
    free(v35);
    return;
  }

  static Logger.daemon.getter();
  v26 = *v1;
  v27 = *(v1 + 8);
  v56 = *(v1 + 24);
  v57 = v27;
  v28 = v26;
  sub_100222DF8(&v57, &v58);
  sub_100222DF8(&v56, &v58);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  sub_10023215C(&v57);
  sub_10023215C(&v56);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v53 = v4;
    v32 = v31;
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2048;
    swift_beginAccess();
    *(v32 + 14) = v55;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Unable to obtain container path: %llu", v32, 0x16u);
    sub_1000032A8(v33, &qword_10077F920);

    v4 = v53;
  }

  (*(v4 + 8))(v9, v3);
  (*(v14 + 56))(a1, 1, 1, v13);
  v35 = v54;
  if (v54)
  {
    goto LABEL_14;
  }
}

uint64_t sub_100604C28()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_100560BC8;

  return sub_100603940();
}

uint64_t sub_100604CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001F0C48(&qword_100789B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_1006059F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_1001F0C48(&unk_10077FB40);
  sub_100006DD0(&qword_100780CC0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100604EB0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x797469726F697270;
  }
}

uint64_t sub_100604EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469726F697270 && a2 == 0xEC0000007473694CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006CED50 == a2)
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

uint64_t sub_100604FE0(uint64_t a1)
{
  v2 = sub_1006059F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10060501C(uint64_t a1)
{
  v2 = sub_1006059F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100605058@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100605A4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1006050A0(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for Logger();
  v54 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v47 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v56 = &v47 - v19;
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  sub_100604600(v13);
  v22 = v14;
  v23 = v15;
  if ((*(v15 + 48))(v13, 1, v22) == 1)
  {
    return sub_1000032A8(v13, &unk_1007809F0);
  }

  v49 = v3;
  (*(v15 + 32))(v21, v13, v22);
  v59[0] = *(v2 + 24);
  *v57 = *(v2 + 24);
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  v51 = v22;
  sub_100005E50();

  URL.appending<A>(component:directoryHint:)();
  (*(v8 + 8))(v10, v7);
  sub_10023215C(v59);
  v25 = v52;
  static Logger.daemon.getter();
  v26 = *v2;
  v58 = *(v2 + 8);
  sub_100222DF8(v59, v57);
  v27 = v26;
  sub_100222DF8(&v58, v57);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  sub_10023215C(&v58);
  sub_10023215C(v59);
  v30 = os_log_type_enabled(v28, v29);
  v48 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v23;
    v33 = v32;
    v34 = swift_slowAlloc();
    v57[0] = v34;
    *v31 = 138412547;
    *(v31 + 4) = v27;
    *v33 = v27;
    *(v31 + 12) = 2081;
    swift_beginAccess();
    sub_1003C7308();
    v35 = v27;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = sub_1002346CC(v36, v37, v57);

    *(v31 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Removing marketplace priority list and saving preferences store to: %{private}s", v31, 0x16u);
    sub_1000032A8(v33, &qword_10077F920);
    v23 = v47;

    sub_10000710C(v34);
  }

  (*(v54 + 8))(v25, v49);
  v39 = v53;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();

  PropertyListEncoder.init()();
  v57[0] = 0;
  v57[1] = v39;
  sub_100605940();
  v40 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v42 = v41;

  v43 = v56;
  swift_beginAccess();
  v44 = v50;
  v45 = v51;
  (*(v23 + 16))(v50, v43, v51);
  Data.write(to:options:)();
  v46 = *(v23 + 8);
  v46(v44, v45);
  swift_beginAccess();
  LOBYTE(v44) = sub_1005D835C();
  swift_endAccess();
  if (v44)
  {
    swift_beginAccess();
    sub_1005D79D0(0);
    swift_endAccess();
    sub_100007158(v40, v42);
    v46(v48, v45);
  }

  else
  {
    v46(v48, v45);
    sub_100007158(v40, v42);
  }

  return (v46)(v43, v45);
}

unint64_t sub_100605940()
{
  result = qword_100789B88;
  if (!qword_100789B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B88);
  }

  return result;
}

unint64_t sub_100605994()
{
  result = qword_100789B90;
  if (!qword_100789B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789B90);
  }

  return result;
}

unint64_t sub_1006059F8()
{
  result = qword_100789BA0;
  if (!qword_100789BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BA0);
  }

  return result;
}

uint64_t sub_100605A4C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100789BA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_100006D8C(a1, v7);
  sub_1006059F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1001F0C48(&unk_10077FB40);
    v10 = 0;
    sub_100006DD0(&qword_100780CA8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v11;
    v10 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_100605C78()
{
  result = qword_100789BB0;
  if (!qword_100789BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BB0);
  }

  return result;
}

unint64_t sub_100605CD0()
{
  result = qword_100789BB8;
  if (!qword_100789BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BB8);
  }

  return result;
}

unint64_t sub_100605D28()
{
  result = qword_100789BC0;
  if (!qword_100789BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BC0);
  }

  return result;
}

uint64_t sub_100605D8C()
{
  String.hash(into:)();
}

uint64_t sub_100605EFC()
{
  String.hash(into:)();
}

uint64_t sub_100606010()
{
  String.hash(into:)();
}

Swift::Int sub_10060613C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10060624C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10060638C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1006064B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1006065D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100606724()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100606860()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10060696C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100606B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1 - 8);
  v12 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_10060AF08(v6, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_10060AF70(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, a5);
  return sub_100495060(0, 0, v14, a6, v17);
}

uint64_t sub_100606D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100606E50, 0, 0);
}

uint64_t sub_100606E50()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v0[21] = *v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_100606F18, 0, 0);
}

uint64_t sub_100606F18()
{
  sub_10060A8A4(*(v0 + 160), *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Task", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 168);
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

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10060A8A4(*(v0 + 152), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10060A914(*(v0 + 152));

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v23 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Task", 14, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_10060A914(v23);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B96B0;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  type metadata accessor for AppInstallTaskResult();
  *v20 = v0;
  v20[1] = sub_100607414;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B96C0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100607414()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1006075C4;
  }

  else
  {
    v2 = sub_10060B1DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006075C4()
{
  v1 = *(v0 + 160);

  sub_10060A914(v1);

  return _swift_task_switch(sub_10060B168, 0, 0);
}

uint64_t sub_10060769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1006077E4, 0, 0);
}

uint64_t sub_1006077E4()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v0[21] = *v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_1006078AC, 0, 0);
}

uint64_t sub_1006078AC()
{
  sub_10060A8A4(*(v0 + 160), *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Task", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 168);
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

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10060A8A4(*(v0 + 152), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10060A914(*(v0 + 152));

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v23 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Task", 14, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_10060A914(v23);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B9710;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  type metadata accessor for AppInstallTaskResult();
  *v20 = v0;
  v20[1] = sub_100607414;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B9718, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100607DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100607EF0, 0, 0);
}

uint64_t sub_100607EF0()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v0[21] = *v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_100607FB8, 0, 0);
}

uint64_t sub_100607FB8()
{
  sub_10060A8A4(*(v0 + 160), *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Task", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 168);
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

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10060A8A4(*(v0 + 152), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10060A914(*(v0 + 152));

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v23 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Task", 14, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_10060A914(v23);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B9760;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  type metadata accessor for AppInstallTaskResult();
  *v20 = v0;
  v20[1] = sub_100607414;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B9768, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1006084B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1006085FC, 0, 0);
}

uint64_t sub_1006085FC()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v0[21] = *v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_1006086C4, 0, 0);
}

uint64_t sub_1006086C4()
{
  sub_10060A8A4(*(v0 + 160), *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Task", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 168);
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

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10060A8A4(*(v0 + 152), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10060A914(*(v0 + 152));

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v23 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Task", 14, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_10060A914(v23);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B96E0;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  type metadata accessor for AppInstallTaskResult();
  *v20 = v0;
  v20[1] = sub_100608BC0;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B96E8, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100608BC0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100608E84;
  }

  else
  {
    v2 = sub_100608D70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100608D70()
{
  v1 = *(v0 + 160);

  sub_10060A914(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100608E84()
{
  v1 = *(v0 + 160);

  sub_10060A914(v1);

  return _swift_task_switch(sub_100608F5C, 0, 0);
}

uint64_t sub_100608F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100609024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10060916C, 0, 0);
}

uint64_t sub_10060916C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v0[21] = *v4;
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_100609234, 0, 0);
}

uint64_t sub_100609234()
{
  sub_10060A8A4(*(v0 + 160), *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Installer Task", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 168);
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

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10060A8A4(*(v0 + 152), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10060A914(*(v0 + 152));

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v23 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Installer Task", 14, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_10060A914(v23);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B9738;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  type metadata accessor for AppInstallTaskResult();
  *v20 = v0;
  v20[1] = sub_100607414;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_1006B9740, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100609730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_10032AC48(a1);
}

uint64_t sub_1006097CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_10035DF80(a1);
}

uint64_t sub_100609868(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_1005B24FC(a1);
}

uint64_t sub_100609904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001F0E54;

  return sub_10061DD6C(a1);
}

uint64_t sub_1006099A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100661400(a1);
}

unint64_t sub_100609A64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10060A464(*a1);
  *a2 = result;
  return result;
}

void sub_100609A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656C626D61657270;
  v5 = 0xE800000000000000;
  v6 = 0x64656873696E6966;
  if (v2 != 6)
  {
    v6 = 0x64656C696166;
    v5 = 0xE600000000000000;
  }

  v7 = 0x656C6C65636E6163;
  v8 = 0xE600000000000000;
  if (v2 == 4)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x646573756170;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C6174736E69;
  if (v2 != 2)
  {
    v10 = 0x6C626D6174736F70;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = 0x64616F6C6E776F64;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100609C44()
{
  result = qword_100789BC8;
  if (!qword_100789BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BC8);
  }

  return result;
}

uint64_t sub_100609C98()
{
  v1 = *v0;
  v2 = 0x656C626D61657270;
  v3 = 0x64656873696E6966;
  if (v1 != 6)
  {
    v3 = 0x64656C696166;
  }

  v4 = 0x656C6C65636E6163;
  if (v1 != 4)
  {
    v4 = 0x646573756170;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C6174736E69;
  if (v1 != 2)
  {
    v5 = 0x6C626D6174736F70;
  }

  if (*v0)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100609D90()
{
  v1 = v0;
  v2 = type metadata accessor for AppInstallTaskResult();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  sub_10060AF08(v1, &v42 - v7, type metadata accessor for AppInstallTaskResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v14 = *v8;
        strcpy(v44, "coordinator(");
        BYTE5(v44[1]) = 0;
        HIWORD(v44[1]) = -5120;
        v15 = [v14 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 41;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);

        return v44[0];
      }

      if (EnumCaseMultiPayload == 3)
      {
        v44[0] = 0;
        v44[1] = 0xE000000000000000;
        v10._countAndFlagsBits = 0x286C696166;
        v10._object = 0xE500000000000000;
        String.append(_:)(v10);
        swift_getErrorValue();
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v11._countAndFlagsBits = 41;
        v11._object = 0xE100000000000000;
        String.append(_:)(v11);

        return v44[0];
      }

      v34 = *v8;
      v44[0] = 0x287478656ELL;
      v44[1] = 0xE500000000000000;
      if (v34 <= 3)
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v35 = 0xE700000000000000;
            v36 = 0x6C6C6174736E69;
          }

          else
          {
            v35 = 0xE900000000000065;
            v36 = 0x6C626D6174736F70;
          }
        }

        else
        {
          v35 = 0xE800000000000000;
          if (v34)
          {
            v36 = 0x64616F6C6E776F64;
          }

          else
          {
            v36 = 0x656C626D61657270;
          }
        }

        goto LABEL_44;
      }

      if (v34 > 5)
      {
        if (v34 == 6)
        {
          v35 = 0xE800000000000000;
          v36 = 0x64656873696E6966;
          goto LABEL_44;
        }

        v35 = 0xE600000000000000;
        v40 = 1818845542;
      }

      else
      {
        if (v34 == 4)
        {
          v36 = 0x656C6C65636E6163;
          v35 = 0xE900000000000064;
LABEL_44:
          v38 = v35;
          goto LABEL_45;
        }

        v35 = 0xE600000000000000;
        v40 = 1937072496;
      }

      v36 = v40 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      goto LABEL_44;
    }

    v13 = *v8;
    if (EnumCaseMultiPayload)
    {
      v44[0] = 0x286B636F6C62;
      v44[1] = 0xE600000000000000;
    }

    else
    {
      strcpy(v44, "assetSize(");
      BYTE3(v44[1]) = 0;
      HIDWORD(v44[1]) = -369098752;
    }

    v43 = v13;
LABEL_29:
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_45:
    String.append(_:)(*&v36);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    return v44[0];
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_10060A408(v8);
      return 1802658160;
    }

    v37 = *v8;
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v44, "requestCount(");
    HIWORD(v44[1]) = -4864;
    v43 = v37;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v21 = *v8;
    v22 = *(*v8 + 16);
    if (v22)
    {
      v44[0] = _swiftEmptyArrayStorage;
      sub_100526304(0, v22, 0);
      v23 = v44[0];
      v24 = *(v3 + 80);
      v42 = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v26 = *(v3 + 72);
      do
      {
        v27 = sub_10060AF08(v25, v6, type metadata accessor for AppInstallTaskResult);
        v28 = sub_100609D90(v27);
        v30 = v29;
        sub_10060A408(v6);
        v44[0] = v23;
        v32 = v23[2];
        v31 = v23[3];
        if (v32 >= v31 >> 1)
        {
          sub_100526304((v31 > 1), v32 + 1, 1);
          v23 = v44[0];
        }

        v23[2] = v32 + 1;
        v33 = &v23[2 * v32];
        v33[4] = v28;
        v33[5] = v30;
        v25 += v26;
        --v22;
      }

      while (v22);
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    v44[0] = v23;
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v39 = BidirectionalCollection<>.joined(separator:)();

    return v39;
  }

  else if (EnumCaseMultiPayload == 8)
  {
    return 0x6873696E6966;
  }

  else
  {
    return 7368558;
  }
}

uint64_t type metadata accessor for AppInstallTaskResult()
{
  result = qword_100789C48;
  if (!qword_100789C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060A408(uint64_t a1)
{
  v2 = type metadata accessor for AppInstallTaskResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10060A464(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B4C8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10060A4B0()
{
  result = qword_100789BD0;
  if (!qword_100789BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789BD0);
  }

  return result;
}

void sub_10060A504()
{
  sub_10060A65C(319, &qword_100789C58);
  if (v0 <= 0x3F)
  {
    sub_1005119D0();
    if (v1 <= 0x3F)
    {
      sub_10060A5F8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppInstallScheduler.ParkReason(319);
        if (v3 <= 0x3F)
        {
          sub_10060A65C(319, &qword_100789C68);
          if (v4 <= 0x3F)
          {
            sub_10060A6BC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10060A5F8()
{
  result = qword_100789C60;
  if (!qword_100789C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100789C60);
  }

  return result;
}

void sub_10060A65C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10060A6BC()
{
  if (!qword_100789C70)
  {
    type metadata accessor for AppInstallTaskResult();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100789C70);
    }
  }
}

uint64_t sub_10060A714(uint64_t a1)
{
  v4 = *(type metadata accessor for IPA_PreambleTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100606D08(a1, v6, v7, v1 + v5);
}

uint64_t sub_10060A804(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100609730(a1);
}

uint64_t sub_10060A8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_10077F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060A914(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_10077F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10060A97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100214EFC;

  return sub_100560A5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10060AA58(uint64_t a1)
{
  v4 = *(type metadata accessor for IPA_DownloadTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_1006084B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10060AB48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100609904(a1);
}

uint64_t sub_10060ABE8(uint64_t a1)
{
  v4 = *(type metadata accessor for IPA_InstallTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10060769C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10060ACD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_1006097CC(a1);
}

uint64_t sub_10060AD78(uint64_t a1)
{
  v4 = *(type metadata accessor for IPA_PostambleTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100609024(a1, v6, v7, v1 + v5);
}

uint64_t sub_10060AE68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_1006099A0(a1);
}

uint64_t sub_10060AF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10060AF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10060AFD8(uint64_t a1)
{
  v4 = *(type metadata accessor for IPA_FailTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100607DA8(a1, v6, v7, v1 + v5);
}

uint64_t sub_10060B0C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100609868(a1);
}

uint64_t sub_10060B168()
{

  return sub_100608F5C();
}

uint64_t sub_10060B1DC()
{

  return sub_100608D70();
}

BOOL sub_10060B250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005D772C();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1005D772C();
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v8;
  v11 = v9;
  if (v6 == v8 && v7 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (!*(a3 + 16))
  {

    goto LABEL_14;
  }

  v13 = sub_10052213C(v6, v7);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  v17 = *(*(a3 + 56) + 8 * v13);
  v20[0] = v10;
  v20[1] = v11;
  __chkstk_darwin(v16);
  v19[2] = v20;

  v18 = sub_10020A1BC(sub_1001F7FFC, v19, v17);

  return (v18 & 1) != 0;
}

uint64_t sub_10060B3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10020A6D0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_10060B410(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10051B1C8(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1001F6498(v44, v42);
  v14 = *a5;
  result = sub_10052213C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1005BF7F4(v20, a4 & 1);
    result = sub_10052213C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1005C70EC();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_10000710C(v25);
    sub_1001F6498(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1001F6498(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_10051B1C8(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1001F6498(v44, v42);
        v32 = *a5;
        result = sub_10052213C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1005BF7F4(v36, 1);
          result = sub_10052213C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_10000710C(v31);
          sub_1001F6498(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1001F6498(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_10051B1C8(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1001DFE18();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10060B720(uint64_t a1, uint64_t a2)
{
  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v6 = sub_100528684(inited);
  swift_setDeallocating();
  result = sub_1000032A8(inited + 32, &unk_10077F9B0);
  v27 = v6;
  if (*(a1 + 16) != 1)
  {
    if ((*(a1 + 32) & 1) != 0 || (v8 = *(a1 + 40)) == 0)
    {
      __break(1u);
      return result;
    }

    v9 = *(a1 + 24);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1006A4050;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 72) = &type metadata for String;
    *(v13 + 40) = v14;
    *(v13 + 48) = v10;
    *(v13 + 56) = v12;
    *(v13 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 88) = v15;
    *(v13 + 120) = &type metadata for Int;
    *(v13 + 96) = v9;
    *(v13 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 136) = v16;
    *(v13 + 168) = sub_1001F0C48(&unk_10077FB40);
    *(v13 + 144) = v8;

    v17 = sub_100528684(v13);
    swift_setDeallocating();
    sub_1001F0C48(&unk_10077F9B0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v6;
    sub_10060B410(v17, sub_10060B3C4, 0, isUniquelyReferenced_nonNull_native, &v25);

    v6 = v25;
    v27 = v25;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v19;
  v22 = v20;
  if (a2)
  {
    v26 = sub_1001F0C48(&qword_100782D80);
    *&v25 = a2;
    sub_1001F6498(&v25, v24);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1005C3158(v24, v21, v22, v23);

    return v6;
  }

  else
  {
    sub_1004FB7C4(v19, v20, &v25);

    sub_1000032A8(&v25, &qword_100783A30);
    return v27;
  }
}