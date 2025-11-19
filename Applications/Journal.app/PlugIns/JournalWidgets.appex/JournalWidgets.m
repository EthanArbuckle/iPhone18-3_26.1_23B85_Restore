uint64_t sub_1000016F8()
{
  sub_1000021D4(&qword_100084BB8, &qword_100069BA0);
  v0 = sub_100064154();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100064BC0;
  result = (*(v1 + 104))(v4 + v3, enum case for WidgetFamily.accessoryCircular(_:), v0);
  qword_100084430 = v4;
  return result;
}

uint64_t sub_1000017DC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_1000021D4(&qword_100084B70, &unk_100064D90);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_1000021D4(&qword_100084B78, &unk_100064C30);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v44 = sub_1000021D4(&qword_100084B80, &unk_100064D80);
  v41 = *(v44 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v44);
  v16 = &v37 - v15;
  v45 = sub_1000021D4(&qword_100084B88, &qword_100064C40);
  v43 = *(v45 - 8);
  v17 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v37 - v18;
  sub_1000022DC(a1);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v2;
  sub_1000021D4(&qword_100084B90, &qword_100064C48);
  v20 = sub_1000023B0();
  v47 = &type metadata for PickerWidgetView;
  v48 = v20;
  swift_getOpaqueTypeConformance2();
  sub_100002404();
  v21 = v16;
  sub_1000641C4();
  v47 = sub_100002458(a1);
  v48 = v22;
  v23 = sub_100002640(&qword_100084BA8, &qword_100084B70, &unk_100064D90);
  v24 = sub_100002264();
  v25 = v37;
  sub_100063B14();
  (*(v38 + 8))(v8, v25);
  v51 = sub_100002694(a1);
  v52 = v26;
  v47 = v25;
  v48 = &type metadata for String;
  v49 = v23;
  v50 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v39;
  sub_100063AC4();
  (*(v40 + 8))(v13, v28);
  if (qword_100084428 != -1)
  {
    swift_once();
  }

  v47 = v28;
  v48 = &type metadata for String;
  v49 = OpaqueTypeConformance2;
  v50 = v24;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v44;
  sub_100063AD4();
  (*(v41 + 8))(v21, v31);
  sub_1000021D4(&qword_100084BB0, &unk_100064C50);
  v32 = *(sub_100064174() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064164();
  v47 = v31;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  sub_100063AE4();

  return (*(v43 + 8))(v30, v35);
}

uint64_t sub_100001D78(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8[-v5];
  v8[15] = a2;
  sub_100001E34(a2, &v8[-v5]);
  sub_1000023B0();
  sub_100063E34();
  return sub_10000287C(v6);
}

uint64_t sub_100001E34@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppLaunchAction();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v12 = sub_1000635A4();
      *v7 = 0;
      *(v7 + 1) = 0;
      (*(*(v12 - 8) + 56))(&v7[v9], 1, 1, v12);
      v11 = type metadata accessor for CanvasContentInputType();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 > 4u)
  {
    if (a1 != 5)
    {
      v15 = type metadata accessor for CanvasContentInputType();
      *v7 = 0;
      *(v7 + 1) = 0;
      (*(*(v15 - 8) + 56))(&v7[v9], 1, 1, v15);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a1 != 3)
  {
LABEL_10:
    v11 = type metadata accessor for CanvasContentInputType();
    *v7 = 0;
    *(v7 + 1) = 0;
    goto LABEL_11;
  }

  *v7 = 0;
  *(v7 + 1) = 0;
  v7[v9] = 1;
  v11 = type metadata accessor for CanvasContentInputType();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(&v7[v9], 0, 1, v11);
LABEL_12:
  v13 = sub_100064154();
  (*(*(v13 - 8) + 56))(&v7[v10], 1, 1, v13);
  swift_storeEnumTagMultiPayload();
  sub_1000197E8(a2);
  return sub_1000028E4(v7);
}

uint64_t sub_1000020F4(__int128 *a1)
{
  v2 = *a1;
  if (sub_10006281C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002168(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_10006281C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000021D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000221C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002264()
{
  result = qword_100084AD0;
  if (!qword_100084AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084AD0);
  }

  return result;
}

unint64_t sub_1000022DC(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  v2 = 0xD00000000000001DLL;
  if (a1 == 5)
  {
    v2 = 0xD00000000000001CLL;
  }

  v3 = 0xD00000000000001FLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000023B0()
{
  result = qword_100084B98;
  if (!qword_100084B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084B98);
  }

  return result;
}

unint64_t sub_100002404()
{
  result = qword_100084BA0;
  if (!qword_100084BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BA0);
  }

  return result;
}

uint64_t sub_100002458(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100084910 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C30;
      }

      else
      {
        if (qword_100084920 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C50;
      }
    }

    else
    {
      if (qword_100084900 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090C10;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_100084950 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090CB0;
    }

    else
    {
      if (qword_100084498 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090340;
    }
  }

  else if (a1 == 3)
  {
    if (qword_100084930 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C70;
  }

  else
  {
    if (qword_100084940 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C90;
  }

  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_100002640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002694(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100084918 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C40;
      }

      else
      {
        if (qword_100084928 != -1)
        {
          swift_once();
        }

        v1 = &qword_100090C60;
      }
    }

    else
    {
      if (qword_100084908 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090C20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_100084958 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090CC0;
    }

    else
    {
      if (qword_1000844A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_100090350;
    }
  }

  else if (a1 == 3)
  {
    if (qword_100084938 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090C80;
  }

  else
  {
    if (qword_100084948 != -1)
    {
      swift_once();
    }

    v1 = &qword_100090CA0;
  }

  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_10000287C(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000028E4(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002954()
{
  result = qword_100084BD0;
  if (!qword_100084BD0)
  {
    type metadata accessor for PickerWidgetTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BD0);
  }

  return result;
}

uint64_t sub_1000029B0(uint64_t a1, void (*a2)(char *))
{
  v3 = *(*(type metadata accessor for PickerWidgetTimelineEntry() - 8) + 64);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  a2(v5);
  return sub_100002E8C(v5);
}

uint64_t sub_100002A40(uint64_t a1, void (*a2)(char *))
{
  v3 = *(*(sub_1000641F4() - 8) + 64);
  __chkstk_darwin();
  v4 = sub_1000021D4(&qword_100084BD8, &qword_100064D08);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v13 - v7;
  sub_1000021D4(&qword_100084BE0, &unk_100064D10);
  v9 = *(type metadata accessor for PickerWidgetTimelineEntry() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100063564();
  sub_1000641E4();
  sub_100002954();
  sub_100064224();
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100002C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002CE4;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100002CE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002EE8;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100002E8C(uint64_t a1)
{
  v2 = type metadata accessor for PickerWidgetTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F54()
{
  sub_10000221C(&qword_100084B88, &qword_100064C40);
  sub_10000221C(&qword_100084B80, &unk_100064D80);
  sub_10000221C(&qword_100084B78, &unk_100064C30);
  sub_10000221C(&qword_100084B70, &unk_100064D90);
  sub_1000030A0();
  sub_100002264();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000030A0()
{
  result = qword_100084BA8;
  if (!qword_100084BA8)
  {
    sub_10000221C(&qword_100084B70, &unk_100064D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BA8);
  }

  return result;
}

uint64_t sub_100003130@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1000021D4(&qword_100084AC0, &qword_100064BF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - v4;
  v6 = sub_1000021D4(&qword_100084AB8, &qword_100064BF0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v35 = sub_1000021D4(&qword_100084AB0, &qword_100064BE8);
  v33 = *(v35 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v35);
  v12 = &v31 - v11;
  v38 = sub_1000021D4(&qword_100084AA8, &qword_100064BE0);
  v34 = *(v38 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v38);
  v15 = &v31 - v14;
  v39 = sub_1000021D4(&qword_100084BE8, &unk_100064DF8);
  v37 = *(v39 - 8);
  v16 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v31 - v17;
  type metadata accessor for StartWritingWidgetView();
  sub_100003810();
  sub_100003868();
  sub_1000641C4();
  if (qword_100084498 != -1)
  {
    swift_once();
  }

  v41 = qword_100090340;
  v42 = *algn_100090348;
  v18 = sub_1000038BC();
  v19 = sub_100002264();
  sub_100063B14();
  (*(v2 + 8))(v5, v1);
  if (qword_1000844A0 != -1)
  {
    swift_once();
  }

  v45 = qword_100090350;
  v46 = *algn_100090358;
  v41 = v1;
  v42 = &type metadata for String;
  v43 = v18;
  v44 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AC4();
  (*(v32 + 8))(v9, v6);
  if (qword_1000849B8 != -1)
  {
    swift_once();
  }

  v41 = v6;
  v42 = &type metadata for String;
  v43 = OpaqueTypeConformance2;
  v44 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v35;
  sub_100063AD4();
  (*(v33 + 8))(v12, v22);
  v41 = v22;
  v42 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v36;
  v25 = v38;
  sub_100063AF4();
  (*(v34 + 8))(v15, v25);
  sub_1000021D4(&qword_100084BB0, &unk_100064C50);
  v26 = *(sub_100064174() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064164();
  v41 = v25;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v39;
  sub_100063AE4();

  return (*(v37 + 8))(v24, v29);
}

uint64_t sub_100003790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  started = type metadata accessor for StartWritingWidgetView();
  sub_100003920(a1, a2 + *(started + 20));
  *a2 = swift_getKeyPath();
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100003810()
{
  result = qword_100084BF0;
  if (!qword_100084BF0)
  {
    type metadata accessor for StartWritingWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BF0);
  }

  return result;
}

unint64_t sub_100003868()
{
  result = qword_100084BF8;
  if (!qword_100084BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084BF8);
  }

  return result;
}

unint64_t sub_1000038BC()
{
  result = qword_100084AC8;
  if (!qword_100084AC8)
  {
    sub_10000221C(&qword_100084AC0, &qword_100064BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084AC8);
  }

  return result;
}

uint64_t sub_100003920(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_100003988()
{
  sub_10000221C(&qword_100084BE8, &unk_100064DF8);
  sub_10000221C(&qword_100084AA8, &qword_100064BE0);
  sub_10000221C(&qword_100084AB0, &qword_100064BE8);
  sub_10000221C(&qword_100084AB8, &qword_100064BF0);
  sub_10000221C(&qword_100084AC0, &qword_100064BF8);
  sub_1000038BC();
  sub_100002264();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for CanvasPickerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CanvasPickerType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003C8C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_100063A54();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100063C14();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021D4(&qword_100084C08, &qword_100064EC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v27 - v11);
  v13 = sub_1000021D4(&qword_100084C10, &qword_100064ED0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v27 = sub_1000021D4(&qword_100084C18, &qword_100064ED8);
  v18 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v20 = &v27 - v19;
  *v12 = sub_100064084();
  v12[1] = v21;
  v22 = sub_1000021D4(&qword_100084C20, &qword_100064EE0);
  sub_100004038(a1, v12 + *(v22 + 44));
  sub_100063C04();
  v23 = sub_100004880();
  sub_100063F24();
  (*(v5 + 8))(v8, v28);
  sub_10000494C(v12, &qword_100084C08, &qword_100064EC8);
  v35 = sub_10000456C();
  v36 = v24;
  v33 = v9;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  sub_100002264();
  sub_100063F04();

  (*(v14 + 8))(v17, v13);
  v25 = v29;
  sub_100063A44();
  sub_100063824();
  (*(v30 + 8))(v25, v32);
  return sub_1000048E4(v20);
}

uint64_t sub_100004038@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000021D4(&qword_100084C30, &qword_100064EE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_1000021D4(&qword_100084C38, &qword_100064EF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_1000640F4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_1000640E4();
  sub_10000438C(a1);
  sub_100063A94();
  v19 = sub_100063AA4();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v28 = sub_100063FD4();

  sub_10000494C(v10, &qword_100084C38, &qword_100064EF0);
  v20 = sub_100063D34();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = sub_100063D74();
  sub_10000494C(v6, &qword_100084C30, &qword_100064EE8);
  KeyPath = swift_getKeyPath();
  LODWORD(v6) = sub_100063BA4();
  v23 = v12[2];
  v23(v16, v18, v11);
  v24 = v29;
  v23(v29, v16, v11);
  v25 = &v24[*(sub_1000021D4(&qword_100084C40, &qword_100064F28) + 48)];
  *v25 = v28;
  *(v25 + 1) = KeyPath;
  *(v25 + 2) = v21;
  *(v25 + 6) = v6;
  v26 = v12[1];

  v26(v18, v11);

  return (v26)(v16, v11);
}

uint64_t sub_10000438C(char a1)
{
  v2 = sub_1000636C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return sub_100063FC4();
  }

  else
  {
    if (qword_100084AA0 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    v9 = v5;
    v10 = sub_1000049B4(v5, qword_100091030);
    (*(v3 + 16))(v7, v10, v9);
    return sub_100064014();
  }
}

uint64_t sub_10000456C()
{
  v0 = sub_1000635E4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100064294();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100064284();
  sub_1000635D4();
  return sub_1000642B4();
}

unint64_t sub_100004880()
{
  result = qword_100084C28;
  if (!qword_100084C28)
  {
    sub_10000221C(&qword_100084C08, &qword_100064EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C28);
  }

  return result;
}

uint64_t sub_1000048E4(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084C18, &qword_100064ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000494C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000049B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000049F0()
{
  result = qword_100084C48;
  if (!qword_100084C48)
  {
    sub_10000221C(&qword_100084C18, &qword_100064ED8);
    sub_10000221C(&qword_100084C08, &qword_100064EC8);
    sub_100004880();
    swift_getOpaqueTypeConformance2();
    sub_100004AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C48);
  }

  return result;
}

unint64_t sub_100004AB8()
{
  result = qword_100084C50;
  if (!qword_100084C50)
  {
    sub_100063C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C50);
  }

  return result;
}

unint64_t sub_100004CA4()
{
  result = qword_100084C68;
  if (!qword_100084C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C68);
  }

  return result;
}

uint64_t sub_100004D3C()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000633F4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100064294();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100063244();
  sub_100009DBC(v15, qword_100090248);
  sub_1000049B4(v15, qword_100090248);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100063414();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100063234();
}

uint64_t sub_10000502C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v36 = &v30 - v3;
  v4 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v30 - v6;
  v7 = sub_1000633F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000635E4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100064294();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v31 = sub_100063404();
  v16 = *(v31 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v31);
  v33 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v32 = &v30 - v20;
  sub_100064284();
  sub_1000635D4();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v8 + 104);
  v22(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  v30 = "Always Use Moment Date";
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v22(v11, v21, v7);
  v23 = v35;
  sub_100063414();
  v24 = *(v16 + 56);
  v16 += 56;
  v24(v23, 0, 1, v31);
  v25 = v36;
  sub_1000630F4();
  v26 = sub_100063114();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = *(v16 + 16);
  v28 = (*(v16 + 24) + 32) & ~*(v16 + 24);
  *(swift_allocObject() + 16) = xmmword_100064BC0;
  sub_100064284();
  sub_1000635D4();
  v22(v11, v21, v7);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v22(v11, v21, v7);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10000558C()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090260);
  sub_1000049B4(v0, qword_100090260);
  return sub_1000633E4();
}

uint64_t sub_1000055F0()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090278);
  v1 = sub_1000049B4(v0, qword_100090278);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000056B0()
{
  result = swift_getKeyPath();
  qword_100090290 = result;
  return result;
}

uint64_t sub_100005710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v7 = *(*(sub_1000021D4(&qword_100084DE0, &qword_1000659E0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = *(*(sub_1000021D4(&qword_100084DE8, &qword_1000659E8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(sub_1000021D4(&qword_100084DF0, &qword_1000659F0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = sub_100062E34();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = sub_1000021D4(&qword_100084DF8, &qword_1000659F8);
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_100064334();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v5[20] = v16;
  v5[21] = v18;

  return _swift_task_switch(sub_100005928, v16, v18);
}

uint64_t sub_100005928()
{
  v1 = v0[8];
  sub_100062E84();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_1000070AC();
  *v3 = v0;
  v3[1] = sub_1000059F8;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000A084, 0, &type metadata for AlwaysUseMomentDateEntity, v4);
}

uint64_t sub_1000059F8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_100005B18, v4, v3);
}

uint64_t sub_100005B18()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100062E84();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 184) = v3;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084450 != -1)
  {
    swift_once();
  }

  v4 = qword_100090290;
  *(v0 + 192) = qword_100090290;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = sub_100009F14(&qword_100084DC8, &qword_100084DD0, &qword_1000659D0);
  *v6 = v0;
  v6[1] = sub_100005C78;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v4, &type metadata for Bool, v7);
}

uint64_t sub_100005C78()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100006034;
  }

  else
  {
    v8 = sub_100005DCC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100005DCC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_100062E84();
  v0[6] = v0[5];
  v8 = sub_100063224();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100063254();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100004CA4();
  sub_100007480();
  sub_100062E04();
  (*(v2 + 16))(v12, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006034()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t sub_1000060FC()
{
  v0 = sub_1000021D4(&qword_100084E00, &qword_100065A00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100084450 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_100007480();
  sub_100009F14(&qword_100084E08, &qword_100084E00, &qword_100065A00);
  sub_1000630D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100006270@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100062E84();
  *a1 = v5;
  return result;
}

uint64_t sub_1000062AC(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100062E94();
}

uint64_t (*sub_1000062F4(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t sub_10000636C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100062E84();
  *a1 = v5;
  return result;
}

uint64_t sub_1000063A8(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100062E94();
}

uint64_t (*sub_1000063E0(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_100006454()
{
  if (qword_100084450 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000064D8()
{
  result = qword_100084C80;
  if (!qword_100084C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C80);
  }

  return result;
}

unint64_t sub_100006530()
{
  result = qword_100084C88;
  if (!qword_100084C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C88);
  }

  return result;
}

uint64_t sub_10000661C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084448 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090278);

  return sub_100009E78(v3, a1);
}

uint64_t sub_1000066A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_1000066C8, 0, 0);
}

uint64_t sub_1000066C8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100005710(v4, 0, 0, v2, v3);
}

uint64_t sub_100006768()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000685C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000090D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000068A4()
{
  result = qword_100084C90;
  if (!qword_100084C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C90);
  }

  return result;
}

unint64_t sub_1000068FC()
{
  result = qword_100084C98;
  if (!qword_100084C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084C98);
  }

  return result;
}

uint64_t sub_100006950(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100006A10, 0, 0);
}

uint64_t sub_100006A10()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.alwaysUseMomentDate(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100006B34(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_100006BFC, 0, 0);
}

uint64_t sub_100006BFC()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_100009E20();
  v5 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v3 + 104))(v2, enum case for SettingsKey.alwaysUseMomentDate(_:), v4);
  sub_100063674();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1000642A4();

  [v5 setValue:isa forKey:v7];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100006D30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10000954C(0);
}

unint64_t sub_100006DE0()
{
  result = qword_100084CA0;
  if (!qword_100084CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CA0);
  }

  return result;
}

