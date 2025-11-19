uint64_t sub_10056CC70(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v60[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60[-1] - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v60[-1] - v11;
  __chkstk_darwin(v10);
  v14 = &v60[-1] - v13;
  strcpy(v60, "ageRating");
  WORD1(v60[1]) = 0;
  HIDWORD(v60[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v15 = sub_1005223D0(v61), (v16 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v15, &v62);
    sub_10039DCC4(v61);
    if (swift_dynamicCast())
    {
      v59 = v60[0];
      strcpy(v60, "ageRatingValue");
      HIBYTE(v60[1]) = -18;
      AnyHashable.init<A>(_:)();
      if (*(a1 + 16) && (v17 = sub_1005223D0(v61), (v18 & 1) != 0))
      {
        sub_10020A6D0(*(a1 + 56) + 32 * v17, &v62);
        sub_10039DCC4(v61);
        if (swift_dynamicCast())
        {
          return v59;
        }
      }

      else
      {
        sub_10039DCC4(v61);
      }
    }
  }

  else
  {
    sub_10039DCC4(v61);
  }

  v60[0] = 0xD000000000000016;
  v60[1] = 0x80000001006C32F0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_1005223D0(v61), (v21 & 1) == 0))
  {
    sub_10039DCC4(v61);
    goto LABEL_27;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v20, &v62);
  sub_10039DCC4(v61);
  sub_1001F0C48(&qword_100782D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    static Logger.install.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = sub_100625FA0();
      *(v34 + 4) = v36;
      *v35 = v36;
      sub_1001F8084(v35);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v22 = v60[0];
  if (!*(v60[0] + 16) || (v23 = sub_10052213C(0x7A61724273707061, 0xEA00000000006C69), (v24 & 1) == 0) || (sub_10020A6D0(*(v22 + 56) + 32 * v23, v61), (swift_dynamicCast() & 1) == 0))
  {
    if (!*(v22 + 16) || (v25 = sub_10052213C(0x6C70704173707061, 0xE900000000000065), (v26 & 1) == 0) || (sub_10020A6D0(*(v22 + 56) + 32 * v25, v61), (swift_dynamicCast() & 1) == 0))
    {

      v38 = sub_1005FB008(v37);
      v40 = v39;

      if (v40)
      {
        if (*(v22 + 16))
        {
          v41 = sub_10052213C(v38, v40);
          v43 = v42;

          if (v43)
          {
            sub_10020A6D0(*(v22 + 56) + 32 * v41, v61);

            if (swift_dynamicCast())
            {
              goto LABEL_19;
            }

LABEL_44:
            static Logger.install.getter();
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412290;
              v53 = sub_100625FA0();
              *(v51 + 4) = v53;
              *v52 = v53;
              _os_log_impl(&_mh_execute_header, v49, v50, "[%@] missing required ratings dictionary", v51, 0xCu);
              sub_1001F8084(v52);
            }

            (*(v3 + 8))(v9, v2);
            return 0;
          }
        }

        else
        {
        }
      }

      goto LABEL_44;
    }
  }

LABEL_19:
  v27 = v62;
  if (*(v62 + 16) && (v28 = sub_10052213C(0x65756C6176, 0xE500000000000000), (v29 & 1) != 0) && (sub_10020A6D0(*(v27 + 56) + 32 * v28, v61), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v27 + 16) && (v30 = sub_10052213C(1701667182, 0xE400000000000000), (v31 & 1) != 0))
    {
      sub_10020A6D0(*(v27 + 56) + 32 * v30, v61);

      if (swift_dynamicCast())
      {
        return v62;
      }
    }

    else
    {
    }

    static Logger.install.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = sub_100625FA0();
      *(v56 + 4) = v58;
      *v57 = v58;
      sub_1001F8084(v57);
    }

    (*(v3 + 8))(v14, v2);
  }

  else
  {

    static Logger.install.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = sub_100625FA0();
      *(v46 + 4) = v48;
      *v47 = v48;
      sub_1001F8084(v47);
    }

    (*(v3 + 8))(v12, v2);
  }

  return 0;
}

uint64_t sub_10056D4A4(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A4050;
  *(inited + 32) = 0x7562697274736964;
  *(inited + 40) = 0xEB00000000726F74;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isMarketplace");
  *(inited + 94) = -4864;
  *(inited + 96) = a4;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6974756C6F736572;
  *(inited + 168) = &type metadata for Int;
  *(inited + 136) = 0xEA00000000006E6FLL;
  *(inited + 144) = a1;

  v9 = sub_100528684(inited);
  swift_setDeallocating();
  sub_1001F0C48(&unk_10077F9B0);
  swift_arrayDestroy();
  sub_10039E440(0, v9);
}

uint64_t sub_10056D600(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  return sub_10056DE8C(v3, a1);
}

uint64_t sub_10056D6BC(uint64_t a1)
{
  v2 = sub_10056F7A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10056D6F8(uint64_t a1)
{
  v2 = sub_10056F7A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056D734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 0xD000000000000012 && 0x80000001006C2DF0 == v2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0xD000000000000014 && 0x80000001006C47D0 == v2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10056D7F0()
{
  v1 = *v0;
  v2 = v0[1];
  objc_allocWithZone(LSApplicationRecord);

  result = sub_10049E57C(v1, v2, 0);
  if (result)
  {
    v4 = result;
    v5 = [result localizedName];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v6;
  }

  return result;
}

Swift::Int sub_10056D8A8()
{
  v0 = sub_1001F6740(&off_1007589B0);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_10056D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10056DA14(uint64_t a1)
{
  v2 = sub_10056F7F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10056DA50(uint64_t a1)
{
  v2 = sub_10056F7F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056DA8C()
{
  v2 = *v0;
  v1 = v0[1];

  sub_10060014C(v2, v1);
  if (v4)
  {
    v5 = v3;

    return v5;
  }

  return v2;
}

Swift::Int sub_10056DAF4()
{
  v0 = sub_1001F6740(&off_100758970);
  sub_1002FC188(&unk_100758990);
  return v0;
}

uint64_t sub_10056DB78@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = sub_1001F0C48(a2);
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_100006D8C(a1, a1[3]);
  a3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    return sub_10000710C(a1);
  }

  v10 = v17;
  v11 = v18;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v10 + 8))(v9, v7);
  result = sub_10000710C(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_10056DD44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v14 = a6;
  v8 = sub_1001F0C48(a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  v13 = *v6;
  sub_100006D8C(a1, a1[3]);
  v14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10056DE8C(char *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  if (swift_dynamicCast() || (result = swift_dynamicCast(), result))
  {
    v8 = *(v4 + 8);
    v8(a1, a2);
    v9 = v10;
    v8(v6, a2);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10056DFE0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v5 = sub_1001F0C48(&qword_100787A50);
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1001F0C48(&qword_100787A58);
  v18 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1001F0C48(&qword_100787A60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006D8C(a1, a1[3]);
  sub_10056F6A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v21)
  {
    LOBYTE(v24) = 1;
    sub_10056F6FC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v22;
    v25 = v23;
    sub_10056F0D4();
    v16 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v7, v16);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_10056F750();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v22;
    v25 = v23;
    sub_10056EECC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_10056E300()
{
  if (*v0)
  {
    return 6448503;
  }

  else
  {
    return 0x65766974616ELL;
  }
}

uint64_t sub_10056E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65766974616ELL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
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

uint64_t sub_10056E408(uint64_t a1)
{
  v2 = sub_10056F6A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10056E444(uint64_t a1)
{
  v2 = sub_10056F6A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056E480(uint64_t a1)
{
  v2 = sub_10056F750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10056E4BC(uint64_t a1)
{
  v2 = sub_10056F750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056E4F8(uint64_t a1)
{
  v2 = sub_10056F6FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10056E534(uint64_t a1)
{
  v2 = sub_10056F6FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10056E570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10056F17C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10056E5C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10056E618()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10056E67C()
{
  Hasher._combine(_:)(*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int sub_10056E6D0()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10056E730(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v44 - v9;
  v11 = objc_allocWithZone(LSApplicationRecord);

  v17 = sub_10049E57C(a1, a2, 1);
  v18 = [v17 iTunesMetadata];

  v19 = [v18 distributorInfo];
  if (v19)
  {
    v20 = [v19 localizedDistributorName];
    if (v20)
    {
      v21 = v20;
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = static Locale.preferredLanguages.getter();
      v24 = *(v23 + 16);

      if (v24)
      {
        v25 = 0;
        v26 = (v23 + 40);
        while (1)
        {
          if (*(v22 + 16))
          {
            v28 = *(v26 - 1);
            v27 = *v26;

            sub_10052213C(v28, v27);
            LOBYTE(v28) = v29;

            if (v28)
            {
              break;
            }
          }

          ++v25;
          v26 += 2;
          if (v24 == v25)
          {
            goto LABEL_15;
          }
        }

        v24 = v25;
      }

LABEL_15:
      v30 = *(v23 + 16);
      if (v24 == v30)
      {

        if (*(v22 + 16))
        {
          v31 = sub_10052213C(0, 0xE000000000000000);
          if (v32)
          {
            v33 = *(*(v22 + 56) + 16 * v31);

            return v33;
          }
        }

        return 0;
      }

      if (v24 >= v30)
      {
        __break(1u);
      }

      else
      {
        if (!*(v22 + 16))
        {
LABEL_29:

          __break(1u);
          return result;
        }

        v38 = (v23 + 32 + 16 * v24);
        v40 = *v38;
        v39 = v38[1];

        v41 = sub_10052213C(v40, v39);
        if (v42)
        {
          v43 = *(*(v22 + 56) + 16 * v41);

          swift_bridgeObjectRelease_n();

          return v43;
        }
      }

      goto LABEL_29;
    }

    static Logger.install.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1002346CC(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, v34, v35, "No localized distributor names found for %{public}s", v36, 0xCu);
      sub_10000710C(v37);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    static Logger.install.getter();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1002346CC(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, v12, v13, "App is supposed to be installed but unable to locate record: %{public}s", v14, 0xCu);
      sub_10000710C(v15);
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_10056EC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10056EC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_10056ECCC()
{
  result = qword_1007879C8;
  if (!qword_1007879C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879C8);
  }

  return result;
}

unint64_t sub_10056ED24()
{
  result = qword_1007879D0;
  if (!qword_1007879D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879D0);
  }

  return result;
}

unint64_t sub_10056ED7C()
{
  result = qword_1007879D8;
  if (!qword_1007879D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879D8);
  }

  return result;
}

unint64_t sub_10056EE24()
{
  result = qword_1007879E0;
  if (!qword_1007879E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879E0);
  }

  return result;
}

unint64_t sub_10056EE78()
{
  result = qword_1007879E8;
  if (!qword_1007879E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879E8);
  }

  return result;
}

unint64_t sub_10056EECC()
{
  result = qword_1007879F0;
  if (!qword_1007879F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879F0);
  }

  return result;
}

unint64_t sub_10056EF20()
{
  result = qword_1007879F8;
  if (!qword_1007879F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007879F8);
  }

  return result;
}

uint64_t sub_10056EFC8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_10056F02C()
{
  result = qword_100787A00;
  if (!qword_100787A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A00);
  }

  return result;
}

unint64_t sub_10056F080()
{
  result = qword_100787A08;
  if (!qword_100787A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A08);
  }

  return result;
}

unint64_t sub_10056F0D4()
{
  result = qword_100787A10;
  if (!qword_100787A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A10);
  }

  return result;
}

unint64_t sub_10056F128()
{
  result = qword_100787A18;
  if (!qword_100787A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A18);
  }

  return result;
}

void *sub_10056F17C(void *a1)
{
  v27 = sub_1001F0C48(&qword_100787A20);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = v26 - v2;
  v4 = sub_1001F0C48(&qword_100787A28);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v26 - v5;
  v7 = sub_1001F0C48(&qword_100787A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = a1[3];
  v36 = a1;
  v12 = sub_100006D8C(a1, v11);
  sub_10056F6A8();
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = v3;
  v30 = v8;
  v15 = v10;
  v16 = KeyedDecodingContainer.allKeys.getter();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_1005CD744();
  v19 = v7;
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_1001F0C48(&qword_1007896A0);
    *v24 = &type metadata for AnyDistributor;
    v12 = v15;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v30 + 8))(v15, v7);
    swift_unknownObjectRelease();
LABEL_7:
    sub_10000710C(v36);
    return v12;
  }

  v26[3] = v18;
  if (v18)
  {
    LOBYTE(v31) = 1;
    sub_10056F6FC();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    sub_10056F080();
    v21 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v14, v21);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_10056F750();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    sub_10056EE78();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v6, v4);
  }

  (*(v20 + 8))(v15, v19);
  swift_unknownObjectRelease();
  v12 = v31;
  sub_10000710C(v36);
  return v12;
}

unint64_t sub_10056F6A8()
{
  result = qword_100787A38;
  if (!qword_100787A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A38);
  }

  return result;
}

unint64_t sub_10056F6FC()
{
  result = qword_100787A40;
  if (!qword_100787A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A40);
  }

  return result;
}

unint64_t sub_10056F750()
{
  result = qword_100787A48;
  if (!qword_100787A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A48);
  }

  return result;
}

unint64_t sub_10056F7A4()
{
  result = qword_100787A70;
  if (!qword_100787A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A70);
  }

  return result;
}

unint64_t sub_10056F7F8()
{
  result = qword_100787A88;
  if (!qword_100787A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A88);
  }

  return result;
}

unint64_t sub_10056F8A0()
{
  result = qword_100787A98;
  if (!qword_100787A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787A98);
  }

  return result;
}

unint64_t sub_10056F8F8()
{
  result = qword_100787AA0;
  if (!qword_100787AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AA0);
  }

  return result;
}

unint64_t sub_10056F950()
{
  result = qword_100787AA8;
  if (!qword_100787AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AA8);
  }

  return result;
}

unint64_t sub_10056F9A8()
{
  result = qword_100787AB0;
  if (!qword_100787AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AB0);
  }

  return result;
}

unint64_t sub_10056FA00()
{
  result = qword_100787AB8;
  if (!qword_100787AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AB8);
  }

  return result;
}

unint64_t sub_10056FA58()
{
  result = qword_100787AC0;
  if (!qword_100787AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AC0);
  }

  return result;
}

unint64_t sub_10056FAB0()
{
  result = qword_100787AC8;
  if (!qword_100787AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AC8);
  }

  return result;
}

unint64_t sub_10056FB08()
{
  result = qword_100787AD0;
  if (!qword_100787AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AD0);
  }

  return result;
}

unint64_t sub_10056FB60()
{
  result = qword_100787AD8;
  if (!qword_100787AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AD8);
  }

  return result;
}

unint64_t sub_10056FBB8()
{
  result = qword_100787AE0;
  if (!qword_100787AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AE0);
  }

  return result;
}

unint64_t sub_10056FC10()
{
  result = qword_100787AE8;
  if (!qword_100787AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AE8);
  }

  return result;
}

unint64_t sub_10056FC68()
{
  result = qword_100787AF0;
  if (!qword_100787AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AF0);
  }

  return result;
}

unint64_t sub_10056FCC0()
{
  result = qword_100787AF8;
  if (!qword_100787AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787AF8);
  }

  return result;
}

unint64_t sub_10056FD18()
{
  result = qword_100787B00;
  if (!qword_100787B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B00);
  }

  return result;
}

unint64_t sub_10056FD70()
{
  result = qword_100787B08;
  if (!qword_100787B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B08);
  }

  return result;
}

Swift::Int sub_10056FDF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 2);
  return Hasher._finalize()();
}

Swift::Int sub_10056FE6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 2);
  return Hasher._finalize()();
}

