uint64_t sub_10007FEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1000805FC;
  }

  else
  {
    v3 = sub_100080008;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100080008()
{
  v46 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = String.init(_:)(v4);
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(*(v0 + 176), &qword_10016BA40, &qword_100110FC0);
    p_ivar_lyt = &PINViewModel.ivar_lyt;
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100182048);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v45);
      *(v10 + 12) = 2080;
      v11 = sub_100006B44(v5._countAndFlagsBits, v5._object, v45);

      *(v10 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s - Unable to construct Jetpack URL from %s", v10, 0x16u);
      swift_arrayDestroy();
      p_ivar_lyt = (&PINViewModel + 16);
    }

    else
    {
    }

    sub_100080DE4();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    if (p_ivar_lyt[460] != -1)
    {
      swift_once();
    }

    sub_100006B0C(v7, qword_100182048);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v45);
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v36;
      *v34 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s Problem creating the Jetpack URL from the Bag%@", v33, 0x16u);
      sub_100009908(v34, &unk_100169C20, &unk_10010D6B0);

      sub_1000052E4(v35);
    }

    v37 = *(v0 + 232);
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 208);
    v43 = *(v0 + 176);
    v42 = *(v0 + 184);

    v29 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);

    v16 = *(v14 + 32);
    v16(v12, v15, v13);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182048);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 232);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v45);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - Using JETPACK - Production", v22, 0xCu);
      sub_1000052E4(v23);
    }

    v16(*(v0 + 160), *(v0 + 216), *(v0 + 192));
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 208);
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_1000805FC()
{
  v20 = v0;
  v1 = v0[30];
  swift_willThrow();
  v2 = v0[30];
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182048);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, &v19);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Problem creating the Jetpack URL from the Bag%@", v6, 0x16u);
    sub_100009908(v7, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v8);
  }

  v10 = v0[29];
  sub_100080DE4();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v16 = v0[22];
  v15 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100080858(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000524C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_100080938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C61636F4CLL;
  if (v2 != 1)
  {
    v4 = 0x676E6967617453;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685025360;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C61636F4CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E6967617453;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685025360;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int sub_100080A2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100080AC4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100080B48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100080BDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080E50(*a1);
  *a2 = result;
  return result;
}

void sub_100080C0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C61636F4CLL;
  if (v2 != 1)
  {
    v5 = 0x676E6967617453;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685025360;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100080C60@<X0>(uint64_t a1@<X8>)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  v4 = &enum case for JetPackSigningPolicy.required(_:);
  if (has_internal_ui)
  {
    v5 = type metadata accessor for TetsuoJetpackInfo();
    if (*(v1 + *(v5 + 20)) && *(v1 + *(v5 + 20)) == 1)
    {

      v4 = &enum case for JetPackSigningPolicy.ignoreMissingButValidateIfProvided(_:);
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        v4 = &enum case for JetPackSigningPolicy.ignoreMissingButValidateIfProvided(_:);
      }
    }
  }

  v7 = *v4;
  v8 = type metadata accessor for JetPackSigningPolicy();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

uint64_t type metadata accessor for TetsuoJetpackInfo()
{
  result = qword_10016E230;
  if (!qword_10016E230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100080DE4()
{
  result = qword_10016E1C8;
  if (!qword_10016E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E1C8);
  }

  return result;
}

unint64_t sub_100080E50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159BE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100080F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100081044()
{
  result = type metadata accessor for Bag();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000810CC()
{
  result = qword_10016E268;
  if (!qword_10016E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E268);
  }

  return result;
}

unint64_t sub_100081124()
{
  result = qword_10016E270;
  if (!qword_10016E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E270);
  }

  return result;
}

id sub_1000814F0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = v0[7];
    URL._bridgeToObjectiveC()(v2);
    v6 = v5;
    sub_10000B7F4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 openSensitiveURL:v6 withOptions:isa];

    sub_10004F388(0);
    v0[5] = &_s20TetsuoAnalyticsEventON;
    v0[6] = sub_1000250D8();
    *(v0 + 16) = 8;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    sub_1000052E4(v0 + 2);
    v8 = v0[1];

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100081630()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_100081178(v13);
  URL.init(string:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100045318(v7);
    if (qword_100168E50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100182018);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "tried to open a url but destination url is nil", v19, 2u);
    }
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v15, v7, v8);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    (*(v9 + 16))(v12, v15, v8);
    v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v20((v23 + v22), v12, v8);
    sub_1000EE5F8(0, 0, v3, &unk_100114EF8, v23);

    (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_1000819A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100081A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_1000814D0(a1, v6, v7, v1 + v5);
}

uint64_t type metadata accessor for ExternalLinkCoordinator.ExternalDestination()
{
  result = qword_10016E2F0;
  if (!qword_10016E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100081BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100081C0C()
{
  result = qword_10016E278;
  if (!qword_10016E278)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E278);
  }

  return result;
}

uint64_t sub_100081C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100081D04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100081D94()
{
  sub_100081DEC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100081DEC()
{
  if (!qword_10016E300)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E300);
    }
  }
}

uint64_t sub_100081E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100081F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TVStoreExtensionView()
{
  result = qword_10016E380;
  if (!qword_10016E380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082034()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1000820B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000820B8()
{
  if (!qword_10016E390)
  {
    sub_10000459C(&unk_10016E398, &qword_100117BA0);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E390);
    }
  }
}

