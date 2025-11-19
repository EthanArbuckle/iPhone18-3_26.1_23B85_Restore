uint64_t sub_10009A9A0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  if (v0)
  {
    v5 = sub_10009AFCC;
  }

  else
  {
    v5 = sub_10009AAA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10009AAA8()
{
  v67 = v0;
  v1 = *(v0 + 112);
  v2 = (v1 + 48);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = *(v2 - 2);
    v6 = *(v2 - 1);
    *(v0 + 128) = v6;
    *(v0 + 152) = *v2;
    if (v7 == v4 && v6 == v5)
    {
      v7 = v4;
LABEL_12:
      *(v0 + 136) = v7;

      v32 = static os_log_type_t.debug.getter();

      v33 = Logger.logObject.getter();

      if (os_log_type_enabled(v33, v32))
      {
        v34 = *(v0 + 56);
        v61 = *(v0 + 64);
        v35 = sub_10008E688();
        sub_10008E670();
        *v35 = 136446466;
        sub_10009F0A0();
        v36._countAndFlagsBits = v34;
        v36._object = v61;
        String.append(_:)(v36);
        sub_100098BDC();
        v45 = sub_100098BF8(v37, v38, v39, v40, v41, v42, v43, v44, v61, " subscription group ", v64, v65, v66);

        *(v35 + 4) = v45;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_100080210(0xD000000000000021, v63 | 0x8000000000000000, &v64);
        _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v35, 0x16u);
        sub_10008BF74();
        sub_100081C28();
        sub_10008BF3C();
      }

      v46 = swift_task_alloc();
      *(v0 + 144) = v46;
      *v46 = v0;
      v46[1] = sub_10009AE80;
      v69 = *(v0 + 64);
      sub_10008BE10();

      return sub_10009B98C(v47, v48, v49, v50, v51, v52, v53, v54);
    }

    v2 += 24;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_12;
    }
  }

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  sub_100093D20();
  _StringGuts.grow(_:)(73);
  v11._countAndFlagsBits = 0xD000000000000047;
  v11._object = 0x8000000100314CF0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v10;
  v12._object = v9;
  String.append(_:)(v12);
  static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  if (sub_10009F1F4())
  {
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = sub_10008E688();
    sub_10008E670();
    *v16 = 136446466;
    sub_10009F0A0();
    v17._countAndFlagsBits = v15;
    v17._object = v14;
    String.append(_:)(v17);
    sub_100098BDC();
    sub_100098BF8(v18, v19, v20, v21, v22, v23, v24, v25, v60, v62, v64, v65, v66);

    sub_10009F124();
    v26 = sub_10009F14C();
    v29 = sub_100080210(v26, v27, v28);

    *(v16 + 14) = v29;
    sub_10009F104(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_100081C28();
  }

  else
  {
  }

  v57 = *(v0 + 72);
  sub_10008B5E0();
  swift_allocError();
  *v58 = 10;
  swift_willThrow();

  sub_100098AC4();

  return v59();
}

uint64_t sub_10009AE80()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009AF64()
{
  sub_10008BE9C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  return v1(v3, v4, v2);
}

uint64_t sub_10009AFCC()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_10009B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_10009F0B8();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10009B05C(uint64_t a1)
{
  v52 = v1;
  sub_1001A82CC(a1);
  v1[7] = v2;
  if (!v2)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v18 = v1[4];
    v19 = type metadata accessor for SKLogger();
    sub_10007EDA4(v19, qword_1003F26C8);
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v20._object = 0x8000000100314970;
    v20._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v20);
    String.append(_:)(*(v18 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
    static os_log_type_t.error.getter();

    v21 = Logger.logObject.getter();

    if (sub_10009F1F4())
    {
      v23 = v1[5];
      v22 = v1[6];
      v24 = sub_10008E688();
      sub_10008E670();
      *v24 = 136446466;
      sub_10009F0F8();
      v49 = v25;
      v50 = v26;
      v51 = v27;
      v28._countAndFlagsBits = v23;
      v28._object = v22;
      String.append(_:)(v28);
      sub_10009F134();
      sub_100080210(v50, v51, &v49);

      sub_10009F124();
      v29 = sub_10009F14C();
      v32 = sub_100080210(v29, v30, v31);

      *(v24 + 14) = v32;
      sub_10009F104(&_mh_execute_header, v33, v34, "%{public}s%{public}s");
      sub_100098BC0();
      sub_10008BF3C();
      sub_100081C28();
    }

    else
    {
    }

    sub_100098AC4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v3 = v1[4];
  v4 = type metadata accessor for SKLogger();
  sub_10007EDA4(v4, qword_1003F26C8);
  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v5._countAndFlagsBits = 0xD000000000000039;
  v5._object = 0x80000001003149B0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10009F14C();
  String.append(_:)(v6);
  v7._countAndFlagsBits = 544106784;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v3 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
  v8 = static os_log_type_t.debug.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v48 = v1[6];
    v10 = v1[5];
    v11 = sub_10008E688();
    sub_10008E670();
    *v11 = 136446466;
    sub_10009F0F8();
    v49 = v12;
    v50 = v13;
    v51 = v14;
    v15._countAndFlagsBits = v10;
    v15._object = v48;
    String.append(_:)(v15);
    sub_10009F134();
    v16 = sub_100080210(v50, v51, &v49);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v17 = sub_100080210(0, 0xE000000000000000, &v49);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v35 = swift_task_alloc();
  v1[8] = v35;
  *v35 = v1;
  v35[1] = sub_10009B504;
  sub_10009F1B8();

  return sub_10009B600(v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_10009B504()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_10009B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_10009B62C, 0, 0);
}

uint64_t sub_10009B62C()
{
  sub_10008BE9C();
  if (qword_1003CBC30 != -1)
  {
    sub_10009F080();
  }

  v1 = qword_1003CCE00;
  *(v0 + 80) = qword_1003CCE00;

  return _swift_task_switch(sub_10009B6B0, v1, 0);
}

uint64_t sub_10009B6B0()
{
  sub_10008BE9C();
  *(v0 + 88) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10009B710()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = swift_allocObject();
  v0[12] = v9;
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v4;
  v9[7] = v3;
  v9[8] = v2;
  v9[9] = v1;

  v10 = swift_task_alloc();
  v11 = sub_10009F18C(v10);
  *v11 = v12;
  v11[1] = sub_10009B834;

  return sub_1001D5D00(sub_10009E450, v9);
}

uint64_t sub_10009B834()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009B934()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_10009B98C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v10;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 112) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_10009B9C4, 0, 0);
}

uint64_t sub_10009B9C4()
{
  sub_10008BE9C();
  if (qword_1003CBC30 != -1)
  {
    sub_10009F080();
  }

  v1 = qword_1003CCE00;
  *(v0 + 80) = qword_1003CCE00;

  return _swift_task_switch(sub_10009BA48, v1, 0);
}

uint64_t sub_10009BA48()
{
  sub_10008BE9C();
  *(v0 + 88) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10009BAA8()
{
  v1 = *(v0 + 72);
  v14 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 112);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_allocObject();
  *(v0 + 96) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v5;
  *(v9 + 64) = v4;
  *(v9 + 72) = v14;
  *(v9 + 80) = v1;

  v10 = swift_task_alloc();
  v11 = sub_10009F18C(v10);
  *v11 = v12;
  v11[1] = sub_10009BBDC;

  return sub_1001D5E3C(sub_10009E6E4, v9);
}

uint64_t sub_10009BBDC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009BCDC(uint64_t a1, uint64_t a2)
{
  sub_100080FB4(&qword_1003D30B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2C0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v5 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  *(inited + 48) = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x8000000100314D70;
  v6 = sub_100080FB4(&unk_1003D0530);
  *(inited + 96) = a2;
  *(inited + 120) = v6;
  *(inited + 128) = 1684632935;
  *(inited + 136) = 0xE400000000000000;
  v7 = objc_opt_self();

  v8 = [v7 deviceGUID];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v11;
  v12 = Dictionary.init(dictionaryLiteral:)();
  v13 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
  if (v13)
  {
    v17 = &type metadata for UInt64;
    *&v16 = v13;
    sub_10008B5D0(&v16, &v15);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  return v12;
}

uint64_t sub_10009BEB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383570, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10009BF08(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_10009BF40(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CCF30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_10009ED78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100080F0C(a1);
  return v7;
}

BOOL sub_10009C118(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003835C0, v2);

  return v3 != 0;
}

void *sub_10009C17C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CCEF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100086D24(a1, a1[3]);
  sub_10009E97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100080F0C(a1);
  }

  else
  {
    sub_100080FB4(&qword_1003CCF00);
    sub_10009E9D0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100080F0C(a1);
  }

  return v7;
}

uint64_t sub_10009C324@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009BEB4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009C354@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009BF08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009C388@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009BEB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009C3B0(uint64_t a1)
{
  v2 = sub_10009ED78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009C3EC(uint64_t a1)
{
  v2 = sub_10009ED78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009BF40(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_10009C468@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009C118(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009C49C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009C160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10009C4C8@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009C118(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009C4F4(uint64_t a1)
{
  v2 = sub_10009E97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009C530(uint64_t a1)
{
  v2 = sub_10009E97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10009C56C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10009C17C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10009C598(void *a1, void **a2, uint64_t a3, void **a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2B0;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v32 = &type metadata for String;
  aBlock = a2;
  v30 = a3;

  *(inited + 32) = sub_100223CB4(0xD000000000000015, 0x80000001003140F0, &aBlock);
  v32 = &type metadata for String;
  aBlock = a4;
  v30 = a5;

  *(inited + 40) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &aBlock);
  v32 = &type metadata for String;
  aBlock = a6;
  v30 = a7;

  *(inited + 48) = sub_100223CB4(0x5F746E756F636361, 0xEA00000000006469, &aBlock);
  Date.timeIntervalSinceReferenceDate.getter();
  v32 = &type metadata for Double;
  aBlock = v18;
  *(inited + 56) = sub_10013CD88(0x6470755F7473616CLL, 0xEC00000064657461, &aBlock, 5);
  type metadata accessor for OfferEligibilityEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [a1 connection];
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EE04(inited);
  swift_setDeallocating();
  sub_10009E32C();
  v21 = sub_10018F08C();
  v22 = [ObjCClassFromMetadata queryOnConnection:v20 predicate:v21];

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a9 + 16;
  v23[4] = a10;
  v23[5] = a11;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10009E7C0;
  *(v24 + 24) = v23;
  v33 = sub_1000939AC;
  v34 = v24;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100223D74;
  v32 = &unk_100385390;
  v25 = _Block_copy(&aBlock);
  v26 = a1;

  [v22 enumeratePersistentIDsUsingBlock:v25];

  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009C928(uint64_t a1, int a2, int a3, id a4, uint64_t a5)
{
  v7 = [a4 connection];
  v8 = [objc_allocWithZone(type metadata accessor for OfferEligibilityEntity()) initWithPersistentID:a1 onConnection:v7];

  v9 = sub_10009CC8C();
  v11 = v10;
  LOBYTE(v7) = sub_10009CD68();

  swift_beginAccess();
  *a5 = v9;
  *(a5 + 8) = v11;
  *(a5 + 16) = v7 & 1;
}

uint64_t sub_10009CC8C()
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
    swift_allocError();
    *v5 = 0xD000000000000015;
    *(v5 + 8) = 0x80000001003140F0;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }
}

id sub_10009CD68()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLValueForProperty:v1];

  return v2;
}

BOOL sub_10009CDC4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v18 = type metadata accessor for Date();
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfferEligibilityEntity();

  v21 = [a1 connection];
  static Date.now.getter();
  v22 = sub_10009D114(a2, a3, a4, a5, a6, a7, a8, v20, v21);
  if ([v22 existsInDatabase])
  {
    v23 = [v22 persistentID];

    return v23 != 0;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for SKLogger();
    sub_10007EDA4(v25, qword_1003F26C8);
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v39 = 0xD00000000000002CLL;
    v40 = 0x8000000100314D40;
    v26._countAndFlagsBits = a7;
    v26._object = a8;
    String.append(_:)(v26);
    v28 = v39;
    v27 = v40;
    v29 = static os_log_type_t.error.getter();

    v30 = Logger.logObject.getter();

    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136446466;
      v38 = v32;
      v39 = 91;
      v40 = 0xE100000000000000;
      v33._countAndFlagsBits = a9;
      v33._object = a10;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 8285;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = sub_100080210(v39, v40, &v38);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v36 = sub_100080210(v28, v27, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }
}

id sub_10009D114(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = Dictionary.init(dictionaryLiteral:)();
  v28 = &type metadata for String;
  *&v27 = a4;
  *(&v27 + 1) = a5;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v28 = &type metadata for String;
  *&v27 = a6;
  *(&v27 + 1) = a7;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v28 = &type metadata for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  sub_10008B5D0(&v27, v26);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v28 = &type metadata for Bool;
  LOBYTE(v27) = a3;
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();

  v17 = type metadata accessor for Date();
  v28 = v17;
  v18 = sub_10009E720(&v27);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v18, a8, v17);
  sub_10008B5D0(&v27, v26);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v20 = objc_allocWithZone(v25);
  sub_100223354(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithPropertyValues:isa onConnection:a9];

  (*(v19 + 8))(a8, v17);
  return v22;
}

void sub_10009D42C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED410;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v39 = &type metadata for String;
  v37 = a2;
  v38 = a3;

  v16 = a4;
  v17 = a5;
  *(inited + 32) = sub_100223CB4(0xD000000000000015, 0x80000001003140F0, &v37);
  v39 = &type metadata for String;
  v37 = v16;
  v38 = a5;

  *(inited + 40) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v37);
  v39 = &type metadata for String;
  v37 = a6;
  v38 = a7;

  *(inited + 48) = sub_100223CB4(0x5F746E756F636361, 0xEA00000000006469, &v37);
  type metadata accessor for OfferEligibilityEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [a1 connection];
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EE04(inited);
  swift_setDeallocating();
  sub_10009E32C();
  v20 = sub_10018F08C();
  v21 = [ObjCClassFromMetadata queryOnConnection:v19 predicate:v20];

  if (([v21 deleteAllEntities] & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v37 = 0xD00000000000002DLL;
    v38 = 0x80000001003149F0;
    v23._countAndFlagsBits = v16;
    v23._object = v17;
    String.append(_:)(v23);
    v25 = v37;
    v24 = v38;
    v26 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136446466;
      v36 = v29;
      v37 = 91;
      v38 = 0xE100000000000000;
      v30._countAndFlagsBits = a8;
      v30._object = a9;
      String.append(_:)(v30);
      v31._countAndFlagsBits = 8285;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      v32 = sub_100080210(v37, v38, &v36);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_100080210(v25, v24, &v36);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10009D82C(void *a1)
{
  _StringGuts.grow(_:)(184);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x8000000100314AC0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100314A40;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 665632;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x5F746E756F636361;
  v5._object = 0xEA00000000006469;
  String.append(_:)(v5);
  v6._object = 0x8000000100314AE0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x695F656C646E7562;
  v7._object = 0xE900000000000064;
  String.append(_:)(v7);
  v8._object = 0x8000000100314AE0;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001003140F0;
  String.append(_:)(v9);
  v10._object = 0x8000000100314AE0;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x8000000100314A20;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x8000000100314B00;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6470755F7473616CLL;
  v13._object = 0xEC00000064657461;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD00000000000002ELL;
  v14._object = 0x8000000100314B20;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x5F746E756F636361;
  v15._object = 0xEA00000000006469;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000015;
  v17._object = 0x80000001003140F0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x8000000100314B50;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  [a1 executeStatement:v19];
}

id sub_10009DAE8()
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

BOOL sub_10009DBBC(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 18399)
    {
      break;
    }

    v3 = [a1 currentSchemaVersion];
    if (v3 != 18400)
    {
      if (v3)
      {
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for SKLogger();
        sub_10007EDA4(v6, qword_1003F26C8);
        aBlock = 0;
        v18 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        aBlock = 0xD000000000000027;
        v18 = 0x8000000100314A60;
        v23 = [a1 currentSchemaVersion];
        v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v7);

        v8._countAndFlagsBits = 540949792;
        v8._object = 0xE400000000000000;
        String.append(_:)(v8);
        v23 = 18400;
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v11 = aBlock;
        v10 = v18;
        v12 = static os_log_type_t.error.getter();

        v13 = Logger.logObject.getter();

        if (os_log_type_enabled(v13, v12))
        {
          v14 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v14 = 136446466;
          *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v14 + 12) = 2082;
          v15 = sub_100080210(v11, v10, &aBlock);

          *(v14 + 14) = v15;
          _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v2 > 18399;
      }

      v21 = sub_10009D82C;
      v22 = 0;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_100224D90;
      v20 = &unk_1003852A0;
      v4 = _Block_copy(&aBlock);

      v5 = [a1 migrateToVersion:18400 usingBlock:v4];
      _Block_release(v4);
      if ((v5 & 1) == 0)
      {
        return v2 > 18399;
      }
    }
  }

  return v2 > 18399;
}