uint64_t sub_10056FEB0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100571E58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10057001C(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1001F0C48(&qword_100787BE8);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1001F0C48(&qword_100787BF0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1001F0C48(&qword_100787BF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100006D8C(a1, a1[3]);
  sub_100573A70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100573AC4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100573B18();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1005702D8(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1001F0C48(&qword_100787C90);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1001F0C48(&qword_100787C98);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1001F0C48(&qword_100787CA0);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1001F0C48(&qword_100787CA8);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1001F0C48(&qword_100787CB0);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1001F0C48(&qword_100787CB8);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_100006D8C(a1, a1[3]);
  sub_100573B6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_100573CBC();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_100573D10();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_100573C68();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_100573C14();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_100573BC0();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_10057084C(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1001F0C48(&qword_100787C00);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1001F0C48(&qword_100787C08);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1001F0C48(&qword_100787C10);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1001F0C48(&qword_100787C18);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1001F0C48(&qword_100787C20);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1001F0C48(&qword_100787C28);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_100006D8C(a1, a1[3]);
  sub_100573878();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1005739C8();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_100573A1C();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_100573974();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_100573920();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1005738CC();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_100570DC0()
{
  result = qword_100787B10;
  if (!qword_100787B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B10);
  }

  return result;
}

uint64_t sub_100570E14(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6777712;
  }

  else
  {
    v2 = 6385769;
  }

  if (*a2)
  {
    v3 = 6777712;
  }

  else
  {
    v3 = 6385769;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100570E8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100570EF4()
{
  String.hash(into:)();
}

Swift::Int sub_100570F40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100570FB0(uint64_t *a1@<X8>)
{
  v2 = 6385769;
  if (*v1)
  {
    v2 = 6777712;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_100571088(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61746C6564;
  }

  else
  {
    v3 = 0x6D6563616C706572;
  }

  if (v2)
  {
    v4 = 0xEB00000000746E65;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x61746C6564;
  }

  else
  {
    v5 = 0x6D6563616C706572;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB00000000746E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100571134()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005711BC()
{
  String.hash(into:)();
}

Swift::Int sub_100571230()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1005712C0(uint64_t *a1@<X8>)
{
  v2 = 0x6D6563616C706572;
  if (*v1)
  {
    v2 = 0x61746C6564;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1005713B4()
{
  if (*v0)
  {
    return 0x657461647075;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_1005713EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
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

uint64_t sub_1005714C4(uint64_t a1)
{
  v2 = sub_100573A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571500(uint64_t a1)
{
  v2 = sub_100573A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10057153C(uint64_t a1)
{
  v2 = sub_100573B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571578(uint64_t a1)
{
  v2 = sub_100573B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005715B4(uint64_t a1)
{
  v2 = sub_100573AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005715F0(uint64_t a1)
{
  v2 = sub_100573AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10057162C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100572174(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100571678()
{
  v1 = *v0;
  v2 = 0x6C616E7265747865;
  v3 = 0x65726F7473;
  v4 = 0x67696C4674736574;
  if (v1 != 3)
  {
    v4 = 0x6C7074656B72616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6574737973;
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

uint64_t sub_100571718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100572630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100571740(uint64_t a1)
{
  v2 = sub_100573B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10057177C(uint64_t a1)
{
  v2 = sub_100573B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005717B8(uint64_t a1)
{
  v2 = sub_100573D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005717F4(uint64_t a1)
{
  v2 = sub_100573D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571830(uint64_t a1)
{
  v2 = sub_100573BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10057186C(uint64_t a1)
{
  v2 = sub_100573BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005718A8(uint64_t a1)
{
  v2 = sub_100573C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005718E4(uint64_t a1)
{
  v2 = sub_100573C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571920(uint64_t a1)
{
  v2 = sub_100573CBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10057195C(uint64_t a1)
{
  v2 = sub_100573CBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571998(uint64_t a1)
{
  v2 = sub_100573C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005719D4(uint64_t a1)
{
  v2 = sub_100573C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571A10@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005727E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100571A58(uint64_t a1)
{
  v2 = sub_100573A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571A94(uint64_t a1)
{
  v2 = sub_100573A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571AD0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x74696E4972657375;
  v4 = 0x7469615772657375;
  if (v1 != 3)
  {
    v4 = 0x6F69725072657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65726F74736572;
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

uint64_t sub_100571B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100572F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100571BB8(uint64_t a1)
{
  v2 = sub_100573878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571BF4(uint64_t a1)
{
  v2 = sub_100573878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571C30(uint64_t a1)
{
  v2 = sub_1005739C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571C6C(uint64_t a1)
{
  v2 = sub_1005739C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571CA8(uint64_t a1)
{
  v2 = sub_100573974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571CE4(uint64_t a1)
{
  v2 = sub_100573974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571D20(uint64_t a1)
{
  v2 = sub_1005738CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571D5C(uint64_t a1)
{
  v2 = sub_1005738CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571D98(uint64_t a1)
{
  v2 = sub_100573920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100571DD4(uint64_t a1)
{
  v2 = sub_100573920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100571E10@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100573114(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100571E58(char a1)
{
  if ((a1 + 2) >= 5u)
  {
    return 5;
  }

  else
  {
    return (a1 + 2);
  }
}

unint64_t sub_100571E70()
{
  result = qword_100787B18;
  if (!qword_100787B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B18);
  }

  return result;
}

unint64_t sub_100571F18()
{
  result = qword_100787B20;
  if (!qword_100787B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B20);
  }

  return result;
}

unint64_t sub_100571F70()
{
  result = qword_100787B28;
  if (!qword_100787B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B28);
  }

  return result;
}

unint64_t sub_100571FC8()
{
  result = qword_100787B30;
  if (!qword_100787B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B30);
  }

  return result;
}

unint64_t sub_100572020()
{
  result = qword_100787B38;
  if (!qword_100787B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B38);
  }

  return result;
}

unint64_t sub_100572078()
{
  result = qword_100787B40;
  if (!qword_100787B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B40);
  }

  return result;
}

unint64_t sub_1005720CC()
{
  result = qword_100787B48;
  if (!qword_100787B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B48);
  }

  return result;
}

unint64_t sub_100572120()
{
  result = qword_100787B50;
  if (!qword_100787B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B50);
  }

  return result;
}

uint64_t sub_100572174(void *a1)
{
  v2 = sub_1001F0C48(&qword_100787BB8);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1001F0C48(&qword_100787BC0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1001F0C48(&qword_100787BC8);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_100573A70();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000710C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1005CD744();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1001F0C48(&qword_1007896A0);
    *v19 = &type metadata for AppInstallIntent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000710C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_100573AC4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_100573B18();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000710C(v26);
  return v31 & 1;
}

uint64_t sub_100572630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F7473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67696C4674736574 && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1005727E4(void *a1)
{
  v45 = sub_1001F0C48(&qword_100787C30);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1001F0C48(&qword_100787C38);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1001F0C48(&qword_100787C40);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1001F0C48(&qword_100787C48);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1001F0C48(&qword_100787C50);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1001F0C48(&qword_100787C58);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_100006D8C(a1, v17);
  sub_100573B6C();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1005CD73C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1001F0C48(&qword_1007896A0);
    *v31 = &type metadata for AppInstallSource;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_10000710C(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_100573CBC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_100573D10();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_100573C68();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_100573C14();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_100573BC0();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_10000710C(v49);
  return v14;
}

uint64_t sub_100572F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F74736572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696E4972657375 && a2 == 0xED00006465746169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469615772657375 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69725072657375 && a2 == 0xEF64657A69746972)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100573114(void *a1)
{
  v45 = sub_1001F0C48(&qword_100787B58);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1001F0C48(&qword_100787B60);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1001F0C48(&qword_100787B68);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1001F0C48(&qword_100787B70);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1001F0C48(&qword_100787B78);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1001F0C48(&qword_100787B80);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_100006D8C(a1, v17);
  sub_100573878();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1005CD73C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1001F0C48(&qword_1007896A0);
    *v31 = &type metadata for AppInstallPriority;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_10000710C(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_1005739C8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_100573A1C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_100573974();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_100573920();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_1005738CC();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_10000710C(v49);
  return v14;
}

unint64_t sub_100573878()
{
  result = qword_100787B88;
  if (!qword_100787B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B88);
  }

  return result;
}

unint64_t sub_1005738CC()
{
  result = qword_100787B90;
  if (!qword_100787B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B90);
  }

  return result;
}

unint64_t sub_100573920()
{
  result = qword_100787B98;
  if (!qword_100787B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787B98);
  }

  return result;
}

unint64_t sub_100573974()
{
  result = qword_100787BA0;
  if (!qword_100787BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BA0);
  }

  return result;
}

unint64_t sub_1005739C8()
{
  result = qword_100787BA8;
  if (!qword_100787BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BA8);
  }

  return result;
}

unint64_t sub_100573A1C()
{
  result = qword_100787BB0;
  if (!qword_100787BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BB0);
  }

  return result;
}

unint64_t sub_100573A70()
{
  result = qword_100787BD0;
  if (!qword_100787BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BD0);
  }

  return result;
}

unint64_t sub_100573AC4()
{
  result = qword_100787BD8;
  if (!qword_100787BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BD8);
  }

  return result;
}

unint64_t sub_100573B18()
{
  result = qword_100787BE0;
  if (!qword_100787BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787BE0);
  }

  return result;
}

unint64_t sub_100573B6C()
{
  result = qword_100787C60;
  if (!qword_100787C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C60);
  }

  return result;
}

unint64_t sub_100573BC0()
{
  result = qword_100787C68;
  if (!qword_100787C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C68);
  }

  return result;
}

unint64_t sub_100573C14()
{
  result = qword_100787C70;
  if (!qword_100787C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C70);
  }

  return result;
}

unint64_t sub_100573C68()
{
  result = qword_100787C78;
  if (!qword_100787C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C78);
  }

  return result;
}

unint64_t sub_100573CBC()
{
  result = qword_100787C80;
  if (!qword_100787C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C80);
  }

  return result;
}

unint64_t sub_100573D10()
{
  result = qword_100787C88;
  if (!qword_100787C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787C88);
  }

  return result;
}

unint64_t sub_100573E58()
{
  result = qword_100787CC0;
  if (!qword_100787CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CC0);
  }

  return result;
}

unint64_t sub_100573EB0()
{
  result = qword_100787CC8;
  if (!qword_100787CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CC8);
  }

  return result;
}

unint64_t sub_100573F08()
{
  result = qword_100787CD0;
  if (!qword_100787CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CD0);
  }

  return result;
}

unint64_t sub_100573F60()
{
  result = qword_100787CD8;
  if (!qword_100787CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CD8);
  }

  return result;
}

unint64_t sub_100573FB8()
{
  result = qword_100787CE0;
  if (!qword_100787CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CE0);
  }

  return result;
}

unint64_t sub_100574010()
{
  result = qword_100787CE8;
  if (!qword_100787CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CE8);
  }

  return result;
}

unint64_t sub_100574068()
{
  result = qword_100787CF0;
  if (!qword_100787CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CF0);
  }

  return result;
}

unint64_t sub_1005740C0()
{
  result = qword_100787CF8;
  if (!qword_100787CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787CF8);
  }

  return result;
}

unint64_t sub_100574118()
{
  result = qword_100787D00;
  if (!qword_100787D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D00);
  }

  return result;
}

unint64_t sub_100574170()
{
  result = qword_100787D08;
  if (!qword_100787D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D08);
  }

  return result;
}

unint64_t sub_1005741C8()
{
  result = qword_100787D10;
  if (!qword_100787D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D10);
  }

  return result;
}

unint64_t sub_100574220()
{
  result = qword_100787D18;
  if (!qword_100787D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D18);
  }

  return result;
}

unint64_t sub_100574278()
{
  result = qword_100787D20;
  if (!qword_100787D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D20);
  }

  return result;
}

unint64_t sub_1005742D0()
{
  result = qword_100787D28;
  if (!qword_100787D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D28);
  }

  return result;
}

unint64_t sub_100574328()
{
  result = qword_100787D30;
  if (!qword_100787D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D30);
  }

  return result;
}

unint64_t sub_100574380()
{
  result = qword_100787D38;
  if (!qword_100787D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D38);
  }

  return result;
}

unint64_t sub_1005743D8()
{
  result = qword_100787D40;
  if (!qword_100787D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D40);
  }

  return result;
}

unint64_t sub_100574430()
{
  result = qword_100787D48;
  if (!qword_100787D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D48);
  }

  return result;
}

unint64_t sub_100574488()
{
  result = qword_100787D50;
  if (!qword_100787D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D50);
  }

  return result;
}

unint64_t sub_1005744E0()
{
  result = qword_100787D58;
  if (!qword_100787D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D58);
  }

  return result;
}

unint64_t sub_100574538()
{
  result = qword_100787D60;
  if (!qword_100787D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D60);
  }

  return result;
}

unint64_t sub_100574590()
{
  result = qword_100787D68;
  if (!qword_100787D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D68);
  }

  return result;
}

unint64_t sub_1005745E8()
{
  result = qword_100787D70;
  if (!qword_100787D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D70);
  }

  return result;
}

unint64_t sub_100574640()
{
  result = qword_100787D78;
  if (!qword_100787D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D78);
  }

  return result;
}

unint64_t sub_100574698()
{
  result = qword_100787D80;
  if (!qword_100787D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D80);
  }

  return result;
}

unint64_t sub_1005746F0()
{
  result = qword_100787D88;
  if (!qword_100787D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D88);
  }

  return result;
}

unint64_t sub_100574748()
{
  result = qword_100787D90;
  if (!qword_100787D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D90);
  }

  return result;
}

unint64_t sub_1005747A0()
{
  result = qword_100787D98;
  if (!qword_100787D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787D98);
  }

  return result;
}

unint64_t sub_1005747F8()
{
  result = qword_100787DA0;
  if (!qword_100787DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787DA0);
  }

  return result;
}

unint64_t sub_100574850()
{
  result = qword_100787DA8;
  if (!qword_100787DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787DA8);
  }

  return result;
}

unint64_t sub_1005748A8()
{
  result = qword_100787DB0;
  if (!qword_100787DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787DB0);
  }

  return result;
}

unint64_t sub_100574900()
{
  result = qword_100787DB8;
  if (!qword_100787DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787DB8);
  }

  return result;
}

unint64_t sub_100574958()
{
  result = qword_100787DC0;
  if (!qword_100787DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100787DC0);
  }

  return result;
}

uint64_t sub_1005749BC(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for Logger();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for LogKey.Prefix();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100574B60, 0, 0);
}

uint64_t sub_100574B60()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  (*(v0[21] + 104))(v0[22], enum case for LogKey.Prefix.license(_:), v0[20]);
  objc_allocWithZone(type metadata accessor for LogKey());
  v0[23] = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *(v5 + 16) = v4;

  return _swift_task_switch(sub_100574C7C, 0, 0);
}

uint64_t sub_100574C7C()
{
  sub_100005934(*(v0 + 152), *(v0 + 144), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 200) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Renew expiring licenses", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
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
  v4 = *(v0 + 184);
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

  *(v0 + 208) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 216) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 136);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  sub_100005934(*(v0 + 144), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 144), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 104);
    v22 = *(v0 + 144);
    (*(v15 + 32))(v13, *(v0 + 136), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Renew expiring licenses", 23, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0);
  }

  *(v0 + 224) = v12;
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B4BA0;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_1005751AC;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1005751AC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100575528;
  }

  else
  {
    v2 = sub_10057535C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10057535C()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_100575454, 0, 0);
}

uint64_t sub_100575454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100575528()
{
  v1 = *(v0 + 152);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_100575620, 0, 0);
}

uint64_t sub_100575620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005756F4()
{
  v0 = sub_10052A0F0(_swiftEmptyArrayStorage);
  sub_1001F0C48(&qword_100787DE8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_100787DC8 = result;
  return result;
}

uint64_t sub_100575750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_10052213C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Date();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_100575890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;

  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_1005B8218(v7, a2, a3);
}

uint64_t sub_100575984(uint64_t a1, uint64_t a2)
{
  v2[32] = a2;
  v3 = type metadata accessor for LogKey.Prefix();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v5 = type metadata accessor for Data.Iterator();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_100575BF8, 0, 0);
}

uint64_t sub_100575BF8()
{
  static Logger.ald.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Checking for expiring licenses", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[50];
  v7 = v0[44];
  v8 = v0[45];
  v9 = v0[43];
  v10 = v0[32];

  v11 = *(v8 + 8);
  v0[51] = v11;
  v0[52] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v7);
  v12 = sub_100006D8C(v10, v10[3]);
  sub_100005934(*v12 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v9, &qword_1007812A0);
  v13 = swift_task_alloc();
  v0[53] = v13;
  *v13 = v0;
  v13[1] = sub_100575E20;

  return sub_1003B6DF8(sub_10057868C, 0);
}

uint64_t sub_100575E20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  sub_1000032A8(v4, &qword_1007812A0);
  if (v1)
  {
    v5 = sub_100577B9C;
  }

  else
  {
    v5 = sub_100575F98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100575F98()
{
  v50 = v0;
  *(v0 + 216) = &_swiftEmptySetSingleton;
  v1 = (v0 + 216);
  v2 = *(v0 + 432);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
      }

      v7 = (v2 + 32 + 24 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = *v1;
      if (*(*v1 + 16) && (v12 = static Hasher._hash(seed:_:)(), v13 = -1 << *(v11 + 32), v14 = v12 & ~v13, ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(*(v11 + 48) + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100009530(0, *(v5 + 2) + 1, 1, v5);
        }

        v17 = *(v5 + 2);
        v16 = *(v5 + 3);
        if (v17 >= v16 >> 1)
        {
          v5 = sub_100009530((v16 > 1), v17 + 1, 1, v5);
        }

        *(v5 + 2) = v17 + 1;
        v6 = &v5[16 * v17];
        *(v6 + 4) = v8;
        *(v6 + 5) = v9;

        sub_1003F3098(&v49, v10);
      }

      ++v4;
    }

    while (v4 != v3);
    v0 = v48;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  *(v0 + 448) = v5;
  v18 = *(v5 + 2);
  *(v0 + 456) = v18;
  if (v18)
  {
    *(v0 + 548) = enum case for MarketplaceKitError.invalidLicense(_:);
    *(v0 + 552) = enum case for LogKey.Prefix.undefined(_:);
    *(v0 + 472) = _swiftEmptyArrayStorage;
    *(v0 + 480) = _swiftEmptyArrayStorage;
    *(v0 + 464) = 0;
    v19 = *(v0 + 336);
    v20 = *(v0 + 256);
    v21 = *(v5 + 4);
    *(v0 + 488) = v21;
    v22 = *(v5 + 5);
    *(v0 + 496) = v22;
    v23 = sub_100006D8C(v20, v20[3]);
    sub_100005934(*v23 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v19, &qword_1007812A0);
    v24 = swift_task_alloc();
    *(v0 + 504) = v24;
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;

    v25 = swift_task_alloc();
    *(v0 + 512) = v25;
    *v25 = v0;
    v25[1] = sub_100576674;

    return sub_1003B2E3C(v0 + 168, sub_10058A060, v24);
  }

  else
  {

    *(v0 + 528) = _swiftEmptyArrayStorage;

    static Logger.ald.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      v31 = sub_100625FA0();
      *(v29 + 4) = v31;
      *v30 = v31;
      *(v29 + 12) = 2050;
      *(v29 + 14) = _swiftEmptyArrayStorage[2];

      _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Found %{public}ld licenses to renew", v29, 0x16u);
      sub_1000032A8(v30, &qword_10077F920);
    }

    else
    {
    }

    (*(v0 + 408))(*(v0 + 384), *(v0 + 352));
    if (_swiftEmptyArrayStorage[2])
    {
      v32 = *(v0 + 256);
      v34 = v32[3];
      v33 = v32[4];
      v35 = v32[5];
      v36 = sub_100006D8C(v32, v34);
      v37 = swift_task_alloc();
      *(v0 + 536) = v37;
      *v37 = v0;
      v37[1] = sub_100577864;

      return sub_1005794DC(_swiftEmptyArrayStorage, v36, 0, 0, 0, v34, v33, v35);
    }

    else
    {

      static Logger.ald.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = sub_100625FA0();
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Expiring license check completed", v40, 0xCu);
        sub_1000032A8(v41, &qword_10077F920);
      }

      v43 = v38;
      v44 = *(v0 + 408);
      v45 = *(v0 + 376);
      v46 = *(v0 + 352);

      v44(v45, v46);

      v47 = *(v0 + 8);

      return v47();
    }
  }
}

uint64_t sub_100576674()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  sub_1000032A8(*(v2 + 336), &qword_1007812A0);

  if (v0)
  {
    v3 = sub_100577CAC;
  }

  else
  {
    v3 = sub_100576808;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100576808()
{
  v3 = v0 + 168;
  v2 = *(v0 + 168);
  v4 = v0 + 16;
  v5 = *(v0 + 176);
  if (qword_10077E580 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        sub_100007158(v2, v5);
        *(v4 + 32) = 0;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        v8 = _swiftEmptyArrayStorage;
        goto LABEL_29;
      }

      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      v7 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v6)
    {
      v7 = BYTE6(v5);
      v117 = v5;
      if (!BYTE6(v5))
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      v6 = sub_1003642B4(0, *(v6 + 16) + 1, 1, v6);
      goto LABEL_37;
    }

    v7 = HIDWORD(v2) - v2;
LABEL_12:
    sub_10020ABFC(v2, v5);
    v117 = v5;
    if (!v7)
    {
LABEL_5:
      sub_100007158(v2, v5);
      v8 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

LABEL_13:
    v114 = v4;
    v116 = v3;
    if (v7 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_1001F0C48(&qword_10077EF80);
      v8 = swift_allocObject();
      v11 = j__malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * v11 - 64;
    }

    v12 = *(v0 + 320);
    v13 = *(v0 + 328);
    v14 = *(v0 + 312);
    v5 = v117;
    v15 = Data._copyContents(initializing:)();
    sub_100007158(v2, v117);
    (*(v12 + 8))(v13, v14);
    v16 = v15 == v7;
    v4 = v114;
    v3 = v116;
    if (!v16)
    {
      __break(1u);
      goto LABEL_81;
    }

LABEL_19:
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    if (v6 == 2)
    {
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      v17 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_84;
      }

      v5 = v117;
    }

    else
    {
      if (v6 != 1)
      {
        goto LABEL_28;
      }

      v5 = v117;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        goto LABEL_83;
      }

      v17 = HIDWORD(v2) - v2;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  if (HIDWORD(v17))
  {
    __break(1u);
LABEL_28:
    v5 = v117;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, v8[2], 0, v8);
  }

  v20 = *(v0 + 520);
  v21 = TBQFRWlW();

  sub_1005F2F18(v21);
  if (v20)
  {
    v22 = *(v0 + 548);
    v23 = type metadata accessor for MarketplaceKitError();
    sub_10058A07C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, v22, v23);
    swift_willThrow();

    sub_100007158(v2, v5);
    *(v0 + 224) = v24;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 136);
      if (v26)
      {
        v27 = *(v0 + 120);
        v28 = *(v0 + 128);
        *(v0 + 200) = 0;
        *(v0 + 208) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        strcpy((v0 + 184), "Error code: ");
        *(v0 + 197) = 0;
        *(v0 + 198) = -5120;
        *(v0 + 544) = v27;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 8236;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);
        v31._countAndFlagsBits = v28;
        v31._object = v26;
        String.append(_:)(v31);

        v32 = *(v0 + 184);
        v2 = *(v0 + 192);
      }

      else
      {
        v2 = 0xEF6E6F6973736573;
        v32 = 0x2064696C61766E49;
      }
    }

    else
    {
      swift_getErrorValue();
      v55 = *(*(v0 + 152) - 8);
      swift_task_alloc();
      (*(v55 + 16))();
      v32 = String.init<A>(describing:)();
      v2 = v56;
    }

    static Logger.ald.getter();

    v6 = Logger.logObject.getter();
    LOBYTE(v14) = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v14))
    {
      v66 = *(v0 + 408);
      v67 = *(v0 + 368);
      v68 = *(v0 + 352);

      v66(v67, v68);
LABEL_56:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v0 + 472);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1003642B4(0, *(v6 + 16) + 1, 1, *(v0 + 472));
      }

      v71 = *(v6 + 16);
      v70 = *(v6 + 24);
      if (v71 >= v70 >> 1)
      {
        v6 = sub_1003642B4((v70 > 1), v71 + 1, 1, v6);
      }

      v73 = *(v0 + 488);
      v72 = *(v0 + 496);

      *(v6 + 16) = v71 + 1;
      v74 = v6 + 24 * v71;
      *(v74 + 32) = v73;
      *(v74 + 40) = v72;
      *(v74 + 48) = 1;
      goto LABEL_61;
    }

    v117 = v32;
    v13 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v116 = v3;
    *(v3 + 72) = swift_slowAlloc();
    *v13 = 138412802;
    if (qword_10077E598 == -1)
    {
LABEL_51:
      TaskLocal.get()();
      v58 = *(v0 + 64);
      if (!v58 || (, , , os_unfair_lock_lock((v58 + 24)), v59 = *(v58 + 16), v60 = v59, os_unfair_lock_unlock((v58 + 24)), , !v59))
      {
        (*(*(v0 + 272) + 104))(*(v0 + 280), *(v0 + 552), *(v0 + 264));
        v61 = objc_allocWithZone(type metadata accessor for LogKey());
        v60 = LogKey.init(prefix:)();
      }

      v62 = *(v0 + 488);
      v63 = *(v0 + 496);
      v112 = *(v0 + 408);
      v64 = *(v0 + 368);
      v111 = *(v0 + 352);
      *(v13 + 4) = v60;
      *v5 = v60;
      *(v13 + 12) = 2082;
      v3 = v116;
      *(v13 + 14) = sub_1002346CC(v62, v63, (v116 + 72));
      *(v13 + 22) = 2082;
      v65 = sub_1002346CC(v117, v2, (v116 + 72));

      *(v13 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v6, v14, "[%@] Unable to read license info for %{public}s: %{public}s", v13, 0x20u);
      sub_1000032A8(v5, &qword_10077F920);

      swift_arrayDestroy();

      v112(v64, v111);
      goto LABEL_56;
    }