void sub_100082150(uint64_t a1, uint64_t a2)
{
  _convertErrorToNSError(_:)();
  v3 = (a2 + *(type metadata accessor for TVStoreExtensionView() + 20));
  v4 = *v3;
  v5 = *(v3 + 2);
  v13 = v4;
  v14 = v5;
  sub_100002BE4(&qword_10016E3D8, &qword_100115028);
  Binding.wrappedValue.setter();
  if (qword_100168EB8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100182150);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *&v13 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100006B44(0xD000000000000014, 0x8000000100114F20, &v13);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_100006B44(v10, v11, &v13);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Error launching TV app extension: %s", v9, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100082348(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000823B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = objc_opt_self();
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  sub_1000826C8(v2, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100082828(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  aBlock[4] = sub_10008288C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100082348;
  aBlock[3] = &unk_10015D458;
  v11 = _Block_copy(aBlock);

  v12 = [v5 createTVAppExtensionViewControllerWithURL:v8 completionBlock:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_100082540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082684(&qword_10016E3D0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000825C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082684(&qword_10016E3D0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100082640()
{
  sub_100082684(&qword_10016E3D0);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100082684(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVStoreExtensionView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000826C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVStoreExtensionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008272C()
{
  v1 = (type metadata accessor for TVStoreExtensionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *v6;

  v8 = *(v6 + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100082828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVStoreExtensionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10008288C(uint64_t a1)
{
  v3 = *(type metadata accessor for TVStoreExtensionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100082150(a1, v4);
}

uint64_t sub_1000828FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082928(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for MetricsPipeline();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_100082B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for MetricsPipeline();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for TVPageView()
{
  result = qword_10016E440;
  if (!qword_10016E440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082D38()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsPipeline();
    if (v1 <= 0x3F)
    {
      sub_100082E6C(319, &qword_10016A6F0, &qword_10016A6F8, &unk_10010F740);
      if (v2 <= 0x3F)
      {
        sub_100082E6C(319, &qword_10016E450, &unk_10016E398, &qword_100117BA0);
        if (v3 <= 0x3F)
        {
          sub_100082E6C(319, &unk_10016E458, &qword_10016B420, &qword_100110790);
          if (v4 <= 0x3F)
          {
            sub_100082EC0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100082E6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100082EC0()
{
  if (!qword_10016AF30)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016AF30);
    }
  }
}

uint64_t sub_100082F34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016A568, &unk_10010F530);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TVPageView();
  sub_10000C178(v1 + *(v12 + 40), v11, &qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DismissAction();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10008313C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for TVPageView();
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for TVStoreExtensionView();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002BE4(&qword_10016E4A0, &qword_1001150A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 16))(v9, v2, v14);
  v15 = (v2 + *(v4 + 40));
  v16 = *v15;
  v33 = v15[1];
  v34 = v16;
  v39 = v16;
  v40 = v33;
  v32 = sub_100002BE4(&qword_10016E4A8, &unk_1001150B0);
  State.projectedValue.getter();
  v17 = v38;
  v18 = &v9[*(v6 + 20)];
  *v18 = v37;
  *(v18 + 2) = v17;
  sub_100002BE4(&qword_10016D6B0, &qword_100113AB0);
  v19 = *(type metadata accessor for ToolbarPlacement() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10010D3B0;
  static ToolbarPlacement.navigationBar.getter();
  sub_1000841BC(&qword_10016E3C8, type metadata accessor for TVStoreExtensionView);
  View.toolbarVisibility(_:for:)();

  sub_100083AA8(v9);
  LOBYTE(v9) = static Edge.Set.bottom.getter();
  v22 = static SafeAreaRegions.all.getter();
  v23 = &v13[*(sub_100002BE4(&qword_10016E4B0, &unk_1001150C0) + 36)];
  *v23 = v22;
  v23[8] = v9;
  sub_100083B04(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_100083B6C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = &v13[*(sub_100002BE4(&qword_10016E4B8, &unk_1001150D0) + 36)];
  *v26 = sub_100083BD0;
  v26[1] = v25;
  v26[2] = 0;
  v26[3] = 0;
  sub_100083B04(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_100083B6C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24);
  v28 = &v13[*(v10 + 36)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_100083BE8;
  *(v28 + 3) = v27;
  *&v37 = v34;
  *(&v37 + 1) = v33;
  State.wrappedValue.getter();
  v29 = v39;
  *&v37 = v39;
  sub_100083B04(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  sub_100083B6C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v24);
  sub_100002BE4(&unk_10016E398, &qword_100117BA0);
  sub_100083F98(&qword_10016E4C0, &qword_10016E4A0, &qword_1001150A8, sub_100083F68);
  sub_100084108();
  View.onChange<A>(of:initial:_:)();

  return sub_100084250(v13);
}

uint64_t sub_100083604()
{
  v0 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13[-1] - v5;
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *(type metadata accessor for TVPageView() + 36);
  sub_10000C178(v6, v4, &qword_10016B420, &qword_100110790);
  sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  State.wrappedValue.setter();
  sub_1000842B8(v6);
  sub_10004F388(0);
  v13[3] = &_s20TetsuoAnalyticsEventON;
  v13[4] = sub_1000250D8();
  LOBYTE(v13[0]) = 12;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v13);
  v9 = URL.absoluteString.getter();
  sub_10004B668(0.0, v9, v10, 0);
}

uint64_t sub_1000837AC()
{
  v0 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(type metadata accessor for TVPageView() + 36);
  sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  State.wrappedValue.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000842B8(v3);
  }

  (*(v5 + 32))(v11, v3, v4);
  v14 = URL.absoluteString.getter();
  v16 = v15;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v9, v4);
  sub_10004B668(v18, v14, v16, 0);

  return (v19)(v11, v4);
}

uint64_t sub_1000839C4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    sub_100082F34(v8);
    DismissAction.callAsFunction()();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_100083AA8(uint64_t a1)
{
  v2 = type metadata accessor for TVStoreExtensionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100083B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVPageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083C00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TVPageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100083C74()
{
  v1 = type metadata accessor for TVPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = v1[6];
  v9 = type metadata accessor for MetricsPipeline();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = (v0 + v3 + v1[7]);
  v11 = *v10;
  swift_unknownObjectRelease();
  v12 = v10[2];

  v13 = v0 + v3 + v1[8];

  v14 = *(v13 + 8);

  v15 = v0 + v3 + v1[9];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v15 + *(sub_100002BE4(&qword_10016E3E0, &unk_100115030) + 28));

  v19 = v1[10];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for DismissAction();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100083EE8(uint64_t a1, void *a2)
{
  v4 = *(*(type metadata accessor for TVPageView() - 8) + 80);

  return sub_1000839C4(a1, a2);
}

uint64_t sub_100083F98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008401C()
{
  result = qword_10016E4D0;
  if (!qword_10016E4D0)
  {
    sub_10000459C(&qword_10016E4B0, &unk_1001150C0);
    type metadata accessor for TVStoreExtensionView();
    sub_1000841BC(&qword_10016E3C8, type metadata accessor for TVStoreExtensionView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E4D0);
  }

  return result;
}

unint64_t sub_100084108()
{
  result = qword_10016E4D8;
  if (!qword_10016E4D8)
  {
    sub_10000459C(&unk_10016E398, &qword_100117BA0);
    sub_1000841BC(&qword_10016E4E0, sub_100084204);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E4D8);
  }

  return result;
}

uint64_t sub_1000841BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100084204()
{
  result = qword_10016E4E8;
  if (!qword_10016E4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016E4E8);
  }

  return result;
}

uint64_t sub_100084250(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E4A0, &qword_1001150A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000842B8(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100084320()
{
  sub_10000459C(&qword_10016E4A0, &qword_1001150A8);
  sub_10000459C(&unk_10016E398, &qword_100117BA0);
  sub_100083F98(&qword_10016E4C0, &qword_10016E4A0, &qword_1001150A8, sub_100083F68);
  sub_100084108();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000843E4()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
}

uint64_t sub_100084488(uint64_t a1)
{
  v3 = *(v1 + 16);

  v5 = sub_10008C4F0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000845DC()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_100084694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_100084754(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_10008C334(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10008489C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

void sub_100084904(uint64_t a1)
{
  v2 = v1;
  v88 = *v2;
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v87 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v86 = &v82 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v82 - v18;
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  sub_10000C178(a1, &v82 - v20, &qword_10016B010, &qword_100110020);
  v92 = *(v5 + 48);
  if (v92(v21, 1, v4) == 1)
  {
    v22 = v5;
    sub_100009908(v21, &qword_10016B010, &qword_100110020);
    v85 = 0;
    v23 = 0;
  }

  else
  {
    v85 = Device.serialNumber.getter();
    v23 = v24;
    v22 = v5;
    (*(v5 + 8))(v21, v4);
  }

  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v93[1] = v2;
  v90 = sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  v91 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(v2 + v26, v19, &qword_10016B010, &qword_100110020);
  if (v92(v19, 1, v4))
  {
    sub_100009908(v19, &qword_10016B010, &qword_100110020);
    v27 = v22;
    if (!v23)
    {
      return;
    }

    goto LABEL_6;
  }

  v27 = v22;
  isa = v22[2].isa;
  v38 = v89;
  isa(v89, v19, v4);
  sub_100009908(v19, &qword_10016B010, &qword_100110020);
  v39 = Device.serialNumber.getter();
  v41 = v40;
  (v27[1].isa)(v38, v4);
  if (!v23)
  {
    if (!v41)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v41)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v85 == v39 && v23 == v41)
  {

    return;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v81 & 1) == 0)
  {
LABEL_7:
    swift_getKeyPath();
    v93[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000C178(v2 + v26, v16, &qword_10016B010, &qword_100110020);
    if (v92(v16, 1, v4))
    {
      sub_100009908(v16, &qword_10016B010, &qword_100110020);
      sub_10003CEC8(0xD000000000000019, 0x800000010011EC20);
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006B0C(v28, qword_100181FE8);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_22;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v85 = v27;
      v33 = v32;
      v93[0] = v32;
      *v31 = 136315138;
      v34 = _typeName(_:qualified:)();
      v36 = sub_100006B44(v34, v35, v93);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s removing persisted selected device serialNumber", v31, 0xCu);
      sub_1000052E4(v33);
      v27 = v85;
    }

    else
    {
      v42 = v89;
      (v27[2].isa)(v89, v16, v4);
      sub_100009908(v16, &qword_10016B010, &qword_100110020);
      v43 = Device.serialNumber.getter();
      v45 = v44;
      (v27[1].isa)(v42, v4);
      sub_10003C324(0xD000000000000019, 0x800000010011EC20);
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006B0C(v46, qword_100181FE8);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      v85 = v47;
      if (!os_log_type_enabled(v47, v48))
      {

        goto LABEL_23;
      }

      v49 = swift_slowAlloc();
      v83 = v43;
      v50 = v49;
      v84 = swift_slowAlloc();
      v93[0] = v84;
      *v50 = 136315394;
      v51 = _typeName(_:qualified:)();
      v53 = sub_100006B44(v51, v52, v93);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = sub_100006B44(v83, v45, v93);

      *(v50 + 14) = v54;
      v29 = v85;
      _os_log_impl(&_mh_execute_header, v85, v48, "%s persisted selected device serialNumber: %s", v50, 0x16u);
      swift_arrayDestroy();
    }

LABEL_22:

LABEL_23:
    sub_100002BE4(&qword_10016E778, &qword_1001152C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010FEE0;
    strcpy((inited + 32), "serialNumber");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    swift_getKeyPath();
    v93[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = v86;
    sub_10000C178(v2 + v26, v86, &qword_10016B010, &qword_100110020);
    if (v92(v56, 1, v4))
    {
      sub_100009908(v56, &qword_10016B010, &qword_100110020);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v59 = v89;
      (v27[2].isa)(v89, v56, v4);
      sub_100009908(v56, &qword_10016B010, &qword_100110020);
      v57 = Device.serialNumber.getter();
      v58 = v60;
      (v27[1].isa)(v59, v4);
    }

    *(inited + 48) = v57;
    *(inited + 56) = v58;
    *(inited + 64) = 0xD000000000000013;
    *(inited + 72) = 0x800000010011EC40;
    swift_getKeyPath();
    v93[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = v87;
    sub_10000C178(v2 + v26, v87, &qword_10016B010, &qword_100110020);
    if (v92(v61, 1, v4))
    {
      sub_100009908(v61, &qword_10016B010, &qword_100110020);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v64 = v89;
      (v27[2].isa)(v89, v61, v4);
      sub_100009908(v61, &qword_10016B010, &qword_100110020);
      v62 = Device.buildNumber.getter();
      v63 = v65;
      (v27[1].isa)(v64, v4);
    }

    *(inited + 80) = v62;
    *(inited + 88) = v63;
    v66 = sub_10000B924(inited);
    swift_setDeallocating();
    sub_100002BE4(&qword_10016E780, &qword_1001152C8);
    swift_arrayDestroy();
    v67 = [objc_opt_self() defaultCenter];
    if (qword_100168F70 != -1)
    {
      swift_once();
    }

    v68 = qword_1001821C0;
    sub_10008E1F4(v66);
    v69 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v67 postNotificationName:v68 object:0 userInfo:v69];

    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006B0C(v70, qword_100181FE8);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v73 = 136315394;
      v74 = _typeName(_:qualified:)();
      v76 = sub_100006B44(v74, v75, v93);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      sub_100002BE4(&qword_10016B278, &qword_100113A20);
      v77 = Dictionary.description.getter();
      v79 = v78;

      v80 = sub_100006B44(v77, v79, v93);

      *(v73 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s posted selectedDeviceDidChange notification with userInfo: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100085624@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  return sub_10000C178(v5 + v3, a1, &qword_10016B010, &qword_100110020);
}

uint64_t sub_1000856FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  return sub_10000C178(v3 + v4, a2, &qword_10016B010, &qword_100110020);
}

uint64_t sub_1000857D4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10000C178(a1, &v10 - v6, &qword_10016B010, &qword_100110020);
  v8 = *a2;
  return sub_100085880(v7);
}

uint64_t sub_100085880(uint64_t a1)
{
  v3 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(v1 + v10, v9, &qword_10016B010, &qword_100110020);
  v11 = sub_10008C794(v9, a1);
  sub_100009908(v9, &qword_10016B010, &qword_100110020);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10000C178(a1, v9, &qword_10016B010, &qword_100110020);
    sub_10000C178(v1 + v10, v7, &qword_10016B010, &qword_100110020);
    swift_beginAccess();
    sub_10008D8B0(v9, v1 + v10);
    swift_endAccess();
    sub_100084904(v7);
    sub_100009908(v7, &qword_10016B010, &qword_100110020);
    sub_100009908(v9, &qword_10016B010, &qword_100110020);
  }

  return sub_100009908(a1, &qword_10016B010, &qword_100110020);
}

uint64_t sub_100085AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_10000C178(a2, &v13[-v9], &qword_10016B010, &qword_100110020);
  v11 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(a1 + v11, v8, &qword_10016B010, &qword_100110020);
  swift_beginAccess();
  sub_10008D8B0(v10, a1 + v11);
  swift_endAccess();
  sub_100084904(v8);
  sub_100009908(v8, &qword_10016B010, &qword_100110020);
  return sub_100009908(v10, &qword_10016B010, &qword_100110020);
}

uint64_t sub_100085C38()
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
}

uint64_t sub_100085CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
}

uint64_t sub_100085D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads;
  if (!*(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1 || (sub_10008C704(*(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100085EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PushNotificationDispatchItem();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100085FB8, 0, 0);
}

uint64_t sub_100085FB8()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v0[5] + 104))(v0[6], enum case for PushNotificationDispatchItem.device(_:), v0[4]);
  type metadata accessor for PushNotificationDispatch();
  sub_10008D960(&qword_10016E760, &type metadata accessor for PushNotificationDispatch);

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000860A8, v4, v3);
}

uint64_t sub_1000860A8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  dispatch thunk of PushNotificationDispatch.register(_:handler:)();

  (*(v2 + 8))(v1, v3);
  v6 = async function pointer to DeviceCloudKitCoordinator.registerForPushNotifications()[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1000861A0;

  return DeviceCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_1000861A0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1000862E0;
  v5 = *(v1 + 24);

  return sub_100087414();
}

uint64_t sub_1000862E0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_100086420;
  v5 = *(v1 + 24);

  return sub_1000899C8();
}

uint64_t sub_100086420()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100086530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100087414();
}

uint64_t sub_1000865C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_100087414();
}

uint64_t sub_100086650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000899C8();
}

uint64_t sub_1000866E0()
{
  v1[6] = *v0;
  v2 = type metadata accessor for DeviceService();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = *(*(sub_100002BE4(&qword_10016B420, &qword_100110790) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000868D8, 0, 0);
}

uint64_t sub_1000868D8()
{
  v80 = v0;
  v1 = objc_opt_self();
  *(v0 + 160) = v1;
  v2 = [v1 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.lastAuthKitDevicesUpdateKey.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v5 = v79;
  *(v0 + 16) = v78;
  *(v0 + 32) = v5;
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (*(v0 + 40))
  {
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = swift_dynamicCast();
    (*(v7 + 56))(v8, v11 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      (*(*(v0 + 120) + 32))(*(v0 + 152), *(v0 + 104), *(v0 + 112));
      goto LABEL_10;
    }
  }

  else
  {
    sub_100009908(v0 + 16, &qword_100169A38, &qword_10010D460);
    (*(v7 + 56))(v8, 1, 1, v6);
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  static Date.distantPast.getter();
  if ((*(v14 + 48))(v15, 1, v13) != 1)
  {
    sub_100009908(*(v0 + 104), &qword_10016B420, &qword_100110790);
  }

LABEL_10:
  v16 = *(v0 + 152);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);
  static Calendar.current.getter();
  LOBYTE(v16) = Calendar.isDateInToday(_:)();
  (*(v18 + 8))(v17, v19);
  if (v16)
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 152);
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v23 = *(v0 + 112);
    v24 = type metadata accessor for Logger();
    sub_100006B0C(v24, qword_100181FE8);
    (*(v22 + 16))(v21, v20, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 152);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 112);
    if (v27)
    {
      v32 = *(v0 + 48);
      v77 = *(v0 + 152);
      v33 = swift_slowAlloc();
      *&v78 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = _typeName(_:qualified:)();
      v36 = sub_100006B44(v34, v35, &v78);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      sub_10008D960(&qword_10016B468, &type metadata accessor for Date);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v30 + 8);
      v40(v29, v31);
      v41 = sub_100006B44(v37, v39, &v78);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s not requesting AuthKit Devices update; last update: %s", v33, 0x16u);
      swift_arrayDestroy();

      v40(v77, v31);
    }

    else
    {

      v63 = *(v30 + 8);
      v63(v29, v31);
      v63(v28, v31);
    }

    v65 = *(v0 + 144);
    v64 = *(v0 + 152);
    v67 = *(v0 + 128);
    v66 = *(v0 + 136);
    v69 = *(v0 + 96);
    v68 = *(v0 + 104);
    v70 = *(v0 + 72);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
    v46 = type metadata accessor for Logger();
    sub_100006B0C(v46, qword_100181FE8);
    (*(v45 + 16))(v42, v43, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 144);
    v51 = *(v0 + 112);
    v52 = *(v0 + 120);
    if (v49)
    {
      v53 = *(v0 + 48);
      v54 = swift_slowAlloc();
      *&v78 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = sub_100006B44(v55, v56, &v78);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      sub_10008D960(&qword_10016B468, &type metadata accessor for Date);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v52 + 8);
      v61(v50, v51);
      v62 = sub_100006B44(v58, v60, &v78);

      *(v54 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s requesting AuthKit Devices update; last update: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v61 = *(v52 + 8);
      v61(v50, v51);
    }

    *(v0 + 168) = v61;
    v73 = *(v0 + 72);
    DeviceService.init()();
    v74 = async function pointer to DeviceService.activate()[1];
    v75 = swift_task_alloc();
    *(v0 + 176) = v75;
    *v75 = v0;
    v75[1] = sub_100087030;
    v76 = *(v0 + 72);

    return DeviceService.activate()();
  }
}

uint64_t sub_100087030()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = async function pointer to DeviceService.updateAuthKitDevices()[1];
  v5 = swift_task_alloc();
  *(v1 + 184) = v5;
  *v5 = v3;
  v5[1] = sub_100087174;
  v6 = *(v1 + 72);

  return DeviceService.updateAuthKitDevices()();
}

uint64_t sub_100087174()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10008D9F8;
  }

  else
  {
    v3 = sub_10008728C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008728C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v19 = *(v0 + 56);
  v20 = *(v0 + 152);
  v7 = [*(v0 + 160) standardUserDefaults];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v1(v2, v3);
  static UserDefaultUtilities.SharedConstants.lastAuthKitDevicesUpdateKey.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setObject:isa forKey:v9];

  DeviceService.invalidate()();
  (*(v5 + 8))(v6, v19);
  v1(v20, v3);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100087414()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = type metadata accessor for DeviceService();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(sub_100002BE4(&qword_10016B010, &qword_100110020) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100087584, 0, 0);
}

uint64_t sub_100087584()
{
  v1 = v0[5];
  v0[2] = v1;
  v2 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_authKitCoordinator;
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_cloudKitAccountCoordinator);
  v4 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v0[14] = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v5 = async function pointer to DeviceFallbackProviding.fetchDevicesWithFallback(authKitCoordinator:cloudKitAccountCoordinator:deviceCloudKitCoordinator:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = type metadata accessor for DeviceProvider();
  v8 = sub_10008D960(&qword_10016E770, type metadata accessor for DeviceProvider);
  *v6 = v0;
  v6[1] = sub_1000876B0;

  return DeviceFallbackProviding.fetchDevicesWithFallback(authKitCoordinator:cloudKitAccountCoordinator:deviceCloudKitCoordinator:)(v1 + v2, v3, v1 + v4, v7, v8);
}

uint64_t sub_1000876B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_100088084;
  }

  else
  {
    v5 = sub_1000877C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000877C4()
{
  v28 = v0;
  v1 = v0[16];
  v0[18] = type metadata accessor for Device();
  v2 = Array.uniqued<A>(_:)();
  v0[19] = v2;
  if (*(v1 + 16) == *(v2 + 16))
  {
    v3 = v0[16];

    v4 = v0[5];
    sub_100088E08(v0[19], v0[13]);
    v0[21] = type metadata accessor for MainActor();
    v0[22] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100087CA8, v6, v5);
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v7 = v0[16];
    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181FE8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    if (v11)
    {
      v13 = v0[6];
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = _typeName(_:qualified:)();
      v17 = sub_100006B44(v15, v16, &v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = Array.description.getter();
      v20 = v19;

      v21 = sub_100006B44(v18, v20, &v27);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s found duplicate devices: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v22 = v0[14];
    v23 = v0[5];
    v24 = async function pointer to DeviceCloudKitCoordinator.removeDuplicateDevices()[1];
    v25 = swift_task_alloc();
    v0[20] = v25;
    *v25 = v0;
    v25[1] = sub_100087B04;

    return DeviceCloudKitCoordinator.removeDuplicateDevices()();
  }
}

uint64_t sub_100087B04()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100087C00, 0, 0);
}

uint64_t sub_100087C00()
{
  v1 = v0[5];
  sub_100088E08(v0[19], v0[13]);
  v0[21] = type metadata accessor for MainActor();
  v0[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100087CA8, v3, v2);
}

uint64_t sub_100087CA8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[5];

  sub_100084488(v8);
  sub_10000C178(v4, v5, &qword_10016B010, &qword_100110020);
  sub_100085880(v5);
  byte_10016BF08 = *(v3 + 16) != 0;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v7;
  v11[5] = v3;
  sub_1000EE5F8(0, 0, v6, &unk_100115260, v11);

  return _swift_task_switch(sub_100087E2C, 0, 0);
}

uint64_t sub_100087E2C()
{
  v27 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = v0[18];
    v8 = v0[13];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_100006B44(v14, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s updated devices: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v8 = v0[13];
    v18 = v0[19];
  }

  sub_100009908(v8, &qword_10016B010, &qword_100110020);
  v20 = v0[12];
  v19 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100088084()
{
  v46 = v0;
  v1 = v0[17];
  type metadata accessor for Code(0);
  swift_errorRetain();
  v0[3] = static CloudKitUtilities.zoneNotFoundError.getter();
  sub_10008D960(&qword_1001691C0, type metadata accessor for Code);
  v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v2)
  {
    v3 = v0[17];

    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181FE8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[6];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45 = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v45);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to update devices; zone not found", v8, 0xCu);
      sub_1000052E4(v9);
    }

    v13 = v0[14];
    v14 = v0[5];
    v15 = async function pointer to DeviceCloudKitCoordinator.registerForPushNotifications()[1];
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_1000885F0;

    return DeviceCloudKitCoordinator.registerForPushNotifications()();
  }

  else
  {
    v17 = v0[17];
    swift_errorRetain();
    v0[4] = static CloudKitUtilities.notAuthenticatedError.getter();
    v18 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v18)
    {
      v19 = v0[17];
      v20 = v0[12];

      v21 = type metadata accessor for Device();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      v0[26] = type metadata accessor for MainActor();
      v0[27] = static MainActor.shared.getter();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100088A98, v23, v22);
    }

    else
    {
      if (qword_100168E40 != -1)
      {
        swift_once();
      }

      v24 = v0[17];
      v25 = type metadata accessor for Logger();
      sub_100006B0C(v25, qword_100181FE8);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[17];
      if (v28)
      {
        v30 = v0[6];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45 = v33;
        *v31 = 136315394;
        v34 = _typeName(_:qualified:)();
        v36 = sub_100006B44(v34, v35, &v45);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2112;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v37;
        *v32 = v37;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s failed to update devices: %@", v31, 0x16u);
        sub_100009908(v32, &unk_100169C20, &unk_10010D6B0);

        sub_1000052E4(v33);
      }

      else
      {
      }

      v39 = v0[12];
      v38 = v0[13];
      v41 = v0[10];
      v40 = v0[11];
      v42 = v0[9];

      v43 = v0[1];

      return v43();
    }
  }
}

