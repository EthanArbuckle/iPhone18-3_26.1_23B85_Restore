uint64_t sub_100024464(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100023CC4(a1, v5, v4);
}

uint64_t sub_100024510@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000258AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024538(uint64_t a1)
{
  v2 = sub_100023A04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100024578()
{
  result = qword_100070E40;
  if (!qword_100070E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E40);
  }

  return result;
}

unint64_t sub_1000245D0()
{
  result = qword_100070E48;
  if (!qword_100070E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E48);
  }

  return result;
}

uint64_t sub_100024624(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100024648, 0, 0);
}

uint64_t sub_100024648()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10004C084();
  *v1 = sub_100025568(v0[2]);
  v1[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000246BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100022A38();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100024770()
{
  result = qword_100070E50;
  if (!qword_100070E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E50);
  }

  return result;
}

unint64_t sub_1000247C8()
{
  result = qword_100070E58;
  if (!qword_100070E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E58);
  }

  return result;
}

uint64_t sub_10002481C@<X0>(uint64_t *a1@<X8>)
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  *a1 = result;
  return result;
}

uint64_t sub_100024894(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100022A38();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100024948(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100022A38();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000249FC()
{
  result = qword_100070E60;
  if (!qword_100070E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E60);
  }

  return result;
}

unint64_t sub_100024A54()
{
  result = qword_100070E68;
  if (!qword_100070E68)
  {
    sub_100002C4C(&unk_100070E70, qword_100050FD0);
    sub_1000237F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070E68);
  }

  return result;
}

uint64_t sub_100024AD8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100023680();
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t getEnumTagSinglePayload for SettingsEventsDefaultAlertTimeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsEventsDefaultAlertTimeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100024D58@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10004C704();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v12[0] = "ert times for events.";
  v8 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0x800000010005AED0;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x800000010005AEB0;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10004C534(v13, v14, v9, v15, v11);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_100022720();
  sub_100026048();
  sub_1000245D0();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  sub_10004C6C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100025050@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100025284@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100021E2C(*a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_10002531C(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100021E2C(*a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_1000253E4(double a1)
{
  if (sub_10004C524() == a1)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    return 1;
  }

  if (a1 == -300.0)
  {
    return 2;
  }

  if (a1 == -600.0)
  {
    return 3;
  }

  if (a1 == -900.0)
  {
    return 4;
  }

  if (a1 == -1800.0)
  {
    return 5;
  }

  if (a1 == -3600.0)
  {
    return 6;
  }

  if (a1 == -7200.0)
  {
    return 7;
  }

  if (a1 == -572400.0)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == -172800.0)
  {
    v4 = 9;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == -86400.0)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002551C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D560;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100025568(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000057AC(&qword_100070E28, qword_100050D70);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_100070EA0, &unk_100070EA8, &qword_100051200);
  sub_100022720();
  v13 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v15, 0, sizeof(v15));
  v16 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v15[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1000258AC()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v58 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v57 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = v41 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = v41 - v11;
  v12 = sub_10004C554();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C5A4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004C754();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10004C564();
  v53 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v41[1] = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000057AC(&qword_100070E88, &qword_1000511D8);
  sub_10004C744();
  sub_10004C594();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v13 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v12;
  v26(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v44 = v26;
  v45 = v13 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v26(v16, v25, v12);
  v27 = v56;
  sub_10004C574();
  v28 = *(v22 + 56);
  v52 = v22 + 56;
  v54 = v28;
  v28(v27, 0, 1, v21);
  v29 = sub_10004C1C4();
  v61 = 0;
  v62 = 0;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v47 = v31;
  v48 = v30 + 56;
  v32 = v55;
  v31(v55, 1, 1, v29);
  v31(v57, 1, 1, v29);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v60 + 104);
  v60 += 104;
  v50 = v33;
  v33(v58);
  sub_1000229E0();
  v34 = v32;
  v51 = sub_10004C224();
  v46 = sub_1000057AC(&qword_100070E90, &qword_1000511E0);
  sub_10004C744();
  sub_10004C594();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v44(v16, v42, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v37(v16, v35, v36);
  v38 = v56;
  sub_10004C574();
  v54(v38, 0, 1, v53);
  LOBYTE(v61) = 11;
  v39 = v47;
  v47(v34, 1, 1, v29);
  v39(v57, 1, 1, v29);
  v50(v58, v49, v59);
  sub_100022720();
  sub_10004C214();
  return v51;
}

unint64_t sub_100026048()
{
  result = qword_100070ED8;
  if (!qword_100070ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070ED8);
  }

  return result;
}

uint64_t sub_10002609C()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002615C(uint64_t a1)
{
  v29 = a1;
  v1 = sub_1000057AC(&qword_100071048, &qword_100051670);
  v2 = *(v1 - 8);
  v40 = v1;
  v41 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v37 = &v26 - v4;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100071050, &qword_100051678);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v35 = sub_10002DC68();
  sub_10004C314();
  v42._countAndFlagsBits = 0xD00000000000001ELL;
  v42._object = 0x800000010005D490;
  sub_10004C304(v42);
  swift_getKeyPath();
  v28 = sub_10002E054();
  sub_10004C244();

  sub_10004C2F4();

  v43._countAndFlagsBits = 544106784;
  v43._object = 0xE400000000000000;
  sub_10004C304(v43);
  v12 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v13 = v6[13];
  v33 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v36 = v5;
  v13(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  v31 = v6 + 13;
  v32 = v13;
  sub_10004C2E4();
  v14 = v6[1];
  v39 = v6 + 1;
  v14(v9, v5);
  v15 = v14;
  v30 = v14;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_10004C304(v44);
  v16 = v37;
  sub_10004C324();
  v34 = sub_10004C274();
  v17 = *(v41 + 8);
  v41 += 8;
  v38 = v17;
  v17(v16, v40);
  sub_10004C314();
  v45._countAndFlagsBits = 2125385;
  v45._object = 0xE300000000000000;
  sub_10004C304(v45);
  v18 = v36;
  v13(v9, v12, v36);
  sub_10004C2E4();
  v15(v9, v18);
  v46._countAndFlagsBits = 0x20776F6853202CLL;
  v46._object = 0xE700000000000000;
  sub_10004C304(v46);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v47._object = 0x800000010005D4B0;
  v47._countAndFlagsBits = 0xD000000000000013;
  sub_10004C304(v47);
  v19 = v37;
  sub_10004C324();
  v27 = sub_10004C274();
  v38(v19, v40);
  sub_10004C314();
  v48._countAndFlagsBits = 0x7420656C62616E45;
  v48._object = 0xEB00000000206568;
  sub_10004C304(v48);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v49._countAndFlagsBits = 0xD000000000000018;
  v49._object = 0x800000010005D4D0;
  sub_10004C304(v49);
  v20 = v36;
  v32(v9, v33, v36);
  sub_10004C2E4();
  v30(v9, v20);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_10004C304(v50);
  sub_10004C324();
  v21 = sub_10004C274();
  v38(v19, v40);
  sub_1000057AC(&qword_100071058, &unk_100051680);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100050820;
  v23 = v27;
  *(v22 + 32) = v34;
  *(v22 + 40) = v23;
  *(v22 + 48) = v21;
  v24 = sub_10004C264();

  return v24;
}

uint64_t sub_1000267A8()
{
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512C0;
  *(v9 + 32) = v18;
  *(v9 + 40) = v17;
  *(v9 + 48) = v16;
  *(v9 + 56) = v15;
  *(v9 + 64) = v14;
  *(v9 + 72) = v13;
  *(v9 + 80) = v12;
  *(v9 + 88) = v0;
  *(v9 + 96) = v1;
  *(v9 + 104) = v2;
  *(v9 + 112) = v3;
  *(v9 + 120) = v4;
  *(v9 + 128) = v5;
  *(v9 + 136) = v6;
  *(v9 + 144) = v7;
  *(v9 + 152) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_100026A00()
{
  v24 = sub_1000057AC(&qword_100071048, &qword_100051670);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071050, &qword_100051678);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10002DC68();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000022;
  v25._object = 0x800000010005D420;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._object = 0x800000010005D450;
  v27._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100071058, &unk_100051680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_100026E14()
{
  v24 = sub_1000057AC(&qword_100071028, &qword_100051630);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071030, &qword_100051638);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000E5F4();
  sub_10004C314();
  v25._object = 0x800000010005D3E0;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._countAndFlagsBits = 0xD000000000000017;
  v27._object = 0x800000010005D400;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100071038, &qword_100051640);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_100027228()
{
  v24 = sub_1000057AC(&qword_100071028, &qword_100051630);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100071030, &qword_100051638);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000E5F4();
  sub_10004C314();
  v25._object = 0x800000010005D3A0;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._countAndFlagsBits = 0xD000000000000018;
  v27._object = 0x800000010005D3C0;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100071038, &qword_100051640);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_100027640()
{
  v0 = sub_1000057AC(&qword_100071010, &qword_1000515F0);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100071018, &qword_1000515F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100016850();
  sub_10004C314();
  v31._countAndFlagsBits = 544499027;
  v31._object = 0xE400000000000000;
  sub_10004C304(v31);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v28 = v6[13];
  v28(v9);
  sub_10004C2E4();
  v12 = v6[1];
  v23 = v6 + 1;
  v27 = v12;
  v12(v9, v5);
  v32._object = 0x800000010005D320;
  v32._countAndFlagsBits = 0xD00000000000001CLL;
  sub_10004C304(v32);
  sub_10004C324();
  v25 = sub_10004C274();
  v13 = v29;
  v22 = *(v30 + 8);
  v30 += 8;
  v22(v4, v29);
  sub_10004C314();
  v33._countAndFlagsBits = 0xD000000000000023;
  v33._object = 0x800000010005D340;
  sub_10004C304(v33);
  (v28)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  sub_10004C324();
  v24 = sub_10004C274();
  v14 = v13;
  v15 = v22;
  v22(v4, v14);
  sub_10004C314();
  v35._countAndFlagsBits = 0xD000000000000024;
  v35._object = 0x800000010005D370;
  sub_10004C304(v35);
  (v28)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004C304(v36);
  sub_10004C324();
  v16 = sub_10004C274();
  v15(v4, v29);
  sub_1000057AC(&qword_100071020, &qword_100051600);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100050820;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10004C264();

  return v19;
}

uint64_t sub_100027B0C()
{
  v0 = sub_1000057AC(&qword_100071010, &qword_1000515F0);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100071018, &qword_1000515F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100016850();
  sub_10004C314();
  v31._countAndFlagsBits = 544499027;
  v31._object = 0xE400000000000000;
  sub_10004C304(v31);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v28 = v6[13];
  v28(v9);
  sub_10004C2E4();
  v12 = v6[1];
  v23 = v6 + 1;
  v27 = v12;
  v12(v9, v5);
  v32._object = 0x800000010005D290;
  v32._countAndFlagsBits = 0xD000000000000020;
  sub_10004C304(v32);
  sub_10004C324();
  v25 = sub_10004C274();
  v13 = v29;
  v22 = *(v30 + 8);
  v30 += 8;
  v22(v4, v29);
  sub_10004C314();
  v33._countAndFlagsBits = 0xD000000000000027;
  v33._object = 0x800000010005D2C0;
  sub_10004C304(v33);
  (v28)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  sub_10004C324();
  v24 = sub_10004C274();
  v14 = v13;
  v15 = v22;
  v22(v4, v14);
  sub_10004C314();
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x800000010005D2F0;
  sub_10004C304(v35);
  (v28)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004C304(v36);
  sub_10004C324();
  v16 = sub_10004C274();
  v15(v4, v29);
  sub_1000057AC(&qword_100071020, &qword_100051600);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100050820;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10004C264();

  return v19;
}

uint64_t sub_100027FE8()
{
  v0 = sub_1000057AC(&qword_100070FF8, &qword_1000515B0);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100071000, &qword_1000515B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10002DCBC();
  sub_10004C314();
  v31._object = 0x800000010005D220;
  v31._countAndFlagsBits = 0xD000000000000019;
  sub_10004C304(v31);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v23 = v6[13];
  v23(v9);
  sub_10004C2E4();
  v27 = v6[1];
  v28 = v6 + 1;
  v27(v9, v5);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10004C304(v32);
  sub_10004C324();
  v25 = sub_10004C274();
  v12 = v29;
  v22 = *(v30 + 8);
  v30 += 8;
  v22(v4, v29);
  sub_10004C314();
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  v33._object = 0x800000010005D240;
  sub_10004C304(v33);
  v13 = v23;
  (v23)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  sub_10004C324();
  v24 = sub_10004C274();
  v14 = v12;
  v15 = v22;
  v22(v4, v14);
  sub_10004C314();
  v35._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x800000010005D260;
  sub_10004C304(v35);
  (v13)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004C304(v36);
  sub_10004C324();
  v16 = sub_10004C274();
  v15(v4, v29);
  sub_1000057AC(&qword_100071008, &qword_1000515C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100050820;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10004C264();

  return v19;
}

uint64_t sub_1000284B0()
{
  v0 = sub_1000057AC(&qword_100070FF8, &qword_1000515B0);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100071000, &qword_1000515B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10002DCBC();
  sub_10004C314();
  v31._object = 0x800000010005D1B0;
  v31._countAndFlagsBits = 0xD000000000000019;
  sub_10004C304(v31);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v23 = v6[13];
  v23(v9);
  sub_10004C2E4();
  v27 = v6[1];
  v28 = v6 + 1;
  v27(v9, v5);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10004C304(v32);
  sub_10004C324();
  v25 = sub_10004C274();
  v12 = v29;
  v22 = *(v30 + 8);
  v30 += 8;
  v22(v4, v29);
  sub_10004C314();
  v33._countAndFlagsBits = 0xD00000000000001CLL;
  v33._object = 0x800000010005D1D0;
  sub_10004C304(v33);
  v13 = v23;
  (v23)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  sub_10004C324();
  v24 = sub_10004C274();
  v14 = v12;
  v15 = v22;
  v22(v4, v14);
  sub_10004C314();
  v35._countAndFlagsBits = 0xD000000000000029;
  v35._object = 0x800000010005D1F0;
  sub_10004C304(v35);
  (v13)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004C304(v36);
  sub_10004C324();
  v16 = sub_10004C274();
  v15(v4, v29);
  sub_1000057AC(&qword_100071008, &qword_1000515C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100050820;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10004C264();

  return v19;
}

uint64_t sub_100028978(uint64_t a1)
{
  v25 = a1;
  v1 = sub_1000057AC(&qword_100070FE0, &qword_100051570);
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v26 = v20 - v4;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070FE8, &qword_100051578);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_1000137FC();
  sub_10004C314();
  v29._countAndFlagsBits = 0x20636E7953;
  v29._object = 0xE500000000000000;
  sub_10004C304(v29);
  swift_getKeyPath();
  v24 = sub_100012728();
  sub_10004C244();

  sub_10004C2F4();

  v30._countAndFlagsBits = 544106784;
  v30._object = 0xE400000000000000;
  sub_10004C304(v30);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v6[13];
  v21(v9);
  sub_10004C2E4();
  v12 = v6[1];
  v20[1] = v6 + 1;
  v12(v9, v5);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C304(v31);
  v13 = v26;
  sub_10004C324();
  v23 = sub_10004C274();
  v14 = *(v28 + 8);
  v28 += 8;
  v14(v13, v27);
  sub_10004C314();
  v32._countAndFlagsBits = 544499027;
  v32._object = 0xE400000000000000;
  sub_10004C304(v32);
  (v21)(v9, v22, v5);
  sub_10004C2E4();
  v12(v9, v5);
  v33._countAndFlagsBits = 0x636E7973206F7420;
  v33._object = 0xE900000000000020;
  sub_10004C304(v33);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  v15 = v26;
  sub_10004C324();
  v16 = sub_10004C274();
  v14(v15, v27);
  sub_1000057AC(&qword_100070FF0, &qword_100051580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10004EA40;
  *(v17 + 32) = v23;
  *(v17 + 40) = v16;
  v18 = sub_10004C264();

  return v18;
}

uint64_t sub_100028E2C()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10004EA30;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10004C284();

  return v6;
}

uint64_t sub_100028F30(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1000057AC(&qword_100070FC8, &qword_100051530);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - v4;
  v24 = sub_10004C254();
  v6 = *(v24 - 8);
  v7 = v6[8];
  __chkstk_darwin(v24);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070FD0, &qword_100051538);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10002DD10();
  sub_10004C314();
  v28._countAndFlagsBits = 0xD000000000000027;
  v28._object = 0x800000010005D160;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10002DF8C();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v6[13];
  v12 = v24;
  v21(v9);
  sub_10004C2E4();
  v13 = v6[1];
  v19[1] = v6 + 1;
  v20 = v13;
  v13(v9, v12);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v25 = sub_10004C274();
  v14 = *(v27 + 8);
  v27 += 8;
  v19[0] = v14;
  v14(v5, v26);
  sub_10004C314();
  v31._countAndFlagsBits = 0x6D20796669746F4ELL;
  v31._object = 0xEA00000000002065;
  sub_10004C304(v31);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v32._object = 0x800000010005D190;
  v32._countAndFlagsBits = 0xD000000000000012;
  sub_10004C304(v32);
  (v21)(v9, v22, v12);
  sub_10004C2E4();
  v20(v9, v12);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v15 = sub_10004C274();
  (v19[0])(v5, v26);
  sub_1000057AC(&qword_100070FD8, &qword_100051540);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004EA40;
  *(v16 + 32) = v25;
  *(v16 + 40) = v15;
  v17 = sub_10004C264();

  return v17;
}