LABEL_81:
    swift_once();
    goto LABEL_51;
  }

  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v35 = *(v0 + 288);
  v1 = *(v0 + 48);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v37 = v36;
  (*(v34 + 8))(v33, v35);
  if (v37 + 100800.0 <= v1)
  {
    sub_100007158(v2, v5);

    v6 = *(v0 + 472);
    v57 = *(v0 + 480);
    goto LABEL_62;
  }

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 472);
  if ((v38 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_37:
  v40 = *(v6 + 16);
  v39 = *(v6 + 24);
  if (v40 >= v39 >> 1)
  {
    v6 = sub_1003642B4((v39 > 1), v40 + 1, 1, v6);
  }

  v118 = v2;
  v41 = *(v0 + 488);
  v42 = *(v0 + 496);
  *(v6 + 16) = v40 + 1;
  v43 = v6 + 24 * v40;
  *(v43 + 32) = v41;
  *(v43 + 40) = v42;
  *(v43 + 48) = 1;
  static Logger.ald.getter();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v47 = v3;
    v115 = swift_slowAlloc();
    *(v3 + 80) = v115;
    *v46 = 138412802;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v48 = *(v0 + 96);
    if (!v48 || (, , , os_unfair_lock_lock((v48 + 24)), v49 = *(v48 + 16), v50 = v49, os_unfair_lock_unlock((v48 + 24)), , !v49))
    {
      (*(*(v0 + 272) + 104))(*(v0 + 280), *(v0 + 552), *(v0 + 264));
      v51 = objc_allocWithZone(type metadata accessor for LogKey());
      v50 = LogKey.init(prefix:)();
    }

    v52 = *(v0 + 488);
    v53 = *(v0 + 496);
    v110 = *(v0 + 408);
    v108 = *(v0 + 352);
    v109 = *(v0 + 392);
    *(v46 + 4) = v50;
    *v113 = v50;
    *(v46 + 12) = 2082;
    v54 = sub_1002346CC(v52, v53, (v47 + 80));

    *(v46 + 14) = v54;
    v3 = v47;
    *(v46 + 22) = 2050;
    *(v46 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v44, v45, "[%@] License associated with %{public}s expires at %{public}f, will attempt renewal", v46, 0x20u);
    sub_1000032A8(v113, &qword_10077F920);

    sub_10000710C(v115);

    sub_100007158(v118, v5);

    v110(v109, v108);
  }

  else
  {
    v105 = *(v0 + 408);
    v106 = *(v0 + 392);
    v107 = *(v0 + 352);
    sub_100007158(v2, v5);

    v105(v106, v107);
  }

LABEL_61:
  v57 = v6;
LABEL_62:
  v75 = *(v0 + 464) + 1;
  if (v75 == *(v0 + 456))
  {

    *(v0 + 528) = v57;

    static Logger.ald.getter();

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412546;
      v80 = sub_100625FA0();
      *(v78 + 4) = v80;
      *v79 = v80;
      *(v78 + 12) = 2050;
      *(v78 + 14) = *(v57 + 16);

      _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Found %{public}ld licenses to renew", v78, 0x16u);
      sub_1000032A8(v79, &qword_10077F920);
    }

    else
    {
    }

    (*(v0 + 408))(*(v0 + 384), *(v0 + 352));
    if (*(v57 + 16))
    {
      v90 = *(v0 + 256);
      v92 = v90[3];
      v91 = v90[4];
      v93 = v90[5];
      v94 = sub_100006D8C(v90, v92);
      v95 = swift_task_alloc();
      *(v0 + 536) = v95;
      *v95 = v0;
      v95[1] = sub_100577864;

      return sub_1005794DC(v57, v94, 0, 0, 0, v92, v91, v93);
    }

    else
    {

      static Logger.ald.getter();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        v100 = sub_100625FA0();
        *(v98 + 4) = v100;
        *v99 = v100;
        _os_log_impl(&_mh_execute_header, v96, v97, "[%@] Expiring license check completed", v98, 0xCu);
        sub_1000032A8(v99, &qword_10077F920);
      }

      v101 = *(v0 + 408);
      v102 = *(v0 + 376);
      v103 = *(v0 + 352);

      v101(v102, v103);

      v104 = *(v0 + 8);

      return v104();
    }
  }

  else
  {
    *(v0 + 472) = v6;
    *(v0 + 480) = v57;
    *(v0 + 464) = v75;
    v81 = *(v0 + 336);
    v82 = *(v0 + 256);
    v83 = *(v0 + 448) + 16 * v75;
    v84 = *(v83 + 32);
    *(v0 + 488) = v84;
    v85 = *(v83 + 40);
    *(v0 + 496) = v85;
    v86 = sub_100006D8C(v82, v82[3]);
    sub_100005934(*v86 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v81, &qword_1007812A0);
    v87 = swift_task_alloc();
    *(v0 + 504) = v87;
    *(v87 + 16) = v84;
    *(v87 + 24) = v85;

    v88 = swift_task_alloc();
    *(v0 + 512) = v88;
    *v88 = v0;
    v88[1] = sub_100576674;

    return sub_1003B2E3C(v3, sub_10058A060, v87);
  }
}

uint64_t sub_100577864()
{

  return _swift_task_switch(sub_1005779A8, 0, 0);
}

uint64_t sub_1005779A8()
{
  static Logger.ald.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Expiring license check completed", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[51];
  v7 = v0[47];
  v8 = v0[44];

  v6(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100577B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100577CAC()
{
  *(v0 + 224) = *(v0 + 520);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 136);
    if (v1)
    {
      v3 = *(v0 + 120);
      v2 = *(v0 + 128);
      *(v0 + 200) = 0;
      *(v0 + 208) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      strcpy((v0 + 184), "Error code: ");
      *(v0 + 197) = 0;
      *(v0 + 198) = -5120;
      *(v0 + 544) = v3;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 8236;
      v5._object = 0xE200000000000000;
      String.append(_:)(v5);
      v6._countAndFlagsBits = v2;
      v6._object = v1;
      String.append(_:)(v6);

      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
    }

    else
    {
      v7 = 0xEF6E6F6973736573;
      v8 = 0x2064696C61766E49;
    }
  }

  else
  {
    swift_getErrorValue();
    v9 = *(*(v0 + 152) - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v8 = String.init<A>(describing:)();
    v7 = v10;
  }

  static Logger.ald.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v65 = v8;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *(v0 + 240) = swift_slowAlloc();
    *v13 = 138412802;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v15 = *(v0 + 64);
    if (!v15 || (, , , os_unfair_lock_lock((v15 + 24)), v16 = *(v15 + 16), v17 = v16, os_unfair_lock_unlock((v15 + 24)), , !v16))
    {
      (*(*(v0 + 272) + 104))(*(v0 + 280), *(v0 + 552), *(v0 + 264));
      v18 = objc_allocWithZone(type metadata accessor for LogKey());
      v17 = LogKey.init(prefix:)();
    }

    v19 = *(v0 + 488);
    v20 = *(v0 + 496);
    v21 = *(v0 + 408);
    v22 = *(v0 + 368);
    v64 = *(v0 + 352);
    *(v13 + 4) = v17;
    *v14 = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1002346CC(v19, v20, (v0 + 240));
    *(v13 + 22) = 2082;
    v23 = sub_1002346CC(v65, v7, (v0 + 240));

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Unable to read license info for %{public}s: %{public}s", v13, 0x20u);
    sub_1000032A8(v14, &qword_10077F920);

    swift_arrayDestroy();

    v21(v22, v64);
  }

  else
  {
    v24 = *(v0 + 408);
    v25 = *(v0 + 368);
    v26 = *(v0 + 352);

    v24(v25, v26);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1003642B4(0, *(v28 + 2) + 1, 1, *(v0 + 472));
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1003642B4((v29 > 1), v30 + 1, 1, v28);
  }

  v32 = *(v0 + 488);
  v31 = *(v0 + 496);

  *(v28 + 2) = v30 + 1;
  v33 = &v28[24 * v30];
  *(v33 + 4) = v32;
  *(v33 + 5) = v31;
  v33[48] = 1;
  v34 = *(v0 + 464) + 1;
  if (v34 == *(v0 + 456))
  {

    *(v0 + 528) = v28;

    static Logger.ald.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412546;
      v39 = sub_100625FA0();
      *(v37 + 4) = v39;
      *v38 = v39;
      *(v37 + 12) = 2050;
      *(v37 + 14) = *(v28 + 2);

      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Found %{public}ld licenses to renew", v37, 0x16u);
      sub_1000032A8(v38, &qword_10077F920);
    }

    else
    {
    }

    (*(v0 + 408))(*(v0 + 384), *(v0 + 352));
    if (*(v28 + 2))
    {
      v49 = *(v0 + 256);
      v51 = v49[3];
      v50 = v49[4];
      v52 = v49[5];
      v53 = sub_100006D8C(v49, v51);
      v54 = swift_task_alloc();
      *(v0 + 536) = v54;
      *v54 = v0;
      v54[1] = sub_100577864;

      return sub_1005794DC(v28, v53, 0, 0, 0, v51, v50, v52);
    }

    else
    {

      static Logger.ald.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = sub_100625FA0();
        *(v57 + 4) = v59;
        *v58 = v59;
        _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Expiring license check completed", v57, 0xCu);
        sub_1000032A8(v58, &qword_10077F920);
      }

      v60 = *(v0 + 408);
      v61 = *(v0 + 376);
      v62 = *(v0 + 352);

      v60(v61, v62);

      v63 = *(v0 + 8);

      return v63();
    }
  }

  else
  {
    *(v0 + 472) = v28;
    *(v0 + 480) = v28;
    *(v0 + 464) = v34;
    v40 = *(v0 + 336);
    v41 = *(v0 + 256);
    v42 = *(v0 + 448) + 16 * v34;
    v43 = *(v42 + 32);
    *(v0 + 488) = v43;
    v44 = *(v42 + 40);
    *(v0 + 496) = v44;
    v45 = sub_100006D8C(v41, v41[3]);
    sub_100005934(*v45 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v40, &qword_1007812A0);
    v46 = swift_task_alloc();
    *(v0 + 504) = v46;
    *(v46 + 16) = v43;
    *(v46 + 24) = v44;

    v47 = swift_task_alloc();
    *(v0 + 512) = v47;
    *v47 = v0;
    v47[1] = sub_100576674;

    return sub_1003B2E3C(v0 + 168, sub_10058A060, v46);
  }
}

uint64_t sub_10057868C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100511C04();
  *a1 = result;
  return result;
}

void sub_1005786C8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for URL.DirectoryHint();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for URL();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v36 = sub_1001F0C48(&qword_1007813C0);
  v37 = sub_100213FA0(&qword_1007813C8, &qword_1007813C0);
  LOWORD(v34) = 1;
  *(&v34 + 1) = a2;
  v35 = a3;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  v33 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v34, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v14 = swift_initStackObject();
  *(v14 + 16) = v33;
  *(v14 + 32) = inited;

  v15 = sub_1005AEA84(v14);
  swift_setDeallocating();
  sub_1000032A8(v14 + 32, &qword_10077FA00);
  v16 = sub_100513920(0, 0, v15, sub_1005138AC, 0, v12);

  if (v16 && (v17 = v16, v18 = sub_100511A44(2, v17), v20 = v19, v17, (v20 & 1) == 0))
  {
    type metadata accessor for LicenseStorageDatabaseTransaction(0);
    *&v34 = v18;
    *&v34 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v34 + 1) = v21;
    v22 = v30;
    (*(v30 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v22 + 8))(v9, v7);

    v23 = v38;
    v24 = Data.init(contentsOf:options:)();
    if (v23)
    {
      (*(v31 + 8))(v11, v32);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      (*(v31 + 8))(v11, v32);

      v28 = v29;
      *v29 = v26;
      v28[1] = v27;
    }
  }

  else
  {
    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_100578B20(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v17 = sub_1001F0C48(&qword_1007813C0);
  v18 = sub_100213FA0(&qword_1007813C8, &qword_1007813C0);
  v8 = 1;
  LOWORD(v15) = 1;
  *(&v15 + 1) = a2;
  v16 = a3;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v15, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10069E680;
  *(v10 + 32) = inited;

  v11 = sub_1005AEA84(v10);
  swift_setDeallocating();
  sub_1000032A8(v10 + 32, &qword_10077FA00);
  v12 = sub_100513920(0, 0, v11, sub_1005138AC, 0, v7);

  if (v12)
  {
    v13 = sub_100511A44(2, v12);
    v8 = v14;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  *(a4 + 8) = v8 & 1;
}

uint64_t sub_100578CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LicenseUtilities.Batch();
  __chkstk_darwin(v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10058900C(a1, v10, type metadata accessor for LicenseUtilities.Batch);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100589074(v10, type metadata accessor for LicenseUtilities.Batch);
LABEL_3:
    v11 = 0;
    return v11 & 1;
  }

  v12 = *v10;
  v13 = v12[5] == a2 && v12[6] == a3;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_3;
  }

  v14 = v12[10];
  v15 = v12[11];
  sub_100006D8C(v12 + 7, v14);
  v16 = (*(v15 + 40))(v14, v15);
  v18 = v17;
  v19 = a4[3];
  v20 = a4[4];
  sub_100006D8C(a4, v19);
  if (v16 == (*(v20 + 40))(v19, v20) && v18 == v21)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void sub_100578EB4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v17 = sub_1001F0C48(&qword_1007813C0);
  v18 = sub_100213FA0(&qword_1007813C8, &qword_1007813C0);
  LOWORD(v15) = 1;
  *(&v15 + 1) = a2;
  v16 = a3;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v15, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10069E680;
  *(v9 + 32) = inited;

  v10 = sub_1005AEA84(v9);
  swift_setDeallocating();
  sub_1000032A8(v9 + 32, &qword_10077FA00);
  v11 = sub_100513920(0, 0, v10, sub_1005138AC, 0, v7);

  if (v11)
  {
    v12 = sub_1005364B8(0, v11);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a4 = v12;
  a4[1] = v14;
}

uint64_t sub_100579064(uint64_t a1, id *a2)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v26[0] = *a2;
  v26[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v26[1] = v10;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v6, v3);

  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  URL.path(percentEncoded:)(1);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = [v11 defaultManager];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v26[0] = 0;
    v19 = [v15 removeItemAtURL:v17 error:v26];

    if (!v19)
    {
      v21 = v26[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v24 + 8))(v9, v25);
    }

    v20 = v26[0];
  }

  Data.write(to:options:)();
  return (*(v24 + 8))(v9, v25);
}

id sub_100579388(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t sub_1005794DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 160) = a3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  v10 = type metadata accessor for Logger();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = *(a6 - 8);
  *(v8 + 112) = v11;
  *(v8 + 120) = swift_task_alloc();
  (*(v11 + 16))();

  return _swift_task_switch(sub_100579634, 0, 0);
}

uint64_t sub_100579634()
{
  v50 = v0;
  v1 = v0[6];
  static Logger.ald.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v46 = v3;
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v7 = 138412802;
    v9 = sub_100625FA0();
    *(v7 + 4) = v9;
    v45 = v8;
    *v8 = v9;
    *(v7 + 12) = 2082;
    v10 = v5 == 0;
    if (v5)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0xD000000000000017;
    }

    if (v10)
    {
      v12 = 0x80000001006C2F20;
    }

    else
    {
      v12 = v1;
    }

    v13 = sub_1002346CC(v11, v12, &v48);

    *(v7 + 14) = v13;
    buf = v7;
    *(v7 + 22) = 2082;
    v14 = *(v6 + 16);
    v15 = _swiftEmptyArrayStorage;
    if (v14)
    {
      v44 = v2;
      v16 = v0[4];
      v49 = _swiftEmptyArrayStorage;
      sub_100526304(0, v14, 0);
      v15 = v49;
      v17 = (v16 + 48);
      do
      {
        v18 = *(v17 - 2);
        if (*v17 == 1)
        {
          v19 = *(v17 - 1);
        }

        else
        {
          v0[3] = v18;
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          v19 = v20;
        }

        v49 = v15;
        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_100526304((v21 > 1), v22 + 1, 1);
          v15 = v49;
        }

        v15[2] = v22 + 1;
        v23 = &v15[2 * v22];
        v23[4] = v18;
        v23[5] = v19;
        v17 += 24;
        --v14;
      }

      while (v14);
      v2 = v44;
    }

    v28 = v0[13];
    v30 = v0[10];
    v29 = v0[11];
    v0[2] = v15;
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = sub_1002346CC(v31, v33, &v48);

    *(buf + 3) = v34;
    _os_log_impl(&_mh_execute_header, v2, v46, "[%@] %{public}s requested license renewal for %{public}s", buf, 0x20u);
    sub_1000032A8(v45, &qword_10077F920);

    swift_arrayDestroy();

    v27 = *(v29 + 8);
    v27(v28, v30);
  }

  else
  {
    v24 = v0[13];
    v25 = v0[10];
    v26 = v0[11];

    v27 = *(v26 + 8);
    v27(v24, v25);
  }

  v0[16] = v27;
  v35 = swift_task_alloc();
  v0[17] = v35;
  *v35 = v0;
  v35[1] = sub_100579A60;
  v36 = v0[15];
  v37 = v0[8];
  v38 = v0[9];
  v39 = v0[6];
  v40 = v0[7];
  v42 = v0[4];
  v41 = v0[5];

  return sub_10057A038(v42, v41, v39, v36, v40, v37, v38);
}

uint64_t sub_100579A60(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_100579B60, 0, 0);
}

uint64_t sub_100579B60()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_100579D88;
    v3 = *(v0 + 120);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 160);

    return sub_10058505C(v1, v7, v3, v6, v4, v5);
  }

  else
  {
    static Logger.ald.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_100625FA0();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] License renewal complete", v11, 0xCu);
      sub_1000032A8(v12, &qword_10077F920);
    }

    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);
    v19 = *(v0 + 56);

    v15(v17, v18);
    (*(v16 + 8))(v14, v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100579D88()
{

  return _swift_task_switch(sub_100579EA0, 0, 0);
}

uint64_t sub_100579EA0()
{
  static Logger.ald.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] License renewal complete", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[7];

  v7(v9, v10);
  (*(v8 + 8))(v6, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10057A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[116] = a7;
  v7[115] = a5;
  v7[114] = a3;
  v7[113] = a2;
  v7[112] = a1;
  v12 = type metadata accessor for LogKey.Prefix();
  v7[117] = v12;
  v7[118] = *(v12 - 8);
  v7[119] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v7[120] = v13;
  v7[121] = *(v13 - 8);
  v7[122] = swift_task_alloc();
  v7[123] = type metadata accessor for NewLicenseBatch(0);
  v7[124] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v7[125] = v14;
  v7[126] = *(v14 - 8);
  v7[127] = swift_task_alloc();
  v7[128] = swift_task_alloc();
  sub_1001F0C48(&qword_100787DD0);
  v7[129] = swift_task_alloc();
  v15 = type metadata accessor for LicenseUtilities.Batch();
  v7[130] = v15;
  v7[131] = *(v15 - 8);
  v7[132] = swift_task_alloc();
  v7[133] = swift_task_alloc();
  v7[134] = swift_task_alloc();
  v7[135] = swift_task_alloc();
  v7[136] = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  v7[137] = swift_task_alloc();
  sub_1001F0C48(&qword_100787DD8);
  v7[138] = swift_task_alloc();
  v7[139] = swift_task_alloc();
  v7[140] = swift_task_alloc();
  v16 = type metadata accessor for ConfigurationBag(0);
  v7[141] = v16;
  v7[142] = *(v16 - 8);
  v7[143] = swift_task_alloc();
  v7[144] = swift_task_alloc();
  v7[145] = swift_task_alloc();
  v7[146] = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0);
  v7[147] = swift_task_alloc();
  v7[148] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v7[149] = swift_task_alloc();
  v7[150] = swift_task_alloc();
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  v7[154] = swift_task_alloc();
  v7[33] = a5;
  v7[34] = a6;
  v7[35] = a7;
  v17 = sub_10020A748(v7 + 30);
  (*(*(a5 - 8) + 16))(v17, a4, a5);

  return _swift_task_switch(sub_10057A4F8, 0, 0);
}