uint64_t sub_1000885F0()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1000886EC, 0, 0);
}

uint64_t sub_1000886EC()
{
  v1 = *(v0 + 72);
  DeviceService.init()();
  v2 = async function pointer to DeviceService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_100088788;
  v4 = *(v0 + 72);

  return DeviceService.activate()();
}

uint64_t sub_100088788()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;

  v4 = async function pointer to DeviceService.updateAuthKitDevices()[1];
  v5 = swift_task_alloc();
  *(v1 + 200) = v5;
  *v5 = v3;
  v5[1] = sub_1000888CC;
  v6 = *(v1 + 72);

  return DeviceService.updateAuthKitDevices()();
}

uint64_t sub_1000888CC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10008D9EC;
  }

  else
  {
    v3 = sub_1000889E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000889E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DeviceService.invalidate()();
  (*(v2 + 8))(v1, v3);
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100088A98()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[5];

  sub_100084488(_swiftEmptyArrayStorage);
  sub_10000C178(v3, v4, &qword_10016B010, &qword_100110020);
  sub_100085880(v4);
  byte_10016BF08 = 0;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  v9[5] = _swiftEmptyArrayStorage;
  sub_1000EE5F8(0, 0, v5, &unk_100115258, v9);

  sub_100009908(v3, &qword_10016B010, &qword_100110020);

  return _swift_task_switch(sub_100088C28, 0, 0);
}

uint64_t sub_100088C28()
{
  v18 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s failed to update devices; user not authenticated", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100088DDC@<X0>(uint64_t *a1@<X8>)
{
  result = Device.serialNumber.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100088E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v79 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v82 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v74 - v13;
  __chkstk_darwin(v12);
  v16 = &v74 - v15;
  v17 = type metadata accessor for Device();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v77 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v78 = &v74 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v74 - v25;
  __chkstk_darwin(v24);
  v28 = &v74 - v27;
  v29 = sub_10003D38C(0xD000000000000019, 0x800000010011EC20);
  v31 = a2;
  v86 = v17;
  v84 = a2;
  v81 = v16;
  if (!v30)
  {
    goto LABEL_9;
  }

  v32 = v30;
  v74 = v14;
  v75 = v28;
  v76 = v5;
  v83 = v18;
  v80 = a1;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_8:

    v18 = v83;
    v31 = v84;
    v16 = v81;
    v14 = v74;
LABEL_9:
    v40 = v31;
    static SoftwareUpdateUtilities.highestVersionDevice(from:)();
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006B0C(v41, qword_100181FE8);
    sub_10000C178(v16, v14, &qword_10016B010, &qword_100110020);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = _typeName(_:qualified:)();
      v47 = sub_100006B44(v45, v46, &v89);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = v82;
      sub_10000C178(v14, v82, &qword_10016B010, &qword_100110020);
      v49 = v79;
      sub_10000C178(v48, v79, &qword_10016B010, &qword_100110020);
      v50 = v86;
      if ((*(v18 + 48))(v49, 1, v86) == 1)
      {
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v54 = v77;
        (*(v18 + 32))(v77, v49, v50);
        v87 = 0;
        v88 = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v52 = v87;
        v51 = v88;
        (*(v18 + 8))(v54, v50);
      }

      sub_100009908(v82, &qword_10016B010, &qword_100110020);
      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      v55 = sub_100006B44(v52, v51, &v89);

      *(v44 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s no persisted selected device; selecting device %s", v44, 0x16u);
      swift_arrayDestroy();

      v16 = v81;
      v53 = v84;
    }

    else
    {

      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      v53 = v40;
    }

    return sub_10008D32C(v16, v53);
  }

  v34 = v29;
  v85 = *(v83 + 16);
  v35 = (v83 + 8);
  v36 = v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v37 = *(v83 + 72);
  while (1)
  {
    v85(v26, v36, v17);
    if (Device.serialNumber.getter() == v34 && v32 == v38)
    {

      goto LABEL_20;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      break;
    }

    v17 = v86;
    (*v35)(v26, v86);
    v36 += v37;
    if (!--v33)
    {
      goto LABEL_8;
    }
  }

  v17 = v86;
LABEL_20:
  v57 = *(v83 + 32);
  v58 = v75;
  v57(v75, v26, v17);
  v59 = v78;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100006B0C(v60, qword_100181FE8);
  v85(v59, v58, v17);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v86 = v57;
    v87 = v64;
    *v63 = 136315394;
    v65 = _typeName(_:qualified:)();
    v66 = v17;
    v68 = sub_100006B44(v65, v67, &v87);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    sub_10008D960(&qword_10016E768, &type metadata accessor for Device);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*v35)(v59, v66);
    v72 = sub_100006B44(v69, v71, &v87);

    *(v63 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s fetched persisted selected device %s", v63, 0x16u);
    swift_arrayDestroy();
    v57 = v86;

    v58 = v75;
  }

  else
  {

    (*v35)(v59, v17);
    v66 = v17;
  }

  v73 = v84;
  v57(v84, v58, v66);
  return (*(v83 + 56))(v73, 0, 1, v66);
}

uint64_t sub_100089674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1000896F0, 0, 0);
}

uint64_t sub_1000896F0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1000897D8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000897D8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1000898F0, 0, 0);
}

uint64_t sub_1000898F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089968, v4, v3);
}

uint64_t sub_100089968()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000899C8()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = async function pointer to AuthKitCoordinator.getRemoteDownloadIdentifiersThatAcceptAppStoreDownloads()[1];
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_100089A90;

  return AuthKitCoordinator.getRemoteDownloadIdentifiersThatAcceptAppStoreDownloads()();
}

uint64_t sub_100089A90(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100089B90, 0, 0);
}

uint64_t sub_100089B90()
{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads;
  v4 = v2;
  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads))
  {
    if (sub_10008C704(*(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads), v0[10]))
    {
      *(v2 + v3) = v1;

      goto LABEL_6;
    }

    v5 = v0[10];
    v4 = v0[7];
  }

  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v0[4] = v4;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v7 = v0[7];
  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181FE8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    swift_getKeyPath();
    v0[5] = v12;
    sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v2 + v3);
    if (v17)
    {
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
      v0[6] = v17;
      sub_100002BE4(&qword_10016B430, &unk_1001107A0);
      _print_unlocked<A, B>(_:_:)();
      v18 = v0[2];
      v19 = v0[3];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_100006B44(v18, v19, v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s remoteDownloadIdentifiersThatAcceptAppStoreDownloads = %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100089F28(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_getKeyPath();
  v23[0] = v2;
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
  if (!v7)
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006B0C(v10, qword_100181FE8);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100006B44(a1, a2, v23);
    v17 = "%s remoteDownloadIdentifiersThatAcceptAppStoreDownloads is nil, unable to determine if %s accepts app store downloads";
    goto LABEL_12;
  }

  v23[0] = a1;
  v23[1] = a2;
  __chkstk_darwin(v6);
  v22[2] = v23;

  v8 = sub_10008BE3C(sub_10008D2BC, v22, v7);

  if (v8)
  {
    return 1;
  }

  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006B0C(v18, qword_100181FE8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v13 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100006B44(v19, v20, v23);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100006B44(a1, a2, v23);
    v17 = "%s %s is not found in remoteDownloadIdentifiersThatAcceptAppStoreDownloads";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v11, v12, v17, v13, 0x16u);
    swift_arrayDestroy();
  }

LABEL_13:

  return 0;
}

uint64_t sub_10008A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = type metadata accessor for Device();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v7 = *(*(sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008A3EC, 0, 0);
}

uint64_t sub_10008A3EC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 104);
    v39 = *(v0 + 112);
    v38 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v36 = (v3 + 16);
    v37 = *(v3 + 72);
    v35 = (v4 + 40) & ~v4;
    v34 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v33 = *(v7 + 56);
    v32 = (v7 + 48);
    v31 = (v7 + 8);
    do
    {
      v40 = v2;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 120);
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v33(v10, 1, 1, v6);
      v15 = swift_allocObject();
      swift_weakInit();
      (*v36)(v12, v5, v13);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v15;
      (*v34)(v16 + v35, v12, v13);
      sub_10000C178(v10, v11, &unk_10016F2B0, &qword_10010F6F0);
      v18 = (*v32)(v11, 1, v6);
      v19 = *(v0 + 128);
      if (v18 == 1)
      {
        sub_100009908(*(v0 + 128), &unk_10016F2B0, &qword_10010F6F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v31)(v19, v6);
      }

      if (*v17)
      {
        v20 = v16[3];
        v21 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = &unk_100115288;
      *(v25 + 24) = v16;

      if (v24 | v22)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v38;
      swift_task_create();

      sub_100009908(v9, &unk_10016F2B0, &qword_10010F6F0);
      v5 += v37;
      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v28 = *(v0 + 120);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10008A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10008A7C0, 0, 0);
}

uint64_t sub_10008A7C0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10008A8B0;
    v4 = v0[6];

    return sub_10008A9C0(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10008A8B0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10008A9C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10008AA08, 0, 0);
}

uint64_t sub_10008AA08()
{
  v1 = v0[2];
  v2 = Device.productName.getter();
  v0[5] = v3;
  v0[6] = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10008AAA4;
  v5 = v0[2];

  return sub_1000BD234();
}

uint64_t sub_10008AAA4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10008ABA4, 0, 0);
}

uint64_t sub_10008ABA4()
{
  v21 = v0;
  if (v0[8])
  {
    type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10008AE48, v2, v1);
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    if (v0[5])
    {
      v3 = v0[5];
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181FE8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[5];
      v7 = v0[6];
      v9 = v0[4];
      if (v8)
      {
        v10 = v0[5];
      }

      else
      {
        v10 = 0x800000010011EC00;
      }

      if (v8)
      {
        v11 = v0[6];
      }

      else
      {
        v11 = 0xD000000000000010;
      }

      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v20);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = sub_100006B44(v11, v10, &v20);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to load device model for device: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v17 = v0[5];
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10008AE48()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  if (v4)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x800000010011EC00;
  }

  sub_10008AFA0(v6, v7, v8, v2);
  if (v0[5])
  {
    v9 = v0[5];
  }

  return _swift_task_switch(sub_10008AF40, 0, 0);
}

uint64_t sub_10008AF40()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10008AFA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_10004E32C(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v18;
  swift_endAccess();
  v17[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100181FE8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, v17);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100006B44(a2, a3, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s cached device model for device: %s", v13, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10008B280(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_10008B2C8, 0, 0);
}

uint64_t sub_10008B2C8()
{
  v1 = v0[7];
  v2 = Device.productName.getter();
  v0[10] = v3;
  v0[11] = v2;
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B36C, v5, v4);
}

uint64_t sub_10008B36C()
{
  v1 = v0[13];
  v2 = v0[8];

  swift_getKeyPath();
  v0[5] = v2;
  v0[14] = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v0[15] = sub_10008D960(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v2 + 24);
  if (*(v3 + 16))
  {
    v4 = v0[10];
    if (v4)
    {
      v5 = v0[11];
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = v0[10];
    }

    else
    {
      v6 = 0x800000010011EC00;
    }

    v7 = *(v2 + 24);

    v8 = sub_10006889C(v5, v6);
    if (v9)
    {
      v0[16] = *(*(v3 + 56) + 8 * v8);

      v10 = sub_10008B73C;
    }

    else
    {

      v10 = sub_10008D9F0;
    }
  }

  else
  {
    v10 = sub_10008B504;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10008B504()
{
  v19 = v0;
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  if (v0[10])
  {
    v1 = v0[10];
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    if (v6)
    {
      v8 = v0[11];
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (v6)
    {
      v9 = v0[10];
    }

    else
    {
      v9 = 0x800000010011EC00;
    }

    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100006B44(v8, v9, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s device model not cached, loading for device: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_10008B7B8;
  v15 = v0[7];
  v16 = v0[8];

  return sub_10008A9C0(v15);
}

uint64_t sub_10008B73C()
{
  if (v0[10])
  {
    v1 = v0[10];
  }

  v2 = v0[16];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10008B7B8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_10008B8B4, 0, 0);
}

uint64_t sub_10008B8B4()
{
  v1 = *(v0 + 96);
  *(v0 + 144) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B940, v3, v2);
}

uint64_t sub_10008B940()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];

  swift_getKeyPath();
  v0[6] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 24);
  if (*(v5 + 16))
  {
    v7 = v0[10];
    v6 = v0[11];
    if (v7)
    {
      v8 = v0[10];
    }

    else
    {
      v8 = 0x800000010011EC00;
    }

    if (v7)
    {
      v9 = v0[11];
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    v10 = *(v4 + 24);

    v11 = sub_10006889C(v9, v8);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v5 + 56) + 8 * v11);

      v15 = v14;
      goto LABEL_13;
    }
  }

  else if (v0[10])
  {
    v16 = v0[10];
  }

  v15 = 0;
LABEL_13:
  v17 = v0[1];

  return v17(v15);
}

