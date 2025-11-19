Swift::Int sub_100001FFC()
{
  v1 = *v0;
  sub_100044678();
  sub_100044688(v1);
  return sub_100044698();
}

Swift::Int sub_100002070()
{
  v1 = *v0;
  sub_100044678();
  sub_100044688(v1);
  return sub_100044698();
}

uint64_t sub_1000020DC(uint64_t a1, uint64_t *a2)
{
  sub_100043D28();
  __chkstk_darwin();
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_100043D78();
  *a2 = result;
  return result;
}

uint64_t sub_1000021C0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = a1;
  v2 = a1;
  v37 = sub_100043E58();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100058E30);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v9 = sub_1000028F8(&qword_100058E38);
  __chkstk_darwin();
  v11 = &v34 - v10;
  v35 = sub_1000028F8(&qword_100058E40);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v36 = sub_1000028F8(&qword_100058E48);
  __chkstk_darwin();
  v15 = &v34 - v14;
  sub_100043E48();
  if (v2 == 2)
  {
    if (qword_100058D40 != -1)
    {
      swift_once();
    }

    v16 = &qword_100058D48;
  }

  else
  {
    if (qword_100058D30 != -1)
    {
      swift_once();
    }

    v16 = &qword_100058D38;
  }

  v17 = *v16;

  v18 = sub_100043A38();
  (*(v3 + 32))(v8, v5, v37);
  v19 = &v8[*(v6 + 36)];
  *v19 = v17;
  v19[8] = v18;
  v20 = &v11[*(v9 + 36)];
  v21 = *(sub_100043688() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = sub_1000438D8();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #0.5 }

  *v20 = _Q0;
  *&v20[*(sub_1000028F8(&qword_100058E50) + 36)] = 256;
  sub_1000029D8(v8, v11, &qword_100058E30);
  LOBYTE(v22) = sub_100043A28();
  sub_1000029D8(v11, v13, &qword_100058E38);
  v13[*(v35 + 36)] = v22;
  sub_100043EC8();
  sub_1000435E8();
  sub_1000029D8(v13, v15, &qword_100058E40);
  v29 = &v15[*(v36 + 36)];
  v30 = v41;
  *v29 = v40;
  *(v29 + 1) = v30;
  *(v29 + 2) = v42;
  if (v38)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = v39;
  sub_1000029D8(v15, v39, &qword_100058E48);
  result = sub_1000028F8(&qword_100058E58);
  *(v32 + *(result + 36)) = v31;
  return result;
}

uint64_t sub_10000264C()
{
  sub_1000028F8(&qword_100058DF8);
  sub_100002940(&qword_100058E00);
  sub_100002940(&qword_100058E08);
  sub_100002940(&qword_100058E10);
  sub_100002940(&qword_100058E18);
  sub_100002940(&qword_100058E20);
  sub_100002F14(&qword_100058E28, &qword_100058E20);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_100043958();
}

uint64_t sub_100002818(__int128 *a1)
{
  v2 = *a1;
  if (sub_100042D10(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000288C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_100042D10(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000028F8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002940(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000029D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000028F8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100002A40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100002AD0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002BA8()
{
  result = qword_100058E60;
  if (!qword_100058E60)
  {
    sub_100002940(&qword_100058E58);
    sub_100002C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E60);
  }

  return result;
}

unint64_t sub_100002C34()
{
  result = qword_100058E68;
  if (!qword_100058E68)
  {
    sub_100002940(&qword_100058E48);
    sub_100002CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E68);
  }

  return result;
}

unint64_t sub_100002CC0()
{
  result = qword_100058E70;
  if (!qword_100058E70)
  {
    sub_100002940(&qword_100058E40);
    sub_100002D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E70);
  }

  return result;
}

unint64_t sub_100002D4C()
{
  result = qword_100058E78;
  if (!qword_100058E78)
  {
    sub_100002940(&qword_100058E38);
    sub_100002E04();
    sub_100002F14(&qword_100058EA0, &qword_100058E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E78);
  }

  return result;
}

unint64_t sub_100002E04()
{
  result = qword_100058E80;
  if (!qword_100058E80)
  {
    sub_100002940(&qword_100058E30);
    sub_100002EBC();
    sub_100002F14(&qword_100058E90, &qword_100058E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E80);
  }

  return result;
}

unint64_t sub_100002EBC()
{
  result = qword_100058E88;
  if (!qword_100058E88)
  {
    sub_100043E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058E88);
  }

  return result;
}

uint64_t sub_100002F14(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002940(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100002F60()
{
  result = qword_100058EA8;
  if (!qword_100058EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058EA8);
  }

  return result;
}

uint64_t sub_100002FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043328();
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

uint64_t sub_1000030A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043328();
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

uint64_t type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry()
{
  result = qword_100058F08;
  if (!qword_100058F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000031A8()
{
  sub_100043328();
  if (v0 <= 0x3F)
  {
    sub_10000322C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000322C()
{
  if (!qword_100058F18)
  {
    sub_100044188();
    v0 = sub_100044318();
    if (!v1)
    {
      atomic_store(v0, &qword_100058F18);
    }
  }
}

uint64_t sub_100003284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043328();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100003304()
{
  result = qword_100058F48;
  if (!qword_100058F48)
  {
    type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100058F48);
  }

  return result;
}

uint64_t sub_10000335C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v32 = sub_100044188();
  v1 = *(v32 - 8);
  v2 = (__chkstk_darwin)();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = sub_100043328();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10005CA08 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
  sub_1000028F8(&qword_100058F68);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000453A0;
  sub_100004E84();
  if (v11 == 1)
  {
    *(v12 + 32) = sub_100044468();
    *(v12 + 40) = sub_100044478();
    *(v12 + 48) = sub_100044448();
    v13 = sub_100044458();
  }

  else
  {
    *(v12 + 32) = sub_100044418();
    *(v12 + 40) = sub_100044428();
    *(v12 + 48) = sub_100044438();
    v13 = sub_100044488();
  }

  *(v12 + 56) = v13;
  v29 = v10;
  sub_100043308();
  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v30;
  if (v14)
  {
    v27 = v8;
    v28 = v7;
    v33 = &_swiftEmptyArrayStorage;
    sub_1000045EC(0, v14, 0);
    v16 = v33;
    v31 = sub_100043408();
    v17 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        sub_1000445C8();
        sub_1000433F8();
        sub_100044178();
        swift_unknownObjectRelease();
        v33 = v16;
        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000045EC(v19 > 1, v20 + 1, 1);
          v16 = v33;
        }

        v16[2] = v20 + 1;
        (*(v1 + 32))(v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v20, v6, v32);
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v17 + v21);
        sub_1000433F8();
        sub_100044178();

        v33 = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_1000045EC(v23 > 1, v24 + 1, 1);
          v16 = v33;
        }

        v16[2] = v24 + 1;
        (*(v1 + 32))(v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v24, v4, v32);
        v21 += 8;
        --v14;
      }

      while (v14);
    }

    v15 = v30;
    v8 = v27;
    v7 = v28;
  }

  else
  {

    v16 = &_swiftEmptyArrayStorage;
  }

  (*(v8 + 32))(v15, v29, v7);
  result = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  *(v15 + *(result + 20)) = v16;
  return result;
}

uint64_t sub_100003780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  v5[5] = swift_task_alloc();
  v6 = sub_100044168();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100003870, 0, 0);
}

uint64_t sub_100003870()
{
  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  sub_10000F4D0();
  sub_10000F550();
  sub_10000F714();
  sub_100044148();
  *(v0 + 72) = sub_100044138();
  v3 = (&async function pointer to dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation() + async function pointer to dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation());
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100003990;

  return v3();
}

uint64_t sub_100003990()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_100003AF0;

  return QuickStartWorkoutDataProvider.retrieveEntries(count:)(4);
}