id sub_10009DF48(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OfferEligibilityStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

id sub_10009DFC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfferEligibilityStore();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10009E020()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfferEligibilityStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10009E0D0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithPropertyValues:onConnection:", isa, a2);

  return v6;
}

id sub_10009E1DC(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_10009E274()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10009E2D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009E32C()
{
  swift_arrayDestroy();
  v0 = sub_10009F17C();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009E36C()
{
  sub_100080FB4(&qword_1003CCEC8);
  swift_arrayDestroy();
  v0 = sub_10009F17C();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009E3C4()
{
  swift_arrayDestroy();
  v0 = sub_10009F17C();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009E400()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10009E484(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009E49C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10009E4D4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10009E5D8(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10009C598(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10009E694()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t *sub_10009E720(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10009E780()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10009E7E4()
{
  result = qword_1003CCEE0;
  if (!qword_1003CCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCEE0);
  }

  return result;
}

uint64_t sub_10009E838(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E8A8(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003CCEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E910(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontInternal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009E97C()
{
  result = qword_1003CCEF8;
  if (!qword_1003CCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCEF8);
  }

  return result;
}

unint64_t sub_10009E9D0()
{
  result = qword_1003CCF08;
  if (!qword_1003CCF08)
  {
    sub_1000852D4(&qword_1003CCF00);
    sub_10009EA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF08);
  }

  return result;
}

unint64_t sub_10009EA54()
{
  result = qword_1003CCF10;
  if (!qword_1003CCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferEligibilityResponse.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for OfferEligibilityResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10009EB94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AuditTokenDecodingError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10009EBE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10009EC20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10009EC74()
{
  result = qword_1003CCF18;
  if (!qword_1003CCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF18);
  }

  return result;
}

unint64_t sub_10009ECCC()
{
  result = qword_1003CCF20;
  if (!qword_1003CCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF20);
  }

  return result;
}

unint64_t sub_10009ED24()
{
  result = qword_1003CCF28;
  if (!qword_1003CCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF28);
  }

  return result;
}

unint64_t sub_10009ED78()
{
  result = qword_1003CCF38;
  if (!qword_1003CCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferEligibilityResponse.GroupEligibility.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OfferEligibilityResponse.GroupEligibility.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009EF20);
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

unint64_t sub_10009EF68()
{
  result = qword_1003CCF40;
  if (!qword_1003CCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF40);
  }

  return result;
}

unint64_t sub_10009EFC0()
{
  result = qword_1003CCF48;
  if (!qword_1003CCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF48);
  }

  return result;
}

unint64_t sub_10009F018()
{
  result = qword_1003CCF50;
  if (!qword_1003CCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCF50);
  }

  return result;
}

uint64_t sub_10009F080()
{

  return swift_once();
}

void sub_10009F104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10009F134()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_10009F158()
{
  v4 = (v0 + v1);
  *(v2 + 184) = *v4;
  *(v2 + 192) = v4[1];

  return static Date.now.getter();
}

uint64_t sub_10009F1A4@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 200) = a1;
  *(v3 + 208) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

void sub_10009F1D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

BOOL sub_10009F1F4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10009F20C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10009F2AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_name);

  return v1;
}

uint64_t sub_10009F318()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10009F350@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009F37C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1000198F0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F3A4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10009F3D4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10009F3DC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10009F40C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10009F41C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10009F44C(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_10009F45C(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_10009F488(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_10009F4B4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009F4E8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10009F4E8(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

unint64_t sub_10009F528@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009F55C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10009F55C(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_10009F5F0@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10009F620(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10009F6B4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10009F6F0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10009F20C(a1);
  *a2 = result;
  return result;
}

id sub_10009F7D0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR____TtC9storekitd14SQLiteFunction_name];
  *v18 = a1;
  *(v18 + 1) = a2;
  if (a6)
  {
    v19 = -1;
  }

  else
  {
    v19 = a5;
  }

  *&v8[OBJC_IVAR____TtC9storekitd14SQLiteFunction_argumentCount] = v19;
  v20 = &v8[OBJC_IVAR____TtC9storekitd14SQLiteFunction_implementation];
  *v20 = a7;
  *(v20 + 1) = a8;
  if (a3)
  {
    v21 = 526337;
  }

  else
  {
    v21 = 524289;
  }

  if (a4)
  {
    v21 &= 0x7FFFFu;
  }

  *&v8[OBJC_IVAR____TtC9storekitd14SQLiteFunction_flagStorage] = v21;
  v23.receiver = v8;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10009FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC9storekitd14SQLiteFunction22SQLiteFunctionPointers_name] = a1;
  *&v4[OBJC_IVAR____TtCC9storekitd14SQLiteFunction22SQLiteFunctionPointers_implementation] = a2;
  *&v4[OBJC_IVAR____TtCC9storekitd14SQLiteFunction22SQLiteFunctionPointers_xFunc] = a3;
  *&v4[OBJC_IVAR____TtCC9storekitd14SQLiteFunction22SQLiteFunctionPointers_xDestroy] = a4;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

void sub_10009FB14(uint64_t a1, const void *a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_implementation);
  v4 = *(a1 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_implementation + 8);
  type metadata accessor for SQLiteFunction.ImplementationBox();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = a1 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_name;
  v8 = *(a1 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_name);
  v9 = *(v7 + 8);

  sub_1000A01F4(v8, v9, v6, sub_1000A0868);
  _Block_release(a2);
}

void sub_10009FBCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = objc_allocWithZone(type metadata accessor for SQLiteFunction.SQLiteFunctionPointers());
  v7 = sub_10009FA40(a1, a2, sub_10009FC60, sub_1000A01E4);
  a3();
}

sqlite3_context *sub_10009FC64(sqlite3_context *result, int a2, sqlite3_value **a3)
{
  if (result)
  {
    v5 = result;
    result = sqlite3_user_data(result);
    if (result)
    {
      v35 = *(result + 2);

      if (a3 && a2)
      {
        v6 = 8 * a2;
        v7 = &_swiftEmptyArrayStorage;
        do
        {
          v8 = *a3;
          if (*a3)
          {
            switch(sqlite3_value_type(*a3))
            {
              case 1:
                v9 = sqlite3_value_int64(v8);
                v10 = 0;
                v11 = 0;
                goto LABEL_23;
              case 2:
                v16 = sqlite3_value_double(v8);
                v10 = 0;
                v9 = *&v16;
                v11 = 1;
                goto LABEL_23;
              case 3:
                if (sqlite3_value_text(v8))
                {
                  v9 = String.init(cString:)();
                  v10 = v12;
                  v11 = 2;
                }

                else
                {
                  v9 = 0;
                  v11 = 2;
                  v10 = 0xE000000000000000;
                }

                goto LABEL_23;
              case 4:
                v9 = sqlite3_value_blob(v8);
                if (!v9)
                {
                  goto LABEL_19;
                }

                v13 = sqlite3_value_bytes(v8);
                if (v13)
                {
                  v14 = v13;
                  if (v13 < 15)
                  {
                    memset(__dst, 0, sizeof(__dst));
                    v37 = v13;
                    memcpy(__dst, v9, v13);
                    v9 = *__dst;
                    v10 = v34 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v37 << 16)) << 32);
                    v11 = 3;
                    v34 = v10;
                  }

                  else
                  {
                    type metadata accessor for __DataStorage();
                    swift_allocObject();
                    if (v14 == 0x7FFFFFFF)
                    {
                      v15 = __DataStorage.init(bytes:length:)();
                      type metadata accessor for Data.RangeReference();
                      v9 = swift_allocObject();
                      *(v9 + 16) = xmmword_1002ED870;
                      v10 = v15 | 0x8000000000000000;
                    }

                    else
                    {
                      v9 = v14 << 32;
                      v10 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
                    }

                    v11 = 3;
                  }
                }

                else
                {
                  v9 = 0;
LABEL_19:
                  v11 = 3;
                  v10 = 0xC000000000000000;
                }

LABEL_23:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1001D9A10();
                  v7 = v19;
                }

                v17 = v7[2];
                if (v17 >= v7[3] >> 1)
                {
                  sub_1001D9A10();
                  v7 = v20;
                }

                v7[2] = v17 + 1;
                v18 = &v7[3 * v17];
                *(v18 + 4) = v9;
                *(v18 + 5) = v10;
                v18[48] = v11;
                break;
              default:
                break;
            }
          }

          ++a3;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        v7 = &_swiftEmptyArrayStorage;
      }

      v21 = v35(v7);
      v23 = v22;
      v25 = v24;

      switch(v25)
      {
        case 0:
          sqlite3_result_int64(v5, v21);
          goto LABEL_38;
        case 1:
          sqlite3_result_double(v5, *&v21);
          goto LABEL_38;
        case 2:
          sub_1000A031C(v21, v23, v5);

          v26 = v21;
          v27 = v23;
          v28 = 2;
LABEL_48:

          return sub_1000A0940(v26, v27, v28);
        case 3:
          switch(v23 >> 62)
          {
            case 1uLL:
              v33 = v21 >> 32;
              if (v21 >> 32 < v21)
              {
                __break(1u);
              }

              v32 = v21;
              goto LABEL_47;
            case 2uLL:
              v32 = *(v21 + 16);
              v33 = *(v21 + 24);
LABEL_47:
              sub_1000A089C(v32, v33, v23 & 0x3FFFFFFFFFFFFFFFLL, v5);

              v26 = v21;
              v27 = v23;
              v28 = 3;
              goto LABEL_48;
            case 3uLL:
              memset(__dst, 0, sizeof(__dst));
              v29 = sub_10006AC50();
              v30 = v5;
              v31 = 0;
              goto LABEL_43;
            default:
              *__dst = v21;
              *&__dst[8] = v23;
              __dst[10] = BYTE2(v23);
              __dst[11] = BYTE3(v23);
              __dst[12] = BYTE4(v23);
              __dst[13] = BYTE5(v23);
              v29 = sub_10006AC50();
              v30 = v5;
              v31 = BYTE6(v23);
LABEL_43:
              sqlite3_result_blob64(v30, __dst, v31, v29);

              result = sub_1000A0940(v21, v23, 3);
              break;
          }

          return result;
        default:
          sqlite3_result_null(v5);
LABEL_38:

          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000A01E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000A01F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9[0] = a1;
      v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      objc_allocWithZone(type metadata accessor for SQLiteFunction.SQLiteFunctionPointers());
      v7 = v9;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFFFLL;
      objc_allocWithZone(type metadata accessor for SQLiteFunction.SQLiteFunctionPointers());
      v7 = (v6 + 32);
LABEL_6:
      v8 = sub_10009FA40(v7, a3, sub_10009FC60, sub_1000A01E4);
      a4();

      return;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
}

void sub_1000A031C(uint64_t a1, uint64_t a2, sqlite3_context *a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v7 = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = sub_10006AC50();
      v6 = v7;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = sub_10006AC50();
      v6 = (v4 + 32);
LABEL_6:
      sqlite3_result_text(a3, v6, -1, v5);
      return;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
}

uint64_t sub_1000A0538(uint64_t a1, void *a2)
{
  v9 = *(v2 + OBJC_IVAR____TtC9storekitd14SQLiteFunction_name);

  v5._countAndFlagsBits = 40;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

unint64_t sub_1000A0660()
{
  result = qword_1003CD0F0;
  if (!qword_1003CD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD0F0);
  }

  return result;
}

unint64_t sub_1000A06B8()
{
  result = qword_1003CD0F8;
  if (!qword_1003CD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD0F8);
  }

  return result;
}

unint64_t sub_1000A0710()
{
  result = qword_1003CD100;
  if (!qword_1003CD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD100);
  }

  return result;
}

unint64_t sub_1000A0768()
{
  result = qword_1003CD108;
  if (!qword_1003CD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD108);
  }

  return result;
}

void sub_1000A0808(const void *a1, uint64_t a2, sqlite3_context *a3)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_10006AC50();
    sqlite3_result_blob64(a3, a1, v3, v6);
  }
}

void sub_1000A089C(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_context *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1000A0808(v7, v14, a4);
}

uint64_t sub_1000A0940(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A0954(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000A0954(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_10008E168(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1000A09B0(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000A09DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000A09B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000A0A10()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000B00B4(v1);

  return sub_1000A8544();
}

uint64_t sub_1000A0A98()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_1000A10AC(v2);
}

uint64_t sub_1000A0BAC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B00C0();

  return v4(v3);
}

uint64_t sub_1000A0D14(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000A0DC4;

  return sub_1000A0A10();
}

uint64_t sub_1000A0DC4()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = sub_1000B06E0();
  v9(v8);
  _Block_release(v4);

  sub_100098AC4();

  return v10();
}

uint64_t sub_1000A0F04()
{
  v2 = v0[3];
  v3 = v2 - 1;
  if ((v2 - 1) >= 3)
  {
    v0[2] = v2;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(&type metadata for objc_AccountManager.objc_AccountType, v0 + 2, &type metadata for objc_AccountManager.objc_AccountType, &type metadata for Int);
  }

  else
  {
    sub_10008BE9C();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    sub_1000B00B4(v4);

    return sub_1000A10AC(v3);
  }
}

uint64_t sub_1000A0FC8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B00C0();

  return v4(v3);
}

uint64_t sub_1000A10C0()
{
  sub_1000B072C();
  sub_1000B0004();
  v1 = v0 + 464;
  v2 = *(v0 + 600);
  v3 = [objc_allocWithZone(ACAccountStore) init];
  *(v0 + 472) = v3;
  if (v2 == 2)
  {
    v4 = ACAccountTypeIdentifierIDMS;
    *(v0 + 480) = ACAccountTypeIdentifierIDMS;
    *(v0 + 144) = v0;
    *(v0 + 184) = v1;
    *(v0 + 152) = sub_1000A12C8;
    v5 = swift_continuation_init();
    v6 = sub_100080FB4(&qword_1003CD2C8);
    *(v0 + 488) = v6;
    sub_1000B014C(v6);
    sub_1000B0114(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v7;
    *(v0 + 424) = &unk_100385748;
    *(v0 + 432) = v5;
    [v3 accountTypeWithIdentifier:v4 completion:v0 + 400];
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
    *(v0 + 568) = v8;

    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_1000A1DA8;
    v9 = swift_continuation_init();
    v10 = sub_100080FB4(&qword_1003CD2C8);
    sub_1000B014C(v10);
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1000A8A24;
    *(v0 + 424) = &unk_1003856F8;
    *(v0 + 432) = v9;
    [v3 accountTypeWithIdentifier:v8 completion:v0 + 400];
  }

  sub_1000B0718();

  return _swift_continuation_await(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000A12C8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 176);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A13C4()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  *(v0 + 504) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 464;
    *(v0 + 216) = sub_1000A1500;
    v4 = sub_1000B0500();
    v5 = sub_100080FB4(&qword_1003CD2D0);
    *(v0 + 512) = v5;
    sub_1000B012C(v5);
    sub_1000AFD7C(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_100385770;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_1000B0518();

    return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {

    sub_1000AFDEC();
    sub_1000B0518();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1000A1500()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = *(v3 + 240);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A15FC()
{
  sub_1000B02BC();
  v1 = v0[58];
  v2 = v0[63];
  if (v1)
  {

    v3 = sub_1000AED9C(v1);
    v11 = v3;
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {
        v2 = v0[63];
        v14 = v0[59];

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v3 = *(v1 + 8 * i + 32);
      }

      v13 = v3;
      v0[66] = v3;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return _swift_continuation_await(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      if ([v3 isActive])
      {
        break;
      }
    }

    v18 = v0[61];
    v19 = v0[59];

    v20 = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[67] = ACAccountTypeIdentifieriTunesStoreSandbox;
    v0[34] = v0;
    v0[39] = v0 + 58;
    v0[35] = sub_1000A17FC;
    swift_continuation_init();
    v0[57] = v18;
    sub_1000B0194();
    sub_1000B0114(COERCE_DOUBLE(1107296256));
    v0[52] = v21;
    v0[53] = &unk_100385798;
    v0[54] = v22;
    [v19 accountTypeWithIdentifier:v20 completion:v0 + 50];
    v3 = v0 + 34;

    return _swift_continuation_await(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {

LABEL_13:
    v15 = sub_1000AFDEC();

    return v16(v15);
  }
}

uint64_t sub_1000A17FC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 544) = *(v3 + 304);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A18F8()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);
  *(v0 + 552) = v2;

  v3 = *(v0 + 472);
  if (v2)
  {
    v4 = *(v0 + 512);
    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 464;
    *(v0 + 344) = sub_1000A1A38;
    swift_continuation_init();
    *(v0 + 456) = v4;
    sub_1000B0194();
    sub_1000AFD7C(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v5;
    *(v0 + 424) = &unk_1003857C0;
    *(v0 + 432) = v6;
    [v3 accountsWithAccountType:v2 options:1 completion:v0 + 400];
    sub_1000B0518();

    return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = *(v0 + 504);

    sub_1000AFDEC();
    sub_1000B0518();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1000A1A38()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 368);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1000A1B34()
{
  v1 = v0;
  v2 = *(v0 + 464);
  v3 = *(v0 + 552);
  if (v2)
  {

    v4 = sub_1000AED9C(v2);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        v19 = *(v1 + 552);
        v20 = *(v1 + 528);
        v21 = *(v1 + 504);

        goto LABEL_22;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v8 = v1;
      v9 = *(v1 + 528);
      v10 = sub_1000AF0B0(v6, &selRef_username);
      v12 = v11;
      v13 = sub_1000AF0B0(v9, &selRef_username);
      if (!v12)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_17;
      }

      if (v10 == v13 && v12 == v14)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);

LABEL_25:

        v24 = *(v1 + 552);

        goto LABEL_27;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        v1 = v8;
        v22 = *(v8 + 504);
        v23 = *(v8 + 472);
        goto LABEL_25;
      }

LABEL_18:
      v1 = v8;
    }

    if (!v14)
    {
      v1 = v8;
      v25 = *(v8 + 552);
      v26 = *(v8 + 528);
      v27 = *(v8 + 504);

      goto LABEL_27;
    }

LABEL_17:

    goto LABEL_18;
  }

  v17 = *(v0 + 504);
  v18 = *(v0 + 472);

LABEL_22:
  v7 = 0;
LABEL_27:
  v28 = *(v1 + 8);

  v28(v7);
}

uint64_t sub_1000A1DA8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A1EA4()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 568);
  v2 = *(v0 + 464);
  *(v0 + 584) = v2;

  if (v2)
  {
    v3 = *(v0 + 472);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 464;
    *(v0 + 88) = sub_1000A1FDC;
    v4 = sub_1000B0500();
    v5 = sub_100080FB4(&qword_1003CD2D0);
    sub_1000B012C(v5);
    sub_1000AFD7C(COERCE_DOUBLE(1107296256));
    *(v0 + 416) = v6;
    *(v0 + 424) = &unk_100385720;
    *(v0 + 432) = v4;
    [v3 accountsWithAccountType:v2 completion:v0 + 400];
    sub_1000B0518();

    return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {

    sub_1000AFDEC();
    sub_1000B0518();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1000A1FDC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1000A20D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000B0780();
  sub_1000B02BC();
  v11 = *(v10 + 464);

  if (v11)
  {
    v12 = sub_1000AED9C(v11);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {
LABEL_12:
        v17 = *(v10 + 584);

        goto LABEL_13;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v14 isActive])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 584);

LABEL_13:
    sub_10009F198();
    sub_1000B0604();

    v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_1000A2E84(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000A2F24;

  return sub_1000A0EF0(a1);
}

uint64_t sub_1000A2F24()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;

  v7 = sub_1000B06E0();
  v8(v7);
  _Block_release(v4);

  sub_100098AC4();

  return v9();
}