uint64_t sub_10008BA88()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  sub_100009908(&v0[OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice], &qword_10016B010, &qword_100110020);
  v3 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_authKitCoordinator;
  v4 = type metadata accessor for AuthKitCoordinator();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_cloudKitAccountCoordinator];

  v6 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_deviceCloudKitCoordinator;
  v7 = type metadata accessor for DeviceCloudKitCoordinator();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads];

  v9 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceProvider()
{
  result = qword_10016E548;
  if (!qword_10016E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008BC48()
{
  sub_10008BDAC();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AuthKitCoordinator();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for DeviceCloudKitCoordinator();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for ObservationRegistrar();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10008BDAC()
{
  if (!qword_10016E558)
  {
    type metadata accessor for Device();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E558);
    }
  }
}

NSString sub_10008BE04()
{
  result = String._bridgeToObjectiveC()();
  qword_1001821C0 = result;
  return result;
}

uint64_t sub_10008BE3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10008BEE8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10008C010(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10008C108;

  return v7(a1);
}

uint64_t sub_10008C108()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10008C200(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_10006889C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C334(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v21 = *(*(v3 + 56) + 8 * v12);

    v16 = sub_10006889C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for Entity();
    v20 = *(*(a2 + 56) + 8 * v16);
    sub_10008D960(&qword_10016E788, &type metadata accessor for Entity);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10008D960(&qword_10016B020, &type metadata accessor for Device);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10008C794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002BE4(&qword_10016B008, &qword_100110018);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_10000C178(a1, &v24 - v16, &qword_10016B010, &qword_100110020);
  sub_10000C178(a2, &v17[v18], &qword_10016B010, &qword_100110020);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_10000C178(v17, v12, &qword_10016B010, &qword_100110020);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10008D960(&qword_10016B020, &type metadata accessor for Device);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_100009908(v17, &qword_10016B010, &qword_100110020);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_100009908(v17, &qword_10016B008, &qword_100110018);
    v20 = 1;
    return v20 & 1;
  }

  sub_100009908(v17, &qword_10016B010, &qword_100110020);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10008CAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = sub_10000BB74(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  v10 = type metadata accessor for Device();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  AuthKitCoordinator.init()();
  v11 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider_cloudKitAccountCoordinator;
  type metadata accessor for CloudKitAccountCoordinator();
  *(v3 + v11) = CloudKitAccountCoordinator.__allocating_init()();
  DeviceCloudKitCoordinator.init()();
  *(v3 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads) = 0;
  ObservationRegistrar.init()();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = v3;

  sub_1000EE5F8(0, 0, v8, &unk_100115190, v13);

  dispatch thunk of NetworkStatusCoordinator.registerForConnected(file:handler:)();

  sub_100031904(0, &qword_10016E750, NSNotificationCenter_ptr);

  static NSNotificationCenter.register(_:file:handler:)();

  sub_100031904(0, &qword_10016E758, NSDistributedNotificationCenter_ptr);
  v14 = static NSNotificationName.devicesDidChange.getter();

  static NSNotificationCenter.register(_:file:handler:)();

  static NSNotificationCenter.register(_:file:handler:)();

  static NSNotificationCenter.register(_:file:handler:)();

  return v3;
}

uint64_t sub_10008CE3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_100085EF8(a1, v4, v5, v7, v6);
}

uint64_t sub_10008CEFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008CF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000865C0();
}

uint64_t sub_10008D01C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008D0AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086650();
}

uint64_t sub_10008D13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086650();
}

uint64_t sub_10008D1CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100086530();
}

uint64_t sub_10008D260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100084754(v4);
}

uint64_t sub_10008D290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100085D98(v4);
}

uint64_t sub_10008D2BC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10008D32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_100089674(a1, v4, v5, v7, v6);
}

uint64_t sub_10008D474(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10008D4CC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000FA04;

  return sub_10008A2DC(a1, a2, v7, v6);
}

uint64_t sub_10008D580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D5B8()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008D684(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100024388;

  return sub_10008A7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10008D77C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D7B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FA04;

  return sub_10008C010(a1, v5);
}

uint64_t sub_10008D86C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads);
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__remoteDownloadIdentifiersThatAcceptAppStoreDownloads) = *(v0 + 24);
}

uint64_t sub_10008D8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D9B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

void sub_10008DA14(void *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CKRecord.recordType.getter();
  v30 = v8;
  if (v12 == 0xD000000000000017 && 0x800000010011DCA0 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_12:
      sub_10008E138();
      swift_allocError();
      swift_willThrow();

      return;
    }
  }

  v15 = [a1 encryptedValues];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 objectForKeyedSubscript:v16];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_12;
  }

  v33 = v17;
  sub_100002BE4(&qword_10016E7B8, &qword_100115300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = v31;
  v28 = v32;
  v18 = [a1 encryptedValues];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 objectForKeyedSubscript:v19];
  swift_unknownObjectRelease();

  if (!v20)
  {

    (*(v30 + 56))(v6, 1, 1, v7);
    goto LABEL_11;
  }

  v31 = v20;
  v21 = swift_dynamicCast();
  v22 = v30;
  (*(v30 + 56))(v6, v21 ^ 1u, 1, v7);
  if ((*(v22 + 48))(v6, 1, v7) == 1)
  {

LABEL_11:
    sub_1000842B8(v6);
    goto LABEL_12;
  }

  v23 = *(v22 + 32);
  v23(v11, v6, v7);
  v24 = type metadata accessor for SpatialGalleryFavorite();
  v25 = v29;
  v23(v29 + *(v24 + 20), v11, v7);
  v26 = v28;
  *v25 = v27;
  v25[1] = v26;
}

Class sub_10008DDD0()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v4 = qword_1001821C8;
  v5 = unk_1001821D0;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v4;
  v9._object = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v9, v10).super.isa;
  v12._countAndFlagsBits = v3;
  v12._object = v2;
  String.append(_:)(v12);
  sub_100031904(0, &qword_10016E798, CKRecordID_ptr);
  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010011EC60;
  v14 = CKRecordID.init(recordName:zoneID:)(v13, isa).super.isa;
  sub_100031904(0, &unk_10016E7A0, CKRecord_ptr);
  v15 = v14;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x800000010011DCA0;
  v17 = CKRecord.init(recordType:recordID:)(v16, v15).super.isa;
  v18 = [(objc_class *)v17 encryptedValues];
  swift_getObjectType();
  v25 = &type metadata for String;
  v26 = &protocol witness table for String;
  v24[0] = v3;
  v24[1] = v2;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v19 = [(objc_class *)v17 encryptedValues];
  swift_getObjectType();
  v20 = *(type metadata accessor for SpatialGalleryFavorite() + 20);
  v21 = type metadata accessor for Date();
  v25 = v21;
  v26 = &protocol witness table for Date;
  v22 = sub_100020014(v24);
  (*(*(v21 - 8) + 16))(v22, v1 + v20, v21);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  return v17;
}

void sub_10008E06C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE800000000000000;
    v3 = 0x6174616472657375;
  }

  qword_1001821C8 = v3;
  unk_1001821D0 = v5;
}

unint64_t sub_10008E138()
{
  result = qword_10016E7B0;
  if (!qword_10016E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E7B0);
  }

  return result;
}

unint64_t sub_10008E1A0()
{
  result = qword_10016E7C0;
  if (!qword_10016E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E7C0);
  }

  return result;
}

