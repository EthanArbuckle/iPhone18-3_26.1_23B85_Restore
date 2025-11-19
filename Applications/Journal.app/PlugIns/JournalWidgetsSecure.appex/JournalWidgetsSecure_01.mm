BOOL sub_1000190F0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t sub_100019138(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_100010500(a1, a2);
  }

  return a1;
}

uint64_t sub_10001914C(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x140))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 assetMetaData];

    if (v7)
    {
      v9 = sub_1000D9DF4();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v16 = v9;
    v17 = v11;
    __chkstk_darwin(v8);
    v15[2] = a1;
    v15[3] = a2;
    sub_100007BC0(&qword_100120828);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v12 = _s8MetadataCMa();
    sub_1000194DC(sub_1000194BC, v15, &type metadata for Never, v12, v13, &v18);
    sub_100010500(v16, v17);
    v5 = v18;
  }

  return (*(a2 + 40))(v5, a1, a2);
}

uint64_t sub_10001934C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v4);
  v6 = (&v11 - v5);
  v8 = *a1;
  v7 = a1[1];
  _s8MetadataCMa();
  *v6 = v8;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  sub_100018AAC(v6);
  *a2 = v9;
  return sub_100019784(v8, v7);
}

uint64_t sub_1000194DC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_100019784(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000197D8()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100120830);
  v1 = sub_100007EBC(v0, qword_100120830);
  if (qword_10011FA58 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000198A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 628) = a5;
  *(v6 + 627) = a4;
  *(v6 + 504) = a3;
  *(v6 + 512) = a6;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_100007BC0(&qword_100120900);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  sub_100007BC0(&qword_100120908);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = sub_1000DC224();
  *(v6 + 568) = sub_1000DC214();
  v9 = sub_1000DC1D4();
  *(v6 + 576) = v9;
  *(v6 + 584) = v8;

  return _swift_task_switch(sub_1000199F8, v9, v8);
}

uint64_t sub_1000199F8()
{
  v1 = *(v0 + 504);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = *(v0 + 628);
    v35 = **(v0 + 496);
    v3 = v1 + 32;
    v4 = sub_1000DC244();
    v5 = *(v4 - 8);
    v34 = *(v5 + 56);
    v33 = (v5 + 48);
    v32 = (v5 + 8);
    do
    {
      v7 = *(v0 + 552);
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      v10 = *(v0 + 627);
      *(v0 + 16) = *v3;
      v12 = *(v3 + 32);
      v11 = *(v3 + 48);
      v13 = *(v3 + 16);
      *(v0 + 80) = *(v3 + 64);
      *(v0 + 48) = v12;
      *(v0 + 64) = v11;
      *(v0 + 32) = v13;
      v34(v7, 1, 1, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v16;
      *(v14 + 96) = *(v0 + 80);
      v17 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v17;
      *(v14 + 104) = v10;
      *(v14 + 105) = v36;
      *(v14 + 112) = v9;
      sub_10001CBA0(v7, v8);
      v18 = (*v33)(v8, 1, v4);
      v19 = *(v0 + 544);
      v20 = *(v0 + 512);
      if (v18 == 1)
      {
        sub_100010450(v0 + 16, v0 + 88);
        sub_100010450(v0 + 16, v0 + 160);
        v21 = v20;
        sub_10001CC10(v19);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100010450(v0 + 16, v0 + 232);
        sub_100010450(v0 + 16, v0 + 304);
        v24 = v20;
        sub_1000DC234();
        (*v32)(v19, v4);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_1000DC1D4();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_9:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_1000E03A0;
      *(v26 + 24) = v14;

      sub_100007BC0(&qword_1001208E8);
      v27 = v23 | v22;
      if (v23 | v22)
      {
        v27 = v0 + 432;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = v22;
        *(v0 + 456) = v23;
      }

      v6 = *(v0 + 552);
      *(v0 + 464) = 1;
      *(v0 + 472) = v27;
      *(v0 + 480) = v35;
      swift_task_create();

      sub_1000104AC(v0 + 16);
      sub_10001CC10(v6);
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_100007BC0(&qword_1001208E8);
  sub_1000DC1F4();
  *(v0 + 592) = _swiftEmptyArrayStorage;
  v28 = sub_1000DC214();
  *(v0 + 600) = v28;
  v29 = swift_task_alloc();
  *(v0 + 608) = v29;
  *v29 = v0;
  v29[1] = sub_100019DDC;
  v30 = *(v0 + 520);

  return TaskGroup.Iterator.next(isolation:)(v0 + 376, v28, &protocol witness table for MainActor, v30);
}

uint64_t sub_100019DDC()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_100019F20, v3, v2);
}

uint64_t sub_100019F20()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v20 = *(v0 + 416);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100047350(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100047350((v8 > 1), v9 + 1, 1, v7);
    }

    v7[2] = v9 + 1;
    v10 = &v7[7 * v9];
    v10[4] = v1;
    *(v10 + 40) = v3;
    *(v10 + 41) = BYTE1(v3) & 1;
    v11 = *(v0 + 616);
    *(v10 + 23) = *(v0 + 620);
    *(v10 + 42) = v11;
    v10[6] = v2;
    *(v10 + 56) = v4 & 1;
    *(v10 + 57) = BYTE1(v4) & 1;
    *(v10 + 58) = BYTE2(v4) & 1;
    v12 = *(v0 + 622);
    *(v10 + 63) = *(v0 + 626);
    *(v10 + 59) = v12;
    v10[8] = v5;
    *(v10 + 9) = v20;
    *(v0 + 592) = v7;
    v13 = sub_1000DC214();
    *(v0 + 600) = v13;
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_100019DDC;
    v15 = *(v0 + 520);

    return TaskGroup.Iterator.next(isolation:)(v0 + 376, v13, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = *(v0 + 592);
    v17 = *(v0 + 488);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    *v17 = v16;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10001A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  *(v7 + 57) = a6;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  return _swift_task_switch(sub_10001A1B0, 0, 0);
}

uint64_t sub_10001A1B0()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = _s15MOMapAnnotationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_coordinate];
  *v7 = v2;
  *(v7 + 1) = v3;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v27 = objc_msgSendSuper2((v0 + 16), "init");
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v0 + 40);
  if (v11)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    v15 = v14 != 0;
    if (v14)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 64) > 150.0;
LABEL_8:
  v26 = *(v0 + 57);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  if (v8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v20 = [*(v0 + 48) traitCollection];
  v21 = sub_10002D99C(v11, v9, v15, v16, v20);
  v23 = v22;

  *v18 = v27;
  *(v18 + 8) = v17;
  *(v18 + 9) = v9;
  *(v18 + 16) = v19;
  *(v18 + 24) = (v26 & 1) == 0;
  *(v18 + 25) = v15;
  *(v18 + 26) = v16;
  *(v18 + 32) = 0x4000000000000000;
  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10001A39C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001A494;

  return v6(a1);
}

uint64_t sub_10001A494()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10001A58C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001A658(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000800C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007FC0(v11);
  return v7;
}

unint64_t sub_10001A658(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001A764(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000DCA74();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001A764(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001A7B0(a1, a2);
  sub_10001A8E0(&off_10010CDD0);
  return v3;
}

char *sub_10001A7B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001A9CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000DCA74();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000DBFF4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001A9CC(v10, 0);
        result = sub_1000DC9F4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001A8E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001AA40(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001A9CC(uint64_t a1, uint64_t a2)
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

  sub_100007BC0(&qword_1001208E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001AA40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007BC0(&qword_1001208E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_10001AB34(double *a1)
{
  v39 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v2 = *(v39 - 1);
  __chkstk_darwin(v39);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 2) < 3uLL)
  {
  }

  else
  {
    if (qword_10011F9B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1000DAFF4();
    sub_100007EBC(v5, qword_100120830);
    v6 = sub_1000DAFD4();
    v7 = sub_1000DC4E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v8, 2u);
    }

    v9 = objc_allocWithZone(_s30MOSuggestionAssetMapsClustererCMa());

    v11 = sub_1000660C8(v10, 1.0);
    sub_1000663E0();
    v12 = sub_100066E70();
    v13 = *(v12 + 2);
    if (v13)
    {
      v37 = v11;
      v52 = _swiftEmptyArrayStorage;
      sub_1000178EC(0, v13, 0);
      a1 = v52;
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v12;
      v15 = v12 + v14;
      v38 = *(v2 + 72);
      for (i = v13 - 1; ; --i)
      {
        sub_100010568(v15, v4);
        v17 = *v4;
        v18 = v4[1];
        v19 = (v4 + v39[10]);
        v21 = *v19;
        v20 = v19[1];
        v22 = v4[3];
        v23 = v22 < 2;
        v24 = v22 >= 2 ? v4[3] : 0;
        v25 = *(v4 + v39[9]);
        v26 = *(v4 + v39[11]);
        v27 = *(v4 + v39[12]);
        v28 = v25;

        sub_1000105CC(v4);
        v40[72] = v23;
        *&v41 = v17;
        *(&v41 + 1) = v18;
        *&v42 = v25;
        *(&v42 + 1) = v24;
        LOBYTE(v43) = v23;
        *(&v43 + 1) = v21;
        *&v44 = v20;
        BYTE8(v44) = v26;
        v45 = v27;
        v46[0] = v17;
        v46[1] = v18;
        v46[2] = v25;
        v46[3] = v24;
        v47 = v23;
        v48 = v21;
        v49 = v20;
        v50 = v26;
        v51 = v27;
        sub_100010450(&v41, v40);
        sub_1000104AC(v46);
        v52 = a1;
        v30 = *(a1 + 2);
        v29 = *(a1 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_1000178EC((v29 > 1), v30 + 1, 1);
          a1 = v52;
        }

        *(a1 + 2) = v30 + 1;
        v31 = &a1[9 * v30];
        *(v31 + 2) = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
        *(v31 + 12) = v45;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        if (!i)
        {
          break;
        }

        v15 += v38;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

id sub_10001AEC0(uint64_t a1, double *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v118 = a7;
  if (a2)
  {
    v122 = a2;
  }

  else
  {
    v122 = sub_10001AB34(a1);
  }

  v13 = objc_allocWithZone(MKStandardMapConfiguration);

  v123 = [v13 init];
  if (a3 > 6u)
  {

    v15 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v14 = sub_1000DCC74();

    if (v14)
    {
      v15 = &selRef_filterIncludingAllCategories;
    }

    else
    {
      v15 = &selRef_filterExcludingAllCategories;
    }
  }

  v16 = [objc_opt_self() *v15];
  [v123 setPointOfInterestFilter:v16];

  v17 = *(a1 + 16);
  v124 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  if (a6)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v131.origin.x = v21;
    v131.origin.y = v23;
    v131.size.width = v25;
    v131.size.height = v27;
    v28 = CGRectGetWidth(v131) + -160.0;
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v132.origin.x = v31;
    v132.origin.y = v33;
    v132.size.width = v35;
    v132.size.height = v37;
    v38 = CGRectGetHeight(v132) * 0.66;
  }

  else
  {
    v28 = *&a4;
    v38 = *&a5;
  }

  v39 = v122;
  if (a3 > 6u)
  {

    if (a8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = sub_1000DCC74();

    if ((v40 & 1) == 0)
    {
      v28 = sub_100037454(a3);
      v38 = v41;
    }

    if (a8)
    {
LABEL_15:
      if (v17 == 1)
      {
        v130 = *(a1 + 96);
        v42 = *(a1 + 80);
        v128 = *(a1 + 64);
        v129 = v42;
        v43 = *(a1 + 48);
        v126 = *(a1 + 32);
        v127 = v43;
        v44 = v130;
        v45 = v43;
        if (v43)
        {
          v46 = *(&v128 + 1) & 0xFFFFFFFFFFFFLL;
          if ((v129 & 0x2000000000000000) != 0)
          {
            v46 = BYTE7(v129) & 0xF;
          }

          if (v46 || v130 <= 150.0)
          {
            v47 = v126;
            sub_100010450(&v126, v125);
            v48 = v45;

            v49 = [objc_opt_self() cameraLookingAtMapItem:v48 forViewSize:1 allowPitch:{v28, v38}];
            [v49 setCenterCoordinate:v47];
            [v124 setCamera:v49];
            sub_100007BC0(&qword_100120648);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1000DFEF0;
            v51 = v127;
            *(inited + 32) = v126;
            v52 = v130;
            v54 = v128;
            v53 = v129;
            *(inited + 48) = v51;
            *(inited + 64) = v54;
            *(inited + 80) = v53;
            *(inited + 96) = v52;
            sub_100010450(&v126, v125);
            v55 = sub_10006A280(inited, 0, 0, 0, 1);
            v57 = v56;
            v59 = v58;
            v61 = v60;
            swift_setDeallocating();
            sub_1000104AC(inited + 32);
            [v124 region];
            if (v44 <= 1.0 || v62 >= v59 || v63 >= v61)
            {

              sub_1000104AC(&v126);
              goto LABEL_102;
            }

            if (sub_1000103F0(v55, v57, v59, v61))
            {
              [v124 setRegion:{v55, v57, v59, v61}];
            }

            else
            {
              if (qword_10011F9B0 != -1)
              {
                swift_once();
              }

              v114 = sub_1000DAFF4();
              sub_100007EBC(v114, qword_100120830);
              v115 = sub_1000DAFD4();
              v116 = sub_1000DC4C4();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 0;
                _os_log_impl(&_mh_execute_header, v115, v116, "[MapSnapshot] cannot generate a valid region for the multipin map with naiveUncertaintyBasedRegion", v117, 2u);
              }
            }

            goto LABEL_44;
          }
        }

        if (a3 == 2)
        {

          v81 = 0;
          v80 = 1;
          v82 = 1;
          goto LABEL_72;
        }

        v80 = sub_1000DCC74();
        v81 = 0;
        goto LABEL_64;
      }

      if (a3 > 3u || a3 <= 1u || a3 == 2)
      {
        v79 = sub_1000DCC74();

        if (v79)
        {
LABEL_58:
          v80 = 0;
          v81 = 1;
          goto LABEL_65;
        }

        if (a3 > 1u || !a3)
        {
          v83 = sub_1000DCC74();

          if (v83)
          {
            goto LABEL_58;
          }

          if (a3 <= 5u || a3 == 6)
          {
            v81 = sub_1000DCC74();
            v80 = 0;
LABEL_64:

LABEL_65:
            if (a3 == 2)
            {
              v82 = 1;
              goto LABEL_72;
            }

            goto LABEL_67;
          }
        }
      }

      v80 = 0;
      v81 = 1;
LABEL_67:
      v84 = sub_1000DCC74();

      if (v84)
      {
        v82 = 1;
LABEL_73:
        if (qword_10011F9B0 != -1)
        {
          swift_once();
        }

        v85 = sub_1000DAFF4();
        sub_100007EBC(v85, qword_100120830);
        swift_bridgeObjectRetain_n();
        v86 = sub_1000DAFD4();
        v87 = sub_1000DC4E4();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v121 = v80;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v89 = 136316162;
          v91 = 0xEA00000000006564;
          v92 = 0xE500000000000000;
          v93 = 0x6C6C616D73;
          if (a3 != 6)
          {
            v93 = 0x657263536C6C7566;
            v92 = 0xEA00000000006E65;
          }

          v94 = 0xE600000000000000;
          v95 = 0x6D756964656DLL;
          if (a3 != 4)
          {
            v95 = 0x61546D756964656DLL;
            v94 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 5u)
          {
            v93 = v95;
            v92 = v94;
          }

          v96 = 0x656772616CLL;
          if (a3 == 2)
          {
            v96 = 0x69576D756964656DLL;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v97 = 0xE600000000000000;
          v98 = 0x656772614C78;
          if (!a3)
          {
            v98 = 0x6154656772614C78;
            v97 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 1u)
          {
            v96 = v98;
            v91 = v97;
          }

          if (a3 <= 3u)
          {
            v99 = v96;
          }

          else
          {
            v99 = v93;
          }

          if (a3 <= 3u)
          {
            v100 = v91;
          }

          else
          {
            v100 = v92;
          }

          v101 = sub_10001A58C(v99, v100, &v126);

          *(v89 + 4) = v101;
          *(v89 + 12) = 2048;
          v102 = *(v122 + 2);

          *(v89 + 14) = v102;
          v39 = v122;

          *(v89 + 22) = 1024;
          *(v89 + 24) = v88 & 1;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v121 & 1;
          *(v89 + 34) = 1024;
          *(v89 + 36) = v82 & 1;
          _os_log_impl(&_mh_execute_header, v86, v87, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v89, 0x28u);
          sub_100007FC0(v90);
          v81 = v88;

          v80 = v121;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v103 = sub_10006A280(v39, v81 & 1, v80 & 1, v82 & 1, 1);
        v105 = v104;
        v107 = v106;
        v109 = v108;

        if (sub_1000103F0(v103, v105, v107, v109))
        {
          [v124 setRegion:{v103, v105, v107, v109, v118}];
        }

        else
        {
          v110 = sub_1000DAFD4();
          v111 = sub_1000DC4C4();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "[MapSnapshot] cannot generate a valid region for the multipin map", v112, 2u);
          }
        }

        goto LABEL_102;
      }

      if (a3 <= 1u && a3)
      {
        v82 = 1;
      }

      else
      {
        v82 = sub_1000DCC74();
      }

LABEL_72:

      goto LABEL_73;
    }
  }

  if (v17)
  {
    v130 = *(a1 + 96);
    v64 = *(a1 + 48);
    v126 = *(a1 + 32);
    v127 = v64;
    v65 = *(a1 + 80);
    v128 = *(a1 + 64);
    v129 = v65;
    v66 = fmin(v130 / 111000.0 * 1.5, 180.0);
    if (sub_1000103F0(*&v126, *(&v126 + 1), v66, v66))
    {
      [v124 setRegion:{v126, v66, v66, v118}];
LABEL_102:
      [v124 setShowsBuildings:{1, v118}];
      [v124 setPreferredConfiguration:v123];
      [v124 setSize:{v28, v38}];
      [v124 setTraitCollection:v119];

      return v124;
    }

    sub_100010450(&v126, v125);
    if (qword_10011F9B0 != -1)
    {
      swift_once();
    }

    v75 = sub_1000DAFF4();
    sub_100007EBC(v75, qword_100120830);
    v76 = sub_1000DAFD4();
    v77 = sub_1000DC4C4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "[MapSnapshot] cannot generate a valid region for the generic map", v78, 2u);
    }

LABEL_44:
    sub_1000104AC(&v126);
    goto LABEL_102;
  }

  if (qword_10011F9B0 != -1)
  {
    swift_once();
  }

  v67 = sub_1000DAFF4();
  sub_100007EBC(v67, qword_100120830);

  v68 = sub_1000DAFD4();
  v69 = sub_1000DC4C4();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v126 = v71;
    *v70 = 136315138;
    v72 = sub_1000DC144();
    v74 = sub_10001A58C(v72, v73, &v126);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "[MapSnapshot] cannot generate valid options for the generic map since locations are nil: %s", v70, 0xCu);
    sub_100007FC0(v71);
  }

  return v124;
}

