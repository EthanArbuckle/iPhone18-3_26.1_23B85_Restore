uint64_t sub_1000014D8()
{
  v0 = type metadata accessor for Logger();
  sub_100001558(v0, qword_100010A80);
  sub_1000015BC(v0, qword_100010A80);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001558(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000015BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000015F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100001558(v0, qword_100010A98);
  sub_1000015BC(v0, qword_100010A98);
  sub_100001FCC(&qword_1000107A0, &qword_100008498);
  v1 = (sub_100001FCC(&qword_1000107A8, &qword_1000084A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100008310;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "server_state";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_state";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000017BC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_10000183C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = v0 + *(type metadata accessor for CombinedState() + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100001950@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_100008320;
  a2[1] = xmmword_100008320;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000019A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100001A18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_100001A8C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_100001AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025F4(&qword_100010798, type metadata accessor for CombinedState);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100001B68@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010758 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_1000015BC(v2, qword_100010A98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001C10(uint64_t a1)
{
  v2 = sub_1000025F4(&qword_100010780, type metadata accessor for CombinedState);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100001C7C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001CD4()
{
  sub_1000025F4(&qword_100010780, type metadata accessor for CombinedState);

  return Message.hash(into:)();
}

Swift::Int sub_100001D50()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100001DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10000248C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_10000248C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  sub_1000025F4(&qword_1000107B0, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata accessor for CombinedState()
{
  result = qword_100010810;
  if (!qword_100010810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001FCC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002014@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100002244(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000023D4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100002690(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100002014(v13, a3, a4, &v12);
  v10 = v4;
  sub_100002690(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000023D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100002014(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10000248C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000263C(a3, a4);
          return sub_100002244(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000025F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000263C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000026F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000027C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002870()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1000028EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000040D0(a1))
  {

    return sub_100002BA8(a1, a2);
  }

  else
  {
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000015BC(v10, qword_100010A80);
    (*(v5 + 16))(v8, a1, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v5 + 8))(v8, v4);
      v18 = sub_100005668(v15, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "URL is not a BankConnect universal link: %s", v13, 0xCu);
      sub_1000046F0(v14);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }
}

id sub_100002BA8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  if (sub_1000048A4(a1) == 1)
  {
    sub_100003460(v21);
  }

  else
  {
    sub_100003714(v21);
  }

  sub_100005218(v21, v19, &qword_100010880, &qword_1000084F0);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_100005290(v19, &qword_100010880, &qword_1000084F0);
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000015BC(v22, qword_100010A80);
    (*(v5 + 16))(v9, a1, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v5 + 8))(v9, v4);
      v30 = sub_100005668(v27, v29, &v52);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create authorization URL from universalLink: %s", v25, 0xCu);
      sub_1000046F0(v26);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    sub_100005290(v21, &qword_100010880, &qword_1000084F0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v14, v19, v4);
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v50 = a2;
    v51 = v21;
    v31 = type metadata accessor for Logger();
    sub_1000015BC(v31, qword_100010A80);
    (*(v5 + 16))(v12, v14, v4);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = v34;
      v49 = swift_slowAlloc();
      v52 = v49;
      *v34 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v5 + 8);
      v38(v12, v4);
      v39 = sub_100005668(v35, v37, &v52);

      v40 = v48;
      *(v48 + 1) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Opening BankConnect authorization URL: %s", v40, 0xCu);
      sub_1000046F0(v49);
    }

    else
    {

      v38 = *(v5 + 8);
      v38(v12, v4);
    }

    URL._bridgeToObjectiveC()(v41);
    v44 = v43;
    sub_100005094(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v46 = [v50 openSensitiveURL:v44 withOptions:isa];

    v38(v14, v4);
    sub_100005290(v51, &qword_100010880, &qword_1000084F0);
    return v46;
  }
}

uint64_t sub_100003200()
{
  v0 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100001558(v4, qword_100010850);
  v5 = sub_1000015BC(v4, qword_100010850);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003330()
{
  v0 = (*(*(sub_100001FCC(&qword_100010880, &qword_1000084F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100001558(v3, qword_100010868);
  v4 = sub_1000015BC(v3, qword_100010868);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003460@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  if (qword_100010768 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for URL();
  sub_1000015BC(v12, qword_100010868);
  v25 = URL.absoluteString.getter();
  v14 = v13;
  static CharacterSet.alphanumerics.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v15 = *(v2 + 8);
  v15(v6, v1);
  v15(v9, v1);
  v27 = URL.absoluteString.getter();
  v28 = v16;
  sub_1000051C4();
  v17 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v19 = v18;

  v15(v11, v1);
  if (v19)
  {
    v27 = v25;
    v28 = v14;
    v20._countAndFlagsBits = 38;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x7463657269646572;
    v21._object = 0xEB000000004C5255;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 61;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v17;
    v23._object = v19;
    String.append(_:)(v23);

    URL.init(string:)();
  }

  else
  {
    (*(*(v12 - 8) + 56))(v26, 1, 1, v12);
  }
}

uint64_t sub_100003714@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001FCC(&qword_1000108A0, &qword_100008508);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  if (qword_100010760 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for URL();
  sub_1000015BC(v11, qword_100010850);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v12 = *(v3 + 48);
  if (!v12(v10, 1, v2))
  {
    sub_100001FCC(&qword_1000108A8, &qword_100008510);
    v13 = *(type metadata accessor for URLQueryItem() - 8);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    v18 = a1;
    *(swift_allocObject() + 16) = xmmword_1000084E0;
    URL.absoluteString.getter();
    a1 = v18;
    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
  }

  if (v12(v10, 1, v2))
  {
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    URLComponents.url.getter();
    (*(v3 + 8))(v6, v2);
  }

  return sub_100005290(v10, &qword_1000108A0, &qword_100008508);
}

uint64_t sub_100003A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  URLComponents.init()();

  URLComponents.query.setter();
  result = URLComponents.queryItems.getter();
  if (!result)
  {
LABEL_11:
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  v18 = result;
  v28 = v16;
  v29 = v13;
  v30 = v12;
  v27 = v11;
  v19 = *(result + 16);
  if (!v19)
  {
LABEL_10:

    v13 = v29;
    v12 = v30;
    v16 = v28;
    goto LABEL_11;
  }

  v20 = 0;
  v21 = 0x6574617473;
  v31 = v5 + 16;
  while (v20 < *(v18 + 16))
  {
    (*(v5 + 16))(v9, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);
    if (URLQueryItem.name.getter() == v21 && v22 == 0xE500000000000000)
    {

LABEL_14:

      v25 = v27;
      (*(v5 + 32))(v27, v9, v4);
      a1 = URLQueryItem.value.getter();
      (*(v29 + 8))(v28, v30);
      (*(v5 + 8))(v25, v4);
      return a1;
    }

    v23 = v21;
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_14;
    }

    ++v20;
    result = (*(v5 + 8))(v9, v4);
    v21 = v23;
    if (v19 == v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_100003D4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003E7C(v5, 0);
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
        v7 = sub_100003E7C(v10, 0);
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

void *sub_100003E7C(uint64_t a1, uint64_t a2)
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

  sub_100001FCC(&unk_100010960, &unk_100008518);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100003EF0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100003FAC(a1, v4);
}

unint64_t sub_100003F34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100004018(a1, a2, v6);
}

unint64_t sub_100003FAC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100004018(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000040D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9 resolvingAgainstBaseURL:1];

  if (v11)
  {
    v12 = [v11 scheme];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [v11 host];
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = [v11 path];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (v16)
      {
LABEL_14:
        if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
        {
          v35 = 1;
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if (v30)
        {
LABEL_22:
          if (v28 == 0x6562626131342E61 && v30 == 0xEF747365742E3565)
          {
            v37 = 1;
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (v28 == 0xD000000000000018 && v30 == 0x80000001000086E0)
            {
              v36 = 1;
              goto LABEL_33;
            }
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (v28 == 0xD000000000000010 && v30 == 0x80000001000086A0)
          {

LABEL_34:
            if (v34)
            {
              v40._countAndFlagsBits = 0xD000000000000015;
              v40._object = 0x80000001000086C0;
              v41 = String.hasPrefix(_:)(v40);

LABEL_38:
              if (qword_100010750 != -1)
              {
                swift_once();
              }

              v42 = type metadata accessor for Logger();
              sub_1000015BC(v42, qword_100010A80);
              v43 = Logger.logObject.getter();
              v44 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                *v45 = 67109632;
                *(v45 + 4) = v35 & 1;
                *(v45 + 8) = 1024;
                *(v45 + 10) = v37 & 1;
                *(v45 + 14) = 1024;
                *(v45 + 16) = v41;
                _os_log_impl(&_mh_execute_header, v43, v44, "Universal link validation: isValidScheme: %{BOOL}d, isValidUndisclosedUniversalLink: %{BOOL}d, isValidDefaultUniversalLink: %{BOOL}d.", v45, 0x14u);
              }

              v38 = v35 & (v37 | v41 | v36);
              return v38 & 1;
            }

LABEL_37:
            v41 = 0;
            goto LABEL_38;
          }

LABEL_33:
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {

            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_19:

        v36 = 0;
        v37 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v34 = 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v35 = 0;
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000015BC(v17, qword_100010A80);
  (*(v3 + 16))(v6, a1, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136315138;
    sub_100005344(&qword_100010950, &type metadata accessor for URL);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v3 + 8))(v6, v2);
    v25 = sub_100005668(v22, v24, &v48);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create URL components from universalLink:%s", v20, 0xCu);
    sub_1000046F0(v21);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1000046F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000473C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000047F4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10000473C(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000048A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v62 - v7;
  v9 = type metadata accessor for BinaryDecodingOptions();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for CombinedState();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = URL.query.getter();
  v17 = sub_100003A2C(v15, v16);
  v19 = v18;

  if (v19 || (v20 = URL.fragment.getter(), v17 = sub_100003A2C(v20, v21), v19 = v22, , v19))
  {
    v63 = v17;
    v23 = String.uppercased()();
    v24 = sub_100003D4C(v23._countAndFlagsBits, v23._object);

    v25 = sub_100006E00(v24);

    if (v25)
    {
      v62[0] = a1;
      v62[1] = v2;
      v26 = sub_1000047F4((v25 + 32), *(v25 + 16));
      v28 = v27;

      v66 = 0;
      memset(v65, 0, sizeof(v65));
      sub_10000263C(v26, v28);
      BinaryDecodingOptions.init()();
      sub_100005344(&qword_100010780, type metadata accessor for CombinedState);
      Message.init(serializedData:extensions:partial:options:)();
      sub_10000263C(*(v14 + 2), *(v14 + 3));
      v39 = BankConnectAuthorizationSession.AuthSource.init(with:)();
      if ((v39 & 0x10000) == 0)
      {
        v40 = v39;
        sub_10000538C(v14);
        sub_100002690(v26, v28);

        return v40;
      }

      v52 = v28;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000015BC(v53, qword_100010A80);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      v56 = os_log_type_enabled(v54, v55);
      v57 = v26;
      v58 = v63;
      if (v56)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v65[0] = v60;
        *v59 = 136315138;
        v61 = sub_100005668(v58, v19, v65);

        *(v59 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed to decode AuthSource from state %s.", v59, 0xCu);
        sub_1000046F0(v60);
      }

      else
      {
      }

      sub_100002690(v57, v52);
      sub_10000538C(v14);
    }

    else
    {

      sub_1000052F0();
      swift_allocError();
      swift_willThrow();
      v29 = v64;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000015BC(v30, qword_100010A80);
      (*(v29 + 16))(v6, a1, v2);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v65[0] = v34;
        *v33 = 136315138;
        sub_100005344(&qword_100010950, &type metadata accessor for URL);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v29 + 8))(v6, v2);
        v38 = sub_100005668(v35, v37, v65);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode client state on redirect to %s.", v33, 0xCu);
        sub_1000046F0(v34);
      }

      else
      {

        (*(v29 + 8))(v6, v2);
      }
    }
  }

  else
  {
    if (qword_100010750 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000015BC(v42, qword_100010A80);
    v43 = v64;
    (*(v64 + 16))(v8, a1, v2);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v65[0] = v47;
      *v46 = 136315138;
      sub_100005344(&qword_100010950, &type metadata accessor for URL);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v43 + 8))(v8, v2);
      v51 = sub_100005668(v48, v50, v65);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "State parameter is missed in the redirect url %s.", v46, 0xCu);
      sub_1000046F0(v47);
    }

    else
    {

      (*(v43 + 8))(v8, v2);
    }
  }

  return 0;
}

unint64_t sub_100005094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001FCC(&qword_100010890, &qword_1000084F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005218(v4, &v13, &qword_100010898, &qword_100008500);
      v5 = v13;
      v6 = v14;
      result = sub_100003F34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005280(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000051C4()
{
  result = qword_100010888;
  if (!qword_100010888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010888);
  }

  return result;
}

uint64_t sub_100005218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FCC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005280(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005290(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001FCC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000052F0()
{
  result = qword_1000108B0;
  if (!qword_1000108B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108B0);
  }

  return result;
}

uint64_t sub_100005344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000538C(uint64_t a1)
{
  v2 = type metadata accessor for CombinedState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100005610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005668(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005734(v11, 0, 0, 1, a1, a2);
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
    sub_1000067CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000046F0(v11);
  return v7;
}

unint64_t sub_100005734(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005840(a5, a6);
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

char *sub_100005840(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003D4C(a1, a2);
  sub_10000588C(&off_10000C720);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_10000588C(uint64_t result)
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

  result = sub_100005978(result, v12, 1, v3);
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

char *sub_100005978(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001FCC(&unk_100010960, &unk_100008518);
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

void sub_100005A6C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000015BC(v10, qword_100010A80);
  v44 = v3[2];
  v44(v9, a1, v2);
  v45 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v42 = v7;
    v17 = v3;
    v18 = v16;
    v46 = v16;
    *v15 = 136315138;
    sub_100006774();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v43 = v17[1];
    v43(v9, v2);
    v22 = sub_100005668(v19, v21, &v46);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cannot handle universal link to URL: %s", v15, 0xCu);
    sub_1000046F0(v18);
    v7 = v42;

    a1 = v41;
  }

  else
  {

    v43 = v3[1];
    v43(v9, v2);
  }

  v23 = [objc_opt_self() defaultWorkspace];
  if (!v23)
  {
    __break(1u);
  }

  v25 = v23;
  URL._bridgeToObjectiveC()(v24);
  v27 = v26;
  v46 = 0;
  v28 = [v25 openURL:v26 configuration:0 error:&v46];

  if (v28)
  {
    v29 = v46;
  }

  else
  {
    v30 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v44(v7, a1, v2);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v7;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v34 = 136315394;
      sub_100006774();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v43(v33, v2);
      v39 = sub_100005668(v36, v38, &v46);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v40;
      *v35 = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to re-direct URL: %s to Safari with error: %@", v34, 0x16u);
      sub_100005290(v35, &qword_100010958, &qword_100008540);

      sub_1000046F0(v45);
    }

    else
    {

      v43(v7, v2);
    }
  }
}

uint64_t sub_100005F80(void *a1)
{
  v2 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v66 - v7;
  v9 = type metadata accessor for URL();
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v9);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - v14;
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  v18 = type metadata accessor for DeviceType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceInfo.deviceType.getter();
  v23 = DeviceType.isiPhone.getter();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = [a1 activityType];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    v29 = v9;
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v29 = v9;
    if ((v30 & 1) == 0)
    {
LABEL_11:
      v44 = v68;
      if (qword_100010750 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000015BC(v45, qword_100010A80);
      v46 = a1;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v49 = 136315394;
        v50 = [v46 webpageURL];
        if (v50)
        {
          v51 = v50;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = 0;
        }

        else
        {
          v52 = 1;
        }

        (*(v44 + 56))(v6, v52, 1, v29);
        sub_100006704(v6, v8);
        if ((*(v44 + 48))(v8, 1, v29))
        {
          sub_100005290(v8, &qword_100010880, &qword_1000084F0);
          v55 = 0;
          v56 = 0xE000000000000000;
        }

        else
        {
          v57 = v67;
          (*(v44 + 16))(v67, v8, v29);
          sub_100005290(v8, &qword_100010880, &qword_1000084F0);
          v58 = URL.absoluteString.getter();
          v56 = v59;
          (*(v44 + 8))(v57, v29);
          v55 = v58;
        }

        v60 = sub_100005668(v55, v56, &v69);

        *(v49 + 4) = v60;
        *(v49 + 12) = 2080;
        v61 = [v46 activityType];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = sub_100005668(v62, v64, &v69);

        *(v49 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v47, v48, "The activity didn't continue from a universal link: %s activityType: %s", v49, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  v31 = [a1 webpageURL];
  if (!v31)
  {
    goto LABEL_11;
  }

  v32 = v31;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v68;
  if (qword_100010750 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000015BC(v34, qword_100010A80);
  (*(v33 + 16))(v15, v17, v29);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69 = v38;
    *v37 = 136315138;
    sub_100006774();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v68 + 8);
    v42(v15, v29);
    v43 = sub_100005668(v39, v41, &v69);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Handling universal link: %s", v37, 0xCu);
    sub_1000046F0(v38);
  }

  else
  {

    v42 = *(v33 + 8);
    v42(v15, v29);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v54 = result;
    if (sub_1000028EC(v17, result))
    {
      v42(v17, v29);

      return 1;
    }

    sub_100005A6C(v17);

    v42(v17, v29);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FCC(&qword_100010880, &qword_1000084F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006774()
{
  result = qword_100010950;
  if (!qword_100010950)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010950);
  }

  return result;
}

uint64_t sub_1000067CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006828()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_10000C748 + v0 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100003EF0(v1);
    v5 = _swiftEmptyDictionarySingleton[2];
    v6 = (v4 & 1) == 0;
    v7 = __OFADD__(v5, v6);
    v8 = v5 + v6;
    if (v7)
    {
      break;
    }

    v9 = v4;
    if (_swiftEmptyDictionarySingleton[3] < v8)
    {
      sub_100006A50(v8, isUniquelyReferenced_nonNull_native);
      result = sub_100003EF0(v1);
      if ((v9 & 1) != (v10 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v9)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v13 = result;
    sub_100006CB4();
    result = v13;
    if (v9)
    {
LABEL_2:
      *(_swiftEmptyDictionarySingleton[7] + result) = v0;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    *(_swiftEmptyDictionarySingleton[6] + 8 * result) = v1;
    *(_swiftEmptyDictionarySingleton[7] + result) = v0;
    v11 = _swiftEmptyDictionarySingleton[2];
    v7 = __OFADD__(v11, 1);
    v12 = v11 + 1;
    if (v7)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v12;
LABEL_3:
    if (++v0 == 32)
    {
      off_1000109D0 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100006994()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100006A00()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100006A50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001FCC(&qword_1000109D8, &qword_100008548);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_100006CB4()
{
  v1 = v0;
  sub_100001FCC(&qword_1000109D8, &qword_100008548);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100006E00(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = result;
  v3 = 0;
  v50 = result + 32;
  v4 = &_swiftEmptyArrayStorage;
  v51 = *(result + 16);
  v52 = result;
  while (1)
  {
    v5 = v3 + 8;
    if (__OFADD__(v3, 8))
    {
      break;
    }

    if (v1 >= v5)
    {
      v6 = v3 + 8;
    }

    else
    {
      v6 = v1;
    }

    v7 = v6 - v3;
    if (v6 < v3)
    {
      goto LABEL_76;
    }

    if (v1 == v7)
    {

      v8 = v2;
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v6 != v3)
      {
        if (v7 >= 1)
        {
          sub_100001FCC(&unk_100010960, &unk_100008518);
          v8 = swift_allocObject();
          v49 = j__malloc_size(v8);
          v8[2] = v7;
          v8[3] = 2 * v49 - 64;
        }

        memcpy(v8 + 4, (v50 + v3), v7);
      }
    }

    v9 = v8[2];
    if (v9)
    {
      if (qword_100010770 != -1)
      {
        swift_once();
      }

      v10 = off_1000109D0;
      v11 = 32;
      v12 = &_swiftEmptyArrayStorage;
      do
      {
        if (v10[2])
        {
          v13 = sub_100003EF0(*(v8 + v11));
          if (v14)
          {
            v15 = *(v10[7] + v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100005978(0, *(v12 + 2) + 1, 1, v12);
            }

            v17 = *(v12 + 2);
            v16 = *(v12 + 3);
            if (v17 >= v16 >> 1)
            {
              v12 = sub_100005978((v16 > 1), v17 + 1, 1, v12);
            }

            *(v12 + 2) = v17 + 1;
            v12[v17 + 32] = v15;
          }
        }

        ++v11;
        --v9;
      }

      while (v9);
    }

    else
    {

      v12 = &_swiftEmptyArrayStorage;
    }

    v18 = *(v12 + 2);
    v19 = &_swiftEmptyArrayStorage;
    if (v18 <= 4)
    {
      if (v18 == 2)
      {
        goto LABEL_56;
      }

      if (v18 != 4)
      {
LABEL_74:

        return 0;
      }
    }

    else
    {
      if (v18 != 5)
      {
        if (v18 != 7)
        {
          if (v18 != 8)
          {
            goto LABEL_74;
          }

          v20 = v12[38];
          v21 = v12[39];
          result = sub_100005978(0, 1, 1, &_swiftEmptyArrayStorage);
          v19 = result;
          v23 = *(result + 16);
          v22 = *(result + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_100005978((v22 > 1), v23 + 1, 1, result);
            v19 = result;
          }

          *(v19 + 2) = v23 + 1;
          v19[v23 + 32] = v21 | (32 * v20);
          v24 = *(v12 + 2);
          if (v24 < 5)
          {
            goto LABEL_84;
          }

          if (v24 == 5)
          {
            goto LABEL_85;
          }

          if (v24 < 7)
          {
            goto LABEL_86;
          }
        }

        v25 = v12[36];
        v26 = v12[37];
        v27 = v12[38];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
          v19 = result;
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        if (v29 >= v28 >> 1)
        {
          result = sub_100005978((v28 > 1), v29 + 1, 1, v19);
          v19 = result;
        }

        *(v19 + 2) = v29 + 1;
        v19[v29 + 32] = (4 * v26) | (v25 << 7) | (v27 >> 3);
        v30 = *(v12 + 2);
        if (v30 < 4)
        {
          goto LABEL_82;
        }

        if (v30 == 4)
        {
          goto LABEL_83;
        }
      }

      v31 = v12[35];
      v32 = v12[36];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      v34 = *(v19 + 2);
      v33 = *(v19 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_100005978((v33 > 1), v34 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v34 + 1;
      v19[v34 + 32] = (v32 >> 1) | (16 * v31);
      v35 = *(v12 + 2);
      if (v35 < 2)
      {
        goto LABEL_79;
      }

      if (v35 == 2)
      {
        goto LABEL_80;
      }

      if (v35 < 4)
      {
        goto LABEL_81;
      }
    }

    v36 = v12[33];
    v37 = v12[34];
    v38 = v12[35];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v40 = *(v19 + 2);
    v39 = *(v19 + 3);
    if (v40 >= v39 >> 1)
    {
      result = sub_100005978((v39 > 1), v40 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v40 + 1;
    v19[v40 + 32] = (2 * v37) | (v36 << 6) | (v38 >> 4);
    v41 = *(v12 + 2);
    if (!v41)
    {
      goto LABEL_77;
    }

    if (v41 == 1)
    {
      goto LABEL_78;
    }

LABEL_56:
    v42 = v12[32];
    v43 = v12[33];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100005978(0, *(v19 + 2) + 1, 1, v19);
    }

    v45 = *(v19 + 2);
    v44 = *(v19 + 3);
    if (v45 >= v44 >> 1)
    {
      v19 = sub_100005978((v44 > 1), v45 + 1, 1, v19);
    }

    *(v19 + 2) = v45 + 1;
    v19[v45 + 32] = (v43 >> 2) | (8 * v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100005978(0, *(v4 + 2) + 1, 1, v4);
    }

    do
    {
      if (v45 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_74;
      }

      v46 = v19[v45 + 32];
      v48 = *(v4 + 2);
      v47 = *(v4 + 3);
      if (v48 >= v47 >> 1)
      {
        v4 = sub_100005978((v47 > 1), v48 + 1, 1, v4);
      }

      --v45;
      *(v4 + 2) = v48 + 1;
      v4[v48 + 32] = v46;
    }

    while (v45 != -1);

    v3 = v5;
    v1 = v51;
    v2 = v52;
    if (v5 >= v51)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t _s5ErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s5ErrorOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000074D0()
{
  result = qword_1000109E0;
  if (!qword_1000109E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109E0);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);

  return 0;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}