uint64_t sub_10008E1F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    sub_100002BE4(&qword_10016B278, &qword_100113A20);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10000BF7C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10000BF7C(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10000BF7C(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10008E4D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000076F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000BF7C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000BF7C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000BF7C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000BF7C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10008E798(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10000BF7C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10000BF7C(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10000BF7C(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_10008EA60()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating UTS Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

uint64_t sub_10008EBF8(uint64_t a1, void *a2)
{
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182048);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84 = v9;
    *v7 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v84);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Fetching data from UTS %@", v7, 0x16u);
    sub_100009908(v8, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v9);
  }

  v14 = sub_10000B5DC(&off_100159C48);
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  v15 = WLKRestrictionsCountryCode();
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = WLKRestrictionsMaximumEffectiveMovieRanking();
    if (v20)
    {
      v21 = v20;
      v84 = v17;
      v85 = v19;

      v22._countAndFlagsBits = 58;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      *&v81[0] = [v21 integerValue];
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24 = v14;
      v25 = v84;
      v26 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v24;
      sub_10004E4A8(v25, v26, 29293, 0xE200000000000000, isUniquelyReferenced_nonNull_native);

      v14 = v84;
    }

    v28 = WLKRestrictionsMaximumEffectiveTVShowRanking();
    if (v28)
    {
      v29 = v28;
      v84 = v17;
      v85 = v19;
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      *&v81[0] = [v29 integerValue];
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32 = v84;
      v33 = v85;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v14;
      sub_10004E4A8(v32, v33, 7501428, 0xE300000000000000, v34);

      v14 = v84;
    }

    else
    {
    }
  }

  v84 = 0x2F7365766C656873;
  v85 = 0xE800000000000000;
  v35 = [v4 description];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  sub_10008E798(v14);
  v40 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [objc_opt_self() requestPropertiesWithEndpoint:v40 queryParameters:isa httpMethod:v42 caller:v43];

  v79 = v44;
  v45 = [objc_allocWithZone(WLKUTSNetworkRequestOperation) initWithRequestProperties:v44];
  v46 = [objc_opt_self() currentQueue];
  if (!v46)
  {
    v46 = [objc_allocWithZone(NSOperationQueue) init];
  }

  [v46 addOperation:v45];
  [v46 waitUntilAllOperationsAreFinished];
  v47 = [v45 responseDictionary];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = objc_opt_self();
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;
  v84 = 0;
  v50 = [v48 dataWithJSONObject:v49 options:0 error:&v84];

  v51 = v84;
  if (v50)
  {
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    sub_10003DC0C(v52, v54);
    v55 = sub_10008F98C(v52, v54);
    if (!v56)
    {
      v83[0] = v52;
      v83[1] = v54;
      sub_10003DC0C(v52, v54);
      sub_100002BE4(&qword_10016E800, &qword_1001153D8);
      if (swift_dynamicCast())
      {
        sub_10002BF6C(v81, &v84);
        sub_10000524C(&v84, v86);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10003DBB8(v52, v54);
          sub_10000524C(&v84, v86);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v57 = *(&v81[0] + 1);
          v58 = *&v81[0];
          sub_1000052E4(&v84);
LABEL_29:
          v84 = v58;
          v85 = v57;

          v78 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v76 = [objc_opt_self() valueWithObject:v78 inContext:a1];
          result = swift_unknownObjectRelease();
          if (v76)
          {

            sub_10003DBB8(v52, v54);

            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_33;
        }

        sub_1000052E4(&v84);
      }

      else
      {
        v82 = 0;
        memset(v81, 0, sizeof(v81));
        sub_100009908(v81, &qword_10016E808, &unk_1001153E0);
      }

      v55 = sub_10008F768(v52, v54);
    }

    v58 = v55;
    v57 = v56;
    sub_10003DBB8(v52, v54);
    goto LABEL_29;
  }

  v59 = v51;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v60 = v45;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = _typeName(_:qualified:)();
    v66 = sub_100006B44(v64, v65, v83);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = [v60 error];
    if (v67)
    {
      v68 = v67;
      swift_getErrorValue();
      v69 = Error.localizedDescription.getter();
      v71 = v70;

      v84 = 0;
      v85 = 0xE000000000000000;
      *&v81[0] = v69;
      *(&v81[0] + 1) = v71;
      _print_unlocked<A, B>(_:_:)();

      v72 = v84;
      v73 = v85;
    }

    else
    {
      v73 = 0xE300000000000000;
      v72 = 7104878;
    }

    v74 = sub_100006B44(v72, v73, v83);

    *(v63 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s - Error fetching data from UTS %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  v84 = 0;
  v85 = 0xE000000000000000;
  v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v76 = [objc_opt_self() valueWithObject:v75 inContext:a1];
  result = swift_unknownObjectRelease();
  if (v76)
  {

LABEL_31:

    return v76;
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_10008F6F4(uint64_t a1, uint64_t a2)
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

  sub_100002BE4(&qword_100169580, qword_10010CDC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10008F768(uint64_t a1, unint64_t a2)
{
  sub_10003DC0C(a1, a2);
  v4 = sub_10008F810(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_10008F7D4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10008F810(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10003DBB8(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10008F6F4(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_10003DBB8(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10008F98C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_10008FB4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_10008FC28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TetsuoAppMainView()
{
  result = qword_10016E868;
  if (!qword_10016E868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008FD24()
{
  sub_100025958();
  if (v0 <= 0x3F)
  {
    sub_1000719BC();
    if (v1 <= 0x3F)
    {
      sub_10008FDF0();
      if (v2 <= 0x3F)
      {
        sub_10008FE48();
        if (v3 <= 0x3F)
        {
          sub_100071908();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10008FDF0()
{
  if (!qword_10016E878)
  {
    type metadata accessor for AppState();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E878);
    }
  }
}

void sub_10008FE48()
{
  if (!qword_10016E880)
  {
    sub_10000459C(&qword_100170710, &qword_10011A170);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E880);
    }
  }
}

uint64_t sub_10008FEC8()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    result = static UserDefaultUtilities.daemonUserDefaults.getter();
    if (!result)
    {
      return result;
    }

    v2 = result;
    static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100009908(v7, &qword_100169A38, &qword_10010D460);
      static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v2 BOOLForKey:v5];

      return v6 ^ 1;
    }

    memset(v7, 0, sizeof(v7));
    sub_100009908(v7, &qword_100169A38, &qword_10010D460);
  }

  return 0;
}

uint64_t sub_100090008@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  v2 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v4 = &v19 - v3;
  v5 = sub_100002BE4(&qword_10016E8C8, &qword_100115478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v19 = v1;
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
    swift_getKeyPath();
    v22 = v10;
    sub_100091DB0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    v11 = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v10) = v11[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI];

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }

    v12 = *(v9 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
    swift_getKeyPath();
    v22 = v12;
    v13 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *&v13[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel];

    if (v14)
    {
      type metadata accessor for AppDelegate();
      sub_100091DB0(&qword_10016A710, type metadata accessor for AppDelegate);
      v15 = EnvironmentObject.init()();
      *v8 = v14;
      v8[1] = v15;
      v8[2] = v16;
      swift_storeEnumTagMultiPayload();
      sub_100091894();
      sub_1000918E8();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
LABEL_5:
      sub_100090350(v4);
      sub_100091824(v4, v8);
      swift_storeEnumTagMultiPayload();
      sub_100091894();
      sub_1000918E8();
      _ConditionalContent<>.init(storage:)();
      return sub_1000919CC(v4);
    }
  }

  else
  {
    v18 = *(v19 + 24);
    type metadata accessor for SceneDelegate();
    sub_100091DB0(&qword_10016D538, type metadata accessor for SceneDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100090350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  started = type metadata accessor for JetStartUpCoordinator();
  v43 = *(started - 8);
  v44 = started;
  v8 = *(v43 + 64);
  __chkstk_darwin(started);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002BE4(&qword_10016E908, &qword_1001154E0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = *(v2 + 32);
  v22 = *(v2 + 40);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = v10;
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v40 + 8))(v13, v39);
  }

  type metadata accessor for AppState();
  sub_100091DB0(&qword_10016E910, type metadata accessor for AppState);
  Bindable<A>.init(wrappedValue:)();
  v24 = *v2;
  if (*v2)
  {
    v25 = v20;
    v26 = *(type metadata accessor for TetsuoAppMainView() + 28);
    v27 = v24;
    Binding.projectedValue.getter();
    v28 = v45;
    sub_1000F4BD8(v6, v45);

    sub_100009908(v6, &unk_100170700, &unk_1001153F0);
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v29 = *(v41 + 1);
    v30 = v29(v18, v14);
    v46 = v49;
    v47 = v50;
    v48 = v51;
    __chkstk_darwin(v30);
    *(&v38 - 2) = v28;
    *(&v38 - 1) = v2;
    v41 = v25;
    sub_100002BE4(&qword_10016E918, &qword_100115510);
    sub_100091A4C();
    sub_100012C48(&qword_10016E928, &qword_10016E918, &qword_100115510);
    v31 = v42;
    TabView.init<A>(selection:content:)();
    v32 = static Color.accentColor.getter();
    KeyPath = swift_getKeyPath();
    v49 = v32;

    v34 = AnyShapeStyle.init<A>(_:)();
    v29(v41, v14);

    v35 = (v31 + *(sub_100002BE4(&qword_10016E8C0, &qword_100115470) + 36));
    *v35 = KeyPath;
    v35[1] = v34;
    return (*(v43 + 8))(v45, v44);
  }

  else
  {
    v37 = *(v2 + 8);
    type metadata accessor for AppDelegate();
    sub_100091DB0(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000908F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v38 = a3;
  v4 = sub_100002BE4(&qword_10016E930, &qword_100115548);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v29 = &v29 - v6;
  v7 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v30 = &v29 - v9;
  v10 = sub_100002BE4(&qword_10016E940, &qword_100115558);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v35 = sub_100002BE4(&qword_10016E948, &qword_100115560);
  v33 = *(v35 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v35);
  v16 = &v29 - v15;
  v42 = 0;
  v39 = a1;
  sub_100002BE4(&qword_10016E950, &qword_100115568);
  sub_100002BE4(&qword_10016E958, &qword_100115570);
  sub_100091A4C();
  v17 = sub_10000459C(&qword_10016E960, &qword_100115578);
  v18 = sub_100091B00();
  v40 = v17;
  v41 = v18;
  v19 = 1;
  swift_getOpaqueTypeConformance2();
  sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570);
  Tab<>.init(value:content:label:)();
  v42 = 1;
  sub_100002BE4(&qword_10016E998, &qword_100115588);
  v20 = sub_10000459C(&qword_10016E9A0, &qword_100115590);
  v21 = sub_100091CC8();
  v40 = v20;
  v41 = v21;
  v22 = v13;
  v23 = v30;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  Tab<>.init(value:content:label:)();
  v25 = sub_10008FEC8();
  v26 = v32;
  if (v25)
  {
    LOBYTE(v40) = 2;
    sub_100091DF8();
    v27 = v29;
    Tab<>.init(value:content:label:)();
    (*(v24 + 32))(v23, v27, v26);
    v19 = 0;
  }

  (*(v24 + 56))(v23, v19, 1, v26);
  sub_100091414(v22, v23, v38);
  sub_100009908(v23, &qword_10016E938, &qword_100115550);
  (*(v36 + 8))(v22, v37);
  return (*(v33 + 8))(v16, v35);
}

uint64_t sub_100090E00(uint64_t a1)
{
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016E960, &qword_100115578);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 16))(v10, a1, started);
  v12 = &v10[*(type metadata accessor for DiscoveryFeedView() + 20)];
  v20 = 0;
  State.init(wrappedValue:)();
  v13 = *(&v19[0] + 1);
  *v12 = v19[0];
  *(v12 + 1) = v13;
  v14 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  *&v19[0] = v14;
  v16 = AnyShapeStyle.init<A>(_:)();
  v17 = &v10[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v16;
  memset(v19, 0, sizeof(v19));
  static AutomationSemantics.page(name:id:)();
  sub_100009908(v19, &qword_100169A38, &qword_10010D460);
  sub_100091B00();
  View.automationSemantics(_:)();
  (*(v3 + 8))(v6, v2);
  return sub_100009908(v10, &qword_10016E960, &qword_100115578);
}

uint64_t sub_100091084()
{
  v0 = type metadata accessor for AutomationSemantics();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016E9A0, &qword_100115590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_1000713E8(v14 - v7);
  v9 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  *&v14[0] = v9;
  v11 = AnyShapeStyle.init<A>(_:)();
  v12 = &v8[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = v11;
  memset(v14, 0, sizeof(v14));
  static AutomationSemantics.page(name:id:)();
  sub_100009908(v14, &qword_100169A38, &qword_10010D460);
  sub_100091CC8();
  View.automationSemantics(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_100009908(v8, &qword_10016E9A0, &qword_100115590);
}

__n128 sub_1000912AC@<Q0>(uint64_t a1@<X8>)
{
  sub_1000B6808(0, 2, v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100091334(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v9);

  sub_100012928();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100091414@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v36 = a3;
  v3 = sub_100002BE4(&qword_10016E930, &qword_100115548);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v31 = &v31 - v6;
  v7 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_100002BE4(&qword_10016E9C0, &qword_100115598);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  v35 = sub_100002BE4(&qword_10016E9C8, &qword_1001155A0);
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v35);
  v18 = &v31 - v17;
  v32 = sub_100002BE4(&qword_10016E9D0, &qword_1001155A8);
  v19 = *(v32 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v32);
  v22 = &v31 - v21;
  sub_100002BE4(&qword_10016E948, &qword_100115560);
  sub_100091E4C();
  dispatch thunk of TabContent._identifiedView.getter();
  sub_100002BE4(&qword_10016E940, &qword_100115558);
  sub_100091F54();
  dispatch thunk of TabContent._identifiedView.getter();
  sub_10009205C(v34, v10);
  v23 = 1;
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    v24 = v31;
    (*(v4 + 32))(v31, v10, v3);
    sub_10009213C();
    dispatch thunk of TabContent._identifiedView.getter();
    (*(v4 + 8))(v24, v3);
    v23 = 0;
  }

  v25 = sub_100002BE4(&qword_10016E9E8, &qword_1001155B0);
  (*(*(v25 - 8) + 56))(v14, v23, 1, v25);
  v26 = sub_100002BE4(&qword_10016E9F0, &unk_1001155B8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  v29 = v36;
  (*(v19 + 32))(v36, v22, v32);
  (*(v15 + 32))(v29 + v27, v18, v35);
  return sub_1000920CC(v14, v29 + v28);
}

uint64_t sub_100091824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100091894()
{
  result = qword_10016E8D8;
  if (!qword_10016E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E8D8);
  }

  return result;
}

unint64_t sub_1000918E8()
{
  result = qword_10016E8E0;
  if (!qword_10016E8E0)
  {
    sub_10000459C(&qword_10016E8C0, &qword_100115470);
    sub_100012C48(&qword_10016E8E8, &qword_10016E8F0, &qword_1001154A8);
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E8E0);
  }

  return result;
}

uint64_t sub_1000919CC(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E8C0, &qword_100115470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100091A4C()
{
  result = qword_10016E920;
  if (!qword_10016E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E920);
  }

  return result;
}

uint64_t sub_100091AA0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100091ACC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

unint64_t sub_100091B00()
{
  result = qword_10016E968;
  if (!qword_10016E968)
  {
    sub_10000459C(&qword_10016E960, &qword_100115578);
    sub_100091BB8();
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E968);
  }

  return result;
}

unint64_t sub_100091BB8()
{
  result = qword_10016E970;
  if (!qword_10016E970)
  {
    sub_10000459C(&qword_10016E978, &qword_100115580);
    sub_100091DB0(&qword_10016E980, type metadata accessor for DiscoveryFeedView);
    sub_100091C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E970);
  }

  return result;
}

unint64_t sub_100091C74()
{
  result = qword_10016E988;
  if (!qword_10016E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E988);
  }

  return result;
}

unint64_t sub_100091CC8()
{
  result = qword_10016E9A8;
  if (!qword_10016E9A8)
  {
    sub_10000459C(&qword_10016E9A0, &qword_100115590);
    sub_100091DB0(&qword_10016E9B0, type metadata accessor for DeviceTab);
    sub_100012C48(&qword_10016E8F8, &qword_10016E900, &qword_1001154B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9A8);
  }

  return result;
}

uint64_t sub_100091DB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100091DF8()
{
  result = qword_10016E9B8;
  if (!qword_10016E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9B8);
  }

  return result;
}

unint64_t sub_100091E4C()
{
  result = qword_10016E9D8;
  if (!qword_10016E9D8)
  {
    sub_10000459C(&qword_10016E948, &qword_100115560);
    sub_100091A4C();
    sub_10000459C(&qword_10016E960, &qword_100115578);
    sub_100091B00();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9D8);
  }

  return result;
}

unint64_t sub_100091F54()
{
  result = qword_10016E9E0;
  if (!qword_10016E9E0)
  {
    sub_10000459C(&qword_10016E940, &qword_100115558);
    sub_100091A4C();
    sub_10000459C(&qword_10016E9A0, &qword_100115590);
    sub_100091CC8();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9E0);
  }

  return result;
}

uint64_t sub_10009205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E938, &qword_100115550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000920CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016E9C0, &qword_100115598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009213C()
{
  result = qword_10016E9F8;
  if (!qword_10016E9F8)
  {
    sub_10000459C(&qword_10016E930, &qword_100115548);
    sub_100091A4C();
    sub_100091DF8();
    sub_100012C48(&qword_10016E990, &qword_10016E958, &qword_100115570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E9F8);
  }

  return result;
}

unint64_t sub_10009220C()
{
  result = qword_10016EA00;
  if (!qword_10016EA00)
  {
    sub_10000459C(&qword_10016EA08, &qword_1001155C8);
    sub_100091894();
    sub_1000918E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA00);
  }

  return result;
}

__n128 sub_10009229C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000922B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000922F8(uint64_t result, int a2, int a3)
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

uint64_t sub_100092364@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  sub_100012928();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v28 = a1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      static Font.largeTitle.getter();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (a1 == 2)
  {
LABEL_5:
    static Font.title2.getter();
    goto LABEL_7;
  }

  static Font.footnote.getter();
LABEL_7:
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10001297C(v4, v6, v8 & 1);

  if (v28 == 3)
  {
    static Font.Weight.light.getter();
  }

  else if (v28 == 2)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  v14 = Text.fontWeight(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10001297C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v22 = static Edge.Set.top.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = 0;
  return result;
}

double sub_100092530@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = static HorizontalAlignment.leading.getter();
  v19 = 1;
  sub_100092364(v5, &v13);
  v22 = v15;
  v23 = v16;
  v24[0] = v17[0];
  *(v24 + 9) = *(v17 + 9);
  v20 = v13;
  v21 = v14;
  *(v26 + 9) = *(v17 + 9);
  v25[2] = v15;
  v25[3] = v16;
  v26[0] = v17[0];
  v25[0] = v13;
  v25[1] = v14;
  sub_100092664(&v20, &v12);
  sub_1000926D4(v25);
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24[0];
  *&v18[80] = *(v24 + 9);
  *&v18[7] = v20;
  *&v18[23] = v21;
  v7 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v7;
  v8 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v8;
  result = *&v18[16];
  v10 = *v18;
  *(a1 + 33) = *&v18[16];
  v11 = v19;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 17) = v10;
  return result;
}

uint64_t sub_100092664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016EA10, &qword_100115660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000926D4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016EA10, &qword_100115660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100092758()
{
  result = qword_10016EA18;
  if (!qword_10016EA18)
  {
    sub_10000459C(&qword_10016EA20, qword_1001156C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA18);
  }

  return result;
}

unint64_t sub_1000927C0()
{
  result = qword_10016EA28;
  if (!qword_10016EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EA28);
  }

  return result;
}