uint64_t sub_100006E34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000077E4();
  *v5 = v2;
  v5[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100006EE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100006FFC()
{
  result = qword_100084CA8;
  if (!qword_100084CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CA8);
  }

  return result;
}

unint64_t sub_100007054()
{
  result = qword_100084CB0;
  if (!qword_100084CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CB0);
  }

  return result;
}

unint64_t sub_1000070AC()
{
  result = qword_100084CB8;
  if (!qword_100084CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CB8);
  }

  return result;
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000077E4();
  *v6 = v2;
  v6[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000071B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000077E4();
  *v5 = v2;
  v5[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100007264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100007324;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100007324(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100007428()
{
  result = qword_100084CC0;
  if (!qword_100084CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CC0);
  }

  return result;
}

unint64_t sub_100007480()
{
  result = qword_100084CC8;
  if (!qword_100084CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CC8);
  }

  return result;
}

unint64_t sub_1000074D8()
{
  result = qword_100084CD0;
  if (!qword_100084CD0)
  {
    sub_10000221C(&qword_100084CD8, qword_100065350);
    sub_100007480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CD0);
  }

  return result;
}

uint64_t sub_10000755C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006DE0();
  *v6 = v2;
  v6[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002CE4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000076D0()
{
  result = qword_100084CE0;
  if (!qword_100084CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CE0);
  }

  return result;
}

unint64_t sub_100007728()
{
  result = qword_100084CE8;
  if (!qword_100084CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CE8);
  }

  return result;
}

unint64_t sub_100007780()
{
  result = qword_100084CF0;
  if (!qword_100084CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CF0);
  }

  return result;
}

unint64_t sub_1000077E4()
{
  result = qword_100084CF8;
  if (!qword_100084CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084CF8);
  }

  return result;
}

unint64_t sub_10000783C()
{
  result = qword_100084D00;
  if (!qword_100084D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D00);
  }

  return result;
}

uint64_t sub_100007890(uint64_t a1)
{
  v2 = sub_1000070AC();

  return EntityURLRepresentation.init(_:)(0xD000000000000050, 0x800000010006BCC0, a1, v2);
}

unint64_t sub_1000078F8()
{
  result = qword_100084D08;
  if (!qword_100084D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D08);
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_100084D10;
  if (!qword_100084D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D10);
  }

  return result;
}

unint64_t sub_1000079A8()
{
  result = qword_100084D18;
  if (!qword_100084D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D18);
  }

  return result;
}

uint64_t sub_100007A08@<X0>(uint64_t *a1@<X8>)
{
  sub_1000068FC();
  result = sub_100062E64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007A48()
{
  sub_100009D68();
  v1 = sub_100063194();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100007B30(uint64_t a1)
{
  v2 = sub_1000070AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B80()
{
  result = qword_100084D30;
  if (!qword_100084D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D30);
  }

  return result;
}

uint64_t sub_100007BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002EE8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007C9C(uint64_t a1)
{
  v2 = sub_1000079A8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100007CEC()
{
  result = qword_100084D38;
  if (!qword_100084D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D38);
  }

  return result;
}

uint64_t sub_100007D40()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090298);
  sub_1000049B4(v0, qword_100090298);
  return sub_1000633E4();
}

uint64_t sub_100007DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000633F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000635E4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100064294();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100063404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100064284();
  sub_1000635D4();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100063414();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100063084();
  v18 = sub_100063074();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_1000080A0(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

void sub_100008114(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100008164()
{
  result = qword_100084D40;
  if (!qword_100084D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D40);
  }

  return result;
}

uint64_t sub_1000081B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009CC0();
  v5 = sub_100009D68();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100008220()
{
  v0 = qword_100084C58;

  return v0;
}

unint64_t sub_10000825C()
{
  result = qword_100084D48;
  if (!qword_100084D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D48);
  }

  return result;
}

unint64_t sub_1000082B4()
{
  result = qword_100084D50;
  if (!qword_100084D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D50);
  }

  return result;
}

unint64_t sub_10000830C()
{
  result = qword_100084D58;
  if (!qword_100084D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084D58);
  }

  return result;
}

uint64_t sub_100008404@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000049B4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000084C0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100009CC0();
  v7 = sub_100009D14();
  v8 = sub_100009D68();
  *v5 = v2;
  v5[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000858C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100008694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100009864();
  *a1 = result;
  return result;
}

uint64_t sub_1000086BC(uint64_t a1)
{
  v2 = sub_100008164();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100008728(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008734(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000877C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008850@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  swift_getKeyPath();
  sub_1000068FC();
  sub_100064184();
  sub_100063A34();
  v14 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70);
  sub_100063B04();

  (*(v19 + 8))(v4, v1);
  sub_100063A34();
  v24 = v1;
  v25 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v20 + 8))(v8, v5);
  v24 = v5;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v21;
  sub_100063B24();
  return (*(v22 + 8))(v13, v16);
}

uint64_t sub_100008C4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100008E60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_1000090D8()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000631F4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v27 = &v27 - v16;
  v18 = sub_100063404();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_1000021D4(&qword_100084D90, &qword_100065998);
  sub_1000633E4();
  v33 = *(v19 + 56);
  v33(v17, 1, 1, v18);
  v38 = 0;
  v21 = sub_100062E34();
  v22 = *(*(v21 - 8) + 56);
  v28 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v23;
  v23(v6);
  sub_1000070AC();
  v24 = v27;
  v29 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v33(v24, 1, 1, v34);
  v37 = 2;
  v25 = sub_100064314();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v22(v28, 1, 1, v21);
  v31(v6, v32, v36);
  sub_100062EC4();
  return v29;
}

uint64_t sub_10000954C(uint64_t a1)
{
  v3 = sub_1000633F4();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = *(*(sub_1000635E4() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = *(*(sub_100064294() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = *(*(sub_100063404() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(sub_1000096B8, v9, v11);
}

uint64_t sub_1000096B8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000021D4(&qword_100084C78, qword_1000650B0);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  sub_100009F14(&qword_100084DC8, &qword_100084DD0, &qword_1000659D0);
  v7 = sub_100063284();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100009864()
{
  v0 = sub_1000631F4();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000633F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000635E4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100064294();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100063404();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_1000021D4(&qword_100084D90, &qword_100065998);
  sub_100064284();
  sub_1000635D4();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100063414();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_100062E34();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000070AC();
  return sub_100062EB4();
}

unint64_t sub_100009CC0()
{
  result = qword_100084DA0;
  if (!qword_100084DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DA0);
  }

  return result;
}

unint64_t sub_100009D14()
{
  result = qword_100084DA8;
  if (!qword_100084DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DA8);
  }

  return result;
}

unint64_t sub_100009D68()
{
  result = qword_100084DB0;
  if (!qword_100084DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084DB0);
  }

  return result;
}

uint64_t *sub_100009DBC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100009E20()
{
  result = qword_100084DD8;
  if (!qword_100084DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100084DD8);
  }

  return result;
}

uint64_t sub_100009E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009F5C()
{
  sub_10000221C(&qword_100084E28, &unk_100067D80);
  sub_10000221C(&qword_100084E20, &unk_100065AB0);
  sub_10000221C(&qword_100084E18, &unk_100067D70);
  sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A0CC()
{
  result = qword_100084E38;
  if (!qword_100084E38)
  {
    type metadata accessor for StartWritingWidgetTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084E38);
  }

  return result;
}

uint64_t sub_10000A140(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_10000C8CC(a1, &v8 - v4);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 56))(v5, 0, 1, started);
  sub_1000487B0(v5);
  return sub_10000494C(v5, &qword_100084E70, &unk_100065B90);
}

