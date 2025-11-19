uint64_t sub_1000E8E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000E4EA8(v4);
}

uint64_t sub_1000E8E38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E8E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_1000E5950(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E8F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E8FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000E9020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v73 = a2;
  v71 = a4;
  v5 = type metadata accessor for AppHeroModel();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v59 = &v56 - v9;
  v70 = sub_100002BE4(&qword_100170E18, &qword_100119A88);
  v61 = *(v70 - 8);
  v10 = *(v61 + 64);
  __chkstk_darwin(v70);
  v60 = &v56 - v11;
  v72 = sub_100002BE4(&qword_100170E20, &qword_100119A90);
  v63 = *(v72 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v72);
  v62 = &v56 - v13;
  v68 = sub_100002BE4(&qword_100170E28, &qword_100119A98);
  v14 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v16 = &v56 - v15;
  v67 = sub_100002BE4(&qword_100170E30, &qword_100119AA0);
  v65 = *(v67 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v67);
  v19 = &v56 - v18;
  v69 = sub_100002BE4(&qword_100170E38, &unk_100119AA8);
  v66 = *(v69 - 8);
  v20 = *(v66 + 64);
  __chkstk_darwin(v69);
  v22 = &v56 - v21;
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (a1 + *(v5 + 28));
  v29 = v28[1];
  if (v29)
  {
    v62 = v16;
    v63 = a1;
    v30 = *v28;

    v31 = v64;
    if ((v64 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v24 + 8))(v27, v23);
    }

    v33 = sub_10000D220(v30, v29);

    v34 = swift_allocObject();
    v35 = v73;
    *(v34 + 16) = v73;
    *(v34 + 24) = v31 & 1;
    *(v34 + 32) = v30;
    *(v34 + 40) = v29;
    *(v34 + 48) = v33 & 1;
    __chkstk_darwin(v35);
    *(&v56 - 2) = v63;

    sub_100002BE4(&qword_100170E40, &qword_100119AB8);
    sub_1000EA1B4();
    Button.init(action:label:)();
    v36 = sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0);
    v37 = sub_1000EA3A4();
    v38 = v67;
    View.buttonStyle<A>(_:)();
    (*(v65 + 8))(v19, v38);
    v39 = v66;
    v40 = v69;
    (*(v66 + 16))(v62, v22, v69);
    swift_storeEnumTagMultiPayload();
    v74 = v38;
    v75 = &type metadata for ScalingButtonStyle;
    v76 = v36;
    v77 = v37;
    swift_getOpaqueTypeConformance2();
    v41 = sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88);
    v74 = v70;
    v75 = &type metadata for ScalingButtonStyle;
    v76 = v41;
    v77 = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v39 + 8))(v22, v40);
  }

  else
  {
    v43 = type metadata accessor for ButtonRole();
    (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
    sub_1000E9E30(a1 + *(v5 + 40), &v74);
    v44 = a1;
    v45 = v58;
    sub_100075D08(v44, v58);
    v46 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v47 = swift_allocObject();
    sub_1000EA0EC(v45, v47 + v46);
    sub_100002BE4(&qword_100170E40, &qword_100119AB8);
    sub_1000EA1B4();
    v48 = v60;
    ActionButton.init(role:action:label:)();
    v49 = sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88);
    v50 = sub_1000EA3A4();
    v51 = v62;
    v52 = v70;
    View.buttonStyle<A>(_:)();
    (*(v61 + 8))(v48, v52);
    v53 = v63;
    v54 = v72;
    (*(v63 + 16))(v16, v51, v72);
    swift_storeEnumTagMultiPayload();
    v55 = sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0);
    v74 = v67;
    v75 = &type metadata for ScalingButtonStyle;
    v76 = v55;
    v77 = v50;
    swift_getOpaqueTypeConformance2();
    v74 = v52;
    v75 = &type metadata for ScalingButtonStyle;
    v76 = v49;
    v77 = v50;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v53 + 8))(v51, v54);
  }
}

uint64_t sub_1000E9A20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
  }

  sub_10000D854(a3, a4, (a5 & 1) == 0);

  sub_10004F388(0);
  v17[3] = &_s20TetsuoAnalyticsEventON;
  v17[4] = sub_1000250D8();
  if (a5)
  {
    LOBYTE(v17[0]) = 14;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    return sub_1000052E4(v17);
  }

  else
  {
    LOBYTE(v17[0]) = 13;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    sub_1000052E4(v17);
    return sub_10004B668(0.0, a3, a4, 2u);
  }
}

uint64_t sub_1000E9C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100075D08(a1, a2);
  v3 = a2 + *(type metadata accessor for AppHeroView() + 20);
  type metadata accessor for DiscoveryFeedStateProvider();
  sub_1000EA468(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider);
  result = Environment.init<A>(_:)();
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1000E9CC4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_10002C0D4();

  return _ComponentBody.init(_:)();
}

unint64_t sub_1000E9D30()
{
  result = qword_100170E10;
  if (!qword_100170E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E10);
  }

  return result;
}

uint64_t sub_1000E9E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A230, &unk_10010F030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9EA0()
{
  v1 = type metadata accessor for AppHeroModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7] + 8);

  v11 = v1[9];
  v12 = type metadata accessor for Models.Menu();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = (v5 + v1[10]);
  if (v14[3])
  {
    sub_1000052E4(v14);
  }

  v15 = *(v5 + v1[11] + 8);

  v16 = *(v5 + v1[12] + 8);

  v17 = *(v5 + v1[13] + 8);

  v18 = *(v5 + v1[14] + 8);

  v19 = *(v5 + v1[15] + 8);

  v20 = *(v5 + v1[16] + 8);

  v21 = *(v5 + v1[17] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EA0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000EA1B4()
{
  result = qword_100170E48;
  if (!qword_100170E48)
  {
    sub_10000459C(&qword_100170E40, &qword_100119AB8);
    sub_1000EA240();
    sub_1000EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E48);
  }

  return result;
}

unint64_t sub_1000EA240()
{
  result = qword_100170E50;
  if (!qword_100170E50)
  {
    sub_10000459C(&qword_100170E58, &qword_100119AC0);
    sub_1000EA468(&qword_100170E60, type metadata accessor for AppHeroView);
    sub_1000EA2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E50);
  }

  return result;
}

unint64_t sub_1000EA2FC()
{
  result = qword_100170E68;
  if (!qword_100170E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E68);
  }

  return result;
}

unint64_t sub_1000EA350()
{
  result = qword_100170E70;
  if (!qword_100170E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E70);
  }

  return result;
}

unint64_t sub_1000EA3A4()
{
  result = qword_100170E80;
  if (!qword_100170E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E80);
  }

  return result;
}

uint64_t sub_1000EA3F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000EA468(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000EA4B4()
{
  result = qword_100170E90;
  if (!qword_100170E90)
  {
    sub_10000459C(&qword_100170E98, &qword_100119AC8);
    sub_10000459C(&qword_100170E30, &qword_100119AA0);
    sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0);
    sub_1000EA3A4();
    swift_getOpaqueTypeConformance2();
    sub_10000459C(&qword_100170E18, &qword_100119A88);
    sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E90);
  }

  return result;
}

