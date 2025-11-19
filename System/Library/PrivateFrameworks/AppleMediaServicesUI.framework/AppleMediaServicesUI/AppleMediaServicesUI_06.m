uint64_t sub_1000958B4()
{

  sub_100066B48();
}

void sub_10009597C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  if (a4)
  {
    v29 = v10;
    if (qword_1002686D0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(&v32 + 1) = type metadata accessor for ActivityObserver();
    v31[0] = a5;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v31);
    LogInterpolation.init(stringLiteral:)();
    v16 = static os_log_type_t.default.getter();
    sub_1000036B0(v16);

    v17 = objc_opt_self();
    v18 = 0;
    v30 = xmmword_1001E6A20;
    do
    {
      v19 = *(&off_100244588 + v18++ + 32);
      v20 = [v17 currentProcess];
      LOBYTE(v31[0]) = 0;
      BYTE1(v31[0]) = v19;
      v31[1] = v20;
      v32 = v30;
      v33 = 0x80000001001F31B0;
      v34 = 25;
      v35 = 2;
      v36 = 10485760;
      v21 = [objc_allocWithZone(type metadata accessor for Defaults()) init];
      sub_1000F3168(0, v21, v31);
      sub_10000FF10(v31);
    }

    while (v18 != 4);
    v22 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    if (qword_100268670 != -1)
    {
      swift_once();
    }

    sub_1000627E8();

    type metadata accessor for DynamicUICache();
    sub_1000C5934();
    sub_1000C5B98();
    if (qword_1002687B0 != -1)
    {
      swift_once();
    }

    sub_10016D838();
    type metadata accessor for PodcastsEventManager();
    swift_initStaticObject();
    sub_100187798();
    v23 = type metadata accessor for TaskPriority();
    v24 = v29;
    sub_10000A7C0(v29, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_1000E349C();

    sub_10000A7C0(v24, 1, 1, v23);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_1001A1E9C(0, 0, v24, &unk_1001E6A70, v26);

    v27 = type metadata accessor for UniversalLinksUpdater();
    sub_1001CB584(v27);
    if (qword_1002687C8 != -1)
    {
      swift_once();
    }

    sub_10017A3A4();
  }
}

uint64_t sub_100095E3C()
{
  v7 = v0;
  v1 = [objc_opt_self() ams_sharedAccountStore];
  sub_10009605C(v6);
  v2 = [objc_opt_self() defaultManager];
  type metadata accessor for NotificationSettingsEventManager();
  v3 = swift_allocObject();
  *(v0 + 16) = sub_10009647C(v1, v6, v2, v3);

  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100095F5C;

  return sub_100181FD8();
}

uint64_t sub_100095F5C()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_10009605C@<X0>(void *a1@<X8>)
{
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_1000078B4();
  v3 = [objc_allocWithZone(AMSEngagement) initWithBag:v2];

  result = sub_100002BC0(0, &qword_100269E30, AMSEngagement_ptr);
  a1[3] = result;
  a1[4] = &off_100250D48;
  *a1 = v3;
  return result;
}

uint64_t sub_100096110()
{
  sub_100004768();
  if (qword_100268838 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000961D4;

  return sub_1001B8710();
}

uint64_t sub_1000961D4(char a1)
{
  sub_1000056A8();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  sub_100002D20();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = a1 & 1;

    return _swift_task_switch(sub_100096318, 0, 0);
  }
}

uint64_t sub_100096344()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  sub_10000624C(v4);

  return sub_100095E20();
}

uint64_t sub_1000963E0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_10000624C(v4);

  return sub_1000960F0(v5);
}

void *sub_10009647C(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  a4[5] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  a4[6] = &off_100246688;
  a4[2] = a1;
  a4[17] = sub_100002BC0(0, &qword_100269E28, NSFileManager_ptr);
  a4[18] = &off_10024B870;
  a4[14] = a3;
  a4[7] = 0xD000000000000014;
  a4[8] = 0x80000001001F41A0;
  sub_10003B104(a2, (a4 + 9));
  return a4;
}

BOOL sub_100096550(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002445B0, v2);

  return v3 != 0;
}

uint64_t sub_10009659C(void *a1)
{
  v2 = sub_10007B9A4(&qword_100269E60, &qword_1001E6C70);
  sub_100002CC4(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100006264();
  v6 = a1[3];
  v7 = a1[4];
  sub_10000A264(a1);
  sub_100098380();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100098428();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v8 = sub_10000A318();
  return v9(v8, v2);
}

uint64_t sub_1000966BC(uint64_t *a1)
{
  v4 = sub_10007B9A4(&qword_100269E48, &qword_1001E6C68);
  sub_100002CC4(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100006264();
  v8 = a1[3];
  v9 = a1[4];
  sub_10000A264(a1);
  sub_100098380();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_1000983D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_10000A318();
    v11(v10, v4);
    v1 = v13;
    sub_100002C00(a1);
  }

  return v1;
}

BOOL sub_100096810@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100096550(*a1);
  *a2 = result;
  return result;
}

BOOL sub_100096890@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100096550(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000968C8(uint64_t a1)
{
  v2 = sub_100098380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096904(uint64_t a1)
{
  v2 = sub_100098380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100096940@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000966BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100096BA8()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v25 = sub_10007B9A4(&qword_100269EB0, &qword_1001E6ED0);
  sub_100002CC4(v25);
  v23 = v5;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = v4[3];
  v12 = v4[4];
  sub_10000A264(v4);
  sub_10007BB44();
  v24 = v10;
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 1 << *(v2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v2 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = (*(v2 + 48) + 24 * (__clz(__rbit64(v15)) | (v18 << 6)));
      v20 = v19[1];
      v21 = v19[2];
      v26 = *v19;
      v27 = v20;

      sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
      sub_100098768();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v0)
      {
        break;
      }

      v15 &= v15 - 1;

      v17 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*(v23 + 8))(v24, v25);

LABEL_12:
    sub_100005B78();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        (*(v23 + 8))(v24, v25);
        goto LABEL_12;
      }

      v15 = *(v2 + 56 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_100096DE4()
{
  v0 = sub_100004750();
  v8 = sub_100007EC4(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_1000793FC(v8, v9);
  return Hasher._finalize()();
}

uint64_t sub_100096E20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEE007473694C6E6FLL)
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

Swift::Int HeapType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100096F38(char a1)
{
  if (a1)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 7955819;
  }
}

void sub_100096F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1001C2AB4(a3, a6);
  }
}

void sub_100096FE0()
{
  sub_100007E34();
  v18 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10007B9A4(&qword_100269F28, &qword_1001E7100);
  sub_100002CC4(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_100004E78();
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  v16 = v7[4];
  sub_100003CA8(v7, v7[3]);
  sub_100098CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v5;
  v20 = v3;
  sub_10007BEBC();
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v19 = v18;
    sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
    sub_100098768();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v10 + 8))(v15, v8);
  sub_100005B78();
}

void sub_10009716C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  sub_100079558(a1, a4);
}

Swift::Int sub_1000971AC()
{
  sub_100004750();
  v0 = String.hash(into:)();
  v8 = sub_100007EC4(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_100079558(v8, v9);
  return Hasher._finalize()();
}

uint64_t sub_100097208(uint64_t *a1)
{
  v2 = sub_10007B9A4(&qword_100269F18, &qword_1001E70F8);
  sub_100002CC4(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100006264();
  v6 = a1[3];
  v7 = a1[4];
  sub_10000A264(a1);
  sub_100098CC4();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10007BCB8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
  sub_100098690();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = sub_10000A318();
  v10(v9, v2);
  sub_100002C00(a1);
  return v11;
}

uint64_t sub_1000973D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001001F31F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45737961776C61 && a2 == 0xED000064656C6261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001001F31D0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65766974616C6572 && a2 == 0xED0000726564724FLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

Swift::Int _s14amsengagementd13SQLite3StatusO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_100097634(char a1)
{
  result = 0x736E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6E45737961776C61;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65766974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100097714(uint64_t a1, uint64_t a2)
{
  if ((sub_1001CB0F4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a2 + 8);

    v7 = sub_1001C3B70(v4, v5);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 16);

  sub_1001C49D8();
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 25);
  v16 = *(a2 + 25);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

LABEL_22:
    v17 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100097858(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_100269F00, &qword_1001E70F0);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_10000A264(a1);
  sub_100098A3C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  HIBYTE(v20) = 0;
  sub_10007B9A4(&qword_100269EE8, &unk_1001E70D0);
  sub_100098B68();
  sub_100002E70();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v21 = v3[1];
    HIBYTE(v20) = 1;
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF10();
    sub_100002E70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = v3[2];
    HIBYTE(v20) = 2;
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    sub_100098C40(&qword_1002692D8, sub_10007D3C0);
    sub_100002E70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 24);
    LOBYTE(v21) = 3;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 25);
    LOBYTE(v21) = 4;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[4];
    v18 = *(v3 + 40);
    LOBYTE(v21) = 5;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_100097AAC(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1000797A4(a1);
  v5 = v2[1];
  if (v5)
  {
    Hasher._combine(_:)(1u);
    sub_10007A648(a1, v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = v2[2];
  if (v6)
  {
    Hasher._combine(_:)(1u);
    sub_100079B7C(a1, v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(v2 + 24);
  if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v7 & 1;
  }

  Hasher._combine(_:)(v8);
  v9 = *(v2 + 25);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  Hasher._combine(_:)(v10);
  if (*(v2 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = v2[4];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }
}

Swift::Int sub_100097BA4()
{
  sub_100004750();
  sub_100097AAC(v1);
  return Hasher._finalize()();
}

void sub_100097BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007E34();
  v12 = v11;
  v14 = v13;
  v15 = sub_10007B9A4(&qword_100269ED8, &qword_1001E70C8);
  sub_100002CC4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_100004E78();
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  v23 = v12[4];
  sub_100003CA8(v12, v12[3]);
  sub_100098A3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100002C00(v12);
  }

  else
  {
    sub_10007B9A4(&qword_100269EE8, &unk_1001E70D0);
    v33 = 0;
    sub_100098A90();
    sub_100004F24();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    v33 = 1;
    sub_10007BD0C();
    sub_100004F24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    v33 = 2;
    sub_100098C40(&qword_100269328, sub_10007D634);
    sub_100004F24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = a10;
    sub_10000B6E4(3);
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000B6E4(4);
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000B6E4(5);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v22;
    v27 = v26;
    (*(v17 + 8))(v25, v15);
    sub_100002C00(v12);
    v28 = v32;
    *v14 = a10;
    *(v14 + 8) = v28;
    *(v14 + 16) = a10;
    LOBYTE(v28) = v30;
    *(v14 + 24) = v31;
    *(v14 + 25) = v28;
    *(v14 + 32) = v24;
    *(v14 + 40) = v27 & 1;
  }

  sub_100005B78();
}

uint64_t sub_100097ED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100096988();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100097F20()
{
  v1 = *v0;
  v2 = Hasher.init(_seed:)();
  v10 = sub_100007EC4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_1000793FC(v10, v11);
  return Hasher._finalize()();
}

uint64_t sub_100097F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100097F98(uint64_t a1)
{
  v2 = sub_100098CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100097FD4(uint64_t a1)
{
  v2 = sub_100098CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100098010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100097208(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_100098040()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_100096FE0();
}

Swift::Int sub_100098060()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1000971AC();
}

Swift::Int sub_100098078()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = Hasher.init(_seed:)();
  v12 = sub_100007EC4(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_10009716C(v12, v13, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000980F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000973D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100098120(uint64_t a1)
{
  v2 = sub_100098A3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009815C(uint64_t a1)
{
  v2 = sub_100098A3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100098198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100097BDC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = *v15;
    result = *&v15[9];
    *(a9 + 25) = *&v15[9];
  }

  return result;
}

Swift::Int sub_1000981FC()
{
  Hasher.init(_seed:)();
  sub_100097AAC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10009823C()
{
  sub_100004750();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100098284()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10009823C();
}

Swift::Int sub_10009828C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = Hasher.init(_seed:)();
  sub_100007EC4(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000982D4()
{
  result = qword_100269E38;
  if (!qword_100269E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E38);
  }

  return result;
}

unint64_t sub_10009832C()
{
  result = qword_100269E40;
  if (!qword_100269E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E40);
  }

  return result;
}

unint64_t sub_100098380()
{
  result = qword_100269E50;
  if (!qword_100269E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E50);
  }

  return result;
}

unint64_t sub_1000983D4()
{
  result = qword_100269E58;
  if (!qword_100269E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E58);
  }

  return result;
}

unint64_t sub_100098428()
{
  result = qword_100269E68;
  if (!qword_100269E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E68);
  }

  return result;
}

_BYTE *sub_10009847C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100098534()
{
  result = qword_100269E70;
  if (!qword_100269E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E70);
  }

  return result;
}

unint64_t sub_10009858C()
{
  result = qword_100269E78;
  if (!qword_100269E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E78);
  }

  return result;
}

unint64_t sub_1000985E4()
{
  result = qword_100269E80;
  if (!qword_100269E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E80);
  }

  return result;
}