uint64_t sub_10000A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v43 = sub_100064154();
  v41 = *(v43 - 8);
  v2 = *(v41 + 64);
  __chkstk_darwin(v43);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100063644();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v39);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000635E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v14 = *(*(started - 1) + 64);
  __chkstk_darwin(started);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100063574();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v21 = qword_100090E18;
  sub_1000635D4();
  sub_100063624();
  sub_10003BCA8(v21, v13, v8, v20, sub_10000A124, sub_10000A140, 0, v16);
  (*(v5 + 8))(v8, v39);
  (*(v10 + 8))(v13, v9);
  sub_100064214();
  v22 = (*(v41 + 88))(v4, v43);
  if (v22 == enum case for WidgetFamily.systemSmall(_:) || v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    v23 = v20;
    v24 = started[7];
    goto LABEL_11;
  }

  if (v22 == enum case for WidgetFamily.accessoryCircular(_:) || v22 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v23 = v20;
    v24 = started[6];
    goto LABEL_11;
  }

  if (v22 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v23 = v20;
    v24 = started[5];
LABEL_11:
    v25 = &v16[v24];
    v26 = *(v25 + 1);
    v48 = *v25;
    v49 = v26;
    v50 = *(v25 + 2);
    sub_10000B264(&v48, v47);
    sub_10000C930(v16, type metadata accessor for StartWritingWidgetPersistedPrompts);
    v27 = *(&v50 + 1);
    v43 = v50;
    v28 = v49;
    v29 = BYTE11(v48);
    v30 = BYTE10(v48);
    v31 = BYTE9(v48);
    v32 = v48;
    LOBYTE(v48) = BYTE8(v48);
    v33 = v46;
    (*(v44 + 32))(v46, v23, v45);
    v34 = type metadata accessor for StartWritingWidgetTimelineEntry();
    v35 = v34[6];
    v36 = sub_100064204();
    result = (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
    v38 = v33 + v34[5];
    *v38 = v32;
    *(v38 + 8) = v48;
    *(v38 + 9) = v31;
    *(v38 + 10) = v30;
    *(v38 + 11) = v29;
    *(v38 + 16) = v28;
    *(v38 + 32) = v43;
    *(v38 + 40) = v27;
    *(v33 + v34[7]) = 2;
    return result;
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

uint64_t sub_10000A798(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v90 = a3;
  v91 = a2;
  v94 = a1;
  v3 = sub_1000641F4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v89 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100063644();
  v84 = *(v85 - 8);
  v6 = *(v84 + 64);
  __chkstk_darwin(v85);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000635E4();
  v81 = *(v83 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v83);
  v79 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v10 = *(*(started - 1) + 64);
  __chkstk_darwin(started);
  v88 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100064154();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  v14 = __chkstk_darwin(v12);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v74 - v16;
  v18 = sub_1000021D4(&qword_100084E40, &unk_100065B60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v74 - v20;
  v22 = sub_1000021D4(&qword_100084E48, &unk_10006A3A0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v87 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v74 - v27;
  v29 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v74 - v31;
  v33 = sub_100063574();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v95 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v74 - v38;
  type metadata accessor for JournalWidgetBridge();
  sub_10000E0A8(v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v75 = v34;
    v76 = v33;
    v77 = v23;
    v78 = v22;
    v40 = &qword_100084E50;
    v41 = &qword_100065B70;
    v42 = v32;
  }

  else
  {
    (*(v34 + 32))(v39, v32, v33);
    sub_100064214();
    v43 = sub_10000B8E8(v17);
    (*(v92 + 8))(v17, v93);
    sub_100052294(v39, v43, v21);

    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      (*(v23 + 32))(v28, v21, v22);
      v91(v28);
      (*(v23 + 8))(v28, v22);
      return (*(v34 + 8))(v39, v33);
    }

    v77 = v23;
    v78 = v22;
    v75 = v34;
    v44 = *(v34 + 8);
    v76 = v33;
    v44(v39, v33);
    v40 = &qword_100084E40;
    v41 = &unk_100065B60;
    v42 = v21;
  }

  sub_10000494C(v42, v40, v41);
  v45 = v95;
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  v46 = v88;
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v47 = qword_100090E18;
  v48 = v79;
  sub_1000635D4();
  v49 = v82;
  sub_100063624();
  sub_10003BCA8(v47, v48, v49, v45, sub_10000A124, sub_10000A140, 0, v46);
  (*(v84 + 8))(v49, v85);
  (*(v81 + 8))(v48, v83);
  sub_1000021D4(&qword_100084E58, &qword_100065B78);
  v50 = type metadata accessor for StartWritingWidgetTimelineEntry();
  v51 = *(*(v50 - 1) + 72);
  v52 = (*(*(v50 - 1) + 80) + 32) & ~*(*(v50 - 1) + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100064BC0;
  v54 = v80;
  sub_100064214();
  v55 = (*(v92 + 88))(v54, v93);
  if (v55 == enum case for WidgetFamily.systemSmall(_:) || v55 == enum case for WidgetFamily.systemMedium(_:))
  {
    v56 = started[7];
    goto LABEL_16;
  }

  if (v55 == enum case for WidgetFamily.accessoryCircular(_:) || v55 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v56 = started[6];
    goto LABEL_16;
  }

  if (v55 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v56 = started[5];
LABEL_16:
    v58 = (v46 + v56);
    v59 = v58[2];
    v98 = v58[1];
    v99 = v59;
    v97 = *v58;
    v93 = *(&v59 + 1);
    v94 = v59;
    started = *(&v98 + 1);
    v92 = v98;
    LODWORD(v85) = BYTE11(v97);
    LODWORD(v84) = BYTE10(v97);
    v60 = BYTE9(v97);
    v61 = v97;
    v62 = BYTE8(v97);
    sub_10000B264(&v97, v96);
    v63 = v53 + v52;
    LOBYTE(v97) = v62;
    v64 = v75;
    v65 = v95;
    v66 = v76;
    (*(v75 + 16))(v53 + v52, v95, v76);
    v67 = v50[6];
    v68 = sub_100064204();
    (*(*(v68 - 8) + 56))(v63 + v67, 1, 1, v68);
    v69 = v63 + v50[5];
    *v69 = v61;
    *(v69 + 8) = v97;
    *(v69 + 9) = v60;
    *(v69 + 10) = v84;
    *(v69 + 11) = v85;
    v70 = started;
    *(v69 + 16) = v92;
    *(v69 + 24) = v70;
    v71 = v93;
    *(v69 + 32) = v94;
    *(v69 + 40) = v71;
    *(v63 + v50[7]) = 2;
    v72 = v46 + *(sub_1000021D4(&qword_100084E60, &unk_100065B80) + 36);
    sub_1000641D4();
    sub_10000A0CC();
    v73 = v87;
    sub_100064224();
    v91(v73);
    (*(v77 + 8))(v73, v78);
    sub_10000C930(v46, type metadata accessor for StartWritingWidgetPersistedPrompts);
    return (*(v64 + 8))(v65, v66);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

uint64_t sub_10000B2C0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v47 = a1;
  v48 = sub_100064154();
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v48);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100063644();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000635E4();
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v43);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v14 = *(*(started - 1) + 64);
  __chkstk_darwin(started);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StartWritingWidgetTimelineEntry();
  v17 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100063574();
  v49 = *(v51 - 8);
  v20 = *(v49 + 64);
  __chkstk_darwin(v51);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063564();
  type metadata accessor for StartWritingWidgetPromptProvider();
  if (qword_1000849E0 != -1)
  {
    swift_once();
  }

  v23 = qword_100090E18;
  sub_1000635D4();
  sub_100063624();
  sub_10003BCA8(v23, v13, v9, v22, sub_10000A124, sub_10000A140, 0, v16);
  (*(v6 + 8))(v9, v44);
  (*(v10 + 8))(v13, v43);
  sub_100064214();
  v24 = (*(v46 + 88))(v5, v48);
  if (v24 == enum case for WidgetFamily.systemSmall(_:) || v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    v25 = v22;
    v26 = started[7];
    goto LABEL_11;
  }

  if (v24 == enum case for WidgetFamily.accessoryCircular(_:) || v24 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v25 = v22;
    v26 = started[6];
    goto LABEL_11;
  }

  if (v24 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v25 = v22;
    v26 = started[5];
LABEL_11:
    v27 = &v16[v26];
    v28 = *(v27 + 1);
    v55 = *v27;
    v56 = v28;
    v57 = *(v27 + 2);
    sub_10000B264(&v55, v54);
    sub_10000C930(v16, type metadata accessor for StartWritingWidgetPersistedPrompts);
    v47 = *(&v57 + 1);
    v48 = v57;
    started = *(&v56 + 1);
    v46 = v56;
    v29 = BYTE11(v55);
    v30 = BYTE10(v55);
    v31 = BYTE9(v55);
    v32 = v55;
    LOBYTE(v55) = BYTE8(v55);
    v33 = v49;
    v34 = v51;
    (*(v49 + 16))(v19, v25, v51);
    v35 = v50;
    v36 = *(v50 + 24);
    v37 = sub_100064204();
    (*(*(v37 - 8) + 56))(&v19[v36], 1, 1, v37);
    v38 = &v19[*(v35 + 20)];
    *v38 = v32;
    v38[8] = v55;
    v38[9] = v31;
    v38[10] = v30;
    v38[11] = v29;
    v39 = started;
    *(v38 + 2) = v46;
    *(v38 + 3) = v39;
    v40 = v47;
    *(v38 + 4) = v48;
    *(v38 + 5) = v40;
    v19[*(v35 + 28)] = 2;
    v53(v19);
    sub_10000C930(v19, type metadata accessor for StartWritingWidgetTimelineEntry);
    return (*(v33 + 8))(v25, v34);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

void *sub_10000B8E8(uint64_t a1)
{
  v2 = sub_1000635E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100064154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100065AC0;
    if (qword_1000844F0 != -1)
    {
      swift_once();
    }

    v14 = qword_1000903F0;
    v15 = *algn_1000903F8;

    sub_1000635D4();
    v150 = 1;
    v16 = sub_1000635B4();
    v18 = v17;
    v19 = *(v3 + 8);
    v19(v6, v2);
    v20 = v150;
    *(v13 + 32) = 0;
    *(v13 + 40) = v20;
    *(v13 + 41) = 2;
    *(v13 + 43) = 0;
    *(v13 + 48) = v14;
    *(v13 + 56) = v15;
    *(v13 + 64) = v16;
    *(v13 + 72) = v18;
    if (qword_1000844F8 != -1)
    {
      swift_once();
    }

    v21 = qword_100090400;
    v22 = *algn_100090408;

    sub_1000635D4();
    v150 = 1;
    v23 = sub_1000635B4();
    v25 = v24;
    v19(v6, v2);
    v26 = v150;
    *(v13 + 80) = 0;
    *(v13 + 88) = v26;
    *(v13 + 89) = 2;
    *(v13 + 91) = 0;
    *(v13 + 96) = v21;
    *(v13 + 104) = v22;
    *(v13 + 112) = v23;
    *(v13 + 120) = v25;
    if (qword_100084628 != -1)
    {
      swift_once();
    }

    v27 = qword_100090660;
    v28 = *algn_100090668;

    sub_1000635D4();
    v150 = 1;
    v29 = sub_1000635B4();
    v31 = v30;
    v19(v6, v2);
    v32 = v150;
    *(v13 + 128) = 0;
    *(v13 + 136) = v32;
    *(v13 + 137) = 2;
    *(v13 + 139) = 1;
    *(v13 + 144) = v27;
    *(v13 + 152) = v28;
    *(v13 + 160) = v29;
    *(v13 + 168) = v31;
    if (qword_100084630 != -1)
    {
      swift_once();
    }

    v33 = qword_100090670;
    v34 = *algn_100090678;

    sub_1000635D4();
    v150 = 1;
    v35 = sub_1000635B4();
    v37 = v36;
    v19(v6, v2);
    v38 = v150;
    *(v13 + 176) = 0;
    *(v13 + 184) = v38;
    *(v13 + 185) = 2;
    *(v13 + 187) = 1;
    *(v13 + 192) = v33;
    *(v13 + 200) = v34;
    *(v13 + 208) = v35;
    *(v13 + 216) = v37;
    if (qword_1000847E0 != -1)
    {
      swift_once();
    }

    v39 = qword_1000909D0;
    v40 = *algn_1000909D8;

    sub_1000635D4();
    v150 = 1;
    v41 = sub_1000635B4();
    v43 = v42;
    v19(v6, v2);
    v44 = v150;
    *(v13 + 224) = 0;
    *(v13 + 232) = v44;
    *(v13 + 233) = 2;
    *(v13 + 235) = 2;
    *(v13 + 240) = v39;
    *(v13 + 248) = v40;
    *(v13 + 256) = v41;
    *(v13 + 264) = v43;
    if (qword_1000847E8 != -1)
    {
      swift_once();
    }

    v45 = &qword_1000909E0;
LABEL_29:
    v76 = *v45;
    v77 = v45[1];

    sub_1000635D4();
    v150 = 1;
    v78 = sub_1000635B4();
    v80 = v79;
    v19(v6, v2);
    v81 = v150;
    *(v13 + 272) = 0;
    *(v13 + 280) = v81;
    *(v13 + 281) = 2;
    *(v13 + 283) = 2;
    goto LABEL_30;
  }

  if (v12 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100065AC0;
    if (qword_100084500 != -1)
    {
      swift_once();
    }

    v46 = qword_100090410;
    v47 = *algn_100090418;

    sub_1000635D4();
    v150 = 1;
    v48 = sub_1000635B4();
    v50 = v49;
    v19 = *(v3 + 8);
    v19(v6, v2);
    v51 = v150;
    *(v13 + 32) = 0;
    *(v13 + 40) = v51;
    *(v13 + 41) = 2;
    *(v13 + 43) = 0;
    *(v13 + 48) = v46;
    *(v13 + 56) = v47;
    *(v13 + 64) = v48;
    *(v13 + 72) = v50;
    if (qword_100084508 != -1)
    {
      swift_once();
    }

    v52 = qword_100090420;
    v53 = *algn_100090428;

    sub_1000635D4();
    v150 = 1;
    v54 = sub_1000635B4();
    v56 = v55;
    v19(v6, v2);
    v57 = v150;
    *(v13 + 80) = 0;
    *(v13 + 88) = v57;
    *(v13 + 89) = 2;
    *(v13 + 91) = 0;
    *(v13 + 96) = v52;
    *(v13 + 104) = v53;
    *(v13 + 112) = v54;
    *(v13 + 120) = v56;
    if (qword_100084638 != -1)
    {
      swift_once();
    }

    v58 = qword_100090680;
    v59 = *algn_100090688;

    sub_1000635D4();
    v150 = 1;
    v60 = sub_1000635B4();
    v62 = v61;
    v19(v6, v2);
    v63 = v150;
    *(v13 + 128) = 0;
    *(v13 + 136) = v63;
    *(v13 + 137) = 2;
    *(v13 + 139) = 1;
    *(v13 + 144) = v58;
    *(v13 + 152) = v59;
    *(v13 + 160) = v60;
    *(v13 + 168) = v62;
    if (qword_100084640 != -1)
    {
      swift_once();
    }

    v64 = qword_100090690;
    v65 = *algn_100090698;

    sub_1000635D4();
    v150 = 1;
    v66 = sub_1000635B4();
    v68 = v67;
    v19(v6, v2);
    v69 = v150;
    *(v13 + 176) = 0;
    *(v13 + 184) = v69;
    *(v13 + 185) = 2;
    *(v13 + 187) = 1;
    *(v13 + 192) = v64;
    *(v13 + 200) = v65;
    *(v13 + 208) = v66;
    *(v13 + 216) = v68;
    if (qword_1000847F0 != -1)
    {
      swift_once();
    }

    v70 = qword_1000909F0;
    v71 = *algn_1000909F8;

    sub_1000635D4();
    v150 = 1;
    v72 = sub_1000635B4();
    v74 = v73;
    v19(v6, v2);
    v75 = v150;
    *(v13 + 224) = 0;
    *(v13 + 232) = v75;
    *(v13 + 233) = 2;
    *(v13 + 235) = 2;
    *(v13 + 240) = v70;
    *(v13 + 248) = v71;
    *(v13 + 256) = v72;
    *(v13 + 264) = v74;
    if (qword_1000847F8 != -1)
    {
      swift_once();
    }

    v45 = &qword_100090A00;
    goto LABEL_29;
  }

  if (v12 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100065AC0;
    if (qword_100084578 != -1)
    {
      swift_once();
    }

    v83 = qword_100090500;
    v84 = *algn_100090508;

    sub_1000635D4();
    v150 = 1;
    v85 = sub_1000635B4();
    v87 = v86;
    v88 = *(v3 + 8);
    v88(v6, v2);
    v89 = v150;
    *(v13 + 32) = 0;
    *(v13 + 40) = v89;
    *(v13 + 41) = 1;
    *(v13 + 43) = 0;
    *(v13 + 48) = v83;
    *(v13 + 56) = v84;
    *(v13 + 64) = v85;
    *(v13 + 72) = v87;
    if (qword_100084580 != -1)
    {
      swift_once();
    }

    v90 = qword_100090510;
    v91 = *algn_100090518;

    sub_1000635D4();
    v150 = 1;
    v92 = sub_1000635B4();
    v94 = v93;
    v88(v6, v2);
    v95 = v150;
    *(v13 + 80) = 0;
    *(v13 + 88) = v95;
    *(v13 + 89) = 1;
    *(v13 + 91) = 0;
    *(v13 + 96) = v90;
    *(v13 + 104) = v91;
    *(v13 + 112) = v92;
    *(v13 + 120) = v94;
    if (qword_100084700 != -1)
    {
      swift_once();
    }

    v96 = qword_100090810;
    v97 = *algn_100090818;

    sub_1000635D4();
    v150 = 1;
    v98 = sub_1000635B4();
    v100 = v99;
    v88(v6, v2);
    v101 = v150;
    *(v13 + 128) = 0;
    *(v13 + 136) = v101;
    *(v13 + 137) = 1;
    *(v13 + 139) = 1;
    *(v13 + 144) = v96;
    *(v13 + 152) = v97;
    *(v13 + 160) = v98;
    *(v13 + 168) = v100;
    if (qword_100084708 != -1)
    {
      swift_once();
    }

    v102 = qword_100090820;
    v103 = *algn_100090828;

    sub_1000635D4();
    v150 = 1;
    v104 = sub_1000635B4();
    v106 = v105;
    v88(v6, v2);
    v107 = v150;
    *(v13 + 176) = 0;
    *(v13 + 184) = v107;
    *(v13 + 185) = 1;
    *(v13 + 187) = 1;
    *(v13 + 192) = v102;
    *(v13 + 200) = v103;
    *(v13 + 208) = v104;
    *(v13 + 216) = v106;
    if (qword_100084878 != -1)
    {
      swift_once();
    }

    v108 = qword_100090B00;
    v109 = *algn_100090B08;

    sub_1000635D4();
    v150 = 1;
    v110 = sub_1000635B4();
    v112 = v111;
    v88(v6, v2);
    v113 = v150;
    *(v13 + 224) = 0;
    *(v13 + 232) = v113;
    *(v13 + 233) = 1;
    *(v13 + 235) = 2;
    *(v13 + 240) = v108;
    *(v13 + 248) = v109;
    *(v13 + 256) = v110;
    *(v13 + 264) = v112;
    if (qword_100084880 != -1)
    {
      swift_once();
    }

    v76 = qword_100090B10;
    v77 = *algn_100090B18;

    sub_1000635D4();
    v150 = 1;
    v78 = sub_1000635B4();
    v80 = v114;
    v88(v6, v2);
    v115 = v150;
    *(v13 + 272) = 0;
    *(v13 + 280) = v115;
    *(v13 + 281) = 1;
  }

  else
  {
    if (v12 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v8 + 8))(v11, v7);
      return &_swiftEmptyArrayStorage;
    }

    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100065AC0;
    if (qword_1000845C8 != -1)
    {
      swift_once();
    }

    v116 = qword_1000905A0;
    v117 = *algn_1000905A8;

    sub_1000635D4();
    v150 = 1;
    v118 = sub_1000635B4();
    v120 = v119;
    v121 = *(v3 + 8);
    v121(v6, v2);
    v122 = v150;
    *(v13 + 32) = 0;
    *(v13 + 40) = v122;
    *(v13 + 41) = 0;
    *(v13 + 43) = 0;
    *(v13 + 48) = v116;
    *(v13 + 56) = v117;
    *(v13 + 64) = v118;
    *(v13 + 72) = v120;
    if (qword_1000845D0 != -1)
    {
      swift_once();
    }

    v123 = qword_1000905B0;
    v124 = *algn_1000905B8;

    sub_1000635D4();
    v150 = 1;
    v125 = sub_1000635B4();
    v127 = v126;
    v121(v6, v2);
    v128 = v150;
    *(v13 + 80) = 0;
    *(v13 + 88) = v128;
    *(v13 + 89) = 0;
    *(v13 + 91) = 0;
    *(v13 + 96) = v123;
    *(v13 + 104) = v124;
    *(v13 + 112) = v125;
    *(v13 + 120) = v127;
    if (qword_100084748 != -1)
    {
      swift_once();
    }

    v129 = qword_1000908A0;
    v130 = *algn_1000908A8;

    sub_1000635D4();
    v150 = 1;
    v131 = sub_1000635B4();
    v133 = v132;
    v121(v6, v2);
    v134 = v150;
    *(v13 + 128) = 0;
    *(v13 + 136) = v134;
    *(v13 + 137) = 0;
    *(v13 + 139) = 1;
    *(v13 + 144) = v129;
    *(v13 + 152) = v130;
    *(v13 + 160) = v131;
    *(v13 + 168) = v133;
    if (qword_100084750 != -1)
    {
      swift_once();
    }

    v135 = qword_1000908B0;
    v136 = *algn_1000908B8;

    sub_1000635D4();
    v150 = 1;
    v137 = sub_1000635B4();
    v139 = v138;
    v121(v6, v2);
    v140 = v150;
    *(v13 + 176) = 0;
    *(v13 + 184) = v140;
    *(v13 + 185) = 0;
    *(v13 + 187) = 1;
    *(v13 + 192) = v135;
    *(v13 + 200) = v136;
    *(v13 + 208) = v137;
    *(v13 + 216) = v139;
    if (qword_1000848D0 != -1)
    {
      swift_once();
    }

    v141 = qword_100090BB0;
    v142 = *algn_100090BB8;

    sub_1000635D4();
    v150 = 1;
    v143 = sub_1000635B4();
    v145 = v144;
    v121(v6, v2);
    v146 = v150;
    *(v13 + 224) = 0;
    *(v13 + 232) = v146;
    *(v13 + 233) = 0;
    *(v13 + 235) = 2;
    *(v13 + 240) = v141;
    *(v13 + 248) = v142;
    *(v13 + 256) = v143;
    *(v13 + 264) = v145;
    if (qword_1000848D8 != -1)
    {
      swift_once();
    }

    v76 = qword_100090BC0;
    v77 = *algn_100090BC8;

    sub_1000635D4();
    v150 = 1;
    v78 = sub_1000635B4();
    v80 = v147;
    v121(v6, v2);
    v148 = v150;
    *(v13 + 272) = 0;
    *(v13 + 280) = v148;
    *(v13 + 281) = 0;
  }

  *(v13 + 283) = 2;
LABEL_30:
  *(v13 + 288) = v76;
  *(v13 + 296) = v77;
  *(v13 + 304) = v78;
  *(v13 + 312) = v80;
  return v13;
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_10000C930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000C9A4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v5 = *(*(started - 8) + 48);

  return v5(a1, a2, started);
}

uint64_t sub_10000CA24(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v5 = *(*(started - 8) + 56);

  return v5(a1, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetAccessoryInlineView()
{
  result = qword_100084ED0;
  if (!qword_100084ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CAE0()
{
  result = type metadata accessor for StartWritingWidgetTimelineEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000CB68@<X0>(_BYTE *a1@<X8>)
{
  sub_1000021D4(&qword_100084F08, &qword_100065C28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v4 = sub_100063C74();
  *(inited + 32) = v4;
  v5 = sub_100063C94();
  *(inited + 33) = v5;
  v6 = sub_100063C84();
  sub_100063C84();
  if (sub_100063C84() != v4)
  {
    v6 = sub_100063C84();
  }

  sub_100063C84();
  if (sub_100063C84() != v5)
  {
    v6 = sub_100063C84();
  }

  *a1 = v6;
  v7 = sub_1000021D4(&qword_100084F10, &qword_100065C30);
  return sub_10000CC6C(v1, &a1[*(v7 + 44)]);
}

uint64_t sub_10000CC6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000021D4(&qword_100084F18, &qword_100065C38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_1000021D4(&qword_100084F20, &qword_100065C40);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v31 = &v30 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - v16;
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v20 = (a1 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20));
  v21 = v20[1];
  v37[0] = *v20;
  v37[1] = v21;
  v37[2] = v20[2];
  v35 = v37;
  sub_100064024();
  sub_100009F14(&qword_100084F28, &qword_100084F18, &qword_100065C38);
  sub_100063EA4();
  v22 = *(v4 + 8);
  v22(v7, v3);
  memset(v36, 0, sizeof(v36));
  v34 = v36;
  sub_100064024();
  sub_100063EA4();
  v22(v7, v3);
  v23 = v9[2];
  v24 = v31;
  v23(v31, v19, v8);
  v25 = v32;
  v23(v32, v17, v8);
  v26 = v33;
  v23(v33, v24, v8);
  v27 = sub_1000021D4(&qword_100084F30, &qword_100065C48);
  v23(&v26[*(v27 + 48)], v25, v8);
  v28 = v9[1];
  v28(v17, v8);
  v28(v19, v8);
  v28(v25, v8);
  return (v28)(v24, v8);
}

uint64_t sub_10000D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else if (qword_100084498 != -1)
  {
    swift_once();
  }

  sub_100002264();
  result = sub_100063E14();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10000D124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063FC4();
  *a1 = result;
  return result;
}

uint64_t sub_10000D1B8()
{
  v0 = sub_1000021D4(&qword_100084F50, &qword_100065CB8);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000D240();
  sub_1000637D4();
  return 0;
}

unint64_t sub_10000D240()
{
  result = qword_100084F48;
  if (!qword_100084F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F48);
  }

  return result;
}

unint64_t sub_10000D2C4()
{
  result = qword_100084F58;
  if (!qword_100084F58)
  {
    sub_10000221C(&qword_100084F60, &unk_100065CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F58);
  }

  return result;
}

unint64_t sub_10000D32C()
{
  result = qword_100084F78;
  if (!qword_100084F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F78);
  }

  return result;
}

unint64_t sub_10000D384()
{
  result = qword_100084F80;
  if (!qword_100084F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F80);
  }

  return result;
}

uint64_t sub_10000D3D8()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_1000902B0);
  sub_1000049B4(v0, qword_1000902B0);
  return sub_1000633E4();
}

uint64_t sub_10000D43C@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v1 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v20 - v3;
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000635E4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100064294();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100063404();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  (*(v15 + 56))(v4, 1, 1, v14);
  v17 = v20[0];
  sub_100063084();
  v18 = sub_100063074();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_10000D784@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100062E84();
  *a1 = v5;
  return result;
}

uint64_t sub_10000D7C0(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100062E94();
}

