double sub_10017A330@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for SKLogger();
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10017BE60();
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 valueForKey:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28 = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      sub_10008B5D0(&v28, a3);
      return result;
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  sub_1000AF25C(&v28, &unk_1003CCB70);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = sub_10007EDA4(v8, qword_1003F26C8);
  sub_10007EDDC(v16, v10);
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  *&v28 = 91;
  *(&v28 + 1) = 0xE100000000000000;
  *&v26 = sub_100213F6C(v4);
  *(&v26 + 1) = v17;
  sub_100080FB4(&unk_1003CE550);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._object = 0x800000010031AC10;
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21 = v28;
  v22 = static os_log_type_t.default.getter();
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    *&v28 = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_100080210(0, 0xE000000000000000, &v28);
    *(v24 + 12) = 2082;
    v25 = sub_100080210(v21, *(&v21 + 1), &v28);

    *(v24 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100080130(v10);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void sub_10017A65C()
{
  sub_100093D08();
  v2 = v1;
  v3 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  v8 = sub_100080FB4(&unk_1003D0540);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_10017AA40();
  if (!v14)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v21, v7);
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v22._countAndFlagsBits = 91;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v48 = sub_100213F6C(v0);
    v49 = v23;
    sub_100080FB4(&unk_1003CE550);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    object = v24._object;
    String.append(_:)(v24);

    v26._object = 0x800000010031AB20;
    v26._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v26);
    static os_log_type_t.default.getter();
    v27 = sub_10017CC10();
    if (os_log_type_enabled(v27, v11))
    {
      sub_10008E688();
      v28 = sub_10017CA4C();
      v50[0] = v28;
      *object = 136446466;
      *(object + 4) = sub_100093CF0(v28, v29, v50);
      *(object + 6) = 2082;
      v30 = sub_10017CB1C();
      v33 = sub_100080210(v30, v31, v32);

      *(object + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v11, "%{public}s%{public}s", object, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080130(v7);
    type metadata accessor for URL();
    v40 = sub_10017CA88();
    goto LABEL_18;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  sub_100080FB4(&unk_1003D2720);
  v18 = swift_allocObject();
  v47 = xmmword_1002ED290;
  *(v18 + 16) = xmmword_1002ED290;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;

  sub_1001793D8();
  v20 = v19;

  if (v20)
  {
    sub_1001787A0(v20, v11);
  }

  else
  {
    v34 = type metadata accessor for URL();
    sub_100081DFC(v11, 1, 1, v34);
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v47;
  *(v35 + 32) = v16;
  *(v35 + 40) = v17;
  sub_1001793D8();
  v37 = v36;

  v38 = type metadata accessor for URL();
  sub_10017CBF0(v11);
  v39 = v39 && v37 == 0;
  if (v39)
  {
    sub_1000AF25C(v11, &unk_1003D0540);
    v40 = sub_10017CA88();
    v43 = v38;
LABEL_18:
    sub_100081DFC(v40, v41, v42, v43);
    goto LABEL_19;
  }

  if (v15)
  {
    sub_1000B71B8(v11, v2);
  }

  else
  {

    sub_1000AF25C(v11, &unk_1003D0540);
    v44 = sub_10017CA88();
    sub_100081DFC(v44, v45, v46, v38);
  }

LABEL_19:
  sub_100093CB8();
}

uint64_t sub_10017AA40()
{
  v24 = 0;
  if (!os_eligibility_get_domain_answer())
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger();
    sub_10007EDA4(v8, qword_1003F26C8);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v9._object = 0x800000010031AC60;
    v9._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v9);
    type metadata accessor for os_eligibility_answer_t(0);
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0x747865746E6F4320;
    v10._object = 0xEA0000000000203ALL;
    String.append(_:)(v10);
    swift_unknownObjectRetain();
    sub_100080FB4(&qword_1003D0568);
    v11._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v11);

    v12 = static os_log_type_t.default.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v22);
      *(v14 + 12) = 2082;
      v15 = sub_100080210(0, 0xE000000000000000, &v22);

      *(v14 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (v24)
    {
      v16 = swift_unknownObjectRetain();
      if (xpc_dictionary_get_string(v16, "OS_ELIGIBILITY_CONTEXT_COUNTRY_BILLING"))
      {
        String.init(utf8String:)();
        v18 = v17;
        swift_unknownObjectRelease();
        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v19 = static os_log_type_t.error.getter();
    v5 = Logger.logObject.getter();
    if (!os_log_type_enabled(v5, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, &v22);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100080210(0xD00000000000003FLL, 0x800000010031AC80, &v22);
    _os_log_impl(&_mh_execute_header, v5, v19, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  sub_10007EDA4(v0, qword_1003F26C8);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x800000010031AC30;
  String.append(_:)(v1);
  type metadata accessor for os_eligibility_domain_t(0);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = static os_log_type_t.error.getter();

  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_100080210(0, 0xE000000000000000, &v22);
    *(v6 + 12) = 2082;
    v7 = sub_100080210(0, 0xE000000000000000, &v22);

    *(v6 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    goto LABEL_19;
  }

LABEL_21:
  swift_unknownObjectRelease();
  return 0;
}

void sub_10017B038()
{
  sub_100093D08();
  v4 = v1;
  v5 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_10017C8B0();
  __chkstk_darwin(v7);
  sub_10017CA98();
  sub_10017AA40();
  if (v8)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000026, v9, v10);
    if (v42)
    {
      sub_10008B5D0(&v41, v43);
      v11 = sub_10017C9A4();
      sub_100080F58(v11, v12);
      sub_100080FB4(&unk_1003D0530);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        if (*(v40 + 16))
        {
          sub_10017C93C(_swiftEmptyArrayStorage);
          v13 = v41;
          do
          {
            String.lowercased()();
            sub_10017CA30();
            if (v15)
            {
              sub_10017C970(v14);
              v13 = v41;
            }

            sub_10017CAD0();
          }

          while (!v16);
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v37 = sub_10017C994();
        sub_100108884(v37, v38, v39);

        sub_100080F0C(v43);
      }

      else
      {

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v27 = sub_10007EDA4(v5, qword_1003F26C8);
        sub_10007EDDC(v27, v0);
        sub_10017CA78();
        _StringGuts.grow(_:)(34);
        sub_100213F6C(v1);
        sub_100080FB4(&unk_1003CE550);
        v28._countAndFlagsBits = sub_10017CBD8();
        String.append(_:)(v28);

        sub_10009F134();
        v29._object = (v3 | 0x8000000000000000);
        v29._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v29);
        v30._countAndFlagsBits = 0xD00000000000001ALL;
        v30._object = 0x800000010031AD50;
        String.append(_:)(v30);
        sub_10017C9A4();
        _print_unlocked<A, B>(_:_:)();
        v31 = static os_log_type_t.error.getter();
        v32 = Logger.logObject.getter();
        if (os_log_type_enabled(v32, v31))
        {
          sub_10008E688();
          *&v41 = sub_10017CA4C();
          v33 = sub_10017C9F0(4.8752e-34);
          v34 = sub_10017C8F4(v33);

          *(v4 + 14) = v34;
          sub_10017CA10(&_mh_execute_header, v35, v36, "%{public}s%{public}s");
          sub_10017CAE8();
          sub_1000AFF34();
          sub_100081C28();
        }

        else
        {
        }

        sub_100080130(v0);
        sub_100080F0C(v43);
      }
    }

    else
    {

      sub_1000AF25C(&v41, &unk_1003CCB70);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v17 = sub_10007EDA4(v5, qword_1003F26C8);
    sub_10007EDDC(v17, v2);
    sub_10017C960();
    _StringGuts.grow(_:)(68);
    sub_10017C9D0();
    *&v41 = sub_100213F6C(v1);
    *(&v41 + 1) = v18;
    sub_100080FB4(&unk_1003CE550);
    v19._countAndFlagsBits = sub_10017CBC0();
    object = v19._object;
    String.append(_:)(v19);

    v21._countAndFlagsBits = 0xD000000000000041;
    v21._object = 0x800000010031AD70;
    String.append(_:)(v21);
    v22 = *&v43[0];
    static os_log_type_t.default.getter();
    v23 = sub_10017CC10();
    if (sub_100098C50(v23))
    {
      sub_10008E688();
      *&v43[0] = sub_100093C08();
      v24 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v24);
      sub_10017CBA8();
      *(v1 + 14) = v22;
      sub_10017C91C(&_mh_execute_header, v25, v26, "%{public}s%{public}s");
      sub_10017CAE8();
      sub_1000AFF34();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080130(v2);
  }

  sub_100093CB8();
}

void sub_10017B4C8()
{
  sub_100093D08();
  v4 = v1;
  v5 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v6);
  sub_10017C8B0();
  __chkstk_darwin(v7);
  sub_10017CA98();
  sub_10017AA40();
  if (v8)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000023, v9, v10);
    if (v42)
    {
      sub_10008B5D0(&v41, v43);
      v11 = sub_10017C9A4();
      sub_100080F58(v11, v12);
      sub_100080FB4(&unk_1003D0530);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        if (*(v40 + 16))
        {
          sub_10017C93C(_swiftEmptyArrayStorage);
          v13 = v41;
          do
          {
            String.lowercased()();
            sub_10017CA30();
            if (v15)
            {
              sub_10017C970(v14);
              v13 = v41;
            }

            sub_10017CAD0();
          }

          while (!v16);
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v37 = sub_10017C994();
        sub_100108884(v37, v38, v39);

        sub_100080F0C(v43);
      }

      else
      {

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v27 = sub_10007EDA4(v5, qword_1003F26C8);
        sub_10007EDDC(v27, v0);
        sub_10017CA78();
        _StringGuts.grow(_:)(34);
        sub_100213F6C(v1);
        sub_100080FB4(&unk_1003CE550);
        v28._countAndFlagsBits = sub_10017CBD8();
        String.append(_:)(v28);

        sub_10009F134();
        v29._object = (v3 | 0x8000000000000000);
        v29._countAndFlagsBits = 0xD000000000000023;
        String.append(_:)(v29);
        v30._countAndFlagsBits = 0xD00000000000001ALL;
        v30._object = 0x800000010031AD50;
        String.append(_:)(v30);
        sub_10017C9A4();
        _print_unlocked<A, B>(_:_:)();
        v31 = static os_log_type_t.error.getter();
        v32 = Logger.logObject.getter();
        if (os_log_type_enabled(v32, v31))
        {
          sub_10008E688();
          *&v41 = sub_10017CA4C();
          v33 = sub_10017C9F0(4.8752e-34);
          v34 = sub_10017C8F4(v33);

          *(v4 + 14) = v34;
          sub_10017CA10(&_mh_execute_header, v35, v36, "%{public}s%{public}s");
          sub_10017CAE8();
          sub_1000AFF34();
          sub_100081C28();
        }

        else
        {
        }

        sub_100080130(v0);
        sub_100080F0C(v43);
      }
    }

    else
    {

      sub_1000AF25C(&v41, &unk_1003CCB70);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v17 = sub_10007EDA4(v5, qword_1003F26C8);
    sub_10007EDDC(v17, v2);
    sub_10017C960();
    _StringGuts.grow(_:)(68);
    sub_10017C9D0();
    *&v41 = sub_100213F6C(v1);
    *(&v41 + 1) = v18;
    sub_100080FB4(&unk_1003CE550);
    v19._countAndFlagsBits = sub_10017CBC0();
    object = v19._object;
    String.append(_:)(v19);

    v21._countAndFlagsBits = 0xD000000000000041;
    v21._object = 0x800000010031AD70;
    String.append(_:)(v21);
    v22 = *&v43[0];
    static os_log_type_t.default.getter();
    v23 = sub_10017CC10();
    if (sub_100098C50(v23))
    {
      sub_10008E688();
      *&v43[0] = sub_100093C08();
      v24 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v24);
      sub_10017CBA8();
      *(v1 + 14) = v22;
      sub_10017C91C(&_mh_execute_header, v25, v26, "%{public}s%{public}s");
      sub_10017CAE8();
      sub_1000AFF34();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080130(v2);
  }

  sub_100093CB8();
}

