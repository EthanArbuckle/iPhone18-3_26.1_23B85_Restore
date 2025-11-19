unint64_t sub_100FD2AE0()
{
  result = qword_101A26780;
  if (!qword_101A26780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26780);
  }

  return result;
}

unint64_t sub_100FD2B34()
{
  result = qword_101A26788;
  if (!qword_101A26788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26788);
  }

  return result;
}

unint64_t sub_100FD2B88()
{
  result = qword_101A26790;
  if (!qword_101A26790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26790);
  }

  return result;
}

unint64_t sub_100FD2BDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018775E8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FD2C28(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00858);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27[-1] - v5;
  sub_100020E58(a1, a1[3]);
  sub_100FD31AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_12;
  }

  LOBYTE(v27[0]) = 2;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v8)
  {
    if (v7 == 0xD000000000000039 && v8 == 0x80000001015898F0)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
        swift_willThrow();
LABEL_11:
        (*(v4 + 8))(v6, v3);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v27, v27[3]);
        v12 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
        if (v12 == 0x7468676961727473 && v13 == 0xE800000000000000)
        {

LABEL_18:
          sub_100005070(v27);
          v15 = 0;
          goto LABEL_13;
        }

        v15 = v13;
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_18;
        }

        sub_100005070(v27);
LABEL_25:
        sub_1007C8648();
        swift_allocError();
        *v19 = xmmword_101478600;
        *(v19 + 16) = 0;
        swift_willThrow();
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v28 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v27[0];
  if (v27[0])
  {
    if (qword_1019F27D0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ConnectionLine.LineType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v17[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v18 = xmmword_101463530;
      *(v18 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v20 = dispatch thunk of Decoder.userInfo.getter();
  v15 = sub_1007B8B54(0, v20, 0, 0);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_13;
  }

  sub_100020E58(a1, a1[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  v15 = sub_1007B8B54(1, v23, 0, 0);
  v25 = v24;
  (*(v4 + 8))(v6, v3);

  if (v25)
  {
    goto LABEL_25;
  }

LABEL_13:
  sub_100005070(a1);
  return v15;
}

unint64_t sub_100FD31AC()
{
  result = qword_101A267A0;
  if (!qword_101A267A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267A0);
  }

  return result;
}

uint64_t sub_100FD3200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A267A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FD3270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A267A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100FD32E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877668, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FD332C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for CodingUserInfoKey();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_1005B981C(&qword_101A00848);
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = a1[3];
  v54 = a1;
  sub_100020E58(a1, v17);
  sub_100FD3DD4();
  v18 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v22 = v54;
    return sub_100005070(v22);
  }

  v47 = v7;
  v48 = v13;
  v46 = v10;
  v53 = v8;
  v19 = v51;
  LOBYTE(v60) = 4;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v54;
  if (v21)
  {
    if (v20 == 0xD000000000000033 && v21 == 0x8000000101589930)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v27[1] = 0;
        v27[2] = 0;
        *v27 = 0;
        swift_willThrow();
LABEL_14:
        (*(v52 + 8))(v16, v14);
        v22 = v24;
        return sub_100005070(v22);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v55) = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v60;
  if (*&v60 != 0.0)
  {
    if (qword_1019F27D8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ConnectionLine.End.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v28[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v29 = xmmword_101463530;
      *(v29 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v24, v24[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  v31 = sub_1007B8B98(0, v30, 0, 0);
  v33 = v32;
  v44 = v34;
  v45 = v31;

  v72 = v33 & 1;
  sub_100020E58(v24, v24[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v55) = 1;
  sub_100B2BACC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v16;

  if (v60 == 11)
  {
    v36 = 6;
  }

  else
  {
    v36 = v60;
  }

  sub_100020E58(v24, v24[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v55) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  if (v61)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = *&v60;
  }

  sub_100020E58(v24, v24[3]);
  v38 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B8BDC(3, v38, 0, &v73);
  (*(v52 + 8))(v35, v14);

  v39 = v45;
  *&v55 = v45;
  v40 = v44;
  *(&v55 + 1) = v44;
  v41 = v72;
  LOBYTE(v56) = v72;
  BYTE1(v56) = v36;
  *(&v56 + 2) = v70;
  WORD3(v56) = v71;
  *(&v56 + 1) = v37;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  sub_10098E944(&v55, &v60);
  sub_100005070(v24);
  v60 = v39;
  v61 = v40;
  v62 = v41;
  v63 = v36;
  v64 = v70;
  v65 = v71;
  v66 = v37;
  v67 = v73;
  v68 = v74;
  v69 = v75;
  result = sub_10098E9A0(&v60);
  v42 = v58;
  *(v19 + 32) = v57;
  *(v19 + 48) = v42;
  *(v19 + 64) = v59;
  v43 = v56;
  *v19 = v55;
  *(v19 + 16) = v43;
  return result;
}

unint64_t sub_100FD3DD4()
{
  result = qword_101A267B8;
  if (!qword_101A267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267B8);
  }

  return result;
}

unint64_t sub_100FD3E28()
{
  result = qword_101A267C0;
  if (!qword_101A267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267C0);
  }

  return result;
}

unint64_t sub_100FD3E7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877718, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FD3EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A00840);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = a1[3];
  v40 = a1;
  sub_100020E58(a1, v11);
  sub_100FD4590();
  v12 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    v13 = v40;
    return sub_100005070(v13);
  }

  v36 = v6;
  v39 = v8;
  LOBYTE(v41) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v40;
  if (v15)
  {
    if (v14 == 0xD00000000000003ALL && v15 == 0x8000000101589970)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v19[1] = 0;
        v19[2] = 0;
        *v19 = 0;
        swift_willThrow();
LABEL_12:
        (*(v39 + 8))(v10, v7);
        v13 = v16;
        return sub_100005070(v13);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v44 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v41;
  if (v41)
  {
    if (qword_1019F27E0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ConnectionLine.End.Anchor.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v21[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v22 = xmmword_101463530;
      *(v22 + 16) = 0;
      swift_willThrow();

      goto LABEL_12;
    }

    v23 = v10;
  }

  else
  {
    v23 = v10;
  }

  sub_100020E58(v16, v16[3]);
  v24 = dispatch thunk of Decoder.userInfo.getter();
  v33 = sub_1007C0ED4(0, v24, 0, 0, 0, 0);
  v34 = v25;

  v26 = v16[3];
  v35 = v23;
  sub_100020E58(v16, v26);
  dispatch thunk of Decoder.userInfo.getter();
  v44 = 1;
  sub_100FD5438();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  if (v43 == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = v41;
  }

  if (v43 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = v42;
  }

  if (v43 == 255)
  {
    v29 = 2;
  }

  else
  {
    v29 = v43;
  }

  v30 = v38;
  (*(v39 + 8))(v35, v7);
  result = sub_100005070(v40);
  v31 = v34;
  *v30 = v33;
  *(v30 + 8) = v31;
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;
  *(v30 + 32) = v29;
  return result;
}

unint64_t sub_100FD4590()
{
  result = qword_101A267D0;
  if (!qword_101A267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267D0);
  }

  return result;
}

unint64_t sub_100FD45E4()
{
  result = qword_101A267D8;
  if (!qword_101A267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267D8);
  }

  return result;
}

unint64_t sub_100FD4638(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877798, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FD4684(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00830);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29[-1] - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_100FD4D80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
LABEL_12:
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    sub_100020E58(v29, v29[3]);
    v13 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v16 = v13;
    v17 = v14;
    if (v13 == 0x7265746E6563 && v14 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100005070(v29);
      v7 = 0;
      goto LABEL_13;
    }

    if (v16 == 1953718629 && v17 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100005070(v29);
      v7 = 1;
      goto LABEL_13;
    }

    if (v16 == 0x6874726F6ELL && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100005070(v29);
      v7 = 2;
      goto LABEL_13;
    }

    if (v16 == 0x6874756F73 && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100005070(v29);
      v7 = 3;
      goto LABEL_13;
    }

    if (v16 == 1953719671 && v17 == 0xE400000000000000)
    {

LABEL_46:
      sub_100005070(v29);
      v7 = 4;
      goto LABEL_13;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_46;
    }

    sub_100005070(v29);
LABEL_40:
    sub_1007C8648();
    swift_allocError();
    *v26 = xmmword_101478600;
    *(v26 + 16) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  LOBYTE(v29[0]) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000041 && v9 == 0x80000001015899B0)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
        swift_willThrow();
LABEL_11:
        (*(v4 + 8))(v6, v3);
        goto LABEL_12;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v30 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v29[0];
  if (v29[0])
  {
    if (qword_1019F27E8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v18[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v19 = xmmword_101463530;
      *(v19 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v20 = dispatch thunk of Decoder.userInfo.getter();
  v7 = sub_1007B8ED0(0, v20, 0, 0);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_13;
  }

  sub_100020E58(a1, a1[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  v7 = sub_1007B8ED0(1, v23, 0, 0);
  v25 = v24;
  (*(v4 + 8))(v6, v3);

  if (v25)
  {
    goto LABEL_40;
  }

LABEL_13:
  sub_100005070(a1);
  return v7;
}

unint64_t sub_100FD4D80()
{
  result = qword_101A267E8;
  if (!qword_101A267E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267E8);
  }

  return result;
}

unint64_t sub_100FD4DD4(uint64_t a1)
{
  result = sub_100FD4DFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100FD4DFC()
{
  result = qword_101A267F0;
  if (!qword_101A267F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267F0);
  }

  return result;
}

unint64_t sub_100FD4E50(uint64_t a1)
{
  result = sub_100B1110C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100FD4EB8()
{
  result = qword_101A267F8;
  if (!qword_101A267F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A267F8);
  }

  return result;
}

unint64_t sub_100FD4F38()
{
  result = qword_101A26800;
  if (!qword_101A26800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26800);
  }

  return result;
}

unint64_t sub_100FD4F8C()
{
  result = qword_101A26808;
  if (!qword_101A26808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26808);
  }

  return result;
}

unint64_t sub_100FD5020()
{
  result = qword_101A26810;
  if (!qword_101A26810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26810);
  }

  return result;
}

unint64_t sub_100FD5074()
{
  result = qword_101A26818;
  if (!qword_101A26818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26818);
  }

  return result;
}

unint64_t sub_100FD50C8(uint64_t a1)
{
  result = sub_100B11064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100FD5130()
{
  result = qword_101A26820;
  if (!qword_101A26820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26820);
  }

  return result;
}

unint64_t sub_100FD5184()
{
  result = qword_101A26828;
  if (!qword_101A26828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26828);
  }

  return result;
}

unint64_t sub_100FD51D8(uint64_t a1)
{
  result = sub_100B11010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100FD5240()
{
  result = qword_101A26830;
  if (!qword_101A26830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26830);
  }

  return result;
}

uint64_t sub_100FD52C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100FD52FC()
{
  result = qword_101A26838;
  if (!qword_101A26838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26838);
  }

  return result;
}

unint64_t sub_100FD5350()
{
  result = qword_101A26840;
  if (!qword_101A26840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26840);
  }

  return result;
}

uint64_t sub_100FD53E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100FD5438()
{
  result = qword_101A26848;
  if (!qword_101A26848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26848);
  }

  return result;
}

unint64_t sub_100FD548C()
{
  result = qword_101A26850;
  if (!qword_101A26850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26850);
  }

  return result;
}

uint64_t sub_100FD54E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 281);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100FD5530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 248) = 0u;
      result += 248;
      *(result + 16) = 0u;
      *(result + 32) = -a2 << 8;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100FD5608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100FD5664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_100FD5750()
{
  result = qword_101A26858;
  if (!qword_101A26858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26858);
  }

  return result;
}

unint64_t sub_100FD57A8()
{
  result = qword_101A26860;
  if (!qword_101A26860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26860);
  }

  return result;
}

unint64_t sub_100FD5800()
{
  result = qword_101A26868;
  if (!qword_101A26868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26868);
  }

  return result;
}

unint64_t sub_100FD5858()
{
  result = qword_101A26870;
  if (!qword_101A26870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26870);
  }

  return result;
}

unint64_t sub_100FD58B0()
{
  result = qword_101A26878;
  if (!qword_101A26878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26878);
  }

  return result;
}

unint64_t sub_100FD5908()
{
  result = qword_101A26880;
  if (!qword_101A26880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26880);
  }

  return result;
}

unint64_t sub_100FD5960()
{
  result = qword_101A26888;
  if (!qword_101A26888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26888);
  }

  return result;
}

unint64_t sub_100FD59B8()
{
  result = qword_101A26890;
  if (!qword_101A26890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26890);
  }

  return result;
}

unint64_t sub_100FD5A10()
{
  result = qword_101A26898;
  if (!qword_101A26898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26898);
  }

  return result;
}

unint64_t sub_100FD5A68()
{
  result = qword_101A268A0;
  if (!qword_101A268A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268A0);
  }

  return result;
}

unint64_t sub_100FD5AC0()
{
  result = qword_101A268A8;
  if (!qword_101A268A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268A8);
  }

  return result;
}

unint64_t sub_100FD5B18()
{
  result = qword_101A268B0;
  if (!qword_101A268B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268B0);
  }

  return result;
}

unint64_t sub_100FD5B70()
{
  result = qword_101A268B8;
  if (!qword_101A268B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268B8);
  }

  return result;
}

unint64_t sub_100FD5BC8()
{
  result = qword_101A268C0;
  if (!qword_101A268C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268C0);
  }

  return result;
}

unint64_t sub_100FD5C20()
{
  result = qword_101A268C8;
  if (!qword_101A268C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A268C8);
  }

  return result;
}

uint64_t CRLLinkViewHostingRep.crlaxLabel.getter()
{
  CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(0);
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v0 = BidirectionalCollection<>.joined(separator:)();

  return v0;
}