uint64_t sub_10001C1CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 40) = sub_1000DC224();
  *(v3 + 48) = sub_1000DC214();
  v5 = sub_1000DC1D4();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_10001C26C, v5, v4);
}

uint64_t sub_10001C26C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = sub_10001AB34(v2);
  *(v0 + 72) = v4;
  v5 = *(v2 + 16) == 1;
  v6 = sub_10001AEC0(v2, v4, v3, 0, 0, 1, v1, 1);
  *(v0 + 80) = v6;
  v7 = sub_100007BC0(&qword_1001208E8);
  v8 = sub_100007BC0(&qword_1001208F0);
  v9 = sub_1000DC214();
  *(v0 + 88) = v9;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 25) = v5;
  *(v10 + 32) = v6;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_10001C404;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v8, v9, &protocol witness table for MainActor, &unk_1000E0378, v10, v7);
}

uint64_t sub_10001C404()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10001C588, v3, v2);
}

uint64_t sub_10001C588()
{

  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v0;
    sub_1000DCAB4();
    v4 = 0;
    v27 = v2;
    do
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 + 32);
      v30 = *(v2 + v4 + 40);
      v7 = *(v2 + v4 + 41);
      v29 = *(v2 + v4 + 48);
      v8 = *(v2 + v4 + 56);
      v9 = *(v2 + v4 + 57);
      v28 = *(v5 + 58);
      v10 = *(v5 + 64);
      v11 = *(v5 + 72);
      v12 = *(v5 + 80);
      v13 = v6;
      sub_10001C8B8(v11, v12);
      v14 = v13;
      sub_10001C8B8(v11, v12);
      sub_10001C8F8(v11, v12);
      v15 = v14;
      sub_10001C8B8(v11, v12);

      objc_allocWithZone(_s19MOPOIAnnotationViewCMa());
      if (v7)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v9 == 0;
      v2 = v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 256;
      }

      v19 = v1 & 0xFF000000 | v8 | v18;
      if (v28)
      {
        v20 = 0x10000;
      }

      else
      {
        v20 = 0;
      }

      v1 = v19 | v20;
      sub_100070C64(v14, v16 | v30, v29, v19 | v20, v11, v12, v10);

      sub_10001C8F8(v11, v12);
      sub_1000DCA94();
      sub_1000DCAC4();
      sub_1000DCAD4();
      sub_1000DCAA4();
      v4 += 56;
      --v3;
    }

    while (v3);

    v0 = v26;
  }

  else
  {
  }

  v21 = v0[10];
  sub_10001C938();
  isa = sub_1000DC124().super.isa;

  [v21 setAnnotationViews:isa];

  v23 = v0[1];
  v24 = v0[10];

  return v23(v24);
}

uint64_t sub_10001C7E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 25);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10001CD68;

  return sub_1000198A0(a1, a2, v6, v9, v7, v8);
}

id sub_10001C8B8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_10001C8F8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_10001C938()
{
  result = qword_1001208F8;
  if (!qword_1001208F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001208F8);
  }

  return result;
}

uint64_t sub_10001C984()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10001C9D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001CAAC;

  return sub_10001A184(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t sub_10001CAAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001CBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001CC10(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100120908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001CC78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CCB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CAAC;

  return sub_10001A39C(a1, v4);
}

id sub_10001CDA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DrawingAsset()
{
  result = qword_1001209D0;
  if (!qword_1001209D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10001CEA8()
{
  v1 = v0;
  v2 = sub_100007BC0(&qword_1001203F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36[-v3];
  v5 = sub_1000DA124();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000DBED4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = sub_1000DAF04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000DAE84();
  v14 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v16 = [v14 initWithContentType:isa];

  (*(v11 + 8))(v13, v10);
  sub_100046898(0x676E6977617264, 0xE700000000000000, 0, 0);
  v17 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v17 && (v18 = [v17 entry]) != 0)
  {
    v19 = v18;
    sub_1000DA3A4();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1000DA084();
  (*(*(v21 - 8) + 56))(v9, v20, 1, v21);
  sub_1000DBE74();
  sub_1000DA114();
  v22 = sub_1000DBF64();
  v24 = v23;
  sub_100007BC0(&qword_1001203C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000DFEF0;
  v26 = sub_1000478A0(v22, v24, v9);
  v28 = v27;

  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_1000DC124().super.isa;

  [v16 setAlternateNames:v29];

  sub_1000080B0(v9, &qword_1001203B8);
  sub_100014BAC(v4);
  v30 = sub_1000DA764();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v4, 1, v30) == 1)
  {
    sub_1000080B0(v4, &qword_1001203F0);
LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  sub_1000DA754();
  v33 = v32;
  (*(v31 + 8))(v4, v30);
  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = sub_1000DBF04();

LABEL_10:
  [v16 setTextContent:v34];

  return v16;
}

uint64_t sub_10001D3EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA764();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D430()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100120A20);
  v1 = sub_100007EBC(v0, qword_100120A20);
  if (qword_10011FA40 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127080);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10001D4F8(void *a1, unsigned __int8 a2)
{
  v67 = sub_1000DA084();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v67);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_1000DA0E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v62 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_sessionID;
  sub_1000DA0D4();
  v2[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_persistentStoresLoadSuccess] = 0;
  v63 = a1;
  v18 = sub_10005C58C(a1, a2);
  v19 = OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container;
  *&v2[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container] = v18;
  v61 = v10;
  v20 = *(v10 + 16);
  v68 = v16;
  v65 = v9;
  v20(v16, &v2[v17], v9);
  v66 = v8;
  sub_1000DA074();
  v21 = [*&v2[v19] viewContext];
  *&v2[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_context] = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 mergeByPropertyStoreTrumpMergePolicy];
  [v23 setMergePolicy:v24];

  v25 = type metadata accessor for CoreDataStackShared();
  v70.receiver = v2;
  v70.super_class = v25;
  v26 = objc_msgSendSuper2(&v70, "init");
  if (MKBGetDeviceLockState() == 1)
  {
    v27 = v68;
    v28 = v65;
    if (qword_10011F9B8 != -1)
    {
      swift_once();
    }

    v29 = sub_1000DAFF4();
    sub_100007EBC(v29, qword_100120A20);
    v30 = v62;
    v20(v62, v27, v28);
    v31 = sub_1000DAFD4();
    v32 = sub_1000DC4C4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      sub_10001E77C();
      v35 = sub_1000DCC44();
      v36 = v28;
      v38 = v37;
      v39 = *(v61 + 8);
      v39(v30, v36);
      v40 = sub_10001A58C(v35, v38, aBlock);

      *(v33 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s (sharedCoredataInit) SharedDeviceInfoProvider.isDeviceLocked == TRUE, unable to complete CoreDataStackShared initialization.", v33, 0xCu);
      sub_100007FC0(v34);

      (*(v64 + 8))(v66, v67);
      v39(v68, v65);
    }

    else
    {

      v56 = *(v61 + 8);
      v56(v30, v28);
      (*(v64 + 8))(v66, v67);
      v56(v27, v28);
    }
  }

  else
  {
    v58 = *&v26[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container];
    v41 = v59;
    v42 = v65;
    v20(v59, v68, v65);
    v62 = v26;
    v43 = v64;
    v44 = v60;
    (*(v64 + 16))(v60, v66, v67);
    v45 = v61;
    v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v42;
    (*(v45 + 32))(v49 + v46, v50, v42);
    *(v49 + v47) = v62;
    v52 = v67;
    (*(v43 + 32))(v49 + v48, v44, v67);
    aBlock[4] = sub_10001E670;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001E298;
    aBlock[3] = &unk_10010E0D0;
    v53 = _Block_copy(aBlock);
    v54 = v58;
    v55 = v62;

    [v54 loadPersistentStoresWithCompletionHandler:v53];
    _Block_release(v53);

    (*(v43 + 8))(v66, v52);
    v26 = v62;
    (*(v45 + 8))(v68, v51);
  }

  return v26;
}

void sub_10001DB80(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000DA0E4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  if (a2)
  {
    v19 = sub_1000D9C44();
    if (qword_10011F9B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1000DAFF4();
    sub_100007EBC(v20, qword_100120A20);
    (*(v14 + 16))(v18, a3, v13);
    v21 = v19;
    v22 = sub_1000DAFD4();
    v23 = sub_1000DC4D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68 = v26;
      *v24 = 136446466;
      sub_10001E77C();
      v27 = sub_1000DCC44();
      v28 = v13;
      v30 = v29;
      (*(v14 + 8))(v18, v28);
      v31 = sub_10001A58C(v27, v30, &v68);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s (sharedCoredataInit) LoadPersistentStores Unresolved error: %@", v24, 0x16u);
      sub_10001E820(v25);

      sub_100007FC0(v26);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }

  else
  {
    v63 = a5;
    v64 = v16;
    a4[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_persistentStoresLoadSuccess] = 1;
    v33 = [*&a4[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container] viewContext];
    v34 = [v33 persistentStoreCoordinator];

    v65 = a3;
    v62 = v12;
    if (v34)
    {
      v35 = [v34 persistentStores];

      sub_10001E7D4();
      v36 = sub_1000DC134();

      if (v36 >> 62)
      {
        v37 = sub_1000DCB14();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v37 = 0;
    }

    v66 = v10;
    v38 = v13;
    if (qword_10011F9B8 != -1)
    {
      swift_once();
    }

    v39 = sub_1000DAFF4();
    sub_100007EBC(v39, qword_100120A20);
    v40 = a4;
    v41 = sub_1000DAFD4();
    v42 = sub_1000DC4E4();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v9;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136446466;
      sub_10001E77C();
      v46 = sub_1000DCC44();
      v48 = sub_10001A58C(v46, v47, &v68);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s(sharedCoredataInit) persistentStoresCount:%ld", v44, 0x16u);
      sub_100007FC0(v45);
      v9 = v67;
    }

    v49 = v64;
    (*(v14 + 16))(v64, v65, v38);
    v50 = v66;
    v51 = v62;
    (*(v66 + 16))(v62, v63, v9);
    v52 = sub_1000DAFD4();
    v53 = sub_1000DC4E4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v54 = 136446466;
      sub_10001E77C();
      v55 = sub_1000DCC44();
      v57 = v56;
      (*(v14 + 8))(v49, v38);
      v58 = sub_10001A58C(v55, v57, &v68);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      sub_1000DA024();
      v60 = v59;
      (*(v50 + 8))(v51, v67);
      *(v54 + 14) = -v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s (sharedCoredataInit) container.loadPersistentStores completed in %f seconds.", v54, 0x16u);
      sub_100007FC0(v65);
    }

    else
    {

      (*(v50 + 8))(v51, v9);
      (*(v14 + 8))(v49, v38);
    }
  }
}

void sub_10001E298(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_10001E354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreDataStackShared()
{
  result = qword_100120A68;
  if (!qword_100120A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E46C()
{
  result = sub_1000DA0E4();
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

uint64_t sub_10001E514()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10001E670(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000DA0E4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000DA084() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_10001DB80(a1, a2, v2 + v6, v9, v10);
}

uint64_t sub_10001E764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001E77C()
{
  result = qword_10011FDE0;
  if (!qword_10011FDE0)
  {
    sub_1000DA0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FDE0);
  }

  return result;
}

unint64_t sub_10001E7D4()
{
  result = qword_100120A78;
  if (!qword_100120A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120A78);
  }

  return result;
}

uint64_t sub_10001E820(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100120A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E888()
{
  v0 = sub_100007BC0(&qword_100120A90);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001E910();
  sub_1000DB174();
  return 0;
}

unint64_t sub_10001E910()
{
  result = qword_100120A88;
  if (!qword_100120A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A88);
  }

  return result;
}

unint64_t sub_10001E994()
{
  result = qword_100120A98;
  if (!qword_100120A98)
  {
    sub_100007C08(&qword_100120AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A98);
  }

  return result;
}

unint64_t sub_10001E9FC()
{
  result = qword_100120AA8;
  if (!qword_100120AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AA8);
  }

  return result;
}

Swift::Int sub_10001EA68()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_1000DCD34(v1);
  return sub_1000DCD74();
}

Swift::Int sub_10001EADC()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_1000DCD34(v1);
  return sub_1000DCD74();
}