uint64_t sub_1000A3030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_1000A304C()
{
  sub_1000B02BC();
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1000B03E4(v0[10]);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  sub_100080FB4(&qword_1003CD308);
  *v6 = v0;
  v6[1] = sub_1000A3188;
  sub_1000AFEF8();
  sub_1000B0604();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000A3188()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000A32E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1000A3310, 0, 0);
}

uint64_t sub_1000A3310()
{
  sub_10008BE9C();
  if (sub_1001A79F8())
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1000A3438;

    return sub_1000A3694();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1000A355C;
    v4 = sub_1000B06F4(v0[3]);

    return sub_1000A4478(v4, 2, v5, v6, v7);
  }
}

uint64_t sub_1000A3438()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AC4();

    return v4();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v6, v7, v8);
  }
}

uint64_t sub_1000A355C()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    sub_1000AFF14();

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_1000A3694()
{
  sub_10008BE9C();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v4);
  v0[22] = sub_1000B05D0();
  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v27;
  a24 = v28;
  sub_1000B0108();
  a22 = v25;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v29 = type metadata accessor for SKLogger();
  v25[23] = sub_1000B01C8(v29, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v25[24] = qword_1003F2700;
  TaskLocal.get()();
  v31 = v25[2];
  v30 = v25[3];
  v32 = static os_log_type_t.default.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    a10 = "esent in the account store";
    sub_10008E688();
    sub_10008BF58();
    sub_1000AFD44(4.8752e-34);
    a11 = v34;
    a12 = v35;
    a13 = v36;
    v37._countAndFlagsBits = v31;
    v37._object = v30;
    String.append(_:)(v37);
    sub_10009F134();
    sub_100080210(a12, a13, &a11);
    sub_1000B02C8();
    sub_10008BEC4();
    *(v26 + 14) = sub_100080210(0xD00000000000002ELL, 0x8000000100315570, &a11);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v26, 0x16u);
    sub_10008BF74();
    sub_10008BF90();
    sub_10008BF3C();
  }

  sub_10008E5A4(0, &qword_1003CD2E8);

  v38 = sub_1002353A8();
  v25[25] = v38;
  v39 = [objc_opt_self() sharedInstance];
  v40 = [v39 getBoolValueForIdentifier:2 withContext:v38];

  if (v40)
  {
    TaskLocal.get()();
    v42 = v25[16];
    v41 = v25[17];
    static os_log_type_t.default.getter();
    sub_1000B04E8();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (sub_1000B04D0())
    {
      v43 = sub_10008E688();
      sub_10008E670();
      *v43 = 136446466;
      sub_10009F0F8();
      a11 = v44;
      a12 = v45;
      a13 = v46;
      v47._countAndFlagsBits = v42;
      v47._object = v41;
      String.append(_:)(v47);
      sub_10009F134();
      v48 = sub_100080210(a12, a13, &a11);

      *(v43 + 4) = v48;
      sub_1000B04AC();
      *(v43 + 14) = sub_100080210(0xD000000000000051, 0x8000000100315700, &a11);
      sub_1000B01BC();
      sub_1000B0648(v49, v50, v51, v52);
      sub_100098BC0();
      sub_10008BF3C();
      sub_1000AFF34();
    }

    sub_100098AA4();
    sub_10008BE10();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v63 = v25[21];
    v62 = v25[22];
    sub_10008E5A4(0, &qword_1003CD2F0);
    v64 = sub_1000AA8D0(0x6C65636E6143, 0xE600000000000000, 2);
    v25[26] = v64;
    v65 = sub_1000AA94C(19279, 0xE200000000000000, 19279, 0xE200000000000000);
    v25[27] = v65;
    v66 = objc_allocWithZone(AMSDialogRequest);
    v67 = sub_1000AEBE4(0xD00000000000001ALL, 0x80000001003155A0, 0xD000000000000052, 0x80000001003155C0);
    v25[28] = v67;
    [v67 setDefaultAction:v65];
    sub_100080FB4(&unk_1003D28A0);
    sub_1000B069C();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1002ED2D0;
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    v69 = v64;
    v70 = v65;
    sub_1000AEFC8(v68, v67);
    TaskLocal.get()();
    sub_1000AF110(v25[4], v25[5], v67, &selRef_setLogKey_);
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v71, v72, v73, v74);
    sub_1000B069C();
    v75 = swift_allocObject();
    v75[2] = 0;
    v75[3] = 0;
    v75[4] = v63;
    v75[5] = v67;
    swift_unknownObjectRetain();
    v76 = v67;
    sub_100235418(0, 0, v62, &unk_1002EDC40, v75);
    v25[29] = v77;
    v78 = swift_task_alloc();
    v25[30] = v78;
    v25[31] = sub_100080FB4(&qword_1003CCCB0);
    *v78 = v25;
    v78[1] = sub_1000A3C94;
    sub_10008BE10();

    return Task.value.getter(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1000A3C94()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 256) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000A3D8C()
{
  v82 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v2 == 19279 && v1 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    TaskLocal.get()();
    v5 = v0[14];
    v4 = v0[15];
    v6 = static os_log_type_t.default.getter();

    v7 = Logger.logObject.getter();

    v8 = os_log_type_enabled(v7, v6);
    v9 = v0[28];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    if (v8)
    {
      v76 = v0[26];
      v13 = sub_10008E688();
      sub_10008E670();
      *v13 = 136446466;
      sub_10009F0F8();
      v79 = v14;
      v80 = v15;
      v81 = v16;
      v17._countAndFlagsBits = v5;
      v17._object = v4;
      String.append(_:)(v17);
      sub_10009F134();
      v26 = sub_1000B0550(v18, v19, v20, v21, v22, v23, v24, v25, v68, "ted with action id: ", v10, v9, v76, v79, v80, v81);

      *(v13 + 4) = v26;
      sub_1000B04AC();
      *(v13 + 14) = sub_100080210(0xD000000000000036, v70 | 0x8000000000000000, &v79);
      sub_1000B0648(&_mh_execute_header, v7, v6, "%{public}s%{public}s");
      sub_100098BC0();
      sub_10008BF3C();
      sub_1000AFF34();
    }

    else
    {
    }

    sub_100098AA4();
  }

  else
  {
    v28 = v0[23];
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v29._countAndFlagsBits = 0xD000000000000044;
    v29._object = 0x8000000100315670;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v2;
    v30._object = v1;
    String.append(_:)(v30);

    TaskLocal.get()();
    static os_log_type_t.default.getter();
    sub_1000B04E8();

    Logger.logObject.getter();
    sub_1000B02A4();

    if (sub_1000B04D0())
    {
      sub_10008E688();
      sub_10008BF58();
      sub_1000AFD44(4.8752e-34);
      v79 = v31;
      v80 = v32;
      v81 = v33;
      sub_1000B0310();
      sub_10009F134();
      sub_1000B0550(v34, v35, v36, v37, v38, v39, v40, v41, v68, v69, v71, v73, v75, v79, v80, v81);
      sub_1000B02C8();
      sub_10008BEC4();
      sub_100080210(0, 0xE000000000000000, &v79);
      sub_1000B03CC();
      MEMORY[0xD000000000000044] = &v80;
      sub_1000AFFC8(&_mh_execute_header, v42, v43, "%{public}s%{public}s");
      sub_10008BF74();
      sub_10008BF90();
      sub_100081C28();
    }

    else
    {
    }

    sub_10008B5E0();
    v44 = sub_1000894A0();
    sub_1000B0630(v45, 11);
    v46 = v0[23];
    v80 = 0;
    v81 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v47 = v81;
    v0[8] = v80;
    v0[9] = v47;
    v48._countAndFlagsBits = 0xD000000000000041;
    v48._object = 0x8000000100315620;
    String.append(_:)(v48);
    v0[18] = v44;
    _print_unlocked<A, B>(_:_:)();
    v50 = v0[8];
    v49 = v0[9];
    TaskLocal.get()();
    v52 = v0[10];
    v51 = v0[11];
    v53 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_1000B0404();

    if (os_log_type_enabled(v46, v53))
    {
      sub_10008E688();
      sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      v79 = v54;
      v80 = v55;
      v81 = v56;
      v57._countAndFlagsBits = v52;
      v57._object = v51;
      String.append(_:)(v57);
      sub_10009F134();
      sub_1000B0550(v58, v59, v60, v61, v62, v63, v64, v65, v68, v69, v71, v73, v50, v79, v80, v81);
      sub_1000B02F8();
      *(v50 + 4) = v52;
      *(v50 + 12) = 2082;
      sub_100080210(v78, v49, &v79);
      sub_1000B047C();
      *(v50 + 14) = &v80;
      sub_1000B00EC(&_mh_execute_header, v66, v53, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();
    }

    else
    {
    }

    sub_1000B052C();

    sub_100098AC4();
  }

  return v27();
}

uint64_t sub_1000A4478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000A46B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A4798()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000A486C;
  sub_1000B0518();

  return sub_1000A990C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A486C()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  v5[11] = v3;

  if (v0)
  {
    sub_1000AFF14();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v5[12] = v11;
    *v11 = v7;
    v11[1] = sub_1000A49C8;
    v12 = v5[8];

    return sub_1000A53AC(v3, v12);
  }
}

uint64_t sub_1000A49C8()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000A4AD4()
{
  sub_100098BB4();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = [v1 account];

  sub_10009F198();

  return v4(v3);
}

uint64_t sub_1000A4B60()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000A4C70(void *a1, int a2, uint64_t a3, int a4, void *aBlock)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  v14 = a1;
  swift_unknownObjectRetain();
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_1000A4D88;

  return sub_1000A3030(v14, v8, v10, a3, v11, v13);
}

uint64_t sub_1000A4D88()
{
  sub_1000B02BC();
  sub_1000B06C0();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_100098AB4();
  *v6 = v5;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001E11C();

    v8 = sub_1000AFF24();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = sub_1000AFF24();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  sub_1000AFF14();

  return v12();
}

uint64_t sub_1000A4F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return sub_1000AFCB8();
}

uint64_t sub_1000A4F68()
{
  sub_1000B0004();
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  sub_1000B03E4(*(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  sub_10008E5A4(0, &unk_1003CE560);
  *v2 = v0;
  v2[1] = sub_1000A509C;
  sub_1000AFEF8();
  sub_1000B0518();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000A509C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000A51D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1000A5274;

  return sub_1000A53AC(a2, a3);
}

uint64_t sub_1000A5274()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    sub_1000AFF14();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_1000A53AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return sub_1000AFCB8();
}

uint64_t sub_1000A5860()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A5BEC()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A5EEC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A6148()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A66DC()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 576) = v4;
  if (v4)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A6B88()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A6C84()
{
  sub_10008BE9C();

  sub_10009F198();

  return v1();
}

uint64_t sub_1000A6CE4()
{
  sub_10008BE9C();
  v1 = *(v0 + 464);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000A6D48()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[55];
  swift_willThrow();

  sub_100098AC4();
  sub_1000B0518();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000A70B4(void *a1, uint64_t a2, int a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1000A71A4;

  return sub_1000A4F50(v10, a2, v7, v9);
}

uint64_t sub_1000A71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000B06C0();
  v14 = *(v13 + 16);
  v15 = *v12;
  sub_100098AB4();
  *v16 = v15;

  swift_unknownObjectRelease();

  v17 = *(v13 + 32);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_10001E11C();

    v18 = sub_1000AFF24();
    v19(v18, 0, v11);

    _Block_release(v17);
  }

  else
  {
    v20 = sub_1000AFF24();
    v21(v20, v11, 0);
    _Block_release(v17);
  }

  sub_1000AFF14();
  sub_1000B0604();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1000A7340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000A7358()
{
  sub_100098BB4();
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v1 = v0[4];
  sub_1000B03E4(v0[6]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1000A7474;
  sub_1000AFEF8();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000A7474()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000A75B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A7644;

  return sub_1000A7724();
}

uint64_t sub_1000A7644()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000A7724()
{
  sub_10008BE9C();
  v0[8] = v1;
  v2 = type metadata accessor for URL();
  v0[9] = v2;
  sub_1000B046C(v2);
  v0[10] = v3;
  v0[11] = sub_1000B05D0();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  sub_1000B00B4(v4);

  return sub_1000A8544();
}

uint64_t sub_1000A7800()
{
  sub_10008BE9C();
  v2 = v1;
  v3 = *v0;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;

  if (v2 == 2)
  {
    v7 = swift_task_alloc();
    *(v3 + 104) = v7;
    *v7 = v5;
    sub_1000B00B4(v7);

    return sub_1000A10AC(2);
  }

  else
  {

    sub_100098AA4();

    return v9();
  }
}

uint64_t sub_1000A7954()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A7D24()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A8040()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    v9 = *(v5 + 152);
  }

  sub_100098AD0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000A8150()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v1();
}