void sub_10017B958()
{
  sub_100093D08();
  v4 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_10017C8B0();
  __chkstk_darwin(v6);
  sub_10017CA98();
  sub_10017AA40();
  if (v7)
  {
    sub_10017CA68();
    sub_10017A330(0xD000000000000012, v8, v9);
    if (v47)
    {
      sub_10008B5D0(&v46, v48);
      v10 = sub_10017C9A4();
      sub_100080F58(v10, v11);
      sub_100080FB4(&unk_1003D0530);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        v12 = *(v45 + 16);
        if (!v12)
        {

          v13 = _swiftEmptyArrayStorage;
          goto LABEL_25;
        }

        sub_10017C93C(_swiftEmptyArrayStorage);
        v13 = v46;
        v14 = v45 + 40;
        do
        {
          v15 = String.lowercased()();
          *&v46 = v13;
          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            sub_10017C970(v16);
            v13 = v46;
          }

          v13[2] = v17 + 1;
          *&v13[2 * v17 + 4] = v15;
          v14 += 16;
          --v12;
        }

        while (v12);
LABEL_17:

LABEL_25:
        sub_1001D2344(v13);
        sub_10017CB1C();
        String.lowercased()();
        sub_10017CB00();
        v42 = sub_10017C994();
        sub_100108884(v42, v43, v44);

        sub_100080F0C(v48);
        goto LABEL_28;
      }

      v28 = sub_10017C9A4();
      sub_100080F58(v28, v29);
      sub_100080FB4(&qword_1003CC200);
      sub_10017CB28();
      if (swift_dynamicCast())
      {
        sub_1001784DC(v45);
        v13 = v30;
        goto LABEL_17;
      }

      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v31 = sub_10007EDA4(v4, qword_1003F26C8);
      sub_10007EDDC(v31, v0);
      sub_10017CA78();
      _StringGuts.grow(_:)(35);
      v32._countAndFlagsBits = 91;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      sub_100213F6C(v1);
      sub_100080FB4(&unk_1003CE550);
      v33._countAndFlagsBits = sub_10017CBD8();
      String.append(_:)(v33);

      sub_10009F134();
      v34._object = (v3 | 0x8000000000000000);
      v34._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 0xD00000000000001ALL;
      v35._object = 0x800000010031AD50;
      String.append(_:)(v35);
      sub_10017C9A4();
      _print_unlocked<A, B>(_:_:)();
      v36 = static os_log_type_t.error.getter();
      v37 = Logger.logObject.getter();
      if (os_log_type_enabled(v37, v36))
      {
        sub_10008E688();
        *&v46 = sub_10017CA4C();
        v38 = sub_10017C9F0(4.8752e-34);
        v39 = sub_10017C8F4(v38);

        *(&type metadata for Any + 14) = v39;
        sub_10017CA10(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
        sub_10017CAE8();
        sub_1000AFF34();
        sub_100081C28();
      }

      else
      {
      }

      sub_100080130(v0);
      sub_100080F0C(v48);
    }

    else
    {

      sub_1000AF25C(&v46, &unk_1003CCB70);
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v18 = sub_10007EDA4(v4, qword_1003F26C8);
    sub_10007EDDC(v18, v2);
    sub_10017C960();
    _StringGuts.grow(_:)(63);
    sub_10017C9D0();
    *&v46 = sub_100213F6C(v1);
    *(&v46 + 1) = v19;
    sub_100080FB4(&unk_1003CE550);
    v20._countAndFlagsBits = sub_10017CBC0();
    object = v20._object;
    String.append(_:)(v20);

    v22._countAndFlagsBits = 0xD00000000000003CLL;
    v22._object = 0x800000010031ACF0;
    String.append(_:)(v22);
    v23 = *&v48[0];
    static os_log_type_t.default.getter();
    v24 = sub_10017CC10();
    if (sub_100098C50(v24))
    {
      sub_10008E688();
      *&v48[0] = sub_100093C08();
      v25 = sub_10017C9B0(4.8752e-34);
      sub_10017C8CC(v25);
      sub_10017CBA8();
      *(v1 + 14) = v23;
      sub_10017C91C(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
      sub_10017CAE8();
      sub_1000AFF34();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080130(v2);
  }

LABEL_28:
  sub_100093CB8();
}

id sub_10017BE60()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1001460C4();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10017CB34();
  URL.appendingPathComponent(_:isDirectory:)();
  v13 = *(v4 + 8);
  v13(v8, v2);
  sub_10008E5A4(0, &unk_1003D0550);
  v14 = sub_10017C994();
  v15(v14);
  v16 = sub_100179048(v8);
  v13(v11, v2);
  return v16;
}

uint64_t sub_10017C008()
{
  sub_100179204(10, &v2);
  if (v3)
  {
    if (sub_10017CB68() && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_1000AF25C(&v2, &unk_1003CCB70);
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

id sub_10017C0C0()
{
  result = [objc_opt_self() deviceIsiPad];
  if (result)
  {
    objc_opt_self();
    result = 1;
    if (swift_dynamicCastObjCClass())
    {
      v2 = v0;
      v3 = sub_10017C148();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10017C148()
{
  v1 = [v0 deviceFamilies];
  sub_10008E5A4(0, &qword_1003D0520);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v8 = v3;
  v7[2] = &v8;
  sub_1001788F8(sub_10017C88C, v7, v2);
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_10017C220()
{
  if ([v0 isProfileValidated])
  {
    return 0x52786F62646E6173;
  }

  else
  {
    return 0x74706965636572;
  }
}

void sub_10017C284()
{
  sub_100093D08();
  v1 = v0;
  v48 = v2;
  v3 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  v8 = sub_100080FB4(&unk_1003D0540);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  sub_1001460C4();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for URL();
  sub_1000890DC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1001460C4();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  v26 = [v1 dataContainerURL];
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  sub_100081DFC(v12, v28, 1, v16);
  sub_1000B71B8(v12, v15);
  sub_10017CBF0(v15);
  if (v29)
  {
    sub_1000AF25C(v15, &unk_1003D0540);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v30 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v30, v7);
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v50 = 0xD00000000000002ELL;
    v51 = 0x800000010031AA80;
    v49[0] = sub_100213F6C(v1);
    v49[1] = v31;
    sub_100080FB4(&unk_1003CE550);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    v33 = v50;
    v34 = v51;
    if (qword_1003CBE98 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v36 = v50;
    v35 = v51;
    v37 = static os_log_type_t.error.getter();
    v38 = Logger.logObject.getter();
    if (os_log_type_enabled(v38, v37))
    {
      v39 = sub_10008E688();
      v40 = swift_slowAlloc();
      v47 = v33;
      v49[0] = v40;
      *v39 = 136446466;
      v50 = 91;
      v51 = 0xE100000000000000;
      v41._countAndFlagsBits = v36;
      v41._object = v35;
      String.append(_:)(v41);
      sub_10009F134();
      v42 = sub_100080210(v50, v51, v49);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      v43 = sub_100080210(v47, v34, v49);

      *(v39 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v38, v37, "%{public}s%{public}s", v39, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    sub_100080130(v7);
    v46 = 1;
    v45 = v48;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v44 = *(v18 + 8);
    v44(v15, v16);
    (*(v18 + 32))(v25, v22, v16);
    sub_10017C220();
    v45 = v48;
    URL.appendingPathComponent(_:isDirectory:)();

    v44(v25, v16);
    v46 = 0;
  }

  sub_100081DFC(v45, v46, 1, v16);
  sub_100093CB8();
}

unint64_t sub_10017C730(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10017C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10017C8CC(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100080210(v3, v2, (v4 - 112));
}

unint64_t sub_10017C8F4(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100080210(v3, v2, (v4 - 144));
}

void sub_10017C91C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_10017C93C(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;

  sub_100213374(0, v1, 0);
}

void sub_10017C970(unint64_t a1@<X8>)
{

  sub_100213374(a1 > 1, v1, 1);
}

unint64_t sub_10017C9B0(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 112));
}

void sub_10017C9D0()
{
  v2 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v2;
  v3 = 91;
  v4 = 0xE100000000000000;

  String.append(_:)(*&v3);
}

unint64_t sub_10017C9F0(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 144));
}

void sub_10017CA10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10017CA4C()
{

  return swift_slowAlloc();
}

uint64_t sub_10017CAA8()
{

  return swift_allocObject();
}

void sub_10017CAD0()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t sub_10017CAE8()
{

  return swift_arrayDestroy();
}

uint64_t sub_10017CB00()
{
}

uint64_t sub_10017CB68()
{

  return swift_dynamicCast();
}

uint64_t sub_10017CB88()
{

  return swift_dynamicCast();
}

uint64_t sub_10017CBA8()
{
}

uint64_t sub_10017CBC0()
{

  return String.init<A>(describing:)();
}

uint64_t sub_10017CBD8()
{

  return String.init<A>(describing:)();
}

uint64_t sub_10017CC10()
{

  return Logger.logObject.getter();
}

id sub_10017CC28(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  sub_1000890DC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = [objc_allocWithZone(AMSPromise) init];
  v15 = type metadata accessor for TaskPriority();
  sub_100081DFC(v13, 1, 1, v15);
  (*(v7 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  *(v17 + 5) = v2;
  (*(v7 + 32))(&v17[v16], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v17[(v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v18 = v14;
  v19 = a2;
  sub_100165CBC();

  return v18;
}

uint64_t sub_10017CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_10017CE38, 0, 0);
}

uint64_t sub_10017CE38()
{
  sub_10008BE9C();
  *(v0 + 72) = [*(v0 + 40) completionHandlerAdapter];
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10017CEE8;

  return sub_10017D2EC();
}

uint64_t sub_10017CEE8(uint64_t a1)
{
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v2;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 88) = v1;

  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10017CFF8()
{
  v1 = *(v0 + 72);
  v2 = v1[2];
  v3 = *(v0 + 96);
  v2(v1, v3, 0);
  _Block_release(v1);

  sub_100098AC4();

  return v4();
}

uint64_t sub_10017D08C()
{
  v16 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = v0[11];
  v2 = type metadata accessor for SKLogger();
  sub_10007EDA4(v2, qword_1003F26C8);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3._object = 0x800000010031AE80;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v3);
  v0[4] = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[2];
  v4 = v0[3];
  LOBYTE(v1) = static os_log_type_t.error.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v1))
  {
    v7 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100080210(0, 0xE000000000000000, v15);
    *(v7 + 12) = 2082;
    v8 = sub_100080210(v5, v4, v15);

    *(v7 + 14) = v8;
    sub_1000C4680(&_mh_execute_header, v9, v10, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
  }

  else
  {
  }

  v11 = v0[9];
  swift_errorRetain();
  v12 = _convertErrorToNSError(_:)();
  (v11)[2](v11, 0, v12);

  _Block_release(v11);

  sub_100098AC4();

  return v13();
}

uint64_t sub_10017D2EC()
{
  sub_10008BE9C();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = type metadata accessor for BagLanguageSource();
  v1[32] = v4;
  sub_1000B046C(v4);
  v1[33] = v5;
  v1[34] = sub_1000B05D0();
  v6 = type metadata accessor for Bag();
  v1[35] = v6;
  sub_1000B046C(v6);
  v1[36] = v7;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  type metadata accessor for JetPackPath();
  v1[39] = sub_1000B05D0();
  v8 = type metadata accessor for LocalizedStringsBundle();
  v1[40] = v8;
  sub_1000B046C(v8);
  v1[41] = v9;
  v1[42] = sub_1000B05D0();
  v1[43] = type metadata accessor for SKLogger();
  v1[44] = sub_1000B05D0();
  v10 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[45] = v10;
  sub_1000B046C(v10);
  v1[46] = v11;
  v1[47] = sub_1000B05D0();
  v12 = type metadata accessor for JetPackSigningPolicy();
  v1[48] = v12;
  sub_1000B046C(v12);
  v1[49] = v13;
  v1[50] = sub_1000B05D0();
  v14 = type metadata accessor for InMemoryJetPackLoader();
  v1[51] = v14;
  sub_1000B046C(v14);
  v1[52] = v15;
  v1[53] = sub_1000B05D0();
  v16 = type metadata accessor for URL();
  v1[54] = v16;
  sub_1000B046C(v16);
  v1[55] = v17;
  v1[56] = sub_1000B05D0();
  v18 = type metadata accessor for JetPackAMSRemoteStreamSource();
  v1[57] = v18;
  sub_1000B046C(v18);
  v1[58] = v19;
  v1[59] = sub_1000B05D0();
  sub_100098AD0();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_10017D60C()
{
  v24 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v0[60] = sub_10007EDA4(v0[43], qword_1003F26C8);
  _StringGuts.grow(_:)(44);

  v23[0] = 0xD00000000000002ALL;
  v23[1] = 0x800000010031AEB0;
  sub_10017EABC();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2 = static os_log_type_t.default.getter();

  v3 = Logger.logObject.getter();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100080210(0, 0xE000000000000000, v23);
    *(v4 + 12) = 2082;
    v5 = sub_100080210(0xD00000000000002ALL, 0x800000010031AEB0, v23);

    *(v4 + 14) = v5;
    sub_1000C4680(&_mh_execute_header, v6, v7, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
  }

  else
  {
  }

  v8 = v0[58];
  v9 = v0[56];
  v11 = v0[54];
  v10 = v0[55];
  v22 = v0[57];
  v13 = v0[49];
  v12 = v0[50];
  v20 = v0[59];
  v21 = v0[48];
  v14 = v0[29];
  v15 = sub_1001A9498();
  v0[61] = v15;
  (*(v10 + 16))(v9, v14, v11);
  sub_1001A9564([v15 configuration]);
  JetPackAMSRemoteStreamSource.init(url:urlSessionConfiguration:urlRequestEncoder:)();
  (*(v13 + 104))(v12, enum case for JetPackSigningPolicy.required(_:), v21);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_10009E720(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  v0[10] = v22;
  v0[11] = &protocol witness table for JetPackAMSRemoteStreamSource;
  v16 = sub_10009E720(v0 + 7);
  (*(v8 + 16))(v16, v20, v22);
  v17 = swift_task_alloc();
  v0[62] = v17;
  *v17 = v0;
  v17[1] = sub_10017D96C;
  v18 = v0[47];

  return InMemoryJetPackLoader.bundle(from:)(v18, v0 + 7);
}

uint64_t sub_10017D96C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
    sub_100080F0C(v3 + 56);
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10017DA6C()
{
  v46 = v0;
  sub_10007EDDC(*(v0 + 480), *(v0 + 352));
  _StringGuts.grow(_:)(33);

  v44 = 0xD00000000000001FLL;
  v45 = 0x800000010031AEE0;
  v1 = JetPackResourceBundle.version.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 48;
    v3 = 0xE100000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v1);

  v6 = v44;
  v5 = v45;
  v7 = static os_log_type_t.default.getter();
  v8 = Logger.logObject.getter();
  v9 = os_log_type_enabled(v8, v7);
  v10 = *(v0 + 352);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100080210(0, 0xE000000000000000, &v44);
    *(v11 + 12) = 2082;
    v12 = sub_100080210(v6, v5, &v44);

    *(v11 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();

    sub_1000AFF34();
  }

  else
  {
  }

  sub_100080130(v10);
  v13 = *(v0 + 504);
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = *(v0 + 360);
  *(v0 + 120) = v16;
  *(v0 + 128) = &protocol witness table for InMemoryJetPackResourceBundle;
  v17 = sub_10009E720((v0 + 96));
  (*(v15 + 16))(v17, v14, v16);
  JetPackPath.init(_:)();
  v18 = LocalizedStringsBundle.init(resourceBundle:indexPath:)();
  if (v13)
  {
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 456);
    v23 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = *(v0 + 408);
    v25 = *(v0 + 368);
    v26 = *(v0 + 376);
    v27 = *(v0 + 360);

    (*(v25 + 8))(v26, v27);
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    sub_10017EB14();

    sub_100098AC4();

    return v28();
  }

  else
  {
    v30 = *(v0 + 328);
    v31 = *(v0 + 320);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v35 = *(v0 + 280);
    v34 = *(v0 + 288);
    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v42 = *(v0 + 256);
    v43 = *(v0 + 336);
    sub_1001A7AB4(v18);
    Bag.init(from:)();
    (*(v34 + 16))(v33, v32, v35);
    BagLanguageSource.init(bag:)();
    type metadata accessor for AppleServicesLocalizer();
    *(v0 + 160) = v31;
    *(v0 + 168) = &protocol witness table for LocalizedStringsBundle;
    v38 = sub_10009E720((v0 + 136));
    (*(v30 + 16))(v38, v43, v31);
    *(v0 + 200) = v42;
    *(v0 + 208) = &protocol witness table for BagLanguageSource;
    v39 = sub_10009E720((v0 + 176));
    (*(v37 + 16))(v39, v36, v42);
    type metadata accessor for BaseObjectGraph();
    v40 = BaseObjectGraph.__allocating_init(name:_:)();
    *(v0 + 512) = v40;
    v41 = swift_task_alloc();
    *(v0 + 520) = v41;
    *v41 = v0;
    v41[1] = sub_10017DF3C;

    return static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(v0 + 136, v0 + 176, v40);
  }
}

uint64_t sub_10017DF3C(uint64_t a1)
{
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v2;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 528) = v1;

  if (!v1)
  {
    *(v5 + 536) = a1;
    sub_100080F0C(v5 + 176);
    sub_100080F0C(v5 + 136);
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10017E068()
{
  v15 = *(v0 + 488);
  v1 = *(v0 + 464);
  v22 = *(v0 + 456);
  v23 = *(v0 + 472);
  v2 = *(v0 + 416);
  v20 = *(v0 + 408);
  v21 = *(v0 + 424);
  v24 = *(v0 + 536);
  v3 = *(v0 + 368);
  v18 = *(v0 + 360);
  v19 = *(v0 + 376);
  v4 = *(v0 + 328);
  v16 = *(v0 + 320);
  v17 = *(v0 + 336);
  v14 = *(v0 + 304);
  v5 = *(v0 + 288);
  v13 = *(v0 + 280);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9storekitd19LocalizationJetPack_localizer] = v24;
  *(v0 + 216) = v10;
  *(v0 + 224) = v9;
  v25 = objc_msgSendSuper2((v0 + 216), "init");

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v14, v13);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v19, v18);
  (*(v2 + 8))(v21, v20);
  (*(v1 + 8))(v23, v22);

  v11 = *(v0 + 8);

  return v11(v25);
}

uint64_t sub_10017E27C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100080F0C(v0 + 56);
  sub_10017EB14();

  sub_100098AC4();

  return v7();
}

uint64_t sub_10017E3B8()
{
  v1 = *(v0 + 464);
  v19 = *(v0 + 456);
  v20 = *(v0 + 472);
  v2 = *(v0 + 416);
  v17 = *(v0 + 408);
  v18 = *(v0 + 424);
  v3 = *(v0 + 368);
  v15 = *(v0 + 360);
  v16 = *(v0 + 376);
  v4 = *(v0 + 328);
  v13 = *(v0 + 320);
  v14 = *(v0 + 336);
  v12 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v12, v5);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);
  (*(v1 + 8))(v20, v19);
  sub_100080F0C(v0 + 176);
  sub_100080F0C(v0 + 136);
  sub_10017EB14();

  sub_100098AC4();

  return v10();
}

uint64_t sub_10017E694()
{
  v0 = type metadata accessor for LocalizerLookupStrategy();
  sub_1000890DC();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v0);
  v6 = AppleServicesLocalizer.string(forKey:with:using:)();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_10017E8B8()
{
  v1 = type metadata accessor for URL();
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10017E98C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  sub_1000B046C(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000A7644;

  return sub_10017CE14(a1, v9, v10, v11, v12, v1 + v7, v13);
}

unint64_t sub_10017EABC()
{
  result = qword_1003CDF58;
  if (!qword_1003CDF58)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CDF58);
  }

  return result;
}

void sub_10017EB2C()
{
  _StringGuts.grow(_:)(266);
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0x800000010031B2D0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x800000010031B040;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x202020200A2820;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._object = 0x800000010031B310;
  v4._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x746361736E617274;
  v5._object = 0xEE0064695F6E6F69;
  String.append(_:)(v5);
  v6._object = 0x800000010031B310;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x8000000100316D90;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x200A2C5458455420;
  v8._object = 0xEB00000000202020;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x5F746375646F7270;
  v9._object = 0xEA00000000006469;
  String.append(_:)(v9);
  v10._object = 0x800000010031B310;
  v10._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x64695F6D657469;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEE00202020200A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD000000000000010;
  v13._object = 0x8000000100314090;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4D49544554414420;
  v14._object = 0xEF202020200A2C45;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x800000010031B020;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x4D49544554414420;
  v16._object = 0xEF202020200A2C45;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x797469746E617571;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x52454745544E4920;
  v18._object = 0xEE00202020200A2CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x5F74736575716572;
  v19._object = 0xEC00000061746164;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x200A2C424F4C4220;
  v20._object = 0xEB00000000202020;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000013;
  v21._object = 0x800000010031B000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x200A2C424F4C4220;
  v22._object = 0xEB00000000202020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x737465737361;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x800000010031B370;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x695F656C646E7562;
  v25._object = 0xE900000000000064;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x746361736E617274;
  v27._object = 0xEE0064695F6E6F69;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000017;
  v28._object = 0x8000000100316F60;
  String.append(_:)(v28);
  qword_1003D05A0 = 0;
  *algn_1003D05A8 = 0xE000000000000000;
}

void sub_10017EEF8()
{
  _StringGuts.grow(_:)(133);
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v0._object = 0x800000010031B2D0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x800000010031B060;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x202020200A2820;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x495F656C646E7562;
  v3._object = 0xE900000000000044;
  String.append(_:)(v3);
  v4._object = 0x800000010031B2F0;
  v4._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x6E656B6F74;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x800000010031B310;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64696C61765F7369;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8._object = 0x800000010031B330;
  v8._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6470755F7473616CLL;
  v9._object = 0xEC00000064657461;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x800000010031B350;
  String.append(_:)(v10);
  qword_1003D05B0 = 0;
  *algn_1003D05B8 = 0xE000000000000000;
}

void sub_10017F0B0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];

  if (qword_1003CBE08 != -1)
  {
    swift_once();
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v4];

  if (qword_1003CBE10 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v5];
}