unint64_t sub_10001EB30()
{
  if (*v0)
  {
    return 0xD000000000000045;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t getEnumTagSinglePayload for NSItemProviderExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NSItemProviderExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001ECEC()
{
  result = qword_100120AB0;
  if (!qword_100120AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AB0);
  }

  return result;
}

BOOL sub_10001ED40(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1000DCD24();
  sub_1000DCD34(v3);
  v4 = sub_1000DCD74();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10001EE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000DCD24();
  sub_1000DBDD4();
  v6 = sub_1000DCD74();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000DCC74() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10001EF08(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1000DBF44(), sub_1000DCD24(), sub_1000DBFD4(), v3 = sub_1000DCD74(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1000DBF44();
      v9 = v8;
      if (v7 == sub_1000DBF44() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000DCC74();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10001F070()
{
  v1 = *v0;
  v2 = 0x6144657669746361;
  v3 = 0x6E756F4364726F77;
  v4 = 0x746E756F43796164;
  if (v1 != 3)
  {
    v4 = 0x5473656972746E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6557657669746361;
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

uint64_t sub_10001F128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000215A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001F168(uint64_t a1)
{
  v2 = sub_1000211E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F1A4(uint64_t a1)
{
  v2 = sub_1000211E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001F1E0(void *a1)
{
  v3 = sub_100007BC0(&qword_100120BA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100007E68(a1, a1[3]);
  sub_1000211E0();
  sub_1000DCDB4();
  v13 = 0;
  type metadata accessor for StreakSummary();
  sub_100021234(&qword_100120BB0, type metadata accessor for StreakSummary);
  sub_1000DCC24();
  if (!v1)
  {
    _s14descr10010BBE9V8SnapshotVMa();
    v12 = 1;
    sub_1000DCC24();
    v11 = 2;
    sub_1000DCC14();
    v10 = 3;
    sub_1000DCC14();
    v9 = 4;
    sub_1000DCC14();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001F430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v30 = a2;
  v2 = type metadata accessor for StreakSummary();
  v3 = __chkstk_darwin(v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v27 - v5;
  v34 = sub_100007BC0(&qword_100120BB8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v27 - v6;
  v7 = _s14descr10010BBE9V8SnapshotVMa();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000DA084();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(&v10[v2[5]], 1, 1, v11);
  v12(&v10[v2[6]], 1, 1, v11);
  *&v10[v2[7]] = 0;
  v13 = &v10[v8[7]];
  v12(v13, 1, 1, v11);
  v12(&v13[v2[5]], 1, 1, v11);
  v12(&v13[v2[6]], 1, 1, v11);
  *&v13[v2[7]] = 0;
  v14 = v8[8];
  *&v10[v14] = 0;
  v15 = v8[9];
  *&v10[v15] = 0;
  v16 = v8[10];
  v35 = v10;
  *&v10[v16] = 0;
  sub_100007E68(v38, v38[3]);
  sub_1000211E0();
  v17 = v36;
  sub_1000DCDA4();
  if (v17)
  {
    v18 = v35;
  }

  else
  {
    v19 = v13;
    v36 = v14;
    v28 = v16;
    v29 = v15;
    v20 = v31;
    v43 = 0;
    sub_100021234(&qword_100120BC0, type metadata accessor for StreakSummary);
    sub_1000DCBC4();
    v18 = v35;
    sub_10002127C(v33, v35);
    v42 = 1;
    sub_1000DCBC4();
    sub_10002127C(v20, v19);
    v41 = 2;
    v21 = sub_1000DCBB4();
    v22 = v32;
    *(v18 + v36) = v21;
    v40 = 3;
    *(v18 + v29) = sub_1000DCBB4();
    v39 = 4;
    v24 = v34;
    v25 = v37;
    v26 = sub_1000DCBB4();
    (*(v22 + 8))(v25, v24);
    *(v18 + v28) = v26;
    sub_1000212E0(v18, v30, _s14descr10010BBE9V8SnapshotVMa);
  }

  sub_100007FC0(v38);
  return sub_100020FFC(v18, _s14descr10010BBE9V8SnapshotVMa);
}

void sub_10001F960()
{
  v1 = v0;
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  __chkstk_darwin(Update);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007BC0(&qword_100120AF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = _s14descr10010BBE9V8SnapshotVMa();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options;
  if (sub_10001ED40(5u, *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options)))
  {
    sub_100020DD4();
    v12 = sub_1000DC4F4();
    v13 = sub_1000DBF04();
    v14 = [v12 dataForKey:v13];

    if (v14)
    {
      v15 = sub_1000D9DF4();
      v17 = v16;

      sub_1000D9C04();
      swift_allocObject();
      sub_1000D9BF4();
      sub_100021234(&qword_100120AF8, _s14descr10010BBE9V8SnapshotVMa);
      v37 = v15;
      sub_1000D9BE4();

      (*(v8 + 56))(v6, 0, 1, v7);
      sub_100020F14(v6, v10, _s14descr10010BBE9V8SnapshotVMa);
      swift_getKeyPath();
      v36 = 0;
      v40 = v1;
      sub_100021234(&qword_100120AB8, type metadata accessor for InsightsDataManager);
      sub_1000DA294();

      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2B4();

      v34 = v3;
      v18 = v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
      swift_beginAccess();
      sub_100020F7C(v10, v18);
      swift_endAccess();
      v40 = v1;
      v33 = v11;
      swift_getKeyPath();
      sub_1000DA2A4();

      v35 = v17;
      v19 = v7[5];
      swift_getKeyPath();
      v40 = v1;
      sub_1000DA294();

      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2B4();

      swift_beginAccess();
      v20 = type metadata accessor for InsightsDataManager.Streaks(0);
      sub_100020F7C(&v10[v19], v18 + *(v20 + 20));
      swift_endAccess();
      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2A4();

      v21 = *&v10[v7[6]];
      swift_getKeyPath();
      v40 = v1;
      sub_1000DA294();

      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2B4();

      *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount) = v21;
      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2A4();

      v22 = *&v10[v7[7]];
      swift_getKeyPath();
      v40 = v1;
      sub_1000DA294();

      v40 = v1;
      swift_getKeyPath();
      sub_1000DA2B4();

      v23 = v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__byEntryDate;
      swift_beginAccess();
      v24 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
      v25 = v23 + *(v24 + 20);
      *v25 = v22;
      *(v25 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      sub_1000DA2A4();

      v26 = *&v10[v7[8]];
      swift_getKeyPath();
      v39 = v1;
      sub_1000DA294();

      v39 = v1;
      swift_getKeyPath();
      sub_1000DA2B4();

      v27 = v23 + *(v24 + 32);
      *v27 = v26;
      *(v27 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      sub_1000DA2A4();

      v28 = v34;
      sub_1000DA054();
      v29 = *(v1 + v33);
      v30 = Update;
      *(v28 + *(Update + 20)) = 0;
      *(v28 + *(v30 + 24)) = v29;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v32 - 2) = v1;
      *(&v32 - 1) = v28;
      v39 = v1;

      sub_1000DA284();
      sub_100010514(v37, v35);

      sub_100020FFC(v10, _s14descr10010BBE9V8SnapshotVMa);
      sub_100020FFC(v28, type metadata accessor for InsightsDataManager.LastUpdate);
    }
  }
}

uint64_t sub_100020128()
{
  v65 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1 = __chkstk_darwin(v65);
  v66 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v64 = v61 - v3;
  v4 = type metadata accessor for StreakSummary();
  v5 = __chkstk_darwin(v4 - 8);
  v70 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v61 - v7;
  v67 = _s14descr10010BBE9V8SnapshotVMa();
  __chkstk_darwin(v67);
  v68 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v61 - v15;
  __chkstk_darwin(v14);
  v18 = v61 - v17;
  result = sub_10001ED40(5u, *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options));
  if (result)
  {
    swift_getKeyPath();
    v63 = v13;
    v20 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager___observationRegistrar;
    v74 = v0;
    v21 = sub_100021234(&qword_100120AB8, type metadata accessor for InsightsDataManager);
    v22 = v0;
    sub_1000DA294();

    v23 = v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__lastUpdated;
    swift_beginAccess();
    (*(v10 + 16))(v18, v23, v9);
    sub_1000D9F94();
    sub_100021234(&qword_100120AC0, &type metadata accessor for Date);
    v24 = sub_1000DBE64();
    v25 = *(v10 + 8);
    v26 = v16;
    v27 = v20;
    v28 = v63;
    v25(v26, v9);
    v62 = v25;
    result = (v25)(v18, v9);
    if ((v24 & 1) == 0)
    {
      v29 = v9;
      v30 = v22;
      swift_getKeyPath();
      v73 = v22;
      sub_1000DA294();

      Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
      result = sub_10001ED40(5u, *(v23 + *(Update + 24)));
      if ((result & 1) == 0)
      {
        v32 = v28;
        swift_getKeyPath();
        v73 = v30;
        sub_1000DA294();

        v33 = v30 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
        swift_beginAccess();
        v61[2] = v21;
        sub_1000212E0(v33, v69, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        sub_1000DA294();

        v34 = type metadata accessor for InsightsDataManager.Streaks(0);
        sub_1000212E0(v33 + *(v34 + 20), v70, type metadata accessor for StreakSummary);
        swift_getKeyPath();
        v72 = v30;
        sub_1000DA294();

        v61[0] = *(v30 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount);
        swift_getKeyPath();
        v72 = v30;
        v61[1] = v27;
        sub_1000DA294();

        v35 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__byEntryDate;
        swift_beginAccess();
        v36 = v64;
        sub_1000212E0(v30 + v35, v64, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        v37 = *(v36 + *(sub_100007BC0(&qword_100120AC8) + 32));
        if (sub_1000DC8E4() + (-1 << *(v37 + 32)))
        {
          v43 = sub_1000DC8E4();
          v44 = sub_100020C20(v43, *(v37 + 36), 0, 1 << *(v37 + 32), *(v37 + 36), 0);
          v45 = v36;
          v42 = v44;
          sub_100020FFC(v45, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          v38 = v65;
        }

        else
        {
          v38 = v65;
          v39 = v36 + *(v65 + 20);
          v40 = *v39;
          v41 = *(v39 + 8);
          sub_100020FFC(v36, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v41)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }
        }

        swift_getKeyPath();
        v71 = v30;
        sub_1000DA294();

        v46 = v66;
        sub_1000212E0(v30 + v35, v66, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        sub_1000DA054();
        sub_1000209EC(v32);
        v48 = v47;
        v50 = v49;
        v62(v32, v29);
        if (v50)
        {
          sub_100020FFC(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        }

        else
        {
          v51 = v46 + *(v38 + 32);
          v48 = *v51;
          v52 = *(v51 + 8);
          sub_100020FFC(v46, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v52)
          {
            v48 = 0;
          }
        }

        v53 = v68;
        sub_100020F14(v69, v68, type metadata accessor for StreakSummary);
        v54 = v67;
        sub_100020F14(v70, v53 + *(v67 + 20), type metadata accessor for StreakSummary);
        *(v53 + v54[6]) = v61[0];
        *(v53 + v54[7]) = v42;
        *(v53 + v54[8]) = v48;
        sub_1000D9C34();
        swift_allocObject();
        sub_1000D9C24();
        sub_100021234(&qword_100120AD0, _s14descr10010BBE9V8SnapshotVMa);
        v55 = sub_1000D9C14();
        v57 = v56;

        sub_100020DD4();
        v58 = sub_1000DC4F4();
        isa = sub_1000D9DE4().super.isa;
        v60 = sub_1000DBF04();
        [v58 setObject:isa forKey:v60];
        sub_100010514(v55, v57);

        return sub_100020FFC(v53, _s14descr10010BBE9V8SnapshotVMa);
      }
    }
  }

  return result;
}

uint64_t sub_1000209EC(uint64_t a1)
{
  v3 = sub_100007BC0(&qword_100120AC8);
  sub_1000DA084();
  sub_100021234(&qword_100120AE0, &type metadata accessor for Date);
  if ((sub_1000DBE04() & 1) == 0)
  {
    return 0;
  }

  sub_100007BC0(&qword_100120AE8);
  if ((sub_1000DBE14() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + *(v3 + 32));
  v5 = sub_1000D63B4(a1);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = sub_100063178(v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 32 * v6);

  return v8;
}

unint64_t sub_100020B38()
{
  v1 = *(v0 + *(sub_100007BC0(&qword_100120AC8) + 32));
  v2 = sub_1000DC8E4();
  v3 = *(v1 + 36);
  v4 = 1 << *(v1 + 32);
  v5 = *(v1 + 36);

  return sub_100020C20(v2, v3, 0, v4, v5, 0);
}

uint64_t _s14descr10010BBE9V8SnapshotVMa()
{
  result = qword_100120B58;
  if (!qword_100120B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100020C20(unint64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  if (a4 < result)
  {
    goto LABEL_29;
  }

  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v10 = result;
    v12 = sub_100007BC0(&qword_100120AC8);
    v13 = a2;
    v14 = v12;
    result = v10;
    v15 = *(v6 + *(v14 + 32));
    v9 = 1;
    while ((result & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(v15 + 32);
      if (result >= v16)
      {
        break;
      }

      v17 = result >> 6;
      v18 = *(v15 + 64 + 8 * (result >> 6));
      if (((v18 >> result) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v15 + 36) != v13)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (result & 0x3F));
      if (v19)
      {
        result = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (v15 + 72 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100020EA0(result, v13, 0);
            result = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_100020EA0(result, v13, 0);
        result = v16;
      }

LABEL_20:
      if (*(v15 + 36) != a5)
      {
        goto LABEL_28;
      }

      if (result == a4)
      {
        return v9;
      }

      v13 = a5;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return 0;
}

unint64_t sub_100020DD4()
{
  result = qword_100120AD8;
  if (!qword_100120AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120AD8);
  }

  return result;
}

uint64_t sub_100020E20(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1000DC904();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100020EA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100020EAC(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100120AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100020F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000210F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100021160()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000211E0()
{
  result = qword_100120BA8;
  if (!qword_100120BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BA8);
  }

  return result;
}

uint64_t sub_100021234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002127C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000212E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14descr10010BBE9V8SnapshotV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr10010BBE9V8SnapshotV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000214A4()
{
  result = qword_100120BC8;
  if (!qword_100120BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BC8);
  }

  return result;
}

unint64_t sub_1000214FC()
{
  result = qword_100120BD0;
  if (!qword_100120BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BD0);
  }

  return result;
}

unint64_t sub_100021554()
{
  result = qword_100120BD8;
  if (!qword_100120BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BD8);
  }

  return result;
}

uint64_t sub_1000215A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144657669746361 && a2 == 0xEA00000000007379;
  if (v4 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6557657669746361 && a2 == 0xEB00000000736B65 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F4364726F77 && a2 == 0xE900000000000074 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F43796164 && a2 == 0xE800000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5473656972746E65 && a2 == 0xEF72616559736968)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000DCC74();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetSizeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetSizeType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000218CC()
{
  result = qword_100120BE0;
  if (!qword_100120BE0)
  {
    sub_100007C08(&qword_100120BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BE0);
  }

  return result;
}

uint64_t sub_100021934(unsigned __int8 a1)
{
  if (a1 <= 3u && a1 > 1u && a1 != 2)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v2 = sub_1000DCC74();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v4 = 1;
      goto LABEL_22;
    }

    v3 = sub_1000DCC74();

    if ((v3 & 1) == 0)
    {
      if (a1 == 1)
      {
        v4 = 1;
        goto LABEL_22;
      }

      v5 = sub_1000DCC74();

      if ((v5 & 1) == 0)
      {
        if (a1 > 6u)
        {
          v4 = 1;
        }

        else
        {
          v6 = sub_1000DCC74();

          if (v6)
          {
            goto LABEL_17;
          }

          if (a1)
          {
            v4 = sub_1000DCC74();
          }

          else
          {
            v4 = 1;
          }
        }

LABEL_22:

        return v4 & 1;
      }
    }
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_100021E3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000220F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100021E6C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *v1;
  v4 = 0x6154656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (v3 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v3 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (v3 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656772614C78;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_100021F70()
{
  result = qword_100120BF0;
  if (!qword_100120BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120BF0);
  }

  return result;
}

uint64_t sub_100021FC4(unsigned __int8 a1)
{
  if (a1 > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_1000DCC74();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000220F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010D148;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100022144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100022198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000221EC()
{
  result = sub_1000644D0(&off_10010D0B8);
  off_100120BF8 = result;
  return result;
}

void *sub_100022214()
{
  result = sub_1000644D0(&off_10010D028);
  off_100120C00 = result;
  return result;
}

uint64_t sub_10002223C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a2 > 1 || (a3 & 1) != 0)
  {
    if (qword_10011F9C8 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v3 = off_100120C00;
    if (!*(off_100120C00 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (qword_10011F9C0 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v3 = off_100120BF8;
    if (!*(off_100120BF8 + 2))
    {
      return 0;
    }
  }

  v4 = sub_100063134(a1);
  if (v5)
  {
    return *(v3[7] + 8 * v4);
  }

  return 0;
}

double sub_100022320(__int16 a1, uint64_t a2, int a3, double a4)
{
  v8 = COERCE_DOUBLE(sub_10002223C(a1, a2, a3 & 1));
  v9 = 0.0;
  v10 = 0.0;
  if ((v11 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v12 = v8 * 0.45;
      v13 = (v8 - v8 * 0.45) * 0.5;
      v14 = v13;
    }

    else
    {
      v13 = v8 * 0.55 * 0.5;
      v12 = v8 * 0.45;
      v14 = a4;
    }

    nullsub_1(v13, v14, v12, v12);
    v10 = v15;
  }

  v16 = COERCE_DOUBLE(sub_10002223C(a1, a2, a3 & 1));
  if ((v17 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v18 = v16 * 0.45;
      v19 = (v16 - v16 * 0.45) * 0.5;
      v20 = v19;
    }

    else
    {
      v19 = v16 * 0.55 * 0.5;
      v18 = v16 * 0.45;
      v20 = a4;
    }

    v9 = nullsub_1(v19, v20, v18, v18);
  }

  v21 = COERCE_DOUBLE(sub_10002223C(a1, a2, a3 & 1));
  v22 = 0.0;
  if ((v23 & 1) == 0)
  {
    if ((a2 > 1 || (a3 & 1) != 0 || (a3 & 0x10000) != 0 && (a1 & 0x100) == 0) && (a3 & 0x100) != 0)
    {
      v24 = v21 * 0.45;
      v25 = (v21 - v21 * 0.45) * 0.5;
      v26 = v25;
    }

    else
    {
      v25 = v21 * 0.55 * 0.5;
      v24 = v21 * 0.45;
      v26 = a4;
    }

    nullsub_1(v25, v26, v24, v24);
  }

  v27 = v10 * 0.15 * 0.5;
  v28 = v22 - v27;

  return nullsub_1(v9 - v27, v28, v10 * 1.15, v10 * 1.15);
}

uint64_t sub_100022534(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000DA204();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000276E4(&qword_1001211A8, &type metadata accessor for Calendar);
  v14[0] = a1;
  LOBYTE(a1) = sub_1000DBE64();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
    sub_1000DA284();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1000227D4(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.Streaks(0);
  v4 = __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1000269D4(v1 + v9, v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!sub_10003BD48(v8, a1) || !sub_10003BD48(&v8[v3[5]], a1 + v3[5]) || !sub_10003BD48(&v8[v3[6]], a1 + v3[6]) || !sub_10003BD48(&v8[v3[7]], a1 + v3[7]) || !sub_10003BD48(&v8[v3[8]], a1 + v3[8]))
  {
    sub_100026A74(v8, type metadata accessor for InsightsDataManager.Streaks);
    goto LABEL_9;
  }

  v10 = sub_10003BD48(&v8[v3[9]], a1 + v3[9]);
  sub_100026A74(v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!v10)
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
    sub_1000DA284();

    return sub_100026A74(a1, type metadata accessor for InsightsDataManager.Streaks);
  }

  sub_1000269D4(a1, v6, type metadata accessor for InsightsDataManager.Streaks);
  swift_beginAccess();
  sub_1000268D8(v6, v1 + v9);
  swift_endAccess();
  return sub_100026A74(a1, type metadata accessor for InsightsDataManager.Streaks);
}

id sub_100022B58()
{
  v1 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager____lazy_storage___workContext;
  v2 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager____lazy_storage___workContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager____lazy_storage___workContext);
  }

  else
  {
    v4 = sub_1000B6850();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100022BB8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  v4 = sub_1000DA204();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100022CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = sub_1000DA204();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100022DA8(uint64_t a1)
{
  v2 = sub_1000DA204();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100022534(v4);
}

uint64_t sub_100022E74(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = sub_1000DA204();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100022F10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_100026B98(v5 + v3, a1);
}

uint64_t sub_100022FD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_100026B98(v3 + v4, a2);
}

uint64_t sub_1000230A0(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100026B98(a1, &v6 - v3);
  return sub_100023134(v4);
}

uint64_t sub_100023134(uint64_t a1)
{
  v3 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_100026B98(v1 + v6, v5);
  v7 = sub_1000272F0(v5, a1);
  sub_1000080B0(v5, &qword_1001203B8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
    sub_1000DA284();
  }

  else
  {
    sub_100026B98(a1, v5);
    swift_beginAccess();
    sub_1000275E0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1000080B0(a1, &qword_1001203B8);
}

uint64_t sub_100023324(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_100027674(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100023390()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v1 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount);

  return v1;
}

uint64_t sub_100023458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v5 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount + 16);
  v4 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
}

uint64_t sub_100023518()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA284();
}

uint64_t sub_1000235F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_1000236DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14[-v10];
  sub_1000269D4(a1, &v14[-v10], a6);
  v12 = *a2;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  v17 = v12;
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA284();

  return sub_100026A74(v11, a6);
}

uint64_t sub_100023840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DA084();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for StreakSummary();
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  *(a1 + v4[7]) = 0;
  v5 = type metadata accessor for InsightsDataManager.Streaks(0);
  v6 = a1 + v5[5];
  v3(v6, 1, 1, v2);
  v3(v6 + v4[5], 1, 1, v2);
  v3(v6 + v4[6], 1, 1, v2);
  *(v6 + v4[7]) = 0;
  v7 = a1 + v5[6];
  v3(v7, 1, 1, v2);
  v3(v7 + v4[5], 1, 1, v2);
  v3(v7 + v4[6], 1, 1, v2);
  *(v7 + v4[7]) = 0;
  v8 = a1 + v5[7];
  v3(v8, 1, 1, v2);
  v3(v8 + v4[5], 1, 1, v2);
  v3(v8 + v4[6], 1, 1, v2);
  *(v8 + v4[7]) = 0;
  v9 = a1 + v5[8];
  v3(v9, 1, 1, v2);
  v3(v9 + v4[5], 1, 1, v2);
  v3(v9 + v4[6], 1, 1, v2);
  *(v9 + v4[7]) = 0;
  v10 = a1 + v5[9];
  v3(v10, 1, 1, v2);
  v3(v10 + v4[5], 1, 1, v2);
  result = (v3)(v10 + v4[6], 1, 1, v2);
  *(v10 + v4[7]) = 0;
  return result;
}

uint64_t sub_100023B60@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000269D4(v9 + v7, a3, a2);
}

uint64_t sub_100023C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000269D4(v7 + v8, a4, a3);
}

uint64_t sub_100023D2C(uint64_t a1)
{
  v2 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000269D4(a1, v4, type metadata accessor for InsightsDataManager.Streaks);
  return sub_1000227D4(v4);
}

uint64_t sub_100023DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_100026AD4(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_100023E44()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v1 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime);

  return v1;
}

uint64_t sub_100023F1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v4 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime + 8);
  v5 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime + 16);
  v6 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime);
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_100023FEC()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA284();
}

uint64_t sub_1000240D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_100024158()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();
}

uint64_t sub_100024204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  *a2 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__places);
}

uint64_t sub_1000242B8()
{
  swift_getKeyPath();
  sub_1000276E4(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA284();
}

uint64_t sub_100024384(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__places) = a2;
}

uint64_t sub_1000243C8()
{
  sub_100026A74(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);

  v1 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  v2 = sub_1000DA204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000080B0(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate, &qword_1001203B8);

  sub_100026A74(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_100026A74(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks, type metadata accessor for InsightsDataManager.Streaks);

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager___observationRegistrar;
  v4 = sub_1000DA2D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100024580()
{
  sub_1000243C8();

  return swift_deallocClassInstance();
}

void sub_100024600()
{
  type metadata accessor for InsightsDataManager.LastUpdate(319);
  if (v0 <= 0x3F)
  {
    sub_1000DA204();
    if (v1 <= 0x3F)
    {
      sub_100024818();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InsightsDataManager.EntrySummaryGroup(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for InsightsDataManager.Streaks(319);
          if (v4 <= 0x3F)
          {
            sub_1000DA2D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100024818()
{
  if (!qword_100120C98)
  {
    sub_1000DA084();
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100120C98);
    }
  }
}

uint64_t sub_1000248C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100024908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000249A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InsightsDataManager.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InsightsDataManager.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100024B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100024BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100024C44()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100024CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_100120AC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000DA084();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100024DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007BC0(&qword_100120AC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000DA084();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100024EE8()
{
  sub_100024FD4(319, &qword_100121098, &type metadata for InsightsDataManager.TimeSummary, type metadata accessor for DateBinDictionary);
  if (v0 <= 0x3F)
  {
    sub_100024FD4(319, &unk_1001210A0, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000DA084();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100024FD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100025024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10002506C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000250D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA084();
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

uint64_t sub_1000251A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000DA084();
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

void sub_100025258()
{
  sub_1000DA084();
  if (v0 <= 0x3F)
  {
    sub_1000252E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000252E4()
{
  if (!qword_100121148)
  {
    sub_100025340();
    v0 = sub_1000DC2E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100121148);
    }
  }
}

unint64_t sub_100025340()
{
  result = qword_100121150;
  if (!qword_100121150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121150);
  }

  return result;
}

uint64_t sub_1000253A4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F746F6870;
    v7 = 0x6F69647561;
    v8 = 0x616964656DLL;
    if (a1 != 3)
    {
      v8 = 0x6563616C70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F65646976;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4D664F6574617473;
    v2 = 0x676E6977617264;
    if (a1 != 9)
    {
      v2 = 0x69747465666E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61737265766E6F63;
    v4 = 0x7974697669746361;
    if (a1 != 6)
    {
      v4 = 0x697463656C666572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000254FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000253A4(*a1);
  v5 = v4;
  if (v3 == sub_1000253A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DCC74();
  }

  return v8 & 1;
}

Swift::Int sub_100025584()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_1000253A4(v1);
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_1000255E8()
{
  sub_1000253A4(*v0);
  sub_1000DBFD4();
}

Swift::Int sub_10002563C()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_1000253A4(v1);
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_10002569C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100027E48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000256CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000253A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000257A8(void *a1)
{
  v3 = v1;
  v5 = sub_100007BC0(&qword_100121350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100007E68(a1, a1[3]);
  sub_100028338();
  sub_1000DCDB4();
  v14 = 0;
  sub_1000DA0E4();
  sub_1000276E4(&qword_100121358, &type metadata accessor for UUID);
  sub_1000DCC24();
  if (!v2)
  {
    v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    v13 = 1;
    sub_1000DA084();
    sub_1000276E4(&qword_100121360, &type metadata accessor for Date);
    sub_1000DCC24();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100007BC0(&qword_100121338);
    sub_1000283E0(&qword_100121368, sub_100028464);
    sub_1000DCC24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100025A3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1000DA084();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DA0E4();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007BC0(&qword_100121318);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007E68(a1, a1[3]);
  sub_100028338();
  v29 = v8;
  v12 = v30;
  sub_1000DCDA4();
  if (v12)
  {
    return sub_100007FC0(a1);
  }

  v30 = a1;
  v13 = v25;
  v14 = v26;
  v34 = 0;
  sub_1000276E4(&qword_100121328, &type metadata accessor for UUID);
  sub_1000DCBC4();
  v15 = *(v24 + 32);
  v21 = v11;
  v16 = v28;
  v28 = v5;
  v15(v11, v16, v5);
  v33 = 1;
  sub_1000276E4(&qword_100121330, &type metadata accessor for Date);
  sub_1000DCBC4();
  (*(v23 + 32))(&v21[*(v9 + 20)], v4, v14);
  sub_100007BC0(&qword_100121338);
  v32 = 2;
  sub_1000283E0(&qword_100121340, sub_10002838C);
  sub_1000DCBC4();
  v17 = v21;
  v18 = v30;
  (*(v13 + 8))(v29, v27);
  *(v17 + *(v9 + 24)) = v31;
  sub_1000269D4(v17, v22, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_100007FC0(v18);
  return sub_100026A74(v17, type metadata accessor for InsightsDataManager.EntrySummary);
}

uint64_t sub_100025F70()
{
  v1 = 0x7461447972746E65;
  if (*v0 != 1)
  {
    v1 = 0x7079547465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100025FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100028710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100025FFC(uint64_t a1)
{
  v2 = sub_100028338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026038(uint64_t a1)
{
  v2 = sub_100028338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000260A4(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    sub_1000DCD34(4uLL);
    sub_1000DBF44();
    sub_1000DBFD4();

    goto LABEL_12;
  }

  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  sub_1000DCD34(v4);
LABEL_12:
  if (*(v1 + 16) == 1)
  {
    sub_1000DCD44(0);
  }

  else
  {
    v5 = *(v1 + 8);
    sub_1000DCD44(1u);
    sub_1000DCD34(v5);
  }

  sub_1000263A4(a1, *(v1 + 24));
  return sub_1000DC774();
}

id sub_1000261A0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_100027DC8(v2);
}

Swift::Int sub_1000261AC()
{
  sub_1000DCD24();
  sub_1000260A4(v1);
  return sub_1000DCD74();
}

Swift::Int sub_1000261F0()
{
  sub_1000DCD24();
  sub_1000260A4(v1);
  return sub_1000DCD74();
}

uint64_t sub_10002622C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000265BC(v5, v7) & 1;
}

uint64_t sub_100026278@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000DA0E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1000262E8()
{
  result = qword_100121188;
  if (!qword_100121188)
  {
    sub_100007C08(&qword_100121190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121188);
  }

  return result;
}

unint64_t sub_100026350()
{
  result = qword_100121198;
  if (!qword_100121198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121198);
  }

  return result;
}

void sub_1000263A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000DCD74();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1000DC924();
    sub_100008068(0, &qword_100120308);
    sub_100027DD8();
    sub_1000DC2D4();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_1000DC964())
    {
LABEL_20:
      sub_100027E40();
      sub_1000DCD34(v11);
      return;
    }

    sub_100008068(0, &qword_100120308);
    swift_dynamicCast();
    v15 = v18;
LABEL_10:
    v16 = sub_1000DC754(v3);

    v11 ^= v16;
  }

  if (v7)
  {
    v13 = v6;
LABEL_9:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    v15 = v18;
    goto LABEL_10;
  }

  v17 = v6;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    v7 = *(v4 + 8 * v13);
    ++v17;
    if (v7)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000265BC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v4)
    {
      if (v5)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 1)
    {
      if (v5 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  if (v5 < 4)
  {
    return 0;
  }

  v6 = sub_1000DBF44();
  v8 = v7;
  if (v6 == sub_1000DBF44() && v8 == v9)
  {
  }

  else
  {
    v13 = sub_1000DCC74();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  v10 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  sub_10009DF14(*(a1 + 24), *(a2 + 24));
  if (v11)
  {
    sub_100008068(0, qword_100120158);
    return sub_1000DC764() & 1;
  }

  return 0;
}

uint64_t sub_100026728(uint64_t a1, uint64_t a2)
{
  if (((sub_10003BD44)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  if ((sub_10003BD44(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_10003BD44(a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_10003BD44(a1 + v4[7], a2 + v4[7]) & 1) == 0 || (sub_10003BD44(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];

  return sub_10003BD44(a1 + v5, a2 + v5);
}

uint64_t sub_1000267F0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__places) = *(v0 + 24);
}

uint64_t sub_1000268D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000269D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100026A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100026AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100026B44()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount;
  *v3 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
}

uint64_t sub_100026B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026C08(void *a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = type metadata accessor for UniformDateBins(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0) - 8;
  __chkstk_darwin(v44);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000DA204();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v13 = Update - 8;
  __chkstk_darwin(Update);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F94();
  *&v15[*(v13 + 28)] = 0;
  *&v15[*(v13 + 32)] = &_swiftEmptySetSingleton;
  sub_100027EE8(v15, v2 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);
  *(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager____lazy_storage___workContext) = 0;
  sub_1000DA174();
  v16 = *(v9 + 32);
  v42 = v2;
  v16(v2 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar, v11, v8);
  v17 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  v18 = sub_1000DA084();
  v19 = *(*(v18 - 8) + 56);
  v19(v2 + v17, 1, 1, v18);
  v20 = (v2 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__wordCount);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = _swiftEmptyArrayStorage;
  v21 = type metadata accessor for CalendarBinningUnit(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  v23 = v43;
  sub_1000B76E0(v6, v43);
  v24 = v44;
  v25 = v23 + *(v44 + 28);
  *v25 = 0;
  *(v25 + 8) = 1;
  v41 = v24[8];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_1000B76E0(v6, v23 + v41);
  v41 = v24[9];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_1000B76E0(v6, v23 + v41);
  v26 = v23 + v24[10];
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_1000D9FA4();
  v27 = v42;
  sub_100027EE8(v23, v42 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v28 = v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  v19(v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks, 1, 1, v18);
  v29 = type metadata accessor for StreakSummary();
  v19(v28 + v29[5], 1, 1, v18);
  v19(v28 + v29[6], 1, 1, v18);
  *(v28 + v29[7]) = 0;
  v30 = type metadata accessor for InsightsDataManager.Streaks(0);
  v31 = v28 + v30[5];
  v19(v31, 1, 1, v18);
  v19(v31 + v29[5], 1, 1, v18);
  v19(v31 + v29[6], 1, 1, v18);
  *(v31 + v29[7]) = 0;
  v32 = v28 + v30[6];
  v19(v32, 1, 1, v18);
  v19(v32 + v29[5], 1, 1, v18);
  v19(v32 + v29[6], 1, 1, v18);
  *(v32 + v29[7]) = 0;
  v33 = v28 + v30[7];
  v19(v33, 1, 1, v18);
  v19(v33 + v29[5], 1, 1, v18);
  v19(v33 + v29[6], 1, 1, v18);
  *(v33 + v29[7]) = 0;
  v34 = v28 + v30[8];
  v19(v34, 1, 1, v18);
  v19(v34 + v29[5], 1, 1, v18);
  v19(v34 + v29[6], 1, 1, v18);
  *(v34 + v29[7]) = 0;
  v35 = v28 + v30[9];
  v19(v35, 1, 1, v18);
  v19(v35 + v29[5], 1, 1, v18);
  v19(v35 + v29[6], 1, 1, v18);
  *(v35 + v29[7]) = 0;
  v36 = (v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__allTime);
  *v36 = _swiftEmptyArrayStorage;
  v36[1] = _swiftEmptyArrayStorage;
  v36[2] = 0;
  v36[3] = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__places) = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__updateTask) = 0;
  sub_1000DA2C4();
  v37 = v45;
  v38 = v46;
  *(v27 + 16) = v45;
  *(v27 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options) = v38;
  v39 = v37;
  sub_10001F960();
  return v27;
}

uint64_t sub_1000272F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA084();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100007BC0(&qword_1001211A0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100026B98(a1, &v21 - v13);
  sub_100026B98(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100026B98(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000276E4(&qword_100120AC0, &type metadata accessor for Date);
      v18 = sub_1000DBE64();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000080B0(v14, &qword_1001203B8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000080B0(v14, &qword_1001211A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000080B0(v14, &qword_1001203B8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000275E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001203B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000276E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027820(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100027838(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002784C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100027894(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100027900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA0E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xB)
    {
      return v10 - 10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000279CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000DA0E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 10;
  }

  return result;
}

uint64_t sub_100027AA4()
{
  result = sub_1000DA0E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InsightsDataManager.AssetCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InsightsDataManager.AssetCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100027C7C()
{
  result = qword_100121248;
  if (!qword_100121248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121248);
  }

  return result;
}

unint64_t sub_100027D1C()
{
  result = qword_100121250;
  if (!qword_100121250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121250);
  }

  return result;
}

unint64_t sub_100027D74()
{
  result = qword_100121258;
  if (!qword_100121258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121258);
  }

  return result;
}

id sub_100027DC8(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

unint64_t sub_100027DD8()
{
  result = qword_100121260;
  if (!qword_100121260)
  {
    sub_100008068(255, &qword_100120308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121260);
  }

  return result;
}

uint64_t sub_100027E48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010D250;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100027E94()
{
  result = qword_100121268;
  if (!qword_100121268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121268);
  }

  return result;
}

uint64_t sub_100027EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA0E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000DA084();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100028084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000DA0E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000DA084();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000281AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000281E4()
{
  sub_1000DA0E4();
  if (v0 <= 0x3F)
  {
    sub_1000DA084();
    if (v1 <= 0x3F)
    {
      sub_100028280();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100028280()
{
  if (!qword_1001212D8)
  {
    sub_1000282E4();
    v0 = sub_1000DBD94();
    if (!v1)
    {
      atomic_store(v0, &qword_1001212D8);
    }
  }
}

unint64_t sub_1000282E4()
{
  result = qword_1001212E0;
  if (!qword_1001212E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001212E0);
  }

  return result;
}

unint64_t sub_100028338()
{
  result = qword_100121320;
  if (!qword_100121320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121320);
  }

  return result;
}

unint64_t sub_10002838C()
{
  result = qword_100121348;
  if (!qword_100121348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121348);
  }

  return result;
}

uint64_t sub_1000283E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007C08(&qword_100121338);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100028464()
{
  result = qword_100121370;
  if (!qword_100121370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InsightsDataManager.EntrySummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InsightsDataManager.EntrySummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002860C()
{
  result = qword_100121378;
  if (!qword_100121378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121378);
  }

  return result;
}

unint64_t sub_100028664()
{
  result = qword_100121380;
  if (!qword_100121380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121380);
  }

  return result;
}

unint64_t sub_1000286BC()
{
  result = qword_100121388;
  if (!qword_100121388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121388);
  }

  return result;
}

uint64_t sub_100028710(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447972746E65 && a2 == 0xE900000000000065 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DCC74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_100028848@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100007BC0(&qword_100121450);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  v6 = *(ReportedStreaks - 1);
  __chkstk_darwin(ReportedStreaks);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1000DBCD4() & 1) == 0)
  {
    sub_10002CC3C(v4);
    if ((*(v6 + 48))(v4, 1, ReportedStreaks) != 1)
    {
      sub_10002D614(v4, v8, type metadata accessor for LastReportedStreaks);
      v11 = sub_1000733A8(*v8, v8 + ReportedStreaks[5], *(v8 + ReportedStreaks[6]), v8 + ReportedStreaks[7], *(v8 + ReportedStreaks[8]), *(v8 + ReportedStreaks[9]), 0);
      v9 = v12;
      sub_1000DA054();
      sub_10002D5B4(v8, type metadata accessor for LastReportedStreaks);
      v10 = 1;
      goto LABEL_6;
    }

    sub_1000080B0(v4, &qword_100121450);
  }

  sub_1000DA054();
  v9 = 0;
  v10 = 0;
  v11 = 2;
LABEL_6:
  v13 = type metadata accessor for StreaksWidgetTimelineEntry();
  v14 = v13[7];
  v15 = sub_1000DBCC4();
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = (a1 + v13[5]);
  *v16 = v11;
  v16[1] = v9;
  *&result = 2;
  *(a1 + v13[6]) = xmmword_1000E1190;
  *(a1 + v13[8]) = v10;
  *(a1 + v13[9]) = 2;
  return result;
}

uint64_t sub_100028ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v22 = a5;
  v23 = a3;
  v9 = sub_1000DBCE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_100120908);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_1000DC244();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a1;
  (*(v10 + 32))(&v19[v17], v12, v9);
  v20 = &v19[v18];
  *v20 = v23;
  *(v20 + 1) = a4;
  *&v19[(v18 + 23) & 0xFFFFFFFFFFFFFFF8] = v24;

  sub_10003CF9C(0, 0, v15, v25, v19);
}

uint64_t sub_100028DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CD68;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100028E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CD68;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100028F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a1;
  v6[12] = a4;
  v8 = sub_1000DA084();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_100007BC0(&qword_1001203B8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_1000DC1D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[23] = v9;
  v6[24] = v11;

  return _swift_task_switch(sub_100029080, v9, v11);
}

uint64_t sub_100029080()
{
  v1 = sub_10002D1F0();
  v0[25] = v1;
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container);
    v0[26] = v2;
    v0[27] = sub_10003953C(&off_10010D3A0);
    v0[28] = sub_1000DC224();
    v3 = v2;
    v0[29] = sub_1000DC214();
    v5 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000291D8, v5, v4);
  }

  else
  {
    sub_100028848(v0[11]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000291D8()
{
  v1 = v0[26];
  v2 = v0[27];

  type metadata accessor for InsightsDataManager(0);
  swift_allocObject();
  v0[30] = sub_100026C08(v1, v2);

  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1000292A4;

  return sub_1000B6910();
}

uint64_t sub_1000292A4()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_1000293C4, v3, v2);
}

uint64_t sub_1000293C4()
{
  *(v0 + 256) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_100029450, v2, v1);
}

uint64_t sub_100029450()
{
  v1 = v0[30];
  v2 = v0[22];

  swift_getKeyPath();
  v0[33] = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager___observationRegistrar;
  v0[5] = v1;
  v0[34] = sub_10002D67C(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  v0[35] = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  v4 = v1 + v3;
  swift_beginAccess();
  v5 = type metadata accessor for StreakSummary();
  v0[36] = v5;
  v0[37] = *(v4 + *(v5 + 28));
  swift_getKeyPath();
  v0[6] = v1;
  sub_1000DA294();

  sub_100007F58(v4 + *(v5 + 24), v2, &qword_1001203B8);
  v6 = v0[23];
  v7 = v0[24];

  return _swift_task_switch(sub_1000295E0, v6, v7);
}

uint64_t sub_1000295E0()
{
  *(v0 + 304) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002966C, v2, v1);
}

uint64_t sub_10002966C()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[21];

  swift_getKeyPath();
  v0[7] = v3;
  sub_1000DA294();

  v5 = type metadata accessor for InsightsDataManager.Streaks(0);
  v0[39] = v5;
  v0[40] = *(v3 + v1 + *(v5 + 20) + *(v2 + 28));
  swift_getKeyPath();
  v0[8] = v3;
  sub_1000DA294();

  sub_100007F58(v3 + v1 + *(v5 + 20) + *(v2 + 24), v4, &qword_1001203B8);
  v6 = v0[23];
  v7 = v0[24];

  return _swift_task_switch(sub_1000297B0, v6, v7);
}

uint64_t sub_1000297B0()
{
  *(v0 + 328) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002983C, v2, v1);
}

uint64_t sub_10002983C()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[30];

  swift_getKeyPath();
  v0[9] = v4;
  sub_1000DA294();

  v0[42] = *(v4 + v2 + *(v1 + 24) + *(v3 + 28));
  v5 = v0[23];
  v6 = v0[24];

  return _swift_task_switch(sub_100029910, v5, v6);
}

uint64_t sub_100029910()
{
  *(v0 + 344) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002999C, v2, v1);
}

uint64_t sub_10002999C()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[30];

  swift_getKeyPath();
  v0[10] = v4;
  sub_1000DA294();

  v0[44] = *(v4 + v2 + *(v1 + 28) + *(v3 + 28));
  v5 = v0[23];
  v6 = v0[24];

  return _swift_task_switch(sub_100029A70, v5, v6);
}

uint64_t sub_100029A70()
{
  if (*(v0 + 96))
  {
    sub_1000D9894();
    v1 = *(v0 + 360);
  }

  else
  {
    v1 = 0;
  }

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = sub_1000733A8(*(v0 + 296), v2, *(v0 + 320), v3, *(v0 + 336), *(v0 + 352), v1);
  v45 = v8;
  v46 = v9;
  v47 = v10;
  sub_1000080B0(v3, &qword_1001203B8);
  sub_1000080B0(v2, &qword_1001203B8);
  sub_1000DA054();
  v11 = v6;
  v12 = v7;
  (*(v5 + 56))(v4, 1, 1, v11);
  v13 = *(v0 + 160);
  if (v7 == 2)
  {
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    sub_1000080B0(v13, &qword_1001203B8);
    (*(v16 + 8))(v14, v15);
LABEL_8:
    v24 = v45;
    goto LABEL_9;
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  sub_100007F58(v13, v17, &qword_1001203B8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = *(v0 + 152);
    v21 = *(v0 + 144);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    sub_1000080B0(*(v0 + 160), &qword_1001203B8);
    (*(v23 + 8))(v21, v22);
    sub_1000080B0(v20, &qword_1001203B8);
    goto LABEL_8;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
  v24 = v45;
  if (sub_1000D9FF4())
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 136);
    v36 = *(v0 + 144);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    if (v45 <= 1)
    {
      v44 = *(v37 + 8);
      v44(*(v0 + 136), *(v0 + 120));
      sub_1000080B0(v34, &qword_1001203B8);
      v44(v36, v38);
    }

    else
    {
      sub_1000D9FB4();
      v39 = *(v37 + 8);
      v39(v35, v38);
      sub_1000080B0(v34, &qword_1001203B8);
      v39(v36, v38);
    }
  }

  else
  {
    v40 = *(v0 + 160);
    v41 = *(v0 + 144);
    v42 = *(v0 + 120);
    v43 = *(*(v0 + 128) + 8);
    v43(*(v0 + 136), v42);
    sub_1000080B0(v40, &qword_1001203B8);
    v43(v41, v42);
  }

LABEL_9:
  v25 = *(v0 + 200);
  v26 = *(v0 + 88);
  sub_1000DA054();
  v27 = type metadata accessor for StreaksWidgetTimelineEntry();
  v28 = v27[7];
  sub_1000DBCB4();

  v29 = sub_1000DBCC4();
  (*(*(v29 - 8) + 56))(v26 + v28, 0, 1, v29);
  v30 = (v26 + v27[5]);
  *v30 = v12;
  v30[1] = v24;
  v31 = (v26 + v27[6]);
  *v31 = v47;
  v31[1] = v46;
  *(v26 + v27[8]) = 1;
  *(v26 + v27[9]) = 2;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100029EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a1;
  v6[12] = a4;
  sub_100007BC0(&qword_100121448);
  v6[15] = swift_task_alloc();
  v8 = sub_1000DA1F4();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_1000DA204();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for StreaksWidgetTimelineEntry();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v11 = sub_1000DBC94();
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100007BC0(&qword_100121450);
  v6[29] = swift_task_alloc();
  v6[30] = type metadata accessor for InsightsDataManager.Streaks(0);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  v6[37] = ReportedStreaks;
  v6[38] = *(ReportedStreaks - 8);
  v6[39] = swift_task_alloc();
  sub_100007BC0(&qword_100121458);
  v6[40] = swift_task_alloc();
  sub_100007BC0(&qword_1001203B8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v13 = sub_1000DA084();
  v6[46] = v13;
  v6[47] = *(v13 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v14 = sub_1000DC1D4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v6[50] = v14;
  v6[51] = v16;

  return _swift_task_switch(sub_10002A314, v14, v16);
}

uint64_t sub_10002A314()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  type metadata accessor for JournalWidgetBridge();
  sub_10005C100(v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 360);
    v6 = &qword_1001203B8;
  }

  else
  {
    v7 = *(v0 + 96);
    (*(*(v0 + 376) + 32))(*(v0 + 392), *(v0 + 360), *(v0 + 368));
    if (v7)
    {
      sub_1000D9894();
      v8 = *(v0 + 585);
    }

    else
    {
      v8 = 3;
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);
    v12 = *(v0 + 320);
    v13 = sub_10002D494(v8);
    sub_100049038(v9, v13, v12);

    (*(v11 + 8))(v9, v10);
    v14 = sub_100007BC0(&qword_100121440);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) != 1)
    {
      (*(v15 + 32))(*(v0 + 88), *(v0 + 320), v14);
      goto LABEL_20;
    }

    v6 = &unk_100121458;
    v5 = *(v0 + 320);
  }

  sub_1000080B0(v5, v6);
  v16 = sub_10002D1F0();
  *(v0 + 416) = v16;
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container);
    *(v0 + 424) = v17;
    *(v0 + 432) = sub_10003953C(&off_10010D3C8);
    *(v0 + 440) = sub_1000DC224();
    v18 = v17;
    *(v0 + 448) = sub_1000DC214();
    v20 = sub_1000DC1D4();

    return _swift_task_switch(sub_10002AA24, v20, v19);
  }

  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v0 + 336);
  v24 = *(v0 + 168);
  v49 = *(v0 + 160);
  v50 = *(v0 + 368);
  v51 = *(v0 + 152);
  v52 = *(v0 + 328);
  v53 = v4;
  v25 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  sub_100028848(*(v0 + 192));
  sub_1000DA1D4();
  (*(v25 + 104))(v26, enum case for Calendar.Component.minute(_:), v27);
  sub_1000DA054();
  sub_1000DA1A4();
  v28 = *(v22 + 8);
  v28(v21, v50);
  v29 = v28;
  (*(v25 + 8))(v26, v27);
  (*(v49 + 8))(v24, v51);
  sub_100007F58(v23, v52, &qword_1001203B8);
  v30 = 1;
  if (v53(v52, 1, v50) != 1)
  {
    v31 = *(v0 + 384);
    v32 = *(v0 + 368);
    (*(*(v0 + 376) + 32))(v31, *(v0 + 328), v32);
    sub_1000DBC74();
    v29(v31, v32);
    v30 = 0;
  }

  v33 = *(v0 + 200);
  v34 = *(v0 + 208);
  v35 = *(v0 + 120);
  (*(v34 + 56))(v35, v30, 1, v33);
  v36 = *(v34 + 48);
  if (v36(v35, 1, v33) == 1)
  {
    v37 = *(v0 + 200);
    v38 = *(v0 + 120);
    sub_1000DBC84();
    if (v36(v38, 1, v37) != 1)
    {
      sub_1000080B0(*(v0 + 120), &qword_100121448);
    }
  }

  else
  {
    (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 120), *(v0 + 200));
  }

  v54 = *(v0 + 336);
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  v42 = *(v0 + 200);
  v41 = *(v0 + 208);
  v44 = *(v0 + 184);
  v43 = *(v0 + 192);
  sub_100007BC0(&qword_100120690);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1000DFEF0;
  sub_10002D54C(v43, v46 + v45, type metadata accessor for StreaksWidgetTimelineEntry);
  (*(v41 + 16))(v40, v39, v42);
  sub_10002D67C(&qword_100121430, type metadata accessor for StreaksWidgetTimelineEntry);
  sub_1000DBD24();
  (*(v41 + 8))(v39, v42);
  sub_1000080B0(v54, &qword_1001203B8);
  sub_10002D5B4(v43, type metadata accessor for StreaksWidgetTimelineEntry);
LABEL_20:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10002AA24()
{
  v1 = v0[53];
  v2 = v0[54];

  type metadata accessor for InsightsDataManager(0);
  swift_allocObject();
  v0[57] = sub_100026C08(v1, v2);

  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_10002AAF0;

  return sub_1000B6910();
}

uint64_t sub_10002AAF0()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10002AC10, v3, v2);
}

uint64_t sub_10002AC10()
{
  *(v0 + 472) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002AC9C, v2, v1);
}

uint64_t sub_10002AC9C()
{
  v1 = v0[57];
  v2 = v0[36];

  swift_getKeyPath();
  v0[60] = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager___observationRegistrar;
  v0[5] = v1;
  v0[61] = sub_10002D67C(&qword_100120AB8, type metadata accessor for InsightsDataManager);
  sub_1000DA294();

  v3 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  v0[62] = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_10002D54C(v1 + v3, v2, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002ADD0, v4, v5);
}

uint64_t sub_10002ADD0()
{
  v1 = v0[36];
  v2 = type metadata accessor for StreakSummary();
  v0[63] = v2;
  v0[64] = *(v1 + *(v2 + 28));
  sub_10002D5B4(v1, type metadata accessor for InsightsDataManager.Streaks);
  v0[65] = sub_1000DC214();
  v4 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002AE94, v4, v3);
}

uint64_t sub_10002AE94()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = v0[35];

  swift_getKeyPath();
  v0[6] = v2;
  sub_1000DA294();

  sub_10002D54C(v2 + v1, v3, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002AF68, v4, v5);
}

uint64_t sub_10002AF68()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(*(v0 + 504) + 24);
  v4 = *(*(v0 + 296) + 20);
  *(v0 + 576) = v4;
  sub_100007F58(v2 + v3, v1 + v4, &qword_1001203B8);
  sub_10002D5B4(v2, type metadata accessor for InsightsDataManager.Streaks);
  *(v0 + 528) = sub_1000DC214();
  v6 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002B048, v6, v5);
}

uint64_t sub_10002B048()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = v0[34];

  swift_getKeyPath();
  v0[7] = v2;
  sub_1000DA294();

  sub_10002D54C(v2 + v1, v3, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002B11C, v4, v5);
}

uint64_t sub_10002B11C()
{
  v1 = v0[34];
  v0[67] = *(v1 + *(v0[30] + 20) + *(v0[63] + 28));
  sub_10002D5B4(v1, type metadata accessor for InsightsDataManager.Streaks);
  v0[68] = sub_1000DC214();
  v3 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002B1E0, v3, v2);
}

uint64_t sub_10002B1E0()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = v0[33];

  swift_getKeyPath();
  v0[8] = v2;
  sub_1000DA294();

  sub_10002D54C(v2 + v1, v3, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002B2B4, v4, v5);
}