void (*sub_10000D7F8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100062E74();
  return sub_100008114;
}

unint64_t sub_10000D86C()
{
  result = qword_100084F88;
  if (!qword_100084F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F88);
  }

  return result;
}

uint64_t sub_10000D8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DFA8();
  v5 = sub_10000E050();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000D92C()
{
  v0 = qword_100084F68;

  return v0;
}

unint64_t sub_10000D968()
{
  result = qword_100084F90;
  if (!qword_100084F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F90);
  }

  return result;
}

unint64_t sub_10000D9C0()
{
  result = qword_100084F98;
  if (!qword_100084F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084F98);
  }

  return result;
}

uint64_t sub_10000DA64@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084460 != -1)
  {
    swift_once();
  }

  v2 = sub_100063404();
  v3 = sub_1000049B4(v2, qword_1000902B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000DB10(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000DFA8();
  v7 = sub_10000DFFC();
  v8 = sub_10000E050();
  *v5 = v2;
  v5[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000DBDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DC50();
  *a1 = result;
  return result;
}

uint64_t sub_10000DC04(uint64_t a1)
{
  v2 = sub_10000D86C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000DC50()
{
  v21 = sub_1000631F4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100063404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000021D4(&qword_100084FA0, &unk_100065EF0);
  sub_1000633E4();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 9;
  v18 = sub_100062E34();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000DF54();
  return sub_100062EA4();
}

unint64_t sub_10000DF54()
{
  result = qword_100084FA8;
  if (!qword_100084FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FA8);
  }

  return result;
}

unint64_t sub_10000DFA8()
{
  result = qword_100084FB0;
  if (!qword_100084FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FB0);
  }

  return result;
}

unint64_t sub_10000DFFC()
{
  result = qword_100084FB8;
  if (!qword_100084FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FB8);
  }

  return result;
}

unint64_t sub_10000E050()
{
  result = qword_100084FC0;
  if (!qword_100084FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084FC0);
  }

  return result;
}

uint64_t sub_10000E0A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  sub_100009E20();
  v6 = sub_100064394();
  v7 = sub_1000642A4();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    sub_1000643B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_10000494C(v16, &qword_100085060, &unk_100065F20);
    v9 = sub_100063574();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
LABEL_8:
    sub_10000494C(v5, &qword_100084E50, &qword_100065B70);
    sub_100063574();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  v9 = sub_100063574();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  v12 = *(v11 + 56);
  v12(v5, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_8;
  }

  (*(v11 + 32))(a1, v5, v9);
  return (v12)(a1, 0, 1, v9);
}

unint64_t sub_10000E380()
{
  result = qword_100085078;
  if (!qword_100085078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085078);
  }

  return result;
}

uint64_t sub_10000E418()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000633F4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100064294();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100063244();
  sub_100009DBC(v15, qword_1000902C8);
  sub_1000049B4(v15, qword_1000902C8);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100063414();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100063234();
}

uint64_t sub_10000E708@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v41 = v34 - v3;
  v4 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v40 = v34 - v6;
  v7 = sub_1000633F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000635E4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100064294();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v36 = sub_100063404();
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v36);
  v38 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v37 = v34 - v20;
  sub_100064284();
  sub_1000635D4();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v8 + 104);
  v34[0] = v7;
  v22(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  v34[1] = "Always Use Moment Date";
  v35 = v22;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v22(v11, v21, v7);
  v23 = v40;
  sub_100063414();
  v24 = *(v16 + 56);
  v16 += 56;
  v24(v23, 0, 1, v36);
  v25 = v41;
  sub_100063104();
  v26 = sub_100063114();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = *(v16 + 16);
  v28 = (*(v16 + 24) + 32) & ~*(v16 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100065BA0;
  sub_100064284();
  sub_1000635D4();
  v29 = v21;
  v30 = v21;
  v31 = v34[0];
  v32 = v35;
  v35(v11, v30, v34[0]);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v29, v31);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v29, v31);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10000ECF4()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_1000902E0);
  sub_1000049B4(v0, qword_1000902E0);
  return sub_1000633E4();
}

uint64_t sub_10000ED58()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_1000902F8);
  v1 = sub_1000049B4(v0, qword_1000902F8);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000EE18()
{
  result = swift_getKeyPath();
  qword_100090310 = result;
  return result;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v7 = *(*(sub_1000021D4(&qword_100084DE0, &qword_1000659E0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = *(*(sub_1000021D4(&qword_100084DE8, &qword_1000659E8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(sub_1000021D4(&qword_1000851B0, &qword_100066840) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = sub_100062E34();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = sub_1000021D4(&qword_1000851B8, &qword_100066848);
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_100064334();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v5[20] = v16;
  v5[21] = v18;

  return _swift_task_switch(sub_10000F058, v16, v18);
}

uint64_t sub_10000F058()
{
  v1 = v0[8];
  sub_100062E84();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_1000103DC();
  *v3 = v0;
  v3[1] = sub_10000F128;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100012214, 0, &type metadata for AddCurrentLocationEntity, v4);
}

uint64_t sub_10000F128()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10000F248, v4, v3);
}

uint64_t sub_10000F248()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100062E84();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 184) = v3;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084480 != -1)
  {
    swift_once();
  }

  v4 = qword_100090310;
  *(v0 + 192) = qword_100090310;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = sub_100009F14(&qword_1000851A0, &qword_1000851A8, &qword_100066830);
  *v6 = v0;
  v6[1] = sub_10000F3A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000F3A8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100006034;
  }

  else
  {
    v8 = sub_10000F4FC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10000F4FC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_100062E84();
  v0[6] = v0[5];
  v8 = sub_100063224();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100063254();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000E380();
  sub_1000105F0();
  sub_100062E04();
  (*(v2 + 16))(v12, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000F768()
{
  v0 = sub_1000021D4(&qword_1000851C0, &qword_100066850);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100084480 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_1000105F0();
  sub_100009F14(&qword_1000851C8, &qword_1000851C0, &qword_100066850);
  sub_1000630D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10000F8DC(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_10000F950(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_10000F9C4()
{
  if (qword_100084480 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000FA24()
{
  result = qword_100085090;
  if (!qword_100085090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085090);
  }

  return result;
}

unint64_t sub_10000FA7C()
{
  result = qword_100085098;
  if (!qword_100085098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085098);
  }

  return result;
}

uint64_t sub_10000FB54@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084478 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_1000902F8);

  return sub_100009E78(v3, a1);
}

uint64_t sub_10000FBD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_10000FC00, 0, 0);
}

uint64_t sub_10000FC00()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10000EE40(v4, 0, 0, v2, v3);
}

uint64_t sub_10000FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000FCE8()
{
  result = qword_1000850A0;
  if (!qword_1000850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850A0);
  }

  return result;
}

unint64_t sub_10000FD40()
{
  result = qword_1000850A8;
  if (!qword_1000850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850A8);
  }

  return result;
}

uint64_t sub_10000FD94(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000FE54, 0, 0);
}

uint64_t sub_10000FE54()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.addCurrentLocation(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000FF78(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_100010040, 0, 0);
}

uint64_t sub_100010040()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_100009E20();
  v5 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v3 + 104))(v2, enum case for SettingsKey.addCurrentLocation(_:), v4);
  sub_100063674();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1000642A4();

  [v5 setValue:isa forKey:v7];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100010174(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_100011998(0);
}

unint64_t sub_100010224()
{
  result = qword_1000850B0;
  if (!qword_1000850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850B0);
  }

  return result;
}

uint64_t sub_100010278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001088C();
  *v5 = v2;
  v5[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10001032C()
{
  result = qword_1000850B8;
  if (!qword_1000850B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850B8);
  }

  return result;
}

unint64_t sub_100010384()
{
  result = qword_1000850C0;
  if (!qword_1000850C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850C0);
  }

  return result;
}

unint64_t sub_1000103DC()
{
  result = qword_1000850C8;
  if (!qword_1000850C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850C8);
  }

  return result;
}

uint64_t sub_100010430(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001088C();
  *v6 = v2;
  v6[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000104E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001088C();
  *v5 = v2;
  v5[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100010598()
{
  result = qword_1000850D0;
  if (!qword_1000850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850D0);
  }

  return result;
}

unint64_t sub_1000105F0()
{
  result = qword_1000850D8;
  if (!qword_1000850D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850D8);
  }

  return result;
}

unint64_t sub_100010648()
{
  result = qword_1000850E0;
  if (!qword_1000850E0)
  {
    sub_10000221C(&qword_1000850E8, qword_1000661D0);
    sub_1000105F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850E0);
  }

  return result;
}

uint64_t sub_1000106CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010224();
  *v6 = v2;
  v6[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100010784()
{
  result = qword_1000850F0;
  if (!qword_1000850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850F0);
  }

  return result;
}

unint64_t sub_1000107DC()
{
  result = qword_1000850F8;
  if (!qword_1000850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000850F8);
  }

  return result;
}

unint64_t sub_100010834()
{
  result = qword_100085100;
  if (!qword_100085100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085100);
  }

  return result;
}

unint64_t sub_10001088C()
{
  result = qword_100085108;
  if (!qword_100085108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085108);
  }

  return result;
}

unint64_t sub_1000108E4()
{
  result = qword_100085110;
  if (!qword_100085110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085110);
  }

  return result;
}

uint64_t sub_100010938(uint64_t a1)
{
  v2 = sub_1000103DC();

  return EntityURLRepresentation.init(_:)(0xD000000000000052, 0x800000010006C4D0, a1, v2);
}

unint64_t sub_1000109A0()
{
  result = qword_100085118;
  if (!qword_100085118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085118);
  }

  return result;
}

unint64_t sub_1000109F8()
{
  result = qword_100085120;
  if (!qword_100085120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085120);
  }

  return result;
}

unint64_t sub_100010A50()
{
  result = qword_100085128;
  if (!qword_100085128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085128);
  }

  return result;
}

uint64_t sub_100010AA4@<X0>(uint64_t *a1@<X8>)
{
  sub_10000FD40();
  result = sub_100062E64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100010AE4()
{
  sub_1000121B4();
  v1 = sub_100063194();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100010BCC(uint64_t a1)
{
  v2 = sub_1000103DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100010C1C()
{
  result = qword_100085140;
  if (!qword_100085140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085140);
  }

  return result;
}

uint64_t sub_100010C74(uint64_t a1)
{
  v2 = sub_100010A50();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100010CC4()
{
  result = qword_100085148;
  if (!qword_100085148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085148);
  }

  return result;
}

uint64_t sub_100010D18()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090318);
  sub_1000049B4(v0, qword_100090318);
  return sub_1000633E4();
}

uint64_t sub_100010D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000633F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000635E4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100064294();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100063404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100064284();
  sub_1000635D4();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100063414();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100063084();
  v18 = sub_100063074();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_100011078(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_1000110F0()
{
  result = qword_100085150;
  if (!qword_100085150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085150);
  }

  return result;
}

uint64_t sub_100011144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001210C();
  v5 = sub_1000121B4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000111AC()
{
  v0 = qword_100085068;

  return v0;
}

unint64_t sub_1000111E8()
{
  result = qword_100085158;
  if (!qword_100085158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085158);
  }

  return result;
}

unint64_t sub_100011240()
{
  result = qword_100085160;
  if (!qword_100085160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085160);
  }

  return result;
}

uint64_t sub_10001133C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001210C();
  v7 = sub_100012160();
  v8 = sub_1000121B4();
  *v5 = v2;
  v5[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100011408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011CB0();
  *a1 = result;
  return result;
}

uint64_t sub_100011430(uint64_t a1)
{
  v2 = sub_1000110F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011534()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000631F4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_100063404();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_1000021D4(&qword_100085180, &unk_100066808);
  sub_1000633E4();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_100062E34();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000103DC();
  v28 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100064314();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_100062EC4();
  return v28;
}

