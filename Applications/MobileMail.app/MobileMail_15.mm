uint64_t sub_10039EAC4()
{
  sub_1003A0B7C();
  sub_100264880();
  sub_10026498C();
  _objc_release(*(v0 + 64));
  _objc_release(*(v0 + 72));
  return v2;
}

uint64_t sub_10039EBD8(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t sub_10039EC14@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v72 = a1;
  v90 = a2;
  v91 = a3;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v113 = 0;
  v106 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v64 = 0;
  v56 = type metadata accessor for ActivityStateObserver.ActivityState.Running();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v60 = v27 - v59;
  v61 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27 - v59);
  v62 = v27 - v61;
  v97 = sub_10025C9B0(&qword_1006DA630);
  v63 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v101 = v27 - v63;
  v65 = (*(*(sub_10025C9B0(&qword_1006DA5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v64);
  v66 = v27 - v65;
  v67 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v68 = v27 - v67;
  v69 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v96 = v27 - v69;
  v70 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v94 = v27 - v70;
  v71 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v92 = v27 - v71;
  v100 = type metadata accessor for ActivityStateObserver.ActivityState();
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v86 = *(v98 + 64);
  v73 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v72);
  v74 = v27 - v73;
  v75 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v13);
  v76 = v27 - v75;
  v117 = v27 - v75;
  v77 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v14);
  v78 = v27 - v77;
  v116 = v27 - v77;
  v79 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v15);
  v80 = v27 - v79;
  v115 = v27 - v79;
  v81 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v16);
  v82 = v27 - v81;
  v114 = v27 - v81;
  v83 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = __chkstk_darwin(v17);
  v84 = v27 - v83;
  v113 = v27 - v83;
  v85 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __chkstk_darwin(v18);
  v87 = v27 - v85;
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = __chkstk_darwin(v19);
  v89 = v27 - v88;
  v112 = v27 - v88;
  v111 = v20;
  v110 = v21;
  v109 = v22;
  sub_1003A09DC(v20, v23);
  sub_1003A09DC(v90, v94);
  sub_1003A09DC(v91, v96);
  v93 = *(v97 + 48);
  v95 = *(v97 + 64);
  sub_1003A0680(v92, v101);
  sub_1003A0680(v94, &v101[v93]);
  sub_1003A0680(v96, &v101[v95]);
  v102 = *(v97 + 48);
  v103 = *(v97 + 64);
  v104 = *(v98 + 48);
  v105 = v98 + 48;
  if (v104(v101, 1, v100) != 1)
  {
    if (v104(&v101[v102], 1, v100) == 1)
    {
      if (v104(&v101[v103], 1, v100) == 1)
      {
        (*(v98 + 32))(v84, v101, v100);
        (*(v98 + 16))(v87, v84, v100);
        (*(v98 + 8))(v84, v100);
        sub_1003A0814(&v101[v103]);
        sub_1003A0814(&v101[v102]);
LABEL_18:
        v108 = v87;
        (*(v98 + 16))(v84);
        (*(v98 + 32))(v89, v84, v100);
        (*(v98 + 8))(v87, v100);
        goto LABEL_20;
      }

      v24 = v82;
      sub_1003A09DC(&v101[v103], v68);
      v48 = *(v98 + 16);
      v49 = v98 + 16;
      v48(v24, v101, v100);
      v50 = *(v98 + 32);
      v51 = v98 + 32;
      v50(v80, v68, v100);
      ActivityStateObserver.ActivityState.running.getter();
      (*(v57 + 104))(v60, enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:), v56);
      v54 = static ActivityStateObserver.ActivityState.Running.== infix(_:_:)();
      v53 = *(v57 + 8);
      v52 = v57 + 8;
      v53(v60, v56);
      v53(v62, v56);
      if (v54)
      {
        v114 = v82;
        v115 = v80;
        (v48)(v84);
        v50(v89, v84, v100);
        v47 = *(v98 + 8);
        v46 = v98 + 8;
        v47(v80, v100);
        v47(v82, v100);
        v47(v101, v100);
        sub_1003A0814(&v101[v103]);
        sub_1003A0814(&v101[v102]);
        goto LABEL_20;
      }

      v45 = *(v98 + 8);
      v44 = v98 + 8;
      v45(v80, v100);
      v45(v82, v100);
    }

    else
    {
      v25 = v78;
      sub_1003A09DC(&v101[v102], v66);
      v37 = *(v98 + 16);
      v38 = v98 + 16;
      v37(v25, v101, v100);
      v39 = *(v98 + 32);
      v40 = v98 + 32;
      v39(v76, v66, v100);
      ActivityStateObserver.ActivityState.running.getter();
      (*(v57 + 104))(v60, enum case for ActivityStateObserver.ActivityState.Running.didComplete(_:), v56);
      v43 = static ActivityStateObserver.ActivityState.Running.== infix(_:_:)();
      v42 = *(v57 + 8);
      v41 = v57 + 8;
      v42(v60, v56);
      v42(v62, v56);
      if (v43)
      {
        v116 = v78;
        v117 = v76;
        (v37)(v84);
        v39(v89, v84, v100);
        v36 = *(v98 + 8);
        v35 = v98 + 8;
        v36(v76, v100);
        v36(v78, v100);
        v36(v101, v100);
        sub_1003A0814(&v101[v103]);
        sub_1003A0814(&v101[v102]);
        goto LABEL_20;
      }

      v34 = *(v98 + 8);
      v33 = v98 + 8;
      v34(v76, v100);
      v34(v78, v100);
    }

    v106 = v84;
    v32 = *(v98 + 32);
    v31 = v98 + 32;
    v32(v84, v101, v100);
    v106 = v84;
    (*(v98 + 16))(v74);
    v32(v89, v74, v100);
    (*(v98 + 8))(v84, v100);
    sub_1003A0814(&v101[v103]);
    sub_1003A0814(&v101[v102]);
    goto LABEL_20;
  }

  if (v104(&v101[v102], 1, v100) == 1)
  {
    if (v104(&v101[v103], 1, v100) == 1)
    {
      sub_1003A0814(v91);
      sub_1003A0814(v90);
      sub_1003A0814(v72);
      return (*(v98 + 56))(v55, 1, 1, v100);
    }

    v113 = v84;
    (*(v98 + 32))(v84, &v101[v103], v100);
    (*(v98 + 16))(v87, v84, v100);
    (*(v98 + 8))(v84, v100);
    goto LABEL_18;
  }

  if (v104(&v101[v103], 1, v100) == 1)
  {
    v113 = v84;
    (*(v98 + 32))(v84, &v101[v102], v100);
    (*(v98 + 16))(v87, v84, v100);
    (*(v98 + 8))(v84, v100);
    goto LABEL_18;
  }

  v107 = v84;
  v28 = *(v98 + 32);
  v27[1] = v98 + 32;
  v28(v84, &v101[v102], v100);
  v107 = v84;
  (*(v98 + 16))(v74);
  v28(v89, v74, v100);
  v30 = *(v98 + 8);
  v29 = v98 + 8;
  v30(v84, v100);
  v30(&v101[v103], v100);
LABEL_20:
  (*(v98 + 16))(v55, v89, v100);
  (*(v98 + 56))(v55, 0, 1, v100);
  sub_1003A0814(v91);
  sub_1003A0814(v90);
  sub_1003A0814(v72);
  return (*(v98 + 8))(v89, v100);
}