uint64_t sub_10002B2B4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  v3 = v2 + *(*(v0 + 240) + 20);
  v4 = *(*(v0 + 504) + 24);
  v5 = *(*(v0 + 296) + 28);
  *(v0 + 580) = v5;
  sub_100007F58(v3 + v4, v1 + v5, &qword_1001203B8);
  sub_10002D5B4(v2, type metadata accessor for InsightsDataManager.Streaks);
  *(v0 + 552) = sub_1000DC214();
  v7 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002B3A0, v7, v6);
}

uint64_t sub_10002B3A0()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = v0[32];

  swift_getKeyPath();
  v0[9] = v2;
  sub_1000DA294();

  sub_10002D54C(v2 + v1, v3, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002B474, v4, v5);
}

uint64_t sub_10002B474()
{
  v1 = v0[32];
  v0[70] = *(v1 + *(v0[30] + 24) + *(v0[63] + 28));
  sub_10002D5B4(v1, type metadata accessor for InsightsDataManager.Streaks);
  v0[71] = sub_1000DC214();
  v3 = sub_1000DC1D4();

  return _swift_task_switch(sub_10002B538, v3, v2);
}

uint64_t sub_10002B538()
{
  v1 = v0[62];
  v2 = v0[57];
  v3 = v0[31];

  swift_getKeyPath();
  v0[10] = v2;
  sub_1000DA294();

  sub_10002D54C(v2 + v1, v3, type metadata accessor for InsightsDataManager.Streaks);
  v4 = v0[50];
  v5 = v0[51];

  return _swift_task_switch(sub_10002B60C, v4, v5);
}