char *CRLLinkViewHostingRep.getAccessibilityLabelTokens(forUserInput:)(char a1)
{
  v2 = v1;
  v53 = _swiftEmptyArrayStorage;
  CRLLinkViewHostingRep.item.getter();
  type metadata accessor for CRLBoardItem(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v52 = (*((swift_isaMask & *v4) + 0xD0))();
  v7 = v6;
  v8 = CRLLinkViewHostingRep.embeddedLabelStringsFromLinkView()();
  v9 = *(v8 + 2);
  if (v9)
  {
    v49 = a1;
    v50 = v7;
    v51 = v5;
    v10 = v8;
    sub_100034080(0, v9, 0);
    sub_100017CD8();
    v11 = v10 + 40;
    do
    {
      v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v14 = v13;
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100034080((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += 16;
      --v9;
    }

    while (v9);

    v7 = v50;
    v5 = v51;
    if (v49)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (a1)
    {
LABEL_8:
      sub_100798D48(_swiftEmptyArrayStorage);
      v18 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100024CBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100024CBC((v23 > 1), v24 + 1, 1, v18);
        v18 = isUniquelyReferenced_nonNull_native;
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v52;
      *(v25 + 5) = v7;
      v53 = v18;
      goto LABEL_17;
    }
  }

  v26 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_100024CBC((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[16 * v28];
  *(v29 + 4) = v52;
  *(v29 + 5) = v7;
  v53 = v26;
  isUniquelyReferenced_nonNull_native = sub_100798D48(_swiftEmptyArrayStorage);
LABEL_17:
  v30 = (*((swift_isaMask & *v5) + 0x1B0))(isUniquelyReferenced_nonNull_native, v20, v21, v22);
  v32 = v31;
  if (String.count.getter() < 1)
  {

LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v33 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100024CBC(0, *(v53 + 2) + 1, 1, v53);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_100024CBC((v34 > 1), v35 + 1, 1, v33);
  }

  swift_unknownObjectRelease();
  *(v33 + 2) = v35 + 1;
  v36 = &v33[16 * v35];
  *(v36 + 4) = v30;
  *(v36 + 5) = v32;
  v53 = v33;
LABEL_25:
  if ((*(v2 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive) & 1) == 0)
  {
    return v53;
  }

  v37 = [objc_opt_self() mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_100024CBC(0, *(v53 + 2) + 1, 1, v53);
  }

  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  if (v46 >= v45 >> 1)
  {
    v44 = sub_100024CBC((v45 > 1), v46 + 1, 1, v44);
  }

  *(v44 + 2) = v46 + 1;
  v47 = &v44[16 * v46];
  *(v47 + 4) = v41;
  *(v47 + 5) = v43;
  return v44;
}

uint64_t CRLLinkViewHostingRep.embeddedLabels(in:)(void *a1)
{
  v1 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v42 = _swiftEmptyArrayStorage;
    v2 = a1;
    v3 = [v2 subviews];
    sub_100006370(0, &qword_1019F6D00);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = v2;
      v33 = v4;
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v37 = v4 + 32;
      v38 = v4 & 0xFFFFFFFFFFFFFF8;
      v35 = v4 & 0xC000000000000001;
      v36 = i;
      while (1)
      {
        if (v7)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v38 + 16))
          {
            goto LABEL_49;
          }

          v8 = *(v37 + 8 * v6);
        }

        v2 = v8;
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = v2;
          v2 = &v42;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v1 = v42;
          if (v6 == i)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v40 = v2;
          v11 = CRLLinkViewHostingRep.embeddedLabels(in:)(v2);
          v12 = v11;
          v2 = (v11 >> 62);
          if (v11 >> 62)
          {
            v13 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = v1;
          v15 = v1 >> 62;
          if (v1 >> 62)
          {
            v30 = _CocoaArrayWrapper.endIndex.getter();
            v17 = v30 + v13;
            if (__OFADD__(v30, v13))
            {
LABEL_46:
              __break(1u);
LABEL_47:

              goto LABEL_56;
            }
          }

          else
          {
            v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v17 = v16 + v13;
            if (__OFADD__(v16, v13))
            {
              goto LABEL_46;
            }
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v15)
            {
              goto LABEL_28;
            }

LABEL_27:
            _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_28;
          }

          if (v15)
          {
            goto LABEL_27;
          }

          v18 = v1 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v1 = v13;
            goto LABEL_29;
          }

LABEL_28:
          v1 = v13;
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
          v19 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v2)
          {
            v22 = v18;
            v23 = _CocoaArrayWrapper.endIndex.getter();
            v18 = v22;
            v21 = v23;
            if (!v23)
            {
LABEL_5:

              if (v1 > 0)
              {
                goto LABEL_50;
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v21)
            {
              goto LABEL_5;
            }
          }

          if (((v20 >> 1) - v19) < v1)
          {
            goto LABEL_51;
          }

          v24 = v1;
          v25 = v18 + 8 * v19 + 32;
          v39 = v18;
          if (v2)
          {
            if (v21 < 1)
            {
              goto LABEL_53;
            }

            v34 = v1;
            sub_10001A2F8(qword_101A26940, &qword_101A26938);
            for (j = 0; j != v21; ++j)
            {
              sub_1005B981C(&qword_101A26938);
              v1 = sub_100777974(v41, j, v12);
              v2 = *v27;
              (v1)(v41, 0);
              *(v25 + 8 * j) = v2;
            }

            v4 = v33;
            v24 = v34;
          }

          else
          {
            sub_100006370(0, &qword_101A1AAE8);
            swift_arrayInitWithCopy();
          }

          if (v24 > 0)
          {
            v28 = *(v39 + 16);
            v9 = __OFADD__(v28, v24);
            v29 = v28 + v24;
            if (v9)
            {
              goto LABEL_52;
            }

            *(v39 + 16) = v29;
          }

LABEL_6:
          v1 = v14;
          v42 = v14;
          v7 = v35;
          i = v36;
          if (v6 == v36)
          {
            goto LABEL_47;
          }
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

LABEL_56:
  }

  return v1;
}

char *CRLLinkViewHostingRep.embeddedLabelStringsFromLinkView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView);
  v2 = v1;
  v3 = CRLLinkViewHostingRep.embeddedLabels(in:)(v1);

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 text];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100024CBC(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_100024CBC((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v18;
  }

  while (v5 != v4);
LABEL_23:

  return v6;
}

uint64_t CRLLinkViewHostingRep.isForPrintingOrThumbnailing.getter()
{
  v1 = [v0 canvas];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isCanvasInteractive];

    if (!v3)
    {
      return 1;
    }
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 152;
    v18 = v28;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:152 isFatal:0 format:v27 args:v24];
  }

  return 0;
}

id CRLLinkViewHostingRep.generateSnapshotOnMainThread()()
{
  if (![objc_opt_self() isMainThread])
  {
    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v184[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v184);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v39;
    v40 = sub_1005CF04C();
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 162;
    v42 = v184[0];
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v3 file:v49 lineNumber:162 isFatal:0 format:v50 args:v48];
    goto LABEL_11;
  }

  CRLLinkViewHostingRep.item.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 24))(ObjectType, v1);
  swift_unknownObjectRelease();
  if (!v3)
  {
    v51 = objc_opt_self();
    v52 = [v51 _atomicIncrementAssertCount];
    v184[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v184);
    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    v55 = [v54 lastPathComponent];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v59 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10146CA70;
    *(v60 + 56) = &type metadata for Int32;
    *(v60 + 64) = &protocol witness table for Int32;
    *(v60 + 32) = v52;
    v61 = sub_100006370(0, &qword_1019F4D30);
    *(v60 + 96) = v61;
    v62 = sub_1005CF04C();
    *(v60 + 104) = v62;
    *(v60 + 72) = v53;
    *(v60 + 136) = &type metadata for String;
    v63 = sub_1000053B0();
    *(v60 + 112) = v56;
    *(v60 + 120) = v58;
    *(v60 + 176) = &type metadata for UInt;
    *(v60 + 184) = &protocol witness table for UInt;
    *(v60 + 144) = v63;
    *(v60 + 152) = 166;
    v64 = v184[0];
    *(v60 + 216) = v61;
    *(v60 + 224) = v62;
    *(v60 + 192) = v64;
    v65 = v53;
    v66 = v64;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v60);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v68, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
    v70 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v3 file:v49 lineNumber:166 isFatal:0 format:v50 args:v70];
LABEL_11:

    v71 = 0;
    goto LABEL_12;
  }

  v4 = sub_100B5264C(v3);
  [v4 _setUseLowMemoryImageFilters:1];
  v5 = [objc_allocWithZone(UIWindow) init];
  v6 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  v7 = [v6 traitCollection];

  v8 = [v7 userInterfaceStyle];
  [v5 setOverrideUserInterfaceStyle:v8];

  v9 = v4;
  v182 = v5;
  [v5 addSubview:v9];
  v10 = [v9 layer];
  v11 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  v12 = [v11 preferredSizeClass];

  [v9 _setPreferredSizeClass:v12];
  v13 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  [v13 size];
  v15 = v14;
  v17 = v16;

  v187.width = 0.0;
  v187.height = 0.0;
  v185.width = v15;
  v185.height = v17;
  LOBYTE(v7) = CGSizeEqualToSize(v185, v187);

  v18 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  v19 = v18;
  if (v7)
  {
    [v18 maximumSize];
    v21 = v20;

    v22 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
    [v22 maximumSize];
    v24 = v23;
    v26 = v25;

    [v9 sizeThatFits:{v24, v26}];
    v28 = v27;
  }

  else
  {
    [v18 size];
    v21 = v73;
    v28 = v74;
  }

  [v9 setFrame:{0.0, 0.0, v21, v28}];

  v181 = v3;
  v183 = v10;
  if (([v9 _applyCornerRadius] & 1) == 0)
  {
    v177 = objc_opt_self();
    v75 = [v177 _atomicIncrementAssertCount];
    v184[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v184);
    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    v78 = [v77 lastPathComponent];

    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v82 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_10146CA70;
    *(v83 + 56) = &type metadata for Int32;
    *(v83 + 64) = &protocol witness table for Int32;
    *(v83 + 32) = v75;
    v84 = sub_100006370(0, &qword_1019F4D30);
    *(v83 + 96) = v84;
    v85 = sub_1005CF04C();
    *(v83 + 104) = v85;
    *(v83 + 72) = v76;
    *(v83 + 136) = &type metadata for String;
    v86 = sub_1000053B0();
    *(v83 + 112) = v79;
    *(v83 + 120) = v81;
    *(v83 + 176) = &type metadata for UInt;
    *(v83 + 184) = &protocol witness table for UInt;
    *(v83 + 144) = v86;
    *(v83 + 152) = 195;
    v87 = v184[0];
    *(v83 + 216) = v84;
    *(v83 + 224) = v85;
    *(v83 + 192) = v87;
    v88 = v76;
    v89 = v87;
    v90 = static os_log_type_t.error.getter();
    sub_100005404(v82, &_mh_execute_header, v90, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v83);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v82, &_mh_execute_header, v91, "Expected _applyCornerRadius to be true.", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v92 = swift_allocObject();
    v92[2] = 8;
    v92[3] = 0;
    v92[4] = 0;
    v92[5] = 0;
    v93 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    [v177 handleFailureInFunction:v94 file:v95 lineNumber:195 isFatal:0 format:v96 args:v93];

    v10 = v183;
  }

  [v9 _effectiveCornerRadius];
  [v10 setCornerRadius:?];

  [v9 layoutIfNeeded];
  [v9 bounds];
  v98 = v97;
  v100 = v99;

  v101 = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  [v101 scale];
  v103 = v102;

  v186.width = v98;
  v186.height = v100;
  UIGraphicsBeginImageContextWithOptions(v186, 0, v103);
  v104 = UIGraphicsGetCurrentContext();
  if (v104)
  {
    v49 = v104;
    [v10 renderInContext:v104];
    v105 = UIGraphicsGetImageFromCurrentImageContext();
    if (v105)
    {
      v50 = v105;
      v106 = UIImagePNGRepresentation(v105);
      if (v106)
      {
        v107 = v106;
        v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        v111 = objc_allocWithZone(CRLImage);
        sub_100024E98(v108, v110);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v113 = [v111 initWithData:isa];

        sub_10002640C(v108, v110);
        if (v113)
        {
          v71 = [v113 CGImage];
          UIGraphicsEndImageContext();
          sub_10002640C(v108, v110);

          v3 = v49;
          v49 = v50;
          v50 = v113;
        }

        else
        {
          v180 = objc_opt_self();
          v153 = [v180 _atomicIncrementAssertCount];
          v184[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v184);
          StaticString.description.getter();
          v175 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v154 = String._bridgeToObjectiveC()();

          v155 = [v154 lastPathComponent];

          v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v157 = v156;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v172 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v158 = swift_allocObject();
          *(v158 + 16) = xmmword_10146CA70;
          *(v158 + 56) = &type metadata for Int32;
          *(v158 + 64) = &protocol witness table for Int32;
          *(v158 + 32) = v153;
          v159 = sub_100006370(0, &qword_1019F4D30);
          *(v158 + 96) = v159;
          v160 = sub_1005CF04C();
          *(v158 + 104) = v160;
          *(v158 + 72) = v175;
          *(v158 + 136) = &type metadata for String;
          v161 = sub_1000053B0();
          *(v158 + 112) = v171;
          *(v158 + 120) = v157;
          *(v158 + 176) = &type metadata for UInt;
          *(v158 + 184) = &protocol witness table for UInt;
          *(v158 + 144) = v161;
          *(v158 + 152) = 211;
          v162 = v184[0];
          *(v158 + 216) = v159;
          *(v158 + 224) = v160;
          *(v158 + 192) = v162;
          v163 = v175;
          v164 = v162;
          v165 = static os_log_type_t.error.getter();
          sub_100005404(v172, &_mh_execute_header, v165, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v158);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v166 = static os_log_type_t.error.getter();
          sub_100005404(v172, &_mh_execute_header, v166, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v167 = swift_allocObject();
          v167[2] = 8;
          v167[3] = 0;
          v167[4] = 0;
          v167[5] = 0;
          v176 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v168 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v169 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v170 = String._bridgeToObjectiveC()();

          [v180 handleFailureInFunction:v168 file:v169 lineNumber:211 isFatal:0 format:v170 args:v176];

          sub_10002640C(v108, v110);
          v71 = 0;
          v3 = v9;
        }
      }

      else
      {
        v179 = objc_opt_self();
        v134 = [v179 _atomicIncrementAssertCount];
        v184[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v184);
        StaticString.description.getter();
        v174 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v135 = String._bridgeToObjectiveC()();

        v136 = [v135 lastPathComponent];

        v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v137;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v139 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_10146CA70;
        *(v140 + 56) = &type metadata for Int32;
        *(v140 + 64) = &protocol witness table for Int32;
        *(v140 + 32) = v134;
        v141 = sub_100006370(0, &qword_1019F4D30);
        *(v140 + 96) = v141;
        v142 = sub_1005CF04C();
        *(v140 + 104) = v142;
        *(v140 + 72) = v174;
        *(v140 + 136) = &type metadata for String;
        v143 = sub_1000053B0();
        *(v140 + 112) = v173;
        *(v140 + 120) = v138;
        *(v140 + 176) = &type metadata for UInt;
        *(v140 + 184) = &protocol witness table for UInt;
        *(v140 + 144) = v143;
        *(v140 + 152) = 210;
        v144 = v184[0];
        *(v140 + 216) = v141;
        *(v140 + 224) = v142;
        *(v140 + 192) = v144;
        v145 = v174;
        v146 = v144;
        v147 = static os_log_type_t.error.getter();
        sub_100005404(v139, &_mh_execute_header, v147, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v140);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v148 = static os_log_type_t.error.getter();
        sub_100005404(v139, &_mh_execute_header, v148, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v149 = swift_allocObject();
        v149[2] = 8;
        v149[3] = 0;
        v149[4] = 0;
        v149[5] = 0;
        v150 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v3 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v151 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v152 = String._bridgeToObjectiveC()();

        [v179 handleFailureInFunction:v3 file:v151 lineNumber:210 isFatal:0 format:v152 args:v150];

        v71 = 0;
        v49 = v151;
        v50 = v152;
      }
    }

    else
    {
      v178 = objc_opt_self();
      v114 = [v178 _atomicIncrementAssertCount];
      v184[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v184);
      StaticString.description.getter();
      v115 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v116 = String._bridgeToObjectiveC()();

      v117 = [v116 lastPathComponent];

      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v121 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v122 = swift_initStackObject();
      *(v122 + 16) = xmmword_10146CA70;
      *(v122 + 56) = &type metadata for Int32;
      *(v122 + 64) = &protocol witness table for Int32;
      *(v122 + 32) = v114;
      v123 = sub_100006370(0, &qword_1019F4D30);
      *(v122 + 96) = v123;
      v124 = sub_1005CF04C();
      *(v122 + 104) = v124;
      *(v122 + 72) = v115;
      *(v122 + 136) = &type metadata for String;
      v125 = sub_1000053B0();
      *(v122 + 112) = v118;
      *(v122 + 120) = v120;
      *(v122 + 176) = &type metadata for UInt;
      *(v122 + 184) = &protocol witness table for UInt;
      *(v122 + 144) = v125;
      *(v122 + 152) = 209;
      v126 = v184[0];
      *(v122 + 216) = v123;
      *(v122 + 224) = v124;
      *(v122 + 192) = v126;
      v127 = v115;
      v128 = v126;
      v129 = static os_log_type_t.error.getter();
      sub_100005404(v121, &_mh_execute_header, v129, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v122);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v130 = static os_log_type_t.error.getter();
      sub_100005404(v121, &_mh_execute_header, v130, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v131 = swift_allocObject();
      v131[2] = 8;
      v131[3] = 0;
      v131[4] = 0;
      v131[5] = 0;
      v132 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v133 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      [v178 handleFailureInFunction:v3 file:v133 lineNumber:209 isFatal:0 format:v50 args:v132];

      v71 = 0;
      v49 = v133;
    }
  }

  else
  {

    v71 = 0;
    v49 = v182;
    v50 = v9;
  }

LABEL_12:

  return v71;
}

void *CRLLinkViewHostingRep.generateSnapshotSynchronously()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v106 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v97 - v10;
  v12 = objc_opt_self();
  if ([v12 isMainThread])
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v107[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v107);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 237;
    v26 = v107[0];
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:237 isFatal:0 format:v35 args:v32];
LABEL_12:

    return 0;
  }

  v104 = v6;
  v105 = v5;
  CRLLinkViewHostingRep.item.getter();
  v37 = v36;
  ObjectType = swift_getObjectType();
  v39 = (*(v37 + 24))(ObjectType, v37);
  swift_unknownObjectRelease();
  if (!v39)
  {
    v42 = objc_opt_self();
    v43 = [v42 _atomicIncrementAssertCount];
    v107[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v107);
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_100006370(0, &qword_1019F4D30);
    *(v51 + 96) = v52;
    v53 = sub_1005CF04C();
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 241;
    v55 = v107[0];
    *(v51 + 216) = v52;
    *(v51 + 224) = v53;
    *(v51 + 192) = v55;
    v56 = v44;
    v57 = v55;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v60[4] = 0;
    v60[5] = 0;
    v61 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v42 handleFailureInFunction:v33 file:v34 lineNumber:241 isFatal:0 format:v35 args:v61];
    goto LABEL_12;
  }

  v40 = [v1 canvas];
  if (!v40)
  {

    return 0;
  }

  v41 = v40;
  if ([v40 isCanvasInteractive])
  {

    return 0;
  }

  v101 = v41;
  v102 = v39;
  v63 = [v12 currentThread];
  v64 = [v63 isMainThread];

  if (v64)
  {
    v103 = objc_opt_self();
    LODWORD(v98) = [v103 _atomicIncrementAssertCount];
    v107[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v107);
    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    v67 = [v66 lastPathComponent];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v69;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v100 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v98;
    v99 = (v70 + 32);
    v98 = sub_100006370(0, &qword_1019F4D30);
    *(v70 + 96) = v98;
    v71 = sub_1005CF04C();
    *(v70 + 104) = v71;
    *(v70 + 72) = v65;
    *(v70 + 136) = &type metadata for String;
    v72 = sub_1000053B0();
    v73 = v97;
    *(v70 + 112) = v68;
    *(v70 + 120) = v73;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v72;
    *(v70 + 152) = 242;
    v74 = v107[0];
    *(v70 + 216) = v98;
    *(v70 + 224) = v71;
    *(v70 + 192) = v74;
    v98 = v65;
    v75 = v74;
    v76 = static os_log_type_t.error.getter();
    v77 = v100;
    sub_100005404(v100, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v77, &_mh_execute_header, v78, "Not expected to run on the main thread.", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v100 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    v82 = v99;
    [v103 handleFailureInFunction:v80 file:v99 lineNumber:242 isFatal:0 format:v81 args:v100];
  }

  v103 = [objc_allocWithZone(LPLinkSnapshotGenerator) init];
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v100 = (v83 + 16);
  v84 = dispatch_semaphore_create(0);
  sub_1005B981C(&unk_1019F4D60);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_101465920;
  *(v85 + 32) = CRLLinkViewHostingRep.snapshotConfiguration.getter();
  sub_100006370(0, &qword_101A26930);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v87 = swift_allocObject();
  v99 = v83;
  v87[2] = v83;
  v87[3] = v84;
  v107[4] = sub_100FDEF4C;
  v107[5] = v87;
  v107[0] = _NSConcreteStackBlock;
  v107[1] = *"";
  v107[2] = sub_100FDCA9C;
  v107[3] = &unk_1018AD110;
  v88 = _Block_copy(v107);

  v89 = v84;

  v90 = v102;
  [v103 snapshotForMetadata:v102 configurations:isa completionHandler:v88];
  _Block_release(v88);

  static DispatchTime.now()();
  *v4 = 1;
  v91 = v106;
  (*(v106 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v2);
  DispatchTime.advanced(by:)();
  (*(v91 + 8))(v4, v2);
  v92 = v105;
  v93 = *(v104 + 8);
  v93(v8, v105);
  OS_dispatch_semaphore.wait(timeout:)();

  v93(v11, v92);
  v94 = v100;
  swift_beginAccess();
  v95 = *v94;
  v96 = v95;

  return v95;
}

id CRLLinkViewHostingRep.snapshotConfiguration.getter()
{
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v2 = [v0 layout];
  v3 = [v2 geometry];

  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = [objc_allocWithZone(LPLinkSnapshotConfiguration) initWithTraitCollection:v1 preferredSizeClass:3 size:v5 scale:{v7, 2.0}];
  v9 = [objc_allocWithZone(LPLinkRendererSizeClassParameters) init];
  [v9 setNeverShowIcon:1];
  [v8 setSizeClassParameters:v9];

  return v8;
}

void CRLLinkViewHostingRep.draw(image:ctx:)(CGImage *a1, CGContextRef c)
{
  v3 = v2;
  CGContextSaveGState(c);
  [v3 naturalBounds];
  Height = CGRectGetHeight(v16);
  CGContextTranslateCTM(c, 0.0, Height);
  CGContextScaleCTM(c, 1.0, -1.0);
  Width = CGImageGetWidth(a1);
  v8 = CGImageGetHeight(a1);
  v9 = [v3 layout];
  v10 = [v9 geometry];

  [v10 size];
  v12 = v11;
  v14 = v13;

  sub_100121EF4(0, Width, v8, v12, v14);
  sub_10011ECB4();
  CGContextRef.draw(_:in:byTiling:)();

  CGContextRestoreGState(c);
}

char *CRLLinkViewHostingRep.makeLinkView()()
{
  v1 = v0;
  CRLLinkViewHostingRep.item.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  objc_allocWithZone(type metadata accessor for CRLLinkView());
  v6 = v1;
  v7 = v5;
  v8 = sub_100B5198C(v7, v6);
  v9 = *&v8[OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView];
  [v6 naturalBounds];
  [v9 setFrame:sub_10011ECB4()];

  v10 = CRLLinkViewHostingRep.reloadView.getter();
  [v8 addSubview:v10];

  v11 = [v6 canvas];
  if (v11)
  {
    v12 = v11;
    [v11 viewScale];
    v14 = v13;

    *&v8[OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale] = v14;
    sub_100B51E70();
  }

  else
  {
    v38 = objc_opt_self();
    v15 = [v38 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v24;
    v25 = sub_1005CF04C();
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 325;
    v27 = v39;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v38 handleFailureInFunction:v34 file:v35 lineNumber:325 isFatal:0 format:v36 args:v33];
  }

  return v8;
}

void CRLLinkViewHostingRep.updateReloadView()()
{
  v1 = [v0 canvas];
  if (v1)
  {
    v2 = v1;
    [v1 viewScale];
    v4 = v3;

    [v0 boundsForStandardKnobs];
    if (v4 * CGRectGetWidth(v32) <= 63.0 || ([v0 boundsForStandardKnobs], v4 * CGRectGetHeight(v33) <= 63.0))
    {
      v6 = CRLLinkViewHostingRep.reloadView.getter();
      [v6 setHidden:1];

      *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewHiddenBecauseTooSmall) = 1;
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewHiddenBecauseTooSmall) == 1)
      {
        *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewHiddenBecauseTooSmall) = 0;
        if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive) == 1 && (*(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_isZooming) & 1) == 0)
        {
          v5 = CRLLinkViewHostingRep.reloadView.getter();
          [v5 setHidden:0];
        }
      }

      CRLLinkViewHostingRep.updateReloadViewTransform()();
    }
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 334;
    v20 = v30;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:334 isFatal:0 format:v29 args:v26];
  }
}