uint64_t sub_100029400()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004FD40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10004C284();

  return v5;
}

uint64_t sub_100029500()
{
  v24 = sub_1000057AC(&qword_100070FC8, &qword_100051530);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FD0, &qword_100051538);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10002DD10();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD00000000000002BLL;
  v25._object = 0x800000010005D100;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._object = 0x800000010005D130;
  v27._countAndFlagsBits = 0xD000000000000021;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070FD8, &qword_100051540);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_100029908(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1000057AC(&qword_100070FB0, &qword_1000514F0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - v4;
  v24 = sub_10004C254();
  v6 = *(v24 - 8);
  v7 = v6[8];
  __chkstk_darwin(v24);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070FB8, &qword_1000514F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100023A04();
  sub_10004C314();
  v28._object = 0x800000010005D0D0;
  v28._countAndFlagsBits = 0xD000000000000024;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_100022610();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v6[13];
  v12 = v24;
  v21(v9);
  sub_10004C2E4();
  v13 = v6[1];
  v19[1] = v6 + 1;
  v20 = v13;
  v13(v9, v12);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v25 = sub_10004C274();
  v14 = *(v27 + 8);
  v27 += 8;
  v19[0] = v14;
  v14(v5, v26);
  sub_10004C314();
  v31._countAndFlagsBits = 0x6D20796669746F4ELL;
  v31._object = 0xEA00000000002065;
  sub_10004C304(v31);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v32._countAndFlagsBits = 0x65766520726F6620;
  v32._object = 0xEF206E692073746ELL;
  sub_10004C304(v32);
  (v21)(v9, v22, v12);
  sub_10004C2E4();
  v20(v9, v12);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v15 = sub_10004C274();
  (v19[0])(v5, v26);
  sub_1000057AC(&qword_100070FC0, &qword_100051500);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004EA40;
  *(v16 + 32) = v25;
  *(v16 + 40) = v15;
  v17 = sub_10004C264();

  return v17;
}

uint64_t sub_100029DDC()
{
  v23 = sub_10004C294();
  v22 = sub_10004C294();
  v21 = sub_10004C294();
  v20 = sub_10004C294();
  v19 = sub_10004C294();
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512D0;
  *(v9 + 32) = v23;
  *(v9 + 40) = v22;
  *(v9 + 48) = v21;
  *(v9 + 56) = v20;
  *(v9 + 64) = v19;
  *(v9 + 72) = v18;
  *(v9 + 80) = v17;
  *(v9 + 88) = v16;
  *(v9 + 96) = v15;
  *(v9 + 104) = v14;
  *(v9 + 112) = v13;
  *(v9 + 120) = v12;
  *(v9 + 128) = v0;
  *(v9 + 136) = v1;
  *(v9 + 144) = v2;
  *(v9 + 152) = v3;
  *(v9 + 160) = v4;
  *(v9 + 168) = v5;
  *(v9 + 176) = v6;
  *(v9 + 184) = v7;
  *(v9 + 192) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002A140()
{
  v24 = sub_1000057AC(&qword_100070FB0, &qword_1000514F0);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FB8, &qword_1000514F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100023A04();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x800000010005CF80;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._object = 0x800000010005CFB0;
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070FC0, &qword_100051500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_10002A554(uint64_t a1)
{
  v23 = a1;
  v25 = sub_1000057AC(&qword_100070F98, &qword_1000514B0);
  v27 = *(v25 - 8);
  v1 = *(v27 + 64);
  __chkstk_darwin(v25);
  v3 = v19 - v2;
  v26 = sub_10004C254();
  v4 = *(v26 - 8);
  v5 = v4[8];
  __chkstk_darwin(v26);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FA0, &qword_1000514B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10002DD64();
  sub_10004C314();
  v28._countAndFlagsBits = 0xD00000000000002CLL;
  v28._object = 0x800000010005CF30;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10002DEC4();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v4[13];
  v10 = v26;
  v21(v7);
  sub_10004C2E4();
  v11 = v4[1];
  v19[1] = v4 + 1;
  v20 = v11;
  v11(v7, v10);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v24 = sub_10004C274();
  v12 = *(v27 + 8);
  v27 += 8;
  v19[0] = v12;
  v13 = v25;
  v12(v3, v25);
  sub_10004C314();
  v31._countAndFlagsBits = 0x6D20796669746F4ELL;
  v31._object = 0xEA00000000002065;
  sub_10004C304(v31);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v32._object = 0x800000010005CF60;
  v32._countAndFlagsBits = 0xD000000000000017;
  sub_10004C304(v32);
  v14 = v26;
  (v21)(v7, v22, v26);
  sub_10004C2E4();
  v20(v7, v14);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v15 = sub_10004C274();
  (v19[0])(v3, v13);
  sub_1000057AC(&qword_100070FA8, &qword_1000514C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004EA40;
  *(v16 + 32) = v24;
  *(v16 + 40) = v15;
  v17 = sub_10004C264();

  return v17;
}

uint64_t sub_10002AA38()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10004FD10;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002ABE8()
{
  v24 = sub_1000057AC(&qword_100070F98, &qword_1000514B0);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070FA0, &qword_1000514B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10002DD64();
  sub_10004C314();
  v25._countAndFlagsBits = 0xD000000000000030;
  v25._object = 0x800000010005CEC0;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._object = 0x800000010005CF00;
  v27._countAndFlagsBits = 0xD000000000000026;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070FA8, &qword_1000514C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_10002AFEC()
{
  v24 = sub_1000057AC(&qword_100070F80, &qword_100051470);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F88, &qword_100051478);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100002F44();
  sub_10004C314();
  v25._object = 0x800000010005CE60;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._countAndFlagsBits = 0xD000000000000037;
  v27._object = 0x800000010005CE80;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070F90, &qword_100051480);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_10002B3F0()
{
  v0 = sub_1000057AC(&qword_100070F80, &qword_100051470);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10004C254();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070F88, &qword_100051478);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100002F44();
  sub_10004C314();
  v31._object = 0x800000010005CDD0;
  v31._countAndFlagsBits = 0xD00000000000001DLL;
  sub_10004C304(v31);
  v26 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v23 = v6[13];
  v23(v9);
  sub_10004C2E4();
  v27 = v6[1];
  v28 = v6 + 1;
  v27(v9, v5);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10004C304(v32);
  sub_10004C324();
  v25 = sub_10004C274();
  v12 = v29;
  v22 = *(v30 + 8);
  v30 += 8;
  v22(v4, v29);
  sub_10004C314();
  v33._countAndFlagsBits = 0xD000000000000027;
  v33._object = 0x800000010005CDF0;
  sub_10004C304(v33);
  v13 = v23;
  (v23)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004C304(v34);
  sub_10004C324();
  v24 = sub_10004C274();
  v14 = v12;
  v15 = v22;
  v22(v4, v14);
  sub_10004C314();
  v35._countAndFlagsBits = 0xD00000000000003DLL;
  v35._object = 0x800000010005CE20;
  sub_10004C304(v35);
  (v13)(v9, v26, v5);
  sub_10004C2E4();
  v27(v9, v5);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10004C304(v36);
  sub_10004C324();
  v16 = sub_10004C274();
  v15(v4, v29);
  sub_1000057AC(&qword_100070F90, &qword_100051480);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100050820;
  v18 = v24;
  *(v17 + 32) = v25;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10004C264();

  return v19;
}

uint64_t sub_10002B8B8(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1000057AC(&qword_100070F68, &qword_100051430);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - v4;
  v24 = sub_10004C254();
  v6 = *(v24 - 8);
  v7 = v6[8];
  __chkstk_darwin(v24);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070F70, &qword_100051438);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10001D06C();
  sub_10004C314();
  v28._countAndFlagsBits = 0xD000000000000027;
  v28._object = 0x800000010005CD80;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10001BEB4();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v6[13];
  v12 = v24;
  v21(v9);
  sub_10004C2E4();
  v13 = v6[1];
  v19[1] = v6 + 1;
  v20 = v13;
  v13(v9, v12);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v25 = sub_10004C274();
  v14 = *(v27 + 8);
  v27 += 8;
  v19[0] = v14;
  v14(v5, v26);
  sub_10004C314();
  v31._object = 0x800000010005CDB0;
  v31._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10004C304(v31);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  sub_10004C304(v32);
  (v21)(v9, v22, v12);
  sub_10004C2E4();
  v20(v9, v12);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v15 = sub_10004C274();
  (v19[0])(v5, v26);
  sub_1000057AC(&qword_100070F78, &qword_100051440);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004EA40;
  *(v16 + 32) = v25;
  *(v16 + 40) = v15;
  v17 = sub_10004C264();

  return v17;
}

uint64_t sub_10002BD7C()
{
  v25 = sub_10004C294();
  v24 = sub_10004C294();
  v23 = sub_10004C294();
  v22 = sub_10004C294();
  v21 = sub_10004C294();
  v20 = sub_10004C294();
  v19 = sub_10004C294();
  v18 = sub_10004C294();
  v17 = sub_10004C294();
  v16 = sub_10004C294();
  v15 = sub_10004C294();
  v14 = sub_10004C294();
  v13 = sub_10004C294();
  v12 = sub_10004C294();
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  v7 = sub_10004C294();
  v8 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000512E0;
  *(v9 + 32) = v25;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v19;
  *(v9 + 88) = v18;
  *(v9 + 96) = v17;
  *(v9 + 104) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v14;
  *(v9 + 128) = v13;
  *(v9 + 136) = v12;
  *(v9 + 144) = v0;
  *(v9 + 152) = v1;
  *(v9 + 160) = v2;
  *(v9 + 168) = v3;
  *(v9 + 176) = v4;
  *(v9 + 184) = v5;
  *(v9 + 192) = v6;
  *(v9 + 200) = v7;
  *(v9 + 208) = v8;
  v10 = sub_10004C284();

  return v10;
}

uint64_t sub_10002C104(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1000057AC(&qword_100070F50, &qword_1000513F0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - v4;
  v24 = sub_10004C254();
  v6 = *(v24 - 8);
  v7 = v6[8];
  __chkstk_darwin(v24);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057AC(&qword_100070F58, &qword_1000513F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10002DDB8();
  sub_10004C314();
  v28._countAndFlagsBits = 0xD000000000000021;
  v28._object = 0x800000010005CC90;
  sub_10004C304(v28);
  swift_getKeyPath();
  sub_10002DE68();
  sub_10004C244();

  sub_10004C2F4();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_10004C304(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v6[13];
  v12 = v24;
  v21(v9);
  sub_10004C2E4();
  v13 = v6[1];
  v19[1] = v6 + 1;
  v20 = v13;
  v13(v9, v12);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_10004C304(v30);
  sub_10004C324();
  v25 = sub_10004C274();
  v14 = *(v27 + 8);
  v27 += 8;
  v19[0] = v14;
  v14(v5, v26);
  sub_10004C314();
  v31._object = 0x800000010005CCC0;
  v31._countAndFlagsBits = 0xD000000000000012;
  sub_10004C304(v31);
  swift_getKeyPath();
  sub_10004C244();

  sub_10004C2F4();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  sub_10004C304(v32);
  (v21)(v9, v22, v12);
  sub_10004C2E4();
  v20(v9, v12);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10004C304(v33);
  sub_10004C324();
  v15 = sub_10004C274();
  (v19[0])(v5, v26);
  sub_1000057AC(&qword_100070F60, &qword_100051400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004EA40;
  *(v16 + 32) = v25;
  *(v16 + 40) = v15;
  v17 = sub_10004C264();

  return v17;
}

uint64_t sub_10002C5C8()
{
  v0 = sub_10004C294();
  v1 = sub_10004C294();
  v2 = sub_10004C294();
  v3 = sub_10004C294();
  v4 = sub_10004C294();
  v5 = sub_10004C294();
  v6 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000512F0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_10004C284();

  return v8;
}

uint64_t sub_10002C710()
{
  v24 = sub_1000057AC(&qword_100070F30, &qword_1000513B0);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F38, &qword_1000513B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000B40C();
  sub_10004C314();
  v25._object = 0x800000010005CC20;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._countAndFlagsBits = 0xD000000000000020;
  v27._object = 0x800000010005CC40;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070F40, &qword_1000513C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_10002CB14()
{
  v24 = sub_1000057AC(&qword_100070F30, &qword_1000513B0);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10004C254();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000057AC(&qword_100070F38, &qword_1000513B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000B40C();
  sub_10004C314();
  v25._object = 0x800000010005CBC0;
  v25._countAndFlagsBits = 0xD000000000000020;
  sub_10004C304(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10004C2E4();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10004C304(v26);
  sub_10004C324();
  v10 = sub_10004C274();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10004C314();
  v27._countAndFlagsBits = 0xD000000000000021;
  v27._object = 0x800000010005CBF0;
  sub_10004C304(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10004C2E4();
  v19(v7, v12);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_10004C304(v28);
  sub_10004C324();
  v13 = sub_10004C274();
  (v22)(v2, v11);
  sub_1000057AC(&qword_100070F40, &qword_1000513C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004EA40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10004C264();

  return v15;
}

uint64_t sub_10002CF18(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10004C2D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10004C244();

  a4(v11);
  sub_10004C2C4();
  v12 = sub_10004C2B4();
  (*(v7 + 8))(v10, v6);
  sub_1000057AC(&qword_100070F20, &qword_1000513A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004FD20;
  *(v13 + 32) = v12;
  v14 = sub_10004C2A4();

  return v14;
}

uint64_t sub_10002D098()
{
  v0 = sub_10004C294();
  sub_1000057AC(&qword_100070F28, &qword_1000513A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004FD20;
  *(v1 + 32) = v0;
  v2 = sub_10004C284();

  return v2;
}

uint64_t sub_10002D120()
{
  if (qword_1000703C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002D18C()
{
  v0 = sub_10004C354();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100042794();
  v62 = v5;
  sub_10002DC68();
  sub_10004C364();
  v60 = sub_10004C344();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v61 = sub_100042794();
  v62 = v7;
  sub_10004C364();
  v59 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10000FE38();
  v62 = v8;
  sub_10000E5F4();
  sub_10004C364();
  v58 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10000FE38();
  v62 = v9;
  sub_10004C364();
  v57 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10001808C();
  v62 = v10;
  sub_100016850();
  sub_10004C364();
  v56 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10001808C();
  v62 = v11;
  sub_10004C364();
  v55 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_1000305E4();
  v62 = v12;
  sub_10002DCBC();
  sub_10004C364();
  v54 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_1000305E4();
  v62 = v13;
  sub_10004C364();
  v53 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_100014ECC();
  v62 = v14;
  sub_1000137FC();
  sub_10004C364();
  v52 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_100035D28();
  v62 = v15;
  v63 = v16;
  sub_10002DD10();
  sub_10004C364();
  v51 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_100035D28();
  v62 = v17;
  v63 = v18;
  sub_10004C364();
  v50 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_1000258AC();
  v62 = v19;
  sub_100023A04();
  sub_10004C364();
  v49 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_1000258AC();
  v62 = v20;
  sub_10004C364();
  v48 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10004B3A4();
  v62 = v21;
  sub_10002DD64();
  sub_10004C364();
  v47 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10004B3A4();
  v62 = v22;
  sub_10004C364();
  v46 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_100004FF0();
  v62 = v23;
  sub_100002F44();
  sub_10004C364();
  v45 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_100004FF0();
  v62 = v24;
  sub_10004C364();
  v25 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10001E794();
  v62 = v26;
  sub_10001D06C();
  sub_10004C364();
  v27 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10003AD10();
  v62 = v28;
  sub_10002DDB8();
  sub_10004C364();
  v29 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10000CC8C();
  v62 = v30;
  sub_10000B40C();
  sub_10004C364();
  v31 = sub_10004C344();
  v6(v4, v0);
  v61 = sub_10000CC8C();
  v62 = v32;
  sub_10004C364();
  v33 = sub_10004C344();
  v6(v4, v0);
  sub_1000057AC(&qword_100070F10, &qword_100051370);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000512D0;
  v35 = v59;
  *(v34 + 32) = v60;
  *(v34 + 40) = v35;
  v36 = v57;
  *(v34 + 48) = v58;
  *(v34 + 56) = v36;
  v37 = v55;
  *(v34 + 64) = v56;
  *(v34 + 72) = v37;
  v38 = v53;
  *(v34 + 80) = v54;
  *(v34 + 88) = v38;
  v39 = v51;
  *(v34 + 96) = v52;
  *(v34 + 104) = v39;
  v40 = v49;
  *(v34 + 112) = v50;
  *(v34 + 120) = v40;
  v41 = v47;
  *(v34 + 128) = v48;
  *(v34 + 136) = v41;
  v42 = v45;
  *(v34 + 144) = v46;
  *(v34 + 152) = v42;
  *(v34 + 160) = v25;
  *(v34 + 168) = v27;
  *(v34 + 176) = v29;
  *(v34 + 184) = v31;
  *(v34 + 192) = v33;
  v43 = sub_10004C334();

  return v43;
}

unint64_t sub_10002DC68()
{
  result = qword_100070EE8;
  if (!qword_100070EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EE8);
  }

  return result;
}

unint64_t sub_10002DCBC()
{
  result = qword_100070EF0;
  if (!qword_100070EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EF0);
  }

  return result;
}

unint64_t sub_10002DD10()
{
  result = qword_100070EF8;
  if (!qword_100070EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070EF8);
  }

  return result;
}

unint64_t sub_10002DD64()
{
  result = qword_100070F00;
  if (!qword_100070F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F00);
  }

  return result;
}

unint64_t sub_10002DDB8()
{
  result = qword_100070F08;
  if (!qword_100070F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F08);
  }

  return result;
}

unint64_t sub_10002DE14()
{
  result = qword_100070F18;
  if (!qword_100070F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F18);
  }

  return result;
}

unint64_t sub_10002DE68()
{
  result = qword_100070F48;
  if (!qword_100070F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F48);
  }

  return result;
}

unint64_t sub_10002DEC4()
{
  result = qword_1000716A0;
  if (!qword_1000716A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716A0);
  }

  return result;
}

uint64_t sub_10002DF18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004C1F4();
  *a2 = v5;
  return result;
}

uint64_t sub_10002DF54(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10004C204();
}

unint64_t sub_10002DF8C()
{
  result = qword_100071190;
  if (!qword_100071190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071190);
  }

  return result;
}

uint64_t sub_10002DFE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004C1F4();
  *a2 = v5;
  return result;
}

uint64_t sub_10002E01C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10004C204();
}

unint64_t sub_10002E054()
{
  result = qword_100071040;
  if (!qword_100071040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071040);
  }

  return result;
}

unint64_t sub_10002E0FC()
{
  result = qword_100071070;
  if (!qword_100071070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071070);
  }

  return result;
}

unint64_t sub_10002E154()
{
  result = qword_100071078;
  if (!qword_100071078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071078);
  }

  return result;
}