id sub_10017F238()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  sub_1000B00A8();
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_10017F308(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 18999)
    {
      return v2 > 18999;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      goto LABEL_5;
    }

    if (v3 != 19000)
    {
      if (v3 != 18400)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_100081C08();
        }

        v6 = type metadata accessor for SKLogger();
        sub_10007EDA4(v6, qword_1003F26C8);
        aBlock = 0;
        v18 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        aBlock = 0xD000000000000024;
        v18 = 0x800000010031B240;
        v23 = [a1 currentSchemaVersion];
        sub_100184D08();
        v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v7);

        v8._countAndFlagsBits = 540949792;
        v8._object = 0xE400000000000000;
        String.append(_:)(v8);
        v23 = 19000;
        sub_100184D08();
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v11 = aBlock;
        v10 = v18;
        v12 = static os_log_type_t.error.getter();

        v13 = Logger.logObject.getter();

        if (os_log_type_enabled(v13, v12))
        {
          v14 = sub_10008E688();
          aBlock = swift_slowAlloc();
          *v14 = 136446466;
          *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v14 + 12) = 2082;
          v15 = sub_100080210(v11, v10, &aBlock);

          *(v14 + 14) = v15;
          _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

        return v2 > 18999;
      }

LABEL_5:
      v21 = sub_10017F0B0;
      v22 = 0;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_100224D90;
      v20 = &unk_10038D068;
      v4 = _Block_copy(&aBlock);

      v5 = [a1 migrateToVersion:19000 usingBlock:v4];
      _Block_release(v4);
      if ((v5 & 1) == 0)
      {
        return v2 > 18999;
      }
    }
  }
}

uint64_t sub_10017F65C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_10017F674()
{
  sub_100098BB4();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100184CE8;

  return sub_1001D5E3C(sub_100184CE0, v3);
}

id sub_10017F750(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10008E5A4(0, &qword_1003CCBB8);
  v14 = &type metadata for String;
  v12 = a2;
  v13 = a3;

  v6 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v12);
  type metadata accessor for LegacyTransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [a1 connection];
  v9 = [ObjCClassFromMetadata queryOnConnection:v8 predicate:v6];

  v10 = [v9 deleteAllEntities];
  return v10;
}

uint64_t sub_10017F858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_10017F870(uint64_t a1)
{
  v2 = sub_1001A82CC(a1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v1[2];
    v7 = v1[3];
    v8 = swift_allocObject();
    v1[5] = v8;
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = v4;
    v8[5] = v5;

    v9 = v7;
    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_10017F9A8;

    return sub_1001D5E3C(sub_100184C2C, v8);
  }

  else
  {
    sub_100098AC4();

    return v12();
  }
}

uint64_t sub_10017F9A8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

id sub_10017FAA4(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v54 = a1;
  v48 = type metadata accessor for LegacyTransactionInternal();
  v7 = *(v48 - 8);
  v8 = __chkstk_darwin(v48);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = *(a2 + 16);
  v14 = &selRef__appDidLaunch_;
  v15 = &selRef_domain;
  if (v13)
  {
    v52 = type metadata accessor for LegacyTransactionEntity();
    v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v51 = *(v7 + 72);
    v45 = 0x800000010031B1D0;
    *&v17 = 136446466;
    v44 = v17;
    v47 = a3;
    v46 = v10;
    v53 = v12;
    do
    {
      sub_100184B24(v16, v12, type metadata accessor for LegacyTransactionInternal);
      sub_100184B24(v12, v10, type metadata accessor for LegacyTransactionInternal);
      v18 = a3;
      v19 = sub_100180118(v10, v18, [v54 v14[404]]);
      v20 = v12;
      v21 = v19;
      if ([v19 v15[52]])
      {
        sub_100184B84(v20, type metadata accessor for LegacyTransactionInternal);

        v12 = v20;
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for SKLogger();
        sub_10007EDA4(v22, qword_1003F26C8);
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v56 = 0xD000000000000024;
        v57 = v45;
        String.append(_:)(*&v53[*(v48 + 44)]);
        v23 = v57;
        v50 = v56;
        if (qword_1003CBE98 != -1)
        {
          swift_once();
        }

        TaskLocal.get()();
        v25 = v56;
        v24 = v57;
        v26 = static os_log_type_t.error.getter();

        v27 = Logger.logObject.getter();

        v49 = v26;
        if (os_log_type_enabled(v27, v26))
        {
          v28 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v28 = v44;
          v56 = 91;
          v57 = 0xE100000000000000;
          v29._countAndFlagsBits = v25;
          v29._object = v24;
          String.append(_:)(v29);
          v30._countAndFlagsBits = 8285;
          v30._object = 0xE200000000000000;
          String.append(_:)(v30);
          v31 = sub_100080210(v56, v57, &v55);

          *(v28 + 4) = v31;
          *(v28 + 12) = 2082;
          v32 = sub_100080210(v50, v23, &v55);

          *(v28 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v27, v49, "%{public}s%{public}s", v28, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v12 = v53;
        sub_100184B84(v53, type metadata accessor for LegacyTransactionInternal);
        v15 = &selRef_domain;
        v14 = &selRef__appDidLaunch_;
        a3 = v47;
        v10 = v46;
      }

      v16 += v51;
      --v13;
    }

    while (v13);
  }

  sub_100080FB4(&qword_1003D30B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2E0;
  *(inited + 32) = 0x495F656C646E7562;
  *(inited + 40) = 0xE900000000000044;
  v34 = *&a3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  *(inited + 48) = *&a3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  *(inited + 56) = v34;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E656B6F74;
  v35 = v42;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v35;
  *(inited + 104) = v43;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "last_updated");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 168) = type metadata accessor for Date();
  sub_10009E720((inited + 144));

  Date.init()();
  *(inited + 176) = 0x64696C61765F7369;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v36 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LegacyTransactionPropertiesEntity();
  sub_100223354(v36);
  v38 = v37;

  v39 = sub_1000DC274(v38, [v54 v14[404]]);
  v40 = [v39 v15[52]];

  return v40;
}

id sub_100180118(uint64_t *a1, char *a2, void *a3)
{
  v5 = Dictionary.init(dictionaryLiteral:)();
  v51 = a2;
  v6 = *&a2[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  v7 = *&a2[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v6;
  *(&v55 + 1) = v7;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v8 = *a1;
  *(&v56 + 1) = &type metadata for UInt64;
  *&v55 = v8;
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v9 = a1[1];
  v10 = a1[2];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v9;
  *(&v55 + 1) = v10;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v11 = type metadata accessor for LegacyTransactionInternal();
  v12 = v11[9];
  v13 = type metadata accessor for Date();
  *(&v56 + 1) = v13;
  v14 = sub_10009E720(&v55);
  v15 = *(*(v13 - 8) + 16);
  v15(v14, a1 + v12, v13);
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v16 = (a1 + v11[11]);
  v17 = *v16;
  v18 = v16[1];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v17;
  *(&v55 + 1) = v18;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v19 = (a1 + v11[12]);
  v20 = *v19;
  v21 = v19[1];
  *(&v56 + 1) = &type metadata for String;
  *&v55 = v20;
  *(&v55 + 1) = v21;
  sub_10008B5D0(&v55, &v53);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v22 = v11[10];
  *(&v56 + 1) = v13;
  v23 = sub_10009E720(&v55);
  v15(v23, a1 + v22, v13);
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v24 = a1[3];
  *(&v56 + 1) = &type metadata for UInt;
  *&v55 = v24;
  sub_10008B5D0(&v55, &v53);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();
  v25 = v5;
  v27 = a1[4];
  v26 = a1[5];
  if (v26 >> 60 == 15)
  {
    v55 = 0u;
    v56 = 0u;
    sub_1000BC7F4(v27, v26);
    sub_1000AF25C(&v55, &unk_1003CCB70);
    v28 = sub_1000B6328(0x5F74736575716572, 0xEC00000061746164);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v25[3];
      sub_100080FB4(&qword_1003CCA88);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);

      sub_10008B5D0((v25[7] + 32 * v30), &v53);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    sub_1000AF25C(&v53, &unk_1003CCB70);
  }

  else
  {
    *(&v56 + 1) = &type metadata for Data;
    *&v55 = v27;
    *(&v55 + 1) = v26;
    sub_10008B5D0(&v55, &v53);
    sub_1000BC7F4(v27, v26);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v34 = a1[6];
  v33 = a1[7];
  v35 = v34;
  v36 = v33;
  v37 = &type metadata for Data;
  if (v33 >> 60 == 15)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    *&v56 = 0;
  }

  *&v55 = v35;
  *(&v55 + 1) = v36;
  *(&v56 + 1) = v37;
  if (v33 >> 60 == 15)
  {
    sub_1000BC7F4(v34, v33);
    sub_1000AF25C(&v55, &unk_1003CCB70);
    v38 = sub_1000B6328(0xD000000000000013, 0x800000010031B000);
    if (v39)
    {
      v40 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25[3];
      sub_100080FB4(&qword_1003CCA88);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v42);

      sub_10008B5D0((v25[7] + 32 * v40), &v53);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    sub_1000AF25C(&v53, &unk_1003CCB70);
  }

  else
  {
    sub_10008B5D0(&v55, &v53);
    sub_1000BC7F4(v34, v33);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v43 = *(a1 + v11[13]);
  if (v43)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *&v55 = v43;
    sub_100080FB4(&unk_1003CD718);
    sub_100184C38(&qword_1003CD7C8, sub_1000BC7A0);
    v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(&v56 + 1) = &type metadata for Data;
    *&v55 = v44;
    *(&v55 + 1) = v45;
    sub_10008B5D0(&v55, &v53);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v46 = objc_allocWithZone(v50);
  sub_100223354(v25);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = [v46 initWithPropertyValues:isa onConnection:a3];

  sub_100184B84(a1, type metadata accessor for LegacyTransactionInternal);
  return v48;
}

uint64_t sub_100180BDC()
{
  sub_100098BB4();
  v2 = v1;
  v0[10] = v1;
  v3 = type metadata accessor for Date();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100180CEC;

  return sub_1001832C8(v2);
}

uint64_t sub_100180CEC()
{
  sub_10008BE9C();
  sub_10008C070();
  *(v1 + 136) = v0;

  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100180DDC()
{
  v82 = v0;
  v1 = v0[17];
  if (!v1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v2 = v0[10];
    v3 = type metadata accessor for SKLogger();
    sub_10007EDA4(v3, qword_1003F26C8);
    _StringGuts.grow(_:)(39);

    v80 = 0xD000000000000025;
    v81 = 0x800000010031B100;
    v4 = [v2 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v10 = v0[2];
    v9 = v0[3];
    v11 = static os_log_type_t.default.getter();

    v12 = Logger.logObject.getter();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = sub_10008E688();
      swift_slowAlloc();
      *v13 = 136446466;
      sub_1000AFCA0();
      v14._countAndFlagsBits = v10;
      v14._object = v9;
      String.append(_:)(v14);
      sub_10008C018();
      v23 = sub_10008BF20(v15, v16, v17, v18, v19, v20, v21, v22, v77, v79, v80, v81);

      *(v13 + 4) = v23;
      *(v13 + 12) = 2082;
      v24 = sub_100080210(0xD000000000000025, 0x800000010031B100, &v79);

      *(v13 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    goto LABEL_11;
  }

  v27 = sub_100183930();
  v29 = v28;
  v30 = sub_1001A82CC(v27);
  if (v31)
  {
    if (v30 == v27 && v31 == v29)
    {

LABEL_29:
      v50 = String._bridgeToObjectiveC()();
      v51 = [v1 BOOLValueForProperty:v50];

      if (v51)
      {
        v0[18] = sub_1001A7AB4(v52);
        swift_getObjectType();
        if (qword_1003CC078 != -1)
        {
          swift_once();
        }

        v53 = qword_1003F28E0;
        v54 = swift_task_alloc();
        v0[19] = v54;
        *v54 = v0;
        v54[1] = sub_1001815BC;

        return sub_10024ECE0(v53);
      }

      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v55 = v0[10];
      v56 = type metadata accessor for SKLogger();
      sub_10007EDA4(v56, qword_1003F26C8);
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v57._countAndFlagsBits = 0xD00000000000001DLL;
      v57._object = 0x800000010031B170;
      String.append(_:)(v57);
      v58 = [v55 description];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      sub_1000B00A8();
      v63._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v63);
      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC();
      }

      TaskLocal.get()();
      v65 = v0[6];
      v64 = v0[7];
      v66 = static os_log_type_t.default.getter();

      v38 = Logger.logObject.getter();

      if (!os_log_type_enabled(v38, v66))
      {

        goto LABEL_43;
      }

      sub_10008E688();
      sub_1000B002C();
      MEMORY[0] = 136446466;
      sub_1000AFCA0();
      v67._countAndFlagsBits = v65;
      v67._object = v64;
      String.append(_:)(v67);
      sub_10008C018();
      sub_10008BF20(v68, v69, v70, v71, v72, v73, v74, v75, 0, v79, v80, v81);

      sub_100184D18();
      v76 = sub_100080210(v78, 0xE000000000000000, &v79);

      MEMORY[0xE] = v76;
      _os_log_impl(&_mh_execute_header, v38, v66, "%{public}s%{public}s", 0, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      goto LABEL_41;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v34 = type metadata accessor for SKLogger();
  sub_10007EDA4(v34, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v36 = v0[4];
  v35 = v0[5];
  v37 = static os_log_type_t.default.getter();

  v38 = Logger.logObject.getter();

  if (!os_log_type_enabled(v38, v37))
  {
    goto LABEL_42;
  }

  v39 = sub_10008E688();
  swift_slowAlloc();
  *v39 = 136446466;
  sub_1000AFCA0();
  v40._countAndFlagsBits = v36;
  v40._object = v35;
  String.append(_:)(v40);
  sub_10008C018();
  v49 = sub_10008BF20(v41, v42, v43, v44, v45, v46, v47, v48, v77, v79, v80, v81);

  *(v39 + 4) = v49;
  *(v39 + 12) = 2082;
  *(v39 + 14) = sub_100080210(0xD000000000000039, 0x800000010031B130, &v79);
  _os_log_impl(&_mh_execute_header, v38, v37, "%{public}s%{public}s", v39, 0x16u);
  swift_arrayDestroy();
  sub_100081C28();
LABEL_41:
  sub_100081C28();
LABEL_42:

LABEL_43:

LABEL_11:

  sub_10009F198();

  return v25(0);
}

uint64_t sub_1001815BC(uint64_t a1)
{
  v4 = *v2;
  sub_100098AB4();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {

    swift_unknownObjectRelease();
    v6 = sub_100181AAC;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 160) = a1;
    v6 = sub_100181708;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100181708()
{
  v38 = v1;
  sub_100184D40();
  Date.addingTimeInterval(_:)();
  v5 = *(v4 + 8);
  v5(v0, v3);
  static Date.now.getter();
  v6 = static Date.> infix(_:_:)();
  v5(v2, v3);
  if (v6)
  {
    v7 = v1[17];
    v5(v1[15], v1[11]);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v8 = v1[10];
    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v10._countAndFlagsBits = sub_100184D28();
    String.append(_:)(v10);
    v11 = [v8 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    sub_1000B00A8();
    v16._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v16);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v18 = v1[8];
    v17 = v1[9];
    v19 = static os_log_type_t.default.getter();

    v20 = Logger.logObject.getter();

    v33 = v19;
    v21 = os_log_type_enabled(v20, v19);
    v34 = v1[17];
    v22 = v1[15];
    v23 = v1[11];
    if (v21)
    {
      sub_10008E688();
      v24 = sub_1000B002C();
      *v6 = 136446466;
      v35 = v24;
      v36 = 91;
      v37 = 0xE100000000000000;
      v32 = v22;
      v25._countAndFlagsBits = v18;
      v25._object = v17;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 8285;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      sub_100080210(91, 0xE100000000000000, &v35);

      sub_100184D18();
      v27 = sub_100080210(0, 0xE000000000000000, &v35);

      *(v6 + 14) = v27;
      sub_100184D88(&_mh_execute_header, "%{public}s%{public}s", v33);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();

      v28 = v32;
      v29 = v23;
    }

    else
    {

      v28 = v22;
      v29 = v23;
    }

    v5(v28, v29);
  }

  sub_10009F198();

  return v30(v6 & 1);
}

uint64_t sub_100181AAC()
{
  v35 = v1;
  sub_100184D40();
  Date.addingTimeInterval(_:)();
  v5 = *(v4 + 8);
  v5(v0, v3);
  static Date.now.getter();
  v6 = static Date.> infix(_:_:)();
  v5(v2, v3);
  if (v6)
  {
    v7 = v1[17];
    v5(v1[15], v1[11]);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v8 = v1[10];
    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v10._countAndFlagsBits = sub_100184D28();
    String.append(_:)(v10);
    v11 = [v8 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12._countAndFlagsBits = sub_100184D08();
    String.append(_:)(v12);

    sub_1000B00A8();
    v13._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v13);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v15 = v1[8];
    v14 = v1[9];
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    v30 = v16;
    v18 = os_log_type_enabled(v17, v16);
    v31 = v1[17];
    v19 = v1[15];
    v20 = v1[11];
    if (v18)
    {
      sub_10008E688();
      v21 = sub_1000B002C();
      *v6 = 136446466;
      v32 = v21;
      v33 = 91;
      v34 = 0xE100000000000000;
      v29 = v19;
      v22._countAndFlagsBits = v15;
      v22._object = v14;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 8285;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      sub_100080210(91, 0xE100000000000000, &v32);

      sub_100184D18();
      v24 = sub_100080210(0, 0xE000000000000000, &v32);

      *(v6 + 14) = v24;
      sub_100184D88(&_mh_execute_header, "%{public}s%{public}s", v30);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();

      v25 = v29;
      v26 = v20;
    }

    else
    {

      v25 = v19;
      v26 = v20;
    }

    v5(v25, v26);
  }

  sub_10009F198();

  return v27(v6 & 1);
}

uint64_t sub_100181E3C()
{
  sub_10008BE9C();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_100181ED0;

  return sub_1001832C8(v3);
}

uint64_t sub_100181ED0()
{
  sub_10008BE9C();
  sub_10008C070();
  *(v1 + 32) = v0;

  v2 = sub_10009F0B8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100181FC0()
{
  sub_100098BB4();
  v1 = v0[4];
  if (v1)
  {
    sub_1001077A8();
    v2 = swift_allocObject();
    v0[5] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1001820C8;

    return sub_1001D5E3C(sub_100184BDC, v2);
  }

  else
  {
    sub_100098AC4();

    return v6();
  }
}

uint64_t sub_1001820C8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001821C8()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

id sub_100182220(void *a1)
{
  sub_100080FB4(&qword_1003D30B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2E0;
  *(inited + 32) = 0x495F656C646E7562;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 48) = sub_100183958();
  *(inited + 56) = v3;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E656B6F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_100183930();
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "last_updated");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 168) = type metadata accessor for Date();
  v6 = sub_10009E720((inited + 144));
  sub_100183988(v6);
  *(inited + 176) = 0x64696C61765F7369;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 0;
  v7 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LegacyTransactionPropertiesEntity();
  sub_100223354(v7);
  v9 = v8;

  v10 = sub_1000DC274(v9, [a1 connection]);
  v11 = [v10 existsInDatabase];

  return v11;
}

uint64_t sub_10018269C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_1001826B0()
{
  sub_100098BB4();
  v1 = v0[5];
  sub_1001077A8();
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1001827B4;

  return sub_1001D5D00(sub_100184AE4, v3);
}

uint64_t sub_1001827B4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001828B4()
{
  sub_10008BE9C();
  sub_100184D64();
  v1 = *(v0 + 16);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_100182920(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 16;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v7 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v6 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v20 = &type metadata for String;
  v17 = v7;
  v18 = v6;

  v8 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v17);
  type metadata accessor for LegacyTransactionEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [a1 connection];
  v11 = [ObjCClassFromMetadata queryOnConnection:v10 predicate:v8];

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100184B1C;
  *(v13 + 24) = v12;
  v21 = sub_1000DC764;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100223D74;
  v20 = &unk_10038CFC8;
  v14 = _Block_copy(&v17);
  v15 = a1;

  [v11 enumeratePersistentIDsUsingBlock:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100182B4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for SKLogger();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for LegacyTransactionInternal();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a4 connection];
  v14 = [objc_allocWithZone(type metadata accessor for LegacyTransactionEntity()) initWithPersistentID:a1 onConnection:v13];

  v15 = v14;
  sub_100182FE0(v15, v12);
  swift_beginAccess();
  sub_100143748();
  v16 = *(*a5 + 16);
  sub_1001437EC(v16);
  v17 = *a5;
  *(v17 + 16) = v16 + 1;
  sub_100184B24(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, type metadata accessor for LegacyTransactionInternal);
  swift_endAccess();

  return sub_100184B84(v12, type metadata accessor for LegacyTransactionInternal);
}

void sub_100182FE0(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_100183EE4();
  v13 = sub_10014309C();
  if (v2)
  {
  }

  else
  {
    v49 = v12;
    v50 = v6;
    v47 = a2;
    v48 = v13;
    v51 = v14;
    v46 = sub_10018424C();
    v15 = sub_1001842D8();
    v17 = v16;
    v18 = sub_100184614();
    v20 = v19;
    sub_1001843DC(v11);
    sub_100183F70(v9);
    v42 = sub_1001845DC();
    v43 = v20;
    v44 = v17;
    v45 = v21;
    v22 = sub_100184170();
    v24 = v23;
    v41 = v22;
    v25 = sub_100183D3C();
    v26 = v50;
    v40 = v25;

    v27 = v18;
    v28 = v47;
    v29 = v48;
    *v47 = v49;
    *(v28 + 1) = v29;
    v30 = v46;
    *(v28 + 2) = v51;
    *(v28 + 3) = v30;
    v31 = v43;
    v32 = v44;
    *(v28 + 4) = v15;
    *(v28 + 5) = v32;
    *(v28 + 6) = v27;
    *(v28 + 7) = v31;
    v33 = type metadata accessor for LegacyTransactionInternal();
    v34 = *(v26 + 32);
    v34(&v28[v33[9]], v11, v5);
    v34(&v28[v33[10]], v9, v5);
    v35 = &v28[v33[11]];
    v36 = v45;
    *v35 = v42;
    v35[1] = v36;
    v37 = &v28[v33[12]];
    v38 = v40;
    *v37 = v41;
    v37[1] = v24;
    *&v28[v33[13]] = v38;
  }
}

uint64_t sub_1001832C8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_1001832DC()
{
  sub_100098BB4();
  v1 = v0[5];
  sub_1001077A8();
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1001833D8;

  return sub_1001D5D00(sub_100184A04, v3);
}

uint64_t sub_1001833D8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001834D8()
{
  sub_10008BE9C();
  sub_100184D64();
  v1 = *(v0 + 16);
  v2 = v1;

  sub_10009F198();

  return v3(v1);
}

uint64_t sub_100183540(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 16;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v7 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v6 = *(a2 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v20 = &type metadata for String;
  v17 = v7;
  v18 = v6;

  v8 = sub_100223CB4(0x495F656C646E7562, 0xE900000000000044, &v17);
  type metadata accessor for LegacyTransactionPropertiesEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [a1 connection];
  v11 = [ObjCClassFromMetadata queryOnConnection:v10 predicate:v8];

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100184A3C;
  *(v13 + 24) = v12;
  v21 = sub_1000939AC;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100223D74;
  v20 = &unk_10038CF00;
  v14 = _Block_copy(&v17);
  v15 = a1;

  [v11 enumeratePersistentIDsUsingBlock:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_10018376C(uint64_t a1, int a2, _BYTE *a3, void **a4, id a5)
{
  v8 = [a5 connection];
  v9 = [objc_allocWithZone(type metadata accessor for LegacyTransactionPropertiesEntity()) initWithPersistentID:a1 onConnection:v8];

  swift_beginAccess();
  v10 = *a4;
  *a4 = v9;

  *a3 = 1;
}

id sub_100183810(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LegacyTransactionStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t sub_100183988@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0);
  }

  return result;
}

id sub_100183CE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

uint64_t sub_100183D3C()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 valueForProperty:v2];

  if (v3)
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
  if (!*(&v8 + 1))
  {
    sub_1000AF25C(v9, &unk_1003CCB70);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100080FB4(&unk_1003CD718);
  sub_100184C38(&qword_1003CD7F0, sub_1000BC8C8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  result = sub_10008E168(v5, v6);
  if (!v1)
  {
    return *&v9[0];
  }

  return result;
}

id sub_100183EE4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t sub_100183F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0);
  }

  return result;
}

uint64_t sub_100184170()
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
    *v5 = 0xD000000000000017;
    *(v5 + 8) = 0x8000000100316D90;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10018424C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberValueForProperty:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = [v2 unsignedIntegerValue];

  return v3;
}

uint64_t sub_1001842D8()
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
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000AF25C(v7, &unk_1003CCB70);
    return 0;
  }
}

uint64_t sub_1001843DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&qword_1003CD9A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v2 valueForProperty:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    sub_100081DFC(v6, v10 ^ 1u, 1, v9);
    if (sub_100081D0C(v6, 1, v9) != 1)
    {
      return (*(*(v9 - 8) + 32))(a1, v6, v9);
    }
  }

  else
  {
    sub_1000AF25C(v14, &unk_1003CCB70);
    v9 = type metadata accessor for Date();
    sub_100081DFC(v6, 1, 1, v9);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = sub_100081D0C(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000AF25C(v6, &qword_1003CD9A0);
  }

  return result;
}

uint64_t sub_100184614()
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
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000AF25C(v7, &unk_1003CCB70);
    return 0;
  }
}