id sub_1000EA638()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      v6 = sub_10006889C(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_1000076F0(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000EA7C8()
{
  result = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000EA848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TipDestinationAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000EA908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TipDestinationAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000EA9CC()
{
  sub_1000B03A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TipDestinationAction(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000EAA5C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1000EAA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Tip(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000EAB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Tip(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ListTipView()
{
  result = qword_100171040;
  if (!qword_100171040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000EAC50()
{
  result = type metadata accessor for Tip(319);
  if (v1 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EACF0()
{
  v1 = type metadata accessor for AutomationSemantics();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListTipView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100002BE4(&qword_100171078, &unk_100119B90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  sub_1000EBAA4(v0, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListTipView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1000EB944(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v26 = v0;
  sub_100002BE4(&qword_100171080, &unk_100119BA0);
  sub_100012C48(&qword_100171088, &qword_100171080, &unk_100119BA0);
  Button.init(action:label:)();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v15 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10010FEE0;
  v19 = (v18 + v17);
  *v19 = 1;
  swift_storeEnumTagMultiPayload();
  v20 = (v19 + v16);
  v21 = *(v0 + 24);
  *v20 = *(v0 + 16);
  v20[1] = v21;
  swift_storeEnumTagMultiPayload();

  sub_1000FCC48(0xC0u, v18, v4);
  swift_setDeallocating();
  v22 = *(v18 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012C48(&qword_100171090, &qword_100171078, &unk_100119B90);
  View.automationSemantics(_:)();
  (*(v24 + 8))(v4, v25);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000EB0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_100171098, &qword_100119BB0);
  return sub_1000EB154(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000EB154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipLabelView();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v60 = type metadata accessor for AutomationSemantics();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v60);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100002BE4(&qword_1001710A0, &qword_100119BB8);
  v14 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v16 = (&v56 - v15);
  v17 = sub_100002BE4(&qword_1001710A8, &qword_100119BC0);
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  __chkstk_darwin(v17);
  v61 = &v56 - v19;
  v20 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v56 - v25;
  v27 = *(a1 + 56);
  if (v27)
  {
    v56 = *(a1 + 48);
    swift_bridgeObjectRetain_n();
    v28 = Image.init(_:bundle:)();
    v58 = v10;
    v29 = v28;
    v30 = *(sub_100002BE4(&qword_1001710C0, &qword_100119BD8) + 36);
    v59 = a2;
    v31 = v16 + v30;
    static Material.regular.getter();
    v32 = static Edge.Set.all.getter();
    v57 = v11;
    v31[*(sub_100002BE4(&qword_1001710C8, &qword_100119BE0) + 36)] = v32;
    *v16 = v29;
    v33 = (v16 + *(sub_100002BE4(&qword_1001710D0, &qword_100119BE8) + 36));
    v34 = *(type metadata accessor for RoundedRectangle() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = type metadata accessor for RoundedCornerStyle();
    (*(*(v36 - 8) + 104))(&v33->i8[v34], v35, v36);
    *v33 = vdupq_n_s64(0x4040000000000000uLL);
    *(v33->i16 + *(sub_100002BE4(&qword_1001710D8, &unk_100119BF0) + 56)) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v37 = (v16 + *(v65 + 36));
    v38 = v67;
    *v37 = v66;
    v37[1] = v38;
    v37[2] = v68;
    sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
    v39 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType() - 8);
    v40 = v24;
    v41 = a1;
    v42 = v8;
    v43 = *(v39 + 72);
    v44 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10010FEE0;
    v46 = (v45 + v44);
    *v46 = 257;
    swift_storeEnumTagMultiPayload();
    v47 = (v46 + v43);
    v8 = v42;
    a1 = v41;
    v24 = v40;
    *v47 = v56;
    v47[1] = v27;
    swift_storeEnumTagMultiPayload();
    v48 = v62;
    sub_1000FCC48(0xC0u, v45, v62);
    swift_setDeallocating();
    v49 = *(v45 + 16);
    v10 = v58;
    swift_arrayDestroy();
    a2 = v59;
    swift_deallocClassInstance();
    sub_1000EBBD0();
    v50 = v61;
    View.automationSemantics(_:)();
    (*(v57 + 8))(v48, v60);
    sub_1000EBDCC(v16);
    v52 = v63;
    v51 = v64;
    (*(v63 + 32))(v26, v50, v64);
    (*(v52 + 56))(v26, 0, 1, v51);
  }

  else
  {
    (*(v63 + 56))(&v56 - v25, 1, 1, v64);
  }

  sub_1000EBAA4(a1, v10, type metadata accessor for Tip);
  sub_1000EBA34(v26, v24);
  sub_1000EBAA4(v10, v8, type metadata accessor for TipLabelView);
  sub_1000EBA34(v24, a2);
  v53 = sub_100002BE4(&qword_1001710B8, &qword_100119BD0);
  sub_1000EBAA4(v8, a2 + *(v53 + 48), type metadata accessor for TipLabelView);
  v54 = a2 + *(v53 + 64);
  *v54 = 0;
  *(v54 + 8) = 0;
  sub_1000EBB0C(v10);
  sub_1000EBB68(v26);
  sub_1000EBB0C(v8);
  return sub_1000EBB68(v24);
}

uint64_t sub_1000EB7B8()
{
  v1 = type metadata accessor for ListTipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(type metadata accessor for Tip(0) + 32);
  type metadata accessor for TipDestinationAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100002BE4(&qword_10016C220, &qword_100112330);
    if (!(*(*(v11 - 8) + 48))(v5 + v10, 7, v11))
    {
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 8))(v5 + v10, v12);
    }
  }

  v13 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EB944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListTipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EB9A8()
{
  v1 = type metadata accessor for ListTipView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = v2 + *(v1 + 20);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = type metadata accessor for Tip(0);
  return v5(v2 + *(v6 + 32));
}

uint64_t sub_1000EBA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EBAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000EBB0C(uint64_t a1)
{
  v2 = type metadata accessor for TipLabelView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EBB68(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EBBD0()
{
  result = qword_1001710E0;
  if (!qword_1001710E0)
  {
    sub_10000459C(&qword_1001710A0, &qword_100119BB8);
    sub_1000EBC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710E0);
  }

  return result;
}

unint64_t sub_1000EBC5C()
{
  result = qword_1001710E8;
  if (!qword_1001710E8)
  {
    sub_10000459C(&qword_1001710D0, &qword_100119BE8);
    sub_1000EBD14();
    sub_100012C48(&qword_100171100, &qword_1001710D8, &unk_100119BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710E8);
  }

  return result;
}

unint64_t sub_1000EBD14()
{
  result = qword_1001710F0;
  if (!qword_1001710F0)
  {
    sub_10000459C(&qword_1001710C0, &qword_100119BD8);
    sub_100012C48(&qword_1001710F8, &qword_1001710C8, &qword_100119BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710F0);
  }

  return result;
}

uint64_t sub_1000EBDCC(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001710A0, &qword_100119BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EBE34()
{
  sub_10000459C(&qword_100171078, &unk_100119B90);
  sub_100012C48(&qword_100171090, &qword_100171078, &unk_100119B90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000EBECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000EBEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1000EBF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000EC004(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1000EC524();
  if (*(v5 + 16) && (v6 = sub_10006899C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    return static Color.clear.getter();
  }
}

unint64_t sub_1000EC084()
{
  v1 = *v0;
  v2 = 0x6E6F6349707061;
  if (v1 != 4)
  {
    v2 = 0x70796C476F676F6CLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000017;
  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000EC154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EDCC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EC17C(uint64_t a1)
{
  v2 = sub_1000ED728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC1B8(uint64_t a1)
{
  v2 = sub_1000ED728();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000EC1F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000ECF44(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x150uLL);
  }

  return result;
}

uint64_t sub_1000EC240()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x726F6C6F43656F6ALL;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 1)
  {
    v5 = 860910441;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EC2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EE21C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EC310(uint64_t a1)
{
  v2 = sub_1000EDF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC34C(uint64_t a1)
{
  v2 = sub_1000EDF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000EC388@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000ECC54(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1000EC3CC()
{
  v1 = 0x6874646977;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000EC43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EE418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EC464(uint64_t a1)
{
  v2 = sub_1000EDED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC4A0(uint64_t a1)
{
  v2 = sub_1000EDED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000EC4DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EDAB4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000EC524()
{
  v75 = type metadata accessor for Color.RGBColorSpace();
  v0 = *(v75 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v75);
  v74 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RawColor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v83 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100002BE4(&qword_100171190, &unk_10011A140);
  v7 = *(*(v82 - 8) + 64);
  v8 = __chkstk_darwin(v82);
  v85 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v63 - v11;
  v12 = __chkstk_darwin(v10);
  v86 = &v63 - v13;
  __chkstk_darwin(v12);
  v71 = &v63 - v14;
  v15 = static RegexUtilities.extractJoeColors(from:)();
  v16 = sub_10000BC78(_swiftEmptyArrayStorage);
  v17 = 0;
  v19 = v15 + 64;
  v18 = *(v15 + 64);
  v76 = v15;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v70 = v4 + 16;
  v69 = v4 + 32;
  v68 = enum case for Color.RGBColorSpace.sRGB(_:);
  v67 = (v0 + 104);
  v73 = v4;
  v64 = v15 + 64;
  v63 = v23;
  v66 = v3;
  v65 = (v4 + 8);
  while (v22)
  {
    v29 = v3;
    v81 = v16;
LABEL_12:
    v31 = __clz(__rbit64(v22)) | (v17 << 6);
    v32 = v76;
    v33 = *(v76 + 48);
    v34 = type metadata accessor for JoeColorType();
    v84 = *(v34 - 8);
    v78 = *(v84 + 72);
    v35 = v71;
    v79 = *(v84 + 16);
    v77 = v84 + 16;
    v79(v71, v33 + v78 * v31, v34);
    v36 = v73;
    v37 = *(v32 + 56) + *(v73 + 72) * v31;
    v38 = v82;
    v39 = *(v82 + 48);
    (*(v73 + 16))(&v35[v39], v37, v29);
    v80 = *(v38 + 48);
    v40 = v84;
    v41 = v86;
    (*(v84 + 32))(v86, v35, v34);
    v42 = *(v36 + 32);
    v42(v80 + v41, &v35[v39], v29);
    v43 = v72;
    sub_1000EE57C(v41, v72);
    v42(v83, (v43 + *(v38 + 48)), v29);
    v44 = *(v40 + 8);
    v84 = v34;
    v44(v43, v34);
    RawColor.redValue.getter();
    RawColor.greenValue.getter();
    RawColor.blueValue.getter();
    (*v67)(v74, v68, v75);
    v45 = Color.init(_:red:green:blue:opacity:)();
    v46 = v85;
    sub_1000EE57C(v86, v85);

    v47 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v47;
    v50 = sub_10006899C(v46);
    v51 = v47[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_25;
    }

    v54 = v49;
    v55 = v47[3];
    v80 = v44;
    if (v55 >= v53)
    {
      v58 = v65;
      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v87;
        if (v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10004EFE4();
        v16 = v87;
        if (v54)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10004DA2C(v53, isUniquelyReferenced_nonNull_native);
      v56 = sub_10006899C(v85);
      v58 = v65;
      if ((v54 & 1) != (v57 & 1))
      {
        goto LABEL_27;
      }

      v50 = v56;
      v16 = v87;
      if (v54)
      {
LABEL_4:
        v24 = v16[7];
        v25 = *(v24 + 8 * v50);
        *(v24 + 8 * v50) = v45;

        v26 = *v58;
        v3 = v66;
        (*v58)(v83, v66);
        sub_100009908(v86, &qword_100171190, &unk_10011A140);
        goto LABEL_5;
      }
    }

    v16[(v50 >> 6) + 8] |= 1 << v50;
    v79((v16[6] + v50 * v78), v85, v84);
    *(v16[7] + 8 * v50) = v45;

    v26 = *v58;
    v3 = v66;
    (*v58)(v83, v66);
    sub_100009908(v86, &qword_100171190, &unk_10011A140);
    v59 = v16[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_26;
    }

    v16[2] = v61;
LABEL_5:
    v22 &= v22 - 1;
    v27 = *(v82 + 48);
    v28 = v85;
    v80(v85, v84);
    v26((v28 + v27), v3);
    v19 = v64;
    v23 = v63;
  }

  while (1)
  {
    v30 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v30 >= v23)
    {

      return v16;
    }

    v22 = *(v19 + 8 * v30);
    ++v17;
    if (v22)
    {
      v29 = v3;
      v81 = v16;
      v17 = v30;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ECC54@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100171150, &qword_100119F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000EDF28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  LOBYTE(v36[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v36[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v36[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36[0]) = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v31 = v16;
  LOBYTE(v36[0]) = 4;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = 5;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v15 & 1;
  v20 = v43 & 1;
  v21 = v9;
  v23 = v22;
  (*(v6 + 8))(v21, v5);
  *&v32 = v12;
  *(&v32 + 1) = v14;
  v24 = v30;
  LOBYTE(v33) = v30;
  v25 = v31;
  *(&v33 + 1) = v31;
  *&v34 = v18;
  BYTE8(v34) = v20;
  *&v35 = v19;
  *(&v35 + 1) = v23;
  sub_1000EDF7C(&v32, v36);
  sub_1000052E4(a1);
  v36[0] = v12;
  v36[1] = v14;
  v37 = v24;
  v38 = v25;
  v39 = v18;
  v40 = v20;
  v41 = v19;
  v42 = v23;
  result = sub_1000EDFB4(v36);
  v27 = v33;
  *a2 = v32;
  a2[1] = v27;
  v28 = v35;
  a2[2] = v34;
  a2[3] = v28;
  return result;
}

uint64_t sub_1000ECF44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  *&v81 = sub_100002BE4(&qword_100171108, &unk_100119D28);
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v81);
  v7 = &v44 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v135 = a1;
  sub_10000524C(a1, v8);
  sub_1000ED728();
  v10 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    sub_1000ED77C(&v114);
    return sub_1000052E4(v135);
  }

  else
  {
    *&v79 = v4;
    v11 = v80;
    v105[0] = 4;
    sub_1000ED7AC();
    v12 = v81;
    v13 = v10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v76 = v106;
    v77 = v107;
    v14 = v109;
    v78 = v108;
    v15 = v110;
    v105[0] = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v75 = v14;
    v17 = v106;
    v16 = v107;
    v73 = v15;
    v74 = v109;
    v71 = v108;
    v72 = v110;
    v105[79] = 0;
    v18 = sub_1000ED800();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v69 = v17;
    v70 = v16;
    v20 = v106;
    v19 = v107;
    v64 = v108;
    v65 = v109;
    v68 = v111;
    v63 = v112;
    v66 = v110;
    v67 = v113;
    memset(v105, 0, 64);
    sub_100009908(v105, &qword_10016EB30, &qword_1001157E0);
    v96[79] = 1;
    *&v62 = v18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v20;
    v61 = v19;
    v22 = v97;
    v21 = v98;
    v54 = v99;
    v55 = v100;
    v56 = v101;
    v57 = v102;
    v58 = v103;
    v59 = v104;
    memset(v96, 0, 64);
    sub_100009908(v96, &qword_10016EB30, &qword_1001157E0);
    v87[79] = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = v22;
    v53 = v21;
    v45 = v88;
    v46 = v89;
    v47 = v90;
    v48 = v91;
    v49 = v92;
    v50 = v93;
    v23 = v95;
    v51 = v94;
    memset(v87, 0, 64);
    sub_100009908(v87, &qword_10016EB30, &qword_1001157E0);
    v82 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v75;
    v25 = v67;
    (*(v79 + 8))(v13, v12);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v81 = v83;
    v62 = v84;
    v79 = v85;
    v44 = v86;
    sub_100009908(&v114, &qword_10016EB30, &qword_1001157E0);
    result = sub_1000052E4(v135);
    v27 = v61;
    *v11 = v60;
    *(v11 + 8) = v27;
    v28 = v65;
    *(v11 + 16) = v64;
    *(v11 + 24) = v28;
    v29 = v68;
    *(v11 + 32) = v66;
    *(v11 + 40) = v29;
    *(v11 + 48) = v63;
    *(v11 + 56) = v25;
    v30 = v53;
    *(v11 + 64) = v52;
    *(v11 + 72) = v30;
    v31 = v55;
    *(v11 + 80) = v54;
    *(v11 + 88) = v31;
    v32 = v57;
    *(v11 + 96) = v56;
    *(v11 + 104) = v32;
    v33 = v59;
    *(v11 + 112) = v58;
    *(v11 + 120) = v33;
    v34 = v46;
    *(v11 + 128) = v45;
    *(v11 + 136) = v34;
    v35 = v48;
    *(v11 + 144) = v47;
    *(v11 + 152) = v35;
    v36 = v50;
    *(v11 + 160) = v49;
    *(v11 + 168) = v36;
    *(v11 + 176) = v51;
    *(v11 + 184) = v23;
    v37 = v62;
    *(v11 + 192) = v81;
    *(v11 + 208) = v37;
    v38 = v44;
    *(v11 + 224) = v79;
    *(v11 + 240) = v38;
    v39 = v77;
    *(v11 + 256) = v76;
    *(v11 + 264) = v39;
    *(v11 + 272) = v78;
    *(v11 + 280) = v24;
    v40 = v69;
    v41 = v70;
    *(v11 + 288) = v73;
    *(v11 + 296) = v40;
    v42 = v71;
    *(v11 + 304) = v41;
    *(v11 + 312) = v42;
    v43 = v72;
    *(v11 + 320) = v74;
    *(v11 + 328) = v43;
  }

  return result;
}

unint64_t sub_1000ED728()
{
  result = qword_100171110;
  if (!qword_100171110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171110);
  }

  return result;
}

unint64_t sub_1000ED7AC()
{
  result = qword_100171118;
  if (!qword_100171118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171118);
  }

  return result;
}

unint64_t sub_1000ED800()
{
  result = qword_100171120;
  if (!qword_100171120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171120);
  }

  return result;
}

uint64_t sub_1000ED864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ED8AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000ED904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ED94C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1000ED9B0()
{
  result = qword_100171128;
  if (!qword_100171128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171128);
  }

  return result;
}

unint64_t sub_1000EDA08()
{
  result = qword_100171130;
  if (!qword_100171130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171130);
  }

  return result;
}

unint64_t sub_1000EDA60()
{
  result = qword_100171138;
  if (!qword_100171138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171138);
  }

  return result;
}

uint64_t sub_1000EDAB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100171140, &qword_100119F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000EDED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v24 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v23 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = sub_1000052E4(a1);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_1000EDCC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001001201C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001201E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100120200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100120220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70796C476F676F6CLL && a2 == 0xE900000000000068)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1000EDED4()
{
  result = qword_100171148;
  if (!qword_100171148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171148);
  }

  return result;
}

unint64_t sub_1000EDF28()
{
  result = qword_100171158;
  if (!qword_100171158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171158);
  }

  return result;
}

unint64_t sub_1000EE010()
{
  result = qword_100171160;
  if (!qword_100171160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171160);
  }

  return result;
}

unint64_t sub_1000EE068()
{
  result = qword_100171168;
  if (!qword_100171168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171168);
  }

  return result;
}

unint64_t sub_1000EE0C0()
{
  result = qword_100171170;
  if (!qword_100171170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171170);
  }

  return result;
}

unint64_t sub_1000EE118()
{
  result = qword_100171178;
  if (!qword_100171178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171178);
  }

  return result;
}

unint64_t sub_1000EE170()
{
  result = qword_100171180;
  if (!qword_100171180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171180);
  }

  return result;
}

unint64_t sub_1000EE1C8()
{
  result = qword_100171188;
  if (!qword_100171188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171188);
  }

  return result;
}

uint64_t sub_1000EE21C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 860910441 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43656F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100120240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000EE418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100120240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000EE57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171190, &unk_10011A140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000F2450(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009908(v12, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000EE8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000F2450(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009908(v12, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000EEBEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000EECBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  type metadata accessor for AppDelegate();
  sub_1000F25B0(&qword_10016A710, type metadata accessor for AppDelegate);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v9 = type metadata accessor for TetsuoApp();
  v10 = a1 + v9[5];
  v11 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 integerForKey:v12];

  LOBYTE(v24) = v13 < static BundleIdentifierConstants.currentPrivacyVersion.getter();
  State.init(wrappedValue:)();
  v14 = v26;
  *v10 = v25;
  *(v10 + 8) = v14;
  v15 = v9[6];
  v25 = 0xD000000000000013;
  v26 = 0x800000010011FAA0;
  if (qword_100168FB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlowAction();
  sub_1000F25B0(&qword_100170288, type metadata accessor for FlowAction);
  sub_1000F25B0(&qword_100170740, type metadata accessor for FlowAction);

  FlowAuthority.init(initialTabSelection:tabContent:)();
  (*(v3 + 16))(v23, v8, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v8, v2);
  v16 = (a1 + v9[7]);
  v17 = type metadata accessor for AppState();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  ObservationRegistrar.init()();
  v24 = v20;
  result = State.init(wrappedValue:)();
  v22 = v26;
  *v16 = v25;
  v16[1] = v22;
  return result;
}

uint64_t sub_1000EF030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for TetsuoApp();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = v5;
  v7 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_1001712E8, &unk_10011A240);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  sub_1000EF508(a1, &v41 - v10);
  v12 = *(v8 + 36);
  if (qword_100168F30 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for ColorScheme();
  v14 = sub_100006B0C(v13, qword_100182180);
  v15 = *(v13 - 8);
  (*(v15 + 16))(&v11[v12], v14, v13);
  (*(v15 + 56))(&v11[v12], 0, 1, v13);
  v16 = a1 + *(v3 + 20);
  v17 = *v16;
  v18 = *(v16 + 8);
  v48 = v17;
  v49 = v18;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  sub_1000F1B64(a1, v7);
  v41 = a1;
  v43 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v19 = v43;
  v44 = v6;
  v20 = swift_allocObject();
  sub_1000F1BCC(v7, v20 + v19);
  sub_100002BE4(&qword_1001712F0, &qword_10011A250);
  v42 = v7;
  sub_1000F1D6C();
  v21 = sub_10001E6A8();
  v46 = &type metadata for PrivacyView;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v45;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000F1FE4(v11);
  v23 = (v22 + *(sub_100002BE4(&qword_100171338, &qword_10011A270) + 36));
  *v23 = sub_1000EFD30;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v24 = v41;
  v25 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v26 = *&v25[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider];

  v27 = v22 + *(sub_100002BE4(&qword_100171340, &qword_10011A288) + 36);
  v28 = enum case for ScenePhase.active(_:);
  v29 = type metadata accessor for ScenePhase();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  v30 = (v27 + *(type metadata accessor for ScenePhaseViewModifier(0) + 20));
  *v30 = &unk_10011A280;
  v30[1] = v26;
  v31 = [objc_opt_self() defaultCenter];
  v32 = static NSNotificationName.applicationRecievedPushNotification.getter();
  v33 = sub_100002BE4(&qword_100171270, &qword_10011A1C8);
  v34 = v22 + *(v33 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v35 = v24;
  v36 = v42;
  sub_1000F1B64(v35, v42);
  v37 = v43;
  v38 = swift_allocObject();
  result = sub_1000F1BCC(v36, v38 + v37);
  v40 = (v22 + *(v33 + 56));
  *v40 = sub_1000F20DC;
  v40[1] = v38;
  return result;
}

uint64_t sub_1000EF508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TetsuoAppMainView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100002BE4(&qword_100171348, &qword_10011A2B0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v42);
  v11 = &v40 - v10;
  v12 = sub_100002BE4(&qword_100171350, &qword_10011A2B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for TetsuoApp();
  v17 = (a1 + v16[5]);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v43) = v18;
  v44 = v19;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for AppState();
    v21 = sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView);
    v22 = sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    v43 = v4;
    v44 = v20;
    v45 = v21;
    v46 = v22;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v41 = v8;
    v24 = v16[6];
    v25 = *(v4 + 28);
    sub_100002BE4(&qword_1001711A8, &qword_10011A158);
    State.projectedValue.getter();
    type metadata accessor for AppDelegate();
    sub_1000F25B0(&qword_10016A710, type metadata accessor for AppDelegate);
    *v7 = EnvironmentObject.init()();
    *(v7 + 1) = v26;
    type metadata accessor for SceneDelegate();
    sub_1000F25B0(&qword_10016D538, type metadata accessor for SceneDelegate);
    *(v7 + 2) = EnvironmentObject.init()();
    *(v7 + 3) = v27;
    v28 = type metadata accessor for AppState();
    v29 = sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    v40 = a2;
    v30 = v29;
    *(v7 + 4) = Environment.init<A>(_:)();
    v7[40] = v31 & 1;
    v32 = &v7[*(v4 + 32)];
    LOBYTE(v47) = 0;
    State.init(wrappedValue:)();
    v33 = v44;
    *v32 = v43;
    *(v32 + 1) = v33;
    v34 = (a1 + v16[7]);
    v36 = *v34;
    v35 = v34[1];
    v43 = v36;
    v44 = v35;
    sub_100002BE4(&qword_1001712E0, &qword_10011A210);
    State.wrappedValue.getter();
    v37 = sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView);
    View.environment<A>(_:)();

    sub_1000F25F8(v7);
    v39 = v41;
    v38 = v42;
    (*(v41 + 16))(v15, v11, v42);
    swift_storeEnumTagMultiPayload();
    v43 = v4;
    v44 = v28;
    v45 = v37;
    v46 = v30;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v39 + 8))(v11, v38);
  }
}

uint64_t sub_1000EFA34(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoApp();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000F1B64(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000F1BCC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v8[0] = sub_1000F22D0;
  v8[1] = v6;
  sub_10001E6A8();
  View.interactiveDismissDisabled(_:)();
}

uint64_t sub_1000EFB58(uint64_t a1)
{
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16[-v4];
  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v6 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v7 = [objc_opt_self() currentNotificationCenter];
  [v7 setDelegate:v6];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v6;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000EE5F8(0, 0, v5, &unk_10011A290, v11);

  v12 = (a1 + *(type metadata accessor for TetsuoApp() + 20));
  v13 = *v12;
  v14 = *(v12 + 1);
  v16[16] = v13;
  v17 = v14;
  v16[15] = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  return State.wrappedValue.setter();
}

void sub_1000EFD30()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.clearURLCacheOnLaunch.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = [objc_opt_self() sharedURLCache];
    [v3 removeAllCachedResponses];
  }
}

uint64_t sub_1000EFE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000866E0();
}

uint64_t sub_1000EFEA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v26 - v5;
  started = type metadata accessor for JetStartUpCoordinator();
  v8 = *(started - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(started);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_100181FA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100006B44(0x70416F7573746554, 0xE900000000000070, v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s Notification will push to the Discover tab.", v15, 0xCu);
    sub_1000052E4(v16);
  }

  v17 = type metadata accessor for TetsuoApp();
  v18 = (a2 + *(v17 + 28));
  v20 = *v18;
  v19 = v18[1];
  v28[0] = v20;
  v28[1] = v19;
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  v21 = v27;
  if (*(v27 + 16))
  {
    KeyPath = swift_getKeyPath();
    v26[1] = v26;
    __chkstk_darwin(KeyPath);
    v26[-2] = v21;
    LOBYTE(v26[-1]) = 0;
    v28[0] = v21;
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v23 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v24 = *(v17 + 24);
  sub_100002BE4(&qword_1001711A8, &qword_10011A158);
  State.projectedValue.getter();
  sub_1000F4BD8(v6, v11);

  sub_100009908(v6, &unk_100170700, &unk_1001153F0);
  JetStartUpCoordinator.restart()();
  return (*(v8 + 8))(v11, started);
}

uint64_t sub_1000F028C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_100002BE4(&qword_100171298, &qword_10011A1D8);
  v2 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v4 = &v20 - v3;
  v21 = sub_100002BE4(&qword_1001712A0, &qword_10011A1E0);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CommandGroupPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100002BE4(&qword_1001712A8, &qword_10011A1E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  static CommandGroupPlacement.toolbar.getter();
  v24 = v1;
  sub_100002BE4(&qword_1001712B0, &qword_10011A1F0);
  sub_100012C48(&qword_1001712B8, &qword_1001712B0, &qword_10011A1F0);
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.help.getter();
  sub_100002BE4(&qword_1001712C0, &qword_10011A1F8);
  sub_100012C48(&qword_1001712C8, &qword_1001712C0, &qword_10011A1F8);
  CommandGroup.init(replacing:addition:)();
  v16 = *(v22 + 48);
  (*(v12 + 16))(v4, v15, v11);
  v17 = &v4[v16];
  v18 = v21;
  (*(v5 + 16))(v17, v8, v21);
  TupleCommandContent.init(_:)();
  (*(v5 + 8))(v8, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000F05F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v62 = type metadata accessor for KeyEquivalent();
  v64 = *(v62 - 8);
  v3 = *(v64 + 64);
  v4 = __chkstk_darwin(v62);
  v58 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = v48 - v6;
  v7 = type metadata accessor for TetsuoApp();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v61 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v63 = *(v61 - 8);
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v61);
  v54 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  v15 = sub_100002BE4(&qword_1001712D0, &qword_10011A200);
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  v17 = __chkstk_darwin(v15);
  v56 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v55 = v48 - v20;
  v21 = __chkstk_darwin(v19);
  v53 = v48 - v22;
  __chkstk_darwin(v21);
  v60 = v48 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  v52 = a1;
  sub_1000F1B64(a1, v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v50 = v9;
  v25 = swift_allocObject();
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F1BCC(v51, v25 + v24);
  v26 = v49;
  Button<>.init(_:action:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v27 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v27)
  {
    EventModifiers.init(rawValue:)();
  }

  v28 = sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
  v29 = v61;
  v48[1] = v28;
  View.keyboardShortcut(_:modifiers:)();
  v30 = *(v64 + 8);
  v64 += 8;
  v30(v26, v62);
  v31 = *(v63 + 8);
  v63 += 8;
  v31(v14, v29);
  LocalizedStringKey.init(stringLiteral:)();
  v32 = v51;
  sub_1000F1B64(v52, v51);
  v33 = swift_allocObject();
  sub_1000F1BCC(v32, v33 + v24);
  v34 = v54;
  Button<>.init(_:action:)();
  v35 = v58;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v36 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v36)
  {
    EventModifiers.init(rawValue:)();
  }

  v37 = v53;
  v38 = v61;
  View.keyboardShortcut(_:modifiers:)();
  v30(v35, v62);
  v31(v34, v38);
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = v55;
  v42 = v60;
  v40(v55, v60, v15);
  v43 = v56;
  v40(v56, v37, v15);
  v44 = v59;
  v40(v59, v41, v15);
  v45 = sub_100002BE4(&qword_1001712D8, &qword_10011A208);
  v40(&v44[*(v45 + 48)], v43, v15);
  v46 = *(v39 + 8);
  v46(v37, v15);
  v46(v42, v15);
  v46(v43, v15);
  return (v46)(v41, v15);
}

uint64_t sub_1000F0C78(uint64_t a1)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Selected Discover tab via menu item", v5, 2u);
  }

  v6 = (a1 + *(type metadata accessor for TetsuoApp() + 28));
  v10 = *v6;
  v11 = v6[1];
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  if (*(v9 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000F0E80(uint64_t a1)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Selected Device tab via menu item", v5, 2u);
  }

  v6 = (a1 + *(type metadata accessor for TetsuoApp() + 28));
  v10 = *v6;
  v11 = v6[1];
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  if (*(v9 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000F1090()
{
  v0 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    LocalizedStringKey.init(stringLiteral:)();
    (*(v5 + 16))(v9, v11, v4);
    Link<>.init(_:destination:)();
    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_1000F12A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = sub_100002BE4(&qword_100171260, &qword_10011A1B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_100002BE4(&qword_100171268, &qword_10011A1C0);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_1000F1B64(v3, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1000F1BCC(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_100002BE4(&qword_100171270, &qword_10011A1C8);
  sub_100012C48(&qword_100171278, &qword_100171270, &qword_10011A1C8);
  WindowGroup.init(id:title:lazyContent:)();
  v27 = v3;
  v18 = sub_100002BE4(&qword_100171280, &qword_10011A1D0);
  v19 = sub_100012C48(&qword_100171288, &qword_100171260, &qword_10011A1B8);
  v20 = sub_100012C48(&qword_100171290, &qword_100171280, &qword_10011A1D0);
  Scene.commands<A>(content:)();
  (*(v7 + 8))(v10, v6);
  v28 = v6;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v25 + 8))(v15, v21);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TetsuoApp();
  sub_1000F25B0(&qword_100171198, type metadata accessor for TetsuoApp);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for TetsuoApp()
{
  result = qword_100171208;
  if (!qword_100171208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F1714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002BE4(&qword_1001711A8, &qword_10011A158);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000F184C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100002BE4(&qword_1001711A8, &qword_10011A158);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000F196C()
{
  sub_1000F1AE4(319, &qword_100171218, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v0 <= 0x3F)
  {
    sub_100071908();
    if (v1 <= 0x3F)
    {
      sub_1000F1A80();
      if (v2 <= 0x3F)
      {
        sub_1000F1AE4(319, &unk_100171228, type metadata accessor for AppState, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F1A80()
{
  if (!qword_100171220)
  {
    sub_10000459C(&qword_100170710, &qword_10011A170);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100171220);
    }
  }
}

void sub_1000F1AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000F1B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1CE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TetsuoApp() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000F1D6C()
{
  result = qword_1001712F8;
  if (!qword_1001712F8)
  {
    sub_10000459C(&qword_1001712E8, &unk_10011A240);
    sub_1000F1E24();
    sub_100012C48(&qword_100171328, &qword_100171330, &qword_10011A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001712F8);
  }

  return result;
}

unint64_t sub_1000F1E24()
{
  result = qword_100171300;
  if (!qword_100171300)
  {
    sub_10000459C(&qword_100171308, &qword_10011A258);
    sub_1000F1EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171300);
  }

  return result;
}

unint64_t sub_1000F1EA8()
{
  result = qword_100171310;
  if (!qword_100171310)
  {
    sub_10000459C(&qword_100171318, &qword_10011A260);
    type metadata accessor for TetsuoAppMainView();
    type metadata accessor for AppState();
    sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171310);
  }

  return result;
}

uint64_t sub_1000F1FE4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001712E8, &unk_10011A240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F204C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000EFE14();
}

uint64_t sub_1000F20DC(uint64_t a1)
{
  v3 = *(type metadata accessor for TetsuoApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000EFEA4(a1, v4);
}

uint64_t sub_1000F214C()
{
  v1 = (type metadata accessor for TetsuoApp() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = v0 + v3 + v1[8];
  v8 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_100002BE4(&qword_1001711A8, &qword_10011A158) + 28));

  v10 = (v0 + v3 + v1[9]);
  v11 = *v10;

  v12 = v10[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F22E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TetsuoApp() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000F235C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F239C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F4DE0(a1, v4, v5, v6);
}

uint64_t sub_1000F2450(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F24C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F24F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100024388;

  return sub_10008C010(a1, v5);
}

uint64_t sub_1000F25B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F25F8(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoAppMainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F2654(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000F2748;

  return v6(v2 + 32);
}

uint64_t sub_1000F2748()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000F285C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100024388;

  return sub_1000F2654(a1, v5);
}

uint64_t sub_1000F2914(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FA04;

  return sub_1000F2654(a1, v5);
}

uint64_t sub_1000F29CC()
{
  sub_10000459C(&qword_100171260, &qword_10011A1B8);
  sub_10000459C(&qword_100171280, &qword_10011A1D0);
  sub_100012C48(&qword_100171288, &qword_100171260, &qword_10011A1B8);
  sub_100012C48(&qword_100171290, &qword_100171280, &qword_10011A1D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F2B54(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20[-v8 - 8];
  v10 = sub_100002BE4(&qword_100171360, &unk_10011A3B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20[-v13 - 8];
  v15 = type metadata accessor for ButtonRole();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_1000E9E30(a1 + *(v3 + 68), v20);
  sub_10001FEB8(a1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1000F3178(&v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v17 + v16);
  sub_100002BE4(&qword_100171368, &qword_10011A3C8);
  sub_1000F324C();
  ActionButton.init(role:action:label:)();
  sub_1000F33DC();
  sub_1000EA3A4();
  View.buttonStyle<A>(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000F2DFC()
{
  sub_10002BF18();

  return _ComponentBody.init(_:)();
}

unint64_t sub_1000F2E44()
{
  result = qword_100171358;
  if (!qword_100171358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171358);
  }

  return result;
}

uint64_t sub_1000F2F44()
{
  v1 = type metadata accessor for EpicShowcaseComponentModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v5 + v1[6] + 8);

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = (v5 + v1[11]);
  v15 = v14[4];
  if (v15)
  {
    if (v15 == 1)
    {
      goto LABEL_13;
    }

    v16 = v14[7];
  }

  if (v14[12])
  {

    v17 = v14[15];
  }

  if (v14[20])
  {

    v18 = v14[23];
  }

  if (v14[28])
  {

    v19 = v14[31];
  }

  v20 = v14[36];

  v21 = v14[41];

LABEL_13:
  v22 = *(v5 + v1[12] + 8);

  v23 = *(v5 + v1[13] + 8);

  v24 = *(v5 + v1[14]);

  v25 = (v5 + v1[15]);
  if (v25[3])
  {
    sub_1000052E4(v25);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F3178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F31DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpicShowcaseComponentModel() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001FEB8(v4, a1);
}

unint64_t sub_1000F324C()
{
  result = qword_100171370;
  if (!qword_100171370)
  {
    sub_10000459C(&qword_100171368, &qword_10011A3C8);
    sub_1000F32D8();
    sub_1000EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171370);
  }

  return result;
}

unint64_t sub_1000F32D8()
{
  result = qword_100171378;
  if (!qword_100171378)
  {
    sub_10000459C(&qword_100171380, qword_10011A3D0);
    sub_1000F3394(&qword_100171388, type metadata accessor for EpicShowcaseView);
    sub_1000EA2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171378);
  }

  return result;
}

uint64_t sub_1000F3394(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F33DC()
{
  result = qword_100171390;
  if (!qword_100171390)
  {
    sub_10000459C(&qword_100171360, &unk_10011A3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171390);
  }

  return result;
}

uint64_t sub_1000F3440()
{
  sub_10000459C(&qword_100171360, &unk_10011A3B8);
  sub_1000F33DC();
  sub_1000EA3A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F34B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000FBCE4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000FBCE4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000F92DC(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000FBCE4(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1000F35D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_1000F3680(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100084488(v4);
}

id sub_1000F36AC()
{
  v1 = v0;
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for MobileGestaltCoordinator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_startupCoordinator;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 56))(&v1[v11], 1, 1, started);
  v13 = type metadata accessor for NetworkStatusCoordinator();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = NetworkStatusCoordinator.init()();
  v17 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_networkStatusCoordinator;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_networkStatusCoordinator] = v16;
  type metadata accessor for PageViewScrollAnalyticsCoordinator();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = 0;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator] = v18;
  type metadata accessor for PushNotificationDispatch();
  v19 = PushNotificationDispatch.__allocating_init()();
  v20 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pushNotificationDispatch;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pushNotificationDispatch] = v19;
  updated = type metadata accessor for SoftwareUpdateProvider();
  v22 = *(updated + 48);
  v23 = *(updated + 52);
  swift_allocObject();

  v25 = sub_1000E2FD8(v24);

  v57 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider] = v25;
  v26 = *&v1[v17];
  v27 = *&v1[v20];
  v28 = type metadata accessor for DeviceProvider();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = sub_10008CAB4(v26, v27);

  v32 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider] = v31;
  MobileGestaltCoordinator.init()();
  v33 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
  (*(v7 + 32))(&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator], v10, v6);
  v34 = [objc_allocWithZone(HKHealthStore) init];
  v35 = type metadata accessor for PrescriptionProvider();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  *(v38 + 16) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(v38 + 24) = v34;
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v38;
  v41 = v34;

  sub_1000EE5F8(0, 0, v5, &unk_10011A588, v40);

  v42 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider] = v38;
  v43 = type metadata accessor for TipProvider();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_1000E5068();
  v47 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider] = v46;
  (*(v7 + 16))(v10, &v1[v33], v6);
  LOBYTE(v38) = MobileGestaltCoordinator.isPadDevice.getter();
  (*(v7 + 8))(v10, v6);
  v48 = 2;
  if (v38)
  {
    v48 = 30;
  }

  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = v48;
  v49 = *&v1[v32];
  v50 = *&v1[v42];
  v51 = *&v1[v57];
  v52 = *&v1[v47];
  type metadata accessor for TetsuoObjectGraph();
  v53 = swift_allocObject();
  v53[2] = v49;
  v53[3] = v50;
  v53[4] = v51;
  v53[5] = v52;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_jetObjectGraph] = v53;
  v54 = type metadata accessor for AppDelegate();
  v58.receiver = v1;
  v58.super_class = v54;

  return objc_msgSendSuper2(&v58, "init");
}

uint64_t sub_1000F3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1000F3C24;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_1000F3C24()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_1000FC038;
  }

  else
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_1000F3DA8;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1000F3DA8()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
  swift_getKeyPath();
  v0[7] = v3;
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  byte_10016BF08 = *(*(v3 + 16) + 16) != 0;
  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 2;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F4250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F42EC, v6, v5);
}

uint64_t sub_1000F42EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v4);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v0[8] = v6;
  v7 = v5;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1000F43F8;
  v10 = v0[5];

  return sub_1000F9E68(v6);
}

uint64_t sub_1000F43F8(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v5[2](v5, a1);
  _Block_release(v5);
  v8 = *(v10 + 8);

  return v8();
}

void sub_1000F4664()
{
  v1 = v0;
  v2 = MobileGestaltCoordinator.isPadDevice.getter();
  v3 = 2;
  if (v2)
  {
    v3 = 30;
  }

  v4 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = v3;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181FA0);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v14 = *&v1[v4];
    v15 = v10;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100006B44(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Reset to standard orientations: %{public}s", v9, 0xCu);
    sub_1000052E4(v10);
  }

  sub_1000F4980();
}

void sub_1000F4800()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = 30;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v12 = *&v1[v2];
    v13 = v8;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100006B44(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Enabled AirPlay receiver orientations: %{public}s", v7, 0xCu);
    sub_1000052E4(v8);
  }

  sub_1000F4980();
}

void sub_1000F4980()
{
  v1 = v0;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Refreshing orientation", v5, 2u);
  }

  v6 = [objc_opt_self() currentDevice];
  v7 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations);
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v6 setValue:isa forKey:v9];

  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 connectedScenes];

  sub_100015140();
  sub_1000FBE40(&qword_100171520, sub_100015140);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1000F34B8(v12);

  if (v13)
  {
    v14 = sub_100036844();

    [v14 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

uint64_t sub_1000F4BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_startupCoordinator;
  swift_beginAccess();
  sub_10000C178(v2 + v12, v11, &unk_100171510, &unk_100118EC0);
  started = type metadata accessor for JetStartUpCoordinator();
  v14 = *(started - 8);
  if ((*(v14 + 48))(v11, 1, started) != 1)
  {
    return (*(v14 + 32))(a2, v11, started);
  }

  sub_100009908(v11, &unk_100171510, &unk_100118EC0);
  v15 = a1;
  v16 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_jetObjectGraph);
  sub_1000D2BF8(v15, a2);
  (*(v14 + 16))(v9, a2, started);
  (*(v14 + 56))(v9, 0, 1, started);
  swift_beginAccess();
  sub_1000FBC74(v9, v16 + v12);
  return swift_endAccess();
}

uint64_t sub_1000F4DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1000F4E90;

  return sub_1000F5034();
}