uint64_t sub_100011998(uint64_t a1)
{
  v3 = sub_1000633F4();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = *(*(sub_1000635E4() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = *(*(sub_100064294() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = *(*(sub_100063404() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(sub_100011B04, v9, v11);
}

uint64_t sub_100011B04()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000021D4(&qword_100085088, qword_100065F30);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  sub_100009F14(&qword_1000851A0, &qword_1000851A8, &qword_100066830);
  v7 = sub_100063284();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100011CB0()
{
  v0 = sub_1000631F4();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000633F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000635E4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100064294();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100063404();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_1000021D4(&qword_100085180, &unk_100066808);
  sub_100064284();
  sub_1000635D4();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100063414();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_100062E34();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000103DC();
  return sub_100062EB4();
}

unint64_t sub_10001210C()
{
  result = qword_100085188;
  if (!qword_100085188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085188);
  }

  return result;
}

unint64_t sub_100012160()
{
  result = qword_100085190;
  if (!qword_100085190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085190);
  }

  return result;
}

unint64_t sub_1000121B4()
{
  result = qword_100085198;
  if (!qword_100085198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085198);
  }

  return result;
}

uint64_t sub_100012248(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000021D4(&qword_1000851E0, &unk_1000668A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v17 = *(*(started - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, started);
}

uint64_t sub_100012408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_1000021D4(&qword_1000851E0, &unk_1000668A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  started = type metadata accessor for StartWritingWidgetTimelineEntry();
  v19 = *(*(started - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetSystemMediumView()
{
  result = qword_100085240;
  if (!qword_100085240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001260C()
{
  sub_100012714(319, &qword_100085250, &type metadata accessor for RedactionReasons);
  if (v0 <= 0x3F)
  {
    sub_100012714(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_100012714(319, &unk_100085260, &type metadata accessor for ContentSizeCategory);
      if (v2 <= 0x3F)
      {
        type metadata accessor for StartWritingWidgetTimelineEntry();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012714(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100012784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000021D4(&qword_1000852C8, &qword_100066978);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v52 = sub_1000021D4(&qword_1000852D0, &qword_100066980);
  v7 = *(*(v52 - 8) + 64);
  v8 = __chkstk_darwin(v52);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = sub_1000021D4(&qword_1000852D8, &qword_100066988);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = sub_1000021D4(&qword_1000852E0, &qword_100066990);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v54 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v51 - v26;
  sub_100012C70(&v51 - v26);
  v53 = v21;
  sub_100013960(v21);
  *v6 = sub_100063A24();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v28 = sub_1000021D4(&qword_1000852E8, &qword_100066998);
  sub_10001534C(a1, &v6[*(v28 + 44)]);
  sub_1000021D4(&qword_1000852F0, &qword_1000669A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065BA0;
  v30 = sub_100063CA4();
  *(inited + 32) = v30;
  v31 = sub_100063CD4();
  *(inited + 33) = v31;
  v32 = sub_100063CF4();
  sub_100063CF4();
  if (sub_100063CF4() != v30)
  {
    v32 = sub_100063CF4();
  }

  sub_100063CF4();
  if (sub_100063CF4() != v31)
  {
    v32 = sub_100063CF4();
  }

  sub_100063714();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100015F0C(v6, v12, &qword_1000852C8, &qword_100066978);
  v41 = &v12[*(v52 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_100015F0C(v12, v14, &qword_1000852D0, &qword_100066980);
  v42 = v27;
  v43 = v54;
  sub_100016718(v27, v54, &qword_1000852E0, &qword_100066990);
  v44 = v53;
  v45 = v19;
  sub_100016718(v53, v19, &qword_1000852D8, &qword_100066988);
  v46 = v51;
  sub_100016718(v14, v51, &qword_1000852D0, &qword_100066980);
  v47 = v55;
  sub_100016718(v43, v55, &qword_1000852E0, &qword_100066990);
  v48 = v47;
  v49 = sub_1000021D4(&qword_1000852F8, &unk_1000669A8);
  sub_100016718(v45, v48 + *(v49 + 48), &qword_1000852D8, &qword_100066988);
  sub_100016718(v46, v48 + *(v49 + 64), &qword_1000852D0, &qword_100066980);
  sub_10000494C(v14, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v44, &qword_1000852D8, &qword_100066988);
  sub_10000494C(v42, &qword_1000852E0, &qword_100066990);
  sub_10000494C(v46, &qword_1000852D0, &qword_100066980);
  sub_10000494C(v45, &qword_1000852D8, &qword_100066988);
  return sub_10000494C(v43, &qword_1000852E0, &qword_100066990);
}

uint64_t sub_100012C70@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v130 = sub_1000021D4(&qword_100085430, &qword_100066C20);
  v2 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v131 = (&v105 - v3);
  v4 = sub_1000634D4();
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = *(v127 + 64);
  __chkstk_darwin(v4);
  v126 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000634F4();
  v124 = *(v125 - 8);
  v7 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100063514();
  v121 = *(v122 - 8);
  v9 = *(v121 + 64);
  __chkstk_darwin(v122);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100063664();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v119 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100063644();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v117 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000635E4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v116 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100063434();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v113 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000021D4(&qword_100085438, &qword_100066C28);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v110 = &v105 - v25;
  v26 = sub_1000021D4(&qword_100085440, &unk_100066C30);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v107 = &v105 - v28;
  v118 = sub_100063534();
  v114 = *(v118 - 8);
  v29 = *(v114 + 64);
  v30 = __chkstk_darwin(v118);
  v108 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v109 = &v105 - v33;
  v34 = __chkstk_darwin(v32);
  v111 = &v105 - v35;
  __chkstk_darwin(v34);
  v115 = &v105 - v36;
  v106 = sub_100063574();
  v37 = *(v106 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v106);
  v112 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000021D4(&qword_100085448, &qword_10006A0D0);
  v40 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v42 = (&v105 - v41);
  v43 = sub_100063A64();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v105 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v50 = &v105 - v49;
  started = type metadata accessor for StartWritingWidgetSystemMediumView();
  v52 = v1;
  v53 = v1 + *(started + 24);
  sub_100030790(v50);
  (*(v44 + 104))(v48, enum case for ContentSizeCategory.accessibilityMedium(_:), v43);
  LOBYTE(v53) = sub_100015FC8(v50, v48);
  v54 = *(v44 + 8);
  v54(v48, v43);
  v54(v50, v43);
  if (v53)
  {
    sub_100064084();
    sub_1000637E4();
    v55 = v136;
    v56 = v137;
    v57 = v138;
    v58 = v139;
    v135 = 1;
    v134 = v137;
    v133 = v139;
    v59 = v131;
    *v131 = 0;
    *(v59 + 8) = 1;
    v59[2] = v55;
    *(v59 + 24) = v56;
    v59[4] = v57;
    *(v59 + 40) = v58;
    *(v59 + 3) = v140;
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_100016804(&qword_100085478, &qword_100085448, &qword_10006A0D0, sub_1000167D4);
    sub_10001698C();
    return sub_100063B44();
  }

  else
  {
    (*(v37 + 16))(v112, v52 + *(started + 28), v106);
    v61 = sub_100063484();
    (*(*(v61 - 8) + 56))(v107, 1, 1, v61);
    v62 = sub_100063474();
    (*(*(v62 - 8) + 56))(v110, 1, 1, v62);
    sub_100063424();
    sub_1000635C4();
    sub_100063604();
    sub_100063654();
    v63 = v108;
    sub_1000634A4();
    v64 = v120;
    sub_100063504();
    v65 = v109;
    sub_100063524();
    (*(v121 + 8))(v64, v122);
    v66 = *(v114 + 8);
    v67 = v118;
    v66(v63, v118);
    v68 = v123;
    sub_1000634E4();
    v69 = v111;
    sub_1000634B4();
    (*(v124 + 8))(v68, v125);
    v66(v65, v67);
    v70 = v126;
    sub_1000634C4();
    sub_100063494();
    (*(v127 + 8))(v70, v128);
    v66(v69, v67);
    sub_100016944(&qword_100085450, &type metadata accessor for Date.FormatStyle);
    sub_100016944(&qword_100085458, &type metadata accessor for Date);
    v71 = sub_100063DF4();
    v73 = v72;
    v75 = v74;
    v77 = v76 & 1;
    *v42 = swift_getKeyPath();
    sub_1000021D4(&qword_100084C00, &qword_100066BB0);
    swift_storeEnumTagMultiPayload();
    v78 = type metadata accessor for WidgetHeaderView();
    v79 = v78[5];
    *(v42 + v79) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    v80 = v78[6];
    *(v42 + v80) = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v81 = (v42 + v78[7]);
    *v81 = v71;
    v81[1] = v73;
    v81[2] = v77;
    v81[3] = v75;
    LOBYTE(v71) = sub_100063CE4();
    sub_100063714();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v42 + *(sub_1000021D4(&qword_100085460, &unk_100066C40) + 36);
    *v90 = v71;
    *(v90 + 1) = v83;
    *(v90 + 2) = v85;
    *(v90 + 3) = v87;
    *(v90 + 4) = v89;
    v90[40] = 0;
    LOBYTE(v71) = sub_100063CC4();
    sub_100063714();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v42 + *(sub_1000021D4(&qword_100085468, &unk_10006A2E0) + 36);
    *v99 = v71;
    *(v99 + 1) = v92;
    *(v99 + 2) = v94;
    *(v99 + 3) = v96;
    *(v99 + 4) = v98;
    v99[40] = 0;
    LOBYTE(v71) = sub_100063D04();
    sub_100063714();
    v100 = v42 + *(v129 + 36);
    *v100 = v71;
    *(v100 + 1) = v101;
    *(v100 + 2) = v102;
    *(v100 + 3) = v103;
    *(v100 + 4) = v104;
    v100[40] = 0;
    sub_100016718(v42, v131, &qword_100085448, &qword_10006A0D0);
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_100016804(&qword_100085478, &qword_100085448, &qword_10006A0D0, sub_1000167D4);
    sub_10001698C();
    sub_100063B44();
    return sub_10000494C(v42, &qword_100085448, &qword_10006A0D0);
  }
}

uint64_t sub_100013960@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = sub_100063A64();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v51);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v49 - v6;
  v50 = sub_1000021D4(&qword_100085338, &qword_100066A18);
  v8 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v10 = &v49 - v9;
  v11 = sub_100063864();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = v1;
  sub_1000307B8(&v49 - v17);
  sub_100063844();
  sub_100016944(&qword_100085340, &type metadata accessor for RedactionReasons);
  v20 = sub_1000643C4();
  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
  if (v20)
  {
    v22 = 0x800000010006C620;
    v23 = 0xD00000000000007CLL;
  }

  else
  {
    v24 = v19 + *(type metadata accessor for StartWritingWidgetSystemMediumView() + 28);
    v25 = v24 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
    v23 = *(v25 + 16);
    v22 = *(v25 + 24);
  }

  *v10 = sub_100063A14();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v26 = sub_1000021D4(&qword_100085348, &qword_100066A20);
  sub_100013E08(v19, v23, v22, &v10[*(v26 + 44)]);

  v27 = sub_100063CE4();
  sub_100063714();
  v28 = &v10[*(v50 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = sub_100063D04();
  v34 = v19 + *(type metadata accessor for StartWritingWidgetSystemMediumView() + 24);
  sub_100030790(v7);
  v35 = v49;
  v36 = v51;
  (*(v2 + 104))(v49, enum case for ContentSizeCategory.accessibilityMedium(_:), v51);
  sub_100015FC8(v7, v35);
  v37 = *(v2 + 8);
  v37(v35, v36);
  v37(v7, v36);
  sub_100063714();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v52;
  sub_100015F0C(v10, v52, &qword_100085338, &qword_100066A18);
  result = sub_1000021D4(&qword_1000852D8, &qword_100066988);
  v48 = v46 + *(result + 36);
  *v48 = v33;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_100013D84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849C0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_100090DA8;
  *(a1 + 8) = *(&xmmword_100090DA8 + 8);
  *(a1 + 24) = unk_100090DC0;
}

uint64_t sub_100013E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v92 = a1;
  v111 = a4;
  v108 = type metadata accessor for WidgetHeaderView();
  v110 = *(v108 - 8);
  v6 = *(v110 + 64);
  __chkstk_darwin(v108);
  v91 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100063A64();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  v10 = __chkstk_darwin(v8);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v91 - v12;
  v13 = sub_1000021D4(&qword_100085350, &qword_100066A28);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v109 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v91 - v17;
  v18 = sub_100063864();
  v19 = *(v18 - 8);
  v101 = v18;
  v102 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v100 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v91 - v23;
  v24 = sub_100063D94();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000021D4(&qword_100085358, &qword_100066A30);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v91 - v31);
  v94 = sub_1000021D4(&qword_100085360, &qword_100066A38);
  v33 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v35 = &v91 - v34;
  v36 = sub_1000021D4(&qword_100085368, &qword_100066A40);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v93 = &v91 - v39;
  v40 = sub_1000021D4(&qword_100085370, &qword_100066A48);
  v41 = *(v40 - 8);
  v97 = v40 - 8;
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40 - 8);
  v105 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v47 = &v91 - v46;
  __chkstk_darwin(v45);
  v95 = &v91 - v48;
  *v32 = sub_100064084();
  v32[1] = v49;
  v50 = sub_1000021D4(&qword_100085378, &qword_100066A50);
  sub_1000147BC(a1, v98, a3, v32 + *(v50 + 44));
  sub_100063D24();
  (*(v25 + 104))(v28, enum case for Font.Leading.tight(_:), v24);
  v51 = sub_100063DA4();

  (*(v25 + 8))(v28, v24);
  KeyPath = swift_getKeyPath();
  v53 = (v32 + *(v29 + 36));
  *v53 = KeyPath;
  v53[1] = v51;
  sub_100063D64();
  sub_1000163E8();
  v54 = v96;
  sub_100063E84();
  sub_10000494C(v32, &qword_100085358, &qword_100066A30);
  v55 = swift_getKeyPath();
  v56 = &v35[*(sub_1000021D4(&qword_1000853A8, &qword_100066AC8) + 36)];
  *v56 = v55;
  v56[1] = 0x3FB999999999999ALL;
  v57 = swift_getKeyPath();
  v58 = &v35[*(v94 + 36)];
  *v58 = v57;
  v58[8] = 0;
  sub_1000164DC();
  v59 = v93;
  sub_100063EF4();
  sub_10000494C(v35, &qword_100085360, &qword_100066A38);
  v60 = (v59 + *(v37 + 44));
  v61 = v60 + *(sub_1000021D4(&qword_1000853E0, &qword_100066B10) + 28);
  sub_1000638A4();
  *v60 = swift_getKeyPath();
  v62 = v99;
  v63 = v92;
  sub_1000307B8(v99);
  v64 = v100;
  sub_100063844();
  sub_100016944(&qword_100085340, &type metadata accessor for RedactionReasons);
  v65 = v101;
  v66 = sub_1000643C4();
  v67 = *(v102 + 8);
  v67(v64, v65);
  v67(v62, v65);
  if (v66)
  {
    v68 = 2;
  }

  else
  {
    v68 = 0;
  }

  v69 = swift_getKeyPath();
  sub_100015F0C(v59, v47, &qword_100085368, &qword_100066A40);
  v70 = &v47[*(v97 + 44)];
  *v70 = v69;
  *(v70 + 1) = v68;
  v71 = 1;
  v70[16] = (v66 & 1) == 0;
  v72 = v47;
  v73 = v95;
  sub_100015F0C(v72, v95, &qword_100085370, &qword_100066A48);
  v74 = v63 + *(type metadata accessor for StartWritingWidgetSystemMediumView() + 24);
  v75 = v103;
  sub_100030790(v103);
  v77 = v106;
  v76 = v107;
  v78 = v104;
  (*(v106 + 104))(v104, enum case for ContentSizeCategory.accessibilityMedium(_:), v107);
  LOBYTE(v74) = sub_100015FC8(v75, v78);
  v79 = *(v77 + 8);
  v79(v78, v76);
  v79(v75, v76);
  v80 = v108;
  if (v74)
  {
    v81 = swift_getKeyPath();
    v82 = v91;
    *v91 = v81;
    sub_1000021D4(&qword_100084C00, &qword_100066BB0);
    swift_storeEnumTagMultiPayload();
    v83 = v80[5];
    *(v82 + v83) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    v84 = v80[6];
    *(v82 + v84) = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v85 = (v82 + v80[7]);
    *v85 = 0u;
    v85[1] = 0u;
    sub_1000166A4(v82, v54);
    v71 = 0;
  }

  (*(v110 + 56))(v54, v71, 1, v80);
  v86 = v105;
  sub_100016718(v73, v105, &qword_100085370, &qword_100066A48);
  v87 = v109;
  sub_100016718(v54, v109, &qword_100085350, &qword_100066A28);
  v88 = v111;
  sub_100016718(v86, v111, &qword_100085370, &qword_100066A48);
  v89 = sub_1000021D4(&qword_1000853E8, &qword_100066B78);
  sub_100016718(v87, v88 + *(v89 + 48), &qword_100085350, &qword_100066A28);
  sub_10000494C(v54, &qword_100085350, &qword_100066A28);
  sub_10000494C(v73, &qword_100085370, &qword_100066A48);
  sub_10000494C(v87, &qword_100085350, &qword_100066A28);
  return sub_10000494C(v86, &qword_100085370, &qword_100066A48);
}

uint64_t sub_1000147BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a4;
  v134 = a1;
  v7 = sub_100064134();
  v128 = *(v7 - 8);
  v129 = v7;
  v8 = *(v128 + 64);
  v9 = __chkstk_darwin(v7);
  v127 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v126 = &v112 - v11;
  v12 = sub_1000021D4(&qword_1000853F8, &unk_100066BF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v132 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v140 = &v112 - v16;
  v137 = sub_100063A64();
  v143 = *(v137 - 8);
  v17 = *(v143 + 64);
  v18 = __chkstk_darwin(v137);
  v136 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v135 = &v112 - v20;
  v139 = sub_1000021D4(&qword_100085400, &qword_10006A260);
  v141 = *(v139 - 8);
  v21 = *(v141 + 64);
  v22 = __chkstk_darwin(v139);
  v121 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v122 = &v112 - v24;
  v25 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v112 - v27);
  v138 = sub_1000021D4(&qword_100085410, &qword_100066C08);
  v130 = *(v138 - 8);
  v29 = *(v130 + 64);
  v30 = __chkstk_darwin(v138);
  v131 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v120 = &v112 - v33;
  v34 = __chkstk_darwin(v32);
  v119 = &v112 - v35;
  v36 = __chkstk_darwin(v34);
  v124 = &v112 - v37;
  __chkstk_darwin(v36);
  v142 = &v112 - v38;
  started = type metadata accessor for StartWritingWidgetSystemMediumView();
  v40 = a1 + *(started + 28);
  v41 = type metadata accessor for StartWritingWidgetTimelineEntry();
  sub_100048A64(*(v40 + *(v41 + 20) + 11), v28);
  *&v118 = a2;
  *&v156 = a2;
  *(&v156 + 1) = a3;
  v42 = sub_100002264();
  *(&v118 + 1) = a3;

  v117 = v42;
  v43 = sub_100063E14();
  v45 = v44;
  v47 = v46;
  sub_100009F14(&qword_100085418, &qword_100085408, &qword_100066C00);
  v125 = v28;
  v48 = sub_100063DD4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v47 & 1;
  v56 = v122;
  sub_100016708(v43, v45, v55);

  *&v156 = v48;
  *(&v156 + 1) = v50;
  LOBYTE(v157) = v52 & 1;
  *(&v157 + 1) = v54;
  sub_100063E24();
  v57 = v134;
  sub_100016708(v48, v50, v52 & 1);

  sub_100063A84();
  v123 = started;
  v115 = *(started + 24);
  v58 = v135;
  sub_100030790(v135);
  v59 = v143;
  v60 = *(v143 + 104);
  v62 = v136;
  v61 = v137;
  v113 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v114 = v143 + 104;
  v112 = v60;
  v60(v136);
  v63 = v58;
  v64 = sub_100015FC8(v58, v62);
  v65 = *(v59 + 8);
  v65(v62, v61);
  v143 = v59 + 8;
  v116 = v65;
  v65(v63, v61);
  if (v64)
  {
    sub_100063A24();
  }

  else
  {
    sub_100063A14();
  }

  v66 = 1;
  sub_100063874();
  sub_10000494C(v125, &qword_100085408, &qword_100066C00);
  v67 = v141 + 32;
  v68 = v124;
  v125 = *(v141 + 32);
  v125(v124, v56, v139);
  v69 = v138;
  v70 = (v68 + *(v138 + 36));
  v71 = v152;
  v70[4] = v151;
  v70[5] = v71;
  v70[6] = v153;
  v72 = v148;
  *v70 = v147;
  v70[1] = v72;
  v73 = v150;
  v70[2] = v149;
  v70[3] = v73;
  sub_100015F0C(v68, v142, &qword_100085410, &qword_100066C08);
  v74 = v57 + *(v123 + 20);
  v75 = v126;
  sub_1000309E0(v126);
  v76 = v127;
  sub_100064124();
  LOBYTE(v74) = sub_100064104();
  v77 = *(v128 + 8);
  v78 = v76;
  v79 = v129;
  v77(v78, v129);
  v77(v75, v79);
  if (v74)
  {
    v141 = v67;
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_100065BA0;
    *(v80 + 32) = sub_100063F74();
    sub_100063F74();
    v81 = sub_100063F84();

    *(v80 + 40) = v81;
    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();
    v144 = v154[0];
    v145 = v154[1];
    v146 = v155;
    v156 = v118;

    v82 = sub_100063E14();
    v84 = v83;
    LOBYTE(v81) = v85;
    v86 = sub_100063DD4();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    sub_100016780(v154);
    sub_100016708(v82, v84, v81 & 1);

    *&v156 = v86;
    *(&v156 + 1) = v88;
    LOBYTE(v157) = v90 & 1;
    *(&v157 + 1) = v92;
    v93 = v121;
    sub_100063E24();
    sub_100016708(v86, v88, v90 & 1);

    sub_100063A84();
    v94 = v135;
    sub_100030790(v135);
    v96 = v136;
    v95 = v137;
    v112(v136, v113, v137);
    LOBYTE(v82) = sub_100015FC8(v94, v96);
    v97 = v116;
    v116(v96, v95);
    v97(v94, v95);
    if (v82)
    {
      sub_100063A24();
    }

    else
    {
      sub_100063A14();
    }

    v69 = v138;
    sub_100063874();
    v98 = v120;
    v125(v120, v93, v139);
    v99 = &v98[*(v69 + 36)];
    v100 = v161;
    *(v99 + 4) = v160;
    *(v99 + 5) = v100;
    *(v99 + 6) = v162;
    v101 = v157;
    *v99 = v156;
    *(v99 + 1) = v101;
    v102 = v159;
    *(v99 + 2) = v158;
    *(v99 + 3) = v102;
    v103 = v98;
    v104 = v119;
    sub_100015F0C(v103, v119, &qword_100085410, &qword_100066C08);
    sub_100015F0C(v104, v140, &qword_100085410, &qword_100066C08);
    v66 = 0;
  }

  v105 = v140;
  (*(v130 + 56))(v140, v66, 1, v69);
  v106 = v142;
  v107 = v131;
  sub_100016718(v142, v131, &qword_100085410, &qword_100066C08);
  v108 = v132;
  sub_100016718(v105, v132, &qword_1000853F8, &unk_100066BF0);
  v109 = v133;
  sub_100016718(v107, v133, &qword_100085410, &qword_100066C08);
  v110 = sub_1000021D4(&qword_100085420, &unk_100066C10);
  sub_100016718(v108, v109 + *(v110 + 48), &qword_1000853F8, &unk_100066BF0);
  sub_10000494C(v105, &qword_1000853F8, &unk_100066BF0);
  sub_10000494C(v106, &qword_100085410, &qword_100066C08);
  sub_10000494C(v108, &qword_1000853F8, &unk_100066BF0);
  return sub_10000494C(v107, &qword_100085410, &qword_100066C08);
}

uint64_t sub_10001534C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_100063454();
  v73 = *(v3 - 8);
  *&v74 = v3;
  v4 = *(v73 + 64);
  __chkstk_darwin(v3);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v65 - v10;
  v70 = type metadata accessor for AppLaunchAction();
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_1000021D4(&qword_100085300, &qword_1000669B8);
  v14 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v16 = &v65 - v15;
  v17 = sub_1000021D4(&qword_100085308, &qword_1000669C0);
  v18 = *(*(v17 - 1) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v65 - v22);
  v24 = sub_1000021D4(&qword_100085310, &qword_1000669C8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v79 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v78 = &v65 - v29;
  v30 = __chkstk_darwin(v28);
  v77 = &v65 - v31;
  __chkstk_darwin(v30);
  v76 = &v65 - v32;
  v69 = sub_100063FA4();
  v33 = a1 + *(type metadata accessor for StartWritingWidgetSystemMediumView() + 28);
  v34 = v33 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
  LODWORD(v75) = *(v34 + 11);
  sub_10004905C(v75, &v82);
  v66 = v82;
  v67 = v84;
  v68 = v83;
  v35 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 64);
  v38 = *(v34 + 24);
  *v13 = *(v34 + 16);
  v13[1] = v38;
  *(v13 + v36) = 1;
  v39 = type metadata accessor for CanvasContentInputType();
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v13 + v36, 0, 1, v39);
  v40 = enum case for WidgetFamily.systemMedium(_:);
  v41 = sub_100064154();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v13 + v37, v40, v41);
  v43 = v41;
  v44 = v71;
  (*(v42 + 56))(v13 + v37, 0, 1, v43);
  v45 = v73;
  swift_storeEnumTagMultiPayload();

  v46 = v72;
  sub_1000197E8(v72);
  v47 = v13;
  v48 = v74;
  sub_1000028E4(v47);
  sub_100015F0C(v46, v44, &qword_100084BC0, qword_100064C60);
  if ((*(v45 + 48))(v44, 1, v48) == 1)
  {
    sub_10000494C(v44, &qword_100084BC0, qword_100064C60);
    *v16 = nullsub_1;
    *(v16 + 1) = 0;
  }

  else
  {
    v49 = *(v45 + 32);
    v50 = v65;
    v49(v65, v44, v48);
    v49(v16, v50, v48);
  }

  swift_storeEnumTagMultiPayload();
  v51 = v23 + v17[10];
  *v51 = v66;
  *(v51 + 24) = v67;
  *(v51 + 8) = v68;
  *v23 = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  *(v23 + v17[9]) = v69;
  sub_100015F0C(v16, v23 + v17[11], &qword_100085300, &qword_1000669B8);
  if (qword_1000844A8 != -1)
  {
    swift_once();
  }

  v82 = qword_100090360;
  *&v83 = *algn_100090368;
  sub_100009F14(&qword_100085320, &qword_100085308, &qword_1000669C0);
  sub_100002264();
  v52 = v76;
  sub_100063F04();
  sub_10000494C(v23, &qword_100085308, &qword_1000669C0);
  v53 = sub_100063FA4();
  sub_1000494A0(v75, &v82);
  v54 = v82;
  v55 = v21 + v17[11];
  *(v55 + 3) = &type metadata for StartWritingWidgetUtil.RefreshIntent;
  *(v55 + 4) = sub_100015F74();
  v74 = v84;
  v75 = v83;
  swift_storeEnumTagMultiPayload();
  v56 = v21 + v17[10];
  *v56 = v54;
  v57 = v75;
  *(v56 + 24) = v74;
  *(v56 + 8) = v57;
  *v21 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v21 + v17[9]) = v53;
  if (qword_1000844B0 != -1)
  {
    swift_once();
  }

  v82 = qword_100090370;
  *&v83 = *algn_100090378;
  v58 = v77;
  sub_100063F04();
  sub_10000494C(v21, &qword_100085308, &qword_1000669C0);
  v59 = v78;
  sub_100016718(v52, v78, &qword_100085310, &qword_1000669C8);
  v60 = v79;
  sub_100016718(v58, v79, &qword_100085310, &qword_1000669C8);
  v61 = v80;
  sub_100016718(v59, v80, &qword_100085310, &qword_1000669C8);
  v62 = sub_1000021D4(&qword_100085330, &qword_100066A10);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_100016718(v60, v61 + *(v62 + 64), &qword_100085310, &qword_1000669C8);
  sub_10000494C(v58, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v52, &qword_100085310, &qword_1000669C8);
  sub_10000494C(v60, &qword_100085310, &qword_1000669C8);
  return sub_10000494C(v59, &qword_100085310, &qword_1000669C8);
}

uint64_t sub_100015C14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100063C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021D4(&qword_100085298, &qword_100066928);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  *v12 = sub_100063A74();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v13 = sub_1000021D4(&qword_1000852A0, &qword_100066930);
  sub_100012784(v2, &v12[*(v13 + 44)]);
  sub_100063C24();
  sub_100064084();
  sub_100009F14(&qword_1000852A8, &qword_100085298, &qword_100066928);
  sub_100015EA8();
  sub_100063F14();
  (*(v5 + 8))(v8, v4);
  sub_10000494C(v12, &qword_100085298, &qword_100066928);
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(sub_1000021D4(&qword_1000852B8, &qword_100066968) + 36));
  v16 = *(sub_1000021D4(&qword_1000852C0, &qword_100066970) + 28);
  v17 = enum case for ColorScheme.dark(_:);
  v18 = sub_100063774();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

unint64_t sub_100015EA8()
{
  result = qword_1000852B0;
  if (!qword_1000852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000852B0);
  }

  return result;
}

uint64_t sub_100015F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100015F74()
{
  result = qword_100085328;
  if (!qword_100085328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085328);
  }

  return result;
}

BOOL sub_100015FC8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_100063A64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

unint64_t sub_1000163E8()
{
  result = qword_100085380;
  if (!qword_100085380)
  {
    sub_10000221C(&qword_100085358, &qword_100066A30);
    sub_100009F14(&qword_100085388, &qword_100085390, &qword_100066A88);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085380);
  }

  return result;
}

unint64_t sub_1000164DC()
{
  result = qword_1000853B0;
  if (!qword_1000853B0)
  {
    sub_10000221C(&qword_100085360, &qword_100066A38);
    sub_100016594();
    sub_100009F14(&qword_1000853D0, &qword_1000853D8, &qword_100066B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000853B0);
  }

  return result;
}

unint64_t sub_100016594()
{
  result = qword_1000853B8;
  if (!qword_1000853B8)
  {
    sub_10000221C(&qword_1000853A8, &qword_100066AC8);
    sub_10000221C(&qword_100085358, &qword_100066A30);
    sub_1000163E8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000853B8);
  }

  return result;
}

uint64_t sub_1000166A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016708(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100016718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100016804(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016888()
{
  result = qword_100085488;
  if (!qword_100085488)
  {
    sub_10000221C(&qword_100085460, &unk_100066C40);
    sub_100016944(&qword_100085490, type metadata accessor for WidgetHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085488);
  }

  return result;
}

uint64_t sub_100016944(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001698C()
{
  result = qword_100085498;
  if (!qword_100085498)
  {
    sub_10000221C(&qword_100085470, &unk_100066C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085498);
  }

  return result;
}

unint64_t sub_100016A14()
{
  result = qword_1000854A0;
  if (!qword_1000854A0)
  {
    sub_10000221C(&qword_1000852B8, &qword_100066968);
    sub_10000221C(&qword_100085298, &qword_100066928);
    sub_100009F14(&qword_1000852A8, &qword_100085298, &qword_100066928);
    sub_100015EA8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000854A8, &qword_1000852C0, &qword_100066970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854A0);
  }

  return result;
}

uint64_t sub_100016B50(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100085548, &qword_100066E48);
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_1000021D4(&qword_100085550, &qword_100066E50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  sub_100019368();
  sub_100062FF4();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100062FE4(v27);
  swift_getKeyPath();
  v24 = sub_1000194D8();
  v19 = a1;
  sub_100062F14();

  sub_100062FD4();

  v28._countAndFlagsBits = 0xD000000000000024;
  v28._object = 0x800000010006CAB0;
  sub_100062FE4(v28);
  sub_100063004();
  v9 = sub_100062F44();
  v10 = v25;
  v11 = *(v26 + 8);
  v22 = v9;
  v23 = v11;
  v26 += 8;
  v11(v6, v25);
  sub_100062FF4();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100062FE4(v29);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v30._countAndFlagsBits = 0x756F4A20726F6620;
  v30._object = 0xED00002E6C616E72;
  sub_100062FE4(v30);
  sub_100063004();
  v21 = sub_100062F44();
  v12 = v23;
  v23(v6, v10);
  sub_100062FF4();
  v31._countAndFlagsBits = 0x656B696C20642749;
  v31._object = 0xEC000000206F7420;
  sub_100062FE4(v31);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v32._object = 0x800000010006CAE0;
  v32._countAndFlagsBits = 0xD000000000000018;
  sub_100062FE4(v32);
  sub_100063004();
  v20 = sub_100062F44();
  v13 = v25;
  v12(v6, v25);
  sub_100062FF4();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100062FE4(v33);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v34._countAndFlagsBits = 0xD000000000000027;
  v34._object = 0x800000010006CB00;
  sub_100062FE4(v34);
  sub_100063004();
  v14 = sub_100062F44();
  v23(v6, v13);
  sub_1000021D4(&qword_100085558, &qword_100066E58);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100066C60;
  v16 = v21;
  *(v15 + 32) = v22;
  *(v15 + 40) = v16;
  *(v15 + 48) = v20;
  *(v15 + 56) = v14;
  v17 = sub_100062F34();

  return v17;
}

uint64_t sub_100017094()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  v7 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C70;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = sub_100062F54();

  return v9;
}

uint64_t sub_100017200()
{
  v0 = sub_1000021D4(&qword_100085530, &qword_100066E08);
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  v5 = sub_1000021D4(&qword_100085538, &qword_100066E10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000E380();
  sub_100062FF4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v21._object = 0x800000010006CA20;
  v21._countAndFlagsBits = 0xD000000000000016;
  sub_100062FE4(v21);
  sub_100063004();
  v17 = sub_100062F44();
  v7 = v18;
  v15 = *(v19 + 8);
  v19 += 8;
  v15(v4, v18);
  sub_100062FF4();
  v22._countAndFlagsBits = 0x6974616D6F747541;
  v22._object = 0xEE0020796C6C6163;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._countAndFlagsBits = 0xD000000000000030;
  v23._object = 0x800000010006CA40;
  sub_100062FE4(v23);
  sub_100063004();
  v16 = sub_100062F44();
  v8 = v15;
  v15(v4, v7);
  sub_100062FF4();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_100062FE4(v24);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x800000010006CA80;
  sub_100062FE4(v25);
  sub_100063004();
  v9 = sub_100062F44();
  v8(v4, v18);
  sub_1000021D4(&qword_100085540, &qword_100066E18);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100066C80;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v9;
  v12 = sub_100062F34();

  return v12;
}

uint64_t sub_100017664()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  v7 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100066C70;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = sub_100062F54();

  return v9;
}

uint64_t sub_1000177C4()
{
  v0 = sub_1000021D4(&qword_100085518, &qword_100066DC8);
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  v5 = sub_1000021D4(&qword_100085520, &qword_100066DD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100004CA4();
  sub_100062FF4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v21._object = 0x800000010006C9E0;
  v21._countAndFlagsBits = 0xD000000000000018;
  sub_100062FE4(v21);
  sub_100063004();
  v17 = sub_100062F44();
  v7 = v18;
  v15 = *(v19 + 8);
  v19 += 8;
  v15(v4, v18);
  sub_100062FF4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._countAndFlagsBits = 0x756F4A20726F6620;
  v23._object = 0xED00002E6C616E72;
  sub_100062FE4(v23);
  sub_100063004();
  v16 = sub_100062F44();
  v8 = v15;
  v15(v4, v7);
  sub_100062FF4();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_100062FE4(v24);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v25._countAndFlagsBits = 0xD00000000000001CLL;
  v25._object = 0x800000010006CA00;
  sub_100062FE4(v25);
  sub_100063004();
  v9 = sub_100062F44();
  v8(v4, v18);
  sub_1000021D4(&qword_100085528, &qword_100066DD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100066C80;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v9;
  v12 = sub_100062F34();

  return v12;
}

uint64_t sub_100017C14()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  v6 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100066C90;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_100062F54();

  return v8;
}

uint64_t sub_100017D6C()
{
  v0 = sub_1000021D4(&qword_100085500, &qword_100066D88);
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  v5 = sub_1000021D4(&qword_100085508, &qword_100066D90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000193BC();
  sub_100062FF4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100062FE4(v20);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  sub_100062FD4();

  v21._countAndFlagsBits = 0x6F74206576615320;
  v21._object = 0xEF736F746F685020;
  sub_100062FE4(v21);
  sub_100063004();
  v17 = sub_100062F44();
  v7 = v18;
  v15 = *(v19 + 8);
  v19 += 8;
  v15(v4, v18);
  sub_100062FF4();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_100062FE4(v22);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v23._countAndFlagsBits = 0xD000000000000023;
  v23._object = 0x800000010006C990;
  sub_100062FE4(v23);
  sub_100063004();
  v16 = sub_100062F44();
  v8 = v15;
  v15(v4, v7);
  sub_100062FF4();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_100062FE4(v24);
  swift_getKeyPath();
  sub_100062F14();

  sub_100062FD4();

  v25._object = 0x800000010006C9C0;
  v25._countAndFlagsBits = 0xD000000000000019;
  sub_100062FE4(v25);
  sub_100063004();
  v9 = sub_100062F44();
  v8(v4, v18);
  sub_1000021D4(&qword_100085510, &qword_100066D98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100066C80;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v9;
  v12 = sub_100062F34();

  return v12;
}

uint64_t sub_1000181BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100062FA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000194D8();
  sub_100062F14();

  a3(v9);
  sub_100062F94();
  v10 = sub_100062F84();
  (*(v5 + 8))(v8, v4);
  sub_1000021D4(&qword_1000854E0, &qword_100066D48);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100064BC0;
  *(v11 + 32) = v10;
  v12 = sub_100062F74();

  return v12;
}

uint64_t sub_100018334()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  v2 = sub_100062F64();
  v3 = sub_100062F64();
  v4 = sub_100062F64();
  v5 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100065AC0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_100062F54();

  return v7;
}

uint64_t sub_100018454()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_10000D86C();
  sub_100062FC4();
  v15 = sub_100062F44();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100062FC4();
  v14 = sub_100062F44();
  v5(v4, v0);
  sub_100062FC4();
  v6 = sub_100062F44();
  v5(v4, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v5(v4, v0);
  sub_100062FC4();
  v8 = sub_100062F44();
  v5(v4, v0);
  sub_100062FC4();
  v9 = sub_100062F44();
  v5(v4, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100065AC0;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_100062F34();

  return v12;
}

uint64_t sub_100018768()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_10000D86C();
  sub_100062FC4();
  v5 = sub_100062F44();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v6(v4, v0);
  sub_100062FC4();
  v8 = sub_100062F44();
  v6(v4, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100066C80;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_100062F34();

  return v10;
}

uint64_t sub_100018988()
{
  v0 = sub_1000021D4(&qword_1000854E8, &qword_100066D50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_10000D86C();
  sub_100062FC4();
  v5 = sub_100062F44();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100062FC4();
  v7 = sub_100062F44();
  v6(v4, v0);
  sub_100062FC4();
  v8 = sub_100062F44();
  v6(v4, v0);
  sub_1000021D4(&qword_1000854F0, &qword_100066D58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100066C80;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_100062F34();

  return v10;
}

uint64_t sub_100018BAC(uint64_t a1, char a2)
{
  v3 = sub_100062FA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12[15] = a2;
  swift_getKeyPath();
  sub_100019484();
  sub_100062F24();

  sub_10000D86C();
  sub_10000DF54();
  sub_100062FB4();
  v8 = sub_100062F84();
  (*(v4 + 8))(v7, v3);
  sub_1000021D4(&qword_1000854E0, &qword_100066D48);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100064BC0;
  *(v9 + 32) = v8;
  v10 = sub_100062F74();

  return v10;
}

uint64_t sub_100018D24()
{
  v0 = sub_100062F64();
  v1 = sub_100062F64();
  sub_1000021D4(&qword_1000854B8, &qword_100066D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100065BA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100062F54();

  return v3;
}

uint64_t sub_100018DDC()
{
  v0 = sub_100062F04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D86C();
  sub_100062EF4();
  v5 = sub_100062EE4();
  (*(v1 + 8))(v4, v0);
  sub_1000021D4(&qword_1000854B0, &qword_100066D08);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100064BC0;
  *(v6 + 32) = v5;
  v7 = sub_100062ED4();

  return v7;
}

uint64_t sub_100018F2C()
{
  v0 = sub_100063034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003AF6C();
  v22 = v5;
  sub_100019368();
  sub_100063044();
  v20 = sub_100063024();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v21 = sub_100011534();
  v22 = v7;
  sub_10000E380();
  sub_100063044();
  v19 = sub_100063024();
  v6(v4, v0);
  v21 = sub_1000090D8();
  v22 = v8;
  sub_100004CA4();
  sub_100063044();
  v9 = sub_100063024();
  v6(v4, v0);
  v21 = sub_10002DF20();
  v22 = v10;
  sub_1000193BC();
  sub_100063044();
  v11 = sub_100063024();
  v6(v4, v0);
  v21 = sub_10000DC50();
  sub_10000D86C();
  sub_100063054();
  v12 = sub_100063024();
  v6(v4, v0);
  v21 = sub_10000DC50();
  sub_100063054();
  v13 = sub_100063024();
  v6(v4, v0);
  v21 = sub_10000DC50();
  sub_100063054();
  v14 = sub_100063024();
  v6(v4, v0);
  sub_1000021D4(&qword_1000854D0, &qword_100066D18);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100066C90;
  v16 = v19;
  *(v15 + 32) = v20;
  *(v15 + 40) = v16;
  *(v15 + 48) = v9;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  *(v15 + 72) = v13;
  *(v15 + 80) = v14;
  v17 = sub_100063014();

  return v17;
}

unint64_t sub_100019368()
{
  result = qword_1000854C0;
  if (!qword_1000854C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854C0);
  }

  return result;
}

unint64_t sub_1000193BC()
{
  result = qword_1000854C8;
  if (!qword_1000854C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854C8);
  }

  return result;
}

uint64_t sub_100019410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100062E84();
  *a2 = v5;
  return result;
}

uint64_t sub_10001944C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100062E94();
}

unint64_t sub_100019484()
{
  result = qword_1000854D8;
  if (!qword_1000854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854D8);
  }

  return result;
}

unint64_t sub_1000194D8()
{
  result = qword_1000854F8;
  if (!qword_1000854F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000854F8);
  }

  return result;
}

uint64_t sub_100019534@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100062E84();
  *a2 = v5;
  return result;
}

uint64_t sub_100019570(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_100062E94();
}

uint64_t sub_1000195C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100063574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100019640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063574();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000196C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063574();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PickerWidgetTimelineEntry()
{
  result = qword_1000855B8;
  if (!qword_1000855B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001977C()
{
  result = sub_100063574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000197E8@<X0>(uint64_t a1@<X8>)
{
  v202 = a1;
  v199 = sub_100064154();
  v188 = *(v199 - 8);
  v1 = *(v188 + 64);
  (__chkstk_darwin)();
  v182 = &v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CanvasContentInputType();
  v184 = *(v186 - 8);
  v3 = *(v184 + 64);
  (__chkstk_darwin)();
  v179 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_1000021D4(&qword_1000855F0, &qword_100066EB0) - 8) + 64);
  v6 = (__chkstk_darwin)();
  v187 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v193 = &v174 - v8;
  v9 = sub_1000021D4(&qword_1000855F8, &qword_100066EB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v183 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v194 = &v174 - v13;
  v192 = sub_1000635A4();
  v195 = *(v192 - 8);
  v14 = *(v195 + 64);
  v15 = __chkstk_darwin(v192);
  v185 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v181 = &v174 - v17;
  v18 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v198 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v189 = &v174 - v22;
  v23 = sub_1000632D4();
  v196 = *(v23 - 8);
  v197 = v23;
  v24 = *(v196 + 64);
  v25 = __chkstk_darwin(v23);
  v175 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v177 = &v174 - v28;
  v29 = __chkstk_darwin(v27);
  v176 = &v174 - v30;
  v31 = __chkstk_darwin(v29);
  v178 = &v174 - v32;
  v33 = __chkstk_darwin(v31);
  v174 = &v174 - v34;
  v35 = __chkstk_darwin(v33);
  v180 = &v174 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v174 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v174 - v41;
  __chkstk_darwin(v40);
  v44 = &v174 - v43;
  v45 = sub_100063454();
  v190 = *(v45 - 8);
  v191 = v45;
  v46 = *(v190 + 64);
  __chkstk_darwin(v45);
  v48 = &v174 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v53 = &v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v174 - v54;
  v56 = type metadata accessor for AppLaunchAction();
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v59 = (&v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = sub_100063344();
  v201 = *(v203 - 8);
  v60 = *(v201 + 64);
  __chkstk_darwin(v203);
  v62 = &v174 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063334();
  sub_100063324();
  v63 = v62;
  sub_1000632F4();
  sub_10001C4E4(v200, v59, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v69 = v198;
    v200 = v55;
    v185 = v48;
    v70 = v44;
    v177 = v39;
    v71 = v199;
    if (EnumCaseMultiPayload <= 1)
    {
      v72 = v203;
      if (EnumCaseMultiPayload)
      {
        v99 = *v59;
        v98 = v59[1];
        v66 = v62;
        sub_100063314();
        v65 = v201;
        v67 = v72;
        if (v98)
        {
          v100 = sub_1000632E4();
          v102 = v100;
          if (*v101)
          {
            v103 = v101;
            v200 = v100;
            v104 = v42;
            sub_1000632C4();

            v105 = *v103;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v103 = v105;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v105 = sub_10001C138(0, v105[2] + 1, 1, v105, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
              *v103 = v105;
            }

            v108 = v105[2];
            v107 = v105[3];
            if (v108 >= v107 >> 1)
            {
              v105 = sub_10001C138(v107 > 1, v108 + 1, 1, v105, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
              *v103 = v105;
            }

            v105[2] = v108 + 1;
            (*(v196 + 32))(v105 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v108, v104, v197);
            v200(v205, 0);
          }

          else
          {

            v102(v205, 0);
          }
        }

        goto LABEL_89;
      }

      v73 = v200;
      sub_100015F0C(v59, v200, &qword_100084BC0, qword_100064C60);
      sub_100063314();
      sub_100016718(v73, v53, &qword_100084BC0, qword_100064C60);
      v75 = v190;
      v74 = v191;
      if ((*(v190 + 48))(v53, 1, v191) == 1)
      {
        sub_10000494C(v73, &qword_100084BC0, qword_100064C60);
        sub_10000494C(v53, &qword_100084BC0, qword_100064C60);
        v65 = v201;
        v66 = v62;
        v67 = v72;
        goto LABEL_89;
      }

      v127 = v185;
      (*(v75 + 32))(v185, v53, v74);
      v129 = sub_1000632E4();
      v66 = v62;
      if (*v128)
      {
        v130 = v128;
        sub_100063444();
        sub_1000632C4();

        v131 = *v130;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        *v130 = v131;
        if ((v132 & 1) == 0)
        {
          v131 = sub_10001C138(0, v131[2] + 1, 1, v131, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v130 = v131;
        }

        v134 = v131[2];
        v133 = v131[3];
        if (v134 >= v133 >> 1)
        {
          v131 = sub_10001C138(v133 > 1, v134 + 1, 1, v131, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v130 = v131;
        }

        v67 = v203;
        v131[2] = v134 + 1;
        (*(v196 + 32))(v131 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v134, v70, v197);
        v129(v205, 0);
        (*(v75 + 8))(v185, v74);
        sub_10000494C(v200, &qword_100084BC0, qword_100064C60);
        v65 = v201;
        goto LABEL_89;
      }

      v129(v205, 0);
      (*(v75 + 8))(v127, v74);
      sub_10000494C(v73, &qword_100084BC0, qword_100064C60);
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v76 = v203;
      v77 = v189;
      sub_100015F0C(v59, v189, &qword_100085600, &qword_100066EC0);
      sub_100063314();
      v78 = v69;
      sub_100016718(v77, v69, &qword_100085600, &qword_100066EC0);
      v79 = v195;
      v80 = v192;
      v81 = (*(v195 + 48))(v69, 1, v192);
      v65 = v201;
      if (v81 == 1)
      {
        sub_10000494C(v77, &qword_100085600, &qword_100066EC0);
        sub_10000494C(v69, &qword_100085600, &qword_100066EC0);
        v67 = v76;
        v66 = v62;
        goto LABEL_89;
      }

      v135 = v181;
      (*(v79 + 32))(v181, v78, v80);
      v136 = sub_1000632E4();
      if (*v137)
      {
        v138 = v137;
        v200 = v136;
        sub_100063584();
        sub_1000632C4();

        v139 = *v138;
        v140 = swift_isUniquelyReferenced_nonNull_native();
        *v138 = v139;
        if ((v140 & 1) == 0)
        {
          v139 = sub_10001C138(0, v139[2] + 1, 1, v139, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v138 = v139;
        }

        v141 = v189;
        v66 = v63;
        v143 = v139[2];
        v142 = v139[3];
        v67 = v203;
        if (v143 >= v142 >> 1)
        {
          v139 = sub_10001C138(v142 > 1, v143 + 1, 1, v139, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v138 = v139;
        }

        v139[2] = v143 + 1;
        (*(v196 + 32))(v139 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v143, v177, v197);
        v200(v205, 0);
        (*(v195 + 8))(v181, v80);
        sub_10000494C(v141, &qword_100085600, &qword_100066EC0);
        goto LABEL_89;
      }

      v136(v205, 0);
      (*(v79 + 8))(v135, v80);
      sub_10000494C(v189, &qword_100085600, &qword_100066EC0);
      v66 = v62;
LABEL_88:
      v67 = v203;
      goto LABEL_89;
    }

    v110 = *v59;
    v109 = v59[1];
    v111 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
    v112 = *(v111 + 64);
    v113 = v194;
    sub_100015F0C(v59 + *(v111 + 48), v194, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(v59 + v112, v193, &qword_1000855F0, &qword_100066EB0);
    v66 = v62;
    sub_100063314();
    if (v109)
    {
      v115 = sub_1000632E4();
      if (*v114)
      {
        v116 = v114;
        sub_1000632C4();

        v117 = *v116;
        v118 = swift_isUniquelyReferenced_nonNull_native();
        *v116 = v117;
        if ((v118 & 1) == 0)
        {
          v117 = sub_10001C138(0, v117[2] + 1, 1, v117, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v116 = v117;
        }

        v120 = v117[2];
        v119 = v117[3];
        if (v120 >= v119 >> 1)
        {
          v117 = sub_10001C138(v119 > 1, v120 + 1, 1, v117, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v116 = v117;
        }

        v117[2] = v120 + 1;
        (*(v196 + 32))(v117 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v120, v180, v197);
        v115(v205, 0);
      }

      else
      {

        v115(v205, 0);
      }

      v113 = v194;
    }

    v144 = v183;
    sub_100016718(v113, v183, &qword_1000855F8, &qword_100066EB8);
    if ((*(v184 + 48))(v144, 1, v186) == 1)
    {
      sub_10000494C(v144, &qword_1000855F8, &qword_100066EB8);
LABEL_76:
      v157 = v187;
      v158 = v193;
      sub_100016718(v193, v187, &qword_1000855F0, &qword_100066EB0);
      v159 = v188;
      if ((*(v188 + 48))(v157, 1, v71) == 1)
      {
        sub_10000494C(v158, &qword_1000855F0, &qword_100066EB0);
        sub_10000494C(v194, &qword_1000855F8, &qword_100066EB8);
        v160 = v157;
        v161 = &qword_1000855F0;
        v162 = &qword_100066EB0;
      }

      else
      {
        v163 = v182;
        (*(v159 + 32))(v182, v157, v71);
        v165 = sub_1000632E4();
        if (*v164)
        {
          v166 = v164;
          v204 = sub_100064144();
          sub_100064584();
          sub_1000632C4();

          v167 = *v166;
          v168 = swift_isUniquelyReferenced_nonNull_native();
          *v166 = v167;
          if ((v168 & 1) == 0)
          {
            v167 = sub_10001C138(0, v167[2] + 1, 1, v167, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
            *v166 = v167;
          }

          v169 = v193;
          v171 = v167[2];
          v170 = v167[3];
          if (v171 >= v170 >> 1)
          {
            v167 = sub_10001C138(v170 > 1, v171 + 1, 1, v167, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
            *v166 = v167;
          }

          v167[2] = v171 + 1;
          (*(v196 + 32))(v167 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v171, v178, v197);
          v165(v205, 0);
          (*(v188 + 8))(v182, v71);
          v172 = v169;
        }

        else
        {
          v165(v205, 0);
          (*(v159 + 8))(v163, v71);
          v172 = v193;
        }

        sub_10000494C(v172, &qword_1000855F0, &qword_100066EB0);
        v161 = &qword_1000855F8;
        v162 = &qword_100066EB8;
        v160 = v194;
      }

      sub_10000494C(v160, v161, v162);
LABEL_87:
      v65 = v201;
      goto LABEL_88;
    }

    v145 = v179;
    sub_10001BF8C(v144, v179);
    v146 = sub_10001C314(v145);
    if (v146 != 12)
    {
      v147 = v146;
      v149 = sub_1000632E4();
      if (*v148)
      {
        v150 = v148;
        sub_10001BA34(v147);
        v151 = v174;
        sub_1000632C4();

        v152 = *v150;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        *v150 = v152;
        if ((v153 & 1) == 0)
        {
          v152 = sub_10001C138(0, v152[2] + 1, 1, v152, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v150 = v152;
        }

        v155 = v152[2];
        v154 = v152[3];
        if (v155 >= v154 >> 1)
        {
          v152 = sub_10001C138(v154 > 1, v155 + 1, 1, v152, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v150 = v152;
        }

        v152[2] = v155 + 1;
        (*(v196 + 32))(v152 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v155, v151, v197);
        v149(v205, 0);
        v156 = v179;
        goto LABEL_75;
      }

      v149(v205, 0);
    }

    v156 = v145;
LABEL_75:
    sub_10001C484(v156, type metadata accessor for CanvasContentInputType);
    goto LABEL_76;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v66 = v62;
    if (EnumCaseMultiPayload == 4)
    {
      v82 = v195;
      v83 = v185;
      v84 = v192;
      (*(v195 + 32))(v185, v59, v192);
      sub_100063314();
      v86 = sub_1000632E4();
      if (*v85)
      {
        v87 = v85;
        sub_100063584();
        v88 = v176;
        sub_1000632C4();

        v89 = *v87;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        *v87 = v89;
        if ((v90 & 1) == 0)
        {
          v89 = sub_10001C138(0, v89[2] + 1, 1, v89, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v87 = v89;
        }

        v92 = v89[2];
        v91 = v89[3];
        if (v92 >= v91 >> 1)
        {
          v89 = sub_10001C138(v91 > 1, v92 + 1, 1, v89, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
          *v87 = v89;
        }

        v89[2] = v92 + 1;
        (*(v196 + 32))(v89 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v92, v88, v197);
        v86(v205, 0);
        (*(v195 + 8))(v83, v84);
      }

      else
      {
        v86(v205, 0);
        (*(v82 + 8))(v83, v84);
      }

      v67 = v203;
      v65 = v201;
      goto LABEL_89;
    }

    v121 = *v59;
    sub_100063314();
    v95 = sub_1000632E4();
    v67 = v203;
    v65 = v201;
    if (*v122)
    {
      v96 = v122;
      v97 = v177;
      sub_1000632C4();

      v123 = *v96;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      *v96 = v123;
      if ((v124 & 1) == 0)
      {
LABEL_91:
        v123 = sub_10001C138(0, v123[2] + 1, 1, v123, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
        *v96 = v123;
      }

LABEL_40:
      v126 = v123[2];
      v125 = v123[3];
      if (v126 >= v125 >> 1)
      {
        v123 = sub_10001C138(v125 > 1, v126 + 1, 1, v123, &qword_100085608, &qword_100066EC8, &type metadata accessor for URLQueryItem);
        *v96 = v123;
      }

      v123[2] = v126 + 1;
      (*(v196 + 32))(v123 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v126, v97, v197);
      v95(v205, 0);
      goto LABEL_89;
    }

LABEL_57:
    v95(v205, 0);
    goto LABEL_89;
  }

  v65 = v201;
  v66 = v62;
  if (EnumCaseMultiPayload == 6)
  {
    v93 = *v59;
    sub_100063314();
    v67 = v203;
    if (v93 == 4)
    {
      goto LABEL_89;
    }

    v95 = sub_1000632E4();
    if (*v94)
    {
      v96 = v94;
      v97 = v175;
      sub_1000632C4();

      v123 = *v96;
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *v96 = v123;
      if ((v173 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_40;
    }

    goto LABEL_57;
  }

  v67 = v203;
  if (EnumCaseMultiPayload == 7)
  {
    (*(v201 + 8))(v62, v203);
    sub_10001C484(v59, type metadata accessor for AppLaunchAction);
    return (*(v190 + 56))(v202, 1, 1, v191);
  }

  sub_100063314();
LABEL_89:
  sub_100063304();
  return (*(v65 + 8))(v66, v67);
}

uint64_t type metadata accessor for AppLaunchAction()
{
  result = qword_100085680;
  if (!qword_100085680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B410(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x68746C616568;
  }

  else
  {
    v4 = 0x6163696669746F6ELL;
  }

  if (v3)
  {
    v5 = 0xED0000736E6F6974;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x68746C616568;
  }

  else
  {
    v6 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xED0000736E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100064594();
  }

  return v9 & 1;
}

Swift::Int sub_10001B4C0()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B54C()
{
  *v0;
  sub_1000642C4();
}

Swift::Int sub_10001B5C4()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B64C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100082470;
  v8._object = v3;
  v5 = sub_100064494(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001B6AC(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001B700()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B7D8()
{
  *v0;
  *v0;
  *v0;
  sub_1000642C4();
}

Swift::Int sub_10001B89C()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10001B970@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E604(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001B9A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10001BA34(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0x4D664F6574617473;
    if (a1 != 10)
    {
      v6 = 0x7478655468636972;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6172656D6163;
    v8 = 0x6C64496F69647561;
    if (a1 != 7)
    {
      v8 = 0x7463416F69647561;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x7475706E496F6ELL;
    v2 = 0x6B63695065746164;
    v3 = 0x6974736567677573;
    if (a1 != 4)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6472616F6279656BLL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001BBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_10001E5BC(&unk_100085700, &type metadata accessor for URL);
      v28 = sub_100064234();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_10001E5BC(qword_100085778, &type metadata accessor for URL);
        v33 = sub_100064274();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10001BFF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001C138(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10001C314(uint64_t a1)
{
  v2 = *(*(type metadata accessor for CanvasContentInputType() - 8) + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C4E4(a1, v4, type metadata accessor for CanvasContentInputType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if ((result - 10) >= 2)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    else if (result != 6)
    {
      if (result == 7)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 0;
    }

    else if (result == 4)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_10000494C(v4, &qword_100085600, &qword_100066EC0);
      return 4;
    }

    else if (*v4)
    {
      return 8;
    }

    else
    {
      return 7;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_10001C484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10001C5A0()
{
  sub_10001C78C(319, &qword_100085690, &unk_100085698, &type metadata accessor for URL, sub_10001C7E0);
  if (v0 <= 0x3F)
  {
    sub_10001C78C(319, &qword_1000856A0, &unk_1000856A8, &type metadata for String, sub_10001C960);
    if (v1 <= 0x3F)
    {
      sub_10001C78C(319, &qword_1000856B0, &qword_1000856B8, &type metadata accessor for UUID, sub_10001C7E0);
      if (v2 <= 0x3F)
      {
        sub_10001C834();
        if (v3 <= 0x3F)
        {
          sub_10001C8E4(319, &qword_1000856D0, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_10001C930();
            if (v5 <= 0x3F)
            {
              sub_10001C78C(319, &qword_1000856E0, &unk_1000856E8, &type metadata for SettingsTab, sub_10001C960);
              if (v6 <= 0x3F)
              {
                sub_10001C8E4(319, &qword_1000856F0, sub_10001C9AC);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001C78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10001C7E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000643A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10001C834()
{
  if (!qword_1000856C0)
  {
    sub_10000221C(&qword_1000856C8, &qword_100066EE8);
    sub_10000221C(&qword_1000855F8, &qword_100066EB8);
    sub_10000221C(&qword_1000855F0, &qword_100066EB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000856C0);
    }
  }
}

void sub_10001C8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10001C930()
{
  result = qword_1000856D8;
  if (!qword_1000856D8)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_1000856D8);
  }

  return result;
}

void sub_10001C960(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000643A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10001C9AC()
{
  if (!qword_1000856F8)
  {
    sub_100063454();
    sub_10001E5BC(&unk_100085700, &type metadata accessor for URL);
    v0 = sub_100064354();
    if (!v1)
    {
      atomic_store(v0, &qword_1000856F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsTab(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalWidgetDemoMode.TimelineEntryAppearance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JournalWidgetDemoMode.TimelineEntryAppearance(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CD00()
{
  result = qword_100085730;
  if (!qword_100085730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085730);
  }

  return result;
}

unint64_t sub_10001CD58()
{
  result = qword_100085738;
  if (!qword_100085738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085738);
  }

  return result;
}

uint64_t sub_10001CDAC(uint64_t a1, uint64_t a2)
{
  v203 = a1;
  v204 = a2;
  v174 = sub_100064154();
  v173 = *(v174 - 8);
  v2 = *(v173 + 64);
  __chkstk_darwin(v174);
  v171 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000021D4(&qword_100085740, &qword_100067078);
  v4 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v178 = &v170 - v5;
  v181 = type metadata accessor for CanvasContentInputType();
  v180 = *(v181 - 8);
  v6 = *(v180 + 64);
  __chkstk_darwin(v181);
  v187 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1000021D4(&qword_100085748, &qword_100067080);
  v8 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v184 = &v170 - v9;
  v10 = sub_1000021D4(&qword_1000855F0, &qword_100066EB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v172 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v194 = &v170 - v15;
  __chkstk_darwin(v14);
  v193 = &v170 - v16;
  v17 = sub_1000021D4(&qword_1000855F8, &qword_100066EB8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v176 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v195 = &v170 - v22;
  __chkstk_darwin(v21);
  v192 = &v170 - v23;
  v24 = sub_1000635A4();
  v196 = *(v24 - 8);
  v197 = v24;
  v25 = *(v196 + 64);
  v26 = __chkstk_darwin(v24);
  v186 = &v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v177 = &v170 - v28;
  v29 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v202 = &v170 - v31;
  v201 = sub_1000021D4(&qword_100085750, &qword_100067088);
  v32 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v200 = &v170 - v33;
  v183 = sub_100063454();
  v199 = *(v183 - 8);
  v34 = *(v199 + 64);
  __chkstk_darwin(v183);
  v175 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v179 = &v170 - v38;
  v198 = sub_1000021D4(&qword_100085758, &qword_100067090);
  v39 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v41 = &v170 - v40;
  v42 = type metadata accessor for AppLaunchAction();
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42);
  v190 = (&v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v44);
  v48 = &v170 - v47;
  v49 = __chkstk_darwin(v46);
  v189 = &v170 - v50;
  v51 = __chkstk_darwin(v49);
  v191 = &v170 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = &v170 - v54;
  v56 = __chkstk_darwin(v53);
  v58 = &v170 - v57;
  v59 = __chkstk_darwin(v56);
  v61 = (&v170 - v60);
  __chkstk_darwin(v59);
  v63 = &v170 - v62;
  v64 = sub_1000021D4(&qword_100085760, &qword_100067098);
  v65 = *(*(v64 - 8) + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v68 = &v170 - v67;
  v69 = &v170 + *(v66 + 56) - v67;
  sub_10001C4E4(v203, &v170 - v67, type metadata accessor for AppLaunchAction);
  v70 = v204;
  v204 = v69;
  sub_10001C4E4(v70, v69, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v76 = v55;
    v77 = v198;
    v78 = v199;
    v188 = v68;
    v79 = v201;
    v80 = v202;
    v81 = v200;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v68 = v188;
        sub_10001C4E4(v188, v63, type metadata accessor for AppLaunchAction);
        v82 = v204;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10000494C(v63, &qword_100084BC0, qword_100064C60);
          goto LABEL_59;
        }

        v125 = *(v77 + 48);
        v126 = v41;
        sub_100015F0C(v63, v41, &qword_100084BC0, qword_100064C60);
        sub_100015F0C(v82, &v41[v125], &qword_100084BC0, qword_100064C60);
        v127 = *(v78 + 48);
        v128 = v183;
        if (v127(v41, 1, v183) == 1)
        {
          if (v127(&v41[v125], 1, v128) == 1)
          {
            sub_10000494C(v41, &qword_100084BC0, qword_100064C60);
            goto LABEL_88;
          }
        }

        else
        {
          v134 = v179;
          sub_100016718(v41, v179, &qword_100084BC0, qword_100064C60);
          if (v127(&v41[v125], 1, v128) != 1)
          {
            v152 = &v41[v125];
            v153 = v175;
            (*(v78 + 32))(v175, v152, v128);
            sub_10001E5BC(qword_100085778, &type metadata accessor for URL);
            v154 = sub_100064274();
            v155 = *(v78 + 8);
            v155(v153, v128);
            v155(v134, v128);
            sub_10000494C(v126, &qword_100084BC0, qword_100064C60);
            if (v154)
            {
              goto LABEL_88;
            }

            goto LABEL_100;
          }

          (*(v78 + 8))(v134, v128);
        }

        sub_10000494C(v41, &qword_100085758, &qword_100067090);
        goto LABEL_100;
      }

      v68 = v188;
      sub_10001C4E4(v188, v61, type metadata accessor for AppLaunchAction);
      v100 = *v61;
      v99 = v61[1];
      v101 = v204;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_57;
      }

      v102 = v101[1];
      if (v99)
      {
        if (v102)
        {
          if (v100 != *v101 || v99 != v102)
          {
            v140 = v101[1];
            v141 = sub_100064594();

            if (v141)
            {
              goto LABEL_88;
            }

            goto LABEL_100;
          }

LABEL_29:

          goto LABEL_88;
        }
      }

      else
      {
        if (!v102)
        {
          goto LABEL_88;
        }

        v133 = v101[1];
      }

      goto LABEL_100;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_10001C4E4(v188, v58, type metadata accessor for AppLaunchAction);
      v83 = v204;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10000494C(v58, &qword_100085600, &qword_100066EC0);
        v68 = v188;
        goto LABEL_59;
      }

      v84 = *(v79 + 48);
      sub_100015F0C(v58, v81, &qword_100085600, &qword_100066EC0);
      sub_100015F0C(v83, v81 + v84, &qword_100085600, &qword_100066EC0);
      v85 = v196;
      v86 = v197;
      v87 = *(v196 + 48);
      if (v87(v81, 1, v197) == 1)
      {
        v88 = v87(v81 + v84, 1, v86);
        v89 = v188;
        if (v88 == 1)
        {
          sub_10000494C(v81, &qword_100085600, &qword_100066EC0);
LABEL_81:
          v139 = v89;
LABEL_89:
          sub_10001C484(v139, type metadata accessor for AppLaunchAction);
          v75 = 1;
          return v75 & 1;
        }
      }

      else
      {
        sub_100016718(v81, v80, &qword_100085600, &qword_100066EC0);
        if (v87(v81 + v84, 1, v86) != 1)
        {
          v135 = v81 + v84;
          v136 = v177;
          (*(v85 + 32))(v177, v135, v86);
          sub_10001E5BC(&qword_100085770, &type metadata accessor for UUID);
          v137 = sub_100064274();
          v138 = *(v85 + 8);
          v138(v136, v86);
          v138(v80, v86);
          sub_10000494C(v81, &qword_100085600, &qword_100066EC0);
          v89 = v188;
          if (v137)
          {
            goto LABEL_81;
          }

LABEL_86:
          sub_10001C484(v89, type metadata accessor for AppLaunchAction);
          goto LABEL_60;
        }

        (*(v85 + 8))(v80, v86);
        v89 = v188;
      }

      v129 = &qword_100085750;
      v130 = &qword_100067088;
      v131 = v81;
LABEL_85:
      sub_10000494C(v131, v129, v130);
      goto LABEL_86;
    }

    v68 = v188;
    v103 = v76;
    sub_10001C4E4(v188, v76, type metadata accessor for AppLaunchAction);
    v104 = *v103;
    v105 = v103[1];
    v106 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
    v107 = *(v106 + 48);
    v108 = *(v106 + 64);
    v109 = v204;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_10000494C(v103 + v108, &qword_1000855F0, &qword_100066EB0);
      sub_10000494C(v103 + v107, &qword_1000855F8, &qword_100066EB8);
      goto LABEL_59;
    }

    v110 = v109[1];
    v203 = *v109;
    sub_100015F0C(v103 + v107, v192, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(v103 + v108, v193, &qword_1000855F0, &qword_100066EB0);
    sub_100015F0C(v109 + v107, v195, &qword_1000855F8, &qword_100066EB8);
    sub_100015F0C(v109 + v108, v194, &qword_1000855F0, &qword_100066EB0);
    if (v105)
    {
      v111 = v187;
      if (v110)
      {
        v112 = v188;
        v114 = v192;
        v113 = v193;
        v115 = v195;
        if (v104 == v203 && v105 == v110)
        {

          v117 = v184;
          v116 = v185;
          goto LABEL_92;
        }

        v143 = sub_100064594();

        v117 = v184;
        v116 = v185;
        if (v143)
        {
LABEL_92:
          v144 = *(v116 + 48);
          sub_100016718(v114, v117, &qword_1000855F8, &qword_100066EB8);
          sub_100016718(v115, v117 + v144, &qword_1000855F8, &qword_100066EB8);
          v145 = *(v180 + 48);
          v146 = v181;
          if (v145(v117, 1, v181) == 1)
          {
            v147 = v145(v117 + v144, 1, v146);
            v148 = v182;
            if (v147 == 1)
            {
              sub_10000494C(v117, &qword_1000855F8, &qword_100066EB8);
              v149 = v113;
              goto LABEL_102;
            }
          }

          else
          {
            v150 = v176;
            sub_100016718(v117, v176, &qword_1000855F8, &qword_100066EB8);
            v151 = v145(v117 + v144, 1, v146);
            v148 = v182;
            if (v151 != 1)
            {
              sub_10001BF8C(v117 + v144, v111);
              v156 = sub_100035070(v150, v111);
              sub_10001C484(v111, type metadata accessor for CanvasContentInputType);
              sub_10001C484(v150, type metadata accessor for CanvasContentInputType);
              sub_10000494C(v117, &qword_1000855F8, &qword_100066EB8);
              v149 = v113;
              if (v156)
              {
LABEL_102:
                v157 = *(v148 + 48);
                v158 = v178;
                sub_100016718(v149, v178, &qword_1000855F0, &qword_100066EB0);
                v159 = v194;
                v160 = v158;
                sub_100016718(v194, v158 + v157, &qword_1000855F0, &qword_100066EB0);
                v161 = v173;
                v162 = *(v173 + 48);
                v163 = v174;
                if (v162(v158, 1, v174) == 1)
                {
                  sub_10000494C(v159, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v195, &qword_1000855F8, &qword_100066EB8);
                  v164 = v178;
                  sub_10000494C(v149, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v114, &qword_1000855F8, &qword_100066EB8);
                  if (v162(v164 + v157, 1, v163) == 1)
                  {
                    sub_10000494C(v164, &qword_1000855F0, &qword_100066EB0);
                    v139 = v188;
                    goto LABEL_89;
                  }
                }

                else
                {
                  v165 = v158;
                  v166 = v172;
                  sub_100016718(v165, v172, &qword_1000855F0, &qword_100066EB0);
                  if (v162(v160 + v157, 1, v163) != 1)
                  {
                    v167 = v160 + v157;
                    v168 = v171;
                    (*(v161 + 32))(v171, v167, v163);
                    sub_10001E5BC(&qword_100085768, &type metadata accessor for WidgetFamily);
                    LODWORD(v204) = sub_100064274();
                    v169 = *(v161 + 8);
                    v169(v168, v163);
                    sub_10000494C(v194, &qword_1000855F0, &qword_100066EB0);
                    sub_10000494C(v195, &qword_1000855F8, &qword_100066EB8);
                    sub_10000494C(v149, &qword_1000855F0, &qword_100066EB0);
                    sub_10000494C(v114, &qword_1000855F8, &qword_100066EB8);
                    v169(v166, v163);
                    sub_10000494C(v178, &qword_1000855F0, &qword_100066EB0);
                    v139 = v188;
                    if (v204)
                    {
                      goto LABEL_89;
                    }

LABEL_108:
                    sub_10001C484(v139, type metadata accessor for AppLaunchAction);
                    goto LABEL_60;
                  }

                  sub_10000494C(v194, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v195, &qword_1000855F8, &qword_100066EB8);
                  v164 = v178;
                  sub_10000494C(v149, &qword_1000855F0, &qword_100066EB0);
                  sub_10000494C(v114, &qword_1000855F8, &qword_100066EB8);
                  (*(v161 + 8))(v166, v163);
                }

                sub_10000494C(v164, &qword_100085740, &qword_100067078);
                v139 = v188;
                goto LABEL_108;
              }

LABEL_98:
              sub_10000494C(v194, &qword_1000855F0, &qword_100066EB0);
              sub_10000494C(v115, &qword_1000855F8, &qword_100066EB8);
              sub_10000494C(v149, &qword_1000855F0, &qword_100066EB0);
              sub_10000494C(v114, &qword_1000855F8, &qword_100066EB8);
              sub_10001C484(v188, type metadata accessor for AppLaunchAction);
              goto LABEL_60;
            }

            sub_10001C484(v150, type metadata accessor for CanvasContentInputType);
          }

          sub_10000494C(v117, &qword_100085748, &qword_100067080);
          v149 = v113;
          goto LABEL_98;
        }

LABEL_84:
        sub_10000494C(v194, &qword_1000855F0, &qword_100066EB0);
        v89 = v112;
        sub_10000494C(v115, &qword_1000855F8, &qword_100066EB8);
        sub_10000494C(v113, &qword_1000855F0, &qword_100066EB0);
        v131 = v114;
        v129 = &qword_1000855F8;
        v130 = &qword_100066EB8;
        goto LABEL_85;
      }

      v112 = v188;
      v114 = v192;
      v113 = v193;
      v115 = v195;
    }

    else
    {
      v111 = v187;
      v112 = v188;
      v114 = v192;
      v113 = v193;
      v115 = v195;
      v117 = v184;
      v116 = v185;
      if (!v110)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v90 = v191;
      sub_10001C4E4(v68, v191, type metadata accessor for AppLaunchAction);
      v91 = v204;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v93 = v196;
        v92 = v197;
        v94 = v186;
        (*(v196 + 32))(v186, v91, v197);
        v75 = sub_100063594();
        v95 = *(v93 + 8);
        v95(v94, v92);
        v95(v90, v92);
        goto LABEL_19;
      }

      (*(v196 + 8))(v90, v197);
      goto LABEL_59;
    }

    v118 = v189;
    sub_10001C4E4(v68, v189, type metadata accessor for AppLaunchAction);
    v119 = v204;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_59;
    }

    v120 = *v119;
    if (*v118)
    {
      v121 = 0x68746C616568;
    }

    else
    {
      v121 = 0x6163696669746F6ELL;
    }

    if (*v118)
    {
      v122 = 0xE600000000000000;
    }

    else
    {
      v122 = 0xED0000736E6F6974;
    }

    if (v120)
    {
      v123 = 0x68746C616568;
    }

    else
    {
      v123 = 0x6163696669746F6ELL;
    }

    if (v120)
    {
      v124 = 0xE600000000000000;
    }

    else
    {
      v124 = 0xED0000736E6F6974;
    }

    if (v121 != v123 || v122 != v124)
    {
      v132 = sub_100064594();

      if (v132)
      {
        goto LABEL_88;
      }

      goto LABEL_100;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10001C4E4(v68, v48, type metadata accessor for AppLaunchAction);
    v96 = *v48;
    v97 = v204;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_59;
    }

    v98 = *v97;
    if (v96 == 4)
    {
      if (v98 != 4)
      {
        goto LABEL_100;
      }

LABEL_88:
      v139 = v68;
      goto LABEL_89;
    }

    if (v98 != 4 && (sub_10005D1D0(v96, v98) & 1) != 0)
    {
      goto LABEL_88;
    }

LABEL_100:
    sub_10001C484(v68, type metadata accessor for AppLaunchAction);
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_88;
    }

LABEL_59:
    sub_10000494C(v68, &qword_100085760, &qword_100067098);
LABEL_60:
    v75 = 0;
    return v75 & 1;
  }

  v72 = v190;
  sub_10001C4E4(v68, v190, type metadata accessor for AppLaunchAction);
  v73 = *v72;
  v74 = v204;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_57:

    goto LABEL_59;
  }

  v75 = sub_10001BBDC(v73, *v74);

LABEL_19:
  sub_10001C484(v68, type metadata accessor for AppLaunchAction);
  return v75 & 1;
}