uint64_t sub_10002B60C()
{
  v1 = *(v0 + 560);
  v21 = *(v0 + 580);
  v2 = *(v0 + 536);
  v3 = *(v0 + 512);
  v4 = *(v0 + 352);
  v19 = *(v0 + 344);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 248);
  v9 = *(v0 + 232);
  v17 = *(v0 + 576);
  v18 = *(v0 + 96);
  v10 = *(v8 + *(*(v0 + 240) + 28) + *(*(v0 + 504) + 28));
  sub_10002D5B4(v8, type metadata accessor for InsightsDataManager.Streaks);
  *v5 = v3;
  *(v5 + v7[6]) = v2;
  *(v5 + v7[8]) = v1;
  *(v5 + v7[9]) = v10;
  sub_10002D54C(v5, v9, type metadata accessor for LastReportedStreaks);
  (*(v6 + 56))(v9, 0, 1, v7);
  sub_10002CECC(v9);
  sub_1000080B0(v9, &qword_100121450);
  sub_100007F58(v5 + v17, v4, &qword_1001203B8);
  sub_100007F58(v5 + v21, v19, &qword_1001203B8);
  if (v18)
  {
    sub_1000D9894();
    v11 = *(v0 + 584);
  }

  else
  {
    v11 = 0;
  }

  v20 = *(v0 + 416);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v22 = *(v0 + 312);
  v14 = sub_100075D78(*(v0 + 512), v12, *(v0 + 536), v13, *(v0 + 560), v10, v11);
  sub_1000080B0(v13, &qword_1001203B8);
  sub_1000080B0(v12, &qword_1001203B8);
  sub_10002C4F0(v14);

  sub_1000DBC84();
  sub_10002D67C(&qword_100121430, type metadata accessor for StreaksWidgetTimelineEntry);
  sub_1000DBD24();

  sub_10002D5B4(v22, type metadata accessor for LastReportedStreaks);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10002BA24(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return _swift_task_switch(sub_10002BA4C, 0, 0);
}