uint64_t sub_1000F4E90()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F4FCC, v5, v4);
}

uint64_t sub_1000F4FCC()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1000F6DD0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F5034()
{
  v1[37] = v0;
  v1[38] = swift_getObjectType();
  v2 = *(*(sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v4;
  v1[43] = v3;

  return _swift_task_switch(sub_1000F5114, v4, v3);
}

uint64_t sub_1000F5114()
{
  v1 = objc_opt_self();
  v0[44] = v1;
  v2 = [v1 currentNotificationCenter];
  v0[45] = v2;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_1000F525C;
  v3 = swift_continuation_init();
  v0[25] = sub_100002BE4(&qword_1001714F0, &qword_10011A510);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000F5C8C;
  v0[21] = &unk_10015FF98;
  v0[22] = v3;
  [v2 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000F525C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 368) = v3;
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);
  if (v3)
  {
    v6 = sub_1000F5A5C;
  }

  else
  {
    v6 = sub_1000F538C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000F538C()
{
  v1 = *(v0 + 352);

  v2 = [v1 currentNotificationCenter];
  *(v0 + 376) = v2;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 288;
  *(v0 + 88) = sub_1000F54CC;
  v3 = swift_continuation_init();
  *(v0 + 264) = sub_100002BE4(&qword_1001714F8, &qword_10011A518);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1000F5D58;
  *(v0 + 232) = &unk_10015FFC0;
  *(v0 + 240) = v3;
  [v2 getNotificationSettingsWithCompletionHandler:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1000F54CC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *v0;

  return _swift_task_switch(sub_1000F55D4, v2, v1);
}

uint64_t sub_1000F55D4()
{
  v17 = v0;
  v1 = v0[47];
  v2 = v0[36];
  v3 = [v2 authorizationStatus];
  v0[48] = v3;

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182108);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s requested notification authorization; authorizationStatus: %ld", v8, 0x16u);
    sub_1000052E4(v9);
  }

  v13 = swift_task_alloc();
  v0[49] = v13;
  *v13 = v0;
  v13[1] = sub_1000F57C4;
  v14 = v0[37];

  return sub_10007DD5C();
}

uint64_t sub_1000F57C4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 280) = a1;
  v3[34] = v1;
  v4 = v2[49];
  v8 = *v1;

  v5 = v2[43];
  v6 = v2[42];

  return _swift_task_switch(sub_1000F58EC, v6, v5);
}

