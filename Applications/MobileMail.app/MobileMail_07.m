uint64_t sub_100285EC0()
{
  sub_10025C9B0(&unk_1006D7160);
  sub_100288240();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_100285F68(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_100286010()
{
  v2 = qword_1006DCBB0;
  if (!qword_1006DCBB0)
  {
    sub_10025CAA4(&unk_1006D7270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100286098(uint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100286140(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002862AC()
{
  v0 = sub_10025C9B0(&qword_1006D7258);
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v9 = &v3 - v8;
  IntentFile.type.getter();
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_100286098(v9);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = UTType.preferredMIMEType.getter();
    v5 = v1;
    (*(v11 + 8))(v9, v10);
    v6 = v4;
    v7 = v5;
  }

  v3 = v13;
  v13[0] = v6;
  v13[1] = v7;
  sub_10025C9B0(&unk_1006D7340);
  return String.init<A>(describing:)();
}

uint64_t sub_10028643C()
{
  type metadata accessor for IntentFile();

  return sub_1002862AC();
}

uint64_t sub_1002864A0()
{
  type metadata accessor for IntentFile();

  return sub_100286230();
}

uint64_t sub_100286504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[14] = a3;
  v5[13] = a2;
  v5[12] = a1;
  v5[8] = v5;
  v5[9] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[10] = 0;
  v5[11] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[9] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[10] = v4;
  return _swift_task_switch(sub_100286590, 0);
}

uint64_t sub_100286590()
{
  v1 = *(v0 + 104);
  v17 = v1;
  *(v0 + 64) = v0;
  sub_1002882C8(v1);
  if (v17)
  {
    v14 = *(v16 + 104);
    v13 = *(v16 + 112);
    v12 = *(v16 + 120);
    *(v16 + 40) = v14;
    *(v16 + 48) = v13;
    *(v16 + 56) = v12;
    sub_100288380();
    v2 = sub_10025DA38(v14);
    v4 = sub_100286980(v2, v3);
    v15 = v4;
    if (!v4)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    _objc_retain(v4);
    *(v16 + 88) = v15;
    _objc_release(v14);

    v11 = v15;
  }

  else
  {
    v10 = [objc_opt_self() defaultMailAccountForDelivery];
    if (!v10)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    _objc_retain(v10);
    *(v16 + 88) = v10;
    v11 = v10;
  }

  v8 = objc_opt_self();
  sub_10028831C();
  v9 = sub_10028F31C(v11);
  if (!v9)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v7 = [v8 legacyMessageWithMessage:*(v16 + 96) mailboxUid:?];
  _objc_release(v9);
  _objc_release(*(v16 + 88));
  v5 = *(*(v16 + 64) + 8);

  return v5(v7);
}

id sub_100286980(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() accountWithUniqueId:v5];
  _objc_release(v5);
  return v3;
}

uint64_t sub_100286A40()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

uint64_t sub_100286B70(id *a1)
{
  v3 = *a1;
  _objc_retain(*a1);
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
    v2 = 1;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100286CA8()
{
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v53 = 0;
  v48 = type metadata accessor for IntentPerson.Handle.Value();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v52 = (&v13 - v51);
  v69 = type metadata accessor for IntentPerson.Handle();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v54 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v55 = &v13 - v54;
  v80 = &v13 - v54;
  v56 = type metadata accessor for IntentPerson.Name();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v60 = &v13 - v59;
  v1 = sub_10025C9B0(&unk_1006D7300);
  v61 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v62 = &v13 - v61;
  v63 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v61);
  v68 = &v13 - v63;
  v3 = sub_10025C9B0(&unk_1006DCC00);
  v64 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v65 = (&v13 - v64);
  v79 = v0;
  IntentPerson.handle.getter();
  v70 = *(v66 + 48);
  v71 = v66 + 48;
  if (v70(v68, 1, v69) == 1)
  {
    sub_100288550(v68);
    (*(v49 + 56))(v65, 1, 1, v48);
  }

  else
  {
    IntentPerson.Handle.value.getter();
    (*(v66 + 8))(v68, v69);
    (*(v49 + 56))(v65, 0, 1, v48);
  }

  if ((*(v49 + 48))(v65, 1, v48) == 1)
  {
    sub_1002885F8(v65);
  }

  else
  {
    if ((*(v49 + 88))(v65, v48) == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      (*(v49 + 96))(v65, v48);
      v41 = *v65;
      v42 = v65[1];
      v72 = v41;
      v73 = v42;

      v45 = String._bridgeToObjectiveC()();

      IntentPerson.name.getter();
      IntentPerson.Name.displayString.getter();
      v43 = v4;
      v44 = String._bridgeToObjectiveC()();
      (*(v57 + 8))(v60, v56);

      v46 = v44;
      location = 0;
      objc_storeStrong(&location, v45);
      v84 = 0;
      objc_storeStrong(&v84, v46);
      v5 = [ECEmailAddressComponents alloc];
      v83 = [v5 initWithString:location];
      [v83 setDisplayName:v84];
      v47 = [v83 emailAddressValue];
      v81 = 0;
      if (v47)
      {
        v40 = v47;
      }

      else
      {
        v39 = [v83 stringValue];
        v82 = v39;
        v81 = 1;
        if (v39)
        {
          v38 = v39;
        }

        else
        {
          v38 = location;
        }

        v40 = v38;
      }

      v86 = _objc_retain(v40);
      if (v81)
      {
        _objc_release(v82);
      }

      _objc_release(v47);
      v30 = 0;
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&v84, v30);
      objc_storeStrong(&location, v30);
      v31 = v86;
      v6 = v86;
      v32 = v31;
      _objc_release(v44);
      _objc_release(v45);
      swift_getObjectType();
      v33 = [v32 stringValue];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v7;
      swift_unknownObjectRelease();
      _objc_release(v33);

      v36 = v34;
      v37 = v35;
      return v36;
    }

    (*(v49 + 8))(v65, v48);
  }

  v76 = IntentPerson.aliases.getter();
  v29 = sub_10025C9B0(&qword_1006D7310);
  sub_1002886A0();
  Collection<>.makeIterator()();
  while (1)
  {
    sub_10025C9B0(&unk_1006D7320);
    IndexingIterator.next()();
    if (v70(v62, 1, v69) == 1)
    {
      sub_100264880();
      v36 = 0;
      v37 = 0;
      return v36;
    }

    (*(v66 + 32))(v55, v62, v69);
    IntentPerson.Handle.value.getter();
    if ((*(v49 + 88))(v52, v48) == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      break;
    }

    (*(v49 + 8))(v52, v48);
    (*(v66 + 8))(v55, v69);
  }

  (*(v49 + 96))(v52, v48);
  v22 = *v52;
  v23 = v52[1];
  v74 = v22;
  v75 = v23;

  v26 = String._bridgeToObjectiveC()();

  IntentPerson.name.getter();
  IntentPerson.Name.displayString.getter();
  v24 = v8;
  v25 = String._bridgeToObjectiveC()();
  (*(v57 + 8))(v60, v56);

  v27 = v25;
  v91 = 0;
  objc_storeStrong(&v91, v26);
  v90 = 0;
  objc_storeStrong(&v90, v27);
  v9 = [ECEmailAddressComponents alloc];
  v89 = [v9 initWithString:v91];
  [v89 setDisplayName:v90];
  v28 = [v89 emailAddressValue];
  v87 = 0;
  if (v28)
  {
    v21 = v28;
  }

  else
  {
    v20 = [v89 stringValue];
    v88 = v20;
    v87 = 1;
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v19 = v91;
    }

    v21 = v19;
  }

  v92 = _objc_retain(v21);
  if (v87)
  {
    _objc_release(v88);
  }

  _objc_release(v28);
  v13 = 0;
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, v13);
  objc_storeStrong(&v91, v13);
  v14 = v92;
  v10 = v92;
  v15 = v14;
  _objc_release(v25);
  _objc_release(v26);
  swift_getObjectType();
  v16 = [v15 stringValue];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v11;
  swift_unknownObjectRelease();
  _objc_release(v16);

  (*(v66 + 8))(v55, v69);
  sub_100264880();
  v36 = v17;
  v37 = v18;
  return v36;
}

uint64_t sub_100287B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100286CA8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_100287B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100287C54;

  return sub_100286504(a1, a2, a3, a4);
}

uint64_t sub_100287C54(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

id sub_100287F4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100288010(a1, a2);
    v5 = isa;
  }

  v3 = [v8 initWithData:?];
  _objc_release(v5);
  return v3;
}