uint64_t sub_10002E1CC()
{
  v1 = *(v0 + 16);
  *v1 = CalAlertInviteeDeclines() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002E260()
{
  v1 = *(v0 + 16);
  CalSetAlertInviteeDeclines();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002E2C4()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004C5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C754();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10004C574();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10004C4C4();
}

uint64_t sub_10002E598@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v27 = &v26 - v3;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_10004C554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004C754();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_10004C564();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_10004C744();
  sub_10004C594();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_10004C584();
  (*(v18 + 56))(v7, 1, 1, v17);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C3C4();
  v22 = sub_100005C58(v21, qword_100071B70);
  v23 = *(v21 - 8);
  v24 = v27;
  (*(v23 + 16))(v27, v22, v21);
  (*(v23 + 56))(v24, 0, 1, v21);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_10002E9A4()
{
  v0 = qword_100071060;

  return v0;
}

unint64_t sub_10002E9E0()
{
  result = qword_100071080;
  if (!qword_100071080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071080);
  }

  return result;
}

unint64_t sub_10002EA38()
{
  result = qword_100071088;
  if (!qword_100071088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071088);
  }

  return result;
}

unint64_t sub_10002EA90()
{
  result = qword_100071090;
  if (!qword_100071090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071090);
  }

  return result;
}

unint64_t sub_10002EAE8()
{
  result = qword_100071098;
  if (!qword_100071098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071098);
  }

  return result;
}

unint64_t sub_10002EB40()
{
  result = qword_1000710A0;
  if (!qword_1000710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710A0);
  }

  return result;
}

unint64_t sub_10002EB98()
{
  result = qword_1000710A8;
  if (!qword_1000710A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710A8);
  }

  return result;
}

unint64_t sub_10002EBF0()
{
  result = qword_1000710B0;
  if (!qword_1000710B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710B0);
  }

  return result;
}

unint64_t sub_10002EC48()
{
  result = qword_1000710B8;
  if (!qword_1000710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710B8);
  }

  return result;
}

uint64_t sub_10002ED04(uint64_t a1)
{
  v2 = sub_10002E0FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002ED54()
{
  result = qword_1000710D0;
  if (!qword_1000710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710D0);
  }

  return result;
}

uint64_t sub_10002EDAC(uint64_t a1)
{
  v2 = sub_10002EC48();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002EE40()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004C754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C564();
  sub_100005C90(v9, qword_100071AC8);
  sub_100005C58(v9, qword_100071AC8);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10002F040()
{
  result = swift_getKeyPath();
  qword_100071AE0 = result;
  return result;
}

uint64_t sub_10002F068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_10002F104, v5, v4);
}

uint64_t sub_10002F104()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_10004C1F4();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 80) = v3;
  sub_10004C1F4();
  *(v0 + 113) = *(v0 + 112);
  if (qword_1000703D8 != -1)
  {
    swift_once();
  }

  v4 = qword_100071AE0;
  *(v0 + 88) = qword_100071AE0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = sub_100005D70(&qword_100071130, &qword_100071138, &unk_100051D18);
  *v6 = v0;
  v6[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 113, v4, &type metadata for Bool, v7);
}

uint64_t (*sub_10002F264(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_10002F2D8(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_10002F34C()
{
  if (qword_1000703D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002F3AC()
{
  result = qword_1000710E8;
  if (!qword_1000710E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710E8);
  }

  return result;
}

unint64_t sub_10002F404()
{
  result = qword_1000710F0;
  if (!qword_1000710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710F0);
  }

  return result;
}

uint64_t sub_10002F4C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000703D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C564();
  v3 = sub_100005C58(v2, qword_100071AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002F56C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_10002F068(a1, v5, v4);
}

char *sub_10002F618@<X0>(char **a1@<X8>)
{
  result = sub_1000305E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F640(uint64_t a1)
{
  v2 = sub_10002DCBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002F680()
{
  result = qword_1000710F8;
  if (!qword_1000710F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000710F8);
  }

  return result;
}

unint64_t sub_10002F6D8()
{
  result = qword_100071100;
  if (!qword_100071100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071100);
  }

  return result;
}

uint64_t sub_10002F72C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100030DA0();
}

uint64_t sub_10002F7D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002E154();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10002F884()
{
  result = qword_100071108;
  if (!qword_100071108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071108);
  }

  return result;
}

unint64_t sub_10002F8DC()
{
  result = qword_100071110;
  if (!qword_100071110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071110);
  }

  return result;
}

uint64_t sub_10002F930(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002E154();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10002F9E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002E154();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10002FA98()
{
  result = qword_100071118;
  if (!qword_100071118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071118);
  }

  return result;
}

unint64_t sub_10002FAF0()
{
  result = qword_100071120;
  if (!qword_100071120)
  {
    sub_100002C4C(&qword_100071128, qword_100051B60);
    sub_10002EBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071120);
  }

  return result;
}

uint64_t sub_10002FB74(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002EAE8();
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10002FC58@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000057AC(&qword_1000705C0, &unk_10004D5D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = sub_1000057AC(&qword_1000705C8, qword_10004EA10);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  swift_getKeyPath();
  sub_1000057AC(&qword_1000705D0, &unk_10004D5E0);
  v19._object = &protocol witness table for Text;
  sub_10002F6D8();
  sub_100005D70(&qword_1000705D8, &qword_1000705D0, &unk_10004D5E0);
  sub_10004C724();
  sub_10004C6A4();
  v11 = sub_100005D70(&qword_1000705E0, &qword_1000705C0, &unk_10004D5D0);
  sub_10004C6C4();

  (*(v2 + 8))(v5, v1);
  v12 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0x800000010005D7F0;
  v28._object = 0x8000000100055D20;
  v28._countAndFlagsBits = 0xD000000000000015;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v13.super.isa = v12;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v14 = sub_10004C534(v28, v29, v13, v30, v19);
  v16 = v15;

  v26 = v14;
  v27 = v16;
  v24 = v1;
  v25 = v11;
  swift_getOpaqueTypeConformance2();
  sub_100005DB8();
  v17 = v21;
  sub_10004C6B4();

  return (*(v22 + 8))(v10, v17);
}

uint64_t sub_10003002C()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0x8000000100057AC0;
  v4._object = 0x8000000100055D20;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004C534(v4, v5, v1, v6, v3);

  sub_100005DB8();
  return sub_10004C6E4();
}

uint64_t sub_100030110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100030344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

char *sub_1000305E4()
{
  v0 = sub_1000057AC(&qword_100070568, &unk_10004E1F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v58 = &v43 - v2;
  v3 = sub_10004C494();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v43 - v11;
  v12 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v59 = &v43 - v14;
  v15 = sub_10004C554();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004C5A4();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_10004C754();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10004C564();
  v53 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v43 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000057AC(&unk_100071140, &unk_100051D28);
  sub_10004C744();
  sub_10004C594();
  v28 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v29 = *(v16 + 104);
  v44 = v15;
  v29(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v15);
  v45 = v29;
  v46 = v16 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v29(v19, v28, v15);
  v30 = v59;
  sub_10004C574();
  v31 = *(v25 + 56);
  v52 = v25 + 56;
  v54 = v31;
  v31(v30, 0, 1, v24);
  v64 = 0;
  v32 = sub_10004C1C4();
  v47 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v51 = v34;
  v55 = v33 + 56;
  v34(v60, 1, 1, v32);
  v34(v56, 1, 1, v32);
  v48 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v62 + 104);
  v62 += 104;
  v49 = v35;
  v36 = v57;
  v35(v57);
  sub_10002E0FC();
  v37 = v36;
  v56 = sub_10004C224();
  v50 = sub_1000057AC(&qword_100070588, &qword_10004E210);
  sub_10004C744();
  sub_10004C594();
  v38 = v44;
  v39 = v45;
  v45(v19, v28, v44);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v39(v19, v28, v38);
  v40 = v59;
  sub_10004C574();
  v54(v40, 0, 1, v53);
  v63 = 2;
  v41 = sub_10004C794();
  (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
  v51(v60, 1, 1, v47);
  v49(v37, v48, v61);
  sub_10004C234();
  return v56;
}

uint64_t sub_100030DA0()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004C5A4() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_10004C754() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_10004C564() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100030EE0, 0, 0);
}

uint64_t sub_100030EE0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000057AC(&qword_1000710E0, qword_100051900);
  sub_10004C744();
  sub_10004C594();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004C574();
  sub_100005D70(&qword_100071130, &qword_100071138, &unk_100051D18);
  v7 = sub_10004C514();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1000310EC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004C554();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C754();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004C4D4();
  sub_100005C90(v15, qword_100071AE8);
  sub_100005C58(v15, qword_100071AE8);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004C584();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004C4C4();
}