uint64_t sub_100092828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000928A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EpicShowcaseView()
{
  result = qword_10016EA90;
  if (!qword_10016EA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100092964()
{
  result = type metadata accessor for EpicShowcaseComponentModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000929EC()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  qword_10016EA30 = v0;
  return result;
}

uint64_t sub_100092A34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v28 = type metadata accessor for _Glass();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoundedRectangle();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100002BE4(&qword_10016EAC8, &qword_100115798);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v27 - v13);
  *v14 = static Alignment.center.getter();
  v14[1] = v15;
  v16 = v14 + *(sub_100002BE4(&qword_10016EAD0, &qword_1001157A0) + 44);
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = sub_100002BE4(&qword_10016EAD8, &qword_1001157A8);
  sub_10009340C(v2, &v16[*(v17 + 44)]);
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = v14 + *(v11 + 36);
  sub_100092D3C(v2, v21);
  v22 = (v21 + *(sub_100002BE4(&qword_10016EAE0, &qword_1001157B0) + 36));
  *v22 = v18;
  v22[1] = v20;
  v23 = *(v7 + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  (*(*(v25 - 8) + 104))(&v10->i8[v23], v24, v25);
  *v10 = vdupq_n_s64(0x4040000000000000uLL);
  static _Glass.regular.getter();
  sub_100096DE0();
  sub_100097900(&qword_10016B858, &type metadata accessor for RoundedRectangle);
  View._glassEffect<A>(_:in:)();
  (*(v3 + 8))(v6, v28);
  sub_100096EC4(v10, &type metadata accessor for RoundedRectangle);
  return sub_100009908(v14, &qword_10016EAC8, &qword_100115798);
}

uint64_t sub_100092D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[0] = type metadata accessor for AutomationSemantics();
  v8 = *(v23[0] - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23[0]);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_10016EB08, &unk_1001157C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  sub_100093018(a1, v23 - v14);
  v16 = (a1 + *(type metadata accessor for EpicShowcaseComponentModel() + 36));
  v17 = v16[1];
  *v7 = *v16;
  v7[1] = v17;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v18 = *(v4 + 72);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10010D3B0;
  sub_100097044(v7, v20 + v19, type metadata accessor for AutomationUtilities.AutomationAttributeType);

  sub_1000FCC48(1u, v20, v11);
  swift_setDeallocating();
  v21 = *(v20 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100096EC4(v7, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100096F24();
  View.automationSemantics(_:)();
  (*(v8 + 8))(v11, v23[0]);
  return sub_100009908(v15, &qword_10016EB08, &unk_1001157C0);
}

uint64_t sub_100093018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EpicShowcaseView();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002BE4(&qword_10016EB20, &unk_1001157D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for EpicShowcaseComponentModel();
  memcpy(v32, (a1 + *(v18 + 44)), 0x150uLL);
  v19 = sub_100096FD4(v32);
  v20 = 1;
  if (v19 != 1 && v32[28])
  {
    v26 = v6;
    v27 = v10;
    sub_100096FF8();
    v28 = a2;
    sub_10000C178(&v32[24], &v31, &qword_10016EB30, &qword_1001157E0);
    static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();
    v6 = v26;
    sub_100009908(&v32[24], &qword_10016EB30, &qword_1001157E0);
    sub_100097044(v30, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpicShowcaseView);
    v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v22 = swift_allocObject();
    sub_1000972E4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_10000C178(v17, v15, &qword_10016BA40, &qword_100110FC0);
    v23 = swift_allocObject();
    v23[2] = sub_100096654;
    v23[3] = 0;
    v23[4] = sub_100097348;
    v23[5] = v22;
    sub_100002BE4(&qword_10016EB38, &qword_1001157E8);
    sub_100097840();
    v24 = v27;
    a2 = v28;
    AsyncImage.init(url:scale:transaction:content:)();
    sub_100009908(v17, &qword_10016BA40, &qword_100110FC0);
    (*(v7 + 32))(a2, v24, v6);
    v20 = 0;
  }

  return (*(v7 + 56))(a2, v20, 1, v6);
}

uint64_t sub_10009340C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v60 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v3 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v5 = &v55 - v4;
  v6 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = sub_100002BE4(&qword_10016EB58, &qword_100115800);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v56 = sub_100002BE4(&qword_10016EB60, &qword_100115808);
  v18 = *(v56 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v56);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v58 = &v55 - v22;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = sub_100002BE4(&qword_10016EB68, &qword_100115810);
  sub_100093A54(a1, &v17[*(v23 + 44)]);
  v24 = static Edge.Set.horizontal.getter();
  v25 = &v17[*(sub_100002BE4(&qword_10016EB70, &qword_100115818) + 36)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  v26 = static Alignment.center.getter();
  v62 = v27;
  v63 = v26;
  v57 = v14;
  v28 = &v17[*(v14 + 36)];
  *v28 = static HorizontalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = &v28[*(sub_100002BE4(&qword_10016B968, &qword_100110EB0) + 44)];
  static Material.thin.getter();
  *&v13[*(sub_100002BE4(&qword_10016B970, &qword_100110EB8) + 56)] = 256;
  *&v13[*(sub_100002BE4(&qword_10016B978, &qword_100110EC0) + 36)] = 0x4004000000000000;
  *&v13[*(v7 + 44)] = 256;
  sub_10000C178(v13, v11, &qword_10016B958, &qword_100110EA0);
  *v29 = 0;
  v29[8] = 1;
  v30 = sub_100002BE4(&qword_10016B980, &qword_100110EC8);
  sub_10000C178(v11, &v29[*(v30 + 48)], &qword_10016B958, &qword_100110EA0);
  sub_100009908(v13, &qword_10016B958, &qword_100110EA0);
  sub_100009908(v11, &qword_10016B958, &qword_100110EA0);
  LOBYTE(v13) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v28[*(sub_100002BE4(&qword_10016B988, &qword_100110ED0) + 36)];
  *v39 = v13;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = &v28[*(sub_100002BE4(&qword_10016B960, &qword_100110EA8) + 36)];
  v64 = 0;
  State.init(wrappedValue:)();
  v41 = v66;
  *v40 = v65;
  *(v40 + 1) = v41;
  v42 = *(type metadata accessor for BlurViewFadeModifier() + 20);
  *&v40[v42] = swift_getKeyPath();
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  swift_storeEnumTagMultiPayload();
  v43 = &v28[*(sub_100002BE4(&qword_10016EB78, &qword_100115858) + 36)];
  v44 = v62;
  *v43 = v63;
  v43[1] = v44;
  v45 = enum case for DynamicTypeSize.accessibility2(_:);
  v46 = type metadata accessor for DynamicTypeSize();
  (*(*(v46 - 8) + 104))(v5, v45, v46);
  sub_100097900(&qword_100169A78, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100097948();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    v48 = v58;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v5, &qword_100169A10, &qword_10010D450);
    sub_100009908(v17, &qword_10016EB58, &qword_100115800);
    v49 = v18[2];
    v50 = v59;
    v51 = v56;
    v49(v59, v48, v56);
    v52 = v61;
    *v61 = 0;
    *(v52 + 8) = 1;
    v53 = sub_100002BE4(&qword_10016EBA8, &qword_100115868);
    v49(v52 + *(v53 + 48), v50, v51);
    v54 = v18[1];
    v54(v48, v51);
    return (v54)(v50, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100093A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_100002BE4(&qword_10016EBB0, &qword_100115870);
  v3 = *(v76 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v76);
  v6 = &v74 - v5;
  v7 = sub_100002BE4(&qword_10016EBB8, &qword_100115878);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v81 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v80 = &v74 - v12;
  v13 = __chkstk_darwin(v11);
  v88 = &v74 - v14;
  __chkstk_darwin(v13);
  v87 = &v74 - v15;
  v16 = sub_100002BE4(&qword_10016EBC0, &qword_100115880);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v74 - v20;
  v22 = sub_100002BE4(&qword_10016EBC8, &qword_100115888);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v77 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v74 - v26;
  v28 = type metadata accessor for EpicShowcaseComponentModel();
  v29 = (a1 + v28[13]);
  v86 = v29[1];
  if (v86)
  {
    v85 = *v29;
    v84 = static VerticalAlignment.center.getter();

    v30 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    LOBYTE(v95[0]) = 0;
    LOBYTE(v89) = 0;
    v82 = 0;
    v83 = v30;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v82 = 0;
    v32 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
  }

  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v39 = sub_100002BE4(&qword_10016EBD0, &qword_100115890);
  v40 = v27;
  sub_10009425C(a1, &v27[*(v39 + 44)]);
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v41 = sub_100002BE4(&qword_10016EBD8, &qword_100115898);
  sub_1000949AC(a1, &v21[*(v41 + 44)]);
  v42 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v43 = v21;
  v44 = &v21[*(v16 + 36)];
  *v44 = v42;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = (a1 + v28[6]);
  if (v49[1])
  {
    v50 = *v49;
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v51 = sub_100002BE4(&qword_10016EBF0, &qword_1001158B0);
    sub_100095A78(a1, &v6[*(v51 + 44)]);
    v52 = v87;
    sub_100097AB8(v6, v87);
    v53 = 0;
  }

  else
  {
    v53 = 1;
    v52 = v87;
  }

  v54 = v76;
  v55 = *(v3 + 56);
  v56 = 1;
  v55(v52, v53, 1, v76);
  v57 = (a1 + v28[7]);
  if (v57[1])
  {
    v58 = *v57;
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v59 = sub_100002BE4(&qword_10016EBF0, &qword_1001158B0);
    sub_100096030(&v6[*(v59 + 44)]);
    v60 = v88;
    sub_100097AB8(v6, v88);
    v56 = 0;
  }

  else
  {
    v60 = v88;
  }

  v55(v60, v56, 1, v54);
  v75 = v40;
  v61 = v40;
  v62 = v77;
  sub_10000C178(v61, v77, &qword_10016EBC8, &qword_100115888);
  v63 = v43;
  v64 = v79;
  sub_10000C178(v43, v79, &qword_10016EBC0, &qword_100115880);
  v65 = v87;
  v66 = v80;
  sub_10000C178(v87, v80, &qword_10016EBB8, &qword_100115878);
  v67 = v60;
  v68 = v81;
  sub_10000C178(v67, v81, &qword_10016EBB8, &qword_100115878);
  v89 = v84;
  *&v90 = v82;
  *(&v90 + 1) = v85;
  *&v91 = v86;
  *(&v91 + 1) = v83;
  *&v92 = v32;
  *(&v92 + 1) = v34;
  *&v93 = v36;
  *(&v93 + 1) = v38;
  v94 = 0;
  v69 = v78;
  *(v78 + 80) = 0;
  v70 = v92;
  v69[2] = v91;
  v69[3] = v70;
  v69[4] = v93;
  v71 = v90;
  *v69 = v89;
  v69[1] = v71;
  v72 = sub_100002BE4(&qword_10016EBE0, &qword_1001158A0);
  sub_10000C178(v62, v69 + v72[12], &qword_10016EBC8, &qword_100115888);
  sub_10000C178(v64, v69 + v72[16], &qword_10016EBC0, &qword_100115880);
  sub_10000C178(v66, v69 + v72[20], &qword_10016EBB8, &qword_100115878);
  sub_10000C178(v68, v69 + v72[24], &qword_10016EBB8, &qword_100115878);
  sub_10000C178(&v89, v95, &qword_10016EBE8, &qword_1001158A8);
  sub_100009908(v88, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v65, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v63, &qword_10016EBC0, &qword_100115880);
  sub_100009908(v75, &qword_10016EBC8, &qword_100115888);
  sub_100009908(v68, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v66, &qword_10016EBB8, &qword_100115878);
  sub_100009908(v64, &qword_10016EBC0, &qword_100115880);
  sub_100009908(v62, &qword_10016EBC8, &qword_100115888);
  v95[0] = v84;
  v95[1] = 0;
  v95[2] = v82;
  v95[3] = v85;
  v95[4] = v86;
  v95[5] = v83;
  v95[6] = v32;
  v95[7] = v34;
  v95[8] = v36;
  v95[9] = v38;
  v96 = 0;
  return sub_100009908(v95, &qword_10016EBE8, &qword_1001158A8);
}

uint64_t sub_10009425C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v34 = type metadata accessor for AutomationSemantics();
  v33 = *(v34 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016ED20, &qword_1001159A8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100002BE4(&qword_10016ED28, &qword_1001159B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = sub_100002BE4(&qword_10016ED30, &qword_1001159B8);
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  sub_100094694(v32, v9);
  v22 = &v9[*(v6 + 44)];
  *v22 = 0;
  *(v22 + 4) = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v9, v13, &qword_10016ED20, &qword_1001159A8);
  v23 = &v13[*(v10 + 36)];
  v24 = *(&v37[7] + 8);
  *(v23 + 4) = *(&v37[6] + 8);
  *(v23 + 5) = v24;
  *(v23 + 6) = *(&v37[8] + 8);
  v25 = *(&v37[3] + 8);
  *v23 = *(&v37[2] + 8);
  *(v23 + 1) = v25;
  v26 = *(&v37[5] + 8);
  *(v23 + 2) = *(&v37[4] + 8);
  *(v23 + 3) = v26;
  memset(v37, 0, 32);
  memset(v36, 0, sizeof(v36));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v36, &qword_100169A38, &qword_10010D460);
  sub_100009908(v37, &qword_100169A38, &qword_10010D460);
  sub_100098260();
  View.automationSemantics(_:)();
  (*(v33 + 8))(v4, v34);
  sub_100009908(v13, &qword_10016ED28, &qword_1001159B0);
  v27 = v15[2];
  v27(v19, v21, v14);
  v28 = v35;
  v27(v35, v19, v14);
  v29 = &v28[*(sub_100002BE4(&qword_10016ED68, &qword_1001159D0) + 48)];
  v30 = v15[1];
  v30(v21, v14);
  *v29 = 0;
  v29[8] = 0;
  return (v30)(v19, v14);
}

uint64_t sub_100094694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016ED60, &qword_1001159C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = type metadata accessor for EpicShowcaseComponentModel();
  memcpy(v23, (a1 + *(v16 + 44)), 0x150uLL);
  v17 = sub_100096FD4(v23);
  v18 = 1;
  if (v17 != 1 && v23[12])
  {
    sub_100096FF8();
    v21 = a2;
    sub_10000C178(&v23[8], &v22, &qword_10016EB30, &qword_1001157E0);
    static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();
    sub_100009908(&v23[8], &qword_10016EB30, &qword_1001157E0);
    sub_10000C178(v15, v13, &qword_10016BA40, &qword_100110FC0);
    v19 = swift_allocObject();
    v19[2] = sub_100096540;
    v19[3] = 0;
    v19[4] = FeatureEligibilityState.rawValue.getter;
    v19[5] = 0;
    sub_100002BE4(&qword_10016ED70, &qword_1001159D8);
    sub_1000984A0();
    a2 = v21;
    AsyncImage.init(url:scale:transaction:content:)();
    sub_100009908(v15, &qword_10016BA40, &qword_100110FC0);
    (*(v5 + 32))(a2, v8, v4);
    v18 = 0;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_1000949AC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v65 = a1;
  v75 = a2;
  v71 = sub_100002BE4(&qword_10016EC10, &qword_100115908);
  v3 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v5 = &v64 - v4;
  v74 = sub_100002BE4(&qword_10016EC38, &qword_100115918);
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  v7 = __chkstk_darwin(v74);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v64 - v9;
  v10 = type metadata accessor for AutomationSemantics();
  v67 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002BE4(&qword_10016EC40, &qword_100115920);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v70 = sub_100002BE4(&qword_10016EC48, &qword_100115928);
  v78 = *(v70 - 8);
  v19 = v78[8];
  v20 = __chkstk_darwin(v70);
  v69 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = &v64 - v22;
  sub_10009510C(a1, v18);
  v23 = v18 + *(sub_100002BE4(&qword_10016EC50, &qword_100115930) + 36);
  *v23 = 0;
  *(v23 + 8) = 1;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = (v18 + *(sub_100002BE4(&qword_10016EC58, &qword_100115938) + 36));
  v25 = v84;
  *v24 = v83;
  v24[1] = v25;
  v24[2] = v85;
  v26 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v27 = v18 + *(v15 + 36);
  *v27 = v26;
  *(v27 + 8) = v28;
  *(v27 + 16) = v29;
  *(v27 + 24) = v30;
  *(v27 + 32) = v31;
  *(v27 + 40) = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(&v79, &qword_100169A38, &qword_10010D460);
  sub_100009908(&v81, &qword_100169A38, &qword_10010D460);
  sub_100097D00();
  v64 = v14;
  View.automationSemantics(_:)();
  v32 = *(v11 + 8);
  v66 = v11 + 8;
  v68 = v32;
  v32(v14, v10);
  sub_100009908(v18, &qword_10016EC40, &qword_100115920);
  *&v81 = sub_100095860(v65);
  *(&v81 + 1) = v33;
  sub_100012928();
  v34 = Text.init<A>(_:)();
  v36 = v35;
  LOBYTE(v18) = v37;
  static Font.subheadline.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_10001297C(v34, v36, v18 & 1);

  v45 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v46 = enum case for BlendMode.plusLighter(_:);
  v47 = type metadata accessor for BlendMode();
  (*(*(v47 - 8) + 104))(&v5[v45], v46, v47);
  *v5 = v38;
  *(v5 + 1) = v40;
  v5[16] = v42 & 1;
  *(v5 + 3) = v44;
  KeyPath = swift_getKeyPath();
  v49 = &v5[*(v71 + 36)];
  *v49 = KeyPath;
  v49[8] = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v50 = v64;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(&v79, &qword_100169A38, &qword_10010D460);
  sub_100009908(&v81, &qword_100169A38, &qword_10010D460);
  sub_100097C48();
  v51 = v77;
  View.automationSemantics(_:)();
  v68(v50, v67);
  sub_100009908(v5, &qword_10016EC10, &qword_100115908);
  v52 = v78[2];
  v53 = v69;
  v54 = v70;
  v52(v69, v76, v70);
  v55 = v73;
  v56 = *(v73 + 16);
  v57 = v72;
  v58 = v74;
  v56(v72, v51, v74);
  v59 = v75;
  v52(v75, v53, v54);
  v60 = sub_100002BE4(&qword_10016ECD8, &qword_100115970);
  v56(&v59[*(v60 + 48)], v57, v58);
  v61 = *(v55 + 8);
  v61(v77, v58);
  v62 = v78[1];
  v62(v76, v54);
  v61(v57, v58);
  return (v62)(v53, v54);
}

uint64_t sub_10009510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016ECC0, &qword_100115960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v47 = sub_100002BE4(&qword_10016ECE8, &qword_100115978);
  v16 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v18 = &v44 - v17;
  v49 = sub_100002BE4(&qword_10016ECA0, &qword_100115950);
  v19 = *(v49 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v49);
  v48 = &v44 - v21;
  v22 = type metadata accessor for EpicShowcaseComponentModel();
  memcpy(v73, (a1 + *(v22 + 44)), 0x150uLL);
  if (sub_100096FD4(v73) == 1 || (v46 = v4, (v23 = v73[36]) == 0))
  {
    v39 = 1;
  }

  else
  {
    v45 = a2;
    v24 = v73[35];

    v25._countAndFlagsBits = 0x2F3A6C6F626D7973;
    v25._object = 0xE90000000000002FLL;
    if (String.hasPrefix(_:)(v25))
    {
      v26 = String.count.getter();
      sub_1000981B0(v26, v24, v23);

      v27 = static String._fromSubstring(_:)();
      v29 = v28;

      v30 = static Alignment.center.getter();
      v32 = v31;
      sub_100096838(v27, v29, &v51);
      v69 = v59;
      v70[0] = v60[0];
      *(v70 + 9) = *(v60 + 9);
      v65 = v55;
      v66 = v56;
      v67 = v57;
      v68 = v58;
      v61 = v51;
      v62 = v52;
      v63 = v53;
      v64 = v54;
      v71[8] = v59;
      v72[0] = v60[0];
      *(v72 + 9) = *(v60 + 9);
      v71[4] = v55;
      v71[5] = v56;
      v71[6] = v57;
      v71[7] = v58;
      v71[0] = v51;
      v71[1] = v52;
      v71[2] = v53;
      v71[3] = v54;
      sub_10000C178(&v61, &v50, &qword_10016ED00, &qword_100115988);
      sub_100009908(v71, &qword_10016ED00, &qword_100115988);

      *v18 = v30;
      *(v18 + 1) = v32;
      v33 = v70[0];
      *(v18 + 9) = v69;
      *(v18 + 10) = v33;
      *(v18 + 169) = *(v70 + 9);
      v34 = v66;
      *(v18 + 5) = v65;
      *(v18 + 6) = v34;
      v35 = v68;
      *(v18 + 7) = v67;
      *(v18 + 8) = v35;
      v36 = v62;
      *(v18 + 1) = v61;
      *(v18 + 2) = v36;
      v37 = v64;
      *(v18 + 3) = v63;
      *(v18 + 4) = v37;
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960);
      v38 = v48;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v40 = [objc_opt_self() mainScreen];
      [v40 nativeScale];

      sub_100096FF8();
      static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)();

      sub_10000C178(v15, v13, &qword_10016BA40, &qword_100110FC0);
      v41 = swift_allocObject();
      v41[2] = sub_100096CB0;
      v41[3] = 0;
      v41[4] = FeatureEligibilityState.rawValue.getter;
      v41[5] = 0;
      sub_100002BE4(&qword_10016ECF0, &qword_100115980);
      sub_100098124();
      AsyncImage.init(url:scale:transaction:content:)();
      v42 = v46;
      (*(v5 + 16))(v18, v8, v46);
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958);
      sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960);
      v38 = v48;
      _ConditionalContent<>.init(storage:)();
      (*(v5 + 8))(v8, v42);
      sub_100009908(v15, &qword_10016BA40, &qword_100110FC0);
    }

    a2 = v45;
    sub_10001D504(v38, v45, &qword_10016ECA0, &qword_100115950);
    v39 = 0;
  }

  return (*(v19 + 56))(a2, v39, 1, v49);
}