void CRLLinkViewHostingRep.updateReloadViewTransform()()
{
  v1 = [v0 canvas];
  if (!v1)
  {
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    *&v61.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 361;
    m11 = v61.m11;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = m11;
    v34 = v22;
    v35 = *&m11;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v15 lineNumber:361 isFatal:0 format:v19 args:v39];
    goto LABEL_10;
  }

  v2 = v1;
  [v1 viewScale];
  v4 = v3;

  v5 = CRLLinkViewHostingRep.reloadView.getter();
  v6 = [v5 layer];

  if (!v6)
  {
    v41 = objc_opt_self();
    v42 = [v41 _atomicIncrementAssertCount];
    *&v61.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61);
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    v45 = [v44 lastPathComponent];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_10146CA70;
    *(v50 + 56) = &type metadata for Int32;
    *(v50 + 64) = &protocol witness table for Int32;
    *(v50 + 32) = v42;
    v51 = sub_100006370(0, &qword_1019F4D30);
    *(v50 + 96) = v51;
    v52 = sub_1005CF04C();
    *(v50 + 104) = v52;
    *(v50 + 72) = v43;
    *(v50 + 136) = &type metadata for String;
    v53 = sub_1000053B0();
    *(v50 + 112) = v46;
    *(v50 + 120) = v48;
    *(v50 + 176) = &type metadata for UInt;
    *(v50 + 184) = &protocol witness table for UInt;
    *(v50 + 144) = v53;
    *(v50 + 152) = 362;
    v54 = v61.m11;
    *(v50 + 216) = v51;
    *(v50 + 224) = v52;
    *(v50 + 192) = v54;
    v55 = v43;
    v56 = *&v54;
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v50);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v58, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v59 = swift_allocObject();
    v59[2] = 8;
    v59[3] = 0;
    v59[4] = 0;
    v59[5] = 0;
    v60 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v40 file:v15 lineNumber:362 isFatal:0 format:v19 args:v60];
LABEL_10:

    goto LABEL_11;
  }

  v7 = *&v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView];
  v8 = sub_10011ECB4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v6;
  [v7 setBounds:{v8, v10, v12, v14}];
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setDisableActions:1];
  CATransform3DMakeScale(&v61, 1.0 / v4, 1.0 / v4, 1.0);
  [v15 setAnchorPoint:{0.5, 0.5}];
  [v15 setPosition:{0.0, 0.0}];
  [v15 setTransform:&v61];
  [v0 boundsForStandardKnobs];
  v17 = CGRectGetWidth(v62) * 0.5;
  [v0 boundsForStandardKnobs];
  v18 = CGRectGetHeight(v63) * 0.5;
  [v15 setPosition:{v17, v18 - CRLLinkViewHostingRep.captionHeight.getter() * 0.5}];
  [v16 commit];
  v19 = v15;
LABEL_11:
}

Swift::Void __swiftcall CRLLinkViewHostingRep.reloadWillStart()()
{
  CRLLinkViewHostingRep.tearDownReload()();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100FDCB84;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = *"";
  v6[2] = sub_10068B39C;
  v6[3] = &unk_1018AD020;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:1.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUITimer);
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUITimer) = v4;
}

void CRLLinkViewHostingRep.showReloadUI()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive;
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive) = 1;
  v3 = CRLLinkViewHostingRep.reloadView.getter();
  sub_100AC85E4();

  if (*(v1 + v2) == 1 && (*(v1 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewHiddenBecauseTooSmall) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_isZooming) & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView) setHidden:0];
  }

  v4 = [*(v1 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView) layer];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 removeAnimationForKey:v6];

    v30 = String._bridgeToObjectiveC()();
    [v5 removeAnimationForKey:v30];
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 417;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:417 isFatal:0 format:v29 args:v26];
  }
}

void CRLLinkViewHostingRep.tearDownReload()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive] = 0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUITimer;
  [*&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUITimer] invalidate];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  v4 = CRLLinkViewHostingRep.reloadView.getter();
  sub_100AC86B8();

  [*&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView] setHidden:1];
  v5 = [v1 interactiveCanvasController];
  [v5 invalidateContentLayersForRep:v1];
}

char *CRLLinkViewHostingRep.reloadView.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView];
  }

  else
  {
    v4 = sub_10011ECB4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    objc_allocWithZone(type metadata accessor for CRLIndeterminateRoundSpinnerView());
    v11 = v0;
    v12 = sub_100AC7244(v0, "cancelReload:", v4, v6, v8, v10);
    v12[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame] = 1;
    [v12 setHidden:1];
    v13 = *&v0[v1];
    *&v11[v1] = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

double CRLLinkViewHostingRep.captionHeight.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView);
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView) _primaryCaptionBarFrame];
    return v2;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 469;
    v17 = v27;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:469 isFatal:0 format:v26 args:v23];

    return 0.0;
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.resetLinkView()()
{
  v1 = CRLLinkViewHostingRep.reloadView.getter();
  [v1 removeFromSuperview];

  v2 = OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
  if (v3)
  {
    CRLLinkViewHostingRep.updateReloadView()();
    v3 = *&v0[v2];
  }

  *&v0[v2] = 0;

  [v0 setNeedsDisplay];
  v4 = [v0 interactiveCanvasController];
  [v4 invalidateContentLayersForRep:v0];
}

uint64_t CRLLinkViewHostingRep.url.getter()
{
  CRLLinkViewHostingRep.item.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t CRLLinkViewHostingRep.title.getter()
{
  CRLLinkViewHostingRep.item.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

id CRLLinkViewHostingRep.item.getter()
{
  v1 = [v0 layout];
  v2 = [v1 info];

  if (!v2)
  {
LABEL_5:
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 494;
      v17 = v27;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      v11 = &_mh_execute_header;
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v5 = v22;
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = v25;
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v9 lineNumber:494 isFatal:0 format:v26 args:v23];

      __break(1u);
LABEL_7:
      swift_once();
    }
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  return v2;
}

uint64_t CRLLinkViewHostingRep.crlaxCancelReloadAction()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F2D90);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100FDEEFC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018AD098;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100FDEF04(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id CRLLinkViewHostingRep.directlyManagesContentPlatformView.getter()
{
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    result = [v0 canvas];
    if (result)
    {
      v2 = result;
      v3 = [result isCanvasInteractive];

      return v3;
    }
  }

  return result;
}

void CRLLinkViewHostingRep.contentPlatformView.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView;
  if (!*(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView))
  {
    v2 = CRLLinkViewHostingRep.makeLinkView()();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;

    if (!*(v0 + v1))
    {
      [objc_allocWithZone(UIView) init];
      return;
    }
  }

  CRLLinkViewHostingRep.updateReloadView()();
  v4 = *(v0 + v1);
  v5 = v4;
  v6 = CRLLinkViewHostingRep.embeddedLabels(in:)(v4);

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setIsAccessibilityElement:0];
  }

LABEL_13:

  v11 = *(v0 + v1);
  if (v11)
  {
    v12 = v11;
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.draw(in:)(CGContextRef in)
{
  v56.receiver = v1;
  v56.super_class = type metadata accessor for CRLLinkViewHostingRep();
  [(CGContext *)&v56 drawInContext:in];
  CRLLinkViewHostingRep.item.getter();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  swift_unknownObjectRelease();
  v7 = *&v6[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v6[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v7);
  if ((*(v8 + 64))(v7, v8))
  {
    v9 = objc_allocWithZone(type metadata accessor for CRLUndownloadedAssetDrawingHelper());
    v10 = v6;
    v11 = v1;
    v6 = sub_101252E28(v11, v10);

    sub_101251240(in);
LABEL_15:

    goto LABEL_16;
  }

  if (CRLLinkViewHostingRep.isForPrintingOrThumbnailing.getter())
  {
    if ([objc_opt_self() isMainThread])
    {
      v12 = CRLLinkViewHostingRep.generateSnapshotOnMainThread()();
      if (!v12)
      {
        v13 = objc_opt_self();
        v14 = [v13 _atomicIncrementAssertCount];
        v55 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v55);
        StaticString.description.getter();
        v15 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v16 = String._bridgeToObjectiveC()();

        v17 = [v16 lastPathComponent];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v21 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v14;
        v23 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v23;
        v24 = sub_1005CF04C();
        *(inited + 104) = v24;
        *(inited + 72) = v15;
        *(inited + 136) = &type metadata for String;
        v25 = sub_1000053B0();
        *(inited + 112) = v18;
        *(inited + 120) = v20;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v25;
        *(inited + 152) = 143;
        v26 = v55;
        *(inited + 216) = v23;
        *(inited + 224) = v24;
        *(inited + 192) = v26;
        v27 = v15;
        v28 = v26;
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v30 = static os_log_type_t.error.getter();
        sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v31 = swift_allocObject();
        v31[2] = 8;
        v31[3] = 0;
        v31[4] = 0;
        v31[5] = 0;
        v32 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v13 handleFailureInFunction:v33 file:v10 lineNumber:143 isFatal:0 format:v34 args:v32];
LABEL_14:

        v6 = v34;
        goto LABEL_15;
      }
    }

    else
    {
      v12 = CRLLinkViewHostingRep.generateSnapshotSynchronously()();
      if (!v12)
      {
        v35 = objc_opt_self();
        v36 = [v35 _atomicIncrementAssertCount];
        v55 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v55);
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        v39 = [v38 lastPathComponent];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v43 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_10146CA70;
        *(v44 + 56) = &type metadata for Int32;
        *(v44 + 64) = &protocol witness table for Int32;
        *(v44 + 32) = v36;
        v45 = sub_100006370(0, &qword_1019F4D30);
        *(v44 + 96) = v45;
        v46 = sub_1005CF04C();
        *(v44 + 104) = v46;
        *(v44 + 72) = v37;
        *(v44 + 136) = &type metadata for String;
        v47 = sub_1000053B0();
        *(v44 + 112) = v40;
        *(v44 + 120) = v42;
        *(v44 + 176) = &type metadata for UInt;
        *(v44 + 184) = &protocol witness table for UInt;
        *(v44 + 144) = v47;
        *(v44 + 152) = 146;
        v48 = v55;
        *(v44 + 216) = v45;
        *(v44 + 224) = v46;
        *(v44 + 192) = v48;
        v49 = v37;
        v50 = v48;
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v53 = swift_allocObject();
        v53[2] = 8;
        v53[3] = 0;
        v53[4] = 0;
        v53[5] = 0;
        v54 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v35 handleFailureInFunction:v33 file:v10 lineNumber:146 isFatal:0 format:v34 args:v54];
        goto LABEL_14;
      }
    }

    v10 = v12;
    CRLLinkViewHostingRep.draw(image:ctx:)(v12, in);
    goto LABEL_15;
  }

LABEL_16:
}