uint64_t sub_1000F58EC()
{
  v1 = *(v0 + 328);

  v2 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 280);
    static UserDefaultUtilities.SharedConstants.isRestrictedGeoKey.getter();
    v5 = String._bridgeToObjectiveC()();

    [v3 setBool:v4 forKey:v5];
  }

  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *(v0 + 384) == 2;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v9;
  *(v12 + 40) = v8;
  sub_1000EE5F8(0, 0, v7, &unk_10011A528, v12);

  sub_10004C92C(v9);
  v13 = *(v0 + 312);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000F5A5C()
{
  v22 = v0;
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[41];

  swift_willThrow();

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v4 = v0[46];
  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182108);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[46];
  if (v8)
  {
    v10 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s failed to request notification authorization with error: %@", v11, 0x16u);
    sub_100009908(v12, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v13);
  }

  else
  {
  }

  v18 = v0[39];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000F5C8C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000524C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000F5D58(uint64_t a1, void *a2)
{
  v3 = sub_10000524C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000F5DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 160) = a4;
  v6 = *(*(sub_100002BE4(&unk_100171500, &qword_10011A530) - 8) + 64) + 15;
  *(v5 + 24) = swift_task_alloc();
  *(v5 + 32) = swift_task_alloc();
  v7 = type metadata accessor for Storefront();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v11;
  *(v5 + 88) = v10;

  return _swift_task_switch(sub_1000F5F04, v11, v10);
}

uint64_t sub_1000F5F04()
{
  v26 = v0;
  if (static UserDefaultUtilities.isGetLatestNewsSet()())
  {
    v1 = static UserDefaultUtilities.getLatestNews()() ^ 1;
  }

  else
  {
    v1 = static UserDefaultUtilities.isRestrictedGeo()();
  }

  if (*(v0 + 160) != 1 || (v1 & 1) != 0)
  {
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006B0C(v14, qword_100182108);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 16);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100006B44(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s unregistering for Cloud Channels", v18, 0xCu);
      sub_1000052E4(v19);
    }

    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v23[1] = sub_1000F6CB0;

    return sub_10002E5B0(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182108);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 16);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100006B44(v8, v9, &v25);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s registering for Cloud Channels", v6, 0xCu);
      sub_1000052E4(v7);
    }

    v11 = async function pointer to static Storefront.current.getter[1];
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_1000F628C;
    v13 = *(v0 + 32);

    return static Storefront.current.getter(v13);
  }
}

uint64_t sub_1000F628C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_1000F6388, 0, 0);
}

uint64_t sub_1000F6388()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v0[13] = v4;
  v0[14] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &unk_100171500, &qword_10011A530);
LABEL_3:
    v5 = async function pointer to static Storefront.current.getter[1];
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1000F66E4;
    v7 = v0[3];

    return static Storefront.current.getter(v7);
  }

  (*(v2 + 32))(v0[8], v3, v1);
  v8 = Storefront.countryCode.getter();
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v8 == 5130307 && v9 == 0xE300000000000000)
  {

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v12 + 8))(v10, v11);
    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1000F65C4;

  return sub_10002E5B0(&off_10015A1F0);
}

uint64_t sub_1000F65C4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v4, v3);
}

uint64_t sub_1000F66E4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1000F67E0, 0, 0);
}

uint64_t sub_1000F67E0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v0 + 104))(v3, 1, v2) == 1)
  {
    sub_100009908(v3, &unk_100171500, &qword_10011A530);
LABEL_3:
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_1000F6B00;
    v5 = &off_10015A240;
    goto LABEL_12;
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), v3, v2);
  v6 = Storefront.countryCode.getter();
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  if (v6 == 4281173 && v7 == 0xE300000000000000)
  {

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v9 + 8))(v8, v10);
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1000F69E0;
  v5 = &off_10015A218;
LABEL_12:

  return sub_10002E5B0(v5);
}

uint64_t sub_1000F69E0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v4, v3);
}

uint64_t sub_1000F6B00()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000F6C20, v4, v3);
}

uint64_t sub_1000F6C20()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000F6CB0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v4, v3);
}

void sub_1000F6DD0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedApplication];
  [v0 registerForRemoteNotifications];

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182108);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s registered for remote notifications", v3, 0xCu);
    sub_1000052E4(v4);
  }
}

uint64_t sub_1000F6F64(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = swift_getObjectType();
  v3 = type metadata accessor for PushNotificationDispatchItem();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v7;
  v2[31] = v6;

  return _swift_task_switch(sub_1000F7064, v7, v6);
}

uint64_t sub_1000F7064()
{
  v29 = v0;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for Logger();
  *(v0 + 256) = sub_100006B0C(v2, qword_100182108);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  *(v0 + 264) = *(v1 + 16);
  sub_1000FBA94(v0 + 16, v0 + 72);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_1000FB898(v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 200);
    v9 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v28);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v14 = sub_10001605C(v13);
    v16 = sub_100006B44(v14, v15, v28);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s received remote notification %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 24);
  *(v0 + 280) = v17;
  if (*(v0 + 64) && *(v0 + 64) != 1)
  {
    v22 = *(v0 + 224);

    PushNotificationDispatchItem.init(rawValue:)();
    v23 = *(*(v0 + 192) + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pushNotificationDispatch);
    v24 = *(&async function pointer to dispatch thunk of PushNotificationDispatch.dispatch(_:) + 1);
    v27 = (&async function pointer to dispatch thunk of PushNotificationDispatch.dispatch(_:) + async function pointer to dispatch thunk of PushNotificationDispatch.dispatch(_:));
    v25 = swift_task_alloc();
    *(v0 + 288) = v25;
    *v25 = v0;
    v25[1] = sub_1000F7504;
    v26 = *(v0 + 224);

    return v27(v26);
  }

  else
  {
    v18 = *(v0 + 232);

    v19 = *(v0 + 224);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000F7504()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1000F7820;
  }

  else
  {
    v7 = sub_1000F7640;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000F7640()
{
  v24 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[23];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000FB898(v4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[27];
    v10 = v0[25];
    v21 = v0[26];
    v22 = v0[28];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100006B44(v8, v7, &v23);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s successfully dispatched push notification for zoneName: %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v22, v21);
  }

  else
  {
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[28];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000F7820()
{
  v25 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  (*(v4 + 8))(v2, v3);
  v5 = v0[37];
  v6 = v0[32];
  v7 = v0[23];
  sub_1000FBAF0(v7, (v0 + 16));
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_1000FB898(v7);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[25];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v17 = sub_10001605C(v16);
    v19 = sub_100006B44(v17, v18, &v24);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v20;
    *v12 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s failed to dispatch push notification %s; error: %@", v11, 0x20u);
    sub_100009908(v12, &unk_100169C20, &unk_10010D6B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = v0[28];

  v22 = v0[1];

  return v22();
}

id sub_1000F7A6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_100171440;
  if (!qword_100171440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F7BF8()
{
  v0 = type metadata accessor for MobileGestaltCoordinator();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000F7CEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000F7CEC()
{
  if (!qword_100171450)
  {
    type metadata accessor for JetStartUpCoordinator();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100171450);
    }
  }
}

uint64_t sub_1000F7D44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppDelegate();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F7D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1000F7E38;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_1000F7E38()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_1000FC03C;
  }

  else
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_1000F7FBC;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1000F7FBC()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
  swift_getKeyPath();
  v0[7] = v3;
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  byte_10016BF08 = *(*(v3 + 16) + 16) != 0;
  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 10;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F8330, v6, v5);
}