uint64_t sub_10057A4F8()
{
  v1 = *(*(v0 + 896) + 16);
  *(v0 + 1240) = v1;
  if (!v1)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_59:
    v111 = v3[2];

    if (!v111)
    {

      v3 = 0;
    }

    sub_10000710C(v0 + 240);

    v112 = *(v0 + 8);

    return v112(v3);
  }

  v2 = 0;
  v131 = (v0 + 848);
  v125 = (v0 + 880);
  v126 = (v0 + 856);
  *(v0 + 1512) = enum case for LogKey.Prefix.undefined(_:);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 1272) = _swiftEmptyDictionarySingleton;
    *(v0 + 1264) = v3;
    *(v0 + 1256) = v2;
    *(v0 + 1248) = _swiftEmptyDictionarySingleton;
    v10 = *(v0 + 896) + 24 * v2;
    v11 = *(v10 + 32);
    *(v0 + 1280) = v11;
    v12 = *(v10 + 40);
    *(v0 + 1288) = v12;
    LODWORD(v10) = *(v10 + 48);
    *(v0 + 1516) = v10;
    if (v10 != 1)
    {
      break;
    }

    v13 = objc_allocWithZone(LSApplicationRecord);

    v14 = String._bridgeToObjectiveC()();
    *v126 = 0;
    v15 = [v13 initWithBundleIdentifier:v14 allowPlaceholder:0 error:v126];

    v16 = *v126;
    if (v15)
    {
      goto LABEL_10;
    }

    v17 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v19 = v18;
    *(v0 + 744) = 0;
    *(v0 + 752) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *(v0 + 760) = 0x20746F6E20707041;
    *(v0 + 768) = 0xEF2820646E756F66;
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = *(v0 + 760);
    v23 = *(v0 + 768);
    *v19 = 0x6C6177656E6572;
    v19[1] = 0xE700000000000000;
    v19[2] = v22;
    v19[3] = v23;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_48:
    v89 = *(v0 + 1516);
    v90 = *(v0 + 1288);
    v91 = *(v0 + 1280);
    static Logger.ald.getter();
    sub_1001DFDA4(v91, v90, v89);
    swift_errorRetain();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    sub_1001DFEBC(v91, v90, v89);

    if (os_log_type_enabled(v92, v93))
    {
      v130 = v93;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v131 = swift_slowAlloc();
      *v94 = 138412802;
      if (qword_10077E598 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v96 = *(v0 + 616);
      if (!v96 || (, , , os_unfair_lock_lock((v96 + 24)), v97 = *(v96 + 16), v98 = v97, os_unfair_lock_unlock((v96 + 24)), , !v97))
      {
        (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
        v99 = objc_allocWithZone(type metadata accessor for LogKey());
        v98 = LogKey.init(prefix:)();
      }

      v100 = *(v0 + 1516);
      *(v94 + 4) = v98;
      *v95 = v98;
      *(v94 + 12) = 2082;
      v129 = v95;
      if (v100 == 1)
      {
        v101 = *(v0 + 1288);
        v102 = *(v0 + 1280);
      }

      else
      {
        *(v0 + 832) = *(v0 + 1280);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v101 = v103;
      }

      v104 = *(v0 + 968);
      v127 = *(v0 + 960);
      v128 = *(v0 + 976);
      v105 = sub_1002346CC(v102, v101, v131);

      *(v94 + 14) = v105;
      *(v94 + 22) = 2082;
      swift_getErrorValue();
      v106 = *(*(v0 + 696) - 8);
      swift_task_alloc();
      (*(v106 + 16))();
      v107 = String.init<A>(describing:)();
      v109 = v108;

      v110 = sub_1002346CC(v107, v109, v131);

      *(v94 + 24) = v110;
      sub_1000032A8(v129, &qword_10077F920);

      swift_arrayDestroy();

      (*(v104 + 8))(v128, v127);
    }

    else
    {
      v4 = *(v0 + 1516);
      v5 = *(v0 + 1288);
      v6 = *(v0 + 1280);
      v7 = *(v0 + 976);
      v8 = *(v0 + 968);
      v9 = *(v0 + 960);

      sub_1001DFEBC(v6, v5, v4);

      (*(v8 + 8))(v7, v9);
    }

    v3 = *(v0 + 1264);
    v2 = *(v0 + 1256) + 1;
    if (v2 == *(v0 + 1240))
    {
      goto LABEL_59;
    }
  }

  v24 = objc_allocWithZone(LSApplicationRecord);
  *v125 = 0;
  v25 = [v24 initWithStoreItemIdentifier:v11 error:v125];
  v16 = *v125;
  if (!v25)
  {
    v40 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v42 = v41;
    *(v0 + 808) = 0;
    *(v0 + 816) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *(v0 + 792) = 0x20746F6E20707041;
    *(v0 + 800) = 0xEF2820646E756F66;
    *(v0 + 888) = v11;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = *(v0 + 792);
    v46 = *(v0 + 800);
    *v42 = 0x6C6177656E6572;
    v42[1] = 0xE700000000000000;
    v42[2] = v45;
    v42[3] = v46;
    goto LABEL_19;
  }

  v15 = v25;
LABEL_10:
  *(v0 + 1296) = v15;
  v26 = *(v0 + 912);
  v27 = v16;
  if (v26)
  {
    v28 = [v15 iTunesMetadata];
    v29 = [v28 distributorInfo];

    v30 = [v29 distributorID];
    if (!v30)
    {
      goto LABEL_17;
    }

    v31 = *(v0 + 912);
    v32 = *(v0 + 904);
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v33 == v32 && v31 == v35)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
LABEL_17:
        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v38 = 0x6C6177656E6572;
        v38[1] = 0xE700000000000000;
        v38[2] = 0x20746F6E20707041;
        v39 = 0xED0000646E756F66;
LABEL_38:
        v38[3] = v39;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_48;
      }
    }
  }

  v47 = [v15 iTunesMetadata];
  v48 = [v47 distributorInfo];

  v49 = [v48 distributorID];
  if (!v49)
  {
    goto LABEL_37;
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v54 = [v15 bundleIdentifier];
  if (!v54)
  {
    goto LABEL_28;
  }

  v55 = v54;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  if (v51 == v56 && v53 == v58)
  {
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v60 & 1) == 0)
    {
LABEL_28:
      *(v0 + 472) = &type metadata for NativeDistributor;
      v61 = sub_1003000A4();
      goto LABEL_32;
    }
  }

  v62 = [v48 domain];
  if (!v62)
  {
LABEL_37:

    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_1000032A8(v0 + 448, &unk_10077FA50);
    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v38 = 0x6C6177656E6572;
    v38[1] = 0xE700000000000000;
    v38[2] = 0xD000000000000014;
    v39 = 0x80000001006CD530;
    goto LABEL_38;
  }

  v63 = v62;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v64;

  *(v0 + 472) = &type metadata for WebDistributor;
  v61 = sub_100231E84();
LABEL_32:
  *(v0 + 480) = v61;

  *(v0 + 448) = v51;
  *(v0 + 456) = v53;
  sub_1001DFDBC((v0 + 448), v0 + 408);
  v65 = [v15 iTunesMetadata];
  v66 = [v65 distributorInfo];

  v67 = [v66 accountID];
  if (!v67)
  {
    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v80 = 0x6C6177656E6572;
    v80[1] = 0xE700000000000000;
    v80[2] = 0xD000000000000013;
    v81 = 0x80000001006CD550;
    goto LABEL_47;
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  *(v0 + 1304) = v68;
  *(v0 + 1312) = v70;
  v71 = [v15 bundleIdentifier];
  if (!v71)
  {

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v80 = 0x6C6177656E6572;
    v80[1] = 0xE700000000000000;
    v80[2] = 0xD000000000000013;
    v81 = 0x80000001006CD570;
    goto LABEL_47;
  }

  v72 = v71;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  *(v0 + 1320) = v73;
  *(v0 + 1328) = v75;
  sub_10020A980(v0 + 408, v0 + 488);
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    countAndFlagsBits = *(v0 + 728);
    object = *(v0 + 736);
    goto LABEL_68;
  }

  v76 = [v15 iTunesMetadata];
  v77 = [v76 distributorInfo];

  v78 = [v77 sourceURL];
  if (v78)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  v82 = *(v0 + 1232);
  v83 = *(v0 + 1224);
  v84 = *(v0 + 1008);
  v85 = *(v0 + 1000);
  (*(v84 + 56))(v83, v79, 1, v85);
  sub_1002321B0(v83, v82);
  v86 = (*(v84 + 48))(v82, 1, v85);
  v87 = *(v0 + 1232);
  if (v86)
  {

    sub_1000032A8(v87, &unk_1007809F0);
    goto LABEL_46;
  }

  (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
  sub_1000032A8(v87, &unk_1007809F0);
  v88 = URL.host(percentEncoded:)(1);
  if (!v88.value._object)
  {
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

LABEL_46:
    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v80 = 0x6C6177656E6572;
    v80[1] = 0xE700000000000000;
    v80[2] = 0xD000000000000010;
    v81 = 0x80000001006CD590;
LABEL_47:
    v80[3] = v81;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10000710C(v0 + 408);
    goto LABEL_48;
  }

  object = v88.value._object;
  countAndFlagsBits = v88.value._countAndFlagsBits;
  v116 = URL.port.getter();
  if ((v117 & 1) == 0)
  {
    v118 = v116;
    *(v0 + 776) = v88;
    v119._countAndFlagsBits = 58;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    *(v0 + 872) = v118;
    v120._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v120);

    countAndFlagsBits = *(v0 + 776);
    object = *(v0 + 784);
  }

  (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
LABEL_68:
  *(v0 + 1344) = object;
  *(v0 + 1336) = countAndFlagsBits;
  v121 = *(v0 + 1184);
  v122 = sub_100006D8C((v0 + 240), *(v0 + 264));
  sub_100005934(*v122 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v121, &qword_1007812A0);
  v123 = swift_task_alloc();
  *(v0 + 1352) = v123;
  *(v123 + 16) = v73;
  *(v123 + 24) = v75;
  v124 = swift_task_alloc();
  *(v0 + 1360) = v124;
  *v124 = v0;
  v124[1] = sub_10057B830;

  return sub_1003B3900(sub_100588F48, v123);
}