Swift::Int sub_100FDC874(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a2[2])
  {
    v5 = a2[4];
    v6 = a2[5];
    v7 = objc_allocWithZone(CRLImage);
    sub_100024E98(v5, v6);
    sub_100024E98(v5, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithData:isa];

    sub_10002640C(v5, v6);
    if (v9)
    {
      v10 = [v9 CGImage];
      sub_10002640C(v5, v6);

      swift_beginAccess();
      v11 = *(a3 + 16);
      *(a3 + 16) = v10;

      return OS_dispatch_semaphore.signal()();
    }

    sub_10002640C(v5, v6);
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v17, "Error generating URL snapshot: %@", 33, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100FDCA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

void sub_100FDCB30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CRLLinkViewHostingRep.showReloadUI()();
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.handleFadeOutForZoom()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_isZooming] = 1;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for CRLLinkViewHostingRep();
  objc_msgSendSuper2(&v52, "handleFadeOutForZoom");
  if (v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive] == 1)
  {
    v2 = CRLLinkViewHostingRep.reloadView.getter();
    v3 = [v2 isHidden];

    if (v3)
    {
      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
      v51 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v51);
      StaticString.description.getter();
      v6 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v7 = String._bridgeToObjectiveC()();

      v8 = [v7 lastPathComponent];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 504;
      v17 = v51;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "Trying to fade out while reload view is hidden.", 47, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:504 isFatal:0 format:v26 args:v23];
    }

    v27 = [*&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView] layer];
    if (v27)
    {
      v28 = v27;
      sub_100CE67E4(0.15);
      v29 = v28;
    }

    else
    {
      v30 = objc_opt_self();
      v31 = [v30 _atomicIncrementAssertCount];
      v51 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v51);
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      v34 = [v33 lastPathComponent];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v38 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_10146CA70;
      *(v39 + 56) = &type metadata for Int32;
      *(v39 + 64) = &protocol witness table for Int32;
      *(v39 + 32) = v31;
      v40 = sub_100006370(0, &qword_1019F4D30);
      *(v39 + 96) = v40;
      v41 = sub_1005CF04C();
      *(v39 + 104) = v41;
      *(v39 + 72) = v32;
      *(v39 + 136) = &type metadata for String;
      v42 = sub_1000053B0();
      *(v39 + 112) = v35;
      *(v39 + 120) = v37;
      *(v39 + 176) = &type metadata for UInt;
      *(v39 + 184) = &protocol witness table for UInt;
      *(v39 + 144) = v42;
      *(v39 + 152) = 506;
      v43 = v51;
      *(v39 + 216) = v40;
      *(v39 + 224) = v41;
      *(v39 + 192) = v43;
      v44 = v32;
      v45 = v43;
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v38, &_mh_execute_header, v47, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v48 = swift_allocObject();
      v48[2] = 8;
      v48[3] = 0;
      v48[4] = 0;
      v48[5] = 0;
      v49 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      [v30 handleFailureInFunction:v50 file:v28 lineNumber:506 isFatal:0 format:v29 args:v49];
    }
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.handleFadeInForZoom()()
{
  v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_isZooming] = 0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CRLLinkViewHostingRep();
  objc_msgSendSuper2(&v27, "handleFadeInForZoom");
  if (v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive] == 1)
  {
    v1 = CRLLinkViewHostingRep.reloadView.getter();
    v2 = [v1 layer];

    if (v2)
    {
      v3 = v2;
      sub_100CE6920(0.15);
      v4 = v3;
    }

    else
    {
      v5 = objc_opt_self();
      v6 = [v5 _atomicIncrementAssertCount];
      v26 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v26);
      StaticString.description.getter();
      v7 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v8 lastPathComponent];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v13 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v15 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v15;
      v16 = sub_1005CF04C();
      *(inited + 104) = v16;
      *(inited + 72) = v7;
      *(inited + 136) = &type metadata for String;
      v17 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v17;
      *(inited + 152) = 517;
      v18 = v26;
      *(inited + 216) = v15;
      *(inited + 224) = v16;
      *(inited + 192) = v18;
      v19 = v7;
      v20 = v18;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v23 = swift_allocObject();
      v23[2] = 8;
      v23[3] = 0;
      v23[4] = 0;
      v23[5] = 0;
      v24 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      [v5 handleFailureInFunction:v25 file:v3 lineNumber:517 isFatal:0 format:v4 args:v24];
    }
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.viewScaleDidChange()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CRLLinkViewHostingRep();
  objc_msgSendSuper2(&v6, "viewScaleDidChange");
  v1 = [v0 canvas];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
    if (v3)
    {
      v4 = v3;
      [v2 viewScale];
      *&v4[OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale] = v5;
      sub_100B51E70();
      CRLLinkViewHostingRep.updateReloadView()();
    }
  }
}

Swift::Void __swiftcall CRLLinkViewHostingRep.dynamicallyRotating(with:)(CRLCanvasRepRotateTracker *with)
{
  v3 = *&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
  if (v3)
  {
    v4 = v3;
    sub_100B51E70();
    CRLLinkViewHostingRep.updateReloadView()();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLLinkViewHostingRep();
  [(CRLCanvasRepRotateTracker *)&v5 dynamicallyRotatingWithTracker:with];
}

Swift::Void __swiftcall CRLLinkViewHostingRep.willUpdate(_:)(CRLCanvasRenderable_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
  if (v3)
  {
    v4 = v3;
    sub_100B51E70();
    CRLLinkViewHostingRep.updateReloadView()();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLLinkViewHostingRep();
  objc_msgSendSuper2(&v5, "willUpdateRenderable:", isa);
}

void sub_100FDDA54(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = *&a1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
  v8 = a3;
  if (v7)
  {
    a1;
    v9 = v7;
    sub_100B51E70();
    CRLLinkViewHostingRep.updateReloadView()();
  }

  else
  {
    v10 = a1;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for CRLLinkViewHostingRep();
  objc_msgSendSuper2(&v11, *a4, a3);
}

Swift::Void __swiftcall CRLLinkViewHostingRep.drawInContextWithoutEffectsForAlphaOnly(_:)(CGContextRef a1)
{
  v3 = type metadata accessor for CGPathFillRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView];
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView);
  }

  else
  {
    v9 = CRLLinkViewHostingRep.makeLinkView()();
    if (!v9)
    {
      v12 = 0;
      v36 = 10.0;
      goto LABEL_10;
    }

    v10 = v9;
    v11 = *&v9[OBJC_IVAR____TtC8Freeform11CRLLinkView_wrappedLinkView];

    v8 = v11;
  }

  v12 = v8;
  if (([v12 _applyCornerRadius] & 1) == 0)
  {
    v47 = v1;
    v48 = a1;
    v49 = v4;
    v50 = v3;
    v46 = objc_opt_self();
    v13 = [v46 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 613;
    v25 = v51;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "Expected _applyCornerRadius to be true.", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v32 file:v33 lineNumber:613 isFatal:0 format:v34 args:v31];

    v3 = v50;
    v4 = v49;
    a1 = v48;
    v1 = v47;
  }

  [v12 _effectiveCornerRadius];
  v36 = v35;

LABEL_10:
  v37 = [objc_opt_self() blackColor];
  v38 = [v37 CGColor];

  CGContextSetFillColorWithColor(a1, v38);
  [v1 naturalBounds];
  v43 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v39 cornerRadius:{v40, v41, v42, v36}];
  v44 = [v43 CGPath];
  if (v44)
  {
    v45 = v44;
    CGContextAddPath(a1, v44);

    (*(v4 + 104))(v6, enum case for CGPathFillRule.winding(_:), v3);
    CGContextRef.fillPath(using:)();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRLLinkViewHostingRep.accessibilityCustomActions.getter()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for CRLLinkViewHostingRep();
  v1 = objc_msgSendSuper2(&v15, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100006370(0, &qword_101A00130);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive) == 1)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = objc_allocWithZone(UIAccessibilityCustomAction);
    v14[4] = sub_100FDEE40;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = *"";
    v14[2] = sub_100FDE79C;
    v14[3] = &unk_1018AD048;
    v10 = _Block_copy(v14);

    v11 = [v9 initWithName:v7 actionHandler:v10];

    _Block_release(v10);

    if (v3)
    {
      v14[0] = v3;
      v12 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v14[0];
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_101465920;
      *(v3 + 32) = v11;
    }
  }

  return v3;
}

uint64_t sub_100FDE528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CRLLinkViewHostingRep.crlaxCancelReloadAction()();
  }

  return 1;
}

uint64_t sub_100FDE580(void *a1)
{
  v5[3] = type metadata accessor for CRLLinkViewHostingRep();
  v5[0] = a1;
  v2 = *((swift_isaMask & *a1) + 0x178);
  v3 = a1;
  v2(v5);
  return sub_10000CAAC(v5, &unk_1019F4D00);
}

id CRLLinkViewHostingRep.__allocating_init(layout:canvas:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithLayout:a1 canvas:a2];

  return v5;
}

id CRLLinkViewHostingRep.init(layout:canvas:)(void *a1, void *a2)
{
  v4 = sub_100FDEE48(a1, a2);

  return v4;
}

id CRLLinkViewHostingRep.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLLinkViewHostingRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100FDE79C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t _s8Freeform21CRLLinkViewHostingRepC15handleDoubleTap2at9inputTypeSbSo7CGPointV_So08CRLInputK0VtF_0()
{
  v0 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CRLLinkViewHostingRep.item.getter();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 8))(ObjectType, v8);
  swift_unknownObjectRelease();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &unk_1019F33C0);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  if (URL.isFileURL.getter())
  {
    v39 = objc_opt_self();
    v10 = [v39 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    v19 = v38;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v37;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 582;
    v21 = v40;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v21;
    v22 = v19;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v25, "Unexpected file URL in our URL object!", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v39 handleFailureInFunction:v28 file:v29 lineNumber:582 isFatal:0 format:v30 args:v27];

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v32 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  sub_100BD72C0(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100FDEF04(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v32 openURL:v35 options:isa completionHandler:0];

  (*(v4 + 8))(v6, v3);
  return 1;
}

id sub_100FDEE48(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_linkView] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewHiddenBecauseTooSmall] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUITimer] = 0;
  v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadUIIsActive] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep____lazy_storage___reloadView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_reloadViewSize] = vdupq_n_s64(0x404A800000000000uLL);
  v2[OBJC_IVAR____TtC8Freeform21CRLLinkViewHostingRep_isZooming] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CRLLinkViewHostingRep();
  return objc_msgSendSuper2(&v6, "initWithLayout:canvas:", a1, a2);
}

uint64_t sub_100FDEF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CRLAsyncStreamProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_100FDF7BC(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t CRLAsyncStreamProperty.ProjectedValue.values.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 96);
  v5 = type metadata accessor for AsyncStream();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t CRLAsyncStreamProperty.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100FDF7BC(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_100FDF0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

char *CRLAsyncStreamProperty.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(v2 + 104);
  (*(v5 + 16))(&v14 - v7, &v1[v9], v4, v6);
  AsyncStream.Continuation.finish()();
  v10 = *(v5 + 8);
  v10(v8, v4);
  (*(*(v3 - 8) + 8))(&v1[*(*v1 + 88)], v3);
  v11 = *(*v1 + 96);
  v12 = type metadata accessor for AsyncStream();
  (*(*(v12 - 8) + 8))(&v1[v11], v12);
  v10(&v1[v9], v4);

  return v1;
}

uint64_t CRLAsyncStreamProperty.__deallocating_deinit()
{
  CRLAsyncStreamProperty.deinit();

  return swift_deallocClassInstance();
}

uint64_t CRLAsyncStreamProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t CRLAsyncStreamProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100FDFC58(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*CRLAsyncStreamProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*v1 + 80);
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v3[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  CRLAsyncStreamProperty.wrappedValue.getter(v8);
  return sub_100FDF658;
}