uint64_t sub_1000A81B0()
{
  sub_10008BE9C();
  v1 = *(v0 + 152);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1000A82B0(void *a1, int a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1000A8388;

  return sub_1000A7340(v8, v5, v7);
}

uint64_t sub_1000A8388()
{
  sub_1000B072C();
  sub_1000B0004();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = sub_1000AFF24();
    v9(v8, v7);
  }

  else
  {
    v10 = sub_1000AFF24();
    v11(v10, 0);
  }

  _Block_release(*(v4 + 24));
  sub_1000AFF14();
  sub_1000B0718();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000A8544()
{
  sub_10008BE9C();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v2);
  *(v0 + 24) = sub_1000B05D0();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000A8714()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A87FC()
{
  sub_10008BE9C();
  v1 = *(v0 + 40);
  if (v1)
  {

    sub_10009F198();

    return v2(2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    sub_1000B00B4(v4);

    return sub_1000A10AC(1);
  }
}

uint64_t sub_1000A88C8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A89B0()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);
  if (v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  sub_10009F198();

  return v3(v2);
}

uint64_t sub_1000A8A24(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100086D24((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10023FCD4(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_10023FCD0(v5, a2);
  }
}

uint64_t sub_1000A8AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100086D24((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10023FCD4(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_10008E5A4(0, &qword_1003CD2D8);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_10023FCD0(v5, v8);
  }
}

uint64_t sub_1000A8B74()
{
  sub_1000B072C();
  sub_1000B0004();
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(ACAccountStore) init];
  v3 = **(&off_1003859C0 + v1);
  v4 = [v2 ams_localiTunesAccountForAccountMediaType:v3];
  *(v0 + 152) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1000A8CE0;
  v5 = sub_1000B0500();
  *(v0 + 136) = sub_100080FB4(&qword_1003CD2C0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000A9088;
  *(v0 + 104) = &unk_1003856D0;
  *(v0 + 112) = v5;
  [v4 resultWithCompletion:v0 + 80];
  sub_1000B0718();

  return _swift_continuation_await(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000A8CE0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A8DDC()
{
  sub_10008BE9C();

  v1 = sub_1000B00C0();

  return v2(v1);
}

uint64_t sub_1000A90B4()
{
  sub_10008BE9C();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 185) = v5;
  v6 = type metadata accessor for URL.DirectoryHint();
  *(v0 + 80) = v6;
  sub_1000B046C(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = sub_1000B05D0();
  v8 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v8);
  *(v0 + 104) = sub_1000B05D0();
  v9 = type metadata accessor for URL();
  *(v0 + 112) = v9;
  sub_1000B046C(v9);
  *(v0 + 120) = v10;
  *(v0 + 128) = sub_1000B05D0();
  v11 = sub_10009F0B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000A9490()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  v5[18] = v3;
  v5[19] = v0;

  v8 = v4[16];
  v9 = v4[15];
  v10 = v4[14];
  if (v0)
  {
    (*(v9 + 8))(v8, v10);
    sub_100098AD0();
    sub_1000B0518();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    (*(v9 + 8))(v8, v10);
    v15 = swift_task_alloc();
    v5[20] = v15;
    *v15 = v7;
    v15[1] = sub_1000A965C;
    sub_1000B0518();

    return sub_1000A53AC(v16, v17);
  }
}

uint64_t sub_1000A965C()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000A9768()
{
  sub_1000B072C();
  sub_1000B0004();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  [v1 account];

  sub_10009F198();
  sub_1000B0718();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A9814()
{
  sub_100098BB4();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000A988C()
{
  sub_100098BB4();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000A990C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 144) = a2;
  *(v7 + 152) = a3;
  *(v7 + 251) = a1;
  return _swift_task_switch(sub_1000A9938, 0, 0);
}

uint64_t sub_1000A9938()
{
  sub_1000B0780();
  sub_1000B02BC();
  v1 = *(v0 + 251);
  v2 = [objc_opt_self() currentProcess];
  *(v0 + 192) = v2;
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v6 = **(&off_1003859C0 + v1);
  [v2 setAccountMediaType:v6];

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  [v2 setBundleURL:v8];

  sub_1000AF04C(v5, v4, v2);
  v10 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  *(v0 + 200) = v10;
  [v10 setClientInfo:v2];
  v11 = sub_1000B04B8();
  [v11 v12];
  if (v3)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v10 setDebugReason:v13];

  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  v14 = *(v0 + 251);
  *(v0 + 208) = qword_1003F2700;
  TaskLocal.get()();
  v15 = *(v0 + 24);
  v16 = String._bridgeToObjectiveC()();

  v17 = sub_1000B04B8();
  [v17 v18];

  if (v14 == 2)
  {
    [v10 setCanMakeAccountActive:0];
  }

  sub_1000AF0B0(v2, &selRef_proxyAppBundleID);
  if (v19)
  {
    String._bridgeToObjectiveC()();
    sub_10001E11C();
  }

  else
  {
    v15 = 0;
  }

  [v10 setProxyAppBundleID:v15];

  v20 = swift_task_alloc();
  *(v0 + 216) = v20;
  *v20 = v0;
  v20[1] = sub_1000A9B9C;
  sub_1000B0604();

  return sub_1000A10AC(v21);
}

uint64_t sub_1000A9B9C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000AA194()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t *sub_1000AA7C4(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

id sub_1000AA874(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 options:a2];

  return v4;
}

id sub_1000AA8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() actionWithTitle:v4 style:a3];

  return v5;
}

id sub_1000AA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v5 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = String._bridgeToObjectiveC()();

LABEL_6:
  v7 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 identifier:v6];

  return v7;
}

uint64_t sub_1000AA9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return _swift_task_switch(sub_1000AAA1C, 0, 0);
}

uint64_t sub_1000AAA1C()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_1000B0700();
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v3;
  v0[7] = v0 + 18;
  v0[3] = sub_1000AAB2C;
  v4 = sub_1000B0500();
  v0[17] = sub_100080FB4(&unk_1003D0C60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000F2FD8;
  v0[13] = &unk_100385860;
  v0[14] = v4;
  [v2 handleDialogRequest:v1 completionHandler:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000AAB2C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000AAC28()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [v1 selectedActionIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  sub_100098AA4();
  sub_1000B0518();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000AACB8()
{
  sub_100098BB4();
  swift_willThrow();
  sub_100098AC4();

  return v0();
}

void *sub_1000AAD1C()
{
  type metadata accessor for AccountNotificationObserver();
  v0 = swift_allocObject();
  result = sub_1000AADC8();
  qword_1003F2590 = v0;
  return result;
}

NSString sub_1000AAD58()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CD110 = result;
  return result;
}

NSString sub_1000AAD90()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CD118 = result;
  return result;
}

void *sub_1000AADC8()
{
  v1 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v1);
  sub_100089118();
  __chkstk_darwin(v2);
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for TaskPriority();
  sub_1000B0690();
  sub_100081DFC(v3, v4, v5, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_100165CBC();

  return v0;
}

uint64_t sub_1000AAEBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A7644;

  return sub_1000AB83C();
}

id *sub_1000AAF4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000AAFCC()
{
  sub_1000AAF4C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000AB014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_1000AB034, 0, 0);
}