id sub_100184714(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9.receiver = v3;
  v9.super_class = a3(0);
  v7 = objc_msgSendSuper2(&v9, "initWithPropertyValues:onConnection:", isa, a2);

  return v7;
}

id sub_100184834(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v8.receiver = v3;
  v8.super_class = a3(0);
  v6 = objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a1, a2);

  return v6;
}

id sub_1001848E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100184974(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001849D0()
{
  sub_1001077A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184A0C()
{
  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100184A74()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100184AAC()
{

  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184AEC()
{
  v1 = sub_10009F17C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100184B24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100184B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100184BE4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100184C38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&unk_1003CD718);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100184CB0()
{

  v0 = sub_10009F17C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100184D40()
{
  v2 = *(v0 + 112);

  return sub_100183988(v2);
}

uint64_t sub_100184D64()
{

  return swift_beginAccess();
}

void sub_100184D88(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

id sub_100184DA8(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 isCancelledError];

  return v8;
}

uint64_t sub_100184F08(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  if ([v4 code] == a3)
  {
    v7 = [v4 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_100186860();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_100184FB8(void *a1)
{
  v2 = a1;
  v3 = &selRef_domain;
  while (1)
  {
    v4 = v2;
    if ([v4 v3[263]])
    {
LABEL_24:

      return;
    }

    v5 = [v4 userInfo];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v6 + 16))
    {

      goto LABEL_18;
    }

    v9 = sub_1000B6328(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_18:
    v18 = [v4 userInfo];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v19 + 16))
    {

LABEL_26:

      return;
    }

    v22 = sub_1000B6328(v20, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100080F58(*(v19 + 56) + 32 * v22, v27);

    sub_100186738();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v28;
  }

  sub_100080F58(*(v6 + 56) + 32 * v9, v27);

  sub_100080FB4(&qword_1003D06D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = NSUnderlyingErrorKey;
  v26 = NSMultipleUnderlyingErrorsKey;
  v12 = v28;
  v13 = sub_1000AFC90(v28);
  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      v3 = &selRef_domain;
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = v12[v14 + 4];
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v17 = sub_100184FB8(v15);

    if (v1)
    {

      return;
    }

    ++v14;
    if (v17)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1001852D8(void *a1)
{
  v2 = a1;
  v3 = &selRef_redeemCodeURL;
  while (1)
  {
    v4 = v2;
    if (sub_1001857E4())
    {
LABEL_24:

      return;
    }

    v5 = [v4 v3[495]];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v6 + 16))
    {

      goto LABEL_18;
    }

    v9 = sub_1000B6328(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_18:
    v18 = [v4 v3[495]];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v19 + 16))
    {

LABEL_26:

      return;
    }

    v22 = sub_1000B6328(v20, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_100080F58(*(v19 + 56) + 32 * v22, v27);

    sub_100186738();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v2 = v28;
  }

  sub_100080F58(*(v6 + 56) + 32 * v9, v27);

  sub_100080FB4(&qword_1003D06D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = NSUnderlyingErrorKey;
  v26 = NSMultipleUnderlyingErrorsKey;
  v12 = v28;
  v13 = sub_1000AFC90(v28);
  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      v3 = &selRef_redeemCodeURL;
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = v12[v14 + 4];
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v17 = sub_1001852D8(v15);

    if (v1)
    {

      return;
    }

    ++v14;
    if (v17)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1001855F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100186860();
  }

  return v11 & 1;
}

uint64_t sub_1001856B0()
{
  if ([v0 ams_isUserCancelledError])
  {
    return 1;
  }

  if ([v0 ak_isUserCancelError])
  {
    return 1;
  }

  if (sub_100184F08(0xD00000000000001ELL, 0x80000001003197F0, 0x3E9))
  {
    return 1;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100184F08(v1, v2, 6);

  if (v3)
  {
    return 1;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_100184F08(v4, v5, 0x1FC);

  if (v6)
  {
    return 1;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_100184F08(v7, v8, 0x38B);

  if (v9)
  {
    return 1;
  }

  return sub_100184F08(0xD000000000000015, 0x8000000100313F50, 0xB);
}

BOOL sub_1001857E4()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_1001855F0(v1, v2);

  return (v3 & 1) != 0 && [v0 code] == -7005;
}

id sub_100185854(char *a1)
{
  v4 = v1;
  v5 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_serverCorrelationID + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_serverCorrelationID], v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152);
      v7 = a1;

      swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0();

      v5 = v153;
    }

    else
    {
      sub_10018677C();
      v8 = a1;
      sub_10008105C(&v150);
      sub_1000B6328(v3, v2);
      if (v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = _swiftEmptyDictionarySingleton;
        v11 = _swiftEmptyDictionarySingleton[3];
        sub_100080FB4(&qword_1003CCA88);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
        v5 = v153;
        sub_100186808();
        v12 = sub_10018683C();
        sub_10008B5D0(v12, &v142);
        sub_1001867EC();
      }

      else
      {
        v142 = 0u;
        v143 = 0u;
      }

      sub_10008105C(&v142);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_environment + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_environment], v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152);

      swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0();

      v5 = v153;
    }

    else
    {
      sub_10018677C();
      sub_10008105C(&v150);
      sub_1001868A0();
      if (v13)
      {
        sub_100186908();
        v153 = v5;
        sub_100080FB4(&qword_1003CCA88);
        sub_1001868C8();
        v5 = v153;
        sub_100186808();
        v14 = sub_10018683C();
        sub_10008B5D0(v14, &v142);
        sub_1001867EC();
      }

      else
      {
        v142 = 0u;
        v143 = 0u;
      }

      sub_10008105C(&v142);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001868BC();
    if (*&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode + 8])
    {
      sub_1001867C8(&a1[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode], v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150, v151, v152);

      swift_isUniquelyReferenced_nonNull_native();
      sub_1001867A0();

      v5 = v153;
    }

    else
    {
      sub_10018677C();
      sub_10008105C(&v150);
      sub_1001868A0();
      if (v15)
      {
        sub_100186908();
        v153 = v5;
        sub_100080FB4(&qword_1003CCA88);
        sub_1001868C8();
        v5 = v153;
        sub_100186808();
        v16 = sub_10018683C();
        sub_10008B5D0(v16, &v142);
        sub_1001867EC();
      }

      else
      {
        v142 = 0u;
        v143 = 0u;
      }

      sub_10008105C(&v142);
    }
  }

  v17 = [v1 userInfo];
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v19, v20, v18, &v150);

  if (v152)
  {
    v21 = sub_100186884();
    if (v21)
    {
      v22 = 0;
      v23 = v153;
LABEL_23:
      v154 = 0;
      goto LABEL_36;
    }

    v153 = 0;
    v24 = v21 ^ 1;
  }

  else
  {
    sub_10008105C(&v150);
    v153 = 0;
    v24 = 1;
  }

  v154 = v24;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v25, v26, v5, &v150);

  if (!v152)
  {
    sub_10008105C(&v150);
LABEL_33:
    sub_10018677C();
    goto LABEL_34;
  }

  sub_100080FB4(&qword_1003CC200);
  if ((sub_100186884() & 1) == 0 || !v142)
  {
    goto LABEL_33;
  }

  sub_1001DA990(0x546572756C696166, 0xEB00000000657079, v142, &v150);

  if (!v152)
  {
LABEL_34:
    sub_10008105C(&v150);
    goto LABEL_35;
  }

  if (sub_100186884())
  {
    v22 = 0;
    v23 = v142;
    v153 = v142;
    goto LABEL_23;
  }

LABEL_35:
  v23 = 0;
  v153 = 0;
  v22 = 1;
  v154 = 1;
LABEL_36:
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v22)
  {
    sub_1000B6328(v27, v28);
    if (v35)
    {
      v36 = sub_100186908();
      sub_100186854();
      sub_100080FB4(&qword_1003CCA88);
      sub_100186848();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v36, v5);
      v5 = v142;
      sub_100186808();
      v37 = sub_10018683C();
      sub_10008B5D0(v37, &v150);
      sub_1001867EC();
    }

    else
    {
      sub_10018677C();
    }

    sub_10008105C(&v150);
  }

  else
  {
    v152 = &type metadata for Int;
    *&v150 = v23;
    sub_100186824(v27, v28, v29, v30, v31, v32, v33, v34, v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10018678C();
    sub_10023E7C0();

    v5 = v139;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = sub_1001855F0(v38, v39);

  if (v40)
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    v44 = sub_1001866D4(v4);
    if (v45)
    {
      v152 = &type metadata for String;
      *&v150 = v44;
      *(&v150 + 1) = v45;
      sub_100186824(v44, v45, v46, v47, v48, v49, v50, v51, v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018678C();
      sub_10023E7C0();

      v5 = v140;
    }

    else
    {
      v72 = sub_1000B6328(v41, v43);
      if (v73)
      {
        v74 = v72;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        sub_100186854();
        sub_100080FB4(&qword_1003CCA88);
        sub_100186848();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v75, v5);
        v5 = v142;

        sub_10008B5D0((v5[7] + 32 * v74), &v150);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10018677C();
      }

      sub_10008105C(&v150);
    }

    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;
    v95 = [v4 code];
    objc_allocWithZone(NSError);

    v96 = v92;
    v97 = v94;
    v98 = v95;
LABEL_59:
    v99 = v5;
LABEL_60:
    v53 = sub_100212920(v96, v97, v98, v99);
    goto LABEL_82;
  }

  sub_100184FB8(v4);
  if ((v52 & 1) == 0)
  {
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = sub_100184F08(v55, v56, 0x131);

    if (v57)
    {
      if (v154)
      {
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
        v61 = _convertErrorToNSError(_:)();
        v62 = ASDErrorWithSafeUserInfo();

        if (v62)
        {
          swift_getErrorValue();
          v152 = v136;
          v63 = sub_10009E720(&v150);
          (*(*(v136 - 1) + 16))(v63, v135, v136);

          sub_100186824(v64, v65, v66, v67, v68, v69, v70, v71, v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10018678C();
          sub_10023E7C0();

LABEL_80:
          type metadata accessor for ASDError(0);
          v124 = 500;
          goto LABEL_81;
        }

LABEL_66:
        v112 = sub_1000B6328(v58, v60);
        if (v113)
        {
          v114 = v112;
          v115 = swift_isUniquelyReferenced_nonNull_native();
          sub_100186854();
          sub_100080FB4(&qword_1003CCA88);
          sub_100186848();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v115, v5);
          sub_1001868E8();
          sub_10008B5D0((v5[7] + 32 * v114), &v150);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10018677C();
        }

        sub_10008105C(&v150);
        goto LABEL_80;
      }

      v100 = v153;
      if (v153 != 3705)
      {
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;
        v104 = sub_1001866D4(v4);
        if (v105)
        {
          v152 = &type metadata for String;
          *&v150 = v104;
          *(&v150 + 1) = v105;
          sub_100186824(v104, v105, v106, v107, v108, v109, v110, v111, v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10018678C();
          sub_10023E7C0();

          v5 = v141;
        }

        else
        {
          v119 = sub_1000B6328(v101, v103);
          if (v120)
          {
            v121 = v119;
            v122 = swift_isUniquelyReferenced_nonNull_native();
            sub_100186854();
            sub_100080FB4(&qword_1003CCA88);
            sub_100186848();
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v122, v5);
            sub_1001868E8();
            sub_10008B5D0((v5[7] + 32 * v121), &v150);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            sub_10018677C();
          }

          sub_10008105C(&v150);
        }

        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v132;
        objc_allocWithZone(NSError);

        v96 = v131;
        v97 = v133;
        v98 = v100;
        goto LABEL_59;
      }
    }

    else
    {
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v77;
      v78 = sub_1001855F0(v76, v77);

      if ((v78 & 1) == 0)
      {
        v60 = _convertErrorToNSError(_:)();
        v53 = ASDErrorWithSafeUserInfo();

        if (v53)
        {
          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_66;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001868BC();
      v79 = _convertErrorToNSError(_:)();
      v80 = ASDErrorWithSafeUserInfo();

      if (v80)
      {
        swift_getErrorValue();
        v81 = v145;
        v82 = v146;
        v152 = v146;
        v83 = sub_10009E720(&v150);
        (*(*(v82 - 1) + 16))(v83, v81, v82);

        sub_100186824(v84, v85, v86, v87, v88, v89, v90, v91, v134, v135, v136, v137, v138, v139, v142, v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149, v150);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10018678C();
        sub_10023E7C0();
      }

      else
      {
        sub_1001868A0();
        if (v116)
        {
          v117 = sub_100186908();
          sub_100186854();
          sub_100080FB4(&qword_1003CCA88);
          sub_100186848();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v117, v5);
          sub_100186808();
          v118 = sub_10018683C();
          sub_10008B5D0(v118, &v150);
          sub_1001867EC();
        }

        else
        {
          sub_10018677C();
        }

        sub_10008105C(&v150);
      }

      v123 = [v4 code];
      if (v123 == 12)
      {
        type metadata accessor for ASDError(0);
        v124 = 512;
        goto LABEL_81;
      }

      if (v123 == 100)
      {
        sub_1001852D8(v4);
        if (v126)
        {
          v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = v128;
          v130 = objc_allocWithZone(NSError);
          v96 = v127;
          v97 = v129;
          v98 = -1004;
          v99 = 0;
          goto LABEL_60;
        }

        type metadata accessor for ASDError(0);
        v124 = 530;
LABEL_81:
        *&v142 = v124;
        sub_10008B578();

        _BridgedStoredNSError.init(_:userInfo:)();
        v53 = v150;
        goto LABEL_82;
      }

      if (v123 != 511)
      {
        goto LABEL_80;
      }
    }

    type metadata accessor for ASDError(0);
    v124 = 1052;
    goto LABEL_81;
  }

  sub_10008B5E0();
  v53 = swift_allocError();
  *v54 = 11;
LABEL_82:

  return v53;
}

id sub_100186564(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v7, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v6, a2);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v8, v6, a2);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 toASDErrorWithMetadata:a1];

  return v10;
}