uint64_t sub_100288010(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_10028808C()
{
  type metadata accessor for URL();

  return sub_100286288();
}

unint64_t sub_1002880F0()
{
  v2 = qword_1006D7298;
  if (!qword_1006D7298)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7298);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288154()
{
  v2 = qword_1006D72A0;
  if (!qword_1006D72A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002881B8()
{
  v2 = qword_1006D72B0;
  if (!qword_1006D72B0)
  {
    sub_10025CAA4(&qword_1006D72A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D72B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288240()
{
  v2 = qword_1006D72C8;
  if (!qword_1006D72C8)
  {
    sub_10025CAA4(&unk_1006D7160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D72C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002882C8(void *result)
{
  if (result)
  {
    _objc_retain(result);
  }

  return result;
}

unint64_t sub_10028831C()
{
  v2 = qword_1006D72D0;
  if (!qword_1006D72D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288380()
{
  v2 = qword_1006D72D8;
  if (!qword_1006D72D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002883E4()
{
  v2 = qword_1006D72E0;
  if (!qword_1006D72E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288448()
{
  v2 = qword_1006D7CF0;
  if (!qword_1006D7CF0)
  {
    sub_1002883E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002884C8()
{
  v2 = qword_1006D7D00;
  if (!qword_1006D7D00)
  {
    sub_10025CAA4(&unk_1006D72F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7D00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288550(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson.Handle();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002885F8(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson.Handle.Value();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1002886A0()
{
  v2 = qword_1006D7318;
  if (!qword_1006D7318)
  {
    sub_10025CAA4(&qword_1006D7310);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288728()
{
  v2 = qword_1006D7390;
  if (!qword_1006D7390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002887A0()
{
  v2 = qword_1006D7330;
  if (!qword_1006D7330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288818()
{
  v2 = qword_1006DBA90;
  if (!qword_1006DBA90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288890@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v31 = 0;
  v30 = sub_100288F84;
  v1 = sub_10025C9B0(&qword_1006D7350);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v9 - v10;
  v25 = sub_10025C9B0(&qword_1006D7358);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = &v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v22 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v26 = &v9 - v13;
  v33 = sub_100288CC8();
  v32 = &unk_1006587E0;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send ", 5uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7368);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v18 = 4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v28 & 1);
  v16 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v17 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7370);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as ", v18, v28 & 1);
  v19 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  v20 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7378);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v28 & 1);
  v21 = v7._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);

  (*(v23 + 16))(v22, v26, v25);
  (*(v23 + 32))(v27, v22, v25);
  (*(v23 + 8))(v26, v25);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_100288CC8()
{
  v2 = qword_1006D7360;
  if (!qword_1006D7360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288D44()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_100288D9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288D44();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100288E04()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_100288E5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288E04();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100288EC4()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_100288F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288EC4();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100288F84()
{
  swift_getKeyPath();
  sub_100288CC8();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&unk_1006D74D0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100289148()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_1002891A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289148();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100289208()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_100289260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289208();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_1002892C8()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_100289320@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002892C8();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100289388()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_1002893E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028B3B4(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289388();
  result = __dst;
  *a2 = v2;
  sub_10028E32C();
  return result;
}

uint64_t sub_100289454()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_1002894B0(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_100289534()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_10028958C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1002895B8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289614()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289688()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1002896B4()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289710()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289784()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1002897B0()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10028980C()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289880()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1002898AC(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t sub_1002898E8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289950()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1002899D8()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_100289A04(uint64_t a1)
{

  *(v1 + 32) = a1;
}

uint64_t sub_100289A40()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_100289A94(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

void *sub_100289B6C(const void *a1, void *a2)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006D7380);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100289C94()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_100289CC0(uint64_t a1)
{

  *(v1 + 40) = a1;
}

uint64_t sub_100289CFC()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

void *sub_100289D70(void *a1)
{

  sub_1002882C8(a1);
  IntentParameter.wrappedValue.setter();

  return sub_100289E1C(a1);
}

void *sub_100289E1C(void *result)
{
  if (result)
  {
    _objc_release(result);
  }

  return result;
}

uint64_t sub_100289E70()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_100289E9C(uint64_t a1)
{

  *(v1 + 48) = a1;
}

uint64_t sub_100289ED8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289F34()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289FA8()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_100289FD4(uint64_t a1)
{

  *(v1 + 56) = a1;
}

uint64_t sub_10028A010(uint64_t a1)
{
  v2[93] = v1;
  v2[92] = a1;
  v2[81] = v2;
  v2[82] = 0;
  v2[83] = 0;
  v2[88] = 0;
  v2[89] = 0;
  v2[90] = 0;
  v2[79] = 0;
  v2[80] = 0;
  v3 = type metadata accessor for Logger();
  v2[94] = v3;
  v2[95] = *(v3 - 8);
  v2[96] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7380);
  v2[97] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[98] = v4;
  v2[99] = *(v4 - 8);
  v2[100] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7250);
  v2[101] = swift_task_alloc();
  v2[82] = v1;
  type metadata accessor for MainActor();
  v2[102] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10028A23C, v5);
}

uint64_t sub_10028A23C()
{
  *(v0 + 648) = v0;
  v75 = sub_100289454();
  sub_10035277C();
  v71 = *(v74 + 744);
  _objc_release(v75);
  v72 = swift_allocObject();
  *(v74 + 664) = v72 + 2;
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = 0;
  v72[5] = 0;
  memcpy((v74 + 160), v71, 0x40uLL);
  sub_100288728();
  v73 = sub_100286A40();
  if (v73)
  {
    *(v74 + 728) = &OBJC_PROTOCOL___ComposeCapable;
    v70 = swift_dynamicCastObjCProtocolConditional();
    if (v70)
    {
      v69 = v70;
    }

    else
    {
      _objc_release(v73);
      v69 = 0;
    }

    v68 = v69;
  }

  else
  {
    v68 = 0;
  }

  if (v68)
  {
    v61 = *(v74 + 808);
    __src = *(v74 + 744);
    *(v74 + 704) = v68;
    sub_10028D4AC();
    v1 = type metadata accessor for URL();
    (*(*(v1 - 8) + 56))(v61, 1);
    v63 = sub_10028B4B4(v61, 0, 0, 0);
    *(v74 + 712) = v63;
    memcpy((v74 + 288), __src, 0x40uLL);
    sub_100282548(v63);
    memcpy((v74 + 352), __src, 0x40uLL);
    sub_100286C38(v68, v63);
    v64 = [v63 attachments];
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 720) = v65;
    _objc_release(v64);
    v66 = [objc_opt_self() defaultCenter];
    v67 = MFMailComposeControllerDidLaunchNotification;
    _objc_retain(MFMailComposeControllerDidLaunchNotification);
    *(v74 + 560) = 0;
    *(v74 + 568) = 0;
    *(v74 + 576) = 0;
    *(v74 + 584) = 0;
    if (*(v74 + 584))
    {
      v57 = *(v74 + 584);
      v55 = sub_10027EC3C((v74 + 560), v57);
      v56 = *(v57 - 8);
      v58 = swift_task_alloc();
      (*(v56 + 16))(v58, v55, v57);
      v59 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v56 + 8))(v58, v57);

      sub_1000160F4(v74 + 560);
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    v2 = *(v74 + 744);
    v51 = [objc_opt_self() mainQueue];
    sub_10028B3B4(v2, (v74 + 416));

    v49 = swift_allocObject();
    memcpy(v49 + 2, v2, 0x40uLL);
    v49[10] = v65;
    v49[11] = v72;
    *(v74 + 512) = sub_10028D510;
    *(v74 + 520) = v49;
    *(v74 + 480) = _NSConcreteStackBlock;
    *(v74 + 488) = 1107296256;
    *(v74 + 492) = 0;
    *(v74 + 496) = sub_10028C0DC;
    *(v74 + 504) = &unk_100658750;
    aBlock = _Block_copy((v74 + 480));

    v52 = [v66 addObserverForName:v67 object:v60 queue:v51 usingBlock:aBlock];
    _Block_release(aBlock);
    _objc_release(v51);
    swift_unknownObjectRelease();
    _objc_release(v67);
    _objc_release(v66);
    *(v74 + 552) = swift_getObjectType();
    *(v74 + 528) = v52;
    swift_beginAccess();
    sub_10028D584((v74 + 528), (v72 + 2));
    swift_endAccess();
    v53 = sub_100289454();
    v54 = sub_10035333C();
    _objc_release(v53);
    if (v54)
    {
      v48 = [v54 autosaveIdentifier];
      if (v48)
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v3;
        _objc_release(v48);
        v46 = v44;
        v47 = v45;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      _objc_release(v54);
      v42 = v46;
      v43 = v47;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    *(v74 + 616) = v42;
    *(v74 + 624) = v43;
    _objc_retain(v63);
    if (*(v74 + 624))
    {
      v76 = *(v74 + 616);
    }

    else
    {
      v41 = [v63 autosaveIdentifier];
      if (v41)
      {
        *&v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v39 + 1) = v4;
        _objc_release(v41);
        v40 = v39;
      }

      else
      {
        v40 = 0uLL;
      }

      v76 = v40;
      if (*(v74 + 624))
      {
        sub_100268744();
      }
    }

    v37 = *(v74 + 800);
    v30 = *(v74 + 784);
    v38 = *(v74 + 776);
    v29 = *(v74 + 792);
    _objc_release(v63);
    *(v74 + 632) = v76;

    v36 = sub_1002895B8();
    v32 = sub_1002896B4();
    v33 = sub_1002897B0();
    sub_1002898E8();
    sub_100015CC0();
    v34 = Optional<A>.capitalizedIfDesirable(locale:)();
    v35 = v5;
    (*(v29 + 8))(v37, v30);

    sub_100289A40();
    v31 = sub_100289ED8();
    v6 = sub_100289CFC();
    sub_1002C97B8(v76, *(&v76 + 1), v36, v32, v33, v34, v35, v38, (v74 + 16), v31, v6, v7, v8);
    memcpy((v74 + 88), (v74 + 16), 0x48uLL);
    sub_10028D658();
    static IntentResult.result<A>(value:)();
    sub_10028D6D0();

    _objc_release(v63);
    swift_unknownObjectRelease();

    v9 = *(*(v74 + 648) + 8);
  }

  else
  {
    v10 = *(v74 + 768);
    v25 = *(v74 + 752);
    v24 = *(v74 + 760);
    v11 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v24 + 16))(v10, v11, v25);
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v28 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v21 = sub_1002641E8(0);
      v22 = sub_1002641E8(0);
      *(v74 + 672) = buf;
      *(v74 + 680) = v21;
      *(v74 + 688) = v22;
      sub_10026423C(0, (v74 + 672));
      sub_10026423C(0, (v74 + 672));
      *(v74 + 696) = v28;
      v23 = swift_task_alloc();
      v23[2] = v74 + 672;
      v23[3] = v74 + 680;
      v23[4] = v74 + 688;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v26, "Failed to find a scene capable of composing", buf, 2u);
      sub_10026429C(v21);
      sub_10026429C(v22);
      UnsafeMutablePointer.deallocate()();
    }

    v16 = *(v74 + 768);
    v17 = *(v74 + 752);
    v18 = *(v74 + 744);
    v15 = *(v74 + 760);
    _objc_release(oslog);
    (*(v15 + 8))(v16, v17);
    sub_10028B33C();
    swift_allocError();
    v19 = v12;
    sub_10028B3B4(v18, (v74 + 224));
    *(v19 + 24) = &unk_1006587E0;
    *(v19 + 32) = sub_100288CC8();
    v13 = swift_allocObject();
    *v19 = v13;
    memcpy((v13 + 16), v18, 0x40uLL);
    *(v19 + 40) = 0;
    swift_willThrow();

    v9 = *(*(v74 + 648) + 8);
  }

  return v9();
}

unint64_t sub_10028B33C()
{
  v2 = qword_1006D73A0;
  if (!qword_1006D73A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73A0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10028B3B4(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v10 = a1[6];

  a2[6] = v10;
  v12 = a1[7];

  result = a2;
  a2[7] = v12;
  return result;
}

void sub_10028B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v94 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v120 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = v96;
  __chkstk_darwin(v95 - 8);
  v98 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v101);
  v103 = &v17 - v102;
  v136 = v6;
  v135 = a2;
  v134 = v7;
  v104 = v8 + 16;
  v133 = v8 + 16;
  v105 = sub_100289454();
  v107 = sub_10035333C();
  v106 = v107;

  if (v107)
  {
    v93 = v106;
    v90 = v106;
    v91 = [v106 composeWebView];

    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v89 = v92;
  if (v92)
  {
    v88 = v89;
    v86 = v89;
    v132 = v89;

    v129 = v99;
    v87 = sub_10025C9B0(&unk_1006D74B0);
    sub_10028E3AC();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_10025C9B0(&unk_1006D74C0);
      IndexingIterator.next()();
      if (!v128)
      {
        break;
      }

      sub_10028E434();
      if (swift_dynamicCast())
      {
        v84 = v121;
      }

      else
      {
        v84 = 0;
      }

      v83 = v84;
      if (v84)
      {
        v82 = v83;
        v80 = v83;
        v120 = v83;
        v9 = [v83 fetchLocalData];
        v81 = v9;
        if (v9)
        {
          v79 = v81;
          v74 = v81;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v10;

          v77 = v75;
          v78 = v76;
        }

        else
        {
          v77 = 0;
          v78 = 0xF000000000000000;
        }

        v116 = v77;
        v117 = v78;
        v11 = v80;
        if (v117 >> 60 == 15)
        {
          v73 = [v80 fetchDataSynchronously:0 stripPrivateMetadata:0];
          if (v73)
          {
            v72 = v73;
            v67 = v73;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v12;

            v70 = v68;
            v71 = v69;
          }

          else
          {
            v70 = 0;
            v71 = 0xF000000000000000;
          }

          v65 = v71;
          v66 = v70;
          if (v71 >> 60 == 15)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v63 = v66;
            v64 = v65;
            v118 = v66;
            v119 = v65;
            if (v117 >> 60 != 15)
            {
              sub_10028E498(&v116);
            }
          }
        }

        else
        {
          v118 = v116;
          v119 = v117;
        }

        v60 = v118;
        v61 = v119;
        v114 = v118;
        v115 = v119;
        v62 = [v80 url];
        if (v62)
        {
          v59 = v62;
          v58 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v97 + 32))(v103, v98, v95);
          (*(v97 + 56))(v103, 0, 1, v95);
        }

        else
        {
          (*(v97 + 56))(v103, 1, 1, v95);
        }

        if ((*(v97 + 48))(v103, 1, v95) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v55 = URL.absoluteString.getter();
        v56 = v13;
        v112 = v55;
        v113 = v13;
        (*(v97 + 8))(v103, v95);
        v57 = [v80 mimeType];
        if (v57)
        {
          v54 = v57;
          v49 = v57;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v14;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = v52;
        if (v53)
        {
          v45 = v48;
          v46 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v42 = v46;
        v43 = v45;
        v110 = v45;
        v111 = v46;
        v44 = [v80 contentID];
        if (v44)
        {
          v41 = v44;
          v36 = v44;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v15;

          v39 = v37;
          v40 = v38;
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v34 = v40;
        v35 = v39;
        if (v40)
        {
          v32 = v35;
          v33 = v34;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = v33;
        v26 = v32;
        v108 = v32;
        v109 = v33;
        sub_10028E4E8(v60, v61);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v60, v61);

        v29 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v27 = String._bridgeToObjectiveC()();

        [v86 replaceFilenamePlaceholderWithAttachment:isa fileName:v29 mimeType:v28 contentID:v27];

        sub_100288010(v60, v61);
      }
    }

    sub_100264880();
    v85 = &v126;
    swift_beginAccess();
    sub_100015DA0(v104, v124);
    swift_endAccess();
    if (v125)
    {
      v25 = v127;
      sub_100014898(v124, v127);
      v24 = [objc_opt_self() defaultCenter];
      v22 = v122;
      sub_10026F5D4(v25, v122);
      v19 = v123;
      sub_10027EC3C(v22, v123);
      v17 = *(v19 - 8);
      v18 = v17;
      v21 = &v17;
      __chkstk_darwin(&v17);
      v20 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v19);
      sub_1000160F4(v22);
      [v24 removeObserver:{v23, v17}];
      swift_unknownObjectRelease();

      sub_1000160F4(v25);
    }

    else
    {
      sub_10000B0D8(v124);
    }
  }
}

uint64_t sub_10028C0DC(uint64_t a1, void *a2)
{
  v5 = a1;
  v12 = a2;
  v11 = type metadata accessor for Notification();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  _objc_retain(v12);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  _objc_release(v12);
}

void *sub_10028C1FC@<X0>(void *a1@<X8>)
{
  v63 = a1;
  v60 = __b;
  v62 = 64;
  memset(__b, 0, sizeof(__b));
  v37 = sub_10025C9B0(&unk_1006D7380);
  v13 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v38 = &v12 - v13;
  v1 = sub_10025C9B0(&unk_1006D8270);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v36 = &v12 - v14;
  v47 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v59 = &v12 - v15;
  v16 = (*(*(sub_10025C9B0(&unk_1006D7080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v47);
  v42 = &v12 - v16;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v58 = &v12 - v17;
  v27 = type metadata accessor for IntentPerson.ParameterMode();
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v18 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v33 = &v12 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v55 = &v12 - v19;
  sub_10025C9B0(&unk_1006D7090);
  v20 = v71;
  memset(v71, 0, sizeof(v71));
  sub_10000B074();
  sub_1003DC7F0();
  __b[0] = AppDependency.__allocating_init(key:manager:)();
  v25 = sub_10025C9B0(&unk_1006D7410);
  v44 = type metadata accessor for LocalizedStringResource();
  v6 = *(v44 - 8);
  v46 = *(v6 + 56);
  v45 = v6 + 56;
  v50 = 1;
  v46(v55, 1);
  v23 = &v70;
  v70 = 0;
  v26 = &enum case for IntentPerson.ParameterMode.email(_:);
  v29 = *(v21 + 104);
  v28 = v21 + 104;
  v29(v33, enum case for IntentPerson.ParameterMode.email(_:), v27);
  v51 = type metadata accessor for IntentDialog();
  v7 = *(v51 - 8);
  v53 = *(v7 + 56);
  v52 = v7 + 56;
  v53(v58, v50);
  v30 = sub_10025C9B0(&unk_1006D7160);
  v31 = sub_10028035C();
  sub_1003BD8F8(v59);
  __b[1] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v46)(v55, v50, v50, v44);
  v24 = &v69;
  v69 = 0;
  v29(v33, *v26, v27);
  (v53)(v58, v50, v50, v51);
  sub_1003BD8F8(v59);
  __b[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v46)(v55, v50, v50, v44);
  v32 = &v68;
  v68 = 0;
  v29(v33, *v26, v27);
  (v53)(v58, v50, v50, v51);
  sub_1003BD8F8(v59);
  __b[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430);
  (v46)(v55, v50, v50, v44);
  v35 = v67;
  v67[0] = 0;
  v67[1] = 0;
  v8 = type metadata accessor for String.IntentInputOptions();
  (*(*(v8 - 8) + 56))(v36, v50);
  (v53)(v58, v50, v50, v51);
  v34 = sub_10025C9B0(&unk_1006D7340);
  sub_10028DF54();
  sub_1003BD8F8(v59);
  __b[4] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450);
  (v46)(v55, v50, v50, v44);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v38, v50);
  (v53)(v58, v50, v50, v51);
  sub_10028E064();
  sub_1003BD8F8(v59);
  __b[5] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0);
  (v46)(v55, v50, v50, v44);
  v41 = v66;
  memset(v66, 0, sizeof(v66));
  (v53)(v58, v50, v50, v51);
  (v53)(v42, v50, v50, v51);
  v40 = sub_10025C9B0(&unk_1006D7470);
  v39 = sub_10028E17C();
  v43 = sub_100264788();
  sub_1003BD8F8(v59);
  __b[6] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490);
  (v46)(v55, v50, v50, v44);
  v56 = &v65;
  v65 = 0;
  v49 = type metadata accessor for UTType();
  v48 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  v10 = v48;
  sub_1002612B0();
  v57 = v10;
  (v53)(v58, v50, v50, v51);
  v54 = sub_10025C9B0(&unk_1006D7270);
  sub_10028E214();
  sub_1003BD8F8(v59);
  __b[7] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v61 = __dst;
  memcpy(__dst, v60, v62);
  sub_10028B3B4(v61, v64);
  sub_10028E32C();
  return memcpy(v63, v61, v62);
}

uint64_t sub_10028CD68()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006EFDF0;
  sub_10002094C(v7, qword_1006EFDF0);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10028CEA8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10028CEA8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CreateDraftIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10028CF80()
{
  if (qword_1006D5DA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFDF0);
}

uint64_t sub_10028CFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028CF80();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10028D0A0(uint64_t a1)
{
  *(v2 + 80) = v2;
  memcpy((v2 + 16), v1, 0x40uLL);
  v3 = swift_task_alloc();
  *(v5 + 88) = v3;
  *v3 = *(v5 + 80);
  v3[1] = sub_10028D168;

  return sub_10028A010(a1);
}

uint64_t sub_10028D168()
{
  v2 = *v1;
  *(v2 + 80) = *v1;
  v5 = v2 + 80;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

id sub_10028D368(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v4 = (*(v16 + 48))(a1, 1);
  if (v4 == 1)
  {
    v6 = [v13 initWithURL:0 composeType:? originalMessage:? legacyMessage:?];
  }

  else
  {
    URL._bridgeToObjectiveC()((v4 - 1));
    v10 = v5;
    (*(v16 + 8))(a1, v15);
    v6 = [v13 initWithURL:v10 composeType:? originalMessage:? legacyMessage:?];
  }

  v9 = v6;
  _objc_release(a4);
  _objc_release(a3);
  _objc_release(v8);
  return v9;
}

unint64_t sub_10028D4AC()
{
  v2 = qword_1006D73B0;
  if (!qword_1006D73B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D73B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10028D520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10028D584(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000160F4(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

unint64_t sub_10028D658()
{
  v2 = qword_1006D7C60;
  if (!qword_1006D7C60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C60);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10028D6D0()
{
}

unint64_t sub_10028D750()
{
  v2 = qword_1006D73C0;
  if (!qword_1006D73C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10028D7FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10028D93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10028DB30()
{
  v2 = qword_1006D73C8;
  if (!qword_1006D73C8)
  {
    sub_10025CAA4(&unk_1006D73D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DBB8()
{
  v2 = qword_1006D8240;
  if (!qword_1006D8240)
  {
    sub_10025CAA4(&qword_1006D73E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DC58(uint64_t a1)
{
  result = sub_100288CC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10028DC9C()
{
  v2 = qword_1006D73E8;
  if (!qword_1006D73E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DD18(uint64_t a1)
{
  result = sub_10028DD44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10028DD44()
{
  v2 = qword_1006D73F0;
  if (!qword_1006D73F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DDD8()
{
  v2 = qword_1006D73F8;
  if (!qword_1006D73F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DE6C()
{
  v2 = qword_1006D7400;
  if (!qword_1006D7400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DF54()
{
  v2 = qword_1006D7440;
  if (!qword_1006D7440)
  {
    sub_10025CAA4(&unk_1006D7340);
    sub_10028DFEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DFEC()
{
  v2 = qword_1006D8280;
  if (!qword_1006D8280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E064()
{
  v2 = qword_1006D8290;
  if (!qword_1006D8290)
  {
    sub_10025CAA4(&unk_1006D7380);
    sub_10028E0FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E0FC()
{
  v2 = qword_1006D7460;
  if (!qword_1006D7460)
  {
    type metadata accessor for AttributedString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E17C()
{
  v2 = qword_1006D82B0;
  if (!qword_1006D82B0)
  {
    sub_10025CAA4(&unk_1006D7470);
    sub_100264D9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E214()
{
  v2 = qword_1006D74A0;
  if (!qword_1006D74A0)
  {
    sub_10025CAA4(&unk_1006D7270);
    sub_10028E2AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D74A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E2AC()
{
  v2 = qword_1006D82C0;
  if (!qword_1006D82C0)
  {
    type metadata accessor for IntentFile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82C0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10028E32C()
{
}

unint64_t sub_10028E3AC()
{
  v2 = qword_1006D82D0;
  if (!qword_1006D82D0)
  {
    sub_10025CAA4(&unk_1006D74B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E434()
{
  v2 = qword_1006D82E0;
  if (!qword_1006D82E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D82E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10028E498(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_100288010(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_10028E4E8(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_10028E5D4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_100260618;

  return sub_10028E6A0(a1, a2);
}

uint64_t sub_10028E6A0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return _swift_task_switch(sub_10028E710, 0);
}

uint64_t sub_10028E710()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[6] = v1;
  sub_10025C9B0(&qword_1006D74E0);
  type metadata accessor for MailMessageEntityID();
  sub_10028F3B4();
  v5 = Sequence.compactMap<A>(_:)();
  v0[12] = v5;
  v0[13] = 0;
  v4[7] = v5;
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10028E890, v2);
}

uint64_t sub_10028E890()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[16] = [v1 daemonInterface];

  return _swift_task_switch(sub_10028E92C, 0);
}

uint64_t sub_10028E92C()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v9[16];
  v2 = v9[13];
  v7 = [v6 messageRepository];
  _objc_release(v6);
  v8 = EMMessageRepository.messageObjectIDs(forMailMessageEntityIDs:)();
  v9[17] = v8;
  v9[18] = v2;
  if (v2)
  {
    _objc_release(v7);

    v5 = *(v9[2] + 8);

    return v5();
  }

  else
  {
    _objc_release(v7);
    v9[8] = v8;
    v9[19] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10028EBBC, v4);
  }
}

uint64_t sub_10028EBBC()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[20] = [v1 daemonInterface];

  return _swift_task_switch(sub_10028EC58, 0);
}

uint64_t sub_10028EC58()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v14[20];
  v2 = v14[18];
  v8 = [v6 messageRepository];
  _objc_release(v6);

  sub_10028F43C();
  sub_10028F4A0();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v8 messageListItemsForObjectIDs:isa];
  _objc_release(isa);
  _objc_release(v8);
  sub_10025C9B0(&qword_1006D7500);
  v14[9] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10025C9B0(&unk_1006DCA10);
  v11 = sub_10025C9B0(&unk_1006D7220);
  v3 = sub_10028F554();
  result = sub_10025E9D8(sub_10028F504, 0, v10, v11, &type metadata for Never, v3, &protocol witness table for Never, v12);
  v13 = result;
  if (!v2)
  {
    sub_100264880();
    _objc_release(v9);

    v5 = *(v14[2] + 8);

    return v5(v13);
  }

  return result;
}

uint64_t sub_10028EFBC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100287C54;

  return sub_10028F080(a1);
}

uint64_t sub_10028F080(uint64_t a1)
{
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(sub_10028F0D4, 0);
}

uint64_t sub_10028F0D4()
{
  *(v0 + 16) = v0;
  v6 = objc_opt_self();
  sub_10028831C();
  v1 = [objc_opt_self() defaultMailAccountForDelivery];
  v7 = sub_10028F31C(v1);
  if (!v7)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = [v6 legacyMessageWithMessage:*(v5 + 40) mailboxUid:?];
  _objc_release(v7);
  v2 = *(*(v5 + 16) + 8);

  return v2(v4);
}

unint64_t sub_10028F3B4()
{
  v2 = qword_1006D74E8;
  if (!qword_1006D74E8)
  {
    sub_10025CAA4(&qword_1006D74E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D74E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F43C()
{
  v2 = qword_1006D74F0;
  if (!qword_1006D74F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D74F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10028F4A0()
{
  v2 = qword_1006DCA00;
  if (!qword_1006DCA00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA00);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10028F504@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 result];
  *a2 = result;
  return result;
}

unint64_t sub_10028F554()
{
  v2 = qword_1006DCA20;
  if (!qword_1006DCA20)
  {
    sub_10025CAA4(&unk_1006DCA10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F5DC()
{
  v2 = qword_1006D7508;
  if (!qword_1006D7508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F684()
{
  v2 = qword_1006D7510;
  if (!qword_1006D7510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F794()
{
  v2 = qword_1006DB360;
  if (!qword_1006DB360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F8A4()
{
  v2 = qword_1006D7520;
  if (!qword_1006D7520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F9B4()
{
  v2 = qword_1006D7528;
  if (!qword_1006D7528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7528);
    return WitnessTable;
  }

  return v2;
}

id sub_10028FA94(void *a1)
{
  v4 = [v1 initWithAccount:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_10028FAE4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger;
  v2 = type metadata accessor for Logger();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_10028FB58()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_outgoingMessageRepository);
  _objc_retain(v2);
  return v2;
}

void sub_10028FBDC(char a1, void *a2)
{
  if (a1)
  {
    v2 = v10;
    [a2 registerUndoWithTarget:v10 selector:"cancelLastDelayedMessage" object:?];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send", 4uLL, 1);
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Title of 'Undo Send' button in status bar", 0x29uLL, 1);
    v8 = sub_10028FEB4();
    v5._countAndFlagsBits = sub_100015E30();
    v5._object = v6;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v8, v5, v4);

    v9 = String._bridgeToObjectiveC()();

    [a2 setActionName:v9];
  }

  else
  {
    v7 = v10;
    [a2 removeAllActionsWithTarget:v10];
    swift_unknownObjectRelease();
  }
}

id sub_10028FEB4()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

void sub_10028FF7C()
{
  v11 = v0;
  v3 = *&v0[OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_outgoingMessageRepository];
  _objc_retain(v3);
  _objc_retain(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v9 = sub_10029085C;
  v10 = v1;
  aBlock = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = sub_100290868;
  v8 = &unk_1006588D0;
  v2 = _Block_copy(&aBlock);

  [v3 cancelLastDelayedMessage:v2];
  _Block_release(v2);
  _objc_release(v3);
}

uint64_t sub_1002900A0(unsigned int a1, uint64_t a2)
{
  v54 = a2;
  v53 = a1;
  v70 = 0;
  v69 = 0;
  v52 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v56;
  v58 = *(v56 + 64);
  v2 = __chkstk_darwin(v53);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = v10 - v60;
  v3 = __chkstk_darwin(v2);
  v61 = v10 - v60;
  v70 = v3;
  v69 = v4;
  if (v3)
  {
    (*(v57 + 16))(v59, v54 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger, v55);
    v28 = Logger.logObject.getter();
    v25 = v28;
    v27 = static os_log_type_t.default.getter();
    v26 = v27;
    sub_10025C9B0(&unk_1006D7720);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v7 = v52;
      v16 = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = v16;
      v13 = sub_10025C9B0(&qword_1006D7290);
      v14 = 0;
      v17 = sub_1002641E8(0);
      v15 = v17;
      v18 = sub_1002641E8(v14);
      v68 = v16;
      v67 = v17;
      v66 = v18;
      v19 = 0;
      v20 = &v68;
      sub_10026423C(0, &v68);
      sub_10026423C(v19, v20);
      v65[2] = v29;
      v21 = v10;
      __chkstk_darwin(v10);
      v22 = &v10[-6];
      v10[-4] = v8;
      v10[-3] = &v67;
      v10[-2] = &v66;
      v23 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v24 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v25, v26, "User selected Undo Send. Cancel last delayed message.", v12, 2u);
        v10[1] = 0;
        sub_10026429C(v15);
        sub_10026429C(v18);
        UnsafeMutablePointer.deallocate()();

        v11 = v24;
      }
    }

    else
    {

      v11 = v52;
    }

    v10[0] = v11;

    (*(v57 + 8))(v59, v55);
    return v10[0];
  }

  else
  {
    (*(v57 + 16))(v61, v54 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger, v55);
    v50 = Logger.logObject.getter();
    v47 = v50;
    v49 = static os_log_type_t.error.getter();
    v48 = v49;
    sub_10025C9B0(&unk_1006D7720);
    v51 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v50, v49))
    {
      v5 = v52;
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = v38;
      v35 = sub_10025C9B0(&qword_1006D7290);
      v36 = 0;
      v39 = sub_1002641E8(0);
      v37 = v39;
      v40 = sub_1002641E8(v36);
      v65[0] = v38;
      v64 = v39;
      v63 = v40;
      v41 = 0;
      v42 = v65;
      sub_10026423C(0, v65);
      sub_10026423C(v41, v42);
      v62 = v51;
      v43 = v10;
      __chkstk_darwin(v10);
      v44 = &v10[-6];
      v10[-4] = v6;
      v10[-3] = &v64;
      v10[-2] = &v63;
      v45 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v46 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v47, v48, "Failed to cancel last delayed message!", v34, 2u);
        v32 = 0;
        sub_10026429C(v37);
        sub_10026429C(v40);
        UnsafeMutablePointer.deallocate()();

        v33 = v46;
      }
    }

    else
    {

      v33 = v52;
    }

    v30 = v33;

    (*(v57 + 8))(v61, v55);
    return v30;
  }
}

uint64_t sub_100290868(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_1002908C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100290A00()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeUndoHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100290ADC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label);
  _objc_retain(v2);
  return v2;
}

id sub_100290B24()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100290B94(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100290C44()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_100290D4C()
{
  sub_1002939E0();
  sub_1002913A4();
  _allocateUninitializedArray<A>(_:)();
  return sub_1002A7800();
}

void sub_100290D98(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_100290E30()
{
  v8 = *(v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label);
  _objc_retain(v8);
  v9 = v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName;
  swift_beginAccess();
  v10 = *(v9 + 8);

  swift_endAccess();
  if (v10)
  {
    v5 = String._bridgeToObjectiveC()();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v8 setText:?];
  _objc_release(v6);
  _objc_release(v8);
  _objc_retain(v7);
  v3 = &v7[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName];
  swift_beginAccess();
  v4 = *(v3 + 1);

  swift_endAccess();
  if (v4)
  {
    v1 = String._bridgeToObjectiveC()();

    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  [v7 setAccessibilityLabel:?];
  _objc_release(v2);
  _objc_release(v7);
}

uint64_t sub_100291044()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002910B8(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
  sub_100290E30();
}

void sub_100291158()
{
  v11 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v12 = *v11;
  _objc_retain(*v11);
  swift_endAccess();
  if (v12)
  {
    v9 = sub_100290C44();
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
    v7 = v1;
    _objc_retain(v12);
    *v7 = v12;
    sub_1002612B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 updateContacts:isa];
    _objc_release(isa);
    _objc_release(v9);
    v10 = [objc_opt_self() stringFromContact:v12 style:0];
    if (v10)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v2;
      _objc_release(v10);
      v5 = v3;
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if (v6)
    {
      sub_1002910B8(v5, v6);
    }

    _objc_release(v12);
  }
}

unint64_t sub_1002913A4()
{
  v2 = qword_1006D9790;
  if (!qword_1006D9790)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9790);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_100291408()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100291478(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100291158();
  _objc_release(a1);
}

void sub_100291514(void *a1)
{
  v27 = 0;
  v28 = a1;
  _objc_retain(a1);
  if (a1)
  {
    [a1 cancel];
    _objc_release(a1);
  }

  v10 = &v11[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact];
  swift_beginAccess();
  if (*v10)
  {
    v9 = *v10;
    _objc_retain(*v10);
    swift_endAccess();
    v8 = [objc_opt_self() mainThreadScheduler];
    v6 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v18 = sub_100291C00;
    v19 = v6;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_1002919E0;
    v17 = &unk_100658948;
    v7 = _Block_copy(&aBlock);

    [v9 onScheduler:v8 addSuccessBlock:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
    _objc_release(v9);
  }

  else
  {
    swift_endAccess();
  }

  v5 = &v11[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact];
  swift_beginAccess();
  if (*v5)
  {
    v4 = *v5;
    _objc_retain(*v5);
    swift_endAccess();
    v3 = [objc_opt_self() mainThreadScheduler];
    v1 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v25 = sub_100291B24;
    v26 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = 0;
    v23 = sub_100291B2C;
    v24 = &unk_100658920;
    v2 = _Block_copy(&v20);

    [v4 onScheduler:v3 addFailureBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();
    _objc_release(v4);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100291900(void *a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = (a2 + 16);
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v2 = v4[0];
    _objc_retain(v4[0]);
    sub_10026A58C(v4);
    swift_endAccess();
    _objc_retain(a1);
    sub_100291478(a1);
    _objc_release(v2);
  }

  else
  {
    sub_10026A58C(v4);
    swift_endAccess();
  }
}

uint64_t sub_1002919E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
  _objc_release(a2);
}

void sub_100291A58(void *a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = (a2 + 16);
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    _objc_retain(v3[0]);
    sub_10026A58C(v3);
    swift_endAccess();
    sub_100291478(0);
    _objc_release(v2);
  }

  else
  {
    sub_10026A58C(v3);
    swift_endAccess();
  }
}

uint64_t sub_100291B2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
}

uint64_t sub_100291B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100291C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100291C6C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100291CDC(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100291514(v5);
  _objc_release(v5);
  _objc_release(a1);
}

char *sub_100291E50(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  v7 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label;
  sub_100264928();
  *&v4[v7] = sub_10025C704();
  *&v15[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint] = 0;
  *&v15[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController] = 0;
  v5 = &v15[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v15[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact] = 0;
  *&v15[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact] = 0;
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "initWithFrame:", v9, v10);
  _objc_retain(v11);
  v15 = v11;
  _objc_retain(v11);
  [v11 setIsAccessibilityElement:1];
  _objc_release(v11);
  sub_100292010();
  _objc_release(v15);
  return v11;
}

void sub_100292010()
{
  v3 = sub_100290C44();
  v53 = [v3 view];
  _objc_release(v3);
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addSubview:v53];
  v4 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v4);
  [v47 addSubview:v4];
  _objc_release(v4);
  v5 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  v8 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v8);
  v6 = objc_opt_self();
  _objc_retain(UIFontTextStyleCaption2);
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleCaption2];
  _objc_release(UIFontTextStyleCaption2);
  UILabel.contentSizeAdjustingFont(_:)(v7);
  _objc_release(v7);
  _objc_release(v8);
  v9 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v9);
  [v9 setNumberOfLines:2];
  _objc_release(v9);
  v10 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v10);
  [v10 setTextAlignment:1];
  _objc_release(v10);
  v12 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v12);
  v11 = [objc_opt_self() labelColor];
  [v12 setTextColor:?];
  _objc_release(v11);
  _objc_release(v12);
  v13 = [objc_opt_self() sharedApplication];
  v52 = [v13 preferredContentSizeCategory];
  _objc_release(v13);
  v14 = [v53 widthAnchor];
  v16 = [v14 constraintEqualToConstant:sub_1002930FC(v52)];
  _objc_release(v14);
  v15 = &v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
  swift_beginAccess();
  v0 = *v15;
  *v15 = v16;
  _objc_release(v0);
  swift_endAccess();
  v17 = objc_opt_self();
  sub_10025C9B0(&unk_1006DB860);
  _allocateUninitializedArray<A>(_:)();
  v50 = v1;
  v18 = &v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
  swift_beginAccess();
  sub_1002935A0(v18, v50);
  swift_endAccess();
  v20 = [v53 heightAnchor];
  v19 = [v53 widthAnchor];
  v21 = [v20 constraintEqualToAnchor:?];
  _objc_release(v19);
  _objc_release(v20);
  v50[1] = v21;
  v23 = [v53 topAnchor];
  _objc_retain(v47);
  v22 = [v47 topAnchor];
  _objc_release(v47);
  v24 = [v23 constraintEqualToAnchor:v22 constant:?];
  _objc_release(v22);
  _objc_release(v23);
  v50[2] = v24;
  v26 = [v53 centerXAnchor];
  _objc_retain(v47);
  v25 = [v47 centerXAnchor];
  _objc_release(v47);
  v27 = [v26 constraintEqualToAnchor:v25];
  _objc_release(v25);
  _objc_release(v26);
  v50[3] = v27;
  v29 = [v53 leadingAnchor];
  _objc_retain(v47);
  v28 = [v47 leadingAnchor];
  _objc_release(v47);
  v30 = [v29 constraintGreaterThanOrEqualToAnchor:v28 constant:2.0];
  _objc_release(v28);
  _objc_release(v29);
  v50[4] = v30;
  v32 = [v53 trailingAnchor];
  _objc_retain(v47);
  v31 = [v47 trailingAnchor];
  _objc_release(v47);
  v33 = [v32 constraintLessThanOrEqualToAnchor:v31 constant:?];
  _objc_release(v31);
  _objc_release(v32);
  v50[5] = v33;
  v34 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v34);
  v36 = [v34 topAnchor];
  _objc_release(v34);
  v35 = [v53 bottomAnchor];
  v37 = [v36 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  _objc_release(v35);
  _objc_release(v36);
  v50[6] = v37;
  v38 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v38);
  v40 = [v38 leadingAnchor];
  _objc_release(v38);
  _objc_retain(v47);
  v39 = [v47 leadingAnchor];
  _objc_release(v47);
  v41 = [v40 constraintEqualToAnchor:v39 constant:2.0];
  _objc_release(v39);
  _objc_release(v40);
  v50[7] = v41;
  v42 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v42);
  v44 = [v42 trailingAnchor];
  _objc_release(v42);
  _objc_retain(v47);
  v43 = [v47 trailingAnchor];
  _objc_release(v47);
  v45 = [v44 constraintEqualToAnchor:v43 constant:-2.0];
  _objc_release(v43);
  _objc_release(v44);
  v50[8] = v45;
  v46 = *&v47[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v46);
  v49 = [v46 bottomAnchor];
  _objc_release(v46);
  _objc_retain(v47);
  v48 = [v47 bottomAnchor];
  _objc_release(v47);
  v51 = [v49 constraintEqualToAnchor:v48 constant:-2.0];
  _objc_release(v48);
  _objc_release(v49);
  v50[9] = v51;
  sub_1002612B0();
  sub_10025C9B0(&qword_1006D75A8);
  sub_100293824();
  sub_100293888();
  Sequence.compactMap<A>(_:)();
  sub_100264880();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];
  _objc_release(isa);
  _objc_release(v52);
  _objc_release(v53);
}

id MailDebugNotificationDelaySettingsViewController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];
  _objc_release(a1);
  return v4;
}

void sub_100292CC0()
{
  v1 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label;
  sub_100264928();
  *v1 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController = 0;
  v0 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName = 0;
  *(v0 + 8) = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100292E30(void *a1)
{
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = v1;
  _objc_retain(v1);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  _objc_release(v12);
  _objc_retain(a1);
  if (a1)
  {
    _objc_retain(v12);
    v8 = [v12 traitCollection];
    _objc_release(v12);
    v9 = [a1 mf_traitDifferenceAffectsTextLayout:v8];
    _objc_release(v8);
    _objc_release(a1);
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  if (v10 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10;
  }

  if (v7)
  {
    v6 = &v12[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
    swift_beginAccess();
    if (*v6)
    {
      v5 = *v6;
      _objc_retain(*v6);
      swift_endAccess();
      _objc_retain(v12);
      v2 = [v12 traitCollection];
      _objc_release(v12);
      v3 = [v2 preferredContentSizeCategory];
      _objc_release(v2);
      v4 = sub_1002930FC(v3);
      _objc_release(v3);
      [v5 setConstant:v4];
      _objc_release(v5);
    }

    else
    {
      swift_endAccess();
    }
  }
}

double sub_1002930FC(void *a1)
{
  v14[1] = 0;
  v14[2] = a1;
  _objc_retain(a1);
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    _objc_release(a1);
    _objc_retain(a1);
    _objc_retain(UIContentSizeCategoryAccessibilityMedium);
    v14[0] = UIContentSizeCategoryAccessibilityMedium;
    v13[1] = a1;
    type metadata accessor for UIContentSizeCategory();
    sub_100266AEC();
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10026A58C(v14);
    if (v7)
    {
      _objc_release(a1);
      return 70.0;
    }

    else
    {
      _objc_release(a1);
      _objc_retain(a1);
      _objc_retain(UIContentSizeCategoryAccessibilityLarge);
      v13[0] = UIContentSizeCategoryAccessibilityLarge;
      v12[1] = a1;
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10026A58C(v13);
      if (v6)
      {
        _objc_release(a1);
        return 80.0;
      }

      else
      {
        _objc_release(a1);
        _objc_retain(a1);
        _objc_retain(UIContentSizeCategoryAccessibilityExtraLarge);
        v12[0] = UIContentSizeCategoryAccessibilityExtraLarge;
        v11[1] = a1;
        v5 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10026A58C(v12);
        if (v5)
        {
          _objc_release(a1);
          return 90.0;
        }

        else
        {
          _objc_release(a1);
          _objc_retain(a1);
          _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraLarge);
          v11[0] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
          v10[1] = a1;
          v4 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10026A58C(v11);
          if (v4)
          {
            _objc_release(a1);
            return 100.0;
          }

          else
          {
            _objc_release(a1);
            _objc_retain(a1);
            _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
            v10[0] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
            v3 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_10026A58C(v10);
            if (v3)
            {
              _objc_release(a1);
              return 110.0;
            }

            else
            {
              _objc_release(a1);
              _objc_retain(a1);
              _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              v2 = static UIContentSizeCategory.> infix(_:_:)();
              _objc_release(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              _objc_release(a1);
              if (v2)
              {
                return 110.0;
              }

              else
              {
                return 60.0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    _objc_release(a1);
    return 60.0;
  }
}

void *sub_1002935A0(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void sub_100293658()
{
  ObjectType = swift_getObjectType();
  v7 = v0;
  _objc_retain(v0);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "prepareForReuse");
  _objc_release(v0);
  sub_100291478(0);
  sub_1002910B8(0, 0);
  v4 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact;
  v5 = (v3 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  if (*v5)
  {
    v1 = *(v3 + v4);
    _objc_retain(v1);
    swift_endAccess();
    [v1 cancel];
    _objc_release(v1);
  }

  else
  {
    swift_endAccess();
  }
}

id sub_1002937D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = _objc_retain(*a1);
  *a2 = v4;
  return result;
}

unint64_t sub_100293824()
{
  v2 = qword_1006DB870;
  if (!qword_1006DB870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100293888()
{
  v2 = qword_1006D75B0;
  if (!qword_1006D75B0)
  {
    sub_10025CAA4(&qword_1006D75A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D75B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002939E0()
{
  v2 = qword_1006D75E0;
  if (!qword_1006D75E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D75E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t ConversationNavigationBarItemType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Archive", 7uLL, 1)._countAndFlagsBits;
      break;
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete", 6uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move", 4uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward", 7uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Flag", 4uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Read", 4uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unread", 6uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Junk", 4uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute", 4uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind Me", 9uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose", 7uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reveal Actions", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Summarize", 9uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Categorization", 0xEuLL, 1)._countAndFlagsBits;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return countAndFlagsBits;
}

uint64_t ConversationNavigationBarItemType.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
    case 12:
      return 12;
    case 13:
      return 13;
    case 14:
      return 14;
    case 15:
      return 15;
  }

  return 0;
}

uint64_t static ConversationNavigationBarItemType.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  v1[11] = 11;
  v1[12] = 12;
  v1[13] = 13;
  v1[14] = 14;
  v1[15] = 15;
  sub_1002612B0();
  return result;
}

uint64_t sub_1002940E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConversationNavigationBarItemType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100294124@<X0>(uint64_t *a1@<X8>)
{
  result = static ConversationNavigationBarItemType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10029423C()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006EFE08);
  sub_1000208F4(v1, qword_1006EFE08);
  return sub_100294288();
}

uint64_t sub_1002942C0()
{
  if (qword_1006D5DB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006EFE08);
}

uint64_t sub_10029432C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002942C0();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t ConversationNavigationBarItemsManager.scene.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.scene.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.scene.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_scene;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

void sub_10029464C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100294754();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

void *sub_100294700(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t ConversationNavigationBarItemsManager.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.delegate.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.actionHandler.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.actionHandler.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.actionHandler.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_actionHandler;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.arrowDelegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.arrowDelegate.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.arrowDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_arrowDelegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.useArchiveButton.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.useArchiveButton.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.showNavigationArrows.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.showNavigationArrows.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.showSupplementaryButtonItem.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.showSupplementaryButtonItem.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id ConversationNavigationBarItemsManager.doneButton.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void ConversationNavigationBarItemsManager.doneButton.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id ConversationNavigationBarItemsManager.doneButtonItem.getter()
{
  v14 = 0;
  v9 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v10 = *v9;
  _objc_retain(*v9);
  swift_endAccess();
  if (v10)
  {
    return v10;
  }

  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v12[0] = Strong;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    ObjectType = 0;
  }

  v11 = sub_100295C94(0, v12, "done:");
  _objc_retain(v11);
  v3 = MSAccessibilityIdentifierMailConversationViewDoneButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewDoneButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  _objc_release(v3);
  [v11 setAccessibilityIdentifier:v4];
  _objc_release(v4);
  _objc_release(v11);
  _objc_retain(v11);
  v5 = (v8 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v1 = *v5;
  *v5 = v11;
  _objc_release(v1);
  swift_endAccess();
  return v11;
}

unint64_t sub_100295C30()
{
  v2 = qword_1006D7700;
  if (!qword_1006D7700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7700);
    return ObjCClassMetadata;
  }

  return v2;
}

id ConversationNavigationBarItemsManager.revealActionsButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100295F5C(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100295F5C(uint64_t a1)
{
  v17 = a1;
  sub_1002A75C8();
  v10 = MFImageGlyphReply;
  _objc_retain(MFImageGlyphReply);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1002A7840();
  _objc_release(v10);
  v16 = v11;
  sub_100295C30();
  _objc_retain(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v14[0] = Strong;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    ObjectType = 0;
  }

  v13 = sub_100296284(v11, 0, v14, "revealActionsButtonTapped:");
  _objc_retain(v13);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar in compact layout", 0x39uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v13 setTitle:v7];
  _objc_release(v7);
  _objc_release(v13);
  _objc_retain(v13);
  v8 = MSAccessibilityIdentifierMailConversationViewRevealActionButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewRevealActionButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v13 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v13);
  _objc_release(v11);
  return v13;
}

void (*ConversationNavigationBarItemsManager.revealActionsButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.revealActionsButtonItem.getter();
  return sub_100296338;
}

void sub_100296338(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.replyButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100296630(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.replyButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100296630(uint64_t a1)
{
  v17 = a1;
  sub_1002A75C8();
  v10 = MFImageGlyphReply;
  _objc_retain(MFImageGlyphReply);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1002A7840();
  _objc_release(v10);
  v16 = v11;
  sub_100295C30();
  _objc_retain(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v14[0] = Strong;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    ObjectType = 0;
  }

  v13 = sub_100296284(v11, 0, v14, "replyButtonTapped:");
  _objc_retain(v13);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v13 setTitle:v7];
  _objc_release(v7);
  _objc_release(v13);
  _objc_retain(v13);
  v8 = MSAccessibilityIdentifierMailConversationViewReplyButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReplyButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v13 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v13);
  _objc_release(v11);
  return v13;
}

void (*ConversationNavigationBarItemsManager.replyButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  return sub_1002969B4;
}

void sub_1002969B4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.replyButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.replyButtonItem.setter(*a1);
  }
}

uint64_t sub_100296AA0()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("replyGroup", 0xAuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

unint64_t sub_100296B8C()
{
  v2 = qword_1006D7708;
  if (!qword_1006D7708)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7708);
    return ObjCClassMetadata;
  }

  return v2;
}

id ConversationNavigationBarItemsManager.replyAllButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100296E68(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.replyAllButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100296E68(uint64_t a1)
{
  v17 = a1;
  sub_1002A75C8();
  v10 = MFImageGlyphReplyAll;
  _objc_retain(MFImageGlyphReplyAll);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1002A7840();
  _objc_release(v10);
  v16 = v11;
  sub_100295C30();
  _objc_retain(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v14[0] = Strong;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    ObjectType = 0;
  }

  v13 = sub_100296284(v11, 0, v14, "replyAllButtonTapped:");
  _objc_retain(v13);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v13 setTitle:v7];
  _objc_release(v7);
  _objc_release(v13);
  _objc_retain(v13);
  v8 = MSAccessibilityIdentifierMailConversationViewReplyAllButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReplyAllButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v13 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v13);
  _objc_release(v11);
  return v13;
}

void (*ConversationNavigationBarItemsManager.replyAllButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  return sub_1002971EC;
}

void sub_1002971EC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.replyAllButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.replyAllButtonItem.setter(*a1);
  }
}

uint64_t sub_1002972D8()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("replyAllGroup", 0xDuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.forwardButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029763C(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.forwardButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029763C(uint64_t a1)
{
  v17 = a1;
  sub_1002A75C8();
  v10 = MFImageGlyphForward;
  _objc_retain(MFImageGlyphForward);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1002A7840();
  _objc_release(v10);
  v16 = v11;
  sub_100295C30();
  _objc_retain(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v14[0] = Strong;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    ObjectType = 0;
  }

  v13 = sub_100296284(v11, 0, v14, "forwardButtonTapped:");
  _objc_retain(v13);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward", 7uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v13 setTitle:v7];
  _objc_release(v7);
  _objc_release(v13);
  _objc_retain(v13);
  v8 = MSAccessibilityIdentifierMailConversationViewForwardButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewForwardButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v13 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v13);
  _objc_release(v11);
  return v13;
}

void (*ConversationNavigationBarItemsManager.forwardButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  return sub_1002979C0;
}

void sub_1002979C0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.forwardButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.forwardButtonItem.setter(*a1);
  }
}

uint64_t sub_100297AAC()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forwardGroup", 0xCuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.archiveButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100297E10(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.archiveButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100297E10(void *a1)
{
  v24 = 0;
  v28 = a1;
  sub_1002A75C8();
  v13 = MFImageGlyphArchive;
  _objc_retain(MFImageGlyphArchive);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_1002A7840();
  _objc_release(v13);
  v27 = v14;
  sub_100295C30();
  _objc_retain(v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v25[0] = Strong;
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    ObjectType = 0;
  }

  v12 = sub_100296284(v14, 0, v25, "deleteButtonTapped:");
  v24 = v12;
  _objc_retain(v12);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Archive", 7uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v12 setTitle:v7];
  _objc_release(v7);
  _objc_release(v12);
  _objc_retain(v12);
  v8 = MSAccessibilityIdentifierMailConversationViewArchiveButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewArchiveButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v12 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v12);
  v10 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  v22 = sub_1002A76CC;
  v23 = v10;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = 0;
  v20 = sub_100298560;
  v21 = &unk_100658E90;
  v11 = _Block_copy(&aBlock);

  [v12 _setSecondaryActionsProvider:v11];
  _Block_release(v11);
  _objc_release(v14);
  return v12;
}

id sub_100298248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v34 = 0;
  v38 = a1;
  v37 = a2;
  v27 = a3 + 16;
  v36 = a3 + 16;
  v28 = &v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v25 = v29;
  v22 = v29;
  v34 = v29;
  v23 = &v29[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate];
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  v33 = v3;
  if (v3)
  {
    v20 = v33;
    v19 = v33;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    sub_100015DA0(v26, v31);
    if (v32)
    {
      v13 = v32;
      v16 = v31;
      sub_10027EC3C(v31, v32);
      v11 = *(v13 - 8);
      v12 = v11;
      v15 = &v6;
      __chkstk_darwin(&v6);
      v14 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))();
      v17 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v14, v13);
      sub_1000160F4(v16);
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v8 = v18;
    v9 = [v19 deleteButtonMenuForConversationNavigationBarItemsManager:v22 menuOwner:?];
    swift_unknownObjectRelease();
    v10 = v9;
    swift_unknownObjectRelease();
    v21 = v10;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v21 = 0;
  }

  v7 = v21;

  return v7;
}

id sub_100298560(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);

  swift_unknownObjectRetain();
  if (a2)
  {
    v8[3] = swift_getObjectType();
    v8[0] = a2;
    sub_100014898(v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  _objc_retain(a3);
  if (a3)
  {
    sub_1002A7738();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(a3);
  }

  v4 = v6();

  sub_10000B0D8(v9);

  return v4;
}

void (*ConversationNavigationBarItemsManager.archiveButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  return sub_100298724;
}

void sub_100298724(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.archiveButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.archiveButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.deleteButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100298A1C(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.deleteButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100298A1C(void *a1)
{
  v24 = 0;
  v28 = a1;
  sub_1002A75C8();
  v13 = MFImageGlyphTrash;
  _objc_retain(MFImageGlyphTrash);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_1002A7840();
  _objc_release(v13);
  v27 = v14;
  sub_100295C30();
  _objc_retain(v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v25[0] = Strong;
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    ObjectType = 0;
  }

  v12 = sub_100296284(v14, 0, v25, "deleteButtonTapped:");
  v24 = v12;
  _objc_retain(v12);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete", 6uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v12 setTitle:v7];
  _objc_release(v7);
  _objc_release(v12);
  _objc_retain(v12);
  v8 = MSAccessibilityIdentifierMailConversationViewDeleteButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewDeleteButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v12 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v12);
  v10 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  v22 = sub_1002A76CC;
  v23 = v10;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = 0;
  v20 = sub_100298560;
  v21 = &unk_100658E68;
  v11 = _Block_copy(&aBlock);

  [v12 _setSecondaryActionsProvider:v11];
  _Block_release(v11);
  _objc_release(v14);
  return v12;
}

void (*ConversationNavigationBarItemsManager.deleteButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  return sub_100298EB0;
}

void sub_100298EB0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.deleteButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.deleteButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.destructiveButtonItem.getter()
{
  v3 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  if (v4)
  {
    return ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  }

  else
  {
    return ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  }
}

uint64_t sub_1002990A4()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("destructiveGroup", 0x10uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.destructiveButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.moveButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100299408(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.moveButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100299408(uint64_t a1)
{
  v17 = a1;
  sub_1002A75C8();
  v10 = MFImageGlyphMove;
  _objc_retain(MFImageGlyphMove);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1002A7840();
  _objc_release(v10);
  v16 = v11;
  sub_100295C30();
  _objc_retain(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v14[0] = Strong;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    ObjectType = 0;
  }

  v13 = sub_100296284(v11, 0, v14, "moveButtonTapped:");
  _objc_retain(v13);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move", 4uLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v3._countAndFlagsBits = sub_100015E30();
  v3._object = v4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v3, v2);

  _objc_release(bundle);

  v7 = String._bridgeToObjectiveC()();

  [v13 setTitle:v7];
  _objc_release(v7);
  _objc_release(v13);
  _objc_retain(v13);
  v8 = MSAccessibilityIdentifierMailConversationViewMoveButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewMoveButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  _objc_release(v8);
  [v13 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(v13);
  _objc_release(v11);
  return v13;
}

void (*ConversationNavigationBarItemsManager.moveButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  return sub_10029978C;
}

void sub_10029978C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.moveButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.moveButtonItem.setter(*a1);
  }
}

uint64_t sub_100299878()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("moveGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.flagButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100299BDC(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.flagButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100299BDC(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "flagButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewFlagButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewFlagButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:6];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.flagButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
  return sub_100299E6C;
}

void sub_100299E6C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.flagButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.flagButtonItem.setter(*a1);
  }
}

uint64_t sub_100299F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flagGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.readButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029A380(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.readButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029A380(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "readButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewReadButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReadButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:7];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.readButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.readButtonItem.getter();
  return sub_10029A610;
}

void sub_10029A610(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.readButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.readButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.unreadButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029A908(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.unreadButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029A908(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "unreadButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewUnreadButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewUnreadButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:8];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.unreadButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  return sub_10029AB98;
}

void sub_10029AB98(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.unreadButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.unreadButtonItem.setter(*a1);
  }
}

uint64_t sub_10029AC84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v5 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v6 validateBarButtonItem:? ofType:?];
    _objc_release(v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v4 = ConversationNavigationBarItemsManager.readButtonItem.getter();
    [v7 conversationNavigationBarItemsManager:v6 validateBarButtonItem:? ofType:?];
    _objc_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("readGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  v2[1] = ConversationNavigationBarItemsManager.readButtonItem.getter();
  sub_1002612B0();
  v3 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v3;
}

id ConversationNavigationBarItemsManager.junkButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029B184(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.junkButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029B184(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "junkButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewJunkButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewJunkButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:9];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.junkButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
  return sub_10029B414;
}

void sub_10029B414(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.junkButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.junkButtonItem.setter(*a1);
  }
}

uint64_t sub_10029B500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("junkGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.muteButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029B928(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.muteButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029B928(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "muteButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewMuteButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewMuteButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:10];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.muteButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
  return sub_10029BBB8;
}

void sub_10029BBB8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.muteButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.muteButtonItem.setter(*a1);
  }
}

uint64_t sub_10029BCA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("muteGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.laterButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029C0CC(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.laterButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029C0CC(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "laterButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewLaterButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewLaterButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:11];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.laterButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
  return sub_10029C35C;
}

void sub_10029C35C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.laterButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.laterButtonItem.setter(*a1);
  }
}

uint64_t sub_10029C448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("laterGroup", 0xAuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.composeButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v8 = *v7;
  sub_10029C764(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_10029C89C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_10029CB20(v1);
  swift_endAccess();
  return v4;
}

id sub_10029C764(id result)
{
  if (result != 1)
  {
    return _objc_retain(result);
  }

  return result;
}

void ConversationNavigationBarItemsManager.composeButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

void *sub_10029C89C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v0 = [Strong respondsToSelector:"newComposeButtonItem"];
  if (v0)
  {
    swift_unknownObjectRetain();
    *(swift_allocObject() + 16) = Strong;
    v8 = sub_1002A76A8;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v5 = v8();

    swift_unknownObjectRelease();
    v6 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v6 = 0;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  _objc_retain(v6);
  v2 = MSAccessibilityIdentifierMailConversationViewComposeButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewComposeButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v6 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v6);
  swift_unknownObjectRelease();
  return v6;
}

void sub_10029CB20(void *a1)
{
  if (a1 != 1)
  {
    _objc_release(a1);
  }
}

void (*ConversationNavigationBarItemsManager.composeButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
  return sub_10029CBBC;
}

void sub_10029CBBC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.composeButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.composeButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029CEA8(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029CEA8(uint64_t a1)
{
  v5 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v3[0] = Strong;
  }

  else
  {
    memset(v3, 0, sizeof(v3));
    ObjectType = 0;
  }

  return sub_100295C94(0, v3, "contactDoneButtonItemTapped:");
}

void (*ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter();
  return sub_10029CFF4;
}

void sub_10029CFF4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.leftSpaceItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029D2E8();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.leftSpaceItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029D2E8()
{
  sub_100295C30();
  memset(v2, 0, sizeof(v2));
  v1 = sub_100295C94(6, v2, 0);
  [v1 setWidth:11.0];
  return v1;
}

void (*ConversationNavigationBarItemsManager.leftSpaceItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.leftSpaceItem.getter();
  return sub_10029D3C0;
}

void sub_10029D3C0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.leftSpaceItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.leftSpaceItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029D6B8();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029D6B8()
{
  sub_100295C30();
  v0 = ConversationNavigationBarItemsManager.arrowControlsView.getter();
  return sub_10029D810(v0);
}

id ConversationNavigationBarItemsManager.arrowControlsView.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029F5EC();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void (*ConversationNavigationBarItemsManager.arrowControlsButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
  return sub_10029D8AC;
}

void sub_10029D8AC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(*a1);
  }
}

uint64_t ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter()
{
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_10029DBB8();

  v2 = (v5 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_10029DBB8()
{
  sub_100295C30();
  v4 = _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  *v0 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  v1 = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  result = v4;
  v3[1] = v1;
  sub_1002612B0();
  return result;
}

Class ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  isa = sub_1002A0004(v6).super.super.isa;
  _objc_retain(isa);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = isa;
  _objc_release(v1);
  swift_endAccess();
  return isa;
}

Class ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  isa = sub_10029FAD4(v6).super.super.isa;
  _objc_retain(isa);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = isa;
  _objc_release(v1);
  swift_endAccess();
  return isa;
}

uint64_t (*ConversationNavigationBarItemsManager.arrowControlsButtonItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter();
  return sub_10029DEB4;
}

uint64_t sub_10029DEB4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(*a1);
  }

  v3 = *a1;

  ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(v3);
  result = a1;
  sub_100264880();
  return result;
}

Class ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem);
  swift_beginAccess();
  v8 = *v7;
  sub_10029C764(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  swift_allocObject();
  _objc_retain(v6);
  swift_unknownObjectWeakInit();
  _objc_release(v6);

  v4 = sub_10029E200();

  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_10029CB20(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_10029E200()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  v0 = swift_unknownObjectWeakLoadStrong();
  v13 = v0;
  if (v0)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    _objc_retain(Strong);
    v9 = [v13 groupedSenderActionMenuForConversationNavigationBarItemsManager:Strong menuOwner:Strong];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = v9;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v10 = 0;
  }

  if (MUISolariumFeatureEnabled())
  {
    sub_100295C30();
    sub_1002A75C8();
    v6 = MFImageGlyphMoreActions;
    _objc_retain(MFImageGlyphMoreActions);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    image = sub_1002A7840();
    _objc_release(v6);
    v14.value.super.isa = image;
    v14.is_nil = 0;
    v15.value.super.super.isa = v10;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v14, v15, v16).super.super.isa;
    _objc_release(Strong);
    return isa;
  }

  else
  {
    v3 = objc_opt_self();
    v2 = MFImageGlyphMoreActions;
    _objc_retain(MFImageGlyphMoreActions);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    _objc_release(v2);
    v5 = [v3 mui_capsuleButtonItemWithTitle:0 titleColor:0 imageName:v4 menu:v10];
    _objc_release(v4);
    _objc_release(v10);
    _objc_release(Strong);
    return v5;
  }
}

void (*ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter();
  return sub_10029E558;
}

void sub_10029E558(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.cleanBackButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem);
  swift_beginAccess();
  v8 = *v7;
  sub_10029C764(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_10029E830(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_10029CB20(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029E830(void *a1)
{
  sub_100015D3C();
  v5 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  v4 = sub_100015E5C();
  v2 = variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v7 = objc_opt_self();
  v6 = MFImageGlyphBackChevron;
  _objc_retain(MFImageGlyphBackChevron);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  _objc_release(v6);
  _objc_retain(v9);
  v10 = [v7 mui_capsuleButtonItemWithTitle:0 titleColor:0 imageName:v8 action:{v9, 0, v4, v2, sub_1002A762C, v5}];
  _objc_release(v9);
  _objc_release(v8);
  _objc_release(v9);
  return v10;
}

void sub_10029EA3C(void *a1, uint64_t a2)
{
  v10[5] = a1;
  v10[4] = (a2 + 16);
  swift_beginAccess();
  v10[0] = swift_unknownObjectWeakLoadStrong();
  if (v10[0])
  {
    v7 = v10[0];
    _objc_retain(v10[0]);
    sub_10026A58C(v10);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v7);
      swift_getObjectType();
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        _objc_retain(v8);
        sub_10026A58C(&v8);
        v2 = swift_endAccess();
        v4 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter(v2);
        _objc_release(v3);
        v5 = v4;
      }

      else
      {
        sub_10026A58C(&v8);
        swift_endAccess();
        v5 = 0;
      }

      [v6 customBackButtonTapped:?];
      _objc_release(v5);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      _objc_release(v7);
    }
  }

  else
  {
    sub_10026A58C(v10);
    swift_endAccess();
  }
}

void (*ConversationNavigationBarItemsManager.cleanBackButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter();
  return sub_10029ECCC;
}

void sub_10029ECCC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.categorizeButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029EFB8(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.categorizeButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029EFB8(uint64_t a1)
{
  v13 = a1;
  sub_1002A75C8();
  v6 = MFImageGlyphCategorizationAction;
  _objc_retain(MFImageGlyphCategorizationAction);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1002A7840();
  _objc_release(v6);
  v12 = v7;
  sub_100295C30();
  _objc_retain(v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v10[0] = Strong;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    ObjectType = 0;
  }

  v9 = sub_100296284(v7, 0, v10, "categorizationButtonTapped:");
  _objc_retain(v9);
  v2 = [objc_opt_self() categorizeToolbarTitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v9 setTitle:v3];
  _objc_release(v3);
  _objc_release(v9);
  _objc_retain(v9);
  v4 = MSAccessibilityIdentifierMailConversationViewCategorizationButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewCategorizationButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  _objc_release(v4);
  [v9 setAccessibilityIdentifier:v5];
  _objc_release(v5);
  _objc_release(v9);
  _objc_release(v7);
  return v9;
}

void (*ConversationNavigationBarItemsManager.categorizeButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  return sub_10029F2AC;
}

void sub_10029F2AC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.categorizeButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.categorizeButtonItem.setter(*a1);
  }
}

uint64_t sub_10029F398()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("categorizeGroup", 0xFuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

void ConversationNavigationBarItemsManager.arrowControlsView.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029F5EC()
{
  sub_1002A7644();
  v11 = sub_10029F834(0.0, 0.0, 0.0, 0.0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  [v11 setDelegate:Strong];
  swift_unknownObjectRelease();
  v12 = [v11 upButton];
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    LOBYTE(v1) = 2;
    v3 = 385;
    LODWORD(v5) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v9 setEnabled:{0, v1, v3, v5}];
  _objc_release(v9);
  v8 = [v11 downButton];
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    LOBYTE(v2) = 2;
    v4 = 386;
    LODWORD(v6) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v7 setEnabled:{0, v2, v4, v6}];
  _objc_release(v7);
  [v11 sizeToFit];
  return v11;
}

void (*ConversationNavigationBarItemsManager.arrowControlsView.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsView.getter();
  return sub_10029F8E8;
}

void sub_10029F8E8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.arrowControlsView.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.arrowControlsView.setter(*a1);
  }
}

void ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

UIBarButtonItem sub_10029FAD4(void *a1)
{
  sub_100295C30();
  sub_1002A75C8();
  v2 = MFImageGlyphUpArrow;
  _objc_retain(MFImageGlyphUpArrow);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4.value.super.isa = sub_1002A7840();
  _objc_release(v2);
  sub_100015D3C();
  swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v4.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v5.value.super.super.isa = 0;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v4, v5, v6);
}

void sub_10029FC74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v0 = swift_unknownObjectWeakLoadStrong();
    v2 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      [v2 conversationNavigationBarItemsManager:Strong didTapArrowControlButtonWithDirection:0xFFFFFFFFLL];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void (*ConversationNavigationBarItemsManager.upArrowBarButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  return sub_10029FE18;
}

void sub_10029FE18(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(*a1);
  }
}

void ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

UIBarButtonItem sub_1002A0004(void *a1)
{
  sub_100295C30();
  sub_1002A75C8();
  v2 = MFImageGlyphDownArrow;
  _objc_retain(MFImageGlyphDownArrow);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4.value.super.isa = sub_1002A7840();
  _objc_release(v2);
  sub_100015D3C();
  swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v4.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v5.value.super.super.isa = 0;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v4, v5, v6);
}

void sub_1002A01A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v0 = swift_unknownObjectWeakLoadStrong();
    v2 = v0;
    if (v0)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      [v2 conversationNavigationBarItemsManager:Strong didTapArrowControlButtonWithDirection:1];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void (*ConversationNavigationBarItemsManager.downArrowBarButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  return sub_1002A0348;
}

void sub_1002A0348(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(*a1);
  }
}

uint64_t sub_1002A03C8()
{
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1002A04BC();

  v2 = (v5 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002A04BC()
{
  sub_100295C30();
  sub_1002A7290();
  v1 = Dictionary.init()();
  ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  sub_10025C9B0(&qword_1006D77D8);
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.moveButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.replyButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.flagButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.readButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.junkButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.muteButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.laterButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.composeButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.revealActionsButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  Dictionary.subscript.setter();

  sub_100264880();
  return v1;
}

uint64_t sub_1002A0828(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1002A08A8(uint64_t a1, void *a2)
{
  v63 = a1;
  v62 = a2;
  v55 = sub_10026E82C;
  v56 = sub_1002A5B9C;
  v57 = sub_10026EE84;
  v58 = sub_10026434C;
  v59 = sub_10026434C;
  v60 = sub_10026EF2C;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v61 = 0;
  v73 = 0;
  v64 = type metadata accessor for Logger();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v23 - v67;
  v83 = __chkstk_darwin(v63);
  v82 = v3;
  v81 = v2;
  v70 = &v80;
  v80 = v83;
  v69 = &v79;
  v79 = 12;
  sub_1002A11B0();
  if (== infix<A>(_:_:)())
  {
    return 1;
  }

  else
  {
    swift_unknownObjectRetain();
    if (v62)
    {
      v53 = v62;
      v51 = v62;
      v73 = v62;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v52 = [v51 isEditable];
      swift_unknownObjectRelease();
      if (v52)
      {
        v45 = &type metadata for ConversationNavigationBarItemType;
        v4 = _allocateUninitializedArray<A>(_:)();
        *v5 = 0;
        v5[1] = 1;
        sub_1002612B0();
        v49 = &v72;
        v72 = v4;
        v48 = &v71;
        v71 = v63;
        v46 = sub_10025C9B0(&qword_1006D7730);
        v47 = sub_1002A6D18();
        sub_1002A6DA0();
        v50 = Sequence<>.contains(_:)();
        sub_100264880();
        if (v50)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        else
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        return 2;
      }
    }

    else
    {
      v6 = v68;
      v7 = sub_1002942C0();
      (*(v65 + 16))(v6, v7, v64);
      v34 = 7;
      v31 = swift_allocObject();
      *(v31 + 16) = v63;

      v33 = 32;
      v8 = swift_allocObject();
      v9 = v31;
      v35 = v8;
      *(v8 + 16) = v55;
      *(v8 + 24) = v9;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v32 = 17;
      v37 = swift_allocObject();
      *(v37 + 16) = 32;
      v38 = swift_allocObject();
      *(v38 + 16) = 8;
      v10 = swift_allocObject();
      v11 = v35;
      v36 = v10;
      *(v10 + 16) = v56;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v36;
      v40 = v12;
      *(v12 + 16) = v57;
      *(v12 + 24) = v13;
      v42 = sub_10025C9B0(&unk_1006D7720);
      v39 = _allocateUninitializedArray<A>(_:)();
      v41 = v14;

      v15 = v37;
      v16 = v41;
      *v41 = v58;
      v16[1] = v15;

      v17 = v38;
      v18 = v41;
      v41[2] = v59;
      v18[3] = v17;

      v19 = v40;
      v20 = v41;
      v41[4] = v60;
      v20[5] = v19;
      sub_1002612B0();

      if (os_log_type_enabled(v43, v44))
      {
        v21 = v61;
        v24 = static UnsafeMutablePointer.allocate(capacity:)();
        v23[3] = sub_10025C9B0(&qword_1006D7290);
        v25 = sub_1002641E8(0);
        v26 = sub_1002641E8(1);
        v27 = &v78;
        v78 = v24;
        v28 = &v77;
        v77 = v25;
        v29 = &v76;
        v76 = v26;
        sub_10026423C(2, &v78);
        sub_10026423C(1, v27);
        v74 = v58;
        v75 = v37;
        sub_100264250(&v74, v27, v28, v29);
        v30 = v21;
        if (v21)
        {

          __break(1u);
        }

        else
        {
          v74 = v59;
          v75 = v38;
          sub_100264250(&v74, &v78, &v77, &v76);
          v23[1] = 0;
          v74 = v60;
          v75 = v40;
          sub_100264250(&v74, &v78, &v77, &v76);
          _os_log_impl(&_mh_execute_header, v43, v44, "Reference message does not exist. Disable bar button item of type: %s", v24, 0xCu);
          sub_10026429C(v25);
          sub_10026429C(v26);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v43);
      (*(v65 + 8))(v68, v64);
      return 0;
    }
  }
}

unint64_t sub_1002A11B0()
{
  v2 = qword_1006D7710;
  if (!qword_1006D7710)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7710);
    return WitnessTable;
  }

  return v2;
}

uint64_t ConversationNavigationBarItemsManager.updateEnabledStatesForMessage(_:)(void *a1)
{
  v196 = a1;
  v191 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v206 = 0;
  v217 = 0;
  v210 = 0;
  v208 = 0;
  v187 = type metadata accessor for Date();
  v188 = *(v187 - 8);
  v189 = v188;
  __chkstk_darwin(v187 - 8);
  v190 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = *(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64);
  v3 = __chkstk_darwin(v191);
  v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  v193 = v48 - v194;
  __chkstk_darwin(v3);
  v195 = v48 - v194;
  v197 = type metadata accessor for Logger();
  v198 = *(v197 - 8);
  v199 = v198;
  v201 = *(v198 + 64);
  v4 = __chkstk_darwin(v196);
  v203 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = v48 - v203;
  v5 = __chkstk_darwin(v4);
  v202 = v48 - v203;
  v6 = __chkstk_darwin(v5);
  v204 = v48 - v203;
  v232 = v6;
  v231 = v1;
  v228 = static ConversationNavigationBarItemType.allCases.getter();
  v205 = sub_10025C9B0(&qword_1006D7730);
  sub_1002A6E68();
  Collection<>.makeIterator()();
  for (i = v206; ; i = v171)
  {
    v184 = i;
    sub_10025C9B0(&qword_1006D7758);
    IndexingIterator.next()();
    v185 = v226[1];
    if (v227)
    {
      break;
    }

    v183 = v185;
    v178 = v185;
    v217 = v185;
    v180 = sub_1002A03C8();
    v179 = v180;
    v215[1] = v178;
    v181 = sub_100295C30();
    sub_1002A7290();
    Dictionary.subscript.getter();
    v182 = v216;
    if (v216)
    {
      v177 = v182;
      v175 = v182;
      v210 = v182;

      v176 = sub_1002A08A8(v178, v196);
      if (v176 == 2)
      {
        [v175 setEnabled:1];
        v173 = v186 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v172 = Strong;
          swift_unknownObjectRetain();
          sub_100294754();
          swift_endAccess();
          swift_getObjectType();
          [v172 conversationNavigationBarItemsManager:v186 validateBarButtonItem:v175 ofType:v178];
          swift_unknownObjectRelease();
        }

        else
        {
          sub_100294754();
          swift_endAccess();
        }
      }

      else
      {
        v174 = v176;
        v208 = v176 & 1;
        [v175 setEnabled:?];
      }

      v171 = v184;
    }

    else
    {
      v7 = v204;

      v8 = sub_1002942C0();
      (*(v199 + 16))(v7, v8, v197);
      v159 = 7;
      v151 = swift_allocObject();
      *(v151 + 16) = v178;

      v154 = 32;
      v158 = 32;
      v9 = swift_allocObject();
      v10 = v151;
      v160 = v9;
      *(v9 + 16) = sub_10026E82C;
      *(v9 + 24) = v10;

      v170 = Logger.logObject.getter();
      v152 = v170;
      v169 = static os_log_type_t.default.getter();
      v153 = v169;
      v155 = 17;
      v163 = swift_allocObject();
      v156 = v163;
      *(v163 + 16) = v154;
      v164 = swift_allocObject();
      v157 = v164;
      *(v164 + 16) = 8;
      v11 = swift_allocObject();
      v12 = v160;
      v161 = v11;
      *(v11 + 16) = sub_1002A5B9C;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v161;
      v167 = v13;
      v162 = v13;
      *(v13 + 16) = sub_10026EE84;
      *(v13 + 24) = v14;
      v168 = sub_10025C9B0(&unk_1006D7720);
      v165 = _allocateUninitializedArray<A>(_:)();
      v166 = v15;

      v16 = v163;
      v17 = v166;
      *v166 = sub_10026434C;
      v17[1] = v16;

      v18 = v164;
      v19 = v166;
      v166[2] = sub_10026434C;
      v19[3] = v18;

      v20 = v166;
      v21 = v167;
      v166[4] = sub_10026EF2C;
      v20[5] = v21;
      sub_1002612B0();

      if (os_log_type_enabled(v170, v169))
      {
        v22 = v184;
        v141 = static UnsafeMutablePointer.allocate(capacity:)();
        v138 = v141;
        v139 = sub_10025C9B0(&qword_1006D7290);
        v142 = sub_1002641E8(0);
        v140 = v142;
        v144 = 1;
        v143 = sub_1002641E8(1);
        v215[0] = v141;
        v214 = v142;
        v213 = v143;
        v145 = v215;
        sub_10026423C(2, v215);
        sub_10026423C(v144, v145);
        v211 = sub_10026434C;
        v212 = v156;
        sub_100264250(&v211, v145, &v214, &v213);
        v146 = v22;
        v147 = v156;
        v148 = v157;
        v149 = v162;
        v150 = v22;
        if (v22)
        {
          v133 = v147;
          v134 = v148;
          v135 = v149;
          v136 = 0;
          v122 = v149;
          v121 = v148;

          __break(1u);
        }

        else
        {
          v211 = sub_10026434C;
          v212 = v157;
          sub_100264250(&v211, v215, &v214, &v213);
          v128 = 0;
          v129 = v156;
          v130 = v157;
          v131 = v162;
          v132 = 0;
          v211 = sub_10026EF2C;
          v212 = v162;
          sub_100264250(&v211, v215, &v214, &v213);
          v123 = 0;
          v124 = v156;
          v125 = v157;
          v126 = v162;
          v127 = 0;
          _os_log_impl(&_mh_execute_header, v152, v153, "Cannot find button of type: %s", v138, 0xCu);
          sub_10026429C(v140);
          sub_10026429C(v143);
          UnsafeMutablePointer.deallocate()();

          v137 = v123;
        }
      }

      else
      {
        v23 = v184;

        v137 = v23;
      }

      v120 = v137;

      (*(v199 + 8))(v204, v197);
      v171 = v120;
    }
  }

  sub_100264880();
  v118 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  v119 = [v118 isEnabled];

  swift_unknownObjectRetain();
  if (v119)
  {
    swift_unknownObjectRetain();
    if (v196)
    {
      v117 = v196;
      v115 = v196;
      swift_getObjectType();
      v116 = [v115 sendLaterDate];
      if (v116)
      {
        v114 = v116;
        v113 = v116;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v189 + 32))(v193, v190, v187);
        (*(v189 + 56))(v193, 0, 1, v187);
      }

      else
      {
        (*(v189 + 56))(v193, 1, 1, v187);
      }

      sub_1002A7168(v193, v195);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v189 + 56))(v195, 1, 1, v187);
    }

    v112 = (*(v189 + 48))(v195, 1, v187) != 1;
    v110 = v112;
    sub_1002A70C0(v195);
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v109 = v111;
  swift_unknownObjectRelease();
  if (v109)
  {
    v24 = v202;
    v25 = sub_1002942C0();
    (*(v199 + 16))(v24, v25, v197);
    v107 = Logger.logObject.getter();
    v104 = v107;
    v106 = static os_log_type_t.default.getter();
    v105 = v106;
    sub_10025C9B0(&unk_1006D7720);
    v108 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v107, v106))
    {
      v26 = v184;
      v95 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = v95;
      v92 = sub_10025C9B0(&qword_1006D7290);
      v93 = 0;
      v96 = sub_1002641E8(0);
      v94 = v96;
      v97 = sub_1002641E8(v93);
      v221 = v95;
      v220 = v96;
      v219 = v97;
      v98 = 0;
      v99 = &v221;
      sub_10026423C(0, &v221);
      sub_10026423C(v98, v99);
      v218 = v108;
      v100 = v48;
      __chkstk_darwin(v48);
      v101 = &v48[-6];
      v48[-4] = v27;
      v48[-3] = &v220;
      v48[-2] = &v219;
      v102 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v103 = v26;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v104, v105, "Explicitly disable the move button because message has send later date", v91, 2u);
        v89 = 0;
        sub_10026429C(v94);
        sub_10026429C(v97);
        UnsafeMutablePointer.deallocate()();

        v90 = v103;
      }
    }

    else
    {

      v90 = v184;
    }

    v87 = v90;

    (*(v199 + 8))(v202, v197);
    v86 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
    [v86 setEnabled:0];

    v88 = v87;
  }

  else
  {
    v88 = v184;
  }

  v28 = v200;
  v65 = v88;
  v29 = sub_1002942C0();
  (*(v199 + 16))(v28, v29, v197);
  swift_unknownObjectRetain();
  v74 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v196;
  v85 = Logger.logObject.getter();
  v66 = v85;
  v84 = static os_log_type_t.default.getter();
  v67 = v84;
  v68 = 17;
  v78 = swift_allocObject();
  v69 = v78;
  *(v78 + 16) = 0;
  v79 = swift_allocObject();
  v70 = v79;
  *(v79 + 16) = 4;
  v73 = 32;
  v30 = swift_allocObject();
  v31 = v71;
  v72 = v30;
  *(v30 + 16) = sub_1002A6EF0;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v72;
  v75 = v32;
  *(v32 + 16) = sub_1002A6F4C;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v75;
  v76 = v34;
  *(v34 + 16) = sub_1002A6F80;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v76;
  v82 = v36;
  v77 = v36;
  *(v36 + 16) = sub_1002A6FC8;
  *(v36 + 24) = v37;
  v83 = sub_10025C9B0(&unk_1006D7720);
  v80 = _allocateUninitializedArray<A>(_:)();
  v81 = v38;

  v39 = v78;
  v40 = v81;
  *v81 = sub_10026434C;
  v40[1] = v39;

  v41 = v79;
  v42 = v81;
  v81[2] = sub_10026434C;
  v42[3] = v41;

  v43 = v81;
  v44 = v82;
  v81[4] = sub_1002A6FD4;
  v43[5] = v44;
  sub_1002612B0();

  if (os_log_type_enabled(v85, v84))
  {
    v45 = v65;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = v59;
    v56 = sub_10025C9B0(&qword_1006D7290);
    v57 = 0;
    v60 = sub_1002641E8(0);
    v58 = v60;
    v61 = sub_1002641E8(v57);
    v226[0] = v59;
    v225 = v60;
    v224 = v61;
    v62 = v226;
    sub_10026423C(0, v226);
    sub_10026423C(1, v62);
    v222 = sub_10026434C;
    v223 = v69;
    sub_100264250(&v222, v62, &v225, &v224);
    v63 = v45;
    v64 = v45;
    if (v45)
    {
      v53 = 0;

      __break(1u);
    }

    else
    {
      v222 = sub_10026434C;
      v223 = v70;
      sub_100264250(&v222, v226, &v225, &v224);
      v51 = 0;
      v52 = 0;
      v222 = sub_1002A6FD4;
      v223 = v77;
      sub_100264250(&v222, v226, &v225, &v224);
      v49 = 0;
      v50 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Update bar button items. editable? %{BOOL}d", v55, 8u);
      v48[1] = 0;
      sub_10026429C(v58);
      sub_10026429C(v61);
      UnsafeMutablePointer.deallocate()();

      v54 = v49;
    }
  }

  else
  {
    v46 = v65;

    v54 = v46;
  }

  return (*(v199 + 8))(v200, v197);
}

uint64_t sub_1002A3128(void *a1)
{
  swift_unknownObjectRetain();
  if (a1)
  {
    swift_getObjectType();
    v3 = [a1 isEditable];
    swift_unknownObjectRelease();
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

id sub_1002A3264()
{
  result = sub_1002A3288();
  byte_1006EFE20 = result & 1;
  return result;
}

char *sub_1002A32B4()
{
  if (qword_1006D5DB8 != -1)
  {
    swift_once();
  }

  return &byte_1006EFE20;
}

uint64_t sub_1002A338C()
{
  result = sub_1002A33B0();
  byte_1006EFE21 = result & 1;
  return result;
}

uint64_t sub_1002A33B0()
{
  if (*sub_1002A32B4())
  {
    v1 = MUISolariumFeatureEnabled();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

char *sub_1002A33FC()
{
  if (qword_1006D5DC0 != -1)
  {
    swift_once();
  }

  return &byte_1006EFE21;
}

Swift::Void __swiftcall ConversationNavigationBarItemsManager.configureNavigationBar(_:navigationItem:)(UINavigationBar _, UINavigationItem navigationItem)
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();
    if (v4)
    {
      [(objc_class *)navigationItem.super.isa setStyle:1];
    }

    else
    {
      [(objc_class *)navigationItem.super.isa setStyle:?];
      sub_100296B8C();
      _allocateUninitializedArray<A>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [(objc_class *)navigationItem.super.isa setCenterItemGroups:isa];
      _objc_release(isa);
    }
  }
}

Swift::Void __swiftcall ConversationNavigationBarItemsManager.configureDesktopClassButtons(for:isPrimary:isShowingTitle:animated:)(UINavigationItem a1, Swift::Bool isPrimary, Swift::Bool isShowingTitle, Swift::Bool animated)
{
  isa = a1.super.isa;
  v130 = isPrimary;
  v129 = isShowingTitle;
  v128 = animated;
  v117 = sub_1002A737C;
  v118 = sub_10026E818;
  v119 = sub_10025E604;
  v120 = sub_100264354;
  v121 = sub_10026434C;
  v122 = sub_10026434C;
  v123 = sub_10026EBF8;
  v124 = sub_10026434C;
  v125 = sub_10026434C;
  v126 = sub_1002644E4;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v152 = 0;
  v151 = 0;
  v127 = 0;
  v131 = type metadata accessor for Logger();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = v36 - v134;
  v161 = __chkstk_darwin(isa);
  v160 = v5 & 1;
  v159 = v6 & 1;
  v158 = v7 & 1;
  v157 = v4;
  v137 = sub_1002A49A8(v5 & 1, v6 & 1);
  v156 = v137;
  v138 = [(objc_class *)isa leftBarButtonItems];
  if (v138)
  {
    v116 = v138;
    v113 = v138;
    sub_100295C30();
    v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v113);
    v115 = v114;
  }

  else
  {
    v115 = 0;
  }

  v112 = v115;

  v155 = v137;
  v153 = v112;
  sub_1002A730C(&v155, &v154);
  if (v153)
  {
    sub_1002A730C(&v153, &v140);
    if (v154)
    {
      v108 = &v139;
      v139 = v154;
      v109 = &v140;
      v107 = v140;
      v105 = v154;
      v106 = sub_100295C30();
      sub_1002A7384();
      v110 = static Array<A>.== infix(_:_:)();
      sub_100264880();
      sub_100264880();
      sub_100264880();
      v111 = v110;
      goto LABEL_10;
    }

    sub_100264880();
    goto LABEL_12;
  }

  if (v154)
  {
LABEL_12:
    sub_1002A7344();
    v111 = 0;
    goto LABEL_10;
  }

  sub_100264880();
  v111 = 1;
LABEL_10:
  v104 = v111;

  if ((v104 & 1) == 0)
  {

    if (v137)
    {
      v103 = v137;
      v100 = v137;
      sub_100295C30();
      v101 = Array._bridgeToObjectiveC()().super.isa;

      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v99 = v102;
    [objc_class setLeftBarButtonItems:"setLeftBarButtonItems:animated:" animated:?];
    _objc_release(v99);
  }

  if (!v129)
  {
    v98 = 0;
    [(objc_class *)isa setTitle:?];
    [(objc_class *)isa setTitleView:v98];
  }

  v8 = sub_1002A4FE8(v129);
  v9 = v135;
  v77 = v8;
  v152 = v8;
  v10 = sub_1002942C0();
  (*(v132 + 16))(v9, v10, v131);

  v78 = 24;
  v84 = 7;
  v11 = swift_allocObject();
  v12 = isa;
  v79 = v11;
  *(v11 + 16) = v77;
  _objc_retain(v12);
  v85 = swift_allocObject();
  *(v85 + 16) = isa;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v81 = 17;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v88 = swift_allocObject();
  v82 = 8;
  *(v88 + 16) = 8;
  v83 = 32;
  v13 = swift_allocObject();
  v14 = v79;
  v80 = v13;
  *(v13 + 16) = v117;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v80;
  v89 = v15;
  *(v15 + 16) = v118;
  *(v15 + 24) = v16;
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v17 = swift_allocObject();
  v18 = v85;
  v86 = v17;
  *(v17 + 16) = v119;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v86;
  v93 = v19;
  *(v19 + 16) = v120;
  *(v19 + 24) = v20;
  v95 = sub_10025C9B0(&unk_1006D7720);
  v92 = _allocateUninitializedArray<A>(_:)();
  v94 = v21;

  v22 = v87;
  v23 = v94;
  *v94 = v121;
  v23[1] = v22;

  v24 = v88;
  v25 = v94;
  v94[2] = v122;
  v25[3] = v24;

  v26 = v89;
  v27 = v94;
  v94[4] = v123;
  v27[5] = v26;

  v28 = v90;
  v29 = v94;
  v94[6] = v124;
  v29[7] = v28;

  v30 = v91;
  v31 = v94;
  v94[8] = v125;
  v31[9] = v30;

  v32 = v93;
  v33 = v94;
  v94[10] = v126;
  v33[11] = v32;
  sub_1002612B0();

  if (os_log_type_enabled(v96, v97))
  {
    v34 = v127;
    v69 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = sub_10025C9B0(&qword_1006D7290);
    v70 = sub_1002641E8(1);
    v71 = sub_1002641E8(0);
    v73 = &v145;
    v145 = v69;
    v74 = &v144;
    v144 = v70;
    v75 = &v143;
    v143 = v71;
    v72 = 2;
    sub_10026423C(2, &v145);
    sub_10026423C(v72, v73);
    v141 = v121;
    v142 = v87;
    sub_100264250(&v141, v73, v74, v75);
    v76 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v141 = v122;
      v142 = v88;
      sub_100264250(&v141, &v145, &v144, &v143);
      v67 = 0;
      v141 = v123;
      v142 = v89;
      sub_100264250(&v141, &v145, &v144, &v143);
      v66 = 0;
      v141 = v124;
      v142 = v90;
      sub_100264250(&v141, &v145, &v144, &v143);
      v65 = 0;
      v141 = v125;
      v142 = v91;
      sub_100264250(&v141, &v145, &v144, &v143);
      v64 = 0;
      v141 = v126;
      v142 = v93;
      sub_100264250(&v141, &v145, &v144, &v143);
      _os_log_impl(&_mh_execute_header, v96, v97, "Setting centerItems.count: %ld on navigationItem: %@", v69, 0x16u);
      sub_10026429C(v70);
      sub_10026429C(v71);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v96);
  (*(v132 + 8))(v135, v131);

  sub_100296B8C();
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [(objc_class *)isa setCenterItemGroups:v61];
  _objc_release(v61);
  v35 = sub_1002A515C();
  v62 = *v35;
  v63 = *(v35 + 1);

  if (v63)
  {
    v59 = v62;
    v60 = v63;
    v56 = v63;
    v57 = String._bridgeToObjectiveC()();

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v53 = v58;
  [(objc_class *)isa setCustomizationIdentifier:?];
  _objc_release(v53);
  v54 = sub_1002A51BC(v129);
  v151 = v54;
  v55 = [(objc_class *)isa rightBarButtonItems];
  if (v55)
  {
    v52 = v55;
    v49 = v55;
    sub_100295C30();
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v49);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v48 = v51;

  v150 = v54;
  v148 = v48;
  sub_1002A730C(&v150, &v149);
  if (v148)
  {
    sub_1002A730C(&v148, &v147);
    if (v149)
    {
      v44 = &v146;
      v146 = v149;
      v45 = &v147;
      v43 = v147;
      v41 = v149;
      v42 = sub_100295C30();
      sub_1002A7384();
      v46 = static Array<A>.== infix(_:_:)();
      sub_100264880();
      sub_100264880();
      sub_100264880();
      v47 = v46;
      goto LABEL_37;
    }

    sub_100264880();
    goto LABEL_39;
  }

  if (v149)
  {
LABEL_39:
    sub_1002A7344();
    v47 = 0;
    goto LABEL_37;
  }

  sub_100264880();
  v47 = 1;
LABEL_37:
  v40 = v47;

  if ((v40 & 1) == 0)
  {

    if (v54)
    {
      v39 = v54;
      v36[1] = v54;
      sub_100295C30();
      v37 = Array._bridgeToObjectiveC()().super.isa;

      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    [(objc_class *)isa setRightBarButtonItems:v38 animated:?];
    _objc_release(v36[0]);
  }
}

uint64_t sub_1002A49A8(char a1, char a2)
{
  sub_100295C30();
  v23 = _allocateUninitializedArray<A>(_:)();
  if (a2)
  {

    sub_100264880();
    return v23;
  }

  else
  {
    if (*sub_1002A33FC())
    {
      v17 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
      if (v17)
      {
        _objc_retain(v17);
        sub_10025C9B0(&qword_1006D7790);
        Array.append(_:)();
        _objc_release(v17);
      }
    }

    v15 = (v19 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
    swift_beginAccess();
    v16 = *v15;
    swift_endAccess();
    if (v16)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        v13 = [Strong supplementaryButtonItemForConversationNavigationBarItemsManager:v19];
        swift_unknownObjectRelease();
        v14 = v13;
      }

      else
      {
        sub_100294754();
        swift_endAccess();
        v14 = 0;
      }

      if (v14)
      {
        _objc_retain(v14);
        sub_10025C9B0(&qword_1006D7790);
        Array.append(_:)();
        _objc_release(v14);
      }
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v11 = [v22 shouldAddDoneButtonForConversationNavigationBarItemsManager:v19];
      swift_unknownObjectRelease();
      v12 = v11;
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      v12 = 2;
    }

    if (v12 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v12;
    }

    if (v10)
    {
      ConversationNavigationBarItemsManager.doneButtonItem.getter();
      sub_10025C9B0(&qword_1006D7790);
      Array.append(_:)();
    }

    v8 = (v19 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
    swift_beginAccess();
    v9 = *v8;
    swift_endAccess();
    if (v9)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      if (*sub_1002A33FC())
      {
        v24.is_nil = 0;
        v24.value.super.super.isa = 0;
        UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v24, v2);
        sub_10025C9B0(&qword_1006D7790);
        Array.append(_:)();
      }

      if (MUISolariumFeatureEnabled())
      {
        ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter();
        sub_10025C9B0(&qword_1006D7790);
        sub_1002A748C();
        Array.append<A>(contentsOf:)();
      }

      else
      {
        ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
        sub_10025C9B0(&qword_1006D7790);
        Array.append(_:)();
      }
    }

    sub_10025C9B0(&qword_1006D7790);
    sub_1002A7404();
    v6 = Collection.isEmpty.getter();

    if (v6)
    {
      v5 = 0;
    }

    else
    {

      v5 = v23;
    }

    sub_100264880();
    return v5;
  }
}

uint64_t sub_1002A4FE8(char a1)
{
  if (a1)
  {
    sub_100296B8C();
    return Array.init()();
  }

  else
  {
    v4 = sub_1002A53A8();
    v3 = *(sub_1002A515C() + 1);

    sub_100268744();
    if (v3)
    {
      sub_10029C448();
      sub_10025C9B0(&qword_1006D77A8);
      Array.append(_:)();
    }

    sub_100264880();
    return v4;
  }
}

__int128 *sub_1002A515C()
{
  if (qword_1006D5DC8 != -1)
  {
    swift_once();
  }

  return &xmmword_1006EFE28;
}

uint64_t sub_1002A51BC(char a1)
{
  if (*sub_1002A33FC() & 1) != 0 || (a1)
  {
    return 0;
  }

  v6 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
  if (!v6)
  {
    return 0;
  }

  sub_100295C30();
  v4 = _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  _objc_retain(v6);
  *v3 = v6;
  sub_1002612B0();
  _objc_release(v6);
  return v4;
}

uint64_t sub_1002A53A8()
{
  sub_100296B8C();
  v3 = _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = sub_100296AA0();
  v2[1] = sub_1002972D8();
  v2[2] = sub_100297AAC();
  v2[3] = sub_1002990A4();
  v2[4] = sub_100299878();
  v2[5] = sub_100299F58();
  v2[6] = sub_10029AC84();
  v2[7] = sub_10029B500();
  v2[8] = sub_10029BCA4();
  sub_1002612B0();
  if (EMBlackPearlIsFeatureEnabled())
  {
    sub_10029F398();
    sub_10025C9B0(&qword_1006D77A8);
    Array.append(_:)();
  }

  sub_100264880();
  return v3;
}

uint64_t sub_1002A55A0()
{
  sub_100295C30();
  v4 = _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  *v0 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  v3[1] = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  v3[2] = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  v3[3] = ConversationNavigationBarItemsManager.destructiveButtonItem.getter();
  v1 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  result = v4;
  v3[4] = v1;
  sub_1002612B0();
  return result;
}

uint64_t sub_1002A5654()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationNavigationBar", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006EFE28 = v1;
  return result;
}

uint64_t sub_1002A5698()
{
  v1 = *sub_1002A515C();

  return v1;
}

id sub_1002A5818(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a3;
  v16 = a2;
  v17 = a1;
  if (a2[3])
  {
    v9 = v16[3];
    sub_10027EC3C(v16, v9);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = v5;
    __chkstk_darwin(v5);
    v10 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))();
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v9);
    sub_1000160F4(v16);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v5[1] = v13;
  v6 = [v14 initWithBarButtonSystemItem:v17 target:? action:?];
  swift_unknownObjectRelease();
  return v6;
}

id sub_1002A5984(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v19 = a1;
  if (a3[3])
  {
    v10 = v17[3];
    sub_10027EC3C(v17, v10);
    v8 = *(v10 - 8);
    v9 = v8;
    v12 = &v6;
    __chkstk_darwin(&v6);
    v11 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))();
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v10);
    sub_1000160F4(v17);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v7 = [v15 initWithImage:v19 style:v18 target:v14 action:?];
  swift_unknownObjectRelease();

  return v7;
}

id sub_1002A5B00(void *a1)
{
  v4 = [v1 initWithCustomView:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_1002A5B9C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1002A5BF4();

  return sub_10026E834(v4, v3, &type metadata for ConversationNavigationBarItemType, v1);
}

unint64_t sub_1002A5BF4()
{
  v2 = qword_1006D7718;
  if (!qword_1006D7718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7718);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A5CA8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A5FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_1002A7580;
        v16 = &v37;
        sub_1002A5CA8(sub_1002A759C, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A6804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1002A6D18()
{
  v2 = qword_1006D7738;
  if (!qword_1006D7738)
  {
    sub_10025CAA4(&qword_1006D7730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A6DA0()
{
  v2 = qword_1006D7740;
  if (!qword_1006D7740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7740);
    return WitnessTable;
  }

  return v2;
}

id *sub_1002A6E1C(id *a1)
{
  if (*a1 != 1)
  {
    _objc_release(*a1);
  }

  return a1;
}

unint64_t sub_1002A6E68()
{
  v2 = qword_1006D7750;
  if (!qword_1006D7750)
  {
    sub_10025CAA4(&qword_1006D7730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A6F8C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1002A6FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_1002A7048();

  return sub_10026E9E4(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_1002A7048()
{
  v2 = qword_1006D7760;
  if (!qword_1006D7760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A70C0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1002A7168(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D8740);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1002A7290()
{
  v2 = qword_1006D7778;
  if (!qword_1006D7778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7778);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002A730C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1002A7384()
{
  v2 = qword_1006D7788;
  if (!qword_1006D7788)
  {
    sub_100295C30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A7404()
{
  v2 = qword_1006D7798;
  if (!qword_1006D7798)
  {
    sub_10025CAA4(&qword_1006D7790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A748C()
{
  v2 = qword_1006D77A0;
  if (!qword_1006D77A0)
  {
    sub_10025CAA4(&qword_1006D7790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D77A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A75C8()
{
  v2 = qword_1006D77E0;
  if (!qword_1006D77E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002A7644()
{
  v2 = qword_1006D77F0;
  if (!qword_1006D77F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002A76D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1002A7738()
{
  v2 = qword_1006D77F8;
  if (!qword_1006D77F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002A779C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1002A7840()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [swift_getObjCClassFromMetadata() systemImageNamed:v1];
  _objc_release(v1);

  return v2;
}

float sub_1002A78B4()
{
  result = 1000.0 - 2.0;
  *&dword_1006EFE38 = 1000.0 - 2.0;
  return result;
}

int *sub_1002A78D0()
{
  if (qword_1006D5DD0 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE38;
}

float sub_1002A794C()
{
  result = 1000.0 - 1.0;
  *&dword_1006EFE3C = 1000.0 - 1.0;
  return result;
}

int *sub_1002A7968()
{
  if (qword_1006D5DD8 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE3C;
}

float sub_1002A79E4()
{
  result = 1000.0 - 3.0;
  *&dword_1006EFE40 = 1000.0 - 3.0;
  return result;
}

int *sub_1002A7A00()
{
  if (qword_1006D5DE0 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE40;
}

float sub_1002A7A7C()
{
  result = 1000.0 - 4.0;
  *&dword_1006EFE44 = 1000.0 - 4.0;
  return result;
}

int *sub_1002A7A98()
{
  if (qword_1006D5DE8 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE44;
}

uint64_t sub_1002A7B80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1002A7C48()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*sub_1002A7CC8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

id sub_1002A7DE0()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002A7EB8(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

double sub_1002A8014()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002A80D0(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1002A8200()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002A82BC(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void *sub_1002A8394()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8448()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8490()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8544()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A85F8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A86AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8760()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1002A87A8@<X0>(char *a1@<X8>)
{
  v12 = a1;
  v29 = 0;
  v2 = sub_10025C9B0(&qword_1006D7870);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v15 = &v6 - v14;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v14);
  v25 = &v6 - v16;
  v26 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v17 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v18 = &v6 - v17;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v17);
  v20 = &v6 - v19;
  v29 = v1;
  v21 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView____lazy_storage___titleTextAttributesTransformer);
  v22 = &v28;
  swift_beginAccess();
  sub_1002A8BA4(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    sub_1002A8CCC(v25);
    v7 = swift_allocObject();
    v6 = v7 + 16;
    _objc_retain(v13);
    swift_unknownObjectWeakInit();
    _objc_release(v13);

    sub_1002A8D74();

    v11 = *(v23 + 16);
    v10 = v23 + 16;
    v11(v15, v18, v26);
    (*(v23 + 56))(v15, 0, 1, v26);
    v8 = &v13[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView____lazy_storage___titleTextAttributesTransformer];
    v9 = &v27;
    swift_beginAccess();
    sub_1002A8DD0(v15, v8);
    swift_endAccess();
    v11(v12, v18, v26);
    return (*(v23 + 8))(v18, v26);
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    (*(v23 + 16))(v12, v20, v26);
    return (*(v23 + 8))(v20, v26);
  }
}