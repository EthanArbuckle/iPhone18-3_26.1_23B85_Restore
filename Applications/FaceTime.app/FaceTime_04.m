uint64_t sub_10008D4C0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124090 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A38;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008D648;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008D648()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_10000B880(v1, &qword_100124348);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10008D798(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailDelegateDecorator: received greetingDidChange", v11, 2u);
    a1 = v18;
  }

  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = a2;
  v15 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v15;
  return result;
}

uint64_t sub_10008D998(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000525C4(&qword_100124348);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10008DA34, 0, 0);
}

uint64_t sub_10008DA34()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124098 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = qword_100128A40;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10008DBFC;
  v8 = v0[4];

  return v10(v4, v8);
}

uint64_t sub_10008DBFC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_10000B880(v1, &qword_100124348);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for VoicemailDelegateDecorator()
{
  result = qword_100125420;
  if (!qword_100125420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008DF70()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10008E028(uint64_t *a1, void *a2, uint64_t a3, const char *a4)
{

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  v11 = dispatch thunk of TaskQueue.async(_:)();

  *a1 = v11;
  return result;
}

uint64_t sub_10008E140(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008E1DC, 0, 0);
}

uint64_t sub_10008E1DC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_1001240A0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A48;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008E3FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008E140(v2);
}

uint64_t sub_10008E490()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10008D998(v4, v0 + v3);
}

uint64_t sub_10008E568()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042A10;

  return sub_10008D424(v2);
}

uint64_t sub_10008E5FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008D1D8(v2);
}

uint64_t sub_10008E690()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008CF8C(v2);
}

uint64_t sub_10008E724()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008CD40(v2);
}

uint64_t sub_10008E7B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008CAF4(v2);
}

uint64_t sub_10008E84C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008C814(v2);
}

uint64_t sub_10008E8E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10008C5C8(v2);
}

void sub_10008EA30()
{
  v6[3] = type metadata accessor for UIListContentConfiguration();
  v6[4] = &protocol witness table for UIListContentConfiguration;
  v1 = sub_10005BEA4(v6);
  sub_10008ED14(v1);
  UITableViewCell.contentConfiguration.setter();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v5 = [objc_opt_self() systemRedColor];
  [v4 setTintColor:v5];

  [v0 setAccessoryView:v4];
}