uint64_t sub_1000AB198()
{
  sub_10008BE9C();
  sub_1000AC37C(*(v0 + 40), 0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000AB1F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{

  v5 = swift_task_localValuePush();
  a3(&v7, v5);
  if (v3)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v7;
}

uint64_t sub_1000AB2B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  sub_1001CA63C();
  v4 = __chkstk_darwin(v3);
  sub_1000AB1F4(v4, v5, a2);
}

void sub_1000AB384(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a3;
  v5 = type metadata accessor for Notification();
  sub_1000890DC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v11);
  sub_100089118();
  __chkstk_darwin(v12);
  type metadata accessor for TaskPriority();
  sub_1000B0690();
  sub_100081DFC(v13, v14, v15, v16);
  (*(v7 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a1;
  (*(v7 + 32))(&v18[v17], &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_100165CBC();
  *v21 = v19;
}

uint64_t sub_1000AB538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_1000AB558, 0, 0);
}

uint64_t sub_1000AB6BC()
{
  sub_10008BE9C();
  sub_1000AC37C(*(v0 + 40), 1);
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000AB730(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  type metadata accessor for Notification();
  sub_1000890DC();
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v7);

  v8 = sub_100093CAC();
  return v9(v8);
}

uint64_t sub_1000AB83C()
{
  sub_10008BE9C();
  v1[2] = v0;
  v2 = type metadata accessor for SKLogger();
  v1[3] = v2;
  sub_1000B01B0(v2);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  sub_1000B00B4(v3);

  return sub_1000A10AC(0);
}

uint64_t sub_1000AB90C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000ABA04()
{
  v1 = v0[8];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[2];
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v7 = v0[6];
  v8 = sub_10007EDA4(v0[3], qword_1003F26C8);
  v0[9] = v8;
  sub_10007EDDC(v8, v7);
  sub_1000AFE34();
  _StringGuts.grow(_:)(58);
  sub_1000B0328();
  sub_1000B00A8();
  v9._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v9);
  v10 = *(v5 + 112);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[6];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[6];
  if (v19)
  {
    sub_10008E688();
    v27 = sub_1000AFF64();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000B056C(v27);
    sub_1000B009C();
    v21 = sub_1000B0220();
    v24 = sub_100080210(v21, v22, v23);

    *(v15 + 14) = v24;
    sub_1000B02E0(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFFE8();
  }

  else
  {
  }

  sub_100080130(v20);
  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  sub_1000B00B4(v25);

  return sub_1000A10AC(1);
}

uint64_t sub_1000ABC6C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000ABD64()
{
  v1 = v0[11];
  v2 = [v1 ams_DSID];
  if (v2)
  {

    v3 = v1;
    v4 = v0[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  v8 = *(v7 + 120);
  *(v7 + 120) = v4;

  sub_10007EDDC(v5, v6);
  sub_1000AFE34();
  _StringGuts.grow(_:)(66);
  sub_1000B0328();
  sub_1000B00A8();
  v9._countAndFlagsBits = 0xD000000000000040;
  String.append(_:)(v9);
  v10 = *(v7 + 120);
  if (v10)
  {
    v11 = [v10 hashedDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = v0[5];
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  String.append(_:)(v16);

  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = os_log_type_enabled(v18, v17);
  v20 = v0[5];
  if (v19)
  {
    sub_10008E688();
    v27 = sub_1000AFF64();
    *v15 = 136446466;
    *(v15 + 4) = sub_1000B056C(v27);
    sub_1000B009C();
    v21 = sub_1000B0220();
    v24 = sub_100080210(v21, v22, v23);

    *(v15 + 14) = v24;
    sub_1000B02E0(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFFE8();
  }

  else
  {
  }

  sub_100080130(v20);
  v25 = swift_task_alloc();
  v0[12] = v25;
  *v25 = v0;
  sub_1000B00B4(v25);

  return sub_1000A10AC(2);
}

uint64_t sub_1000ABFA0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000AC098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_1000B026C();
  a21 = v23;
  a22 = v24;
  sub_1000B016C();
  a20 = v22;
  v25 = v22[13];
  v26 = [v25 ams_DSID];
  if (v26)
  {

    v27 = v25;
    v28 = v22[13];
  }

  else
  {
    v28 = 0;
  }

  v29 = v22[9];
  v30 = v22[4];
  v31 = v22[2];
  v32 = *(v31 + 128);
  *(v31 + 128) = v28;

  sub_10007EDDC(v29, v30);
  sub_1000AFE34();
  _StringGuts.grow(_:)(69);
  sub_1000B0328();
  sub_1000B00A8();
  v33._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v33);
  v34 = *(v31 + 128);
  if (v34)
  {
    v35 = [v34 hashedDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v41 = a10;
  v40 = a11;
  v42 = static os_log_type_t.default.getter();
  v43 = Logger.logObject.getter();
  v44 = os_log_type_enabled(v43, v42);
  v45 = v22[4];
  if (v44)
  {
    v46 = sub_10008E688();
    v47 = sub_10008E670();
    a10 = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_1000B056C(v47);
    sub_1000B04AC();
    v48 = sub_100080210(v41, v40, &a10);

    *(v46 + 14) = v48;
    sub_1000B01BC();
    sub_1000B0648(v49, v50, v51, v52);
    sub_10008BF74();
    sub_10008BF90();
    sub_1000AFF34();
  }

  else
  {
  }

  sub_100080130(v45);
  v53 = [objc_opt_self() defaultCenter];
  v56 = v53;
  if (qword_1003CBC40 != -1)
  {
    v53 = swift_once();
  }

  v57 = sub_1000B0760(v53, v54, v22[2], v55, qword_1003CD110);
  if (qword_1003CBC48 != -1)
  {
    v57 = swift_once();
  }

  v60 = v22[11];
  v61 = v22[8];
  sub_1000B0760(v57, v58, v22[2], v59, qword_1003CD118);

  sub_100098AC4();
  sub_10008E654();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

void sub_1000AC37C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = Notification.userInfo.getter();
  if (!v6 || (sub_1000F3004(v6), sub_10001E11C(), , !a1))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v15 = type metadata accessor for SKLogger();
    sub_10007EDA4(v15, qword_1003F26C8);
    sub_1000AFE34();
    _StringGuts.grow(_:)(45);
    sub_1000B0328();
    v16._countAndFlagsBits = 0xD00000000000001CLL;
    v16._object = 0x8000000100315970;
    String.append(_:)(v16);
    sub_1000B04C4(v17, v18, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v19, v20, v21, v63, v65, *(&v65 + 1), v66, v67, a2);
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0x746E756F63636120;
    v22._object = 0xEF65676E61686320;
    String.append(_:)(v22);
LABEL_36:
    v41 = *(&v65 + 1);
    v48 = v65;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v59 = v65;
    v43 = static os_log_type_t.default.getter();

    v44 = Logger.logObject.getter();

    if (os_log_type_enabled(v44, v43))
    {
      sub_10008E688();
      v64 = a2;
      v68 = sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      *&v65 = v60;
      *(&v65 + 1) = v61;
      String.append(_:)(v59);
      sub_10008E604();
      v47 = v65;
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  sub_1001DA990(0x657669746361, 0xE600000000000000, a1, &v65);
  if (v67)
  {
    sub_1000B04C4(v7, v8, v9, &type metadata for Bool, v10, v11, v12, v13, v63, v65, *(&v65 + 1), v66, v67, v68);
    if (swift_dynamicCast())
    {
      v14 = v68;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000AF25C(&v65, &unk_1003CCB70);
  }

  v14 = 0;
LABEL_11:
  sub_1001DA990(0x74756F6E676973, 0xE700000000000000, a1, &v65);

  if (!v67)
  {
    sub_1000AF25C(&v65, &unk_1003CCB70);
LABEL_27:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v49 = type metadata accessor for SKLogger();
    sub_10007EDA4(v49, qword_1003F26C8);
    sub_1000AFE34();
    _StringGuts.grow(_:)(30);
    sub_1000B0328();
    sub_1000B04C4(v50, v51, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v52, v53, v54, v63, v65, *(&v65 + 1), v66, v67, a2);
    _print_unlocked<A, B>(_:_:)();
    sub_1000B00A8();
    v55._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v55);
    if (v14)
    {
      v56 = 1702195828;
    }

    else
    {
      v56 = 0x65736C6166;
    }

    if (v14)
    {
      v57 = 0xE400000000000000;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = v57;
    String.append(_:)(*&v56);

    goto LABEL_36;
  }

  sub_1000B04C4(v23, v24, v25, &type metadata for Bool, v26, v27, v28, v29, v63, v65, *(&v65 + 1), v66, v67, v68);
  if (!swift_dynamicCast() || (v68 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v30 = type metadata accessor for SKLogger();
  sub_10007EDA4(v30, qword_1003F26C8);
  sub_1000AFE34();
  _StringGuts.grow(_:)(33);
  sub_1000B0328();
  sub_1000B04C4(v31, v32, &type metadata for AccountType, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v33, v34, v35, v63, v65, *(&v65 + 1), v66, v67, a2);
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v36._object = 0x80000001003159B0;
  String.append(_:)(v36);
  if (v14)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v14)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = v38;
  String.append(_:)(*&v37);

  v41 = *(&v65 + 1);
  v40 = v65;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v42 = v65;
  v43 = static os_log_type_t.default.getter();

  v44 = Logger.logObject.getter();

  if (!os_log_type_enabled(v44, v43))
  {
    goto LABEL_41;
  }

  sub_10008E688();
  v64 = a2;
  v68 = sub_1000B002C();
  sub_1000AFD6C(4.8752e-34);
  *&v65 = v45;
  *(&v65 + 1) = v46;
  String.append(_:)(v42);
  sub_10008E604();
  v47 = v65;
  v48 = v40;
LABEL_40:
  sub_100080210(v47, *(&v65 + 1), &v68);
  sub_10001E11C();

  *(v3 + 4) = &v65;
  *(v3 + 12) = 2082;
  v62 = sub_100080210(v48, v41, &v68);

  *(v3 + 14) = v62;
  _os_log_impl(&_mh_execute_header, v44, v43, "%{public}s%{public}s", v3, 0x16u);
  sub_1000B0048();
  sub_1000B0080();
  a2 = v64;
  sub_100081C28();

LABEL_42:

  sub_1000AC928(a2);
  sub_1000AC928(2);
}

void sub_1000AC928(uint64_t a1)
{
  v2 = v1;
  v89 = sub_100080FB4(&qword_1003CD300);
  sub_1000890DC();
  v79 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  v88 = &v77 - v6;
  v87 = sub_100080FB4(&unk_1003D30F0);
  sub_1000890DC();
  v90 = v7;
  sub_100089118();
  __chkstk_darwin(v8);
  v86 = &v77 - v9;
  if (qword_1003CBE58 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = type metadata accessor for SKLogger();
    v11 = sub_10007EDA4(v10, qword_1003F26C8);
    sub_1000B042C();
    _StringGuts.grow(_:)(31);
    v12._countAndFlagsBits = 0x676E696B63656843;
    v12._object = 0xE900000000000020;
    String.append(_:)(v12);
    LOBYTE(v97[0]) = a1;
    _print_unlocked<A, B>(_:_:)();
    sub_1000B00A8();
    v13._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v13);
    v14 = v92;
    v15 = v93;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v85 = qword_1003F2700;
    TaskLocal.get()();
    v16 = v92;
    v17 = static os_log_type_t.default.getter();

    v84 = v11;
    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      sub_10008E688();
      v91 = v2;
      v97[0] = sub_1000AFF64();
      *v2 = 136446466;
      sub_10009F0F8();
      v92 = v19;
      v93 = v20;
      v21._countAndFlagsBits = sub_1000B0220();
      String.append(_:)(v21);
      sub_10009F134();
      sub_100080210(v92, v93, v97);
      sub_1000B0494();
      *(v2 + 4) = v16;
      sub_1000B009C();
      v22 = sub_100080210(v14, v15, v97);

      *(v2 + 14) = v22;
      sub_1000B02E0(&_mh_execute_header, v18, v17, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      v2 = v91;
      sub_100081C28();
    }

    else
    {
    }

    v23 = v2[a1 + 14];
    v24 = **(&off_1003859C0 + a1);
    v25 = v23;
    v26 = v24;
    v27 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v26];

    v28 = [v27 ams_activeiTunesAccount];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 ams_accountID];
      v31 = v30 ? v30 : v29;
      v32 = v30 ? v29 : 0;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    sub_1000AD2A4(v32, a1);
    v91 = v33;

    if ((sub_1000AD314(v23, v32, a1) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    if (!*(v2[17] + 16))
    {

      goto LABEL_24;
    }

    v77 = v27;
    v78 = v25;
    sub_1000B042C();
    _StringGuts.grow(_:)(51);
    v34._countAndFlagsBits = 0x6E69796669746F4ELL;
    v34._object = 0xEA00000000002067;
    String.append(_:)(v34);
    v96 = *(v2[17] + 16);
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656E657473696C20;
    v36._object = 0xEF20726F66207372;
    String.append(_:)(v36);
    LOBYTE(v96) = a1;
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x8000000100315950;
    String.append(_:)(v37);
    v38 = v92;
    v39 = v93;
    TaskLocal.get()();
    v40 = v93;
    v81 = v92;
    v41 = static os_log_type_t.default.getter();

    v42 = Logger.logObject.getter();

    LODWORD(v84) = v41;
    v43 = os_log_type_enabled(v42, v41);
    v82 = v32;
    v83 = a1;
    if (v43)
    {
      sub_10008E688();
      v96 = sub_1000AFF64();
      *v2 = 136446466;
      sub_10009F0F8();
      v92 = v44;
      v93 = v45;
      v46._countAndFlagsBits = v81;
      v46._object = v40;
      String.append(_:)(v46);
      sub_10009F134();
      sub_100080210(v92, v93, &v96);
      sub_1000B0494();
      *(v2 + 4) = v41;
      sub_1000B009C();
      v47 = sub_100080210(v38, v39, &v96);

      *(v2 + 14) = v47;
      sub_1000B02E0(&_mh_execute_header, v42, v84, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    TaskLocal.get()();
    v63 = v2[17];
    a1 = v63 + 64;
    v64 = 1 << *(v63 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v63 + 64);
    v67 = v93;
    v84 = v92;
    v85 = v63;
    v68 = (v64 + 63) >> 6;
    v80 = v90 + 8;
    v81 = v90 + 16;
    v69 = (v79 + 8);

    v2 = 0;
    v70 = v87;
    v71 = v88;
    while (v66)
    {
      v72 = v2;
LABEL_34:
      v73 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
      v74 = v86;
      v75 = v90;
      (*(v90 + 16))(v86, *(v85 + 56) + *(v90 + 72) * (v73 | (v72 << 6)), v70);
      LOBYTE(v92) = v83;
      v93 = v82;
      v94 = v84;
      v95 = v67;
      v76 = v91;

      AsyncStream.Continuation.yield(_:)();
      (*(v75 + 8))(v74, v70);
      (*v69)(v71, v89);
    }

    while (1)
    {
      v72 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v72 >= v68)
      {

        goto LABEL_37;
      }

      v66 = *(a1 + 8 * v72);
      v2 = (v2 + 1);
      if (v66)
      {
        v2 = v72;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    sub_100081C08();
  }

  sub_1000B042C();
  _StringGuts.grow(_:)(25);
  LOBYTE(v97[0]) = a1;
  _print_unlocked<A, B>(_:_:)();
  v48._countAndFlagsBits = 0xD000000000000017;
  v48._object = 0x8000000100315930;
  String.append(_:)(v48);
  TaskLocal.get()();
  v49 = v92;
  static os_log_type_t.default.getter();
  sub_1000B04E8();

  v50 = Logger.logObject.getter();

  if (!sub_1000B04D0())
  {

LABEL_24:
    return;
  }

  v51 = sub_10008E688();
  v78 = v25;
  v52 = v51;
  v97[0] = sub_10008E670();
  *v52 = 136446466;
  sub_10009F0F8();
  v92 = v53;
  v93 = v54;
  sub_1000B0310();
  sub_10009F134();
  v55 = v93;
  sub_100080210(v92, v93, v97);
  sub_1000B02C8();
  *(v52 + 4) = v49;
  sub_1000B04AC();
  v56 = sub_100093CAC();
  sub_100080210(v56, v57, v58);
  sub_1000B07E0();
  *(v52 + 14) = v55;
  sub_1000B01BC();
  sub_1000B0648(v59, v60, v61, v62);
  sub_10008BF74();
  sub_10008BF90();
  sub_1000AFF34();

LABEL_37:
}

void sub_1000AD2A4(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = v2[15];
      v2[15] = a1;
    }

    else
    {
      v4 = v2[16];
      v2[16] = a1;
    }
  }

  else
  {
    v4 = v2[14];
    v2[14] = a1;
  }

  v3 = a1;
}

uint64_t sub_1000AD314(void *a1, void *a2, char a3)
{
  v6 = type metadata accessor for SKLogger();
  sub_100098B7C();
  v8 = __chkstk_darwin(v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v93 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v93 - v15;
  __chkstk_darwin(v14);
  v18 = &v93 - v17;
  if (!a1)
  {
    if (a2)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v23 = sub_10007EDA4(v6, qword_1003F26C8);
      sub_10007EDDC(v23, v18);
      sub_1000B01F4();
      _StringGuts.grow(_:)(46);
      sub_1000B06B4();
      sub_1000B0288("ith active account for ");
      LOBYTE(v94) = a3;
      sub_1000B07B0();
      v24._countAndFlagsBits = 0xD000000000000018;
      v24._object = 0x8000000100315890;
      String.append(_:)(v24);
      v25 = [a2 hashedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000B070C();

      sub_1000B0798();

      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC();
      }

      TaskLocal.get()();
      v27 = v95;
      v26 = v96;
      v28 = static os_log_type_t.default.getter();
      v29 = Logger.logObject.getter();
      if (os_log_type_enabled(v29, v28))
      {
        v30 = sub_10008E688();
        sub_10008E670();
        *v30 = 136446466;
        sub_10009F0F8();
        v33._countAndFlagsBits = sub_1000AFF80(v31, v32);
        v33._object = v26;
        String.append(_:)(v33);
        sub_10009F134();
        sub_1000B0340();
        sub_1000B02C8();
        *(v30 + 4) = v27;
        sub_1000B04AC();
        v34 = sub_100093CAC();
        sub_100080210(v34, v35, v36);
        sub_1000B07E0();
        *(v30 + 14) = v18;
        sub_1000B01BC();
        sub_1000B0648(v37, v38, v39, v40);
        sub_10008BF74();
        sub_10008BF90();
        sub_1000AFF34();
      }

      else
      {
      }

      v60 = v18;
      goto LABEL_59;
    }

    return 0;
  }

  if (!a2)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v41 = sub_10007EDA4(v6, qword_1003F26C8);
    sub_10007EDDC(v41, v16);
    sub_1000B01F4();
    _StringGuts.grow(_:)(48);
    sub_1000B06B4();
    sub_1000B0288("ith active account for ");
    LOBYTE(v94) = a3;
    sub_1000B07B0();
    v42._countAndFlagsBits = 0xD00000000000001ALL;
    v42._object = 0x80000001003158B0;
    String.append(_:)(v42);
    v43 = [a1 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B070C();

    sub_1000B0798();

    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v44 = v96;
    v45 = static os_log_type_t.default.getter();
    v46 = Logger.logObject.getter();
    if (os_log_type_enabled(v46, v45))
    {
      sub_10008E688();
      sub_10008BF58();
      sub_1000AFD44(4.8752e-34);
      v49._countAndFlagsBits = sub_1000AFF80(v47, v48);
      v49._object = v44;
      String.append(_:)(v49);
      sub_10009F134();
      sub_1000B0340();
      sub_1000B02C8();
      sub_10008BEC4();
      v50 = sub_100093CAC();
      sub_100080210(v50, v51, v52);
      sub_1000B07E0();
      *(v18 + 14) = v16;
      sub_1000AFFC8(&_mh_execute_header, v53, v54, "%{public}s%{public}s");
      sub_10008BF74();
      sub_10008BF90();
      sub_10008BF3C();
    }

    else
    {
    }

    v60 = v16;
    goto LABEL_59;
  }

  v19 = [a1 ams_DSID];
  v20 = [a2 ams_DSID];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_21;
    }

LABEL_28:

LABEL_29:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v61 = sub_10007EDA4(v6, qword_1003F26C8);
    sub_10007EDDC(v61, v13);
    sub_1000B01F4();
    _StringGuts.grow(_:)(40);
    sub_1000B06B4();
    sub_1000B00A8();
    v62._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v62);
    LOBYTE(v94) = a3;
    sub_1000B07B0();
    sub_1000B00A8();
    v63._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v63);
    v64 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B070C();

    sub_1000B0798();

    v66 = v95;
    v65 = v96;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v67 = v96;
    v68 = static os_log_type_t.default.getter();
    v69 = Logger.logObject.getter();
    if (os_log_type_enabled(v69, v68))
    {
      sub_10008E688();
      sub_10008BF58();
      sub_1000AFD44(4.8752e-34);
      v72._countAndFlagsBits = sub_1000AFF80(v70, v71);
      v72._object = v67;
      String.append(_:)(v72);
      sub_10009F134();
      sub_1000B0340();
      sub_1000B02C8();
      sub_10008BEC4();
      sub_100080210(v66, v65, &v94);
      sub_1000B07E0();
      *(v21 + 14) = v13;
      sub_10008C0B8(&_mh_execute_header, v73, v74, "%{public}s%{public}s");
      sub_10008BF74();
      sub_10008BF90();
      sub_10008BF3C();
    }

    else
    {
    }

    v60 = v13;
LABEL_59:
    sub_100080130(v60);
    return 1;
  }

  if (!v20)
  {
    v21 = v19;
    goto LABEL_28;
  }

  sub_10008E5A4(0, &qword_1003D0520);
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  v55 = a3;
  v56 = **(&off_1003859C0 + a3);
  v57 = [a1 ams_storefrontForMediaType:v56];

  if (v57)
  {
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v93 = 0;
    v59 = 0;
  }

  v75 = **(&off_1003859C0 + a3);
  v76 = [a2 ams_storefrontForMediaType:v75];

  if (!v76)
  {
    if (!v59)
    {
      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  if (!v59)
  {
    if (!v78)
    {
      return 0;
    }

    goto LABEL_50;
  }

  if (!v78)
  {
    goto LABEL_50;
  }

  if (v93 != v55 || v59 != v78)
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v80)
    {
      return 0;
    }

LABEL_51:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v81 = sub_10007EDA4(v6, qword_1003F26C8);
    sub_10007EDDC(v81, v10);
    sub_1000B01F4();
    _StringGuts.grow(_:)(43);
    sub_1000B06B4();
    sub_1000B0288("ith active account for ");
    LOBYTE(v94) = a3;
    sub_1000B07B0();
    v82._countAndFlagsBits = 0xD000000000000015;
    v82._object = 0x80000001003158F0;
    String.append(_:)(v82);
    v83 = [a2 hashedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B070C();

    sub_1000B0798();

    v85 = v95;
    v84 = v96;
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v86 = v96;
    v87 = static os_log_type_t.default.getter();
    v88 = Logger.logObject.getter();
    if (os_log_type_enabled(v88, v87))
    {
      sub_10008E688();
      sub_10008BF58();
      sub_1000AFD44(4.8752e-34);
      v91._countAndFlagsBits = sub_1000AFF80(v89, v90);
      v91._object = v86;
      String.append(_:)(v91);
      sub_10009F134();
      sub_1000B0340();
      sub_1000B02C8();
      sub_10008BEC4();
      sub_100080210(v85, v84, &v94);
      sub_1000B03CC();
      *(v55 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v88, v87, "%{public}s%{public}s", v55, 0x16u);
      sub_10008BF74();
      sub_10008BF90();
      sub_10008BF3C();
    }

    else
    {
    }

    v60 = v10;
    goto LABEL_59;
  }

  return 0;
}

__n128 sub_1000ADCBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000ADCC8(uint64_t a1, int a2)
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

uint64_t sub_1000ADD08(uint64_t result, int a2, int a3)
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

uint64_t sub_1000ADD80()
{
  sub_100080FB4(&qword_1003CD2A0);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_1000ADE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D30F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_100081DFC(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_100165CBC();
}

uint64_t sub_1000AE03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000AE05C, a4, 0);
}

uint64_t sub_1000AE05C()
{
  sub_10008BE9C();
  sub_1000AE240(*(v0 + 24));
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000AE0B4()
{
  sub_100080FB4(&unk_1003D30F0);
  sub_1000890DC();
  swift_unknownObjectRelease();

  v0 = sub_1000B03F4();
  v1(v0);
  v2 = sub_1000B044C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000AE170()
{
  sub_1000B072C();
  sub_1000B0004();
  v0 = sub_100080FB4(&unk_1003D30F0);
  sub_1000B01B0(v0);
  sub_1000AFF50();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000B0718();

  return sub_1000AE03C(v4, v5, v6, v7, v8);
}

uint64_t sub_1000AE240(uint64_t a1)
{
  v30 = a1;
  v1 = sub_100080FB4(&qword_1003CD2A8);
  __chkstk_darwin(v1 - 8);
  v27 = &v26 - v2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  UUID.init()();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger();
  sub_10007EDA4(v10, qword_1003F26C8);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v31 = 0xD00000000000001FLL;
  v32 = 0x80000001003152E0;
  sub_1000AEE98(&qword_1003CD2B0);
  v11 = v3;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = v31;
  v14 = v32;
  v15 = static os_log_type_t.debug.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100080210(0, 0xE000000000000000, &v31);
    *(v17 + 12) = 2082;
    v18 = sub_100080210(v13, v14, &v31);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v4 + 16);
  v19(v7, v9, v11);
  v20 = sub_100080FB4(&unk_1003D30F0);
  v21 = v27;
  (*(*(v20 - 8) + 16))(v27, v30, v20);
  sub_100081DFC(v21, 0, 1, v20);
  v22 = v29;
  swift_beginAccess();
  sub_100234EEC();
  swift_endAccess();
  v19(v7, v9, v11);
  v23 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v4 + 32))(v24 + v23, v7, v11);

  AsyncStream.Continuation.onTermination.setter();
  return (*(v4 + 8))(v9, v11);
}

uint64_t sub_1000AE6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_100081DFC(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_100165CBC();
}

uint64_t sub_1000AE874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000AE894, a4, 0);
}

uint64_t sub_1000AE894()
{
  sub_10008BE9C();
  sub_1000AE8EC(*(v0 + 24));
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000AE8EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD2A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  swift_beginAccess();
  v7 = sub_100212DC0(a1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v1 + 136);
    v11 = *(v21 + 24);
    sub_100080FB4(&qword_1003CD2B8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = v21;
    v13 = *(v21 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    v15 = *(v12 + 56);
    v16 = sub_100080FB4(&unk_1003D30F0);
    (*(*(v16 - 8) + 32))(v6, v15 + *(*(v16 - 8) + 72) * v9, v16);
    sub_1000AEE98(&qword_1003D3100);
    _NativeDictionary._delete(at:)();
    *(v2 + 136) = v12;
    v17 = v6;
    v18 = 0;
    v19 = v16;
  }

  else
  {
    v19 = sub_100080FB4(&unk_1003D30F0);
    v17 = v6;
    v18 = 1;
  }

  sub_100081DFC(v17, v18, 1, v19);
  sub_1000AF25C(v6, &qword_1003CD2A8);
  return swift_endAccess();
}

id sub_1000AEB18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = String._bridgeToObjectiveC()();

LABEL_6:
  v13 = [v7 initWithDSID:a1 altDSID:v11 username:v12 options:a6];

  return v13;
}

id sub_1000AEBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

uint64_t sub_1000AEC84()
{
  type metadata accessor for UUID();
  sub_1000890DC();

  v0 = sub_1000B03F4();
  v1(v0);
  v2 = sub_1000B044C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000AED2C()
{
  sub_1000B06A8();
  v2 = type metadata accessor for UUID();
  sub_1000B01B0(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000AE6B8(v0, v4, v5);
}

uint64_t sub_1000AED9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1000AEDD8()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000B06A8();
  v0 = type metadata accessor for UUID();
  sub_1000B01B0(v0);
  sub_1000AFF50();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000B0718();

  return sub_1000AE874(v4, v5, v6, v7, v8);
}

uint64_t sub_1000AEE98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AEEDC()
{
  swift_unknownObjectRelease();

  v0 = sub_1000B045C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000AEF14()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000AFF94(v1);

  return sub_1000AAEBC();
}

void sub_1000AEFC8(uint64_t a1, void *a2)
{
  sub_10008E5A4(0, &qword_1003CD2F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setButtonActions:isa];
}

void sub_1000AF04C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setProxyAppBundleID:v4];
}

uint64_t sub_1000AF0B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_1000AF110(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_1000AF17C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000AF1C0()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  sub_1000AFD08();
  sub_1000B0518();

  return sub_1000AA9F8(v3, v4, v5, v6, v7);
}

uint64_t sub_1000AF25C(uint64_t a1, uint64_t *a2)
{
  sub_100080FB4(a2);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000AF304()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000B06A8();
  v0 = type metadata accessor for Notification();
  sub_1000B01B0(v0);
  sub_1000AFF50();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000B0718();

  return sub_1000AB538(v4, v5, v6, v7, v8);
}

uint64_t sub_1000AF3FC(void (*a1)(void))
{
  a1(0);
  sub_1000890DC();
  swift_unknownObjectRelease();

  v1 = sub_1000B03F4();
  v2(v1);
  v3 = sub_1000B044C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000AF4B4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000B06A8();
  v0 = type metadata accessor for Notification();
  sub_1000B01B0(v0);
  sub_1000AFF50();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000B0718();

  return sub_1000AB014(v4, v5, v6, v7, v8);
}

uint64_t sub_1000AF574()
{
  _Block_release(*(v0 + 32));
  sub_1000B069C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000AF5B8()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  sub_1000B00D0();
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000AF660()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;

  return sub_1000A75B0();
}

uint64_t sub_1000AF6F4()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AF744()
{
  sub_1000B072C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_1000B00D0();
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000AF7F4()
{
  sub_100098BB4();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1000AFE54(v2);
  *v3 = v4;
  v5 = sub_1000AFF94(v3);

  return sub_1000A51D4(v5, v6, v1);
}

uint64_t sub_1000AF888()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000AF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000B0780();
  sub_1000B02BC();
  v10 = swift_task_alloc();
  v11 = sub_1000B00E0(v10);
  *v11 = v12;
  v11[1] = sub_1000AFC98;
  sub_1000B00D0();
  sub_1000B0604();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000AF994()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000B0518();

  return sub_1000A32E8(v3, v4, v5, v6, v7);
}

uint64_t sub_1000AFA30()
{
  _Block_release(*(v0 + 24));
  v1 = sub_1000B045C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000AFA60()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

uint64_t sub_1000AFB04()
{
  _Block_release(*(v0 + 24));
  v1 = sub_1000B045C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000AFB3C()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_1000B00D0();

  return v4(v3);
}

unint64_t sub_1000AFBF4()
{
  result = qword_1003CD310;
  if (!qword_1003CD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD310);
  }

  return result;
}

void sub_1000AFD54()
{
  v1[20] = sub_1000A9088;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t sub_1000AFDA4(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = _NSConcreteStackBlock;
  return result;
}

unint64_t sub_1000AFDC4(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v4 + 4) = v3;
  *(v4 + 12) = 2082;

  return sub_100080210(v1, v2, va);
}

uint64_t sub_1000AFDFC@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1000A6B88;

  return swift_continuation_init();
}