void sub_100FDF658(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100FDFC58(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_100FDFC58(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRLAsyncStreamProperty.ProjectedValue.publisher()()
{
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100FDF7BC(uint64_t a1)
{
  v2 = v1;
  v36 = *v1;
  v4 = *(v36 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v32 = &v30 - v6;
  v7 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = (&v30 - v8);
  v10 = type metadata accessor for AsyncStream();
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for AsyncStream.Continuation();
  v39 = type metadata accessor for Optional();
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  v21 = &v2[*(v36 + 88)];
  v36 = a1;
  v33 = v5 + 16;
  v31 = v20;
  (v20)(v21, a1, v4, v17);
  v22 = *(v13 - 8);
  (*(v22 + 56))(v19, 1, 1, v13);
  *v9 = 1;
  v23 = v34;
  (*(v37 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v38);
  v40 = v4;
  v41 = v19;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v24 = *(v23 + 16);
  v25 = &v2[*(*v2 + 96)];
  v37 = v10;
  v38 = v12;
  v26 = v10;
  v27 = v35;
  v24(v25, v12, v26);
  (*(v27 + 16))(v15, v19, v39);
  result = (*(v22 + 48))(v15, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(&v2[*(*v2 + 104)], v15, v13);
    type metadata accessor for CurrentValueSubject();
    v31(v32, v36, v4);
    v29 = CurrentValueSubject.__allocating_init(_:)();
    (*(v23 + 8))(v38, v37);
    *&v2[*(*v2 + 112)] = v29;
    (*(v27 + 8))(v19, v39);
    return v2;
  }

  return result;
}

uint64_t sub_100FDFC58(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 88);
  swift_beginAccess();
  (*(v6 + 24))(&v2[v13], a1, v5);
  swift_endAccess();
  CurrentValueSubject.send(_:)();
  (*(v6 + 16))(v8, a1, v5);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.yield(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100FDFE74()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AsyncStream();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AsyncStream.Continuation();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100FDFFAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100FE0008(uint64_t a1)
{
  v99 = type metadata accessor for AttributedString();
  v3 = *(v99 - 1);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v87 - v6;
  v8 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v8 - 8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = v1;
  v101 = &v87 - v12;
  v13 = *(a1 + 56);
  v14 = v13 | (*(a1 + 58) << 16);
  v98 = v3;
  if (v13 == 2)
  {
    v15 = *&CGAffineTransformIdentity.c;
    v102 = *&CGAffineTransformIdentity.a;
    v103 = v15;
    tx = CGAffineTransformIdentity.tx;
    ty = CGAffineTransformIdentity.ty;
  }

  else
  {
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithTransformedBoundsOrigin:*(a1 + 16) size:*(a1 + 24) angle:{v20, v19, v18}];
    [v21 position];
    v23 = v22;
    v25 = v24;

    v26 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:(v14 >> 8) & 1 size:HIWORD(v14) & 1 widthValid:v14 & 1 heightValid:0 horizontalFlip:v23 verticalFlip:v25 angle:{v20, v19, v18}];
    [v26 transform];
    v102 = *&v104.a;
    v103 = *&v104.c;
    tx = v104.tx;
    ty = v104.ty;
  }

  v27 = *(a1 + 120);
  v126 = *(a1 + 104);
  v127 = v27;
  v28 = *(a1 + 152);
  v128 = *(a1 + 136);
  v129 = v28;
  v130 = *(a1 + 168);
  if (v127 & 1) != 0 || (v29 = v126, v30 = *(a1 + 192), v121 = *(a1 + 176), v122 = v30, v31 = *(a1 + 224), v123 = *(a1 + 208), v124 = v31, v125 = *(a1 + 240), (v122))
  {
    v32 = 0x7463657078656E75;
    strcpy(&v104, "unexpectedNil");
    HIWORD(v104.b) = -4864;
    sub_10080B4B4();
    v104.c = 0.0;
    v104.d = 0.0;
    swift_willThrowTypedImpl();
    return v32;
  }

  v34 = v121;
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  v96 = v7;
  if (v37)
  {
    if (v37 == 1)
    {
      v95 = 0;
      v38 = 2;
    }

    else
    {
      v35 = sub_100120ABC(*&v126, *(&v126 + 1), *&v121, *(&v121 + 1), 0.5);
      v36 = v39;
      v95 = 0;
      v38 = 19;
    }
  }

  else
  {
    v95 = 1;
    v38 = 18;
  }

  v40 = objc_allocWithZone(CRLBezierPath);
  sub_10098E944(&v126, &v104);
  sub_10098E944(&v121, &v104);
  v41 = [v40 init];
  [v41 moveToPoint:v29];
  [v41 lineToPoint:{v35, v36}];
  [v41 lineToPoint:v34];
  *&v104.a = v102;
  *&v104.c = v103;
  v104.tx = tx;
  v104.ty = ty;
  [v41 transformUsingAffineTransform:&v104];
  [v41 bounds];
  v46 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v42 size:{v43, v44, v45}];
  [v46 transform];
  CGAffineTransformInvert(&v118, &v104);
  v104 = v118;
  [v41 transformUsingAffineTransform:&v104];
  v47 = [objc_allocWithZone(CRLConnectionLinePathSource) initWithBezierPath:v41];
  if (!v47)
  {
    v32 = 0x7463657078656E75;
    sub_10098E9A0(&v121);
    sub_10098E9A0(&v126);
    strcpy(&v104, "unexpectedNil");
    HIWORD(v104.b) = -4864;
    sub_10080B4B4();
    v104.c = 0.0;
    v104.d = 0.0;
    swift_willThrowTypedImpl();

    return v32;
  }

  v48 = v47;
  v94 = v38;
  *&v103 = v46;
  *&v102 = v41;
  v49 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
  [v48 setTailMagnet:v49];

  v50 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
  [v48 setHeadMagnet:v50];

  v51 = *(a1 + 264);
  v52 = *(a1 + 280);
  v119[0] = *(a1 + 248);
  v119[1] = v51;
  v119[2] = v52;
  v120 = *(a1 + 296);
  v53 = v145;
  v32 = sub_10096A0C0(v119);
  if (v53)
  {

    sub_10098E9A0(&v121);
    sub_10098E9A0(&v126);
    return v32;
  }

  v93 = sub_100D79758(BYTE1(v127));
  v92 = sub_100D79758(BYTE1(v122));
  [v48 setOutsetFrom:*(&v127 + 1)];
  [v48 setOutsetTo:*(&v122 + 1)];
  [v48 setType:v95];
  [v48 setUserDidSetControlPoint:1];
  v95 = *(v100 + 24);
  v145 = v48;
  v54 = v103;
  [v103 position];
  v90 = v56;
  v91 = v55;
  v89 = [v54 horizontalFlip];
  v88 = [v54 verticalFlip];
  [v54 angle];
  v87 = v57;
  v59 = v98;
  v58 = v99;
  v60 = v101;
  (v98[7])(v101, 1, 1, v99);
  sub_1006950BC(&v104);
  v141 = v114;
  v142 = v115;
  v143 = v116;
  v137 = v110;
  v138 = v111;
  v144 = v117;
  v139 = v112;
  v140 = v113;
  v133 = v106;
  v134 = v107;
  v135 = v108;
  v136 = v109;
  v131 = v104;
  v132 = v105;
  if (sub_100818518(v94))
  {
    v61 = 0;
  }

  else
  {
    sub_10000BE14(v60, v10, &qword_1019FC880);
    v62 = v59[6];
    if (v62(v10, 1, v58) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v62(v10, 1, v58) != 1)
      {
        sub_10000CAAC(v10, &qword_1019FC880);
      }
    }

    else
    {
      (v59[4])(v97, v10, v58);
    }

    sub_100824394();
    v61 = NSAttributedString.init(_:)();
  }

  v63 = v145;
  v64 = v94;
  v65 = type metadata accessor for CRLWPStorageCRDTData(0);
  v66 = v96;
  (*(*(v65 - 8) + 56))(v96, 1, 1, v65);
  v67 = sub_1011133FC(v64, 0, v48, 1, v91, v90, 0, v89, v88, v87, 0, 2, 2, 1, 1, 1, 1, v61, v66, &v131, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v66, &unk_101A0B1C0);
  sub_10000CAAC(v101, &qword_1019FC880);
  type metadata accessor for CRLConnectionLineItem();
  v68 = swift_dynamicCastClass();
  if (!v68)
  {

    sub_10098E9A0(&v121);
    sub_10098E9A0(&v126);
    strcpy(&v118, "unexpectedNil");
    HIWORD(v118.b) = -4864;
    sub_10080B4B4();
    v118.c = 0.0;
    v118.d = 0.0;
    swift_willThrowTypedImpl();

    return 0x7463657078656E75;
  }

  v69 = v67;
  v101 = v32;
  sub_100D654FC(v32);

  v70 = v92;
  v99 = v92;
  v71 = v69;
  sub_100C35D48(v70);
  v72 = v93;
  v98 = v93;
  sub_100C36568(v72);

  v73 = *(v100 + 16);
  swift_beginAccess();
  v74 = *(v73 + 24);
  v75 = v102;
  v76 = v103;
  if (!(v74 >> 62))
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_27;
    }

LABEL_43:
    v32 = 0xD000000000000013;

    sub_10098E9A0(&v121);
    sub_10098E9A0(&v126);

    v118.a = -2.31584178e77;
    *&v118.b = 0x800000010156BBC0;
    sub_10080B4B4();
    v118.c = 0.0;
    v118.d = 0.0;
    swift_willThrowTypedImpl();

    return v32;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_43;
  }

LABEL_27:
  v77 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v74 & 0xC000000000000001) != 0)
  {
LABEL_45:

    v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_32:
    v75 = *(&v128 + 1);
    if (*(&v128 + 1))
    {
      v78 = v128;
    }

    else
    {
      v78 = 0;
    }

    v63 = *(&v123 + 1);
    v79 = v123;
    if (!*(&v123 + 1))
    {
      v79 = 0;
    }

    v97 = v79;
    swift_beginAccess();
    v74 = *(v73 + 24);
    v80 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v73 + 24) = v74;
    v100 = v78;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if ((v77 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    v74 = sub_100B37BA4(0, *(v74 + 16) + 1, 1, v74);
    *(v73 + 24) = v74;
LABEL_38:
    v83 = *(v74 + 16);
    v82 = *(v74 + 24);
    if (v83 >= v82 >> 1)
    {
      v74 = sub_100B37BA4((v82 > 1), v83 + 1, 1, v74);
    }

    *(v74 + 16) = v83 + 1;
    v84 = (v74 + 40 * v83);
    v85 = v100;
    v84[4] = v68;
    v84[5] = v85;
    v86 = v97;
    v84[6] = v75;
    v84[7] = v86;
    v84[8] = v63;
    *(v73 + 24) = v74;
    swift_endAccess();

    return v68;
  }

  if (v77 < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v73 = *(v74 + 8 * v77 + 32);

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100FE0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s22ConnectionLineImporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

char *sub_100FE0D70(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v38 - v6;
  __chkstk_darwin(v7);
  v40 = v38 - v8;
  result = swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return result;
  }

  v38[1] = v1;

  result = swift_beginAccess();
  v38[0] = v10;
  v12 = (v10 + 64);
  v42 = a1;
  while (1)
  {
    v13 = *(v12 - 4);
    v14 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;
    v46 = v14;
    v44 = v16;
    v45 = v13;
    if (!v14)
    {

      result = v13;
      if (v16)
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }

    if (**&v13[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A0C0B8)
    {
      break;
    }

    v17 = *(v12 - 3);
    v18 = *(a1 + 16);
    v19 = *(v18 + 16);

    v41 = v15;
    if (v19)
    {

      v20 = v13;
      v21 = sub_10000BE7C(v17, v14);
      if (v22)
      {
        v23 = *(*(v18 + 56) + 8 * v21);

        (*((swift_isaMask & *v23) + 0x88))(v24);

        v25 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = v13;
    }

    v25 = 1;
LABEL_15:
    v27 = type metadata accessor for UUID();
    v28 = v40;
    (*(*(v27 - 8) + 56))(v40, v25, 1, v27);
    swift_beginAccess();
    sub_10000BE14(v28, v43, &qword_1019F6990);
    type metadata accessor for CRLConnectionLineCRDTData(0);
    sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.setter();
    sub_10000CAAC(v28, &qword_1019F6990);
    swift_endAccess();

    v15 = v41;
    a1 = v42;
    v16 = v44;
    v13 = v45;
    if (v44)
    {
LABEL_16:
      if (**&v13[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A0C0B8)
      {
        goto LABEL_27;
      }

      v29 = *(a1 + 16);
      if (*(v29 + 16))
      {

        v30 = sub_10000BE7C(v15, v16);
        v32 = v31;

        if (v32)
        {
          v33 = *(*(v29 + 56) + 8 * v30);

          (*((swift_isaMask & *v33) + 0x88))(v34);

          v35 = 0;
LABEL_23:
          v36 = type metadata accessor for UUID();
          v37 = v39;
          (*(*(v36 - 8) + 56))(v39, v35, 1, v36);
          swift_beginAccess();
          sub_10000BE14(v37, v43, &qword_1019F6990);
          type metadata accessor for CRLConnectionLineCRDTData(0);
          sub_1005B981C(&qword_101A06128);
          CRRegister.wrappedValue.setter();
          sub_10000CAAC(v37, &qword_1019F6990);
          swift_endAccess();

          a1 = v42;
          goto LABEL_4;
        }
      }

      else
      {
      }

      v35 = 1;
      goto LABEL_23;
    }

LABEL_3:

LABEL_4:
    v12 += 5;

    if (!--v11)
    {
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100FE1340(void *a1)
{
  v2 = _s13ItemViewModelVMa();
  v15 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_10004FF9C(a1 + v13 + v14 * v9, v16, _s13ItemViewModelVMa);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_10004FF9C(a1 + v13 + v14 * i, v5, _s13ItemViewModelVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10113CEBC(a1);
    }

    result = sub_100FE3140(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_100FE3140(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_100FE1598(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_100FE17C4(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v2[19] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[20] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100FE1908, 0, 0);
}

uint64_t sub_100FE1908()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_100FE1DE8(v1);
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator);
  v4 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v0[22] = v3;
  v0[23] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v6 = objc_allocWithZone(type metadata accessor for CRLCommandInsertBoardItems());
  swift_getObjectType();
  sub_1005B981C(&unk_101A09DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v8 = v5;
  *(inited + 32) = NSNotFound.getter();
  *(inited + 40) = v1;
  v9 = sub_100BD4E94(inited);
  swift_setDeallocating();

  sub_100BDFA98(inited + 32);
  v0[24] = sub_100BDF940(v8, v9);
  swift_deallocPartialClassInstance();
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
  v0[25] = v10;
  type metadata accessor for MainActor();
  v11 = v10;
  v0[26] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FE1AAC, v13, v12);
}

uint64_t sub_100FE1AAC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);

  v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100B36334(0, v4[2] + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_100B36334((v7 > 1), v8 + 1, 1, v4);
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v4[2] = v8 + 1;
  v11 = &v4[2 * v8];
  v11[4] = v9;
  *(v11 + 40) = 1;
  *(v1 + v3) = v4;
  swift_endAccess();
  sub_10088DA18();

  return _swift_task_switch(sub_100FE1BDC, 0, 0);
}

uint64_t sub_100FE1BDC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[24];
  [*(v3 + v1) savePendingChanges];
  v7 = *(v3 + v1);
  v8 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v10 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FF9C(v10 + v11, v4, type metadata accessor for CRLBoardCRDTData);
  v12 = v8;
  v13 = v7;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
  v14 = (*&v7[v9] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v15 = *v14;
  v16 = v14[1];

  sub_10084BD4C(v5, v15, v16, v2);

  static Date.now.getter();
  sub_100E133C8(v2, v6, 0, 0);

  (*(v19 + 8))(v6, v20);
  sub_10003D45C(v2, type metadata accessor for CRLBoardIdentifier);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100FE1DE8(unint64_t a1)
{
  v69 = sub_1005B981C(&qword_101A1F1B0);
  __chkstk_darwin(v69);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v61 - v9;
  __chkstk_darwin(v10);
  v66 = &v61 - v11;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_canvas);
  v13 = *(*(*(*(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v14 = *(v13 + 16);
  if (v14)
  {
    v61 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_canvas);
    v62 = a1;
    v72 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = v13 + 64;
    v16 = _HashTable.startBucket.getter();
    v17 = 0;
    v63 = v13 + 72;
    v64 = v14;
    v65 = v13 + 64;
    do
    {
      if (v16 < 0 || v16 >= 1 << *(v13 + 32))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v20 = v16 >> 6;
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_37;
      }

      v21 = *(v13 + 36);
      v70 = v17;
      v71 = v21;
      v22 = *(v13 + 48);
      v23 = type metadata accessor for UUID();
      v24 = v13;
      v25 = *(v23 - 8);
      v26 = v66;
      (*(v25 + 16))(v66, v22 + *(v25 + 72) * v16, v23);
      v27 = *(*(v24 + 56) + 8 * v16);
      v28 = v67;
      (*(v25 + 32))(v67, v26, v23);
      *&v28[*(v69 + 48)] = v27;
      v29 = v28;
      v30 = v68;
      sub_100D80010(v29, v68);
      v31 = *(v25 + 8);
      v32 = v27;
      v31(v30, v23);
      v13 = v24;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 = 1 << *(v24 + 32);
      if (v16 >= v18)
      {
        goto LABEL_38;
      }

      v15 = v65;
      v33 = *(v65 + 8 * v20);
      if ((v33 & (1 << v16)) == 0)
      {
        goto LABEL_39;
      }

      if (v71 != *(v24 + 36))
      {
        goto LABEL_40;
      }

      v34 = v33 & (-2 << (v16 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v64;
      }

      else
      {
        v35 = v20 << 6;
        v36 = v20 + 1;
        v19 = v64;
        v37 = (v63 + 8 * v20);
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_1000341AC(v16, v71, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_1000341AC(v16, v71, 0);
      }

LABEL_4:
      v17 = v70 + 1;
      v16 = v18;
    }

    while (v70 + 1 != v19);

    v12 = v61;
    a1 = v62;
  }

  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setInfosToDisplay:isa];

  [v12 nonInteractiveLayoutIfNeeded];
  [v12 unscaledRectOfLayouts];
  v2 = v41;
  v3 = v42;
  v4 = v43;
  v5 = v44;
  v45 = sub_100076BAC();

  if (!v45)
  {
    a1 = sub_100FE1598(a1, sub_100B3D660, sub_1007A83B8, sub_10113E260);
  }

  v62 = a1;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
  }

  while (1)
  {
    v47 = v62 & 0xFFFFFFFFFFFFFF8;
    v48 = (v62 + 32);
    v49 = v62 & 0xC000000000000001;
    if ((v62 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = *v48;
      goto LABEL_25;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v46 = _CocoaArrayWrapper.endIndex.getter();
    if (!v46)
    {
    }
  }

  v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:
  v51 = v50;
  sub_100FE270C(v50, v2, v3, v4, v5);

  if (v46 == 1)
  {
  }

  v53 = 1;
  while (!v49)
  {
    if (v53 >= *(v47 + 16))
    {
      goto LABEL_41;
    }

    v54 = v48[v53];
    v55 = v53 - 1;
    if (v53 - 1 >= *(v47 + 16))
    {
      goto LABEL_42;
    }

    v56 = v54;
    ++v53;
    v57 = v48[v55];
LABEL_32:
    v58 = (*((swift_isaMask & *v57) + 0xE0))();
    [v58 position];
    sub_100FE2C4C(v56, v59, v60);

    if (v53 == v46)
    {
    }
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(v53, 1))
  {
    v56 = result;
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    ++v53;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

id sub_100FE241C(id result, uint64_t a2)
{
  if (result)
  {
    result = [result pureGeometry];
    if (result)
    {
      v3 = result;
      v4 = [result infoGeometry];

      [v4 position];
      v6 = v5;
      v8 = v7;

      result = swift_beginAccess();
      *(a2 + 16) = -v6;
      *(a2 + 24) = -v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100FE2500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoardLibraryHeadlessController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100FE25A4(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = *((swift_isaMask & *a1) + 0xE0);
  v4 = v3();
  [v4 position];
  v6 = v5;
  v8 = v7;

  if (v6 == 0.0)
  {
    v9 = v8 == 0.0;
    v10 = 0.0;
    if (v9)
    {
      v11 = v3();
      [v11 size];
      v13 = v12;
      v15 = v14;

      if (v13 == 0.0 && v15 == 0.0)
      {

        sub_1009B27C4(sub_100FE3138, v2);

        swift_beginAccess();
      }

      v10 = *(v2 + 16);
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

void sub_100FE270C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_100FE25A4(a1);
  v11 = (*((swift_isaMask & *a1) + 0xE0))();
  [v11 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  if (swift_dynamicCast())
  {
    v12 = sub_100076BAC();
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    if (v12)
    {
      v17 = v10 + CGRectGetMaxX(*&v13);
      [v49 size];
      v19 = v17 + v18 * 0.5;
      v20 = 50.0;
    }

    else
    {
      v44 = CGRectGetMinX(*&v13) - v10;
      [v49 size];
      v19 = v44 + v45 * -0.5;
      v20 = -50.0;
    }

    v46 = v19 + v20;
    sub_100120414(a2, a3, a4, a5);
    [v49 setCenter:v46];
    v47 = *((swift_isaMask & *a1) + 0xE8);
    v48 = v49;
    v47();
  }

  else
  {
    v21 = objc_opt_self();
    v22 = [v21 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49);
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v31 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v31;
    v32 = sub_1005CF04C();
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 75;
    v34 = v49;
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    [v21 handleFailureInFunction:v41 file:v42 lineNumber:75 isFatal:0 format:v43 args:v40];
  }
}

void sub_100FE2C4C(void *a1, double a2, double a3)
{
  v6 = (*((swift_isaMask & *a1) + 0xE0))();
  [v6 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  if (swift_dynamicCast())
  {
    v7 = sub_100FE25A4(a1);
    v9 = v8;
    v10 = sub_100076BAC();
    v11 = v7 + a2 + 50.0;
    v12 = v9 + a3 + 50.0;
    if (!v10)
    {
      v11 = a2 - v7 + -50.0;
      v12 = a3 - v9 + -50.0;
    }

    [v38 setPosition:{v11, v12, a2 - v7 + -50.0, a3 - v9 + -50.0}];
    v13 = *((swift_isaMask & *a1) + 0xE8);
    v14 = v38;
    v13();
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 97;
    v28 = v38;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:97 isFatal:0 format:v37 args:v34];
  }
}

uint64_t sub_100FE3140(uint64_t a1, uint64_t a2)
{
  v4 = _s13ItemViewModelVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FE31A4()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100FE3244()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_100FE32EC()
{
  sub_100005070(v0 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_persistenceContext);
}

uint64_t sub_100FE332C()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8));
  v1 = OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_persistenceContext;

  sub_100005070(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_100FE3478()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_boardCRDTData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100FE357C()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform46CRLUserBoardMetadataSyncRemoteRecordIdentifier_boardIdentifier);

  return swift_deallocClassInstance();
}

uint64_t sub_100FE3608()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_100FE3698(uint64_t a1)
{
  result = 0x742074726F707845;
  switch(a1)
  {
    case 0:
      result = 0xD000000000000020;
      break;
    case 1:
      return result;
    case 2:
      result = 0x66666F646E6148;
      break;
    case 3:
      result = 0x6F4220746E697250;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      v3 = 0x7265676E6946;
      goto LABEL_10;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      v3 = 0x6C69636E6550;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x7320776F6C6C6F46;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_100FE38C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100FE38F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100FE38F8(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100FE390C()
{
  result = qword_101A26EE0[0];
  if (!qword_101A26EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_101A26EE0);
  }

  return result;
}

uint64_t sub_100FE39BC()
{

  return v0;
}

uint64_t sub_100FE39F4()
{
  sub_100FE39BC();

  return swift_deallocClassInstance();
}

uint64_t sub_100FE3A40()
{
  v1 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID);
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData), *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData), *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData), *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData), *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue), *(v0 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8));
  return v0;
}

uint64_t sub_100FE3B24()
{
  sub_100FE3A40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLBoardItemDatabaseRow()
{
  result = qword_101A26F90;
  if (!qword_101A26F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FE3BD0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRLBoardIdentifierStorage(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100FE3D2C()
{
  result = qword_101A27198;
  if (!qword_101A27198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27198);
  }

  return result;
}

unint64_t sub_100FE3D84()
{
  result = qword_101A271A0;
  if (!qword_101A271A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A271A0);
  }

  return result;
}

unint64_t sub_100FE3DDC()
{
  result = qword_101A271A8;
  if (!qword_101A271A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A271A8);
  }

  return result;
}

unint64_t sub_100FE3E34()
{
  result = qword_101A271B0;
  if (!qword_101A271B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A271B0);
  }

  return result;
}

__n128 sub_100FE3E88@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void sub_100FE3EAC()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = sub_100078EA4(_swiftEmptyArrayStorage);
  }

  qword_101AD8C48 = v3;
}

void sub_100FE3F88()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  qword_101A271B8 = v3;
  qword_101A271C0 = v5;
}

uint64_t sub_100FE4048(void *a1)
{
  v2 = type metadata accessor for Calendar();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [a1 objectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v43[0] = v44;
  v43[1] = v45;
  if (!*(&v45 + 1))
  {
    sub_10000CAAC(v43, &unk_1019F4D00);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_13;
  }

  v20 = swift_dynamicCast();
  (*(v12 + 56))(v10, v20 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_13:
    sub_10000CAAC(v10, &qword_101A0A320);
    return 0;
  }

  (*(v12 + 32))(v17, v10, v11);
  if (qword_1019F27F0 != -1)
  {
    swift_once();
  }

  v21 = qword_101AD8C48;
  v41 = 0xD000000000000020;
  v42 = 0x80000001015B8390;
  AnyHashable.init<A>(_:)();
  if (*(v21 + 16) && (v22 = sub_1000640CC(v43), (v23 & 1) != 0))
  {
    sub_100064288(*(v21 + 56) + 32 * v22, &v44);
    sub_100064234(v43);
    if (swift_dynamicCast())
    {
      v37 = v41;
      static Calendar.current.getter();
      sub_1005B981C(&qword_1019F5528);
      v36 = type metadata accessor for Calendar.Component();
      v24 = *(v36 - 8);
      v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v25 = v34;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10146C6B0;
      v27 = v26 + v25;
      v28 = v36;
      (*(v24 + 104))(v27, enum case for Calendar.Component.day(_:), v36);
      v35 = sub_10001644C(v26);
      swift_setDeallocating();
      (*(v24 + 8))(v26 + v34, v28);
      swift_deallocClassInstance();
      static Date.now.getter();
      Calendar.dateComponents(_:from:to:)();

      v29 = *(v12 + 8);
      v29(v14, v11);
      (*(v39 + 8))(v4, v40);
      v30 = DateComponents.day.getter();
      LODWORD(v26) = v31;
      (*(v38 + 8))(v7, v5);
      v29(v17, v11);
      return (v30 >= v37) & ~v26;
    }
  }

  else
  {
    sub_100064234(v43);
  }

  (*(v12 + 8))(v17, v11);
  return 0;
}

BOOL sub_100FE4660(void *a1)
{
  v2 = type metadata accessor for Calendar();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Date();
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  if (qword_1019F27F0 != -1)
  {
    swift_once();
  }

  v18 = qword_101AD8C48;
  v50 = 0xD00000000000001FLL;
  v51 = 0x80000001015B8370;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = sub_1000640CC(&v52), (v20 & 1) == 0))
  {
    sub_100064234(&v52);
    return 0;
  }

  sub_100064288(*(v18 + 56) + 32 * v19, &v54);
  sub_100064234(&v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v46 = v5;
  v42 = v50;
  v21 = String._bridgeToObjectiveC()();
  v22 = [a1 objectForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v24 = v49;
  v52 = v54;
  v53 = v55;
  if (*(&v55 + 1))
  {
    v25 = swift_dynamicCast();
    (*(v24 + 56))(v11, v25 ^ 1u, 1, v12);
    if ((*(v24 + 48))(v11, 1, v12) != 1)
    {
      (*(v24 + 32))(v17, v11, v12);
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000CAAC(&v52, &unk_1019F4D00);
    (*(v24 + 56))(v11, 1, 1, v12);
  }

  static Date.distantPast.getter();
  if ((*(v24 + 48))(v11, 1, v12) != 1)
  {
    sub_10000CAAC(v11, &qword_101A0A320);
  }

LABEL_17:
  v26 = String._bridgeToObjectiveC()();
  v27 = [a1 objectForKey:v26];

  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v52 = v54;
  v53 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v28 = v51;
      v41 = v50;
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000CAAC(&v52, &unk_1019F4D00);
  }

  v41 = 0;
  v28 = 0xE000000000000000;
LABEL_25:
  v44 = v28;
  v29 = [objc_opt_self() mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 objectForInfoDictionaryKey:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v52 = v54;
  v53 = v55;
  v45 = v6;
  if (!*(&v55 + 1))
  {
    sub_10000CAAC(&v52, &unk_1019F4D00);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v43 = 0xE100000000000000;
    v40 = 63;
    goto LABEL_33;
  }

  v40 = v50;
  v43 = v51;
LABEL_33:
  static Calendar.current.getter();
  sub_1005B981C(&qword_1019F5528);
  v32 = type metadata accessor for Calendar.Component();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10146C6B0;
  (*(v33 + 104))(v35 + v34, enum case for Calendar.Component.day(_:), v32);
  sub_10001644C(v35);
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  v36 = *(v49 + 8);
  v36(v14, v12);
  (*(v47 + 8))(v4, v48);
  v37 = DateComponents.day.getter();
  if ((v38 & 1) != 0 || v37 < v42 || v41 == v40 && v44 == v43)
  {

    (*(v45 + 8))(v8, v46);
    v36(v17, v12);
    return 0;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v45 + 8))(v8, v46);
  v36(v17, v12);
  return (v39 & 1) == 0;
}

BOOL sub_100FE4F1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_1019F27F8 != -1)
      {
        swift_once();
      }

      if (qword_101A271C0)
      {
        v3 = String._bridgeToObjectiveC()();

        v4 = sub_10013123C(v3);

        v5 = String._bridgeToObjectiveC()();
        v6 = sub_10013123C(v5);

        return v4 == v6;
      }
    }
  }

  else
  {
    sub_10000CAAC(v10, &unk_1019F4D00);
  }

  return 0;
}

BOOL sub_100FE50D8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v9[0] = v10;
  v9[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_1019F27F0 != -1)
      {
        swift_once();
      }

      v4 = qword_101AD8C48;
      AnyHashable.init<A>(_:)();
      if (*(v4 + 16) && (v5 = sub_1000640CC(v9), (v6 & 1) != 0))
      {
        sub_100064288(*(v4 + 56) + 32 * v5, &v10);
        sub_100064234(v9);
        if (swift_dynamicCast())
        {
          return v8 >= 0xD00000000000001DLL;
        }
      }

      else
      {
        sub_100064234(v9);
      }
    }
  }

  else
  {
    sub_10000CAAC(v9, &unk_1019F4D00);
  }

  return 0;
}

id CRLiOSAppStoreReviewHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAppStoreReviewHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id CRLiOSAppStoreReviewHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAppStoreReviewHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100FE5374()
{
  if (qword_1019F2800 != -1)
  {
    swift_once();
  }

  v0 = qword_101A271C8;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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
      v3 = v6;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000CAAC(v9, &unk_1019F4D00);
  }

  v3 = 0;
LABEL_11:
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    [v0 setInteger:v4 forKey:v5];
  }
}

BOOL sub_100FE54D8()
{
  v0 = qword_1019F2800;

  if (v0 != -1)
  {
    swift_once();
  }

  v5 = qword_101A271C8;
  sub_1005B978C(&v5, &v4);

  if (v4 != 1)
  {
    goto LABEL_13;
  }

  v1 = qword_1019F2800;

  if (v1 != -1)
  {
    swift_once();
  }

  v5 = qword_101A271C8;
  sub_1005B97BC(&v5, &v4);

  if (v4 != 1)
  {
    goto LABEL_13;
  }

  v2 = qword_1019F2800;

  if (v2 != -1)
  {
    swift_once();
  }

  v5 = qword_101A271C8;
  sub_1005B97EC(&v5, &v4);

  if (v4)
  {
    sub_1005B981C(&unk_1019F5270);
    swift_arrayDestroy();

    return sub_100FE4F1C();
  }

  else
  {
LABEL_13:
    sub_1005B981C(&unk_1019F5270);
    swift_arrayDestroy();
    return 0;
  }
}

void sub_100FE56D0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForInfoDictionaryKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_10000CAAC(v17, &unk_1019F4D00);
  }

  [objc_opt_self() requestReviewInScene:a1];
  if (qword_1019F2800 != -1)
  {
    swift_once();
  }

  v9 = qword_101A271C8;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:isa forKey:v11];

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  [v9 setObject:v12 forKey:v13];
}