uint64_t sub_1000313C8()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v90 = &v58 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v89 = &v58 - v5;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C754();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004C564();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_1000712C8, &unk_1000527E0);
  v19 = sub_1000057AC(&qword_1000712D0, &qword_1000547D0);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v82 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  v62 = xmmword_10004EA30;
  *(v21 + 16) = xmmword_10004EA30;
  v64 = v21;
  v87 = v19;
  v67 = *(v19 + 48);
  v86 = v21 + v20;
  *(v21 + v20) = 0;
  sub_10004C744();
  sub_10004C594();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v65 = *(v7 + 104);
  v69 = v6;
  v83 = v7 + 104;
  v65(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  v88 = v18;
  v23 = v73;
  sub_10004C574();
  v24 = *(v23 + 56);
  v84 = v15;
  v80 = v24;
  v81 = v23 + 56;
  v24(v89, 1, 1, v15);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v25 = sub_10004C3C4();
  v78 = sub_100005C58(v25, qword_100071B70);
  v71 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v77 = v26 + 16;
  v79 = v27;
  v28 = v90;
  v27(v90, v78, v25);
  v29 = *(v26 + 56);
  v75 = v26 + 56;
  v76 = v29;
  v29(v28, 0, 1, v25);
  v30 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v85 = *(v23 + 72);
  v73 = *(v23 + 80);
  v74 = v30;
  v72 = 2 * v85;
  v70 = (v73 + 32) & ~v73;
  v31 = swift_allocObject();
  v66 = xmmword_10004EA40;
  v63 = v31;
  *(v31 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v32 = v69;
  v33 = v65;
  v65(v10, v22, v69);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v68 = v22;
  v33(v10, v22, v32);
  sub_10004C574();
  v34 = v86;
  v35 = v89;
  sub_10004C3F4();
  v63 = v34 + v82;
  v67 = *(v87 + 48);
  *v63 = 1;
  sub_10004C744();
  sub_10004C594();
  v36 = v32;
  v33(v10, v22, v32);
  sub_10004C574();
  v80(v35, 1, 1, v84);
  v37 = v90;
  v38 = v71;
  v79(v90, v78, v71);
  v76(v37, 0, 1, v38);
  v61 = swift_allocObject();
  *(v61 + 16) = v66;
  sub_10004C744();
  sub_10004C594();
  v39 = v68;
  v40 = v65;
  v65(v10, v68, v36);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v39, v36);
  sub_10004C574();
  v41 = v89;
  sub_10004C3F4();
  v61 = 2 * v82;
  v59 = (v86 + 2 * v82);
  v60 = *(v87 + 48);
  *v59 = 2;
  sub_10004C744();
  sub_10004C594();
  v42 = v39;
  v43 = v36;
  v40(v10, v42, v36);
  sub_10004C574();
  v80(v41, 1, 1, v84);
  v44 = v71;
  v79(v37, v78, v71);
  v76(v37, 0, 1, v44);
  v67 = 4 * v85;
  v63 = 5 * v85;
  v45 = v85;
  v58 = swift_allocObject();
  *(v58 + 16) = v62;
  sub_10004C744();
  sub_10004C594();
  v46 = v68;
  v40(v10, v68, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  v47 = v72;
  sub_10004C574();
  *&v62 = v47 + v45;
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  v48 = v89;
  v49 = v90;
  sub_10004C3F4();
  v60 = v86 + v61 + v82;
  v61 = *(v87 + 48);
  *v60 = 3;
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  v80(v48, 1, 1, v84);
  v50 = v71;
  v79(v49, v78, v71);
  v76(v49, 0, 1, v50);
  *(swift_allocObject() + 16) = v66;
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v46, v43);
  sub_10004C574();
  v51 = v89;
  v52 = v90;
  sub_10004C3F4();
  *&v66 = v86 + 4 * v82;
  v82 = *(v87 + 48);
  *v66 = 4;
  sub_10004C744();
  sub_10004C594();
  v53 = v68;
  v40(v10, v68, v69);
  sub_10004C574();
  v80(v51, 1, 1, v84);
  v54 = v71;
  v79(v52, v78, v71);
  v76(v52, 0, 1, v54);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10004FD30;
  sub_10004C744();
  sub_10004C594();
  v55 = v69;
  v40(v10, v53, v69);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v53, v55);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v53, v55);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v53, v55);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v53, v55);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40(v10, v53, v55);
  sub_10004C574();
  sub_10004C3F4();
  v56 = sub_10004ABDC(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071B00 = v56;
  return result;
}

uint64_t sub_100032A08@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  if (qword_1000703E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_100071B00;
  if (*(qword_100071B00 + 16) && (v13 = sub_100048830(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_10004C414();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v7, v16 + *(v18 + 72) * v15, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v17 = sub_10004C414();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  sub_10004C414();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v19 = sub_10004C564();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_10004C544();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_1000159C4(v11, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v22 = sub_10004C564();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v11, 0, 1, v22);
    return (*(v23 + 32))(a2, v11, v22);
  }

  return result;
}

unint64_t sub_100032DEC()
{
  result = qword_100071160;
  if (!qword_100071160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071160);
  }

  return result;
}

Swift::Int sub_100032E40()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100032F48()
{
  *v0;
  *v0;
  *v0;
  sub_10004C784();
}

Swift::Int sub_10003303C()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100033140@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100036598(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100033170(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7472656C416F6ELL;
  v5 = 0xEC00000065726F66;
  v6 = 0x6542796144656E6FLL;
  v7 = 0x42737961446F7774;
  if (v2 != 3)
  {
    v7 = 0x426B656557656E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xED000065726F6665;
  }

  if (*v1)
  {
    v4 = 0x657645664F796164;
    v3 = 0xEA0000000000746ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_100033238()
{
  result = qword_100071168;
  if (!qword_100071168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071168);
  }

  return result;
}

unint64_t sub_100033290()
{
  result = qword_100071170;
  if (!qword_100071170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071170);
  }

  return result;
}

unint64_t sub_1000332E8()
{
  result = qword_100071178;
  if (!qword_100071178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071178);
  }

  return result;
}

unint64_t sub_100033340()
{
  result = qword_100071180;
  if (!qword_100071180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071180);
  }

  return result;
}

unint64_t sub_100033398()
{
  result = qword_100071188;
  if (!qword_100071188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071188);
  }

  return result;
}

unint64_t sub_1000333F4()
{
  result = qword_100071198;
  if (!qword_100071198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071198);
  }

  return result;
}

unint64_t sub_1000334AC()
{
  result = qword_1000711A0;
  if (!qword_1000711A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711A0);
  }

  return result;
}

uint64_t sub_100033500(uint64_t a1)
{
  v2 = sub_1000334AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100033550()
{
  result = qword_1000711A8;
  if (!qword_1000711A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711A8);
  }

  return result;
}

unint64_t sub_1000335A8()
{
  result = qword_1000711B0;
  if (!qword_1000711B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711B0);
  }

  return result;
}

unint64_t sub_100033600()
{
  result = qword_1000711B8;
  if (!qword_1000711B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711B8);
  }

  return result;
}

uint64_t sub_100033654()
{
  if (qword_1000703E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1000336CC(uint64_t a1)
{
  v2 = sub_1000333F4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003376C()
{
  result = qword_1000711D0;
  if (!qword_1000711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711D0);
  }

  return result;
}

unint64_t sub_1000337C4()
{
  result = qword_1000711D8;
  if (!qword_1000711D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711D8);
  }

  return result;
}

uint64_t sub_10003381C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100033840, 0, 0);
}

uint64_t sub_100033840()
{
  v1 = *(v0 + 32);
  sub_10004C084();
  v2 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = [objc_opt_self() defaultBirthdayAlarmOffsetWithEventStore:v2];
    v4 = [v3 integerValue];
    if (v4 == sub_10004C524())
    {
      v5 = 0;
    }

    else
    {
      [v3 doubleValue];
      v5 = sub_1000364F8(v6);
    }
  }

  else
  {
    v5 = 0;
  }

  **(v0 + 24) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100033958(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 32) = *a2;
  return _swift_task_switch(sub_100033984, 0, 0);
}

uint64_t sub_100033984()
{
  v1 = *(v0 + 24);
  sub_10004C084();
  v2 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v2)
  {
    if (*(v0 + 32) > 1u || *(v0 + 32))
    {
      v3 = sub_10004C844();

      if ((v3 & 1) == 0)
      {
        v6 = qword_100052868[*(v0 + 32) - 1];
        v4 = objc_opt_self();
        v5.super.super.isa = sub_10004C7D4().super.super.isa;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v4 = objc_opt_self();
    sub_10004C524();
    v5.super.super.isa = sub_10004C7E4().super.super.isa;
LABEL_8:
    isa = v5.super.super.isa;
    [v4 setDefaultAlarmOffset:v5.super.super.isa forAlarmType:2 eventStore:v2];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100033B6C()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004C5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C754();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10004C574();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10004C4C4();
}

uint64_t sub_100033E40@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v27 = &v26 - v3;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_10004C554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004C754();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_10004C564();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_10004C744();
  sub_10004C594();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_10004C574();
  (*(v18 + 56))(v7, 1, 1, v17);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C3C4();
  v22 = sub_100005C58(v21, qword_100071B70);
  v23 = *(v21 - 8);
  v24 = v27;
  (*(v23 + 16))(v27, v22, v21);
  (*(v23 + 56))(v24, 0, 1, v21);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_100034270()
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  qword_100071B08 = result;
  return result;
}

uint64_t sub_1000342E0()
{
  v0 = qword_100071150;

  return v0;
}

unint64_t sub_10003431C()
{
  result = qword_1000711E0;
  if (!qword_1000711E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711E0);
  }

  return result;
}

unint64_t sub_100034374()
{
  result = qword_1000711E8;
  if (!qword_1000711E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711E8);
  }

  return result;
}

unint64_t sub_1000343CC()
{
  result = qword_1000711F0;
  if (!qword_1000711F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711F0);
  }

  return result;
}

unint64_t sub_100034424()
{
  result = qword_1000711F8;
  if (!qword_1000711F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711F8);
  }

  return result;
}

uint64_t sub_100034478@<X0>(void *a1@<X8>)
{
  if (qword_1000703F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100071B08;
}

unint64_t sub_1000344EC()
{
  result = qword_100071200;
  if (!qword_100071200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071200);
  }

  return result;
}

unint64_t sub_100034544()
{
  result = qword_100071208;
  if (!qword_100071208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071208);
  }

  return result;
}

unint64_t sub_10003459C()
{
  result = qword_100071210;
  if (!qword_100071210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071210);
  }

  return result;
}

unint64_t sub_1000345F4()
{
  result = qword_100071218;
  if (!qword_100071218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071218);
  }

  return result;
}

uint64_t sub_1000346B0(uint64_t a1)
{
  v2 = sub_10003376C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100034700()
{
  result = qword_100071230;
  if (!qword_100071230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071230);
  }

  return result;
}

uint64_t sub_100034758(uint64_t a1)
{
  v2 = sub_1000345F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000347EC()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004C754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C564();
  sub_100005C90(v9, qword_100071B10);
  sub_100005C58(v9, qword_100071B10);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_1000349EC()
{
  result = swift_getKeyPath();
  qword_100071B28 = result;
  return result;
}

uint64_t sub_100034A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_10004C7C4();
  v3[9] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_100034AB0, v5, v4);
}

uint64_t sub_100034AB0()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_10004C1F4();
  v3 = v0[2];
  v0[4] = v3;
  v4 = v0[3];
  v0[12] = v3;
  v0[13] = v4;
  v0[5] = v4;
  sub_10004C1F4();
  if (qword_100070400 != -1)
  {
    swift_once();
  }

  v5 = qword_100071B28;
  v0[14] = qword_100071B28;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_100005D70(&qword_1000712A0, &qword_1000712A8, &qword_100052790);
  *v7 = v0;
  v7[1] = sub_100023EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 17, v5, &type metadata for SettingsBirthdaysDefaultAlertTimeType, v8);
}

uint64_t (*sub_100034C0C(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100034C80(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100034CF4()
{
  if (qword_100070400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100034D54()
{
  result = qword_100071250;
  if (!qword_100071250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071250);
  }

  return result;
}

unint64_t sub_100034DAC()
{
  result = qword_100071258;
  if (!qword_100071258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071258);
  }

  return result;
}

uint64_t sub_100034EC8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100034A14(a1, v5, v4);
}

uint64_t sub_100034F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100035D28();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100034FA0(uint64_t a1)
{
  v2 = sub_10002DD10();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100034FE0()
{
  result = qword_100071260;
  if (!qword_100071260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071260);
  }

  return result;
}

unint64_t sub_100035038()
{
  result = qword_100071268;
  if (!qword_100071268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071268);
  }

  return result;
}

uint64_t sub_10003508C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_1000350B0, 0, 0);
}

uint64_t sub_1000350B0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10004C084();
  *v1 = sub_1000365E4(v0[2]);
  v1[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100035124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000337C4();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000351D8()
{
  result = qword_100071270;
  if (!qword_100071270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071270);
  }

  return result;
}

unint64_t sub_100035230()
{
  result = qword_100071278;
  if (!qword_100071278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071278);
  }

  return result;
}

uint64_t sub_100035284(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000337C4();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100035338(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000337C4();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000353EC()
{
  result = qword_100071280;
  if (!qword_100071280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071280);
  }

  return result;
}

unint64_t sub_100035444()
{
  result = qword_100071288;
  if (!qword_100071288)
  {
    sub_100002C4C(&unk_100071290, qword_100052580);
    sub_10003459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071288);
  }

  return result;
}

uint64_t sub_1000354C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100034424();
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v7);
}