void sub_1000AFE74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1000AFE94()
{

  return _print_unlocked<A, B>(_:_:)();
}

void sub_1000AFEB4(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001ALL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000AFED8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AFF34()
{
}

uint64_t sub_1000AFF64()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AFF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 104) = a1;
  *(v4 - 96) = a2;
  *(v4 - 88) = v2;
  return v3;
}

void sub_1000AFFA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1000AFFC8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1000AFFE8()
{
}

uint64_t sub_1000B0010()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000B002C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000B0048()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000B0064()
{

  return swift_slowAlloc();
}

uint64_t sub_1000B0080()
{
}

void sub_1000B00EC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1000B012C(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000B014C(uint64_t result)
{
  *(v1 + 456) = result;
  *(v1 + 400) = _NSConcreteStackBlock;
  return result;
}

void sub_1000B0204()
{
  v1 = 8250;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_1000B0288(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;

  v2 = a1 | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000B02A4()
{
}

uint64_t sub_1000B02C8()
{
}

void sub_1000B02E0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_1000B02F8()
{
}

void sub_1000B0310()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

unint64_t sub_1000B0340()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  return sub_100080210(v2, v3, (v0 - 104));
}

BOOL sub_1000B035C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B0374()
{
}

unint64_t sub_1000B0398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100080210(v10, v9, &a9);
}

void sub_1000B03B4()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

uint64_t sub_1000B03CC()
{
}

uint64_t sub_1000B0404()
{
}

uint64_t sub_1000B047C()
{
}

uint64_t sub_1000B0494()
{
}

BOOL sub_1000B04D0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B04E8()
{
}

uint64_t sub_1000B0500()
{

  return swift_continuation_init();
}

uint64_t sub_1000B052C()
{

  return swift_willThrow();
}

unint64_t sub_1000B0550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return sub_100080210(v17, v18, &a14);
}

unint64_t sub_1000B056C(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100080210(0, 0xE000000000000000, va);
}

BOOL sub_1000B0588()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B05A0()
{
}

uint64_t sub_1000B05B8()
{

  return type metadata accessor for SKLogger();
}

uint64_t sub_1000B05D0()
{

  return swift_task_alloc();
}

void sub_1000B05E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v13 = v10;
  v14 = v11;

  String.append(_:)(*&v13);
}

uint64_t sub_1000B0630@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void sub_1000B0648(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

BOOL sub_1000B0660()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B0678()
{
}

void sub_1000B06B4()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t sub_1000B0740()
{

  return _print_unlocked<A, B>(_:_:)();
}

id sub_1000B0760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 1776);

  return [v5 v9];
}

void sub_1000B0798()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t sub_1000B07B0()
{

  return _print_unlocked<A, B>(_:_:)();
}

void sub_1000B07C8()
{
}

uint64_t sub_1000B07E0()
{
}

uint64_t sub_1000B0818()
{
  sub_100098BB4();
  *(v0 + 40) = &type metadata for StoreKitFeatureFlag;
  v1 = sub_1000B7380();
  *(v0 + 16) = 2;
  *(v0 + 48) = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100080F0C(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 56);
    type metadata accessor for TransactionCacheManager();
    sub_100080FB4(&unk_1003D2720);
    v4 = swift_allocObject();
    *(v0 + 64) = v4;
    *(v4 + 16) = xmmword_1002ED290;
    v5 = *(v3 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
    *(v4 + 32) = *(v3 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    *(v4 + 40) = v5;

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_1000B09D4;

    return sub_100108970(v4);
  }

  else
  {
    sub_10008E5A4(0, &unk_1003CE5F0);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1000B0AD0;
    v9 = *(v0 + 56);

    return sub_100148CA8(v9);
  }
}

uint64_t sub_1000B09D4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_1000B0AD0()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;
  *(v4 + 88) = v2;

  v7 = swift_task_alloc();
  *(v4 + 96) = v7;
  *v7 = v5;
  v7[1] = sub_1000B0BF0;

  return sub_100149314();
}

uint64_t sub_1000B0BF0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  return _swift_task_switch(sub_10009B934, 0, 0);
}

uint64_t sub_1000B0D64(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000B0E24;

  return sub_1000B07F8(v6);
}

uint64_t sub_1000B0E24()
{
  sub_100098BB4();
  sub_10008C070();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  sub_100098AC4();

  return v7();
}

BOOL sub_1000B0F68(uint64_t a1, void *a2)
{
  sub_10008E5A4(0, &qword_1003D2100);

  v4 = sub_1001E0FC0(a1, a2, 1);
  v6 = v4;
  if (!v4)
  {
    return 0;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 containingBundleRecord];
    if (v8)
    {
      v9 = v8;

      v6 = v9;
    }
  }

  v10 = sub_100178710();

  return v10;
}

uint64_t sub_1000B10A8(uint64_t a1, void *a2, id a3)
{
  v9 = sub_1000B68A0([a3 connection]);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v207 = v3;
  v203 = v4;
  v209 = v9;
  v12 = [a3 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v13 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v13 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_10:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v41 = type metadata accessor for SKLogger();
    sub_10007EDA4(v41, qword_1003F26C8);
    sub_1000B7D48();
    _StringGuts.grow(_:)(66);
    sub_1000B7E94();
    sub_1000B7DEC();
    String.append(_:)(v42);
    v43._countAndFlagsBits = a1;
    v43._object = a2;
    String.append(_:)(v43);
    sub_1000B7DEC();
    String.append(_:)(v44);
    v45 = [a3 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E88();

    static os_log_type_t.error.getter();
    sub_1000B7E34();

    v46 = Logger.logObject.getter();

    if (os_log_type_enabled(v46, &selRef_domain))
    {
      sub_1000B7DC8();
      v47 = swift_slowAlloc();
      sub_1000B7DBC();
      swift_slowAlloc();
      sub_1000B7EEC();
      sub_1000B7D04(4.8752e-34);
      v48._countAndFlagsBits = sub_1000B7EAC();
      String.append(_:)(v48);
      v49._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v49);
      sub_1000B7DF8(v50, v51, v52, v53, v54, v55, v56, v57, v203);
      sub_1000B02C8();
      v58 = sub_1000B7D30();
      v60 = sub_100080210(v58, v210, v59);

      *(v47 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v46, &selRef_domain, "%{public}s%{public}s", v47, 0x16u);
      sub_10008BF74();
      sub_1000B7D68();

      sub_1000B7D58();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v61 = 650;
    goto LABEL_53;
  }

  v208 = v11;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  v15 = sub_10007EDA4(v14, qword_1003F26C8);
  sub_1000B7D48();
  _StringGuts.grow(_:)(24);

  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_1000B7E68();
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = [a3 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v19._countAndFlagsBits = sub_1000B7EA0();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 544825888;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  v21._object = v208;
  v21._countAndFlagsBits = v209;
  String.append(_:)(v21);
  v22 = [a3 logKey];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static os_log_type_t.default.getter();

  v206 = v15;
  v27 = Logger.logObject.getter();

  if (os_log_type_enabled(v27, v26))
  {
    sub_1000B7DC8();
    v28 = swift_slowAlloc();
    sub_1000B7DBC();
    v211 = swift_slowAlloc();
    sub_1000B7D04(4.8752e-34);
    v29._countAndFlagsBits = v23;
    v29._object = v25;
    String.append(_:)(v29);
    v30._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v30);
    v39 = sub_1000B7DF8(v31, v32, v33, v34, v35, v36, v37, v38, v4);

    *(v28 + 4) = v39;
    *(v28 + 12) = 2082;
    v40 = sub_100080210(0x676E697265746E45, 0xE900000000000020, &v211);

    *(v28 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v27, v26, "%{public}s%{public}s", v28, 0x16u);
    sub_1000B7E58();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D58();
  }

  else
  {
  }

  v62 = v207;
  v63 = sub_1000B7ED4();
  LOBYTE(v64) = 0;
  if (!v63)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = String._bridgeToObjectiveC()();
  }

  v65 = [v207 isAppStoreSignedAppWithBundleID:v63];

  if (!v65)
  {
    if (!amfi_developer_mode_status())
    {
      sub_1000B7D48();
      _StringGuts.grow(_:)(72);
      sub_1000B7E94();
      sub_1000B7DEC();
      v137._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v137);
      v138._countAndFlagsBits = v209;
      v138._object = v208;
      String.append(_:)(v138);

      sub_1000B7DEC();
      String.append(_:)(v139);
      v148 = sub_1000B7EB8(v140, v141, v142, v143, v144, v145, v146, v147, v203, v206, a3, v207, v208, v209, 0x676E697265746E45, 0xE900000000000020);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000B7E88();

      static os_log_type_t.error.getter();
      sub_1000B7E34();

      v149 = Logger.logObject.getter();

      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000B7DC8();
        v150 = swift_slowAlloc();
        sub_1000B7DBC();
        swift_slowAlloc();
        sub_1000B7EEC();
        sub_1000B7D04(4.8752e-34);
        v151._countAndFlagsBits = sub_1000B7EAC();
        String.append(_:)(v151);
        v152._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v152);
        sub_1000B7DF8(v153, v154, v155, v156, v157, v158, v159, v160, v205);
        sub_1000B02C8();
        v161 = sub_1000B7D30();
        v163 = sub_100080210(v161, v62, v162);

        *(v150 + 14) = v163;
        sub_1000B7E14(&_mh_execute_header, v164, v165, "%{public}s%{public}s");
        sub_10008BF74();
        sub_1000B7D68();

        sub_1000B7D58();
      }

      else
      {
      }

      type metadata accessor for ASDError(0);
      v61 = 535;
      goto LABEL_53;
    }

    v98 = sub_1000B7ED4();
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102 = v209;
    if (v209 == v99 && v208 == v101)
    {
    }

    else
    {
      sub_1000B7F30();
      v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v104 & 1) == 0)
      {
        v105 = [a3 connection];
        v106 = [v105 sk_isOctanePrivileged];

        if (!v106)
        {
          sub_1000B7F30();
          v107 = String._bridgeToObjectiveC()();
          v108 = [v207 isAppStoreSignedAppWithBundleID:v107];

          if (v108)
          {
            goto LABEL_48;
          }

          v109 = [a3 connection];
          v64 = &off_1003C0000;
          v110 = [v109 sk_getTaskAllowed];

          if (!v110)
          {
            goto LABEL_48;
          }

          sub_10008E5A4(0, &qword_1003D2100);
          v111 = sub_1000B7ED4();
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          v115 = sub_1001E0FC0(v112, v114, 0);
          if (v203)
          {
            sub_1000B7D48();
            _StringGuts.grow(_:)(37);
            sub_1000B7E94();
            sub_1000B7DEC();
            String.append(_:)(v116);
            v117 = sub_1000B7ED4();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_1000B7E40();

            v118._countAndFlagsBits = sub_1000B7EA0();
            String.append(_:)(v118);

            v119._countAndFlagsBits = 8250;
            v119._object = 0xE200000000000000;
            String.append(_:)(v119);
            v211 = v203;
            sub_100080FB4(&qword_1003CCCB0);
            _print_unlocked<A, B>(_:_:)();
            v120 = [a3 logKey];
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v122 = v121;

            v123 = static os_log_type_t.error.getter();

            v124 = Logger.logObject.getter();

            if (os_log_type_enabled(v124, v123))
            {
              sub_1000B7DC8();
              v125 = swift_slowAlloc();
              sub_1000B7DBC();
              v211 = swift_slowAlloc();
              *v125 = 136446466;
              sub_10009F0F8();
              v126._countAndFlagsBits = v64;
              v126._object = v122;
              String.append(_:)(v126);
              v127._countAndFlagsBits = sub_1000B7DB0();
              String.append(_:)(v127);
              v64 = sub_1000B7DF8(v128, v129, v130, v131, v132, v133, v134, v135, 0x676E697265746E45);

              *(v125 + 4) = v64;
              *(v125 + 12) = 2082;
              v136 = sub_100080210(v203, 0xE900000000000020, &v211);

              *(v125 + 14) = v136;
              _os_log_impl(&_mh_execute_header, v124, v123, "%{public}s%{public}s", v125, 0x16u);
              sub_1000B7E58();
              swift_arrayDestroy();
              sub_1000B7D68();

              sub_1000B7D68();
            }

            else
            {
            }

            goto LABEL_48;
          }

          v179 = v115;
          v180 = [v115 sk_getTaskAllowed];

          if ((v180 & 1) == 0)
          {
LABEL_48:
            sub_1000B7D48();
            _StringGuts.grow(_:)(48);

            v182._countAndFlagsBits = sub_1000B7F30();
            String.append(_:)(v182);

            v102 = 0x8000000100315FA0;
            v178 = [a3 logKey];
            goto LABEL_49;
          }
        }
      }
    }

    v166 = [a3 connection];
    v167 = [v166 sk_getTaskAllowed];

    if ((v167 & 1) == 0)
    {
      sub_1000B7D48();
      _StringGuts.grow(_:)(52);
      sub_1000B7E94();
      sub_1000B7DEC();
      String.append(_:)(v168);
      v169._countAndFlagsBits = sub_1000B7F30();
      String.append(_:)(v169);

      v178 = sub_1000B7EB8(v170, v171, v172, v173, v174, v175, v176, v177, v203, v206, a3, v207, v208, v209, 0x676E697265746E45, 0xE900000000000020);
LABEL_49:
      v183 = v178;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000B7E88();

      static os_log_type_t.error.getter();
      sub_1000B7E34();

      v184 = Logger.logObject.getter();

      if (os_log_type_enabled(v184, v64))
      {
        sub_1000B7DC8();
        v185 = swift_slowAlloc();
        sub_1000B7DBC();
        swift_slowAlloc();
        sub_1000B7EEC();
        sub_1000B7D04(4.8752e-34);
        v186._countAndFlagsBits = sub_1000B7EAC();
        String.append(_:)(v186);
        v187._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v187);
        sub_1000B7DF8(v188, v189, v190, v191, v192, v193, v194, v195, v203);
        sub_1000B02C8();
        v196 = sub_1000B7D30();
        v198 = sub_100080210(v196, v102, v197);

        *(v185 + 14) = v198;
        sub_1000B7E14(&_mh_execute_header, v199, v200, "%{public}s%{public}s");
        sub_10008BF74();
        sub_1000B7D68();

        sub_1000B7D58();
      }

      else
      {
      }

      type metadata accessor for ASDError(0);
      v61 = 505;
      goto LABEL_53;
    }
  }

  sub_1000B7D48();
  _StringGuts.grow(_:)(81);
  sub_1000B7E94();
  sub_1000B7DEC();
  v66._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v66);
  v67 = sub_1000B7ED4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v68._countAndFlagsBits = sub_1000B7EA0();
  String.append(_:)(v68);

  sub_1000B7DEC();
  String.append(_:)(v69);
  v70._countAndFlagsBits = v209;
  v70._object = v208;
  String.append(_:)(v70);

  sub_1000B7DEC();
  String.append(_:)(v71);
  v80 = sub_1000B7EB8(v72, v73, v74, v75, v76, v77, v78, v79, v203, v206, a3, v207, v208, v209, 0x676E697265746E45, 0xE900000000000020);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E88();

  static os_log_type_t.error.getter();
  sub_1000B7E34();

  v81 = Logger.logObject.getter();

  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000B7DC8();
    v82 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    sub_1000B7EEC();
    sub_1000B7D04(4.8752e-34);
    v83._countAndFlagsBits = sub_1000B7EAC();
    String.append(_:)(v83);
    v84._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v84);
    sub_1000B7DF8(v85, v86, v87, v88, v89, v90, v91, v92, v204);
    sub_1000B02C8();
    v93 = sub_1000B7D30();
    v95 = sub_100080210(v93, v62, v94);

    *(v82 + 14) = v95;
    sub_1000B7E14(&_mh_execute_header, v96, v97, "%{public}s%{public}s");
    sub_10008BF74();
    sub_1000B7D68();

    sub_1000B7D58();
  }

  else
  {
  }

  type metadata accessor for ASDError(0);
  v61 = 950;