unint64_t sub_10009863C()
{
  result = qword_100269E88;
  if (!qword_100269E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E88);
  }

  return result;
}

unint64_t sub_100098690()
{
  result = qword_100269EA0;
  if (!qword_100269EA0)
  {
    sub_10007BC70(&qword_100269E98, &qword_1001E6EC8);
    sub_100098714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EA0);
  }

  return result;
}

unint64_t sub_100098714()
{
  result = qword_100269EA8;
  if (!qword_100269EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EA8);
  }

  return result;
}

unint64_t sub_100098768()
{
  result = qword_100269EB8;
  if (!qword_100269EB8)
  {
    sub_10007BC70(&qword_100269E98, &qword_1001E6EC8);
    sub_1000987EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EB8);
  }

  return result;
}

unint64_t sub_1000987EC()
{
  result = qword_100269EC0;
  if (!qword_100269EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EC0);
  }

  return result;
}

__n128 sub_100098840(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100098854(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100098894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000988EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100098900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100098940(uint64_t result, int a2, int a3)
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

unint64_t sub_100098990()
{
  result = qword_100269EC8;
  if (!qword_100269EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EC8);
  }

  return result;
}

unint64_t sub_1000989E8()
{
  result = qword_100269ED0;
  if (!qword_100269ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269ED0);
  }

  return result;
}

unint64_t sub_100098A3C()
{
  result = qword_100269EE0;
  if (!qword_100269EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EE0);
  }

  return result;
}

unint64_t sub_100098A90()
{
  result = qword_100269EF0;
  if (!qword_100269EF0)
  {
    sub_10007BC70(&qword_100269EE8, &unk_1001E70D0);
    sub_100098B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EF0);
  }

  return result;
}

unint64_t sub_100098B14()
{
  result = qword_100269EF8;
  if (!qword_100269EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EF8);
  }

  return result;
}

unint64_t sub_100098B68()
{
  result = qword_100269F08;
  if (!qword_100269F08)
  {
    sub_10007BC70(&qword_100269EE8, &unk_1001E70D0);
    sub_100098BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F08);
  }

  return result;
}

unint64_t sub_100098BEC()
{
  result = qword_100269F10;
  if (!qword_100269F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F10);
  }

  return result;
}

uint64_t sub_100098C40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_1002692D0, &unk_1001E70E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100098CC4()
{
  result = qword_100269F20;
  if (!qword_100269F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMPBag.AppUniversalLinks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for AMPBag.Definition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100098ED4()
{
  result = qword_100269F30;
  if (!qword_100269F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F30);
  }

  return result;
}

unint64_t sub_100098F2C()
{
  result = qword_100269F38;
  if (!qword_100269F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F38);
  }

  return result;
}

unint64_t sub_100098F84()
{
  result = qword_100269F40;
  if (!qword_100269F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F40);
  }

  return result;
}

unint64_t sub_100098FDC()
{
  result = qword_100269F48;
  if (!qword_100269F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F48);
  }

  return result;
}

unint64_t sub_100099034()
{
  result = qword_100269F50;
  if (!qword_100269F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F50);
  }

  return result;
}

unint64_t sub_10009908C()
{
  result = qword_100269F58;
  if (!qword_100269F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F58);
  }

  return result;
}

void sub_1000990F0(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  [v1 handleInboundURL:v2];
}

unint64_t sub_100099170(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244448, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id sub_1000991BC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23[-1] - v9;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setAccount:a3];
  [v11 setFailOnDismiss:a2 & 1];
  strcpy(v23, "clientData");
  BYTE3(v23[1]) = 0;
  HIDWORD(v23[1]) = -369098752;
  sub_100002E90();
  sub_100004F48();
  sub_10000E1E8(v24);
  if (*(&v26 + 1))
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_1000069B0())
    {
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_6;
    }
  }

  else
  {
    sub_100002C5C(&v25);
  }

  v12.super.isa = 0;
LABEL_6:
  [v11 setClientData:v12.super.isa];

  strcpy(v23, "metricsOverlay");
  HIBYTE(v23[1]) = -18;
  sub_100002E90();
  sub_100004F48();
  sub_10000E1E8(v24);
  if (*(&v26 + 1))
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_1000069B0())
    {
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    sub_100002C5C(&v25);
  }

  v13.super.isa = 0;
LABEL_11:
  [v11 setMetricsOverlay:v13.super.isa];

  v23[0] = 0xD000000000000010;
  v23[1] = 0x80000001001F42E0;
  sub_100002E90();
  sub_100004F48();
  sub_10000E1E8(v24);
  if (*(&v26 + 1))
  {
    if (sub_1000069B0())
    {
      [v11 setDestinationStyle:v23[0]];
    }
  }

  else
  {
    sub_100002C5C(&v25);
  }

  v23[0] = 7107189;
  v23[1] = 0xE300000000000000;
  sub_100002E90();
  sub_100004F48();

  sub_10000E1E8(v24);
  if (*(&v26 + 1))
  {
    if (sub_1000069B0())
    {
      URL.init(string:)();

      v14 = type metadata accessor for URL();
      v16 = 0;
      if (sub_100009F34(v10, 1, v14) != 1)
      {
        URL._bridgeToObjectiveC()(v15);
        v16 = v17;
        (*(*(v14 - 8) + 8))(v10, v14);
      }

      [v11 setURL:v16];
    }
  }

  else
  {
    sub_100002C5C(&v25);
  }

  v18 = sub_100099650(v11);
  if (!v18)
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_27;
  }

  v19 = v18;
  v23[0] = 0x656C797473;
  v23[1] = 0xE500000000000000;
  sub_100002E90();
  sub_10000E0C8(v24, v19, &v25);

  sub_10000E1E8(v24);
  if (!*(&v26 + 1))
  {
LABEL_27:
    sub_100002C5C(&v25);
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v20 = sub_100099170(v24[0]);
    if (v20 != 6)
    {
      a4 = sub_100050FCC(v20);
    }
  }

LABEL_28:
  [v11 setPresentationStyle:a4];

  return v11;
}

uint64_t sub_100099650(void *a1)
{
  v1 = [a1 clientData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000996BC(uint64_t a1)
{
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v2 = Promise.__allocating_init()();

  sub_100099764(a1, sub_100099C4C, v2);

  return v2;
}

void sub_100099764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_10009992C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100099934;
  v9[3] = &unk_100246E38;
  v8 = _Block_copy(v9);

  [v3 enqueueWithRequest:a1 completion:v8];
  _Block_release(v8);
}

void sub_100099854(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    a3(a1, 0);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1000999C0();
      v5 = swift_allocError();
    }

    swift_errorRetain();
    a3(v5, 1);
  }
}

void sub_100099934(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_1000999C0()
{
  result = qword_100269F60;
  if (!qword_100269F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for EnqueueError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100099BA0()
{
  result = qword_100269F68;
  if (!qword_100269F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F68);
  }

  return result;
}

unint64_t sub_100099BF8()
{
  result = qword_100269F70;
  if (!qword_100269F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F70);
  }

  return result;
}

uint64_t sub_100099C58(void *a1)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for Date();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = __chkstk_darwin(v3);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v55 - v7;
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E74B0;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [v2 active];
  sub_100002EA8();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v11 = [v2 backingIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 96) = v12;
  *(inited + 104) = v14;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x47656C6261736964;
  *(inited + 136) = 0xEF676E6970756F72;
  *(inited + 144) = [v2 disableGrouping];
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000001001F4360;
  *(inited + 192) = [v2 isExpirationDateHidden];
  *(inited + 216) = &type metadata for Bool;
  strcpy((inited + 224), "displayStyle");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = [v2 displayStyle];
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = 0x65644970756F7267;
  *(inited + 280) = 0xEF7265696669746ELL;
  v15 = [v2 groupIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 288) = v16;
  *(inited + 296) = v18;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x696669746E656469;
  *(inited + 328) = 0xEA00000000007265;
  v19 = [v2 identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(inited + 336) = v20;
  *(inited + 344) = v22;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0x79654B676F6CLL;
  *(inited + 376) = 0xE600000000000000;
  v23 = [v2 logKey];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(inited + 384) = v24;
  *(inited + 392) = v26;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0x797469726F697270;
  *(inited + 424) = 0xE800000000000000;
  *(inited + 432) = [v2 priority];
  sub_100002EA8();
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v27 + 5;
  *(inited + 472) = v28;
  *(inited + 480) = [v2 shouldPostNotification];
  *(inited + 504) = &type metadata for Bool;
  *(inited + 512) = 0x6F666E4972657375;
  *(inited + 520) = 0xE800000000000000;
  v29 = [v2 userInfo];
  *(inited + 552) = sub_100002BC0(0, &qword_100269F78, NSMutableDictionary_ptr);
  *(inited + 528) = v29;
  v30 = Dictionary.init(dictionaryLiteral:)();
  v31 = [v2 account];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 ams_DSID];

    if (v33)
    {
      v64 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      *&v63 = v33;
      sub_100002C4C(&v63, v62);
      swift_isUniquelyReferenced_nonNull_native();
      v61 = v30;
      sub_100004F64();
      sub_10000DFC4();
      v30 = v61;
    }
  }

  v34 = [v2 isHardwareOffer];
  v64 = &type metadata for Bool;
  LOBYTE(v63) = v34;
  sub_100002C4C(&v63, v62);
  swift_isUniquelyReferenced_nonNull_native();
  v61 = v30;
  sub_100004F64();
  sub_10000DFC4();
  v35 = v61;
  v36 = [v2 expirationDate];
  if (v36)
  {
    v37 = v36;
    v38 = v56;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v58;
    v39 = v59;
    v41 = v38;
    v42 = v60;
    (*(v59 + 32))(v58, v41, v60);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v57 stringFromDate:isa];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v64 = &type metadata for String;
    *&v63 = v45;
    *(&v63 + 1) = v47;
    sub_100002C4C(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v35 = v61;
    (*(v39 + 8))(v40, v42);
  }

  v48 = sub_100026484(v2, &selRef_footer);
  if (v49)
  {
    sub_1000069D0(v48, v49);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v35 = v61;
  }

  v50 = sub_100026484(v2, &selRef_informativeText);
  if (v51)
  {
    sub_1000069D0(v50, v51);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v35 = v61;
  }

  v52 = sub_100026484(v2, &selRef_title);
  if (v53)
  {
    sub_1000069D0(v52, v53);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    return v61;
  }

  return v35;
}