uint64_t sub_1000F8330()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000F8414;
  v10 = v0[5];
  v11 = v0[3];

  return sub_1000FA94C(v11);
}

uint64_t sub_1000F8414()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000F8714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F87B0, v6, v5);
}

uint64_t sub_1000F87B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000F8894;
  v10 = v0[5];
  v11 = v0[3];

  return (sub_1000FB05C)(v11);
}

uint64_t sub_1000F8894(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1000F8A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100024388;

  return sub_1000F8714(v2, v3, v5, v4);
}

uint64_t sub_1000F8AD8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100024388;

  return v7();
}

uint64_t sub_1000F8BC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100024388;

  return sub_1000F8AD8(v2, v3, v5);
}

uint64_t sub_1000F8C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000FA04;

  return v8();
}

uint64_t sub_1000F8D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000F8C84(a1, v4, v5, v7);
}

uint64_t sub_1000F8E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000C178(a3, v25 - v11, &unk_10016F2B0, &qword_10010F6F0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009908(v12, &unk_10016F2B0, &qword_10010F6F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
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

    sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

    return v23;
  }

LABEL_8:
  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
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

uint64_t sub_1000F9134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F916C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100024388;

  return sub_10008C010(a1, v5);
}

uint64_t sub_1000F9224(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FA04;

  return sub_10008C010(a1, v5);
}

void sub_1000F92DC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100015140();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100015140();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
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

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1000F94DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181FA0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446210;
    if (a1)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      v29 = a1;
      sub_100002BE4(&unk_100171540, &qword_10011A580);
      _print_unlocked<A, B>(_:_:)();
      v13 = v30;
      v14 = v31;
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v15 = sub_100006B44(v13, v14, &v32);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Tetsuo did finish launching with options: %{public}s", v11, 0xCu);
    sub_1000052E4(v12);
  }

  v16 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 integerForKey:v17];

  if (v18 >= static BundleIdentifierConstants.currentPrivacyVersion.getter())
  {
    v19 = [objc_opt_self() currentNotificationCenter];
    [v19 setDelegate:v2];

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = v2;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_1000EE5F8(0, 0, v7, &unk_10011A290, v23);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  type metadata accessor for MainActor();
  v25 = v2;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  sub_1000EE5F8(0, 0, v7, &unk_10011A578, v27);

  return 1;
}

void sub_1000F98CC(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Data.Iterator();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_10003DC0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000FBE40(&qword_100171528, &type metadata accessor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v31)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v27 = xmmword_10010D3B0;
    do
    {
      v11 = v30;
      sub_100002BE4(&unk_100171530, &unk_10011A560);
      v12 = swift_allocObject();
      *(v12 + 16) = v27;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      v28 = v9;
      v29 = v10;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v9 = v28;
      v10 = v29;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v31 != 1);
  }

  (*(v26 + 8))(v7, v4);
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006B0C(v17, qword_100182108);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100006B44(v21, v22, &v28);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = sub_100006B44(v9, v10, &v28);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s did register for remote notifications with deviceToken: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000F9C94()
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100182108);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v2 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v10);

    *(v2 + 4) = v7;
    *(v2 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v8;
    *v3 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s did fail to register for remote notifications with error: %@", v2, 0x16u);
    sub_100009908(v3, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v4);
  }
}

uint64_t sub_1000F9E68(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = swift_getObjectType();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v3;
  v2[22] = v4;

  return _swift_task_switch(sub_1000F9F40, v3, v4);
}

uint64_t sub_1000F9F40()
{
  v33 = v0;
  v1 = *(v0 + 136);
  v2 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 128) = 0;
  v4 = [v2 dataWithJSONObject:isa options:0 error:v0 + 128];

  v5 = *(v0 + 128);
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for JSONDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000FB844();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10003DBB8(v6, v8);

    v29 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v29;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v30 = swift_task_alloc();
    *(v0 + 184) = v30;
    *v30 = v0;
    v30[1] = sub_1000FA354;
    v31 = *(v0 + 144);

    return sub_1000F6F64(v0 + 16);
  }

  else
  {
    v12 = v5;
    v13 = *(v0 + 160);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 136);
    v15 = type metadata accessor for Logger();
    sub_100006B0C(v15, qword_100182108);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 136);
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100006B44(v21, v22, &v32);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = Dictionary.description.getter();
      v26 = sub_100006B44(v24, v25, &v32);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s failed to parse remote notification %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v27 = *(v0 + 8);

    return v27(2);
  }
}

uint64_t sub_1000FA354()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  sub_1000FB898(v1 + 16);
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_1000FA4AC, v4, v3);
}

uint64_t sub_1000FA4AC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(0);
}

id sub_1000FA53C(void *a1, void *a2)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181FA0);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100006B44(v12, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Tetsuo scene will connect with options %{public}s", v8, 0xCu);
    sub_1000052E4(v9);
  }

  v16 = [a1 role];
  v17 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v16];

  v18 = [a1 role];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

LABEL_9:
    type metadata accessor for SceneDelegate();
    [v17 setDelegateClass:swift_getObjCClassFromMetadata()];
    return v17;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_9;
  }

  return v17;
}

uint64_t sub_1000FA7D4()
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v11 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations];
    v12 = v6;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100006B44(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tetsuo supports orientations: %{public}s", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return *&v2[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations];
}

uint64_t sub_1000FA94C(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v2[43] = swift_getObjectType();
  v3 = *(*(sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for MainActor();
  v2[46] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FAA2C, v5, v4);
}

uint64_t sub_1000FAA2C()
{
  v50 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);

  v3 = [v2 notification];
  v4 = [v3 request];

  v5 = [v4 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD000000000000029 && 0x800000010011C840 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v11 = *(v0 + 352);
      v12 = *(v0 + 360);
      v13 = *(v0 + 336);
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      v15 = v13;
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;
      sub_1000EE5F8(0, 0, v11, &unk_10011A4D8, v17);

      v18 = [objc_opt_self() defaultCenter];
      v19 = static NSNotificationName.applicationRecievedPushNotification.getter();
      [v18 postNotificationName:v19 object:0];

      goto LABEL_19;
    }
  }

  v20 = [*(v0 + 328) notification];
  v21 = [v20 request];

  v22 = [v21 content];
  v23 = [v22 userInfo];

  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 264) = 0xD000000000000016;
  *(v0 + 272) = 0x800000010011E3E0;
  AnyHashable.init<A>(_:)();
  if (*(v24 + 16) && (v25 = sub_100068958(v0 + 192), (v26 & 1) != 0))
  {
    sub_1000076F0(*(v24 + 56) + 32 * v25, v0 + 232);
    sub_100064580(v0 + 192);

    if (swift_dynamicCast())
    {
      v45 = *(v0 + 288);
      v46 = *(v0 + 280);
      v48 = [objc_opt_self() defaultCenter];
      if (qword_100168F58 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 328);
      v47 = qword_1001821B0;
      sub_100002BE4(&qword_10016D0B8, &unk_100113360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010FEE0;
      *(v0 + 296) = 0xD000000000000012;
      *(v0 + 304) = 0x800000010011E440;
      AnyHashable.init<A>(_:)();
      v29 = [v27 actionIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v30;
      *(inited + 80) = v32;
      *(v0 + 312) = 0xD000000000000016;
      *(v0 + 320) = 0x800000010011E3E0;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v46;
      *(inited + 152) = v45;
      sub_10000BA38(inited);
      swift_setDeallocating();
      sub_100002BE4(&unk_1001714D0, &qword_10010D1E8);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = v48;
      [v48 postNotificationName:v47 object:0 userInfo:isa];

      goto LABEL_19;
    }
  }

  else
  {

    sub_100064580(v0 + 192);
  }

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006B0C(v34, qword_100182108);
  v18 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v35))
  {
    v36 = *(v0 + 344);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315138;
    v39 = _typeName(_:qualified:)();
    v41 = sub_100006B44(v39, v40, &v49);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v18, v35, "%s Received AcceptDialogNotification doesn't include an identifier user info key.", v37, 0xCu);
    sub_1000052E4(v38);
  }

LABEL_19:

  v42 = *(v0 + 352);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1000FB05C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = swift_getObjectType();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v3;
  v2[22] = v4;

  return _swift_task_switch(sub_1000FB134, v3, v4);
}

uint64_t sub_1000FB134()
{
  v40 = v0;
  v1 = [*(v0 + 136) request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 128) = 0;
  v6 = [v4 dataWithJSONObject:isa options:0 error:v0 + 128];

  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000FB844();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10003DBB8(v8, v10);

    v36 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v36;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v37 = swift_task_alloc();
    *(v0 + 184) = v37;
    *v37 = v0;
    v37[1] = sub_1000FB65C;
    v38 = *(v0 + 144);

    return sub_1000F6F64(v0 + 16);
  }

  else
  {
    v14 = v7;
    v15 = *(v0 + 160);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 136);
    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182108);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 152);
      v22 = *(v0 + 136);
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_100006B44(v24, v25, &v39);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = [v22 request];
      v28 = [v27 content];

      v29 = [v28 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = Dictionary.description.getter();
      v32 = v31;

      v33 = sub_100006B44(v30, v32, &v39);

      *(v23 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s failed to parse remote notification %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v34 = *(v0 + 8);

    return v34(27);
  }
}

uint64_t sub_1000FB65C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  sub_1000FB898(v1 + 16);
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_1000FB7B4, v4, v3);
}

uint64_t sub_1000FB7B4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(27);
}

unint64_t sub_1000FB844()
{
  result = qword_1001714C0;
  if (!qword_1001714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001714C0);
  }

  return result;
}

uint64_t sub_1000FB8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100024388;

  return sub_1000F8294(v2, v3, v5, v4);
}

uint64_t sub_1000FB9B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F7D84(a1, v4, v5, v6);
}

uint64_t sub_1000FBA68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100084488(v4);
}

uint64_t sub_1000FBB78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBBB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000F5DBC(a1, v4, v5, v6, v7);
}

uint64_t sub_1000FBC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FBCE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000FBCF0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBD40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FA04;

  return sub_1000F4250(v2, v3, v5, v4);
}

uint64_t sub_1000FBE00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBE40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FBE88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F3B70(a1, v4, v5, v6);
}

uint64_t sub_1000FBF3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FBF7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100024388;

  return sub_10006957C();
}

Swift::Int sub_1000FC09C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FC168()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000FC220()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000FC2E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FC738(*a1);
  *a2 = result;
  return result;
}

void sub_1000FC318(uint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xEC00000037333966;
  v4 = 0x3763353738766564;
  if (*v1 != 2)
  {
    v4 = 0x6333663735766564;
    v3 = 0xEC00000065373636;
  }

  v5 = 0x3030386431766564;
  if (*v1)
  {
    v2 = 0xEC00000034383065;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1000FC3A0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() helpViewControllerWithIdentifier:v0 version:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 setSelectedHelpTopicID:v3];

    [v2 setPlatformIndependent:1];
    [v2 setShowTopicViewOnLoad:1];
    [v2 setPrefersLandingViewOnLoad:1];
    [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FC4CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000FC3A0();
}

void sub_1000FC4D4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 topViewController];
  if (v4)
  {
    v9 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      [v6 loadHelpTopicID:v7];

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }
  }
}

unint64_t sub_1000FC5A0()
{
  result = qword_100171550;
  if (!qword_100171550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171550);
  }

  return result;
}

uint64_t sub_1000FC5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC6E4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FC658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC6E4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000FC6BC()
{
  sub_1000FC6E4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000FC6E4()
{
  result = qword_100171558;
  if (!qword_100171558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171558);
  }

  return result;
}

unint64_t sub_1000FC738(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A268, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FC784()
{
  swift_getKeyPath();
  sub_1000FCACC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000FC7F4(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000FCACC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FC8CC()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp8AppState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppState()
{
  result = qword_100171590;
  if (!qword_100171590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC9BC()
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

unint64_t sub_1000FCA6C()
{
  result = qword_100171680;
  if (!qword_100171680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171680);
  }

  return result;
}

unint64_t sub_1000FCACC()
{
  result = qword_10016E910;
  if (!qword_10016E910)
  {
    type metadata accessor for AppState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E910);
  }

  return result;
}

Swift::Int sub_1000FCB34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FCC48@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = type metadata accessor for AutomationAttribute();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v53);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = v39 - v10;
  v11 = type metadata accessor for AutomationSemantics();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v50 = v39 - v18;
  __chkstk_darwin(v17);
  v20 = v39 - v19;
  sub_1000FD024(a1);
  if (!a2)
  {
    return (*(v12 + 32))(a3, v20, v11);
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    v40 = a3;
    v22 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType() - 8);
    v23 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v46 = *(v22 + 72);
    v47 = v20;
    v25 = *(v12 + 16);
    v24 = v12 + 16;
    v44 = (v6 + 8);
    v45 = v25;
    v41 = (v24 + 16);
    v42 = (v24 - 8);
    v39[1] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48 = v24;
    v49 = v11;
    v43 = v16;
    v25(v16, v20, v11);
    while (1)
    {
      v30 = v51;
      sub_1000FD17C();
      AutomationAttribute.key.getter();
      v31 = *v44;
      v32 = v30;
      v33 = v53;
      (*v44)(v32, v53);
      v34 = v52;
      sub_1000FD17C();
      v35 = AutomationAttribute.value.getter();
      v37 = v36;
      v31(v34, v33);
      if (v37)
      {
        *(&v55 + 1) = &type metadata for String;
        *&v54 = v35;
        *(&v54 + 1) = v37;
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v26 = v50;
      v27 = v43;
      AutomationSemantics.attribute(key:value:)();

      v28 = *v42;
      v11 = v49;
      (*v42)(v27, v49);
      v20 = v47;
      v28(v47, v11);
      sub_100015CE4(&v54);
      v29 = *v41;
      (*v41)(v20, v26, v11);
      v23 += v46;
      if (!--v21)
      {
        break;
      }

      v45(v27, v20, v11);
    }

    a3 = v40;
  }

  else
  {
    v29 = *(v12 + 32);
  }

  return v29(a3, v20, v11);
}

uint64_t sub_1000FD024(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      v4 = 0u;
      v5 = 0u;
      static AutomationSemantics.page(name:id:)();

      return sub_100015CE4(&v4);
    }

    sub_1000FD8E4(a1);
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    goto LABEL_6;
  }

  if (a1 >> 6 == 2)
  {
    sub_1000FDA28(a1 & 0x3F);
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
LABEL_6:

LABEL_7:
    sub_100015CE4(&v2);
    return sub_100015CE4(&v4);
  }

  if (a1 == 192)
  {
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.actionButton(id:parentId:)();
    goto LABEL_7;
  }

  return static AutomationSemantics.dismissButton()();
}