uint64_t sub_100FE5988(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  sub_100601584(a2, v16);
  v6 = v17;
  if (v17)
  {
    v7 = sub_100020E58(v16, v17);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100005070(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for CRLWPStickyNoteEditor();
  v15.receiver = v2;
  v15.super_class = v13;
  v14 = objc_msgSendSuper2(&v15, "canPerformEditorAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  return v14;
}

void sub_100FE5B88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 interactiveCanvasController];
  if (!v9)
  {
    v26 = objc_opt_self();
    LODWORD(v27) = [v26 _atomicIncrementAssertCount];
    v138[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v138);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v30;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 commandController];
  v134 = v10;
  if (!v11)
  {
    v46 = objc_opt_self();
    v47 = [v46 _atomicIncrementAssertCount];
    v138[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v138);
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v49 lastPathComponent];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v54 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v47;
    v56 = sub_1005CF000();
    *(inited + 96) = v56;
    v57 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v57;
    *(inited + 72) = v48;
    *(inited + 136) = &type metadata for String;
    v58 = sub_1000053B0();
    *(inited + 112) = v51;
    *(inited + 120) = v53;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v58;
    *(inited + 152) = 27;
    v59 = v138[0];
    *(inited + 216) = v56;
    *(inited + 224) = v57;
    *(inited + 192) = v59;
    v60 = v48;
    v61 = v59;
    v62 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v63 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v63, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v64 = swift_allocObject();
    v64[2] = 8;
    v64[3] = 0;
    v64[4] = 0;
    v64[5] = 0;
    v65 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v43 file:v44 lineNumber:27 isFatal:0 format:v45 args:v65];

    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v10 canvasEditor];
  v133 = v12;
  if (!v13)
  {
    v66 = objc_opt_self();
    v67 = [v66 _atomicIncrementAssertCount];
    v138[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v138);
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    v70 = [v69 lastPathComponent];

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v74 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_10146CA70;
    *(v75 + 56) = &type metadata for Int32;
    *(v75 + 64) = &protocol witness table for Int32;
    *(v75 + 32) = v67;
    v76 = sub_1005CF000();
    *(v75 + 96) = v76;
    v77 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(v75 + 104) = v77;
    *(v75 + 72) = v68;
    *(v75 + 136) = &type metadata for String;
    v78 = sub_1000053B0();
    *(v75 + 112) = v71;
    *(v75 + 120) = v73;
    *(v75 + 176) = &type metadata for UInt;
    *(v75 + 184) = &protocol witness table for UInt;
    *(v75 + 144) = v78;
    *(v75 + 152) = 28;
    v79 = v138[0];
    *(v75 + 216) = v76;
    *(v75 + 224) = v77;
    *(v75 + 192) = v79;
    v80 = v68;
    v81 = v79;
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v83 = static os_log_type_t.error.getter();
    sub_100005404(v74, &_mh_execute_header, v83, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v84 = swift_allocObject();
    v84[2] = 8;
    v84[3] = 0;
    v84[4] = 0;
    v84[5] = 0;
    v85 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v87 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v86 file:v87 lineNumber:28 isFatal:0 format:v45 args:v85];

    goto LABEL_39;
  }

  v14 = v13;
  sub_100601584(a1, v138);
  v131 = v14;
  if (!v139)
  {
    sub_1005E09AC(v138);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v88 = objc_opt_self();
    v89 = [v88 _atomicIncrementAssertCount];
    v138[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v138);
    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    v92 = [v91 lastPathComponent];

    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v96 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_10146CA70;
    *(v97 + 56) = &type metadata for Int32;
    *(v97 + 64) = &protocol witness table for Int32;
    *(v97 + 32) = v89;
    v98 = sub_1005CF000();
    *(v97 + 96) = v98;
    v99 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(v97 + 104) = v99;
    *(v97 + 72) = v90;
    *(v97 + 136) = &type metadata for String;
    v100 = sub_1000053B0();
    *(v97 + 112) = v93;
    *(v97 + 120) = v95;
    *(v97 + 176) = &type metadata for UInt;
    *(v97 + 184) = &protocol witness table for UInt;
    *(v97 + 144) = v100;
    *(v97 + 152) = 29;
    v101 = v138[0];
    *(v97 + 216) = v98;
    *(v97 + 224) = v99;
    *(v97 + 192) = v101;
    v102 = v90;
    v103 = v101;
    v104 = static os_log_type_t.error.getter();
    sub_100005404(v96, &_mh_execute_header, v104, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v97);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v105 = static os_log_type_t.error.getter();
    sub_100005404(v96, &_mh_execute_header, v105, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v106 = swift_allocObject();
    v106[2] = 8;
    v106[3] = 0;
    v106[4] = 0;
    v106[5] = 0;
    v107 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v109 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v88 handleFailureInFunction:v108 file:v109 lineNumber:29 isFatal:0 format:v45 args:v107];
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  v130 = v4;
  v129 = v136;
  swift_unknownObjectRetain();
  v15 = [v2 editorController];
  v16 = [v15 selectionPath];

  v17 = [objc_allocWithZone(CRLCanvasCommandSelectionBehavior) initWithCanvasEditor:v14 type:2 selectionPath:v16];
  swift_unknownObjectRelease();

  v18 = v17;
  sub_10088E3FC(v17);
  v125 = v18;

  v19 = [v2 boardItems];
  v20 = type metadata accessor for CRLBoardItem(0);
  sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v126 = v20;
  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v22 = v138[0];
    v23 = v138[1];
    v24 = v138[2];
    v25 = v139;
    v26 = v140;
  }

  else
  {
    v25 = 0;
    v110 = -1 << *(v21 + 32);
    v23 = (v21 + 56);
    v24 = ~v110;
    v111 = -v110;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    else
    {
      v112 = -1;
    }

    v26 = (v112 & *(v21 + 56));
    v22 = v21;
  }

  v124 = v24;
  v113 = (v24 + 64) >> 6;
  v127 = (v5 + 8);
  v128 = (v5 + 16);
  v132 = v22;
  while ((v22 & 0x8000000000000000) != 0)
  {
    v117 = __CocoaSet.Iterator.next()();
    if (!v117 || (v135 = v117, swift_dynamicCast(), v5 = v136, v27 = v25, v116 = v26, v22 = v132, !v136))
    {
LABEL_38:
      sub_100035F90();
      v123 = v133;
      sub_10088E600(0);

      swift_unknownObjectRelease();
      v45 = v125;
      goto LABEL_39;
    }

LABEL_36:
    type metadata accessor for CRLWPStickyNoteItem();
    v118 = swift_dynamicCastClass();
    if (v118)
    {
      (*(**(v118 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v118);
      v119 = type metadata accessor for CRLCommandSetStickyPreset();
      v120 = objc_allocWithZone(v119);
      v121 = v130;
      (*v128)(&v120[OBJC_IVAR____TtC8Freeform25CRLCommandSetStickyPreset_id], v8, v130);
      v120[OBJC_IVAR____TtC8Freeform25CRLCommandSetStickyPreset_preset] = v129;
      v137.receiver = v120;
      v137.super_class = v119;
      v122 = objc_msgSendSuper2(&v137, "init", v124);
      (*v127)(v8, v121);
      sub_100888700(v122, 0, 0, 4, 0);
      v22 = v132;

      v5 = v122;
    }

    v25 = v27;
    v26 = v116;
  }

  v114 = v25;
  v115 = v26;
  v27 = v25;
  if (v26)
  {
LABEL_32:
    v116 = (v115 - 1) & v115;
    v5 = *(*(v22 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v115)))));
    if (!v5)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  while (1)
  {
    v27 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v27 >= v113)
    {
      goto LABEL_38;
    }

    v115 = v23[v27];
    ++v114;
    if (v115)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_42:
  swift_once();