uint64_t sub_10002BA4C()
{
  v1 = v0[4];
  type metadata accessor for StreaksWidgetTimelineProviderDefinition();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10002BB00;
  v3 = v0[2];
  v4 = v0[3];

  return sub_100028F18(v3, 0, 0, v1, v4);
}

uint64_t sub_10002BB00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BBF4(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return _swift_task_switch(sub_10002BC1C, 0, 0);
}

uint64_t sub_10002BC1C()
{
  v1 = v0[4];
  type metadata accessor for StreaksWidgetTimelineProviderDefinition();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10002D910;
  v3 = v0[2];
  v4 = v0[3];

  return sub_100029EB4(v3, 0, 0, v1, v4);
}

uint64_t sub_10002BCD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  type metadata accessor for StreaksWidgetTimelineProviderDefinition();
  return sub_100028ABC(v7, a2, a3, a4, &unk_10010E7D0, &unk_1000E13C0);
}

uint64_t sub_10002BD44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  type metadata accessor for StreaksWidgetTimelineProviderDefinition();
  return sub_100028ABC(v7, a2, a3, a4, &unk_10010E7A8, &unk_1000E1350);
}

uint64_t sub_10002BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CAAC;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002BE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CD68;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for StreaksWidgetTimelineEntry();
  v8[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002BFB8, 0, 0);
}