uint64_t sub_1000FD17C()
{
  v1 = v0;
  v2 = type metadata accessor for AppHeroModel();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000B1328(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v19 = *v9;
        v20 = *(v9 + 1);
        *(&v39 + 1) = &type metadata for String;
        if (!v20)
        {
          v19 = 0x6E776F6E6B6E75;
          v20 = 0xE700000000000000;
        }

        *&v38 = v19;
        *(&v38 + 1) = v20;
      }

      else
      {
        v31 = *v9 == 0;
        v32 = 1702195796;
        if (!*v9)
        {
          v32 = 0x65736C6146;
        }

        v33 = 0xE500000000000000;
        *(&v39 + 1) = &type metadata for String;
        if (!v31)
        {
          v33 = 0xE400000000000000;
        }

        *&v38 = v32;
        *(&v38 + 1) = v33;
      }

      return AutomationAttribute.init(key:value:)();
    }

    if (EnumCaseMultiPayload == 7)
    {
      v23 = *v9;
      v24 = *(v9 + 1);
      *(&v39 + 1) = &type metadata for String;
      if (!v24)
      {
        v23 = 0x6E776F6E6B6E75;
        v24 = 0xE700000000000000;
      }

      *&v38 = v23;
      *(&v38 + 1) = v24;
      return AutomationAttribute.init(key:value:)();
    }

    if (EnumCaseMultiPayload == 8)
    {
      v15 = *v9;
      v16 = *(v9 + 24);
      v38 = *(v9 + 8);
      v39 = v16;
      sub_1000FDC88(&v38, v37);
      AutomationAttribute.init(key:value:)();
      return sub_100015CE4(&v38);
    }

    v27 = *v9;
    v28 = v9[1];
    if (v28 == 5)
    {
      *v9;
      *(&v39 + 1) = &type metadata for String;
      *&v38 = 0x6E776F6E6B6E75;
      *(&v38 + 1) = 0xE700000000000000;
      return AutomationAttribute.init(key:value:)();
    }

    *v9;
    if (v9[1] <= 1u)
    {
      if (v9[1])
      {
        v34 = 0xEF6567616D496E6FLL;
      }

      else
      {
        v34 = 0xEA00000000006E6FLL;
      }

      v36 = 0x754273706954;
    }

    else
    {
      if (v28 == 2)
      {
        v34 = 0xEB00000000736563;
        v35 = 0x69766544206C6C41;
        goto LABEL_52;
      }

      if (v28 == 3)
      {
        v34 = 0xE400000000000000;
        v35 = 1701736260;
LABEL_52:
        *(&v39 + 1) = &type metadata for String;
        *&v38 = v35;
        *(&v38 + 1) = v34;
        return AutomationAttribute.init(key:value:)();
      }

      v34 = 0xEC00000073676E69;
      v36 = 0x65536E65704FLL;
    }

    v35 = v36 & 0xFFFFFFFFFFFFLL | 0x7474000000000000;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *v9;
      v30 = *(v9 + 1);
      *(&v39 + 1) = &type metadata for String;
      if (!v30)
      {
        v29 = 0x6E776F6E6B6E75;
        v30 = 0xE700000000000000;
      }

      *&v38 = v29;
      *(&v38 + 1) = v30;
    }

    else
    {
      v17 = *v9;
      v18 = *(v9 + 1);
      *(&v39 + 1) = &type metadata for String;
      if (!v18)
      {
        v17 = 0x6E776F6E6B6E75;
        v18 = 0xE700000000000000;
      }

      *&v38 = v17;
      *(&v38 + 1) = v18;
    }

    return AutomationAttribute.init(key:value:)();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v9;
    v22 = *(v9 + 1);
    *(&v39 + 1) = &type metadata for String;
    if (!v22)
    {
      v21 = 0x6E776F6E6B6E75;
      v22 = 0xE700000000000000;
    }

    *&v38 = v21;
    *(&v38 + 1) = v22;
    return AutomationAttribute.init(key:value:)();
  }

  if (EnumCaseMultiPayload != 3)
  {
    v25 = *v9;
    v26 = *(v9 + 1);
    *(&v39 + 1) = &type metadata for String;
    if (!v26)
    {
      v25 = 0x6E776F6E6B6E75;
      v26 = 0xE700000000000000;
    }

    *&v38 = v25;
    *(&v38 + 1) = v26;
    return AutomationAttribute.init(key:value:)();
  }

  sub_1000EA0EC(v9, v5);
  v11 = *&v5[*(v2 + 28) + 8] == 0;
  v12 = 0x476C616974617053;
  if (!*&v5[*(v2 + 28) + 8])
  {
    v12 = 0x41636972656E6547;
  }

  v13 = 0xEE007972656C6C61;
  *(&v39 + 1) = &type metadata for String;
  if (v11)
  {
    v13 = 0xEF65726F74537070;
  }

  *&v38 = v12;
  *(&v38 + 1) = v13;
  AutomationAttribute.init(key:value:)();
  return sub_100075D6C(v5);
}