uint64_t sub_100095860(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel();
  v3 = (a1 + *(v2 + 48));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *v3;
  v6 = *(a1 + *(v2 + 56));
  if (!v6)
  {

    return v5;
  }

  v7 = *(v6 + 16);

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v6 - 16 + (v9 << 6);
  while (1)
  {
    if (v7 == v9)
    {
      sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10010D3B0;
      *(v17 + 32) = v5;
      *(v17 + 40) = v4;
      sub_1000DAF34(v10);
      sub_100002BE4(&qword_10016B430, &unk_1001107A0);
      sub_100012C48(&qword_10016ECE0, &qword_10016B430, &unk_1001107A0);
      v5 = BidirectionalCollection<>.joined(separator:)();

      return v5;
    }

    if (v9 >= *(v6 + 16))
    {
      break;
    }

    v12 = (v11 + 64);
    ++v9;
    v13 = *(v11 + 72);
    v11 += 64;
    if (v13)
    {
      v18 = *v12;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009094(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_100009094((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v15 + 1;
      v16 = &v10[16 * v15];
      *(v16 + 4) = v18;
      *(v16 + 5) = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100095A78@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v65 = a1;
  v71 = a2;
  v2 = type metadata accessor for AutomationSemantics();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  __chkstk_darwin(v2);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016EBF8, &qword_1001158B8);
  v6 = *(v5 - 8);
  v60 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v60 - v8;
  v62 = sub_100002BE4(&qword_10016EC00, &qword_1001158C0);
  v10 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v60 - v11;
  v12 = sub_100002BE4(&qword_10016EC08, &qword_1001158C8);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  v14 = __chkstk_darwin(v12);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v60 - v16;

  static Font.footnote.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  static Color.white.getter();
  v22 = Color.opacity(_:)();

  *&v73[0] = v22;
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10001297C(v17, v19, v21 & 1);

  v30 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v31 = enum case for BlendMode.plusLighter(_:);
  v32 = type metadata accessor for BlendMode();
  (*(*(v32 - 8) + 104))(&v9[v30], v31, v32);
  *v9 = v23;
  *(v9 + 1) = v25;
  v9[16] = v27 & 1;
  *(v9 + 3) = v29;
  KeyPath = swift_getKeyPath();
  v34 = &v9[*(sub_100002BE4(&qword_10016EC10, &qword_100115908) + 36)];
  *v34 = KeyPath;
  v34[8] = 0;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = &v9[*(v60 + 44)];
  *v35 = KeyPath;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  *(v65 + *(type metadata accessor for EpicShowcaseComponentModel() + 28) + 8);
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v61;
  sub_10001D504(v9, v61, &qword_10016EBF8, &qword_1001158B8);
  v49 = v48 + *(v62 + 36);
  *v49 = KeyPath;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  memset(v73, 0, 32);
  memset(v72, 0, sizeof(v72));
  v50 = v68;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v72, &qword_100169A38, &qword_10010D460);
  sub_100009908(v73, &qword_100169A38, &qword_10010D460);
  sub_100097B30();
  v51 = v63;
  View.automationSemantics(_:)();
  (*(v69 + 8))(v50, v70);
  sub_100009908(v48, &qword_10016EC00, &qword_1001158C0);
  v53 = v66;
  v52 = v67;
  v54 = *(v66 + 16);
  v55 = v64;
  v54(v64, v51, v67);
  v56 = v71;
  v54(v71, v55, v52);
  v57 = &v56[*(sub_100002BE4(&qword_10016EC30, &qword_100115910) + 48)];
  v58 = *(v53 + 8);
  v58(v51, v52);
  *v57 = 0;
  v57[8] = 0;
  return (v58)(v55, v52);
}

uint64_t sub_100096030@<X0>(char *a1@<X8>)
{
  v59 = a1;
  v1 = type metadata accessor for AutomationSemantics();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100002BE4(&qword_10016EC00, &qword_1001158C0);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v6 = &v50 - v5;
  v7 = sub_100002BE4(&qword_10016EC08, &qword_1001158C8);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  v9 = __chkstk_darwin(v7);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v50 - v11;

  static Font.callout.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  static Font.Weight.medium.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  v21 = v20;
  sub_10001297C(v12, v14, v16 & 1);

  *&v61[0] = static Color.white.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10001297C(v17, v19, v21 & 1);

  v29 = *(sub_100002BE4(&qword_10016B9F8, &qword_1001158D0) + 36);
  v30 = enum case for BlendMode.plusLighter(_:);
  v31 = type metadata accessor for BlendMode();
  (*(*(v31 - 8) + 104))(&v6[v29], v30, v31);
  *v6 = v22;
  *(v6 + 1) = v24;
  v6[16] = v26 & 1;
  *(v6 + 3) = v28;
  KeyPath = swift_getKeyPath();
  v33 = &v6[*(sub_100002BE4(&qword_10016EC10, &qword_100115908) + 36)];
  *v33 = KeyPath;
  v33[8] = 0;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  v34 = &v6[*(sub_100002BE4(&qword_10016EBF8, &qword_1001158B8) + 36)];
  *v34 = KeyPath;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = &v6[*(v51 + 36)];
  *v35 = KeyPath;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  memset(v61, 0, 32);
  memset(v60, 0, sizeof(v60));
  v40 = v54;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v60, &qword_100169A38, &qword_10010D460);
  sub_100009908(v61, &qword_100169A38, &qword_10010D460);
  sub_100097B30();
  v41 = v52;
  View.automationSemantics(_:)();
  (*(v57 + 8))(v40, v58);
  sub_100009908(v6, &qword_10016EC00, &qword_1001158C0);
  v43 = v55;
  v42 = v56;
  v44 = *(v55 + 16);
  v45 = v53;
  v44(v53, v41, v56);
  v46 = v59;
  v44(v59, v45, v42);
  v47 = &v46[*(sub_100002BE4(&qword_10016EC30, &qword_100115910) + 48)];
  v48 = *(v43 + 8);
  v48(v41, v42);
  *v47 = 0;
  v47[8] = 0;
  return (v48)(v45, v42);
}

uint64_t sub_100096540@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_10009665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JoeColorType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpicShowcaseComponentModel();
  memcpy(v17, (a1 + *(v9 + 44)), sizeof(v17));
  if (sub_100096FD4(v17) == 1 || !*&v17[14])
  {
    v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    result = Color.init(_:)();
  }

  else
  {
    v13[4] = v17[12];
    v13[5] = v17[13];
    v14 = *&v17[14];
    v15 = *(&v17[14] + 8);
    v16 = *(&v17[15] + 1);
    (*(v5 + 104))(v8, enum case for JoeColorType.background(_:), v4);
    sub_10000C178(&v17[12], v13, &qword_10016EB30, &qword_1001157E0);
    v10 = sub_1000EC004(v8);
    sub_100009908(&v17[12], &qword_10016EB30, &qword_1001157E0);
    (*(v5 + 8))(v8, v4);
    result = v10;
  }

  *a2 = result;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_100096838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v37[0] = a1;
  v37[1] = a2;
  v38 = type metadata accessor for Image.ResizingMode();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = static Color.black.getter();
  if (qword_100168F80 != -1)
  {
    swift_once();
  }

  v8 = qword_10016EA30;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = v53;
  v11 = v54;
  v10 = v55;
  v12 = v56;
  v13 = v57;
  v14 = v58;

  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = static Alignment.center.getter();
  *&v59 = v9;
  *(&v59 + 1) = __PAIR64__(v10, v11);
  *&v60 = v12;
  *(&v60 + 1) = v13;
  *&v61 = v14;
  *(&v61 + 1) = v8;
  LOWORD(v62) = 256;
  *(&v62 + 1) = v15;
  *&v63 = v17;
  *(&v63 + 1) = v18;
  v64 = v19;
  v82 = v19;
  v79 = v61;
  v80 = v62;
  v81 = v63;
  v77 = v59;
  v78 = v60;
  v65 = v9;
  v66 = v11;
  v67 = v10;
  v68 = v12;
  v69 = v13;
  v70 = v14;
  v71 = v8;
  v72 = 256;
  v73 = v15;
  v74 = v17;
  v75 = v18;
  v76 = v19;
  sub_10000C178(&v59, &v100, &qword_10016ED08, &qword_100115990);
  sub_100009908(&v65, &qword_10016ED08, &qword_100115990);

  Image.init(systemName:)();
  v20 = v38;
  (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v38);
  v21 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v7, v20);
  v22 = static Color.white.getter();
  v23 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v100) = 1;
  *(v83 + 8) = v77;
  *(&v83[3] + 8) = v80;
  *(&v83[2] + 8) = v79;
  *(&v83[4] + 8) = v81;
  v24 = v39;
  *&v83[0] = v39;
  *(&v83[5] + 1) = v82;
  *(&v83[1] + 8) = v78;
  v40 = v83[0];
  v41 = v83[1];
  v44 = v83[4];
  v45 = v83[5];
  v42 = v83[2];
  v43 = v83[3];
  v84[0] = v21;
  v84[1] = 0;
  LOWORD(v85) = 1;
  WORD3(v85) = v52;
  *(&v85 + 2) = v51;
  *(&v85 + 1) = v22;
  LOBYTE(v86) = v23;
  DWORD1(v86) = *&v50[3];
  *(&v86 + 1) = *v50;
  *(&v86 + 1) = v25;
  *&v87[0] = v26;
  *(&v87[0] + 1) = v27;
  *&v87[1] = v28;
  BYTE8(v87[1]) = 0;
  *&v49[9] = *(v87 + 9);
  v48 = v86;
  *v49 = v87[0];
  v46 = v21;
  v47 = v85;
  v29 = v83[1];
  *a3 = v83[0];
  a3[1] = v29;
  v30 = v42;
  v31 = v43;
  v32 = v45;
  a3[4] = v44;
  a3[5] = v32;
  a3[2] = v30;
  a3[3] = v31;
  v33 = v46;
  v34 = v47;
  *(a3 + 153) = *&v49[9];
  v35 = *v49;
  a3[8] = v48;
  a3[9] = v35;
  a3[6] = v33;
  a3[7] = v34;
  v88[0] = v21;
  v88[1] = 0;
  v89 = 1;
  v90 = v51;
  v91 = v52;
  v92 = v22;
  v93 = v23;
  *v94 = *v50;
  *&v94[3] = *&v50[3];
  v95 = v25;
  v96 = v26;
  v97 = v27;
  v98 = v28;
  v99 = 0;
  sub_10000C178(v83, &v100, &qword_10016ED10, &qword_100115998);
  sub_10000C178(v84, &v100, &qword_10016ED18, &qword_1001159A0);
  sub_100009908(v88, &qword_10016ED18, &qword_1001159A0);
  v103 = v79;
  v104 = v80;
  v105 = v81;
  v100 = v24;
  v106 = v82;
  v101 = v77;
  v102 = v78;
  return sub_100009908(&v100, &qword_10016ED10, &qword_100115998);
}

uint64_t sub_100096CB8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = a1;
  return result;
}

unint64_t sub_100096DE0()
{
  result = qword_10016EAE8;
  if (!qword_10016EAE8)
  {
    sub_10000459C(&qword_10016EAC8, &qword_100115798);
    sub_100012C48(&qword_10016EAF0, &qword_10016EAF8, &qword_1001157B8);
    sub_100012C48(&qword_10016EB00, &qword_10016EAE0, &qword_1001157B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EAE8);
  }

  return result;
}

uint64_t sub_100096EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100096F24()
{
  result = qword_10016EB10;
  if (!qword_10016EB10)
  {
    sub_10000459C(&qword_10016EB08, &unk_1001157C0);
    sub_100012C48(&qword_10016EB18, &qword_10016EB20, &unk_1001157D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB10);
  }

  return result;
}