LABEL_53:
  v211 = v61;
  sub_1000B61D4(_swiftEmptyArrayStorage);
  sub_1000B7D98();
  sub_1000B78F0(v201, v202);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id sub_1000B1FF0(uint64_t a1, uint64_t a2)
{
  sub_1000B20E0(a1);
  v4 = String._bridgeToObjectiveC()();

  v7 = 0;
  LODWORD(a2) = [v2 validateMethodCall:v4 context:a2 error:&v7];

  if (a2)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_1000B20E0(uint64_t a1)
{
  v1 = [objc_allocWithZone(NSString) initWithUTF8String:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 description];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t sub_1000B2214(uint64_t a1, void *a2, void *a3)
{
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v6 = type metadata accessor for SKLogger();
  sub_10007EDA4(v6, qword_1003F26C8);
  v24 = 0x20676E6974697845;
  v25 = 0xE800000000000000;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8 = [a3 logKey];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static os_log_type_t.default.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    sub_1000B7DC8();
    v14 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    *v14 = 136446466;
    sub_10009F0F8();
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v18._countAndFlagsBits = v9;
    v18._object = v11;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v19);
    v20 = sub_100080210(v24, v25, &v23);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v21 = sub_100080210(0x20676E6974697845, 0xE800000000000000, &v23);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D58();

    sub_1000B7D68();
  }

  else
  {
  }
}

void sub_1000B24C0(uint64_t a1, uint64_t a2)
{
  sub_1000B20E0(a1);
  v4 = String._bridgeToObjectiveC()();

  [v2 logExitForMethod:v4 context:a2];
}

id sub_1000B25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  sub_10008E5A4(0, &qword_1003CD2E8);

  v8 = sub_1002353A8();
  v9 = String._bridgeToObjectiveC()();
  v16 = 0;
  v10 = [a5 validateMethodCall:v9 context:v8 error:&v16];

  v11 = v16;
  if (!v10)
  {
    v12 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v13 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v13);

    v14 = String._bridgeToObjectiveC()();
    [a5 logExitForMethod:v14 context:v8];

    v8 = 0;
  }

  _Block_release(a6);
  return v8;
}

void sub_1000B280C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void *))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  v48 = a6;
  _Block_copy(a6);
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000B7CCC;
  *(v15 + 24) = v12;
  v54 = sub_1000B7CC8;
  v55 = v15;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000B335C;
  v53 = &unk_100385C08;
  v16 = _Block_copy(&aBlock);

  v47 = a5;
  v17 = [a5 validateOctaneContextFor:v13 with:v14 completion:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    swift_once();
    v18 = type metadata accessor for SKLogger();
    sub_10007EDA4(v18, qword_1003F26C8);
    aBlock = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v19._countAndFlagsBits = 0xD00000000000002ALL;
    v19._object = 0x8000000100315D20;
    String.append(_:)(v19);
    v20 = [v17 bundleID];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 8250;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v49[0] = a1;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v26 = aBlock;
    v27 = v51;
    v28 = [v17 logKey];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = static os_log_type_t.error.getter();

    v33 = Logger.logObject.getter();

    if (os_log_type_enabled(v33, v32))
    {
      v46 = v32;
      v34 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v34 = 136446466;
      aBlock = 91;
      v51 = 0xE100000000000000;
      v35._countAndFlagsBits = v29;
      v35._object = v31;
      String.append(_:)(v35);
      v36._countAndFlagsBits = 8285;
      v36._object = 0xE200000000000000;
      String.append(_:)(v36);
      v37 = sub_100080210(aBlock, v51, v49);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = sub_100080210(v26, v27, v49);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v33, v46, "%{public}s%{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v43 = v48;
    swift_errorRetain();
    v44 = _convertErrorToNSError(_:)();
    v43[2](v43, v44);

    a5 = v47;
    goto LABEL_9;
  }

  if (v17)
  {
    sub_10008E5A4(0, &unk_1003CED80);
    sub_10018A674(a1, a2, v17);
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    sub_100080FB4(&unk_1003D2720);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1002ED290;
    *(v41 + 32) = a3;
    *(v41 + 40) = a4;

    v42 = Array._bridgeToObjectiveC()().super.isa;

    [a5 simulateStoreKitPushWithAction:isa forBundleIdentifiers:v42];

    v43 = v48;
    v48[2](v48, 0);
LABEL_9:
    v45 = String._bridgeToObjectiveC()();
    [a5 logExitForMethod:v45 context:v17];

    v39 = v43;
    goto LABEL_10;
  }

  v39 = a6;
LABEL_10:
  _Block_release(v39);
}

void StoreKitTestingService.saveConfigurationData(_:bundleID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  sub_1000B7E4C();
  v15 = swift_allocObject();
  v45 = a5;
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  sub_1000B7D74();
  v49 = 1107296256;
  sub_1000B7D1C();
  v50 = v16;
  v51 = &unk_100385A00;
  v17 = _Block_copy(&aBlock);

  v46 = v6;
  v18 = [v6 validateOctaneContextFor:v13 with:v14 completion:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    sub_1000B7CD0();
    swift_once();
    v19 = type metadata accessor for SKLogger();
    sub_10007EDA4(v19, qword_1003F26C8);
    sub_1000B7E78();
    _StringGuts.grow(_:)(48);
    v20._countAndFlagsBits = 0xD00000000000002ALL;
    v20._object = 0x8000000100315D20;
    String.append(_:)(v20);
    v21 = [v18 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v22._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 8250;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v47[0] = a1;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v24 = aBlock;
    v25 = v49;
    v26 = [v18 logKey];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      sub_1000B7DC8();
      v44 = v24;
      v32 = swift_slowAlloc();
      sub_1000B7DBC();
      v47[0] = swift_slowAlloc();
      *v32 = 136446466;
      sub_10009F0F8();
      aBlock = v33;
      v49 = v34;
      v35._countAndFlagsBits = v27;
      v35._object = v29;
      String.append(_:)(v35);
      v36._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v36);
      v37 = sub_100080210(aBlock, v49, v47);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = sub_100080210(v44, v25, v47);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      sub_1000B7E58();
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    v42 = v46;
    swift_errorRetain();
    v45(a1);
  }

  else
  {
    if (!v18)
    {
      return;
    }

    sub_10008E5A4(0, &unk_1003CED80);
    sub_10018A674(a1, a2, v18);
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    sub_100080FB4(&unk_1003D2720);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002ED290;
    *(v40 + 32) = a3;
    *(v40 + 40) = a4;

    v41 = Array._bridgeToObjectiveC()().super.isa;

    v42 = v6;
    [v6 simulateStoreKitPushWithAction:isa forBundleIdentifiers:v41];

    v45(0);
  }

  v43 = String._bridgeToObjectiveC()();
  [v42 logExitForMethod:v43 context:v18];
}

void sub_1000B335C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