uint64_t sub_1001866D4(void *a1)
{
  v1 = [a1 ams_message];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100186738()
{
  result = qword_1003CF458[0];
  if (!qword_1003CF458[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1003CF458);
  }

  return result;
}

double sub_10018677C()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  return result;
}

_OWORD *sub_1001867A0()
{
  *(v1 - 112) = v0;

  return sub_10023E7C0();
}

_OWORD *sub_1001867C8@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  v22 = *a1;
  a19 = v20;
  *&a17 = v22;
  *(&a17 + 1) = v19;

  return sub_10008B5D0(&a17, &a8);
}

uint64_t sub_1001867EC()
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100186808()
{
}

_OWORD *sub_100186824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24)
{

  return sub_10008B5D0(&a24, &a15);
}

uint64_t sub_100186860()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100186884()
{

  return swift_dynamicCast();
}

unint64_t sub_1001868A0()
{

  return sub_1000B6328(v1, v0);
}

BOOL sub_1001868C8()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_1001868E8()
{
}

uint64_t sub_100186908()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_100186920(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100186934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100186974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001869EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684632420 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000)
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

uint64_t sub_100186B04(char a1)
{
  if (!a1)
  {
    return 0x49746E756F636361;
  }

  if (a1 == 1)
  {
    return 1684632420;
  }

  return 0x656D616E72657375;
}

uint64_t sub_100186B58(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D0700);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001879A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_10014E070();
  if (!v1)
  {
    v10[14] = 1;
    sub_10014E070();
    v10[13] = 2;
    sub_10014E070();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100186CB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100080FB4(&qword_1003D0720);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100086D24(a1, a1[3]);
  sub_1001879A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v25 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100080F0C(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_100186ED4(char a1)
{
  if (a1)
  {
    return 0x54746E756F636361;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_100186F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079)
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

uint64_t sub_1001870A4(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, void (*a7)(void *))
{
  v18[0] = a3;
  v19 = a4;
  v9 = sub_100080FB4(a5);
  sub_1000890DC();
  v11 = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  v15 = sub_100086D24(a1, a1[3]);
  a7(v15);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v16 = v18[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v21 = v19;
    v20 = 1;
    sub_100187A4C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_100187264(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_100080FB4(a2);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v7);
  v8 = a1[3];
  sub_100086D24(a1, v8);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100187950();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000E3F18();
    v11(v10);
  }

  sub_100080F0C(a1);
  return v8;
}

uint64_t sub_100187444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001869EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018746C(uint64_t a1)
{
  v2 = sub_1001879A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001874A8(uint64_t a1)
{
  v2 = sub_1001879A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001874E4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100186CB0(a1, v6);
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

uint64_t sub_100187548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100186F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100187570(uint64_t a1)
{
  v2 = sub_1001879F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001875AC(uint64_t a1)
{
  v2 = sub_1001879F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100187678(uint64_t a1)
{
  v2 = sub_1001878FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001876B4(uint64_t a1)
{
  v2 = sub_1001878FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100187734@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  result = sub_100187264(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
    *(a5 + 16) = v9;
  }

  return result;
}

unint64_t sub_1001877EC()
{
  result = qword_1003D06D8;
  if (!qword_1003D06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06D8);
  }

  return result;
}

uint64_t sub_10018786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001878A8()
{
  result = qword_1003D06E0;
  if (!qword_1003D06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06E0);
  }

  return result;
}

unint64_t sub_1001878FC()
{
  result = qword_1003D06F0;
  if (!qword_1003D06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06F0);
  }

  return result;
}

unint64_t sub_100187950()
{
  result = qword_1003D06F8;
  if (!qword_1003D06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D06F8);
  }

  return result;
}

unint64_t sub_1001879A4()
{
  result = qword_1003D0708;
  if (!qword_1003D0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0708);
  }

  return result;
}

unint64_t sub_1001879F8()
{
  result = qword_1003D0718;
  if (!qword_1003D0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0718);
  }

  return result;
}

unint64_t sub_100187A4C()
{
  result = qword_1003D0730;
  if (!qword_1003D0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100187B80);
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

_BYTE *sub_100187BB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100187C84);
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

unint64_t sub_100187CC0()
{
  result = qword_1003D0740;
  if (!qword_1003D0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0740);
  }

  return result;
}

unint64_t sub_100187D18()
{
  result = qword_1003D0748;
  if (!qword_1003D0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0748);
  }

  return result;
}

unint64_t sub_100187D70()
{
  result = qword_1003D0750;
  if (!qword_1003D0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0750);
  }

  return result;
}

unint64_t sub_100187DC8()
{
  result = qword_1003D0758;
  if (!qword_1003D0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0758);
  }

  return result;
}

unint64_t sub_100187E20()
{
  result = qword_1003D0760;
  if (!qword_1003D0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0760);
  }

  return result;
}

unint64_t sub_100187E78()
{
  result = qword_1003D0768;
  if (!qword_1003D0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0768);
  }

  return result;
}

unint64_t sub_100187ED0()
{
  result = qword_1003D0770;
  if (!qword_1003D0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0770);
  }

  return result;
}

unint64_t sub_100187F28()
{
  result = qword_1003D0778;
  if (!qword_1003D0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0778);
  }

  return result;
}

unint64_t sub_100187F80()
{
  result = qword_1003D0780[0];
  if (!qword_1003D0780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003D0780);
  }

  return result;
}

uint64_t sub_10018803C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 112);

  sub_1001DAA9C(a1, a2, v8, v12);

  if (v12[8])
  {
    sub_100188190(v12);
LABEL_5:
    type metadata accessor for TransactionCacheManager();
    swift_allocObject();
    v10 = a4;
    Strong = sub_100109560(v10);
    swift_weakInit();
    swift_weakAssign();
    v12[32] = 0;
    swift_beginAccess();

    sub_1002350E0();
    swift_endAccess();

    return Strong;
  }

  Strong = swift_weakLoadStrong();
  sub_100188190(v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  return Strong;
}

uint64_t sub_100188190(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003D0808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001881F8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(AMSURLParser) initWithBag:a2];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 typeForURL:v4];

  v12 = 0;
  v7 = [v6 resultWithError:&v12];

  v8 = v12;
  if (v7)
  {
    v9 = v12;
    v8 = [v7 integerValue];
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

Class sub_10018832C(uint64_t a1, uint64_t a2)
{
  isa = v2;
  v6 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012A7F8(a1, v8);
  if (sub_100081D0C(v8, 1, v9) == 1)
  {
    sub_100146014(v8);
    sub_1001887F8();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (a2)
    {
      swift_unknownObjectRetain();
      v14 = sub_1001881F8(v12, a2);
      if (v2)
      {
        v15 = sub_1001889EC();
        v16(v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = v14;
        sub_10018884C();
        isa = NSNumber.init(integerLiteral:)(v21).super.super.isa;
        swift_unknownObjectRelease();
        v22 = sub_1001889EC();
        v23(v22);
      }
    }

    else
    {
      sub_1001887F8();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      v18 = sub_1001889EC();
      v19(v18);
    }
  }

  return isa;
}

id sub_100188748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_URLParserHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001887A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for objc_URLParserHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001887F8()
{
  result = qword_1003D0838;
  if (!qword_1003D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0838);
  }

  return result;
}

unint64_t sub_10018884C()
{
  result = qword_1003D0520;
  if (!qword_1003D0520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D0520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserHelper.ParserError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10018895CLL);
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

unint64_t sub_100188998()
{
  result = qword_1003D0840;
  if (!qword_1003D0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0840);
  }

  return result;
}

uint64_t sub_1001889FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100188A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_100188AB4()
{
  result = qword_1003D0848;
  if (!qword_1003D0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0848);
  }

  return result;
}