LABEL_9:
  v31 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10146CA70;
  *(v32 + 56) = &type metadata for Int32;
  *(v32 + 64) = &protocol witness table for Int32;
  *(v32 + 32) = v27;
  v33 = sub_1005CF000();
  *(v32 + 96) = v33;
  v34 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
  *(v32 + 104) = v34;
  *(v32 + 72) = v22;
  *(v32 + 136) = &type metadata for String;
  v35 = sub_1000053B0();
  *(v32 + 112) = v8;
  *(v32 + 120) = v5;
  *(v32 + 176) = &type metadata for UInt;
  *(v32 + 184) = &protocol witness table for UInt;
  *(v32 + 144) = v35;
  *(v32 + 152) = 26;
  v36 = v138[0];
  *(v32 + 216) = v33;
  *(v32 + 224) = v34;
  *(v32 + 192) = v36;
  v37 = v22;
  v38 = v36;
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v32);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v40, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v41 = swift_allocObject();
  v41[2] = 8;
  v41[3] = 0;
  v41[4] = 0;
  v41[5] = 0;
  v42 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v43 file:v44 lineNumber:26 isFatal:0 format:v45 args:v42];
LABEL_13:

LABEL_39:
}

void sub_100FE6F14()
{
  v1 = v0;
  v2 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  v5 = &selRef_geometryWithMask;
  if (v4 != 1)
  {
    v77 = objc_opt_self();
    v6 = [v77 _atomicIncrementAssertCount];
    v78[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v78);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_1005CF000();
    *(inited + 96) = v15;
    v16 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 43;
    v18 = v78[0];
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Only should save default style with a single object selected!", 61, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    v5 = &selRef_geometryWithMask;
    [v77 handleFailureInFunction:v25 file:v26 lineNumber:43 isFatal:0 format:v27 args:v24];
  }

  v28 = [v1 boardItems];
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = sub_100BC17C8(v29);

  if (!v30)
  {
    goto LABEL_13;
  }

  type metadata accessor for CRLWPStickyNoteItem();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

LABEL_13:
    v37 = objc_opt_self();
    v38 = [v37 _atomicIncrementAssertCount];
    v78[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v78);
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_10146CA70;
    *(v46 + 56) = &type metadata for Int32;
    *(v46 + 64) = &protocol witness table for Int32;
    *(v46 + 32) = v38;
    v47 = sub_1005CF000();
    *(v46 + 96) = v47;
    v48 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(v46 + 104) = v48;
    *(v46 + 72) = v39;
    *(v46 + 136) = &type metadata for String;
    v49 = sub_1000053B0();
    *(v46 + 112) = v42;
    *(v46 + 120) = v44;
    *(v46 + 176) = &type metadata for UInt;
    *(v46 + 144) = v49;
    *(v46 + 152) = 44;
    v50 = v78[0];
    *(v46 + 216) = v47;
    *(v46 + 224) = v48;
    *(v46 + 184) = &protocol witness table for UInt;
    *(v46 + 192) = v50;
    v51 = v39;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v37 v5[112]];
    goto LABEL_16;
  }

  v32 = v31;
  v33 = [v1 interactiveCanvasController];
  v34 = [v33 commandController];

  if (!v34)
  {
    v57 = objc_opt_self();
    v58 = [v57 _atomicIncrementAssertCount];
    v78[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v78);
    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_10146CA70;
    *(v66 + 56) = &type metadata for Int32;
    *(v66 + 64) = &protocol witness table for Int32;
    *(v66 + 32) = v58;
    v67 = sub_1005CF000();
    *(v66 + 96) = v67;
    v68 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000);
    *(v66 + 104) = v68;
    *(v66 + 72) = v59;
    *(v66 + 136) = &type metadata for String;
    v69 = sub_1000053B0();
    *(v66 + 112) = v62;
    *(v66 + 120) = v64;
    *(v66 + 176) = &type metadata for UInt;
    *(v66 + 144) = v69;
    *(v66 + 152) = 45;
    v70 = v78[0];
    *(v66 + 216) = v67;
    *(v66 + 224) = v68;
    *(v66 + 184) = &protocol witness table for UInt;
    *(v66 + 192) = v70;
    v71 = v59;
    v72 = v70;
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v66);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v74, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v75 = swift_allocObject();
    v75[2] = 8;
    v75[3] = 0;
    v75[4] = 0;
    v75[5] = 0;
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v57 handleFailureInFunction:v35 file:v34 lineNumber:45 isFatal:0 format:v36 args:v76];

LABEL_16:

    goto LABEL_17;
  }

  objc_allocWithZone(type metadata accessor for CRLCommandSetDefaultStickyNoteInsertionPreset());
  v35 = v30;
  v36 = sub_1005CF714(v32);
  sub_100888700(v36, 0, 0, 4, 0);
LABEL_17:
}

void sub_100FE7BAC(void *a1, double a2, double a3)
{
  v33.receiver = v3;
  v33.super_class = type metadata accessor for CRLWPStickyNoteEditor();
  objc_msgSendSuper2(&v33, "addMiniFormatterElementsToArray:atPoint:", a1, a2, a3);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 crl_quickInspectorImageNamed:v12];

  v15 = [objc_allocWithZone(CRLQuickInspectorElement) initWithName:v11 image:v14 type:2 options:4096];
  [v15 setTag:16];
  v16 = [v7 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v15 setToolTip:v19];

  v20 = v15;
  [a1 insertObject:v20 atIndex:{objc_msgSend(a1, "count")}];

  v21 = [v7 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = [v13 crl_quickInspectorImageNamed:v25];

  v27 = [objc_allocWithZone(CRLQuickInspectorElement) initWithName:v24 image:v26 type:2 options:0x2000];
  [v27 setTag:17];
  v28 = [v7 mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  if (!v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();
  }

  [v27 setToolTip:v31];

  v32 = v27;
  [a1 insertObject:v32 atIndex:{objc_msgSend(a1, "count")}];
}

id sub_100FE8148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPStickyNoteEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100FE81B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100FE81F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100FE8308(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A272F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100FE8C80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  sub_100FE8D9C(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy();
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_100024E98(v14, v11);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100FE8518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A272E8);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy();
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100FE8C80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v17;
  v13 = v11;
  LOBYTE(v20) = 0;
  sub_100FE8D9C(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  v14 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1005C5B7C(v19, v13);
  LOBYTE(v20) = 1;
  *(v13 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  sub_1006D6258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v20;
  sub_100FE8CD4(v13, v16, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
  sub_100005070(a1);
  return sub_100FE8D3C(v13, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
}

uint64_t sub_100FE886C(uint64_t a1)
{
  v2 = sub_100FE8C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FE88A8(uint64_t a1)
{
  v2 = sub_100FE8C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FE8914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  v8 = type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy();
  a2[3] = v8;
  a2[4] = sub_100FE8D9C(&qword_101A27240, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
  v9 = sub_10002C58C(a2);
  sub_100FE8CD4(a1, v9, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v9 + *(v8 + 20)) = v5;
  v10 = (v9 + *(v8 + 24));
  *v10 = v7;
  v10[1] = v6;

  return sub_100024E98(v7, v6);
}

unint64_t sub_100FE89F4()
{
  result = qword_101A27220;
  if (!qword_101A27220)
  {
    sub_1005C4E5C(&qword_101A27228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27220);
  }

  return result;
}

unint64_t sub_100FE8A5C()
{
  result = qword_101A27230;
  if (!qword_101A27230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27230);
  }

  return result;
}

unint64_t sub_100FE8AB0()
{
  result = qword_101A27238;
  if (!qword_101A27238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27238);
  }

  return result;
}

uint64_t type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy()
{
  result = qword_101A272A0;
  if (!qword_101A272A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FE8B78()
{
  result = type metadata accessor for CRLGloballyScopedBoardIdentifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100FE8BFC(uint64_t a1)
{
  *(a1 + 8) = sub_100FE8D9C(&qword_101A272E0, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
  result = sub_100FE8D9C(&qword_1019FF188, type metadata accessor for CRLBoardAuxiliaryRealTimeChangeRecordLegacy);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100FE8C80()
{
  result = qword_101A272F0;
  if (!qword_101A272F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A272F0);
  }

  return result;
}

uint64_t sub_100FE8CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100FE8D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FE8D9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100FE8DF8()
{
  result = qword_101A27300;
  if (!qword_101A27300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27300);
  }

  return result;
}

unint64_t sub_100FE8E50()
{
  result = qword_101A27308;
  if (!qword_101A27308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27308);
  }

  return result;
}

unint64_t sub_100FE8EA8()
{
  result = qword_101A27310;
  if (!qword_101A27310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A27310);
  }

  return result;
}

uint64_t sub_100FE8EFC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100FE9208(v2, a1, type metadata accessor for CRLBasicLayerAnimation);
  v10[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v5 = sub_1005F907C();
  v10[4] = v5;
  v10[0] = swift_allocObject();
  sub_1005F8AB8(a1, v10[0] + 16);
  sub_10002A948(v10, &type metadata for CRLBasicLayerAnimation.Def);
  v6 = (*(*(v5 + 32) + 24))(v9, &type metadata for CRLBasicLayerAnimation.Def);
  *v7 = *v7 + a2;
  v6(v9, 0);
  return sub_1006BF678(v10);
}

double sub_100FE8FFC@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1005F8AB8(v2, a1);
  result = *(a1 + 8) + a2;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100FE9040@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100FE9208(v2, a1, type metadata accessor for CRLSpringLayerAnimation);
  v10[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v5 = sub_1008DA198();
  v10[4] = v5;
  v10[0] = swift_allocObject();
  sub_1008DA1EC(a1, v10[0] + 16);
  sub_10002A948(v10, &type metadata for CRLSpringLayerAnimation.Def);
  v6 = (*(*(v5 + 32) + 24))(v9, &type metadata for CRLSpringLayerAnimation.Def);
  *v7 = *v7 + a2;
  v6(v9, 0);
  return sub_1012340B0(v10);
}

double sub_100FE9140@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1008DA1EC(v2, a1);
  result = *(a1 + 32) + a2;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100FE9184@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16) + a2;
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

double sub_100FE91A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_100FE9208(v5, a2, type metadata accessor for CRLTweenLayerAnimation);
  v8 = a2 + *(a1 + 32);
  result = *(v8 + 8) + a3;
  *(v8 + 8) = result;
  return result;
}

uint64_t sub_100FE9208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_100FE9274()
{
  v1 = *v0;
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A0F400);
  v2 = *(*v0 + 744);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 872) - 8) + 8))(v0 + *(*v0 + 888));
  return v0;
}

uint64_t sub_100FE937C(uint64_t a1)
{
  v3 = *(*v1 + 872);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v15 - v5;
  v7 = type metadata accessor for MergeResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLAbstractShapeItemData();
  result = swift_dynamicCastClass();
  if (result)
  {
    (*(*result + 896))();
    v12 = *v1;
    v15[0] = v7;
    v15[1] = a1;
    v13 = *(v12 + 912);

    v14 = v13(v16);
    dispatch thunk of CRMergeable.merge(_:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v15[0]);
    v14(v16, 0);
  }

  return result;
}

uint64_t sub_100FE95E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 872);
  v42 = *(v4 - 8);
  __chkstk_darwin(a1);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = type metadata accessor for UUID();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = *(v2 + 880);
  type metadata accessor for CRLAbstractShapeItemData();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = v21;
  v37 = v20;
  v38 = v4;
  v23 = *(v3 + 736);
  swift_beginAccess();
  v39 = v1;
  sub_10000BE14(v1 + v23, v19, &unk_101A0F400);
  v24 = *(*v22 + 736);
  swift_beginAccess();
  sub_10000BE14(v22 + v24, v16, &unk_101A0F400);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v25 = static UUID.== infix(_:_:)();
  v26 = v44;
  v27 = *(v43 + 8);
  v27(v10, v44);
  v27(v13, v26);
  if ((v25 & 1) == 0)
  {

    sub_10000CAAC(v16, &unk_101A0F400);
    sub_10000CAAC(v19, &unk_101A0F400);
LABEL_7:
    v34 = 0;
    return v34 & 1;
  }

  v28 = sub_101278AEC();
  sub_10000CAAC(v16, &unk_101A0F400);
  v29 = sub_10000CAAC(v19, &unk_101A0F400);
  if ((v28 & 1) == 0)
  {

    goto LABEL_7;
  }

  v30 = v40;
  v31 = (*(*v39 + 896))(v29);
  v32 = v41;
  (*(*v22 + 896))(v31);
  v33 = v38;
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();

  v35 = *(v42 + 8);
  v35(v32, v33);
  v35(v30, v33);
  return v34 & 1;
}

uint64_t sub_100FE9AAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = *(v2 + 896);
  if (v12)
  {
    v11(v8);
    dispatch thunk of CRType.copy(renamingReferences:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11(v8);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v13, qword_101AD6348);
  v14 = dispatch thunk of CRMergeable.serializedData(_:version:)();
  (*(v4 + 8))(v10, v3);
  return v14;
}

uint64_t sub_100FE9CBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  type metadata accessor for CRLAbstractShapeItemData();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = (*(v2 + 896))();
    (*(*v11 + 896))(v12);
    v13 = dispatch thunk of CRDT.hasDelta(from:)();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
    return v13 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100FE9EF0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = *v2;
  v5 = *(*v2 + 872);
  v36 = *(v5 - 8);
  __chkstk_darwin(a1);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v12 = *(*(v11 + 880) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = type metadata accessor for Optional();
  v40 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  v39 = a1;
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = (*(v4 + 896))();
    (*(*v19 + 896))(v20);

    v33[1] = v12;
    dispatch thunk of CRDT.delta(_:from:)();
    v21 = *(v36 + 1);
    v21(v7, v5);
    v21(v10, v5);
    v22 = v40;
    v23 = v34;
    (*(v40 + 16))(v14, v17, v34);
    v24 = AssociatedTypeWitness;
    v25 = *(AssociatedTypeWitness - 8);
    v26 = v23;
    if ((*(v25 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      v27 = *(v22 + 8);
      v27(v17, v23);

      v27(v14, v23);
      return 0;
    }

    else
    {
      v36 = v17;
      v29 = v38;
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v30, qword_101AD6348);
      swift_getAssociatedConformanceWitness();
      v31 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v29)
      {
        (*(v40 + 8))(v36, v23);

        return (*(v25 + 8))(v14, v24);
      }

      else
      {
        v32 = v31;
        (*(v40 + 8))(v36, v26);

        (*(v25 + 8))(v14, v24);
        return v32;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100FEA3F4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 880);
  v9 = *(v5 + 872);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v29 - v11;
  sub_100024E98(a1, a2);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = AssociatedTypeWitness;
  v14 = v39;
  PartialCRDT.init(serializedData:)();
  if (!v14)
  {
    v33 = v7;
    v15 = v37;
    v35 = v8;
    v39 = 0;
    v16 = (*(*v3 + 912))(v40);
    v34 = v9;
    LODWORD(a2) = dispatch thunk of CRDT.merge(delta:)();
    v16(v40, 0);
    if ((a2 & 1) == 0)
    {
      v31 = AssociatedTypeWitness;
      v32 = a2;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v30 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v18 = *(*v3 + 744);
      swift_beginAccess();
      v19 = v3 + v18;
      a2 = v33;
      v20 = v36;
      (*(v15 + 16))(v33, v19, v36);
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*(v15 + 8))(a2, v20);
      *(inited + 56) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 64) = v24;
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      v41 = v3;
      type metadata accessor for CRLAbstractShapeItemData();

      v25 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v24;
      *(inited + 72) = v25;
      *(inited + 80) = v26;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v27, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      LOBYTE(a2) = v32;
      AssociatedTypeWitness = v31;
    }

    (*(v38 + 8))(v12, AssociatedTypeWitness);
  }

  return a2 & 1;
}