uint64_t sub_10008ED14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000525C4(&qword_100125498);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  sub_10008F46C(v1 + v9, v8);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10008F4DC(v8);
  sub_10008EEE4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10008F544(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10008EEE4()
{
  v0 = sub_1000525C4(&qword_1001254A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UITableViewCell.defaultContentConfiguration()();
  static UIBackgroundConfiguration.listCell()();
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v9 = objc_opt_self();
  v10 = [objc_opt_self() effectWithStyle:8];
  v11 = [v9 _effectForBlurEffect:v10 vibrancyStyle:112];

  UIBackgroundConfiguration.visualEffect.setter();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UITableViewCell.backgroundConfiguration.setter();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x746E656365524850;
  v15._object = 0x80000001000DD440;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v14.value._object = 0xE900000000000073;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v22);

  UIListContentConfiguration.text.setter();
  v17 = [v7 systemRedColor];
  v18 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v18(v21, 0);
  v19 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v19(v21, 0);
  return (*(v4 + 8))(v6, v3);
}

uint64_t type metadata accessor for ReportTableViewCell()
{
  result = qword_100125480;
  if (!qword_100125480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008F28C()
{
  sub_10008F31C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10008F31C()
{
  if (!qword_100125490)
  {
    type metadata accessor for UIListContentConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100125490);
    }
  }
}

id sub_10008F374()
{
  ObjectType = swift_getObjectType();

  v2 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = String._bridgeToObjectiveC()();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", 0, v4);

  v6 = v5;
  sub_10008EA30();
  [v6 setSelectionStyle:0];

  return v6;
}

uint64_t sub_10008F46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100125498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F4DC(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100125498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008F544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100125498);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10008F5B4(id a1, SEL a2, id a3)
{
  sub_10008F628();
  v4 = a3;

  ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
}

unint64_t sub_10008F628()
{
  result = qword_100125A00;
  if (!qword_100125A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100125A00);
  }

  return result;
}

unint64_t sub_10008F674@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009114C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_10008F6A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008F6F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10008F734@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_10008F750()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  sub_10007E1FC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_10009071C(&qword_1001256D0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

void sub_10008F98C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007E1FC(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_10009071C(&qword_1001256D0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = *v7;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v8);
  }
}

Swift::Int sub_10008FB48()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  sub_10007E1FC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_10009071C(&qword_1001256D0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008FD28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007E1FC(v0 + OBJC_IVAR___MPMessageID_value, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    v8 = UUID.uuidString.getter();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  else
  {
    v10[1] = *v7;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

id sub_100090098(void *a1)
{
  v1 = a1;
  sub_10008FD28();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_100090318()
{
  result = type metadata accessor for MessageID.Value(319);
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

uint64_t sub_100090414(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009115C(a1, v11);
  if (!v12)
  {
    sub_10000B880(v11, &qword_1001255A8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v6 = v10;
  sub_10007E1FC(v10 + OBJC_IVAR___MPMessageID_value, v5);
  v7 = sub_1000907D4(v5, v1 + OBJC_IVAR___MPMessageID_value);

  sub_100084468(v5);
  return v7 & 1;
}

uint64_t sub_100090610()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100090680()
{
  result = qword_100125590;
  if (!qword_100125590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125590);
  }

  return result;
}

uint64_t sub_10009071C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000907D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageID.Value(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v22 - v12);
  v14 = sub_1000525C4(&qword_1001255A0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_10007E1FC(a1, &v22 - v16);
  sub_10007E1FC(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10007E1FC(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v13 == *&v17[v18];
      goto LABEL_6;
    }

LABEL_8:
    sub_10000B880(v17, &qword_1001255A0);
    v19 = 0;
    return v19 & 1;
  }

  sub_10007E1FC(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v17[v18], v4);
  v19 = static UUID.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
LABEL_6:
  sub_100084468(v17);
  return v19 & 1;
}

uint64_t sub_100090A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v38 - v7;
  v8 = type metadata accessor for MessageID.Value(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = (&v38 - v18);
  v20 = sub_1000525C4(&qword_1001255A0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_10007E1FC(a1, &v38 - v22);
  v43 = a2;
  sub_10007E1FC(a2, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10007E1FC(v23, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v40;
      v25 = v41;
      v27 = *(v41 + 32);
      v28 = v42;
      v27(v40, v17, v42);
      v29 = v39;
      v27(v39, &v23[v24], v28);
      if (static UUID.== infix(_:_:)())
      {
        v30 = *(v25 + 8);
        v30(v29, v28);
        v30(v26, v28);
LABEL_7:
        sub_100084468(v23);
        v33 = 0;
        return v33 & 1;
      }

      v33 = static UUID.< infix(_:_:)();
      v36 = *(v25 + 8);
      v36(v29, v28);
      v36(v26, v28);
LABEL_18:
      sub_100084468(v23);
      return v33 & 1;
    }

    (*(v41 + 8))(v17, v42);
  }

  else
  {
    sub_10007E1FC(v23, v19);
    v31 = *v19;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = *&v23[v24];
      if (v31 == v32)
      {
        goto LABEL_7;
      }

      v33 = v31 < v32;
      goto LABEL_18;
    }
  }

  sub_10007E1FC(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100084468(v14);
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  sub_10007E1FC(v43, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100084468(v11);
    v35 = 1;
  }

  else
  {
    v35 = 0;
  }

  v33 = v34 < v35;
  sub_10000B880(v23, &qword_1001255A0);
  return v33 & 1;
}

uint64_t sub_100090E60(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v26 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MessageID.Value(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_1000525C4(&qword_1001255A0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = OBJC_IVAR___MPMessageID_value;
  v20 = *(v16 + 56);
  sub_10007E1FC(a1 + OBJC_IVAR___MPMessageID_value, &v26 - v17);
  sub_10007E1FC(v27 + v19, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10007E1FC(v18, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v26;
      v22 = *(v26 + 32);
      v22(v8, v14, v3);
      v22(v6, &v18[v20], v3);
      v23 = static UUID.< infix(_:_:)();
      v24 = *(v21 + 8);
      v24(v6, v3);
      v24(v8, v3);
    }

    else
    {
      (*(v26 + 8))(v14, v3);
      sub_100084468(&v18[v20]);
      v23 = 1;
    }
  }

  else
  {
    sub_10007E1FC(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100084468(&v18[v20]);
      v23 = 0;
    }

    else
    {
      v23 = *v12 < *&v18[v20];
    }
  }

  sub_100084468(v18);
  return v23 & 1;
}

unint64_t sub_10009114C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10009115C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_1001255A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000911E0()
{
  result = qword_1001255B0;
  if (!qword_1001255B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255B0);
  }

  return result;
}

void *sub_100091250(void (*a1)(void *__return_ptr, char **), uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v29 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = (a3 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = __CocoaSet.count.getter();
  result = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return result;
  }

  v36 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v33 = __CocoaSet.startIndex.getter();
  v34 = v10;
  v35 = 1;
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    v8 = *(v7 + 16);
    result = _swiftEmptyArrayStorage;
    if (!v8)
    {
      return result;
    }

    v36 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = _HashTable.startBucket.getter();
    v12 = *(v7 + 36);
    v33 = v11;
    v34 = v12;
    v35 = 0;
  }

  v13 = 0;
  v28 = v7 + 56;
  v27 = v7 + 64;
  while (v13 < v8)
  {
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_36;
    }

    v16 = v8;
    v6 = v33;
    v5 = v34;
    LODWORD(v8) = v35;
    v17 = v7;
    sub_100098D0C(v33, v34, v35, v7, &qword_100125620);
    v4 = v18;
    v32 = v18;
    a1(v31, &v32);
    if (v3)
    {
      goto LABEL_40;
    }

    v4 = v31[0];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v29)
    {
      if (!v8)
      {
        goto LABEL_41;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000525C4(&unk_100125650);
      v14 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v14(v31, 0);
      v8 = v16;
      if (v13 == v16)
      {
LABEL_33:
        sub_10005BE98(v33, v34, v35);
        return v36;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_42;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v19 = 1 << *(v7 + 32);
      if (v6 >= v19)
      {
        goto LABEL_37;
      }

      v20 = v6 >> 6;
      v21 = *(v28 + 8 * (v6 >> 6));
      if (((v21 >> v6) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(v7 + 36) != v5)
      {
        goto LABEL_39;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v8 = v16;
      }

      else
      {
        v4 = (v20 << 6);
        v23 = v20 + 1;
        v24 = (v27 + 8 * v20);
        v8 = v16;
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v4 += 64;
          ++v23;
          if (v26)
          {
            sub_10005BE98(v6, v5, 0);
            v19 = &v4[__clz(__rbit64(v25))];
            goto LABEL_31;
          }
        }

        sub_10005BE98(v6, v5, 0);
LABEL_31:
        v7 = v17;
      }

      v33 = v19;
      v34 = v5;
      v35 = 0;
      if (v13 == v8)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  sub_10005BE98(v6, v5, v8);

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_1000915CC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_1001243D0);
    sub_100099BCC(&qword_1001256C0, &qword_1001243D0);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100008BA0(0, &qword_1001243D0), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_10000AC64();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 tuHandle];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_100091850(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_100125620);
    sub_100099BCC(&qword_100125628, &qword_100125620);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_20:
      sub_10000AC64();
      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v15 = [objc_opt_self() contactForHandle:v14 isoCountryCode:0 metadataCache:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v12;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BA0(0, &qword_100125620);
        swift_dynamicCast();
        v14 = v16;
        v12 = v5;
        v13 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100091AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000B818(a3, v22 - v9, &qword_100124480);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B880(v10, &qword_100124480);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
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
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000B880(a3, &qword_100124480);

      return v20;
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

  sub_10000B880(a3, &qword_100124480);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100091DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000B818(a3, v22 - v9, &qword_100124480);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B880(v10, &qword_100124480);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
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

      sub_1000525C4(&qword_100125700);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000B880(a3, &qword_100124480);

      return v20;
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

  sub_10000B880(a3, &qword_100124480);
  sub_1000525C4(&qword_100125700);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100092064(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_100125610);
    sub_100099BCC(&qword_100125618, &qword_100125610);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v46[4];
    v40 = v46[5];
    v4 = v46[6];
    v3 = v46[7];
    v5 = v46[8];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v40 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = _swiftEmptyArrayStorage;
  v10 = &qword_1001243F0;
  v42 = v1;
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
      goto LABEL_47;
    }

    v46[10] = v16;
    sub_100008BA0(0, &qword_100125610);
    swift_dynamicCast();
    v15 = v46[0];
    v13 = v3;
    v14 = v5;
    if (!v46[0])
    {
      goto LABEL_47;
    }

LABEL_18:
    v45 = v14;
    v17 = [v15 handles];
    sub_100008BA0(0, &qword_100125620);
    sub_100099BCC(&qword_100125628, &qword_100125620);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = sub_100091850(v18);

    v20 = v19 >> 62;
    if (v19 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v9 >> 62;
    if (v9 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v39 + v21;
      if (__OFADD__(v39, v21))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        sub_10000AC64();
        return v9;
      }
    }

    else
    {
      v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 + v21;
      if (__OFADD__(v23, v21))
      {
        goto LABEL_46;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v22)
      {
LABEL_28:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_29:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }

    if (v22)
    {
      goto LABEL_28;
    }

    v25 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    v44 = v9;
LABEL_30:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      v29 = v25;
      result = _CocoaArrayWrapper.endIndex.getter();
      v25 = v29;
      v28 = result;
      if (result)
      {
        goto LABEL_34;
      }

LABEL_8:

      v3 = v13;
      v9 = v44;
      v5 = v45;
      v1 = v42;
      if (v21 > 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_8;
      }

LABEL_34:
      if (((v27 >> 1) - v26) < v21)
      {
        goto LABEL_50;
      }

      v43 = v21;
      v30 = v25 + 8 * v26 + 32;
      v41 = v25;
      if (v20)
      {
        if (v28 < 1)
        {
          goto LABEL_52;
        }

        v31 = v10;
        sub_100099D94(&qword_1001243E8, v10);
        for (i = 0; i != v28; ++i)
        {
          sub_1000525C4(v31);
          v33 = sub_1000BDA38(v46, i, v19);
          v35 = *v34;
          (v33)(v46, 0);
          *(v30 + 8 * i) = v35;
        }
      }

      else
      {
        sub_100008BA0(0, &qword_1001243E0);
        swift_arrayInitWithCopy();
        v31 = v10;
      }

      v3 = v13;
      v9 = v44;
      v5 = v45;
      v1 = v42;
      v10 = v31;
      if (v43 >= 1)
      {
        v36 = *(v41 + 16);
        v37 = __OFADD__(v36, v43);
        v38 = v36 + v43;
        if (v37)
        {
          goto LABEL_51;
        }

        *(v41 + 16) = v38;
        v3 = v13;
        v5 = v45;
      }
    }
  }

  v11 = v3;
  v12 = v5;
  v13 = v3;
  if (v5)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_47;
    }

    v12 = *(v40 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
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
  return result;
}

uint64_t sub_10009256C(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_10000B228(&qword_100124410, &type metadata accessor for Handle);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_100094818(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000927CC(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8FaceTime18RecentCallProvider_delegate];
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = &v1[OBJC_IVAR____TtC8FaceTime18RecentCallProvider_presentScreenTimeShield];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController] = a1;
  v1[OBJC_IVAR____TtC8FaceTime18RecentCallProvider_startedLoadingOlderCalls] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for RecentCallProvider();
  v4 = objc_msgSendSuper2(&v14, "init");
  v5 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController;
  v6 = *&v4[OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v6 + 40);
  *(v6 + 40) = sub_100099C1C;
  *(v6 + 48) = v7;
  v9 = v4;

  sub_100004E40(v8);

  v10 = *&v4[v5];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = *(v10 + 56);
  *(v10 + 56) = sub_100099C54;
  *(v10 + 64) = v11;

  sub_100004E40(v12);

  return v9;
}

uint64_t sub_100092958(uint64_t a1, const char *a2, void (*a3)(uint64_t, uint64_t))
{
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128968);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_delegate;
    v11 = result;
    swift_beginAccess();
    sub_10000B818(v11 + v10, v17, &qword_100125660);

    if (v18)
    {
      sub_10000BBC0(v17, v14);
      sub_10000B880(v17, &qword_100125660);
      v12 = v15;
      v13 = v16;
      sub_10000BC24(v14, v15);
      a3(v12, v13);
      return sub_100005964(v14);
    }

    else
    {
      return sub_10000B880(v17, &qword_100125660);
    }
  }

  return result;
}

void sub_100092B1C(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100124358);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v76 = &v74 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v74 - v9;
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v77 = type metadata accessor for RecentsCallItem();
  isa = v77[-1].isa;
  v14 = __chkstk_darwin(v77);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  v20 = __chkstk_darwin(v17);
  v75 = &v74 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v74 - v23;
  __chkstk_darwin(v22);
  v26 = &v74 - v25;
  if ((RecentsCallItem.isRecentCall.getter() & 1) == 0 || (sub_100041EE8(), !v27))
  {
    if (RecentsCallItem.isAudioMessage.getter() & 1) != 0 || (RecentsCallItem.isVideoMessage.getter())
    {
      v35 = RecentsCallItem.handleForMailCallback.getter();
      if (v35)
      {
        v36 = v35;
        sub_1000525C4(&qword_100124C30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000D6C60;
        *(inited + 32) = v36;
        v38 = v36;
        sub_10009954C(inited, &qword_100125640, &unk_1000D8BD0, &qword_100125620);
        v40 = v39;
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = RecentsCallItem.isAudioMessage.getter();
        if (_swiftEmptyArrayStorage >> 62)
        {
          v67 = v41;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10009954C(_swiftEmptyArrayStorage, &qword_100125640, &unk_1000D8BD0, &qword_100125620);
          }

          v41 = v67;
        }

        sub_100099838(v40, v41 & 1);

        return;
      }

      if (qword_100124020 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000046F4(v42, qword_100128968);
      v43 = *(isa + 2);
      v44 = v77;
      v43(v26, a1, v77);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v46))
      {

        (*(isa + 1))(v26, v44);
        return;
      }

      LODWORD(v78) = v46;
      v47 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79 = v76;
      *v47 = 136315138;
      v43(v12, v26, v44);
      (*(isa + 7))(v12, 0, 1, v44);
      sub_10000B818(v12, v10, &qword_100124358);
      if ((*(isa + 6))(v10, 1, v44) == 1)
      {
        v48 = 7104878;
        sub_10000B880(v10, &qword_100124358);
        sub_10000B880(v12, &qword_100124358);
        (*(isa + 1))(v26, v44);
        v49 = 0xE300000000000000;
      }

      else
      {
        (*(isa + 4))(v24, v10, v44);
        v43(v75, v24, v44);
        v48 = String.init<A>(reflecting:)();
        v49 = v60;
        v61 = *(isa + 1);
        v61(v24, v44);
        sub_10000B880(v12, &qword_100124358);
        v61(v26, v44);
      }

      v62 = sub_10000607C(v48, v49, &v79);

      *(v47 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v45, v78, "No handle found for %s", v47, 0xCu);
      sub_100005964(v76);
    }

    else
    {
      if (qword_100124020 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000046F4(v50, qword_100128968);
      v51 = *(isa + 2);
      v52 = a1;
      v53 = v77;
      v51(v19, v52, v77);
      v45 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v45, v54))
      {

        (*(isa + 1))(v19, v53);
        return;
      }

      LODWORD(v78) = v54;
      v55 = isa;
      v56 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79 = v74;
      *v56 = 136315138;
      v57 = v76;
      v51(v76, v19, v53);
      (*(v55 + 7))(v57, 0, 1, v53);
      sub_10000B818(v57, v5, &qword_100124358);
      if ((*(v55 + 6))(v5, 1, v53) == 1)
      {
        v58 = 7104878;
        sub_10000B880(v5, &qword_100124358);
        sub_10000B880(v57, &qword_100124358);
        (*(v55 + 1))(v19, v53);
        v59 = 0xE300000000000000;
      }

      else
      {
        (*(v55 + 4))(v16, v5, v53);
        v51(v75, v16, v53);
        v58 = String.init<A>(reflecting:)();
        v63 = v53;
        v59 = v64;
        v65 = *(v55 + 1);
        v65(v16, v63);
        sub_10000B880(v76, &qword_100124358);
        v65(v19, v63);
      }

      v66 = sub_10000607C(v58, v59, &v79);

      *(v56 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v45, v78, "Invalid recent item %s", v56, 0xCu);
      sub_100005964(v74);
    }

    return;
  }

  v28 = v27;
  v29 = [v27 validRemoteParticipantHandles];
  if (v29)
  {
    v30 = v29;
    sub_100008BA0(0, &qword_1001243D0);
    sub_100099BCC(&qword_1001256C0, &qword_1001243D0);
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000915CC(v31);
    v33 = v32;

    if (v33 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_6:
        v34 = sub_100099234(v33);

        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_10009954C(_swiftEmptyArrayStorage, &qword_100125640, &unk_1000D8BD0, &qword_100125620);
        }

        sub_100099838(v34, [v28 mediaType] == 1);

        return;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }
  }

  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_1000046F4(v68, qword_100128968);
  v69 = v28;
  v78 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v69;
    *v72 = v28;
    v77 = v69;
    _os_log_impl(&_mh_execute_header, v78, v70, "No valid remote participants found for call %@", v71, 0xCu);
    sub_10000B880(v72, &qword_1001250A0);

    v73 = v77;
  }

  else
  {

    v73 = v78;
  }
}