uint64_t sub_100003AF0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_100003CEC;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100003C18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003C18()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  sub_100043308();
  *(v5 + *(v6 + 20)) = v1;
  v7(v5);
  sub_100004CC0(v5);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100003CEC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100003D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000028F8(&qword_100058F50);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100004BE8(a3, v22 - v9);
  v11 = sub_100044348();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100004C58(v10);
  }

  else
  {
    sub_100044338();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100044328();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100044288() + 32;

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

      sub_100004C58(a3);

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

  sub_100004C58(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100003FE0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000440C8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000028F8(&qword_100058F58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100044388();
  v9 = HKLogActivity;
  sub_100043538();

  sub_1000028F8(&qword_100058F60);
  v10 = *(type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000453B0;
  sub_100004D1C(a1, v12 + v11);
  sub_1000440B8();
  sub_100003304();
  sub_100044118();
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100004228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000028F8(&qword_100058F50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_100044388();
  v8 = HKLogActivity;
  sub_100043538();

  v9 = sub_100044348();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;

  sub_100003D74(0, 0, v7, &unk_1000454D0, v10);
}

uint64_t sub_100004390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004444;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100004444()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004ED8;

  return TimelineProvider.relevance()(a1, a2, a3);
}

size_t sub_1000045EC(size_t a1, int64_t a2, char a3)
{
  result = sub_10000462C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000460C(char *a1, int64_t a2, char a3)
{
  result = sub_100004804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000462C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000028F8(&qword_100058F78);
  v10 = *(sub_100044188() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100044188() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100004804(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028F8(&qword_100058F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100004910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000028F8(&qword_100058F50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_100044388();
  v8 = HKLogActivity;
  sub_100043538();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_100044388();
  v10 = HKLogActivity;
  sub_100043538();

  v11 = sub_100044348();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = sub_100004B20;
  v12[5] = v9;
  sub_100003D74(0, 0, v7, &unk_1000454B8, v12);
}

uint64_t sub_100004AE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004ED8;

  return sub_100003780(a1, v4, v5, v7, v6);
}

uint64_t sub_100004BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100058F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004C58(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_100058F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004CC0(uint64_t a1)
{
  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_100004D84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004444;

  return sub_100003780(a1, v4, v5, v7, v6);
}

unint64_t sub_100004E84()
{
  result = qword_100058F70;
  if (!qword_100058F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100058F70);
  }

  return result;
}

uint64_t sub_100004EF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100043328();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_100058F88);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000028F8(&qword_100058F90);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10000509C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100043328();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000028F8(&qword_100058F88);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = sub_1000028F8(&qword_100058F90);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for FitnessWidgetProvider.ActivityEntry()
{
  result = qword_100058FF0;
  if (!qword_100058FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005274()
{
  sub_100043328();
  if (v0 <= 0x3F)
  {
    sub_100005410(319, &qword_100059000, &type metadata accessor for TimelineEntryRelevance);
    if (v1 <= 0x3F)
    {
      sub_1000053B8(319, &qword_100059008, &qword_100059010);
      if (v2 <= 0x3F)
      {
        sub_100005410(319, &qword_100059018, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          sub_1000053B8(319, &qword_100059020, &unk_100059028);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000053B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100009BB8(255, a3);
    v4 = sub_1000444C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100005410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000444C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100005464(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000054C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100005598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v46 = a2;
  v3 = sub_100043F68();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100043F88();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100043328();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  sub_100044358();
  v12 = HKLogActivity;
  sub_100043538();

  sub_100043318();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  sub_100044388();
  v14 = HKLogActivity;
  sub_100043538();

  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v15 = *(v7 + 16);
  v56 = v7 + 16;
  v57 = v15;
  v15(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v6);
  v16 = *(v7 + 80);
  v17 = v7;
  v45 = v7;
  v18 = (v16 + 16) & ~v16;
  v43 = v16;
  v19 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6;
  v21 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v55 = *(v17 + 32);
  v42 = v18;
  v55(v22 + v18, v19, v20);
  *(v22 + v21) = v13;
  v23 = v13;
  sub_10000FA98(v11, 1, sub_100009F28, v22);

  dispatch_group_enter(v23);
  sub_100044388();
  v24 = HKLogActivity;
  sub_100043538();

  v57(v19, v11, v20);
  v25 = swift_allocObject();
  v55(v25 + v18, v19, v20);
  *(v25 + v21) = v23;
  v26 = v23;
  sub_1000114B4(v11, 1, sub_100009FF4, v25);

  dispatch_group_enter(v26);
  sub_100044388();
  v27 = HKLogActivity;
  sub_100043538();

  v44 = v20;
  v57(v19, v11, v20);
  v28 = swift_allocObject();
  v55(v28 + v42, v19, v20);
  *(v28 + v21) = v26;
  v29 = v26;
  sub_1000103B4(v11, 1, sub_10000A09C, v28);

  sub_100009BB8(0, &qword_100059090);
  v30 = sub_1000443D8();
  v31 = v47;
  v32 = *(v47 + 8);
  v61 = *(v47 + 24);
  v62 = v32;
  v60 = *(v47 + 40);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v46;
  *(v33 + 24) = v34;
  v35 = v31[1];
  *(v33 + 32) = *v31;
  *(v33 + 48) = v35;
  *(v33 + 64) = v31[2];
  aBlock[4] = sub_10000A190;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = &unk_1000569E0;
  v36 = _Block_copy(aBlock);

  sub_100008B58(&v62, v58);
  sub_100008B58(&v61, v58);
  sub_10000A1F8(&v60, v58, &qword_100059080);
  v37 = v49;
  sub_100043F78();
  v58[0] = &_swiftEmptyArrayStorage;
  sub_100009DC8(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100009C98();
  v38 = v52;
  v39 = v54;
  sub_100044518();
  sub_100044398();
  _Block_release(v36);

  (*(v53 + 8))(v38, v39);
  (*(v50 + 8))(v37, v51);
  (*(v45 + 8))(v11, v44);
}

uint64_t sub_100005D58(void (*a1)(char *))
{
  v2 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v5 = qword_10005CA08;
  sub_1000028F8(&qword_1000590C0);
  sub_1000443E8();
  v6 = v21;
  if (v21 && (v7 = sub_10001AEFC(), v6, v7))
  {
    sub_100043318();
    v8 = v2[5];
    v9 = sub_1000440E8();
    (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
    sub_1000443E8();
    v10 = v21;
    sub_1000028F8(&qword_100058F90);
    sub_1000443E8();
    sub_1000028F8(&qword_1000597A0);
    sub_1000443E8();
    v11 = 0;
    v12 = v21;
  }

  else
  {
    sub_100044388();
    v13 = HKLogActivity;
    sub_100043538();

    sub_100043318();
    v14 = v2[5];
    v15 = sub_1000440E8();
    v11 = 1;
    (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
    v16 = v2[7];
    v17 = sub_100043328();
    (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
    v10 = 0;
    v12 = 0;
  }

  v18 = *(v5 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
  *&v4[v2[6]] = v10;
  *&v4[v2[8]] = v12;
  v4[v2[9]] = v11;
  v4[v2[10]] = v18;
  a1(v4);
  return sub_10000A19C(v4);
}

uint64_t sub_1000060B4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  v86 = a1;
  v4 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v4 - 8);
  v82 = &v78 - v5;
  v87 = sub_100043328();
  v85 = *(v87 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v87);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v78 - v8;
  __chkstk_darwin(v9);
  v83 = &v78 - v10;
  __chkstk_darwin(v11);
  v79 = &v78 - v12;
  v91 = sub_100044108();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v91);
  v90 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  v18 = sub_1000440C8();
  __chkstk_darwin(v18 - 8);
  v19 = sub_1000028F8(&qword_100059078);
  v81 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v78 - v20;
  sub_100044388();
  v22 = HKLogActivity;
  sub_100043538();

  v23 = *(v3 + 40);
  v99 = v23;
  if (v23)
  {
    v24 = sub_100044238();
    v25 = [v23 BOOLForKey:v24];

    if (v25)
    {
      sub_100044388();
      v26 = HKLogActivity;
      sub_100043538();

      sub_1000092B4(5);
      sub_1000440B8();
      type metadata accessor for FitnessWidgetProvider.ActivityEntry();
      sub_100009DC8(&qword_100059070, type metadata accessor for FitnessWidgetProvider.ActivityEntry);
      sub_100044118();
      v89(v21);
      return (*(v81 + 8))(v21, v19);
    }
  }

  v28 = *(v13 + 16);
  v29 = v91;
  v28(v17, v86, v91);
  v28(v90, v17, v29);
  v30 = *(v3 + 16);
  v86 = *(v3 + 8);
  v98 = *(v3 + 24);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v13 + 32))(v33 + v31, v17, v29);
  v34 = (v33 + v32);
  v36 = v88;
  v35 = v89;
  *v34 = v89;
  v34[1] = v36;
  v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  v38 = *(v3 + 32);
  v37[1] = *(v3 + 16);
  v37[2] = v38;
  *v37 = *v3;
  v39 = objc_opt_self();
  v81 = v30;

  sub_100008B58(&v98, &aBlock);

  sub_10000A1F8(&v99, &aBlock, &qword_100059080);
  v40 = [v39 sharedBehavior];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 isStandalonePhoneFitnessMode];

    v43 = v87;
    if (v42)
    {
      sub_100044388();
      v44 = HKLogActivity;
      sub_100043538();

      v45 = v90;
      sub_100006BC0(v90, v35, v36, v3);

      return (*(v13 + 8))(v45, v91);
    }

    v46 = v82;
    v47 = v3;
    sub_1000080F0(v82);
    v48 = v85;
    if ((*(v85 + 48))(v46, 1, v43) == 1)
    {
      (*(v13 + 8))(v90, v91);
      sub_100009D50(v46, &qword_100058F90);
    }

    else
    {
      v49 = v79;
      (*(v48 + 32))(v79, v46, v43);
      v50 = v83;
      sub_100043318();
      sub_1000432B8();
      v52 = v51;
      v53 = *(v48 + 8);
      v53(v50, v43);
      if (v52 < 300.0)
      {
        sub_100044388();
        v54 = v49;
        v55 = HKLogActivity;
        sub_100043538();

        v56 = v90;
        sub_100006BC0(v90, v89, v36, v47);

        v53(v54, v43);
        return (*(v13 + 8))(v56, v91);
      }

      v53(v49, v43);
      (*(v13 + 8))(v90, v91);
    }

    v57 = objc_opt_self();
    v58 = swift_allocObject();
    v58[2] = 0x4010000000000000;
    v58[3] = sub_100008ABC;
    v58[4] = v33;
    v96 = sub_100008BEC;
    v97 = v58;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_10000832C;
    v95 = &unk_1000567B0;
    v59 = _Block_copy(&aBlock);

    v60 = [v57 scheduledTimerWithTimeInterval:0 repeats:v59 block:4.0];
    _Block_release(v59);
    v61 = v84;
    sub_100043318();
    v62 = v85;
    if (qword_100058DE0 != -1)
    {
      swift_once();
    }

    v63 = [objc_allocWithZone(HKNanoSyncControl) initWithHealthStore:qword_10005C9F8];
    v64 = v83;
    (*(v62 + 16))(v83, v61, v43);
    v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v66 = (v6 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = v67 + v65;
    v69 = v87;
    (*(v62 + 32))(v68, v64, v87);
    *(v67 + v66) = v60;
    v70 = (v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_100008ABC;
    v70[1] = v33;
    v96 = sub_100008CC0;
    v97 = v67;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_100008814;
    v95 = &unk_100056800;
    v71 = _Block_copy(&aBlock);

    v72 = v60;

    [v63 forceNanoSyncWithOptions:1 completion:v71];
    _Block_release(v71);
    v73 = v80;
    sub_100043318();
    v74 = v99;
    if (v99)
    {
      isa = sub_1000432D8().super.isa;
      v76 = sub_100044238();
      [v74 setObject:isa forKey:v76];
    }

    else
    {
    }

    v77 = *(v62 + 8);
    v77(v73, v69);
    return (v77)(v84, v69);
  }

  else
  {
    result = (*(v13 + 8))(v90, v91);
    __break(1u);
  }

  return result;
}

id sub_100006BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a3;
  v64 = a2;
  v80 = a1;
  v73 = sub_100043F68();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100043F88();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100044028();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v60 - v8;
  v9 = sub_100043328();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v60 - v14;
  sub_100043318();
  v75 = dispatch_group_create();
  dispatch_group_enter(v75);
  sub_100044388();
  v16 = HKLogActivity;
  sub_100043538();

  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v17 = v10 + 16;
  v82 = *(v10 + 16);
  v83 = qword_10005CA08;
  v82(v12, v15, v9);
  v18 = *(v10 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = v11 + v19 + 7;
  v21 = v15;
  v74 = v15;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v9;
  v67 = v10;
  v25 = v10;
  v26 = v24;
  v81 = *(v25 + 32);
  v81(v23 + v19, v12, v24);
  v27 = v75;
  *(v23 + v22) = v75;
  v28 = v27;
  v75 = v28;
  sub_10000FA98(v21, 0, sub_100009DB4, v23);

  sub_100044388();
  v29 = HKLogActivity;
  sub_100043538();

  dispatch_group_enter(v28);
  v30 = v74;
  v60[1] = v17;
  v82(v12, v74, v26);
  v60[0] = v18;
  v31 = swift_allocObject();
  v61 = v19;
  v63 = v12;
  v81(v31 + v19, v12, v26);
  v62 = v22;
  v32 = v75;
  *(v31 + v22) = v75;
  v33 = v32;
  sub_1000103B4(v30, 0, sub_10000A2B0, v31);

  v34 = v78;
  sub_1000440F8();
  v35 = v77;
  v36 = v79;
  v37 = v76;
  (*(v77 + 104))(v79, enum case for WidgetFamily.systemMedium(_:), v76);
  sub_100009DC8(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v34, v37);
  v39 = v30;
  if (aBlock[0] != v88)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v41 = result;
    v42 = [result isStandalonePhoneFitnessMode];

    if ((v42 & 1) == 0)
    {
      dispatch_group_enter(v33);
      sub_100044388();
      v43 = HKLogActivity;
      sub_100043538();

      v44 = v63;
      v82(v63, v30, v26);
      v45 = v62;
      v46 = swift_allocObject();
      v81(v46 + v61, v44, v26);
      *(v46 + v45) = v33;
      v47 = v33;
      sub_1000114B4(v30, 0, sub_100009E20, v46);
    }

LABEL_7:
    sub_100009BB8(0, &qword_100059090);
    v48 = sub_1000443D8();
    v49 = v65;
    v50 = *(v65 + 8);
    v87 = *(v65 + 24);
    v88 = v50;
    v86 = *(v65 + 40);
    v51 = swift_allocObject();
    v52 = v66;
    *(v51 + 16) = v64;
    *(v51 + 24) = v52;
    v53 = v49[1];
    *(v51 + 32) = *v49;
    *(v51 + 48) = v53;
    *(v51 + 64) = v49[2];
    aBlock[4] = sub_100009E14;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015BC4;
    aBlock[3] = &unk_1000568F0;
    v54 = _Block_copy(aBlock);

    sub_100008B58(&v88, v84);
    sub_100008B58(&v87, v84);
    sub_10000A1F8(&v86, v84, &qword_100059080);
    v55 = v26;
    v56 = v68;
    sub_100043F78();
    v84[0] = &_swiftEmptyArrayStorage;
    sub_100009DC8(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000028F8(&qword_100059098);
    sub_100009C98();
    v57 = v39;
    v58 = v70;
    v59 = v73;
    sub_100044518();
    sub_100044398();
    _Block_release(v54);

    (*(v72 + 8))(v58, v59);
    (*(v69 + 8))(v56, v71);
    (*(v67 + 8))(v57, v55);
  }

  __break(1u);
  return result;
}

void sub_100007590(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_100044388();
  v5 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100045500;
  v7 = v5;
  sub_1000432E8();
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = -v8;
  sub_1000028F8(&qword_1000590A0);
  v9 = sub_1000444B8();
  v11 = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = sub_100009CFC();
  *(v6 + 72) = v9;
  *(v6 + 80) = v11;
  sub_100043538();

  sub_100044388();
  v12 = HKLogActivity;
  sub_100043538();

  dispatch_group_leave(a4);
}

void sub_10000770C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_100044388();
  v5 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100045500;
  v7 = v5;
  sub_1000432E8();
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = -v8;
  sub_1000028F8(&qword_1000590A0);
  v9 = sub_1000444B8();
  v11 = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = sub_100009CFC();
  *(v6 + 72) = v9;
  *(v6 + 80) = v11;
  sub_100043538();

  dispatch_group_leave(a4);
}

void sub_100007834(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_100044388();
  v5 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100045500;
  v7 = v5;
  sub_1000432E8();
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = -v8;
  sub_1000028F8(&qword_1000590A0);
  v9 = sub_1000444B8();
  v11 = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = sub_100009CFC();
  *(v6 + 72) = v9;
  *(v6 + 80) = v11;
  sub_100043538();

  dispatch_group_leave(a4);
}

uint64_t sub_100007964(void (*a1)(void), uint64_t a2)
{
  v45 = a2;
  v3 = sub_1000440C8();
  __chkstk_darwin(v3 - 8);
  v44 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v39);
  v40 = v37 - v5;
  v6 = sub_1000028F8(&qword_100058F88);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v41 = sub_100043328();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000028F8(&qword_100059078);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  if (qword_100058DF0 != -1)
  {
    swift_once();
  }

  v15 = qword_10005CA08;
  sub_1000028F8(&qword_1000590C0);
  sub_1000443E8();
  v16 = v46;
  if (v46 && (v17 = sub_10001AEFC(), v16, v17))
  {
    sub_1000028F8(&qword_100059088);
    v18 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
    v19 = *(*(v18 - 1) + 80);
    v38 = a1;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    v37[1] = v21;
    *(v21 + 16) = xmmword_1000453B0;
    v22 = v21 + v20;
    sub_100043318();
    sub_1000124E4(v8);
    v23 = sub_1000440E8();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_1000443E8();
    v37[0] = v46;
    v24 = v40;
    sub_1000443E8();
    sub_1000028F8(&qword_1000597A0);
    sub_1000443E8();
    v25 = v46;
    v26 = *(v15 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
    (*(v9 + 32))(v22, v11, v41);
    sub_1000029D8(v8, v22 + v18[5], &qword_100058F88);
    *(v22 + v18[6]) = v37[0];
    sub_1000029D8(v24, v22 + v18[7], &qword_100058F90);
    *(v22 + v18[8]) = v25;
    *(v22 + v18[9]) = 0;
    *(v22 + v18[10]) = v26;
    a1 = v38;
    sub_1000440B8();
    sub_100009DC8(&qword_100059070, type metadata accessor for FitnessWidgetProvider.ActivityEntry);
    sub_100044118();
    sub_100044388();
    v27 = HKLogActivity;
    sub_100043538();
  }

  else
  {
    sub_100044388();
    v28 = HKLogActivity;
    sub_100043538();

    sub_1000028F8(&qword_100059088);
    v29 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
    v30 = (*(*(v29 - 1) + 80) + 32) & ~*(*(v29 - 1) + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000453B0;
    v32 = v31 + v30;
    sub_100043318();
    v33 = v29[5];
    v34 = sub_1000440E8();
    (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
    (*(v9 + 56))(v32 + v29[7], 1, 1, v41);
    v35 = *(v15 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
    *(v32 + v29[6]) = 0;
    *(v32 + v29[8]) = 0;
    *(v32 + v29[9]) = 1;
    *(v32 + v29[10]) = v35;
    sub_1000440B8();
    sub_100009DC8(&qword_100059070, type metadata accessor for FitnessWidgetProvider.ActivityEntry);
    sub_100044118();
  }

  a1(v14);
  return (*(v42 + 8))(v14, v43);
}

uint64_t sub_1000080F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = sub_100044238();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      sub_100044508();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_100043328();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_100009D50(&v12, &qword_1000590B0);
  v9 = sub_100043328();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t sub_10000824C(double a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_100044388();
  v5 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000453B0;
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = a1;
  v7 = v5;
  sub_100043538();

  return a3(v8);
}

void sub_10000832C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100008394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v36 = a5;
  v37 = sub_100043F68();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100043F88();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100044368();
    v35 = v11;
    v14 = HKLogActivity;
    sub_1000028F8(&unk_100059790);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100045500;
    v16 = v14;
    sub_1000432E8();
    *(v15 + 56) = &type metadata for Double;
    *(v15 + 64) = &protocol witness table for Double;
    *(v15 + 32) = -v17;
    aBlock[0] = a2;
    sub_1000028F8(&qword_1000590A0);
    v18 = sub_1000444B8();
    v20 = v19;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = sub_100009CFC();
    *(v15 + 72) = v18;
    *(v15 + 80) = v20;
    v11 = v35;
    sub_100043538();
  }

  else
  {
    sub_100044388();
    v21 = HKLogActivity;
    sub_1000028F8(&unk_100059790);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000453B0;
    v23 = v21;
    sub_1000432E8();
    *(v22 + 56) = &type metadata for Double;
    *(v22 + 64) = &protocol witness table for Double;
    *(v22 + 32) = -v24;
    sub_100043538();
  }

  sub_100009BB8(0, &qword_100059090);
  v25 = sub_1000443D8();
  v26 = swift_allocObject();
  v27 = v38;
  v28 = v39;
  v29 = v36;
  v26[2] = v38;
  v26[3] = v29;
  v26[4] = v28;
  aBlock[4] = sub_100009C40;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = &unk_100056850;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_100043F78();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009DC8(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100009C98();
  v32 = v37;
  sub_100044518();
  sub_1000443F8();
  _Block_release(v30);

  (*(v7 + 8))(v9, v32);
  return (*(v11 + 8))(v13, v10);
}

void sub_100008814(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000888C@<X0>(uint64_t a1@<X8>)
{
  sub_100043318();
  v2 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  v3 = v2[5];
  v4 = sub_1000440E8();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = sub_100043328();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  if (qword_100058DF0 != -1)
  {
    result = swift_once();
  }

  v8 = *(qword_10005CA08 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
  *(a1 + v2[6]) = 0;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = v8;
  return result;
}

uint64_t sub_1000089F8()
{
  v1 = sub_100044108();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

id sub_100008ABC()
{
  v1 = *(sub_100044108() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_100006BC0(v0 + v2, v6, v7, v0 + v4);
}

uint64_t sub_100008BB4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008C10()
{
  v1 = sub_100043328();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100008CC0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100043328() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100008394(a1, a2, v2 + v6, v8, v10, v11);
}

size_t sub_100008DA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1000028F8(a5);
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

size_t sub_100008FC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_1000028F8(a5);
  v14 = *(sub_1000028F8(a7) - 8);
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
  v19 = *(sub_1000028F8(a7) - 8);
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

char *sub_1000091B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028F8(&qword_1000590C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000092B4(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = sub_1000028F8(&qword_100058F88);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  v68 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100043328();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v58 - v15;
  result = sub_100043318();
  if (a1 < 0)
  {
    goto LABEL_34;
  }

  v69 = v11;
  v59 = v12;
  if (!a1)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_30:
    (*(v59 + 8))(v70, v69);
    return v18;
  }

  v17 = 0;
  v66 = (v12 + 32);
  v67 = (v12 + 56);
  v18 = &_swiftEmptyArrayStorage;
  v19 = 1.0;
  v20 = 0.0;
  v60 = a1;
  v63 = v7;
  v64 = v4;
  v62 = v8;
LABEL_5:
  v61 = v17 + 1;
  v21 = &qword_100056290;
  v22 = 14;
  v23 = v20;
  while (1)
  {
    v71 = v18;
    v24 = *(v21 - 4);
    v25 = *(v21 - 3);
    v27 = *(v21 - 2);
    v26 = *(v21 - 1);
    v28 = *v21;
    v20 = v23 + v19;
    sub_1000432C8();
    v29 = sub_1000440E8();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
    v30 = 0;
    if (v24 >= 0.0)
    {
      result = [objc_opt_self() sharedBehavior];
      if (!result)
      {
        goto LABEL_35;
      }

      v31 = result;
      v65 = [result isStandalonePhoneFitnessMode];

      v30 = [objc_allocWithZone(HKActivitySummary) init];
      v32 = objc_opt_self();
      v33 = [v32 kilocalorieUnit];
      v34 = objc_opt_self();
      v35 = [v34 quantityWithUnit:v33 doubleValue:500.0];

      [v30 setActiveEnergyBurnedGoal:v35];
      v36 = [v32 kilocalorieUnit];
      v37 = [v34 quantityWithUnit:v36 doubleValue:v24];

      [v30 setActiveEnergyBurned:v37];
      v38 = [v32 minuteUnit];
      v39 = 30.0;
      if (v65)
      {
        v39 = 0.0;
        v40 = 0.0;
      }

      else
      {
        v40 = v25;
      }

      if (v65)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = 8.0;
      }

      if (v65)
      {
        v27 = 0.0;
      }

      v42 = [v34 quantityWithUnit:v38 doubleValue:v39];

      [v30 setAppleExerciseTimeGoal:v42];
      v43 = [v32 minuteUnit];
      v44 = v40;
      v19 = 1.0;
      v45 = [v34 quantityWithUnit:v43 doubleValue:v44];

      [v30 setAppleExerciseTime:v45];
      v46 = [v32 countUnit];
      v47 = [v34 quantityWithUnit:v46 doubleValue:v41];

      [v30 setAppleStandHoursGoal:v47];
      v48 = [v32 countUnit];
      v49 = [v34 quantityWithUnit:v48 doubleValue:v27];

      [v30 setAppleStandHours:v49];
      v50 = [v32 countUnit];
      v51 = [v34 quantityWithUnit:v50 doubleValue:v26];

      v7 = v63;
      [v30 setStepCount:v51];

      v8 = v62;
      v52 = [v32 mileUnit];
      v53 = [v34 quantityWithUnit:v52 doubleValue:v28];

      [v30 setDistanceWalkingRunning:v53];
      v4 = v64;
    }

    v54 = v69;
    result = (*v67)(v4, 1, 1, v69);
    if (v24 >= 0.0)
    {
      break;
    }

    v55 = 0;
LABEL_23:
    (*v66)(v10, v72, v54);
    sub_1000029D8(v7, &v10[v8[5]], &qword_100058F88);
    *&v10[v8[6]] = v30;
    sub_1000029D8(v4, &v10[v8[7]], &qword_100058F90);
    *&v10[v8[8]] = v55;
    v10[v8[9]] = 0;
    v10[v8[10]] = 0;
    v18 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100008DA4(0, v18[2] + 1, 1, v18, &qword_100059088, &unk_100045630, type metadata accessor for FitnessWidgetProvider.ActivityEntry);
    }

    v57 = v18[2];
    v56 = v18[3];
    if (v57 >= v56 >> 1)
    {
      v18 = sub_100008DA4(v56 > 1, v57 + 1, 1, v18, &qword_100059088, &unk_100045630, type metadata accessor for FitnessWidgetProvider.ActivityEntry);
    }

    v18[2] = v57 + 1;
    sub_100009B54(v10, v18 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v57);
    v21 += 5;
    v23 = v20;
    if (!--v22)
    {
      v17 = v61;
      if (v61 == v60)
      {
        goto LABEL_30;
      }

      goto LABEL_5;
    }
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v23 <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v23 >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    v55 = sub_10001BD1C(v23 % 14);
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100009B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009BB8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009C00()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100009C40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 isValid];
  if (result)
  {
    return v2([v1 invalidate]);
  }

  return result;
}

unint64_t sub_100009C98()
{
  result = qword_100059770;
  if (!qword_100059770)
  {
    sub_100002940(&qword_100059098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059770);
  }

  return result;
}

unint64_t sub_100009CFC()
{
  result = qword_1000590A8;
  if (!qword_1000590A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000590A8);
  }

  return result;
}

uint64_t sub_100009D50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000028F8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009DC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100009E2C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100043328() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_100007834(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100009F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100043328() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_100007590(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10000A000()
{
  v1 = sub_100043328();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10000A0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100043328() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_10000770C(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10000A140()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000A19C(uint64_t a1)
{
  v2 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A1F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000028F8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_1000590F0);
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

uint64_t sub_10000A3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_1000590F0);
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

uint64_t type metadata accessor for HeaderLabel()
{
  result = qword_100059150;
  if (!qword_100059150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A4EC()
{
  sub_10000A570();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000A570()
{
  if (!qword_100059160)
  {
    sub_10000A5CC();
    v0 = sub_1000435C8();
    if (!v1)
    {
      atomic_store(v0, &qword_100059160);
    }
  }
}

unint64_t sub_10000A5CC()
{
  result = qword_100059168;
  if (!qword_100059168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059168);
  }

  return result;
}

uint64_t sub_10000A63C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - v4;
  v6 = (v1 + *(type metadata accessor for HeaderLabel() + 20));
  v8 = *v6;
  v7 = v6[1];
  v31[6] = v8;
  v31[7] = v7;
  sub_10000A8C4();
  v31[4] = sub_1000444D8();
  v31[5] = v9;
  v10 = sub_100043C48();
  v12 = v11;
  v14 = v13;
  v15 = sub_100043BB8();
  v17 = v16;
  v19 = v18;
  v31[1] = v20;
  sub_10000A918(v10, v12, v14 & 1);

  sub_1000028F8(&qword_1000590F0);
  sub_1000435B8();
  sub_100043AD8();
  v21 = enum case for Font.Design.rounded(_:);
  v22 = sub_100043AB8();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v5, v21, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  sub_100043AE8();
  sub_10000A928(v5);
  v24 = sub_100043BF8();
  v26 = v25;
  LOBYTE(v22) = v27;
  v29 = v28;

  sub_10000A918(v15, v17, v19 & 1);

  result = swift_getKeyPath();
  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_10000A8C4()
{
  result = qword_1000591A8;
  if (!qword_1000591A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591A8);
  }

  return result;
}

uint64_t sub_10000A918(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000A928(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_1000591A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A99C()
{
  result = qword_1000591B0;
  if (!qword_1000591B0)
  {
    sub_100002940(&qword_1000591B8);
    sub_10000AA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591B0);
  }

  return result;
}

unint64_t sub_10000AA28()
{
  result = qword_1000591C0;
  if (!qword_1000591C0)
  {
    sub_100002940(&qword_1000591C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000591C0);
  }

  return result;
}

__n128 sub_10000AA8C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000AA98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000AAF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_10000AB9C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v5 = [objc_opt_self() sedentaryColors];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a2];

    if (v7)
    {
      *a3 = sub_100043D98();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000AC20()
{
  v0 = sub_100043D28();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_100043D88();
  qword_1000591E0 = result;
  return result;
}

uint64_t sub_10000ACF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a1;
  v78 = a6;
  v10 = sub_1000439D8();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100043868();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000028F8(&qword_1000591E8);
  __chkstk_darwin(v13 - 8);
  v62 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v57 - v16;
  v65 = sub_1000028F8(&qword_1000591F0);
  __chkstk_darwin(v65);
  v19 = v57 - v18;
  v69 = sub_1000028F8(&qword_1000591F8);
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = v57 - v20;
  v21 = sub_1000028F8(&qword_100059200);
  v72 = *(v21 - 8);
  v73 = v21;
  __chkstk_darwin(v21);
  v70 = v57 - v22;
  sub_10000D63C(a2, a4);
  v24 = v23;
  v63 = sub_10000D028(a2, a4);
  *v19 = sub_100043908();
  *(v19 + 1) = 0x4008000000000000;
  v19[16] = 0;
  v25 = *(sub_1000028F8(&qword_100059208) + 44);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  v27 = a3 & 1;
  *(v26 + 24) = a3 & 1;
  v77 = a3;
  v28 = (a3 >> 8) & 1;
  *(v26 + 25) = v28;
  *(v26 + 32) = a4;
  *(v26 + 40) = a5;
  *(v26 + 48) = v24;

  v79 = a2;

  result = sub_100043848();
  *v17 = result;
  *(v17 + 1) = 0;
  v17[16] = 0;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000028F8(&qword_100059210);
    v60 = a5;
    v57[1] = v24;
    v30 = &v19[v25];
    v31 = swift_allocObject();
    *(v31 + 16) = v79;
    v58 = v19;
    *(v31 + 24) = v27;
    *(v31 + 25) = v28;
    *(v31 + 32) = a4;
    *(v31 + 40) = a5;
    v59 = a4;
    v32 = v63;
    *(v31 + 48) = v63;
    *(v31 + 56) = v61 & 1;

    sub_1000028F8(&qword_100059218);
    sub_10000D9A8();
    sub_100043E68();
    v33 = v62;
    sub_10000A1F8(v17, v62, &qword_1000591E8);
    *v30 = sub_10000D900;
    v30[1] = v26;
    v34 = sub_1000028F8(&qword_100059230);
    sub_10000A1F8(v33, &v19[v25 + *(v34 + 48)], &qword_1000591E8);

    sub_100009D50(v17, &qword_1000591E8);
    sub_100009D50(v33, &qword_1000591E8);

    KeyPath = swift_getKeyPath();
    v36 = v65;
    v37 = v58;
    v38 = &v58[*(v65 + 36)];
    v39 = *(sub_1000028F8(&qword_100059238) + 28);
    v40 = enum case for LayoutDirection.leftToRight(_:);
    v41 = sub_100043658();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = KeyPath;
    v43 = v67;
    v42 = v68;
    v44 = v71;
    (*(v68 + 104))(v67, enum case for ColorRenderingMode.nonLinear(_:), v71);
    v45 = sub_10000DAB0();
    v46 = v64;
    sub_100043C98();
    (*(v42 + 8))(v43, v44);
    sub_100009D50(v37, &qword_1000591F0);
    v47 = v74;
    sub_1000439B8();
    v80 = v36;
    v81 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = v69;
    v49 = v70;
    sub_100043CF8();
    (*(v75 + 8))(v47, v76);
    (*(v66 + 8))(v46, v50);
    sub_10000BF50(v32, v79, v77 & 0x101, v59);
    v52 = v51;
    v54 = v53;
    LOBYTE(v43) = v55;

    v80 = v50;
    v81 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v56 = v73;
    sub_100043CB8();
    sub_10000A918(v52, v54, v43 & 1);

    return (*(v72 + 8))(v49, v56);
  }

  return result;
}

uint64_t sub_10000B498@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_100043858();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v14 = sub_1000028F8(&qword_100059278);
  return sub_10000B530(a2, a3 & 0x101, a4, a5, a1, a6, a7 + *(v14 + 44));
}

uint64_t sub_10000B530@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a1;
  v46 = a6;
  v42 = a5;
  v43 = a4;
  v44 = a2;
  v9 = sub_100043608();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000028F8(&qword_100059280);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_100043EC8();
  result = sub_1000435E8();
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v51;
    v41 = v52;
    v39 = v50;
    v38 = v49;
    v37 = v48;
    v36 = v47;
    (*(v10 + 16))(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v9);
    v21 = *(v10 + 80);
    v34 = v13;
    v35 = v19;
    v22 = (v21 + 48) & ~v21;
    v42 = v16;
    v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v45;
    v25 = BYTE1(v44);
    *(v24 + 24) = v44 & 1;
    *(v24 + 25) = v25 & 1;
    v26 = v43;
    *(v24 + 32) = a3;
    *(v24 + 40) = v26;
    (*(v10 + 32))(v24 + v22, v12, v9);
    *(v24 + v23) = v46;

    sub_1000028F8(&qword_100059288);
    sub_100002F14(&qword_100059290, &qword_100059288);
    v27 = v35;
    sub_100043E68();
    v28 = *(v14 + 16);
    v29 = v42;
    v30 = v34;
    v28(v42, v27, v34);
    *a7 = 2;
    *(a7 + 8) = v36;
    *(a7 + 16) = v37;
    *(a7 + 24) = v38;
    *(a7 + 32) = v39;
    v31 = v41;
    *(a7 + 40) = v40;
    *(a7 + 48) = v31;
    v32 = sub_1000028F8(&qword_100059298);
    v28((a7 + *(v32 + 48)), v29, v30);
    v33 = *(v14 + 8);
    v33(v27, v30);
    return (v33)(v29, v30);
  }

  return result;
}

id sub_10000B8DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  if (qword_100058D58 != -1)
  {
    swift_once();
  }

  v10 = qword_1000591D8;
  v11 = qword_100058D50;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1000591D0;

  result = sub_1000435F8();
  v15 = v14;
  v16 = 0.0;
  if (a4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(a4 + 16) <= a1)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    result = *(a4 + 8 * a1 + 32);
    if (result)
    {
      result = [result state];
      v17 = 0.4;
      if (result != 1)
      {
        v17 = 0.0;
      }

      if (result)
      {
        v16 = v17;
      }

      else
      {
        v16 = 1.0;
      }
    }
  }

  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a2 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_30;
  }

  v18 = a2 / a3;
  if (!(a2 / a3))
  {
    goto LABEL_27;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL && v18 == -1)
  {
    goto LABEL_31;
  }

  v19 = (v15 + -2.0 - a2 + 1.0) / a2;
  if ((a1 + 1) % v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  sub_100043EC8();
  result = sub_1000435E8();
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v19;
  *(a5 + 24) = v16;
  *(a5 + 32) = v20;
  *(a5 + 40) = v21;
  *(a5 + 48) = v22;
  *(a5 + 56) = v23;
  *(a5 + 64) = v24;
  *(a5 + 72) = v25;
  return result;
}

void sub_10000BAFC(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W6>, uint64_t a6@<X8>)
{
  v36 = a5;
  v11 = sub_1000028F8(&qword_1000591A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for StandChart.LegendLabel();
  __chkstk_darwin(v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v35 - v23;
  if (!a3)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_19;
  }

  v25 = a2 / a3;
  if (!(a2 / a3))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_20;
  }

  if (!(a1 % v25))
  {
    v35 = v21;
    if (!a4)
    {
      v29 = sub_100043328();
      (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
      goto LABEL_16;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 16) > a1)
      {
        v27 = sub_100043328();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v16, a4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * a1, v27);
        (*(v28 + 56))(v16, 0, 1, v27);
LABEL_16:
        sub_10000DFB0(v16, v19);
        v19[*(v17 + 20)] = v36 & 1;
        v30 = *(v17 + 24);
        sub_100043AD8();
        v31 = enum case for Font.Design.rounded(_:);
        v32 = sub_100043AB8();
        v33 = *(v32 - 8);
        (*(v33 + 104))(v13, v31, v32);
        (*(v33 + 56))(v13, 0, 1, v32);
        v34 = sub_100043AE8();
        sub_100009D50(v13, &qword_1000591A0);
        *&v19[v30] = v34;
        sub_10000E020(v19, v24);
        sub_10000E020(v24, a6);
        (*(v35 + 56))(a6, 0, 1, v17);
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = *(v21 + 56);

  v26(a6, 1, 1, v17, v22);
}

void sub_10000BF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a1;
  v71 = sub_100043328();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000028F8(&qword_100059260);
  __chkstk_darwin(v8 - 8);
  v10 = v56 - v9;
  v69 = sub_1000028F8(&qword_100058F90);
  v61 = *(v69 - 8);
  __chkstk_darwin(v69);
  v59 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v65 = v56 - v14;
  if (a4 < 0)
  {
LABEL_46:
    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
    v60 = a3;
    if (a4)
    {
      v16 = 0;
      v64 = v66 + 16;
      if (a2 >= 0)
      {
        v17 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v17 = a2;
      }

      v56[1] = v17;
      v57 = (v66 + 56);
      v58 = (v66 + 32);
      v68 = (v61 + 56);
      v62 = (v66 + 8);
      v63 = (v61 + 48);
      v18 = v67;
      while (1)
      {
        if (!v18)
        {
          (*v68)(v10, 1, 1, v69);
          goto LABEL_8;
        }

        if (v16 >= *(v18 + 16))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v72 = v15;
        v19 = a4;
        (*(v66 + 16))(v70, v18 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v16, v71, v13);
        if (!a2)
        {
          break;
        }

        sub_1000432A8();
        v21 = v20;
        if (a2 >> 62)
        {
          v22 = sub_1000445E8();
          if (!v22)
          {
            break;
          }
        }

        else
        {
          v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            break;
          }
        }

        v23 = 0;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v24 = sub_1000445C8();
          }

          else
          {
            if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v24 = *(a2 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          [v24 timeStamp];
          if (vabdd_f64(v27, v21) < 2.22044605e-16)
          {
            break;
          }

          ++v23;
          if (v26 == v22)
          {
            goto LABEL_25;
          }
        }

        v28 = [v25 state];

        if (v28)
        {
          break;
        }

        v34 = v71;
        (*v58)(v10, v70, v71);
        (*v57)(v10, 0, 1, v34);
        v29 = 0;
LABEL_26:
        v30 = v69;
        (*v68)(v10, v29, 1, v69);
        v31 = (*v63)(v10, 1, v30);
        a4 = v19;
        v18 = v67;
        v15 = v72;
        if (v31 != 1)
        {
          sub_10000DFB0(v10, v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100008F80(0, v15[2] + 1, 1, v15);
          }

          v33 = v15[2];
          v32 = v15[3];
          if (v33 >= v32 >> 1)
          {
            v15 = sub_100008F80(v32 > 1, v33 + 1, 1, v15);
          }

          v15[2] = v33 + 1;
          sub_10000DFB0(v65, v15 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v33);
          v18 = v67;
          goto LABEL_9;
        }

LABEL_8:
        sub_100009D50(v10, &qword_100059260);
LABEL_9:
        if (++v16 == a4)
        {
          goto LABEL_35;
        }
      }

LABEL_25:
      (*v62)(v70, v71);
      v29 = 1;
      goto LABEL_26;
    }

LABEL_35:
    v35 = v15[2];
    if (v35)
    {
      v73 = &_swiftEmptyArrayStorage;
      sub_10000460C(0, v35, 0);
      v36 = v73;
      v37 = v15 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v71 = *(v61 + 72);
      v72 = v15;
      v38 = v59;
      do
      {
        sub_10000A1F8(v37, v38, &qword_100058F90);
        v39 = sub_10000DB94(v38);
        v41 = v40;
        sub_100009D50(v38, &qword_100058F90);
        v73 = v36;
        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_10000460C((v42 > 1), v43 + 1, 1);
          v38 = v59;
          v36 = v73;
        }

        v36[2] = v43 + 1;
        v44 = &v36[2 * v43];
        v44[4] = v39;
        v44[5] = v41;
        v37 += v71;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = &_swiftEmptyArrayStorage;
    }

    v45 = [objc_opt_self() mainBundle];
    v46 = sub_100044238();
    v47 = sub_100044238();
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    sub_100044258();
    sub_1000028F8(&unk_100059790);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1000453B0;
    v73 = v36;
    sub_1000028F8(&qword_100059268);
    sub_100002F14(&qword_100059270, &qword_100059268);
    v50 = sub_1000441E8();
    v52 = v51;

    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_100009CFC();
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;
    v53 = sub_100044248();
    v55 = v54;

    v73 = v53;
    v74 = v55;
    sub_10000A8C4();
    sub_100043C48();
  }
}

uint64_t sub_10000C718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a4 <= 5.0)
  {
    v7 = a4;
  }

  else
  {
    v7 = 5.0;
  }

  sub_1000028F8(&qword_100059360);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100045500;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  sub_100043E78();
  sub_100043F48();
  sub_100043F38();
  sub_100043618();
  sub_100043EC8();
  sub_1000435E8();
  *&v18[6] = v19;
  *&v18[22] = v20;
  *&v18[38] = v21;
  v9 = sub_100043A38();
  result = sub_100043568();
  *a3 = v7;
  *(a3 + 8) = v7;
  *(a3 + 16) = v15;
  *(a3 + 32) = v16;
  *(a3 + 48) = v17;
  *(a3 + 56) = 256;
  *(a3 + 104) = *(&v21 + 1);
  *(a3 + 90) = *&v18[32];
  *(a3 + 74) = *&v18[16];
  *(a3 + 58) = *v18;
  *(a3 + 112) = v9;
  *(a3 + 120) = v11;
  *(a3 + 128) = v12;
  *(a3 + 136) = v13;
  *(a3 + 144) = v14;
  *(a3 + 152) = 0;
  return result;
}

double sub_10000C8AC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000438D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B88();
  (*(v3 + 104))(v5, enum case for RoundedCornerStyle.continuous(_:), v2);
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  sub_100043B68();
  (*(v3 + 8))(v5, v2);
  v6 = v10;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_10000CA2C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100043548();
  return sub_10000CAB4;
}

void sub_10000CAB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10000CB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EA80();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000CB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EA80();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000CBC8(uint64_t a1)
{
  v2 = sub_10000EA80();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_10000CC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandChart.LegendLabel();
  if (*(a1 + *(v4 + 20)) == 1)
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = sub_100044238();
    v7 = sub_100044238();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_100044258();
    v11 = v10;
  }

  else
  {
    v9 = sub_10000DB94(a1);
    v11 = v12;
  }

  v39 = v9;
  v40 = v11;
  sub_10000A8C4();
  v13 = sub_100043C48();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = *(a1 + *(v4 + 24));
  v22 = swift_getKeyPath();
  v23 = v17 & 1;
  v51 = v17 & 1;
  v24 = qword_100058D60;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1000591E0;
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  *&v33 = v13;
  *(&v33 + 1) = v15;
  LOBYTE(v34) = v23;
  *(&v34 + 1) = v19;
  *&v35 = KeyPath;
  BYTE8(v35) = 1;
  *&v36 = v22;
  *(&v36 + 1) = v21;
  *&v37 = v26;
  *(&v37 + 1) = v25;
  *&v38 = v27;
  *(&v38 + 1) = 0x3FEB333333333333;
  v32[96] = 1;
  v28 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v28;
  v29 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v29;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v39 = v13;
  v40 = v15;
  v41 = v23;
  v42 = v19;
  v43 = KeyPath;
  v44 = 1;
  v45 = v22;
  v46 = v21;
  v47 = v26;
  v48 = v25;
  v49 = v27;
  v50 = 0x3FEB333333333333;

  sub_10000A1F8(&v33, v32, &qword_100059358);
  return sub_100009D50(&v39, &qword_100059358);
}

double sub_10000CEA4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100043858();
  v18 = 1;
  sub_10000CC14(v2, &v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_10000A1F8(&v19, &v10, &qword_100059350);
  sub_100009D50(v25, &qword_100059350);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v17[96];
  result = *v17;
  v8 = *&v17[16];
  *(a1 + 17) = *v17;
  *(a1 + 33) = v8;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 49) = v5;
  return result;
}

uint64_t sub_10000D004@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10000ACF4(*(v1 + 8), *v1, v2 | *(v1 + 8), *(v1 + 16), *(v1 + 24), a1);
}

unint64_t sub_10000D028(unint64_t a1, uint64_t a2)
{
  v55 = sub_1000433C8();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v64 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = sub_100043328();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  __chkstk_darwin(v15);
  v66 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  v20 = sub_1000433D8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000433B8();
  v68 = v19;
  sub_100043318();
  if (!a1)
  {
    goto LABEL_34;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_34:
    do
    {
LABEL_9:
      if ((a2 & 0x8000000000000000) == 0)
      {
        v27 = a2;
        if (a2)
        {
          v49 = v21;
          v50 = v20;
          v61 = v9;
          v69 = v10;
          v28 = 0;
          v60 = enum case for Calendar.Component.hour(_:);
          v29 = v5 + 104;
          v30 = *(v5 + 104);
          v31 = (v11 + 8);
          v58 = (v5 + 8);
          v59 = v30;
          v56 = (v11 + 32);
          v57 = (v11 + 48);
          v51 = (v11 + 16);
          v52 = v11;
          v65 = &_swiftEmptyArrayStorage;
          v48[1] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v53 = v5 + 104;
          v54 = a2;
          v32 = v55;
          do
          {
            v33 = v64;
            v34 = v29;
            v59(v64, v60, v32);
            v35 = v66;
            sub_100043368();
            v36 = v61;
            sub_1000433A8();
            v37 = *v31;
            v38 = v69;
            (*v31)(v35, v69);
            (*v58)(v33, v32);
            if ((*v57)(v36, 1, v38) == 1)
            {
              sub_100009D50(v36, &qword_100058F90);
              v29 = v34;
            }

            else
            {
              v39 = v38;
              v40 = *v56;
              v41 = v62;
              (*v56)(v62, v36, v39);
              (*v51)(v63, v41, v39);
              v42 = v65;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_100008D7C(0, v42[2] + 1, 1, v42);
              }

              v44 = v42[2];
              v43 = v42[3];
              if (v44 >= v43 >> 1)
              {
                v42 = sub_100008D7C(v43 > 1, v44 + 1, 1, v42);
              }

              v45 = v69;
              v37(v62, v69);
              v42[2] = v44 + 1;
              v46 = (*(v52 + 80) + 32) & ~*(v52 + 80);
              v65 = v42;
              v40(v42 + v46 + *(v52 + 72) * v44, v63, v45);
              v27 = v54;
              v32 = v55;
              v29 = v53;
            }

            ++v28;
          }

          while (v27 != v28);
          v10 = v69;
          v21 = v49;
          v20 = v50;
          v47 = v65;
        }

        else
        {
          v37 = *(v11 + 8);
          v47 = &_swiftEmptyArrayStorage;
        }

        v37(v68, v10);
        (*(v21 + 8))(v67, v20);
        return v47;
      }

      __break(1u);
LABEL_24:
      ;
    }

    while (!sub_1000445E8());
    result = sub_1000445E8();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (!result)
    {
      __break(1u);
LABEL_28:
      v24 = sub_1000445C8();
LABEL_8:
      v25 = v24;
      [v24 timeStamp];
      v2 = v66;
      sub_100043298();

      v26 = v68;
      (*(v11 + 8))(v68, v10);
      (*(v11 + 32))(v26, v2, v10);
      goto LABEL_9;
    }
  }

  result = sub_1000249E8(result);
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 16))
  {
    v24 = *(a1 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_10000D63C(int64_t a1, uint64_t a2)
{
  v4 = sub_100043328();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  __chkstk_darwin(v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000D028(a1, a2);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v30 = *(v7 + 16);
  v31 = &_swiftEmptyArrayStorage;
  if (!v30)
  {

    return;
  }

  v9 = 0;
  v25 = v29 + 8;
  v26 = v29 + 16;
  if (a1 >= 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = a1;
  }

  v22 = v10;
  v23 = v7;
  v24 = a1 >> 62;
  while (1)
  {
    if (!a1)
    {
      goto LABEL_22;
    }

    if (v9 >= *(v8 + 16))
    {
      goto LABEL_30;
    }

    v11 = v28;
    v12 = v29;
    v13 = v27;
    (*(v29 + 16))(v27, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v28);
    sub_1000432A8();
    v15 = v14;
    (*(v12 + 8))(v13, v11);
    if (v24)
    {
      break;
    }

    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_22:
    sub_1000442C8();
    if (v31[2] >= v31[3] >> 1)
    {
      sub_1000442F8();
    }

    ++v9;
    sub_100044308();
    if (v9 == v30)
    {

      return;
    }
  }

  v16 = sub_1000445E8();
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_11:
  v17 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = sub_1000445C8();
    }

    else
    {
      if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    [v18 timeStamp];
    if (vabdd_f64(v21, v15) >= 2.22044605e-16)
    {

      ++v17;
      if (v20 != v16)
      {
        continue;
      }
    }

    v8 = v23;
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10000D900@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10000B498(a1, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), a2);
}

uint64_t sub_10000D930(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10000D9A8()
{
  result = qword_100059220;
  if (!qword_100059220)
  {
    sub_100002940(&qword_100059218);
    sub_10000E6A4(&qword_100059228, type metadata accessor for StandChart.LegendLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059220);
  }

  return result;
}

uint64_t type metadata accessor for StandChart.LegendLabel()
{
  result = qword_1000592F8;
  if (!qword_1000592F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000DAB0()
{
  result = qword_100059240;
  if (!qword_100059240)
  {
    sub_100002940(&qword_1000591F0);
    sub_100002F14(&qword_100059248, &qword_100059250);
    sub_100002F14(&qword_100059258, &qword_100059238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059240);
  }

  return result;
}

uint64_t sub_10000DB94(uint64_t a1)
{
  v2 = sub_100043358();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100043328();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A1F8(a1, v8, &qword_100058F90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009D50(v8, &qword_100058F90);
    v13 = [objc_opt_self() mainBundle];
    v14 = sub_100044238();
    v15 = sub_100044238();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v17 = sub_100044258();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = [objc_allocWithZone(NSDateFormatter) init];
    sub_100043348();
    v19 = sub_100043338();
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    if (v21)
    {
      v28 = v19;
      v29 = v21;
      v26 = 26746;
      v27 = 0xE200000000000000;
      sub_10000A8C4();
      if (sub_1000444F8())
      {
      }

      else
      {
        v28 = v19;
        v29 = v21;
        v26 = 24938;
        v27 = 0xE200000000000000;
        sub_1000444F8();
      }
    }

    v22 = sub_100044238();
    [v18 setLocalizedDateFormatFromTemplate:v22];

    isa = sub_1000432D8().super.isa;
    v24 = [v18 stringFromDate:isa];

    v17 = sub_100044258();
    (*(v10 + 8))(v12, v9);
  }

  return v17;
}

uint64_t sub_10000DFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100058F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandChart.LegendLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E084()
{
  v1 = sub_100043608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_10000E15C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100043608() - 8);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B8DC(a1, v6, v7, v8, a2);
}

uint64_t sub_10000E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028F8(&qword_100058F90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000E318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000028F8(&qword_100058F90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10000E3DC()
{
  sub_10000E460();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000E460()
{
  if (!qword_100059018)
  {
    sub_100043328();
    v0 = sub_1000444C8();
    if (!v1)
    {
      atomic_store(v0, &qword_100059018);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for QuantityChart.Bar(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000E4CC(uint64_t *a1, int a2)
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

uint64_t sub_10000E514(uint64_t result, int a2, int a3)
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

unint64_t sub_10000E568()
{
  result = qword_100059338;
  if (!qword_100059338)
  {
    sub_100002940(&qword_100059340);
    sub_100002940(&qword_1000591F8);
    sub_100002940(&qword_1000591F0);
    sub_10000DAB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000E6A4(&qword_100059348, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059338);
  }

  return result;
}

uint64_t sub_10000E6A4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 initializeBufferWithCopyOfBuffer for StandChart.Dot(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StandChart.Dot(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StandChart.Dot(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10000E7F0()
{
  result = qword_100059378;
  if (!qword_100059378)
  {
    sub_100002940(&qword_100059380);
    sub_10000E87C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059378);
  }

  return result;
}

unint64_t sub_10000E87C()
{
  result = qword_100059388;
  if (!qword_100059388)
  {
    sub_100002940(&qword_100059390);
    sub_100002F14(&qword_100059398, &qword_1000593A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059388);
  }

  return result;
}

unint64_t sub_10000E97C()
{
  result = qword_1000593B8;
  if (!qword_1000593B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000593B8);
  }

  return result;
}

unint64_t sub_10000E9D4()
{
  result = qword_1000593C0;
  if (!qword_1000593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000593C0);
  }

  return result;
}

unint64_t sub_10000EA2C()
{
  result = qword_1000593C8;
  if (!qword_1000593C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000593C8);
  }

  return result;
}

unint64_t sub_10000EA80()
{
  result = qword_1000593D0;
  if (!qword_1000593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000593D0);
  }

  return result;
}

uint64_t sub_10000EAE4()
{
  v1 = *v0;

  return v1;
}

id sub_10000EB30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_10000EB88(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 56);
    *(Strong + 56) = a2;
    v5 = a2;
  }
}

uint64_t sub_10000EBF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalPauseRingsResumeDate;
  swift_beginAccess();
  return sub_10000A1F8(a1 + v4, a2, &qword_100058F90);
}

uint64_t sub_10000ECB0(uint64_t a1)
{
  v18[0] = a1;
  v3 = sub_100043F68();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100043F88();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000028F8(&qword_100058F90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v18 - v11;
  v18[1] = *(v1 + 16);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_10000A1F8(a1, v12, &qword_100058F90);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1000029D8(v12, v15 + v14, &qword_100058F90);
  aBlock[4] = sub_1000153E4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = &unk_100057068;
  v16 = _Block_copy(aBlock);

  sub_100043F78();
  v22 = &_swiftEmptyArrayStorage;
  sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100015B3C(&qword_100059770, &qword_100059098);
  sub_100044518();
  sub_1000443F8();
  _Block_release(v16);
  sub_100009D50(v18[0], &qword_100058F90);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_10000F078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalPauseRingsResumeDate;
    v5 = result;
    swift_beginAccess();
    sub_100015454(a2, v5 + v4);
    swift_endAccess();
  }

  return result;
}

id sub_10000F108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalLatestStatistics);
  *a2 = v2;
  return v2;
}

uint64_t sub_10000F168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100043F68();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100043F88();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v19 = a1;

  sub_100043F78();
  v23 = &_swiftEmptyArrayStorage;
  sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100015B3C(&qword_100059770, &qword_100059098);
  sub_100044518();
  sub_1000443F8();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

void sub_10000F458(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalLatestStatistics);
    *(Strong + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalLatestStatistics) = a2;
    v5 = a2;
  }
}

id sub_10000F4D0()
{
  v1 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___occurrenceStore;
  v2 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___occurrenceStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___occurrenceStore);
  }

  else
  {
    v4 = v0;
    sub_100043448();
    v5 = UIApplicationSignificantTimeChangeNotification;
    v6 = sub_100043438();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10000F550()
{
  v1 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___standardActivityItemsDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___standardActivityItemsDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___standardActivityItemsDataSource);
  }

  else
  {
    v4 = sub_10000F5B4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000F5B4(uint64_t a1)
{
  v2 = [objc_allocWithZone(NLSmartGoalStore) initWithHealthStore:*(a1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore)];
  v3 = objc_allocWithZone(sub_100043498());
  v4 = sub_100043488();
  sub_10000F4D0();
  [objc_allocWithZone(WONPSDomainAccessor) init];
  sub_100043478();
  swift_allocObject();
  v5 = v2;
  sub_100043468();
  sub_1000434B8();
  v6 = *(a1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_wheelchairCache);

  v7 = v6;
  FIActivityMoveModeWithHealthStore();
  v8 = *(a1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___occurrenceStore);
  v9 = v4;
  v10 = v8;
  v11 = sub_1000434A8();

  return v11;
}

id sub_10000F714()
{
  v1 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___workoutVoiceAvailabilityProvider;
  v2 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___workoutVoiceAvailabilityProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___workoutVoiceAvailabilityProvider);
  }

  else
  {
    v4 = sub_10000F774();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000F774()
{
  v0 = sub_100043528();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v25 - v4;
  v28 = sub_100043508();
  v6 = *(v28 - 8);
  v7 = __chkstk_darwin(v28);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_1000434E8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_1000434D8();
  v18 = *(v12 + 16);
  v18(v15, v17, v11);
  sub_1000434F8();
  v18(v15, v17, v11);
  v26 = v5;
  sub_100043518();
  v20 = v29;
  v19 = v30;
  (*(v29 + 16))(v3, v5, v30);
  v21 = v28;
  (*(v6 + 16))(v27, v10, v28);
  v22 = objc_allocWithZone(sub_100043428());
  v23 = sub_100043418();
  (*(v20 + 8))(v26, v19);
  (*(v6 + 8))(v10, v21);
  (*(v12 + 8))(v17, v11);
  return v23;
}

uint64_t sub_10000FA98(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v38) = a2;
  v41 = sub_100043F68();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100043F88();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100043FA8();
  v11 = *(v37 - 8);
  v12 = __chkstk_darwin(v37);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = &v35 - v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a3;
  v17[4] = a4;
  v18 = objc_allocWithZone(_HKCurrentActivitySummaryQuery);
  v49 = sub_100015258;
  v50 = v17;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100015BC0;
  v48 = &unk_100056F78;
  v19 = _Block_copy(&aBlock);

  v20 = [v18 initWithUpdateHandler:v19];
  _Block_release(v19);

  v21 = v20;
  v22 = sub_100044238();
  [v21 setDebugIdentifier:v22];

  sub_100013090(v21);
  [*(v5 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) executeQuery:v21];
  sub_100009BB8(0, &qword_100059090);
  v23 = sub_1000443D8();
  sub_100043F98();
  sub_100043FB8();
  v24 = *(v11 + 8);
  v38 = v11 + 8;
  v25 = v37;
  v24(v14, v37);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v21;
  v27[4] = a3;
  v27[5] = a4;
  v49 = sub_1000152AC;
  v50 = v27;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100015BC4;
  v48 = &unk_100056FC8;
  v28 = _Block_copy(&aBlock);

  v29 = v21;

  v30 = v39;
  sub_100043F78();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100015B3C(&qword_100059770, &qword_100059098);
  v31 = v40;
  v32 = v41;
  sub_100044518();
  v33 = v36;
  sub_1000443B8();
  _Block_release(v28);

  (*(v44 + 8))(v31, v32);
  (*(v42 + 8))(v30, v43);
  return (v24)(v33, v25);
}

uint64_t sub_100010038(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((sub_1000134EC(a1) & 1) == 0)
    {
    }

    [*(v10 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a1];
    sub_100013150(a1);
    sub_1000028F8(&qword_1000590C0);
    sub_1000443E8();
    if (v14)
    {
      if (a2)
      {
        sub_100009BB8(0, &qword_100059010);
        v11 = a2;
        v12 = sub_1000444A8();

        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!a2)
    {
      goto LABEL_11;
    }

    v13 = a2;
    sub_10000EB60(a2);
LABEL_11:
    a5(a2, a3);
  }

  return result;
}

void sub_1000101B0(uint64_t a1, void *a2, void (*a3)(void *, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1000134EC(a2))
    {
      sub_100044388();
      v7 = HKLogActivity;
      sub_100043538();

      [*(v6 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a2];
      sub_100013150(a2);
      sub_1000028F8(&qword_1000590C0);
      sub_1000443E8();
      sub_1000443E8();
      if (v10)
      {
        sub_100009BB8(0, &qword_100059010);
        v8 = v10;
        v9 = sub_1000444A8();

        if ((v9 & 1) == 0)
        {
          v8 = v10;
          sub_10000EB60(v10);
        }
      }

      else
      {
        v8 = 0;
      }

      a3(v10, 0);
    }

    else
    {
    }
  }
}

id sub_1000103B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v41) = a2;
  v7 = sub_100043F68();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100043F88();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100043FA8();
  v43 = *(v50 - 8);
  v10 = __chkstk_darwin(v50);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v38 - v12;
  sub_100044258();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_100044238();

  v15 = [v13 initWithKey:v14 ascending:0];

  sub_100009BB8(0, &unk_1000597D0);
  result = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (result)
  {
    v17 = result;
    sub_1000028F8(&qword_100058F68);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100045B90;
    *(v18 + 32) = v15;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v4;
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = a3;
    v21[4] = a4;
    v22 = objc_allocWithZone(HKSampleQuery);
    sub_100009BB8(0, &qword_1000597E0);
    v39 = v15;

    isa = sub_1000442D8().super.isa;

    v55 = sub_100015204;
    v56 = v21;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100013F2C;
    v54 = &unk_100056ED8;
    v24 = _Block_copy(&aBlock);
    v25 = [v22 initWithSampleType:v17 predicate:0 limit:1 sortDescriptors:isa resultsHandler:v24];

    _Block_release(v24);

    v26 = v25;
    v27 = sub_100044238();
    [v26 setDebugIdentifier:v27];

    sub_100013090(v26);
    [*(v20 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) executeQuery:v26];
    sub_100009BB8(0, &qword_100059090);
    v41 = sub_1000443D8();
    v28 = v40;
    sub_100043F98();
    v29 = v42;
    sub_100043FB8();
    v43 = *(v43 + 8);
    (v43)(v28, v50);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v26;
    v55 = sub_100015210;
    v56 = v31;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100015BC4;
    v54 = &unk_100056F28;
    v32 = _Block_copy(&aBlock);
    v33 = v26;

    v34 = v44;
    sub_100043F78();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000028F8(&qword_100059098);
    sub_100015B3C(&qword_100059770, &qword_100059098);
    v35 = v46;
    v36 = v49;
    sub_100044518();
    v37 = v41;
    sub_1000443B8();
    _Block_release(v32);

    (*(v48 + 8))(v35, v36);
    (*(v45 + 8))(v34, v47);
    return (v43)(v29, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010A78(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v72 = a6;
  v73 = a5;
  v71 = a3;
  v67 = sub_100043248();
  v70 = *(v67 - 1);
  v8 = __chkstk_darwin(v67);
  v63 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = v61 - v10;
  v11 = sub_100043328();
  v74 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v64 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v61 - v14;
  v16 = sub_1000028F8(&unk_1000597F0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v61 - v21;
  __chkstk_darwin(v20);
  v69 = v61 - v23;
  v24 = sub_1000433D8();
  v65 = *(v24 - 8);
  v66 = v24;
  __chkstk_darwin(v24);
  v75 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000028F8(&qword_100058F90);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v61 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = result;
    if ((sub_1000134EC(a1) & 1) == 0)
    {
    }

    [*(v33 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a1];
    sub_100013150(a1);
    if (!a2)
    {
      goto LABEL_16;
    }

    if (a2 >> 62)
    {
      v34 = sub_1000445E8();
      if (!v34)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_16;
      }
    }

    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v35)
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v36 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(a2 + 8 * v36 + 32);
LABEL_11:
        v38 = v37;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v62 = v38;
          v41 = [objc_opt_self() hk_gregorianCalendar];
          sub_100043388();

          sub_100043318();
          isa = sub_1000432D8().super.isa;
          v61[0] = *(v74 + 8);
          v61[1] = v74 + 8;
          (v61[0])(v15, v11);
          v43 = sub_100043378().super.isa;
          v44 = _HKActivityCacheDateComponentsFromDate();

          if (v44)
          {
            sub_100043218();

            v45 = 0;
          }

          else
          {
            v45 = 1;
          }

          v47 = v67;
          (*(v70 + 56))(v22, v45, 1, v67);
          v48 = v22;
          v49 = v69;
          sub_1000029D8(v48, v69, &unk_1000597F0);
          v50 = v70;
          sub_10000A1F8(v49, v19, &unk_1000597F0);
          if ((*(v50 + 48))(v19, 1, v47) == 1)
          {
            v51 = 0;
          }

          else
          {
            v51 = sub_100043208().super.isa;
            (*(v50 + 8))(v19, v47);
          }

          v52 = v68;
          v53 = _HKCacheIndexFromDateComponents();

          if (v53 < [v40 startDateIndex] || v53 >= objc_msgSend(v40, "endDateIndex"))
          {
            v60 = *(v74 + 56);
            v60(v31, 1, 1, v11);
            sub_10000ECB0(v31);
            v60(v31, 1, 1, v11);
            v73(v31, v71);

            sub_100009D50(v31, &qword_100058F90);
            goto LABEL_27;
          }

          [v40 endDateIndex];
          v54 = _HKActivityCacheDateComponentsFromCacheIndex();
          if (v54)
          {
            v55 = v54;
            v56 = v63;
            sub_100043218();

            (*(v50 + 32))(v52, v56, v47);
            sub_100043398();
            v57 = v74;
            if ((*(v74 + 48))(v29, 1, v11) != 1)
            {
              v58 = v64;
              (*(v57 + 32))(v64, v29, v11);
              v67 = *(v57 + 16);
              (v67)(v31, v58, v11);
              v59 = *(v57 + 56);
              v59(v31, 0, 1, v11);
              sub_10000ECB0(v31);
              (v67)(v31, v58, v11);
              v59(v31, 0, 1, v11);
              v73(v31, v71);

              sub_100009D50(v31, &qword_100058F90);
              (v61[0])(v58, v11);
              (*(v50 + 8))(v68, v47);
LABEL_27:
              sub_100009D50(v69, &unk_1000597F0);
              return (*(v65 + 8))(v75, v66);
            }

            sub_100009D50(v29, &qword_100058F90);
          }

LABEL_37:
          result = sub_1000445D8();
          __break(1u);
          return result;
        }

LABEL_16:
        v46 = *(v74 + 56);
        v46(v31, 1, 1, v11);
        sub_10000ECB0(v31);
        v46(v31, 1, 1, v11);
        v73(v31, v71);

        return sub_100009D50(v31, &qword_100058F90);
      }

      __break(1u);
      goto LABEL_37;
    }

    v37 = sub_1000445C8();
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000113D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (sub_1000134EC(a2))
    {
      sub_100044388();
      v5 = HKLogActivity;
      sub_100043538();

      [*(v4 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a2];
      sub_100013150(a2);
    }
  }

  return result;
}

uint64_t sub_1000114B4(uint64_t a1, int a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v96 = a3;
  v97 = a4;
  LODWORD(v78) = a2;
  v4 = sub_100043F68();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100043F88();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100043FA8();
  v83 = *(v92 - 8);
  v7 = __chkstk_darwin(v92);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v73 - v9;
  v10 = sub_1000028F8(&qword_1000597B0);
  __chkstk_darwin(v10 - 8);
  v76 = &v73 - v11;
  v12 = sub_1000028F8(&qword_1000597B8);
  __chkstk_darwin(v12 - 8);
  v75 = &v73 - v13;
  v80 = sub_100043248();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v90 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000433C8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v19 - 8);
  v21 = &v73 - v20;
  v22 = sub_100043328();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v73 - v27;
  v95 = sub_1000433D8();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000433B8();
  sub_100043368();
  (*(v16 + 104))(v18, enum case for Calendar.Component.day(_:), v15);
  v94 = v28;
  v91 = v30;
  sub_1000433A8();
  v31 = v15;
  v32 = v23;
  (*(v16 + 8))(v18, v31);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100009D50(v21, &qword_100058F90);
    v33 = [objc_opt_self() mainBundle];
    v34 = sub_100044238();
    v35 = sub_100044238();
    v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

    v37 = sub_100044258();
    v39 = v38;

    sub_100015140();
    v40 = swift_allocError();
    *v41 = v37;
    v41[1] = v39;
    v96(0, v40);

    (*(v23 + 8))(v94, v22);
  }

  else
  {
    v42 = *(v23 + 32);
    v74 = v26;
    v42(v26, v21, v22);
    (*(v93 + 56))(v75, 1, 1, v95);
    v43 = sub_1000433E8();
    (*(*(v43 - 8) + 56))(v76, 1, 1, v43);
    sub_100043238();
    sub_100043228();
    v44 = swift_allocObject();
    v45 = v81;
    v46 = v96;
    v47 = v97;
    v44[2] = v81;
    v44[3] = v46;
    v44[4] = v47;
    v48 = objc_allocWithZone(_HKActivityStatisticsQuery);

    isa = sub_1000432D8().super.isa;
    v50 = sub_1000432D8().super.isa;
    v51.super.isa = sub_100043208().super.isa;
    v76 = v22;
    v52 = v51.super.isa;
    v53 = sub_100043208().super.isa;
    v102 = sub_100015198;
    v103 = v44;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100015BC0;
    v101 = &unk_100056E38;
    v54 = _Block_copy(&aBlock);
    v55 = [v48 initWithStartDate:isa endDate:v50 moveIntervalComponents:v52 exerciseIntervalComponents:v53 initialQueryResultsHandler:v54];
    _Block_release(v54);

    v56 = v55;
    v57 = sub_100044238();
    [v56 setDebugIdentifier:v57];

    sub_100013090(v56);
    [*(v45 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) executeQuery:v56];
    sub_100009BB8(0, &qword_100059090);
    v78 = sub_1000443D8();
    v58 = v77;
    sub_100043F98();
    v59 = v82;
    sub_100043FB8();
    v83 = *(v83 + 8);
    (v83)(v58, v92);
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v56;
    v62 = v96;
    v63 = v97;
    v61[4] = v45;
    v61[5] = v62;
    v61[6] = v63;
    v102 = sub_1000151F4;
    v103 = v61;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100015BC4;
    v101 = &unk_100056E88;
    v64 = _Block_copy(&aBlock);

    v65 = v56;

    v66 = v84;
    sub_100043F78();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000028F8(&qword_100059098);
    sub_100015B3C(&qword_100059770, &qword_100059098);
    v67 = v86;
    v68 = v89;
    sub_100044518();
    v69 = v78;
    sub_1000443B8();
    _Block_release(v64);

    (*(v88 + 8))(v67, v68);
    (*(v85 + 8))(v66, v87);
    (v83)(v59, v92);
    (*(v79 + 8))(v90, v80);
    v70 = *(v32 + 8);
    v71 = v76;
    v70(v74, v76);
    v70(v94, v71);
  }

  return (*(v93 + 8))(v91, v95);
}

uint64_t sub_10001215C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  result = sub_1000134EC(a1);
  if (result)
  {
    [*(a4 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a1];
    sub_100013150(a1);
    sub_1000028F8(&qword_1000597A0);
    sub_1000443E8();
    if (v14)
    {
      if (a2)
      {
        sub_100009BB8(0, &unk_100059028);
        v11 = a2;
        v12 = sub_1000444A8();

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    else if (!a2)
    {
      goto LABEL_10;
    }

    v13 = a2;
    sub_10000F140(a2);
LABEL_10:
    sub_10001381C();
    return a5(a2, a3);
  }

  return result;
}

void sub_1000122AC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_1000134EC(a2))
    {
      sub_100044388();
      v7 = HKLogActivity;
      sub_100043538();

      sub_1000028F8(&qword_1000597A0);
      sub_1000443E8();
      if (sub_1000134EC(a2))
      {
        [*(a3 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) stopQuery:a2];
        sub_100013150(a2);
        sub_1000443E8();
        if (v10)
        {
          sub_100009BB8(0, &unk_100059028);
          v8 = v10;
          v9 = sub_1000444A8();

          if ((v9 & 1) == 0)
          {
            v8 = v10;
            sub_10000F140(v10);
          }
        }

        else
        {
          v8 = 0;
        }

        sub_10001381C();
        a4(v10, 0);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1000124E4(uint64_t a1@<X8>)
{
  v2 = sub_100043328();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000028F8(&qword_1000590C0);
  sub_1000443E8();
  v6 = v33;
  if (!v33)
  {
    sub_100044388();
    v8 = HKLogActivity;
    sub_100043538();

    sub_1000440D8();
    return;
  }

  if ([v33 paused])
  {
    goto LABEL_3;
  }

  v9 = [v6 activityMoveMode];
  v10 = &selRef__moveMinutesCompletionPercentage;
  if (v9 != 2)
  {
    v10 = &selRef__activeEnergyCompletionPercentage;
  }

  [v6 *v10];
  if (v11 <= 0.0)
  {
    [v6 _exerciseTimeCompletionPercentage];
    if (v12 <= 0.0)
    {
      [v6 _standHoursCompletionPercentage];
      if (v13 <= 0.0)
      {
LABEL_3:
        sub_100044388();
        v7 = HKLogActivity;
        sub_100043538();

        sub_1000440D8();
LABEL_27:

        return;
      }
    }
  }

  sub_1000028F8(&qword_1000597A0);
  sub_1000443E8();
  v14 = v33;
  if (!v33 || (v15 = [v33 workoutResults], v14, !v15))
  {
LABEL_26:
    sub_100044388();
    v31 = HKLogActivity;
    sub_100043538();

    sub_100012A58(a1);
    goto LABEL_27;
  }

  sub_100009BB8(0, &qword_1000597A8);
  v16 = sub_1000442E8();

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  v17 = sub_1000445E8();
  if (!v17)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_14:
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v20 = sub_1000445C8();
    goto LABEL_19;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v20 = *(v16 + 8 * v19 + 32);
LABEL_19:
  v21 = v20;

  v22 = [v21 endDate];
  sub_1000432F8();

  sub_1000432E8();
  v24 = v23;
  (*(v3 + 8))(v5, v2);
  v25 = fabs(v24);
  if (v25 <= 1800.0)
  {
    v27 = 1800.0 - v25;
    sub_100044388();
    v28 = HKLogActivity;
    sub_1000028F8(&unk_100059790);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000453B0;
    *(v29 + 56) = &type metadata for Double;
    *(v29 + 64) = &protocol witness table for Double;
    *(v29 + 32) = v27;
    v30 = v28;
    sub_100043538();

    sub_1000440D8();
  }

  else
  {
    sub_100044388();
    v26 = HKLogActivity;
    sub_100043538();

    sub_100012A58(a1);
  }
}

uint64_t sub_100012A58@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v37 = sub_100043328();
  v1 = *(v37 - 8);
  v2 = (__chkstk_darwin)(v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v36 - v5;
  v7 = sub_1000433C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000028F8(&qword_100058F90);
  v12 = (__chkstk_darwin)(v11 - 8);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v41 = sub_1000433D8();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000440E8();
  v42 = *(v18 - 8);
  v43 = v18;
  __chkstk_darwin(v18);
  v40 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000440D8();
  sub_1000433B8();
  (*(v8 + 104))(v10, enum case for Calendar.Component.day(_:), v7);
  sub_100043318();
  sub_100043368();
  v20 = *(v1 + 8);
  v21 = v4;
  v22 = v37;
  v20(v21, v37);
  sub_1000433A8();
  v20(v6, v22);
  (*(v8 + 8))(v10, v7);
  v23 = v15;
  v24 = v36;
  sub_10000A1F8(v23, v36, &qword_100058F90);
  if ((*(v1 + 48))(v24, 1, v22) == 1)
  {
    sub_100009D50(v24, &qword_100058F90);
    sub_100044368();
    v25 = HKLogActivity;
    sub_100043538();

    sub_100009D50(v23, &qword_100058F90);
    (*(v38 + 8))(v17, v41);
    return (*(v42 + 32))(v39, v40, v43);
  }

  else
  {
    v27 = v17;
    v29 = v38;
    v28 = v39;
    sub_1000432E8();
    v31 = v30;
    v20(v24, v22);
    sub_100044388();
    v32 = HKLogActivity;
    if (v31 < 0.0 || v31 >= 7200.0)
    {
      v35 = HKLogActivity;
      sub_100043538();

      sub_100009D50(v23, &qword_100058F90);
      (*(v29 + 8))(v27, v41);
      return (*(v42 + 32))(v28, v40, v43);
    }

    else
    {
      sub_1000028F8(&unk_100059790);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000453B0;
      *(v33 + 56) = &type metadata for Double;
      *(v33 + 64) = &protocol witness table for Double;
      *(v33 + 32) = v31;
      v34 = v32;
      sub_100043538();

      sub_1000440D8();
      sub_100009D50(v23, &qword_100058F90);
      (*(v29 + 8))(v17, v41);
      return (*(v42 + 8))(v40, v43);
    }
  }
}

void sub_1000130B8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_100014088(&v3, a2);
    swift_endAccess();
  }
}

uint64_t sub_100013178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100043F68();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100043F88();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_100043F78();
  v22 = &_swiftEmptyArrayStorage;
  sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100015B3C(&qword_100059770, &qword_100059098);
  sub_100044518();
  sub_1000443F8();
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void sub_10001345C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_100014C30(a2);
    swift_endAccess();
  }
}

uint64_t sub_1000134EC(void *a1)
{
  v2 = v1;
  v12 = 0;
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100013EE0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_100013EFC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000137F4;
  aBlock[3] = &unk_100056D48;
  v7 = _Block_copy(aBlock);

  v8 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_100013664(_BYTE *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 48);

  LOBYTE(a3) = sub_1000136DC(a3, v6);

  *a1 = a3 & 1;
  return result;
}

uint64_t sub_1000136DC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100044588();
  }

  else if (*(a2 + 16) && (sub_100009BB8(0, &qword_100059778), v5 = sub_100044498(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1000444A8();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10001381C()
{
  v0 = sub_100043F68();
  v11 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100043F88();
  v3 = *(v10 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009BB8(0, &qword_100059090);
  v6 = sub_1000443D8();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100013E80;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015BC4;
  aBlock[3] = &unk_100056CD0;
  v8 = _Block_copy(aBlock);

  sub_100043F78();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100015AF4(&unk_100059760, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000028F8(&qword_100059098);
  sub_100015B3C(&qword_100059770, &qword_100059098);
  sub_100044518();
  sub_1000443F8();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_100013B00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_wheelchairCache) isWheelchairUser];
    *(v1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser) = v2;
  }

  return result;
}

id *sub_100013B7C()
{

  sub_100009D50(v0 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalPauseRingsResumeDate, &qword_100058F90);
  return v0;
}

uint64_t sub_100013C44()
{
  sub_100013B7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for FitnessWidgetDataProvider()
{
  result = qword_100059458;
  if (!qword_100059458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013CF0()
{
  sub_10000E460();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100013DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100013E48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013EA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013F2C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_100009BB8(0, &qword_1000597E8);
    v5 = sub_1000442E8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void sub_100013FE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_100014088(void *a1, void *a2)
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

    v9 = sub_100044568();

    if (v9)
    {

      sub_100009BB8(0, &qword_100059778);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_100044558();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000142C0(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1000144B0();
    }

    v18 = v8;
    sub_1000146D8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009BB8(0, &qword_100059778);
  v11 = sub_100044498(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10001475C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1000444A8();

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

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_1000142C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000028F8(&unk_100059780);
    v2 = sub_1000445B8();
    v14 = v2;
    sub_100044548();
    if (sub_100044578())
    {
      sub_100009BB8(0, &qword_100059778);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1000144B0();
        }

        v2 = v14;
        result = sub_100044498(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_100044578());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000144B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000028F8(&unk_100059780);
  result = sub_1000445A8();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100044498(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1000146D8(uint64_t a1, void *a2)
{
  sub_100044498(a2[5]);
  result = sub_100044538();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10001475C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000144B0();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000148CC();
      goto LABEL_12;
    }

    sub_100014A1C();
  }

  v8 = *v3;
  v9 = sub_100044498(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009BB8(0, &qword_100059778);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1000444A8();

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
  sub_100044628();
  __break(1u);
}

id sub_1000148CC()
{
  v1 = v0;
  sub_1000028F8(&unk_100059780);
  v2 = *v0;
  v3 = sub_100044598();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_100014A1C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000028F8(&unk_100059780);
  result = sub_1000445A8();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100044498(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_100014C30(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_100044588();

    if (v5)
    {
      v6 = sub_100014DC8();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100009BB8(0, &qword_100059778);
  v9 = sub_100044498(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1000444A8();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000148CC();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100014F30(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100014DC8()
{
  v1 = v0;

  v2 = sub_100044558();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1000142C0(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100044498(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100009BB8(0, &qword_100059778);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_1000444A8();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100014F30(v8);
  result = sub_1000444A8();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100014F30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100044528();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100044498(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1000150D8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

id sub_100015108@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalLatestStatistics);
  *a1 = v2;
  return v2;
}

unint64_t sub_100015140()
{
  result = qword_1000597C0;
  if (!qword_1000597C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000597C0);
  }

  return result;
}

uint64_t sub_1000151A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100015218()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015264()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000152C4()
{
  v1 = *(sub_1000028F8(&qword_100058F90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_100043328();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000153E4()
{
  v1 = *(sub_1000028F8(&qword_100058F90) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10000F078(v2, v3);
}

uint64_t sub_100015454(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100058F90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000154C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001550C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100015554(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000155AC(void *a1)
{
  v2 = v1;
  v24 = a1;
  v22 = sub_1000443C8();
  v3 = *(v22 - 8);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000443A8();
  __chkstk_darwin();
  sub_100043F88();
  __chkstk_darwin();
  v23 = sub_100009BB8(0, &qword_100059090);
  sub_100043F78();
  v26 = &_swiftEmptyArrayStorage;
  v21[3] = sub_100015AF4(&qword_100059800, &type metadata accessor for OS_dispatch_queue.Attributes);
  v21[2] = sub_1000028F8(&qword_100059808);
  v21[4] = sub_100015B3C(&qword_100059810, &qword_100059808);
  sub_100044518();
  v6 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v7 = v3 + 104;
  v8 = *(v3 + 104);
  v21[1] = v7;
  v9 = v22;
  v8(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(v1 + 16) = sub_100044408();
  sub_100043F78();
  v26 = &_swiftEmptyArrayStorage;
  sub_100044518();
  v8(v5, v6, v9);
  *(v1 + 24) = sub_100044408();
  *(v1 + 32) = xmmword_100045BA0;
  *(v1 + 48) = &_swiftEmptySetSingleton;
  *(v1 + 56) = 0;
  v10 = OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalPauseRingsResumeDate;
  v11 = sub_100043328();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_internalLatestStatistics) = 0;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser) = 0;
  v12 = (v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_layout);
  *v12 = xmmword_100045BB0;
  v12[1] = xmmword_100045BC0;
  v12[2] = xmmword_100045BD0;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_ringsRenderer) = 0;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_timeIntervalForRelevantWorkout) = 0x409C200000000000;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___occurrenceStore) = 0;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___standardActivityItemsDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider____lazy_storage___workoutVoiceAvailabilityProvider) = 0;
  v13 = v24;
  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_healthStore) = v24;
  v14 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:v13];
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_wheelchairCache) = v14;
  v15 = MTLCreateSystemDefaultDevice();
  if (!v15)
  {
LABEL_9:
    result = sub_1000445D8();
    __break(1u);
    return result;
  }

  if ([v15 newCommandQueue])
  {
    v25 = &OBJC_PROTOCOL___MTLCommandQueueSPI;
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (v16)
    {
      v17 = v16;
      [v16 setBackgroundGPUPriority:2];
      v18 = [objc_allocWithZone(ARUIRenderer) initWithCommandQueue:v17];
      swift_unknownObjectRelease();
      v19 = *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_ringsRenderer);
      *(v2 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_ringsRenderer) = v18;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10001381C();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100015AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015B3C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002940(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015C6C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_1000439D8();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000028F8(&qword_100059940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v30 = *v1;
  v10 = v1[2];
  v9 = v1[3];
  v29 = *(v1 + 2);
  v11 = swift_allocObject();
  v12 = *(v1 + 1);
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = *(v1 + 2);
  v27 = sub_100016744;
  v28 = v11;
  sub_10000A1F8(&v30, v26, &qword_1000590C0);
  v13 = v9;
  v14 = v10;
  sub_100008B58(&v29, v26);
  sub_1000439B8();
  v15 = sub_1000028F8(&qword_100059948);
  v16 = sub_10001674C();
  sub_100043CF8();
  (*(v2 + 8))(v4, v24);

  v27 = sub_10003C95C(v9);
  v28 = v17;
  sub_10000A8C4();
  v18 = sub_100043C48();
  v20 = v19;
  LOBYTE(v9) = v21;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100043CB8();
  sub_10000A918(v18, v20, v9 & 1);

  return (*(v6 + 8))(v8, v5);
}

id sub_100015F38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_100043EC8();
  a3[1] = v6;
  v7 = sub_1000028F8(&qword_100059958);
  return sub_100015F98(a2, a1, a3 + *(v7 + 44));
}

id sub_100015F98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v66 = a3;
  v4 = sub_100043DA8();
  v63 = *(v4 - 8);
  KeyPath = v4;
  __chkstk_darwin(v4);
  v61 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100059960);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for StandalonePhoneRingView(0);
  __chkstk_darwin(v9);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = sub_1000028F8(&qword_100059968);
  __chkstk_darwin(v15 - 8);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v61 - v18;
  v19 = objc_opt_self();
  result = [v19 sharedBehavior];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = [result isStandalonePhoneFitnessMode];

  v23 = *a1;
  if (v22)
  {
    *&v76[0] = *a1;
    v24 = *(a1 + 8);
    sub_10000A1F8(v76, v75, &qword_1000590C0);
    v25 = sub_100043D38();
    *v11 = swift_getKeyPath();
    sub_1000028F8(&qword_100059990);
    swift_storeEnumTagMultiPayload();
    v26 = v9[9];
    *(v11 + v9[6]) = 0;
    *(v11 + v26) = v25;
    v27 = *&v76[0];
    if (*&v76[0])
    {
      *(v11 + v9[7]) = 0;
      if (v24)
      {
        sub_100009D50(v76, &qword_1000590C0);
        v28 = 4;
        v29 = 1.0;
      }

      else
      {
        v36 = [v27 activityMoveMode];
        v37 = &selRef__moveMinutesCompletionPercentage;
        if (v36 != 2)
        {
          v37 = &selRef__activeEnergyCompletionPercentage;
        }

        [v27 *v37];
        v29 = v38;
        sub_100009D50(v76, &qword_1000590C0);
        v28 = 3;
      }

      v35 = 8;
    }

    else
    {
      if (v24)
      {
        v34 = 4;
      }

      else
      {
        v34 = 3;
      }

      if (v24)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      *(v11 + v9[8]) = v34;
      v28 = 1;
      v35 = 7;
    }

    *(v11 + v9[5]) = v29;
    *(v11 + v9[v35]) = v28;
    sub_1000168BC(v11, v14);
    sub_100016920(v14, v8);
    swift_storeEnumTagMultiPayload();
    sub_100016ADC(&qword_100059970, type metadata accessor for StandalonePhoneRingView);
    sub_100016808();
    sub_100043988();
    sub_100016984(v14);
  }

  else
  {
    v30 = *(a1 + 8);
    v31 = v23;
    v32 = sub_100043D38();
    sub_1000288A8(v23, v30, v32, v76);
    v33 = v76[1];
    *v8 = v76[0];
    *(v8 + 1) = v33;
    *(v8 + 4) = v77;
    swift_storeEnumTagMultiPayload();
    sub_100016ADC(&qword_100059970, type metadata accessor for StandalonePhoneRingView);
    sub_100016808();
    sub_100043988();
  }

  result = [v19 sharedBehavior];
  if (!result)
  {
    goto LABEL_25;
  }

  v39 = result;
  v40 = [result isStandalonePhoneFitnessMode];

  if (v40)
  {
    sub_100043DB8();
    v42 = v63;
    v41 = KeyPath;
    v43 = v61;
    (*(v63 + 104))(v61, enum case for Image.ResizingMode.stretch(_:), KeyPath);
    v65 = sub_100043DC8();

    (*(v42 + 8))(v43, v41);
    sub_100043AA8();
    sub_100043AC8();
    v63 = sub_100043B08();

    KeyPath = swift_getKeyPath();
    sub_1000435F8();
    sub_100043EC8();
    sub_1000435E8();
    LOBYTE(v75[0]) = 1;
    v44 = v78;
    v45 = v79;
    v46 = v81;
    v62 = v80;
    v48 = v82;
    v47 = v83;
    v49 = 1;
  }

  else
  {
    KeyPath = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v47 = 0;
    v49 = 0;
  }

  v50 = v67;
  sub_10000A1F8(v68, v67, &qword_100059968);
  v51 = v50;
  v52 = v66;
  sub_10000A1F8(v51, v66, &qword_100059968);
  v53 = v52 + *(sub_1000028F8(&qword_100059980) + 48);
  v54 = KeyPath;
  v55 = v65;
  v69 = v65;
  *&v70 = v49;
  *(&v70 + 1) = KeyPath;
  v57 = v62;
  v56 = v63;
  *&v71 = v63;
  *(&v71 + 1) = v44;
  v61 = v45;
  v72 = __PAIR128__(v62, v45);
  *&v73 = v46;
  *(&v73 + 1) = v48;
  v74 = v47;
  *(v53 + 80) = v47;
  v58 = v70;
  *v53 = v69;
  *(v53 + 16) = v58;
  v59 = v72;
  *(v53 + 32) = v71;
  *(v53 + 48) = v59;
  *(v53 + 64) = v73;
  v60 = v56;
  sub_10000A1F8(&v69, v75, &qword_100059988);
  sub_100009D50(v68, &qword_100059968);
  v75[0] = v55;
  v75[1] = 0;
  v75[2] = v49;
  v75[3] = v54;
  v75[4] = v60;
  v75[5] = v44;
  v75[6] = v61;
  v75[7] = v57;
  v75[8] = v46;
  v75[9] = v48;
  v75[10] = v47;
  sub_100009D50(v75, &qword_100059988);
  return sub_100009D50(v67, &qword_100059968);
}

uint64_t sub_1000166F4()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10001674C()
{
  result = qword_100059950;
  if (!qword_100059950)
  {
    sub_100002940(&qword_100059948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059950);
  }

  return result;
}

uint64_t sub_1000167B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043798();
  *a1 = result;
  return result;
}

unint64_t sub_100016808()
{
  result = qword_100059978;
  if (!qword_100059978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059978);
  }

  return result;
}

uint64_t sub_10001685C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043798();
  *a1 = result;
  return result;
}

uint64_t sub_1000168BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandalonePhoneRingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandalonePhoneRingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016984(uint64_t a1)
{
  v2 = type metadata accessor for StandalonePhoneRingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000169E4()
{
  result = qword_100059998;
  if (!qword_100059998)
  {
    sub_100002940(&qword_1000599A0);
    sub_100002940(&qword_100059948);
    sub_10001674C();
    swift_getOpaqueTypeConformance2();
    sub_100016ADC(&qword_100059348, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059998);
  }

  return result;
}

uint64_t sub_100016ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016B38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_1000599B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000028F8(&qword_100058F90);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_100016CF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000028F8(&qword_1000599B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = sub_1000028F8(&qword_100058F90);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for FitnessWidgetView()
{
  result = qword_100059A10;
  if (!qword_100059A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016ED4()
{
  sub_100017068(319, &qword_100059A20, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100017068(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000053B8(319, &qword_100059008, &qword_100059010);
      if (v2 <= 0x3F)
      {
        sub_100017068(319, &qword_100059018, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000053B8(319, &qword_100059020, &unk_100059028);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100017068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000170E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v95 = a2;
  v96 = sub_1000028F8(&qword_100059AD8);
  v82 = *(v96 - 8);
  __chkstk_darwin(v96);
  v80 = &v80 - v2;
  v94 = sub_1000028F8(&qword_100059AB0);
  __chkstk_darwin(v94);
  v86 = &v80 - v3;
  v4 = type metadata accessor for FitnessWidgetView();
  v84 = *(v4 - 1);
  v5 = *(v84 + 64);
  __chkstk_darwin(v4);
  v85 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_1000028F8(&qword_100059AE0);
  v81 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = &v80 - v6;
  v7 = sub_100044028();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v80 - v12;
  v91 = sub_1000028F8(&qword_100059AE8);
  __chkstk_darwin(v91);
  v93 = &v80 - v14;
  v87 = sub_1000028F8(&qword_100059AF0);
  __chkstk_darwin(v87);
  v88 = &v80 - v15;
  v92 = sub_1000028F8(&qword_100059A98);
  __chkstk_darwin(v92);
  v89 = &v80 - v16;
  v17 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v17 - 8);
  v19 = &v80 - v18;
  v98 = type metadata accessor for StandaloneSummaryView();
  __chkstk_darwin(v98);
  v21 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v23 = result;
  v24 = [result isStandalonePhoneFitnessMode];

  if (!v24)
  {
    v51 = v97;
    sub_1000428FC(v13);
    (*(v8 + 104))(v10, enum case for WidgetFamily.systemMedium(_:), v7);
    sub_10001AA4C(&qword_1000590B8, &type metadata accessor for WidgetFamily);
    sub_1000442B8();
    sub_1000442B8();
    v52 = *(v8 + 8);
    v52(v10, v7);
    v52(v13, v7);
    v53 = v99;
    v54 = v104;
    v55 = v85;
    sub_10001A984(v51, v85, type metadata accessor for FitnessWidgetView);
    v56 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    if (v53 == v54)
    {
      v57 = swift_allocObject();
      sub_10001A8B8(v55, v57 + v56, type metadata accessor for FitnessWidgetView);
      v99 = sub_10001A56C;
      v100 = v57;
      v58 = v86;
      sub_1000194B0(v86);
      sub_100043648();
      sub_10001AA4C(&qword_100059B08, &type metadata accessor for DynamicTypeSize);
      result = sub_100044208();
      if (result)
      {
        v59 = sub_1000028F8(&qword_100059AA8);
        v97 = &protocol conformance descriptor for GeometryReader<A>;
        v60 = sub_100002F14(&qword_100059AB8, &qword_100059AA8);
        v61 = sub_100002F14(&qword_100059AC0, &qword_100059AB0);
        v62 = v83;
        v63 = v94;
        v64 = v61;
        v85 = v61;
        sub_100043CD8();
        sub_100009D50(v58, &qword_100059AB0);

        v65 = v81;
        v66 = v62;
        v67 = v90;
        (*(v81 + 16))(v88, v66, v90);
        swift_storeEnumTagMultiPayload();
        sub_10001AA4C(&qword_100059AA0, type metadata accessor for StandaloneSummaryView);
        v99 = v59;
        v100 = v63;
        v101 = v60;
        v102 = v64;
        swift_getOpaqueTypeConformance2();
        v68 = v89;
        sub_100043988();
        sub_10001A618(v68, v93);
        swift_storeEnumTagMultiPayload();
        sub_10001A154();
        v69 = sub_100002940(&qword_100059AC8);
        v70 = sub_100002F14(&qword_100059AD0, &qword_100059AC8);
        v99 = v69;
        v100 = v63;
        v101 = v70;
        v102 = v85;
        swift_getOpaqueTypeConformance2();
        sub_100043988();
        sub_100009D50(v68, &qword_100059A98);
        return (*(v65 + 8))(v83, v67);
      }

      __break(1u);
    }

    else
    {
      v71 = swift_allocObject();
      sub_10001A8B8(v55, v71 + v56, type metadata accessor for FitnessWidgetView);
      v99 = sub_10001A334;
      v100 = v71;
      v72 = v86;
      sub_1000194B0(v86);
      sub_100043648();
      sub_10001AA4C(&qword_100059B08, &type metadata accessor for DynamicTypeSize);
      result = sub_100044208();
      if (result)
      {
        v73 = sub_1000028F8(&qword_100059AC8);
        v74 = sub_100002F14(&qword_100059AD0, &qword_100059AC8);
        v75 = sub_100002F14(&qword_100059AC0, &qword_100059AB0);
        v76 = v80;
        v77 = v94;
        sub_100043CD8();
        sub_100009D50(v72, &qword_100059AB0);

        v78 = v82;
        v79 = v96;
        (*(v82 + 16))(v93, v76, v96);
        swift_storeEnumTagMultiPayload();
        sub_10001A154();
        v99 = v73;
        v100 = v77;
        v101 = v74;
        v102 = v75;
        swift_getOpaqueTypeConformance2();
        sub_100043988();
        return (*(v78 + 8))(v76, v79);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v102 = &type metadata for WidgetFeatureFlags;
  v103 = sub_10001A688();
  v25 = sub_1000434C8();
  sub_10001A6DC(&v99);
  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v26 = qword_10005CA00;
  v27 = v97[v4[9]];
  v28 = *&v97[v4[6]];
  sub_10000A1F8(&v97[v4[7]], v19, &qword_100058F90);
  *v21 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8);
  swift_storeEnumTagMultiPayload();
  v29 = v98;
  v30 = *(v98 + 20);
  *(v21 + v30) = swift_getKeyPath();
  sub_1000028F8(&qword_100059B00);
  swift_storeEnumTagMultiPayload();
  *(v21 + v29[6]) = v25 & 1;
  *(v21 + v29[7]) = v26;
  *(v21 + v29[8]) = v27;
  *(v21 + v29[9]) = v28;
  sub_10000A1F8(v19, v21 + v29[10], &qword_100058F90);
  v31 = objc_opt_self();
  v32 = v28;
  v33 = v26;
  v34 = v32;
  v35 = v33;
  v36 = [v31 mainBundle];
  v37 = sub_100044238();
  v38 = sub_100044238();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  v40 = sub_100044258();
  v42 = v41;

  sub_100009D50(v19, &qword_100058F90);
  v43 = (v21 + *(v98 + 44));
  *v43 = v35;
  v43[1] = v28;
  v43[2] = v40;
  v43[3] = v42;
  sub_10001A984(v21, v88, type metadata accessor for StandaloneSummaryView);
  swift_storeEnumTagMultiPayload();
  sub_10001AA4C(&qword_100059AA0, type metadata accessor for StandaloneSummaryView);
  v44 = sub_100002940(&qword_100059AA8);
  v97 = &protocol conformance descriptor for GeometryReader<A>;
  v45 = sub_100002F14(&qword_100059AB8, &qword_100059AA8);
  v46 = sub_100002F14(&qword_100059AC0, &qword_100059AB0);
  v47 = v94;
  v99 = v44;
  v100 = v94;
  v101 = v45;
  v102 = v46;
  swift_getOpaqueTypeConformance2();
  v48 = v89;
  sub_100043988();
  sub_10001A618(v48, v93);
  swift_storeEnumTagMultiPayload();
  sub_10001A154();
  v49 = sub_100002940(&qword_100059AC8);
  v50 = sub_100002F14(&qword_100059AD0, &qword_100059AC8);
  v99 = v49;
  v100 = v47;
  v101 = v50;
  v102 = v46;
  swift_getOpaqueTypeConformance2();
  sub_100043988();
  sub_100009D50(v48, &qword_100059A98);
  return sub_10001A9EC(v21, type metadata accessor for StandaloneSummaryView);
}

uint64_t sub_100018034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_100043838();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_1000028F8(&qword_100059B18);
  return sub_10001809C(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_10001809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a3;
  v138 = type metadata accessor for ChartsSection();
  __chkstk_darwin(v138);
  v130 = (&v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_1000028F8(&qword_100059B20);
  __chkstk_darwin(v135);
  v137 = &v127 - v6;
  v136 = type metadata accessor for PauseRingsLabel();
  __chkstk_darwin(v136);
  v134 = (&v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = sub_100043328();
  v8 = *(v159 - 8);
  __chkstk_darwin(v159);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000028F8(&qword_100059B28);
  __chkstk_darwin(v10 - 8);
  v157 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v156 = &v127 - v13;
  v14 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v14 - 8);
  v153 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v152 = &v127 - v17;
  __chkstk_darwin(v18);
  v150 = &v127 - v19;
  __chkstk_darwin(v20);
  v144 = &v127 - v21;
  __chkstk_darwin(v22);
  v143 = &v127 - v23;
  __chkstk_darwin(v24);
  v26 = &v127 - v25;
  v27 = type metadata accessor for SummarySection();
  __chkstk_darwin(v27);
  v29 = (&v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v141 = &v127 - v31;
  v145 = sub_1000028F8(&qword_100059B30);
  __chkstk_darwin(v145);
  v160 = &v127 - v32;
  v146 = sub_1000028F8(&qword_100059B38);
  __chkstk_darwin(v146);
  v149 = &v127 - v33;
  v148 = sub_1000028F8(&qword_100059B40);
  __chkstk_darwin(v148);
  v155 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v147 = &v127 - v36;
  __chkstk_darwin(v37);
  v154 = &v127 - v38;
  v39 = type metadata accessor for FitnessWidgetView();
  v40 = *(a1 + v39[6]);
  *(&v163 + 1) = &type metadata for WidgetFeatureFlags;
  *&v164 = sub_10001A688();
  v139 = v40;
  v41 = sub_1000434C8();
  sub_10001A6DC(&v162);
  v142 = a2;
  sub_1000435F8();
  v43 = v42;
  v44 = *(a1 + v39[9]);
  v129 = v39;
  v45 = v39[7];
  v151 = a1;
  v140 = v45;
  sub_10000A1F8(a1 + v45, v26, &qword_100058F90);
  *v29 = swift_getKeyPath();
  v131 = sub_1000028F8(&qword_100059AF8);
  swift_storeEnumTagMultiPayload();
  v46 = v27[5];
  *(v29 + v46) = swift_getKeyPath();
  sub_1000028F8(&qword_100059B00);
  swift_storeEnumTagMultiPayload();
  v47 = v27[6];
  *(v29 + v47) = swift_getKeyPath();
  sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  *(v29 + v27[7]) = v40;
  *(v29 + v27[8]) = v41 & 1;
  *(v29 + v27[9]) = v43;
  v48 = v27[10];
  v128 = v44;
  *(v29 + v48) = v44;
  v133 = v8;
  v161 = *(v8 + 48);
  *(v29 + v27[11]) = v161(v26, 1, v159) != 1;
  v49 = v26;
  sub_10000A1F8(v26, v29 + v27[12], &qword_100058F90);
  v50 = qword_100058DE8;
  v139 = v139;
  if (v50 != -1)
  {
    swift_once();
  }

  v51 = qword_10005CA00;
  v52 = objc_opt_self();
  v53 = v51;
  v54 = [v52 mainBundle];
  v55 = sub_100044238();
  v56 = sub_100044238();
  v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

  v58 = sub_100044258();
  v60 = v59;

  sub_100009D50(v49, &qword_100058F90);
  v61 = (v29 + v27[13]);
  *v61 = v53;
  v61[1] = v40;
  v127 = v40;
  v61[2] = v58;
  v61[3] = v60;
  v62 = v141;
  sub_10001A8B8(v29, v141, type metadata accessor for SummarySection);
  sub_1000435F8();
  v63 = v151;
  v64 = v140;
  v65 = v143;
  sub_10000A1F8(v151 + v140, v143, &qword_100058F90);
  v66 = v159;
  v67 = v161;
  v68 = v161(v65, 1, v159);
  sub_100009D50(v65, &qword_100058F90);
  if (v68 == 1)
  {
    sub_100019144();
  }

  v69 = v144;
  sub_10000A1F8(v63 + v64, v144, &qword_100058F90);
  v70 = v67(v69, 1, v66);
  sub_100009D50(v69, &qword_100058F90);
  if (v70 == 1)
  {
    sub_100019144();
  }

  sub_100043EC8();
  sub_1000435E8();
  v71 = v160;
  sub_10001A8B8(v62, v160, type metadata accessor for SummarySection);
  v72 = (v71 + *(v145 + 36));
  v73 = v163;
  *v72 = v162;
  v72[1] = v73;
  v72[2] = v164;
  v74 = sub_100043A78();
  v75 = v64;
  v76 = v63 + v64;
  v77 = v150;
  sub_10000A1F8(v76, v150, &qword_100058F90);
  v78 = v161(v77, 1, v66);
  sub_100009D50(v77, &qword_100058F90);
  if (v78 == 1)
  {
    sub_100019144();
  }

  sub_100043568();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v149;
  sub_1000029D8(v160, v149, &qword_100059B30);
  v88 = v87 + *(v146 + 36);
  *v88 = v74;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = sub_100043A58();
  sub_100019144();
  sub_100043568();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v98 = v87;
  v99 = v147;
  sub_1000029D8(v98, v147, &qword_100059B38);
  v100 = v99 + *(v148 + 36);
  *v100 = v89;
  *(v100 + 8) = v91;
  *(v100 + 16) = v93;
  *(v100 + 24) = v95;
  *(v100 + 32) = v97;
  *(v100 + 40) = 0;
  v101 = v154;
  sub_1000029D8(v99, v154, &qword_100059B40);
  v102 = v152;
  sub_10000A1F8(v63 + v75, v152, &qword_100058F90);
  v103 = v161;
  v104 = v161(v102, 1, v66);
  sub_100009D50(v102, &qword_100058F90);
  v105 = v153;
  sub_10000A1F8(v63 + v75, v153, &qword_100058F90);
  if (v103(v105, 1, v66) == 1)
  {
    sub_100009D50(v105, &qword_100058F90);
    v106 = sub_100019144();
    v107 = v156;
    if (v106)
    {
      v108 = 1;
      goto LABEL_15;
    }

    v113 = *(v63 + v129[8]);
    KeyPath = swift_getKeyPath();
    v115 = v130;
    *v130 = KeyPath;
    sub_1000028F8(&qword_100059B48);
    swift_storeEnumTagMultiPayload();
    v116 = v138;
    *(v115 + *(v138 + 20)) = v127;
    *(v115 + *(v116 + 24)) = v113;
    *(v115 + *(v116 + 28)) = v128;
    sub_10001A984(v115, v137, type metadata accessor for ChartsSection);
    swift_storeEnumTagMultiPayload();
    sub_10001AA4C(&qword_100059B50, type metadata accessor for PauseRingsLabel);
    sub_10001AA4C(&qword_100059B58, type metadata accessor for ChartsSection);
    v117 = v139;
    v118 = v113;
    sub_100043988();
    sub_10001A9EC(v115, type metadata accessor for ChartsSection);
  }

  else
  {
    v109 = v133;
    v110 = v132;
    (*(v133 + 32))(v132, v105, v66);
    v111 = *(v136 + 20);
    v112 = v134;
    (*(v109 + 16))(v134 + v111, v110, v66);
    (*(v109 + 56))(v112 + v111, 0, 1, v66);
    *v112 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_10001A984(v112, v137, type metadata accessor for PauseRingsLabel);
    swift_storeEnumTagMultiPayload();
    sub_10001AA4C(&qword_100059B50, type metadata accessor for PauseRingsLabel);
    sub_10001AA4C(&qword_100059B58, type metadata accessor for ChartsSection);
    v107 = v156;
    sub_100043988();
    sub_10001A9EC(v112, type metadata accessor for PauseRingsLabel);
    (*(v109 + 8))(v110, v66);
  }

  v108 = 0;
LABEL_15:
  v119 = sub_1000028F8(&qword_100059B60);
  (*(*(v119 - 8) + 56))(v107, v108, 1, v119);
  if (v104 == 1)
  {
    v120 = 0x4034000000000000;
  }

  else
  {
    v120 = 0x4024000000000000;
  }

  v121 = v155;
  sub_10000A1F8(v101, v155, &qword_100059B40);
  v122 = v157;
  sub_10000A1F8(v107, v157, &qword_100059B28);
  v123 = v158;
  sub_10000A1F8(v121, v158, &qword_100059B40);
  v124 = sub_1000028F8(&qword_100059B68);
  v125 = v123 + *(v124 + 48);
  *v125 = v120;
  *(v125 + 8) = 0;
  sub_10000A1F8(v122, v123 + *(v124 + 64), &qword_100059B28);
  sub_100009D50(v107, &qword_100059B28);
  sub_100009D50(v101, &qword_100059B40);
  sub_100009D50(v122, &qword_100059B28);
  return sub_100009D50(v121, &qword_100059B40);
}

uint64_t sub_100019144()
{
  v0 = sub_100043648();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100044028();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v26[3] = &type metadata for WidgetFeatureFlags;
  v26[4] = sub_10001A688();
  v14 = sub_1000434C8();
  sub_10001A6DC(v26);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v24 = v1;
    sub_1000428FC(v13);
    (*(v8 + 104))(v10, enum case for WidgetFamily.systemSmall(_:), v7);
    sub_10001AA4C(&qword_1000590B8, &type metadata accessor for WidgetFamily);
    sub_1000442B8();
    sub_1000442B8();
    v16 = *(v8 + 8);
    v16(v10, v7);
    v16(v13, v7);
    v18 = v25;
    v17 = v26[0];
    type metadata accessor for FitnessWidgetView();
    sub_1000429CC(v6);
    if (v17 == v18)
    {
      v15 = sub_100043638();
      (*(v24 + 8))(v6, v0);
    }

    else
    {
      v19 = v24;
      (*(v24 + 104))(v3, enum case for DynamicTypeSize.accessibility2(_:), v0);
      sub_10001AA4C(&qword_100059B70, &type metadata accessor for DynamicTypeSize);
      v20 = sub_1000441F8();
      v21 = *(v19 + 8);
      v21(v3, v0);
      v21(v6, v0);
      v15 = v20 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_1000194B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v7 = sub_100044028();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  sub_1000428FC(v28 - v12);
  (*(v8 + 104))(v10, enum case for WidgetFamily.systemSmall(_:), v7);
  sub_10001AA4C(&qword_1000590B8, &type metadata accessor for WidgetFamily);
  sub_1000442B8();
  sub_1000442B8();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v14(v13, v7);
  v16 = v28[0];
  v15 = v28[1];
  v17 = sub_100019144();
  v18 = v17;
  if (v15 == v16)
  {
    v19 = sub_100043648();
    if (v18)
    {
      v20 = &enum case for DynamicTypeSize.accessibility5(_:);
    }

    else
    {
      v20 = &enum case for DynamicTypeSize.xLarge(_:);
    }

    return (*(*(v19 - 8) + 104))(a1, *v20, v19);
  }

  else
  {
    if ((v17 & 1) != 0 && (v21 = type metadata accessor for FitnessWidgetView(), sub_10000A1F8(v2 + *(v21 + 28), v6, &qword_100058F90), v22 = sub_100043328(), v23 = (*(*(v22 - 8) + 48))(v6, 1, v22), sub_100009D50(v6, &qword_100058F90), v23 == 1))
    {
      v24 = &enum case for DynamicTypeSize.accessibility2(_:);
    }

    else
    {
      v24 = &enum case for DynamicTypeSize.xxLarge(_:);
    }

    v25 = *v24;
    v26 = sub_100043648();
    return (*(*(v26 - 8) + 104))(a1, v25, v26);
  }
}

uint64_t sub_1000197E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for SummarySection();
  __chkstk_darwin(v6);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v47 = &v46 - v10;
  v11 = type metadata accessor for FitnessWidgetView();
  v12 = *(a1 + v11[6]);
  v50 = &type metadata for WidgetFeatureFlags;
  v51 = sub_10001A688();
  v46 = v12;
  v13 = sub_1000434C8();
  sub_10001A6DC(v49);
  sub_1000435F8();
  v15 = v14;
  v16 = *(a1 + v11[9]);
  sub_10000A1F8(a1 + v11[7], v5, &qword_100058F90);
  *v8 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8);
  swift_storeEnumTagMultiPayload();
  v17 = v6[5];
  *(v8 + v17) = swift_getKeyPath();
  sub_1000028F8(&qword_100059B00);
  swift_storeEnumTagMultiPayload();
  v18 = v6[6];
  *(v8 + v18) = swift_getKeyPath();
  sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  *(v8 + v6[7]) = v12;
  *(v8 + v6[8]) = v13 & 1;
  *(v8 + v6[9]) = v15;
  *(v8 + v6[10]) = v16;
  v19 = sub_100043328();
  *(v8 + v6[11]) = (*(*(v19 - 8) + 48))(v5, 1, v19) != 1;
  sub_10000A1F8(v5, v8 + v6[12], &qword_100058F90);
  v20 = qword_100058DE8;
  v21 = v46;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_10005CA00;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainBundle];
  v26 = sub_100044238();
  v27 = sub_100044238();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_100044258();
  v31 = v30;

  sub_100009D50(v5, &qword_100058F90);
  v32 = (v8 + v6[13]);
  *v32 = v24;
  v32[1] = v12;
  v32[2] = v29;
  v32[3] = v31;
  v33 = v47;
  sub_10001A8B8(v8, v47, type metadata accessor for SummarySection);
  v34 = sub_100043A58();
  sub_100019144();
  sub_100043568();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v48;
  sub_10001A8B8(v33, v48, type metadata accessor for SummarySection);
  result = sub_1000028F8(&qword_100059B78);
  v45 = v43 + *(result + 36);
  *v45 = v34;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_100019C64@<X0>(void *a1@<X8>)
{
  if (qword_100058D68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10005C980;
}

uint64_t sub_100019CD4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v14[0] = sub_1000439F8();
  v2 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000028F8(&qword_100059A68);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = sub_1000028F8(&qword_100059A70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  sub_1000170E8(v1, v7);
  sub_1000439E8();
  sub_100043EC8();
  v12 = sub_100019F74();
  sub_100043CE8();
  (*(v2 + 8))(v4, v14[0]);
  sub_100009D50(v7, &qword_100059A68);
  v14[2] = v5;
  v14[3] = &type metadata for Color;
  v14[4] = v12;
  v14[5] = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_100043C88();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100019F74()
{
  result = qword_100059A78;
  if (!qword_100059A78)
  {
    sub_100002940(&qword_100059A68);
    sub_100019FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059A78);
  }

  return result;
}

unint64_t sub_100019FF8()
{
  result = qword_100059A80;
  if (!qword_100059A80)
  {
    sub_100002940(&qword_100059A88);
    sub_10001A154();
    sub_100002940(&qword_100059AC8);
    sub_100002940(&qword_100059AB0);
    sub_100002F14(&qword_100059AD0, &qword_100059AC8);
    sub_100002F14(&qword_100059AC0, &qword_100059AB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059A80);
  }

  return result;
}

unint64_t sub_10001A154()
{
  result = qword_100059A90;
  if (!qword_100059A90)
  {
    sub_100002940(&qword_100059A98);
    sub_10001AA4C(&qword_100059AA0, type metadata accessor for StandaloneSummaryView);
    sub_100002940(&qword_100059AA8);
    sub_100002940(&qword_100059AB0);
    sub_100002F14(&qword_100059AB8, &qword_100059AA8);
    sub_100002F14(&qword_100059AC0, &qword_100059AB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059A90);
  }

  return result;
}

uint64_t sub_10001A34C()
{
  v1 = type metadata accessor for FitnessWidgetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000028F8(&qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100044028();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000028F8(&qword_100059B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_100043648();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_100043328();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001A584(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FitnessWidgetView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10001A618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100059A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A688()
{
  result = qword_100059B10;
  if (!qword_100059B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059B10);
  }

  return result;
}

uint64_t sub_10001A6DC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10001A7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10001A8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001AA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001AA94()
{
  sub_100002940(&qword_100059A70);
  sub_100002940(&qword_100059A68);
  sub_100019F74();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001AB70()
{
  v0 = sub_100043D28();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_100043D88();
  qword_10005C988 = result;
  return result;
}

uint64_t sub_10001AD30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100043D28();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v4);
  result = sub_100043D78();
  *a2 = result;
  return result;
}

void sub_10001AE78(uint64_t a1, SEL *a2, SEL *a3, uint64_t *a4)
{
  v6 = [objc_opt_self() *a2];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 *a3];

    if (v8)
    {
      *a4 = sub_100043D98();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_10001AEFC()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef_appleMoveTimeGoal;
  if (v1 == 2)
  {
    v3 = &selRef_minuteUnit;
  }

  else
  {
    v2 = &selRef_activeEnergyBurnedGoal;
    v3 = &selRef_smallCalorieUnit;
  }

  v4 = [v0 *v2];
  v5 = [objc_opt_self() *v3];
  [v4 doubleValueForUnit:v5];
  v7 = v6;

  return v7 > 0.0;
}

void sub_10001AFC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1000028F8(&qword_1000590C8);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10001B094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_1000028F8(&qword_100059B90);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10001B164(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_1000433C8();
  v74 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v6 - 8);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v56 - v9;
  v10 = sub_100043328();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v62 = sub_1000433D8();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000433B8();
  sub_100043318();
  v72 = v22;
  v78 = v24;
  v25 = v11;
  sub_100043368();
  v26 = *(v11 + 8);
  v79 = v10;
  v68 = v26;
  v69 = v11 + 8;
  result = (v26)(v19, v10);
  v28 = &_swiftEmptyArrayStorage;
  v80 = &_swiftEmptyArrayStorage;
  v29 = *(a1 + 16);
  if (v29)
  {
    v58 = v13;
    v30 = 0;
    v76 = enum case for Calendar.Component.minute(_:);
    v31 = v74++;
    v75 = (v31 + 13);
    v73 = (v25 + 48);
    v65 = v5;
    v66 = (v25 + 32);
    v32 = a1 + 40;
    v64 = v16;
    v71 = v29;
    v57 = a1 + 40;
    while (1)
    {
      v60 = v28;
      v33 = (v32 + 16 * v30);
      v34 = v30;
      while (1)
      {
        if (v34 >= v29)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_20;
        }

        if ((*v33 & 1) == 0)
        {
          break;
        }

LABEL_5:
        ++v34;
        v33 += 2;
        if (v35 == v29)
        {
          v28 = v60;
          goto LABEL_18;
        }
      }

      v36 = *(v33 - 1);
      v37 = *v75;
      result = (*v75)(v5, v76, v3);
      if ((v34 * 30) >> 64 != (30 * v34) >> 63)
      {
        goto LABEL_21;
      }

      v38 = v77;
      sub_1000433A8();
      v39 = *v74;
      (*v74)(v5, v3);
      v40 = *v73;
      if ((*v73)(v38, 1, v79) == 1)
      {
        goto LABEL_4;
      }

      v70 = v34 + 1;
      v41 = v79;
      v42 = v64;
      v63 = *v66;
      v63(v64, v77, v79);
      v37(v5, v76, v3);
      v43 = v67;
      v44 = v42;
      sub_1000433A8();
      v45 = v5;
      v46 = v41;
      v47 = v43;
      v48 = v3;
      v39(v45, v3);
      if (v40(v47, 1, v41) == 1)
      {
        break;
      }

      v49 = v58;
      v63(v58, v47, v41);
      v50 = objc_allocWithZone(_HKActivityStatisticsQuantityInfo);
      isa = sub_1000432D8().super.isa;
      v52 = sub_1000432D8().super.isa;
      v53 = [v50 initWithStartDate:isa endDate:v52];

      v54 = [objc_opt_self() quantityWithUnit:v59 doubleValue:v36];
      [v53 setQuantityValue:v54];

      v55 = v68;
      v68(v49, v46);
      v55(v44, v46);
      sub_1000442C8();
      v30 = v70;
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000442F8();
      }

      result = sub_100044308();
      v28 = v80;
      v29 = v71;
      v3 = v48;
      v5 = v65;
      v32 = v57;
      if (v30 == v71)
      {
        goto LABEL_18;
      }
    }

    v68(v44, v41);
    v38 = v47;
    v5 = v65;
    v35 = v70;
LABEL_4:
    result = sub_10001C120(v38);
    v29 = v71;
    goto LABEL_5;
  }

LABEL_18:
  v68(v72, v79);
  (*(v61 + 8))(v78, v62);
  return v28;
}

uint64_t sub_10001B81C(uint64_t a1)
{
  v44 = sub_1000433C8();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000028F8(&qword_100058F90);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_100043328();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = sub_1000433D8();
  v33 = *(v16 - 8);
  v34 = v16;
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000433B8();
  sub_100043318();
  v45 = v18;
  v46 = v15;
  sub_100043368();
  v19 = v7;
  v37 = *(v8 + 8);
  v38 = v8 + 8;
  result = v37(v12, v7);
  v47 = &_swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v41 = a1 + 32;
    v40 = enum case for Calendar.Component.hour(_:);
    v39 = (v2 + 104);
    v23 = (v2 + 8);
    v24 = (v8 + 48);
    v36 = (v8 + 32);
    v35 = &_swiftEmptyArrayStorage;
    v25 = v43;
    while (1)
    {
      v26 = v22;
      while (1)
      {
        if (v26 >= v21)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v22 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_23;
        }

        v27 = *(v41 + 8 * v26);
        v28 = v44;
        (*v39)(v25, v40, v44);
        v29 = v19;
        sub_1000433A8();
        (*v23)(v25, v28);
        if ((*v24)(v6, 1, v19) == 1)
        {
          result = sub_10001C120(v6);
          goto LABEL_5;
        }

        (*v36)(v42, v6, v19);
        sub_1000432A8();
        if (v27 == 1.0)
        {
          v31 = 0;
        }

        else
        {
          if (v27 != 2.0)
          {
            result = v37(v42, v19);
            goto LABEL_5;
          }

          v31 = 1;
        }

        v32 = [objc_allocWithZone(_HKActivityStatisticsStandHourInfo) initWithTimeStamp:v31 state:v30];
        v19 = v29;
        result = v37(v42, v29);
        if (v32)
        {
          break;
        }

LABEL_5:
        ++v26;
        if (v22 == v21)
        {
          goto LABEL_21;
        }
      }

      sub_1000442C8();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000442F8();
      }

      result = sub_100044308();
      v35 = v47;
      v19 = v29;
      if (v22 == v21)
      {
        goto LABEL_21;
      }
    }
  }

  v35 = &_swiftEmptyArrayStorage;
LABEL_21:
  v37(v46, v19);
  (*(v33 + 8))(v45, v34);
  return v35;
}

id sub_10001BD1C(uint64_t a1)
{
  v4 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
    goto LABEL_40;
  }

  if (a1 + 0x4000000000000007 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = 2 * v4;
  if (((2 * v4) & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_unknownObjectRelease();
    sub_10001B094(v1, (v1 + 4), 0, v2);
    v9 = v29;
    goto LABEL_14;
  }

  v1 = &off_100055C90;
  v5 = 38;
  if (v3 <= 0x26)
  {
    v5 = 2 * v4;
  }

  v6 = 2 * v5;
  if (v3)
  {
    v2 = v6 + 1;
  }

  else
  {
    v2 = 1;
  }

  sub_100044618();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = &_swiftEmptyArrayStorage;
  }

  v8 = v7[2];

  if (v8 != v2 >> 1)
  {
    goto LABEL_42;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v9)
  {
    goto LABEL_15;
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  v10 = 38;
  if (v3 <= 0x26)
  {
    v10 = v3;
  }

  v11 = 2 * v10;
  if (v3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = &_swiftEmptyArrayStorage;
  }

  v14 = v13[2];

  if (v14 == v12 >> 1)
  {
    v12 = &off_100055F10;
    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v15)
    {
      goto LABEL_26;
    }

    v15 = &_swiftEmptyArrayStorage;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_10001B094(&off_100055F10, &unk_100055F30, 0, v12);
    v15 = v30;
  }

  swift_unknownObjectRelease();
LABEL_26:
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_45:
    swift_unknownObjectRelease();
    sub_10001AFC4(v12, v12 + 32, 0, v4);
    v20 = v31;
    goto LABEL_37;
  }

  v12 = &off_100056190;
  v16 = 20;
  if (v4 <= 0x14)
  {
    v16 = v4;
  }

  v17 = 2 * v16;
  if (v4)
  {
    v4 = v17 + 1;
  }

  else
  {
    v4 = 1;
  }

  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (v19 != v4 >> 1)
  {
    goto LABEL_45;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();
  }

  v21 = objc_opt_self();
  v22 = [v21 kilocalorieUnit];
  sub_10001B164(v9, v22);

  v23 = [v21 minuteUnit];
  sub_10001B164(v15, v23);

  sub_10001B81C(v20);

  v24 = [objc_allocWithZone(_HKActivityStatisticsQueryResult) init];
  sub_100009BB8(0, &qword_100059B80);
  isa = sub_1000442D8().super.isa;

  [v24 setActiveEnergyResults:isa];

  v26 = sub_1000442D8().super.isa;

  [v24 setAppleExerciseTimeResults:v26];

  sub_100009BB8(0, &qword_100059B88);
  v27 = sub_1000442D8().super.isa;

  [v24 setAppleStandHourResults:v27];

  return v24;
}