uint64_t sub_1000FD8E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C746954;
    v6 = 0x616D49656C746954;
    if (a1 != 8)
    {
      v6 = 0x657469726F766146;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746F4E74726F6853;
    if (a1 != 5)
    {
      v7 = 0x656E696C676154;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F6349707041;
    v2 = 0x6567646142;
    v3 = 0x7365726E6547;
    if (a1 != 3)
    {
      v3 = 0x65746F4E676E6F4CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B726F77747241;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1000FDA28(char a1)
{
  result = 0x6C74695473706954;
  switch(a1)
  {
    case 1:
      result = 0x7462755373706954;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 8:
      result = 0x6E49656369766544;
      break;
    case 5:
      result = 0x6C65646F4DLL;
      break;
    case 6:
      result = 0x6E6F6973726556;
      break;
    case 7:
      result = 0x4E206C6169726553;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x486E6F6974636553;
      break;
    case 11:
      result = 0x726F4D6E7261654CLL;
      break;
    case 12:
      result = 0x7265746F6F46;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for AutomationUtilities.AutomationAttributeType()
{
  result = qword_1001716F8;
  if (!qword_1001716F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100169A38, &qword_10010D460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FDCF8()
{
  sub_1000FDDE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppHeroModel();
    if (v1 <= 0x3F)
    {
      sub_1000FDE2C();
      if (v2 <= 0x3F)
      {
        sub_1000FDE5C(319, &qword_100171718, &qword_100169A38, &qword_10010D460);
        if (v3 <= 0x3F)
        {
          sub_1000FDE5C(319, &qword_100171720, &unk_100171728, &qword_10011A8A8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000FDDE4()
{
  if (!qword_100171708)
  {
    sub_1000B03A8();
    if (!v1)
    {
      atomic_store(v0, &qword_100171708);
    }
  }
}

void *sub_1000FDE2C()
{
  result = qword_100171710;
  if (!qword_100171710)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100171710);
  }

  return result;
}

void sub_1000FDE5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutomationUtilities.AutomationAttributeTypeConstants(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutomationUtilities.AutomationAttributeTypeConstants(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_1000FE030()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FE118()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000FE1EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000FE2D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FE688(*a1);
  *a2 = result;
  return result;
}

void sub_1000FE300(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0xEB00000000736563;
  v5 = 0x69766544206C6C41;
  v6 = 0xE400000000000000;
  v7 = 1701736260;
  if (v2 != 3)
  {
    v7 = 0x747465536E65704FLL;
    v6 = 0xEC00000073676E69;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEF6567616D496E6FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x7474754273706954;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000FE3D0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000FE4D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FE6D4(*a1);
  *a2 = result;
  return result;
}

void sub_1000FE508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEA00000000006465;
  v6 = 0x7463656C65537369;
  if (v2 != 5)
  {
    v6 = 0x6E6F69746361;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (v2 != 3)
  {
    v8 = 0x54746E65746E6F63;
    v7 = 0xEB00000000657079;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (v2 != 1)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000FE5DC()
{
  result = qword_100171758;
  if (!qword_100171758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171758);
  }

  return result;
}

unint64_t sub_1000FE634()
{
  result = qword_100171760;
  if (!qword_100171760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171760);
  }

  return result;
}

unint64_t sub_1000FE688(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A2E8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000FE6D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A380, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FE720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000FE768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000FE7DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171768 = v4;
}

void sub_1000FE894()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206F0;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171778 = v4;
}

void sub_1000FE99C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120690;
  v2._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717A8 = v4;
}

void sub_1000FEA54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206B0;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717B8 = v4;
}

void sub_1000FEB0C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120670;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717C8 = v4;
}

void sub_1000FEBC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120610;
  v2._countAndFlagsBits = 0xD000000000000026;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717D8 = v4;
}

void sub_1000FEC7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120640;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717E8 = v4;
}

void sub_1000FED34()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205D0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717F8 = v4;
}

void sub_1000FEDEC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205F0;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171808 = v4;
}

void sub_1000FEED4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205B0;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171828 = v4;
}

uint64_t sub_1000FEFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_100171880, &qword_10011AB20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_100002BE4(&qword_100171878, &qword_10011AB18);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = sub_100002BE4(&qword_1001718A0, &qword_10011AB28);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v52 = sub_100002BE4(&qword_100171860, &qword_10011AB08);
  v22 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v44 - v23;
  v54 = a1;
  sub_100002BE4(&qword_1001718A8, &unk_10011AB30);
  sub_100012C48(&qword_1001718B0, &qword_1001718A8, &unk_10011AB30);
  List<>.init(content:)();
  v24 = sub_100012C48(&qword_100171888, &qword_100171880, &qword_10011AB20);
  View.listHasStackBehavior()();
  (*(v9 + 8))(v12, v8);
  InsetGroupedListStyle.init()();
  *&v58 = v8;
  *(&v58 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v45;
  v26 = v49;
  View.listStyle<A>(_:)();
  (*(v50 + 8))(v7, v26);
  (*(v46 + 8))(v17, v25);
  if (*(a1 + 24))
  {
    v27 = MobileGestaltCoordinator.isPadDevice.getter();
    v28 = v53;
    (*(v47 + 32))(v53, v21, v48);
    v29 = &v28[*(v52 + 36)];
    *v29 = v27 & 1;
    v29[1] = 1;
    if (qword_100169038 != -1)
    {
      swift_once();
    }

    v58 = xmmword_100171828;
    sub_100012928();

    v30 = Text.init<A>(_:)();
    v49 = v31;
    v50 = v30;
    LODWORD(v47) = v32;
    v48 = v33;
    v58 = *a1;
    v59 = *(a1 + 16);
    sub_100002BE4(&qword_10016F3F0, &qword_100116570);
    Binding.projectedValue.getter();
    v35 = v55;
    v34 = v56;
    v36 = v57;
    swift_getKeyPath();
    *&v58 = v35;
    *(&v58 + 1) = v34;
    v59 = v36;
    Binding.subscript.getter();

    __chkstk_darwin(v37);
    sub_100002BE4(&qword_100171868, &qword_10011AB10);
    sub_100102B64();
    sub_100012C48(&qword_100171898, &qword_100171868, &qword_10011AB10);
    v38 = v47;
    v39 = v50;
    v40 = v49;
    v41 = v53;
    View.alert<A>(_:isPresented:actions:)();

    sub_10001297C(v39, v40, v38 & 1);

    return sub_100009908(v41, &qword_100171860, &qword_10011AB08);
  }

  else
  {
    v43 = *(a1 + 32);
    type metadata accessor for AppDelegate();
    sub_10010343C(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FF680@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = sub_100002BE4(&qword_1001718D0, &qword_10011AC08);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v31 = sub_100002BE4(&qword_1001718D8, &qword_10011AC10);
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v34 = a1;
  sub_100100384(v41);
  v38 = v41[2];
  v39 = v41[3];
  v40 = v42;
  v36 = v41[0];
  v37 = v41[1];
  sub_100002BE4(&qword_1001718E0, &qword_10011AC18);
  sub_100002BE4(&qword_1001718E8, &qword_10011AC20);
  sub_100012C48(&qword_1001718F0, &qword_1001718E0, &qword_10011AC18);
  sub_100102E04();
  v16 = v15;
  Section<>.init(footer:content:)();
  v36 = *a1;
  *&v37 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  v17 = v35;
  swift_getKeyPath();
  *&v36 = v17;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (v18)
  {
    __chkstk_darwin(v19);
    *(&v30 - 2) = a1;
    sub_100002BE4(&qword_100171940, &qword_10011AC78);
    sub_100012C48(&qword_100171948, &qword_100171940, &qword_10011AC78);
    Section<>.init(content:)();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_100002BE4(&qword_100171930, &qword_10011AC68);
  (*(*(v21 - 8) + 56))(v8, v20, 1, v21);
  v22 = v9;
  v23 = *(v9 + 16);
  v24 = v31;
  v23(v13, v15, v31);
  v25 = v32;
  sub_10000C178(v8, v32, &qword_1001718D0, &qword_10011AC08);
  v26 = v33;
  v23(v33, v13, v24);
  v27 = sub_100002BE4(&qword_100171938, &qword_10011AC70);
  sub_10000C178(v25, &v26[*(v27 + 48)], &qword_1001718D0, &qword_10011AC08);
  sub_100009908(v8, &qword_1001718D0, &qword_10011AC08);
  v28 = *(v22 + 8);
  v28(v16, v24);
  sub_100009908(v25, &qword_1001718D0, &qword_10011AC08);
  return (v28)(v13, v24);
}

uint64_t sub_1000FFB7C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v55 = sub_100002BE4(&qword_100171968, &qword_10011AD18);
  v54 = *(v55 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v55);
  v52 = &v50 - v4;
  v56 = sub_100002BE4(&qword_100171970, &qword_10011AD20);
  v5 = *(*(v56 - 8) + 64);
  v6 = __chkstk_darwin(v56);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v50 - v8;
  v60 = sub_100002BE4(&qword_100171978, &qword_10011AD28);
  v58 = *(v60 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v60);
  v51 = &v50 - v10;
  v11 = sub_100002BE4(&qword_100171980, &qword_10011AD30);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v50 - v15;
  v16 = sub_100002BE4(&qword_100171958, &qword_10011AC88);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v57 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v74 = *a1;
  v75 = *(a1 + 2);
  v72 = *a1;
  v73 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v24 = v69;
  v23 = v70;
  v25 = v71;
  swift_getKeyPath();
  *&v72 = v24;
  *(&v72 + 1) = v23;
  v73 = v25;
  Binding.subscript.getter();

  v27 = v66;
  v26 = v67;
  v28 = v68;

  v63 = v27;
  v64 = v26;
  v65 = v28;
  static Animation.default.getter();
  sub_100002BE4(&qword_100171988, &qword_10011AD38);
  Binding.animation(_:)();

  Toggle.init(isOn:label:)();
  v29 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v31 = &v22[*(v17 + 44)];
  *v31 = KeyPath;
  v31[1] = v29;
  v72 = v74;
  v73 = v75;
  Binding.wrappedValue.getter();
  v32 = v69;
  swift_getKeyPath();
  *&v72 = v32;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v29) = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (!v29)
  {
    v43 = 1;
    v41 = v59;
    v42 = v60;
    v40 = v58;
    goto LABEL_5;
  }

  v34 = __chkstk_darwin(v33);
  *(&v50 - 2) = a1;
  __chkstk_darwin(v34);
  *(&v50 - 2) = a1;
  sub_100002BE4(&qword_100171998, &qword_10011AD48);
  sub_10010311C();
  v35 = v52;
  List<>.init(content:)();
  if (*(a1 + 3))
  {
    v36 = MobileGestaltCoordinator.isPadDevice.getter();
    v37 = v50;
    (*(v54 + 32))(v50, v35, v55);
    v38 = (v37 + *(v56 + 36));
    *v38 = v36 & 1;
    v38[1] = 1;
    sub_100103280(v37, v53);
    sub_100002BE4(&qword_1001719C0, &qword_10011AD60);
    sub_1001032F0();
    sub_10010337C();
    v39 = v51;
    NavigationLink.init(destination:label:)();
    v40 = v58;
    v41 = v59;
    v42 = v60;
    (*(v58 + 32))(v59, v39, v60);
    v43 = 0;
LABEL_5:
    (*(v40 + 56))(v41, v43, 1, v42);
    v44 = v57;
    sub_10000C178(v22, v57, &qword_100171958, &qword_10011AC88);
    v45 = v61;
    sub_10010309C(v41, v61);
    v46 = v62;
    sub_10000C178(v44, v62, &qword_100171958, &qword_10011AC88);
    v47 = sub_100002BE4(&qword_100171990, &qword_10011AD40);
    sub_10010309C(v45, v46 + *(v47 + 48));
    sub_100009908(v41, &qword_100171980, &qword_10011AD30);
    sub_100009908(v22, &qword_100171958, &qword_10011AC88);
    sub_100009908(v45, &qword_100171980, &qword_10011AD30);
    return sub_100009908(v44, &qword_100171958, &qword_10011AC88);
  }

  v49 = *(a1 + 4);
  type metadata accessor for AppDelegate();
  sub_10010343C(&qword_10016A710, type metadata accessor for AppDelegate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100100384@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = *v1;
  v36 = *(v1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = objc_opt_self();
  v5 = [v4 listeningForAlternateBonjourBrowsing];

  if ((v5 & 1) == 0)
  {
    if (qword_100169008 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v13 = Text.init<A>(_:)();
    v15 = v13;
    v16 = v14;
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v18 = v17 & 1;
    v29.n128_u64[0] = v17 & 1;
    v29.n128_u64[1] = v19;
    LOBYTE(v30) = 0;
    goto LABEL_13;
  }

  v34 = *v2;
  v37 = *(v2 + 2);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [v4 getAdvertisingAccessMode];

  if (!v6)
  {
    if (qword_100169010 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v13 = Text.init<A>(_:)();
    v15 = v13;
    v16 = v14;
    v18 = v20 & 1;
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v29.n128_u64[0] = v20 & 1;
    v29.n128_u64[1] = v21;
    LOBYTE(v30) = 1;
LABEL_13:
    sub_100003AE4(v13, v14, v18);

    _ConditionalContent<>.init(storage:)();
    sub_100002BE4(&qword_100171908, &qword_10011AC28);
    sub_100002BE4(&qword_100171918, &qword_10011AC30);
    sub_100102E90();
    sub_100102F0C();
    _ConditionalContent<>.init(storage:)();
    v22 = v15;
    v23 = v16;
    v24 = v18;
    goto LABEL_16;
  }

  v35 = *v2;
  v38 = *(v2 + 2);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = [v4 getAdvertisingAccessMode];

  if (v7 == 3)
  {
    if (qword_100169018 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11 & 1;
    sub_100003AE4(v8, v9, v11 & 1);

    sub_100002BE4(&qword_100171928, &qword_10011AC38);
    sub_100102F98();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v8 = Text.init(_:tableName:bundle:comment:)();
    v10 = v25;
    v12 = v26 & 1;
    sub_100003AE4(v8, v25, v26 & 1);

    sub_100002BE4(&qword_100171928, &qword_10011AC38);
    sub_100102F98();
    _ConditionalContent<>.init(storage:)();
  }

  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_100002BE4(&qword_100171918, &qword_10011AC30);
  sub_100102E90();
  sub_100102F0C();
  _ConditionalContent<>.init(storage:)();
  v22 = v8;
  v23 = v10;
  v24 = v12;
LABEL_16:
  sub_10001297C(v22, v23, v24);

  result = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  *a1 = v28;
  *(a1 + 16) = v29;
  return result;
}

uint64_t sub_100100A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0);
  v4 = *(v3 - 8);
  v70 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v69 = &v62 - v9;
  __chkstk_darwin(v8);
  v77 = &v62 - v10;
  v11 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v63 = &v62 - v13;
  v67 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v75 = *(v67 - 8);
  v14 = *(v75 + 64);
  v15 = __chkstk_darwin(v67);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v65 = &v62 - v18;
  __chkstk_darwin(v17);
  v73 = &v62 - v19;
  v66 = sub_100002BE4(&qword_1001718B8, &qword_10011AB70);
  v76 = *(v66 - 8);
  v20 = v76[8];
  v21 = __chkstk_darwin(v66);
  v74 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v78 = &v62 - v23;
  v24 = a1[1];
  v62 = *a1;
  v25 = a1[2];
  v80 = v62;
  v81 = v24;
  v82 = v25;
  v64 = sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v26 = v83;
  v27 = v84;
  swift_getKeyPath();
  v83 = v26;
  v84 = v27;
  Binding.subscript.getter();

  SecureField.init(text:prompt:label:)();
  v28 = v63;
  static ButtonRole.cancel.getter();
  v29 = type metadata accessor for ButtonRole();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v62;
  v85[0] = v62;
  v83 = *(a1 + 3);
  v31 = swift_allocObject();
  v32 = *(a1 + 1);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v32;
  *(v31 + 48) = a1[4];
  sub_1000AFC98(v85, &v80);

  sub_10000C178(&v83, &v80, &qword_1001718C0, &qword_10011ABA0);
  v33 = v73;
  Button.init(role:action:label:)();
  v34 = swift_allocObject();
  v35 = *(a1 + 1);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  *(v34 + 48) = a1[4];
  sub_1000AFC98(v85, &v80);

  sub_10000C178(&v83, &v80, &qword_1001718C0, &qword_10011ABA0);
  v36 = v65;
  Button.init(action:label:)();
  v80 = v30;
  v81 = v24;
  v82 = v25;
  Binding.wrappedValue.getter();
  v37 = v79;
  swift_getKeyPath();
  v80 = v37;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v37 + 40);
  v39 = *(v37 + 48);

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v40 == 0;
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = v75;
  v45 = v69;
  v46 = v67;
  (*(v75 + 32))(v69, v36, v67);
  v47 = (v45 + *(v70 + 44));
  *v47 = KeyPath;
  v47[1] = sub_100102D5C;
  v47[2] = v43;
  v48 = v77;
  sub_100102D64(v45, v77);
  v70 = v76[2];
  v49 = v74;
  v50 = v66;
  (v70)(v74, v78, v66);
  v51 = *(v44 + 16);
  v52 = v68;
  v51(v68, v33, v46);
  v53 = v48;
  v54 = v71;
  sub_10000C178(v53, v71, &qword_10016C1A0, &unk_1001122D0);
  v55 = v72;
  v56 = v49;
  v57 = v50;
  (v70)(v72, v56, v50);
  v58 = sub_100002BE4(&qword_1001718C8, &qword_10011ABD8);
  v51((v55 + *(v58 + 48)), v52, v46);
  sub_10000C178(v54, v55 + *(v58 + 64), &qword_10016C1A0, &unk_1001122D0);
  sub_100009908(v77, &qword_10016C1A0, &unk_1001122D0);
  v59 = *(v75 + 8);
  v59(v73, v46);
  v60 = v76[1];
  v60(v78, v57);
  sub_100009908(v54, &qword_10016C1A0, &unk_1001122D0);
  v59(v52, v46);
  return (v60)(v74, v57);
}

uint64_t sub_10010126C(__int128 *a1)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  if (!sub_100099420())
  {
    sub_100098F08(0, 0xE000000000000000);
  }

  if (*(v3 + 57) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + 57) = 0;
  }
}

uint64_t sub_100101400(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  sub_100099BB0();
}

void sub_10010148C()
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181F88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100006B44(0xD00000000000001BLL, 0x800000010011AA70, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s Invalid airplay settings state.", v2, 0xCu);
    sub_1000052E4(v3);
  }
}

uint64_t sub_1001015D4(__int128 *a1)
{
  sub_100101E38(a1, v2);
  sub_100002BE4(&qword_1001719E0, &qword_10011AD68);
  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_10000459C(&qword_1001719A8, &qword_10011AD50);
  sub_10000459C(&qword_1001719B0, &qword_10011AD58);
  type metadata accessor for InlinePickerStyle();
  sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100102E90();
  return Section<>.init(footer:content:)();
}

uint64_t sub_10010174C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_1001719B0, &qword_10011AD58);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_100002BE4(&qword_1001719A8, &qword_10011AD50);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = LocalizedStringKey.init(stringLiteral:)();
  v31 = v18;
  v32 = v17;
  v29 = v19;
  v30 = v20;
  v39 = *a1;
  v40 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v21 = v44;
  v22 = v45;
  swift_getKeyPath();
  v39 = v21;
  v40 = v22;
  Binding.subscript.getter();

  v28 = v44;
  v23 = v45;

  v42 = v28;
  v43 = v23;
  type metadata accessor for APRKAdvertisingAccessMode(0);
  sub_100002BE4(&qword_1001719E8, &qword_10011AD70);
  sub_10010343C(&qword_1001719F0, type metadata accessor for APRKAdvertisingAccessMode);
  sub_100012C48(&qword_1001719F8, &qword_1001719E8, &qword_10011AD70);
  Picker<>.init<A>(_:selection:content:)();
  InlinePickerStyle.init()();
  v24 = sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58);
  v25 = v36;
  View.pickerStyle<A>(_:)();
  (*(v37 + 8))(v7, v25);
  (*(v33 + 8))(v11, v8);
  *&v39 = v8;
  *(&v39 + 1) = v25;
  v40 = v24;
  v41 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v26 = v34;
  View.labelsHidden()();
  return (*(v35 + 8))(v16, v26);
}

uint64_t sub_100101B90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002BE4(&qword_100171A00, &qword_10011AD78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v14 = 3;
  type metadata accessor for APRKAdvertisingAccessMode(0);
  sub_10010343C(&qword_1001719F0, type metadata accessor for APRKAdvertisingAccessMode);
  PickerOption.init(value:content:)();
  v14 = 0;
  PickerOption.init(value:content:)();
  sub_100012C48(&qword_100171A08, &qword_100171A00, &qword_10011AD78);
  dispatch thunk of PickerContent._identifiedView.getter();
  v10 = a1 + *(sub_100002BE4(&qword_100171A10, &qword_10011AD80) + 48);
  dispatch thunk of PickerContent._identifiedView.getter();
  v11 = *(v3 + 8);
  v11(v7, v2);
  return (v11)(v9, v2);
}

double sub_100101E38@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  *&v7 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = [objc_opt_self() getAdvertisingAccessMode];

  if (v3)
  {
    if (qword_100169000 != -1)
    {
      swift_once();
    }

    v6 = xmmword_1001717B8;
    sub_100012928();

    Text.init<A>(_:)();
  }

  else
  {
    if (qword_100168FF8 != -1)
    {
      swift_once();
    }

    v6 = xmmword_1001717A8;
    sub_100012928();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_100102054()
{
  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_100102E90();
  return LabeledContent<>.init(content:label:)();
}

double sub_1001020EC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  *&v7 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = [objc_opt_self() getAdvertisingAccessMode];

  if (v3)
  {
    if (qword_100168FE8 != -1)
    {
      swift_once();
    }

    v6 = xmmword_100171788;
    sub_100012928();

    Text.init<A>(_:)();
  }

  else
  {
    if (qword_100168FF0 != -1)
    {
      swift_once();
    }

    v6 = xmmword_100171798;
    sub_100012928();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_100102330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v44 = &v42 - v5;
  v6 = sub_100002BE4(&qword_100171950, &qword_10011AC80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v42 - v10;
  v11 = sub_100002BE4(&qword_100171958, &qword_10011AC88);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v19 = *a1;
  v18 = a1[1];
  v43 = a1;
  v45 = a1[2];
  *&v54 = v19;
  *(&v54 + 1) = v18;
  v55 = v45;
  v46 = sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v20 = v53[0];
  v21 = v53[1];
  v22 = v53[2];
  swift_getKeyPath();
  *&v54 = v20;
  *(&v54 + 1) = v21;
  v55 = v22;
  Binding.subscript.getter();

  v23 = v45;

  Toggle.init(isOn:label:)();
  v24 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v26 = &v17[*(v12 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  *&v54 = v19;
  *(&v54 + 1) = v18;
  v55 = v23;
  Binding.wrappedValue.getter();
  LOBYTE(v24) = sub_100099420();

  if (v24)
  {
    v56 = v19;
    v27 = v43;
    v54 = *(v43 + 3);
    v28 = swift_allocObject();
    v29 = *(v27 + 1);
    *(v28 + 16) = *v27;
    *(v28 + 32) = v29;
    *(v28 + 48) = v27[4];
    sub_1000AFC98(&v56, v53);

    sub_10000C178(&v54, v53, &qword_1001718C0, &qword_10011ABA0);
    v30 = v44;
    Button.init(action:label:)();
    v32 = v47;
    v31 = v48;
    v33 = v49;
    (*(v48 + 32))(v47, v30, v49);
    v34 = 0;
    v35 = v33;
    v36 = v31;
  }

  else
  {
    v34 = 1;
    v36 = v48;
    v35 = v49;
    v32 = v47;
  }

  (*(v36 + 56))(v32, v34, 1, v35);
  v37 = v50;
  sub_10000C178(v17, v50, &qword_100171958, &qword_10011AC88);
  v38 = v51;
  sub_10000C178(v32, v51, &qword_100171950, &qword_10011AC80);
  v39 = v52;
  sub_10000C178(v37, v52, &qword_100171958, &qword_10011AC88);
  v40 = sub_100002BE4(&qword_100171960, &qword_10011ACE8);
  sub_10000C178(v38, v39 + *(v40 + 48), &qword_100171950, &qword_10011AC80);
  sub_100009908(v32, &qword_100171950, &qword_10011AC80);
  sub_100009908(v17, &qword_100171958, &qword_10011AC88);
  sub_100009908(v38, &qword_100171950, &qword_10011AC80);
  return sub_100009908(v37, &qword_100171958, &qword_10011AC88);
}

uint64_t sub_100102828(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + 56) = (*(v2 + 56) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10010299C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v9 = a2;
    v10 = a3;
    swift_once();
    a2 = v9;
    a3 = v10;
  }

  v11 = *a2;
  v12 = *a3;
  sub_100012928();

  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_100102A34()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_100002BE4(&qword_100171858, &qword_10011AB00);
  sub_10000459C(&qword_100171860, &qword_10011AB08);
  sub_10000459C(&qword_100171868, &qword_10011AB10);
  sub_100102B64();
  sub_100012C48(&qword_100171898, &qword_100171868, &qword_10011AB10);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100102B64()
{
  result = qword_100171870;
  if (!qword_100171870)
  {
    sub_10000459C(&qword_100171860, &qword_10011AB08);
    sub_10000459C(&qword_100171878, &qword_10011AB18);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_100171880, &qword_10011AB20);
    sub_100012C48(&qword_100171888, &qword_100171880, &qword_10011AB20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100102CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171870);
  }

  return result;
}

unint64_t sub_100102CBC()
{
  result = qword_100171890;
  if (!qword_100171890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171890);
  }

  return result;
}

uint64_t sub_100102D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100102E04()
{
  result = qword_1001718F8;
  if (!qword_1001718F8)
  {
    sub_10000459C(&qword_1001718E8, &qword_10011AC20);
    sub_100102E90();
    sub_100102F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001718F8);
  }

  return result;
}

unint64_t sub_100102E90()
{
  result = qword_100171900;
  if (!qword_100171900)
  {
    sub_10000459C(&qword_100171908, &qword_10011AC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171900);
  }

  return result;
}

unint64_t sub_100102F0C()
{
  result = qword_100171910;
  if (!qword_100171910)
  {
    sub_10000459C(&qword_100171918, &qword_10011AC30);
    sub_100102F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171910);
  }

  return result;
}