char *sub_100FEA84C()
{
  v1 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = qword_101A27318;
  v11 = *(v0 + qword_101A27318);
  if (v11)
  {
    v12 = *(v0 + qword_101A27318);
  }

  else
  {
    v13 = *(*v0 + 736);
    swift_beginAccess();
    sub_10000BE14(v0 + v13, v9, &unk_101A0F400);
    sub_1005B981C(&unk_101A0F410);
    v14 = v0;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v9, &unk_101A0F400);
    sub_100FF22C4(&v3[*(v1 + 20)], v6, type metadata accessor for CRLPathSourceData);
    sub_100FF232C(v3, type metadata accessor for CRLShapeItemParentAffinity);
    v15 = sub_100C49F20(v6);
    sub_100FF232C(v6, type metadata accessor for CRLPathSourceData);
    v16 = *(v0 + v10);
    *(v14 + v10) = v15;
    v12 = v15;

    v11 = 0;
  }

  v17 = v11;
  return v12;
}

void sub_100FEAA98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1;
  sub_100C3D740(v7, v6);
  swift_beginAccess();
  sub_1005B981C(&unk_101A0F400);
  sub_1005B981C(&unk_101A0F410);
  v8 = CRRegister.wrappedValue.modify();
  v10 = v9;
  v11 = type metadata accessor for CRLShapeItemParentAffinity(0);
  sub_100FF2670(v6, v10 + *(v11 + 20));
  v8(v14, 0);
  sub_100FF232C(v6, type metadata accessor for CRLPathSourceData);
  swift_endAccess();
  v12 = *(v2 + qword_101A27318);
  *(v2 + qword_101A27318) = v7;
}

void sub_100FEAC00()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v65 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v62 - v5;
  v7 = sub_1005B981C(&qword_101A15D00);
  __chkstk_darwin(v7 - 8);
  v74 = &v62 - v8;
  v73 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v71);
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = *(v0 + qword_101A27318);
  if (v23)
  {
    v69 = v20;
    v66 = qword_101A27318;
    v62 = v6;
    v63 = v2;
    v64 = v1;
    v24 = *(*v0 + 736);
    v25 = v19;
    swift_beginAccess();
    v75 = v0;
    v68 = v24;
    sub_10000BE14(v0 + v24, v22, &unk_101A0F400);
    v70 = v25;
    v26 = v23;
    sub_1005B981C(&unk_101A0F410);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v22, &unk_101A0F400);
    sub_100FF22C4(&v12[*(v10 + 20)], v16, type metadata accessor for CRLPathSourceData);
    sub_100FF232C(v12, type metadata accessor for CRLShapeItemParentAffinity);
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27 && (v28 = v27, v29 = *(v16 + 248), v30 = *(v16 + 200), v80 = *(v16 + 184), v31 = *(v16 + 216), v32 = *(v16 + 232), v81 = v30, v82 = v31, v83 = v32, v84 = v29, v33 = *(v16 + 280), v85 = *(v16 + 264), v86 = v33, v87 = *(v16 + 296), sub_100A03AB8(&v80) != 1) && (v40 = v26, [v28 naturalSize], v42 = v41, v44 = v43, v45 = *(&v81 + 2), v46 = *(&v81 + 3), v47 = objc_msgSend(v28, "type"), v78 = v80, v79 = BYTE8(v80), sub_1005B981C(&qword_101A16270), CRExtensible.rawValue.getter(), v48 = v77, v49 = sub_10011ED08(v42, v44, v45, v46, 0.5), v50 = sub_100C3E8BC(v40), v40, v47 == v48) && v49)
    {
      sub_100FF232C(v16, type metadata accessor for CRLPathSourceData);
      if (v50)
      {

        return;
      }
    }

    else
    {
      sub_100FF232C(v16, type metadata accessor for CRLPathSourceData);
    }

    v34 = v75;
    v35 = v69;
    sub_10000BE14(v75 + v68, v69, &unk_101A0F400);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v35, &unk_101A0F400);
    v36 = v76;
    sub_100FF22C4(&v12[*(v10 + 20)], v76, type metadata accessor for CRLPathSourceData);
    sub_100FF232C(v12, type metadata accessor for CRLShapeItemParentAffinity);
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      v39 = v74;
      sub_10000BE14(v36 + *(v71 + 52), v74, &qword_101A15D00);
      if ((*(v72 + 48))(v39, 1, v73) == 1)
      {
        sub_10000CAAC(v39, &qword_101A15D00);
      }

      else
      {
        v51 = v26;
        v52 = v67;
        sub_100FF2608(v39, v67, type metadata accessor for CRLEditableBezierPathSourceData);
        v53 = v51;
        v54 = [v38 persistedUUID];
        if (v54)
        {
          v55 = v65;
          v56 = v54;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v57 = v63;
          v58 = v62;
          v59 = v55;
          v60 = v64;
          (*(v63 + 32))(v62, v59, v64);
          LOBYTE(v56) = static UUID.== infix(_:_:)();

          (*(v57 + 8))(v58, v60);
          sub_100FF232C(v52, type metadata accessor for CRLEditableBezierPathSourceData);

          v34 = v75;
          if (v56)
          {
            sub_100FF232C(v36, type metadata accessor for CRLPathSourceData);
            return;
          }

          goto LABEL_17;
        }

        sub_100FF232C(v52, type metadata accessor for CRLEditableBezierPathSourceData);
        v26 = v51;
        v34 = v75;
      }
    }

LABEL_17:
    sub_100FF232C(v36, type metadata accessor for CRLPathSourceData);
    v61 = *(v34 + v66);
    *(v34 + v66) = 0;
  }
}

uint64_t sub_100FEB45C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 888);
  swift_beginAccess();
  return (*(*(*(v3 + 872) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100FEB568(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v10 - v6;
  (*(v8 + 896))(v5);
  (*(*(v2 + 880) + 16))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100FEB6A8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100FF22C4(a1, v6, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v7 = (*(*v1 + 912))(v9);
  (*(*(v3 + 880) + 24))(v6, *(v3 + 872));
  v7(v9, 0);
  return sub_100FF232C(a1, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
}

__n128 sub_100FEB804@<Q0>(uint64_t a1@<X8>)
{
  v20 = *v1;
  v3 = v20;
  v4 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v20 + 872);
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  (*(v20 + 896))(v10);
  (*(*(v3 + 880) + 16))(v7);
  (*(v8 + 8))(v12, v7);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.getter();
  sub_100FF232C(v6, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v48 = v35;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v13 = v34;
  *(a1 + 192) = v33;
  *(a1 + 208) = v13;
  *(a1 + 224) = v48;
  v14 = v45;
  *(a1 + 128) = v44;
  *(a1 + 144) = v14;
  v15 = v47;
  *(a1 + 160) = v46;
  *(a1 + 176) = v15;
  v16 = v41;
  *(a1 + 64) = v40;
  *(a1 + 80) = v16;
  v17 = v43;
  *(a1 + 96) = v42;
  *(a1 + 112) = v17;
  v18 = v37;
  *a1 = v36;
  *(a1 + 16) = v18;
  result = v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100FEBA88()
{
  v1 = *v0;
  v2 = (*(*v0 + 912))(v6);
  v3 = (*(*(v1 + 880) + 32))(v5, *(v1 + 872));
  type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  sub_1005B981C(&unk_101A0D9D0);
  CRRegister.wrappedValue.setter();
  v3(v5, 0);
  return v2(v6, 0);
}

unint64_t sub_100FEBBF0(unint64_t result, uint64_t (*a2)(unint64_t))
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(*v2 + 16);
      v5 = v4 >= result;
      result = v4 - result;
      if (v5)
      {
        return a2(result);
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100FEBC44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C13F0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100FEBCCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C13F0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100FEBD18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B6D70(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100FEBD5C()
{
  v1 = *v0;
  v2 = 0x72756F5368746170;
  v3 = 0xD000000000000014;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_100FEBE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100FF238C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100FEBE48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B6D70(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FEBE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FF0A20();
  v5 = sub_100FF0A78();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100FEBED8(uint64_t a1)
{
  v2 = sub_100FF0A78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FEBF14(uint64_t a1)
{
  v2 = sub_100FF0A78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FEBF50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for CRLPKStrokePathData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A224B8);
  __chkstk_darwin(v6 - 8);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v48 - v9;
  v56 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v56);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v58);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A27A80);
  v60 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for CRLShapeItemParentAffinity(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 56);
  v63 = &v18[*(v19 + 24)];
  v20(v16);
  *&v18[*(v15 + 32)] = _swiftEmptyDictionarySingleton;
  v21 = a1[3];
  v61 = a1;
  sub_100020E58(a1, v21);
  sub_100FF0A78();
  v22 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_100005070(v61);
    return sub_10000CAAC(v63, &qword_101A224B8);
  }

  v23 = v57;
  v62 = v15;
  v49 = v4;
  v50 = v3;
  v51 = v18;
  v69 = 0;
  sub_100FF033C(&qword_1019FDF00, type metadata accessor for CRLBoardItemParentAffinity);
  v24 = v59;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v51;
  sub_100FF2608(v24, v51, type metadata accessor for CRLBoardItemParentAffinity);
  v68 = 1;
  sub_100FF033C(&qword_101A12ED0, type metadata accessor for CRLPathSourceData);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v23;
  v28 = v26 + v62[5];
  sub_100FF2608(v27, v28, type metadata accessor for CRLPathSourceData);
  v67 = 2;
  sub_100FF033C(&qword_101A27A88, type metadata accessor for CRLPKStrokePathData);
  v29 = v55;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v63;
  sub_10002C638(v29, v63, &qword_101A224B8);
  sub_1005B981C(&unk_101A277D0);
  v66 = 3;
  sub_100FF2598(&qword_101A27A90);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v58 = v14;
  v59 = v12;
  v31 = v51;
  v32 = &v51[v62[7]];
  v33 = v65;
  *v32 = v64;
  v32[8] = v33;
  v34 = v54;
  sub_10000BE14(v30, v54, &qword_101A224B8);
  v35 = v50;
  v36 = *(v49 + 48);
  if (v36(v34, 1, v50) == 1)
  {
    (*(v60 + 8))(v58, v59);
    sub_10000CAAC(v34, &qword_101A224B8);
LABEL_11:
    v42 = v53;
LABEL_22:
    sub_100FF22C4(v31, v42, type metadata accessor for CRLShapeItemParentAffinity);
    sub_100005070(v61);
    return sub_100FF232C(v31, type metadata accessor for CRLShapeItemParentAffinity);
  }

  v37 = v52;
  sub_100FF2608(v34, v52, type metadata accessor for CRLPKStrokePathData);
  if (!*(v28 + 120))
  {
    sub_100FF232C(v37, type metadata accessor for CRLPKStrokePathData);
    (*(v60 + 8))(v58, v59);
    goto LABEL_11;
  }

  sub_100FF254C();

  v39 = sub_100C58684(v38);
  result = [objc_opt_self() countOfBSplineControlPointsForBezierPath:v39];
  v40 = *(v37 + 80);
  if ((v40 & 0x8000000000000000) == 0 && result == v40)
  {

    v41 = v60;
LABEL_21:

    sub_100FF232C(v37, type metadata accessor for CRLPKStrokePathData);
    (*(v41 + 8))(v58, v59);
    v42 = v53;
    v31 = v51;
    goto LABEL_22;
  }

  v62 = v39;
  if (result < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v40 >= result)
  {
    v40 = result;
  }

  v43 = v40 - 1;
  if (__OFSUB__(v40, 1))
  {
    goto LABEL_24;
  }

  v44 = v63;
  result = (v36)(v63, 1, v35);
  if (result != 1)
  {

    v45 = *(v44 + 80);
    v41 = v60;
    if ((v45 & 0x8000000000000000) == 0)
    {
      v46 = v43;
      v39 = v62;
      if ((v46 & 0x8000000000000000) == 0 && v46 < v45)
      {
        v47 = v63;
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        sub_100FEBBF0(v45 + ~v46, sub_10067DAB0);
        sub_100FEBBF0(v45 + ~v46, sub_10067DAB0);
        sub_100FEBBF0(v45 + ~v46, sub_10067DAB0);
        v41 = v60;
        sub_100FEBBF0(v45 + ~v46, sub_10067DAB0);
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        v37 = v52;
        sub_100FEBBF0(v45 + ~v46, sub_10067D9DC);
        *(v47 + 80) = v46 + 1;
        sub_100CD1644();
      }

      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100FEC8E0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v1 - 8);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v45 - v4;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for CRLBoardItemParentAffinity();
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v45 = v9;
  v46 = v15;
  v15(v9, 1, 1, v14);
  v16 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  v53 = 1;
  v17 = type metadata accessor for CRLTableAnchorHint();
  v18 = *(*(v17 - 8) + 56);
  v19 = v49;
  v18(v49, 1, 1, v17);
  sub_101271CCC(v16, &v51);
  v20 = v9;
  v21 = v47;
  sub_10000BE14(v20, v47, &qword_1019F6990);
  sub_10000BE14(v19, v50, &unk_101A09DD0);
  v46(v13, 1, 1, v14);
  v22 = v11[9];
  v23 = &v13[v11[8]];
  v18(&v13[v22], 1, 1, v17);
  *&v13[v11[10]] = _swiftEmptyDictionarySingleton;
  sub_10074A3BC(v21, v13);

  sub_10000CAAC(v21, &qword_1019F6990);
  sub_10000CAAC(v49, &unk_101A09DD0);
  sub_10000CAAC(v45, &qword_1019F6990);
  v24 = &v13[v11[7]];
  v25 = BYTE7(v52);
  v26 = BYTE6(v52);
  v27 = BYTE5(v52);
  v28 = BYTE4(v52);
  v30 = *(&v51 + 3);
  v29 = *&v52;
  v31 = v51;
  v32 = *(&v51 + 2);
  v33 = v52;
  *v24 = v51;
  *(v24 + 1) = v33;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  v23[64] = v53;
  sub_10002C638(v50, &v13[v22], &unk_101A09DD0);
  v34 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v28 size:v27 widthValid:v26 heightValid:v25 horizontalFlip:*&v31 verticalFlip:*(&v31 + 1) angle:{v32, v30, v29}];
  [v34 size];
  v37 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{v35, v36}];
  v38 = v48;
  sub_100FF22C4(v13, v48, type metadata accessor for CRLBoardItemParentAffinity);
  v39 = type metadata accessor for CRLShapeItemParentAffinity(0);
  v40 = v38;
  sub_100C3D740(v37, v38 + v39[5]);

  sub_100FF232C(v13, type metadata accessor for CRLBoardItemParentAffinity);
  v41 = v39[6];
  v42 = type metadata accessor for CRLPKStrokePathData();
  result = (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  v44 = v40 + v39[7];
  *v44 = 0;
  *(v44 + 8) = -1;
  *(v40 + v39[8]) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100FECDCC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A27A98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FF0A78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for CRLBoardItemParentAffinity();
  sub_100FF033C(&qword_1019FDF08, type metadata accessor for CRLBoardItemParentAffinity);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLShapeItemParentAffinity(0);
    LOBYTE(v15) = 1;
    type metadata accessor for CRLPathSourceData(0);
    sub_100FF033C(&qword_101A12EE0, type metadata accessor for CRLPathSourceData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    type metadata accessor for CRLPKStrokePathData();
    sub_100FF033C(&qword_101A27AA0, type metadata accessor for CRLPKStrokePathData);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v15 = v11;
    v16 = v10;
    v14 = 3;
    sub_1005B981C(&unk_101A277D0);
    sub_100FF2598(&qword_101A27AA8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + *(v9 + 32));
    v14 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100FED120@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CRLBoardItemParentAffinity() + 20);

  return sub_10074A4EC(v3, a1);
}

uint64_t sub_100FED164(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CRLBoardItemParentAffinity() + 20);

  return sub_10074A490(a1, v3);
}

__n128 sub_100FED1A8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CRLBoardItemParentAffinity() + 24);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_100FED1F0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CRLBoardItemParentAffinity() + 24);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_100FED2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FF033C(&qword_101A27A48, type metadata accessor for CRLShapeItemParentAffinity);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FED380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FF033C(&qword_101A27A48, type metadata accessor for CRLShapeItemParentAffinity);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100FED404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100FF033C(&qword_101A106B0, type metadata accessor for CRLShapeItemParentAffinity);
  v7 = sub_100FF033C(&qword_101A27A50, type metadata accessor for CRLShapeItemParentAffinity);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}