id sub_1000936FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(TUConversationMember) initWithHandle:*a1];
  *a2 = result;
  return result;
}

uint64_t sub_100093750()
{
  v1 = v0;
  v2 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128968);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting all recent calls (PHRecentsController)", v8, 2u);
  }

  v9 = *(v1 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_100091AFC(0, 0, v4, &unk_1000D8C38, v11);
}

uint64_t sub_10009392C(uint64_t a1)
{
  v2 = type metadata accessor for RecentsCallItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  if (v6)
  {
    v27 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController;
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v29 = *(v7 + 56);
    v30 = v8;
    v10 = (v7 - 8);
    v26 = _swiftEmptyArrayStorage;
    v28 = xmmword_1000D6C50;
    v8(v5, v9, v2);
    while (1)
    {
      if ((RecentsCallItem.isRecentCall.getter() & 1) != 0 && (sub_100041EE8(), v14))
      {
        (*v10)(v5, v2);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v33;
      }

      else
      {
        if (qword_100124040 != -1)
        {
          swift_once();
        }

        sub_1000525C4(&unk_100125F70);
        v15 = swift_allocObject();
        *(v15 + 16) = v28;
        v16 = RecentsCallItem.callUniqueId.getter();
        if (v17)
        {
          v31 = v16;
          v32 = v17;
          v11 = String.init<A>(reflecting:)();
          v13 = v12;
        }

        else
        {
          v13 = 0xE300000000000000;
          v11 = 7104878;
        }

        *(v15 + 56) = &type metadata for String;
        *(v15 + 64) = sub_100099C8C();
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        (*v10)(v5, v2);
      }

      v9 += v29;
      if (!--v6)
      {
        break;
      }

      v30(v5, v9, v2);
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000046F4(v18, qword_100128968);
  v19 = v26;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    if (v19 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v23;

    _os_log_impl(&_mh_execute_header, v20, v21, "filtered recent calls. deleting recent calls %ld", v22, 0xCu);
  }

  else
  {
  }

  sub_1000495F4(v19);
}

uint64_t sub_100093D40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100093D60, 0, 0);
}

uint64_t sub_100093D60()
{
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting all items for %ld contacts (contact-based deletion)", v6, 0xCu);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_100099DE8;
  v8 = *(v0 + 16);

  return sub_100049C70(v8);
}

id sub_100093F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentCallProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100093FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_delegate;
  swift_beginAccess();
  return sub_10000B818(v3 + v4, a1, &qword_100125660);
}

uint64_t sub_1000940A0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_presentScreenTimeShield);
  swift_beginAccess();
  v2 = *v1;
  sub_100004E30(*v1);
  return v2;
}

void (*sub_100094100(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_presentScreenTimeShield;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10009418C;
}

void sub_10009418C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *(v4 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController);
    v7 = *v5;
    v8 = v5[1];
    v9 = *(v6 + 72);
    *(v6 + 72) = *v5;
    *(v6 + 80) = v8;
    sub_100004E30(v7);
    sub_100004E40(v9);
  }

  free(v3);
}

uint64_t sub_100094208(void *a1)
{
  v1 = [a1 mergedRemoteMembers];
  sub_100008BA0(0, &qword_100125610);
  sub_100099BCC(&qword_100125618, &qword_100125610);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100092064(v2);

  return v3;
}

uint64_t sub_100094304(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100094328, 0, 0);
}

uint64_t sub_100094328()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000943CC;
  v2 = *(v0 + 16);

  return sub_10004C260(v2);
}

uint64_t sub_1000943CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000944C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042A10;

  return sub_100093D40(a1);
}

uint64_t sub_100094558(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10009457C, 0, 0);
}

uint64_t sub_10009457C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100099DE8;
  v2 = *(v0 + 16);

  return sub_10004CD94(v2);
}

uint64_t sub_100094620(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100094644, 0, 0);
}

uint64_t sub_100094644()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100099DE8;
  v2 = *(v0 + 16);

  return sub_10004D858(v2);
}

uint64_t sub_100094764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_10004C0B4(a1, v4, v5, v6);
}