uint64_t sub_100096FD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100096FF8()
{
  result = qword_10016EB28;
  if (!qword_10016EB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016EB28);
  }

  return result;
}

uint64_t sub_100097044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000970AC()
{
  v1 = *(type metadata accessor for EpicShowcaseView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = type metadata accessor for EpicShowcaseComponentModel();
  v7 = v6[5];
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v6[6] + 8);

  v11 = *(v5 + v6[7] + 8);

  v12 = *(v5 + v6[8] + 8);

  v13 = *(v5 + v6[9] + 8);

  v14 = *(v5 + v6[10] + 8);

  v15 = (v5 + v6[11]);
  v16 = v15[4];
  if (v16)
  {
    if (v16 == 1)
    {
      goto LABEL_13;
    }

    v17 = v15[7];
  }

  if (v15[12])
  {

    v18 = v15[15];
  }

  if (v15[20])
  {

    v19 = v15[23];
  }

  if (v15[28])
  {

    v20 = v15[31];
  }

  v21 = v15[36];

  v22 = v15[41];

LABEL_13:
  v23 = *(v5 + v6[12] + 8);

  v24 = *(v5 + v6[13] + 8);

  v25 = *(v5 + v6[14]);

  v26 = (v5 + v6[15]);
  if (v26[3])
  {
    sub_1000052E4(v26);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000972E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097348@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpicShowcaseView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009665C(v4, a1);
}

uint64_t sub_1000973B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100002BE4(&qword_10016EB50, &qword_1001157F8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4(&v7);
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100002BE4(&qword_10016EB50, &qword_1001157F8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8);
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

uint64_t sub_1000975C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4();
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

uint64_t sub_1000976CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (AsyncImagePhase.image.getter())
  {
    a2(&v7);
    swift_retain_n();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4();
    sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    _ConditionalContent<>.init(storage:)();
  }

  return v7;
}

unint64_t sub_100097840()
{
  result = qword_10016EB40;
  if (!qword_10016EB40)
  {
    sub_10000459C(&qword_10016EB38, &qword_1001157E8);
    sub_100043F28();
    sub_100012C48(&qword_10016EB48, &qword_10016EB50, &qword_1001157F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB40);
  }

  return result;
}

uint64_t sub_100097900(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100097948()
{
  result = qword_10016EB80;
  if (!qword_10016EB80)
  {
    sub_10000459C(&qword_10016EB58, &qword_100115800);
    sub_100097A00();
    sub_100012C48(&qword_10016EBA0, &qword_10016EB78, &qword_100115858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB80);
  }

  return result;
}

unint64_t sub_100097A00()
{
  result = qword_10016EB88;
  if (!qword_10016EB88)
  {
    sub_10000459C(&qword_10016EB70, &qword_100115818);
    sub_100012C48(&qword_10016EB90, &qword_10016EB98, &qword_100115860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EB88);
  }

  return result;
}

uint64_t sub_100097AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016EBB0, &qword_100115870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100097B30()
{
  result = qword_10016EC18;
  if (!qword_10016EC18)
  {
    sub_10000459C(&qword_10016EC00, &qword_1001158C0);
    sub_100097BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC18);
  }

  return result;
}

unint64_t sub_100097BBC()
{
  result = qword_10016EC20;
  if (!qword_10016EC20)
  {
    sub_10000459C(&qword_10016EBF8, &qword_1001158B8);
    sub_100097C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC20);
  }

  return result;
}

unint64_t sub_100097C48()
{
  result = qword_10016EC28;
  if (!qword_10016EC28)
  {
    sub_10000459C(&qword_10016EC10, &qword_100115908);
    sub_100044A48();
    sub_100012C48(&qword_10016A3A0, &qword_10016A3A8, &unk_10010F358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC28);
  }

  return result;
}

unint64_t sub_100097D00()
{
  result = qword_10016EC60;
  if (!qword_10016EC60)
  {
    sub_10000459C(&qword_10016EC40, &qword_100115920);
    sub_100097D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC60);
  }

  return result;
}

unint64_t sub_100097D8C()
{
  result = qword_10016EC68;
  if (!qword_10016EC68)
  {
    sub_10000459C(&qword_10016EC58, &qword_100115938);
    sub_100097E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC68);
  }

  return result;
}

unint64_t sub_100097E18()
{
  result = qword_10016EC70;
  if (!qword_10016EC70)
  {
    sub_10000459C(&qword_10016EC50, &qword_100115930);
    sub_100097EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC70);
  }

  return result;
}

unint64_t sub_100097EA4()
{
  result = qword_10016EC78;
  if (!qword_10016EC78)
  {
    sub_10000459C(&qword_10016EC80, &qword_100115940);
    sub_100097F5C();
    sub_100012C48(&qword_10016ECC8, &qword_10016ECD0, &qword_100115968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC78);
  }

  return result;
}

unint64_t sub_100097F5C()
{
  result = qword_10016EC88;
  if (!qword_10016EC88)
  {
    sub_10000459C(&qword_10016EC90, &qword_100115948);
    sub_100097FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC88);
  }

  return result;
}

unint64_t sub_100097FE0()
{
  result = qword_10016EC98;
  if (!qword_10016EC98)
  {
    sub_10000459C(&qword_10016ECA0, &qword_100115950);
    sub_100012C48(&qword_10016ECA8, &qword_10016ECB0, &qword_100115958);
    sub_100012C48(&qword_10016ECB8, &qword_10016ECC0, &qword_100115960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016EC98);
  }

  return result;
}

uint64_t sub_1000980E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4], v3[5]);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8 & 1;
  return result;
}

unint64_t sub_100098124()
{
  result = qword_10016ECF8;
  if (!qword_10016ECF8)
  {
    sub_10000459C(&qword_10016ECF0, &qword_100115980);
    sub_100043F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ECF8);
  }

  return result;
}

uint64_t sub_1000981B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_100098260()
{
  result = qword_10016ED38;
  if (!qword_10016ED38)
  {
    sub_10000459C(&qword_10016ED28, &qword_1001159B0);
    sub_1000982EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED38);
  }

  return result;
}

unint64_t sub_1000982EC()
{
  result = qword_10016ED40;
  if (!qword_10016ED40)
  {
    sub_10000459C(&qword_10016ED20, &qword_1001159A8);
    sub_100098378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED40);
  }

  return result;
}

unint64_t sub_100098378()
{
  result = qword_10016ED48;
  if (!qword_10016ED48)
  {
    sub_10000459C(&qword_10016ED50, &qword_1001159C0);
    sub_100012C48(&qword_10016ED58, &qword_10016ED60, &qword_1001159C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED48);
  }

  return result;
}

uint64_t sub_100098428()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100098468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  result = sub_1000975C0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1000984A0()
{
  result = qword_10016ED78;
  if (!qword_10016ED78)
  {
    sub_10000459C(&qword_10016ED70, &qword_1001159D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ED78);
  }

  return result;
}

uint64_t sub_100098524()
{
  sub_10000459C(&qword_10016EAC8, &qword_100115798);
  type metadata accessor for RoundedRectangle();
  sub_100096DE0();
  sub_100097900(&qword_10016B858, &type metadata accessor for RoundedRectangle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000985E0()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

id sub_100098678()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [objc_opt_self() listeningForAlternateBonjourBrowsing];
}

uint64_t sub_1000986F8(char a1)
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000AAC58(a1 & 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000987F8()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [objc_opt_self() getAdvertisingAccessMode];
}

id sub_100098878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [objc_opt_self() getAdvertisingAccessMode];
  *a2 = result;
  return result;
}

uint64_t sub_100098904(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  sub_100099F88();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1000989B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = 0;
  v3 = [objc_opt_self() setAdvertisingAccessMode:a1 withError:&v7];
  v4 = v3;
  if (v3)
  {
    result = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *a2 = v4 ^ 1;
  return result;
}

uint64_t sub_100098A88()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 64;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  HIDWORD(v25) = noErr.getter();
  v6 = String._bridgeToObjectiveC()();
  APSSettingsGetCString();

  v7 = HIDWORD(v25);
  if (v7 == noErr.getter())
  {

    v9 = sub_100099F20(v8);
    v11 = v10;

    v26[0] = v9;
    v26[1] = v11;

    static CharacterSet.whitespaces.getter();
    sub_100012928();
    v12 = StringProtocol.trimmingCharacters(in:)();
    v14 = v13;
    (*(v1 + 8))(v4, v0);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v9;
    }
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100181F88);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100006B44(v22, v23, v26);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Could not get AirPlay Receiver password", v20, 0xCu);
      sub_1000052E4(v21);
    }
  }

  return 0;
}

uint64_t sub_100098DCC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_100098E4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_100098EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100098F08(v2, v3);
}

uint64_t sub_100098F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (v6 = *(v2 + 48), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100099038()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

uint64_t sub_1000990A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_100099148(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100099228()
{
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 57);
}

uint64_t sub_100099298@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_100099338(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

BOOL sub_100099420()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = sub_100098A88();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

BOOL sub_1000994EC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100099420();
  *a2 = result;
  return result;
}

uint64_t sub_100099544(char a1)
{
  if (a1)
  {
    if (*(v1 + 57) == 1)
    {
      *(v1 + 57) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100099F88();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v1 + 56) == 1)
    {
      *(v1 + 56) = 1;
    }

    else
    {
      v3 = swift_getKeyPath();
      __chkstk_darwin(v3);
      sub_100099F88();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_getKeyPath();
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_100099744()
{
  sub_100098F08(0, 0xE000000000000000);
  v0 = String._bridgeToObjectiveC()();
  APSSettingsRemoveValue();

  v1 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();

  v2 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();
}

uint64_t sub_100099804()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = sub_100098A88();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000998AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_1000999AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = String._bridgeToObjectiveC()();
  v16 = a1;
  v17 = a2;
  static String.Encoding.utf8.getter();
  sub_100012928();
  StringProtocol.cString(using:)();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v16 = a1;
  v17 = a2;
  static String.Encoding.utf8.getter();
  StringProtocol.lengthOfBytes(using:)();
  v9(v8, v4);
  v10 = v15;
  APSSettingsSetCString();

  v11 = String._bridgeToObjectiveC()();
  v12 = kCFBooleanFalse;
  APSSettingsSetValue();

  v13 = String._bridgeToObjectiveC()();
  APSSettingsSetValue();
}

uint64_t sub_100099BB0()
{
  v1 = v0;
  if (*(v0 + 57))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100099F88();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 57) = 0;
  }

  swift_getKeyPath();
  sub_100099F88();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 40);
  v4 = *(v1 + 48);

  return sub_1000998AC(v3, v4);
}

uint64_t sub_100099CE0()
{
  sub_1000319E0((v0 + 16));
  v1 = *(v0 + 6);

  v2 = OBJC_IVAR____TtC17AppleVisionProApp28AirplayReceiverSettingsState___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirplayReceiverSettingsState()
{
  result = qword_10016EDB0;
  if (!qword_10016EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100099DE0()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100099EA0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  type metadata accessor for AirplayReceiverSettingsState();
  v1 = sub_100098A88();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v4 = v2;
  }

  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 56) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100099F20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100099F88()
{
  result = qword_10016F028;
  if (!qword_10016F028)
  {
    type metadata accessor for AirplayReceiverSettingsState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F028);
  }

  return result;
}

uint64_t sub_10009A01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100099804();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10009A060(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

BOOL sub_10009A0C4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100099420();
  *a2 = result;
  return result;
}

uint64_t sub_10009A174()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

id sub_10009A444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreProductViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009A4BC(uint64_t a1)
{
  v2 = sub_10009A728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009A4F8(uint64_t a1)
{
  v2 = sub_10009A728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009A588(void *a1)
{
  v2 = sub_100002BE4(&qword_10016F068, &unk_100115D50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_10009A728();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10009A69C@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_10000B5DC(&off_100159CA8);
  sub_10009A8B0(&unk_100159CC8);
  a1[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_10009A728()
{
  result = qword_10016F070;
  if (!qword_10016F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F070);
  }

  return result;
}

id sub_10009A77C(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182048);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error making the JSContext", v5, 2u);
    }

    v6 = objc_allocWithZone(JSValue);

    return [v6 init];
  }

  return result;
}

uint64_t sub_10009A8B0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009A918()
{
  result = qword_10016F078;
  if (!qword_10016F078)
  {
    sub_10000459C(&qword_100169C98, &qword_100115D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F078);
  }

  return result;
}

unint64_t sub_10009A9A8()
{
  result = qword_10016F080;
  if (!qword_10016F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F080);
  }

  return result;
}

unint64_t sub_10009AA00()
{
  result = qword_10016F088;
  if (!qword_10016F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F088);
  }

  return result;
}

uint64_t sub_10009AA54(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_100031904(0, &qword_10016BF10, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  v5 = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10009AAD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  if (a1 == 2)
  {
    v4 = 0x6E696D6165727473;
    v3 = 0xE900000000000067;
  }

  v5 = 0xD000000000000011;
  v6 = 0x800000010011C610;
  if (!a1)
  {
    v5 = 0x7265766F63736964;
    v6 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E696D6165727473;
    }

    else
    {
      v11 = 6710895;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x7265766F63736964;
    }

    if (a2)
    {
      v10 = 0x800000010011C610;
    }

    else
    {
      v10 = 0xE900000000000079;
    }

    if (v7 != v9)
    {
      goto LABEL_29;
    }
  }

  if (v8 != v10)
  {
LABEL_29:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

  v12 = 1;
LABEL_30:

  return v12 & 1;
}

uint64_t sub_10009AC04(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0x3763353738766564;
    }

    else
    {
      a1 = 0x6333663735766564;
    }

    if (v2 == 2)
    {
      v3 = 0xEC00000037333966;
    }

    else
    {
      v3 = 0xEC00000065373636;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0x3030386431766564;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xEC00000034383065;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  v4 = a2;
  v5 = 0xE000000000000000;
  v6 = 0x3763353738766564;
  v7 = 0xEC00000037333966;
  if (a2 != 2)
  {
    v6 = 0x6333663735766564;
    v7 = 0xEC00000065373636;
  }

  if (a2)
  {
    v4 = 0x3030386431766564;
    v5 = 0xEC00000034383065;
  }

  if (a2 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (a1 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10009AD70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEF6567616D496E6FLL;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }

    v4 = 0x7474754273706954;
  }

  else if (a1 == 2)
  {
    v4 = 0x69766544206C6C41;
    v5 = 0xEB00000000736563;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 1701736260;
    }

    else
    {
      v4 = 0x747465536E65704FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEC00000073676E69;
    }
  }

  v6 = 0x69766544206C6C41;
  v7 = 0xEB00000000736563;
  v8 = 0xE400000000000000;
  v9 = 1701736260;
  if (a2 != 3)
  {
    v9 = 0x747465536E65704FLL;
    v8 = 0xEC00000073676E69;
  }

  if (a2 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  if (a2)
  {
    v2 = 0xEF6567616D496E6FLL;
  }

  if (a2 <= 1u)
  {
    v10 = 0x7474754273706954;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}