unint64_t sub_100102F98()
{
  result = qword_100171920;
  if (!qword_100171920)
  {
    sub_10000459C(&qword_100171928, &qword_10011AC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171920);
  }

  return result;
}

uint64_t sub_10010303C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10010309C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171980, &qword_10011AD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010311C()
{
  result = qword_1001719A0;
  if (!qword_1001719A0)
  {
    sub_10000459C(&qword_100171998, &qword_10011AD48);
    sub_10000459C(&qword_1001719A8, &qword_10011AD50);
    sub_10000459C(&qword_1001719B0, &qword_10011AD58);
    type metadata accessor for InlinePickerStyle();
    sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100102E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719A0);
  }

  return result;
}

uint64_t sub_100103280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171970, &qword_10011AD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001032F0()
{
  result = qword_1001719C8;
  if (!qword_1001719C8)
  {
    sub_10000459C(&qword_1001719C0, &qword_10011AD60);
    sub_100102E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719C8);
  }

  return result;
}

unint64_t sub_10010337C()
{
  result = qword_1001719D0;
  if (!qword_1001719D0)
  {
    sub_10000459C(&qword_100171970, &qword_10011AD20);
    sub_100012C48(&qword_1001719D8, &qword_100171968, &qword_10011AD18);
    sub_100102CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719D0);
  }

  return result;
}

uint64_t sub_10010343C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100103504()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v1._object = 0xEA00000000004552;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_100171A28 = v4;
}

uint64_t sub_1001035BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v35 = a5;
  v36 = type metadata accessor for AutomationSemantics();
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v36);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002BE4(&qword_100171A38, &qword_10011AE28);
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v31 = sub_100002BE4(&qword_100171A40, &qword_10011AE30);
  v33 = *(v31 - 8);
  v16 = *(v33 + 64);
  __chkstk_darwin(v31);
  v18 = &v27 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;

  sub_100002BE4(&qword_100171A48, &qword_10011AE38);
  sub_100012C48(&qword_100171A50, &qword_100171A48, &qword_10011AE38);
  Button.init(action:label:)();
  LOBYTE(v37[0]) = a3;
  *(&v37[0] + 1) = a4;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v21 = sub_100012C48(&qword_100171A58, &qword_100171A38, &qword_10011AE28);
  v22 = sub_1000C8F4C();

  v23 = v29;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v30 + 8))(v15, v23);
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  v24 = v32;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_100015CE4(v37);
  sub_100015CE4(&v38);
  *&v38 = v23;
  *(&v38 + 1) = &type metadata for LearnMoreLinkWebView;
  *&v39 = v21;
  *(&v39 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  View.automationSemantics(_:)();
  (*(v34 + 8))(v24, v36);
  return (*(v33 + 8))(v18, v25);
}

uint64_t sub_100103A4C@<X0>(uint64_t a1@<X8>)
{
  v15 = static VerticalAlignment.center.getter();
  if (qword_100169050 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.callout.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10001297C(v2, v4, v6 & 1);

  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11 & 1;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_100103B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_100103C74;
  a5[3] = v10;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100103C34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100103C7C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  return State.wrappedValue.setter();
}

uint64_t sub_100103CD8()
{
  sub_10000459C(&qword_100171A40, &qword_10011AE30);
  sub_10000459C(&qword_100171A38, &qword_10011AE28);
  sub_100012C48(&qword_100171A58, &qword_100171A38, &qword_10011AE28);
  sub_1000C8F4C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100103DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100103E24(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100103EA0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171AB8, &qword_10011AF68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (sub_100092298(v11) & 1) != 0)
  {
    v12 = static Alignment.bottomTrailing.getter();
    v14 = v13;
    v15 = &v9[*(v6 + 36)];
    v16 = type metadata accessor for FlowAction();
    v17 = &v15[v16[5]];
    static ActionMetrics.notInstrumented.getter();
    v18 = &v15[v16[6]];
    *(v18 + 4) = 0;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v18[40] = 2;
    v19 = static FlowActionPresentation.sheetPresent.getter();
    *v15 = 0x6775626564;
    *(v15 + 1) = 0xE500000000000000;
    v20 = &v15[v16[7]];
    *v20 = v19;
    v20[1] = v21;
    *&v15[*(sub_100002BE4(&qword_100171AF0, &qword_10011AF88) + 36)] = vdupq_n_s64(0xC040000000000000);
    v22 = &v15[*(sub_100002BE4(&qword_100171AE8, &qword_10011AF80) + 36)];
    *v22 = v12;
    v22[1] = v14;
    v23 = sub_100002BE4(&qword_100171AC8, &qword_10011AF78);
    (*(*(v23 - 8) + 16))(v9, a1, v23);
    sub_100105AAC(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78);
    _ConditionalContent<>.init(storage:)();
    return sub_100105B1C(v9);
  }

  else
  {
    v25 = sub_100002BE4(&qword_100171AC8, &qword_10011AF78);
    (*(*(v25 - 8) + 16))(v5, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1001041F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002BE4(&qword_100171A60, &qword_10011AEC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v27 - v14;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v27[1] = v8;
    v27[3] = a4;
    v17 = swift_allocObject();
    v18 = a2 & 1;
    *(v17 + 16) = a2 & 1;
    *(v17 + 24) = a3;

    v19 = sub_100002BE4(&qword_100171A70, &qword_10011AED8);
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8);
    v27[2] = v19;
    View.onTapGesture(count:perform:)();

    v20 = static Alignment.center.getter();
    v22 = v21;
    LOBYTE(v30) = v18;
    v31 = a3;
    sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
    State.wrappedValue.getter();
    if (v28 == 1)
    {
      v28 = static Color.green.getter();
      v29 = 0;
    }

    else
    {
      v28 = static Color.clear.getter();
      v29 = 1;
    }

    _ConditionalContent<>.init(storage:)();
    v25 = v31;
    v26 = &v15[*(v12 + 36)];
    *v26 = v30;
    v26[8] = v25;
    *(v26 + 2) = v20;
    *(v26 + 3) = v22;
    sub_100104DF8(v15, v11);
    swift_storeEnumTagMultiPayload();
    sub_100104C8C();
    _ConditionalContent<>.init(storage:)();
    return sub_100104E68(v15);
  }

  else
  {
    v23 = sub_100002BE4(&qword_100171A70, &qword_10011AED8);
    (*(*(v23 - 8) + 16))(v11, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_100104C8C();
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100104570(char a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-v6];
  v8 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v8)
  {
    v9 = v8;
    static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setBool:0 forKey:v10];
  }

  v11 = a1 & 1;
  v16[16] = a1 & 1;
  v17 = a2;
  v16[15] = 1;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a2;
  sub_1000B8C00(0, 0, v7, &unk_10011AEF0, v14);
}

uint64_t sub_100104724(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 32) = a5;
  *(v5 + 121) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v10;
  *(v5 + 88) = v9;

  return _swift_task_switch(sub_100104820, v10, v9);
}

uint64_t sub_100104820()
{
  v1 = *(v0 + 56);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1001048EC;
  v3 = *(v0 + 56);

  return sub_100105428(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001048EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    v9 = sub_100104C10;
  }

  else
  {
    v9 = sub_100104A6C;
    v7 = 0;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100104A6C()
{
  v1 = *(v0 + 64);
  *(v0 + 112) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100104AF8, v3, v2);
}

uint64_t sub_100104AF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  v3 = *(v0 + 121);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 120) = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return _swift_task_switch(sub_100104BA0, v4, v5);
}

uint64_t sub_100104BA0()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100104C10()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

unint64_t sub_100104C8C()
{
  result = qword_100171A78;
  if (!qword_100171A78)
  {
    sub_10000459C(&qword_100171A68, &qword_10011AED0);
    sub_10000459C(&qword_100171A70, &qword_10011AED8);
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100171A88, &qword_100171A90, &qword_10011AEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171A78);
  }

  return result;
}

uint64_t sub_100104DB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100104DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100104E68(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100104ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100104F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_100104724(a1, v4, v5, v6, v7);
}

uint64_t sub_100104FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  v26 = v7;
  LOWORD(v27) = 1;
  static Font.Weight.light.getter();
  sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
  sub_100043F28();
  View.fontWeight(_:)();

  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(sub_100002BE4(&qword_100171BD0, &qword_10011B018) + 36);
  *v16 = v2;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (a1 + *(sub_100002BE4(&qword_100171BC0, &qword_10011B010) + 36));
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;
  v17[2] = v28;
  v19 = static Color.white.getter();
  *(a1 + *(sub_100002BE4(&qword_100171BB0, &qword_10011B008) + 36)) = v19;
  v20 = a1 + *(sub_100002BE4(&qword_100171B98, &qword_10011B000) + 36);
  static Material.thick.getter();
  v21 = sub_100002BE4(&qword_100171BE0, &qword_10011B020);
  v22 = *(v21 + 52);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  *(v20 + *(v21 + 56)) = 256;
  return result;
}

uint64_t sub_1001052C4()
{
  v1 = v0;
  v2 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10[-1] - v4;
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v10[3] = type metadata accessor for FlowAction();
  v10[4] = sub_100105E18(&qword_10016A290, type metadata accessor for FlowAction);
  v7 = sub_100020014(v10);
  sub_1000CFA2C(v1, v7);
  sub_100002BE4(&qword_100171B98, &qword_10011B000);
  sub_100105E60();
  return ActionButton.init(role:action:label:)();
}

uint64_t sub_100105428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100105528, 0, 0);
}

uint64_t sub_100105528()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100105E18(&qword_100171A98, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100105E18(&qword_100171AA0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1001056B8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1001056B8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100105874, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100105874()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_1001058F4()
{
  result = qword_100171AA8;
  if (!qword_100171AA8)
  {
    sub_10000459C(&qword_100171AB0, &qword_10011AF10);
    sub_100104C8C();
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171AA8);
  }

  return result;
}

unint64_t sub_1001059C8()
{
  result = qword_100171AD0;
  if (!qword_100171AD0)
  {
    sub_10000459C(&qword_100171AC0, &qword_10011AF70);
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78);
    sub_100012C48(&qword_100171AE0, &qword_100171AE8, &qword_10011AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171AD0);
  }

  return result;
}

uint64_t sub_100105AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105B1C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100105B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100105C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DebugButton()
{
  result = qword_100171B50;
  if (!qword_100171B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100105CD4()
{
  result = type metadata accessor for FlowAction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100105D44()
{
  result = qword_100171B88;
  if (!qword_100171B88)
  {
    sub_10000459C(&qword_100171B90, qword_10011AFA0);
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171B88);
  }

  return result;
}

uint64_t sub_100105E18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100105E60()
{
  result = qword_100171BA0;
  if (!qword_100171BA0)
  {
    sub_10000459C(&qword_100171B98, &qword_10011B000);
    sub_100105F18();
    sub_100012C48(&qword_100171BD8, &qword_100171BE0, &qword_10011B020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BA0);
  }

  return result;
}

unint64_t sub_100105F18()
{
  result = qword_100171BA8;
  if (!qword_100171BA8)
  {
    sub_10000459C(&qword_100171BB0, &qword_10011B008);
    sub_100105FD0();
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BA8);
  }

  return result;
}

unint64_t sub_100105FD0()
{
  result = qword_100171BB8;
  if (!qword_100171BB8)
  {
    sub_10000459C(&qword_100171BC0, &qword_10011B010);
    sub_10010605C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BB8);
  }

  return result;
}

unint64_t sub_10010605C()
{
  result = qword_100171BC8;
  if (!qword_100171BC8)
  {
    sub_10000459C(&qword_100171BD0, &qword_10011B018);
    sub_10000459C(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BC8);
  }

  return result;
}

uint64_t sub_1001061A4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100181F78 == -1)
  {
    if (qword_100181F80)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10010666C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100181F80)
    {
      return _availability_version_check();
    }
  }

  if (qword_100181F70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100106684();
    a3 = v10;
    a4 = v9;
    v8 = dword_100181F60 < v11;
    if (dword_100181F60 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100181F64 > a3)
      {
        return 1;
      }

      if (dword_100181F64 >= a3)
      {
        return dword_100181F68 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100181F60 < a2;
  if (dword_100181F60 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100106338(uint64_t result)
{
  v1 = qword_100181F80;
  if (qword_100181F80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100181F80 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100181F60, &dword_100181F64, &dword_100181F68);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t Picker<>.init<A>(_:selection:content:)()
{
  return Picker<>.init<A>(_:selection:content:)();
}

{
  return Picker<>.init<A>(_:selection:content:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}