uint64_t sub_100188B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Client.Server(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  sub_1001DA1F0();
  v22 = v14;
  v23 = *(v14 + 16);
  v24 = v23 + 1;
  if (v23 >= *(v14 + 24) >> 1)
  {
    sub_10018918C();
    v22 = v14;
  }

  *(v22 + 16) = v24;
  v25 = v22 + 24 * v23;
  *(v25 + 32) = 1;
  *(v25 + 40) = 0xD000000000000011;
  *(v25 + 48) = 0x800000010031B420;
  if (a5)
  {
    v26 = *(v22 + 24);
    v27 = v23 + 2;

    if ((v23 + 2) > (v26 >> 1))
    {
      sub_10018918C();
      v22 = v28;
    }

    v36 = 3;
  }

  else
  {
    sub_1001A7E5C(v14, v15, v16, v17, v18, v19, v20, v21, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    v37 = sub_100080FB4(&qword_1003CCB50);
    v38 = sub_100081D0C(v13, 2, v37);
    v28 = sub_100094BEC(v13);
    if (v38 != 1)
    {
      goto LABEL_12;
    }

    v56 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
    sub_1000DCFE0();
    v28 = String.init<A>(_:radix:uppercase:)();
    a4 = v28;
    a5 = v29;
    v24 = *(v22 + 16);
    v27 = v24 + 1;
    if (v24 >= *(v22 + 24) >> 1)
    {
      sub_10018918C();
      v22 = v28;
    }

    v36 = 0;
  }

  *(v22 + 16) = v27;
  v39 = v22 + 24 * v24;
  *(v39 + 32) = v36;
  *(v39 + 40) = a4;
  *(v39 + 48) = a5;
LABEL_12:
  sub_1001A7E5C(v28, v29, v30, v31, v32, v33, v34, v35, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v40 = sub_100080FB4(&qword_1003CCB50);
  v41 = sub_100081D0C(v11, 2, v40);
  if (v41)
  {
    if (v41 != 1)
    {
      if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
      {
        v42 = 0x67696C6674736574;
      }

      else
      {
        v42 = 0x786F62646E6173;
      }

      if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
      {
        v43 = 0xEA00000000007468;
      }

      else
      {
        v43 = 0xE700000000000000;
      }

      v44 = *(v22 + 16);
      if (v44 >= *(v22 + 24) >> 1)
      {
        sub_10018918C();
        v22 = v54;
      }

      *(v22 + 16) = v44 + 1;
      v45 = v22 + 24 * v44;
      *(v45 + 32) = 2;
      *(v45 + 40) = v42;
      *(v45 + 48) = v43;
    }
  }

  else
  {
    v47 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v46 = *(a1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
    v48 = *(v22 + 16);
    v49 = *(v22 + 24);

    if (v48 >= v49 >> 1)
    {
      sub_10018918C();
      v22 = v53;
    }

    *(v22 + 16) = v48 + 1;
    v50 = v22 + 24 * v48;
    *(v50 + 32) = 0;
    *(v50 + 40) = v47;
    *(v50 + 48) = v46;
    v51 = type metadata accessor for URL();
    (*(*(v51 - 8) + 8))(v11, v51);
  }

  return v22;
}

id sub_100188E80()
{
  if (qword_1003CBFD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F2840;
  qword_1003F2600 = qword_1003F2840;

  return v1;
}

unint64_t sub_100188EE4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383A38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100188F30(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 7761509;
      break;
    case 3:
      result = 0x6449796C696D6166;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100188FD4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100188EE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100189004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100188F30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ManageSubscriptionsEngagementDestination.QueryParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001890FCLL);
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

unint64_t sub_100189138()
{
  result = qword_1003D08A0;
  if (!qword_1003D08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08A0);
  }

  return result;
}

void sub_10018918C()
{

  sub_1001DA1F0();
}

id sub_1001891A4()
{
  sub_100189320();
  result = sub_1001891F4(0xD000000000000022, 0x800000010031B440, 1);
  qword_1003D08A8 = result;
  return result;
}

id sub_1001891F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

uint64_t sub_100189260()
{
  v1 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
  [v1 setAccount:v0];
  if (qword_1003CBE20 != -1)
  {
    swift_once();
  }

  v2 = [v1 identifierForKey:qword_1003D08A8];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100189320()
{
  result = qword_1003D08B0;
  if (!qword_1003D08B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D08B0);
  }

  return result;
}

unint64_t sub_100189378()
{
  result = qword_1003D08B8;
  if (!qword_1003D08B8)
  {
    sub_1000852D4(&qword_1003D08C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08B8);
  }

  return result;
}

uint64_t sub_1001893DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x67696C6674736574 && a2 == 0xEA00000000007468)
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

uint64_t sub_1001894F8(char a1)
{
  if (!a1)
  {
    return 0x69746375646F7270;
  }

  if (a1 == 1)
  {
    return 0x786F62646E6173;
  }

  return 0x67696C6674736574;
}

uint64_t sub_100189560(void *a1, int a2)
{
  v33 = a2;
  sub_100080FB4(&qword_1003D08D0);
  sub_1000890DC();
  v31 = v4;
  v32 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_100080FB4(&qword_1003D08D8);
  sub_1000890DC();
  v28 = v8;
  v29 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100080FB4(&qword_1003D08E0);
  sub_1000890DC();
  v27 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100080FB4(&qword_1003D08E8);
  sub_1000890DC();
  v19 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_100086D24(a1, a1[3]);
  sub_10018A0D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_10018A178();
      sub_1000EFB1C();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_10018A124();
      v24 = v30;
      sub_1000EFB1C();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10018A1CC();
    sub_1000EFB1C();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10018987C(void *a1)
{
  v63 = sub_100080FB4(&qword_1003D0910);
  sub_1000890DC();
  v61 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_100080FB4(&qword_1003D0918);
  sub_1000890DC();
  v58 = v5;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_100080FB4(&qword_1003D0920);
  sub_1000890DC();
  v57 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_100080FB4(&qword_1003D0928);
  sub_1000890DC();
  v62 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_100086D24(a1, v17);
  sub_10018A0D0();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100162694(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_10018A178();
          v35 = v55;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_1000893A0();
            v37(v36);
LABEL_21:
            sub_100080F0C(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_10018A124();
          v17 = v59;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_1000893A0();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_1000893A0();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_10018A1CC();
        v43 = v54;
        sub_1000893B0();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100089250();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100089250();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100080FB4(&qword_1003CC798);
    *v40 = &type metadata for AccountType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100089250();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100080F0C(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100189E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001893DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100189E40(uint64_t a1)
{
  v2 = sub_10018A0D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189E7C(uint64_t a1)
{
  v2 = sub_10018A0D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189EB8(uint64_t a1)
{
  v2 = sub_10018A1CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189EF4(uint64_t a1)
{
  v2 = sub_10018A1CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189F30(uint64_t a1)
{
  v2 = sub_10018A178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189F6C(uint64_t a1)
{
  v2 = sub_10018A178();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189FA8(uint64_t a1)
{
  v2 = sub_10018A124();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189FE4(uint64_t a1)
{
  v2 = sub_10018A124();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018A020@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018987C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10018A07C()
{
  result = qword_1003D08C8;
  if (!qword_1003D08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08C8);
  }

  return result;
}

unint64_t sub_10018A0D0()
{
  result = qword_1003D08F0;
  if (!qword_1003D08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08F0);
  }

  return result;
}

unint64_t sub_10018A124()
{
  result = qword_1003D08F8;
  if (!qword_1003D08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D08F8);
  }

  return result;
}

unint64_t sub_10018A178()
{
  result = qword_1003D0900;
  if (!qword_1003D0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0900);
  }

  return result;
}

unint64_t sub_10018A1CC()
{
  result = qword_1003D0908;
  if (!qword_1003D0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0908);
  }

  return result;
}

_BYTE *sub_10018A224(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10018A2F0);
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

unint64_t sub_10018A35C()
{
  result = qword_1003D0930;
  if (!qword_1003D0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0930);
  }

  return result;
}

unint64_t sub_10018A3B4()
{
  result = qword_1003D0938;
  if (!qword_1003D0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0938);
  }

  return result;
}

unint64_t sub_10018A40C()
{
  result = qword_1003D0940;
  if (!qword_1003D0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0940);
  }

  return result;
}

unint64_t sub_10018A464()
{
  result = qword_1003D0948;
  if (!qword_1003D0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0948);
  }

  return result;
}

unint64_t sub_10018A4BC()
{
  result = qword_1003D0950;
  if (!qword_1003D0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0950);
  }

  return result;
}

unint64_t sub_10018A514()
{
  result = qword_1003D0958;
  if (!qword_1003D0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0958);
  }

  return result;
}

unint64_t sub_10018A56C()
{
  result = qword_1003D0960;
  if (!qword_1003D0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0960);
  }

  return result;
}

unint64_t sub_10018A5C4()
{
  result = qword_1003D0968;
  if (!qword_1003D0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0968);
  }

  return result;
}

unint64_t sub_10018A61C()
{
  result = qword_1003D0970;
  if (!qword_1003D0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D0970);
  }

  return result;
}

void sub_10018A674(uint64_t a1, unint64_t a2, void *a3)
{
  v154 = a1;
  v155 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100093D40();
  v10 = v9 - v8;
  v11 = sub_100080FB4(&unk_1003D0540);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_10018ECCC();
  v144 = v13;
  sub_10018ED10();
  __chkstk_darwin(v14);
  v16 = &v139[-v15];
  v17 = type metadata accessor for URL();
  sub_1000890DC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10018ECCC();
  v147 = v21;
  sub_10018ED10();
  __chkstk_darwin(v22);
  sub_10018ED54();
  v146 = v23;
  sub_10018ED10();
  __chkstk_darwin(v24);
  sub_10018ED54();
  v148 = v25;
  sub_10018ED10();
  __chkstk_darwin(v26);
  sub_10018ED54();
  v149 = v27;
  sub_10018ED10();
  __chkstk_darwin(v28);
  v30 = &v139[-v29];
  v150 = *(v6 + 104);
  (v150)(v10, enum case for URL.DirectoryHint.checkFileSystem(_:), v4);
  sub_10018C804(a3);
  v151 = *(v6 + 8);
  v151(v10, v4);
  v31 = sub_100123E24();
  if (sub_100081D0C(v31, v32, v17) == 1)
  {
    sub_100146014(v16);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v33 = type metadata accessor for SKLogger();
    sub_10007EDA4(v33, qword_1003F26C8);
    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    sub_1000C446C();
    v156 = 0xD00000000000001ELL;
    v157 = v34;
    v35 = [a3 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v36._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v36);

    v37 = static os_log_type_t.error.getter();

    v38 = Logger.logObject.getter();

    if (os_log_type_enabled(v38, v37))
    {
      sub_1000B7DC8();
      v39 = swift_slowAlloc();
      sub_1000B7DBC();
      v40 = swift_slowAlloc();
      v156 = v40;
      *v39 = 136446466;
      v42 = sub_100093CF0(v40, v41, &v156);
      v43 = sub_100093BF8(v42);
      v45 = sub_10018EDEC(v43, v44, &v156);

      *(v39 + 14) = v45;
      sub_10017C91C(&_mh_execute_header, v46, v47, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    return;
  }

  v145 = v19;
  v48 = *(v19 + 32);
  v152 = v30;
  v143 = v17;
  v48(v30, v16, v17);
  v142 = a3;
  sub_10018C880(a3);
  if (!v49)
  {
    goto LABEL_14;
  }

  v50 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v158 = 0;
  v141 = v50;
  v52 = [(__CFString *)v50 JSONObjectWithData:isa options:1 error:&v158];

  v53 = v158;
  if (!v52)
  {
    v59 = v53;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v153 = 0;
LABEL_14:
    sub_1000BC808(v154, v155);
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10008E5A4(0, &qword_1003D0978);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v54 = v158;
  v55 = String._bridgeToObjectiveC()();

  v156 = 0x656D614E707061;
  v157 = 0xE700000000000000;
  [v54 __swift_setObject:v55 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v156 = 0;
  v56 = [(__CFString *)v141 dataWithJSONObject:v54 options:1 error:&v156];
  v57 = v156;
  if (!v56)
  {
    v128 = v57;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_25;
  }

  v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v155 = v58;

LABEL_15:
  v60 = objc_opt_self();
  v61 = [v60 defaultManager];
  v62 = sub_10024EC2C();

  v63 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  if ((v62 & 0x100) != 0 || (v62 & 1) == 0)
  {
    v156 = 0;
    v94 = [v63 createDirectoryAtURL:v65 withIntermediateDirectories:1 attributes:0 error:&v156];

    v69 = v155;
    v68 = v156;
    if (v94)
    {
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v95;
      (v150)(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
      sub_100106050();
      v96 = v68;
      v97 = v147;
      v98 = v152;
      URL.appending<A>(path:directoryHint:)();
      v99 = sub_10018ED1C();
      v100(v99);

      v102 = v153;
      v101 = v154;
      Data.write(to:options:)();
      v103 = v143;
      if (v102)
      {
        sub_10008E168(v101, v69);
        v89 = *(v145 + 8);
        v89(v97, v103);
        v104 = v98;
        v105 = v103;
LABEL_28:
        v89(v104, v105);
        return;
      }

      v108 = *(v145 + 8);
      v108(v97, v143);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v156 = 0;
  v67 = [v63 URLForDirectory:99 inDomain:1 appropriateForURL:v65 create:1 error:&v156];

  v69 = v155;
  v68 = v156;
  if (!v67)
  {
LABEL_24:
    v106 = v68;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10008E168(v154, v69);
LABEL_25:
    (*(v145 + 8))(v152, v143);
    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v68;

  v141 = @"Configuration.storekit";
  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v71;
  v140 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v150(v10);
  v72 = sub_100106050();
  v73 = v148;
  v147 = v72;
  URL.appending<A>(path:directoryHint:)();
  v74 = sub_10018ED1C();
  v75(v74);

  v76 = [v60 defaultManager];
  URL._bridgeToObjectiveC()(v77);
  v79 = v78;
  v156 = 0;
  v80 = [v76 createDirectoryAtURL:v78 withIntermediateDirectories:0 attributes:0 error:&v156];

  v81 = v156;
  if (!v80)
  {
    v107 = v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v73, v143);
    v91 = v149;
    sub_10018C964();
    v92 = v154;
    v93 = v155;
    goto LABEL_27;
  }

  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v82;
  (v150)(v10, v140, v4);
  v83 = v81;
  v84 = v146;
  URL.appending<A>(path:directoryHint:)();
  v85 = sub_10018ED1C();
  v86(v85);

  v87 = v154;
  v69 = v155;
  v88 = v153;
  Data.write(to:options:)();
  if (v88)
  {
    v89 = *(v145 + 8);
    v90 = v143;
    v89(v84, v143);
    v89(v73, v90);
    v91 = v149;
    sub_10018C964();
    v92 = v87;
    v93 = v69;
LABEL_27:
    sub_10008E168(v92, v93);
    v89(v91, v90);
    v104 = v152;
    v105 = v90;
    goto LABEL_28;
  }

  v153 = 0;
  v129 = *(v145 + 8);
  v103 = v143;
  v150 = (v145 + 8);
  v151 = v129;
  v129(v84, v143);
  v130 = [v60 defaultManager];
  v156 = 46;
  v157 = 0xE100000000000000;
  v131._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v131);

  v132 = v144;
  v133 = v153;
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (v133)
  {
    v134 = v151;
    v151(v148, v103);

    v135 = v149;
    sub_10018C964();
    sub_10008E168(v87, v69);
    v134(v135, v103);
    v134(v152, v103);
    return;
  }

  sub_100146014(v132);
  v137 = v151;
  v151(v148, v103);
  v138 = v149;
  sub_10018C964();
  v137(v138, v103);
  v108 = v137;
LABEL_30:
  v151 = v108;
  v155 = v69;
  v153 = 0;
  v109 = v142;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v110 = type metadata accessor for SKLogger();
  sub_10007EDA4(v110, qword_1003F26C8);
  v156 = 0;
  v157 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  sub_1000C446C();
  v156 = 0xD00000000000001DLL;
  v157 = v111;
  v112 = [v109 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v113._countAndFlagsBits = sub_1000B7EA0();
  String.append(_:)(v113);

  v114 = v156;
  v115 = v157;
  v116 = [v109 logKey];
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v120 = static os_log_type_t.debug.getter();

  v121 = Logger.logObject.getter();

  if (os_log_type_enabled(v121, v120))
  {
    sub_1000B7DC8();
    v122 = swift_slowAlloc();
    sub_1000B7DBC();
    v158 = swift_slowAlloc();
    *v122 = 136446466;
    v156 = 91;
    v157 = 0xE100000000000000;
    v123._countAndFlagsBits = v117;
    v123._object = v119;
    String.append(_:)(v123);
    v124._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v124);
    v125 = v114;
    v126 = sub_100080210(v156, v157, &v158);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2082;
    v127 = sub_100080210(v125, v115, &v158);

    *(v122 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v121, v120, "%{public}s%{public}s", v122, 0x16u);
    swift_arrayDestroy();
    v103 = v143;
    sub_1000B7D68();

    v109 = v142;
    sub_1000B7D68();
  }

  else
  {
  }

  v136 = v151;
  sub_10018CA84(v109);
  sub_10008E168(v154, v155);
  v136(v152, v103);
}

void sub_10018B51C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v90 = a3;
  v91 = a4;
  v92 = a1;
  v93 = a2;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  sub_10018ED2C();
  v13 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v13);
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = v86 - v15;
  v17 = type metadata accessor for URL();
  sub_1000890DC();
  v97 = v18;
  __chkstk_darwin(v19);
  sub_10018ECCC();
  v89 = v20;
  sub_10018ED10();
  __chkstk_darwin(v21);
  sub_10018ED54();
  v98 = v22;
  sub_10018ED10();
  __chkstk_darwin(v23);
  v96 = v86 - v24;
  v94 = *(v11 + 104);
  v94(v7, enum case for URL.DirectoryHint.checkFileSystem(_:), v9);
  sub_10018C804(a5);
  v25 = sub_1000B7EA0();
  v95 = v26;
  v26(v25);
  if (sub_100081D0C(v16, 1, v17) == 1)
  {
    sub_100146014(v16);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v27 = type metadata accessor for SKLogger();
    sub_10007EDA4(v27, qword_1003F26C8);
    sub_10018ED74();

    sub_1000C446C();
    v100 = 0xD00000000000001ELL;
    v101 = v28;
    v29 = [a5 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000B7E40();

    v30._countAndFlagsBits = sub_1000B7EA0();
    String.append(_:)(v30);

    v31 = static os_log_type_t.error.getter();

    v32 = Logger.logObject.getter();

    if (os_log_type_enabled(v32, v31))
    {
      sub_1000B7DC8();
      v33 = swift_slowAlloc();
      sub_1000B7DBC();
      v34 = swift_slowAlloc();
      v100 = v34;
      *v33 = 136446466;
      v36 = sub_100093CF0(v34, v35, &v100);
      v37 = sub_100093BF8(v36);
      v39 = sub_10018EDEC(v37, v38, &v100);

      *(v33 + 14) = v39;
      sub_10017C91C(&_mh_execute_header, v40, v41, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }
  }

  else
  {
    v86[1] = v5;
    v87 = a5;
    v88 = v6;
    (*(v97 + 32))(v96, v16, v17);
    v100 = 0x737465737341;
    v101 = 0xE600000000000000;
    v94(v7, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100106050();
    URL.appending<A>(path:directoryHint:)();
    v42 = sub_1000B7EA0();
    v95(v42);
    v43 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v100 = 0;
    v47 = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v100];

    v48 = v100;
    if (v47)
    {
      v49 = v97;
      v100 = v90;
      v101 = v91;
      v94(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
      v50 = v48;
      v51 = v89;
      v52 = v98;
      URL.appending<A>(path:directoryHint:)();
      v53 = sub_1000B7EA0();
      v95(v53);
      v54 = v88;
      Data.write(to:options:)();
      if (v54)
      {
        v55 = *(v49 + 8);
        v55(v51, v17);
        v55(v52, v17);
        v55(v96, v17);
      }

      else
      {
        v59 = v49 + 8;
        v58 = *(v49 + 8);
        v94 = v17;
        v95 = v58;
        (v58)(v51, v17);
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v60 = type metadata accessor for SKLogger();
        sub_10007EDA4(v60, qword_1003F26C8);
        sub_10018ED74();

        sub_1000C446C();
        v100 = 0xD00000000000001ELL;
        v101 = v61;
        v62 = v87;
        v63 = [v87 bundleID];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        String.append(_:)(v67);
        v68 = v62;

        v69 = [v62 logKey];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = static os_log_type_t.debug.getter();

        v73 = Logger.logObject.getter();

        LODWORD(v93) = v72;
        if (os_log_type_enabled(v73, v72))
        {
          sub_1000B7DC8();
          v74 = swift_slowAlloc();
          v88 = 0;
          v75 = v74;
          sub_1000B7DBC();
          v76 = swift_slowAlloc();
          v97 = v59;
          *v75 = 136446466;
          v99 = v76;
          v100 = 91;
          v101 = 0xE100000000000000;
          v77._countAndFlagsBits = v92;
          v77._object = v71;
          String.append(_:)(v77);
          v78._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v78);
          v79 = sub_100080210(v100, v101, &v99);

          *(v75 + 4) = v79;
          v68 = v87;
          *(v75 + 12) = 2082;
          v82 = sub_10018EDEC(v80, v81, &v99);

          *(v75 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v73, v93, "%{public}s%{public}s", v75, 0x16u);
          swift_arrayDestroy();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        else
        {
        }

        v83 = v96;
        sub_10018CA84(v68);
        v85 = v94;
        v84 = v95;
        (v95)(v98, v94);
        (v84)(v83, v85);
      }
    }

    else
    {
      v56 = v100;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v57 = *(v97 + 8);
      v57(v98, v17);
      v57(v96, v17);
    }
  }
}

uint64_t sub_10018BD78(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10018BD8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_10018BE54;
  v3 = swift_continuation_init();
  sub_10018E53C(v3, v2, v1, &unk_10038D880, sub_10018ECB0, &unk_10038D898);

  return _swift_continuation_await(v0 + 2, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10018BE54()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_10018BF2C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10018BF40()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_10018ECC4;
  v3 = swift_continuation_init();
  sub_10018E53C(v3, v2, v1, &unk_10038D830, sub_10018EC44, &unk_10038D848);

  return _swift_continuation_await(v0 + 2, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10018C168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v43 = a1;
  v44 = a2;
  v47 = a4;
  v4 = type metadata accessor for URL();
  sub_1000890DC();
  v45 = v5;
  __chkstk_darwin(v6);
  sub_100093D40();
  v42 = v8 - v7;
  v9 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  v16 = sub_100080FB4(&unk_1003D0540);
  v17 = sub_1000B01B0(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v40 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v40 - v25;
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  v41 = objc_opt_self();
  v29 = [v41 defaultManager];
  v30 = [v29 sk_octanePersistedDataURL];

  if (v30)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_10018EDD4(v23, v31);
  sub_1000B71B8(v23, v26);
  v32 = sub_100123E24();
  if (sub_100081D0C(v32, v33, v4) == 1)
  {
    sub_100146014(v26);
    v34 = 1;
  }

  else
  {
    v48 = v43;
    v49 = v44;
    (*(v11 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v9);
    sub_100106050();
    URL.appending<A>(path:directoryHint:)();
    (*(v11 + 8))(v15, v9);
    (*(v45 + 8))(v26, v4);
    v34 = 0;
  }

  sub_10018EDD4(v28, v34);
  if (v46)
  {
    sub_10012A7F8(v28, v20);
    if (sub_100081D0C(v20, 1, v4) == 1)
    {
      sub_100146014(v20);
    }

    else
    {
      v35 = v45;
      v36 = v42;
      (*(v45 + 32))(v42, v20, v4);
      v37 = [v41 defaultManager];
      v38 = sub_10024EC2C();

      (*(v35 + 8))(v36, v4);
      if ((v38 & 0x100) == 0 || (v38 & 1) == 0)
      {
        sub_100146014(v28);
        return sub_10018EDD4(v47, 1);
      }
    }
  }

  return sub_1000B71B8(v28, v47);
}

uint64_t sub_10018C63C(void *a1, int a2)
{
  v3 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v4 = sub_1000B7EA0();
  sub_10018C168(v4, v5, a2, v6);
}

uint64_t sub_10018C6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_10018ED2C();
  sub_10018C168(a1, a2, 0, v3);
  v9 = type metadata accessor for URL();
  if (sub_100081D0C(v3, 1, v9) == 1)
  {
    sub_100146014(v3);
    v10 = 1;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100106050();
    URL.appending<A>(component:directoryHint:)();

    (*(*(v9 - 8) + 8))(v3, v9);
    v10 = 0;
  }

  return sub_10018EDD4(a3, v10);
}

uint64_t sub_10018C804(void *a1)
{
  v1 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B7E40();

  v2 = sub_1000B7EA0();
  sub_10018C6B8(v2, v3, v4);
}

uint64_t sub_10018C880(void *a1)
{
  sub_10008E5A4(0, &qword_1003D2100);
  v2 = [a1 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1001E0FC0(v3, v5, 0);
  v8 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = [v6 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_10018C964()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10018CA84(void *a1)
{
  v3 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_10018ED2C();
  sub_10018C63C(a1, 1);
  if (sub_100081D0C(v6, 1, v7) == 1)
  {
    return sub_100146014(v6);
  }

  v12 = sub_1000B7EA0();
  v13(v12);
  v14 = [swift_getObjCClassFromMetadata() sharedInstance];
  URL.path(percentEncoded:)(0);
  v15 = String._bridgeToObjectiveC()();

  v16 = [a1 bundleID];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 useConfigurationDirectory:v15 forBundleID:v16];

  return (*(v9 + 8))(v1, v7);
}

uint64_t sub_10018CE4C(void *a1)
{
  v4 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_10018ED60();
  v6 = type metadata accessor for URL();
  sub_1000890DC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100093D40();
  sub_10018ED2C();
  sub_10018C63C(a1, 1);
  v10 = sub_100123E24();
  if (sub_100081D0C(v10, v11, v6) == 1)
  {
    sub_100146014(v1);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v12 = type metadata accessor for SKLogger();
    sub_10007EDA4(v12, qword_1003F26C8);
    sub_10017C960();
    _StringGuts.grow(_:)(31);

    sub_1000C446C();
    v94 = v13;
    v14 = [a1 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19 = v94;
    v20 = [a1 logKey];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_1000B7DC8();
      v26 = swift_slowAlloc();
      sub_1000B7DBC();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      sub_10018ECE0(v27);
      v28._countAndFlagsBits = v21;
      v28._object = v23;
      String.append(_:)(v28);
      v29._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v29);
      v30 = sub_10018ED38();

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = sub_100080210(0xD00000000000001DLL, v19, &v95);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      sub_100098BC0();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v2, v1, v6);
    v32 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v93 = 0;
    v36 = [v32 removeItemAtURL:v34 error:&v93];

    if (v36)
    {
      v37 = qword_1003CBE58;
      v38 = v93;
      if (v37 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v39 = type metadata accessor for SKLogger();
      sub_10007EDA4(v39, qword_1003F26C8);
      sub_10017C960();
      _StringGuts.grow(_:)(26);

      sub_1000C446C();
      v93 = 0xD000000000000018;
      v94 = v40;
      v41 = &selRef__appDidLaunch_;
      v42 = [a1 bundleID];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      String.append(_:)(v46);

      v47 = v94;
      v89 = v93;
      v48 = [a1 logKey];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = static os_log_type_t.debug.getter();

      v52 = Logger.logObject.getter();

      v88 = v51;
      if (os_log_type_enabled(v52, v51))
      {
        sub_1000B7DC8();
        v91 = v8;
        v53 = swift_slowAlloc();
        sub_1000B7DBC();
        v54 = swift_slowAlloc();
        *v53 = 136446466;
        sub_10018ECE0(v54);
        v55._countAndFlagsBits = v87;
        v55._object = v50;
        String.append(_:)(v55);
        v56._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v56);
        v57 = v2;
        v58 = sub_10018ED38();

        *(v53 + 4) = v58;
        v2 = v57;
        *(v53 + 12) = 2082;
        v59 = sub_100080210(v89, v47, &v95);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v52, v88, "%{public}s%{public}s", v53, 0x16u);
        sub_100098BC0();
        v41 = &selRef__appDidLaunch_;
        sub_1000B7D68();

        v8 = v91;
        sub_1000B7D68();
      }

      else
      {
      }

      v85 = [objc_opt_self() shared];
      v86 = [a1 v41[318]];
      if (!v86)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = String._bridgeToObjectiveC()();
      }

      [v85 appRemovedWithBundleID:v86];

      return (*(v8 + 8))(v2, v6);
    }

    else
    {
      v90 = v2;
      v92 = v8;
      v61 = v93;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v63 = type metadata accessor for SKLogger();
      sub_10007EDA4(v63, qword_1003F26C8);
      sub_10017C960();
      _StringGuts.grow(_:)(37);
      v64._countAndFlagsBits = 0xD00000000000001FLL;
      v64._object = 0x800000010031B500;
      String.append(_:)(v64);
      v65 = [a1 bundleID];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 8250;
      v70._object = 0xE200000000000000;
      String.append(_:)(v70);
      v95 = v62;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v72 = v93;
      v71 = v94;
      v73 = [a1 logKey];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = static os_log_type_t.error.getter();

      v78 = Logger.logObject.getter();

      if (os_log_type_enabled(v78, v77))
      {
        sub_1000B7DC8();
        v79 = swift_slowAlloc();
        sub_1000B7DBC();
        v80 = swift_slowAlloc();
        *v79 = 136446466;
        sub_10018ECE0(v80);
        v81._countAndFlagsBits = v74;
        v81._object = v76;
        String.append(_:)(v81);
        v82._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v82);
        v83 = sub_10018ED38();

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v84 = sub_100080210(v72, v71, &v95);

        *(v79 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v78, v77, "%{public}s%{public}s", v79, 0x16u);
        sub_100098BC0();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      return (*(v92 + 8))(v90, v6);
    }
  }
}

void (*sub_10018D784(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = type metadata accessor for URL.DirectoryHint();
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100093D40();
  v11 = v10 - v9;
  v12 = sub_100080FB4(&unk_1003D0540);
  sub_1000B01B0(v12);
  sub_100089118();
  __chkstk_darwin(v13);
  sub_10018ED60();
  v14 = type metadata accessor for URL();
  sub_1000890DC();
  v75 = v15;
  __chkstk_darwin(v16);
  sub_10018ECCC();
  v71 = v17;
  sub_10018ED10();
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v70 = *(v7 + 104);
  v70(v11, enum case for URL.DirectoryHint.checkFileSystem(_:), v5);
  v73 = a1;
  v74 = a2;
  sub_10018C6B8(a1, a2, v2);
  v21 = *(v7 + 8);
  v21(v11, v5);
  v22 = sub_100123E24();
  if (sub_100081D0C(v22, v23, v14) == 1)
  {
    sub_100146014(v2);
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v24 = type metadata accessor for SKLogger();
    sub_10007EDA4(v24, qword_1003F26C8);
    sub_10018ED94();

    sub_1000C446C();
    sub_10018EDB4(v25);
    v21 = static os_log_type_t.error.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v21))
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v27 = 136446466;
      v30 = sub_100093CF0(v28, v29, &v76);
      v31 = sub_100093BF8(v30);
      v33 = sub_10018EDEC(v31, v32, &v76);

      *(v27 + 14) = v33;
      sub_10017C91C(&_mh_execute_header, v34, v35, "%{public}s%{public}s");
      sub_1000B0010();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    type metadata accessor for ASDError(0);
    v78 = 513;
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_10018ECF8();
    sub_10018EC68(v41, v42);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v36 = *(v75 + 32);
    v69 = v14;
    v36(v20, v2, v14);
    v37 = [objc_opt_self() defaultManager];
    v38 = sub_10024EC2C();

    if (v38)
    {
      if ((v38 & 0x100) != 0)
      {
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v53;
        v70(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
        sub_100106050();
        v54 = v71;
        URL.appending<A>(path:directoryHint:)();
        v21(v11, v5);

        v55 = v72;
        v56 = Data.init(contentsOf:options:)();
        if (v55)
        {
          v21 = (v75 + 8);
          v57 = *(v75 + 8);
          v58 = v54;
          v59 = v69;
          v57(v58, v69);
          v57(v20, v59);
        }

        else
        {
          v21 = v56;
          v65 = *(v75 + 8);
          v66 = v54;
          v67 = v69;
          v65(v66, v69);
          v65(v20, v67);
        }
      }

      else
      {
        v39 = v72;
        v40 = Data.init(contentsOf:options:)();
        if (!v39)
        {
          v21 = v40;
        }

        (*(v75 + 8))(v20, v69);
      }
    }

    else
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v43 = type metadata accessor for SKLogger();
      sub_10007EDA4(v43, qword_1003F26C8);
      sub_10018ED94();

      sub_1000C446C();
      sub_10018EDB4(v44);
      v46 = v76;
      v45 = v77;
      v47 = static os_log_type_t.error.getter();

      v48 = Logger.logObject.getter();

      if (os_log_type_enabled(v48, v47))
      {
        sub_1000B7DC8();
        v49 = swift_slowAlloc();
        sub_1000B7DBC();
        v50 = swift_slowAlloc();
        v76 = v50;
        *v49 = 136446466;
        *(v49 + 4) = sub_100093CF0(v50, v51, &v76);
        *(v49 + 12) = 2082;
        v52 = sub_100080210(v46, v45, &v76);

        *(v49 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v48, v47, "%{public}s%{public}s", v49, 0x16u);
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      v60 = v69;
      v61 = v75;
      type metadata accessor for ASDError(0);
      v78 = 513;
      v21 = sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_10018ECF8();
      sub_10018EC68(v62, v63);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      (*(v61 + 8))(v20, v60);
    }
  }

  return v21;
}

uint64_t sub_10018DF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = objc_allocWithZone(LSApplicationRecord);
      swift_bridgeObjectRetain_n();
      v6 = sub_1001B3728(v4, v3, 0);
      if ([v6 isAppStoreVendable] & 1) != 0 || (objc_msgSend(v6, "isBeta"))
      {
        v28 = v1;
        sub_10008E5A4(0, &qword_1003CD2E8);

        v7 = sub_1002353A8();
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for SKLogger();
        sub_10007EDA4(v8, qword_1003F26C8);
        v30 = 0;
        v31 = 0xE000000000000000;
        _StringGuts.grow(_:)(76);
        v9._object = 0x800000010031B540;
        v9._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v9);
        v10._countAndFlagsBits = v4;
        v10._object = v3;
        String.append(_:)(v10);

        v11._countAndFlagsBits = 0xD000000000000031;
        v11._object = 0x800000010031B5C0;
        String.append(_:)(v11);
        v12 = v31;
        v26 = v30;
        v27 = v7;
        v13 = [v7 logKey];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = static os_log_type_t.debug.getter();

        v18 = Logger.logObject.getter();

        if (os_log_type_enabled(v18, v17))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 136446466;
          v29 = v20;
          v30 = 91;
          v31 = 0xE100000000000000;
          v21._countAndFlagsBits = v14;
          v21._object = v16;
          String.append(_:)(v21);
          v22._countAndFlagsBits = 8285;
          v22._object = 0xE200000000000000;
          String.append(_:)(v22);
          v23 = sub_100080210(v30, v31, &v29);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2082;
          v24 = sub_100080210(v26, v12, &v29);

          *(v19 + 14) = v24;
          _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v1 = v28;
        sub_10018CE4C(v27);
      }

      else
      {
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_10018E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000890DC();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100093D40();
  sub_10018ED2C();
  v32 = type metadata accessor for DispatchQoS();
  sub_1000890DC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100093D40();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  sub_1000890DC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100093D40();
  v23 = v22 - v21;
  sub_10008E5A4(0, &qword_1003CF258);
  (*(v19 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v23, v17);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a1;
  aBlock[4] = a5;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = a6;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10018EC68(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10008E34C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v33 + 8))(v6, v8);
  (*(v12 + 8))(v16, v32);
}

uint64_t sub_10018E880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10008E5A4(0, &qword_1003CD2E8);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_bridgeObjectRetain_n();
      v6 = sub_1002353A8();
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for SKLogger();
      sub_10007EDA4(v7, qword_1003F26C8);
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v8._object = 0x800000010031B540;
      v8._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v5;
      v9._object = v4;
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0xD000000000000020;
      v10._object = 0x800000010031B560;
      String.append(_:)(v10);
      v11 = v28;
      v12 = v29;
      v26 = v6;
      v13 = [v6 logKey];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = static os_log_type_t.debug.getter();

      v18 = Logger.logObject.getter();

      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 136446466;
        v27 = v20;
        v28 = 91;
        v29 = 0xE100000000000000;
        v21._countAndFlagsBits = v14;
        v21._object = v16;
        String.append(_:)(v21);
        v22._countAndFlagsBits = 8285;
        v22._object = 0xE200000000000000;
        String.append(_:)(v22);
        v23 = sub_100080210(v28, v29, &v27);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        v24 = sub_100080210(v11, v12, &v27);

        *(v19 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_10018CE4C(v26);

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_10018EC0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018EC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018EC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018ECE0(uint64_t result)
{
  *(v1 - 112) = 91;
  *(v1 - 104) = 0xE100000000000000;
  *(v1 - 96) = result;
  return result;
}

unint64_t sub_10018ED38()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_100080210(v2, v3, (v0 - 96));
}

void sub_10018ED74()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(32);
}

void sub_10018ED94()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
}

void sub_10018EDB4(uint64_t a1@<X8>)
{
  *(v1 - 96) = 0xD000000000000022;
  *(v1 - 88) = a1;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);

  String.append(_:)(*&v3);
}

uint64_t sub_10018EDD4(uint64_t a1, uint64_t a2)
{

  return sub_100081DFC(a1, a2, 1, v2);
}

unint64_t sub_10018EDEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080210(v4, v3, a3);
}

void *sub_10018EE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100213394(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100213394((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10008B5D0(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_10018EF2C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_100213394(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      sub_10008E5A4(0, a2);
      swift_dynamicCast();
      v12 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100213394((v9 > 1), v10 + 1, 1);
        v5 = v12;
      }

      ++v7;
      v5[2] = v10 + 1;
      sub_10008B5D0(&v11, &v5[4 * v10 + 4]);
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_10018F08C()
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingAllPredicates:isa];

  return v1;
}

id sub_10018F1A4(void (*a1)(void))
{
  a1(0);
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 userDatabase];

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase:v2];
  return v3;
}

void *sub_10018F244()
{
  sub_100080FB4(&qword_1003D0A78);
  swift_allocObject();
  return sub_100191C78();
}

uint64_t sub_10018F288()
{
  sub_100098BB4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 368) = v9;
  *(v0 + 376) = v16;
  *(v0 + 352) = v10;
  *(v0 + 360) = v11;
  *(v0 + 500) = v3;
  *(v0 + 336) = v5;
  *(v0 + 344) = v1;
  *(v0 + 320) = v12;
  *(v0 + 328) = v7;
  v13 = swift_task_alloc();
  *(v0 + 384) = v13;
  *v13 = v0;
  v13[1] = sub_10018F354;

  return sub_100193034(v4, v2, v8, v6);
}

uint64_t sub_10018F354()
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
  *(v5 + 501) = v3;

  if (v0)
  {
    **(v5 + 376) = v3;
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_10018FEBC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100190710()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100190818()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 216), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_100190880()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10019098C()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 176), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_1001909F4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100190AFC()
{
  sub_10008BE9C();
  sub_1000F2C78((v0 + 136), v0 + 96);
  sub_1000F2C78((v0 + 96), *(v0 + 320));
  sub_100098AA4();

  return v1();
}

uint64_t sub_1001914BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 368) = a4;
  *(v5 + 376) = a5;
  *(v5 + 424) = a2;
  *(v5 + 352) = a1;
  *(v5 + 360) = a3;
  return sub_1000AFCB8();
}

uint64_t sub_1001918EC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001919E8()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

void *sub_100191C78()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v0[14] = 0xD00000000000002BLL;
  v0[15] = 0x800000010031B7F0;
  sub_10008E5A4(0, &qword_1003D0A80);
  v0[16] = sub_100191E50(0xD00000000000002BLL, 0x800000010031B7F0, 2);
  v2 = [objc_opt_self() defaultCenter];
  v3 = objc_opt_self();

  v4 = [v3 currentQueue];
  v5 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_10019BBE0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001927B8;
  v9[3] = &unk_10038D910;
  v6 = _Block_copy(v9);

  v7 = [v2 addObserverForName:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v1 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v1;
}

id sub_100191E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

uint64_t sub_100191ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_100081DFC(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a2;
  (*(v5 + 32))(&v12[v11], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_100165F40();
}

uint64_t sub_100192088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1001920A8, 0, 0);
}