__n128 sub_10003557C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100035590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000355D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10003569C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10004C704();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v12[0] = "t setting for birthday events";
  v8 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0x800000010005E940;
  v13._countAndFlagsBits = 0xD000000000000023;
  v13._object = 0x800000010005E910;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10004C534(v13, v14, v9, v15, v11);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_1000334AC();
  sub_100036960();
  sub_100035038();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  sub_10004C6C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100035994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100035BC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100032A08(*a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_100035C60(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100032A08(*a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_100035D28()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v58 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v57 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v41 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v41 - v11;
  v12 = sub_10004C554();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C5A4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004C754();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10004C564();
  v52 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v41 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000057AC(&qword_1000712B0, &qword_100052798);
  sub_10004C744();
  sub_10004C594();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v13 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v12;
  v26(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v44 = v26;
  v45 = v13 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v26(v16, v25, v12);
  v27 = v56;
  sub_10004C574();
  v28 = *(v22 + 56);
  v51 = v22 + 56;
  v53 = v28;
  v28(v27, 0, 1, v21);
  v29 = sub_10004C1C4();
  v61 = 0uLL;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v47 = v31;
  v48 = v30 + 56;
  v32 = v55;
  v31(v55, 1, 1, v29);
  v31(v57, 1, 1, v29);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v60 + 104);
  v60 += 104;
  v50 = v33;
  v33(v58);
  sub_10003376C();
  v34 = v32;
  v54 = sub_10004C224();
  v46 = sub_1000057AC(&unk_1000712B8, &qword_1000527A0);
  sub_10004C744();
  sub_10004C594();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v44(v16, v42, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v37(v16, v35, v36);
  v38 = v56;
  sub_10004C574();
  v53(v38, 0, 1, v52);
  LOBYTE(v61) = 5;
  v39 = v47;
  v47(v34, 1, 1, v29);
  v39(v57, 1, 1, v29);
  v50(v58, v49, v59);
  sub_1000334AC();
  sub_10004C214();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_10004C0E4();
  sub_10004C0A4();
  return v54;
}

uint64_t sub_1000364F8(double a1)
{
  if (sub_10004C524() == a1)
  {
    return 0;
  }

  if (a1 == 32400.0)
  {
    return 1;
  }

  if (a1 == -54000.0)
  {
    return 2;
  }

  if (a1 == -140400.0)
  {
    return 3;
  }

  return 4 * (a1 == -572400.0);
}

uint64_t sub_100036598(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D760;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000365E4(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000057AC(&qword_100071248, qword_100052320);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_1000712A0, &qword_1000712A8, &qword_100052790);
  sub_1000334AC();
  v13 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v15, 0, sizeof(v15));
  v16 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v15[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v13;
}

unint64_t sub_100036960()
{
  result = qword_1000712D8;
  if (!qword_1000712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D8);
  }

  return result;
}

uint64_t sub_1000369D0()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004C554();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C754();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004C4D4();
  sub_100005C90(v15, qword_100071B30);
  sub_100005C58(v15, qword_100071B30);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004C584();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004C4C4();
}

uint64_t sub_100036CB4()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v87 = &v79 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v105 = &v79 - v5;
  v104 = sub_10004C554();
  v6 = *(v104 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v104);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C5A4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C754();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004C564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v102 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v79 - v23;
  sub_1000057AC(&qword_100071440, &qword_100053238);
  v25 = sub_1000057AC(&qword_100071448, &unk_100053240);
  v26 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
  v98 = *(*(v25 - 8) + 72);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100052890;
  v82 = v27;
  v101 = v25;
  v81 = *(v25 + 48);
  v99 = v27 + v26;
  *(v27 + v26) = 0;
  sub_10004C744();
  sub_10004C594();
  v95 = *(v6 + 104);
  v28 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v103 = v6 + 104;
  v95(v9);
  v29 = v9;
  v85 = v24;
  v30 = v17;
  v31 = v13;
  v32 = v29;
  sub_10004C574();
  v33 = *(v19 + 56);
  v100 = v18;
  v96 = v33;
  v97 = v19 + 56;
  v33(v105, 1, 1, v18);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v34 = sub_10004C3C4();
  v86 = sub_100005C58(v34, qword_100071B70);
  v93 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v84 = v35 + 16;
  v89 = v36;
  v37 = v87;
  v36(v87, v86, v34);
  v90 = *(v35 + 56);
  v94 = v35 + 56;
  v90(v37, 0, 1, v34);
  sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v80 = *(v19 + 72);
  v38 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v39 = v28;
  v40 = v28;
  v41 = v104;
  v42 = v95;
  (v95)(v32, v40, v104);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v43 = v41;
  v42(v32, v39, v41);
  sub_10004C574();
  v91 = v39;
  sub_10004C544();
  v44 = v99;
  v45 = v31;
  v46 = v42;
  v47 = v87;
  sub_10004C3E4();
  v80 = v44 + v98;
  v81 = *(v101 + 48);
  *v80 = 1;
  sub_10004C744();
  v88 = v45;
  sub_10004C594();
  v92 = v32;
  v46(v32, v39, v43);
  sub_10004C574();
  v96(v105, 1, 1, v100);
  v48 = v86;
  v49 = v93;
  v50 = v89;
  v89(v47, v86, v93);
  v51 = v49;
  v52 = v90;
  v90(v47, 0, 1, v51);
  sub_10004C544();
  sub_10004C3E4();
  v53 = v98;
  v81 = 2 * v98;
  v79 = v99 + 2 * v98;
  v80 = *(v101 + 48);
  *v79 = 2;
  v83 = v30;
  sub_10004C744();
  sub_10004C594();
  (v95)(v92, v91, v104);
  sub_10004C574();
  v96(v105, 1, 1, v100);
  v54 = v87;
  v55 = v48;
  v56 = v93;
  v50(v87, v55, v93);
  v52(v54, 0, 1, v56);
  sub_10004C544();
  sub_10004C3E4();
  v57 = v81 + v53;
  v58 = v99;
  v80 = v99 + v57;
  v59 = v101;
  v81 = *(v101 + 48);
  *v80 = 3;
  sub_10004C744();
  sub_10004C594();
  v60 = v91;
  v61 = v95;
  (v95)(v92, v91, v104);
  sub_10004C574();
  v62 = v100;
  v96(v105, 1, 1, v100);
  v90(v54, 1, 1, v93);
  sub_10004C544();
  sub_10004C3E4();
  v81 = 4 * v98;
  v79 = v58 + 4 * v98;
  v80 = *(v59 + 48);
  *(v58 + v81) = 4;
  sub_10004C744();
  sub_10004C594();
  v63 = v104;
  v61(v92, v60, v104);
  sub_10004C574();
  v64 = v62;
  v65 = v96;
  v96(v105, 1, 1, v64);
  v66 = v87;
  v67 = v86;
  v68 = v93;
  v89(v87, v86, v93);
  v90(v66, 0, 1, v68);
  sub_10004C544();
  sub_10004C3E4();
  v80 = v99 + v81 + v98;
  v81 = *(v101 + 48);
  *v80 = 5;
  sub_10004C744();
  sub_10004C594();
  (v95)(v92, v91, v63);
  sub_10004C574();
  v69 = v105;
  v65(v105, 1, 1, v100);
  v70 = v66;
  v71 = v93;
  v89(v66, v67, v93);
  v72 = v90;
  v90(v66, 0, 1, v71);
  sub_10004C544();
  sub_10004C3E4();
  v73 = v99;
  v80 = v99 + 6 * v98;
  v74 = v101;
  v81 = *(v101 + 48);
  *v80 = 6;
  sub_10004C744();
  sub_10004C594();
  (v95)(v92, v91, v104);
  sub_10004C574();
  v96(v69, 1, 1, v100);
  v75 = v93;
  v89(v70, v86, v93);
  v72(v70, 0, 1, v75);
  sub_10004C544();
  sub_10004C3E4();
  v76 = *(v74 + 48);
  *(v73 - v98 + 8 * v98) = 7;
  sub_10004C744();
  sub_10004C594();
  (v95)(v92, v91, v104);
  sub_10004C574();
  v96(v69, 1, 1, v100);
  v89(v70, v86, v75);
  v90(v70, 0, 1, v75);
  sub_10004C544();
  sub_10004C3E4();
  v77 = sub_10004ADC4(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071B48 = v77;
  return result;
}

uint64_t sub_100037EBC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  if (qword_100070410 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_100071B48;
  if (*(qword_100071B48 + 16) && (v13 = sub_100048834(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_10004C414();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v7, v16 + *(v18 + 72) * v15, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v17 = sub_10004C414();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  sub_10004C414();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v19 = sub_10004C564();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_10004C544();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_1000159C4(v11, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v22 = sub_10004C564();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v11, 0, 1, v22);
    return (*(v23 + 32))(a2, v11, v22);
  }

  return result;
}

unint64_t sub_1000382D4()
{
  result = qword_1000712F0;
  if (!qword_1000712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F0);
  }

  return result;
}

uint64_t sub_100038344@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003B678(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10003837C()
{
  result = qword_1000712F8;
  if (!qword_1000712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F8);
  }

  return result;
}

unint64_t sub_1000383D4()
{
  result = qword_100071300;
  if (!qword_100071300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071300);
  }

  return result;
}

unint64_t sub_10003842C()
{
  result = qword_100071308;
  if (!qword_100071308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071308);
  }

  return result;
}

void sub_100038480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697474;
  v4 = 0x65536D6574737973;
  v5 = 0xE600000000000000;
  v6 = 0x796164697266;
  if (v2 != 6)
  {
    v6 = 0x7961647275746173;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000079;
  v8 = 0x616473656E646577;
  if (v2 != 4)
  {
    v8 = 0x7961647372756874;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x79616473657574;
  if (v2 == 2)
  {
    v10 = 0x7961646E6F6DLL;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x7961646E7573;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100038580()
{
  result = qword_100071310;
  if (!qword_100071310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071310);
  }

  return result;
}

unint64_t sub_1000385D8()
{
  result = qword_100071318;
  if (!qword_100071318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071318);
  }

  return result;
}

unint64_t sub_100038634()
{
  result = qword_100071320;
  if (!qword_100071320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071320);
  }

  return result;
}

unint64_t sub_1000386EC()
{
  result = qword_100071328;
  if (!qword_100071328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071328);
  }

  return result;
}

uint64_t sub_100038740(uint64_t a1)
{
  v2 = sub_1000386EC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100038790()
{
  result = qword_100071330;
  if (!qword_100071330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071330);
  }

  return result;
}

unint64_t sub_1000387E8()
{
  result = qword_100071338;
  if (!qword_100071338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071338);
  }

  return result;
}

unint64_t sub_100038840()
{
  result = qword_100071340;
  if (!qword_100071340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071340);
  }

  return result;
}

uint64_t sub_100038894()
{
  if (qword_100070410 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003890C(uint64_t a1)
{
  v2 = sub_100038634();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000389AC()
{
  result = qword_100071358;
  if (!qword_100071358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071358);
  }

  return result;
}

unint64_t sub_100038A04()
{
  result = qword_100071360;
  if (!qword_100071360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071360);
  }

  return result;
}

id sub_100038A7C()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result weekStart];

    *v3 = sub_10003B46C(v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100038B5C()
{
  v1.super.super.isa = sub_100038290(*(v0 + 16)).super.super.isa;
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v3 = result;
    [result setWeekStart:v1.super.super.isa];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038C08()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004C5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C754();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10004C574();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10004C4C4();
}

uint64_t sub_100038EE4@<X0>(uint64_t a1@<X8>)
{
  v25[0] = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v25 - v3;
  v5 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C5A4();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10004C754();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10004C564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10004C744();
  sub_10004C594();
  (*(v10 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10004C574();
  (*(v19 + 56))(v8, 1, 1, v18);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C3C4();
  v22 = sub_100005C58(v21, qword_100071B70);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v4, v22, v21);
  (*(v23 + 56))(v4, 0, 1, v21);
  return sub_10004C404();
}

uint64_t sub_1000392C0()
{
  v0 = qword_1000712E0;

  return v0;
}

unint64_t sub_1000392FC()
{
  result = qword_100071368;
  if (!qword_100071368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071368);
  }

  return result;
}

unint64_t sub_100039354()
{
  result = qword_100071370;
  if (!qword_100071370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071370);
  }

  return result;
}

unint64_t sub_1000393AC()
{
  result = qword_100071378;
  if (!qword_100071378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071378);
  }

  return result;
}

unint64_t sub_100039404()
{
  result = qword_100071380;
  if (!qword_100071380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071380);
  }

  return result;
}

unint64_t sub_10003945C()
{
  result = qword_100071388;
  if (!qword_100071388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071388);
  }

  return result;
}

unint64_t sub_1000394B4()
{
  result = qword_100071390;
  if (!qword_100071390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071390);
  }

  return result;
}

unint64_t sub_10003950C()
{
  result = qword_100071398;
  if (!qword_100071398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071398);
  }

  return result;
}

unint64_t sub_100039564()
{
  result = qword_1000713A0;
  if (!qword_1000713A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713A0);
  }

  return result;
}

uint64_t sub_100039620(uint64_t a1)
{
  v2 = sub_1000389AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100039670()
{
  result = qword_1000713B8;
  if (!qword_1000713B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713B8);
  }

  return result;
}

uint64_t sub_1000396C8(uint64_t a1)
{
  v2 = sub_100039564();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10003975C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004C754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C564();
  sub_100005C90(v9, qword_100071B50);
  sub_100005C58(v9, qword_100071B50);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10003995C()
{
  result = swift_getKeyPath();
  qword_100071B68 = result;
  return result;
}

uint64_t sub_100039984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100039A20, v5, v4);
}

uint64_t sub_100039A20()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10004C1F4();
  v3 = v0[2];
  v0[3] = v3;
  v0[10] = v3;
  sub_10004C1F4();
  if (qword_100070420 != -1)
  {
    swift_once();
  }

  v4 = qword_100071B68;
  v0[11] = qword_100071B68;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = sub_100005D70(&qword_100071418, &qword_100071420, &qword_1000531E8);
  *v6 = v0;
  v6[1] = sub_100003440;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v4, &type metadata for SettingsStartWeekOnType, v7);
}

uint64_t (*sub_100039B74(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_100039BE8(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100039C5C()
{
  if (qword_100070420 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100039CBC()
{
  result = qword_1000713D0;
  if (!qword_1000713D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713D0);
  }

  return result;
}

unint64_t sub_100039D14()
{
  result = qword_1000713D8;
  if (!qword_1000713D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713D8);
  }

  return result;
}

uint64_t sub_100039E30(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E00;

  return sub_100039984(a1, v5, v4);
}

uint64_t sub_100039EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003AD10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100039F04(uint64_t a1)
{
  v2 = sub_10002DDB8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100039F44()
{
  result = qword_1000713E0;
  if (!qword_1000713E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713E0);
  }

  return result;
}

unint64_t sub_100039F9C()
{
  result = qword_1000713E8;
  if (!qword_1000713E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713E8);
  }

  return result;
}

uint64_t sub_100039FF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_10003B6C4();
}

uint64_t sub_10003A094(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100038A04();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10003A148()
{
  result = qword_1000713F0;
  if (!qword_1000713F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713F0);
  }

  return result;
}

unint64_t sub_10003A1A0()
{
  result = qword_1000713F8;
  if (!qword_1000713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000713F8);
  }

  return result;
}

uint64_t sub_10003A1F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100038A04();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10003A2A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100038A04();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10003A35C()
{
  result = qword_100071400;
  if (!qword_100071400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071400);
  }

  return result;
}

unint64_t sub_10003A3B4()
{
  result = qword_100071408;
  if (!qword_100071408)
  {
    sub_100002C4C(&qword_100071410, qword_100053040);
    sub_10003950C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071408);
  }

  return result;
}