uint64_t sub_10002BFB8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10002C058;
  v2 = v0[7];
  v3 = v0[2];
  v4 = v0[3];

  return sub_100028F18(v2, 0, 0, v3, v4);
}

uint64_t sub_10002C058()
{

  return _swift_task_switch(sub_10002C154, 0, 0);
}

uint64_t sub_10002C154()
{
  v1 = *(v0 + 56);
  (*(v0 + 32))(v1);
  sub_10002D5B4(v1, type metadata accessor for StreaksWidgetTimelineEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100007BC0(&qword_100121440);
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002C2B8, 0, 0);
}

uint64_t sub_10002C2B8()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10002C35C;
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  return sub_100029EB4(v2, 0, 0, v3, v4);
}

uint64_t sub_10002C35C()
{

  return _swift_task_switch(sub_10002C458, 0, 0);
}

uint64_t sub_10002C458()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 32))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_10002C4F0(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_1000DA084();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StreaksWidgetTimelineEntry();
  v44 = *(v11 - 1);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v47 = _swiftEmptyArrayStorage;
    v45 = v8;
    sub_1000179A0(0, v15, 0);
    v17 = v45;
    v16 = v47;
    v18 = v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v38 = (v6 + 48);
    v19 = *(v46 + 72);
    v35 = (v6 + 8);
    v36 = (v6 + 32);
    v40 = (v6 + 16);
    v41 = v19;
    v42 = v5;
    v43 = v4;
    do
    {
      sub_10002D54C(v18, v10, type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry);
      v20 = &v10[v17[6]];
      v21 = *v20;
      v46 = *(v20 + 1);
      if (v21 != 2)
      {
        v39 = v10[v17[8]];
        sub_100007F58(&v10[v17[5]], v4, &qword_1001203B8);
        if ((*v38)(v4, 1, v5) == 1)
        {
          sub_1000080B0(v4, &qword_1001203B8);
        }

        else
        {
          v22 = v37;
          (*v36)();
          if ((sub_1000D9FF4() & 1) != 0 && v46 > 1)
          {
            sub_1000D9FB4();
          }

          (*v35)(v22, v5);
        }

        v17 = v45;
      }

      (*v40)(v13, v10, v5);
      v23 = &v10[v17[7]];
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v11[7];
      sub_1000DBCB4();
      sub_10002D5B4(v10, type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry);
      v27 = sub_1000DBCC4();
      (*(*(v27 - 8) + 56))(&v13[v26], 0, 1, v27);
      v28 = &v13[v11[5]];
      v29 = v46;
      *v28 = v21;
      *(v28 + 1) = v29;
      v30 = &v13[v11[6]];
      *v30 = v24;
      *(v30 + 1) = v25;
      v13[v11[8]] = 1;
      v13[v11[9]] = 2;
      v47 = v16;
      v32 = v16[2];
      v31 = v16[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000179A0(v31 > 1, v32 + 1, 1);
        v16 = v47;
      }

      v16[2] = v32 + 1;
      sub_10002D614(v13, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32, type metadata accessor for StreaksWidgetTimelineEntry);
      v5 = v42;
      v18 += v41;
      --v15;
      v4 = v43;
      v17 = v45;
    }

    while (v15);
  }

  return v16;
}

unint64_t sub_10002CA90()
{
  result = qword_100121438;
  if (!qword_100121438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121438);
  }

  return result;
}

uint64_t sub_10002CAE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000DBCE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001CAAC;

  return sub_10002C1E4(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_10002CC3C@<X0>(uint64_t a1@<X8>)
{
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  sub_100008068(0, &qword_100120AD8);
  v3 = sub_1000DC4F4();
  v4 = sub_1000DBF04();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_1000DC864();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1000080B0(v14, &qword_100121470);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = sub_1000DC4F4();
    v7 = sub_1000DBF04();
    [v6 removeObjectForKey:v7];

    v9 = 1;
    return (*(*(ReportedStreaks - 8) + 56))(a1, v9, 1, ReportedStreaks);
  }

  sub_1000D9C04();
  swift_allocObject();
  sub_1000D9BF4();
  sub_10002D67C(&qword_100121478, type metadata accessor for LastReportedStreaks);
  sub_1000D9BE4();
  sub_100010514(v10, v11);

  v9 = 0;
  return (*(*(ReportedStreaks - 8) + 56))(a1, v9, 1, ReportedStreaks);
}

uint64_t sub_10002CECC(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100121450);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  ReportedStreaks = type metadata accessor for LastReportedStreaks();
  v6 = *(ReportedStreaks - 8);
  __chkstk_darwin(ReportedStreaks);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100007F58(a1, v4, &qword_100121450);
  if ((*(v6 + 48))(v4, 1, ReportedStreaks) == 1)
  {
    sub_1000080B0(v4, &qword_100121450);
    sub_100008068(0, &qword_100120AD8);
    v9 = sub_1000DC4F4();
    v10 = sub_1000DBF04();
    [v9 removeObjectForKey:v10];
  }

  else
  {
    sub_10002D614(v4, v8, type metadata accessor for LastReportedStreaks);
    sub_1000D9C34();
    swift_allocObject();
    sub_1000D9C24();
    sub_10002D67C(&qword_100121468, type metadata accessor for LastReportedStreaks);
    v11 = sub_1000D9C14();
    v13 = v12;

    sub_100008068(0, &qword_100120AD8);
    v14 = sub_1000DC4F4();
    isa = sub_1000D9DE4().super.isa;
    v16 = sub_1000DBF04();
    [v14 setObject:isa forKey:v16];
    sub_100010514(v11, v13);

    sub_10002D5B4(v8, type metadata accessor for LastReportedStreaks);
  }

  return 1;
}