uint64_t sub_10057B830(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 1368) = a1;
  *(v4 + 1517) = a2;
  *(v4 + 1376) = v2;

  sub_1000032A8(*(v4 + 1184), &qword_1007812A0);
  if (v2)
  {

    v5 = sub_10057DBD8;
  }

  else
  {

    v5 = sub_10057BA08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10057BA08()
{
  v282 = v0;
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v276 = *(v0 + 1296);
  v278 = *(v0 + 1272);
  v263 = *(v0 + 1336);
  v266 = *(v0 + 1008);
  v269 = *(v0 + 1216);
  v273 = *(v0 + 1000);
  v257 = *(v0 + 920);
  v260 = *(v0 + 928);
  v4 = type metadata accessor for DecoratedHTTP();
  *(v0 + 1384) = v4;
  sub_10020A980(v0 + 408, v0 + 568);

  v255 = sub_100625FA0();
  v5 = *(v0 + 264);
  v253 = sub_100006D8C((v0 + 240), v5);
  v6 = [objc_opt_self() ephemeralSessionConfiguration];
  [v6 setHTTPShouldSetCookies:0];
  [v6 setHTTPCookieAcceptPolicy:1];
  [v6 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v7 = [objc_opt_self() sessionWithConfiguration:v6];

  type metadata accessor for PlainHTTP();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v9 = *(v5 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v253, v5);
  v11 = v4;
  v12 = sub_10038E7B4(v8, v0 + 568, v3, v2, 0, v255, v10, v4, v257, v260);
  *(v0 + 1392) = v12;

  *(v0 + 712) = v263;
  *(v0 + 720) = v1;

  v13._countAndFlagsBits = 45;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = *(v0 + 432);
  v15 = *(v0 + 440);
  v256 = v0 + 408;
  sub_100006D8C((v0 + 408), v14);
  v16._countAndFlagsBits = (*(v15 + 40))(v14, v15);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v3;
  v18._object = v2;
  String.append(_:)(v18);
  v19 = *(v0 + 712);
  *(v0 + 1400) = v19;
  v20 = *(v0 + 720);
  *(v0 + 1408) = v20;
  (*(v266 + 56))(v269, 1, 1, v273);
  v21 = [v276 iTunesMetadata];
  v22 = [v21 storeItemIdentifier];

  *(v0 + 824) = v22;
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v0 + 1416) = v23;
  *(v0 + 1424) = v24;
  if (!*(v278 + 16) || (v25 = v23, v26 = v24, v27 = sub_10052213C(v19, v20), (v28 & 1) == 0))
  {
    *(v0 + 552) = v11;
    *(v0 + 560) = &off_100762548;
    *(v0 + 528) = v12;

    v44 = sub_100625FA0();
    *(v0 + 1432) = v44;
    v45 = swift_task_alloc();
    *(v0 + 1440) = v45;
    *v45 = v0;
    v45[1] = sub_10057EEE4;
    v46 = *(v0 + 1344);
    v47 = *(v0 + 1336);
    v48 = *(v0 + 1120);

    return sub_1003936EC(v48, v47, v46, v0 + 528, v44);
  }

  v29 = v27;
  v30 = *(v0 + 1272);
  v31 = *(v0 + 1168);
  v32 = *(v0 + 1160);
  v33 = *(v0 + 1136);
  v34 = *(v0 + 1128);

  v35 = *(v30 + 56);
  v36 = *(v33 + 72);
  sub_10058900C(v35 + v36 * v29, v32, type metadata accessor for ConfigurationBag);
  sub_100588FA4(v32, v31, type metadata accessor for ConfigurationBag);
  v37 = *(v31 + *(v34 + 36));
  if (v37 && *(v37 + 16) && (v38 = sub_10052213C(v25, v26), (v39 & 1) != 0))
  {
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1128);
    v42 = *(v0 + 1104);
    sub_10058900C(*(v37 + 56) + v38 * v36, v42, type metadata accessor for ConfigurationBag);
    (*(v40 + 56))(v42, 0, 1, v41);
    sub_1000032A8(v42, &qword_100787DD8);
    v43 = 0;
  }

  else
  {
    v50 = *(v0 + 1192);
    v51 = *(v0 + 1168);
    v52 = *(v0 + 1128);
    v53 = *(v0 + 1104);
    v54 = *(v0 + 1088);
    v55 = *(v0 + 1008);
    v56 = *(v0 + 1000);
    (*(*(v0 + 1136) + 56))(v53, 1, 1, v52);
    sub_1000032A8(v53, &qword_100787DD8);
    sub_100005934(v51 + *(v52 + 20) + *(v54 + 20), v50, &unk_1007809F0);
    v43 = (*(v55 + 48))(v50, 1, v56) != 1;
    sub_1000032A8(v50, &unk_1007809F0);
  }

  v277 = (v0 + 848);
  v252 = (v0 + 880);
  v254 = (v0 + 856);
  v57 = *(v0 + 1216);
  v58 = *(v0 + 1168);
  v59 = *(v0 + 1144);
  v60 = *(v0 + 1128);
  v61 = *(v0 + 1096);
  v62 = *(v0 + 1088);
  sub_1003940B0(v25, v26, v59);

  sub_100589074(v58, type metadata accessor for ConfigurationBag);
  sub_1000032A8(v57, &unk_1007809F0);
  sub_10058900C(v59 + *(v60 + 20), v61, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_100589074(v59, type metadata accessor for ConfigurationBag);
  sub_100005934(v61 + *(v62 + 32), v57, &unk_1007809F0);
  sub_100589074(v61, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  v63 = *(v0 + 1376);
  v64 = *(v0 + 1248);
  v279 = *(v0 + 1272);
  *(v0 + 1464) = v279;
  v274 = v64;
  *(v0 + 1456) = v64;
  p_name = &stru_100779FF8.name;
  v66 = (&stru_100779FF8 + 8);
  if ((*(v0 + 1517) & 1) == 0)
  {
    v69 = (v0 + 1368);
    if (!v43)
    {
LABEL_29:

      goto LABEL_30;
    }

LABEL_15:
    v264 = *v69;
    v267 = *(v0 + 1336);
    v258 = *(v0 + 1320);
    v261 = *(v0 + 1328);
    v70 = *(v0 + 1296);
    v270 = *(v0 + 1344);
    v275 = *(v0 + 1264);
    v71 = *(v0 + 1048);
    v280 = *(v0 + 1040);
    v72 = *(v0 + 1032);
    sub_1001DFEBC(*(v0 + 1280), *(v0 + 1288), *(v0 + 1516));
    v73 = [v70 iTunesMetadata];
    v74 = [v73 storeItemIdentifier];

    v75 = [v70 iTunesMetadata];
    v76 = [v75 versionIdentifier];

    LOBYTE(v75) = [v70 isManagedAppDistributor];
    v77 = [v70 localizedName];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    *(v0 + 112) = v258;
    *(v0 + 120) = v261;
    *(v0 + 128) = v74;
    *(v0 + 136) = v76;
    *(v0 + 144) = v264;
    *(v0 + 152) = v75;
    *(v0 + 160) = v78;
    *(v0 + 168) = v80;
    v81 = swift_task_alloc();
    v81[2] = v267;
    v81[3] = v270;
    v81[4] = v256;
    sub_100209C3C(sub_100588F80, v275, v72);

    if ((*(v71 + 48))(v72, 1, v280) == 1)
    {
      sub_1000032A8(*(v0 + 1032), &qword_100787DD0);
    }

    else
    {
      v84 = *(v0 + 1080);
      v85 = *(v0 + 1072);
      sub_100588FA4(*(v0 + 1032), v84, type metadata accessor for LicenseUtilities.Batch);
      sub_10058900C(v84, v85, type metadata accessor for LicenseUtilities.Batch);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v122 = *(v0 + 1296);
        v123 = *(v0 + 1216);
        v124 = *(v0 + 1080);

        swift_beginAccess();
        sub_1003F1EE0(v281, (v0 + 112));
        swift_endAccess();

        sub_100589074(v124, type metadata accessor for LicenseUtilities.Batch);
        sub_1000032A8(v123, &unk_1007809F0);
        v125 = v281[1];
        *(v0 + 176) = v281[0];
        *(v0 + 192) = v125;
        v126 = v281[3];
        *(v0 + 208) = v281[2];
        *(v0 + 224) = v126;
        sub_1001F7250(v0 + 176);
        v101 = *(v0 + 1264);
        p_name = (&stru_100779FF8 + 8);
LABEL_38:
        sub_10000710C(v256);
        v279 = *(v0 + 1464);
        v274 = *(v0 + 1456);
        goto LABEL_93;
      }

      v86 = *(v0 + 1072);
      sub_100589074(*(v0 + 1080), type metadata accessor for LicenseUtilities.Batch);
      sub_100589074(v86, type metadata accessor for LicenseUtilities.Batch);
    }

    v87 = *(v0 + 1392);
    v88 = *(v0 + 1384);
    v268 = *(v0 + 1336);
    v271 = *(v0 + 1344);
    v89 = *(v0 + 1312);
    v90 = *(v0 + 1304);
    v91 = *(v0 + 1216);
    v92 = *(v0 + 1200);
    v93 = *(v0 + 1064);
    sub_10020A980(v256, v0 + 368);
    sub_1001F0C48(&qword_100787DE0);
    inited = swift_initStackObject();
    inited[1] = xmmword_10069E680;
    v95 = *(v0 + 160);
    v97 = *(v0 + 112);
    v96 = *(v0 + 128);
    inited[4] = *(v0 + 144);
    inited[5] = v95;
    inited[2] = v97;
    inited[3] = v96;
    v98 = sub_1001F6964(inited);
    swift_setDeallocating();
    sub_1001F7250((inited + 2));
    sub_100005934(v91, v92, &unk_1007809F0);
    *(v0 + 352) = v88;
    *(v0 + 360) = &off_100762548;
    *(v0 + 328) = v87;
    type metadata accessor for LicenseRenewalBatch();
    v99 = swift_allocObject();
    v99[4] = &_swiftEmptySetSingleton;
    v99[2] = v90;
    v99[3] = v89;
    swift_beginAccess();
    v99[4] = v98;
    v99[5] = v268;
    v99[6] = v271;
    sub_1001DFDBC((v0 + 368), (v99 + 7));
    sub_1001DFDBC((v0 + 328), (v99 + 12));
    sub_1002321B0(v92, v99 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LicenseRenewalBatch_resolutionURL);
    *v93 = v99;
    swift_storeEnumTagMultiPayload();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(v0 + 1264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_100363300(0, v101[2] + 1, 1, *(v0 + 1264));
    }

    v103 = v101[2];
    v102 = v101[3];
    p_name = (&stru_100779FF8 + 8);
    if (v103 >= v102 >> 1)
    {
      v101 = sub_100363300(v102 > 1, v103 + 1, 1, v101);
    }

    v104 = *(v0 + 1296);
    v105 = *(v0 + 1216);
    v106 = *(v0 + 1064);
    v107 = *(v0 + 1048);

    sub_1000032A8(v105, &unk_1007809F0);
    v101[2] = v103 + 1;
    sub_100588FA4(v106, v101 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v103, type metadata accessor for LicenseUtilities.Batch);
    goto LABEL_38;
  }

  v67 = sub_10060C8EC();
  if (v68 >> 60 == 15)
  {

    goto LABEL_31;
  }

  if (qword_10077E580 != -1)
  {
    v127 = v67;
    v128 = v68;
    swift_once();
    v67 = v127;
    v68 = v128;
  }

  v82 = v67;
  v83 = v68;
  sub_1005F51E0(v67, v68, v0 + 288);
  if (!v63)
  {
    v69 = (v0 + 304);
    sub_10020B0E0(v82, v83);
    if (!v43)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  sub_10020B0E0(v82, v83);
LABEL_30:
  v66 = &stru_100779FF8.name;
LABEL_31:
  v108 = [*(v0 + 1296) iTunesMetadata];
  v109 = [v108 distributorInfo];

  v110 = [v109 v66[429]];
  if (!v110)
  {
    v119 = *(v0 + 1296);
    v120 = *(v0 + 1216);

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v121 = 0x726961706572;
    v121[1] = 0xE600000000000000;
    v121[2] = 0xD000000000000011;
    v121[3] = 0x80000001006CD5B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000032A8(v120, &unk_1007809F0);
LABEL_80:
    v209 = v0 + 408;
LABEL_81:
    sub_10000710C(v209);
    while (1)
    {
      while (1)
      {
        v211 = *(v0 + 1516);
        v212 = *(v0 + 1288);
        v213 = *(v0 + 1280);
        static Logger.ald.getter();
        sub_1001DFDA4(v213, v212, v211);
        swift_errorRetain();
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.error.getter();
        sub_1001DFEBC(v213, v212, v211);

        if (os_log_type_enabled(v214, v215))
        {
          v272 = v215;
          v216 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          *v277 = swift_slowAlloc();
          *v216 = 138412802;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v218 = *(v0 + 616);
          if (!v218 || (, , , os_unfair_lock_lock((v218 + 24)), v219 = *(v218 + 16), v220 = v219, os_unfair_lock_unlock((v218 + 24)), , !v219))
          {
            (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
            v221 = objc_allocWithZone(type metadata accessor for LogKey());
            v220 = LogKey.init(prefix:)();
          }

          v222 = *(v0 + 1516);
          *(v216 + 4) = v220;
          *v217 = v220;
          *(v216 + 12) = 2082;
          v265 = v217;
          if (v222 == 1)
          {
            v223 = *(v0 + 1288);
            v224 = *(v0 + 1280);
          }

          else
          {
            *(v0 + 832) = *(v0 + 1280);
            v224 = dispatch thunk of CustomStringConvertible.description.getter();
            v223 = v231;
          }

          v232 = *(v0 + 968);
          v259 = *(v0 + 960);
          v262 = *(v0 + 976);
          v233 = sub_1002346CC(v224, v223, v277);

          *(v216 + 14) = v233;
          *(v216 + 22) = 2082;
          swift_getErrorValue();
          v234 = *(*(v0 + 696) - 8);
          swift_task_alloc();
          (*(v234 + 16))();
          v235 = String.init<A>(describing:)();
          v237 = v236;

          v238 = sub_1002346CC(v235, v237, v277);

          *(v216 + 24) = v238;
          sub_1000032A8(v265, &qword_10077F920);

          swift_arrayDestroy();

          (*(v232 + 8))(v262, v259);
          v101 = *(v0 + 1264);
          p_name = &stru_100779FF8.name;
        }

        else
        {
          v225 = *(v0 + 1516);
          v226 = *(v0 + 1288);
          v227 = *(v0 + 1280);
          v228 = *(v0 + 976);
          v229 = *(v0 + 968);
          v230 = *(v0 + 960);

          sub_1001DFEBC(v227, v226, v225);

          (*(v229 + 8))(v228, v230);
          v101 = *(v0 + 1264);
        }

LABEL_93:
        v239 = *(v0 + 1256) + 1;
        if (v239 == *(v0 + 1240))
        {
          v129 = v101[2];

          if (!v129)
          {

            v101 = 0;
          }

          sub_10000710C(v0 + 240);

          v130 = *(v0 + 8);

          return v130(v101);
        }

        *(v0 + 1272) = v279;
        *(v0 + 1264) = v101;
        *(v0 + 1256) = v239;
        *(v0 + 1248) = v274;
        v131 = *(v0 + 896) + 24 * v239;
        v132 = *(v131 + 32);
        *(v0 + 1280) = v132;
        v133 = *(v131 + 40);
        *(v0 + 1288) = v133;
        v134 = *(v131 + 48);
        *(v0 + 1516) = v134;
        if (v134 != 1)
        {
          break;
        }

        v135 = objc_allocWithZone(LSApplicationRecord);

        v136 = String._bridgeToObjectiveC()();
        *v254 = 0;
        v137 = [v135 initWithBundleIdentifier:v136 allowPlaceholder:0 error:v254];

        v138 = *v254;
        if (!v137)
        {
          v139 = v138;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          v141 = v140;
          *(v0 + 744) = 0;
          *(v0 + 752) = 0xE000000000000000;
          _StringGuts.grow(_:)(18);

          *(v0 + 760) = 0x20746F6E20707041;
          *(v0 + 768) = 0xEF2820646E756F66;
          v142._countAndFlagsBits = v132;
          v142._object = v133;
          String.append(_:)(v142);
          v143._countAndFlagsBits = 41;
          v143._object = 0xE100000000000000;
          String.append(_:)(v143);
          v144 = *(v0 + 760);
          v145 = *(v0 + 768);
          *v141 = 0x6C6177656E6572;
          v141[1] = 0xE700000000000000;
          v141[2] = v144;
          v141[3] = v145;
          goto LABEL_58;
        }

LABEL_49:
        *(v0 + 1296) = v137;
        v148 = *(v0 + 912);
        v149 = v138;
        v150 = &stru_100779FF8.name;
        if (v148)
        {
          v151 = [v137 iTunesMetadata];
          v152 = [v151 p_name[60]];

          v153 = [v152 distributorID];
          if (!v153)
          {
            goto LABEL_56;
          }

          v154 = *(v0 + 912);
          v155 = *(v0 + 904);
          v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v157;

          if (v156 == v155 && v154 == v158)
          {

            v150 = &stru_100779FF8.name;
          }

          else
          {
            v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v150 = (&stru_100779FF8 + 8);
            if ((v160 & 1) == 0)
            {
LABEL_56:
              type metadata accessor for InternalError();
              sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
              swift_allocError();
              *v161 = 0x6C6177656E6572;
              *(v161 + 8) = 0xE700000000000000;
              strcpy((v161 + 16), "App not found");
              *(v161 + 30) = -4864;
              goto LABEL_69;
            }
          }
        }

        v169 = [v137 v150[62]];
        v170 = [v169 p_name[60]];

        v171 = [v170 distributorID];
        if (!v171)
        {
          goto LABEL_68;
        }

        v172 = v171;
        v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v175 = v174;

        v176 = [v137 bundleIdentifier];
        if (!v176)
        {
          goto LABEL_70;
        }

        v177 = v176;
        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        if (v173 == v178 && v175 == v180)
        {

          goto LABEL_66;
        }

        v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v150 = (&stru_100779FF8 + 8);
        if (v181)
        {
LABEL_66:

          v182 = [v170 domain];
          v150 = (&stru_100779FF8 + 8);
          if (v182)
          {
            v183 = v182;
            v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v175 = v184;

            *(v0 + 472) = &type metadata for WebDistributor;
            v185 = sub_100231E84();
            goto LABEL_71;
          }

LABEL_68:

          *(v0 + 480) = 0;
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          sub_1000032A8(v0 + 448, &unk_10077FA50);
          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v186 = 0x6C6177656E6572;
          v186[1] = 0xE700000000000000;
          v186[2] = 0xD000000000000014;
          v186[3] = 0x80000001006CD530;
LABEL_69:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
LABEL_70:
          *(v0 + 472) = &type metadata for NativeDistributor;
          v185 = sub_1003000A4();
LABEL_71:
          *(v0 + 480) = v185;

          *(v0 + 448) = v173;
          *(v0 + 456) = v175;
          sub_1001DFDBC((v0 + 448), v256);
          v187 = [v137 v150[62]];
          v188 = [v187 p_name[60]];

          v189 = [v188 accountID];
          if (!v189)
          {
            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v208 = 0x6C6177656E6572;
            v208[1] = 0xE700000000000000;
            v208[2] = 0xD000000000000013;
            v208[3] = 0x80000001006CD550;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            v209 = v0 + 408;
            goto LABEL_81;
          }

          v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v192 = v191;

          *(v0 + 1304) = v190;
          *(v0 + 1312) = v192;
          v193 = [v137 bundleIdentifier];
          if (!v193)
          {

            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v210 = 0x6C6177656E6572;
            v210[1] = 0xE700000000000000;
            v210[2] = 0xD000000000000013;
            v210[3] = 0x80000001006CD570;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            goto LABEL_80;
          }

          v194 = v193;
          v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v197 = v196;

          *(v0 + 1320) = v195;
          *(v0 + 1328) = v197;
          sub_10020A980(v256, v0 + 488);
          sub_1001F0C48(&qword_10077E970);
          if (swift_dynamicCast())
          {
            countAndFlagsBits = *(v0 + 728);
            object = *(v0 + 736);
LABEL_102:
            *(v0 + 1344) = object;
            *(v0 + 1336) = countAndFlagsBits;
            v249 = *(v0 + 1184);
            v250 = sub_100006D8C((v0 + 240), *(v0 + 264));
            sub_100005934(*v250 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v249, &qword_1007812A0);
            v115 = swift_task_alloc();
            *(v0 + 1352) = v115;
            *(v115 + 16) = v195;
            *(v115 + 24) = v197;
            v251 = swift_task_alloc();
            *(v0 + 1360) = v251;
            *v251 = v0;
            v251[1] = sub_10057B830;
            v117 = sub_1003B3900;
            v118 = sub_100588F48;
            goto LABEL_33;
          }

          v198 = [v137 v150[62]];
          v199 = [v198 distributorInfo];

          v200 = [v199 sourceURL];
          v201 = 1;
          if (v200)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v201 = 0;
          }

          v202 = *(v0 + 1232);
          v203 = *(v0 + 1224);
          v204 = *(v0 + 1008);
          v205 = *(v0 + 1000);
          (*(v204 + 56))(v203, v201, 1, v205);
          sub_1002321B0(v203, v202);
          v206 = (*(v204 + 48))(v202, 1, v205);
          v207 = *(v0 + 1232);
          if (v206)
          {

            sub_1000032A8(v207, &unk_1007809F0);
          }

          else
          {
            (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
            sub_1000032A8(v207, &unk_1007809F0);
            v240 = URL.host(percentEncoded:)(1);
            if (v240.value._object)
            {
              object = v240.value._object;
              countAndFlagsBits = v240.value._countAndFlagsBits;
              v244 = URL.port.getter();
              if ((v245 & 1) == 0)
              {
                v246 = v244;
                *(v0 + 776) = v240;
                v247._countAndFlagsBits = 58;
                v247._object = 0xE100000000000000;
                String.append(_:)(v247);
                *(v0 + 872) = v246;
                v248._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v248);

                countAndFlagsBits = *(v0 + 776);
                object = *(v0 + 784);
              }

              (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
              goto LABEL_102;
            }

            (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
          }

          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v241 = 0x6C6177656E6572;
          v241[1] = 0xE700000000000000;
          v241[2] = 0xD000000000000010;
          v241[3] = 0x80000001006CD590;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_10000710C(v256);
          p_name = (&stru_100779FF8 + 8);
        }
      }

      v146 = objc_allocWithZone(LSApplicationRecord);
      *v252 = 0;
      v147 = [v146 initWithStoreItemIdentifier:v132 error:v252];
      v138 = *v252;
      if (v147)
      {
        v137 = v147;
        goto LABEL_49;
      }

      v162 = v138;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      v164 = v163;
      *(v0 + 808) = 0;
      *(v0 + 816) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 792) = 0x20746F6E20707041;
      *(v0 + 800) = 0xEF2820646E756F66;
      *(v0 + 888) = v132;
      v165._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v165);

      v166._countAndFlagsBits = 41;
      v166._object = 0xE100000000000000;
      String.append(_:)(v166);
      v167 = *(v0 + 792);
      v168 = *(v0 + 800);
      *v164 = 0x6C6177656E6572;
      v164[1] = 0xE700000000000000;
      v164[2] = v167;
      v164[3] = v168;
LABEL_58:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v111 = *(v0 + 1328);
  v112 = *(v0 + 1320);
  v113 = *(v0 + 1176);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v114 = sub_100006D8C((v0 + 240), *(v0 + 264));
  sub_100005934(*v114 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v113, &qword_1007812A0);
  v115 = swift_task_alloc();
  *(v0 + 1472) = v115;
  *(v115 + 16) = v112;
  *(v115 + 24) = v111;
  v116 = swift_task_alloc();
  *(v0 + 1480) = v116;
  *v116 = v0;
  v116[1] = sub_1005823D4;
  v117 = sub_1003B3ECC;
  v118 = sub_100588F64;
LABEL_33:

  return v117(v118, v115);
}

uint64_t sub_10057DBD8()
{
  v128 = (v0 + 848);
  v120 = (v0 + 880);
  v121 = (v0 + 856);

  sub_10000710C(v0 + 408);
  v127 = *(v0 + 1272);
  v126 = *(v0 + 1248);
  while (1)
  {
    v3 = *(v0 + 1516);
    v4 = *(v0 + 1288);
    v5 = *(v0 + 1280);
    static Logger.ald.getter();
    sub_1001DFDA4(v5, v4, v3);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1001DFEBC(v5, v4, v3);

    if (os_log_type_enabled(v6, v7))
    {
      v125 = v7;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v128 = swift_slowAlloc();
      *v8 = 138412802;
      if (qword_10077E598 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v10 = *(v0 + 616);
      if (!v10 || (, , , os_unfair_lock_lock((v10 + 24)), v11 = *(v10 + 16), v12 = v11, os_unfair_lock_unlock((v10 + 24)), , !v11))
      {
        (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
        v13 = objc_allocWithZone(type metadata accessor for LogKey());
        v12 = LogKey.init(prefix:)();
      }

      v14 = *(v0 + 1516);
      *(v8 + 4) = v12;
      *v9 = v12;
      *(v8 + 12) = 2082;
      v124 = v9;
      if (v14 == 1)
      {
        v15 = *(v0 + 1288);
        v16 = *(v0 + 1280);
      }

      else
      {
        *(v0 + 832) = *(v0 + 1280);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v23;
      }

      v24 = *(v0 + 968);
      v122 = *(v0 + 960);
      v123 = *(v0 + 976);
      v25 = sub_1002346CC(v16, v15, v128);

      *(v8 + 14) = v25;
      *(v8 + 22) = 2082;
      swift_getErrorValue();
      v26 = *(*(v0 + 696) - 8);
      swift_task_alloc();
      (*(v26 + 16))();
      v27 = String.init<A>(describing:)();
      v29 = v28;

      v30 = sub_1002346CC(v27, v29, v128);

      *(v8 + 24) = v30;
      sub_1000032A8(v124, &qword_10077F920);

      swift_arrayDestroy();

      (*(v24 + 8))(v123, v122);
    }

    else
    {
      v17 = *(v0 + 1516);
      v18 = *(v0 + 1288);
      v19 = *(v0 + 1280);
      v20 = *(v0 + 976);
      v21 = *(v0 + 968);
      v22 = *(v0 + 960);

      sub_1001DFEBC(v19, v18, v17);

      (*(v21 + 8))(v20, v22);
    }

    v31 = *(v0 + 1264);
    v32 = *(v0 + 1256) + 1;
    if (v32 == *(v0 + 1240))
    {
      break;
    }

    *(v0 + 1272) = v127;
    *(v0 + 1264) = v31;
    *(v0 + 1256) = v32;
    *(v0 + 1248) = v126;
    v33 = *(v0 + 896) + 24 * v32;
    v34 = *(v33 + 32);
    *(v0 + 1280) = v34;
    v35 = *(v33 + 40);
    *(v0 + 1288) = v35;
    LODWORD(v33) = *(v33 + 48);
    *(v0 + 1516) = v33;
    if (v33 == 1)
    {
      v36 = objc_allocWithZone(LSApplicationRecord);

      v37 = String._bridgeToObjectiveC()();
      *v121 = 0;
      v38 = [v36 initWithBundleIdentifier:v37 allowPlaceholder:0 error:v121];

      v39 = *v121;
      if (!v38)
      {
        v40 = v39;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        v42 = v41;
        *(v0 + 744) = 0;
        *(v0 + 752) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        *(v0 + 760) = 0x20746F6E20707041;
        *(v0 + 768) = 0xEF2820646E756F66;
        v43._countAndFlagsBits = v34;
        v43._object = v35;
        String.append(_:)(v43);
        v44._countAndFlagsBits = 41;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);
        v45 = *(v0 + 760);
        v46 = *(v0 + 768);
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    v47 = objc_allocWithZone(LSApplicationRecord);
    *v120 = 0;
    v48 = [v47 initWithStoreItemIdentifier:v34 error:v120];
    v39 = *v120;
    if (v48)
    {
      v38 = v48;
LABEL_21:
      *(v0 + 1296) = v38;
      v49 = *(v0 + 912);
      v50 = v39;
      if (v49)
      {
        v51 = [v38 iTunesMetadata];
        v52 = [v51 distributorInfo];

        v53 = [v52 distributorID];
        if (!v53)
        {
          goto LABEL_2;
        }

        v54 = *(v0 + 912);
        v55 = *(v0 + 904);
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        if (v56 == v55 && v54 == v58)
        {
        }

        else
        {
          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v60 & 1) == 0)
          {
LABEL_2:
            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v1 = 0x6C6177656E6572;
            v1[1] = 0xE700000000000000;
            v1[2] = 0x20746F6E20707041;
            v2 = 0xED0000646E756F66;
            goto LABEL_3;
          }
        }
      }

      v65 = [v38 iTunesMetadata];
      v66 = [v65 distributorInfo];

      v67 = [v66 distributorID];
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = [v38 bundleIdentifier];
        if (v72)
        {
          v73 = v72;
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          if (v69 == v74 && v71 == v76)
          {

LABEL_38:

            v78 = [v66 domain];
            if (v78)
            {
              v79 = v78;
              v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v71 = v80;

              *(v0 + 472) = &type metadata for WebDistributor;
              v81 = sub_100231E84();
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v77)
          {
            goto LABEL_38;
          }
        }

        *(v0 + 472) = &type metadata for NativeDistributor;
        v81 = sub_1003000A4();
LABEL_42:
        *(v0 + 480) = v81;

        *(v0 + 448) = v69;
        *(v0 + 456) = v71;
        sub_1001DFDBC((v0 + 448), v0 + 408);
        v82 = [v38 iTunesMetadata];
        v83 = [v82 distributorInfo];

        v84 = [v83 accountID];
        if (v84)
        {
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          *(v0 + 1304) = v85;
          *(v0 + 1312) = v87;
          v88 = [v38 bundleIdentifier];
          if (v88)
          {
            v89 = v88;
            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            *(v0 + 1320) = v90;
            *(v0 + 1328) = v92;
            sub_10020A980(v0 + 408, v0 + 488);
            sub_1001F0C48(&qword_10077E970);
            if (swift_dynamicCast())
            {
              countAndFlagsBits = *(v0 + 728);
              object = *(v0 + 736);
LABEL_65:
              *(v0 + 1344) = object;
              *(v0 + 1336) = countAndFlagsBits;
              v116 = *(v0 + 1184);
              v117 = sub_100006D8C((v0 + 240), *(v0 + 264));
              sub_100005934(*v117 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v116, &qword_1007812A0);
              v118 = swift_task_alloc();
              *(v0 + 1352) = v118;
              *(v118 + 16) = v90;
              *(v118 + 24) = v92;
              v119 = swift_task_alloc();
              *(v0 + 1360) = v119;
              *v119 = v0;
              v119[1] = sub_10057B830;

              return sub_1003B3900(sub_100588F48, v118);
            }

            v93 = [v38 iTunesMetadata];
            v94 = [v93 distributorInfo];

            v95 = [v94 sourceURL];
            if (v95)
            {
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v96 = 0;
            }

            else
            {
              v96 = 1;
            }

            v99 = *(v0 + 1232);
            v100 = *(v0 + 1224);
            v101 = *(v0 + 1008);
            v102 = *(v0 + 1000);
            (*(v101 + 56))(v100, v96, 1, v102);
            sub_1002321B0(v100, v99);
            v103 = (*(v101 + 48))(v99, 1, v102);
            v104 = *(v0 + 1232);
            if (v103)
            {

              sub_1000032A8(v104, &unk_1007809F0);
            }

            else
            {
              (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
              sub_1000032A8(v104, &unk_1007809F0);
              v105 = URL.host(percentEncoded:)(1);
              if (v105.value._object)
              {
                object = v105.value._object;
                countAndFlagsBits = v105.value._countAndFlagsBits;
                v111 = URL.port.getter();
                if ((v112 & 1) == 0)
                {
                  v113 = v111;
                  *(v0 + 776) = v105;
                  v114._countAndFlagsBits = 58;
                  v114._object = 0xE100000000000000;
                  String.append(_:)(v114);
                  *(v0 + 872) = v113;
                  v115._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v115);

                  countAndFlagsBits = *(v0 + 776);
                  object = *(v0 + 784);
                }

                (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
                goto LABEL_65;
              }

              (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
            }

            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v97 = 0x6C6177656E6572;
            v97[1] = 0xE700000000000000;
            v97[2] = 0xD000000000000010;
            v98 = 0x80000001006CD590;
          }

          else
          {

            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v97 = 0x6C6177656E6572;
            v97[1] = 0xE700000000000000;
            v97[2] = 0xD000000000000013;
            v98 = 0x80000001006CD570;
          }
        }

        else
        {
          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v97 = 0x6C6177656E6572;
          v97[1] = 0xE700000000000000;
          v97[2] = 0xD000000000000013;
          v98 = 0x80000001006CD550;
        }

        v97[3] = v98;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_10000710C(v0 + 408);
      }

      else
      {
LABEL_40:

        *(v0 + 480) = 0;
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
        sub_1000032A8(v0 + 448, &unk_10077FA50);
        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v1 = 0x6C6177656E6572;
        v1[1] = 0xE700000000000000;
        v1[2] = 0xD000000000000014;
        v2 = 0x80000001006CD530;
LABEL_3:
        v1[3] = v2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      v61 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      v42 = v62;
      *(v0 + 808) = 0;
      *(v0 + 816) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 792) = 0x20746F6E20707041;
      *(v0 + 800) = 0xEF2820646E756F66;
      *(v0 + 888) = v34;
      v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v63);

      v64._countAndFlagsBits = 41;
      v64._object = 0xE100000000000000;
      String.append(_:)(v64);
      v45 = *(v0 + 792);
      v46 = *(v0 + 800);
LABEL_30:
      *v42 = 0x6C6177656E6572;
      v42[1] = 0xE700000000000000;
      v42[2] = v45;
      v42[3] = v46;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v106 = *(v31 + 16);

  if (!v106)
  {

    v31 = 0;
  }

  sub_10000710C(v0 + 240);

  v107 = *(v0 + 8);

  return v107(v31);
}

uint64_t sub_10057EEE4()
{
  v2 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = *(v2 + 1432);

    v4 = sub_100580F2C;
  }

  else
  {

    sub_10000710C(v2 + 528);
    v4 = sub_10057F06C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10057F06C()
{
  v243 = v0;
  v221 = v0 + 408;
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(*(v0 + 1136) + 56);
  v5(v4, 0, 1, v3);
  sub_100588FA4(v4, v2, type metadata accessor for ConfigurationBag);
  v6 = [v1 iTunesMetadata];
  v7 = [v6 storeItemIdentifier];

  *(v0 + 864) = v7;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = *(v2 + *(v3 + 36));
  if (v10 && *(v10 + 16) && (v11 = sub_10052213C(v8, v9), (v12 & 1) != 0))
  {
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1112);
    sub_10058900C(*(v10 + 56) + *(*(v0 + 1136) + 72) * v11, v14, type metadata accessor for ConfigurationBag);
    v5(v14, 0, 1, v13);
    sub_1000032A8(v14, &qword_100787DD8);

    v231 = 0;
  }

  else
  {
    v15 = *(v0 + 1208);
    v16 = *(v0 + 1152);
    v17 = *(v0 + 1128);
    v18 = *(v0 + 1112);
    v19 = *(v0 + 1088);
    v20 = *(v0 + 1008);
    v21 = v5;
    v22 = *(v0 + 1000);
    v21(v18, 1, 1, v17);
    sub_1000032A8(v18, &qword_100787DD8);

    sub_100005934(v16 + *(v17 + 20) + *(v19 + 20), v15, &unk_1007809F0);
    v231 = (*(v20 + 48))(v15, 1, v22) != 1;
    sub_1000032A8(v15, &unk_1007809F0);
  }

  v23 = *(v0 + 1424);
  v222 = (v0 + 880);
  v223 = (v0 + 856);
  v24 = *(v0 + 1416);
  v25 = *(v0 + 1408);
  v26 = *(v0 + 1400);
  v27 = *(v0 + 1248);
  v28 = *(v0 + 1216);
  v29 = *(v0 + 1152);
  v30 = *(v0 + 1144);
  v235 = *(v0 + 1128);
  v238 = (v0 + 848);
  v31 = *(v0 + 1096);
  v239 = *(v0 + 1088);
  sub_10058900C(v29, v30, type metadata accessor for ConfigurationBag);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v242[0] = v27;
  sub_1005C2830(v30, v26, v25, isUniquelyReferenced_nonNull_native);

  sub_1003940B0(v24, v23, v30);

  sub_100589074(v29, type metadata accessor for ConfigurationBag);
  sub_1000032A8(v28, &unk_1007809F0);
  sub_10058900C(v30 + *(v235 + 20), v31, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  sub_100589074(v30, type metadata accessor for ConfigurationBag);
  sub_100005934(v31 + *(v239 + 32), v28, &unk_1007809F0);
  sub_100589074(v31, type metadata accessor for ConfigurationBag.LicenseConfiguration);
  v33 = *(v0 + 1448);
  *(v0 + 1464) = v27;
  v240 = v27;
  *(v0 + 1456) = v27;
  p_name = &stru_100779FF8.name;
  v35 = (&stru_100779FF8 + 8);
  if ((*(v0 + 1517) & 1) == 0)
  {
    v39 = (v0 + 1368);
    if (!v231)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_10:
    v228 = *v39;
    v229 = *(v0 + 1336);
    v224 = *(v0 + 1320);
    v226 = *(v0 + 1328);
    v40 = *(v0 + 1296);
    v232 = *(v0 + 1344);
    v236 = *(v0 + 1264);
    v41 = *(v0 + 1048);
    v241 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    sub_1001DFEBC(*(v0 + 1280), *(v0 + 1288), *(v0 + 1516));
    v43 = [v40 iTunesMetadata];
    v44 = [v43 storeItemIdentifier];

    v45 = [v40 iTunesMetadata];
    v46 = [v45 versionIdentifier];

    LOBYTE(v45) = [v40 isManagedAppDistributor];
    v47 = [v40 localizedName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v0 + 112) = v224;
    *(v0 + 120) = v226;
    *(v0 + 128) = v44;
    *(v0 + 136) = v46;
    *(v0 + 144) = v228;
    *(v0 + 152) = v45;
    *(v0 + 160) = v48;
    *(v0 + 168) = v50;
    v51 = swift_task_alloc();
    v51[2] = v229;
    v51[3] = v232;
    v51[4] = v221;
    sub_100209C3C(sub_100588F80, v236, v42);

    if ((*(v41 + 48))(v42, 1, v241) == 1)
    {
      sub_1000032A8(*(v0 + 1032), &qword_100787DD0);
    }

    else
    {
      v54 = *(v0 + 1080);
      v55 = *(v0 + 1072);
      sub_100588FA4(*(v0 + 1032), v54, type metadata accessor for LicenseUtilities.Batch);
      sub_10058900C(v54, v55, type metadata accessor for LicenseUtilities.Batch);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v93 = *(v0 + 1296);
        v94 = *(v0 + 1216);
        v95 = *(v0 + 1080);

        swift_beginAccess();
        sub_1003F1EE0(v242, (v0 + 112));
        swift_endAccess();

        sub_100589074(v95, type metadata accessor for LicenseUtilities.Batch);
        sub_1000032A8(v94, &unk_1007809F0);
        v96 = v242[1];
        *(v0 + 176) = v242[0];
        *(v0 + 192) = v96;
        v97 = v242[3];
        *(v0 + 208) = v242[2];
        *(v0 + 224) = v97;
        sub_1001F7250(v0 + 176);
        v71 = *(v0 + 1264);
        p_name = (&stru_100779FF8 + 8);
LABEL_33:
        sub_10000710C(v221);
        v237 = *(v0 + 1464);
        v240 = *(v0 + 1456);
        goto LABEL_76;
      }

      v56 = *(v0 + 1072);
      sub_100589074(*(v0 + 1080), type metadata accessor for LicenseUtilities.Batch);
      sub_100589074(v56, type metadata accessor for LicenseUtilities.Batch);
    }

    v57 = *(v0 + 1392);
    v58 = *(v0 + 1384);
    v230 = *(v0 + 1336);
    v233 = *(v0 + 1344);
    v59 = *(v0 + 1312);
    v60 = *(v0 + 1304);
    v61 = *(v0 + 1216);
    v62 = *(v0 + 1200);
    v63 = *(v0 + 1064);
    sub_10020A980(v221, v0 + 368);
    sub_1001F0C48(&qword_100787DE0);
    inited = swift_initStackObject();
    inited[1] = xmmword_10069E680;
    v65 = *(v0 + 160);
    v67 = *(v0 + 112);
    v66 = *(v0 + 128);
    inited[4] = *(v0 + 144);
    inited[5] = v65;
    inited[2] = v67;
    inited[3] = v66;
    v68 = sub_1001F6964(inited);
    swift_setDeallocating();
    sub_1001F7250((inited + 2));
    sub_100005934(v61, v62, &unk_1007809F0);
    *(v0 + 352) = v58;
    *(v0 + 360) = &off_100762548;
    *(v0 + 328) = v57;
    type metadata accessor for LicenseRenewalBatch();
    v69 = swift_allocObject();
    v69[4] = &_swiftEmptySetSingleton;
    v69[2] = v60;
    v69[3] = v59;
    swift_beginAccess();
    v69[4] = v68;
    v69[5] = v230;
    v69[6] = v233;
    sub_1001DFDBC((v0 + 368), (v69 + 7));
    sub_1001DFDBC((v0 + 328), (v69 + 12));
    sub_1002321B0(v62, v69 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LicenseRenewalBatch_resolutionURL);
    *v63 = v69;
    swift_storeEnumTagMultiPayload();

    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v0 + 1264);
    if ((v70 & 1) == 0)
    {
      v71 = sub_100363300(0, v71[2] + 1, 1, *(v0 + 1264));
    }

    v73 = v71[2];
    v72 = v71[3];
    p_name = (&stru_100779FF8 + 8);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_100363300(v72 > 1, v73 + 1, 1, v71);
    }

    v74 = *(v0 + 1296);
    v75 = *(v0 + 1216);
    v76 = *(v0 + 1064);
    v77 = *(v0 + 1048);

    sub_1000032A8(v75, &unk_1007809F0);
    v71[2] = v73 + 1;
    sub_100588FA4(v76, v71 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v73, type metadata accessor for LicenseUtilities.Batch);
    goto LABEL_33;
  }

  v36 = sub_10060C8EC();
  if (v37 >> 60 == 15)
  {

    v38 = (&stru_100779FF8 + 8);
    goto LABEL_26;
  }

  if (qword_10077E580 != -1)
  {
    v98 = v36;
    v99 = v37;
    swift_once();
    v36 = v98;
    v37 = v99;
  }

  v52 = v36;
  v53 = v37;
  sub_1005F51E0(v36, v37, v0 + 288);
  if (!v33)
  {
    v39 = (v0 + 304);
    sub_10020B0E0(v52, v53);
    if (!v231)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  sub_10020B0E0(v52, v53);
LABEL_25:
  v38 = &stru_100779FF8.name;
  v35 = &stru_100779FF8.name;
LABEL_26:
  v78 = [*(v0 + 1296) v38[62]];
  v79 = [v78 distributorInfo];

  v80 = [v79 v35[429]];
  if (!v80)
  {
    v90 = *(v0 + 1296);
    v91 = *(v0 + 1216);

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v92 = 0x726961706572;
    v92[1] = 0xE600000000000000;
    v92[2] = 0xD000000000000011;
    v92[3] = 0x80000001006CD5B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000032A8(v91, &unk_1007809F0);
    sub_10000710C(v221);
    v237 = v240;
    while (1)
    {
      while (1)
      {
        v157 = *(v0 + 1516);
        v158 = *(v0 + 1288);
        v159 = *(v0 + 1280);
        static Logger.ald.getter();
        sub_1001DFDA4(v159, v158, v157);
        swift_errorRetain();
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.error.getter();
        sub_1001DFEBC(v159, v158, v157);

        if (os_log_type_enabled(v160, v161))
        {
          v234 = v161;
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          *v238 = swift_slowAlloc();
          *v162 = 138412802;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v164 = *(v0 + 616);
          if (!v164 || (, , , os_unfair_lock_lock((v164 + 24)), v165 = *(v164 + 16), v166 = v165, os_unfair_lock_unlock((v164 + 24)), , !v165))
          {
            (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
            v167 = objc_allocWithZone(type metadata accessor for LogKey());
            v166 = LogKey.init(prefix:)();
          }

          v168 = *(v0 + 1516);
          *(v162 + 4) = v166;
          *v163 = v166;
          *(v162 + 12) = 2082;
          if (v168 == 1)
          {
            v169 = *(v0 + 1288);
            v170 = *(v0 + 1280);
          }

          else
          {
            *(v0 + 832) = *(v0 + 1280);
            v170 = dispatch thunk of CustomStringConvertible.description.getter();
            v169 = v177;
          }

          v178 = *(v0 + 968);
          v225 = *(v0 + 960);
          v227 = *(v0 + 976);
          v179 = sub_1002346CC(v170, v169, v238);

          *(v162 + 14) = v179;
          *(v162 + 22) = 2082;
          swift_getErrorValue();
          v180 = *(*(v0 + 696) - 8);
          swift_task_alloc();
          (*(v180 + 16))();
          v181 = String.init<A>(describing:)();
          v183 = v182;

          v184 = sub_1002346CC(v181, v183, v238);

          *(v162 + 24) = v184;
          sub_1000032A8(v163, &qword_10077F920);

          swift_arrayDestroy();

          (*(v178 + 8))(v227, v225);
          v71 = *(v0 + 1264);
          p_name = &stru_100779FF8.name;
        }

        else
        {
          v171 = *(v0 + 1516);
          v172 = *(v0 + 1288);
          v173 = *(v0 + 1280);
          v174 = *(v0 + 976);
          v175 = *(v0 + 968);
          v176 = *(v0 + 960);

          sub_1001DFEBC(v173, v172, v171);

          (*(v175 + 8))(v174, v176);
          v71 = *(v0 + 1264);
        }

LABEL_76:
        v185 = *(v0 + 1256) + 1;
        if (v185 == *(v0 + 1240))
        {
          v100 = v71[2];

          if (!v100)
          {

            v71 = 0;
          }

          sub_10000710C(v0 + 240);

          v101 = *(v0 + 8);

          return v101(v71);
        }

        *(v0 + 1272) = v237;
        *(v0 + 1264) = v71;
        *(v0 + 1256) = v185;
        *(v0 + 1248) = v240;
        v102 = *(v0 + 896) + 24 * v185;
        v103 = *(v102 + 32);
        *(v0 + 1280) = v103;
        v104 = *(v102 + 40);
        *(v0 + 1288) = v104;
        v105 = *(v102 + 48);
        *(v0 + 1516) = v105;
        if (v105 != 1)
        {
          break;
        }

        v106 = objc_allocWithZone(LSApplicationRecord);

        v107 = String._bridgeToObjectiveC()();
        *v223 = 0;
        v108 = [v106 initWithBundleIdentifier:v107 allowPlaceholder:0 error:v223];

        v109 = *v223;
        if (!v108)
        {
          v110 = v109;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          v112 = v111;
          *(v0 + 744) = 0;
          *(v0 + 752) = 0xE000000000000000;
          _StringGuts.grow(_:)(18);

          *(v0 + 760) = 0x20746F6E20707041;
          *(v0 + 768) = 0xEF2820646E756F66;
          v113._countAndFlagsBits = v103;
          v113._object = v104;
          String.append(_:)(v113);
          v114._countAndFlagsBits = 41;
          v114._object = 0xE100000000000000;
          String.append(_:)(v114);
          v115 = *(v0 + 760);
          v116 = *(v0 + 768);
          *v112 = 0x6C6177656E6572;
          v112[1] = 0xE700000000000000;
          v112[2] = v115;
          v112[3] = v116;
          goto LABEL_53;
        }

LABEL_44:
        *(v0 + 1296) = v108;
        v119 = *(v0 + 912);
        v120 = v109;
        if (v119)
        {
          v121 = [v108 iTunesMetadata];
          v122 = [v121 p_name[60]];

          v123 = [v122 distributorID];
          if (!v123)
          {
            goto LABEL_51;
          }

          v124 = *(v0 + 912);
          v125 = *(v0 + 904);
          v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v128 = v127;

          if (v126 == v125 && v124 == v128)
          {
          }

          else
          {
            v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v130 & 1) == 0)
            {
LABEL_51:
              type metadata accessor for InternalError();
              sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
              swift_allocError();
              *v131 = 0x6C6177656E6572;
              *(v131 + 8) = 0xE700000000000000;
              strcpy((v131 + 16), "App not found");
              *(v131 + 30) = -4864;
              goto LABEL_64;
            }
          }
        }

        v139 = [v108 iTunesMetadata];
        v140 = [v139 p_name[60]];

        v141 = [v140 distributorID];
        if (!v141)
        {
          goto LABEL_63;
        }

        v142 = v141;
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        v146 = [v108 bundleIdentifier];
        if (!v146)
        {
          goto LABEL_78;
        }

        v147 = v146;
        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v150 = v149;

        if (v143 == v148 && v145 == v150)
        {
        }

        else
        {
          v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v151 & 1) == 0)
          {
LABEL_78:
            *(v0 + 472) = &type metadata for NativeDistributor;
            v155 = sub_1003000A4();
            goto LABEL_79;
          }
        }

        v152 = [v140 domain];
        if (v152)
        {
          v153 = v152;
          v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v154;

          *(v0 + 472) = &type metadata for WebDistributor;
          v155 = sub_100231E84();
LABEL_79:
          *(v0 + 480) = v155;

          *(v0 + 448) = v143;
          *(v0 + 456) = v145;
          sub_1001DFDBC((v0 + 448), v221);
          v186 = [v108 iTunesMetadata];
          v187 = [v186 p_name[60]];

          v188 = [v187 accountID];
          if (v188)
          {
            v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v190;

            *(v0 + 1304) = v189;
            *(v0 + 1312) = v191;
            v192 = [v108 bundleIdentifier];
            if (v192)
            {
              v193 = v192;
              v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v196 = v195;

              *(v0 + 1320) = v194;
              *(v0 + 1328) = v196;
              sub_10020A980(v221, v0 + 488);
              sub_1001F0C48(&qword_10077E970);
              if (swift_dynamicCast())
              {
                countAndFlagsBits = *(v0 + 728);
                object = *(v0 + 736);
LABEL_95:
                *(v0 + 1344) = object;
                *(v0 + 1336) = countAndFlagsBits;
                v218 = *(v0 + 1184);
                v219 = sub_100006D8C((v0 + 240), *(v0 + 264));
                sub_100005934(*v219 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v218, &qword_1007812A0);
                v85 = swift_task_alloc();
                *(v0 + 1352) = v85;
                *(v85 + 16) = v194;
                *(v85 + 24) = v196;
                v220 = swift_task_alloc();
                *(v0 + 1360) = v220;
                *v220 = v0;
                v220[1] = sub_10057B830;
                v87 = sub_1003B3900;
                v88 = sub_100588F48;
                goto LABEL_28;
              }

              v197 = [v108 iTunesMetadata];
              v198 = [v197 distributorInfo];

              v199 = [v198 sourceURL];
              v200 = 1;
              if (v199)
              {
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v200 = 0;
              }

              v201 = *(v0 + 1232);
              v202 = *(v0 + 1224);
              v203 = *(v0 + 1008);
              v204 = *(v0 + 1000);
              (*(v203 + 56))(v202, v200, 1, v204);
              sub_1002321B0(v202, v201);
              v205 = (*(v203 + 48))(v201, 1, v204);
              v206 = *(v0 + 1232);
              if (v205)
              {

                sub_1000032A8(v206, &unk_1007809F0);
              }

              else
              {
                (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
                sub_1000032A8(v206, &unk_1007809F0);
                v209 = URL.host(percentEncoded:)(1);
                if (v209.value._object)
                {
                  object = v209.value._object;
                  countAndFlagsBits = v209.value._countAndFlagsBits;
                  v213 = URL.port.getter();
                  if ((v214 & 1) == 0)
                  {
                    v215 = v213;
                    *(v0 + 776) = v209;
                    v216._countAndFlagsBits = 58;
                    v216._object = 0xE100000000000000;
                    String.append(_:)(v216);
                    *(v0 + 872) = v215;
                    v217._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v217);

                    countAndFlagsBits = *(v0 + 776);
                    object = *(v0 + 784);
                  }

                  (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
                  goto LABEL_95;
                }

                (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
              }

              type metadata accessor for InternalError();
              sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
              swift_allocError();
              *v210 = 0x6C6177656E6572;
              v210[1] = 0xE700000000000000;
              v210[2] = 0xD000000000000010;
              v210[3] = 0x80000001006CD590;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_10000710C(v221);
              p_name = (&stru_100779FF8 + 8);
            }

            else
            {

              type metadata accessor for InternalError();
              sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
              swift_allocError();
              *v208 = 0x6C6177656E6572;
              v208[1] = 0xE700000000000000;
              v208[2] = 0xD000000000000013;
              v208[3] = 0x80000001006CD570;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_10000710C(v221);
            }
          }

          else
          {
            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v207 = 0x6C6177656E6572;
            v207[1] = 0xE700000000000000;
            v207[2] = 0xD000000000000013;
            v207[3] = 0x80000001006CD550;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_10000710C(v221);
          }
        }

        else
        {
LABEL_63:

          *(v0 + 480) = 0;
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          sub_1000032A8(v0 + 448, &unk_10077FA50);
          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v156 = 0x6C6177656E6572;
          v156[1] = 0xE700000000000000;
          v156[2] = 0xD000000000000014;
          v156[3] = 0x80000001006CD530;
LABEL_64:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      v117 = objc_allocWithZone(LSApplicationRecord);
      *v222 = 0;
      v118 = [v117 initWithStoreItemIdentifier:v103 error:v222];
      v109 = *v222;
      if (v118)
      {
        v108 = v118;
        goto LABEL_44;
      }

      v132 = v109;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      v134 = v133;
      *(v0 + 808) = 0;
      *(v0 + 816) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 792) = 0x20746F6E20707041;
      *(v0 + 800) = 0xEF2820646E756F66;
      *(v0 + 888) = v103;
      v135._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v135);

      v136._countAndFlagsBits = 41;
      v136._object = 0xE100000000000000;
      String.append(_:)(v136);
      v137 = *(v0 + 792);
      v138 = *(v0 + 800);
      *v134 = 0x6C6177656E6572;
      v134[1] = 0xE700000000000000;
      v134[2] = v137;
      v134[3] = v138;
LABEL_53:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v81 = *(v0 + 1328);
  v82 = *(v0 + 1320);
  v83 = *(v0 + 1176);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = sub_100006D8C((v0 + 240), *(v0 + 264));
  sub_100005934(*v84 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v83, &qword_1007812A0);
  v85 = swift_task_alloc();
  *(v0 + 1472) = v85;
  *(v85 + 16) = v82;
  *(v85 + 24) = v81;
  v86 = swift_task_alloc();
  *(v0 + 1480) = v86;
  *v86 = v0;
  v86[1] = sub_1005823D4;
  v87 = sub_1003B3ECC;
  v88 = sub_100588F64;
LABEL_28:

  return v87(v88, v85);
}

uint64_t sub_100580F2C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  sub_10000710C(v0 + 528);
  (*(v1 + 56))(v3, 1, 1, v2);
  sub_1000032A8(v3, &qword_100787DD8);
  v152 = *(v0 + 1248);
  v153 = *(v0 + 1272);
  *(v0 + 1464) = v153;
  *(v0 + 1456) = v152;
  if (*(v0 + 1517))
  {
    v4 = sub_10060C8EC();
    if (v5 >> 60 != 15)
    {
      if (qword_10077E580 != -1)
      {
        v144 = v4;
        v145 = v5;
        swift_once();
        v4 = v144;
        v5 = v145;
      }

      v6 = v4;
      v7 = v5;
      sub_1005F51E0(v4, v5, v0 + 288);
      sub_10020B0E0(v6, v7);
    }
  }

  v8 = [*(v0 + 1296) iTunesMetadata];
  v9 = [v8 distributorInfo];

  v10 = [v9 sourceURL];
  if (!v10)
  {
    v151 = (v0 + 848);
    v146 = (v0 + 880);
    v147 = (v0 + 856);
    v20 = *(v0 + 1296);
    v21 = *(v0 + 1216);

    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v22 = 0x726961706572;
    v22[1] = 0xE600000000000000;
    v22[2] = 0xD000000000000011;
    v22[3] = 0x80000001006CD5B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000032A8(v21, &unk_1007809F0);
    sub_10000710C(v0 + 408);
    while (1)
    {
      v25 = *(v0 + 1516);
      v26 = *(v0 + 1288);
      v27 = *(v0 + 1280);
      static Logger.ald.getter();
      sub_1001DFDA4(v27, v26, v25);
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      sub_1001DFEBC(v27, v26, v25);

      if (os_log_type_enabled(v28, v29))
      {
        v150 = v29;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v151 = swift_slowAlloc();
        *v30 = 138412802;
        if (qword_10077E598 != -1)
        {
          swift_once();
        }

        TaskLocal.get()();
        v32 = *(v0 + 616);
        if (!v32 || (, , , os_unfair_lock_lock((v32 + 24)), v33 = *(v32 + 16), v34 = v33, os_unfair_lock_unlock((v32 + 24)), , !v33))
        {
          (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
          v35 = objc_allocWithZone(type metadata accessor for LogKey());
          v34 = LogKey.init(prefix:)();
        }

        v36 = *(v0 + 1516);
        *(v30 + 4) = v34;
        *v31 = v34;
        *(v30 + 12) = 2082;
        if (v36 == 1)
        {
          v37 = *(v0 + 1288);
          v38 = *(v0 + 1280);
        }

        else
        {
          *(v0 + 832) = *(v0 + 1280);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v45;
        }

        v46 = *(v0 + 968);
        v148 = *(v0 + 960);
        v149 = *(v0 + 976);
        v47 = sub_1002346CC(v38, v37, v151);

        *(v30 + 14) = v47;
        *(v30 + 22) = 2082;
        swift_getErrorValue();
        v48 = *(*(v0 + 696) - 8);
        swift_task_alloc();
        (*(v48 + 16))();
        v49 = String.init<A>(describing:)();
        v51 = v50;

        v52 = sub_1002346CC(v49, v51, v151);

        *(v30 + 24) = v52;
        sub_1000032A8(v31, &qword_10077F920);

        swift_arrayDestroy();

        (*(v46 + 8))(v149, v148);
      }

      else
      {
        v39 = *(v0 + 1516);
        v40 = *(v0 + 1288);
        v41 = *(v0 + 1280);
        v42 = *(v0 + 976);
        v43 = *(v0 + 968);
        v44 = *(v0 + 960);

        sub_1001DFEBC(v41, v40, v39);

        (*(v43 + 8))(v42, v44);
      }

      v53 = *(v0 + 1264);
      v54 = *(v0 + 1256) + 1;
      if (v54 == *(v0 + 1240))
      {
        v132 = *(v53 + 16);

        if (!v132)
        {

          v53 = 0;
        }

        sub_10000710C(v0 + 240);

        v133 = *(v0 + 8);

        return v133(v53);
      }

      *(v0 + 1272) = v153;
      *(v0 + 1264) = v53;
      *(v0 + 1256) = v54;
      *(v0 + 1248) = v152;
      v55 = *(v0 + 896) + 24 * v54;
      v56 = *(v55 + 32);
      *(v0 + 1280) = v56;
      v57 = *(v55 + 40);
      *(v0 + 1288) = v57;
      LODWORD(v55) = *(v55 + 48);
      *(v0 + 1516) = v55;
      if (v55 == 1)
      {
        break;
      }

      v69 = objc_allocWithZone(LSApplicationRecord);
      *v146 = 0;
      v70 = [v69 initWithStoreItemIdentifier:v56 error:v146];
      v61 = *v146;
      if (v70)
      {
        v60 = v70;
LABEL_31:
        *(v0 + 1296) = v60;
        v71 = *(v0 + 912);
        v72 = v61;
        p_name = &stru_100779FF8.name;
        if (v71)
        {
          v74 = [v60 iTunesMetadata];
          v75 = [v74 distributorInfo];

          v76 = [v75 distributorID];
          if (!v76)
          {
            goto LABEL_12;
          }

          v77 = *(v0 + 912);
          v78 = *(v0 + 904);
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          if (v79 == v78 && v77 == v81)
          {

            p_name = &stru_100779FF8.name;
          }

          else
          {
            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            p_name = (&stru_100779FF8 + 8);
            if ((v83 & 1) == 0)
            {
LABEL_12:
              swift_allocError();
              *v23 = 0x6C6177656E6572;
              v23[1] = 0xE700000000000000;
              v23[2] = 0x20746F6E20707041;
              v24 = 0xED0000646E756F66;
              goto LABEL_13;
            }
          }
        }

        v91 = [v60 p_name[62]];
        v92 = [v91 distributorInfo];

        v93 = [v92 distributorID];
        if (v93)
        {
          v94 = v93;
          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          v98 = [v60 bundleIdentifier];
          if (v98)
          {
            v99 = v98;
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;

            if (v95 == v100 && v97 == v102)
            {

LABEL_48:

              v104 = [v92 domain];
              if (v104)
              {
                v105 = v104;
                v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v97 = v106;

                *(v0 + 472) = &type metadata for WebDistributor;
                v107 = sub_100231E84();
                goto LABEL_52;
              }

              goto LABEL_50;
            }

            v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v103)
            {
              goto LABEL_48;
            }
          }

          *(v0 + 472) = &type metadata for NativeDistributor;
          v107 = sub_1003000A4();
LABEL_52:
          *(v0 + 480) = v107;

          *(v0 + 448) = v95;
          *(v0 + 456) = v97;
          sub_1001DFDBC((v0 + 448), v0 + 408);
          v108 = [v60 iTunesMetadata];
          v109 = [v108 distributorInfo];

          v110 = [v109 accountID];
          if (v110)
          {
            v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v113 = v112;

            *(v0 + 1304) = v111;
            *(v0 + 1312) = v113;
            v114 = [v60 bundleIdentifier];
            if (v114)
            {
              v115 = v114;
              v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v118 = v117;

              *(v0 + 1320) = v116;
              *(v0 + 1328) = v118;
              sub_10020A980(v0 + 408, v0 + 488);
              sub_1001F0C48(&qword_10077E970);
              if (swift_dynamicCast())
              {
                countAndFlagsBits = *(v0 + 728);
                object = *(v0 + 736);
LABEL_75:
                *(v0 + 1344) = object;
                *(v0 + 1336) = countAndFlagsBits;
                v141 = *(v0 + 1184);
                v142 = sub_100006D8C((v0 + 240), *(v0 + 264));
                sub_100005934(*v142 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v141, &qword_1007812A0);
                v15 = swift_task_alloc();
                *(v0 + 1352) = v15;
                *(v15 + 16) = v116;
                *(v15 + 24) = v118;
                v143 = swift_task_alloc();
                *(v0 + 1360) = v143;
                *v143 = v0;
                v143[1] = sub_10057B830;
                v17 = sub_1003B3900;
                v18 = sub_100588F48;
                goto LABEL_8;
              }

              v119 = [v60 iTunesMetadata];
              v120 = [v119 distributorInfo];

              v121 = [v120 sourceURL];
              if (v121)
              {
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v122 = 0;
              }

              else
              {
                v122 = 1;
              }

              v125 = *(v0 + 1232);
              v126 = *(v0 + 1224);
              v127 = *(v0 + 1008);
              v128 = *(v0 + 1000);
              (*(v127 + 56))(v126, v122, 1, v128);
              sub_1002321B0(v126, v125);
              v129 = (*(v127 + 48))(v125, 1, v128);
              v130 = *(v0 + 1232);
              if (v129)
              {

                sub_1000032A8(v130, &unk_1007809F0);
              }

              else
              {
                (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
                sub_1000032A8(v130, &unk_1007809F0);
                v131 = URL.host(percentEncoded:)(1);
                if (v131.value._object)
                {
                  object = v131.value._object;
                  countAndFlagsBits = v131.value._countAndFlagsBits;
                  v136 = URL.port.getter();
                  if ((v137 & 1) == 0)
                  {
                    v138 = v136;
                    *(v0 + 776) = v131;
                    v139._countAndFlagsBits = 58;
                    v139._object = 0xE100000000000000;
                    String.append(_:)(v139);
                    *(v0 + 872) = v138;
                    v140._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v140);

                    countAndFlagsBits = *(v0 + 776);
                    object = *(v0 + 784);
                  }

                  (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
                  goto LABEL_75;
                }

                (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
              }

              swift_allocError();
              *v123 = 0x6C6177656E6572;
              v123[1] = 0xE700000000000000;
              v123[2] = 0xD000000000000010;
              v124 = 0x80000001006CD590;
            }

            else
            {

              swift_allocError();
              *v123 = 0x6C6177656E6572;
              v123[1] = 0xE700000000000000;
              v123[2] = 0xD000000000000013;
              v124 = 0x80000001006CD570;
            }
          }

          else
          {
            swift_allocError();
            *v123 = 0x6C6177656E6572;
            v123[1] = 0xE700000000000000;
            v123[2] = 0xD000000000000013;
            v124 = 0x80000001006CD550;
          }

          v123[3] = v124;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_10000710C(v0 + 408);
        }

        else
        {
LABEL_50:

          *(v0 + 480) = 0;
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          sub_1000032A8(v0 + 448, &unk_10077FA50);
          swift_allocError();
          *v23 = 0x6C6177656E6572;
          v23[1] = 0xE700000000000000;
          v23[2] = 0xD000000000000014;
          v24 = 0x80000001006CD530;
LABEL_13:
          v23[3] = v24;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      else
      {
        v84 = v61;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        swift_allocError();
        v86 = v85;
        *(v0 + 808) = 0;
        *(v0 + 816) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        *(v0 + 792) = 0x20746F6E20707041;
        *(v0 + 800) = 0xEF2820646E756F66;
        *(v0 + 888) = v56;
        v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v87);

        v88._countAndFlagsBits = 41;
        v88._object = 0xE100000000000000;
        String.append(_:)(v88);
        v89 = *(v0 + 792);
        v90 = *(v0 + 800);
        *v86 = 0x6C6177656E6572;
        v86[1] = 0xE700000000000000;
        v86[2] = v89;
        v86[3] = v90;
LABEL_40:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    v58 = objc_allocWithZone(LSApplicationRecord);

    v59 = String._bridgeToObjectiveC()();
    *v147 = 0;
    v60 = [v58 initWithBundleIdentifier:v59 allowPlaceholder:0 error:v147];

    v61 = *v147;
    if (!v60)
    {
      v62 = v61;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_allocError();
      v64 = v63;
      *(v0 + 744) = 0;
      *(v0 + 752) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 760) = 0x20746F6E20707041;
      *(v0 + 768) = 0xEF2820646E756F66;
      v65._countAndFlagsBits = v56;
      v65._object = v57;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 41;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = *(v0 + 760);
      v68 = *(v0 + 768);
      *v64 = 0x6C6177656E6572;
      v64[1] = 0xE700000000000000;
      v64[2] = v67;
      v64[3] = v68;
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v11 = *(v0 + 1328);
  v12 = *(v0 + 1320);
  v13 = *(v0 + 1176);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100006D8C((v0 + 240), *(v0 + 264));
  sub_100005934(*v14 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v13, &qword_1007812A0);
  v15 = swift_task_alloc();
  *(v0 + 1472) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  v16 = swift_task_alloc();
  *(v0 + 1480) = v16;
  *v16 = v0;
  v16[1] = sub_1005823D4;
  v17 = sub_1003B3ECC;
  v18 = sub_100588F64;
LABEL_8:

  return v17(v18, v15);
}

uint64_t sub_1005823D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[186] = a1;
  v4[187] = a2;
  v4[188] = v2;

  sub_1000032A8(v4[147], &qword_1007812A0);

  if (v2)
  {

    v5 = sub_100583D00;
  }

  else
  {

    v5 = sub_1005825B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005825B8()
{
  v170 = (v0 + 848);
  v160 = (v0 + 880);
  v161 = (v0 + 856);
  v1 = *(v0 + 1496);
  if (v1)
  {
    v2 = [*(v0 + 1296) iTunesMetadata];
    v3 = [v2 storeItemIdentifier];

    if (v3)
    {
      v4 = [*(v0 + 1296) iTunesMetadata];
      v5 = [v4 storeItemIdentifier];

      v6 = sub_10060BB74();
      if ((v7 & 1) == 0)
      {
        v16 = v6;
        v165 = *(v0 + 1392);
        v167 = *(v0 + 1488);
        v162 = *(v0 + 1384);
        v163 = *(v0 + 1304);
        v17 = *(v0 + 1056);
        v18 = *(v0 + 1024);
        v19 = *(v0 + 1008);
        v20 = *(v0 + 1000);
        v21 = *(v0 + 992);
        v22 = *(v0 + 984);
        sub_1001DFEBC(*(v0 + 1280), *(v0 + 1288), *(v0 + 1516));
        sub_10020A980(v0 + 408, v21);
        (*(v19 + 16))(v21 + v22[7], v18, v20);
        v23 = (v21 + v22[8]);
        v23[3] = v162;
        v23[4] = &off_100762548;
        *v23 = v165;
        *(v21 + 40) = v163;
        *(v21 + 56) = v167;
        *(v21 + 64) = v1;
        *(v21 + v22[9]) = v5;
        *(v21 + v22[10]) = v16;
        sub_10058900C(v21, v17, type metadata accessor for NewLicenseBatch);
        swift_storeEnumTagMultiPayload();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v0 + 1264);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_100363300(0, v25[2] + 1, 1, *(v0 + 1264));
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_100363300(v26 > 1, v27 + 1, 1, v25);
        }

        v28 = *(v0 + 1216);
        v29 = *(v0 + 1056);
        v30 = *(v0 + 1048);
        v31 = *(v0 + 1024);
        v32 = *(v0 + 1008);
        v33 = *(v0 + 1000);
        v34 = *(v0 + 992);

        (*(v32 + 8))(v31, v33);
        sub_1000032A8(v28, &unk_1007809F0);
        sub_100589074(v34, type metadata accessor for NewLicenseBatch);
        v25[2] = v27 + 1;
        sub_100588FA4(v29, v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, type metadata accessor for LicenseUtilities.Batch);
        sub_10000710C(v0 + 408);
        v169 = *(v0 + 1456);
        goto LABEL_13;
      }

      v8 = *(v0 + 1296);
      v9 = *(v0 + 1216);
      v10 = *(v0 + 1024);
      v11 = *(v0 + 1008);
      v12 = *(v0 + 1000);

      v13 = 0x80000001006CD610;
      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      *v14 = 0x726961706572;
      v14[1] = 0xE600000000000000;
      v15 = 0xD000000000000014;
    }

    else
    {
      v8 = *(v0 + 1296);
      v9 = *(v0 + 1216);
      v10 = *(v0 + 1024);
      v11 = *(v0 + 1008);
      v12 = *(v0 + 1000);

      v13 = 0x80000001006CD5F0;
      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      *v14 = 0x726961706572;
      v14[1] = 0xE600000000000000;
      v15 = 0xD000000000000011;
    }
  }

  else
  {
    v8 = *(v0 + 1296);
    v9 = *(v0 + 1216);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1008);
    v12 = *(v0 + 1000);

    v13 = 0x80000001006CD5D0;
    type metadata accessor for InternalError();
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v14 = 0x726961706572;
    v14[1] = 0xE600000000000000;
    v15 = 0xD000000000000019;
  }

  v14[2] = v15;
  v14[3] = v13;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*(v11 + 8))(v10, v12);
  sub_1000032A8(v9, &unk_1007809F0);
  sub_10000710C(v0 + 408);
  v169 = *(v0 + 1456);
  while (1)
  {
    v121 = *(v0 + 1516);
    v122 = *(v0 + 1288);
    v123 = *(v0 + 1280);
    static Logger.ald.getter();
    sub_1001DFDA4(v123, v122, v121);
    swift_errorRetain();
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    sub_1001DFEBC(v123, v122, v121);

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v170 = swift_slowAlloc();
      *v126 = 138412802;
      if (qword_10077E598 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v128 = *(v0 + 616);
      if (!v128 || (, , , os_unfair_lock_lock((v128 + 24)), v129 = *(v128 + 16), v130 = v129, os_unfair_lock_unlock((v128 + 24)), , !v129))
      {
        (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
        v131 = objc_allocWithZone(type metadata accessor for LogKey());
        v130 = LogKey.init(prefix:)();
      }

      v132 = *(v0 + 1516);
      *(v126 + 4) = v130;
      *v127 = v130;
      *(v126 + 12) = 2082;
      v168 = v127;
      if (v132 == 1)
      {
        v133 = *(v0 + 1288);
        v134 = *(v0 + 1280);
      }

      else
      {
        *(v0 + 832) = *(v0 + 1280);
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v141;
      }

      v166 = *(v0 + 976);
      v142 = *(v0 + 968);
      v164 = *(v0 + 960);
      v143 = sub_1002346CC(v134, v133, v170);

      *(v126 + 14) = v143;
      *(v126 + 22) = 2082;
      swift_getErrorValue();
      v144 = *(*(v0 + 696) - 8);
      swift_task_alloc();
      (*(v144 + 16))();
      v145 = String.init<A>(describing:)();
      v147 = v146;

      v148 = sub_1002346CC(v145, v147, v170);

      *(v126 + 24) = v148;
      sub_1000032A8(v168, &qword_10077F920);

      swift_arrayDestroy();

      (*(v142 + 8))(v166, v164);
    }

    else
    {
      v135 = *(v0 + 1516);
      v136 = *(v0 + 1288);
      v137 = *(v0 + 1280);
      v138 = *(v0 + 976);
      v139 = *(v0 + 968);
      v140 = *(v0 + 960);

      sub_1001DFEBC(v137, v136, v135);

      (*(v139 + 8))(v138, v140);
    }

    v25 = *(v0 + 1264);
LABEL_13:
    v35 = *(v0 + 1256) + 1;
    if (v35 == *(v0 + 1240))
    {
      break;
    }

    *(v0 + 1272) = *(&v169 + 1);
    *(v0 + 1264) = v25;
    *(v0 + 1256) = v35;
    *(v0 + 1248) = v169;
    v36 = *(v0 + 896) + 24 * v35;
    v37 = *(v36 + 32);
    *(v0 + 1280) = v37;
    v38 = *(v36 + 40);
    *(v0 + 1288) = v38;
    v39 = *(v36 + 48);
    *(v0 + 1516) = v39;
    if (v39 == 1)
    {
      v40 = objc_allocWithZone(LSApplicationRecord);

      v41 = String._bridgeToObjectiveC()();
      *v161 = 0;
      v42 = [v40 initWithBundleIdentifier:v41 allowPlaceholder:0 error:v161];

      v43 = *v161;
      if (!v42)
      {
        v44 = v43;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        v46 = v45;
        *(v0 + 744) = 0;
        *(v0 + 752) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        *(v0 + 760) = 0x20746F6E20707041;
        *(v0 + 768) = 0xEF2820646E756F66;
        v47._countAndFlagsBits = v37;
        v47._object = v38;
        String.append(_:)(v47);
        v48._countAndFlagsBits = 41;
        v48._object = 0xE100000000000000;
        String.append(_:)(v48);
        v49 = *(v0 + 760);
        v50 = *(v0 + 768);
        *v46 = 0x6C6177656E6572;
        v46[1] = 0xE700000000000000;
        v46[2] = v49;
        v46[3] = v50;
        goto LABEL_28;
      }

LABEL_19:
      *(v0 + 1296) = v42;
      v53 = *(v0 + 912);
      v54 = v43;
      p_name = &stru_100779FF8.name;
      if (v53)
      {
        v56 = [v42 iTunesMetadata];
        v57 = [v56 distributorInfo];

        v58 = [v57 distributorID];
        if (!v58)
        {
          goto LABEL_26;
        }

        v59 = *(v0 + 912);
        v60 = *(v0 + 904);
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        if (v61 == v60 && v59 == v63)
        {

          p_name = &stru_100779FF8.name;
        }

        else
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          p_name = (&stru_100779FF8 + 8);
          if ((v65 & 1) == 0)
          {
LABEL_26:
            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v66 = 0x6C6177656E6572;
            *(v66 + 8) = 0xE700000000000000;
            strcpy((v66 + 16), "App not found");
            *(v66 + 30) = -4864;
            goto LABEL_39;
          }
        }
      }

      v74 = [v42 p_name[62]];
      v75 = [v74 distributorInfo];

      v76 = [v75 distributorID];
      if (!v76)
      {
        goto LABEL_38;
      }

      v77 = v76;
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = [v42 bundleIdentifier];
      if (!v81)
      {
        goto LABEL_40;
      }

      v82 = v81;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      if (v78 == v83 && v80 == v85)
      {

        goto LABEL_36;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      p_name = (&stru_100779FF8 + 8);
      if (v86)
      {
LABEL_36:

        v87 = [v75 domain];
        p_name = (&stru_100779FF8 + 8);
        if (v87)
        {
          v88 = v87;
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v89;

          *(v0 + 472) = &type metadata for WebDistributor;
          v90 = sub_100231E84();
          goto LABEL_41;
        }

LABEL_38:

        *(v0 + 480) = 0;
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
        sub_1000032A8(v0 + 448, &unk_10077FA50);
        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v91 = 0x6C6177656E6572;
        v91[1] = 0xE700000000000000;
        v91[2] = 0xD000000000000014;
        v91[3] = 0x80000001006CD530;
LABEL_39:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
LABEL_40:
        *(v0 + 472) = &type metadata for NativeDistributor;
        v90 = sub_1003000A4();
LABEL_41:
        *(v0 + 480) = v90;

        *(v0 + 448) = v78;
        *(v0 + 456) = v80;
        sub_1001DFDBC((v0 + 448), v0 + 408);
        v92 = [v42 p_name[62]];
        v93 = [v92 distributorInfo];

        v94 = [v93 accountID];
        if (!v94)
        {
          v113 = "No account ID found";
LABEL_50:
          v114 = (v113 - 32) | 0x8000000000000000;
          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v115 = 0x6C6177656E6572;
          v115[1] = 0xE700000000000000;
          v116 = 0xD000000000000013;
          goto LABEL_59;
        }

        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        *(v0 + 1304) = v95;
        *(v0 + 1312) = v97;
        v98 = [v42 bundleIdentifier];
        if (!v98)
        {

          v113 = "Not bundle ID found";
          goto LABEL_50;
        }

        v99 = v98;
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        *(v0 + 1320) = v100;
        *(v0 + 1328) = v102;
        sub_10020A980(v0 + 408, v0 + 488);
        sub_1001F0C48(&qword_10077E970);
        if (swift_dynamicCast())
        {
          countAndFlagsBits = *(v0 + 728);
          object = *(v0 + 736);
LABEL_76:
          *(v0 + 1344) = object;
          *(v0 + 1336) = countAndFlagsBits;
          v156 = *(v0 + 1184);
          v157 = sub_100006D8C((v0 + 240), *(v0 + 264));
          sub_100005934(*v157 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v156, &qword_1007812A0);
          v158 = swift_task_alloc();
          *(v0 + 1352) = v158;
          *(v158 + 16) = v100;
          *(v158 + 24) = v102;
          v159 = swift_task_alloc();
          *(v0 + 1360) = v159;
          *v159 = v0;
          v159[1] = sub_10057B830;

          return sub_1003B3900(sub_100588F48, v158);
        }

        v103 = [v42 p_name[62]];
        v104 = [v103 distributorInfo];

        v105 = [v104 sourceURL];
        v106 = 1;
        if (v105)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v106 = 0;
        }

        v107 = *(v0 + 1232);
        v108 = *(v0 + 1224);
        v109 = *(v0 + 1008);
        v110 = *(v0 + 1000);
        (*(v109 + 56))(v108, v106, 1, v110);
        sub_1002321B0(v108, v107);
        v111 = (*(v109 + 48))(v107, 1, v110);
        v112 = *(v0 + 1232);
        if (v111)
        {

          sub_1000032A8(v112, &unk_1007809F0);
        }

        else
        {
          (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
          sub_1000032A8(v112, &unk_1007809F0);
          v120 = URL.host(percentEncoded:)(1);
          if (v120.value._object)
          {
            object = v120.value._object;
            countAndFlagsBits = v120.value._countAndFlagsBits;
            v151 = URL.port.getter();
            if ((v152 & 1) == 0)
            {
              v153 = v151;
              *(v0 + 776) = v120;
              v154._countAndFlagsBits = 58;
              v154._object = 0xE100000000000000;
              String.append(_:)(v154);
              *(v0 + 872) = v153;
              v155._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v155);

              countAndFlagsBits = *(v0 + 776);
              object = *(v0 + 784);
            }

            (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
            goto LABEL_76;
          }

          (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
        }

        v114 = 0x80000001006CD590;
        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v115 = 0x6C6177656E6572;
        v115[1] = 0xE700000000000000;
        v116 = 0xD000000000000010;
LABEL_59:
        v115[2] = v116;
        v115[3] = v114;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_10000710C(v0 + 408);
      }
    }

    else
    {
      v51 = objc_allocWithZone(LSApplicationRecord);
      *v160 = 0;
      v52 = [v51 initWithStoreItemIdentifier:v37 error:v160];
      v43 = *v160;
      if (v52)
      {
        v42 = v52;
        goto LABEL_19;
      }

      v67 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      v69 = v68;
      *(v0 + 808) = 0;
      *(v0 + 816) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 792) = 0x20746F6E20707041;
      *(v0 + 800) = 0xEF2820646E756F66;
      *(v0 + 888) = v37;
      v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v70);

      v71._countAndFlagsBits = 41;
      v71._object = 0xE100000000000000;
      String.append(_:)(v71);
      v72 = *(v0 + 792);
      v73 = *(v0 + 800);
      *v69 = 0x6C6177656E6572;
      v69[1] = 0xE700000000000000;
      v69[2] = v72;
      v69[3] = v73;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v117 = v25[2];

  if (!v117)
  {

    v25 = 0;
  }

  sub_10000710C(v0 + 240);

  v118 = *(v0 + 8);

  return v118(v25);
}

uint64_t sub_100583D00()
{
  v133 = (v0 + 848);
  v125 = (v0 + 880);
  v126 = (v0 + 856);
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);

  (*(v3 + 8))(v2, v4);
  sub_1000032A8(v1, &unk_1007809F0);
  sub_10000710C(v0 + 408);
  v5 = *(v0 + 1464);
  v132 = *(v0 + 1456);
  v127 = v5;
  while (1)
  {
    v8 = *(v0 + 1516);
    v9 = *(v0 + 1288);
    v10 = *(v0 + 1280);
    static Logger.ald.getter();
    sub_1001DFDA4(v10, v9, v8);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_1001DFEBC(v10, v9, v8);

    if (os_log_type_enabled(v11, v12))
    {
      v131 = v12;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v133 = swift_slowAlloc();
      *v13 = 138412802;
      if (qword_10077E598 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v15 = *(v0 + 616);
      if (!v15 || (, , , os_unfair_lock_lock((v15 + 24)), v16 = *(v15 + 16), v17 = v16, os_unfair_lock_unlock((v15 + 24)), , !v16))
      {
        (*(*(v0 + 944) + 104))(*(v0 + 952), *(v0 + 1512), *(v0 + 936));
        v18 = objc_allocWithZone(type metadata accessor for LogKey());
        v17 = LogKey.init(prefix:)();
      }

      v19 = *(v0 + 1516);
      *(v13 + 4) = v17;
      *v14 = v17;
      *(v13 + 12) = 2082;
      v130 = v14;
      if (v19 == 1)
      {
        v20 = *(v0 + 1288);
        v21 = *(v0 + 1280);
      }

      else
      {
        *(v0 + 832) = *(v0 + 1280);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v28;
      }

      v29 = *(v0 + 968);
      v128 = *(v0 + 960);
      v129 = *(v0 + 976);
      v30 = sub_1002346CC(v21, v20, v133);

      *(v13 + 14) = v30;
      *(v13 + 22) = 2082;
      swift_getErrorValue();
      v31 = *(*(v0 + 696) - 8);
      swift_task_alloc();
      (*(v31 + 16))();
      v32 = String.init<A>(describing:)();
      v34 = v33;

      v35 = sub_1002346CC(v32, v34, v133);

      *(v13 + 24) = v35;
      sub_1000032A8(v130, &qword_10077F920);

      swift_arrayDestroy();

      (*(v29 + 8))(v129, v128);
      v5 = v127;
    }

    else
    {
      v22 = *(v0 + 1516);
      v23 = *(v0 + 1288);
      v24 = *(v0 + 1280);
      v25 = *(v0 + 976);
      v26 = *(v0 + 968);
      v27 = *(v0 + 960);

      sub_1001DFEBC(v24, v23, v22);

      (*(v26 + 8))(v25, v27);
    }

    v36 = *(v0 + 1264);
    v37 = *(v0 + 1256) + 1;
    if (v37 == *(v0 + 1240))
    {
      break;
    }

    *(v0 + 1272) = v5;
    *(v0 + 1264) = v36;
    *(v0 + 1256) = v37;
    *(v0 + 1248) = v132;
    v38 = *(v0 + 896) + 24 * v37;
    v39 = *(v38 + 32);
    *(v0 + 1280) = v39;
    v40 = *(v38 + 40);
    *(v0 + 1288) = v40;
    LODWORD(v38) = *(v38 + 48);
    *(v0 + 1516) = v38;
    if (v38 == 1)
    {
      v41 = objc_allocWithZone(LSApplicationRecord);

      v42 = String._bridgeToObjectiveC()();
      *v126 = 0;
      v43 = [v41 initWithBundleIdentifier:v42 allowPlaceholder:0 error:v126];

      v44 = *v126;
      if (!v43)
      {
        v45 = v44;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        v47 = v46;
        *(v0 + 744) = 0;
        *(v0 + 752) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        *(v0 + 760) = 0x20746F6E20707041;
        *(v0 + 768) = 0xEF2820646E756F66;
        v48._countAndFlagsBits = v39;
        v48._object = v40;
        String.append(_:)(v48);
        v49._countAndFlagsBits = 41;
        v49._object = 0xE100000000000000;
        String.append(_:)(v49);
        v50 = *(v0 + 760);
        v51 = *(v0 + 768);
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    v52 = objc_allocWithZone(LSApplicationRecord);
    *v125 = 0;
    v53 = [v52 initWithStoreItemIdentifier:v39 error:v125];
    v44 = *v125;
    if (v53)
    {
      v43 = v53;
LABEL_21:
      *(v0 + 1296) = v43;
      v54 = *(v0 + 912);
      v55 = v44;
      if (v54)
      {
        v56 = [v43 iTunesMetadata];
        v57 = [v56 distributorInfo];

        v58 = [v57 distributorID];
        if (!v58)
        {
          goto LABEL_2;
        }

        v59 = *(v0 + 912);
        v60 = *(v0 + 904);
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        if (v61 == v60 && v59 == v63)
        {
        }

        else
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v65 & 1) == 0)
          {
LABEL_2:
            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v6 = 0x6C6177656E6572;
            v6[1] = 0xE700000000000000;
            v6[2] = 0x20746F6E20707041;
            v7 = 0xED0000646E756F66;
            goto LABEL_3;
          }
        }
      }

      v70 = [v43 iTunesMetadata];
      v71 = [v70 distributorInfo];

      v72 = [v71 distributorID];
      if (v72)
      {
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = [v43 bundleIdentifier];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          if (v74 == v79 && v76 == v81)
          {

LABEL_38:

            v83 = [v71 domain];
            if (v83)
            {
              v84 = v83;
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v85;

              *(v0 + 472) = &type metadata for WebDistributor;
              v86 = sub_100231E84();
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v82)
          {
            goto LABEL_38;
          }
        }

        *(v0 + 472) = &type metadata for NativeDistributor;
        v86 = sub_1003000A4();
LABEL_42:
        *(v0 + 480) = v86;

        *(v0 + 448) = v74;
        *(v0 + 456) = v76;
        sub_1001DFDBC((v0 + 448), v0 + 408);
        v87 = [v43 iTunesMetadata];
        v88 = [v87 distributorInfo];

        v89 = [v88 accountID];
        if (v89)
        {
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          *(v0 + 1304) = v90;
          *(v0 + 1312) = v92;
          v93 = [v43 bundleIdentifier];
          if (v93)
          {
            v94 = v93;
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            *(v0 + 1320) = v95;
            *(v0 + 1328) = v97;
            sub_10020A980(v0 + 408, v0 + 488);
            sub_1001F0C48(&qword_10077E970);
            if (swift_dynamicCast())
            {
              countAndFlagsBits = *(v0 + 728);
              object = *(v0 + 736);
LABEL_65:
              *(v0 + 1344) = object;
              *(v0 + 1336) = countAndFlagsBits;
              v121 = *(v0 + 1184);
              v122 = sub_100006D8C((v0 + 240), *(v0 + 264));
              sub_100005934(*v122 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v121, &qword_1007812A0);
              v123 = swift_task_alloc();
              *(v0 + 1352) = v123;
              *(v123 + 16) = v95;
              *(v123 + 24) = v97;
              v124 = swift_task_alloc();
              *(v0 + 1360) = v124;
              *v124 = v0;
              v124[1] = sub_10057B830;

              return sub_1003B3900(sub_100588F48, v123);
            }

            v98 = [v43 iTunesMetadata];
            v99 = [v98 distributorInfo];

            v100 = [v99 sourceURL];
            if (v100)
            {
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v101 = 0;
            }

            else
            {
              v101 = 1;
            }

            v104 = *(v0 + 1232);
            v105 = *(v0 + 1224);
            v106 = *(v0 + 1008);
            v107 = *(v0 + 1000);
            (*(v106 + 56))(v105, v101, 1, v107);
            sub_1002321B0(v105, v104);
            v108 = (*(v106 + 48))(v104, 1, v107);
            v109 = *(v0 + 1232);
            if (v108)
            {

              sub_1000032A8(v109, &unk_1007809F0);
            }

            else
            {
              (*(*(v0 + 1008) + 16))(*(v0 + 1016), *(v0 + 1232), *(v0 + 1000));
              sub_1000032A8(v109, &unk_1007809F0);
              v110 = URL.host(percentEncoded:)(1);
              if (v110.value._object)
              {
                object = v110.value._object;
                countAndFlagsBits = v110.value._countAndFlagsBits;
                v116 = URL.port.getter();
                if ((v117 & 1) == 0)
                {
                  v118 = v116;
                  *(v0 + 776) = v110;
                  v119._countAndFlagsBits = 58;
                  v119._object = 0xE100000000000000;
                  String.append(_:)(v119);
                  *(v0 + 872) = v118;
                  v120._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v120);

                  countAndFlagsBits = *(v0 + 776);
                  object = *(v0 + 784);
                }

                (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
                goto LABEL_65;
              }

              (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));
            }

            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v102 = 0x6C6177656E6572;
            v102[1] = 0xE700000000000000;
            v102[2] = 0xD000000000000010;
            v103 = 0x80000001006CD590;
          }

          else
          {

            type metadata accessor for InternalError();
            sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
            swift_allocError();
            *v102 = 0x6C6177656E6572;
            v102[1] = 0xE700000000000000;
            v102[2] = 0xD000000000000013;
            v103 = 0x80000001006CD570;
          }
        }

        else
        {
          type metadata accessor for InternalError();
          sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          *v102 = 0x6C6177656E6572;
          v102[1] = 0xE700000000000000;
          v102[2] = 0xD000000000000013;
          v103 = 0x80000001006CD550;
        }

        v102[3] = v103;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_10000710C(v0 + 408);
      }

      else
      {
LABEL_40:

        *(v0 + 480) = 0;
        *(v0 + 448) = 0u;
        *(v0 + 464) = 0u;
        sub_1000032A8(v0 + 448, &unk_10077FA50);
        type metadata accessor for InternalError();
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
        swift_allocError();
        *v6 = 0x6C6177656E6572;
        v6[1] = 0xE700000000000000;
        v6[2] = 0xD000000000000014;
        v7 = 0x80000001006CD530;
LABEL_3:
        v6[3] = v7;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      v66 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      type metadata accessor for InternalError();
      sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      v47 = v67;
      *(v0 + 808) = 0;
      *(v0 + 816) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      *(v0 + 792) = 0x20746F6E20707041;
      *(v0 + 800) = 0xEF2820646E756F66;
      *(v0 + 888) = v39;
      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 41;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      v50 = *(v0 + 792);
      v51 = *(v0 + 800);
LABEL_30:
      *v47 = 0x6C6177656E6572;
      v47[1] = 0xE700000000000000;
      v47[2] = v50;
      v47[3] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v111 = *(v36 + 16);

  if (!v111)
  {

    v36 = 0;
  }

  sub_10000710C(v0 + 240);

  v112 = *(v0 + 8);

  return v112(v36);
}

uint64_t sub_10058505C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 180) = a2;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  type metadata accessor for NewLicenseBatch(0);
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for LicenseUtilities.Batch();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = *(a4 - 8);
  *(v6 + 112) = v9;
  *(v6 + 120) = swift_task_alloc();
  (*(v9 + 16))();

  return _swift_task_switch(sub_1005851D0, 0, 0);
}

uint64_t sub_1005851D0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = *(v3 + 80);
    *(v0 + 176) = v4;
    *(v0 + 136) = *(v3 + 72);
    *(v0 + 144) = 0;
    *(v0 + 181) = 1;
    sub_10058900C(v1 + ((v4 + 32) & ~v4), *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v16 = *v6;
      *(v0 + 160) = *v6;
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v17[1] = sub_100585768;
      v18 = *(v0 + 120);
      v19 = *(v0 + 64);
      v20 = *(v0 + 72);
      v21 = *(v0 + 56);
      v22 = *(v0 + 180);

      return sub_1005865B0(v16, v22, v18, v21, v19, v20);
    }
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15(1);
  }
}

uint64_t sub_100585404(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return _swift_task_switch(sub_100585508, 0, 0);
}

uint64_t sub_100585508()
{
  sub_100589074(*(v0 + 80), type metadata accessor for NewLicenseBatch);
  v1 = *(v0 + 144) + 1;
  v2 = *(v0 + 24) & *(v0 + 181);
  if (v1 == *(v0 + 128))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3(v2 & 1);
  }

  else
  {
    *(v0 + 144) = v1;
    *(v0 + 181) = v2 & 1;
    sub_10058900C(*(v0 + 48) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 136) * v1, *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v14 = *v6;
      *(v0 + 160) = *v6;
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *v15 = v0;
      v15[1] = sub_100585768;
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v20 = *(v0 + 180);

      return sub_1005865B0(v14, v20, v16, v19, v17, v18);
    }
  }
}

uint64_t sub_100585768(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10058586C, 0, 0);
}

uint64_t sub_10058586C()
{

  v1 = *(v0 + 144) + 1;
  v2 = *(v0 + 40) & *(v0 + 181);
  if (v1 == *(v0 + 128))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3(v2 & 1);
  }

  else
  {
    *(v0 + 144) = v1;
    *(v0 + 181) = v2 & 1;
    sub_10058900C(*(v0 + 48) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 136) * v1, *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v14 = *v6;
      *(v0 + 160) = *v6;
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *v15 = v0;
      v15[1] = sub_100585768;
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v20 = *(v0 + 180);

      return sub_1005865B0(v14, v20, v16, v19, v17, v18);
    }
  }
}

uint64_t sub_100585AB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 208) = a2;
  *(v6 + 96) = a1;
  *(v6 + 104) = type metadata accessor for NewLicenseBatch(0);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v6 + 128) = v11;
  *(v6 + 136) = *(v11 - 8);
  *(v6 + 144) = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for ADPNewLicenseTask(0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v12 = sub_10020A748((v6 + 16));
  (*(*(a4 - 8) + 16))(v12, a3, a4);

  return _swift_task_switch(sub_100585C80, 0, 0);
}

uint64_t sub_100585C80()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 208);
  sub_10058900C(*(v0 + 96), v1, type metadata accessor for NewLicenseBatch);
  v4 = sub_100625FA0();
  sub_10020AB78(v0 + 16, v1 + v2[7]);
  *(v1 + v2[5]) = v3;
  *(v1 + v2[6]) = v4;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_100585D68;

  return sub_1003AD104();
}