void *sub_10009A310(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10009B7C0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = sub_100099C58(a1);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10009B7C0((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_10009A444()
{
  sub_100042428();
  sub_100006A08(0x45534D41u);
  v0 = sub_10002411C();
  v1 = objc_allocWithZone(AMSMetrics);
  sub_100006A08(0x65736D61u);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithContainerID:v2 bag:v0];

  qword_100287778 = v3;
}

void sub_10009A4F0()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;

      v1(&v5);
      if (v0)
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_10009A57C()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(__src, v4, sizeof(__src));
      sub_10009CFF8(__dst, v5);
      v1(__src);
      if (v0)
      {
        break;
      }

      memcpy(v5, __src, sizeof(v5));
      sub_10009D054(v5);
      v4 += 72;
      if (!--v3)
      {
        return;
      }
    }

    memcpy(v5, __src, sizeof(v5));
    sub_10009D054(v5);
  }
}

uint64_t sub_10009A63C()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v4 = qword_1002878E8;
  type metadata accessor for Debouncer();
  swift_allocObject();
  result = sub_1000C0390(v3, v4, sub_10009A734, 0);
  qword_100287780 = result;
  return result;
}

uint64_t sub_10009A7EC(char a1, void **a2, uint64_t a3, void *a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v75 = a7;
  v76 = a8;
  v71 = a6;
  v74 = a5;
  v73 = a4;
  v77 = a2;
  v78 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v58 - v22;
  v24 = type metadata accessor for ScheduleInfo(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v70 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LogInterpolation.StringInterpolation();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  if (a1)
  {
    v64 = v19;
    v65 = v16;
    v66 = v14;
    v67 = v15;
    v68 = v11;
    v69 = v10;
    v63 = a9;
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    v72 = qword_100287878;
    v29 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = *(type metadata accessor for LogInterpolation() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v61 = v29;
    v59 = v32 + 2 * v31;
    v33 = swift_allocObject();
    v58 = xmmword_1001E5F70;
    *(v33 + 16) = xmmword_1001E5F70;
    v60 = v32;
    v34 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0xD000000000000029;
    v35._object = 0x80000001001F45A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    v83 = &type metadata for String;
    v37 = v77;
    v36 = v78;
    aBlock = v77;
    v81 = v78;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    v62 = v31;
    LogInterpolation.init(stringInterpolation:)();
    v39 = static os_log_type_t.default.getter();
    sub_1000036B0(v39);

    sub_100003CA8(v73, v73[3]);
    sub_1001906AC(v37, v36, v74, v23);
    v48 = sub_100009F34(v23, 1, v24);
    if (v48 == 1)
    {
      sub_10000A00C(v23, &qword_100269F90, &qword_1001E8720);
      *(swift_allocObject() + 16) = v58;
      v49 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v50._countAndFlagsBits = 0xD000000000000040;
      v50._object = 0x80000001001F45D0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
      v83 = &type metadata for String;
      aBlock = v77;
      v81 = v78;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
      v51._countAndFlagsBits = 41;
      v51._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
      LogInterpolation.init(stringInterpolation:)();
      v52 = static os_log_type_t.error.getter();
      sub_1000036B0(v52);
    }

    else
    {
      v57 = v70;
      sub_100065360(v23, v70, type metadata accessor for ScheduleInfo);
      sub_100003CA8(v71, v71[3]);
      sub_1000E1A18(v57);
      sub_100067514(v57, type metadata accessor for ScheduleInfo);
    }

    v53 = v64;
    sub_1001CF568();
    if (qword_1002687F0 != -1)
    {
      swift_once();
    }

    v84 = sub_10009B164;
    v85 = 0;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_100005E50;
    v83 = &unk_100246FD0;
    v54 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v79 = _swiftEmptyArrayStorage;
    sub_100065204(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
    v55 = v66;
    v56 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);
    (*(v68 + 8))(v55, v56);
    return (*(v65 + 8))(v53, v67);
  }

  else
  {
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v40 = *(type metadata accessor for LogInterpolation() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v43 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._object = 0x80000001001F4570;
    v44._countAndFlagsBits = 0xD000000000000026;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
    v83 = &type metadata for String;
    aBlock = v77;
    v81 = v78;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
    LogInterpolation.init(stringInterpolation:)();
    v46 = static os_log_type_t.default.getter();
    sub_1000036B0(v46);
  }
}

uint64_t sub_10009B164()
{
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  return sub_10004A6E8(1);
}

uint64_t sub_10009B1A0(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (qword_100268718 != -1)
  {
    sub_100019B54();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v11 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001001F43A0;
  v12._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v13 = type metadata accessor for ScheduleInfo(0);
  v27 = v13;
  v14 = sub_100017E64(&v26);
  sub_100006280(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v15 = sub_10000A00C(&v26, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = sub_10018FA34((a1 + *(v13 + 20)));
  if ((*(a1 + *(v13 + 24)) & 1) != 0 || !v17)
  {
    sub_10018FD5C(a1);
    if (qword_1002685F0 != -1)
    {
      swift_once();
    }

    v25 = *(qword_100287780 + 16);

    sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
    sub_100006070(&qword_100269F80, &unk_10026F890, &unk_1001E74C0);
    Subject<>.send()();
  }

  else
  {
    v18 = swift_allocObject();
    v19 = sub_100009DFC(v18);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x80000001001F43F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v27 = v13;
    v21 = sub_100017E64(&v26);
    sub_100006280(v21);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v22 = sub_10000A00C(&v26, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.debug.getter();
    sub_1000036B0(v23);
  }
}

char *sub_10009B700(char *a1, int64_t a2, char a3)
{
  result = sub_10009BB84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10009B720()
{
  v1 = *v0;
  sub_100004B1C();
  sub_10009C570(v2, v3, v4, v5, v6, v7, v8, sub_1000D6698);
  *v0 = v9;
}

void *sub_10009B7C0(void *a1, int64_t a2, char a3)
{
  result = sub_10009BCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009B7E0(char *a1, int64_t a2, char a3)
{
  result = sub_10009BDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10009B800(size_t a1, int64_t a2, char a3)
{
  result = sub_10009BEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009B994(void *a1, int64_t a2, char a3)
{
  result = sub_10009C260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009B9F8(char *a1, int64_t a2, char a3)
{
  result = sub_10009C370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BA18(char *a1, int64_t a2, char a3)
{
  result = sub_10009C468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009BAD4(void *a1, int64_t a2, char a3)
{
  result = sub_10009C7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009BB44(void *a1, int64_t a2, char a3)
{
  result = sub_10009C9FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BB64(char *a1, int64_t a2, char a3)
{
  result = sub_10009CB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BB84(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A060, &qword_1001E75E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10004F7A8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A068, &qword_1001E75E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10009BCD0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FD0, &qword_1001E7538);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0(a4 + 32, v8);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009BDE0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1000D66E0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_10009BEE8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007B9A4(&qword_10026A048, &unk_1001E75C0);
  v10 = *(sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000D673C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10009C0B4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10007B9A4(&qword_100269FD8, &qword_1001EA220);
  v11 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  sub_100002CFC(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_23;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_18:
  v19 = *(*(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8) + 80);
  sub_100004864();
  if (a1)
  {
    sub_1000D679C(a4 + v20, v9, v16 + v20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10009C260(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0(a4 + 32, v8);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009C370(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FA8, &qword_1001E7500);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10006933C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009C468(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A030, &qword_1001E75A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1000D6898((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10009C570(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_100002EBC();
    if (v13 != v14)
    {
      sub_10000AE9C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10007B9A4(a5, a6);
  v17 = a7(0);
  sub_100002CFC(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(a7(0) - 8) + 80);
  sub_100004864();
  if (a1)
  {
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10009C718(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_10007B9A4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v11)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_10009C7F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A010, &qword_1001E7588);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0(a4 + 32, v8);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A018, &qword_1001E7590);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10009C908(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_10007B9A4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 32);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v11)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_10009C9FC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FF8, &qword_1001E7568);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0(a4 + 32, v8);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A000, qword_1001E7570);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009CB0C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FB0, &qword_1001E7508);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1000D6988((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_100271F60, &qword_1001E7510);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CC24(unsigned __int8 *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24[-1] - v6;
  v8 = type metadata accessor for ScheduleInfo(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &type metadata for ScheduleDatabase;
  v28[4] = &off_100251628;
  v26 = &type metadata for EngagementScheduleRunner;
  v27 = &off_100249BF8;
  sub_100003CA8(v28, &type metadata for ScheduleDatabase);
  v12 = &a1[*(type metadata accessor for ScheduleInfo.Metadata(0) + 44)];
  v14 = *v12;
  v13 = v12[1];
  sub_1001906AC(*v12, v13, *a1, v7);
  if (sub_100009F34(v7, 1, v8) == 1)
  {
    sub_10000A00C(v7, &qword_100269F90, &qword_1001E8720);
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._object = 0x80000001001F4520;
    v19._countAndFlagsBits = 0xD000000000000026;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v24[3] = &type metadata for String;
    v24[0] = v14;
    v24[1] = v13;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v24, &qword_10026D350, &qword_1001E6050);
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    LogInterpolation.init(stringInterpolation:)();
    v21 = static os_log_type_t.error.getter();
    sub_1000036B0(v21);
  }

  else
  {
    sub_100065360(v7, v11, type metadata accessor for ScheduleInfo);
    sub_100003CA8(v25, v26);
    sub_1000E1A18(v11);
    sub_100067514(v11, type metadata accessor for ScheduleInfo);
  }

  sub_100002C00(v28);
  return sub_100002C00(v25);
}

uint64_t sub_10009D0A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  return sub_10009A73C();
}

__n128 sub_10009D128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D13C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10009D17C(uint64_t result, int a2, int a3)
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

_BYTE *sub_10009D1D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t getEnumTagSinglePayload for AppDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10009D338(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_10009D454(char a1)
{
  result = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0x7379656E72756F6ALL;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D50C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000116D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D454(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009D578(char a1)
{
  if (!a1)
  {
    return 0x65756575716E65;
  }

  if (a1 == 1)
  {
    return 0x696577746867696CLL;
  }

  return 1668184435;
}

unint64_t sub_10009D5F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EF8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D578(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D658()
{
  result = qword_10026A098;
  if (!qword_10026A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A098);
  }

  return result;
}

NSString sub_10009D6AC()
{
  switch(*(v0 + 1))
  {
    case 1:
      result = sub_10000BD6C();
      break;
    case 2:
    case 3:
      result = String._bridgeToObjectiveC()();
      break;
    default:
      result = sub_10000B720();
      break;
  }

  return result;
}

NSString sub_10009D750()
{
  switch(*(v0 + 1))
  {
    case 1:
    case 3:
      result = String._bridgeToObjectiveC()();
      break;
    case 2:
      result = sub_10000BD6C();
      break;
    default:
      result = sub_10000B720();
      break;
  }

  return result;
}

id sub_10009D7EC()
{
  sub_100042428();
  result = sub_10002411C();
  qword_10026A070 = result;
  return result;
}

id sub_10009D848()
{
  if (qword_1002685E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100287778;
  qword_10026A078 = qword_100287778;

  return v1;
}

uint64_t sub_10009D8AC(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10009D914()
{
  v1 = *(v0 + 24);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_1000AE380(v2);

  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
    v5 = v3;
    [v4 lock];
    v6 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
    swift_beginAccess();
    v7 = *&v5[v6];

    [v4 unlock];
    v23 = v5;

    v8 = sub_100049574(v7);
    v9 = 0;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v8 == v9)
      {

        sub_10009DE78(v24);

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 processIdentifier];
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      *(v14 + 24) = v13;
      v29 = sub_10009E25C;
      v30 = v14;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v27 = sub_1000266E0;
      v28 = &unk_1002471F8;
      v15 = _Block_copy(&aBlock);

      v16 = [v11 remoteObjectProxyWithErrorHandler:v15];
      _Block_release(v15);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_100002C4C(&v31, &aBlock);
      sub_10007B9A4(&qword_10026A288, &qword_1001E7868);
      if (swift_dynamicCast())
      {
        v17 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = v24[2];
          sub_1000D4CFC();
          v17 = v21;
        }

        v18 = v17[2];
        if (v18 >= v17[3] >> 1)
        {
          sub_1000D4CFC();
          v17 = v22;
        }

        v17[2] = v18 + 1;
        v24 = v17;
        v19 = &v17[2 * v18];
        *(v19 + 8) = v13;
        v19[5] = v25;
        v9 = v12;
      }

      else
      {
        ++v9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    sub_10007B9A4(&qword_10026A288, &qword_1001E7868);

    Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t sub_10009DCA8(uint64_t a1, uint64_t a2, int a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for AppConnection();
  v12[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  v13 = &type metadata for Int32;
  LODWORD(v12[0]) = a3;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v12);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);
}

void *sub_10009DE78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026A290, &qword_1001F1E00);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_10009DF94(v2, 1, &v4);

  return v4;
}

uint64_t sub_10009DF38()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_10009DF60()
{
  sub_10009DF38();

  return swift_deallocClassInstance();
}

uint64_t sub_10009DF94(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v28 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v8 = *i;
    v9 = *a3;
    v10 = sub_1000AABA0(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    swift_unknownObjectRetain();
    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10007B9A4(&qword_10026A298, &unk_1001E7870);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 4 * v15) = v7;
    *(v21[7] + 8 * v15) = v8;
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v21[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_1001C65AC();
  v18 = *a3;
  v19 = sub_1000AABA0(v7);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v26._object = 0x80000001001F47E0;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10009E268(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(18);

  sub_100004B44();
  v11[8] = 0xD000000000000013;
  v12 = v5;
  String.append(_:)(*(v2 + 24));
  v6._countAndFlagsBits = 59;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v12;
  v8 = *(v2 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[2] = v8;
  v11[3] = 0xD000000000000013;
  v11[4] = v7;
  v11[5] = _swiftEmptyArrayStorage;
  v11[6] = sub_1000A08F4;
  v11[7] = v9;

  sub_100014A20(sub_10001D7C8, v11);
}

uint64_t sub_10009E38C(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for ContentInfo();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003A420(&v11);
  if (!v2)
  {
    v8 = *(&v11 + 1);
    if (*(&v11 + 1) >> 60 != 15)
    {
      v9 = v11;
      sub_10003A638(6, &v11);
      if (v12)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v13, v7);
          a2(v7);
          sub_1000A0914(v7);
          sub_10003AE18(v9, v8);
          return 1;
        }

        sub_10003AE18(v9, v8);
      }

      else
      {
        sub_10003AE18(v9, v8);
        sub_100002C5C(&v11);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_10009E544(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(72);
  v5._countAndFlagsBits = 0x205443454C4553;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1000073D0();
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x204D4F524620;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v2 + 24));
  v8._countAndFlagsBits = sub_100002F28();
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v17 = sub_10000825C(v9, v10, v11, v12, v13, v14, v15, v16, v93, v102, v111, v2, 0);
  v25 = sub_1000119D4(v17, v18, v19, v20, v21, v22, v23, v24, v94, v103, v112, v120, v129);
  v33 = sub_10000825C(v25, v26, v27, v28, v29, v30, v31, v32, v95, v104, v113, v121, v130);
  v41 = sub_1000119D4(v33, v34, v35, v36, v37, v38, v39, v40, v96, v105, v114, v122, v131);
  v49 = sub_10000825C(v41, v42, v43, v44, v45, v46, v47, v48, v97, v106, v115, v123, v132);
  v57 = sub_1000119D4(v49, v50, v51, v52, v53, v54, v55, v56, v98, v107, v116, v124, v133);
  sub_10000825C(v57, v58, v59, v60, v61, v62, v63, v64, v99, v108, v117, v125, v134);
  v65._countAndFlagsBits = 0x3F20454B494C20;
  v65._object = 0xE700000000000000;
  String.append(_:)(v65);
  sub_10000B310(v66, v67, v68, v69, v70, v71, v72, v73, v100, 0xE000000000000000, v135, v126, v135, 0xE000000000000000);
  v75 = *v136;
  v74 = v138;

  v76._countAndFlagsBits = 9516;
  v76._object = 0xE200000000000000;
  String.append(_:)(v76);
  sub_10000B310(v77, v78, v79, v80, v81, v82, v83, v84, v101, v109, v118, v127, a1, a2);
  v85._countAndFlagsBits = 9516;
  v85._object = 0xE200000000000000;
  String.append(_:)(v85);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = v75;
  *(inited + 40) = v74;
  v87 = sub_10000827C(inited);
  *(v87 + 56) = a1;
  *(v87 + 64) = a2;
  *(v87 + 72) = v88;
  *(v87 + 80) = *v137;
  *(v87 + 88) = v139;
  *(v87 + 96) = v88;
  *(v87 + 104) = a1;
  *(v87 + 112) = a2;
  *(v87 + 120) = v88;
  sub_100004AA0();
  v89 = swift_allocObject();
  *(v89 + 16) = _swiftEmptyArrayStorage;
  v90 = *(v128 + 16);

  sub_10005AFD4(v119, v110, inited, sub_1000A08D4, v89);
  if (v140)
  {

    swift_setDeallocating();
    v91 = inited;
    sub_10001CE50();
  }

  else
  {

    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C();
    v91 = *(v89 + 16);
  }

  return v91;
}

uint64_t sub_10009E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_10001CCDC();

  sub_100004B44();
  v29 = v12;
  String.append(_:)(*(v5 + 24));
  v13._countAndFlagsBits = sub_100002F28();
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_100004FBC();
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 1059077408;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  if (a4)
  {

    v17._object = 0x80000001001F49B0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
    sub_1000D5584();
    inited = v18;
    *(v18 + 16) = 2;
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;
    *(v18 + 72) = 3;
  }

  else
  {
  }

  if (a5 != 4)
  {
    sub_100023C7C(v18);
    v19 = *(inited + 16);
    if (v19 >= *(inited + 24) >> 1)
    {
      sub_1000D5584();
      inited = v28;
    }

    *(inited + 16) = v19 + 1;
    v20 = inited + 24 * v19;
    *(v20 + 32) = a5;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
  }

  v21._countAndFlagsBits = 59;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  sub_100004AA0();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyArrayStorage;
  v23 = *(v5 + 16);
  __chkstk_darwin(v22);
  sub_100006764();
  *(v24 - 32) = v29;
  *(v24 - 24) = inited;
  *(v24 - 16) = sub_1000A08B4;
  *(v24 - 8) = v25;
  sub_100014A20(sub_10001D7C8, v26);

  if (v6)
  {
  }

  else
  {

    sub_10000602C();
    v23 = *(v22 + 16);
  }

  return v23;
}

uint64_t sub_10009EACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003A420(&v15);
  if (!v2)
  {
    v9 = *(&v15 + 1);
    if (*(&v15 + 1) >> 60 != 15)
    {
      v10 = v15;
      sub_10003A638(6, &v15);
      if (v16)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v14[1], v8);
          swift_beginAccess();
          sub_1000EF570();
          v11 = *(*(a2 + 16) + 16);
          sub_1000EF674(v11);
          v12 = *(a2 + 16);
          *(v12 + 16) = v11 + 1;
          sub_1000A0850(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
          *(a2 + 16) = v12;
          swift_endAccess();
          sub_10003AE18(v10, v9);
          return 0;
        }

        sub_10003AE18(v10, v9);
      }

      else
      {
        sub_10003AE18(v10, v9);
        sub_100002C5C(&v15);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_10009ECF4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  sub_10000AB30();
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  v16 = v6;
  String.append(_:)(*(v1 + 24));
  v7._countAndFlagsBits = 0x455245485720;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = (a1 + 40);
  while (v9 != v8)
  {
    v12 = *(v10 - 1);
    v11 = *v10;

    sub_10009EE9C(v8, v12, v11);

    v10 += 2;
    ++v8;
  }

  sub_100004AA0();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = *(v4 + 16);
  sub_10005AFD4(0xD000000000000013, v16, _swiftEmptyArrayStorage, sub_1000A0A74, v13);
  if (!v3)
  {
    sub_10000602C();
    v14 = *(v13 + 16);
  }

  return v14;
}

void sub_10009EE9C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >= 1)
  {
    v5._countAndFlagsBits = 0x20444E4120;
    v5._object = 0xE500000000000000;
    String.append(_:)(v5);
  }

  v6._object = 0x80000001001F4960;
  v6._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 9516;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 9516;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = 11301;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 3;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  *(inited + 72) = 3;
  *(inited + 80) = 11301;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = 3;
  *(inited + 104) = a2;
  *(inited + 112) = a3;
  *(inited + 120) = 3;

  sub_10010F548(inited);
}

uint64_t sub_10009EFE8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ContentInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *sub_100003CA8(a1, a1[3]);
  sub_1000073D0();
  sub_10003A420(&v22);
  if (!v2)
  {
    if (*(&v22 + 1) >> 60 != 15)
    {
      sub_100004FD0();
      sub_10003A638(6, v11);
      if (v23)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v21[1], v9);
          swift_beginAccess();
          sub_1000EF570();
          v12 = *(*(a2 + 16) + 16);
          sub_1000EF674(v12);
          v13 = *(a2 + 16);
          *(v13 + 16) = v12 + 1;
          sub_1000A0850(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12);
          *(a2 + 16) = v13;
          swift_endAccess();
          v14 = sub_100004FD0();
          sub_10003AE18(v14, v15);
          return 1;
        }

        v18 = sub_100004FD0();
        sub_10003AE18(v18, v19);
      }

      else
      {
        v16 = sub_100004FD0();
        sub_10003AE18(v16, v17);
        sub_100002C5C(&v22);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_10009F208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  sub_10001CCDC();

  sub_100004B44();
  v28 = v10;
  String.append(_:)(*(v4 + 24));
  v11._countAndFlagsBits = sub_100002F28();
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_100006A5C();
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1059077408;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);

  if (v9 != 4)
  {
    sub_100023C7C(v15);
    sub_1000D5584();
    inited = v16;
    *(v16 + 16) = 2;
    *(v16 + 56) = a3;
    *(v16 + 64) = 0;
    *(v16 + 72) = 1;
  }

  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x80000001001F4940;
  String.append(_:)(v17);
  sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = type metadata accessor for ContentInfo();
  v22 = sub_10000A7C0(v20, 1, 1, v21);
  v23 = *(v4 + 16);
  __chkstk_darwin(v22);
  sub_100006764();
  *(v24 - 32) = v28;
  *(v24 - 24) = inited;
  *(v24 - 16) = sub_1000A06FC;
  *(v24 - 8) = v18;
  sub_100014A20(sub_10001D7C8, v25);

  if (v5)
  {
  }

  else
  {

    sub_10000602C();
    sub_1000A071C(v20, a4);
  }
}

uint64_t sub_10009F470()
{
  v1 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v10 - v3);
  v5 = swift_projectBox();
  sub_10003A420(&v10);
  if (!v0)
  {
    v6 = *(&v10 + 1);
    if (*(&v10 + 1) >> 60 != 15)
    {
      v7 = v10;
      sub_10003A638(6, &v10);
      if (v11)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v12, v4);
          sub_10003AE18(v7, v6);
          v8 = type metadata accessor for ContentInfo();
          sub_10000A7C0(v4, 0, 1, v8);
          swift_beginAccess();
          sub_1000A07E0(v4, v5);
          return 0;
        }

        sub_10003AE18(v7, v6);
      }

      else
      {
        sub_10003AE18(v7, v6);
        sub_100002C5C(&v10);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_10009F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  _StringGuts.grow(_:)(40);

  strcpy(v22, "DELETE FROM ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  String.append(_:)(*(v4 + 24));
  v10._countAndFlagsBits = sub_100002F28();
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_100004FBC();
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_100005F08() | 0x444E412000000000;
  v12._object = 0xE900000000000020;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100006750();
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x3B3F203D2120;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15 = v22[0];
  v16 = v22[1];
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  v17._rawValue = swift_initStackObject();
  *(v17._rawValue + 1) = xmmword_1001E5F70;
  *(v17._rawValue + 4) = a1;
  *(v17._rawValue + 5) = a2;
  v18 = sub_10000827C(v17._rawValue);
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = v19;

  v20._countAndFlagsBits = v15;
  v20._object = v16;
  SQLDatabase.execute(sql:parameters:)(v20, v17);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_10009F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v25 = *(v4 + 16);

    _StringGuts.grow(_:)(39);

    strcpy(v26, "DELETE FROM ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    String.append(_:)(*(v4 + 24));
    v9._countAndFlagsBits = 0x20455245485720;
    v9._object = 0xE700000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100004FBC();
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = sub_100005F08() | 0x444E412000000000;
    v11._object = 0xE900000000000020;
    String.append(_:)(v11);
    v12._countAndFlagsBits = sub_100006750();
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100005F08() & 0xFFFF0000FFFFFFFFLL | 0x3B00000000;
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    v14 = v26[0];
    v15 = v26[1];
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v16._rawValue = swift_initStackObject();
    *(v16._rawValue + 1) = xmmword_1001E5F70;
    *(v16._rawValue + 4) = a1;
    *(v16._rawValue + 5) = a2;
    v17 = sub_10000827C(v16._rawValue);
    *(v17 + 56) = a3;
    *(v17 + 64) = a4;
    *(v17 + 72) = v18;
  }

  else
  {
    v20 = *(v4 + 16);
    _StringGuts.grow(_:)(28);

    strcpy(v26, "DELETE FROM ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    String.append(_:)(*(v4 + 24));
    v21._countAndFlagsBits = 0x20455245485720;
    v21._object = 0xE700000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = sub_100004FBC();
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_100005F08() & 0xFFFF0000FFFFFFFFLL | 0x3B00000000;
    v23._object = 0xE500000000000000;
    String.append(_:)(v23);
    v14 = v26[0];
    v15 = v26[1];
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v16._rawValue = swift_initStackObject();
    *(v16._rawValue + 1) = xmmword_1001E61B0;
    *(v16._rawValue + 4) = a1;
    *(v16._rawValue + 5) = a2;
    sub_10000827C(v16._rawValue);
  }

  v19._countAndFlagsBits = v14;
  v19._object = v15;
  SQLDatabase.execute(sql:parameters:)(v19, v16);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_10009FA1C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_1000B1DA8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v42];

  v7 = v42;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v11._object = 0x80000001001F48E0;
    v11._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v11);
    String.append(_:)(*(v2 + 24));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100004FBC();
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    sub_100007908();
    v14._countAndFlagsBits = sub_100006750();
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    sub_100007908();
    v15._countAndFlagsBits = sub_1000073D0();
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    sub_100007908();
    v16._countAndFlagsBits = sub_100006A5C();
    String.append(_:)(v16);
    sub_100007908();
    v17._countAndFlagsBits = sub_100004B34();
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    sub_100007908();
    v18._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v18);
    sub_100007908();
    v19._countAndFlagsBits = sub_100007164();
    v19._object = 0xE900000000000073;
    String.append(_:)(v19);
    sub_100007908();
    v20._countAndFlagsBits = 0x617461646174656DLL;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v21._object = 0x80000001001F4900;
    String.append(_:)(v21);
    v40 = v43;
    v41 = v42;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E7880;
    v23 = *(a1 + 24);
    *(inited + 32) = *(a1 + 16);
    *(inited + 40) = v23;
    *(inited + 48) = 3;
    v24 = type metadata accessor for ContentInfo();
    v25 = (a1 + v24[12]);
    v26 = v25[1];
    *(inited + 56) = *v25;
    *(inited + 64) = v26;
    *(inited + 72) = 3;
    *(inited + 80) = v8;
    *(inited + 88) = v10;
    *(inited + 96) = 0;
    v27 = (a1 + v24[11]);
    v28 = v27[1];
    *(inited + 104) = *v27;
    *(inited + 112) = v28;
    *(inited + 120) = 3;
    *(inited + 128) = *(a1 + v24[10]);
    *(inited + 136) = 0;
    *(inited + 144) = 1;

    sub_10003A5E0(v8, v10);

    static Date.timeIntervalSinceReferenceDate.getter();
    *(inited + 152) = v29;
    *(inited + 160) = 0;
    *(inited + 168) = 2;
    v42 = *a1;

    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v30 = sub_100004870();
    v32 = v31;

    *(inited + 176) = v30;
    *(inited + 184) = v32;
    *(inited + 192) = 3;
    v42 = *(a1 + 8);

    v33 = sub_100004870();
    v35 = v34;

    *(inited + 200) = v33;
    *(inited + 208) = v35;
    v36._countAndFlagsBits = v41;
    *(inited + 216) = 3;
    v37 = *(v2 + 16);
    v36._object = v40;
    SQLDatabase.execute(sql:parameters:)(v36, inited);
    swift_setDeallocating();
    sub_10001CE50();

    return sub_1000253FC(v8, v10);
  }

  else
  {
    v39 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10009FDF8()
{
  sub_1000A95D8();

  return swift_deallocClassInstance();
}

uint64_t sub_10009FE4C(uint64_t a1, void *a2)
{
  sub_10000AB30();
  _StringGuts.grow(_:)(98);
  sub_100005734();
  v3._countAndFlagsBits = sub_1000062C4();
  v3._object = a2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = sub_100007ED0();
  sub_10000A324(v5);
  v6._countAndFlagsBits = sub_1000062C4();
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_10000A324(v7);
  v8._countAndFlagsBits = sub_1000073D0();
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  sub_100012B88();
  v9._countAndFlagsBits = sub_100006A5C();
  String.append(_:)(v9);
  sub_10000B188();
  v10._countAndFlagsBits = sub_100004B34();
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  sub_10000B188();
  v11._countAndFlagsBits = sub_100002F08();
  String.append(_:)(v11);
  sub_10000A954(" REAL, PRIMARY KEY (");
  v12._countAndFlagsBits = sub_100019B74();
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_1000062C4();
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10537;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  SQLDatabase.execute(sql:parameters:)(v17, &_swiftEmptyArrayStorage);
}

uint64_t sub_10009FFB8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(24);

  sub_100004B44();
  v25 = v3;
  v4._countAndFlagsBits = sub_1000062C4();
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 59;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = v25;
  SQLDatabase.execute(sql:parameters:)(v6, &_swiftEmptyArrayStorage);

  if (!v8)
  {
    _StringGuts.grow(_:)(95);
    sub_100005734();
    v9._countAndFlagsBits = sub_1000062C4();
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 10272;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_100007ED0();
    sub_10000A324(v11);
    v12._countAndFlagsBits = sub_1000062C4();
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    sub_10000A324(v13);
    v14._countAndFlagsBits = sub_1000073D0();
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
    sub_100012B88();
    v15._countAndFlagsBits = sub_100006A5C();
    String.append(_:)(v15);
    sub_10000A324(v16);
    v17._countAndFlagsBits = sub_100004B34();
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x52454745544E4920;
    v18._object = 0xEA0000000000202CLL;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v19);
    sub_10000A954(" REAL, PRIMARY KEY (");
    v20._countAndFlagsBits = sub_100019B74();
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = sub_1000062C4();
    v22._object = 0xE700000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 10537;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    SQLDatabase.execute(sql:parameters:)(v24, &_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000A01BC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(27);

  strcpy(&v17, "ALTER TABLE ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v4._countAndFlagsBits = sub_100019B74();
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x2044444120;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1000062C4();
  v6._object = 0xE900000000000073;
  String.append(_:)(v6);
  sub_100005C08();
  SQLDatabase.execute(sql:parameters:)(v17, &_swiftEmptyArrayStorage);
  if (v7)
  {
  }

  sub_10000AB30();
  _StringGuts.grow(_:)(27);

  strcpy(&v17, "ALTER TABLE ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v8._countAndFlagsBits = sub_100019B74();
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x2044444120;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x617461646174656DLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  sub_100005C08();
  SQLDatabase.execute(sql:parameters:)(v17, &_swiftEmptyArrayStorage);
  v12 = v11;
  if (v11)
  {

    v12 = 0;
  }

  v13 = sub_100007164();
  result = sub_1000A040C(v13, 0xE900000000000073, a1, a2);
  if (!v12)
  {
    v15 = result;
    result = sub_1000A040C(0x617461646174656DLL, 0xE800000000000000, a1, a2);
    if ((v15 & result & 1) == 0)
    {
      sub_1000A0624();
      swift_allocError();
      *v16 = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A040C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  LOBYTE(v6) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v12._object = 0x80000001001F48A0;
  v12._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4552454857202927;
  v14._object = 0xEF273D656D616E20;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 15143;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v19 = v4;
  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = &_swiftEmptyArrayStorage;
  v23 = sub_1000A0678;
  v24 = v11;
  sub_100014A20(sub_100014F50, &v18);
  if (v5)
  {
  }

  else
  {

    swift_beginAccess();
    v6 = *(v11 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1000A05B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ABCC(0);
  if (!v2)
  {
    v6 = (v4 > 0) & ~v5;
    swift_beginAccess();
    *(a2 + 16) = v6;
  }

  return 1;
}

unint64_t sub_1000A0624()
{
  result = qword_10026A388;
  if (!qword_10026A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A388);
  }

  return result;
}

unint64_t sub_1000A0698()
{
  result = qword_100270BB0;
  if (!qword_100270BB0)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270BB0);
  }

  return result;
}

uint64_t sub_1000A071C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A078C()
{
  result = qword_10026A390;
  if (!qword_10026A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A390);
  }

  return result;
}

uint64_t sub_1000A07E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0914(uint64_t a1)
{
  v2 = type metadata accessor for ContentInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppContentTable.ContentError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000A0A20()
{
  result = qword_10026A398;
  if (!qword_10026A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A398);
  }

  return result;
}

BOOL sub_1000A0AB0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0A9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A0AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1D84();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000A0B44(uint64_t a1)
{
  v2 = sub_1000A1D30();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A0B80(uint64_t a1)
{
  v2 = sub_1000A1D30();
  v3 = sub_1000A1D84();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

void *sub_1000A0BDC()
{
  v1 = v0[2];
  swift_retain_n();
  sub_10001C50C();

  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[4];

  v5 = v0[5];

  v6 = v0[6];

  v7 = v0[7];

  return v0;
}

uint64_t sub_1000A0C6C()
{
  sub_1000A0BDC();

  return swift_deallocClassInstance();
}

void *sub_1000A0CA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for AppEventTable();
    v1 = sub_100004B50();
    v1[2] = v2;
    v1[3] = 0xD000000000000013;
    v1[4] = 0x80000001001F4B40;
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1000A0D24()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for AppEventTable();
    v1 = sub_100004B50();
    v1[2] = v2;
    v1[3] = 0x676F6C6B636162;
    v1[4] = 0xE700000000000000;
    *(v0 + 32) = v1;
  }

  return v1;
}

void *sub_1000A0DA4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for AppContentTable();
    v1 = sub_100004B50();
    v1[2] = v2;
    v1[3] = 0x746E65746E6F63;
    v1[4] = 0xE700000000000000;
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_1000A0E24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v12 = a4;
  v6 = *(v5 + 16);
  v8[3] = a1;
  v9 = a5;
  v10 = a2;
  v11 = a3 & 1;

  sub_10001A648(v7, v6, sub_1000A1BD8, v8);
}

uint64_t sub_1000A0E88(uint64_t a1, uint64_t *a2, unsigned __int8 a3, Swift::Int a4, char a5)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  v42 = a3;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v37 = ((*(v10 + 80) + 32) & ~*(v10 + 80)) + 2 * *(v10 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v36 = type metadata accessor for AppDatabase();
  v44 = v36;
  *&v43 = a1;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v43);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001F4C10;
  v13._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v15 = *a2;
  v14 = a2[1];
  v44 = &type metadata for String;
  *&v43 = v15;
  *(&v43 + 1) = v14;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v43, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0x54746E657665203BLL;
  v16._object = 0xED0000203A657079;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v18 = a2[5];
  v17 = a2[6];
  v44 = &type metadata for String;
  *&v43 = v18;
  *(&v43 + 1) = v17;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v43, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.info.getter();
  sub_1000036B0(v20);

  v21 = sub_1000A589C();
  v22 = a1;
  sub_100051540();
  sub_1000A6F08(a3, &v43);

  if (!v41)
  {
    if (v44)
    {
      result = swift_dynamicCast();
      if (result)
      {
        v24 = v45;
        goto LABEL_11;
      }
    }

    else
    {
      result = sub_10000A064(&v43, &qword_10026D350, &qword_1001E6050);
    }

    v24 = 0;
LABEL_11:
    v25 = __OFADD__(v24, v21);
    v26 = v24 + v21;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      if ((a5 & 1) != 0 || v26 <= a4)
      {
LABEL_19:
        sub_1000A6098(a2);
        v32 = *(v22 + 48);
        v44 = &type metadata for Int;
        *&v43 = v26;

        sub_1000A6E98(&v43, v42);

        sub_10000A064(&v43, &qword_10026D350, &qword_1001E6050);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v44 = v36;
        *&v43 = v22;

        v33 = AMSLogKey();
        if (v33)
        {
          v34 = v33;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v43);
        LogInterpolation.init(stringLiteral:)();
        v35 = static os_log_type_t.info.getter();
        sub_1000036B0(v35);
      }

      v40 = v26;
      if (!__OFSUB__(v26, a4))
      {
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v44 = v36;
        *&v43 = a1;

        v27 = AMSLogKey();
        if (v27)
        {
          v28 = v27;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v43);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._countAndFlagsBits = 0x676E6970706F7244;
        v29._object = 0xE900000000000020;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
        v44 = &type metadata for Int;
        *&v43 = v26 - a4;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(&v43, &qword_10026D350, &qword_1001E6050);
        v30._countAndFlagsBits = 0x2973286574796220;
        v30._object = 0xE800000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
        LogInterpolation.init(stringInterpolation:)();
        v31 = static os_log_type_t.default.getter();
        sub_1000036B0(v31);

        result = sub_1000A5CF8(v26 - a4);
        v22 = a1;
        v26 -= result;
        if (!__OFSUB__(v40, result))
        {
          goto LABEL_19;
        }

LABEL_25:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000A14DC()
{
  v1 = type metadata accessor for Date();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v35 - v7);
  v9 = type metadata accessor for ScheduleInfo(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001ADD4();
  if (!v0)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_10001ADD4();
    v19 = v18;
    v38 = v17;
    sub_10003A420(v41);
    v36 = *&v41[0];
    v37 = v19;
    v20 = *(&v41[0] + 1);
    v21 = sub_10003A400();
    v35 = v20;
    if (v22)
    {
      v21 = -1;
    }

    v24 = sub_1000521C8(v21);
    if (!v37)
    {
      sub_10003AE18(v36, v35);
      goto LABEL_3;
    }

    v25 = v24;
    if (v16)
    {
      v26._countAndFlagsBits = v15;
    }

    else
    {
      v26._countAndFlagsBits = 0;
    }

    if (v16)
    {
      v26._object = v16;
    }

    else
    {
      v26._object = 0xE000000000000000;
    }

    v27 = sub_1000A1A78(v26);
    v28 = v36;
    if (v27 == 3)
    {
      v29 = v36;
      v30 = v35;
LABEL_16:
      sub_10003AE18(v29, v30);
LABEL_3:

      return 1;
    }

    v31 = v35;
    if (v35 >> 60 == 15)
    {
      goto LABEL_3;
    }

    if (v25 == 7)
    {
      v29 = v36;
      v30 = v35;
      goto LABEL_16;
    }

    v32 = v27;
    sub_10003A638(v25, &v39);
    if (!v40)
    {
      sub_10003AE18(v28, v31);

      sub_10000A064(&v39, &qword_10026D350, &qword_1001E6050);
      return 1;
    }

    sub_100002C4C(&v39, v41);
    if (v32)
    {
      if (v32 == 1)
      {

        type metadata accessor for AppDatabase();
        sub_10001D804(2);
        sub_100011BAC(v41, &v39);
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100002C00(v41);
          sub_10003AE18(v36, v31);

          return 1;
        }

        v34 = v42;
        Date.init()();
        sub_100041D4C(v34, v4, v8);
        sub_10000A7C0(v8, 0, 1, v9);
        sub_1000A1B18(v8, v12);
        sub_100041404();
        sub_1000A9108(v12);
        sub_10003AE18(v36, v35);

        sub_1000A1B7C(v12);
        goto LABEL_31;
      }

      type metadata accessor for AppDatabase();
      v33 = 2;
    }

    else
    {
      type metadata accessor for AppDatabase();
      v33 = 1;
    }

    sub_10001D804(v33);
    sub_100051540();
    sub_100011BAC(v41, &v39);
    sub_1000526FC(&v39, v38, v37);

    sub_10003AE18(v28, v31);

    sub_10000A064(&v39, &qword_10026D350, &qword_1001E6050);
LABEL_31:
    sub_100002C00(v41);
  }

  return 1;
}

unint64_t sub_1000A1A78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244840, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A1AC4()
{
  result = qword_10026A518;
  if (!qword_10026A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A518);
  }

  return result;
}

uint64_t sub_1000A1B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1B7C(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppDatabase.DatabaseError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000A1CB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1000A1CDC()
{
  result = qword_10026A5B8;
  if (!qword_10026A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5B8);
  }

  return result;
}

unint64_t sub_1000A1D30()
{
  result = qword_10026A5C0;
  if (!qword_10026A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5C0);
  }

  return result;
}

unint64_t sub_1000A1D84()
{
  result = qword_10026A5C8;
  if (!qword_10026A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5C8);
  }

  return result;
}

uint64_t sub_1000A1DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456465776F6C6C61 && a2 == 0xED000073746E6576;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676F6C6B636162 && a2 == 0xEF73746C75616665;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001001F4D20 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001001F4D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
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

unint64_t sub_1000A1F58(char a1)
{
  result = 0x456465776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0x44676F6C6B636162;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A2000(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1001C48BC();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v8 == 2 || ((v8 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v12 = *(a2 + 24);
  if (a1[3])
  {
    if ((a2[3] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  result = 0;
  if ((a2[3] & 1) == 0 && a1[2] == a2[2])
  {
LABEL_4:
    v9 = a1[5];
    v10 = a2[5];
    if (v9)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = a1[4] == a2[4] && v9 == v10;
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    v13 = a1[6];
    v14 = a2[6];
    if (v13)
    {
      if (v14 && (sub_1001C3F8C(v13, v14) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000A20F4(void *a1)
{
  v4 = v1;
  v6 = sub_10007B9A4(&qword_10026A720, &unk_1001E7CB0);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_100004B68();
  v12 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_1000A4374();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v4;
  sub_10007B9A4(&qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A4470(&qword_10026A728, sub_1000A44E8);
  sub_100007944();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = *(v4 + 1);
    v19 = *(v4 + 24);
    sub_1000A453C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v4[4];
    v14 = v4[5];
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v4[6];
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A4590(&qword_10026A740);
    sub_100007944();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1000A2330()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026A6E8, &qword_1001E7C98);
  sub_100002CC4(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000A4374();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    sub_10007B9A4(&qword_10026A6F8, &unk_1001E7CA0);
    sub_1000A4470(&qword_10026A700, sub_1000A43C8);
    sub_10000BD74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000A441C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v18;
    v17 = v18;
    LOBYTE(v18) = 2;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v15 = v10;
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A4590(&qword_10026A718);
    sub_10000BD74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = sub_1000073F4();
    v14(v13);
    sub_100002C00(v2);
    *v4 = v17;
    *(v4 + 8) = v16;
    *(v4 + 16) = v19;
    *(v4 + 24) = v20;
    *(v4 + 32) = v15;
    *(v4 + 40) = v12;
    *(v4 + 48) = v18;
  }

  sub_100005B78();
}

uint64_t sub_1000A2614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A1DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A263C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A1F50();
  *a1 = result;
  return result;
}

uint64_t sub_1000A2664(uint64_t a1)
{
  v2 = sub_1000A4374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A26A0(uint64_t a1)
{
  v2 = sub_1000A4374();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A26DC@<D0>(uint64_t a1@<X8>)
{
  sub_1000A2330();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1000A2748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696D694C657A6973 && a2 == 0xE900000000000074)
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

uint64_t sub_1000A2818(char a1)
{
  if (a1)
  {
    return 0x696D694C657A6973;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

BOOL sub_1000A2854(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

void sub_1000A2884()
{
  sub_100007E34();
  v3 = v2;
  v4 = sub_10007B9A4(&qword_10026A7C0, &qword_1001E7F60);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100006264();
  v10 = v3[4];
  sub_100003CA8(v3, v3[3]);
  sub_1000A4AA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100023CC0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005B78();
}

uint64_t sub_1000A29D0(uint64_t *a1)
{
  v4 = sub_10007B9A4(&qword_10026A7A0, &qword_1001E7F50);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100006264();
  v10 = a1[3];
  sub_100003CA8(a1, v10);
  sub_1000A4AA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v10) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100023CC0();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v2, v4);
  }

  sub_100002C00(a1);
  return v10 & 1;
}

uint64_t sub_1000A2B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A2B90(uint64_t a1)
{
  v2 = sub_1000A4AA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2BCC(uint64_t a1)
{
  v2 = sub_1000A4AA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A2C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000A29D0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

void sub_1000A2C44()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1000A2884();
}

uint64_t sub_1000A2C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655273776F6C6C61 && a2 == 0xEE0065736E6F7073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
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

uint64_t sub_1000A2DA8(char a1)
{
  if (!a1)
  {
    return 0x655273776F6C6C61;
  }

  if (a1 == 1)
  {
    return 0x6E656E6F706D6F63;
  }

  return 0x7265746C6966;
}

void sub_1000A2E0C(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  if (((a1 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if ((a7 & 1) == 0)
      {
        return;
      }
    }

    else if ((a7 & 1) != 0 || a2 != a6)
    {
      return;
    }

    sub_1001C4B20();
  }
}

void sub_1000A2E40()
{
  sub_100007E34();
  v3 = v2;
  v4 = sub_10007B9A4(&qword_10026A7B0, &qword_1001E7F58);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100004B68();
  v10 = v3[4];
  sub_100003CA8(v3, v3[3]);
  sub_1000A4A54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100023CC0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
    sub_1000A4AFC(&qword_10026A7B8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005B78();
}

void sub_1000A300C()
{
  sub_100007E34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026A780, &unk_1001E7F40);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  sub_100006264();
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1000A4A54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_100023CC0();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
  sub_1000A4AFC(&qword_10026A798);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  sub_100002C00(v2);
  sub_100005B78();
}

uint64_t sub_1000A3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A3240(uint64_t a1)
{
  v2 = sub_1000A4A54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A327C(uint64_t a1)
{
  v2 = sub_1000A4A54();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000A32B8(uint64_t a1@<X8>)
{
  sub_1000A300C();
  if (!v1)
  {
    *a1 = v3 & 1;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }
}

void sub_1000A32F8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = *(v0 + 3);
  sub_1000A2E40();
}

uint64_t sub_1000A335C(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v16 = *a1;
  v15 = *(a1 + 2);
  v14 = a1[6];
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = *(a1 + 1);
  *(v7 + 24) = *a1;
  *(v7 + 40) = v8;
  *(v7 + 56) = *(a1 + 2);
  *(v7 + 72) = a1[6];
  *(v7 + 80) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000A46A4;
  *(v9 + 24) = v7;
  aBlock[4] = sub_1000A46B4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012764;
  aBlock[3] = &unk_100247570;
  v10 = _Block_copy(aBlock);

  sub_1000A46BC(&v16, v12, &qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A46BC(&v15, v12, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000A46BC(&v14, v12, &qword_10026A758, &qword_1001EBE80);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3544(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3B88();
  sub_1000A3E48();
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v14 = *a2;
  v13 = *(a2 + 2);
  v12 = a2[6];
  sub_1000A46BC(&v14, v11, &qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A46BC(&v13, v11, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000A46BC(&v12, v11, &qword_10026A758, &qword_1001EBE80);
  v9 = *(a1 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *(a1 + 24);
  sub_1000AC840();
  *(a1 + 24) = v11[0];
  return swift_endAccess();
}

void sub_1000A36EC()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100004B68();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v25 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 2 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v28 = type metadata accessor for AppDefaultsProvider();
  v26 = v0;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v26);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001F4D00;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = type metadata accessor for URL();
  v28 = v11;
  sub_100017E64(&v26);
  sub_1000047A4(v11);
  (*(v12 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  v13 = sub_100009FB0(&v26, &qword_10026D350, &qword_1001E6050);
  sub_100004B74(v13);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14);

  v15 = Data.init(contentsOf:options:)();
  v17 = v16;
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A4650();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000253FC(v15, v17);

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  *v2 = v26;
  *(v2 + 8) = v21;
  *(v2 + 24) = v22;
  *(v2 + 32) = v23;
  *(v2 + 48) = v24;
  sub_100005F14();
}

void sub_1000A3B88()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v30[1] = v4;
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = type metadata accessor for URL();
  v12 = sub_100002CC4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v30 - v21;
  __chkstk_darwin(v20);
  v24 = v30 - v23;
  sub_1000A46BC(v1 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL, v10, &unk_10026FEE0, &unk_1001E67C0);
  if (sub_100009F34(v10, 1, v11) == 1)
  {
    sub_100009FB0(v10, &unk_10026FEE0, &unk_1001E67C0);
    sub_10001E78C(v3);
    v25 = *(v1 + 32);
    v26 = *(v1 + 40);
    URL.appendingPathComponent(_:)();
    (*(v14 + 8))(v19, v11);
  }

  else
  {
    (*(v14 + 32))(v24, v10, v11);
    URL.appendingPathComponent(_:)();

    v27 = *(v1 + 32);
    v28 = *(v1 + 40);
    URL.appendingPathExtension(_:)();
    v29 = *(v14 + 8);
    v29(v22, v11);
    v29(v24, v11);
  }

  sub_100005F14();
}

void sub_1000A3E48()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v22 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 2 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(&v24 + 1) = type metadata accessor for AppDefaultsProvider();
  *&v23 = v0;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v23);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001F4CE0;
  v10._countAndFlagsBits = 0xD000000000000018;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = type metadata accessor for URL();
  *(&v24 + 1) = v11;
  sub_100017E64(&v23);
  sub_1000047A4(v11);
  (*(v12 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  v13 = sub_100009FB0(&v23, &qword_10026D350, &qword_1001E6050);
  sub_100004B74(v13);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14);

  v15 = type metadata accessor for JSONEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v18 = v2[1];
  v23 = *v2;
  v24 = v18;
  v25 = v2[2];
  v26 = *(v2 + 6);
  sub_1000A45FC();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;

  Data.write(to:options:)();
  sub_1000253FC(v19, v21);
  sub_100005F14();
}

uint64_t sub_1000A4298()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_100009FB0(v0 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL, &unk_10026FEE0, &unk_1001E67C0);
  return v0;
}

uint64_t sub_1000A42E8()
{
  sub_1000A4298();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 sub_1000A4348(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000A4374()
{
  result = qword_10026A6F0;
  if (!qword_10026A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A6F0);
  }

  return result;
}

unint64_t sub_1000A43C8()
{
  result = qword_10026A708;
  if (!qword_10026A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A708);
  }

  return result;
}

unint64_t sub_1000A441C()
{
  result = qword_10026A710;
  if (!qword_10026A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A710);
  }

  return result;
}

uint64_t sub_1000A4470(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026A6F8, &unk_1001E7CA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A44E8()
{
  result = qword_10026A730;
  if (!qword_10026A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A730);
  }

  return result;
}

unint64_t sub_1000A453C()
{
  result = qword_10026A738;
  if (!qword_10026A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A738);
  }

  return result;
}

uint64_t sub_1000A4590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A45FC()
{
  result = qword_10026A748;
  if (!qword_10026A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A748);
  }

  return result;
}

unint64_t sub_1000A4650()
{
  result = qword_10026A750;
  if (!qword_10026A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A750);
  }

  return result;
}

uint64_t sub_1000A46BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10007B9A4(a3, a4);
  sub_1000047A4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

__n128 initializeBufferWithCopyOfBuffer for AppBacklogDefaults(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppBacklogDefaults(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppBacklogDefaults(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000A48B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A48BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000A48FC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1000A4950()
{
  result = qword_10026A768;
  if (!qword_10026A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A768);
  }

  return result;
}

unint64_t sub_1000A49A8()
{
  result = qword_10026A770;
  if (!qword_10026A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A770);
  }

  return result;
}

unint64_t sub_1000A4A00()
{
  result = qword_10026A778;
  if (!qword_10026A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A778);
  }

  return result;
}

unint64_t sub_1000A4A54()
{
  result = qword_10026A788;
  if (!qword_10026A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A788);
  }

  return result;
}

unint64_t sub_1000A4AA8()
{
  result = qword_10026A7A8;
  if (!qword_10026A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7A8);
  }

  return result;
}

uint64_t sub_1000A4AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026A790, &qword_1001ED5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppBacklogDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for AppEventInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000A4D24()
{
  result = qword_10026A7C8;
  if (!qword_10026A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7C8);
  }

  return result;
}

unint64_t sub_1000A4D7C()
{
  result = qword_10026A7D0;
  if (!qword_10026A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7D0);
  }

  return result;
}

unint64_t sub_1000A4DD4()
{
  result = qword_10026A7D8;
  if (!qword_10026A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7D8);
  }

  return result;
}

unint64_t sub_1000A4E2C()
{
  result = qword_10026A7E0;
  if (!qword_10026A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7E0);
  }

  return result;
}

unint64_t sub_1000A4E84()
{
  result = qword_10026A7E8;
  if (!qword_10026A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7E8);
  }

  return result;
}

unint64_t sub_1000A4EDC()
{
  result = qword_10026A7F0;
  if (!qword_10026A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7F0);
  }

  return result;
}

uint64_t sub_1000A4F34()
{
  sub_100006A94();
  _StringGuts.grow(_:)(80);
  v2._countAndFlagsBits = 0x5420455441455243;
  v2._object = 0xED000020454C4241;
  String.append(_:)(v2);
  v3._countAndFlagsBits = v1;
  v3._object = v0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 7368801;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x2C474E4952545320;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64616F6C796170;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x202C424F4C4220;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 1701669236;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C4C41455220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x696669746E656469;
  v11._object = 0xEA00000000007265;
  String.append(_:)(v11);
  v12._object = 0x80000001001F4D60;
  v12._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1701869940;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x29474E4952545320;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  SQLDatabase.execute(sql:parameters:)(v16, &_swiftEmptyArrayStorage);
}

uint64_t sub_1000A5100()
{
  sub_100006A94();
  _StringGuts.grow(_:)(36);

  strcpy(&v7, "ALTER TABLE ");
  BYTE5(v7._object) = 0;
  HIWORD(v7._object) = -5120;
  v2._countAndFlagsBits = v1;
  v2._object = v0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4C4F432044444120;
  v3._object = 0xEC000000204E4D55;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 1702521203;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x52454745544E4920;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  SQLDatabase.execute(sql:parameters:)(v7, &_swiftEmptyArrayStorage);
}

void sub_1000A51F8()
{
  v6 = *v0;
  v7 = v0[2];
  switch(*(v0 + 32))
  {
    case 1:
      v9 = v0[1];
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E61B0;
      *(v10 + 32) = v6;
      goto LABEL_20;
    case 2:
    case 3:
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001E61B0;
      *(v8 + 32) = v7;
      *(v8 + 40) = 0;
      *(v8 + 48) = 2;
      return;
    case 4:
      v9 = v0[3];
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E61B0;
      *(v10 + 32) = v7;
LABEL_20:
      *(v10 + 40) = v9;
      *(v10 + 48) = 3;

      return;
    case 5:
      sub_100005784();
      v38 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v4 == v2)
        {
          return;
        }

        if (v2 >= *(v3 + 16))
        {
          goto LABEL_38;
        }

        v39 = sub_100002F6C(v30, v31, v32, v33, v34, v35, v36, v37, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        v40 = sub_1000A51F8(v39);
        v41 = *(v40 + 16);
        if (__OFADD__(v38[2], v41))
        {
          goto LABEL_40;
        }

        v42 = v40;

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_100023CCC(), v25 ^ v26))
        {
          sub_10000A340();
          v1 = v44;
          v43 = v44[3] >> 1;
        }

        if (!*(v42 + 16))
        {

          if (!v41)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        if (v43 - v1[2] < v41)
        {
          goto LABEL_44;
        }

        sub_100007964();
        swift_arrayInitWithCopy();

        if (!v41)
        {
LABEL_36:
          sub_1000A57C0(&v53);

          v5 += 40;
          ++v2;
          v38 = v1;
          continue;
        }

        break;
      }

      v45 = v1[2];
      v26 = __OFADD__(v45, v41);
      v46 = v45 + v41;
      if (!v26)
      {
        v1[2] = v46;
        goto LABEL_36;
      }

      goto LABEL_46;
    default:
      sub_100005784();
      v19 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v4 == v2)
        {
          return;
        }

        if (v2 >= *(v3 + 16))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v20 = sub_100002F6C(v11, v12, v13, v14, v15, v16, v17, v18, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        v21 = sub_1000A51F8(v20);
        v22 = *(v21 + 16);
        if (__OFADD__(v19[2], v22))
        {
          goto LABEL_39;
        }

        v23 = v21;

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_100023CCC(), v25 ^ v26))
        {
          sub_10000A340();
          v1 = v27;
          v24 = v27[3] >> 1;
        }

        if (!*(v23 + 16))
        {

          if (!v22)
          {
            goto LABEL_18;
          }

          goto LABEL_41;
        }

        if (v24 - v1[2] < v22)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_100007964();
        swift_arrayInitWithCopy();

        if (!v22)
        {
LABEL_18:
          sub_1000A57C0(&v53);

          v5 += 40;
          ++v2;
          v19 = v1;
          continue;
        }

        break;
      }

      v28 = v1[2];
      v26 = __OFADD__(v28, v22);
      v29 = v28 + v22;
      if (!v26)
      {
        v1[2] = v29;
        goto LABEL_18;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return;
  }
}

uint64_t sub_1000A57FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
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

uint64_t sub_1000A583C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int sub_1000A589C()
{
  v1 = v0[1];
  if ((v1 & 0x1000000000000000) != 0)
  {
    v2 = String.UTF8View._foreignCount()();
  }

  else if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = Data.count.getter();
  v6 = v2 + v5;
  if (__OFADD__(v2, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v6, 8);
  v8 = v6 + 8;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = __OFADD__(v8, 8);
  v9 = v8 + 8;
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v9 + 8;
  if (__OFADD__(v9, 8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v0[6];
  if ((v10 & 0x1000000000000000) == 0)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v11 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

LABEL_20:
  v11 = String.UTF8View._foreignCount()();
LABEL_13:
  v7 = __OFADD__(v2, v11);
  result = v2 + v11;
  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5940@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 7368801;
  v25 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000503C();
  sub_10000E1E8(v26);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      v7 = v25;
      v23 = v24;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A064(v27, &qword_10026D350, &qword_1001E6050);
  }

  v23 = 0;
  v7 = 0xE000000000000000;
LABEL_6:
  v8 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v26[0] = 0;
  v10 = [v8 dataWithJSONObject:isa options:2 error:v26];

  v11 = v26[0];
  if (!v10)
  {
    v15 = v11;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v24 = 0x6D6954746E657665;
  v25 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_10000503C();
  sub_10000E1E8(v26);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      v14 = v24;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000A064(v27, &qword_10026D350, &qword_1001E6050);
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v14 = v17;
  (*(v3 + 8))(v6, v2);
LABEL_13:
  v24 = 0x707954746E657665;
  v25 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_10000503C();

  sub_10000E1E8(v26);
  if (!v28)
  {
    result = sub_10000A064(v27, &qword_10026D350, &qword_1001E6050);
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_18;
  }

  v18 = v24;
  v19 = v25;
LABEL_18:
  v20 = v22;
  *a1 = v23;
  a1[1] = v7;
  a1[2] = v20;
  a1[3] = v13;
  a1[4] = v14;
  a1[5] = v18;
  a1[6] = v19;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

uint64_t sub_1000A5CF8(uint64_t a1)
{
  v3 = v1;
  _StringGuts.grow(_:)(28);

  sub_100006AB4();
  v16 = v5;
  v17 = v6;
  String.append(_:)(*(v1 + 24));
  v7._countAndFlagsBits = sub_10000B740();
  v7._object = 0xEA00000000002059;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 1701669236;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  v10 = v16;
  v9 = v17;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(v1 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v11;
  v13[4] = a1;
  v15[2] = v12;
  v15[3] = v10;
  v15[4] = v9;
  v15[5] = &_swiftEmptyArrayStorage;
  v15[6] = sub_1000A6BB0;
  v15[7] = v13;

  sub_100014A20(sub_10001D7C8, v15);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    v12 = *(v11 + 16);
  }

  return v12;
}

uint64_t sub_1000A5E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10003A400();
  if (v4)
  {
    return v5;
  }

  if (v10)
  {
    return 1;
  }

  v12 = v9;
  v13 = sub_10003A400();
  v5 = 1;
  if (v14)
  {
    return v5;
  }

  v28 = v13;
  _StringGuts.grow(_:)(27);

  strcpy(v27, "DELETE FROM ");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  String.append(_:)(*(a2 + 24));
  v15._countAndFlagsBits = 0x20455245485720;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x696669746E656469;
  v16._object = 0xEA00000000007265;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 1059077408;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  v19 = v27[0];
  v18 = v27[1];
  v20 = *(a2 + 16);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = v12;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v22._countAndFlagsBits = v19;
  v22._object = v18;
  SQLDatabase.execute(sql:parameters:)(v22, inited);
  if (v23)
  {
    swift_setDeallocating();
    sub_10001CE50();

    return v5;
  }

  swift_setDeallocating();
  sub_10001CE50();
  result = swift_beginAccess();
  v24 = *(a3 + 16);
  v25 = __OFADD__(v24, v28);
  v26 = v24 + v28;
  if (!v25)
  {
    *(a3 + 16) = v26;
    return v26 < a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6098(void *a1)
{
  _StringGuts.grow(_:)(54);
  v3._countAndFlagsBits = 0x4920545245534E49;
  v3._object = 0xEC000000204F544ELL;
  String.append(_:)(v3);
  String.append(_:)(*(v1 + 24));
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 7368801;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  sub_1000062F0();
  v6._countAndFlagsBits = sub_100002F94();
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_1000062F0();
  v7._countAndFlagsBits = 1702521203;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  sub_1000062F0();
  v8._countAndFlagsBits = 1701669236;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  sub_1000062F0();
  v9._countAndFlagsBits = 1701869940;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._object = 0x80000001001F4DB0;
  v10._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v10);
  v11 = *(v1 + 16);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61C0;
  v13 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v13;
  *(inited + 48) = 3;
  v15 = a1[2];
  v14 = a1[3];
  *(inited + 56) = v15;
  *(inited + 64) = v14;
  *(inited + 72) = 0;

  sub_10003A5E0(v15, v14);
  *(inited + 80) = sub_1000A589C();
  *(inited + 88) = 0;
  *(inited + 96) = 1;
  *(inited + 120) = 2;
  v16 = a1[5];
  *(inited + 104) = a1[4];
  *(inited + 112) = 0;
  v17 = a1[6];
  *(inited + 128) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = 3;

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v18, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A6278()
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = v2 + 16;
  v4 = *(v0 + 16);
  _StringGuts.grow(_:)(16);

  sub_100006AB4();
  v8 = v5;
  v9 = v6;
  String.append(_:)(*(v0 + 24));
  sub_10005AFD4(v8, v9, _swiftEmptyArrayStorage, sub_1000A6B7C, v2);
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v3 = *(v2 + 16);
  }

  return v3;
}

uint64_t sub_1000A639C(void *a1, uint64_t a2)
{
  v5 = *sub_100003CA8(a1, a1[3]);
  v6 = sub_10001ADD4();
  if (!v2)
  {
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *sub_100003CA8(a1, a1[3]);
      sub_10003A420(__src);
      v11 = *(&__src[0] + 1);
      if (*(&__src[0] + 1) >> 60 != 15)
      {
        v12 = *&__src[0];
        v13 = *sub_100003CA8(a1, a1[3]);
        v14 = sub_100041D2C();
        if ((v15 & 1) == 0)
        {
          v16 = v14;
          v17 = *sub_100003CA8(a1, a1[3]);
          v18 = sub_10001ADD4();
          if (v19)
          {
            *&__src[0] = v9;
            *(&__src[0] + 1) = v8;
            *&__src[1] = v12;
            *(&__src[1] + 1) = v11;
            *&__src[2] = v16;
            *(&__src[2] + 1) = v18;
            *&__src[4] = 0;
            __src[3] = v19;
            swift_beginAccess();
            sub_1000A6B9C(v12, v11);
            sub_10009CFF8(__src, &v23);
            sub_1000EF588();
            v21 = *(*(a2 + 16) + 16);
            sub_1000EF68C(v21);
            v22 = *(a2 + 16);
            *(v22 + 16) = v21 + 1;
            memcpy((v22 + 72 * v21 + 32), __src, 0x48uLL);
            *(a2 + 16) = v22;
            swift_endAccess();
            sub_10003AE18(v12, v11);
            sub_10009D054(__src);
            return 1;
          }
        }

        sub_10003AE18(v12, v11);
      }
    }
  }

  return 1;
}

uint64_t sub_1000A6594(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  strcpy(v14, "DELETE FROM ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  String.append(_:)(*(v1 + 24));
  v3._countAndFlagsBits = 0x20455245485720;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_100002F94();
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3B3F203D20;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v7 = v14[0];
  v6 = v14[1];
  v8 = *(v1 + 16);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 48) = 0;
  sub_10003A5E0(v10, v11);
  v12._countAndFlagsBits = v7;
  v12._object = v6;
  SQLDatabase.execute(sql:parameters:)(v12, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A66D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(16);

  sub_100006AB4();
  *&v33 = v11;
  *(&v33 + 1) = v12;
  String.append(_:)(*(v5 + 24));
  v32 = v33;
  v13 = *(a1 + 32);
  if (v13 == 255)
  {
    v18 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = *(a1 + 16);
    v33 = *a1;
    v34 = v14;
    v35 = v13;
    v31._countAndFlagsBits = 0x20455245485720;
    v31._object = 0xE700000000000000;
    v15 = sub_1000A6B0C(a1, &v30);
    v16._countAndFlagsBits = sub_1000A5514(v15);
    String.append(_:)(v16);

    String.append(_:)(v31);

    sub_1000A51F8();
    v18 = v17;
    sub_10000A064(a1, &qword_10026A8C8, &qword_1001E8288);
  }

  v19._countAndFlagsBits = sub_10000B740();
  v19._object = 0xEE00656D69742059;
  String.append(_:)(v19);
  if ((a3 & 1) == 0)
  {
    v30._countAndFlagsBits = 0x2054494D494C20;
    v30._object = 0xE700000000000000;
    v31._countAndFlagsBits = a2;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    String.append(_:)(v30);
  }

  v21 = *(v5 + 16);
  v22 = v32;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v25[2] = v21;
  v26 = v22;
  v27 = v18;
  v28 = sub_1000A6AEC;
  v29 = __chkstk_darwin(v23);

  sub_100014A20(sub_100014F50, v25);
}

uint64_t sub_1000A6938(char a1, uint64_t (*a2)(void *))
{
  v5 = sub_10001ADD4();
  if (!v2)
  {
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      sub_10003A420(&v17);
      v10 = *(&v17 + 1);
      if (*(&v17 + 1) >> 60 != 15)
      {
        v11 = v17;
        v12 = sub_100041D2C();
        if ((v13 & 1) == 0)
        {
          v14 = v12;
          v15 = sub_10001ADD4();
          if (v16)
          {
            v18[0] = v8;
            v18[1] = v7;
            v18[2] = v11;
            v18[3] = v10;
            v18[4] = v14;
            v18[5] = v15;
            v18[7] = 0;
            v18[8] = 0;
            v18[6] = v16;
            sub_10003A5E0(v11, v10);
            a1 = a2(v18);
            sub_10009D054(v18);
            sub_10003AE18(v11, v10);
            return a1 & 1;
          }
        }

        sub_10003AE18(v11, v10);
      }
    }

    a1 = 1;
  }

  return a1 & 1;
}

uint64_t sub_1000A6B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A8C8, &qword_1001E8288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003A5E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000A6BDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000A6C1C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A6C80(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(86);
  v4._countAndFlagsBits = 0x5420455441455243;
  v4._object = 0xED000020454C4241;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6E69616D6F64;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x202C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100005058();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_100005798() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x202C424F4C4220;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100005798() | 0x7079546500000000;
  v13._object = 0xE900000000000065;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA0000000000202CLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x69646F4D7473616CLL;
  v15._object = 0xEC00000064656966;
  String.append(_:)(v15);
  v16._object = 0x80000001001F4860;
  v16._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_100005058();
  String.append(_:)(v17);
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E69616D6F64;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10537;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v21, &_swiftEmptyArrayStorage);
}

uint64_t sub_1000A6E98(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10000BDB0();
    if (v2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (v2)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0xEB00000000657A69;
    v7 = 0x53676F6C6B636162;
  }

  sub_1000526FC(a1, v7, v8);
}

uint64_t sub_1000A6F08@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x656D69547473616CLL;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001001F4E70;
    }

    else
    {
      v4 = 0xEC000000656E6F5ALL;
    }
  }

  else
  {
    v4 = 0xEB00000000657A69;
    v3 = 0x53676F6C6B636162;
  }

  sub_1000515B8(v3, v4, a2);
}

uint64_t sub_1000A6FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100051FD8(&v23);
  if (!v5)
  {
    if (*(&v23 + 1))
    {
      v25 = v23;
      v26 = v24[0];
      v27 = v24[1];
      sub_10004ED94(&v25, &v23, qword_10026A9D8, &unk_1001E8390);
      sub_10004ED94(&v25, v20, qword_10026A9D8, &unk_1001E8390);

      sub_100002C4C(&v21, &v22);
      swift_beginAccess();
      sub_100052CE8();
      swift_endAccess();
      sub_10000A064(&v25, qword_10026A9D8, &unk_1001E8390);
      sub_100002C00(v24);
    }

    else
    {
      sub_10000A064(&v23, &qword_10026A9D0, &qword_1001E8388);
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      v28 = qword_100287818;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v11 = *(type metadata accessor for LogInterpolation() - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v19 = *(v11 + 72);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(&v26 + 1) = type metadata accessor for AppKeyValueTable();
      *&v25 = a2;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v25);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15._object = 0x80000001001F4E30;
      v15._countAndFlagsBits = 0xD000000000000018;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
      *(&v26 + 1) = &type metadata for String;
      *&v25 = a4;
      *(&v25 + 1) = a5;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v25, &qword_10026D350, &qword_1001E6050);
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
      LogInterpolation.init(stringInterpolation:)();
      v17 = static os_log_type_t.error.getter();
      sub_1000036B0(v17);
    }
  }

  return 1;
}

uint64_t sub_1000A7348(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A73B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 253;
}

void sub_1000A74C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}