uint64_t sub_10002D1F0()
{
  if (qword_100121390)
  {
    v0 = *(qword_100121390 + OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container);
    v1 = qword_100121390;
    v2 = [v0 viewContext];
    v3 = [v2 persistentStoreCoordinator];

    if (v3)
    {
      v4 = [v3 persistentStores];
      sub_100008068(0, &qword_100120A78);
      v5 = sub_1000DC134();

      v6 = v5 >> 62 ? sub_1000DCB14() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v6)
      {
        if (v1[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_persistentStoresLoadSuccess] == 1)
        {
          v7 = qword_100121390;
LABEL_17:
          v18 = v7;
          v19 = v7;
          v7 = v1;
          goto LABEL_19;
        }
      }
    }

    v8 = qword_100121390;
    qword_100121390 = 0;
  }

  if (qword_10011FB30 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for DataStackConfiguration();
  v10 = sub_100007EBC(v9, qword_1001272B0);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v7 = sub_10001D4F8(v11, v12);
  v14 = [*&v7[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_container] viewContext];
  v15 = [v14 persistentStoreCoordinator];

  if (!v15)
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v16 = [v15 persistentStores];
  sub_100008068(0, &qword_100120A78);
  v17 = sub_1000DC134();

  if (v17 >> 62)
  {
    v18 = sub_1000DCB14();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    if (v7[OBJC_IVAR____TtC20JournalWidgetsSecure19CoreDataStackShared_persistentStoresLoadSuccess] == 1)
    {
      v1 = qword_100121390;
      qword_100121390 = v7;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v18;
}

uint64_t sub_10002D494(unsigned __int8 a1)
{
  v1 = a1;
  sub_100007BC0(&qword_100121460);
  result = swift_allocObject();
  *(result + 16) = xmmword_1000E11A0;
  v3 = v1 == 2;
  *(result + 32) = v1 == 2;
  *(result + 40) = 0;
  v4 = 94;
  v5 = 68;
  v6 = 22;
  v7 = 4;
  *(result + 48) = v1 == 2;
  if (v1 != 2)
  {
    v7 = 1;
  }

  *(result + 56) = v7;
  *(result + 64) = v3;
  if (v1 != 2)
  {
    v6 = 9;
    v5 = 41;
  }

  *(result + 72) = v6;
  if (v1 != 2)
  {
    v4 = 85;
  }

  *(result + 80) = v3;
  *(result + 88) = v5;
  *(result + 96) = v3;
  *(result + 104) = v4;
  *(result + 112) = v3;
  *(result + 120) = 100;
  return result;
}

uint64_t sub_10002D54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D5B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002D614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D67C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D6C4()
{
  v1 = sub_1000DBCE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10002D7B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000DBCE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001CD68;

  return sub_10002BF20(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_10002D91C()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100121480);
  sub_100007EBC(v0, qword_100121480);
  return sub_1000DAFE4();
}

id sub_10002D99C(void *a1, char a2, char a3, char a4, void *a5)
{
  if (!a1)
  {
LABEL_17:
    if ((a2 & 1) != 0 && (v31 = [objc_opt_self() workStyleAttributes]) != 0)
    {
      v20 = v31;
      if (qword_10011F9D0 != -1)
      {
        swift_once();
      }

      v32 = sub_1000DAFF4();
      sub_100007EBC(v32, qword_100121480);
      v33 = sub_1000DAFD4();
      v34 = sub_1000DC4E4();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] Work";
    }

    else
    {
      if ((a3 & 1) != 0 || (a4 & 1) == 0 || (v37 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0], v20 = objc_msgSend(objc_opt_self(), "styleAttributesForPlace:", v37), v37, !v20))
      {
        if (qword_10011F9D0 != -1)
        {
          swift_once();
        }

        v39 = sub_1000DAFF4();
        sub_100007EBC(v39, qword_100121480);
        v40 = a1;
        v41 = sub_1000DAFD4();
        v42 = sub_1000DC4E4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = 7104878;
          v44 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v44 = 136315394;
          if (a1)
          {
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = sub_1000DBF44();
              v49 = v48;
            }

            else
            {
              v49 = 0xE300000000000000;
              v47 = 7104878;
            }

            v52 = sub_10001A58C(v47, v49, v76);

            *(v44 + 4) = v52;
            *(v44 + 12) = 2080;
            v53 = [v40 pointOfInterestCategory];
            if (v53)
            {
              v54 = v53;
              v43 = sub_1000DBF44();
              v50 = v55;
            }

            else
            {
              v50 = 0xE300000000000000;
            }
          }

          else
          {
            v50 = 0xE300000000000000;
            v51 = sub_10001A58C(7104878, 0xE300000000000000, v76);

            *(v44 + 4) = v51;
            *(v44 + 12) = 2080;
          }

          v56 = sub_10001A58C(v43, v50, v76);

          *(v44 + 14) = v56;
          _os_log_impl(&_mh_execute_header, v41, v42, "[POIClustering] [RENDERING] Fallback, mkMapItem.name=%s, mkMapItem.poiCategory=%s", v44, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }

      if (qword_10011F9D0 != -1)
      {
        swift_once();
      }

      v38 = sub_1000DAFF4();
      sub_100007EBC(v38, qword_100121480);
      v33 = sub_1000DAFD4();
      v34 = sub_1000DC4E4();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] City";
    }

    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_31:

    goto LABEL_49;
  }

  v10 = a1;
  v11 = [v10 pointOfInterestCategory];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000DBF44();
    v15 = v14;
    if (v13 == sub_1000DBF44() && v15 == v16)
    {

      goto LABEL_16;
    }

    v18 = sub_1000DCC74();

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [v10 _styleAttributes];
  if (!v19)
  {
LABEL_14:
    v12 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v20 = v19;
  if (qword_10011F9D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000DAFF4();
  sub_100007EBC(v21, qword_100121480);
  v22 = v10;
  v23 = sub_1000DAFD4();
  v24 = sub_1000DC4E4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 134218242;
    v27 = [v22 name];
    if (v27)
    {
      v28 = v27;
      sub_1000DBF44();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v76[1] = v30;
    sub_100007BC0(&qword_100121498);
    v57 = sub_1000DC7D4();

    *(v25 + 4) = v57;

    *(v25 + 12) = 2080;
    v76[0] = [v22 pointOfInterestCategory];
    sub_100007BC0(&qword_1001214A0);
    v58 = sub_1000DC7B4();
    v60 = v59;

    v61 = sub_10001A58C(v58, v60, &v77);

    *(v25 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v23, v24, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v25, 0x16u);
    sub_100007FC0(v26);
  }

  else
  {
  }

LABEL_49:
  v62 = v20;
  [a5 displayScale];
  v64 = v63;
  v65 = [objc_allocWithZone(VKIconModifiers) init];
  [v65 setNightMode:{objc_msgSend(a5, "userInterfaceStyle") == 2}];
  result = [objc_opt_self() iconManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v67 = result;
  v68 = v64;
  v69 = sub_1000DBF04();
  *&v70 = v68;
  v71 = [v67 imageForStyleAttributes:v62 withStylesheetName:v69 contentScale:7 sizeGroup:v65 modifiers:v70];

  if (!v71)
  {

    return 0;
  }

  result = [v71 fillColor];
  if (result)
  {
    v72 = result;
    v73 = [objc_allocWithZone(UIColor) initWithCGColor:v72];

    result = [v71 image];
    if (result)
    {
      v74 = result;
      [v71 contentScale];
      [objc_allocWithZone(UIImage) initWithCGImage:v74 scale:0 orientation:v75];

      return v73;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10002E258(uint64_t *a1, int a2)
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

uint64_t sub_10002E2A0(uint64_t result, int a2, int a3)
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

id sub_10002E2FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoAsset()
{
  result = qword_1001214D0;
  if (!qword_1001214D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002E404()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_100120418);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1000DAAA4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_100014DEC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000080B0(v17, &qword_100120418);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1000DAA94();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  sub_1000DAEA4();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_100046898(v24, v25, 0, 0);

  v29 = v52;
  sub_1000DAA84();
  v30 = v29;
  v31 = sub_1000DA084();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        sub_1000DA3A4();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_1000080B0(v30, &qword_1001203B8);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v39 = sub_1000DBF64();
  v41 = v40;
  sub_100007BC0(&qword_1001203C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000DFEF0;
  v43 = sub_1000478A0(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1000DC124().super.isa;

  [v28 setAlternateNames:v46];

  sub_1000080B0(v37, &qword_1001203B8);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_10002EAB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DAAA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002EB10()
{
  sub_1000343C0();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1000DBF04();
  [v1 addObserver:v0 selector:"handleAllowedVideosNotification:" name:v2 object:0];
}

uint64_t sub_10002EBC4()
{
  v0 = sub_1000DBA34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBAA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A41C();
  v8 = sub_1000DC574();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100031060;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034608;
  aBlock[3] = &unk_10010E8A0;
  v10 = _Block_copy(aBlock);

  sub_1000DBA54();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100031230(&qword_100121568, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007BC0(&qword_100121570);
  sub_100031080();
  sub_1000DC8D4();
  sub_1000DC584();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002EE7C()
{
  v0 = sub_100007BC0(&qword_100120908);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC20JournalWidgetsSecure18VideoAssetGridView_durationLabel;
    v6 = [*(result + OBJC_IVAR____TtC20JournalWidgetsSecure18VideoAssetGridView_durationLabel) superview];
    if (v6)
    {

      [v4 bringSubviewToFront:*&v4[v5]];
    }

    else
    {
      v7 = qword_10011FBA8;
      v8 = *&v4[v5];
      if (v7 != -1)
      {
        swift_once();
      }

      [v8 setFont:qword_100127360];

      v9 = *&v4[v5];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 whiteColor];
      [v11 setTextColor:v12];

      [*&v4[v5] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v4[v5] setAdjustsFontForContentSizeCategory:1];
      [*&v4[v5] setAdjustsFontSizeToFitWidth:1];
      [v4 addSubview:*&v4[v5]];
      v13 = *&v4[v5];
      v14 = [v13 superview];
      v15 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
      if (v14)
      {
        v16 = v14;
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v13 trailingAnchor];
        v18 = [v16 trailingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        [v19 setConstant:-8.0];
        if (v19)
        {
          [v19 setActive:1];
        }

        v15 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
      }

      else
      {
        v19 = 0;
        v16 = v13;
      }

      v20 = *&v4[v5];
      v21 = [v20 superview];
      if (v21)
      {
        v22 = v21;
        [v20 *&v15[384]];
        v23 = [v20 leadingAnchor];
        v24 = [v22 leadingAnchor];
        v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

        [v25 setConstant:8.0];
        if (v25)
        {
          [v25 setActive:1];
        }
      }

      else
      {
        v25 = 0;
        v22 = v20;
      }

      v26 = *&v4[v5];
      v27 = sub_100043AF0(0, 1, 6.0);
    }

    v28 = sub_1000DC244();
    (*(*(v28 - 8) + 56))(v2, 1, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000DC224();

    v30 = sub_1000DC214();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v29;

    sub_1000306D4(0, 0, v2, &unk_1000E14D8, v31);
  }

  return result;
}

uint64_t sub_10002F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_1000DBA34();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = sub_1000DBAA4();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_100007BC0(&qword_100121580);
  v4[35] = swift_task_alloc();
  v7 = sub_1000D9DA4();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = sub_1000DC224();
  v4[40] = sub_1000DC214();
  v9 = sub_1000DC1D4();
  v4[41] = v9;
  v4[42] = v8;

  return _swift_task_switch(sub_10002F51C, v9, v8);
}

uint64_t sub_10002F51C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_playerView);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      v8 = [v7 currentItem];

      if (v8)
      {
        v0[43] = [v8 asset];

        sub_100007BC0(&qword_100121590);
        v9 = sub_1000DA2E4();
        v0[44] = v9;
        v10 = sub_1000DC214();
        v0[45] = v10;
        v11 = swift_task_alloc();
        v0[46] = v11;
        *v11 = v0;
        v11[1] = sub_10002F8C8;

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 55, v9, v10, &protocol witness table for MainActor);
      }
    }

    else
    {
LABEL_10:
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = *(v12 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_videoAsset), v14 = v12, v15 = v13, v14, !v13))
  {
    v21 = v0[36];
    v22 = v0[37];
    v23 = v0[35];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_16;
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  sub_100056D04(0, 1, v18);

  v19 = (*(v17 + 48))(v18, 1, v16);
  v20 = v0[40];
  if (v19 == 1)
  {

LABEL_16:
    sub_1000080B0(v0[35], &qword_100121580);

    v24 = v0[1];

    return v24();
  }

  (*(v0[37] + 32))(v0[38], v0[35], v0[36]);

  if (v20)
  {
    swift_getObjectType();
    v25 = sub_1000DC1D4();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v0[48] = v25;
  v0[49] = v27;

  return _swift_task_switch(sub_10002FCB0, v25, v27);
}

uint64_t sub_10002F8C8()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_100030388;
  }

  else
  {
    v6 = v2[43];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_10002F9FC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002F9FC()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_10000A41C();
  v6 = v0[56];
  v14 = sub_1000DC574();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_10003128C;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100034608;
  v0[11] = &unk_10010E968;
  v10 = _Block_copy(v0 + 8);

  sub_1000DBA54();
  v0[27] = _swiftEmptyArrayStorage;
  sub_100031230(&qword_100121568, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007BC0(&qword_100121570);
  sub_100031080();
  sub_1000DC8D4();
  sub_1000DC584();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002FCB0()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_1000D9D54(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_100007BC0(&qword_100121588);
  v6 = sub_1000DA2E4();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_10002FDCC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_10002FDCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_100030268;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_10002FF10;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002FF10()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];
  v5 = v0[42];

  return _swift_task_switch(sub_10002FF90, v4, v5);
}

uint64_t sub_10002FF90()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_10000A41C();
  v14 = sub_1000DC574();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_1000311D8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100034608;
  v0[5] = &unk_10010E918;
  v10 = _Block_copy(v0 + 2);

  sub_1000DBA54();
  v0[26] = _swiftEmptyArrayStorage;
  sub_100031230(&qword_100121568, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007BC0(&qword_100121570);
  sub_100031080();
  sub_1000DC8D4();
  sub_1000DC584();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100030268()
{
  v1 = v0[50];

  v2 = v0[41];
  v3 = v0[42];

  return _swift_task_switch(sub_1000302D4, v2, v3);
}

uint64_t sub_1000302D4()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100030388()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10003044C()
{
  v0 = sub_1000DCDE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DCDF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC20JournalWidgetsSecure18VideoAssetGridView_durationLabel);

    sub_1000DC6F4();
    sub_1000DCE34();
    if (sub_1000DCE24())
    {
      sub_1000DCDC4();
    }

    else
    {
      sub_1000DCDD4();
    }

    sub_1000D9984();
    (*(v1 + 8))(v3, v0);
    sub_100031230(&qword_100121598, &type metadata accessor for Duration.TimeFormatStyle);
    sub_1000DCE14();
    (*(v5 + 8))(v7, v4);
    v10 = sub_1000DBF04();

    v11 = v12;
    [v12 setText:v10];
  }
}

uint64_t sub_1000306D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100007BC0(&qword_100120908);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001CBA0(a3, v22 - v9);
  v11 = sub_1000DC244();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000080B0(v10, &qword_100120908);
  }

  else
  {
    sub_1000DC234();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000DC1D4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000DBFA4() + 32;

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

      sub_1000080B0(a3, &qword_100120908);

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

  sub_1000080B0(a3, &qword_100120908);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_100030970()
{
  v1 = v0;
  v2 = sub_1000DA0E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D9A24();
  if (v6)
  {
    v7 = v6;
    v22 = 0xD000000000000019;
    v23 = 0x80000001000E8320;
    sub_1000DC9A4();
    if (*(v7 + 16) && (v8 = sub_1000630F0(v24), (v9 & 1) != 0))
    {
      sub_10000800C(*(v7 + 56) + 32 * v8, v25);
      sub_100030F6C(v24);

      sub_100007BC0(&qword_100121560);
      if (swift_dynamicCast())
      {
        v10 = v22;
        v11 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id, v2);
          v12 = v11;
          v13 = sub_1000DA094();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v24[0] = v13;
          v24[1] = v15;
          __chkstk_darwin(v16);
          *(&v21 - 2) = v24;
          LOBYTE(v13) = sub_100040A8C(sub_100030FD0, (&v21 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
            *v17 = 0;
            v17[1] = 0;
            sub_100030FC0(v18);
            sub_10003481C();
            sub_10003464C();
          }
        }

        else
        {

          v19 = (v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
          v20 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure14VideoAssetView_finishPlayingAction);
          *v19 = 0;
          v19[1] = 0;
          sub_100030FC0(v20);
          sub_10003481C();
          sub_10003464C();
        }
      }
    }

    else
    {

      sub_100030F6C(v24);
    }
  }
}

id sub_100030E88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAssetGridView()
{
  result = qword_100121550;
  if (!qword_100121550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100030FC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100030FD0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000DCC74() & 1;
  }
}

uint64_t sub_100031028()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100031080()
{
  result = qword_100121578;
  if (!qword_100121578)
  {
    sub_100007C08(&qword_100121570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121578);
  }

  return result;
}

uint64_t sub_1000310E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CAAC;

  return sub_10002F334(a1, v4, v5, v6);
}

uint64_t sub_1000311F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031230(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000312A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReflectionAsset()
{
  result = qword_1001215C8;
  if (!qword_1001215C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000313A8()
{
  v1 = v0;
  v2 = sub_1000DA124();
  __chkstk_darwin(v2 - 8);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1000DAF04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_100120440);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_1000DA894();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000156EC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000080B0(v15, &qword_100120440);
    return 0;
  }

  v49 = v8;
  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_1000DA884();
  if (v21 >> 60 == 15 || (v22 = v20, v23 = v21, v24 = sub_1000D9DC4(), sub_100010500(v22, v23), !v24))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v25 = [v24 string];

  v48 = sub_1000DBF44();
  v27 = v26;

  sub_1000DAE84();
  v28 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v30 = [v28 initWithContentType:isa];

  (*(v10 + 8))(v12, v9);
  v31 = v30;
  sub_100046898(v48, v27, 0, 0);

  v32 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v32)
  {
    v33 = [v32 entry];
    v34 = v49;
    if (v33)
    {
      v35 = v33;
      sub_1000DA3A4();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v49;
  }

  v38 = sub_1000DA084();
  (*(*(v38 - 8) + 56))(v34, v36, 1, v38);
  sub_1000DBE74();
  sub_1000DA114();
  v39 = sub_1000DBF64();
  v41 = v40;
  sub_100007BC0(&qword_1001203C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000DFEF0;
  v43 = sub_1000478A0(v39, v41, v34);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1000DC124().super.isa;

  [v31 setAlternateNames:v46];

  sub_1000080B0(v34, &qword_1001203B8);
  (*(v17 + 8))(v19, v16);
  return v31;
}

uint64_t sub_1000319BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA894();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100031A00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100031A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100031A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}