uint64_t sub_100585D68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_100586178;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_100585E90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100585E90()
{
  v1 = v0[19];
  v2 = sub_100006D8C(v0 + 2, v0[5]);
  sub_100005934(*v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v1, &qword_1007812A0);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100585F68;
  v4 = v0[24];
  v5 = v0[19];

  return sub_1005874F0(v4, v5, 0);
}

uint64_t sub_100585F68()
{
  v1 = *(*v0 + 152);

  sub_1000032A8(v1, &qword_1007812A0);

  return _swift_task_switch(sub_1005860AC, 0, 0);
}

uint64_t sub_1005860AC()
{
  sub_100589074(v0[21], type metadata accessor for ADPNewLicenseTask);
  sub_10000710C((v0 + 2));

  v1 = v0[1];
  v2 = v0[23] == 0;

  return v1(v2);
}

uint64_t sub_100586178()
{
  v35 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  sub_100589074(v0[21], type metadata accessor for ADPNewLicenseTask);
  static Logger.ald.getter();
  sub_10058900C(v3, v1, type metadata accessor for NewLicenseBatch);
  sub_10058900C(v3, v2, type metadata accessor for NewLicenseBatch);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v31 = v0[17];
    v6 = v0[15];
    v32 = v0[16];
    v33 = v0[18];
    v7 = v0[14];
    v30 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 138413058;
    v10 = sub_100625FA0();
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2082;
    v11 = v6[3];
    v12 = v6[4];
    sub_100006D8C(v6, v11);
    v13 = (*(v12 + 40))(v11, v12);
    v15 = v14;
    sub_100589074(v6, type metadata accessor for NewLicenseBatch);
    v16 = sub_1002346CC(v13, v15, &v34);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2050;
    v17 = *(v7 + *(v30 + 36));
    sub_100589074(v7, type metadata accessor for NewLicenseBatch);
    *(v8 + 24) = v17;
    *(v8 + 32) = 2082;
    swift_getErrorValue();
    v18 = *(v0[9] - 8);
    swift_task_alloc();
    (*(v18 + 16))();
    v19 = String.init<A>(describing:)();
    v21 = v20;

    v22 = sub_1002346CC(v19, v21, &v34);

    *(v8 + 34) = v22;
    sub_1000032A8(v9, &qword_10077F920);

    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v24 = v0[17];
    v23 = v0[18];
    v26 = v0[15];
    v25 = v0[16];
    sub_100589074(v0[14], type metadata accessor for NewLicenseBatch);

    (*(v24 + 8))(v23, v25);
    sub_100589074(v26, type metadata accessor for NewLicenseBatch);
  }

  sub_10000710C((v0 + 2));

  v27 = v0[1];
  v28 = v0[23] == 0;

  return v27(v28);
}

uint64_t sub_1005865B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a2;
  *(v6 + 168) = a1;
  v11 = type metadata accessor for Logger();
  *(v6 + 176) = v11;
  *(v6 + 184) = *(v11 - 8);
  *(v6 + 192) = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  v12 = sub_10020A748((v6 + 88));
  (*(*(a4 - 8) + 16))(v12, a3, a4);

  return _swift_task_switch(sub_100586704, 0, 0);
}