uint64_t sub_100094818(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000B228(&qword_100124410, &type metadata accessor for Handle);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10000B228(&unk_100124420, &type metadata accessor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000966F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100094AF8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000B228(&qword_1001256D0, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10000B228(&qword_1001256D8, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000969B8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100094DD8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100096C80(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100094F28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for MessageID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000953C4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10009644C(v20 + 1, &qword_100125718);
    }

    v18 = v8;
    sub_10009666C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MessageID(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100096E00(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100095150(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = __CocoaSet.member(for:)();

    if (v16)
    {

      sub_100008BA0(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1000955C4(v14, result + 1, a5, a6, a3);
        v27 = v26[2];
        if (v26[3] <= v27)
        {
          sub_10009644C(v27 + 1, a5);
        }

        v28 = v15;
        sub_10009666C(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_100008BA0(0, a3);
    v18 = NSObject._rawHashValue(seed:)(*(v13 + 40));
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_100096F90(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1000953C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000525C4(&qword_100125718);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for MessageID(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10009644C(v9 + 1, &qword_100125718);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1000955C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    sub_1000525C4(a3);
    v7 = static _SetStorage.convert(_:capacity:)();
    v20 = v7;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BA0(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_10009644C(v14 + 1, a3);
        }

        v7 = v20;
        result = NSObject._rawHashValue(seed:)(*(v20 + 40));
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v7;
}

uint64_t sub_1000957C4()
{
  v1 = v0;
  v35 = type metadata accessor for Handle();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000525C4(&qword_1001256B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10000B228(&qword_100124410, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100095B20()
{
  v1 = v0;
  v35 = type metadata accessor for RecentsCallHandle();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000525C4(&qword_100125678);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10000B228(&qword_100125668, &type metadata accessor for RecentsCallHandle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100095E7C()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000525C4(&unk_1001256E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10000B228(&qword_1001256D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1000961D8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000525C4(&qword_1001256C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10009644C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000525C4(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_10009666C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1000966F0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000957C4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100097120(&type metadata accessor for Handle, &qword_1001256B8);
      goto LABEL_12;
    }

    sub_1000975F4();
  }

  v12 = *v3;
  sub_10000B228(&qword_100124410, &type metadata accessor for Handle);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10000B228(&unk_100124420, &type metadata accessor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000969B8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100095E7C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100097120(&type metadata accessor for UUID, &unk_1001256E0);
      goto LABEL_12;
    }

    sub_100097C2C();
  }

  v12 = *v3;
  sub_10000B228(&qword_1001256D0, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10000B228(&qword_1001256D8, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100096C80(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000961D8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100097358();
      goto LABEL_16;
    }

    sub_100097F48();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100096E00(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10009644C(v6 + 1, &qword_100125718);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000974B4(&qword_100125718);
      goto LABEL_12;
    }

    sub_100098180(v6 + 1, &qword_100125718);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MessageID(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100096F90(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_10009644C(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1000974B4(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100098180(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_100008BA0(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100097120(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000525C4(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_100097358()
{
  v1 = v0;
  sub_1000525C4(&qword_1001256C8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_1000974B4(uint64_t *a1)
{
  v2 = v1;
  sub_1000525C4(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000975F4()
{
  v1 = v0;
  v32 = type metadata accessor for Handle();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000525C4(&qword_1001256B8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10000B228(&qword_100124410, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100097910()
{
  v1 = v0;
  v32 = type metadata accessor for RecentsCallHandle();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000525C4(&qword_100125678);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10000B228(&qword_100125668, &type metadata accessor for RecentsCallHandle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100097C2C()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000525C4(&unk_1001256E0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10000B228(&qword_1001256D0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100097F48()
{
  v1 = v0;
  v2 = *v0;
  sub_1000525C4(&qword_1001256C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100098180(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000525C4(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_10009838C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10009842C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100099D94(&qword_1001243E8, &qword_1001243F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000525C4(&qword_1001243F0);
            v9 = sub_1000BDA38(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BA0(0, &qword_1001243E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000985CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100099D94(&qword_100125698, &qword_100125690);
          for (i = 0; i != v6; ++i)
          {
            sub_1000525C4(&qword_100125690);
            v9 = sub_1000BDA38(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BA0(0, &qword_1001243D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009876C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100099D94(&qword_100125738, &qword_100125730);
          for (i = 0; i != v6; ++i)
          {
            sub_1000525C4(&qword_100125730);
            v9 = sub_1000BDAB8(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000525C4(&qword_100124DB8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098908(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100099D94(&qword_100125710, &qword_100125708);
          for (i = 0; i != v6; ++i)
          {
            sub_1000525C4(&qword_100125708);
            v9 = sub_1000BDB40(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098A98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100099D94(&qword_1001256B0, &qword_1001256A8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000525C4(&qword_1001256A8);
            v9 = sub_1000BDA38(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008BA0(0, &qword_1001256A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098C38@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_100098D0C(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100008BA0(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100008BA0(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_100098F48(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for MessageID(0);
    sub_10000B228(&unk_100125720, type metadata accessor for MessageID);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100094F28(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000990A8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100008BA0(0, &qword_100125610);
    sub_100099BCC(&qword_100125618, &qword_100125610);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = TUConversationMember_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100095150(&v9, v7, &qword_100125610, TUConversationMember_ptr, &qword_100125648, &unk_1000D8BD8);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100099234(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100008BA0(0, &qword_100125620);
    sub_100099BCC(&qword_100125628, &qword_100125620);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = TUHandle_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100095150(&v9, v7, &qword_100125620, TUHandle_ptr, &qword_100125640, &unk_1000D8BD0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000993C0(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100008BA0(0, &qword_1001243D0);
    sub_100099BCC(&qword_1001256C0, &qword_1001243D0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = CHHandle_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100095150(&v9, v7, &qword_1001243D0, CHHandle_ptr, &unk_100125680, &unk_1000D8C00);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_10009954C(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_1000525C4(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_100008BA0(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_100008BA0(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100099838(uint64_t a1, char a2)
{
  v4 = sub_100091250(sub_1000936FC, 0, a1);
  sub_1000990A8(v4);

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10009954C(_swiftEmptyArrayStorage, &qword_100125640, &unk_1000D8BD0, &qword_100125620);
  }

  v5 = objc_allocWithZone(TUJoinConversationRequest);
  sub_100008BA0(0, &qword_100125610);
  sub_100099BCC(&qword_100125618, &qword_100125610);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_100008BA0(0, &qword_100125620);
  sub_100099BCC(&qword_100125628, &qword_100125620);
  v7 = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v5 initWithRemoteMembers:isa otherInvitedHandles:v7 originatingUIType:14];

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v8 setAvMode:v9];
  [v8 setVideoEnabled:(a2 & 1) == 0];
  v10 = [objc_opt_self() invitationPreferencesForRecentCall];
  sub_100008BA0(0, &qword_100125630);
  sub_100099BCC(&qword_100125638, &qword_100125630);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Set._bridgeToObjectiveC()().super.isa;

  [v8 setInvitationPreferences:v11];

  v12 = (v2 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_presentScreenTimeShield);
  swift_beginAccess();
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_9;
  }

  v14 = objc_opt_self();

  v15 = [v14 sharedInstance];
  v16 = [v15 callFilterController];

  LODWORD(v15) = [v16 shouldRestrictJoinConversationRequest:v8 performSynchronously:1];
  if (!v15)
  {
    sub_100004E40(v13);
LABEL_9:
    v17 = [objc_opt_self() sharedInstance];
    [v17 launchAppForJoinRequest:v8];

    goto LABEL_10;
  }

  v17 = v8;
  v13();

  sub_100004E40(v13);
LABEL_10:
}

uint64_t sub_100099BCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008BA0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100099C8C()
{
  result = qword_1001256F0;
  if (!qword_1001256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256F0);
  }

  return result;
}

uint64_t sub_100099CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042A10;

  return sub_1000493CC(a1, v4, v5, v6);
}

uint64_t sub_100099D94(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005BA5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100099FD8()
{
  v0 = type metadata accessor for GlassDimmingView.GradientValues();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for GlassDimmingView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static GlassDimmingView.videoMatrix.getter();
  dispatch thunk of GlassDimmingView.colorMatrix.setter();
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setUserInteractionEnabled:0];

  static GlassDimmingView.GradientValues.topLargeVideo.getter();
  dispatch thunk of GlassDimmingView.backgroundGradientValues.setter();
  return v2;
}

uint64_t sub_10009A0D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    sub_100004E30(v3);

    if (v3)
    {
      v3(a1);
      return sub_100004E40(v3);
    }
  }

  return result;
}

uint64_t sub_10009A164()
{
  [*(v0 + 32) setOrientationEventsEnabled:0];
  [*(v0 + 32) setPassiveOrientationEvents:1];
  [*(v0 + 32) setDelegate:0];
  sub_100004E40(*(v0 + 16));

  return swift_deallocClassInstance();
}

id sub_10009A1E8()
{
  [*&v0[OBJC_IVAR____TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate_accelerometer] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccelerometerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009A394(unint64_t a1)
{
  if (a1 >= 7)
  {
    a1 = 1;
  }

  return (*(v1 + OBJC_IVAR____TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate_onOrientationChange))(a1);
}

uint64_t sub_10009A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_10009D7CC(v15);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v12._object = 0x80000001000DD930;
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10009A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000B818(a3, v25 - v10, &qword_100124480);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B880(v11, &qword_100124480);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000B880(a3, &qword_100124480);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B880(a3, &qword_100124480);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000B818(a3, v25 - v10, &qword_100124480);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B880(v11, &qword_100124480);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for AnyCancellable();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000B880(v25[0], &qword_100124480);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B880(a3, &qword_100124480);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for AnyCancellable();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000B818(a3, v25 - v10, &qword_100124480);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B880(v11, &qword_100124480);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for CachedVoicemailManager.Cache();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000B880(v25[0], &qword_100124480);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B880(a3, &qword_100124480);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for CachedVoicemailManager.Cache();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10009AF64(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10009AFC8(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);

  return 0;
}

uint64_t sub_10009B1A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_10009B320(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield);
  v5 = *(v2 + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield);
  *v4 = a1;
  v4[1] = a2;
  sub_100004E30(a1);
  sub_100004E40(v5);
  v6 = *(v2 + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  if (v6)
  {
    v7 = *v4;
    v8 = v6;
    sub_100004E30(v7);
    dispatch thunk of RecentsListViewController.presentScreenTimeShield.setter();
    sub_100004E40(a1);
  }

  else
  {

    sub_100004E40(a1);
  }
}

void sub_10009B408()
{
  v1 = v0;
  if (qword_100124010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000046F4(v2, qword_100125920);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Destroying RecentsListViewController", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  *(v1 + OBJC_IVAR___FTRecentsContainerViewController_recentsList) = 0;

  sub_100009158();
}

void sub_10009B798()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v10 = [v1 predicateForCallsWithUniqueID:v2];

  v3 = [objc_allocWithZone(CHManager) init];
  v4 = [v3 callsWithPredicate:v10 limit:0 offset:0 batchSize:0];

  sub_100008BA0(0, &qword_100125A00);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = *(v0 + OBJC_IVAR___FTRecentsContainerViewController_recentsList);
  if (v8)
  {
    v9 = v8;
    RecentsListViewController.presentDetailsView(for:)();
  }
}

id sub_10009BB18(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = &v2[OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR___FTRecentsContainerViewController_recentsList] = 0;
  *&v2[OBJC_IVAR___FTRecentsContainerViewController_content] = 0;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecentsContainerViewController();
  return objc_msgSendSuper2(&v7, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id sub_10009BD80(void *a1)
{
  v3 = &v1[OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___FTRecentsContainerViewController_recentsList] = 0;
  *&v1[OBJC_IVAR___FTRecentsContainerViewController_content] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RecentsContainerViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10009C380(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009C3DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10009C42C(uint64_t a1, void **a2, void **a3, void **a4, void *a5, uint64_t a6, uint64_t a7)
{
  v116 = a5;
  v114 = a4;
  v113 = a3;
  v115 = a2;
  v121 = a1;
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v117 = &v100 - v10;
  v110 = type metadata accessor for CallPredicate();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for CallFetchRequest();
  __chkstk_darwin(v12 - 8);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for MessageFetchOptions();
  __chkstk_darwin(Options);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v103 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for MessageStoreFetchRequest();
  __chkstk_darwin(Request - 8);
  v106 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MessageStoreQuery();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  v25 = (&v100 - v24);
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v129[3] = type metadata accessor for BlockList();
  v129[4] = &off_10010B918;
  v129[0] = a6;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  sub_1000525C4(&unk_100125A28);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = &_swiftEmptyArrayStorage;
  *(a7 + 88) = v28;
  *(a7 + 168) = 0;
  *(a7 + 176) = 0;
  *(a7 + 184) = 0;
  *(a7 + 192) = &_swiftEmptyArrayStorage;
  v112 = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for MainActor();
  v111 = sub_10009A494(sub_10003ADA0, 0, "FaceTime/CoalescedRecentsController.swift", 41);
  v29 = swift_allocObject();
  *(v29 + 16) = &off_10010B878;
  *v25 = v29;
  v30 = *(v19 + 104);
  v30(v25, enum case for MessageStoreQuery.providers(_:), v18);
  v31 = swift_allocObject();
  *(v31 + 16) = &off_10010B8A0;
  *v22 = v31;
  v30(v22, enum case for MessageStoreQuery.mailbox(_:), v18);
  v122 = v27;
  static MessageStoreQuery.&& infix(_:_:)();
  v32 = *(v19 + 8);
  v32(v22, v18);
  v119 = v19 + 8;
  v120 = v18;
  v118 = v32;
  v32(v25, v18);
  type metadata accessor for Features();
  v33 = static Features.shared.getter();
  LOBYTE(v18) = Features.lvmEverywhereEnabled.getter();

  v34 = v111;
  if (v18 & 1) != 0 && (v35 = static Features.shared.getter(), v36 = Features.isFaceTimeLaunchPageEnabled.getter(), v35, (v36) && v34)
  {
    v37 = &off_10010B8C8;
    v38 = v120;
    v39 = v122;
  }

  else
  {
    v38 = v120;
    v39 = v122;
    if (!v34)
    {
      goto LABEL_8;
    }

    v37 = &off_10010B8F0;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *v22 = v40;
  v30(v22, enum case for MessageStoreQuery.types(_:), v38);
  static MessageStoreQuery.&& infix(_:_:)();
  v41 = v22;
  v42 = v118;
  v118(v41, v38);
  v42(v39, v38);
  (*(v19 + 32))(v39, v25, v38);
LABEL_8:
  if (v121)
  {
    v43 = v121;
    v44 = v113;
  }

  else
  {
    v111 = type metadata accessor for HistoryCoalescingManager();
    v45 = v113;
    v46 = v113;
    sub_1000AB254();
    (*(v19 + 16))(v25, v122, v38);
    v47 = *(sub_1000525C4(&unk_100125A30) + 48);
    v48 = enum case for MessageKey.dateCreated(_:);
    v49 = type metadata accessor for MessageKey();
    v50 = v103;
    (*(*(v49 - 8) + 104))(v103, v48, v49);
    v51 = enum case for MessageSortOrder.descending(_:);
    v52 = type metadata accessor for MessageSortOrder();
    (*(*(v52 - 8) + 104))(&v50[v47], v51, v52);
    (*(v101 + 104))(v50, enum case for MessageStoreFetchRequest.QuerySearchType.sorted(_:), v102);
    aBlock = &_swiftEmptyArrayStorage;
    sub_100008BF0(&unk_100124FC0, &type metadata accessor for MessageFetchOptions);
    sub_1000525C4(&unk_100125A40);
    sub_10007E260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v44 = v45;
    MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
    v53 = swift_allocObject();
    sub_1000525C4(&unk_100125A50);
    v54 = type metadata accessor for ServiceProvider();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1000D6C50;
    (*(v55 + 104))(v57 + v56, enum case for ServiceProvider.faceTime(_:), v54);
    *(v53 + 16) = v57;
    v58 = v108;
    *v108 = v53;
    (*(v109 + 104))(v58, enum case for CallPredicate.serviceProviders(_:), v110);
    CallFetchRequest.init(predicate:originatingBundleID:)();
    v43 = HistoryCoalescingManager.__allocating_init(keyDescriptors:messageRequest:callRequest:pageSize:contactStore:)();
  }

  *(a7 + 16) = v43;
  *(a7 + 24) = v44;
  v60 = v114;
  v59 = v115;
  v61 = v112;
  *(a7 + 96) = v115;
  *(a7 + 104) = v61;
  *(a7 + 112) = v60;
  sub_10009D6AC(v129, a7 + 128);
  if (v44)
  {
    v62 = sub_100008BA0(0, &unk_100125A60);
    v63 = &off_10010E108;
    v64 = v44;
  }

  else
  {
    v64 = 0;
    v62 = 0;
    v63 = 0;
    v124 = 0;
    v125 = 0;
  }

  aBlock = v64;
  v126 = v62;
  v127 = v63;
  v65 = objc_allocWithZone(TUSubtitleProvider);

  v66 = v44;
  v67 = v61;
  v68 = v60;
  v114 = v66;
  v69 = v67;
  v70 = v68;
  v71 = v59;
  v112 = [v65 initWithMetadataCache:v70 callProviderManager:v71];
  v72 = [objc_allocWithZone(NSCache) init];
  type metadata accessor for CoalescedRecentsStore();
  v73 = swift_allocObject();
  v74 = v71;
  v75 = sub_1000BF590(&_swiftEmptyArrayStorage);
  *(v73 + 16) = 0;
  *(v73 + 24) = v75;
  v76 = sub_1000BF690(&_swiftEmptyArrayStorage);
  *(v73 + 32) = 0;
  *(v73 + 40) = v76;
  v77 = sub_1000BF864(&_swiftEmptyArrayStorage);
  *(v73 + 48) = 0;
  *(v73 + 56) = v77;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v79 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v130._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0x5F4E574F4E4B4E55;
  v80._object = 0xED00004C4542414CLL;
  v81.value._countAndFlagsBits = 0x746E656365524850;
  v81.value._object = 0xE900000000000073;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v130._countAndFlagsBits = 0;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v130);

  *(v73 + 160) = v83;
  v84 = [objc_allocWithZone(CNContactFormatter) init];
  [v84 setStyle:0];
  *(v73 + 80) = v72;
  *(v73 + 88) = v74;
  *(v73 + 64) = v84;
  sub_10000B818(&aBlock, v73 + 96, &unk_100125A58);
  v113 = v69;
  *(v73 + 136) = v69;
  *(v73 + 144) = v70;
  v115 = v70;
  v85 = [objc_allocWithZone(NSNumberFormatter) init];
  sub_10000B880(&aBlock, &unk_100125A58);
  *(v73 + 72) = v85;
  *(v73 + 152) = v112;
  *(a7 + 120) = v73;
  v86 = v116;
  *(a7 + 32) = v116;
  v87 = v86;
  sub_10003AE74();
  v88 = objc_opt_self();
  v89 = swift_allocObject();
  swift_weakInit();
  v127 = sub_10009D710;
  v128 = v89;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_10000A6C0;
  v126 = &unk_10010DEA0;
  v90 = _Block_copy(&aBlock);

  v91 = [v88 acceptedIntroductionsNotifierWithBlock:v90];
  _Block_release(v90);
  v92 = *(a7 + 184);
  *(a7 + 184) = v91;

  v93 = *(a7 + 184);
  if (v93)
  {
    [v93 startObserving];
  }

  v94 = type metadata accessor for TaskPriority();
  v95 = v117;
  (*(*(v94 - 8) + 56))(v117, 1, 1, v94);
  v96 = swift_allocObject();
  swift_weakInit();

  v97 = swift_allocObject();
  v97[2] = 0;
  v97[3] = 0;
  v97[4] = v96;
  v98 = sub_1000B6774(0, 0, v95, &unk_1000D8D50, v97);

  sub_10000B880(v95, &qword_100124480);
  v118(v122, v120);
  sub_100005964(v129);
  *(a7 + 168) = v98;

  return a7;
}

uint64_t sub_10009D2DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_100083F10(a1, v4);
}

uint64_t sub_10009D394(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10009D488;

  return v5(v2 + 16);
}

uint64_t sub_10009D488()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10009D5B8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10009DD98;

  return v5(v2 + 16);
}

uint64_t sub_10009D6AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10009D718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_10003B778(a1, v4, v5, v6);
}

void *sub_10009D7CC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10009D810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_10009D394(a1, v4);
}

uint64_t sub_10009D8C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042A10;

  return sub_10009D394(a1, v4);
}

uint64_t sub_10009D980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_10009D5B8(a1, v4);
}

uint64_t sub_10009DA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a5;
  v29 = a4;
  v26 = a2;
  v10 = type metadata accessor for AppType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecentsItem();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v21 = a1;
  RecentsItem.init(message:callProviderManager:)();
  (*(v15 + 16))(v18, v20, v14);
  (*(v11 + 104))(v13, enum case for AppType.FaceTime(_:), v10);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 24) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = a7;
  objc_allocWithZone(type metadata accessor for VoicemailDetailViewController());

  v24 = VoicemailDetailViewController.init(item:appType:deleteAction:callbackAction:contactDetailViewController:)();
  (*(v15 + 8))(v20, v14);
  return v24;
}

uint64_t sub_10009DCDC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005C9E4;

  return sub_10009AF64(v2);
}

uint64_t sub_10009DD9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/ConversationKit.framework/ConversationKit", 256);
  if (!v2)
  {
    if (qword_100124048 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000046F4(v11, qword_1001289D0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315138;
    result = dlerror();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = String.init(cString:)();
    v18 = sub_10000607C(v16, v17, v22);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load ConversationKit.framework:%s", v14, 0xCu);
    sub_100005964(v15);

    goto LABEL_17;
  }

  v3 = dlsym(v2, "clarityUIRootView_generic");
  if (!v3)
  {
    if (qword_100124048 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000046F4(v19, qword_1001289D0);
    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v20))
    {
      goto LABEL_18;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v12, v20, "No function clarityUIRootView_generic in ConversationKit.", v21, 2u);
LABEL_17:

LABEL_18:

    result = AnyView.init<A>(_:)();
    *a1 = result;
    return result;
  }

  v4 = v3;
  if (qword_100124048 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_1001289D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully soft linked ConversationKit!", v8, 2u);
  }

  v22[5] = v4();
  sub_1000525C4(&qword_100125AA8);
  swift_dynamicCast();
  v9 = sub_10000BC24(v22, v22[3]);
  *a1 = sub_10009E0F4(v9);
  return sub_100005964(v22);
}

uint64_t sub_10009E0F4(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return AnyView.init<A>(_:)();
}

id sub_10009E26C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009E2E0()
{
  v1 = sub_1000525C4(&qword_100125A98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;
  AssistiveAccess.init(content:)();
  sub_10009E438();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10009E3FC@<X0>(void *a1@<X8>)
{
  result = sub_10009DD9C(&v3);
  *a1 = v3;
  return result;
}

unint64_t sub_10009E438()
{
  result = qword_100125AA0;
  if (!qword_100125AA0)
  {
    sub_10005BA5C(&qword_100125A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AA0);
  }

  return result;
}

uint64_t sub_10009E49C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v82 = a3;
  v6 = sub_1000525C4(&qword_100125AB0);
  __chkstk_darwin(v6 - 8);
  v79 = v70 - v7;
  v8 = sub_1000525C4(&qword_100125AB8);
  __chkstk_darwin(v8 - 8);
  v74 = v70 - v9;
  v10 = type metadata accessor for RecentCallRecentItemMetadata();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = v70 - v13;
  v14 = sub_1000525C4(&qword_100124348);
  v15 = __chkstk_darwin(v14 - 8);
  v72 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v71 = v70 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v70 - v20;
  __chkstk_darwin(v19);
  v23 = v70 - v22;
  v24 = sub_1000525C4(&qword_100124378);
  v25 = __chkstk_darwin(v24 - 8);
  v83 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = v70 - v28;
  __chkstk_darwin(v27);
  v31 = v70 - v30;
  v32 = [a1 uniqueId];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70[9] = v34;
  v70[10] = v33;

  v35 = [a1 date];
  if (v35)
  {
    v36 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = type metadata accessor for Date();
    (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  }

  else
  {
    v38 = type metadata accessor for Date();
    (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
  }

  sub_10000AFFC(v29, v31, &qword_100124378);
  v39 = type metadata accessor for CoalescedRecentItem();
  v40 = v39[10];
  v41 = (a2 + v39[11]);
  v42 = v41[1];
  v70[8] = *v41;
  v43 = *(a2 + v40 + 8);
  v70[6] = *(a2 + v40);
  v44 = v39[8];
  v45 = (a2 + v39[9]);
  v46 = v45[1];
  v70[4] = *v45;
  v47 = *(a2 + v44 + 8);
  v70[2] = *(a2 + v44);
  v70[1] = v47;

  v70[7] = v42;

  v70[5] = v43;

  v70[3] = v46;

  v48 = [a1 conversationID];
  v80 = a2;
  if (v48)
  {
    v49 = v48;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = type metadata accessor for UUID();
  v52 = *(*(v51 - 8) + 56);
  v52(v21, v50, 1, v51);
  v53 = v23;
  sub_10000AFFC(v21, v23, &qword_100124348);
  v54 = [a1 validRemoteParticipantHandles];
  if (v54)
  {
    v55 = v54;
    sub_10009EC68();
    sub_10000A844();
    v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = sub_10009ECB4(v56);

    v70[0] = sub_10000B08C(v57);
  }

  else
  {
    v70[0] = 0;
  }

  v73 = v31;
  sub_10000B818(v31, v83, &qword_100124378);
  [a1 mediaType];
  [a1 countOfExcludedHandles];
  v58 = [a1 participantGroupUUID];
  if (v58)
  {
    v59 = v71;
    v60 = v58;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
  }

  else
  {
    v61 = 1;
    v59 = v71;
  }

  v52(v59, v61, 1, v51);
  v62 = type metadata accessor for ConversationLink();
  (*(*(v62 - 8) + 56))(v74, 1, 1, v62);
  v63 = v53;
  sub_10000B818(v53, v72, &qword_100124348);
  v64 = a1;
  v65 = v75;
  RecentCallRecentItemMetadata.init(uniqueId:date:recentCall:mediaType:remoteParticipantHandles:countOfExcludedHandles:groupUUID:conversationLink:conversationID:)();
  v66 = v77;
  v67 = v78;
  (*(v77 + 16))(v76, v65, v78);
  v68 = type metadata accessor for RecentsCallItemType();
  (*(*(v68 - 8) + 56))(v79, 1, 1, v68);

  RecentsCallItem.init(recentsCallMetadata:contacts:title:subtitle:forcedSubtitle:senderIdentity:occurrenceCount:applicationIcon:type:isCommTrustBlocked:)();
  (*(v66 + 8))(v65, v67);
  sub_10000B880(v63, &qword_100124348);
  return sub_10000B880(v73, &qword_100124378);
}

unint64_t sub_10009EC68()
{
  result = qword_1001243D0;
  if (!qword_1001243D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001243D0);
  }

  return result;
}

uint64_t sub_10009ECB4(uint64_t a1)
{
  v66 = type metadata accessor for RecentsCallHandleType();
  v3 = *(v66 - 8);
  v4 = __chkstk_darwin(v66);
  v64 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v44 - v6;
  v7 = sub_1000525C4(&qword_100125AC0);
  __chkstk_darwin(v7 - 8);
  v62 = &v44 - v8;
  v67 = type metadata accessor for RecentsCallHandle();
  v9 = *(v67 - 8);
  v10 = __chkstk_darwin(v67);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v44 - v12;
  v50 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009EC68();
    sub_10000A844();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v70;
    v14 = v71;
    v15 = v72;
    v16 = v73;
    v17 = v74;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v16 = 0;
  }

  v49 = v15;
  v53 = enum case for RecentsCallHandleType.emailAddress(_:);
  v61 = (v3 + 104);
  v55 = enum case for RecentsCallHandleType.phoneNumber(_:);
  v52 = enum case for RecentsCallHandleType.generic(_:);
  v54 = enum case for RecentsCallHandleType.unknown(_:);
  v59 = (v3 + 8);
  v60 = (v3 + 16);
  v57 = (v9 + 48);
  v58 = (v9 + 56);
  v46 = v9;
  v47 = (v9 + 32);
  v51 = &_swiftEmptyArrayStorage;
  v65 = a1;
  v56 = v14;
LABEL_8:
  v21 = v16;
  v22 = v17;
  if (a1 < 0)
  {
    do
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_30;
      }

      v69 = v27;
      sub_10009EC68();
      swift_dynamicCast();
      v26 = v75;
      v16 = v21;
      v25 = v22;
      if (!v75)
      {
        goto LABEL_30;
      }

LABEL_17:
      v28 = [v26 type];
      v68 = v25;
      if (v28 == 3)
      {
        v29 = v53;
      }

      else
      {
        v29 = v55;
        if (v28 != 2)
        {
          v29 = v54;
          if (v28 == 1)
          {
            v29 = v52;
          }
        }
      }

      v30 = v63;
      v31 = v66;
      (*v61)(v63, v29, v66);
      (*v60)(v64, v30, v31);
      v32 = [v26 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v62;
      RecentsCallHandle.init(type:value:)();
      (*v59)(v30, v31);
      v34 = v67;
      (*v58)(v33, 0, 1, v67);

      if ((*v57)(v33, 1, v34) != 1)
      {
        v35 = v33;
        v36 = *v47;
        v37 = v45;
        v38 = v67;
        (*v47)(v45, v35, v67);
        v36(v48, v37, v38);
        v39 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10000B064(0, v39[2] + 1, 1, v39);
        }

        v40 = v46;
        v14 = v56;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_10000B064(v41 > 1, v42 + 1, 1, v39);
        }

        v39[2] = v42 + 1;
        v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v51 = v39;
        result = (v36)(v39 + v43 + *(v40 + 72) * v42, v48, v67);
        a1 = v65;
        v17 = v68;
        goto LABEL_8;
      }

      result = sub_10000B880(v33, &qword_100125AC0);
      v21 = v16;
      v22 = v68;
      a1 = v65;
      v14 = v56;
    }

    while (v65 < 0);
  }

  v23 = v21;
  v24 = v22;
  v16 = v21;
  if (v22)
  {
LABEL_13:
    v25 = (v24 - 1) & v24;
    v26 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v24)))));
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_30:
    sub_10000AC64();
    return v51;
  }

  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= ((v15 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v24 = *(v14 + 8 * v16);
    ++v23;
    if (v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10009F348(void *a1, uint64_t a2)
{
  v59 = a1;
  v64 = type metadata accessor for HandleType();
  v3 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Handle();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v53 - v10;
  v56 = a2;
  v11 = RecentCall.remoteParticipantHandles.getter();
  v12 = 0;
  v13 = v11 + 56;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;
  v67 = v6 + 32;
  v68 = v6 + 16;
  v61 = (v3 + 88);
  v60 = enum case for HandleType.unknown(_:);
  v58 = enum case for HandleType.generic(_:);
  v57 = enum case for HandleType.phoneNumber(_:);
  v55 = enum case for HandleType.emailAddress(_:);
  v54 = (v3 + 8);
  v18 = v9;
  v19 = v11;
  v70 = v6;
  v65 = v18;
  v66 = (v6 + 8);
  v71 = v5;
  v62 = v11;
  while (v16)
  {
LABEL_9:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v69;
    v22 = v70;
    (*(v70 + 16))(v69, *(v19 + 48) + *(v70 + 72) * (v21 | (v12 << 6)), v5);
    (*(v22 + 32))(v18, v23, v5);
    v24 = Handle.normalizedValue.getter();
    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = v24;
    v27 = v25;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = objc_opt_self();
      v30 = Handle.chHandle.getter();
      v31 = [v29 handleTypeForCHHandle:v30];

      Handle.value.getter();
      Handle.normalizedValue.getter();
      v33 = v32;
      v34 = String._bridgeToObjectiveC()();

      if (v33)
      {
        v35 = String._bridgeToObjectiveC()();
      }

      else
      {
        v35 = 0;
      }

      v45 = [objc_allocWithZone(TUHandle) initWithType:v31 value:v34 normalizedValue:v35];

      v5 = v71;
      v19 = v62;

      if (v45)
      {
        goto LABEL_26;
      }

LABEL_30:
      v18 = v65;
      (*v66)(v65, v5);
    }

    else
    {
LABEL_15:
      v36 = Handle.value.getter();
      v38 = v37;

      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = v63;
        Handle.type.getter();
        v41 = (*v61)(v40, v64);
        v5 = v71;
        if (v41 == v60)
        {
          goto LABEL_30;
        }

        if (v41 == v58)
        {
          v42 = objc_opt_self();
          Handle.value.getter();
          v43 = String._bridgeToObjectiveC()();

          v44 = [v42 normalizedGenericHandleForValue:v43];
          goto LABEL_21;
        }

        if (v41 != v57)
        {
          if (v41 != v55)
          {
            (*v54)(v63, v64);
            goto LABEL_30;
          }

          v52 = objc_opt_self();
          Handle.value.getter();
          v43 = String._bridgeToObjectiveC()();

          v44 = [v52 normalizedEmailAddressHandleForValue:v43];
LABEL_21:
          v45 = v44;

          if (!v45)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        Handle.value.getter();
        v49 = String._bridgeToObjectiveC()();

        RecentCall.isoCountryCode.getter();
        if (v50)
        {
          v51 = String._bridgeToObjectiveC()();
        }

        else
        {
          v51 = 0;
        }

        v45 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v49 isoCountryCode:v51];

        if (!v45)
        {
          goto LABEL_30;
        }

LABEL_26:
        v46 = [objc_allocWithZone(TUMetadataDestinationID) initWithHandle:v45];
        if (v46)
        {
          v47 = v46;
          v48 = v59;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v5 = v71;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          goto LABEL_30;
        }

        v18 = v65;
        (*v66)(v65, v5);
      }

      else
      {
        v5 = v71;
        (*v66)(v18, v71);
      }
    }
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v12;
    if (v16)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_10009F978(uint64_t a1)
{
  v2 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *(type metadata accessor for RecentCall() - 8);
    sub_10009F348(&v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2++);
  }

  return v6;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x70616373646E616CLL;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0x6E776F4465636166;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x705565636166;
  }

  else
  {
    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x70616373646E616CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }
}

Swift::Int sub_10009FF60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10009FFD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000A0018()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000016;
    if (v1 != 1)
    {
      v5 = 0x6269726373627573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684632949;
    }
  }

  else
  {
    v2 = 0x6C646E6148736168;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x6F697369766F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000A010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A1100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A014C(uint64_t a1)
{
  v2 = sub_1000A0E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A0188(uint64_t a1)
{
  v2 = sub_1000A0E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for VoicemailAccount()
{
  result = qword_100125B88;
  if (!qword_100125B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A0298()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000A0344(void *a1)
{
  v3 = sub_1000525C4(&qword_100125BB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BC24(a1, a1[3]);
  sub_1000A0E3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1000A1470(&qword_100125BB8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void *sub_1000A05D4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000525C4(&qword_100125B98);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - v7;
  sub_10000BC24(a1, a1[3]);
  sub_1000A0E3C();
  v21 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005964(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    v18 = a1;
    v10 = v19;
    v25 = 0;
    sub_1000A1470(&qword_100125BA8);
    v11 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = *(v10 + 32);
    v14 = v22;
    v13(&v22[OBJC_IVAR___MPVoicemailAccount_uuid], v5, v3);
    v25 = 1;
    v14[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 2;
    v14[OBJC_IVAR___MPVoicemailAccount_subscribed] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 3;
    v14[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 4;
    v14[OBJC_IVAR___MPVoicemailAccount_provisioned] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 5;
    v14[OBJC_IVAR___MPVoicemailAccount_hasHandle] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 6;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = &v14[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    *v16 = v15;
    v16[1] = v17;
    v24.receiver = v14;
    v24.super_class = ObjectType;
    a1 = objc_msgSendSuper2(&v24, "init");
    (*(v9 + 8))(v21, v11);
    sub_100005964(v18);
  }

  return a1;
}

void *sub_1000A0A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1000A05D4(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000A0B10()
{
  _StringGuts.grow(_:)(119);
  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001000DDC40;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1000A1470(&qword_100124560);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x80000001000DDC60;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x6972637362757320;
  v7._object = 0xED0000203A646562;
  String.append(_:)(v7);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._object = 0x80000001000DDC80;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v11);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x80000001000DDCA0;
  String.append(_:)(v15);

  sub_1000525C4(&qword_100126350);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  return 0;
}

unint64_t sub_1000A0E3C()
{
  result = qword_100125BA0;
  if (!qword_100125BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BA0);
  }

  return result;
}

uint64_t sub_1000A0E90(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_1001255A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000A0EF8(void *a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v11 + 32))(&v4[OBJC_IVAR___MPVoicemailAccount_uuid], v13, v10);
  v15 = [a1 accountDescription];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = &v4[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v20 = v17;
  v20[1] = v19;
  v4[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4 & 1;
  v21 = [a1 isProvisioned];
  v4[OBJC_IVAR___MPVoicemailAccount_provisioned] = v21;
  v22 = [a1 handle];
  v23 = v22;
  if (v22)
  {
  }

  v4[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v23 != 0;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_1000A1100(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000DDB00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000DDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F697369766F7270 && a2 == 0xEB0000000064656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C646E6148736168 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000DDB60 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000A1368(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  v5 = *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription) == *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  if (*(a1 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_subscribed) == *(a2 + OBJC_IVAR___MPVoicemailAccount_subscribed) && *(a1 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_provisioned) == *(a2 + OBJC_IVAR___MPVoicemailAccount_provisioned))
  {
    v7 = *(a1 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ *(a2 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ 1;
    return v7 & 1;
  }

LABEL_15:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_1000A1470(unint64_t *a1)
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

uint64_t getEnumTagSinglePayload for VoicemailAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A161C()
{
  result = qword_100125BC0;
  if (!qword_100125BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BC0);
  }

  return result;
}

unint64_t sub_1000A1674()
{
  result = qword_100125BC8;
  if (!qword_100125BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BC8);
  }

  return result;
}

unint64_t sub_1000A16CC()
{
  result = qword_100125BD0;
  if (!qword_100125BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BD0);
  }

  return result;
}

uint64_t sub_1000A1720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = String.init<A>(reflecting:)();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_1000A1988(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100004690(v3, a2);
  sub_1000046F4(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A1A00()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_1001289B0);
  sub_1000046F4(v0, qword_1001289B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A1A88()
{
  sub_1000A1B64();
  result = OS_os_log.init(subsystem:category:)();
  qword_1001289C8 = result;
  return result;
}

uint64_t sub_1000A1AE8()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_1001289D0);
  sub_1000046F4(v0, qword_1001289D0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1000A1B64()
{
  result = qword_100124820[0];
  if (!qword_100124820[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100124820);
  }

  return result;
}

uint64_t sub_1000A1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1000B93FC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100052C6C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1000B87A8();
        v16 = v18;
      }

      result = sub_1000B7E10(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1000A1CB8()
{
  v1 = *v0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_1000525C4(&unk_100124BB0);
  v3 = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v1 contactsForHandles:isa keyDescriptors:v3];

  if (!v4)
  {
    return 0;
  }

  sub_1000525C4(&qword_1001243F0);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void (*sub_1000A1D8C(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 40);

  os_unfair_lock_unlock((v1 + 32));
  *a1 = v3;
  return sub_1000A1DF4;
}

void sub_1000A1DF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 32));

    *(v3 + 40) = v2;
    os_unfair_lock_unlock((v3 + 32));
  }

  else
  {
    os_unfair_lock_lock((v3 + 32));

    *(v3 + 40) = v2;

    os_unfair_lock_unlock((v3 + 32));
  }
}

uint64_t sub_1000A1E84(uint64_t a1)
{
  v3 = sub_1000525C4(&unk_100126020);
  v4 = __chkstk_darwin(v3 - 8);
  v110 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v113 = v107 - v7;
  v8 = __chkstk_darwin(v6);
  v112 = v107 - v9;
  __chkstk_darwin(v8);
  v11 = v107 - v10;
  v12 = type metadata accessor for CoalescedRecentItem();
  v123 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v111 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v119 = v107 - v16;
  v17 = __chkstk_darwin(v15);
  v120 = v107 - v18;
  __chkstk_darwin(v17);
  v134 = v107 - v19;
  v133 = type metadata accessor for RecentCall();
  v20 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for UUID();
  v22 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for HistoryItem();
  v138 = *(v143 - 8);
  v24 = __chkstk_darwin(v143);
  v26 = (v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v147 = v107 - v27;
  v142 = v1;
  result = sub_1000A2DA8(a1);
  v108 = *(a1 + 16);
  if (!v108)
  {
    return result;
  }

  v29 = 0;
  v30 = *(type metadata accessor for GroupedHistoryItem() - 8);
  v107[1] = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v131 = v138 + 16;
  v130 = (v22 + 8);
  v129 = v138 + 88;
  v128 = enum case for HistoryItem.recentCall(_:);
  v118 = enum case for HistoryItem.message(_:);
  v127 = (v138 + 8);
  v126 = (v138 + 96);
  v140 = (v123 + 56);
  v125 = (v123 + 48);
  v117 = (v20 + 32);
  v116 = (v20 + 8);
  v107[0] = *(v30 + 72);
  v121 = v11;
  v122 = v12;
  v145 = v26;
  while (1)
  {
    v109 = v29;
    v141 = GroupedHistoryItem.items.getter();
    v31 = v113;
    v32 = v143;
    v139 = *(v141 + 16);
    if (v139)
    {
      break;
    }

LABEL_3:
    v29 = v109 + 1;

    if (v29 == v108)
    {
      return result;
    }
  }

  v33 = 0;
  v137 = v141 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
  while (v33 < *(v141 + 16))
  {
    v35 = v138;
    v36 = *(v138 + 16);
    v37 = v147;
    v36(v147, v137 + *(v138 + 72) * v33, v32);
    v38 = v135;
    HistoryItem.uniqueID.getter();
    v146 = UUID.uuidString.getter();
    v144 = v39;
    v40 = v38;
    v32 = v143;
    (*v130)(v40, v136);
    v36(v145, v37, v32);
    v41 = v145;
    v42 = (*(v35 + 88))(v145, v32);
    if (v42 == v128)
    {
      (*v126)(v41, v32);
      v43 = v132;
      (*v117)(v132, v41, v133);
      v44 = v134;
      v45 = v43;
      v46 = v142;
      sub_1000A52FC(v45, 0, v134);
      sub_10005B644(v44, v11);
      v47 = *v140;
      (*v140)(v11, 0, 1, v12);
      os_unfair_lock_lock(v46 + 8);
      v48 = *&v46[10]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v46 + 8);
      if ((*v125)(v11, 1, v12) == 1)
      {
        sub_10000B880(v11, &unk_100126020);
        v49 = sub_100052C6C(v146, v144);
        v51 = v50;

        if (v51)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148 = v48;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000B8920();
            v48 = v148;
          }

          v53 = v112;
          sub_10005B6A8(v48[7] + *(v123 + 72) * v49, v112);
          sub_1000B7FC0(v49, v48);
          v54 = 0;
          v12 = v122;
        }

        else
        {
          v54 = 1;
          v12 = v122;
          v53 = v112;
        }

        v47(v53, v54, 1, v12);
        sub_10000B880(v53, &unk_100126020);
      }

      else
      {
        sub_10005B6A8(v11, v120);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v48;
        v65 = v144;
        v66 = sub_100052C6C(v146, v144);
        v68 = v48[2];
        v69 = (v67 & 1) == 0;
        v70 = __OFADD__(v68, v69);
        v71 = v68 + v69;
        if (v70)
        {
          goto LABEL_62;
        }

        v72 = v67;
        if (v48[3] >= v71)
        {
          if ((v64 & 1) == 0)
          {
            v106 = v66;
            sub_1000B8920();
            v66 = v106;
            v65 = v144;
          }
        }

        else
        {
          sub_100057548(v71, v64);
          v66 = sub_100052C6C(v146, v65);
          if ((v72 & 1) != (v73 & 1))
          {
            goto LABEL_69;
          }
        }

        v11 = v121;
        if (v72)
        {
          v74 = v66;

          v48 = v148;
          sub_1000AE4BC(v120, v148[7] + *(v123 + 72) * v74);
        }

        else
        {
          v48 = v148;
          v148[(v66 >> 6) + 8] |= 1 << v66;
          v75 = (v48[6] + 16 * v66);
          *v75 = v146;
          v75[1] = v65;
          sub_10005B6A8(v120, v48[7] + *(v123 + 72) * v66);
          v76 = v48[2];
          v70 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v70)
          {
            goto LABEL_65;
          }

          v48[2] = v77;
        }
      }

      v78 = v142;
      v32 = v143;
      os_unfair_lock_lock(v142 + 8);

      *&v78[10]._os_unfair_lock_opaque = v48;
      os_unfair_lock_unlock(v78 + 8);
      sub_10005B5A0(v134);
      (*v116)(v132, v133);
      goto LABEL_59;
    }

    if (v42 == v118)
    {
      (*v126)(v41, v32);
      v124 = *v41;
      v55 = HistoryItem.handles.getter();
      v56 = *(v55 + 16);
      if (v56)
      {
        sub_1000525C4(&qword_100124398);
        v57 = *(type metadata accessor for Handle() - 8);
        v58 = *(v57 + 72);
        v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v60 = swift_allocObject();
        v61 = j__malloc_size(v60);
        if (!v58)
        {
          goto LABEL_63;
        }

        if (v61 - v59 == 0x8000000000000000 && v58 == -1)
        {
          goto LABEL_67;
        }

        v60[2] = v56;
        v60[3] = 2 * ((v61 - v59) / v58);
        v63 = sub_10005A258(&v148, v60 + v59, v56, v55);

        sub_10000AC64();
        if (v63 != v56)
        {
          goto LABEL_64;
        }

        v31 = v113;
        v11 = v121;
        v12 = v122;
        v32 = v143;
      }

      else
      {
        v60 = &_swiftEmptyArrayStorage;
      }

      v79 = sub_1000592EC();
      v80 = sub_1000592F4(v60, 0, 1, v79);
      v81 = v60[2];

      if (v81 <= 0xF)
      {

        v80 = 0;
      }

      v82 = v119;
      v114 = v80;
      v115 = v60;
      v83 = v142;
      sub_1000A5898(v124, v80, v60, v119);
      sub_10005B644(v82, v31);
      v84 = *v140;
      (*v140)(v31, 0, 1, v12);
      os_unfair_lock_lock(v83 + 8);
      v85 = *&v83[10]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v83 + 8);
      if ((*v125)(v31, 1, v12) == 1)
      {
        sub_10000B880(v31, &unk_100126020);
        v86 = sub_100052C6C(v146, v144);
        v88 = v87;

        if (v88)
        {
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v148 = v85;
          if (!v89)
          {
            sub_1000B8920();
            v85 = v148;
          }

          v90 = v110;
          sub_10005B6A8(v85[7] + *(v123 + 72) * v86, v110);
          sub_1000B7FC0(v86, v85);
          v91 = 0;
        }

        else
        {
          v91 = 1;
          v90 = v110;
        }

        v84(v90, v91, 1, v12);
        sub_10000B880(v90, &unk_100126020);
        v31 = v113;
      }

      else
      {
        sub_10005B6A8(v31, v111);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v85;
        v93 = v144;
        v95 = sub_100052C6C(v146, v144);
        v96 = v85[2];
        v97 = (v94 & 1) == 0;
        v98 = v96 + v97;
        if (__OFADD__(v96, v97))
        {
          goto LABEL_66;
        }

        v99 = v94;
        if (v85[3] >= v98)
        {
          if ((v92 & 1) == 0)
          {
            sub_1000B8920();
            v93 = v144;
          }
        }

        else
        {
          sub_100057548(v98, v92);
          v100 = sub_100052C6C(v146, v93);
          if ((v99 & 1) != (v101 & 1))
          {
            goto LABEL_69;
          }

          v95 = v100;
        }

        v12 = v122;
        v85 = v148;
        if (v99)
        {
          sub_1000AE4BC(v111, v148[7] + *(v123 + 72) * v95);
        }

        else
        {
          v148[(v95 >> 6) + 8] |= 1 << v95;
          v102 = (v85[6] + 16 * v95);
          *v102 = v146;
          v102[1] = v93;
          sub_10005B6A8(v111, v85[7] + *(v123 + 72) * v95);
          v103 = v85[2];
          v70 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v70)
          {
            goto LABEL_68;
          }

          v85[2] = v104;
        }

        v11 = v121;
      }

      v105 = v142;
      os_unfair_lock_lock(v142 + 8);

      *&v105[10]._os_unfair_lock_opaque = v85;
      os_unfair_lock_unlock(v105 + 8);

      sub_10005B5A0(v119);
LABEL_59:
      (*v127)(v147, v32);
      goto LABEL_7;
    }

    v34 = *v127;
    (*v127)(v147, v32);

    v34(v41, v32);
LABEL_7:
    if (v139 == ++v33)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A2DA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Handle();
  v105 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v104 = v86 - v8;
  v98 = type metadata accessor for Person();
  v94 = *(v98 - 8);
  v9 = __chkstk_darwin(v98);
  v113 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v91 = v86 - v12;
  v86[0] = *(a1 + 16);
  if (!v86[0])
  {
    return result;
  }

  v13 = type metadata accessor for GroupedHistoryItem();
  v14 = 0;
  v15 = *(v13 - 8);
  v86[2] = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v90 = v94 + 16;
  v89 = v94 + 32;
  v102 = v105 + 32;
  v103 = v105 + 16;
  v99 = (v105 + 8);
  v88 = (v94 + 8);
  v86[1] = *(v15 + 72);
  v100 = v7;
  v101 = v4;
  while (1)
  {
    v87 = v14 + 1;
    v16 = GroupedHistoryItem.people.getter();
    v17 = 0;
    v19 = v16 + 56;
    v18 = *(v16 + 56);
    v95 = v16;
    v20 = 1 << *(v16 + 32);
    v21 = v20 < 64 ? ~(-1 << v20) : -1;
    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v93 = v16 + 56;
    v92 = v23;
LABEL_9:
    if (v22)
    {
      break;
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_74;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v24);
      ++v17;
      if (v22)
      {
        goto LABEL_14;
      }
    }

    v14 = v87;
    if (v87 == v86[0])
    {
      return result;
    }
  }

  v24 = v17;
LABEL_14:
  v96 = v24;
  v97 = (v22 - 1) & v22;
  v25 = v94;
  v26 = v91;
  v27 = v98;
  (*(v94 + 16))(v91, *(v95 + 48) + *(v94 + 72) * (__clz(__rbit64(v22)) | (v24 << 6)), v98);
  (*(v25 + 32))(v113, v26, v27);
  v28 = Person.handles.getter();
  v29 = 0;
  v31 = v28 + 56;
  v30 = *(v28 + 56);
  v107 = v28 + 56;
  v108 = v28;
  v32 = 1 << *(v28 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v106 = v35;
  while (1)
  {
    if (!v34)
    {
      do
      {
        v36 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_72;
        }

        if (v36 >= v35)
        {
          (*v88)(v113, v98);

          v17 = v96;
          v22 = v97;
          v19 = v93;
          v23 = v92;
          goto LABEL_9;
        }

        v34 = *(v31 + 8 * v36);
        ++v29;
      }

      while (!v34);
      v29 = v36;
    }

    v38 = v104;
    v37 = v105;
    (*(v105 + 16))(v104, *(v108 + 48) + *(v105 + 72) * (__clz(__rbit64(v34)) | (v29 << 6)), v4);
    (*(v37 + 32))(v7, v38, v4);
    Handle.value.getter();
    v39 = String.count.getter();

    v109 = v34;
    v110 = v29;
    if (v39 <= 0)
    {
      v43 = &_swiftEmptyArrayStorage;
      v52 = *(&_swiftEmptyArrayStorage + 2);
      if (v52)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    v40 = Handle.value.getter();
    v42 = v41;
    v43 = sub_1000518D0(0, 1, 1, &_swiftEmptyArrayStorage);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1000518D0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[16 * v45];
    *(v46 + 4) = v40;
    *(v46 + 5) = v42;
    v47 = Handle.normalizedValue.getter();
    if (v48)
    {
      break;
    }

LABEL_37:
    v52 = *(v43 + 2);
    if (v52)
    {
      goto LABEL_38;
    }

LABEL_18:
    v34 = (v109 - 1) & v109;

    v7 = v100;
    v4 = v101;
    (*v99)(v100, v101);
    v35 = v106;
    v31 = v107;
    v29 = v110;
  }

  v49 = v47;
  v50 = v48;
  if (String.count.getter() < 1)
  {
    goto LABEL_36;
  }

  if (v49 == Handle.value.getter() && v50 == v51)
  {

    v52 = *(v43 + 2);
    if (v52)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_36:

    goto LABEL_37;
  }

  v84 = *(v43 + 2);
  v83 = *(v43 + 3);
  if (v84 >= v83 >> 1)
  {
    v43 = sub_1000518D0((v83 > 1), v84 + 1, 1, v43);
  }

  *(v43 + 2) = v84 + 1;
  v85 = &v43[16 * v84];
  *(v85 + 4) = v49;
  *(v85 + 5) = v50;
  v52 = *(v43 + 2);
  if (!v52)
  {
    goto LABEL_18;
  }

LABEL_38:
  v54 = 0;
  v55 = (v43 + 40);
  v111 = v52;
  v112 = v43;
  while (2)
  {
    if (v54 < *(v43 + 2))
    {
      v56 = *(v55 - 1);
      v57 = *v55;

      os_unfair_lock_lock((v2 + 16));
      v58 = *(v2 + 24);

      os_unfair_lock_unlock((v2 + 16));
      if (*(v58 + 16))
      {
        sub_100052C6C(v56, v57);
        if (v59)
        {
          goto LABEL_39;
        }
      }

      v60 = Person.contacts.getter();
      if (!(v60 >> 62))
      {
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

LABEL_39:

LABEL_40:
        ++v54;
        v55 += 2;
        if (v52 == v54)
        {
          goto LABEL_18;
        }

        continue;
      }

      v77 = v60;
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v60 = v77;
      if (!v78)
      {
        goto LABEL_39;
      }

LABEL_46:
      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v61 = *(v60 + 32);
      }

      v62 = v61;

      v63 = v62;
      os_unfair_lock_lock((v2 + 16));
      v64 = *(v2 + 24);

      os_unfair_lock_unlock((v2 + 16));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v64;
      v67 = sub_100052C6C(v56, v57);
      v68 = v64[2];
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_70;
      }

      v71 = v66;
      if (v64[3] >= v70)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v66 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          sub_1000B8638();
          if ((v71 & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        sub_100056FE4(v70, isUniquelyReferenced_nonNull_native);
        v72 = sub_100052C6C(v56, v57);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_75;
        }

        v67 = v72;
        if ((v71 & 1) == 0)
        {
LABEL_61:
          v74 = v114;
          v114[(v67 >> 6) + 8] |= 1 << v67;
          v79 = (v74[6] + 16 * v67);
          *v79 = v56;
          v79[1] = v57;
          *(v74[7] + 8 * v67) = v63;
          v80 = v74[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_73;
          }

          v74[2] = v82;
          goto LABEL_63;
        }
      }

      v74 = v114;
      v75 = v114[7];
      v76 = *(v75 + 8 * v67);
      *(v75 + 8 * v67) = v63;

LABEL_63:
      os_unfair_lock_lock((v2 + 16));

      *(v2 + 24) = v74;
      os_unfair_lock_unlock((v2 + 16));

      v52 = v111;
      v43 = v112;
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1000A365C()
{
  Handle.value.getter();
  v0 = String.count.getter();

  if (v0 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = Handle.value.getter();
  v3 = v2;
  v4 = sub_1000518D0(0, 1, 1, &_swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1000518D0((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v1;
  *(v7 + 5) = v3;
  v8 = Handle.normalizedValue.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (String.count.getter() < 1)
    {
LABEL_11:

      return v4;
    }

    if (v10 == Handle.value.getter() && v11 == v12)
    {

      goto LABEL_11;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_11;
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1000518D0((v15 > 1), v16 + 1, 1, v4);
    }

    *(v4 + 2) = v16 + 1;
    v17 = &v4[16 * v16];
    *(v17 + 4) = v10;
    *(v17 + 5) = v11;
  }

  return v4;
}

uint64_t sub_1000A37D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CoalescedRecentItem();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v38 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecentCall();
  result = __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v53 = v19;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v39 = v49 + 8;
    v51 = *(v18 + 56);
    v52 = (v9 + 8);
    v42 = v46 + 48;
    v43 = v12;
    v54 = v18;
    v50 = (v18 - 8);
    v44 = v8;
    v19(v16, v20, v12);
    while (1)
    {
      RecentCall.uniqueID.getter();
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*v52)(v11, v8);
      os_unfair_lock_lock((v2 + 32));
      v24 = *(v2 + 40);

      os_unfair_lock_unlock((v2 + 32));
      if (*(v24 + 16) && (v25 = sub_100052C6C(v21, v23), (v26 & 1) != 0))
      {
        v27 = v45;
        v28 = v46;
        sub_10005B644(*(v24 + 56) + *(v46 + 72) * v25, v45);

        sub_10005B6A8(v27, v49);
        v48 = sub_1000A1D8C(v56);
        v29 = sub_1000A3C4C(v55, v21, v23);
        v31 = v30;
        if ((*(v28 + 48))(v30, 1, v47))
        {
          (v29)(v55, 0);
        }

        else
        {
          v41 = v29;
          v32 = RecentCall.chRecentCall.getter();
          v33 = RecentCall.coalescedCalls.getter();
          v34 = sub_1000AC770(v32, v33, *(v39 + *(v47 + 52)));
          v40 = v35;

          v36 = (v31 + *(v47 + 40));
          v37 = v40;
          *v36 = v34;
          v36[1] = v37;

          v41(v55, 0);
        }

        v48(v56, 0);
        v12 = v43;
        (*v50)(v16, v43);
        result = sub_10005B5A0(v49);
        v8 = v44;
      }

      else
      {

        result = (*v50)(v16, v12);
      }

      v20 += v51;
      if (!--v17)
      {
        break;
      }

      v53(v16, v20, v12);
    }
  }

  return result;
}

void (*sub_1000A3C4C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000A9860(v6, a2, a3);
  return sub_1000A3CD4;
}