uint64_t sub_1000B33B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B34B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, void (**a8)(void, void *))
{
  v14 = swift_allocObject();
  *(v14 + 16) = a8;
  v72 = a8;
  _Block_copy(a8);
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000B7CCC;
  *(v17 + 24) = v14;
  v78 = sub_1000B7CC8;
  v79 = v17;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_1000B335C;
  v77 = &unk_100385B90;
  v18 = _Block_copy(&aBlock);

  v71 = a7;
  v19 = [a7 validateOctaneContextFor:v15 with:v16 completion:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    swift_once();
    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    aBlock = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    v23._object = 0x8000000100315D90;
    String.append(_:)(v23);
    v24._countAndFlagsBits = a3;
    v24._object = a4;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0x20726F6620;
    v25._object = 0xE500000000000000;
    String.append(_:)(v25);
    v26 = [v16 bundleID];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v16;
    v30 = v29;

    v31._countAndFlagsBits = v27;
    v31._object = v30;
    String.append(_:)(v31);
    v20 = v28;

    v32._countAndFlagsBits = 8250;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v73[0] = a6;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v33 = aBlock;
    v34 = v75;
    v35 = [v28 logKey];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = static os_log_type_t.error.getter();

    v40 = Logger.logObject.getter();

    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v41 = 136446466;
      aBlock = 91;
      v75 = 0xE100000000000000;
      v42._countAndFlagsBits = v36;
      v42._object = v38;
      String.append(_:)(v42);
      v43._countAndFlagsBits = 8285;
      v43._object = 0xE200000000000000;
      String.append(_:)(v43);
      v44 = v39;
      v45 = sub_100080210(aBlock, v75, v73);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_100080210(v33, v34, v73);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v40, v44, "%{public}s%{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v64 = v72;
    swift_errorRetain();
    v65 = _convertErrorToNSError(_:)();
    v64[2](v64, v65);

    goto LABEL_16;
  }

  if (v19)
  {
    v20 = v19;
    v21 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v21 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_10008E5A4(0, &unk_1003CED80);
      sub_10018B51C(a1, a2, a3, a4, v19);
      v64 = v72;
      v72[2](v72, 0);
LABEL_16:
      v66 = String._bridgeToObjectiveC()();
      [v71 logExitForMethod:v66 context:v20];

      v47 = v64;
      goto LABEL_19;
    }

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for SKLogger();
    sub_10007EDA4(v48, qword_1003F26C8);
    aBlock = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    aBlock = 0xD000000000000023;
    v75 = 0x8000000100315DC0;
    v49._countAndFlagsBits = a5;
    v49._object = a6;
    String.append(_:)(v49);
    v51 = aBlock;
    v50 = v75;
    v52 = [v19 logKey];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = static os_log_type_t.error.getter();

    v57 = Logger.logObject.getter();

    if (os_log_type_enabled(v57, v56))
    {
      v58 = v53;
      v59 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v59 = 136446466;
      aBlock = 91;
      v75 = 0xE100000000000000;
      v60._countAndFlagsBits = v58;
      v60._object = v55;
      String.append(_:)(v60);
      v61._countAndFlagsBits = 8285;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      v62 = sub_100080210(aBlock, v75, v73);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2082;
      v63 = sub_100080210(v51, v50, v73);

      *(v59 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v57, v56, "%{public}s%{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v73[0] = 951;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_1000B78F0(&qword_1003CC170, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v67 = aBlock;
    v68 = _convertErrorToNSError(_:)();
    v72[2](v72, v68);

    v47 = v72;
  }

  else
  {

    v47 = v72;
  }

LABEL_19:
  _Block_release(v47);
}

void StoreKitTestingService.saveConfigurationAsset(_:fileName:bundleID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void (*a7)(void *), uint64_t a8)
{
  v9 = v8;
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  sub_1000B7E4C();
  v18 = swift_allocObject();
  v70 = a7;
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  sub_1000B7D74();
  v73 = 1107296256;
  sub_1000B7D1C();
  v74 = v19;
  v75 = &unk_100385A50;
  v20 = _Block_copy(&aBlock);

  v68 = v9;
  v21 = [v9 validateOctaneContextFor:v16 with:v17 completion:v20];

  _Block_release(v20);
  LOBYTE(a7) = swift_isEscapingClosureAtFileLocation();

  if (a7)
  {
    __break(1u);
    sub_1000B7CD0();
    swift_once();
    v23 = type metadata accessor for SKLogger();
    sub_10007EDA4(v23, qword_1003F26C8);
    sub_1000B7E78();
    _StringGuts.grow(_:)(57);
    v24._countAndFlagsBits = 0xD00000000000002CLL;
    v24._object = 0x8000000100315D90;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a3;
    v25._object = a4;
    String.append(_:)(v25);
    v26._countAndFlagsBits = sub_1000B7E68();
    v26._object = 0xE500000000000000;
    String.append(_:)(v26);
    v27 = [v21 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v28._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 8250;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    v71[0] = a6;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v30 = aBlock;
    v31 = v73;
    v32 = [v21 logKey];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = static os_log_type_t.error.getter();

    v37 = Logger.logObject.getter();

    if (os_log_type_enabled(v37, v36))
    {
      sub_1000B7DC8();
      v38 = swift_slowAlloc();
      sub_1000B7DBC();
      v71[0] = swift_slowAlloc();
      *v38 = 136446466;
      sub_10009F0F8();
      aBlock = v39;
      v73 = v40;
      v41._countAndFlagsBits = v33;
      v41._object = v35;
      String.append(_:)(v41);
      v42._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v42);
      sub_100080210(aBlock, v73, v71);

      sub_1000B7EF8();
      v44 = sub_100080210(v30, v31, v43);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s%{public}s", v38, 0x16u);
      sub_1000B7F18();
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    swift_errorRetain();
    v70(a6);

    goto LABEL_15;
  }

  if (v21)
  {
    v22 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v22 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      sub_10008E5A4(0, &unk_1003CED80);
      sub_10018B51C(a1, a2, a3, a4, v21);
      v70(0);
LABEL_15:
      v62 = String._bridgeToObjectiveC()();
      [v68 logExitForMethod:v62 context:v21];

      return;
    }

    v69 = v21;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v45 = type metadata accessor for SKLogger();
    sub_10007EDA4(v45, qword_1003F26C8);
    sub_1000B7E78();
    _StringGuts.grow(_:)(37);

    aBlock = 0xD000000000000023;
    v73 = 0x8000000100315DC0;
    v46._countAndFlagsBits = a5;
    v46._object = a6;
    String.append(_:)(v46);
    v48 = aBlock;
    v47 = v73;
    v49 = [v69 logKey];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      sub_1000B7DC8();
      v55 = swift_slowAlloc();
      sub_1000B7DBC();
      v71[0] = swift_slowAlloc();
      *v55 = 136446466;
      sub_10009F0F8();
      aBlock = v56;
      v73 = v57;
      v58._countAndFlagsBits = v50;
      v58._object = v52;
      String.append(_:)(v58);
      v59._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v59);
      sub_100080210(aBlock, v73, v71);

      sub_1000B7EF8();
      v61 = sub_100080210(v48, v47, v60);

      *(v55 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      sub_1000B7F18();
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v71[0] = 951;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_1000B7D98();
    sub_1000B78F0(v63, v64);
    _BridgedStoredNSError.init(_:userInfo:)();
    v65 = aBlock;
    v70(aBlock);
  }
}

uint64_t sub_1000B458C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
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

uint64_t sub_1000B46A8(char a1)
{
  if (!a1)
  {
    return 0x4449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x5255656C646E7562;
  }

  return 0x4E79616C70736964;
}

uint64_t sub_1000B470C(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CD3F8);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1000B789C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    _s9OctaneAppVMa();
    v12[14] = 1;
    type metadata accessor for URL();
    sub_1000B7DD4();
    sub_1000B78F0(v9, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000B48D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  sub_100080FB4(&qword_1003CD410);
  sub_1000890DC();
  v30 = v9;
  v31 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  v11 = _s9OctaneAppVMa();
  sub_100098B7C();
  __chkstk_darwin(v12);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100086D24(a1, a1[3]);
  sub_1000B789C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v34 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v15;
  v27[1] = v15;
  v28 = v14;
  type metadata accessor for URL();
  v33 = 1;
  sub_1000B7DD4();
  sub_1000B78F0(v16, v17);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B71B8(v7, v28 + *(v11 + 20));
  v32 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v21 = sub_1000B7F0C();
  v22(v21, v31);
  v24 = v28;
  v23 = v29;
  v25 = (v28 + *(v11 + 24));
  *v25 = v18;
  v25[1] = v20;
  sub_1000B7938(v24, v23, _s9OctaneAppVMa);
  sub_100080F0C(a1);
  return sub_1000B7998(v24, _s9OctaneAppVMa);
}

uint64_t sub_1000B4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B458C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B4C60(uint64_t a1)
{
  v2 = sub_1000B789C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4C9C(uint64_t a1)
{
  v2 = sub_1000B789C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4D08()
{
  v2 = sub_1000B4DF4();
  if (!v1)
  {
    if (v2[2])
    {
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      dispatch thunk of PropertyListEncoder.outputFormat.setter();
      sub_100080FB4(&qword_1003CD318);
      sub_1000B6730();
      v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    }

    else
    {

      return 0;
    }
  }

  return v0;
}

void *sub_1000B4DF4()
{
  v0 = type metadata accessor for URL();
  sub_1000890DC();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 sk_octanePersistedDataURL];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v8, v6, v0);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v23 = 0;
    v15 = sub_1000B6910(v13, _swiftEmptyArrayStorage, 0, &v23, v9);

    v16 = v23;
    if (v15)
    {
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v16;

      v19 = swift_allocObject();
      v19[2] = sub_1000B5188;
      v19[3] = 0;
      v19[4] = v17;
      v19[5] = sub_1000B515C;
      v19[6] = 0;

      v21 = sub_1000B69A4(v20, sub_1000B71AC);
    }

    else
    {
      v21 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v2 + 8))(v8, v0);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_1000B515C@<X0>(uint64_t *a1@<X8>)
{
  result = URL.lastPathComponent.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B5188@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = *a1;
  v8 = a1[1];
  sub_10008E5A4(0, &qword_1003D2100);

  v9 = sub_1001E0FC0(v7, v8, 0);
  v13 = v9;
  if (v9)
  {

    v14 = [v13 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for URL();
    sub_100081DFC(v6, 0, 1, v15);
    v16 = [v13 localizedName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v17;
  }

  else
  {
    v10 = type metadata accessor for URL();
    sub_100081DFC(v6, 1, 1, v10);

    v11 = 0;
    v12 = 0;
  }

  *a2 = v7;
  a2[1] = v8;
  v18 = _s9OctaneAppVMa();
  result = sub_1000B71B8(v6, a2 + *(v18 + 20));
  v20 = (a2 + *(v18 + 24));
  *v20 = v11;
  v20[1] = v12;
  return result;
}

uint64_t StoreKitTestingService.sendPurchaseIntent(for:bundleID:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v61 = a1;
  v62 = a2;
  v11 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v11);
  sub_100089118();
  __chkstk_darwin(v12);
  v68 = &v61 - v13;
  v14 = type metadata accessor for PurchaseIntentInternal();
  sub_1000890DC();
  v63 = v15;
  v17 = __chkstk_darwin(v16);
  v64 = v18;
  v65 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = (&v61 - v19);
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  sub_1000B7E4C();
  v23 = swift_allocObject();
  v66 = a5;
  v67 = a6;
  v23[2] = a5;
  v23[3] = a6;
  v75 = sub_1000B7CC8;
  v76 = v23;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  sub_1000B7D1C();
  v73 = v24;
  v74 = &unk_100385AA0;
  v25 = _Block_copy(&aBlock);

  v69 = v6;
  v26 = [v6 validateOctaneContextFor:v21 with:v22 completion:v25];

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    sub_1000B7CD0();
    swift_once();
    goto LABEL_4;
  }

  if (!v26)
  {
    return result;
  }

  Date.init()();
  *v20 = 0;
  v20[1] = 0;
  v20[2] = a3;
  v20[3] = a4;
  isEscapingClosureAtFileLocation = v61;
  v23 = v62;
  v20[4] = v61;
  v20[5] = v23;
  v20[6] = 0;
  v20[7] = 0;
  v29 = (v20 + *(v14 + 36));
  *v29 = 0;
  v29[1] = 0;
  v30 = qword_1003CBE58;

  if (v30 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v31 = type metadata accessor for SKLogger();
  sub_10007EDA4(v31, qword_1003F26C8);
  aBlock = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  aBlock = 0xD000000000000018;
  v72 = 0x8000000100315E20;
  v32._countAndFlagsBits = isEscapingClosureAtFileLocation;
  v32._object = v23;
  String.append(_:)(v32);
  v33._countAndFlagsBits = sub_1000B7E68();
  v33._object = 0xE500000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a3;
  v34._object = a4;
  String.append(_:)(v34);
  v35 = aBlock;
  v36 = v72;
  v62 = v26;
  v37 = [v26 logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E88();

  v38 = static os_log_type_t.debug.getter();

  v39 = Logger.logObject.getter();

  if (os_log_type_enabled(v39, v38))
  {
    sub_1000B7DC8();
    v40 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    v61 = v35;
    *v40 = 136446466;
    sub_10009F0F8();
    v70 = v41;
    aBlock = v42;
    v72 = v43;
    v44._countAndFlagsBits = sub_1000B7EAC();
    String.append(_:)(v44);
    v45._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v45);
    v46 = sub_100080210(aBlock, v72, &v70);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v47 = sub_100080210(v61, v36, &v70);

    *(v40 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v39, v38, "%{public}s%{public}s", v40, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  v48 = type metadata accessor for TaskPriority();
  v49 = v68;
  sub_100081DFC(v68, 1, 1, v48);
  v50 = v65;
  sub_1000B7938(v20, v65, type metadata accessor for PurchaseIntentInternal);
  v51 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v55 = v62;
  v54[4] = v62;
  sub_1000B7228(v50, v54 + v51, type metadata accessor for PurchaseIntentInternal);
  v56 = (v54 + v52);
  v57 = v67;
  *v56 = v66;
  v56[1] = v57;
  v58 = v69;
  *(v54 + v53) = v69;
  v59 = v55;

  v60 = v58;
  sub_1000B5BC0(0, 0, v49, &unk_1002EDE20, v54);

  sub_1000AF25C(v49, &unk_1003CE2B0);
  return sub_1000B7998(v20, type metadata accessor for PurchaseIntentInternal);
}

uint64_t sub_1000B5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000B5938, 0, 0);
}

uint64_t sub_1000B5938()
{
  sub_100098BB4();
  v1 = [*(v0 + 16) logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000B5A0C;

  return sub_10013CECC();
}

uint64_t sub_1000B5A0C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  return _swift_task_switch(sub_1000B5B14, 0, 0);
}

uint64_t sub_1000B5B14()
{
  sub_100098BB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  (*(v0 + 32))(0);
  v3 = String._bridgeToObjectiveC()();
  [v1 logExitForMethod:v3 context:v2];

  sub_100098AC4();

  return v4();
}

uint64_t sub_1000B5BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  sub_1000B75B8(a3, v24 - v11, &unk_1003CE2B0);
  v13 = type metadata accessor for TaskPriority();
  sub_100081D0C(v12, 1, v13);
  sub_1000B7E34();

  if (&unk_1003CE2B0 == 1)
  {
    sub_1000AF25C(v12, &unk_1003CE2B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      sub_1000B7E4C();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      sub_1000B7F18();
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000B7E4C();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  sub_1000B7F18();
  return swift_task_create();
}

uint64_t sub_1000B5E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  sub_1000B75B8(a3, v24 - v11, &unk_1003CE2B0);
  v13 = type metadata accessor for TaskPriority();
  sub_100081D0C(v12, 1, v13);
  sub_1000B7E34();

  if (&unk_1003CE2B0 == 1)
  {
    sub_1000AF25C(v12, &unk_1003CE2B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      sub_1000B7E4C();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100080FB4(&qword_1003CD340);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000B7E4C();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_100080FB4(&qword_1003CD340);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1000B61D4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100080FB4(&qword_1003CE650);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1000B75B8(v6, &v15, &qword_1003CD348);
    v7 = v15;
    v8 = v16;
    result = sub_1000B6328(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10008B5D0(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000B6328(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000B63A0(a1, a2, v4);
}

unint64_t sub_1000B63A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000B6454()
{
  v1 = (type metadata accessor for PurchaseIntentInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[10];
  type metadata accessor for Date();
  sub_100098B7C();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000B659C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PurchaseIntentInternal() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000AFC98;

  return sub_1000B5910(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_1000B66F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B6730()
{
  result = qword_1003CD320;
  if (!qword_1003CD320)
  {
    sub_1000852D4(&qword_1003CD318);
    sub_1000B78F0(&qword_1003CD328, _s9OctaneAppVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CD320);
  }

  return result;
}

uint64_t _s9OctaneAppVMa()
{
  result = qword_1003CD3A8;
  if (!qword_1003CD3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6830(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr))
{
  a5(&v7);
  a2(&v7);
}

uint64_t sub_1000B68A0(void *a1)
{
  v2 = [a1 sk_clientID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000B6910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];

  return v10;
}

uint64_t sub_1000B69A4(uint64_t a1, void (*a2)(char *))
{
  v75 = a2;
  v3 = type metadata accessor for URL();
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v74 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080FB4(&unk_1003D0540);
  v6 = __chkstk_darwin(v5 - 8);
  v78 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v77 = (v66 - v9);
  v10 = __chkstk_darwin(v8);
  v12 = v66 - v11;
  __chkstk_darwin(v10);
  v14 = v66 - v13;
  v15 = sub_100080FB4(&qword_1003CD330);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v66 - v19;
  v20 = _s9OctaneAppVMa();
  v21 = *(v20 - 1);
  result = __chkstk_darwin(v20);
  v73 = a1;
  v24 = *(a1 + 16);
  v69 = v14;
  v70 = v12;
  v81 = v24;
  v82 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v21;
  if (v24)
  {
    sub_100080FB4(&qword_1003CD338);
    v25 = *(v21 + 72);
    v26 = *(v21 + 80);
    v27 = (v26 + 32) & ~v26;
    v66[0] = v26;
    v28 = swift_allocObject();
    result = j__malloc_size(v28);
    if (!v25)
    {
      goto LABEL_64;
    }

    if (result - v27 != 0x8000000000000000 || v25 != -1)
    {
      v30 = 0;
      v31 = (result - v27) / v25;
      v32 = v28 + v27;
      v33 = v76;
      v66[1] = v76 + 16;
      v24 = v81;
      v28[2] = v81;
      v28[3] = 2 * v31;
      v68 = (v33 + 32);
      v67 = (v33 + 8);
      v34 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v24;
      v35 = v24;
      v71 = v25;
      v72 = v20;
      while (1)
      {
        if (v30 == v24)
        {
          v36 = 1;
          v30 = v24;
        }

        else
        {
          if (v30 >= v24)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            break;
          }

          result = (*(v76 + 16))(v77, v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v30, v3);
          v37 = __OFADD__(v30++, 1);
          if (v37)
          {
            goto LABEL_62;
          }

          v36 = 0;
        }

        v38 = 1;
        v39 = v77;
        sub_100081DFC(v77, v36, 1, v3);
        v40 = v39;
        v41 = v78;
        sub_1000B71B8(v40, v78);
        if (sub_100081D0C(v41, 1, v3) != 1)
        {
          v42 = v74;
          (*v68)(v74, v78, v3);
          v75(v42);
          (*v67)(v42, v3);
          v38 = 0;
        }

        v20 = v72;
        sub_100081DFC(v18, v38, 1, v72);
        result = sub_100081D0C(v18, 1, v20);
        if (result == 1)
        {
          goto LABEL_67;
        }

        result = sub_1000B7228(v18, v32, _s9OctaneAppVMa);
        v32 += v71;
        --v35;
        v24 = v81;
        if (!v35)
        {
          v14 = v69;
          v12 = v70;
          v43 = v66[0];
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {
    v34 = 0;
    v30 = 0;
    v44 = *(v21 + 80);
    v28 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage + ((v44 + 32) & ~v44);
    v43 = v44;
LABEL_19:
    v71 = v76 + 16;
    v77 = (v76 + 32);
    v72 = (v76 + 8);
    v68 = v43;
    v78 = (v43 + 32) & ~v43;
    while (1)
    {
      if (v30 == v24)
      {
        v45 = 1;
        v30 = v24;
      }

      else
      {
        if (v30 >= v24)
        {
          goto LABEL_57;
        }

        result = (*(v76 + 16))(v14, v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v30, v3);
        v37 = __OFADD__(v30++, 1);
        if (v37)
        {
          goto LABEL_58;
        }

        v45 = 0;
      }

      v46 = 1;
      sub_100081DFC(v14, v45, 1, v3);
      sub_1000B71B8(v14, v12);
      if (sub_100081D0C(v12, 1, v3) != 1)
      {
        v47 = v74;
        (*v77)(v74, v12, v3);
        v75(v47);
        (*v72)(v47, v3);
        v46 = 0;
      }

      v48 = v46;
      v49 = v80;
      sub_100081DFC(v80, v48, 1, v20);
      if (sub_100081D0C(v49, 1, v20) == 1)
      {
        break;
      }

      result = sub_1000B7228(v49, v82, _s9OctaneAppVMa);
      if (v34)
      {
        v50 = v28;
      }

      else
      {
        v51 = v28[3];
        if (((v51 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_59;
        }

        v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
        if (v52 <= 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = v52;
        }

        sub_100080FB4(&qword_1003CD338);
        v54 = v78;
        v55 = *(v79 + 72);
        v50 = swift_allocObject();
        result = j__malloc_size(v50);
        if (!v55)
        {
          goto LABEL_60;
        }

        v56 = result - v54;
        if (result - v54 == 0x8000000000000000 && v55 == -1)
        {
          goto LABEL_63;
        }

        v58 = v56 / v55;
        v50[2] = v53;
        v50[3] = 2 * (v56 / v55);
        v59 = v50 + v54;
        v60 = v28[3];
        v61 = (v60 >> 1) * v55;
        if (v28[2])
        {
          if (v50 < v28 || v59 >= v28 + v78 + v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v50 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28[2] = 0;
        }

        v32 = (v59 + v61);
        v34 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - (v60 >> 1);

        v14 = v69;
        v12 = v70;
      }

      v37 = __OFSUB__(v34--, 1);
      if (v37)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      result = sub_1000B7228(v82, v32, _s9OctaneAppVMa);
      v32 += *(v79 + 72);
      v28 = v50;
      v24 = v81;
    }

    result = sub_1000AF25C(v49, &qword_1003CD330);
    v63 = v28[3];
    if (v63 >= 2)
    {
      v64 = v63 >> 1;
      v37 = __OFSUB__(v64, v34);
      v65 = v64 - v34;
      if (v37)
      {
        goto LABEL_65;
      }

      v28[2] = v65;
    }

    return v28;
  }

  return result;
}