uint64_t sub_10003A438(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100039404();
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t getEnumTagSinglePayload for SettingsStartWeekOnType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsStartWeekOnType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003A66C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10004C704();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v8 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0x800000010005E9F0;
  v13._countAndFlagsBits = 0x6557207472617453;
  v13._object = 0xED00006E4F206B65;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10004C534(v13, v14, v9, v15, v11);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_1000386EC();
  sub_10003BA60();
  sub_100039F9C();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  sub_10004C6C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10003A974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10003ABB0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100037EBC(*a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_10003AC48(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100037EBC(*a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_10003AD10()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v58 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v57 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v41 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v41 - v11;
  v12 = sub_10004C554();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C5A4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004C754();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10004C564();
  v53 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v41 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000057AC(&qword_100071430, &qword_1000531F0);
  sub_10004C744();
  sub_10004C594();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v13 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v12;
  v26(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v44 = v26;
  v45 = v13 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v26(v16, v25, v12);
  v27 = v56;
  sub_10004C574();
  v28 = *(v22 + 56);
  v52 = v22 + 56;
  v54 = v28;
  v28(v27, 0, 1, v21);
  v62 = 0;
  v29 = sub_10004C1C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v47 = v31;
  v48 = v30 + 56;
  v32 = v55;
  v31(v55, 1, 1, v29);
  v31(v57, 1, 1, v29);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v60 + 104);
  v60 += 104;
  v50 = v33;
  v33(v58);
  sub_1000389AC();
  v34 = v32;
  v51 = sub_10004C224();
  v46 = sub_1000057AC(&qword_100071438, &qword_1000531F8);
  sub_10004C744();
  sub_10004C594();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v44(v16, v42, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v37(v16, v35, v36);
  v38 = v56;
  sub_10004C574();
  v54(v38, 0, 1, v53);
  v61 = 8;
  v39 = v47;
  v47(v34, 1, 1, v29);
  v39(v57, 1, 1, v29);
  v50(v58, v49, v59);
  sub_1000386EC();
  sub_10004C214();
  return v51;
}

uint64_t sub_10003B46C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10003B9DC();
    v2 = v1;
    isa = sub_10004C804(0).super.super.isa;
    v4 = sub_10004C814();

    if (v4)
    {

      return 0;
    }

    else
    {
      v5 = v2;
      v6 = sub_10004C804(1).super.super.isa;
      v7 = sub_10004C814();

      if (v7)
      {

        return 1;
      }

      else
      {
        v8 = v5;
        v9 = sub_10004C804(2).super.super.isa;
        v10 = sub_10004C814();

        if (v10)
        {

          return 2;
        }

        else
        {
          v11 = v8;
          v12 = sub_10004C804(3).super.super.isa;
          v13 = sub_10004C814();

          if (v13)
          {

            return 3;
          }

          else
          {
            v14 = v11;
            v15 = sub_10004C804(4).super.super.isa;
            v16 = sub_10004C814();

            if (v16)
            {

              return 4;
            }

            else
            {
              v17 = v14;
              v18 = sub_10004C804(5).super.super.isa;
              v19 = sub_10004C814();

              if (v19)
              {

                return 5;
              }

              else
              {
                v20 = v17;
                v21 = sub_10004C804(6).super.super.isa;
                v22 = sub_10004C814();

                if (v22)
                {

                  return 6;
                }

                else
                {
                  v23 = sub_10004C804(7).super.super.isa;
                  v24 = sub_10004C814();

                  if (v24)
                  {
                    return 7;
                  }

                  else
                  {
                    return 0;
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

uint64_t sub_10003B678(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D820;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003B6C4()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004C5A4() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_10004C754() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_10004C564() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003B804, 0, 0);
}

uint64_t sub_10003B804()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000057AC(&qword_1000713C8, qword_100052DE0);
  sub_10004C744();
  sub_10004C594();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004C574();
  sub_100005D70(&qword_100071418, &qword_100071420, &qword_1000531E8);
  sub_1000386EC();
  v7 = sub_10004C504();

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_10003B9DC()
{
  result = qword_100071428;
  if (!qword_100071428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071428);
  }

  return result;
}

unint64_t sub_10003BA60()
{
  result = qword_100071450;
  if (!qword_100071450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071450);
  }

  return result;
}

uint64_t sub_10003BAD0()
{
  v0 = sub_10004C3C4();
  sub_100005C90(v0, qword_100071B70);
  sub_100005C58(v0, qword_100071B70);
  return sub_10004C3B4();
}

id sub_10003BB34()
{
  result = [objc_allocWithZone(EKEventStore) initWithEKOptions:0x2000];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BB6C()
{
  v0 = sub_10004C674();
  sub_100005C90(v0, qword_100071B88);
  sub_100005C58(v0, qword_100071B88);
  return sub_10004C664();
}

uint64_t sub_10003BBF0@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v67 = sub_10004C5C4();
  v70 = *(v67 - 8);
  v1 = *(v70 + 64);
  v2 = __chkstk_darwin(v67);
  v66 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v63 = &v51 - v4;
  v65 = sub_10004C604();
  v69 = *(v65 - 8);
  v5 = *(v69 + 64);
  v6 = __chkstk_darwin(v65);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v51 - v8;
  v60 = sub_10004C624();
  v68 = *(v60 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v60);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = sub_10004C5E4();
  v52 = v15;
  v54 = *(v15 - 8);
  v16 = v54;
  v17 = *(v54 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = sub_10004C644();
  v55 = v23;
  v57 = *(v23 - 8);
  v24 = v57;
  v25 = *(v57 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v51 - v29;
  v56 = &v51 - v29;
  sub_10004C634();
  v53 = v22;
  sub_10004C5D4();
  sub_10004C614();
  sub_10004C5F4();
  sub_10004C5B4();
  v31 = *(v24 + 16);
  v59 = v28;
  v31(v28, v30, v23);
  v71[0] = v28;
  v32 = *(v16 + 16);
  v58 = v20;
  v32(v20, v22, v15);
  v71[1] = v20;
  v33 = v68;
  v34 = v62;
  v35 = v60;
  (*(v68 + 16))(v62, v14, v60);
  v71[2] = v34;
  v36 = v69;
  v37 = v64;
  v38 = v65;
  (*(v69 + 16))(v64, v9, v65);
  v71[3] = v37;
  v39 = v70;
  v40 = v66;
  v41 = v63;
  v42 = v67;
  (*(v70 + 16))(v66, v63, v67);
  v71[4] = v40;
  sub_10003C1F8(v71);
  v43 = *(v39 + 8);
  v70 = v39 + 8;
  v43(v41, v42);
  v44 = *(v36 + 8);
  v69 = v36 + 8;
  v44(v9, v38);
  v45 = *(v33 + 8);
  v68 = v33 + 8;
  v45(v14, v35);
  v46 = *(v54 + 8);
  v47 = v52;
  v46(v53, v52);
  v48 = *(v57 + 8);
  v49 = v55;
  v48(v56, v55);
  v43(v66, v67);
  v44(v64, v65);
  v45(v62, v35);
  v46(v58, v47);
  return (v48)(v59, v49);
}

uint64_t sub_10003C1F8(uint64_t *a1)
{
  v2 = sub_1000057AC(&qword_100071468, &unk_100053328);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *a1;
  v7 = sub_10004C644();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = v2[12];
  v9 = a1[1];
  v10 = sub_10004C5E4();
  (*(*(v10 - 8) + 16))(&v5[v8], v9, v10);
  v11 = v2[16];
  v12 = a1[2];
  v13 = sub_10004C624();
  (*(*(v13 - 8) + 16))(&v5[v11], v12, v13);
  v14 = v2[20];
  v15 = a1[3];
  v16 = sub_10004C604();
  (*(*(v16 - 8) + 16))(&v5[v14], v15, v16);
  v17 = v2[24];
  v18 = a1[4];
  v19 = sub_10004C5C4();
  (*(*(v19 - 8) + 16))(&v5[v17], v18, v19);
  return sub_10004C684();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10003C424();
  sub_10004C694();
  return 0;
}

unint64_t sub_10003C424()
{
  result = qword_100071460;
  if (!qword_100071460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071460);
  }

  return result;
}

id sub_10003C4A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t sub_10003C4F4()
{
  if (qword_100070430 != -1)
  {
    swift_once();
  }

  v0 = sub_10004C674();
  sub_100005C58(v0, qword_100071B88);
  v1 = sub_10004C654();
  v2 = sub_10004C7F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initializing", v3, 2u);
  }

  v4 = objc_allocWithZone(EKEphemeralCacheEventStoreProvider);
  v11 = sub_10003BB34;
  v12 = 0;
  *&v9 = _NSConcreteStackBlock;
  *(&v9 + 1) = 1107296256;
  *&v10 = sub_10003C4A4;
  *(&v10 + 1) = &unk_10006EA00;
  v5 = _Block_copy(&v9);
  v6 = [v4 initWithCreationBlock:v5];
  _Block_release(v5);

  sub_10004C0F4();
  sub_10004C0E4();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_1000057AC(&qword_1000714D0, &qword_100053338);
  sub_10004C0D4();

  return sub_10003C764(&v9);
}

uint64_t sub_10003C708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003C720()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C764(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_1000714D8, &qword_100053340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C7D0()
{
  result = qword_1000714E0;
  if (!qword_1000714E0)
  {
    sub_100002C4C(&qword_1000714E8, &qword_100053348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000714E0);
  }

  return result;
}

uint64_t sub_10003C838(char a1)
{
  result = 6710895;
  switch(a1)
  {
    case 1:
      result = 0x6573656E696863;
      break;
    case 2:
      result = 0x776572626568;
      break;
    case 3:
      result = 0x69726A6968;
      break;
    case 4:
      result = 0x6D6D5569726A6968;
      break;
    case 5:
      result = 0x616C676E6162;
      break;
    case 6:
      result = 0x69746172616A7567;
      break;
    case 7:
      result = 0x6164616E6E616BLL;
      break;
    case 8:
      result = 0x616C6179616C616DLL;
      break;
    case 9:
      result = 0x6968746172616DLL;
      break;
    case 10:
      result = 1634296943;
      break;
    case 11:
      result = 0x6C696D6174;
      break;
    case 12:
      result = 0x7567756C6574;
      break;
    case 13:
      result = 0x6D61726B6976;
      break;
    case 14:
      result = 0x6E6165726F6BLL;
      break;
    case 15:
      result = 0x656D616E74656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003CA04()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004C554();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C754();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004C4D4();
  sub_100005C90(v15, qword_100071BA0);
  sub_100005C58(v15, qword_100071BA0);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004C584();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004C4C4();
}

uint64_t sub_10003CCE0()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v131 = &v124 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v132 = &v124 - v5;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C754();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004C564();
  v126 = *(v19 - 8);
  v20 = *(v126 + 64);
  v21 = __chkstk_darwin(v19);
  v151 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v124 - v23;
  sub_1000057AC(&qword_100071648, &unk_100053D10);
  v25 = sub_1000057AC(&qword_100071650, &qword_1000547B0);
  v26 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
  v139 = *(*(v25 - 8) + 72);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000512C0;
  v127 = v27;
  v147 = v25;
  v128 = *(v25 + 48);
  v140 = v27 + v26;
  *(v27 + v26) = 0;
  sub_10004C744();
  sub_10004C594();
  v28 = *(v7 + 104);
  v146 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v148 = v7 + 104;
  v149 = v6;
  v144 = v28;
  v28(v10);
  v129 = v24;
  v29 = v126;
  sub_10004C574();
  v30 = *(v29 + 56);
  v141 = v19;
  v145 = v29 + 56;
  v134 = v30;
  v30(v132, 1, 1, v19);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v31 = sub_10004C3C4();
  v32 = sub_100005C58(v31, qword_100071B70);
  v150 = v31;
  v33 = *(v31 - 8);
  v136 = *(v33 + 16);
  v142 = v32;
  v143 = v33 + 16;
  v34 = v131;
  v136(v131, v32, v31);
  v137 = *(v33 + 56);
  v138 = v33 + 56;
  v137(v34, 0, 1, v31);
  sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v125 = *(v29 + 72);
  v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v36 = v146;
  v37 = v149;
  v38 = v144;
  v144(v10, v146, v149);
  v39 = v10;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v40 = v10;
  v41 = v38;
  v38(v40, v36, v37);
  sub_10004C574();
  sub_10004C544();
  v42 = v140;
  v43 = v131;
  sub_10004C3E4();
  v126 = v42 + v139;
  v128 = *(v147 + 48);
  *v126 = 1;
  v130 = v18;
  sub_10004C744();
  v135 = v14;
  sub_10004C594();
  v133 = v39;
  v41(v39, v36, v37);
  sub_10004C574();
  v134(v132, 1, 1, v141);
  v44 = v142;
  v45 = v150;
  v46 = v136;
  v136(v43, v142, v150);
  v47 = v43;
  v48 = v137;
  v137(v47, 0, 1, v45);
  sub_10004C544();
  sub_10004C3E4();
  v49 = v139;
  v128 = 2 * v139;
  v125 = (v42 + 2 * v139);
  v126 = *(v147 + 48);
  *v125 = 2;
  sub_10004C744();
  sub_10004C594();
  v50 = v133;
  v144(v133, v146, v149);
  sub_10004C574();
  v51 = v132;
  v134(v132, 1, 1, v141);
  v52 = v131;
  v53 = v150;
  v46(v131, v44, v150);
  v48(v52, 0, 1, v53);
  sub_10004C544();
  sub_10004C3E4();
  v54 = v140;
  v126 = v140 + v128 + v49;
  v55 = v147;
  v128 = *(v147 + 48);
  *v126 = 3;
  sub_10004C744();
  sub_10004C594();
  v144(v50, v146, v149);
  sub_10004C574();
  v134(v51, 1, 1, v141);
  v56 = v150;
  v57 = v136;
  v136(v52, v142, v150);
  v48(v52, 0, 1, v56);
  sub_10004C544();
  sub_10004C3E4();
  v128 = 4 * v139;
  v125 = (v54 + 4 * v139);
  v126 = *(v55 + 48);
  *(v54 + v128) = 4;
  sub_10004C744();
  sub_10004C594();
  v58 = v149;
  v144(v133, v146, v149);
  sub_10004C574();
  v59 = v141;
  v60 = v134;
  v134(v132, 1, 1, v141);
  v61 = v150;
  v57(v52, v142, v150);
  v137(v52, 0, 1, v61);
  sub_10004C544();
  sub_10004C3E4();
  v62 = v140;
  v126 = v140 + v128 + v139;
  v128 = *(v147 + 48);
  *v126 = 5;
  sub_10004C744();
  sub_10004C594();
  v63 = v146;
  v64 = v58;
  v65 = v144;
  v144(v133, v146, v64);
  sub_10004C574();
  v66 = v132;
  v60(v132, 1, 1, v59);
  v67 = v131;
  v68 = v150;
  v136(v131, v142, v150);
  v137(v67, 0, 1, v68);
  sub_10004C544();
  sub_10004C3E4();
  v126 = v62 + 6 * v139;
  v128 = *(v147 + 48);
  *v126 = 6;
  sub_10004C744();
  sub_10004C594();
  v69 = v133;
  v65(v133, v63, v149);
  sub_10004C574();
  v70 = v134;
  v134(v66, 1, 1, v141);
  v71 = v131;
  v72 = v150;
  v136(v131, v142, v150);
  v73 = v71;
  v137(v71, 0, 1, v72);
  sub_10004C544();
  sub_10004C3E4();
  v128 = 8 * v139;
  v74 = v140;
  v125 = (v140 + 7 * v139);
  v126 = *(v147 + 48);
  *v125 = 7;
  sub_10004C744();
  sub_10004C594();
  v75 = v146;
  v76 = v144;
  v144(v69, v146, v149);
  sub_10004C574();
  v77 = v132;
  v70(v132, 1, 1, v141);
  v78 = v150;
  v136(v73, v142, v150);
  v137(v73, 0, 1, v78);
  sub_10004C544();
  sub_10004C3E4();
  v125 = (v74 + v128);
  v126 = *(v147 + 48);
  *v125 = 8;
  sub_10004C744();
  sub_10004C594();
  v76(v133, v75, v149);
  sub_10004C574();
  v79 = v77;
  v80 = v141;
  v81 = v134;
  v134(v77, 1, 1, v141);
  v82 = v150;
  v136(v73, v142, v150);
  v137(v73, 0, 1, v82);
  sub_10004C544();
  sub_10004C3E4();
  v126 = v140 + v128 + v139;
  v83 = v147;
  v128 = *(v147 + 48);
  *v126 = 9;
  sub_10004C744();
  sub_10004C594();
  v84 = v144;
  v144(v133, v146, v149);
  sub_10004C574();
  v81(v77, 1, 1, v80);
  v85 = v131;
  v86 = v150;
  v87 = v136;
  v136(v131, v142, v150);
  v88 = v137;
  v137(v85, 0, 1, v86);
  sub_10004C544();
  sub_10004C3E4();
  v126 = v140 + 10 * v139;
  v128 = *(v83 + 48);
  *v126 = 10;
  sub_10004C744();
  sub_10004C594();
  v89 = v133;
  v84(v133, v146, v149);
  v90 = v89;
  sub_10004C574();
  v91 = v79;
  v92 = v134;
  v134(v79, 1, 1, v141);
  v93 = v131;
  v94 = v142;
  v95 = v150;
  v87(v131, v142, v150);
  v88(v93, 0, 1, v95);
  sub_10004C544();
  v96 = v91;
  sub_10004C3E4();
  v97 = v139;
  v126 = v140 + 11 * v139;
  v128 = *(v147 + 48);
  *v126 = 11;
  sub_10004C744();
  sub_10004C594();
  v144(v90, v146, v149);
  sub_10004C574();
  v98 = v141;
  v92(v96, 1, 1, v141);
  v99 = v131;
  v100 = v94;
  v101 = v94;
  v102 = v150;
  v136(v131, v100, v150);
  v137(v99, 0, 1, v102);
  sub_10004C544();
  sub_10004C3E4();
  v126 = v140 + 12 * v97;
  v103 = v147;
  v128 = *(v147 + 48);
  *v126 = 12;
  sub_10004C744();
  sub_10004C594();
  v104 = v90;
  v105 = v149;
  v144(v104, v146, v149);
  sub_10004C574();
  v106 = v132;
  v107 = v134;
  v134(v132, 1, 1, v98);
  v108 = v99;
  v109 = v150;
  v136(v99, v101, v150);
  v137(v99, 0, 1, v109);
  sub_10004C544();
  v110 = v106;
  sub_10004C3E4();
  v112 = v139;
  v111 = v140;
  v126 = v140 + 13 * v139;
  v128 = *(v103 + 48);
  *v126 = 13;
  sub_10004C744();
  sub_10004C594();
  v144(v133, v146, v105);
  sub_10004C574();
  v113 = v141;
  v107(v110, 1, 1, v141);
  v114 = v150;
  v115 = v136;
  v136(v108, v142, v150);
  v116 = v137;
  v137(v108, 0, 1, v114);
  sub_10004C544();
  sub_10004C3E4();
  v126 = v111 + 14 * v112;
  v128 = *(v147 + 48);
  *v126 = 14;
  sub_10004C744();
  sub_10004C594();
  v144(v133, v146, v149);
  sub_10004C574();
  v117 = v132;
  v134(v132, 1, 1, v113);
  v118 = v150;
  v115(v108, v142, v150);
  v116(v108, 0, 1, v118);
  sub_10004C544();
  v119 = v117;
  sub_10004C3E4();
  v120 = (v140 - v139 + 16 * v139);
  v139 = *(v147 + 48);
  *v120 = 15;
  sub_10004C744();
  sub_10004C594();
  v144(v133, v146, v149);
  sub_10004C574();
  v134(v119, 1, 1, v141);
  v121 = v150;
  v136(v108, v142, v150);
  v137(v108, 0, 1, v121);
  sub_10004C544();
  sub_10004C3E4();
  v122 = sub_10004AFAC(v127);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071BB8 = v122;
  return result;
}

uint64_t sub_10003EB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  if (qword_100070440 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_100071BB8;
  if (*(qword_100071BB8 + 16) && (v13 = sub_100048878(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_10004C414();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v7, v16 + *(v18 + 72) * v15, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v17 = sub_10004C414();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  sub_10004C414();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v19 = sub_10004C564();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_10004C544();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_1000159C4(v11, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v22 = sub_10004C564();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v11, 0, 1, v22);
    return (*(v23 + 32))(a2, v11, v22);
  }

  return result;
}

uint64_t sub_10003EF3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10003C838(*a1);
  v5 = v4;
  if (v3 == sub_10003C838(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004C844();
  }

  return v8 & 1;
}

unint64_t sub_10003EFC8()
{
  result = qword_100071500;
  if (!qword_100071500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071500);
  }

  return result;
}

Swift::Int sub_10003F01C()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10003C838(v1);
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_10003F080()
{
  sub_10003C838(*v0);
  sub_10004C784();
}

Swift::Int sub_10003F0D4()
{
  v1 = *v0;
  sub_10004C8A4();
  sub_10003C838(v1);
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_10003F134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042EF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10003F164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003C838(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10003F194()
{
  result = qword_100071508;
  if (!qword_100071508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071508);
  }

  return result;
}

unint64_t sub_10003F1EC()
{
  result = qword_100071510;
  if (!qword_100071510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071510);
  }

  return result;
}

unint64_t sub_10003F244()
{
  result = qword_100071518;
  if (!qword_100071518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071518);
  }

  return result;
}

unint64_t sub_10003F29C()
{
  result = qword_100071520;
  if (!qword_100071520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071520);
  }

  return result;
}

unint64_t sub_10003F2F4()
{
  result = qword_100071528;
  if (!qword_100071528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071528);
  }

  return result;
}

unint64_t sub_10003F350()
{
  result = qword_100071530;
  if (!qword_100071530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071530);
  }

  return result;
}

unint64_t sub_10003F408()
{
  result = qword_100071538;
  if (!qword_100071538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071538);
  }

  return result;
}

uint64_t sub_10003F45C(uint64_t a1)
{
  v2 = sub_10003F408();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003F4AC()
{
  result = qword_100071540;
  if (!qword_100071540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071540);
  }

  return result;
}

unint64_t sub_10003F504()
{
  result = qword_100071548;
  if (!qword_100071548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071548);
  }

  return result;
}

unint64_t sub_10003F55C()
{
  result = qword_100071550;
  if (!qword_100071550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071550);
  }

  return result;
}

uint64_t sub_10003F5B0()
{
  if (qword_100070440 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003F628(uint64_t a1)
{
  v2 = sub_10003F350();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003F6C8()
{
  result = qword_100071568;
  if (!qword_100071568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071568);
  }

  return result;
}

unint64_t sub_10003F720()
{
  result = qword_100071570;
  if (!qword_100071570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071570);
  }

  return result;
}

uint64_t sub_10003F798()
{
  v3 = [objc_opt_self() sharedPreferences];
  if (!v3)
  {
    __break(1u);
    goto LABEL_63;
  }

  v4 = v3;
  v5 = [v3 overlayCalendarID];

  if (!v5)
  {
    sub_10004C774();
    goto LABEL_10;
  }

  v0 = sub_10004C774();
  v1 = v6;

  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v1 == 0xE000000000000000;
  }

  if (v7 || (sub_10004C844() & 1) != 0)
  {
    goto LABEL_11;
  }

  v11 = sub_10004C774();
  if (!v1)
  {
LABEL_10:

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();

    sub_10004C774();
LABEL_11:

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v11 == v0 && v1 == v12)
  {

    goto LABEL_26;
  }

  v14 = sub_10004C844();

  if (v14)
  {
LABEL_26:

    v8 = 1;
    goto LABEL_13;
  }

  if (sub_10004C774() == v0 && v1 == v15)
  {

LABEL_28:

    v8 = 2;
    goto LABEL_13;
  }

  v16 = sub_10004C844();

  if (v16)
  {
    goto LABEL_28;
  }

  if (sub_10004C774() == v0 && v1 == v17)
  {

LABEL_33:

    v8 = 3;
    goto LABEL_13;
  }

  v18 = sub_10004C844();

  if (v18)
  {
    goto LABEL_33;
  }

  if (sub_10004C774() == v0 && v1 == v19)
  {

LABEL_38:

    v8 = 4;
    goto LABEL_13;
  }

  v20 = sub_10004C844();

  if (v20)
  {
    goto LABEL_38;
  }

  if (sub_10004C774() == v0 && v1 == v21)
  {

LABEL_43:

    v8 = 5;
    goto LABEL_13;
  }

  v22 = sub_10004C844();

  if (v22)
  {
    goto LABEL_43;
  }

  if (sub_10004C774() == v0 && v1 == v23)
  {

LABEL_48:

    v8 = 6;
    goto LABEL_13;
  }

  v24 = sub_10004C844();

  if (v24)
  {
    goto LABEL_48;
  }

  if (sub_10004C774() == v0 && v1 == v25)
  {

LABEL_53:

    v8 = 7;
    goto LABEL_13;
  }

  v26 = sub_10004C844();

  if (v26)
  {
    goto LABEL_53;
  }

  if (sub_10004C774() == v0 && v1 == v27)
  {

LABEL_58:

    v8 = 8;
    goto LABEL_13;
  }

  v28 = sub_10004C844();

  if (v28)
  {
    goto LABEL_58;
  }

  if (sub_10004C774() == v0 && v1 == v29)
  {

LABEL_64:

    v8 = 9;
    goto LABEL_13;
  }

LABEL_63:
  v30 = sub_10004C844();

  if (v30)
  {
    goto LABEL_64;
  }

  if (sub_10004C774() == v0 && v1 == v31)
  {

LABEL_69:

    v8 = 10;
    goto LABEL_13;
  }

  v32 = sub_10004C844();

  if (v32)
  {
    goto LABEL_69;
  }

  if (sub_10004C774() == v0 && v1 == v33)
  {

LABEL_74:

    v8 = 11;
    goto LABEL_13;
  }

  v34 = sub_10004C844();

  if (v34)
  {
    goto LABEL_74;
  }

  if (sub_10004C774() == v0 && v1 == v35)
  {

LABEL_79:

    v8 = 12;
    goto LABEL_13;
  }

  v36 = sub_10004C844();

  if (v36)
  {
    goto LABEL_79;
  }

  if (sub_10004C774() == v0 && v1 == v37)
  {

LABEL_84:

    v8 = 13;
    goto LABEL_13;
  }

  v38 = sub_10004C844();

  if (v38)
  {
    goto LABEL_84;
  }

  if (sub_10004C774() == v0 && v1 == v39)
  {

LABEL_89:

    v8 = 14;
    goto LABEL_13;
  }

  v40 = sub_10004C844();

  if (v40)
  {
    goto LABEL_89;
  }

  if (sub_10004C774() == v0 && v1 == v41)
  {
  }

  else
  {
    v42 = sub_10004C844();

    if ((v42 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = 15;
LABEL_13:
  **(v2 + 16) = v8;
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_10003FFF0()
{
  v1 = &NSCalendarIdentifierBangla;
  switch(*(v0 + 16))
  {
    case 1:
      v1 = &NSCalendarIdentifierChinese;
      goto LABEL_16;
    case 2:
      v1 = &NSCalendarIdentifierHebrew;
      goto LABEL_16;
    case 3:
      v1 = &NSCalendarIdentifierIslamicCivil;
      goto LABEL_16;
    case 4:
      v1 = &NSCalendarIdentifierIslamicUmmAlQura;
      goto LABEL_16;
    case 5:
      goto LABEL_16;
    case 6:
      v1 = &NSCalendarIdentifierGujarati;
      goto LABEL_16;
    case 7:
      v1 = &NSCalendarIdentifierKannada;
      goto LABEL_16;
    case 8:
      v1 = &NSCalendarIdentifierMalayalam;
      goto LABEL_16;
    case 9:
      v1 = &NSCalendarIdentifierMarathi;
      goto LABEL_16;
    case 0xA:
      v1 = &NSCalendarIdentifierOdia;
      goto LABEL_16;
    case 0xB:
      v1 = &NSCalendarIdentifierTamil;
      goto LABEL_16;
    case 0xC:
      v1 = &NSCalendarIdentifierTelugu;
      goto LABEL_16;
    case 0xD:
      v1 = &NSCalendarIdentifierVikram;
      goto LABEL_16;
    case 0xE:
      v1 = &NSCalendarIdentifierDangi;
      goto LABEL_16;
    case 0xF:
      v1 = &NSCalendarIdentifierVietnamese;
LABEL_16:
      v2 = *v1;
      sub_10004C774();
      break;
    default:
      break;
  }

  v3 = [objc_opt_self() sharedPreferences];
  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x10004019CLL);
  }

  v4 = v3;
  v5 = sub_10004C764();

  [v4 setOverlayCalendarID:v5];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000401DC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004C5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C754();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10004C574();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10004C4C4();
}

uint64_t sub_1000404B0@<X0>(uint64_t a1@<X8>)
{
  v25[0] = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v25 - v3;
  v5 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = sub_10004C554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004C5A4();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10004C754();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10004C564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10004C744();
  sub_10004C594();
  (*(v10 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10004C574();
  (*(v19 + 56))(v8, 1, 1, v18);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C3C4();
  v22 = sub_100005C58(v21, qword_100071B70);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v4, v22, v21);
  (*(v23 + 56))(v4, 0, 1, v21);
  return sub_10004C404();
}

uint64_t sub_100040884()
{
  v0 = qword_1000714F0;

  return v0;
}

unint64_t sub_1000408C0()
{
  result = qword_100071578;
  if (!qword_100071578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071578);
  }

  return result;
}

unint64_t sub_100040918()
{
  result = qword_100071580;
  if (!qword_100071580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071580);
  }

  return result;
}

unint64_t sub_100040970()
{
  result = qword_100071588;
  if (!qword_100071588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071588);
  }

  return result;
}

unint64_t sub_1000409C4()
{
  result = qword_100071590;
  if (!qword_100071590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071590);
  }

  return result;
}

unint64_t sub_100040A1C()
{
  result = qword_100071598;
  if (!qword_100071598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071598);
  }

  return result;
}

unint64_t sub_100040A74()
{
  result = qword_1000715A0;
  if (!qword_1000715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715A0);
  }

  return result;
}

unint64_t sub_100040ACC()
{
  result = qword_1000715A8;
  if (!qword_1000715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715A8);
  }

  return result;
}