uint64_t sub_1001920A8()
{
  sub_10008BE9C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100192190;
    v3 = sub_1000B06F4(v0[6]);

    return sub_100192290(v3);
  }

  else
  {
    sub_10009F198();

    return v5(1);
  }
}

uint64_t sub_100192190()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = v1;
  sub_1000AFE64();
  *v3 = v2;
  v4 = *v0;
  sub_100098AB4();
  *v5 = v4;

  sub_10009F198();

  return v6();
}

uint64_t sub_100192290(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1001922B0, v1, 0);
}

uint64_t sub_1001922B0()
{
  v66 = v0;
  Notification.object.getter();
  if (!*(v0 + 40))
  {
    sub_10013B1E8(v0 + 16, &unk_1003CCB70);
    goto LABEL_6;
  }

  sub_10008E5A4(0, &qword_1003D0A80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 56);
    if (*(*(v0 + 112) + 128) != v1)
    {

      goto LABEL_6;
    }

    v20 = Notification.userInfo.getter();
    if (v20)
    {
      v21 = v20;
      *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 96) = v22;
      AnyHashable.init<A>(_:)();
      sub_1001DAA40(v0 + 16, v21, (v0 + 56));

      sub_10008E550(v0 + 16);
      if (*(v0 + 80))
      {
        if (swift_dynamicCast())
        {
          v23 = sub_1001781D0(*(v0 + 16));
          if (v23 == 5)
          {
            v24 = 4;
          }

          else
          {
            v24 = v23;
          }

          if (qword_1003CBE58 != -1)
          {
            sub_100081C08();
          }

          v25 = *(v0 + 112);
          v26 = type metadata accessor for SKLogger();
          v27 = sub_10007EDA4(v26, qword_1003F26C8);
          v65[0] = 0;
          v65[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(37);
          *(v0 + 16) = 0;
          *(v0 + 24) = 0xE000000000000000;
          v28._countAndFlagsBits = 0x74732064756F6C43;
          v28._object = 0xEC0000002065726FLL;
          String.append(_:)(v28);
          String.append(_:)(v25[7]);
          sub_1000B00A8();
          v29._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v29);
          *(v0 + 56) = v24;
          _print_unlocked<A, B>(_:_:)();
          v31 = *(v0 + 16);
          v30 = *(v0 + 24);
          v32 = static os_log_type_t.debug.getter();

          v4 = Logger.logObject.getter();

          if (!os_log_type_enabled(v4, v32))
          {

            goto LABEL_27;
          }

          sub_10008E688();
          v33 = sub_10019DB8C();
          v65[0] = v33;
          *v27 = 136446466;
          *(v27 + 4) = sub_10019DF88(v33, v34, v35, v36, v37, v38, v39, v40, v65[0]);
          *(v27 + 12) = 2082;
          v41 = sub_100080210(v31, v30, v65);

          *(v27 + 14) = v41;
          sub_10019E03C();
          _os_log_impl(v42, v43, v44, v45, v27, 0x16u);
          swift_arrayDestroy();
          sub_1000AFF34();
LABEL_26:
          sub_100081C28();
LABEL_27:

          goto LABEL_28;
        }

LABEL_22:
        if (qword_1003CBE58 != -1)
        {
          sub_100081C08();
        }

        v46 = type metadata accessor for SKLogger();
        sub_100107C34(v46, qword_1003F26C8);
        v47 = static os_log_type_t.error.getter();
        v4 = Logger.logObject.getter();
        if (!os_log_type_enabled(v4, v47))
        {
          goto LABEL_27;
        }

        v48 = sub_10008E688();
        v49 = sub_10008E670();
        v65[0] = v49;
        *v48 = 136446466;
        v57 = sub_10019DF88(v49, v50, v51, v52, v53, v54, v55, v56, v65[0]);
        sub_10019DF4C(v57);
        *(v48 + 14) = sub_100080210(v58 + 29, 0x800000010031B890, v65);
        sub_10019E03C();
        _os_log_impl(v59, v60, v61, v62, v48, 0x16u);
        swift_arrayDestroy();
        sub_1000D3E6C();
        goto LABEL_26;
      }
    }

    else
    {
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    sub_10013B1E8(v0 + 56, &unk_1003CCB70);
    goto LABEL_22;
  }