uint64_t sub_1003A00B4(unint64_t a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  if (a1 < 2)
  {
    return 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_1003A01AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003A0210()
{
  v2 = qword_1006DA5B8;
  if (!qword_1006DA5B8)
  {
    _s16ActivityObserverCMa();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A0290()
{
  v2 = qword_1006DA5C0;
  if (!qword_1006DA5C0)
  {
    sub_10025CAA4(&qword_1006D9D90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A0324(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1003A0388()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10025C9B0(&qword_1006D9D70);
  v1 = sub_1003A03F0();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_1003A03F0()
{
  v2 = qword_1006DA5D0;
  if (!qword_1006DA5D0)
  {
    sub_10025CAA4(&qword_1006D9D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA5D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A0478(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue_serial.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    return v2;
  }

  return result;
}

unint64_t sub_1003A0570()
{
  v2 = qword_1006DA5D8;
  if (!qword_1006DA5D8)
  {
    sub_10025CAA4(&qword_1006D9D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A05F8()
{
  v2 = qword_1006DA5F8;
  if (!qword_1006DA5F8)
  {
    sub_10025CAA4(&qword_1006DA5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA5F8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003A0680(const void *a1, void *a2)
{
  v6 = type metadata accessor for ActivityStateObserver.ActivityState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DA5E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1003A07A8()
{
  v2 = qword_1006DA610;
  if (!qword_1006DA610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DA610);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003A0814(uint64_t a1)
{
  v3 = type metadata accessor for ActivityStateObserver.ActivityState();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1003A08F0()
{
  type metadata accessor for ActivityStateObserver.Update();

  return sub_10039EAA0();
}

unint64_t sub_1003A0954()
{
  v2 = qword_1006DA620;
  if (!qword_1006DA620)
  {
    sub_10025CAA4(&qword_1006DA618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA620);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003A09DC(const void *a1, void *a2)
{
  v6 = type metadata accessor for ActivityStateObserver.ActivityState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DA5E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t type metadata accessor for MailStatusMailboxActivityObserver()
{
  v2 = qword_1006DA660;
  if (!qword_1006DA660)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DA660);
    return ObjCClassMetadata;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003A0B7C()
{
}

unint64_t sub_1003A0BC0()
{
  v2 = qword_1006DA730;
  if (!qword_1006DA730)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A0C40()
{
  v2 = qword_1006DA740;
  if (!qword_1006DA740)
  {
    sub_10025CAA4(&qword_1006DA738);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A0CC8()
{
  if (qword_1006D5FC8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1003A0D3C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email thread";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mail Thread", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 15;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1003A1030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v15 = a1;
  v14 = a2;
  v17 = "An email thread";
  v34 = 0;
  v35 = 0;
  v3 = sub_10025C9B0(&unk_1006D9D00);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v30 = &v9 - v9;
  v4 = sub_10025C9B0(&qword_1006D6280);
  v10 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = &v9 - v10;
  v25 = 0;
  v11 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v21 = &v9 - v11;
  v12 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v20 = &v9 - v12;
  v13 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v18 = &v9 - v13;
  v24 = type metadata accessor for LocalizedStringResource();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v16 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v15);
  v28 = &v9 - v16;
  v34 = v5;
  v35 = v6;
  v26 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mail Thread", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v26 & 1);
  sub_100015CC0();
  sub_10025D410(v21);
  v31 = v17;
  v32 = 15;
  v33 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v22 + 56))(v29, v26, v26, v24);
  v7 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v7 - 8) + 56))(v30, v26);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1003A1404@<X0>(void *a1@<X8>)
{
  result = *v1;
  InstantAnswerView.Model.Airport.code.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1003A148C()
{
  v2 = qword_1006DC9E0;
  if (!qword_1006DC9E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A1560()
{
  v2 = qword_1006DA748;
  if (!qword_1006DA748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A15DC(uint64_t a1)
{
  v1[5] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A1690, v2);
}

uint64_t sub_1003A1690()
{
  v1 = v0[5];
  v0[2] = v0;
  v0[4] = v1;
  v6 = sub_10025C9B0(&unk_1006D69B0);
  v2 = sub_1002B76F0();
  v8 = sub_10025E9D8(sub_1003A17E0, 0, v6, &unk_10065CC28, &type metadata for Never, v2, &protocol witness table for Never, v7);

  v3 = *(*(v5 + 16) + 8);

  return v3(v8);
}

uint64_t sub_1003A17E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  result = nullsub_13(v4);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1003A1844(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1003A15DC(a1);
}

uint64_t sub_1003A18F8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1003A19C0();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_1003A19C0()
{
  v2 = qword_1006DA750;
  if (!qword_1006DA750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A1A3C()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0120;
  sub_10002094C(v7, qword_1006F0120);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_1003A1B7C();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1003A1B7C()
{
  if (!sub_10047E218(26, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailThreadEntity", 0x10uLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_1003A1C54()
{
  if (qword_1006D5FD0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0120);
}

uint64_t sub_1003A1CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003A1C54();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1003A1D3C()
{
  v2 = qword_1006DA758;
  if (!qword_1006DA758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A1DD0()
{
  v2 = qword_1006DA760;
  if (!qword_1006DA760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A1E64()
{
  v2 = qword_1006DA768;
  if (!qword_1006DA768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A1F28()
{
  v2 = qword_1006DA770;
  if (!qword_1006DA770)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A1FBC()
{
  v2 = qword_1006DA778;
  if (!qword_1006DA778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A2080()
{
  v2 = qword_1006DA780;
  if (!qword_1006DA780)
  {
    sub_10025CAA4(&qword_1006DA788);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A2120()
{
  v2 = qword_1006DA790;
  if (!qword_1006DA790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A21B4()
{
  v2 = qword_1006DA798;
  if (!qword_1006DA798)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A2248()
{
  v2 = qword_1006DA7A0;
  if (!qword_1006DA7A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A22DC()
{
  v2 = qword_1006DA7A8;
  if (!qword_1006DA7A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A2370()
{
  v2 = qword_1006DA7B0;
  if (!qword_1006DA7B0)
  {
    sub_10025CAA4(&qword_1006DA7B8);
    sub_100341EC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003A2420()
{
  v2 = qword_1006DA7C0;
  if (!qword_1006DA7C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003A249C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1003A25E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

id sub_1003A27D8()
{
  type metadata accessor for MailTipsHelper();
  result = ConversationNavigationBarItemsManager.__allocating_init()();
  qword_1006F0138 = result;
  return result;
}

uint64_t *sub_1003A2834()
{
  if (qword_1006D5FD8 != -1)
  {
    swift_once();
  }

  return &qword_1006F0138;
}

void *sub_1003A2894()
{
  v1 = *sub_1003A2834();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003A292C()
{
  v1 = sub_1003A2920();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1003A298C(char a1)
{
  v2 = sub_1003A2920();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1003A29F8()
{
  v4 = (v0 + OBJC_IVAR____TtC10MobileMail14MailTipsHelper____lazy_storage___filterByUnreadTip);
  swift_beginAccess();
  v5 = *v4;
  result = swift_endAccess();
  if (v5)
  {
    nullsub_13(result);
    v2 = (v3 + OBJC_IVAR____TtC10MobileMail14MailTipsHelper____lazy_storage___filterByUnreadTip);
    swift_beginAccess();
    *v2 = 0;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1003A2AC0()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14MailTipsHelper____lazy_storage___filterByUnreadTip);
  swift_beginAccess();
  *v2 = 0;
  return swift_endAccess();
}

uint64_t sub_1003A2B28()
{
  v45 = 0;
  v39 = 0;
  v22 = 0;
  v28 = 0;
  v23 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v27 = v5 - v26;
  v29 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v33 = v5 - v32;
  v34 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v38 = v5 - v37;
  v45 = v0;
  v40 = sub_1003A2920();
  v41 = &v44;
  swift_beginAccess();
  v42 = *v40;
  result = swift_endAccess();
  if ((v42 & 1) == 0)
  {
    v2 = v22;
    v10 = sub_1003A2920();
    v11 = &v43;
    swift_beginAccess();
    *v10 = 1;
    swift_endAccess();
    v13 = type metadata accessor for Tips.ConfigurationOption();
    v12 = _allocateUninitializedArray<A>(_:)();
    v18 = v3;
    static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
    static Tips.ConfigurationOption.analyticsEngine(_:)();
    (*(v35 + 8))(v38, v34);
    v14 = *(v13 - 8);
    v15 = v13 - 8;
    v17 = *(v14 + 72);
    v16 = v18 + v17;
    static Tips.ConfigurationOption.DisplayFrequency.system.getter();
    static Tips.ConfigurationOption.displayFrequency(_:)();
    (*(v30 + 8))(v33, v29);
    v19 = v18 + 2 * v17;
    static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
    v20 = v2;
    v21 = v2;
    if (v2)
    {
      v7 = v21;
      v6 = *(v14 + 8);
      v5[1] = v14 + 8;
      v6(v16, v13);
      v6(v18, v13);
      _deallocateUninitializedArray<A>(_:)();
    }

    else
    {
      static Tips.ConfigurationOption.datastoreLocation(_:)();
      (*(v24 + 8))(v27, v23);
      v4 = v12;
      sub_1002612B0();
      v8 = v4;
      static Tips.configure(_:)();
      v9 = 0;
    }
  }

  return result;
}

id sub_1003A3060()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  *(v0 + OBJC_IVAR____TtC10MobileMail14MailTipsHelper____lazy_storage___filterByUnreadTip) = 1;
  v4.receiver = v5;
  v4.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v4, "init");
  _objc_retain(v3);
  v5 = v3;
  _objc_release(v3);
  return v3;
}

uint64_t sub_1003A312C()
{
  v8 = 0;
  v7 = type metadata accessor for Tips.InvalidationReason();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v2 - v3;
  v8 = v0;
  sub_1003A29F8();
  (*(v4 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v7);
  sub_1003A3248();
  Tip.invalidate(reason:)();
  return (*(v4 + 8))(v6, v7);
}

unint64_t sub_1003A3248()
{
  v2 = qword_1006DA7D8;
  if (!qword_1006DA7D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA7D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1003A33CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  TupleView.init(_:)();
  return v15;
}

uint64_t sub_1003A3674()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("URLs", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static MailURLSettingsViewController.title = v1;
  return result;
}

__int128 *MailURLSettingsViewController.title.unsafeMutableAddressor()
{
  if (qword_1006D5FE0 != -1)
  {
    swift_once();
  }

  return &static MailURLSettingsViewController.title;
}

uint64_t static MailURLSettingsViewController.title.getter()
{
  v1 = *MailURLSettingsViewController.title.unsafeMutableAddressor();

  return v1;
}

id sub_1003A37C4()
{
  v2 = (v0 + OBJC_IVAR___MFMailURLSettingsViewController_contentHost);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003A3834(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFMailURLSettingsViewController_contentHost);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Swift::Void __swiftcall MailURLSettingsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v53 = v0;
  _objc_retain(v0);
  v52.receiver = v0;
  v52.super_class = ObjectType;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  _objc_release(v47);
  sub_10025C9B0(&qword_1006DA810);
  sub_1003A4194();
  v49 = UIHostingController.__allocating_init(rootView:)();
  v48 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v1 = *v48;
  *v48 = v49;
  _objc_release(v1);
  swift_endAccess();
  v50 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v51 = *v50;
  _objc_retain(*v50);
  swift_endAccess();
  if (v51)
  {
    v45 = v51;
  }

  else
  {
    LOBYTE(v2) = 2;
    v9 = 23;
    LODWORD(v16) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v47 addChildViewController:{v2, v9, v16}];
  _objc_release(v45);
  _objc_retain(v47);
  v44 = [v47 view];
  _objc_release(v47);
  if (v44)
  {
    v43 = v44;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 24;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v41 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v42 = *v41;
  _objc_retain(*v41);
  swift_endAccess();
  if (v42)
  {
    v40 = v42;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 24;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v39 = [v40 view];
  _objc_release(v40);
  if (v39)
  {
    v38 = v39;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = 24;
    LODWORD(v18) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v43 addSubview:{v4, v11, v18}];
  _objc_release(v38);
  _objc_release(v43);
  v36 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v37 = *v36;
  _objc_retain(*v36);
  swift_endAccess();
  if (v37)
  {
    v35 = v37;
  }

  else
  {
    LOBYTE(v5) = 2;
    v12 = 26;
    LODWORD(v19) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v34 = [v35 view];
  _objc_release(v35);
  if (v34)
  {
    v33 = v34;
  }

  else
  {
    LOBYTE(v6) = 2;
    v13 = 26;
    LODWORD(v20) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v33 setTranslatesAutoresizingMaskIntoConstraints:{0, v6, v13, v20}];
  _objc_release(v33);
  v31 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v32 = *v31;
  _objc_retain(*v31);
  swift_endAccess();
  if (v32)
  {
    v30 = v32;
  }

  else
  {
    LOBYTE(v7) = 2;
    v14 = 27;
    LODWORD(v21) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v29 = [v30 view];
  _objc_release(v30);
  if (v29)
  {
    v28 = v29;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 27;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v47);
  v27 = [v47 view];
  _objc_release(v47);
  if (v27)
  {
    v26 = v27;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 27;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v28 mf_pinToView:v8 usingLayoutMargins:{v15, v22}];
  _objc_release(v26);
  _objc_release(v28);
  v24 = &v47[OBJC_IVAR___MFMailURLSettingsViewController_contentHost];
  swift_beginAccess();
  v25 = *v24;
  _objc_retain(*v24);
  swift_endAccess();
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v47);
  [v23 didMoveToParentViewController:v47];
  _objc_release(v47);
  _objc_release(v23);
}

uint64_t sub_1003A4194()
{
  v7 = type metadata accessor for MailSettingsSpecifier();
  v6 = _allocateUninitializedArray<A>(_:)();
  v4 = v0;
  v2 = *(v7 - 8);
  v5 = *(v2 + 104);
  v5();
  v3 = *(v2 + 72);
  (v5)(v4 + v3, enum case for MailSettingsSpecifier.addAccount(_:), v7);
  (v5)(v4 + 2 * v3, enum case for MailSettingsSpecifier.notifications(_:), v7);
  sub_1002612B0();

  sub_100264880();
  return v6;
}

id MailURLSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  *&v3[OBJC_IVAR___MFMailURLSettingsViewController_contentHost] = 0;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v17;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v8);
  _objc_release(v5);
  _objc_retain(v6);
  v17 = v6;
  _objc_release(a3);

  _objc_release(v17);
  return v6;
}

id MailURLSettingsViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR___MFMailURLSettingsViewController_contentHost] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "initWithCoder:");
  if (v6)
  {
    _objc_retain(v6);
    v9 = v6;
    _objc_release(a1);
    _objc_release(v9);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_1003A46C8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = sub_10025C9B0(&qword_1006DA818);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = v3 - v4;
  sub_1003A477C(v1, (v3 - v4));
  Environment.wrappedValue.getter();
  return sub_1003A4850(v7);
}

void *sub_1003A477C(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for OpenURLAction();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1003A4850(uint64_t a1)
{
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for OpenURLAction();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1003A490C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006DA818) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_1003A477C(v1, (v3 - v3[0]));
  sub_1003A49B0(v4, v3[1]);
  return sub_1003A4850(v5);
}

void *sub_1003A49B0(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1003A4850(a2);
    v4 = sub_10025C9B0(&qword_1006DA820);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for OpenURLAction();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1003A4A9C()
{
  v2 = *(v0 + *(type metadata accessor for MailURLSettingsView.SensitiveLink() + 20));

  return v2;
}

uint64_t type metadata accessor for MailURLSettingsView.SensitiveLink()
{
  v1 = qword_1006DA980;
  if (!qword_1006DA980)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1003A4B58@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MailURLSettingsView.SensitiveLink() + 24);
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1003A4BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a4;
  v17 = a1;
  v25 = a2;
  v24 = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v14 = 0;
  v23 = type metadata accessor for URL();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v14 - v15;
  v19 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v16 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v17);
  v26 = &v14 - v16;
  v30 = &v14 - v16;
  v28 = v4;
  v29 = v5;
  v27 = v6;
  swift_getKeyPath();
  Environment.init(_:)();

  v7 = v18;
  v8 = v21;
  v9 = v24;
  v10 = v23;
  v11 = v25;
  v12 = &v26[*(v19 + 20)];
  *v12 = v17;
  *(v12 + 1) = v11;
  (*(v8 + 16))(v7, v9, v10);
  (*(v21 + 32))(&v26[*(v19 + 24)], v18, v23);
  sub_1003AC2BC(v26, v20);
  (*(v21 + 8))(v24, v23);

  return sub_1003AC43C(v26);
}

uint64_t sub_1003A4DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v17 = a1;
  v20 = 0;
  v19 = 0;
  v16 = 0;
  v14 = type metadata accessor for URL();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v13 = &v8 - v8;
  v10 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v18 = &v8 - v9;
  v20 = &v8 - v9;
  v19 = a1;
  swift_getKeyPath();
  Environment.init(_:)();
  v3 = MailSettingsSpecifier.displayName.getter();
  v4 = &v18[*(v10 + 20)];
  *v4 = v3;
  v4[1] = v5;
  MailSettingsSpecifier.url.getter();
  (*(v11 + 32))(&v18[*(v10 + 24)], v13, v14);
  sub_1003AC2BC(v18, v15);
  v6 = type metadata accessor for MailSettingsSpecifier();
  (*(*(v6 - 8) + 8))(v17);
  return sub_1003AC43C(v18);
}

uint64_t sub_1003A4FBC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v25 = sub_1003AC548;
  v19 = sub_1003AC550;
  v21 = sub_1003AC6A8;
  v40 = 0;
  v39 = 0;
  v1 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v8 = *(v1 - 8);
  v13 = v8;
  v14 = *(v8 + 64);
  v9 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v7 - v9;
  v32 = sub_10025C9B0(&qword_1006DA828);
  v26 = *(v32 - 8);
  v27 = v32 - 8;
  v11 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v10);
  v30 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v31 = &v7 - v12;
  v40 = &v7 - v12;
  v39 = v4;
  v18 = &v37;
  v38 = v4;
  v20 = &v35;
  v36 = v4;
  sub_1003AC2BC(v4, v5);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = swift_allocObject();
  sub_1003AC558(v16, (v22 + v15));
  v23 = sub_10025C9B0(&qword_1006DA830);
  v24 = sub_10025C9B0(&qword_1006DA838);
  v17 = sub_1003AC70C();
  sub_1003AC794();
  Menu.init(content:label:primaryAction:)();
  v29 = sub_1003AC81C();
  sub_1002EC85C(v30, v32, v31);
  v34 = *(v26 + 8);
  v33 = v26 + 8;
  v34(v30, v32);
  (*(v26 + 16))(v30, v31, v32);
  sub_1002EC85C(v30, v32, v28);
  v34(v30, v32);
  return (v34)(v31, v32);
}

uint64_t sub_1003A536C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v23 = a1;
  v37 = 0;
  v39 = sub_1003AC6A8;
  v36 = sub_1003A5B30;
  v19 = sub_1003AE95C;
  v20 = sub_1003A60B8;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v2 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v21 = *(v2 - 8);
  v30 = v21;
  v31 = *(v21 + 64);
  v22 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v34 = &v12 - v22;
  v45 = sub_10025C9B0(&qword_1006DAA88);
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v24 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v23);
  v25 = &v12 - v24;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v27 = &v12 - v26;
  v28 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v48 = &v12 - v28;
  v29 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v41 = &v12 - v29;
  v55 = &v12 - v29;
  v54 = v9;
  sub_1003AC2BC(v9, v10);
  v32 = *(v30 + 80);
  v33 = (v32 + 16) & ~v32;
  v35 = swift_allocObject();
  sub_1003AC558(v34, (v35 + v33));
  v38 = sub_10025C9B0(&qword_1006DAA90);
  v40 = sub_1003AE84C();
  Button.init(action:label:)();
  v42 = sub_1003AE8D4();
  sub_1002EC85C(v48, v45, v41);
  v46 = v43[1];
  v47 = v43 + 1;
  v46(v48, v45);
  v53 = v48;
  sub_1003AC2BC(v23, v34);
  v13 = (v32 + 16) & ~v32;
  v14 = swift_allocObject();
  sub_1003AC558(v34, (v14 + v13));
  Button.init(action:label:)();
  sub_1002EC85C(v27, v45, v48);
  v46(v27, v45);
  v16 = v43[2];
  v15 = v43 + 2;
  v16(v27, v41, v45);
  v17 = v52;
  v52[0] = v27;
  v16(v25, v48, v45);
  v52[1] = v25;
  v51[0] = v45;
  v51[1] = v45;
  v49 = v42;
  v50 = v42;
  sub_1003A33CC(v17, 2uLL, v51, v18);
  v46(v25, v45);
  v46(v27, v45);
  v46(v48, v45);
  return (v46)(v41, v45);
}

uint64_t sub_1003A58FC(uint64_t a1)
{
  v11 = a1;
  v20 = 0;
  v10 = 0;
  v15 = type metadata accessor for URL();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v14 = &v5 - v5;
  v8 = sub_10025C9B0(&qword_1006DA818);
  v6 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v1 = (&v5 - v6);
  v9 = &v5 - v6;
  v19 = type metadata accessor for OpenURLAction();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v7 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v11);
  v18 = &v5 - v7;
  v20 = v2;
  sub_1003A477C(v2, v1);
  Environment.wrappedValue.getter();
  sub_1003A4850(v9);
  v3 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  (*(v12 + 16))(v14, v11 + *(v3 + 24), v15);
  OpenURLAction.callAsFunction(_:)();
  (*(v12 + 8))(v14, v15);
  return (*(v16 + 8))(v18, v19);
}

uint64_t sub_1003A5B30@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v3[1] = 0;
  v3[2] = sub_1003A5D3C;
  v3[0] = sub_1003A5E80;
  v16 = 0;
  v13 = sub_10025C9B0(&qword_1006DAA90);
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v5 = *(v7 + 64);
  v4 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(sub_1003A5D3C);
  v11 = v3 - v4;
  v6 = v4;
  __chkstk_darwin(v1);
  v12 = v3 - v6;
  v16 = v3 - v6;
  Label.init(title:icon:)();
  v10 = sub_1003AE84C();
  sub_1002EC85C(v11, v13, v12);
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v11, v13);
  (*(v7 + 16))(v11, v12, v13);
  sub_1002EC85C(v11, v13, v9);
  v15(v11, v13);
  return (v15)(v12, v13);
}

uint64_t sub_1003A5D3C@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open", 4uLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t *sub_1003A5E80@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("arrow.up.right.square", 0x15uLL, 1);
  v5 = Image.init(systemName:)();
  sub_1002EC85C(&v5, &type metadata for Image, &v6);
  sub_100268928();
  v2 = v6;

  v4 = v2;
  sub_1002EC85C(&v4, &type metadata for Image, a1);
  sub_100268928();
  result = &v6;
  sub_100268928();
  return result;
}

void sub_1003A5F40(uint64_t a1)
{
  v6 = a1;
  v13 = 0;
  v5[1] = 0;
  v9 = type metadata accessor for URL();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v5 - v5[0];
  v10 = v5 - v5[0];
  v13 = __chkstk_darwin(v6);
  v12 = [objc_opt_self() generalPasteboard];
  v2 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  (*(v7 + 16))(v1, v6 + *(v2 + 24), v9);
  URL._bridgeToObjectiveC()(v3);
  v11 = v4;
  (*(v7 + 8))(v10, v9);
  [v12 setURL:v11];
  _objc_release(v11);
  _objc_release(v12);
}

uint64_t sub_1003A60B8@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v3[1] = 0;
  v3[2] = sub_1003A62C4;
  v3[0] = sub_1003A6408;
  v16 = 0;
  v13 = sub_10025C9B0(&qword_1006DAA90);
  v7 = *(v13 - 8);
  v8 = v13 - 8;
  v5 = *(v7 + 64);
  v4 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(sub_1003A62C4);
  v11 = v3 - v4;
  v6 = v4;
  __chkstk_darwin(v1);
  v12 = v3 - v6;
  v16 = v3 - v6;
  Label.init(title:icon:)();
  v10 = sub_1003AE84C();
  sub_1002EC85C(v11, v13, v12);
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v11, v13);
  (*(v7 + 16))(v11, v12, v13);
  sub_1002EC85C(v11, v13, v9);
  v15(v11, v13);
  return (v15)(v12, v13);
}

uint64_t sub_1003A62C4@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Copy", 4uLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t *sub_1003A6408@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("document.on.document", 0x14uLL, 1);
  v5 = Image.init(systemName:)();
  sub_1002EC85C(&v5, &type metadata for Image, &v6);
  sub_100268928();
  v2 = v6;

  v4 = v2;
  sub_1002EC85C(&v4, &type metadata for Image, a1);
  sub_100268928();
  result = &v6;
  sub_100268928();
  return result;
}

uint64_t sub_1003A64C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  sub_10025C9B0(&qword_1006DAA78);
  sub_1003AE7C4();
  sub_10030D0FC();
  HStack.init(alignment:spacing:content:)();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = sub_10025C9B0(&qword_1006DA830);
  sub_1003AC70C();
  sub_1002EC85C(v8, v5, __b);
  sub_10036C118(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_10036C16C(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_1002EC85C(v6, v5, a2);
  sub_10036C118(v6);
  return sub_10036C118(__b);
}

uint64_t sub_1003A664C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v32, 0, sizeof(v32));
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v33 = a1;
  v2 = (a1 + *(type metadata accessor for MailURLSettingsView.SensitiveLink() + 20));
  v8 = *v2;
  v9 = v2[1];

  v30 = v8;
  v31 = v9;
  sub_1002686CC();
  v26 = Text.init<A>(_:)();
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v23[0] = v26;
  v23[1] = v3;
  v24 = v4 & 1;
  v25 = v5;
  sub_1002EC85C(v23, &type metadata for Text, v32);
  sub_1002F03C0(v23);
  v19 = Spacer.init(minLength:)();
  v20 = v6 & 1;
  sub_1002EC85C(&v19, &type metadata for Spacer, &v21);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("arrow.up.right.square", 0x15uLL, 1);
  v17 = Image.init(systemName:)();
  sub_1002EC85C(&v17, &type metadata for Image, &v18);
  sub_100268928();
  sub_1002F0920(v32, v15);
  v16[0] = v15;
  v13 = v21;
  v14 = v22;
  v16[1] = &v13;
  sub_1002F0674(&v18, &v12);
  v16[2] = &v12;
  v11[0] = &type metadata for Text;
  v11[1] = &type metadata for Spacer;
  v11[2] = &type metadata for Image;
  sub_1003A33CC(v16, 3uLL, v11, a2);
  sub_100268928();
  sub_1002F03C0(v15);
  sub_100268928();
  return sub_1002F03C0(v32);
}

void *sub_1003A68F4(void *a1)
{
  v5 = 0;
  _objc_retain(a1);
  _objc_retain(a1);
  v4 = a1;
  if (([a1 derivesDeliveryAccountInfoFromMailAccount] & 1) != 0 || (v2 = objc_msgSend(a1, "deliveryAccount")) == 0)
  {
    v5 = 0;
  }

  else
  {
    _objc_retain(v2);
    _objc_retain(v2);
    v5 = v2;
    _objc_release(v2);
  }

  _objc_release(a1);
  sub_1002E4C54(&v4);
  return a1;
}

uint64_t sub_1003A6A20@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v52 = a1;
  v35 = a3;
  v45 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v36 = sub_10025C9B0(&qword_1006DA858);
  v37 = *(v36 - 8);
  v38 = v37;
  v40 = *(v37 + 64);
  __chkstk_darwin(v36 - 8);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v22 - v42;
  v3 = __chkstk_darwin(v22 - v42);
  v41 = v22 - v42;
  __chkstk_darwin(v3);
  v43 = v22 - v42;
  v58 = v22 - v42;
  v46 = sub_10025C9B0(&qword_1006DA860);
  v47 = *(*(v46 - 8) + 64);
  v4 = __chkstk_darwin(v45);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v22 - v49;
  __chkstk_darwin(v4);
  v50 = v22 - v49;
  v57 = v22 - v49;
  v55 = v5;
  v56 = v6;
  sub_100278E90();
  v7 = v52;
  v51 = [objc_opt_self() localAccount];
  v53 = static NSObject.== infix(_:_:)();

  if (v53)
  {
    v8 = EmptyView.init()();
    v33 = &type metadata for EmptyView;
    v34 = &protocol witness table for EmptyView;
    v10 = sub_1002EC85C(v8, &type metadata for EmptyView, v9);
    sub_1002EC85C(v10, v33, v11);
    v12 = sub_1003AC944();
    sub_1002FCA74(v12, v33, v36, v34, v12, v48);
    sub_1003AC9F4(v48, v50);
  }

  else
  {
    v13 = v52;
    v14 = v44;
    v29 = v22;
    v24 = 32;
    __chkstk_darwin(v22);
    v15 = v44;
    v25 = &v22[-4];
    v22[-2] = v16;
    v22[-1] = v15;
    v17 = v16;
    v18 = v44;
    v28 = v22;
    __chkstk_darwin(v22);
    v26 = &v22[-4];
    v22[-2] = v52;
    v22[-1] = v19;
    v27 = sub_10025C9B0(&qword_1006DA868);
    v20 = sub_1003AC8BC();
    sub_1003A8BC0(sub_1003AC8A4, v25, &type metadata for Text, v27, &protocol witness table for Text, v20, v41);

    v30 = sub_1003AC944();
    sub_1002EC85C(v41, v36, v43);
    v31 = *(v38 + 8);
    v32 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v41, v36);
    v54 = v41;
    v23 = *(v38 + 16);
    v22[1] = v38 + 16;
    v23(v39, v43, v36);
    sub_1002EC85C(v39, v36, v41);
    v31(v39, v36);
    v23(v39, v41, v36);
    sub_1002FCB6C(v39, &type metadata for EmptyView, v36, &protocol witness table for EmptyView, v30, v48);
    v31(v39, v36);
    sub_1003AC9F4(v48, v50);
    v31(v41, v36);
    v31(v43, v36);
  }

  sub_1003ACAD4(v50, v48);
  sub_1003ACBB4();
  sub_1002EC85C(v48, v46, v35);
  sub_1003ACC58(v48);
  return sub_1003ACC58(v50);
}

uint64_t sub_1003A6F94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v142 = a1;
  v113 = a2;
  v89 = "Fatal error";
  v90 = "Unexpectedly found nil while unwrapping an Optional value";
  v91 = "MobileMail/MailURLSettingsViewController.swift";
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v154 = 0;
  v155 = 0;
  v150 = 0;
  v92 = sub_10025C9B0(&qword_1006DAA68);
  v93 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v94 = (&v42 - v93);
  v95 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v42 - v93);
  v96 = &v42 - v95;
  v97 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v42 - v95);
  v98 = &v42 - v97;
  v161 = &v42 - v97;
  v104 = 0;
  v99 = type metadata accessor for URL();
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v103 = &v42 - v102;
  v105 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v104);
  v106 = &v42 - v105;
  v107 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v108 = &v42 - v107;
  v109 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v110 = &v42 - v109;
  v111 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v112 = &v42 - v111;
  v114 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = *(v115 + 64);
  v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v142);
  v119 = (&v42 - v118);
  v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v121 = (&v42 - v120);
  v122 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v123 = (&v42 - v122);
  v160 = &v42 - v122;
  v124 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v15);
  v125 = (&v42 - v124);
  v126 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __chkstk_darwin(v17);
  v127 = (&v42 - v126);
  v159 = &v42 - v126;
  v128 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = __chkstk_darwin(v19);
  v129 = (&v42 - v128);
  v130 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = __chkstk_darwin(v21);
  v131 = (&v42 - v130);
  v158 = &v42 - v130;
  v132 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = __chkstk_darwin(v23);
  v133 = (&v42 - v132);
  v134 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = __chkstk_darwin(v25);
  v135 = (&v42 - v134);
  v157 = &v42 - v134;
  v136 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = __chkstk_darwin(v27);
  v137 = (&v42 - v136);
  v138 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = __chkstk_darwin(v29);
  v139 = (&v42 - v138);
  v156 = &v42 - v138;
  v154 = v31;
  v155 = v32;
  v140 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Base", 4uLL, 1);
  v141 = objc_opt_self();
  _objc_retain(v142);
  v143 = [v141 accountURLForAccount:v142];
  _objc_release(v142);
  if (v143)
  {
    v87 = v143;
    v86 = v143;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v100 + 32))(v112, v103, v99);
    (*(v100 + 56))(v112, 0, 1, v99);
    _objc_release(v86);
  }

  else
  {
    (*(v100 + 56))(v112, 1, 1, v99);
  }

  v84 = *(v100 + 48);
  v85 = v100 + 48;
  if (v84(v112, 1, v99) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  sub_1003A4BD0(v140._countAndFlagsBits, v140._object, v112, v137);
  v80 = sub_1003AD9D4();
  sub_1002EC85C(v137, v114, v139);
  sub_1003AC43C(v137);
  v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Info", 4uLL, 1);
  v82 = objc_opt_self();
  _objc_retain(v142);
  v83 = [v82 accountInfoURLForAccount:v142];
  _objc_release(v142);
  if (v83)
  {
    v79 = v83;
    v78 = v83;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v100 + 32))(v110, v103, v99);
    (*(v100 + 56))(v110, 0, 1, v99);
    _objc_release(v78);
  }

  else
  {
    (*(v100 + 56))(v110, 1, 1, v99);
  }

  if (v84(v110, 1, v99) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  sub_1003A4BD0(v81._countAndFlagsBits, v81._object, v110, v133);
  sub_1002EC85C(v133, v114, v135);
  sub_1003AC43C(v133);
  v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Advanced", 8uLL, 1);
  v76 = objc_opt_self();
  _objc_retain(v142);
  v77 = [v76 advancedAccountInfoURLForAccount:v142];
  _objc_release(v142);
  if (v77)
  {
    v74 = v77;
    v73 = v77;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v100 + 32))(v108, v103, v99);
    (*(v100 + 56))(v108, 0, 1, v99);
    _objc_release(v73);
  }

  else
  {
    (*(v100 + 56))(v108, 1, 1, v99);
  }

  if (v84(v108, 1, v99) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  sub_1003A4BD0(v75._countAndFlagsBits, v75._object, v108, v129);
  sub_1002EC85C(v129, v114, v131);
  sub_1003AC43C(v129);
  _objc_retain(v113);
  if (v113)
  {
    v72 = v113;
    v70 = v113;
    v150 = v113;
    v148 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v149 = v33;
    v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    object = v34._object;
    DefaultStringInterpolation.appendLiteral(_:)(v34);

    swift_getObjectType();
    v35 = [swift_getObjCClassFromMetadata() accountTypeString];
    v71 = v35;
    if (v35)
    {
      v68 = v71;
      v65 = v71;
      v66._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66._object = v36;
      _objc_release(v65);
      v67 = v66;
    }

    else
    {
      v67._countAndFlagsBits = 0;
      v67._object = 0;
    }

    v146 = v67;
    if (v67._object)
    {
      v147 = v146;
    }

    else
    {
      v147 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Account Type", 0x14uLL, 1);
      if (v146._object)
      {
        sub_100268744();
      }
    }

    v48 = &v145;
    v145 = v147;
    v52 = &type metadata for String;
    v53 = &protocol witness table for String;
    v54 = &protocol witness table for String;
    v59 = &v148;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100268744();
    v57 = 1;
    v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1);
    v49 = v37._object;
    DefaultStringInterpolation.appendLiteral(_:)(v37);

    _objc_retain(v70);
    v56 = [v70 displayName];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v38;
    _objc_release(v70);
    v55 = v144;
    v144[0] = v50;
    v144[1] = v51;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100268744();
    _objc_release(v56);
    v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v57 & 1);
    v58 = v39._object;
    DefaultStringInterpolation.appendLiteral(_:)(v39);

    v61 = v148;
    v60 = v149;

    sub_100268744();
    v62 = String.init(stringInterpolation:)();
    v63 = v40;
    v64 = [objc_opt_self() accountInfoURLForAccount:v70];
    if (v64)
    {
      v47 = v64;
      v46 = v64;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v100 + 32))(v106, v103, v99);
      (*(v100 + 56))(v106, 0, 1, v99);
      _objc_release(v46);
    }

    else
    {
      (*(v100 + 56))(v106, 1, 1, v99);
    }

    if (v84(v106, 1, v99) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    sub_1003A4BD0(v62, v63, v106, v125);
    sub_1002EC85C(v125, v114, v127);
    sub_1003AC43C(v125);
    sub_1003AC2BC(v127, v121);
    sub_1002EC85C(v121, v114, v123);
    sub_1003AC43C(v121);
    sub_1003AC2BC(v123, v94);
    (*(v115 + 56))(v94, 0, 1, v114);
    sub_1003A3628(v94, v114, v96);
    sub_1003AE188(v94);
    sub_1003AE2D4(v96, v98);
    sub_1003AC43C(v123);
    sub_1003AC43C(v127);
    _objc_release(v70);
  }

  else
  {
    (*(v115 + 56))(v94, 1, 1, v114);
    sub_1003A3628(v94, v114, v96);
    sub_1003AE188(v94);
    sub_1003AE2D4(v96, v98);
  }

  sub_1003AC2BC(v139, v123);
  v45 = v153;
  v153[0] = v123;
  sub_1003AC2BC(v135, v121);
  v153[1] = v121;
  sub_1003AC2BC(v131, v119);
  v153[2] = v119;
  sub_1003AE4E4(v98, v96);
  v153[3] = v96;
  v43 = v152;
  v152[0] = v114;
  v152[1] = v114;
  v152[2] = v114;
  v152[3] = v92;
  v44 = v151;
  v151[0] = v80;
  v151[1] = v80;
  v151[2] = v80;
  v151[3] = sub_1003AE724();
  sub_1003A33CC(v45, 4uLL, v43, v88);
  sub_1003AE188(v96);
  sub_1003AC43C(v119);
  sub_1003AC43C(v121);
  sub_1003AC43C(v123);
  sub_1003AE188(v98);
  sub_1003AC43C(v131);
  sub_1003AC43C(v135);
  return sub_1003AC43C(v139);
}

uint64_t sub_1003A87B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = 0u;
  v42 = 0u;
  v43 = a1;
  v44 = a2;
  v39 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v40 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v4);

  _objc_retain(a1);
  swift_getObjectType();
  _objc_release(a1);
  v23 = [swift_getObjCClassFromMetadata() accountTypeString];
  if (v23)
  {
    v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19._object = v5;
    _objc_release(v23);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v37 = v20;
  if (v20._object)
  {
    v38 = v37;
  }

  else
  {
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown Account Type", 0x14uLL, 1);
  }

  v36 = v38;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v6);

  _objc_retain(a1);
  v15 = [a1 displayName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v7;
  _objc_release(a1);
  v34 = v13;
  v35 = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  _objc_release(v15);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v8);

  sub_100268744();
  String.init(stringInterpolation:)();
  v30 = Text.init(verbatim:)();
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v27[0] = v30;
  v27[1] = v9;
  v28 = v10 & 1;
  v29 = v11;
  sub_1002EC85C(v27, &type metadata for Text, &v41);
  sub_1002F03C0(v27);
  v16 = v41;
  v17 = v42;
  v18 = *(&v42 + 1);
  sub_1002EF238(v41, *(&v41 + 1), v42 & 1);

  v24 = v16;
  v25 = v17 & 1;
  v26 = v18;
  sub_1002EC85C(&v24, &type metadata for Text, a3);
  sub_1002F03C0(&v24);
  return sub_1002F03C0(&v41);
}

uint64_t sub_1003A8BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(a1);
  v13 = &v10 - v11;
  v8(v7);
  return Section<>.init(header:content:)();
}

uint64_t sub_1003A8CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v42 = a1;
  v27 = sub_1003A92C8;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v28 = sub_10025C9B0(&qword_1006DA890);
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v32 = &v10 - v31;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v31);
  v34 = &v10 - v33;
  v35 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v33);
  v36 = &v10 - v35;
  v48 = &v10 - v35;
  v37 = sub_10025C9B0(&qword_1006DA898);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v42);
  v39 = &v10 - v38;
  v40 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v41 = &v10 - v40;
  v47 = &v10 - v40;
  v46 = v6;

  if (!v42)
  {
    goto LABEL_7;
  }

  v25 = v42;
  v23 = v42;
  v45 = v42;
  v44[1] = v42;
  v24 = sub_10025C9B0(&qword_1006DA8C0);
  sub_1003AD0F4();
  v7 = Collection.isEmpty.getter();
  if (v7)
  {

LABEL_7:
    EmptyView.init()();
    v11 = &type metadata for EmptyView;
    v12 = &protocol witness table for EmptyView;
    sub_1002EC85C(v15, &type metadata for EmptyView, v15);
    sub_1002EC85C(v15, v11, v15);
    v8 = sub_1003ACCF0();
    sub_1002FCB6C(v15, v28, v11, v8, v12, v39);
    sub_1003ACE04(v39, v41);
    goto LABEL_8;
  }

  v19 = v44;
  v44[0] = v23;
  KeyPath = swift_getKeyPath();
  v17 = sub_1003AD188();
  v18 = sub_1003AD210();
  sub_1003ACD88();
  ForEach<>.init(_:id:content:)();
  v20 = sub_1003ACCF0();
  sub_1002EC85C(v34, v28, v36);
  v21 = v29[1];
  v22 = v29 + 1;
  v21(v34, v28);
  v43 = v34;
  v14 = v29[2];
  v13 = v29 + 2;
  v14(v32, v36, v28);
  sub_1002EC85C(v32, v28, v34);
  v21(v32, v28);
  v14(v32, v34, v28);
  sub_1002FCA74(v32, v28, &type metadata for EmptyView, v20, &protocol witness table for EmptyView, v39);
  v21(v32, v28);
  sub_1003ACE04(v39, v41);
  v21(v34, v28);
  v21(v36, v28);

LABEL_8:
  sub_1003ACEE0(v41, v39);
  sub_1003ACFBC();
  sub_1002EC85C(v39, v37, v26);
  sub_1003AD060(v39);
  return sub_1003AD060(v41);
}

void sub_1003A91E4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  _objc_retain(*a1);
  v9 = [v8 identifier];
  if (v9)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v2;
    _objc_release(v9);
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  _objc_release(v8);
}

id *sub_1003A92C8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v12 = 0;
  v10 = 0;
  v11 = 0;
  v4 = *a1;
  v12 = v4;
  _objc_retain(v4);
  v9[0] = sub_1003A68F4(v4);
  v9[1] = v2;
  sub_1003ACD88();
  sub_1002EC85C(v9, &unk_10065CD98, &v10);
  sub_1002E4C54(v9);
  v5 = v10;
  v6 = v11;
  _objc_retain(v10);
  _objc_retain(v6);
  v8[0] = v5;
  v8[1] = v6;
  sub_1002EC85C(v8, &unk_10065CD98, a2);
  sub_1002E4C54(v8);
  return sub_1002E4C54(&v10);
}

uint64_t sub_1003A93DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v12 = a1;
  v11 = sub_1003AD2A4;
  v25 = 0;
  v24 = 0;
  v19 = sub_10025C9B0(&qword_1006DA8E0);
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v17 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v18 = &v6 - v8;
  v25 = &v6 - v8;
  v24 = v4;

  v9 = &v22;
  v23 = v12;
  v10 = sub_10025C9B0(&qword_1006DA8E8);
  sub_1003AD2AC();
  Form.init(content:)();

  v16 = sub_1003AD334();
  sub_1002EC85C(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_1002EC85C(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_1003A95F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v64 = a1;
  v89 = 0;
  v56 = sub_1003ADA54;
  v55 = sub_1003AA820;
  v60 = sub_1003ADBA4;
  v61 = sub_1003AADB0;
  v72 = sub_1003AAEF4;
  v71 = sub_1003AB440;
  v78 = sub_1003AB584;
  v76 = sub_1003AB8C8;
  v87 = sub_1003ABA0C;
  v88 = sub_1003ABF14;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v84 = sub_10025C9B0(&qword_1006DA9C8);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v31 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v83 = v17 - v31;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - v31);
  v79 = v17 - v32;
  v114 = v17 - v32;
  v97 = sub_10025C9B0(&qword_1006DA9D0);
  v74 = *(v97 - 8);
  v75 = v97 - 8;
  v33 = (v74[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v34 = v17 - v33;
  v35 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v17 - v33);
  v94 = v17 - v35;
  v113 = v17 - v35;
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v96 = v17 - v36;
  v37 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - v36);
  v73 = v17 - v37;
  v112 = v17 - v37;
  v68 = sub_10025C9B0(&qword_1006DA9D8);
  v58 = *(v68 - 8);
  v59 = v68 - 8;
  v38 = (v58[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v39 = v17 - v38;
  v40 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v17 - v38);
  v65 = v17 - v40;
  v111 = v17 - v40;
  v41 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v67 = v17 - v41;
  v42 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - v41);
  v57 = v17 - v42;
  v110 = v17 - v42;
  v43 = 0;
  v44 = (*(*(type metadata accessor for URL() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v48 = v17 - v44;
  v51 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v45 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v64);
  v53 = (v17 - v45);
  v46 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v50 = (v17 - v46);
  v109 = v17 - v46;
  v108 = v13;
  v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mail Settings", 0xDuLL, 1);
  v49 = [objc_opt_self() rootURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v47._countAndFlagsBits, v47._object, v48, v53);
  _objc_release(v49);
  v52 = sub_1003AD9D4();
  sub_1002EC85C(v53, v51, v50);
  sub_1003AC43C(v53);

  v54 = v102;
  v102[2] = v64;
  v62 = sub_10025C9B0(&qword_1006DA9E8);
  v63 = sub_1003ADA5C();
  v90 = &type metadata for Text;
  v92 = &protocol witness table for Text;
  sub_1003A8BC0(v56, v54, &type metadata for Text, v62, &protocol witness table for Text, v63, v67);

  v66 = sub_1003ADAF4();
  sub_1002EC85C(v67, v68, v57);
  v70 = v58[1];
  v69 = v58 + 1;
  v70(v67, v68);

  v101[2] = v64;
  sub_1003A8BC0(v60, v101, v90, v62, v92, v63, v67);

  sub_1002EC85C(v67, v68, v65);
  v70(v67, v68);
  v91 = sub_10025C9B0(&qword_1006DAA00);
  v93 = sub_1003ADBAC();
  sub_1003A8BC0(v72, v89, v90, v91, v92, v93, v96);
  v95 = sub_1003ADC34();
  sub_1002EC85C(v96, v97, v73);
  v99 = v74[1];
  v98 = v74 + 1;
  v99(v96, v97);
  v77 = sub_10025C9B0(&qword_1006DAA18);
  v14 = sub_1003ADCE4();
  sub_1003A8BC0(v78, v89, v90, v77, v92, v14, v83);
  v80 = sub_1003ADD6C();
  sub_1002EC85C(v83, v84, v79);
  v85 = *(v81 + 8);
  v86 = v81 + 8;
  v85(v83, v84);
  sub_1003A8BC0(v87, v89, v90, v91, v92, v93, v96);
  sub_1002EC85C(v96, v97, v94);
  v99(v96, v97);
  v100 = [objc_opt_self() mailAccounts];
  if (v100)
  {
    v29 = v100;
    v26 = v100;
    sub_100288380();
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v26);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v15 = nullsub_13(v28);
  v17[0] = &v106;
  v106 = v15;
  v22 = sub_1003ADE1C();
  v25 = &v107;
  v21 = &unk_10065CD18;
  sub_1002EC85C(v17[0], &unk_10065CD18, &v107);
  sub_100264880();
  sub_1003AC2BC(v50, v53);
  v23 = v105;
  v105[0] = v53;
  v18 = v58[2];
  v17[1] = (v58 + 2);
  v18(v67, v57, v68);
  v105[1] = v67;
  v18(v39, v65, v68);
  v105[2] = v39;
  v20 = v74[2];
  v19 = v74 + 2;
  v20(v96, v73, v97);
  v105[3] = v96;
  (*(v81 + 16))(v83, v79, v84);
  v105[4] = v83;
  v20(v34, v94, v97);
  v105[5] = v34;
  v24 = &v104;
  sub_1002A730C(v25, &v104);
  v105[6] = v24;
  v103[0] = v51;
  v103[1] = v68;
  v103[2] = v68;
  v103[3] = v97;
  v103[4] = v84;
  v103[5] = v97;
  v103[6] = v21;
  v102[3] = v52;
  v102[4] = v66;
  v102[5] = v66;
  v102[6] = v95;
  v102[7] = v80;
  v102[8] = v95;
  v102[9] = v22;
  sub_1003A33CC(v23, 7uLL, v103, v30);
  sub_100264880();
  v99(v34, v97);
  v85(v83, v84);
  v99(v96, v97);
  v70(v39, v68);
  v70(v67, v68);
  sub_1003AC43C(v53);
  sub_100264880();
  v99(v94, v97);
  v85(v79, v84);
  v99(v73, v97);
  v70(v65, v68);
  v70(v57, v68);
  return sub_1003AC43C(v50);
}

uint64_t sub_1003AA208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v21 = a1;
  v24 = sub_1003AE15C;
  v11 = sub_1003AA654;
  v30 = 0;
  v29 = 0;
  v12 = sub_10025C9B0(&qword_1006DA9E8);
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v21);
  v16 = v8 - v15;
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v18 = v8 - v17;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v20 = v8 - v19;
  v30 = v8 - v19;
  v29 = v6;
  v28[1] = static MailSettingsSpecifier.allCases.getter();

  v22 = &v26;
  v27 = v21;
  v23 = sub_10025C9B0(&qword_1006DAA38);
  sub_1003ADEC4();
  v25 = _ArrayProtocol.filter(_:)();
  v8[0] = v25;

  v8[6] = v28;
  v28[0] = v8[0];
  v8[2] = swift_getKeyPath();
  v8[3] = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v8[4] = sub_1003ADF4C();
  v8[5] = sub_1003ADFD4();
  sub_1003AD9D4();
  ForEach<>.init(_:id:content:)();
  v8[7] = sub_1003ADA5C();
  sub_1002EC85C(v18, v12, v20);
  v9 = *(v13 + 8);
  v8[8] = v13 + 8;
  v9(v18, v12);
  (*(v13 + 16))(v16, v20, v12);
  sub_1002EC85C(v16, v12, v10);
  v9(v16, v12);
  return (v9)(v20, v12);
}

uint64_t sub_1003AA554()
{
  v3 = MailSettingsSpecifier.isSelectable.getter();

  if (v3)
  {

    sub_10025C9B0(&qword_1006DAA38);
    sub_1003AE054();
    sub_1003AE0DC();
    v1 = Sequence<>.contains(_:)();
    sub_100264880();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1003AA654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v10 = a1;
  v22 = 0;
  v21 = 0;
  v6[1] = 0;
  v9 = type metadata accessor for MailSettingsSpecifier();
  v14 = *(v9 - 8);
  v8 = v9 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = v6 - v7;
  v17 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v12 = *(*(v17 - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v19 = (v6 - v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v20 = (v6 - v13);
  v22 = v6 - v13;
  v21 = v4;
  (*(v14 + 16))(v3);
  sub_1003A4DEC(v15, v19);
  v18 = sub_1003AD9D4();
  sub_1002EC85C(v19, v17, v20);
  sub_1003AC43C(v19);
  sub_1003AC2BC(v20, v19);
  sub_1002EC85C(v19, v17, v16);
  sub_1003AC43C(v19);
  return sub_1003AC43C(v20);
}

uint64_t sub_1003AA820@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Navigable", 9uLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_1003AA964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v21 = a1;
  v24 = sub_1003ADE98;
  v11 = sub_1003AA654;
  v30 = 0;
  v29 = 0;
  v12 = sub_10025C9B0(&qword_1006DA9E8);
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v21);
  v16 = v8 - v15;
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v18 = v8 - v17;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v20 = v8 - v19;
  v30 = v8 - v19;
  v29 = v6;
  v28[1] = static MailSettingsSpecifier.allCases.getter();

  v22 = &v26;
  v27 = v21;
  v23 = sub_10025C9B0(&qword_1006DAA38);
  sub_1003ADEC4();
  v25 = _ArrayProtocol.filter(_:)();
  v8[0] = v25;

  v8[6] = v28;
  v28[0] = v8[0];
  v8[2] = swift_getKeyPath();
  v8[3] = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v8[4] = sub_1003ADF4C();
  v8[5] = sub_1003ADFD4();
  sub_1003AD9D4();
  ForEach<>.init(_:id:content:)();
  v8[7] = sub_1003ADA5C();
  sub_1002EC85C(v18, v12, v20);
  v9 = *(v13 + 8);
  v8[8] = v13 + 8;
  v9(v18, v12);
  (*(v13 + 16))(v16, v20, v12);
  sub_1002EC85C(v16, v12, v10);
  v9(v16, v12);
  return (v9)(v20, v12);
}

uint64_t sub_1003AACB0()
{
  v3 = MailSettingsSpecifier.isSelectable.getter();

  if (v3)
  {
    v2 = 0;
  }

  else
  {

    sub_10025C9B0(&qword_1006DAA38);
    sub_1003AE054();
    sub_1003AE0DC();
    v1 = Sequence<>.contains(_:)();
    sub_100264880();
    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1003AADB0@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Highlight Only", 0xEuLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_1003AAEF4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v17 = 0;
  v15 = (*(*(type metadata accessor for URL() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = &v8 - v15;
  v20 = type metadata accessor for MailSettingsSpecifier();
  v32 = *(v20 - 8);
  v19 = v20 - 8;
  v18 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v33 = &v8 - v18;
  v35 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v30 = *(*(v35 - 8) + 64);
  v21 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v33);
  v22 = (&v8 - v21);
  v23 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v24 = (&v8 - v23);
  v25 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v26 = (&v8 - v25);
  v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v28 = (&v8 - v27);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v37 = (&v8 - v29);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v34 = (&v8 - v31);
  v45 = &v8 - v31;
  (*(v32 + 104))(v6, enum case for MailSettingsSpecifier.notifications(_:));
  sub_1003A4DEC(v33, v37);
  v36 = sub_1003AD9D4();
  sub_1002EC85C(v37, v35, v34);
  sub_1003AC43C(v37);
  v44 = v37;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Customize Notifications", 0x17uLL, 1);
  v13 = [objc_opt_self() customizeNotificationURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v12._countAndFlagsBits, v12._object, v16, v28);
  _objc_release(v13);
  sub_1002EC85C(v28, v35, v37);
  sub_1003AC43C(v28);
  v43 = v28;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VIP Notifications", 0x11uLL, 1);
  v10 = [objc_opt_self() vipSenderListURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v9._countAndFlagsBits, v9._object, v16, v26);
  _objc_release(v10);
  sub_1002EC85C(v26, v35, v28);
  sub_1003AC43C(v26);
  sub_1003AC2BC(v34, v26);
  v11 = v42;
  v42[0] = v26;
  sub_1003AC2BC(v37, v24);
  v42[1] = v24;
  sub_1003AC2BC(v28, v22);
  v42[2] = v22;
  v41[0] = v35;
  v41[1] = v35;
  v41[2] = v35;
  v38 = v36;
  v39 = v36;
  v40 = v36;
  sub_1003A33CC(v11, 3uLL, v41, v14);
  sub_1003AC43C(v22);
  sub_1003AC43C(v24);
  sub_1003AC43C(v26);
  sub_1003AC43C(v28);
  sub_1003AC43C(v37);
  return sub_1003AC43C(v34);
}

uint64_t sub_1003AB440@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Notifications", 0xDuLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_1003AB584@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v30 = 0;
  v29 = 0;
  v10 = 0;
  v11 = (*(*(type metadata accessor for URL() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v5 - v11;
  v22 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v12 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v13 = (&v5 - v12);
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v12);
  v15 = (&v5 - v14);
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v14);
  v24 = (&v5 - v16);
  v17 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v16);
  v21 = (&v5 - v17);
  v30 = &v5 - v17;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Storage Management", 0x12uLL, 1);
  v20 = [objc_opt_self() storageManagementURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v18._countAndFlagsBits, v18._object, v19, v24);
  _objc_release(v20);
  v23 = sub_1003AD9D4();
  sub_1002EC85C(v24, v22, v21);
  sub_1003AC43C(v24);
  v29 = v24;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Hide My Email", 0xDuLL, 1);
  v7 = [objc_opt_self() hideMyEmailURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v6._countAndFlagsBits, v6._object, v19, v15);
  _objc_release(v7);
  sub_1002EC85C(v15, v22, v24);
  sub_1003AC43C(v15);
  sub_1003AC2BC(v21, v15);
  v8 = v28;
  v28[0] = v15;
  sub_1003AC2BC(v24, v13);
  v28[1] = v13;
  v27[0] = v22;
  v27[1] = v22;
  v25 = v23;
  v26 = v23;
  sub_1003A33CC(v8, 2uLL, v27, v9);
  sub_1003AC43C(v13);
  sub_1003AC43C(v15);
  sub_1003AC43C(v24);
  return sub_1003AC43C(v21);
}

uint64_t sub_1003AB8C8@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Other", 5uLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_1003ABA0C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v14 = 0;
  v12 = (*(*(type metadata accessor for URL() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v13 = &v8 - v12;
  v17 = type metadata accessor for MailSettingsSpecifier();
  v29 = *(v17 - 8);
  v16 = v17 - 8;
  v15 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v32 = &v8 - v15;
  v34 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v27 = *(*(v34 - 8) + 64);
  v18 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v32);
  v19 = (&v8._countAndFlagsBits - v18);
  v20 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v21 = (&v8._countAndFlagsBits - v20);
  v22 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v23 = (&v8._countAndFlagsBits - v22);
  v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v25 = (&v8._countAndFlagsBits - v24);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v36 = (&v8._countAndFlagsBits - v26);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v33 = (&v8._countAndFlagsBits - v28);
  v44 = &v8 - v28;
  v30 = *(v29 + 104);
  v31 = v29 + 104;
  v30(v6, enum case for MailSettingsSpecifier.accounts(_:));
  sub_1003A4DEC(v32, v36);
  v35 = sub_1003AD9D4();
  sub_1002EC85C(v36, v34, v33);
  sub_1003AC43C(v36);
  v43 = v36;
  (v30)(v32, enum case for MailSettingsSpecifier.addAccount(_:), v17);
  sub_1003A4DEC(v32, v25);
  sub_1002EC85C(v25, v34, v36);
  sub_1003AC43C(v25);
  v42 = v25;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Fetch New Data", 0xEuLL, 1);
  v9 = [objc_opt_self() fetchNewDataURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A4BD0(v8._countAndFlagsBits, v8._object, v13, v23);
  _objc_release(v9);
  sub_1002EC85C(v23, v34, v25);
  sub_1003AC43C(v23);
  sub_1003AC2BC(v33, v23);
  v10 = v41;
  v41[0] = v23;
  sub_1003AC2BC(v36, v21);
  v41[1] = v21;
  sub_1003AC2BC(v25, v19);
  v41[2] = v19;
  v40[0] = v34;
  v40[1] = v34;
  v40[2] = v34;
  v37 = v35;
  v38 = v35;
  v39 = v35;
  sub_1003A33CC(v10, 3uLL, v40, v11);
  sub_1003AC43C(v19);
  sub_1003AC43C(v21);
  sub_1003AC43C(v23);
  sub_1003AC43C(v25);
  sub_1003AC43C(v36);
  return sub_1003AC43C(v33);
}

uint64_t sub_1003ABF14@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Accounts", 8uLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_1003AC074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = type metadata accessor for OpenURLAction();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = type metadata accessor for EnvironmentValues();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  EnvironmentValues._openSensitiveURL.getter();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1003AC204(uint64_t a1)
{
  v3 = a1;
  v1 = type metadata accessor for OpenURLAction();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return EnvironmentValues._openSensitiveURL.setter();
}

void *sub_1003AC2BC(uint64_t *a1, void *a2)
{
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for OpenURLAction();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
  }

  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v6 = (a2 + *(v8 + 20));
  v3 = (a1 + *(v8 + 20));
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  v10 = a2 + *(v8 + 24);
  v9 = a1 + *(v8 + 24);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(v10, v9);
  return a2;
}

uint64_t sub_1003AC43C(uint64_t a1)
{
  sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for OpenURLAction();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = type metadata accessor for MailURLSettingsView.SensitiveLink();

  v5 = a1 + *(v4 + 24);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

char *sub_1003AC558(char *a1, char *a2)
{
  v10 = sub_10025C9B0(&qword_1006DA820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for OpenURLAction();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  v3 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  v7 = &a2[*(v3 + 24)];
  v6 = &a1[*(v3 + 24)];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 32))(v7, v6);
  return a2;
}

uint64_t sub_1003AC6A8()
{
  v1 = *(type metadata accessor for MailURLSettingsView.SensitiveLink() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003A58FC(v2);
}

unint64_t sub_1003AC70C()
{
  v2 = qword_1006DA840;
  if (!qword_1006DA840)
  {
    sub_10025CAA4(&qword_1006DA830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AC794()
{
  v2 = qword_1006DA848;
  if (!qword_1006DA848)
  {
    sub_10025CAA4(&qword_1006DA838);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AC81C()
{
  v2 = qword_1006DA850;
  if (!qword_1006DA850)
  {
    sub_10025CAA4(&qword_1006DA828);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AC8BC()
{
  v2 = qword_1006DA870;
  if (!qword_1006DA870)
  {
    sub_10025CAA4(&qword_1006DA868);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AC944()
{
  v2 = qword_1006DA878;
  if (!qword_1006DA878)
  {
    sub_10025CAA4(&qword_1006DA858);
    sub_1003AC8BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA878);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003AC9F4(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006DA880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10025C9B0(&qword_1006DA858);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

void *sub_1003ACAD4(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006DA880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_10025C9B0(&qword_1006DA858);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1003ACBB4()
{
  v2 = qword_1006DA888;
  if (!qword_1006DA888)
  {
    sub_10025CAA4(&qword_1006DA860);
    sub_1003AC944();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003ACC58(uint64_t a1)
{
  sub_10025C9B0(&qword_1006DA880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_10025C9B0(&qword_1006DA858);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_1003ACCF0()
{
  v2 = qword_1006DA8A0;
  if (!qword_1006DA8A0)
  {
    sub_10025CAA4(&qword_1006DA890);
    sub_1003ACD88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ACD88()
{
  v2 = qword_1006DA8A8;
  if (!qword_1006DA8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8A8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003ACE04(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006DA8B0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = sub_10025C9B0(&qword_1006DA890);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_1003ACEE0(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006DA8B0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = sub_10025C9B0(&qword_1006DA890);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1003ACFBC()
{
  v2 = qword_1006DA8B8;
  if (!qword_1006DA8B8)
  {
    sub_10025CAA4(&qword_1006DA898);
    sub_1003ACCF0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003AD060(uint64_t a1)
{
  sub_10025C9B0(&qword_1006DA8B0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = sub_10025C9B0(&qword_1006DA890);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_1003AD0F4()
{
  v2 = qword_1006DA8C8;
  if (!qword_1006DA8C8)
  {
    sub_10025CAA4(&qword_1006DA8C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AD188()
{
  v2 = qword_1006DA8D0;
  if (!qword_1006DA8D0)
  {
    sub_10025CAA4(&qword_1006DA8C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AD210()
{
  v2 = qword_1006DA8D8;
  if (!qword_1006DA8D8)
  {
    sub_10025CAA4(&unk_1006D7340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AD2AC()
{
  v2 = qword_1006DA8F0;
  if (!qword_1006DA8F0)
  {
    sub_10025CAA4(&qword_1006DA8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AD334()
{
  v2 = qword_1006DA8F8;
  if (!qword_1006DA8F8)
  {
    sub_10025CAA4(&qword_1006DA8E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA8F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003AD448()
{
  v3 = sub_1003AD524();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1003AD524()
{
  v4 = qword_1006DA990;
  if (!qword_1006DA990)
  {
    type metadata accessor for OpenURLAction();
    v3 = type metadata accessor for Environment();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DA990);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1003AD5CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003AD718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003AD9D4()
{
  v2 = qword_1006DA9E0;
  if (!qword_1006DA9E0)
  {
    type metadata accessor for MailURLSettingsView.SensitiveLink();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADA5C()
{
  v2 = qword_1006DA9F0;
  if (!qword_1006DA9F0)
  {
    sub_10025CAA4(&qword_1006DA9E8);
    sub_1003AD9D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADAF4()
{
  v2 = qword_1006DA9F8;
  if (!qword_1006DA9F8)
  {
    sub_10025CAA4(&qword_1006DA9D8);
    sub_1003ADA5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADBAC()
{
  v2 = qword_1006DAA08;
  if (!qword_1006DAA08)
  {
    sub_10025CAA4(&qword_1006DAA00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADC34()
{
  v2 = qword_1006DAA10;
  if (!qword_1006DAA10)
  {
    sub_10025CAA4(&qword_1006DA9D0);
    sub_1003ADBAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADCE4()
{
  v2 = qword_1006DAA20;
  if (!qword_1006DAA20)
  {
    sub_10025CAA4(&qword_1006DAA18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADD6C()
{
  v2 = qword_1006DAA28;
  if (!qword_1006DAA28)
  {
    sub_10025CAA4(&qword_1006DA9C8);
    sub_1003ADCE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADE1C()
{
  v2 = qword_1006DAA30;
  if (!qword_1006DAA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADEC4()
{
  v2 = qword_1006DAA40;
  if (!qword_1006DAA40)
  {
    sub_10025CAA4(&qword_1006DAA38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADF4C()
{
  v2 = qword_1006DAA48;
  if (!qword_1006DAA48)
  {
    sub_10025CAA4(&qword_1006DAA38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003ADFD4()
{
  v2 = qword_1006DAA50;
  if (!qword_1006DAA50)
  {
    type metadata accessor for MailSettingsSpecifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AE054()
{
  v2 = qword_1006DAA58;
  if (!qword_1006DAA58)
  {
    sub_10025CAA4(&qword_1006DAA38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AE0DC()
{
  v2 = qword_1006DAA60;
  if (!qword_1006DAA60)
  {
    type metadata accessor for MailSettingsSpecifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003AE188(uint64_t a1)
{
  v6 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    sub_10025C9B0(&qword_1006DA820);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = type metadata accessor for OpenURLAction();
      (*(*(v1 - 8) + 8))(a1);
    }

    else
    {
    }

    v4 = a1 + *(v6 + 24);
    v2 = type metadata accessor for URL();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_1003AE2D4(char *a1, char *a2)
{
  v11 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v4 = sub_10025C9B0(&qword_1006DAA68);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = sub_10025C9B0(&qword_1006DA820);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for OpenURLAction();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }

    *&a2[*(v11 + 20)] = *&a1[*(v11 + 20)];
    v7 = &a2[*(v11 + 24)];
    v6 = &a1[*(v11 + 24)];
    v3 = type metadata accessor for URL();
    (*(*(v3 - 8) + 32))(v7, v6);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

void *sub_1003AE4E4(uint64_t *a1, void *a2)
{
  v14 = type metadata accessor for MailURLSettingsView.SensitiveLink();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v5 = sub_10025C9B0(&qword_1006DAA68);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    sub_10025C9B0(&qword_1006DA820);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = type metadata accessor for OpenURLAction();
      (*(*(v2 - 8) + 16))(a2, a1);
    }

    else
    {
      v11 = *a1;

      *a2 = v11;
    }

    swift_storeEnumTagMultiPayload();
    v3 = *(v14 + 20);
    v7 = a2 + v3;
    *(a2 + v3) = *(a1 + v3);
    v8 = *(a1 + v3 + 8);

    *(v7 + 1) = v8;
    v10 = a2 + *(v14 + 24);
    v9 = a1 + *(v14 + 24);
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 16))(v10, v9);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

unint64_t sub_1003AE724()
{
  v2 = qword_1006DAA70;
  if (!qword_1006DAA70)
  {
    sub_10025CAA4(&qword_1006DAA68);
    sub_1003AD9D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AE7C4()
{
  v2 = qword_1006DAA80;
  if (!qword_1006DAA80)
  {
    sub_10025CAA4(&qword_1006DAA78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AE84C()
{
  v2 = qword_1006DAA98;
  if (!qword_1006DAA98)
  {
    sub_10025CAA4(&qword_1006DAA90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AE8D4()
{
  v2 = qword_1006DAAA0;
  if (!qword_1006DAAA0)
  {
    sub_10025CAA4(&qword_1006DAA88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAAA0);
    return WitnessTable;
  }

  return v2;
}

void sub_1003AE95C()
{
  v1 = *(type metadata accessor for MailURLSettingsView.SensitiveLink() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1003A5F40(v2);
}

uint64_t sub_1003AE9F4()
{
  if (qword_1006D5FE8 != -1)
  {
    swift_once();
  }

  return v1;
}

unint64_t sub_1003AEA68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003B8D78();
  v3 = result;
  if (result)
  {
    result = sub_100014038();
    a1[3] = result;
    a1[4] = &off_10065D4F0;
    *a1 = v3;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  return result;
}

void sub_1003AEB1C(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v76 = a1;
  v98 = 0;
  v97 = 0;
  v92 = 0;
  v86 = 0;
  v78 = type metadata accessor for Logger();
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  v2 = __chkstk_darwin(v76);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = &v15 - v83;
  v3 = __chkstk_darwin(v2);
  v84 = &v15 - v83;
  v98 = v3;
  v97 = v4;
  v85 = sub_1003B8D78();
  if (v85)
  {
    v74 = v85;
    v72 = v85;
    v92 = v85;
    v73 = v91;
    sub_1002F171C(v76, v91);
    sub_10025C9B0(&qword_1006D9B10);
    if (swift_dynamicCast())
    {
      v71 = v90[1];
    }

    else
    {
      v71 = 0;
    }

    v70 = v71;
    if (v71)
    {
      v69 = v70;
      v67 = v70;
      v68 = v75;
      v86 = v70;
      v66 = v99;
      sub_1003AF7F0(v99);
      v64 = v99[2];
      swift_unknownObjectRetain();
      swift_getObjectType();
      v65 = [v64 itemID];
      swift_unknownObjectRelease();
      [v72 selectItemID:v65 userInitiated:1 animated:?];
      swift_unknownObjectRelease();
      sub_1003AF6BC();
    }

    else
    {
      v5 = v84;
      v6 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v80 + 16))(v5, v6, v78);
      v62 = Logger.logObject.getter();
      v59 = v62;
      v61 = static os_log_type_t.error.getter();
      v60 = v61;
      sub_10025C9B0(&unk_1006D7720);
      v63 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v62, v61))
      {
        v58 = v75;
        v50 = static UnsafeMutablePointer.allocate(capacity:)();
        v46 = v50;
        v47 = sub_10025C9B0(&qword_1006D7290);
        v48 = 0;
        v51 = sub_1002641E8(0);
        v49 = v51;
        v52 = sub_1002641E8(v48);
        v90[0] = v50;
        v89 = v51;
        v88 = v52;
        v53 = 0;
        v54 = v90;
        sub_10026423C(0, v90);
        sub_10026423C(v53, v54);
        v87 = v63;
        v55 = &v15;
        __chkstk_darwin(&v15);
        v56 = &v15 - 6;
        *(&v15 - 4) = v7;
        *(&v15 - 3) = &v89;
        *(&v15 - 2) = &v88;
        v57 = sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        v8 = v58;
        Sequence.forEach(_:)();
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v59, v60, "Expected a message open intent", v46, 2u);
          v45 = 0;
          sub_10026429C(v49);
          sub_10026429C(v52);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v80 + 8))(v84, v78);
      sub_10028B33C();
      v42 = 0;
      v41 = swift_allocError();
      v40 = v9;
      v43 = v41;
      sub_1002F171C(v76, v9);
      *(v40 + 40) = 2;
      swift_willThrow();

      v44 = v43;
    }
  }

  else
  {
    v10 = v82;
    v11 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v80 + 16))(v10, v11, v78);
    v38 = Logger.logObject.getter();
    v35 = v38;
    v37 = static os_log_type_t.error.getter();
    v36 = v37;
    sub_10025C9B0(&unk_1006D7720);
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v38, v37))
    {
      v34 = v75;
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = v26;
      v23 = sub_10025C9B0(&qword_1006D7290);
      v24 = 0;
      v27 = sub_1002641E8(0);
      v25 = v27;
      v28 = sub_1002641E8(v24);
      v96 = v26;
      v95 = v27;
      v94 = v28;
      v29 = 0;
      v30 = &v96;
      sub_10026423C(0, &v96);
      sub_10026423C(v29, v30);
      v93 = v39;
      v31 = &v15;
      __chkstk_darwin(&v15);
      v32 = &v15 - 6;
      *(&v15 - 4) = v12;
      *(&v15 - 3) = &v95;
      *(&v15 - 2) = &v94;
      v33 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      v13 = v34;
      Sequence.forEach(_:)();
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v35, v36, "Could not find a message list view controller", v22, 2u);
        v21 = 0;
        sub_10026429C(v25);
        sub_10026429C(v28);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v80 + 8))(v82, v78);
    sub_10028B33C();
    v19 = 0;
    v17 = 0;
    v18 = swift_allocError();
    v16 = v14;
    v20 = v18;
    sub_1002F171C(v76, v14);
    *(v16 + 40) = v17;
    swift_willThrow();
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003AF6BC()
{

  swift_unknownObjectRelease();
}

unint64_t sub_1003AF70C(uint64_t a1)
{
  result = sub_1003AF738();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AF738()
{
  v2 = qword_1006DAAA8;
  if (!qword_1006DAAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003AF7B0(uint64_t a1)
{
  result = sub_1002B4484();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003AF7F0@<X0>(void *a1@<X8>)
{

  IntentParameter.wrappedValue.getter();

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return result;
}

uint64_t sub_1003AF8B8()
{
  v9 = "Will appear in Shortcuts or Siri as a reference to a message in Mail.";
  v0 = sub_10025C9B0(&qword_1006D6280);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = type metadata accessor for TypeDisplayRepresentation();
  v7 = qword_1006F0150;
  sub_10002094C(v8, qword_1006F0150);
  v18 = sub_1000208F4(v8, v7);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 69;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1003AFBB4()
{
  if (qword_1006D5FF0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  return sub_1000208F4(v0, qword_1006F0150);
}

uint64_t sub_1003AFC20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003AFBB4();
  v1 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003AFC84()
{
  if (qword_1006D5FF8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1003AFCF8()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1003AFD30(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1003AFD7C()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_1003AFDB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *sub_1003AFE00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  memset(&__b[3], 0, 32);
  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v22 = [a1 itemID];
  swift_unknownObjectRelease();
  v23 = sub_1003B0140(v22);
  v24 = v6;
  swift_unknownObjectRelease();
  if (!v24)
  {
    swift_unknownObjectRelease();
LABEL_7:

    swift_unknownObjectRelease();
    sub_100268744();
    result = &__b[5];
    sub_100268744();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  __b[0] = v23;
  __b[1] = v24;
  swift_unknownObjectRetain();
  __b[2] = a1;

  __b[3] = a2;
  __b[4] = a3;

  __b[5] = a4;
  __b[6] = a5;

  swift_unknownObjectRelease();
  v8 = __b[0];
  v9 = __b[1];
  v10 = __b[2];
  v11 = __b[3];
  v12 = __b[4];
  v13 = __b[5];
  v14 = __b[6];

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  result = __b;
  sub_1003AF6BC();
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
LABEL_8:
  *a6 = v15;
  a6[1] = v16;
  a6[2] = v17;
  a6[3] = v18;
  a6[4] = v19;
  a6[5] = v20;
  a6[6] = v21;
  return result;
}

uint64_t sub_1003B0140(void *a1)
{
  v14[1] = a1;
  v15 = 0;
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v14[0] = 0;
  v13 = [v10 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v14];
  v11 = v14[0];
  _objc_retain(v14[0]);
  v1 = v15;
  v15 = v11;
  _objc_release(v1);
  swift_unknownObjectRelease();
  if (v13)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v2;
    v3 = sub_1003B1284();
    countAndFlagsBits = Data.base64EncodedString(options:)(v3)._countAndFlagsBits;
    sub_100288010(v6, v7);
    _objc_release(v13);
    return countAndFlagsBits;
  }

  else
  {
    v5 = v15;
    _convertNSErrorToError(_:)();
    _objc_release(v5);
    swift_willThrow();

    return 0;
  }
}

uint64_t sub_1003B032C@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = InstantAnswerView.Model.Flight.travelDate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003B03B4@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v1 = sub_10025C9B0(&unk_1006D9D00);
  v19 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v65 = &v19 - v19;
  v2 = sub_10025C9B0(&qword_1006D6280);
  v20 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v64 = &v19 - v20;
  v60 = 0;
  v21 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v57 = &v19 - v21;
  v22 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v56 = &v19 - v22;
  v23 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v54 = &v19 - v23;
  v47 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v34 = *(v47 - 8);
  v35 = v47 - 8;
  v24 = (v34[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v60);
  v51 = &v19 - v24;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v44 = &v19 - v25;
  v26 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v50 = &v19 - v26;
  v70 = type metadata accessor for LocalizedStringResource();
  v66 = *(v70 - 8);
  v67 = v70 - 8;
  v29 = *(v66 + 64);
  v27 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v60);
  v63 = &v19 - v27;
  v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v68 = &v19 - v28;
  v81 = &v19 - v28;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v69 = &v19 - v30;
  v80 = &v19 - v30;
  v79 = v9;
  v37 = 1;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40 = "";
  *&v61[1] = 1;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v60, 1);
  object = v10._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

  v11._countAndFlagsBits = sub_1003B0D4C();
  v32 = v11._object;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v40, v60, v61[1] & 1);
  v33 = v12._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v50;

  v43 = v34[2];
  v42 = v34 + 2;
  v43(v44, v13, v47);
  v46 = v34[4];
  v45 = v34 + 4;
  v46(v51, v44, v47);
  v49 = v34[1];
  v48 = v34 + 1;
  v49(v13, v47);
  String.LocalizationValue.init(stringInterpolation:)();
  v52 = "AppIntents";
  v53 = 10;
  v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v61[1] & 1);
  sub_100015CC0();
  sub_10025D410(v57);
  v76 = 0;
  v77 = 0;
  v78 = *v61 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v40, v60, v61[1] & 1);
  v38 = v14._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

  v15._countAndFlagsBits = sub_1003B0FA4();
  v39 = v15._object;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v40, v60, v61[1] & 1);
  v41 = v16._object;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);

  v43(v44, v50, v47);
  v46(v51, v44, v47);
  v49(v50, v47);
  String.LocalizationValue.init(stringInterpolation:)();
  v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v52, v53, v61[1] & 1);
  sub_100015CC0();
  sub_10025D410(v57);
  v73 = 0;
  v74 = 0;
  v75 = *v61 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v59 = *(v66 + 16);
  v58 = v66 + 16;
  v59(v63, v69, v70);
  v59(v64, v68, v70);
  (*(v66 + 56))(v64, 0, *&v61[1], v70);
  v17 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v17 - 8) + 56))(v65, *&v61[1]);
  DisplayRepresentation.init(title:subtitle:image:)();
  v72 = *(v66 + 8);
  v71 = v66 + 8;
  v72(v68, v70);
  return (v72)(v69, v70);
}

uint64_t sub_1003B0D4C()
{
  v13 = v0;
  v14 = *(v0 + 24);
  sub_100268860(&v14, &v12);
  v15 = v14;
  if (*(&v14 + 1))
  {
    return v15;
  }

  sub_1003B1330();
  v6 = sub_10025C704();
  [v6 setShouldIncludeDisplayName:1];
  v4 = *(v11 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v5 = [v4 senderList];
  sub_10025C9B0(&unk_1006DBC20);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_unknownObjectRelease();

  _objc_release(v5);
  v8 = [v6 stringFromEmailAddressList:isa];
  _objc_release(isa);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v8);
  if (String.isEmpty.getter())
  {
    v2 = [objc_opt_self() noSenderPlaceholder];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v2);

    _objc_release(v6);
    return v3;
  }

  else
  {
    _objc_release(v6);
    return v9;
  }
}

uint64_t sub_1003B0FA4()
{
  v17 = v0;
  v18 = *(v0 + 40);
  sub_100268860(&v18, &v16);
  v19 = v18;
  if (!*(&v18 + 1))
  {
    v11 = objc_opt_self();
    v10 = *(v15 + 16);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v12 = [v10 subject];
    swift_unknownObjectRelease();
    v13 = [v11 subjectStringForDisplayForSubject:v12];
    _objc_release(v12);
    if (v13)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v1;
      _objc_release(v13);
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (v9)
    {
      v2 = String.isEmpty.getter();
      if ((v2 & 1) == 0)
      {
        return v8;
      }
    }

    v4 = [objc_opt_self() noSubjectPlaceholder];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v4);
    return v5;
  }

  return v19;
}

uint64_t sub_1003B1284()
{
  sub_1003B4FC0(0);

  return 0;
}

unint64_t sub_1003B12B4()
{
  v2 = qword_1006DAAC0;
  if (!qword_1006DAAC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B1330()
{
  v2 = qword_1006DAAD0;
  if (!qword_1006DAAD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DAAD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003B1394()
{
  v2 = qword_1006DAAE0;
  if (!qword_1006DAAE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAAE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003B1410(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v16 = a1;
  v17 = a2;
  sub_1003B164C();
  v9 = Data.init(base64Encoded:options:)();
  v10 = v2;
  if ((v2 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  v14 = v9;
  v15 = v2;
  sub_1003B167C();
  sub_10025C9B0(&qword_1006DAAF0);
  _allocateUninitializedArray<A>(_:)();
  v8 = v3;
  *v3 = sub_1003B16E0();
  v8[1] = sub_1003B1744();
  sub_1002612B0();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (v13)
  {
    sub_10025C9B0(&qword_1006DB000);
    if (swift_dynamicCast())
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    sub_10000B0D8(v12);
    v6 = 0;
  }

  sub_100288010(v9, v10);
  return v6;
}

uint64_t sub_1003B164C()
{
  sub_1003B506C(0);

  return 0;
}

unint64_t sub_1003B167C()
{
  v2 = qword_1006DAAE8;
  if (!qword_1006DAAE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DAAE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003B16E0()
{
  v2 = qword_1006DAAF8;
  if (!qword_1006DAAF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DAAF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003B1744()
{
  v2 = qword_1006DAB00;
  if (!qword_1006DAB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DAB00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003B17A8@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = &v3 - v6;
  *&v7[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Message", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v7[1] & 1);
  sub_100015CC0();
  sub_10025D410(v12);
  v13 = 0;
  v14 = 0;
  v15 = *v7 & 0x100;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003B197C()
{
  v1 = sub_1003B1970();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1003B19D4(char a1)
{
  v2 = sub_1003B1970();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

void *sub_1003B1A28(void *a1, uint64_t a2)
{
  v5[8] = a1;
  v5[7] = a2;

  sub_1003B1AB0(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_1003AF6BC();
  return result;
}

void *sub_1003B1AB0(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v4 = a1[2];
  swift_unknownObjectRetain();
  a2[2] = v4;
  a2[3] = a1[3];
  v6 = a1[4];

  a2[4] = v6;
  a2[5] = a1[5];
  v8 = a1[6];

  result = a2;
  a2[6] = v8;
  return result;
}

void (*sub_1003B1B58(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003B1BF4()
{
  v27 = &v30;
  v30 = 0;
  v14 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v25 = &v5 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v24 = &v5 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v23 = &v5 - v8;
  v9 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v21 = &v5 - v9;
  v13 = type metadata accessor for LocalizedStringResource();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v20 = &v5 - v10;
  sub_10025C9B0(&qword_1006DABF8);
  v15 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message to open", 0xFuLL, 1);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v11 + 56))(v21, v15, v15, v13);
  v22 = v29;
  memset(v29, 0, sizeof(v29));
  v16 = type metadata accessor for IntentDialog();
  v3 = *(v16 - 8);
  v18 = *(v3 + 56);
  v17 = v3 + 56;
  v18(v23, v15);
  (v18)(v24, v15, v15, v16);
  v19 = sub_1003B4210();
  v26 = sub_1003B12B4();
  sub_1003BD8F8(v25);
  v28 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v30 = v28;
  sub_100268928();
  return v28;
}

void (*sub_1003B1FD4(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003B1B58(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003B207C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1003B2144();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return OpenIntent.perform()(a1, a2, v4);
}

unint64_t sub_1003B2144()
{
  v2 = qword_1006DAB10;
  if (!qword_1006DAB10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003B21C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003B1BF4();
  *a1 = result;
  return result;
}

uint64_t sub_1003B221C@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = &v3 - v6;
  *&v7[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Navigate Messages", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v7[1] & 1);
  sub_100015CC0();
  sub_10025D410(v12);
  v13 = 0;
  v14 = 0;
  v15 = *v7 & 0x100;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003B23F0()
{
  v1 = sub_1003B23E4();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1003B2448(char a1)
{
  v2 = sub_1003B23E4();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1003B249C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v11 = type metadata accessor for NavigateSequentiallyDirection();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v13 = __chkstk_darwin(v10);
  v12 = a2;

  (*(v8 + 16))(v6, v10, v11);
  IntentParameter.wrappedValue.setter();

  return (*(v8 + 8))(v10, v11);
}

void (*sub_1003B25C4(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003B2660()
{
  v29 = &v31;
  v31 = 0;
  v15 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v26 = &v6 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v25 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v7);
  v24 = &v6 - v8;
  v3 = sub_10025C9B0(&qword_1006DABD8);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v23 = &v6 - v9;
  v10 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v22 = &v6 - v10;
  v14 = type metadata accessor for LocalizedStringResource();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v28 = &v6 - v11;
  sub_10025C9B0(&qword_1006DABE0);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Navigate to next or previous message", 0x24uLL, 1);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v12 + 56))(v22, v16, v16, v14);
  v20 = type metadata accessor for NavigateSequentiallyDirection();
  (*(*(v20 - 8) + 56))(v23, v16);
  v17 = type metadata accessor for IntentDialog();
  v4 = *(v17 - 8);
  v19 = *(v4 + 56);
  v18 = v4 + 56;
  v19(v24, v16);
  (v19)(v25, v16, v16, v17);
  v21 = sub_1003B4EC0();
  v27 = sub_1003B4F40();
  sub_1003BD8F8(v26);
  sub_1003BD968(v20, v21, v27);
  v30 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();

  v31 = v30;
  sub_100268928();
  return v30;
}

void (*sub_1003B2A5C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003B25C4(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003B2B04(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1002B44FC(a1, v6);
}

uint64_t sub_1003B2BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003B2660();
  *a1 = result;
  return result;
}

uint64_t sub_1003B2C20(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[14] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[12] = a1;
  v2[13] = a2;

  return _swift_task_switch(sub_1003B2D30, 0);
}

uint64_t sub_1003B2D30()
{
  v0[14] = v0;
  v0[24] = type metadata accessor for MainActor();
  v0[25] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003B2DD8, v1);
}

uint64_t sub_1003B2DD8()
{
  *(v0 + 112) = v0;
  sub_1003AEA68((v0 + 56));

  return _swift_task_switch(sub_1003B2E5C, 0);
}

uint64_t sub_1003B2E5C()
{
  *(v0 + 112) = v0;
  if (*(v0 + 80))
  {
    sub_10035805C((v21 + 56), (v21 + 16));
    v1 = *(v21 + 40);
    *(v21 + 208) = v1;
    v20 = *(v21 + 48);
    *(v21 + 216) = v20;
    *(v21 + 224) = sub_10027EC3C((v21 + 16), v1);
    *(v21 + 232) = *(v20 + 8);
    *(v21 + 240) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0xBEBE000000000000;
    *(v21 + 248) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003B32E0, v2);
  }

  else
  {
    v3 = *(v21 + 184);
    v16 = *(v21 + 168);
    v15 = *(v21 + 176);
    sub_10000B0D8(v21 + 56);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v15 + 16))(v3, v4, v16);
    v18 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v19 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v18, v17))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v12 = sub_1002641E8(0);
      v13 = sub_1002641E8(0);
      *(v21 + 120) = buf;
      *(v21 + 128) = v12;
      *(v21 + 136) = v13;
      sub_10026423C(0, (v21 + 120));
      sub_10026423C(0, (v21 + 120));
      *(v21 + 144) = v19;
      v14 = swift_task_alloc();
      v14[2] = v21 + 120;
      v14[3] = v21 + 128;
      v14[4] = v21 + 136;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v18, v17, "Failed to find a matcher to lookup message entities by string", buf, 2u);
      sub_10026429C(v12);
      sub_10026429C(v13);
      UnsafeMutablePointer.deallocate()();
    }

    v8 = *(v21 + 184);
    v9 = *(v21 + 168);
    v7 = *(v21 + 176);
    _objc_release(v18);
    (*(v7 + 8))(v8, v9);
    v10 = _allocateUninitializedArray<A>(_:)();

    v5 = *(*(v21 + 112) + 8);

    return v5(v10);
  }
}

uint64_t sub_1003B32E0()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[19];
  v0[14] = v0;
  v0[32] = v1(v5, v4, v3, v2);
  v0[33] = 0;

  return _swift_task_switch(sub_1003B33E4, 0);
}

uint64_t sub_1003B33E4()
{
  *(v0 + 112) = v0;
  sub_1000160F4(v0 + 16);
  v3 = *(v0 + 256);

  v1 = *(*(v0 + 112) + 8);

  return v1(v3);
}

uint64_t sub_1003B3490()
{
  *(v0 + 112) = v0;

  sub_1000160F4(v0 + 16);

  v1 = *(*(v3 + 112) + 8);

  return v1();
}

uint64_t sub_1003B3544(uint64_t a1)
{
  v1[18] = a1;
  v1[12] = v1;
  v1[13] = 0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[13] = a1;

  return _swift_task_switch(sub_1003B3640, 0);
}

uint64_t sub_1003B3640()
{
  *(v0 + 96) = v0;
  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003B36E0, v1);
}

uint64_t sub_1003B36E0()
{
  *(v0 + 96) = v0;
  sub_1003AEA68((v0 + 56));

  return _swift_task_switch(sub_1003B3764, 0);
}

uint64_t sub_1003B3764()
{
  *(v0 + 96) = v0;
  if (*(v0 + 80))
  {
    v20 = *(v22 + 144);
    sub_10035805C((v22 + 56), (v22 + 16));
    v18 = *(v22 + 40);
    v19 = *(v22 + 48);
    sub_10027EC3C((v22 + 16), v18);
    v21 = (*(v19 + 16))(v20, v18);
    sub_1000160F4(v22 + 16);
    v17 = v21;
  }

  else
  {
    v1 = *(v22 + 168);
    v13 = *(v22 + 152);
    v12 = *(v22 + 160);
    sub_10000B0D8(v22 + 56);
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v12 + 16))(v1, v2, v13);
    v15 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v16 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v15, v14))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v9 = sub_1002641E8(0);
      v10 = sub_1002641E8(0);
      *(v22 + 112) = buf;
      *(v22 + 120) = v9;
      *(v22 + 128) = v10;
      sub_10026423C(0, (v22 + 112));
      sub_10026423C(0, (v22 + 112));
      *(v22 + 136) = v16;
      v11 = swift_task_alloc();
      v11[2] = v22 + 112;
      v11[3] = v22 + 120;
      v11[4] = v22 + 128;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v15, v14, "Failed to find a matcher to lookup message entities by identifier", buf, 2u);
      sub_10026429C(v9);
      sub_10026429C(v10);
      UnsafeMutablePointer.deallocate()();
    }

    v6 = *(v22 + 168);
    v7 = *(v22 + 152);
    v5 = *(v22 + 160);
    _objc_release(v15);
    (*(v5 + 8))(v6, v7);
    v17 = _allocateUninitializedArray<A>(_:)();
  }

  v3 = *(*(v22 + 96) + 8);

  return v3(v17);
}

uint64_t sub_1003B3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_1003B2C20(a2, a3);
}

uint64_t sub_1003B3D04(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1003B3544(a1);
}

uint64_t sub_1003B3DB8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1003B3E80();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_1003B3E80()
{
  v2 = qword_1006DAB28;
  if (!qword_1006DAB28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B3F14()
{
  v2 = qword_1006DAB30;
  if (!qword_1006DAB30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B3FA8()
{
  v2 = qword_1006DAB38;
  if (!qword_1006DAB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B403C()
{
  v2 = qword_1006DAB40;
  if (!qword_1006DAB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B40E8()
{
  v2 = qword_1006DAB48;
  if (!qword_1006DAB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B417C()
{
  v2 = qword_1006DAB50;
  if (!qword_1006DAB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4210()
{
  v2 = qword_1006DAB58;
  if (!qword_1006DAB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B42A4()
{
  v2 = qword_1006DAB60;
  if (!qword_1006DAB60)
  {
    sub_10025CAA4(&qword_1006DAB68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B435C()
{
  v2 = qword_1006DAB70;
  if (!qword_1006DAB70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B43F0()
{
  v2 = qword_1006DAB78;
  if (!qword_1006DAB78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B449C()
{
  v2 = qword_1006DAB80;
  if (!qword_1006DAB80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4530()
{
  v2 = qword_1006DAB88;
  if (!qword_1006DAB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B467C()
{
  v2 = qword_1006DAB90;
  if (!qword_1006DAB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4728()
{
  v2 = qword_1006DAB98;
  if (!qword_1006DAB98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B47BC()
{
  v2 = qword_1006DABA0;
  if (!qword_1006DABA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B48E0()
{
  v2 = qword_1006DABA8;
  if (!qword_1006DABA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4974()
{
  v2 = qword_1006DABB0;
  if (!qword_1006DABB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4A20()
{
  v2 = qword_1006DABB8;
  if (!qword_1006DABB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4AB4()
{
  v2 = qword_1006DABC0;
  if (!qword_1006DABC0)
  {
    sub_10025CAA4(&unk_1006DABC8);
    sub_1003B4210();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003B4B7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1003B4C94(uint64_t result, unsigned int a2, unsigned int a3)
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
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1003B4EC0()
{
  v2 = qword_1006DABE8;
  if (!qword_1006DABE8)
  {
    type metadata accessor for NavigateSequentiallyDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4F40()
{
  v2 = qword_1006DABF0;
  if (!qword_1006DABF0)
  {
    type metadata accessor for NavigateSequentiallyDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DABF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B4FC0(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Base64EncodingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1003B506C(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Base64DecodingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

id sub_1003B5A80(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  ObjectType = swift_getObjectType();
  v42 = a1 & 1;
  v41 = a2 & 1;
  v40 = a3 & 1;
  v39 = a4 & 1;
  v38 = a5 & 1;
  v37 = a6 & 1;
  v36 = a7 & 1;
  v35 = a8 & 1;
  v34 = a9 & 1;
  v33 = a10 & 1;
  v32 = a11 & 1;
  v31 = a12 & 1;
  v30 = a13 & 1;
  v29 = a14 & 1;
  v28 = a15;
  v43 = v15;
  v15[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing] = a1;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching] = a2;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isInbox] = a3;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSolariumEnabled] = a12;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isBlackPearlEnabled] = a13;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isCatchUpAvailable] = a14;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isPad] = a10;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isCompactSizeClass] = a11;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isFiltered] = a4;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_mailboxSupportsSelectAll] = a5;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isBucketBarHidden] = a6;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isAllMailSelected] = a7;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isGroupedBySender] = a8;
  v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_prefersNewSelectButton] = a9;
  *&v43[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_connectedScenes] = a15;
  v27.receiver = v43;
  v27.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v27, "init");
  _objc_retain(v26);
  v43 = v26;
  _objc_release(v26);
  return v26;
}

uint64_t sub_1003B6020()
{
  result = nullsub_13(1);
  qword_1006F0168 = result;
  return result;
}

uint64_t *sub_1003B604C()
{
  if (qword_1006D6000 != -1)
  {
    swift_once();
  }

  return &qword_1006F0168;
}

uint64_t sub_1003B60C8()
{
  result = nullsub_13(2);
  qword_1006F0170 = result;
  return result;
}

uint64_t *sub_1003B60F4()
{
  if (qword_1006D6008 != -1)
  {
    swift_once();
  }

  return &qword_1006F0170;
}

uint64_t sub_1003B6170()
{
  result = nullsub_13(4);
  qword_1006F0178 = result;
  return result;
}

uint64_t *sub_1003B619C()
{
  if (qword_1006D6010 != -1)
  {
    swift_once();
  }

  return &qword_1006F0178;
}

uint64_t sub_1003B6218()
{
  result = nullsub_13(8);
  qword_1006F0180 = result;
  return result;
}

uint64_t *sub_1003B6244()
{
  if (qword_1006D6018 != -1)
  {
    swift_once();
  }

  return &qword_1006F0180;
}

uint64_t sub_1003B62C0()
{
  result = nullsub_13(16);
  qword_1006F0188 = result;
  return result;
}

uint64_t *sub_1003B62EC()
{
  if (qword_1006D6020 != -1)
  {
    swift_once();
  }

  return &qword_1006F0188;
}

uint64_t sub_1003B6368()
{
  result = nullsub_13(32);
  qword_1006F0190 = result;
  return result;
}

uint64_t *sub_1003B6394()
{
  if (qword_1006D6028 != -1)
  {
    swift_once();
  }

  return &qword_1006F0190;
}

uint64_t sub_1003B6410()
{
  result = nullsub_13(64);
  qword_1006F0198 = result;
  return result;
}

uint64_t *sub_1003B643C()
{
  if (qword_1006D6030 != -1)
  {
    swift_once();
  }

  return &qword_1006F0198;
}

uint64_t sub_1003B64B8()
{
  result = nullsub_13(128);
  qword_1006F01A0 = result;
  return result;
}

uint64_t *sub_1003B64E4()
{
  if (qword_1006D6038 != -1)
  {
    swift_once();
  }

  return &qword_1006F01A0;
}

uint64_t sub_1003B6560()
{
  sub_1003B65A4();
  sub_100267D6C();
  return OptionSet<>.init()();
}

unint64_t sub_1003B65A4()
{
  v2 = qword_1006DAC78;
  if (!qword_1006DAC78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAC78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003B67E0()
{
  sub_1003B65A4();
  sub_100267D6C();
  return OptionSet<>.formUnion(_:)();
}

uint64_t sub_1003B6824()
{
  sub_1003B65A4();
  sub_100267D6C();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t sub_1003B6868()
{
  sub_1003B65A4();
  sub_100267D6C();
  return OptionSet<>.formSymmetricDifference(_:)();
}

unint64_t sub_1003B68F8()
{
  v2 = qword_1006DAC80;
  if (!qword_1006DAC80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B69B4()
{
  v2 = qword_1006DAC88;
  if (!qword_1006DAC88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAC88);
    return WitnessTable;
  }

  return v2;
}

id sub_1003B6A30(_BYTE *a1)
{
  if (a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSolariumEnabled])
  {
    return sub_1003B6AE0(a1);
  }

  if (a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_prefersNewSelectButton])
  {
    return sub_1003B6E08(a1);
  }

  return sub_1003B6FF8(a1);
}

id sub_1003B6AE0(_BYTE *a1)
{
  sub_1003B65A4();
  sub_100267D6C();
  OptionSet<>.init()();
  if (sub_1003B7234(a1))
  {
    sub_1003B64E4();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B72DC(a1))
  {
    sub_1003B619C();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B7CC0(a1))
  {
    sub_1003B643C();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B78C4(a1))
  {
    sub_1003B62EC();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B74FC(a1))
  {
    sub_1003B60F4();
    OptionSet<>.insert(_:)();
  }

  else if (sub_1003B7790(a1))
  {
    sub_1003B6244();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B7E28(a1))
  {
    sub_1003B60F4();
    if (OptionSet<>.contains(_:)())
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      sub_1003B6244();
      v2 = OptionSet<>.contains(_:)() ^ 1;
    }

    if (v2)
    {
      sub_1003B6394();
      OptionSet<>.insert(_:)();
    }
  }

  type metadata accessor for MessageListBarButtonItemConfiguration();
  return sub_1003B7A84();
}

id sub_1003B6E08(_BYTE *a1)
{
  sub_1003B65A4();
  sub_100267D6C();
  OptionSet<>.init()();
  if (sub_1003B7234(a1))
  {
    sub_1003B64E4();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B72DC(a1))
  {
    sub_1003B619C();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B74FC(a1))
  {
    sub_1003B60F4();
    OptionSet<>.insert(_:)();
  }

  else if (sub_1003B7790(a1))
  {
    sub_1003B6244();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B78C4(a1))
  {
    sub_1003B62EC();
    OptionSet<>.insert(_:)();
  }

  type metadata accessor for MessageListBarButtonItemConfiguration();
  return sub_1003B7A84();
}

id sub_1003B6FF8(_BYTE *a1)
{
  sub_1003B65A4();
  sub_100267D6C();
  OptionSet<>.init()();
  if (sub_1003B7234(a1))
  {
    sub_1003B64E4();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B72DC(a1))
  {
    sub_1003B619C();
    OptionSet<>.insert(_:)();
  }

  if (sub_1003B7F64(a1))
  {
    sub_1003B604C();
    OptionSet<>.insert(_:)();
  }

  else if (sub_1003B7790(a1))
  {
    sub_1003B6244();
    OptionSet<>.insert(_:)();
  }

  type metadata accessor for MessageListBarButtonItemConfiguration();
  return sub_1003B7A84();
}

uint64_t sub_1003B7234(_BYTE *a1)
{
  v4 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing];
  _objc_retain(a1);
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching];
  }

  _objc_release(a1);
  return (v2 ^ 1) & 1;
}

uint64_t sub_1003B72DC(_BYTE *a1)
{
  v9 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing];
  _objc_retain(a1);
  if (v9)
  {
    v7 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_mailboxSupportsSelectAll];
  }

  else
  {
    v7 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v7)
  {
    v6 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isFiltered] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v6)
  {
    v5 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v5)
  {
    v4 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isBucketBarHidden];
    _objc_retain(a1);
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isAllMailSelected];
    }

    _objc_release(a1);
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  _objc_release(a1);
  return v2 & 1;
}

uint64_t sub_1003B74FC(_BYTE *a1)
{
  v12 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isPad];
  _objc_retain(a1);
  if (v12)
  {
    v9 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isCompactSizeClass];
  }

  else
  {
    v9 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v9)
  {
    v8 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching];
  }

  else
  {
    v8 = 0;
  }

  _objc_release(a1);
  _objc_retain(v11);
  _objc_retain(a1);
  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v6 = sub_1003B7CC0(a1);
    _objc_retain(v11);
    _objc_retain(a1);
    if (v6)
    {
      v5 = sub_1003B78C4(a1);
    }

    else
    {
      v5 = 0;
    }

    _objc_release(v11);
    _objc_release(a1);
    v7 = v5;
  }

  _objc_release(v11);
  _objc_release(a1);
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing];
    _objc_retain(a1);
    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_prefersNewSelectButton];
    }

    _objc_release(a1);
    v4 = v2;
  }

  return v4 & 1;
}

uint64_t sub_1003B7790(_BYTE *a1)
{
  v6 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isPad];
  _objc_retain(a1);
  if (v6)
  {
    v4 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isCompactSizeClass];
  }

  else
  {
    v4 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v4)
  {
    v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching];
  }

  else
  {
    v3 = 0;
  }

  _objc_release(a1);
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing];
  }

  return v2 & 1;
}

uint64_t sub_1003B78C4(_BYTE *a1)
{
  v8 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isInbox];
  _objc_retain(a1);
  if (v8)
  {
    v6 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v6)
  {
    v5 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_prefersNewSelectButton];
  }

  else
  {
    v5 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v5)
  {
    v4 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isBlackPearlEnabled];
    _objc_retain(a1);
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isCatchUpAvailable];
    }

    _objc_release(a1);
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  _objc_release(a1);
  return v2 & 1;
}

id sub_1003B7A84()
{
  sub_1003B604C();
  sub_1003B65A4();
  v8 = OptionSet<>.contains(_:)();
  sub_1003B60F4();
  v2 = OptionSet<>.contains(_:)();
  sub_1003B619C();
  v3 = OptionSet<>.contains(_:)();
  sub_1003B6244();
  v4 = OptionSet<>.contains(_:)();
  sub_1003B62EC();
  v5 = OptionSet<>.contains(_:)();
  sub_1003B643C();
  v6 = OptionSet<>.contains(_:)();
  sub_1003B6394();
  v7 = OptionSet<>.contains(_:)();
  sub_1003B64E4();
  v0 = OptionSet<>.contains(_:)();
  v9 = sub_1003B8588(v8 & 1, v2 & 1, v3 & 1, v4 & 1, v5 & 1, v6 & 1, v7 & 1, v0 & 1);
  _objc_retain(v9);
  _objc_release(v9);
  return v9;
}

uint64_t sub_1003B7CC0(_BYTE *a1)
{
  v6 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isPad];
  _objc_retain(a1);
  if (v6)
  {
    v4 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v4)
  {
    v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v3)
  {
    v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isGroupedBySender] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  _objc_release(a1);
  return v2 & 1;
}

uint64_t sub_1003B7E28(_BYTE *a1)
{
  v5 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isPad];
  _objc_retain(a1);
  v3 = (v5 & 1) != 0 && *&a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_connectedScenes] > 1;
  _objc_release(a1);
  _objc_retain(a1);
  if (v3)
  {
    v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  _objc_release(a1);
  return v2 & 1;
}

uint64_t sub_1003B7F64(_BYTE *a1)
{
  v5 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isEditing];
  _objc_retain(a1);
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_isSearching] ^ 1;
  }

  _objc_release(a1);
  _objc_retain(a1);
  if (v3)
  {
    v2 = a1[OBJC_IVAR____TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState_prefersNewSelectButton] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  _objc_release(a1);
  return v2 & 1;
}

id OpenMailboxQuicklyFactory.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, "init");
  _objc_retain(v2);
  v4 = v2;
  _objc_release(v2);
  return v2;
}

id sub_1003B861C(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  ObjectType = swift_getObjectType();
  v28 = a1 & 1;
  v27 = a2 & 1;
  v26 = a3 & 1;
  v25 = a4 & 1;
  v24 = a5 & 1;
  v23 = a6 & 1;
  v22 = a7 & 1;
  v21 = a8 & 1;
  v29 = v8;
  v8[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isEditVisible] = a1;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isSelectVisible] = a2;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isSelectAllVisible] = a3;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isCancelVisible] = a4;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isConfigureVisible] = a5;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isFilterVisible] = a6;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isShelfVisible] = a7;
  v29[OBJC_IVAR____TtC10MobileMail37MessageListBarButtonItemConfiguration_isBackVisible] = a8;
  v20.receiver = v29;
  v20.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v20, "init");
  _objc_retain(v19);
  v29 = v19;
  _objc_release(v19);
  return v19;
}

unint64_t sub_1003B8A08()
{
  v2 = qword_1006DAD48;
  if (!qword_1006DAD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003B8A9C()
{
  v2 = qword_1006DAD50;
  if (!qword_1006DAD50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003B8B48()
{
  if (qword_1006D6040 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1003B8BA4()
{
  v4 = sub_1003B8C54();
  if (!v4)
  {
    return 0;
  }

  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    return v3;
  }

  _objc_release(v4);
  return 0;
}

uint64_t sub_1003B8C54()
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

id sub_1003B8D78()
{
  sub_1003B8B48();
  v3 = sub_1003B8BA4();
  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  v1 = [v3 messageListViewController];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1003B8E04(uint64_t a1)
{
  v35 = a1;
  v46 = 0;
  v41 = 0;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = v37;
  v1 = __chkstk_darwin(v35);
  v39 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  v40 = sub_1003B8BA4();
  if (v40)
  {
    v33 = v40;
    v9[0] = v40;
    v9[1] = v34;
    v41 = v40;
    swift_getObjectType();
    [v9[0] displayMessageList];
    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = v39;
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v38 + 16))(v3, v4, v36);
    v31 = Logger.logObject.getter();
    v28 = v31;
    v30 = static os_log_type_t.error.getter();
    v29 = v30;
    sub_10025C9B0(&unk_1006D7720);
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v27 = v34;
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = v19;
      v16 = sub_10025C9B0(&qword_1006D7290);
      v17 = 0;
      v20 = sub_1002641E8(0);
      v18 = v20;
      v21 = sub_1002641E8(v17);
      v45 = v19;
      v44 = v20;
      v43 = v21;
      v22 = 0;
      v23 = &v45;
      sub_10026423C(0, &v45);
      sub_10026423C(v22, v23);
      v42 = v32;
      v24 = v9;
      __chkstk_darwin(v9);
      v25 = &v9[-6];
      v9[-4] = v5;
      v9[-3] = &v44;
      v9[-2] = &v43;
      v26 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      v6 = v27;
      Sequence.forEach(_:)();
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to find a scene capable of displaying the message list", v15, 2u);
        v14 = 0;
        sub_10026429C(v18);
        sub_10026429C(v21);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v38 + 8))(v39, v36);
    sub_10028B33C();
    v12 = 0;
    v11 = 0;
    v13 = swift_allocError();
    v10 = v7;
    sub_1002F171C(v35, v7);
    *(v10 + 40) = v11;
    swift_willThrow();
    return v12;
  }
}

uint64_t sub_1003B9254(id *a1)
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

uint64_t sub_1003B9454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  v3[12] = a2;
  v3[11] = a1;
  v3[9] = v3;
  v3[7] = 0;
  v3[8] = 0;
  v3[10] = 0;
  v3[7] = a2;
  v3[8] = a3;
  return _swift_task_switch(sub_1003B94A8, 0);
}

uint64_t sub_1003B94A8()
{
  v0[9] = v0;
  v0[14] = type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003B9550, v1);
}

uint64_t sub_1003B9550()
{
  *(v0 + 72) = v0;
  *(v0 + 128) = sub_1003B8D78();

  return _swift_task_switch(sub_1003B95D8, 0);
}

uint64_t sub_1003B95D8()
{
  v1 = *(v0 + 128);
  *(v0 + 72) = v0;
  if (v1)
  {
    v7 = v8[16];
    v8[10] = v7;
    _objc_retain(v7);
    v8[5] = sub_100014038();
    v8[6] = &off_10065D4D8;
    v8[2] = v7;
    v8[17] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003B97A4, v2);
  }

  else
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to find message list view controller", 0x2BuLL, 1);
    sub_100367A00();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    v5 = *(v8[9] + 8);

    return v5();
  }
}

uint64_t sub_1003B97A4()
{
  v1 = v0[13];
  v2 = v0[12];
  v0[9] = v0;
  sub_1003B9F3C(v2, v1, v0 + 2);

  sub_1000160F4((v0 + 2));

  return _swift_task_switch(sub_1003B983C, 0);
}

uint64_t sub_1003B983C()
{
  v3 = *(v0 + 128);
  *(v0 + 72) = v0;
  static IntentResult.result<>()();
  _objc_release(v3);
  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_1003B99C0(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a2;
  return _swift_task_switch(sub_1003B9A04, 0);
}

uint64_t sub_1003B9A04()
{
  v0[2] = v0;
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003B9AAC, v1);
}

uint64_t sub_1003B9AAC()
{
  *(v0 + 16) = v0;
  *(v0 + 72) = sub_1003B8D78();

  return _swift_task_switch(sub_1003B9B34, 0);
}

uint64_t sub_1003B9B34()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v0;
  if (v1)
  {
    v7[4] = v7[9];
    sub_1003BA7D0();
    v7[10] = String._bridgeToObjectiveC()();

    v7[11] = @"currentMailbox";
    _objc_retain(@"currentMailbox");
    v7[12] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003B9D0C, v2);
  }

  else
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to find message list view controller", 0x2BuLL, 1);
    sub_100367A00();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    v5 = *(v7[2] + 8);

    return v5();
  }
}

uint64_t sub_1003B9D0C()
{
  v3 = v0[11];
  v4 = v0[10];
  v1 = v0[9];
  v0[2] = v0;
  [v1 beginSearchWithQueryString:? scope:?];

  _objc_release(v3);
  _objc_release(v4);

  return _swift_task_switch(sub_1003B9DC8, 0);
}

uint64_t sub_1003B9DC8()
{
  v3 = *(v0 + 72);
  *(v0 + 16) = v0;
  static IntentResult.result<>()();
  _objc_release(v3);
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

unint64_t sub_1003B9ED0(uint64_t a1)
{
  result = sub_10001B88C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B9EFC(uint64_t a1)
{
  result = sub_10001B524();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003B9F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = a1;
  v53 = a2;
  v46 = a3;
  v55 = sub_1003BC154;
  v59 = sub_10026EE84;
  v61 = sub_10026434C;
  v63 = sub_10026434C;
  v66 = sub_10026EF2C;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v39 = 0;
  v40 = 0;
  v41 = type metadata accessor for ChangeOperation();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v45 = &v23 - v44;
  v51 = type metadata accessor for Logger();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v52);
  v4 = &v23 - v47;
  v48 = &v23 - v47;
  v78 = v3;
  v79 = v5;
  v77 = v6;
  v7 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v49 + 16))(v4, v7, v51);

  v56 = 32;
  v57 = 7;
  v8 = swift_allocObject();
  v9 = v53;
  v58 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v58;
  v60 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v60;
  v67 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v69 = sub_10025C9B0(&unk_1006D7720);
  v65 = _allocateUninitializedArray<A>(_:)();
  v68 = v14;

  v15 = v62;
  v16 = v68;
  *v68 = v61;
  v16[1] = v15;

  v17 = v64;
  v18 = v68;
  v68[2] = v63;
  v18[3] = v17;

  v19 = v67;
  v20 = v68;
  v68[4] = v66;
  v20[5] = v19;
  sub_1002612B0();

  if (os_log_type_enabled(v70, v71))
  {
    v21 = v39;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = sub_10025C9B0(&qword_1006D7290);
    v33 = sub_1002641E8(0);
    v34 = sub_1002641E8(1);
    v35 = &v76;
    v76 = v32;
    v36 = &v75;
    v75 = v33;
    v37 = &v74;
    v74 = v34;
    sub_10026423C(2, &v76);
    sub_10026423C(1, v35);
    v72 = v61;
    v73 = v62;
    sub_100264250(&v72, v35, v36, v37);
    v38 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      sub_100264250(&v72, &v76, &v75, &v74);
      v30 = 0;
      v72 = v66;
      v73 = v67;
      sub_100264250(&v72, &v76, &v75, &v74);
      _os_log_impl(&_mh_execute_header, v70, v71, "Performing change operation: %s", v32, 0xCu);
      sub_10026429C(v33);
      sub_10026429C(v34);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v70);
  (*(v49 + 8))(v48, v51);
  sub_1003BBE7C();
  v29 = (*(v42 + 88))(v45, v41);
  if (v29 == enum case for ChangeOperation.disable(_:))
  {
    v27 = v46[3];
    v28 = v46[4];
    sub_10027EC3C(v46, v27);
    return (*(v28 + 8))(0, v27);
  }

  else if (v29 == enum case for ChangeOperation.enable(_:))
  {
    v25 = v46[3];
    v26 = v46[4];
    sub_10027EC3C(v46, v25);
    return (*(v26 + 8))(1, v25);
  }

  else if (v29 == enum case for ChangeOperation.toggle(_:))
  {
    v24 = v46[3];
    v23 = v46[4];
    sub_10027EC3C(v46, v24);
    return (*(v23 + 16))(v24);
  }

  else
  {
    return (*(v42 + 8))(v45, v41);
  }
}

uint64_t sub_1003BA7D0()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1003BA838()
{
  v9 = "Will appear in Shortcuts or Siri as a reference to message list.";
  v0 = sub_10025C9B0(&qword_1006D6280);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = type metadata accessor for TypeDisplayRepresentation();
  v7 = qword_1006F01A8;
  sub_10002094C(v8, qword_1006F01A8);
  v18 = sub_1000208F4(v8, v7);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message List", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 64;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1003BAB34()
{
  if (qword_1006D6048 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  return sub_1000208F4(v0, qword_1006F01A8);
}

uint64_t sub_1003BABA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003BAB34();
  v1 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003BAC04()
{
  if (qword_1006D6050 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1003BAC78@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MessageListEntity() + 20);
  v2 = type metadata accessor for DisplayRepresentation();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1003BACF0(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = type metadata accessor for DisplayRepresentation();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for MessageListEntity();
  (*(v8 + 40))(v1 + *(v2 + 20), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1003BAEC8()
{
  v9 = "Will appear in Shortcuts or Siri as reference to toggling the filter on or off.";
  v0 = sub_10025C9B0(&qword_1006D6280);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = type metadata accessor for TypeDisplayRepresentation();
  v7 = qword_1006F01C0;
  sub_10002094C(v8, qword_1006F01C0);
  v18 = sub_1000208F4(v8, v7);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filter", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 79;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1003BB1C4()
{
  if (qword_1006D6058 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  return sub_1000208F4(v0, qword_1006F01C0);
}

uint64_t sub_1003BB230@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003BB1C4();
  v1 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003BB294()
{
  v12 = "Will appear in Shortcuts or Siri as reference to toggling the filter on or off.";
  v0 = sub_10025C9B0(&unk_1006D9D00);
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v23 = &v6 - v6;
  v1 = sub_10025C9B0(&qword_1006D6280);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v22 = &v6 - v7;
  v26 = 0;
  v8 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v15 = &v6 - v8;
  v9 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v14 = &v6 - v9;
  v10 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v13 = &v6 - v10;
  v18 = type metadata accessor for LocalizedStringResource();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v21 = &v6 - v11;
  v25 = sub_10025C9B0(&qword_1006DAD90);
  v24 = _allocateUninitializedArray<A>(_:)();
  v20 = v2;
  v19 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filter", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  sub_10025D410(v15);
  v29 = v12;
  v30 = 79;
  v31 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v22, v19, v19, v18);
  v3 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v3 - 8) + 56))(v23, v19);
  DisplayRepresentation.init(title:subtitle:image:)();
  v4 = v24;
  sub_1002612B0();
  v28 = v4;
  v27 = type metadata accessor for DisplayRepresentation();
  sub_1003BDC14();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006F01D8 = result;
  return result;
}

uint64_t *sub_1003BB67C()
{
  if (qword_1006D6060 != -1)
  {
    swift_once();
  }

  return &qword_1006F01D8;
}

uint64_t sub_1003BB6DC()
{
  v1 = *sub_1003BB67C();

  return v1;
}

BOOL sub_1003BB70C(uint64_t a1, void *a2)
{
  string._countAndFlagsBits = a1;
  string._object = a2;
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = "filter";
  *(v3 + 8) = 6;
  *(v3 + 16) = 2;
  sub_1002612B0();
  v6 = _findStringSwitchCase(cases:string:)(v2, string);

  return v6 != 0;
}

uint64_t sub_1003BB7E4()
{
  result = _allocateUninitializedArray<A>(_:)();
  sub_1002612B0();
  return result;
}

BOOL sub_1003BB974@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003BB70C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1003BB9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BB824();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1003BBA84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BB7E4();
  *a1 = result;
  return result;
}

uint64_t sub_1003BBAB0@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = &v3 - v6;
  *&v7[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filter Action", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v7[1] & 1);
  sub_100015CC0();
  sub_10025D410(v12);
  v13 = 0;
  v14 = 0;
  v15 = *v7 & 0x100;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003BBC84()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_1003BBCDC()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_1003BBD34(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_1003BBDE0;
}

void sub_1003BBDE0(void **a1)
{
  v1 = *a1;
  v1[5](v1, 0);

  free(v1);
}

uint64_t sub_1003BBE7C()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_1003BBED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v6[1] = a2;
  v9 = a3;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = type metadata accessor for ChangeOperation();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v6 - v7;
  v16 = __chkstk_darwin(v12);
  v14 = v4;
  v15 = a3;

  (*(v10 + 16))(v8, v12, v13);
  IntentParameter.wrappedValue.setter();

  return (*(v10 + 8))(v12, v13);
}

void (*sub_1003BC010(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  v5 = sub_100294700(0x30uLL);
  *a1 = v5;
  v5[4] = a3;

  v5[5] = IntentParameter.wrappedValue.modify();
  return sub_1003BBDE0;
}

uint64_t sub_1003BC0BC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3[1] = a2;
  v7 = type metadata accessor for ChangeOperation();
  v5 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v6 = v3 - v5;
  sub_1003BBE7C();
  return String.init<A>(describing:)();
}

uint64_t sub_1003BC160()
{
  v46 = &v56;
  v56 = 0;
  v57 = 0;
  v0 = sub_10025C9B0(&qword_1006DAF48);
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v6 - v6;
  v32 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v43 = &v6 - v7;
  v2 = sub_10025C9B0(&unk_1006D7080);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v42 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v8);
  v41 = &v6 - v9;
  v10 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v39 = &v6 - v10;
  v11 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v28 = &v6 - v11;
  v12 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v27 = &v6 - v12;
  v13 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v25 = &v6 - v13;
  v29 = type metadata accessor for LocalizedStringResource();
  v16 = *(v29 - 8);
  v17 = v29 - 8;
  v14 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v45 = &v6 - v14;
  sub_10025C9B0(&qword_1006DAF50);
  *&v33[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filter Setting", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v23 = "AppIntents";
  v24 = 10;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v33[1] & 1);
  sub_100015CC0();
  sub_10025D410(v28);
  v53 = 0;
  v54 = 0;
  v55 = *v33 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = *(v16 + 56);
  v30 = v16 + 56;
  v31(v39, *&v33[1], *&v33[1], v29);
  v20 = &v52;
  v52 = v33[1] & 1;
  v34 = type metadata accessor for IntentDialog();
  v4 = *(v34 - 8);
  v36 = *(v4 + 56);
  v35 = v4 + 56;
  v36(v41, *&v33[1]);
  (v36)(v42, *&v33[1], *&v33[1], v34);
  v19 = sub_1003BE6BC();
  v21 = sub_1003BDD0C();
  v22 = 16;
  v18 = &unk_10065D1B8;
  sub_1003BD8F8(v43);
  sub_1003BD968(v18, v19, v21);
  v48 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();

  v56 = v48;
  sub_10025C9B0(&qword_1006DAF58);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Change operation", v22, v33[1] & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v23, v24, v33[1] & 1);
  sub_100015CC0();
  sub_10025D410(v28);
  v49 = 0;
  v50 = 0;
  v51 = *v33 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31(v39, *&v33[1], *&v33[1], v29);
  v37 = type metadata accessor for ChangeOperation();
  (*(*(v37 - 8) + 56))(v40, *&v33[1]);
  (v36)(v41, *&v33[1], *&v33[1], v34);
  (v36)(v42, *&v33[1], *&v33[1], v34);
  v38 = sub_1003BF324();
  v44 = sub_1003BF3A4();
  sub_1003BD8F8(v43);
  sub_1003BD968(v37, v38, v44);
  v47 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();

  v57 = v47;
  sub_10027EB24();
  return v48;
}

void (*sub_1003BC9A4(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003BC010(v3, *v1, v1[1]);
  return sub_10034C098;
}

void (*sub_1003BCA5C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003BBD34(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003BCAEC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003B9454(a1, v6, v7);
}

uint64_t sub_1003BCBB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BC160();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1003BCBF4()
{
  v1 = sub_1003BCBE8();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1003BCC4C(char a1)
{
  v2 = sub_1003BCBE8();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1003BCCA0@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = &v3 - v6;
  *&v7[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Search Messages", 0xFuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v7[1] & 1);
  sub_100015CC0();
  sub_10025D410(v12);
  v13 = 0;
  v14 = 0;
  v15 = *v7 & 0x100;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003BCE68()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_1003BCEF0(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003BCF8C()
{
  v23 = &v26;
  v26 = 0;
  v15 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v7 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v22 = &v6 - v7;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v21 = &v6 - v8;
  v2 = sub_10025C9B0(&unk_1006D8270);
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v20 = &v6 - v9;
  v10 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v18 = &v6 - v10;
  v14 = type metadata accessor for LocalizedStringResource();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v17 = &v6 - v11;
  sub_10025C9B0(&qword_1006DAF40);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Search phrase", 0xDuLL, 1);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v12 + 56))(v18, v16, v16, v14);
  v19 = v25;
  v25[0] = 0;
  v25[1] = 0;
  v3 = type metadata accessor for String.IntentInputOptions();
  (*(*(v3 - 8) + 56))(v20, v16);
  v4 = type metadata accessor for IntentDialog();
  (*(*(v4 - 8) + 56))(v21, v16);
  sub_10028DFEC();
  sub_1003BD8F8(v22);
  v24 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();

  v26 = v24;
  sub_100268928();
  return v24;
}

void (*sub_1003BD328(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_1003BCEF0(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003BD3D0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003B99C0(a1, v6);
}

uint64_t sub_1003BD490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003BCF8C();
  *a1 = result;
  return result;
}

uint64_t sub_1003BD4BC(uint64_t a1, uint64_t a2)
{
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return _swift_task_switch(sub_1003BD4F8, 0);
}

uint64_t sub_1003BD4F8()
{
  *(v0 + 32) = v0;
  sub_100367A00();
  swift_allocError();
  *v1 = 0;
  v1[1] = 0;
  swift_willThrow();
  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_1003BD5C0(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = a1;
  return _swift_task_switch(sub_1003BD5F4, 0);
}

uint64_t sub_1003BD5F4()
{
  *(v0 + 16) = v0;
  sub_100367A00();
  swift_allocError();
  *v1 = 0;
  v1[1] = 0;
  swift_willThrow();
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_1003BD6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_1003BD4BC(a2, a3);
}

uint64_t sub_1003BD77C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1003BD5C0(a1);
}

uint64_t sub_1003BD830(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1003BDE04();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_1003BD8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for InputConnectionBehavior.default(_:);
  v1 = type metadata accessor for InputConnectionBehavior();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1003BD968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v11 = a1;
  v6 = *(*(*(a3 + 16) + 8) + 16);
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = 0;
  v7 = &protocol requirements base descriptor for CaseIterable;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v4 - v5;
  v8 = swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getAssociatedConformanceWitness();
  return Array.init<A>(_:)();
}

uint64_t type metadata accessor for MessageListEntity()
{
  v1 = qword_1006DAF08;
  if (!qword_1006DAF08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1003BDB14()
{
  v2 = qword_1006DAD80;
  if (!qword_1006DAD80)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDB94()
{
  v2 = qword_1006DAD88;
  if (!qword_1006DAD88)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDC14()
{
  v2 = qword_1006DAD98;
  if (!qword_1006DAD98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDC90()
{
  v2 = qword_1006DADA0;
  if (!qword_1006DADA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDD0C()
{
  v2 = qword_1006DADA8;
  if (!qword_1006DADA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDD88()
{
  v2 = qword_1006DADB0;
  if (!qword_1006DADB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDE04()
{
  v2 = qword_1006DADB8;
  if (!qword_1006DADB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDE98()
{
  v2 = qword_1006DADC0;
  if (!qword_1006DADC0)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDF30()
{
  v2 = qword_1006DADC8;
  if (!qword_1006DADC8)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BDFC8()
{
  v2 = qword_1006DADD0;
  if (!qword_1006DADD0)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE078()
{
  v2 = qword_1006DADD8;
  if (!qword_1006DADD8)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE110()
{
  v2 = qword_1006DADE0;
  if (!qword_1006DADE0)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE1A8()
{
  v2 = qword_1006DADE8;
  if (!qword_1006DADE8)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE270()
{
  v2 = qword_1006DADF0;
  if (!qword_1006DADF0)
  {
    sub_10025CAA4(&qword_1006DADF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DADF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE328()
{
  v2 = qword_1006DAE00;
  if (!qword_1006DAE00)
  {
    type metadata accessor for MessageListEntity();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE3C0()
{
  v2 = qword_1006DAE08;
  if (!qword_1006DAE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE454()
{
  v2 = qword_1006DAE10;
  if (!qword_1006DAE10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE4E8()
{
  v2 = qword_1006DAE18;
  if (!qword_1006DAE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE594()
{
  v2 = qword_1006DAE20;
  if (!qword_1006DAE20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE628()
{
  v2 = qword_1006DAE28;
  if (!qword_1006DAE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE6BC()
{
  v2 = qword_1006DAE30;
  if (!qword_1006DAE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE7C4()
{
  v2 = qword_1006DAE38;
  if (!qword_1006DAE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE858()
{
  v2 = qword_1006DAE40;
  if (!qword_1006DAE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE904()
{
  v2 = qword_1006DAE48;
  if (!qword_1006DAE48)
  {
    sub_10025CAA4(&qword_1006DAE50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BE9A4()
{
  v2 = qword_1006DAE58;
  if (!qword_1006DAE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BEAF8()
{
  v2 = qword_1006DAE70;
  if (!qword_1006DAE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BEC4C()
{
  v2 = qword_1006DAE88;
  if (!qword_1006DAE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BECE0()
{
  v2 = qword_1006DAE90;
  if (!qword_1006DAE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BED8C()
{
  v2 = qword_1006DAE98;
  if (!qword_1006DAE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BEE20()
{
  v2 = qword_1006DAEA0;
  if (!qword_1006DAEA0)
  {
    sub_10025CAA4(&qword_1006DAEA8);
    sub_1003BE1A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAEA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003BEF08()
{
  v2 = type metadata accessor for DisplayRepresentation();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1003BEFB4(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1003BF104(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1003BF324()
{
  v2 = qword_1006DAF60;
  if (!qword_1006DAF60)
  {
    type metadata accessor for ChangeOperation();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003BF3A4()
{
  v2 = qword_1006DAF68;
  if (!qword_1006DAF68)
  {
    type metadata accessor for ChangeOperation();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAF68);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1003BF424(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1003BF60C()
{
  v2 = qword_1006DAF70;
  if (!qword_1006DAF70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAF70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003BF750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1003BF818()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1003BF924(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v6 = a3;
  v9 = type metadata accessor for IndexPath();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v3 = &v5 - v5;
  v10 = &v5 - v5;
  swift_getObjectType();
  (*(v7 + 16))(v3, v6, v9);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v9);
  v14 = [v11 messageListSeparatorController:v12 isExpandedParentAtIndexPath:isa];
  _objc_release(isa);
  return v14;
}

uint64_t sub_1003BFA64(void *a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v7 = type metadata accessor for IndexPath();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v3 - v4;
  swift_getObjectType();
  IndexPath.mui_next.getter();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v7);
  v12 = [v9 messageListSeparatorController:v10 isExpandedParentAtIndexPath:isa];
  _objc_release(isa);
  return v12;
}

uint64_t sub_1003BFB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v6 = a3;
  v9 = type metadata accessor for IndexPath();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v3 = &v5 - v5;
  v10 = &v5 - v5;
  swift_getObjectType();
  (*(v7 + 16))(v3, v6, v9);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v9);
  v14 = [v11 messageListSeparatorController:v12 isExpandedChildAtIndexPath:isa];
  _objc_release(isa);
  return v14;
}

uint64_t sub_1003BFCBC(void *a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v7 = type metadata accessor for IndexPath();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v3 - v4;
  swift_getObjectType();
  IndexPath.mui_next.getter();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v7);
  v12 = [v9 messageListSeparatorController:v10 isExpandedChildAtIndexPath:isa];
  _objc_release(isa);
  return v12;
}

uint64_t sub_1003BFE10@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>, uint64_t (*a7)(void), uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t (*a13)(void), uint64_t a14, uint64_t (*a15)(void))
{
  if (a1)
  {
    v50 = 1;
  }

  else
  {
    v50 = a2;
  }

  if (v50)
  {
    if (a1)
    {
      v49 = a2;
    }

    else
    {
      v49 = 0;
    }

    v48 = v49 ^ 1;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    v47 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v15 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
    return (*(*(v15 - 8) + 104))(a6, v47);
  }

  else
  {
    if (a3)
    {
      v46 = 1;
    }

    else
    {
      v46 = a4;
    }

    if (v46)
    {
      if (a3)
      {
        v45 = a4;
      }

      else
      {
        v45 = 0;
      }

      v44 = v45 ^ 1;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v43 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v17 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
      return (*(*(v17 - 8) + 104))(a6, v43);
    }

    else
    {
      v41 = a9();
      v18 = a11();
      v42 = v18;
      if (v41)
      {
        v40 = v18 ^ 1;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v39 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
        v19 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
        return (*(*(v19 - 8) + 104))(a6, v39);
      }

      else
      {
        v37 = a7();
        v20 = a15();
        v38 = v20;
        if (v37)
        {
          v36 = v20;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          v35 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
          v21 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
          return (*(*(v21 - 8) + 104))(a6, v35);
        }

        else
        {
          v34 = a13();
          if (v42)
          {
            v33 = v34 ^ 1;
          }

          else
          {
            v33 = 0;
          }

          if (v33)
          {
            v32 = v41 ^ 1;
          }

          else
          {
            v32 = 0;
          }

          if (v32)
          {
            v31 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
            v22 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
            return (*(*(v22 - 8) + 104))(a6, v31);
          }

          else
          {
            if (v42)
            {
              v30 = v41;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              v29 = v38;
            }

            else
            {
              v29 = 0;
            }

            if (v29)
            {
              v28 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
              v23 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
              return (*(*(v23 - 8) + 104))(a6, v28);
            }

            else if (a5())
            {
              v27 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
              v24 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
              return (*(*(v24 - 8) + 104))(a6, v27);
            }

            else
            {
              v26 = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
              v25 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
              return (*(*(v25 - 8) + 104))(a6, v26);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1003C0660(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1003C07C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1003C09F0()
{
  v2 = qword_1006DAFA8;
  if (!qword_1006DAFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C0A6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a1;
  v3[9] = v3;
  v3[7] = 0;
  v3[8] = 0;
  v3[10] = 0;
  v4 = *a2;
  v3[13] = *a2;
  v5 = a2[1];
  v3[14] = v5;
  v3[7] = v4;
  v3[8] = v5;
  v3[10] = a3 + 16;
  return _swift_task_switch(sub_1003C0AD0, 0);
}

uint64_t sub_1003C0AD0()
{
  v0[9] = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0[5] = sub_100014038();
  v0[6] = &off_10065D4D8;
  v0[2] = Strong;
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C0BA8, v1);
}

uint64_t sub_1003C0BA8()
{
  v1 = v0[14];
  v2 = v0[13];
  v0[9] = v0;
  sub_1003B9F3C(v2, v1, v0 + 2);

  sub_1000160F4((v0 + 2));

  return _swift_task_switch(sub_1003C0C40, 0);
}

uint64_t sub_1003C0C40()
{
  v3 = *(v0 + 88);
  *(v0 + 72) = v0;
  v3[3] = sub_10025C9B0(&qword_1006D7C40);
  v3[4] = sub_100282234();
  sub_10026AC9C(v3);
  static IntentResult.result<>()();
  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_1003C0D0C(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C0A6C(a1, a2, v7);
}

uint64_t sub_1003C0DD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[6] = a3;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *a2;
  v3[7] = *a2;
  v3[3] = v4;
  v3[4] = a3 + 16;
  return _swift_task_switch(sub_1003C0E24, 0);
}

uint64_t sub_1003C0E24()
{
  v5 = *(v0 + 40);
  *(v0 + 16) = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1003BA7D0();
  v3 = String._bridgeToObjectiveC()();

  _objc_retain(@"currentMailbox");
  [Strong beginSearchWithQueryString:v3 scope:@"currentMailbox"];
  _objc_release(@"currentMailbox");
  _objc_release(v3);
  _objc_release(Strong);
  v5[3] = sub_10025C9B0(&qword_1006D7C40);
  v5[4] = sub_100282234();
  sub_10026AC9C(v5);
  static IntentResult.result<>()();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1003C0F90(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C0DD0(a1, a2, v7);
}

uint64_t sub_1003C1054(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v28 = 0;
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v40 = a1;
  v41 = a2;
  v3 = v2;
  v26 = [v2 collectionView];

  v24 = [v26 mui_sortedIndexPathsForVisibleItems];
  v23 = v24;
  v25 = type metadata accessor for IndexPath();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v27;
  v4 = v2;
  v34 = v2;
  v29 = sub_10025C9B0(&unk_1006DAFC0);
  v30 = sub_1003C1558();
  sub_1003C15BC();
  v32 = v31;
  v33 = Sequence.compactMap<A>(_:)();
  if (v31)
  {

    __break(1u);
  }

  else
  {
    v13 = v33;
    v17 = 0;

    sub_100264880();
    v37 = v33;
    v36 = v33;

    v14 = &v10;
    __chkstk_darwin(&v10);
    v15 = v9;
    v9[2] = v22;
    v9[3] = v5;
    v16 = sub_10025C9B0(&qword_1006DAFD8);
    sub_1003C1CBC();
    v6 = v17;
    v7 = Sequence.compactMap<A>(_:)();
    v18 = v6;
    v19 = v7;
    if (!v6)
    {
      v11 = v19;
      v12 = 0;

      v35 = v11;

      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1003C1304(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a3;
  v14 = a1;
  v13 = a2;
  v23 = 0;
  v22 = 0;
  v17 = type metadata accessor for IndexPath();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v4 = &v7 - v12;
  v18 = &v7 - v12;
  v23 = v5;
  v22 = v3;
  _objc_retain(v3);
  v20 = [v13 collectionView];
  _objc_release(v13);
  (*(v15 + 16))(v4, v14, v17);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v15 + 8))(v18, v17);
  v21 = [v20 cellForItemAtIndexPath:isa];
  _objc_release(isa);
  _objc_release(v20);
  if (v21)
  {
    v10 = v21;
    v8 = v21;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v6)
    {
      *v11 = v9;
    }

    else
    {
      _objc_release(v8);
      *v11 = 0;
    }
  }

  else
  {
    *v11 = 0;
  }
}

unint64_t sub_1003C1558()
{
  v2 = qword_1006DBB80;
  if (!qword_1006DBB80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBB80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003C15BC()
{
  v2 = qword_1006DAFD0;
  if (!qword_1006DAFD0)
  {
    sub_10025CAA4(&unk_1006DAFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFD0);
    return WitnessTable;
  }

  return v2;
}

void sub_1003C1644(id *a1@<X0>, void *a2@<X8>)
{
  v22 = [*a1 cellHelper];
  v23 = [v22 cellView];
  swift_getObjectType();
  v24 = [v23 viewModel];
  if (v24)
  {
    _objc_release(v23);
    v14 = [v24 address];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v2;
    _objc_release(v14);
    v17 = [v24 subject];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v3;
    _objc_release(v17);
    v20 = [v22 messageListItem];
    sub_1002686CC();
    v4 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
    if (v4)
    {
      swift_unknownObjectRetain();

      sub_1003AFE00(v20, v15, v16, v19, v18, v25);
      memcpy(a2, v25, 0x38uLL);
      swift_unknownObjectRelease();

      _objc_release(v24);
      _objc_release(v22);
    }

    else
    {
      v12 = [v24 address];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
      sub_100268744();
      _objc_release(v12);
      if (v13)
      {
        swift_unknownObjectRetain();

        sub_1003AFE00(v20, v15, v16, v19, v18, v26);
        memcpy(a2, v26, 0x38uLL);
        swift_unknownObjectRelease();

        _objc_release(v24);
        _objc_release(v22);
      }

      else
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = [v20 summary];
        if (v11)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v5;
          _objc_release(v11);
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        swift_unknownObjectRelease();
        if (v10)
        {
          v7 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
          sub_100268744();
          v8 = v7 & 1;
        }

        else
        {
          v8 = 2;
        }

        if (v8 == 2)
        {
          v6 = 0;
        }

        else
        {
          v6 = v8;
        }

        if (v6)
        {
          swift_unknownObjectRetain();

          sub_1003AFE00(v20, v15, v16, v19, v18, v27);
          memcpy(a2, v27, 0x38uLL);
        }

        else
        {
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
          a2[3] = 0;
          a2[4] = 0;
          a2[5] = 0;
          a2[6] = 0;
        }

        swift_unknownObjectRelease();

        _objc_release(v24);
        _objc_release(v22);
      }
    }
  }

  else
  {
    _objc_release(v23);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = 0;
    _objc_release(v22);
  }
}