unint64_t sub_100040B24()
{
  result = qword_1000715B0;
  if (!qword_1000715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715B0);
  }

  return result;
}

uint64_t sub_100040BE0(uint64_t a1)
{
  v2 = sub_10003F6C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100040C30()
{
  result = qword_1000715C8;
  if (!qword_1000715C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715C8);
  }

  return result;
}

uint64_t sub_100040C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005EFC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100040D4C(uint64_t a1)
{
  v2 = sub_100040B24();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100040DE0()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004C754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C564();
  sub_100005C90(v9, qword_100071BC0);
  sub_100005C58(v9, qword_100071BC0);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_100040FE0()
{
  result = swift_getKeyPath();
  qword_100071BD8 = result;
  return result;
}

uint64_t sub_100041008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_10004C7C4();
  v3[7] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1000410A4, v5, v4);
}

uint64_t sub_1000410A4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10004C1F4();
  v3 = v0[2];
  v0[3] = v3;
  v0[10] = v3;
  sub_10004C1F4();
  if (qword_100070450 != -1)
  {
    swift_once();
  }

  v4 = qword_100071BD8;
  v0[11] = qword_100071BD8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = sub_100005D70(&qword_100071628, &qword_100071630, &qword_100053CC0);
  *v6 = v0;
  v6[1] = sub_1000411F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 14, v4, &type metadata for SettingsAlternateCalendarType, v7);
}

uint64_t sub_1000411F8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 104) = v0;

  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_100003604;
  }

  else
  {
    v8 = sub_10004134C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10004134C()
{
  v1 = *(v0 + 48);
  sub_10004C1F4();
  v2 = &NSCalendarIdentifierBangla;
  switch(*(v0 + 113))
  {
    case 1:
      v2 = &NSCalendarIdentifierChinese;
      goto LABEL_16;
    case 2:
      v2 = &NSCalendarIdentifierHebrew;
      goto LABEL_16;
    case 3:
      v2 = &NSCalendarIdentifierIslamicCivil;
      goto LABEL_16;
    case 4:
      v2 = &NSCalendarIdentifierIslamicUmmAlQura;
      goto LABEL_16;
    case 5:
      goto LABEL_16;
    case 6:
      v2 = &NSCalendarIdentifierGujarati;
      goto LABEL_16;
    case 7:
      v2 = &NSCalendarIdentifierKannada;
      goto LABEL_16;
    case 8:
      v2 = &NSCalendarIdentifierMalayalam;
      goto LABEL_16;
    case 9:
      v2 = &NSCalendarIdentifierMarathi;
      goto LABEL_16;
    case 0xA:
      v2 = &NSCalendarIdentifierOdia;
      goto LABEL_16;
    case 0xB:
      v2 = &NSCalendarIdentifierTamil;
      goto LABEL_16;
    case 0xC:
      v2 = &NSCalendarIdentifierTelugu;
      goto LABEL_16;
    case 0xD:
      v2 = &NSCalendarIdentifierVikram;
      goto LABEL_16;
    case 0xE:
      v2 = &NSCalendarIdentifierDangi;
      goto LABEL_16;
    case 0xF:
      v2 = &NSCalendarIdentifierVietnamese;
LABEL_16:
      v3 = *v2;
      sub_10004C774();
      break;
    default:
      break;
  }

  v4 = [objc_opt_self() sharedPreferences];
  if (!v4)
  {
    __break(1u);
    JUMPOUT(0x100041518);
  }

  v5 = v4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);

  v8 = sub_10004C764();

  [v5 setOverlayCalendarID:v8];

  sub_10004C1D4();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t (*sub_100041558(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_1000415CC(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100041640()
{
  if (qword_100070450 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000416A0()
{
  result = qword_1000715E0;
  if (!qword_1000715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E0);
  }

  return result;
}

unint64_t sub_1000416F8()
{
  result = qword_1000715E8;
  if (!qword_1000715E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E8);
  }

  return result;
}

uint64_t sub_100041814(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100041008(a1, v5, v4);
}

uint64_t sub_1000418C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100042794();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000418E8(uint64_t a1)
{
  v2 = sub_10002DC68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100041928()
{
  result = qword_1000715F0;
  if (!qword_1000715F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F0);
  }

  return result;
}

unint64_t sub_100041980()
{
  result = qword_1000715F8;
  if (!qword_1000715F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F8);
  }

  return result;
}

uint64_t sub_1000419D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005F00;

  return sub_100042F3C();
}

uint64_t sub_100041A7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10003F720();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100041B30()
{
  result = qword_100071600;
  if (!qword_100071600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071600);
  }

  return result;
}

unint64_t sub_100041B88()
{
  result = qword_100071608;
  if (!qword_100071608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071608);
  }

  return result;
}