LABEL_6:
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = type metadata accessor for SKLogger();
  sub_100107C34(v2, qword_1003F26C8);
  v3 = static os_log_type_t.debug.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = sub_10008E688();
    v6 = sub_10008E670();
    v65[0] = v6;
    *v5 = 136446466;
    v14 = sub_10019DF88(v6, v7, v8, v9, v10, v11, v12, v13, v65[0]);
    sub_10019DF4C(v14);
    *(v5 + 14) = sub_100080210(v15 + 46, 0x800000010031B840, v65);
    sub_10019E03C();
    _os_log_impl(v16, v17, v18, v19, v5, 0x16u);
    swift_arrayDestroy();
    sub_1000D3E6C();
    sub_100081C28();
  }

LABEL_28:

  sub_100098AC4();

  return v63();
}

uint64_t sub_1001927B8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001928AC()
{
  v2 = *(v0 + 128);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 dataForKey:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100080FB4(&qword_1003D0A50);
  sub_10019BAB8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger();
    sub_10007EDA4(v8, qword_1003F26C8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v9._object = 0x80000001003166F0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD000000000000033;
    v10._object = 0x800000010031B7B0;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100080210(0, 0xE000000000000000, v17);
      *(v14 + 12) = 2082;
      v15 = sub_100080210(0, 0xE000000000000000, v17);

      *(v14 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_willThrow();
    return sub_10008E168(v5, v7);
  }

  else
  {
    sub_10008E168(v5, v7);

    return v17[3];
  }
}

uint64_t sub_100192C0C(uint64_t a1)
{
  v20[3] = a1;
  v3 = v1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100080FB4(&qword_1003D0A50);
  sub_10019BA10();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    sub_10007EDA4(v6, qword_1003F26C8);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v7._object = 0x800000010031B790;
    v7._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 0xD000000000000033;
    v8._object = 0x800000010031B7B0;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v10 = static os_log_type_t.error.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, v20);
      *(v12 + 12) = 2082;
      v13 = sub_100080210(0, 0xE000000000000000, v20);

      *(v12 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  else
  {
    v14 = v4;
    v15 = v5;

    v16 = *(v3 + 128);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = String._bridgeToObjectiveC()();
    [v16 setData:isa forKey:v18];

    return sub_10008E168(v14, v15);
  }
}

uint64_t sub_100192F44()
{
  sub_100080FB4(&qword_1003D0A48);
  swift_allocObject();
  result = sub_10019B74C(sub_10018F174, 0, &swift_unknownObjectWeakInit);
  qword_1003D0980 = result;
  return result;
}

uint64_t sub_100192FBC()
{
  sub_100080FB4(&qword_1003D0A70);
  swift_allocObject();
  result = sub_10019B74C(sub_10019BBA4, 0, &_swift_weakInit);
  qword_1003D0988 = result;
  return result;
}

uint64_t sub_100193034(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = a4;
  *(v4 + 160) = a2;
  *(v4 + 153) = a1;
  return _swift_task_switch(sub_10019305C, 0, 0);
}

uint64_t sub_10019305C()
{
  sub_1000B0004();
  switch(*(v0 + 153))
  {
    case 3:
    case 4:
      v1 = sub_1001A7AB4(0);
      if (qword_1003CBF88 != -1)
      {
        swift_once();
      }

      v2 = [v1 arrayForKey:qword_1003F27F0];
      *(v0 + 184) = v2;
      swift_unknownObjectRelease();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_100193240;
      swift_continuation_init();
      v3 = sub_100080FB4(&qword_1003CE620);
      sub_10008BD44(v3);
      *(v0 + 88) = 1107296256;
      sub_10019DC40();
      [v2 valueWithCompletion:v0 + 80];

      result = _swift_continuation_await(v0 + 16, v4, v5, v6, v7, v8, v9, v10);
      break;
    default:
      sub_10009F198();

      result = v11();
      break;
  }

  return result;
}

uint64_t sub_100193240()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100193340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000B0250();
  a21 = v23;
  a22 = v24;
  sub_1000B016C();
  a20 = v22;
  v25 = *(v22 + 184);
  v26 = *(v22 + 144);

  a10 = 0;
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v27 = a10;
  if (a10)
  {
    v28 = *(v22 + 176);
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = 0xE800000000000000;
        v30 = 0x54554F5F4B4E494CLL;
      }

      else
      {
        v30 = *(v22 + 168);
        v29 = *(v22 + 176);
      }
    }

    else
    {
      v29 = 0xE600000000000000;
      v30 = 0x5050415F4E49;
    }

    *(v22 + 80) = v30;
    *(v22 + 88) = v29;
    v43 = swift_task_alloc();
    *(v43 + 16) = v22 + 80;
    v44 = sub_10017CB1C();
    sub_10019C694(v44, v45);
    sub_100178848(sub_1001060A4, v43, v27);

    sub_10009F198();
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v31 = type metadata accessor for SKLogger();
    v32 = sub_10007EDA4(v31, qword_1003F26C8);
    sub_1000AFE34();
    _StringGuts.grow(_:)(54);
    sub_1000B00A8();
    v33._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v33);
    v34 = [v26 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v40 = a10;
    v39 = a11;
    v41 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_1000B047C();
    if (os_log_type_enabled(v32, v41))
    {
      sub_10008E688();
      a10 = sub_100143E48();
      *v32 = 136446466;
      *(v32 + 4) = sub_100080210(0, 0xE000000000000000, &a10);
      sub_1000B04AC();
      v42 = sub_100080210(v40, v39, &a10);

      *(v32 + 14) = v42;
      sub_1000B0648(&_mh_execute_header, v32, v41, "%{public}s%{public}s");
      sub_10008BF74();
      sub_10008BF90();
      sub_1000AFF34();
    }

    else
    {
    }

    *(v22 + 80) = 10;
    sub_10008B5E0();
    swift_willThrowTypedImpl();

    sub_10009F198();
  }

  sub_1000B0178();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100193628()
{
  v18 = v0;
  v1 = v0[23];
  swift_willThrow();

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v2 = v0[24];
  v3 = type metadata accessor for SKLogger();
  v4 = sub_10007EDA4(v3, qword_1003F26C8);
  sub_1000AFE34();
  _StringGuts.grow(_:)(48);
  v5 = v17[1];
  v0[10] = v17[0];
  v0[11] = v5;
  sub_1000B00A8();
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v6);
  v0[18] = v2;
  sub_100080FB4(&qword_1003CCCB0);
  sub_10019DFD0();
  _print_unlocked<A, B>(_:_:)();
  v8 = v0[10];
  v7 = v0[11];
  LOBYTE(v2) = static os_log_type_t.error.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v2))
  {
    sub_10008E688();
    v17[0] = sub_10019DB8C();
    *v4 = 136446466;
    *(v4 + 4) = sub_100080210(0, 0xE000000000000000, v17);
    *(v4 + 12) = 2082;
    v10 = sub_100080210(v8, v7, v17);

    *(v4 + 14) = v10;
    sub_10019E03C();
    _os_log_impl(v11, v12, v13, v14, v4, 0x16u);
    swift_arrayDestroy();
    sub_1000AFF34();
    sub_1000D3E6C();
  }

  else
  {
  }

  *(v0 + 80) = 10;
  sub_10008B5E0();
  swift_willThrowTypedImpl();

  sub_10009F198();

  return v15(10);
}

uint64_t sub_100193854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  return _swift_task_switch(sub_100193878, 0, 0);
}

uint64_t sub_100193878()
{
  sub_1000B0004();
  v0[23] = Dictionary.init(dictionaryLiteral:)();
  if (qword_1003CC0C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F2930;
  v2 = qword_1003CBEB8;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v0[24] = qword_1003F2720;
  v3 = [v1 arrayForKey:?];
  v0[25] = v3;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100193A38;
  swift_continuation_init();
  v4 = sub_100080FB4(&qword_1003CE620);
  sub_10008BD44(v4);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v3 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
}