uint64_t sub_100041BDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10003F720();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100041C90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10003F720();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100041D44()
{
  result = qword_100071610;
  if (!qword_100071610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071610);
  }

  return result;
}

unint64_t sub_100041D9C()
{
  result = qword_100071618;
  if (!qword_100071618)
  {
    sub_100002C4C(&qword_100071620, qword_100053AF0);
    sub_100040ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071618);
  }

  return result;
}

uint64_t sub_100041E20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000409C4();
  *v6 = v2;
  v6[1] = sub_100002E00;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100041ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002E00;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for SettingsAlternateCalendarType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAlternateCalendarType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100042108@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10004C704();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v12[0] = "erlay to show in Calendar.";
  v8 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0x800000010005F9C0;
  v13._countAndFlagsBits = 0xD000000000000023;
  v13._object = 0x800000010005F990;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10004C534(v13, v14, v9, v15, v11);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_10003F408();
  sub_100043284();
  sub_100041980();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  sub_10004C6C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100042400@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100042634@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10003EB68(*a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1000426CC(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003EB68(*a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

uint64_t sub_100042794()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v58 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v57 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v41 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v41 - v11;
  v12 = sub_10004C554();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C5A4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004C754();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10004C564();
  v53 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v41 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000057AC(&qword_100071638, &qword_100053CC8);
  sub_10004C744();
  sub_10004C594();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v13 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v12;
  v26(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v44 = v26;
  v45 = v13 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v26(v16, v25, v12);
  v27 = v56;
  sub_10004C574();
  v28 = *(v22 + 56);
  v52 = v22 + 56;
  v54 = v28;
  v28(v27, 0, 1, v21);
  v62 = 0;
  v29 = sub_10004C1C4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v47 = v31;
  v48 = v30 + 56;
  v32 = v55;
  v31(v55, 1, 1, v29);
  v31(v57, 1, 1, v29);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v60 + 104);
  v60 += 104;
  v50 = v33;
  v33(v58);
  sub_10003F6C8();
  v34 = v32;
  v51 = sub_10004C224();
  v46 = sub_1000057AC(&qword_100071640, &qword_100053CD0);
  sub_10004C744();
  sub_10004C594();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v44(v16, v42, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v37(v16, v35, v36);
  v38 = v56;
  sub_10004C574();
  v54(v38, 0, 1, v53);
  v61 = 16;
  v39 = v47;
  v47(v34, 1, 1, v29);
  v39(v57, 1, 1, v29);
  v50(v58, v49, v59);
  sub_10003F408();
  sub_10004C214();
  return v51;
}

uint64_t sub_100042EF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006D900;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042F3C()
{
  v1 = sub_10004C554();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004C5A4() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_10004C754() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_10004C564() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10004307C, 0, 0);
}

uint64_t sub_10004307C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000057AC(&qword_1000715D8, qword_100053890);
  sub_10004C744();
  sub_10004C594();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10004C574();
  sub_100005D70(&qword_100071628, &qword_100071630, &qword_100053CC0);
  sub_10003F408();
  v7 = sub_10004C504();

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_100043284()
{
  result = qword_100071658;
  if (!qword_100071658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071658);
  }

  return result;
}

uint64_t sub_1000432FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C416F6ELL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x657645664F796164;
    }

    else
    {
      v4 = 0x7472656C416F6ELL;
    }

    if (v3)
    {
      v5 = 0xEA0000000000746ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6542796144656E6FLL;
    v5 = 0xEC00000065726F66;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x42737961446F7774;
    }

    else
    {
      v4 = 0x426B656557656E6FLL;
    }

    v5 = 0xED000065726F6665;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x657645664F796164;
    v8 = 0xEA0000000000746ELL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6542796144656E6FLL;
    v6 = 0xEC00000065726F66;
    v7 = 0x42737961446F7774;
    v8 = 0xED000065726F6665;
    if (a2 != 3)
    {
      v7 = 0x426B656557656E6FLL;
      v8 = 0xED000065726F6665;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_10004C844();
  }

  return v12 & 1;
}

uint64_t sub_1000434B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736574756E69;
  v3 = 0x4D6E656574666966;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x694D797472696874;
    v14 = 0xED0000736574756ELL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000010;
      v14 = 0x8000000100054B50;
    }

    v15 = 0x8000000100054B30;
    v16 = 0xD000000000000011;
    if (!a1)
    {
      v16 = 0x4D6E656574666966;
      v15 = 0xEE00736574756E69;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x72756F48656E6FLL;
    v7 = 0x8000000100054B90;
    v8 = 0xD000000000000014;
    if (a1 != 7)
    {
      v8 = 0x7372756F486F7774;
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x6E694D7974666966;
    v10 = 0xEC00000073657475;
    if (a1 != 4)
    {
      v9 = 0xD000000000000010;
      v10 = 0x8000000100054B70;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        v3 = 0x72756F48656E6FLL;
      }

      else if (a2 == 7)
      {
        v2 = 0x8000000100054B90;
        v3 = 0xD000000000000014;
      }

      else
      {
        v2 = 0xE800000000000000;
        v3 = 0x7372756F486F7774;
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v3 = 0x6E694D7974666966;
      v2 = 0xEC00000073657475;
      goto LABEL_41;
    }

    v3 = 0xD000000000000010;
    v17 = "fiftyFiveMinutes";
LABEL_40:
    v2 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0x694D797472696874;
      v2 = 0xED0000736574756ELL;
      goto LABEL_41;
    }

    v3 = 0xD000000000000010;
    v17 = "fortyFiveMinutes";
    goto LABEL_40;
  }

  if (a2)
  {
    v2 = 0x8000000100054B30;
    v3 = 0xD000000000000011;
  }

LABEL_41:
  if (v11 == v3 && v12 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_10004C844();
  }

  return v18 & 1;
}

uint64_t sub_10004377C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x746E6576456C6C61;
    }

    if (v3)
    {
      v5 = 0x8000000100054AA0;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x8000000100054AC0;
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000011;
    if (v3 == 3)
    {
      v5 = 0x8000000100054AE0;
    }

    else
    {
      v5 = 0x8000000100054B00;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x8000000100054AA0;
    }

    else
    {
      v2 = 0x746E6576456C6C61;
      v6 = 0xE900000000000073;
    }

    if (v4 != v2)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000100054AC0;
    if (v4 != 0xD000000000000010)
    {
LABEL_28:
      v7 = sub_10004C844();
      goto LABEL_29;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x8000000100054AE0;
    }

    else
    {
      v6 = 0x8000000100054B00;
    }

    if (v4 != 0xD000000000000011)
    {
      goto LABEL_28;
    }
  }

  if (v5 != v6)
  {
    goto LABEL_28;
  }

  v7 = 1;
LABEL_29:

  return v7 & 1;
}

uint64_t sub_100043908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E697474;
  v3 = 0x65536D6574737973;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x796164697266;
  if (a1 != 6)
  {
    v6 = 0x7961647275746173;
    v5 = 0xE800000000000000;
  }

  v7 = 0x616473656E646577;
  v8 = 0xE900000000000079;
  if (a1 != 4)
  {
    v7 = 0x7961647372756874;
    v8 = 0xE800000000000000;
  }

  if (a1 > 5u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x79616473657574;
  if (a1 == 2)
  {
    v11 = 0x7961646E6F6DLL;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v12 = 0x7961646E7573;
  v13 = 0xE600000000000000;
  if (!a1)
  {
    v12 = 0x65536D6574737973;
    v13 = 0xED0000676E697474;
  }

  if (a1 <= 1u)
  {
    v10 = v13;
  }

  else
  {
    v12 = v11;
  }

  if (a1 <= 3u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        v16 = 1684632166;
LABEL_35:
        if (v14 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v2 = 0xE800000000000000;
      v17 = 0x647275746173;
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000079;
        if (v14 != 0x616473656E646577)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v2 = 0xE800000000000000;
      v17 = 0x647372756874;
    }

    if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v14 != 0x7961646E7573)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a2 == 2)
  {
    v2 = 0xE600000000000000;
    v16 = 1684959085;
    goto LABEL_35;
  }

  v2 = 0xE700000000000000;
  v3 = 0x79616473657574;
LABEL_39:
  if (v14 != v3)
  {
LABEL_44:
    v18 = sub_10004C844();
    goto LABEL_45;
  }

LABEL_40:
  if (v15 != v2)
  {
    goto LABEL_44;
  }

  v18 = 1;
LABEL_45:

  return v18 & 1;
}

uint64_t sub_100043B40()
{
  sub_10004C784();
}

uint64_t sub_100043CC0()
{
  sub_10004C784();
}

Swift::Int sub_100043DEC()
{
  sub_10004C8A4();
  sub_10004C784();

  return sub_10004C8C4();
}

uint64_t sub_100043F2C()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10004C554();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C5A4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10004C754();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004C564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10004C4D4();
  sub_100005C90(v15, qword_100071BE0);
  sub_100005C58(v15, qword_100071BE0);
  sub_10004C744();
  sub_10004C594();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10004C584();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10004C4C4();
}

uint64_t sub_100044208()
{
  v0 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v96 = &v65 - v2;
  v3 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v97 = &v65 - v5;
  v6 = sub_10004C554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C5A4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C754();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004C564();
  v82 = *(v15 - 8);
  v16 = *(v82 + 64);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057AC(&qword_1000717D8, &qword_100054790);
  v19 = sub_1000057AC(&unk_1000717E0, &unk_100054798);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v90 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  v69 = xmmword_10004EA30;
  *(v21 + 16) = xmmword_10004EA30;
  v71 = v21;
  v94 = v19;
  v73 = *(v19 + 48);
  v93 = v21 + v20;
  *(v21 + v20) = 0;
  sub_10004C744();
  sub_10004C594();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v72 = *(v7 + 104);
  v75 = v6;
  v76 = v7 + 104;
  v72(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  v23 = v82;
  v95 = v18;
  sub_10004C574();
  v24 = *(v23 + 56);
  v91 = v15;
  v88 = v24;
  v89 = v23 + 56;
  v24(v97, 1, 1, v15);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v25 = sub_10004C3C4();
  v80 = sub_100005C58(v25, qword_100071B70);
  v79 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v86 = v26 + 16;
  v87 = v27;
  v28 = v96;
  v27(v96, v80, v25);
  v29 = *(v26 + 56);
  v84 = v26 + 56;
  v85 = v29;
  v29(v28, 0, 1, v25);
  v30 = sub_1000057AC(&qword_100070AA0, &unk_10004F410);
  v31 = *(v23 + 72);
  v82 = *(v23 + 80);
  v83 = v30;
  v78 = (v82 + 32) & ~v82;
  v92 = v31;
  v81 = 2 * v31;
  v32 = swift_allocObject();
  v74 = xmmword_10004EA40;
  v70 = v32;
  *(v32 + 16) = xmmword_10004EA40;
  sub_10004C744();
  sub_10004C594();
  v33 = v22;
  v34 = v75;
  v35 = v22;
  v36 = v72;
  v72(v10, v33, v75);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v77 = v35;
  v36(v10, v35, v34);
  sub_10004C574();
  v37 = v93;
  v38 = v96;
  v39 = v97;
  sub_10004C3F4();
  v70 = v37 + v90;
  v73 = *(v94 + 48);
  *v70 = 1;
  sub_10004C744();
  sub_10004C594();
  v36(v10, v35, v34);
  sub_10004C574();
  v88(v39, 1, 1, v91);
  v40 = v38;
  v41 = v38;
  v42 = v79;
  v87(v41, v80, v79);
  v85(v40, 0, 1, v42);
  v68 = swift_allocObject();
  *(v68 + 16) = v74;
  sub_10004C744();
  sub_10004C594();
  v43 = v77;
  v36(v10, v77, v34);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v36(v10, v43, v34);
  sub_10004C574();
  v44 = v97;
  sub_10004C3F4();
  v68 = 2 * v90;
  v66 = (v93 + 2 * v90);
  v67 = *(v94 + 48);
  *v66 = 2;
  sub_10004C744();
  sub_10004C594();
  v36(v10, v43, v34);
  sub_10004C574();
  v88(v44, 1, 1, v91);
  v45 = v79;
  v87(v40, v80, v79);
  v85(v40, 0, 1, v45);
  v73 = 4 * v92;
  v70 = 5 * v92;
  v46 = v92;
  v65 = swift_allocObject();
  *(v65 + 16) = v69;
  sub_10004C744();
  sub_10004C594();
  v47 = v77;
  v48 = v75;
  v36(v10, v77, v75);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v49 = v48;
  v36(v10, v47, v48);
  v50 = v36;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v36(v10, v47, v49);
  v51 = v81;
  sub_10004C574();
  *&v69 = v51 + v46;
  sub_10004C744();
  sub_10004C594();
  v36(v10, v47, v49);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v52 = v47;
  v50(v10, v47, v49);
  sub_10004C574();
  v53 = v96;
  v54 = v97;
  sub_10004C3F4();
  v67 = v93 + v68 + v90;
  v68 = *(v94 + 48);
  *v67 = 3;
  sub_10004C744();
  sub_10004C594();
  v50(v10, v52, v49);
  sub_10004C574();
  v88(v54, 1, 1, v91);
  v55 = v79;
  v87(v53, v80, v79);
  v85(v53, 0, 1, v55);
  *(swift_allocObject() + 16) = v74;
  sub_10004C744();
  sub_10004C594();
  v56 = v49;
  v57 = v49;
  v58 = v72;
  v72(v10, v52, v57);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v52, v56);
  sub_10004C574();
  v59 = v96;
  v60 = v97;
  sub_10004C3F4();
  *&v74 = v93 + 4 * v90;
  v90 = *(v94 + 48);
  *v74 = 4;
  sub_10004C744();
  sub_10004C594();
  v58(v10, v77, v56);
  sub_10004C574();
  v88(v60, 1, 1, v91);
  v61 = v79;
  v87(v59, v80, v79);
  v85(v59, 0, 1, v61);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_10004FD30;
  sub_10004C744();
  sub_10004C594();
  v62 = v77;
  v58(v10, v77, v56);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v62, v56);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v62, v56);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v62, v56);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v62, v56);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v58(v10, v62, v56);
  sub_10004C574();
  sub_10004C3F4();
  v63 = sub_10004B1BC(v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100071BF8 = v63;
  return result;
}