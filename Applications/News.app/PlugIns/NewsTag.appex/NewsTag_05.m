uint64_t sub_100073DF0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v22 = a3;
  v5 = *(*a1 + 80);
  v6 = sub_1000A31A0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  sub_100028E34(0, &qword_1000E76B0);

  v13 = sub_1000A3190();
  v14 = sub_1000A3090();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10008B5B0(*(a1 + 16), *(a1 + 24), &v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "task manager %{public}s invoking result handler", v16, 0xCu);
    sub_100018720(v17);

    a2 = v21;
  }

  v23 = *(a1 + qword_1000E81B0);
  sub_1000A19A0();

  sub_1000A1B40();

  (*(v7 + 16))(v10, v12, v6);
  v18 = *(v5 - 8);
  result = (*(v18 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v10);
    (*(v7 + 8))(v12, v6);
    return (*(v18 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1000740E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  v5 = sub_1000A31A0();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_100074198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000A2900();
  __chkstk_darwin(v7);
  sub_100028E34(0, &qword_1000E76B0);

  v8 = sub_1000A3190();
  v9 = sub_1000A3090();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10008B5B0(*(a1 + 16), *(a1 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "task manager %{public}s invoking cancellation handler", v10, 0xCu);
    sub_100018720(v11);
  }

  v16 = *(a1 + qword_1000E81B0);
  sub_1000A19A0();

  sub_100017A54(&qword_1000E82E8);
  sub_1000A1B40();

  v12 = *(aBlock[0] + 16);
  if (v12)
  {
    v13 = aBlock[0] + 32;
    do
    {
      sub_10002F244(v13, aBlock);
      sub_100075768(aBlock);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000311D0;
  aBlock[3] = &unk_1000D97C8;
  _Block_copy(aBlock);
  v16 = &_swiftEmptyArrayStorage;
  sub_100075654();

  sub_100017A54(&qword_1000E82E0);
  sub_1000756AC();
  sub_1000A3230();
  sub_1000A2980();
  swift_allocObject();
  sub_1000A2970();

  sub_1000A30C0();
}

uint64_t sub_1000744C0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  sub_100028E34(0, &qword_1000E76B0);

  v7 = sub_1000A3190();
  v8 = sub_1000A3090();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10008B5B0(*(a1 + 16), *(a1 + 24), &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "task manager %{public}s completed all tasks", v9, 0xCu);
    sub_100018720(v10);
  }

  result = a2();
  if ((result & 1) == 0)
  {
    return a4();
  }

  return result;
}

void sub_100074610()
{
  v1 = v0;
  sub_100028E34(0, &qword_1000E76B0);

  v2 = sub_1000A3190();
  v3 = sub_1000A3090();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10008B5B0(*(v1 + 16), *(v1 + 24), &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "task manager %{public}s did finish task", v4, 0xCu);
    sub_100018720(v5);
  }

  v7 = *(v1 + qword_1000E81B0);
  __chkstk_darwin(v6);
  sub_1000A19A0();

  sub_1000A1B40();

  dispatch_group_leave(*(v1 + qword_1000E81A8));
  dispatch_group_leave(*(v1 + qword_1000E81A0));
}

uint64_t sub_1000747D8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_1000A31A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = *(v4 - 8);
  (*(v9 + 16))(&v12 - v7, a2, v4);
  (*(v9 + 56))(v8, 0, 1, v4);
  v10 = *(*a1 + 168);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v10, v8, v5);
  return swift_endAccess();
}

uint64_t sub_100074960(void *a1)
{
  v2 = v1;
  dispatch_group_enter(*(v1 + qword_1000E81A8));
  *&v18[0] = *(v1 + qword_1000E81B0);
  sub_1000A19A0();

  sub_1000A1B40();

  sub_10002F244(a1, v18);
  sub_100028E34(0, &qword_1000E76B0);

  v4 = sub_1000A3190();
  v5 = sub_1000A3090();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10008B5B0(*(v2 + 16), *(v2 + 24), &v17);
    *(v6 + 12) = 2082;
    sub_10002F244(v18, v16);
    sub_100017A54(&qword_1000E82D8);
    v7 = sub_1000A2D90();
    v9 = v8;
    sub_100018720(v18);
    v10 = sub_10008B5B0(v7, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "task manager %{public}s running sidecar task %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018720(v18);
  }

  v11 = sub_100018688(a1, a1[3]);
  sub_10002B374(v2 + qword_1000E8198, *v11);
  sub_10002F244(a1, v18);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_100059ABC(v18, v12 + 24);

  v13 = sub_1000A1B60();
  v14 = sub_1000A1BB0();

  return v14;
}

uint64_t sub_100074C5C(uint64_t a1, uint64_t a2)
{
  sub_10002F244(a2, v18);
  v3 = qword_1000E81B8;
  swift_beginAccess();
  v4 = *(a1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100085078(0, v4[2] + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100085078((v6 > 1), v7 + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v8 = sub_10002F1F4(v18, v19);
  __chkstk_darwin(v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = type metadata accessor for EventProcessingSidecarTask();
  v17 = &off_1000D7F98;
  *&v15 = v12;
  v4[2] = v7 + 1;
  sub_100059ABC(&v15, &v4[5 * v7 + 4]);
  sub_100018720(v18);
  *(a1 + v3) = v4;
  return swift_endAccess();
}

void sub_100074E1C(uint64_t a1, uint64_t a2)
{
  sub_10002F244(a2, v12);
  sub_100028E34(0, &qword_1000E76B0);

  v3 = sub_1000A3190();
  v4 = sub_1000A3090();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10008B5B0(*(a1 + 16), *(a1 + 24), &v11);
    *(v5 + 12) = 2082;
    sub_10002F244(v12, v10);
    sub_100017A54(&qword_1000E82D8);
    v6 = sub_1000A2D90();
    v8 = v7;
    sub_100018720(v12);
    v9 = sub_10008B5B0(v6, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "task manager %{public}s finished running sidecar task %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018720(v12);
  }

  dispatch_group_leave(*(a1 + qword_1000E81A8));
}

id *sub_100074FDC()
{

  sub_10007583C(v0 + qword_1000E8198);

  v1 = *(*v0 + 21);
  v2 = sub_1000A31A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000750C8()
{
  sub_100074FDC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskContext()
{
  result = qword_1000E8298;
  if (!qword_1000E8298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100075198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A2C20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100017A54(&qword_1000E8A40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000752A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000A2C20();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100017A54(&qword_1000E8A40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000753B0()
{
  sub_1000A2C20();
  if (v0 <= 0x3F)
  {
    sub_100075434();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100075434()
{
  if (!qword_1000E82A8)
  {
    type metadata accessor for NewsTimelineEntry();
    v0 = sub_1000A31A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E82A8);
    }
  }
}

uint64_t sub_100075494()
{

  sub_100018720(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000754E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075534()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100075588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000755A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000755FC()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100075654()
{
  result = qword_1000E8A50;
  if (!qword_1000E8A50)
  {
    sub_1000A2900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8A50);
  }

  return result;
}

unint64_t sub_1000756AC()
{
  result = qword_1000E8A60;
  if (!qword_1000E8A60)
  {
    sub_100017A9C(&qword_1000E82E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8A60);
  }

  return result;
}

uint64_t sub_100075710@<X0>(void *a1@<X8>)
{
  v3 = qword_1000E81B8;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_100075768(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E82F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000757D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007583C(uint64_t a1)
{
  v2 = type metadata accessor for TaskContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000758B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageStore.Image(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (*(a2 + 16))
  {
    v18 = sub_100031684(a1);
    if (v19)
    {
      sub_10006CAF0(*(a2 + 56) + *(v9 + 72) * v18, v15, type metadata accessor for ImageStore.Image);
      sub_1000793D4(v15, v17, type metadata accessor for ImageStore.Image);
      sub_10006CAF0(v17, v12, type metadata accessor for ImageStore.Image);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100078838(v17, type metadata accessor for ImageStore.Image);
        return *v12;
      }

      (*(v5 + 32))(v7, v12, v4);
      sub_1000A16D0();
      v20 = objc_allocWithZone(UIImage);
      v21 = sub_1000A2D10();

      v22 = [v20 initWithContentsOfFile:v21];

      if (v22)
      {
        (*(v5 + 8))(v7, v4);
        sub_100078838(v17, type metadata accessor for ImageStore.Image);
        return v22;
      }

      sub_1000A3070();
      sub_100017A54(&unk_1000E5270);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000AA7C0;
      v25 = sub_1000A16D0();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_10001A97C();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_100028E34(0, &qword_1000E76B0);
      v28 = sub_1000A3190();
      sub_1000A1DB0();

      (*(v5 + 8))(v7, v4);
      sub_100078838(v17, type metadata accessor for ImageStore.Image);
    }
  }

  return 0;
}

uint64_t sub_100075C7C(void *a1)
{
  v2 = sub_100017A54(&qword_1000E8548);
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - v3;
  v4 = sub_100017A54(&qword_1000E8550);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v20 - v5;
  v6 = sub_1000A1700();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100017A54(&qword_1000E8558);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  sub_100018688(a1, a1[3]);
  sub_10007932C();
  sub_1000A3660();
  sub_10006CAF0(v27, v11, type metadata accessor for ImageStore.Key);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v30 = 1;
    sub_100079380();
    v16 = v21;
    sub_1000A34D0();
    (*(v22 + 8))(v16, v23);
  }

  else
  {
    (*(v7 + 32))(v28, v11, v6);
    v29 = 0;
    sub_10007943C();
    v18 = v24;
    sub_1000A34D0();
    sub_100078B5C(&qword_1000E7A50, &type metadata accessor for URL);
    v19 = v26;
    sub_1000A3520();
    (*(v25 + 8))(v18, v19);
    (*(v7 + 8))(v28, v6);
  }

  return (*(v13 + 8))(v15, v12);
}

Swift::Int sub_1000760F4()
{
  v1 = v0;
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A35F0();
  sub_10006CAF0(v1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000A3600(1uLL);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1000A3600(0);
    sub_100078B5C(&qword_1000E8870, &type metadata accessor for URL);
    sub_1000A2C80();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1000A3620();
}

uint64_t sub_1000762E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100017A54(&qword_1000E8510);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v44 = &v36 - v5;
  v39 = sub_100017A54(&qword_1000E8518);
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v8 = sub_100017A54(&qword_1000E8520);
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ImageStore.Key(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = a1[3];
  v47 = a1;
  sub_100018688(a1, v17);
  sub_10007932C();
  v18 = v46;
  sub_1000A3640();
  if (!v18)
  {
    v46 = v11;
    v37 = v14;
    v38 = v16;
    v19 = v44;
    v20 = sub_1000A34C0();
    if (*(v20 + 16) == 1)
    {
      v21 = v45;
      if (*(v20 + 32))
      {
        v49 = 1;
        sub_100079380();
        sub_1000A3430();
        v22 = v43;
        (*(v41 + 8))(v19, v40);
        (*(v21 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v23 = sub_1000A1700();
        v24 = v38;
        (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
      }

      else
      {
        v48 = 0;
        sub_10007943C();
        v28 = v7;
        sub_1000A3430();
        v30 = v10;
        v31 = v28;
        v32 = v8;
        v33 = sub_1000A1700();
        sub_100078B5C(&qword_1000E5FC8, &type metadata accessor for URL);
        v34 = v37;
        v35 = v39;
        sub_1000A34B0();
        (*(v42 + 8))(v31, v35);
        (*(v21 + 8))(v30, v32);
        swift_unknownObjectRelease();
        (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        v24 = v38;
        sub_1000793D4(v34, v38, type metadata accessor for ImageStore.Key);
        v22 = v43;
      }

      sub_1000793D4(v24, v22, type metadata accessor for ImageStore.Key);
    }

    else
    {
      v25 = sub_1000A3300();
      swift_allocError();
      v27 = v26;
      sub_100017A54(&qword_1000E8530);
      *v27 = v46;
      sub_1000A3440();
      sub_1000A32F0();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v45 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_100018720(v47);
}

uint64_t sub_1000768E0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x725565746F6D6572;
  }
}

uint64_t sub_100076924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x725565746F6D6572 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1000A3560() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000B4F20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000A3560();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100076A10(uint64_t a1)
{
  v2 = sub_10007932C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076A4C(uint64_t a1)
{
  v2 = sub_10007932C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A3560();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100076B14(uint64_t a1)
{
  v2 = sub_10007943C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076B50(uint64_t a1)
{
  v2 = sub_10007943C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100076B8C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100076BBC(uint64_t a1)
{
  v2 = sub_100079380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076BF8(uint64_t a1)
{
  v2 = sub_100079380();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100076C68()
{
  v1 = sub_1000A1700();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006CAF0(v0, v7, type metadata accessor for ImageStore.Key);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1000A3600(1uLL);
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    sub_1000A3600(0);
    sub_100078B5C(&qword_1000E8870, &type metadata accessor for URL);
    sub_1000A2C80();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int sub_100076E34()
{
  v1 = v0;
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A35F0();
  sub_10006CAF0(v1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000A3600(1uLL);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    sub_1000A3600(0);
    sub_100078B5C(&qword_1000E8870, &type metadata accessor for URL);
    sub_1000A2C80();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1000A3620();
}

uint64_t sub_100077028(void *a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E8360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100018688(a1, a1[3]);
  sub_100078A1C();
  sub_1000A3660();
  v9[1] = a2;
  sub_100017A54(&qword_1000E8340);
  sub_100078BA4();
  sub_1000A3520();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000771AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7942736567616D69 && a2 == 0xEB0000000079654BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A3560();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100077238(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077274(uint64_t a1)
{
  v2 = sub_100078A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000772B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100078898(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000772FC()
{
  v1 = 0x6172576567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100077360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000791B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077394(uint64_t a1)
{
  v2 = sub_100078694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000773D0(uint64_t a1)
{
  v2 = sub_100078694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007740C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C5255656C6966;
  }

  else
  {
    v2 = 0x6567616D496975;
  }

  if (*a2)
  {
    v3 = 0x4C5255656C6966;
  }

  else
  {
    v3 = 0x6567616D496975;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000A3560();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100077494()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_10007750C()
{
  sub_1000A2DD0();
}

Swift::Int sub_100077568()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_1000775DC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000D7820;
  v8._object = v3;
  v5 = sub_1000A3420(v4, v8);

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

void sub_10007763C(uint64_t *a1@<X8>)
{
  v2 = 0x6567616D496975;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_100077724@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v31 = a2;
  v3 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - v4;
  v5 = sub_1000A1700();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E82F8);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018688(a1, a1[3]);
  sub_100078694();
  v14 = v33;
  sub_1000A3640();
  if (!v14)
  {
    v27 = v7;
    v28 = v5;
    v33 = v13;
    v15 = v31;
    v16 = v32;
    v17 = v30;
    LOBYTE(v37) = 0;
    sub_1000786E8();
    sub_1000A34B0();
    v18 = v10;
    if (v35)
    {
      LOBYTE(v37) = 2;
      sub_100034B00();
      sub_1000A34B0();
      v26 = v11;
      v19 = v35;
      v20 = v36;
      LOBYTE(v35) = 0;
      v21 = v29;
      (*(v16 + 56))(v29, 1, 1, v28);
      sub_1000A1680();
      sub_10001AA1C(v19, v20);
      sub_10001FE6C(v21, &unk_1000E5DD0);
      (*(v17 + 8))(v18, v8);
      v25 = v33;
      (*(v32 + 32))(v33, v27, v28);
    }

    else
    {
      LOBYTE(v37) = 1;
      sub_10007873C();
      sub_1000A34B0();
      (*(v17 + 8))(v10, v8);
      v23 = v35;

      v24 = v33;
      *v33 = v23;
      v25 = v24;
    }

    swift_storeEnumTagMultiPayload();
    sub_1000793D4(v25, v15, type metadata accessor for ImageStore.Image);
  }

  return sub_100018720(v34);
}

void sub_100077D64(void *a1)
{
  v2 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1000A1700();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A1840();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100017A54(&qword_1000E8318);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  sub_100018688(a1, a1[3]);
  sub_100078694();
  sub_1000A3660();
  sub_10006CAF0(v34, v11, type metadata accessor for ImageStore.Image);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v37;
    (*(v37 + 32))(v6, v11, v4);
    (*(v15 + 56))(v35, 1, 1, v4);
    v16 = v36;
    v17 = sub_1000A1620();
    if (!v16)
    {
      v21 = v17;
      v22 = v18;
      sub_10001FE6C(v35, &unk_1000E5DD0);
      LOBYTE(v39) = 1;
      v42 = 0;
      sub_100078790();
      sub_1000A3520();
      v39 = v21;
      v40 = v22;
      v42 = 2;
      sub_100034E3C();
      sub_1000A3520();
      (*(v37 + 8))(v6, v4);
      (*(v38 + 8))(v14, v12);
      sub_10001AA1C(v21, v22);
      return;
    }

    sub_10001FE6C(v35, &unk_1000E5DD0);
    (*(v37 + 8))(v6, v4);
  }

  else
  {
    v19 = *v11;
    LOBYTE(v39) = 0;
    v42 = 0;
    sub_100078790();
    v20 = v36;
    sub_1000A3520();
    if (v20)
    {
      (*(v38 + 8))(v14, v12);

      return;
    }

    v23 = v19;
    v24 = v31;
    sub_1000A1830();
    v25 = sub_1000A1820();
    v27 = v26;
    (*(v32 + 8))(v24, v33);
    v39 = v25;
    v40 = v27;
    v43._countAndFlagsBits = 1735290926;
    v43._object = 0xE400000000000000;
    sub_1000A2E10(v43);
    v28 = v39;
    v29 = v40;
    v39 = v23;
    v40 = v28;
    v41 = v29;
    v42 = 1;
    sub_1000787E4();
    sub_1000A3520();
  }

  (*(v38 + 8))(v14, v12);
}

uint64_t sub_100078334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100017A54(&qword_1000E5E00);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_10006CAF0(a1, &v24 - v16, type metadata accessor for ImageStore.Key);
  sub_10006CAF0(a2, &v17[v18], type metadata accessor for ImageStore.Key);
  v19 = v5[6];
  if (v19(v17, 1, v4) != 1)
  {
    sub_10006CAF0(v17, v13, type metadata accessor for ImageStore.Key);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = v5[4];
      v21(v10, v13, v4);
      v21(v8, &v17[v18], v4);
      v20 = sub_1000A16B0();
      v22 = v5[1];
      v22(v8, v4);
      v22(v10, v4);
      sub_100078838(v17, type metadata accessor for ImageStore.Key);
      return v20 & 1;
    }

    (v5[1])(v13, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10001FE6C(v17, &qword_1000E5E00);
    v20 = 0;
    return v20 & 1;
  }

  sub_100078838(v17, type metadata accessor for ImageStore.Key);
  v20 = 1;
  return v20 & 1;
}

unint64_t sub_100078694()
{
  result = qword_1000E8300;
  if (!qword_1000E8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8300);
  }

  return result;
}

unint64_t sub_1000786E8()
{
  result = qword_1000E8308;
  if (!qword_1000E8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8308);
  }

  return result;
}

unint64_t sub_10007873C()
{
  result = qword_1000E8310;
  if (!qword_1000E8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8310);
  }

  return result;
}

unint64_t sub_100078790()
{
  result = qword_1000E8320;
  if (!qword_1000E8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8320);
  }

  return result;
}

unint64_t sub_1000787E4()
{
  result = qword_1000E8328;
  if (!qword_1000E8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8328);
  }

  return result;
}

uint64_t sub_100078838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100078898(void *a1)
{
  v3 = sub_100017A54(&qword_1000E8330);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100018688(a1, a1[3]);
  sub_100078A1C();
  sub_1000A3640();
  if (v1)
  {
    sub_100018720(a1);
  }

  else
  {
    sub_100017A54(&qword_1000E8340);
    sub_100078A70();
    sub_1000A34B0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100018720(a1);
  }

  return v7;
}

unint64_t sub_100078A1C()
{
  result = qword_1000E8338;
  if (!qword_1000E8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8338);
  }

  return result;
}

unint64_t sub_100078A70()
{
  result = qword_1000E8348;
  if (!qword_1000E8348)
  {
    sub_100017A9C(&qword_1000E8340);
    sub_100078B5C(&qword_1000E8350, type metadata accessor for ImageStore.Key);
    sub_100078B5C(&qword_1000E8358, type metadata accessor for ImageStore.Image);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8348);
  }

  return result;
}

uint64_t sub_100078B5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100078BA4()
{
  result = qword_1000E8368;
  if (!qword_1000E8368)
  {
    sub_100017A9C(&qword_1000E8340);
    sub_100078B5C(&qword_1000E8370, type metadata accessor for ImageStore.Key);
    sub_100078B5C(&qword_1000E8378, type metadata accessor for ImageStore.Image);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8368);
  }

  return result;
}

uint64_t sub_100078D18()
{
  result = sub_100028E34(319, &qword_1000E6CE8);
  if (v1 <= 0x3F)
  {
    result = sub_1000A1700();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100078DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1700();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100078E30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000A1700();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100078EB0()
{
  v0 = sub_1000A1700();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_100078F54()
{
  result = qword_1000E84D0;
  if (!qword_1000E84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84D0);
  }

  return result;
}

unint64_t sub_100078FAC()
{
  result = qword_1000E84D8;
  if (!qword_1000E84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84D8);
  }

  return result;
}

unint64_t sub_100079004()
{
  result = qword_1000E84E0;
  if (!qword_1000E84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84E0);
  }

  return result;
}

unint64_t sub_10007905C()
{
  result = qword_1000E84E8;
  if (!qword_1000E84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84E8);
  }

  return result;
}

unint64_t sub_1000790B4()
{
  result = qword_1000E84F0;
  if (!qword_1000E84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84F0);
  }

  return result;
}

unint64_t sub_10007910C()
{
  result = qword_1000E84F8;
  if (!qword_1000E84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E84F8);
  }

  return result;
}

unint64_t sub_100079164()
{
  result = qword_1000E8500;
  if (!qword_1000E8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8500);
  }

  return result;
}

uint64_t sub_1000791B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172576567616D69 && a2 == 0xEC00000072657070 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000A3560();

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

unint64_t sub_1000792D8()
{
  result = qword_1000E8508;
  if (!qword_1000E8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8508);
  }

  return result;
}

unint64_t sub_10007932C()
{
  result = qword_1000E8528;
  if (!qword_1000E8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8528);
  }

  return result;
}

unint64_t sub_100079380()
{
  result = qword_1000E8538;
  if (!qword_1000E8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8538);
  }

  return result;
}

uint64_t sub_1000793D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007943C()
{
  result = qword_1000E8540;
  if (!qword_1000E8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8540);
  }

  return result;
}

unint64_t sub_1000794C4()
{
  result = qword_1000E8560;
  if (!qword_1000E8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8560);
  }

  return result;
}

unint64_t sub_10007951C()
{
  result = qword_1000E8568;
  if (!qword_1000E8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8568);
  }

  return result;
}

unint64_t sub_100079574()
{
  result = qword_1000E8570;
  if (!qword_1000E8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8570);
  }

  return result;
}

unint64_t sub_1000795CC()
{
  result = qword_1000E8578;
  if (!qword_1000E8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8578);
  }

  return result;
}

unint64_t sub_100079624()
{
  result = qword_1000E8580;
  if (!qword_1000E8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8580);
  }

  return result;
}

unint64_t sub_10007967C()
{
  result = qword_1000E8588;
  if (!qword_1000E8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8588);
  }

  return result;
}

unint64_t sub_1000796D4()
{
  result = qword_1000E8590;
  if (!qword_1000E8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8590);
  }

  return result;
}

unint64_t sub_10007972C()
{
  result = qword_1000E8598;
  if (!qword_1000E8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8598);
  }

  return result;
}

void sub_100079798(int a1, id a2)
{
  v3 = [a2 todayResults];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 banner];

    if (v5)
    {
      v6 = (v2 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store);
      sub_100018688((v2 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store), *(v2 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store + 24));
      v7 = [v5 identifier];
      v8 = sub_1000A2D40();
      v10 = v9;

      v11 = sub_100065928(v8, v10);
      v13 = v12;
      v15 = v14;

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 + 1;
      if (v16 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13;
        }

        sub_100018688(v6, v6[3]);
        v19 = [v5 identifier];
        v20 = sub_1000A2D40();
        v22 = v21;

        sub_1000659CC(v20, v22, v17, v18);

        if (qword_1000E46F0 == -1)
        {
          goto LABEL_11;
        }
      }

      swift_once();
LABEL_11:
      v23 = sub_1000A1DF0();
      sub_10002FDC4(v23, static Logger.todayWidgetBanner);
      v30 = v5;
      v24 = sub_1000A1DD0();
      v25 = sub_1000A3090();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134218240;
        *(v26 + 4) = v17;
        *(v26 + 12) = 2048;
        *(v26 + 14) = [v30 numberOfAppearancesToHide];

        _os_log_impl(&_mh_execute_header, v24, v25, "TodayBannerEventTracker banner appeared, appearances=%lu numberOfAppearancesToHide=%llu", v26, 0x16u);
      }

      else
      {
      }

      goto LABEL_18;
    }
  }

  if (qword_1000E46F0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A1DF0();
  sub_10002FDC4(v27, static Logger.todayWidgetBanner);
  v30 = sub_1000A1DD0();
  v28 = sub_1000A3090();
  if (os_log_type_enabled(v30, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v30, v28, "TodayBannerEventTracker will ignore appearance when there is no banner", v29, 2u);
  }

LABEL_18:
}

void sub_100079BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100017A54(&unk_1000E5DD0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = [a3 todayResults];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 banner];

    if (v17)
    {
      sub_100028B94(a2, v14, &unk_1000E5DD0);
      v18 = sub_1000A1700();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (v20(v14, 1, v18) == 1)
      {
        sub_10001FE6C(v14, &unk_1000E5DD0);
LABEL_29:
        if (qword_1000E46F0 != -1)
        {
          swift_once();
        }

        v57 = sub_1000A1DF0();
        sub_10002FDC4(v57, static Logger.todayWidgetBanner);
        v58 = sub_1000A1DD0();
        v59 = sub_1000A3090();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "TodayBannerEventTracker will not track engagement when actionURL is unrelated", v60, 2u);
        }

LABEL_34:
        return;
      }

      v62 = v3;
      v63 = sub_1000A1640();
      v64 = v25;
      v26 = *(v19 + 8);
      v26(v14, v18);
      v27 = [v17 actionURL];
      if (v27)
      {
        v28 = v27;
        sub_1000A16C0();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      (*(v19 + 56))(v9, v29, 1, v18);
      sub_10007B3AC(v9, v12);
      if (v20(v12, 1, v18) == 1)
      {

        sub_10001FE6C(v12, &unk_1000E5DD0);
        goto LABEL_29;
      }

      v30 = sub_1000A1640();
      v32 = v31;
      v26(v12, v18);
      v33 = v64;
      v67[0] = v63;
      v67[1] = v64;
      v65 = v30;
      v66 = v32;
      sub_10001B33C();
      LOBYTE(v30) = sub_1000A3200();

      if ((v30 & 1) == 0)
      {

        goto LABEL_29;
      }

      v34 = (v62 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store);
      sub_100018688((v62 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store), *(v62 + OBJC_IVAR____TtC7NewsTag23TodayBannerEventTracker_store + 24));
      v35 = [v17 identifier];
      v36 = sub_1000A2D40();
      v38 = v37;

      v39 = sub_100065928(v36, v38);
      v41 = v40;
      v43 = v42;

      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v41;
      }

      v45 = v44 + 1;
      if (v44 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v43)
        {
          v46 = 0;
        }

        else
        {
          v46 = v39;
        }

        sub_100018688(v34, v34[3]);
        v47 = [v17 identifier];
        v48 = sub_1000A2D40();
        v50 = v49;

        sub_1000659CC(v48, v50, v46, v45);

        if (qword_1000E46F0 == -1)
        {
LABEL_26:
          v51 = sub_1000A1DF0();
          sub_10002FDC4(v51, static Logger.todayWidgetBanner);

          v17 = v17;
          v52 = sub_1000A1DD0();
          v53 = sub_1000A3090();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v67[0] = v55;
            *v54 = 136315650;
            v56 = sub_10008B5B0(v63, v33, v67);

            *(v54 + 4) = v56;
            *(v54 + 12) = 2048;
            *(v54 + 14) = v45;
            *(v54 + 22) = 2048;
            *(v54 + 24) = [v17 numberOfTapsToHide];

            _os_log_impl(&_mh_execute_header, v52, v53, "TodayBannerEventTracker banner engaged, url=%s engagements=%lu numberOfTapsToHide=%llu", v54, 0x20u);
            sub_100018720(v55);
          }

          else
          {
          }

          if (v45 >= [v17 numberOfTapsToHide])
          {
            sub_1000A2B00();
            sub_1000A2AF0();
            sub_1000A2AD0();
          }

          goto LABEL_34;
        }
      }

      swift_once();
      goto LABEL_26;
    }
  }

  if (qword_1000E46F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A1DF0();
  sub_10002FDC4(v21, static Logger.todayWidgetBanner);
  v64 = sub_1000A1DD0();
  v22 = sub_1000A3090();
  if (os_log_type_enabled(v64, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v64, v22, "TodayBannerEventTracker will ignore engagement when there is no banner", v23, 2u);
  }

  v24 = v64;
}

uint64_t sub_10007A798(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2]();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10007A88C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A8CC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005BBFC;

  return sub_10007A798(v2);
}

uint64_t sub_10007A978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10005BDA4;

  return v6();
}

uint64_t sub_10007AA64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005BDA4;

  return sub_10007A978(v2, v3, v4);
}

uint64_t sub_10007AB24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10005BBFC;

  return v7();
}

uint64_t sub_10007AC0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007AC4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005BDA4;

  return sub_10007AB24(a1, v4, v5, v6);
}

uint64_t sub_10007AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017A54(&unk_1000E85D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100028B94(a3, v23 - v10, &unk_1000E85D0);
  v12 = sub_1000A2FF0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001FE6C(v11, &unk_1000E85D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000A2FE0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000A2FD0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000A2DA0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10001FE6C(a3, &unk_1000E85D0);

    return v21;
  }

LABEL_8:
  sub_10001FE6C(a3, &unk_1000E85D0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10007B014(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007B10C;

  return v6(a1);
}

uint64_t sub_10007B10C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007B204()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007B23C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005BDA4;

  return sub_10007B014(a1, v4);
}

uint64_t sub_10007B2F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005BBFC;

  return sub_10007B014(a1, v4);
}

uint64_t sub_10007B3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&unk_1000E5DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B424(void *a1)
{
  v54 = sub_1000A2680();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = &stru_1000E1000;
  v51 = a1;
  v5 = [a1 colors];
  sub_100028E34(0, &qword_1000E85F0);
  v6 = sub_1000A2F10();

  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A33D0())
  {

    v8 = [v51 locations];
    v50 = sub_100028E34(0, &qword_1000E7EB0);
    v9 = sub_1000A2F10();

    v10 = v9 >> 62 ? sub_1000A33D0() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v11 = [v51 *(v4 + 2824)];
    v4 = sub_1000A2F10();

    v12 = v4;
    v52 = v4;
    v13 = v4 >> 62;
    if (i != v10)
    {
      break;
    }

    if (v13)
    {
      v44 = sub_1000A33D0();
      v12 = v4;
      v14 = v44;
      if (!v44)
      {
LABEL_43:

        return sub_1000A2860();
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_43;
      }
    }

    v49 = v12 & 0xC000000000000001;
    v48 = v12 & 0xFFFFFFFFFFFFFF8;
    v47 = enum case for Color.RGBColorSpace.sRGB(_:);
    v15 = (v2 + 104);
    v2 = &_swiftEmptyArrayStorage;
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if (v49)
      {
        v18 = sub_1000A32D0();
      }

      else
      {
        if (v17 >= *(v48 + 16))
        {
          goto LABEL_38;
        }

        v18 = *(v12 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 hex];
      if (!v21)
      {
        sub_1000A2D40();
        v21 = sub_1000A2D10();
      }

      v22 = [objc_opt_self() colorWithHexString:v21];

      [v22 red];
      [v22 green];
      [v22 blue];
      (*v15)(v53, v47, v54);
      sub_1000A2730();

      v4 = [v51 locations];
      v23 = sub_1000A2F10();

      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_1000A32D0();
      }

      else
      {
        if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v24 = *(v23 + 8 * v16);
      }

      v25 = v24;

      sub_1000A1900();

      v26 = sub_1000A2850();
      v28 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100084D40(0, *(v2 + 2) + 1, 1, v2);
      }

      v4 = *(v2 + 2);
      v29 = *(v2 + 3);
      if (v4 >= v29 >> 1)
      {
        v2 = sub_100084D40((v29 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v30 = &v2[16 * v4];
      *(v30 + 4) = v26;
      *(v30 + 5) = v28;
      ++v16;
      v12 = v52;
      if (v20 == v14)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  if (!v13)
  {
    v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_28;
    }

LABEL_45:

    return sub_1000A2870();
  }

  v45 = sub_1000A33D0();
  v12 = v4;
  v31 = v45;
  if (!v45)
  {
    goto LABEL_45;
  }

LABEL_28:
  v32 = v12;
  v55 = &_swiftEmptyArrayStorage;
  result = sub_1000A3340();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v34 = objc_opt_self();
    v35 = 0;
    v36 = v32;
    v37 = v32 & 0xC000000000000001;
    v38 = enum case for Color.RGBColorSpace.sRGB(_:);
    v39 = (v2 + 104);
    do
    {
      if (v37)
      {
        v41 = sub_1000A32D0();
      }

      else
      {
        v41 = *(v36 + 8 * v35 + 32);
      }

      v42 = v41;
      v43 = [v41 hex];
      if (!v43)
      {
        sub_1000A2D40();
        v43 = sub_1000A2D10();
      }

      ++v35;
      v40 = [v34 colorWithHexString:v43];

      [v40 red];
      [v40 green];
      [v40 blue];
      (*v39)(v53, v38, v54);
      sub_1000A2730();

      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
      v36 = v52;
    }

    while (v31 != v35);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

unint64_t sub_10007BACC()
{
  result = qword_1000E85F8;
  if (!qword_1000E85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E85F8);
  }

  return result;
}

uint64_t sub_10007BB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = v2[4];
  v8 = [a1 userEngagementWithWidgetEventTracker:v2[3] trackableWidgetState:v7];
  v9 = v2[2];
  v10 = sub_1000A1700();
  sub_10007BEF8();
  sub_10007BF44();
  v11 = v8;
  v12.super.isa = sub_1000A2C50().super.isa;
  sub_10001AA70(v2 + OBJC_IVAR____TtC7NewsTag21EngagementURLProvider_sharedDirectoryFileUrl, v6);
  v13 = *(v10 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v6, 1, v10) != 1)
  {
    sub_1000A1670(v14);
    v15 = v16;
    (*(v13 + 8))(v6, v10);
  }

  v17 = [v9 URLForEngagement:a1 event:v11 trackableWidgetState:v7 prefetchAssetsByRemoteURL:v12.super.isa sharedDirectoryFileURL:v15];

  if (v17)
  {
    v18 = v22;
    sub_1000A16C0();

    v19 = 0;
  }

  else
  {
    v19 = 1;
    v18 = v22;
  }

  return (*(v13 + 56))(v18, v19, 1, v10);
}

uint64_t sub_10007BD64()
{

  sub_10001AAE0(v0 + OBJC_IVAR____TtC7NewsTag21EngagementURLProvider_sharedDirectoryFileUrl);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EngagementURLProvider()
{
  result = qword_1000E8630;
  if (!qword_1000E8630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007BE3C()
{
  sub_1000369B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10007BEF8()
{
  result = qword_1000E88A0;
  if (!qword_1000E88A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E88A0);
  }

  return result;
}

unint64_t sub_10007BF44()
{
  result = qword_1000E8870;
  if (!qword_1000E8870)
  {
    sub_1000A1700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8870);
  }

  return result;
}

uint64_t sub_10007BF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10005150C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10006AEF0(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1000A3390();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_10001FE6C(a1, &unk_1000E5AD0);
    sub_1000853EC(a2, v9);
    v7 = sub_1000A3390();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_10001FE6C(v9, &unk_1000E5AD0);
  }

  return result;
}

uint64_t sub_10007C0B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100017A54(&qword_1000E8868);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10001FE6C(a1, &qword_1000E8868);
    sub_1000854C8(a2, v7);
    sub_1000871D0(a2, type metadata accessor for ImageStore.Key);
    return sub_10001FE6C(v7, &qword_1000E8868);
  }

  else
  {
    sub_100087268(a1, v10, type metadata accessor for ImageStore.Image);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10006B0C8(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000871D0(a2, type metadata accessor for ImageStore.Key);
    *v2 = v15;
  }

  return result;
}

void *sub_10007C2A0(void (*a1)(_OWORD *), uint64_t a2)
{
  v29 = a1;
  v4 = sub_100017A54(&qword_1000E7550);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v25 = type metadata accessor for Item(0);
  v7 = *(v25 - 8);
  v8 = __chkstk_darwin(v25);
  v24 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v23 = &v20 - v10;
  v11 = sub_1000A1610();
  v20 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3050();
  sub_100087338(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  sub_1000A31C0();
  if (v28)
  {
    v21 = v7;
    v14 = (v7 + 48);
    v15 = &_swiftEmptyArrayStorage;
    v22 = a2;
    while (1)
    {
      sub_10005150C(&v27, v26);
      v29(v26);
      if (v2)
      {
        break;
      }

      sub_100018720(v26);
      if ((*v14)(v6, 1, v25) == 1)
      {
        sub_10001FE6C(v6, &qword_1000E7550);
      }

      else
      {
        v16 = v23;
        sub_100087268(v6, v23, type metadata accessor for Item);
        sub_100087268(v16, v24, type metadata accessor for Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100084E9C(0, v15[2] + 1, 1, v15, &qword_1000E8838, &unk_1000AED18, type metadata accessor for Item);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_100084E9C(v17 > 1, v18 + 1, 1, v15, &qword_1000E8838, &unk_1000AED18, type metadata accessor for Item);
        }

        v15[2] = v18 + 1;
        sub_100087268(v24, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for Item);
      }

      sub_1000A31C0();
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    sub_100018720(v26);
    (*(v20 + 8))(v13, v11);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_13:
    (*(v20 + 8))(v13, v11);
  }

  return v15;
}

uint64_t sub_10007C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v33 = a4;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v8 = type metadata accessor for ContentServiceRequest();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A1840();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1830();
  v15 = sub_1000A1820();
  v32 = v15;
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  sub_100017A54(&unk_1000E5270);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000AA450;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_10001A97C();
  *(v18 + 64) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v38 = 0;
  v39 = 0xE000000000000000;

  sub_1000A3370();
  v20 = v38;
  v21 = v39;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = v21;
  sub_100028E34(0, &qword_1000E76B0);
  v22 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

  sub_100018688((a6 + 32), *(a6 + 56));
  v23 = *a5;
  sub_1000872D0(a5, v10, type metadata accessor for ContentServiceRequest);
  v24 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v33;
  v26[2] = v35;
  v26[3] = v27;
  v26[4] = a6;
  sub_100087268(v10, v26 + v24, type metadata accessor for ContentServiceRequest);
  v28 = (v26 + v25);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  v30 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v32;
  v30[1] = v17;

  sub_10008D0A4(v23, sub_100084848, v26);
}

void sub_10007CA28(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), unint64_t a6, uint64_t a7, id *a8, void (*a9)(void *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v93 = a7;
  v94 = a5;
  v91 = a11;
  v92 = a12;
  v90 = a10;
  v88 = a8;
  v89 = a9;
  v17 = sub_1000A1880();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000A2D00();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for TodayContent();
  v20 = __chkstk_darwin(v19 - 8);
  v22 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v77 - v23);
  v25 = type metadata accessor for ContentServiceRequest();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  if (a1 && a2 && a3)
  {
    v83 = v27;
    v84 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = a1;

    v87 = a3;
    v29 = [v28 sections];
    v30 = [v29 count];

    if (v30 < 1)
    {

      sub_1000A2CF0();
      sub_1000A1850();
      v43 = sub_1000A2D80();
      v45 = v44;
      sub_100080B88(v88, 1, v22);
      sub_100062320(v43, v45, v24);

      sub_1000871D0(v22, type metadata accessor for TodayContent);
      v89(v24);

      sub_1000871D0(v24, type metadata accessor for TodayContent);
    }

    else
    {
      v31 = v87;
      v81 = a2;
      sub_100017A54(&unk_1000E5270);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000AA7C0;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_10001A97C();
      v33 = v92;
      *(v32 + 32) = v91;
      *(v32 + 40) = v33;
      sub_100028E34(0, &qword_1000E76B0);

      v34 = sub_1000A3190();
      sub_1000A3090();
      sub_1000A1DB0();

      v86 = v28;
      v35 = NTTodayResults.allItems.getter();
      v36 = v35;
      v96 = &_swiftEmptyArrayStorage;
      v37 = v35 & 0xFFFFFFFFFFFFFF8;
      if (v35 >> 62)
      {
LABEL_34:
        v38 = sub_1000A33D0();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v31;
      v82 = a6;
      if (v38)
      {
        a6 = 0;
        v85 = &_swiftEmptyArrayStorage;
        do
        {
          v40 = a6;
          while (1)
          {
            if ((v36 & 0xC000000000000001) != 0)
            {
              sub_1000A32D0();
              a6 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v40 >= *(v37 + 16))
              {
                goto LABEL_33;
              }

              swift_unknownObjectRetain();
              a6 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            v95 = &OBJC_PROTOCOL___NTHeadlineProviding;
            if (swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v40;
            if (a6 == v38)
            {
              v39 = v31;
              goto LABEL_31;
            }
          }

          sub_1000A2EF0();
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v85 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000A2F50();
          }

          sub_1000A2F80();
          v85 = v96;
          v39 = v31;
        }

        while (a6 != v38);
      }

      else
      {
        v85 = &_swiftEmptyArrayStorage;
      }

LABEL_31:

      __chkstk_darwin(v46);
      v47 = v88;
      *(&v77 - 4) = v39;
      *(&v77 - 3) = v47;
      v48 = v93;
      v49 = v85;
      *(&v77 - 2) = v93;
      *(&v77 - 1) = v49;
      sub_100017A54(&qword_1000E87C8);
      swift_allocObject();
      v50 = sub_1000A1BD0();
      v80 = v50;

      __chkstk_darwin(v51);
      *(&v77 - 4) = v86;
      *(&v77 - 3) = v48;
      *(&v77 - 2) = v47;
      sub_100017A54(&qword_1000E87D0);
      swift_allocObject();
      v85 = sub_1000A1BD0();
      v52 = __chkstk_darwin(v85);
      *(&v77 - 2) = v50;
      *(&v77 - 1) = v52;
      sub_100017A54(&qword_1000E87D8);
      v79 = sub_1000A1BF0();
      sub_100028E34(0, &qword_1000E87E0);
      v78 = sub_1000A30F0();
      v53 = v84;
      sub_1000872D0(v47, v84, type metadata accessor for ContentServiceRequest);
      v54 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v55 = (v26 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      sub_100087268(v53, v61 + v54, type metadata accessor for ContentServiceRequest);
      v62 = v86;
      *(v61 + v55) = v86;
      v63 = v87;
      *(v61 + v56) = v87;
      *(v61 + v57) = v81;
      v64 = v93;
      *(v61 + v58) = v93;
      v65 = (v61 + v59);
      v66 = v92;
      *v65 = v91;
      v65[1] = v66;
      v67 = (v61 + v60);
      v68 = v90;
      *v67 = v89;
      v67[1] = v68;
      v69 = (v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8));
      v70 = v94;
      v71 = v82;
      *v69 = v94;
      v69[1] = v71;
      v72 = v62;
      v73 = v63;

      v74 = v78;
      sub_1000A1B80();

      v75 = swift_allocObject();
      v75[2] = v64;
      v75[3] = v70;
      v75[4] = v71;

      v76 = sub_1000A1B60();
      sub_1000A1B90();
    }
  }

  else
  {
    if (a4)
    {
      v41 = a4;
    }

    else
    {
      sub_100085F50();
      v41 = swift_allocError();
      *v42 = 0;
    }

    swift_errorRetain();
    v94(v41);
  }
}

void sub_10007D358(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 widgetConfig];
  if (v13)
  {
    v14 = v13;
    if (([v13 contentPrefetchEnabled] & 1) != 0 && (v15 = a6 + *(type metadata accessor for ContentServiceRequest() + 20), (v15[*(type metadata accessor for LayoutContext() + 48)] & 1) == 0))
    {
      v16 = *(a7 + 88);
      sub_100017A54(&qword_1000E8898);
      isa = sub_1000A2F00().super.isa;
      v18 = [*a6 qualityOfService];
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1000731F4;
      *(v19 + 24) = v12;
      v21[4] = sub_1000873F8;
      v21[5] = v19;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_10007D594;
      v21[3] = &unk_1000D9E08;
      v20 = _Block_copy(v21);

      [v16 prefetchContentForHeadlines:isa withQualityOfService:v18 completionHandler:v20];
      _Block_release(v20);
    }

    else
    {

      v21[0] = sub_10006C2E4(&_swiftEmptyArrayStorage);
      a1(v21);
    }
  }

  else
  {

    v21[0] = sub_10006C2E4(&_swiftEmptyArrayStorage);
    a1(v21);
  }
}

uint64_t sub_10007D594(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000A1700();
  sub_100028E34(0, &qword_1000E88A0);
  sub_100087338(&qword_1000E8870, &type metadata accessor for URL);
  v2 = sub_1000A2C60();

  v1(v2);
}

void sub_10007D66C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, id *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 banner];
  if (v13)
  {
    v14 = v13;
    v15 = *(a6 + 88);
    v16 = [*a7 qualityOfService];
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000731F4;
    *(v17 + 24) = v12;
    v19[4] = sub_1000873B8;
    v19[5] = v17;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10007D7E8;
    v19[3] = &unk_1000D9D90;
    v18 = _Block_copy(v19);

    [v15 prefetchContentForBanner:v14 withQualityOfService:v16 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {

    v19[0] = 0;
    a1(v19);
  }
}

void sub_10007D7E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10007D850(unsigned int (***a1)(char *, uint64_t, uint64_t), id *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, void (*a11)(unint64_t))
{
  v205 = a8;
  v204 = a7;
  v215 = a6;
  v226 = a5;
  v225 = a4;
  v234 = a3;
  v13 = sub_100017A54(&qword_1000E87E8);
  __chkstk_darwin(v13 - 8);
  v199 = &v194 - v14;
  v15 = sub_100017A54(&unk_1000E87F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v194 - v16;
  v231 = type metadata accessor for Section();
  v219 = *(v231 - 8);
  v18 = __chkstk_darwin(v231);
  v230 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v217 = &v194 - v20;
  v21 = sub_100017A54(&qword_1000E52B0);
  v22 = __chkstk_darwin(v21 - 8);
  v235 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v221 = &v194 - v24;
  v25 = sub_100017A54(&unk_1000E8800);
  __chkstk_darwin(v25 - 8);
  v210 = (&v194 - v26);
  v233 = type metadata accessor for TodayContent();
  v198 = *(v233 - 8);
  __chkstk_darwin(v233);
  v203 = (&v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100017A54(&unk_1000E5DD0);
  v29 = __chkstk_darwin(v28 - 8);
  v201 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v200 = &v194 - v32;
  v33 = __chkstk_darwin(v31);
  v209 = &v194 - v34;
  v35 = __chkstk_darwin(v33);
  v207 = &v194 - v36;
  __chkstk_darwin(v35);
  v213 = &v194 - v37;
  v38 = sub_100017A54(&qword_1000E8810);
  v39 = __chkstk_darwin(v38 - 8);
  v208 = (&v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v206 = &v194 - v42;
  v43 = __chkstk_darwin(v41);
  v214 = (&v194 - v44);
  __chkstk_darwin(v43);
  v216 = (&v194 - v45);
  v218 = sub_1000A1810();
  v220 = *(v218 - 8);
  __chkstk_darwin(v218);
  v223 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1000A1840();
  v229 = *(v232 - 1);
  __chkstk_darwin(v232);
  v48 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LayoutContext();
  v50 = (v49 - 8);
  v51 = __chkstk_darwin(v49);
  v53 = &v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v194 - v54;
  v57 = *a1;
  v56 = a1[1];
  v58 = a2 + *(type metadata accessor for ContentServiceRequest() + 20);
  v224 = v56;
  v211 = v56;
  v222 = v57;

  [v234 headlineScale];
  v60 = v59;
  v61 = *v58;
  v62 = *(v58 + 1);
  v63 = *(v58 + 2);
  v64 = *(v58 + 3);
  v65 = *(v58 + 4);
  v66 = v50[10];
  v67 = sub_1000A2250();
  (*(*(v67 - 8) + 16))(&v55[v66], &v58[v66], v67);
  v68 = *&v58[v50[11]];
  v69 = v58[v50[14]];
  *v55 = v61;
  *(v55 + 1) = v62;
  *(v55 + 2) = v63;
  *(v55 + 3) = v64;
  *(v55 + 4) = v65;
  *&v55[v50[11]] = v68;
  *&v55[v50[12]] = v60;
  v55[v50[13]] = 0;
  v55[v50[14]] = v69;
  sub_1000A1830();
  v70 = sub_1000A1820();
  v72 = v71;
  (*(v229 + 8))(v48, v232);
  v212 = v55;
  v232 = v53;
  sub_1000872D0(v55, v53, type metadata accessor for LayoutContext);
  v228 = a2;
  result = [*a2 request];
  if (result)
  {
    v74 = result;
    v75 = [result tagID];

    if (v75)
    {
      v76 = sub_1000A2D40();
      v78 = v77;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    v79 = v215;
    v80 = v226;
    v81 = v223;
    sub_1000A1800();
    type metadata accessor for TrackableWidgetState();
    v82 = swift_allocObject();
    v220[4](v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate, v81, v218);
    v83 = (v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID);
    *v83 = v70;
    v83[1] = v72;
    v84 = v234;
    *(v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) = v234;
    v85 = v225;
    *(v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo) = v225;
    sub_100087268(v232, v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
    v86 = (v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
    *v86 = v76;
    v86[1] = v78;
    *(v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType) = 0;
    v87 = v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect;
    *v87 = 0u;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 1;
    *(v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackKind) = 0;
    *(v82 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackLocation) = 0;
    v88 = v84;
    v89 = v85;
    v90 = sub_10007F280(v88, v224, v80);
    v91 = v216;
    v92 = v228;
    v93 = v227;
    sub_10007F818(v228, v79, v216);
    if (v93)
    {

      a11(v93);

      return sub_1000871D0(v212, type metadata accessor for LayoutContext);
    }

    v224 = v89;
    v202 = v82;
    v94 = v214;
    sub_100028B94(v91, v214, &qword_1000E8810);
    v95 = sub_100017A54(&qword_1000E8818);
    v226 = *(*(v95 - 8) + 48);
    v96 = (v226)(v94, 1, v95);
    v227 = v95;
    v234 = 0;
    if (v96 == 1)
    {
      sub_10001FE6C(v94, &qword_1000E8810);
      v97 = sub_1000A1700();
      v98 = v213;
      (*(*(v97 - 8) + 56))(v213, 1, 1, v97);
    }

    else
    {

      v99 = v88;
      v100 = *(v95 + 48);
      v101 = sub_1000A1700();
      v102 = v94;
      v103 = v101;
      v104 = *(v101 - 8);
      v105 = &v102[v100];
      v88 = v99;
      v92 = v228;
      v98 = v213;
      (*(v104 + 32))(v213, v105, v101);
      (*(v104 + 56))(v98, 0, 1, v103);
    }

    v213 = v88;
    v232 = sub_1000869C8(v92, v88, v90, v98);
    sub_10001FE6C(v98, &unk_1000E5DD0);
    v106 = *(v90 + 16);
    if (v106)
    {
      v107 = sub_1000852F0(*(v90 + 16), 0);
      v108 = *(sub_1000A1700() - 8);
      v109 = sub_100086460(&v238, &v107[(*(v108 + 80) + 32) & ~*(v108 + 80)], v106, v90);
      sub_10001FBA0();
      if (v109 == v106)
      {
LABEL_14:
        v110 = sub_1000A1700();
        isa = sub_1000A2F00().super.isa;

        NTDeleteOnDiskAssets();

        sub_10007FA40(v92, v213, v232);
        v229 = v112;
        v113 = *(v79 + 72);
        v114 = *(v79 + 136);
        v115 = v206;
        sub_100028B94(v216, v206, &qword_1000E8810);
        v116 = v227;
        if ((v226)(v115, 1, v227) == 1)
        {
          v117 = v113;
          v118 = v114;
          sub_10001FE6C(v115, &qword_1000E8810);
          v119 = *(v110 - 8);
          v120 = v119;
          v121 = 1;
          v122 = v207;
        }

        else
        {
          v123 = v113;
          v124 = v114;

          v125 = *(v116 + 48);
          v119 = *(v110 - 8);
          v120 = v119;
          v126 = v115 + v125;
          v122 = v207;
          (*(v119 + 32))(v207, v126, v110);
          v121 = 0;
        }

        (*(v120 + 56))(v122, v121, 1, v110);
        v225 = type metadata accessor for EngagementURLProvider();
        v127 = swift_allocObject();
        v128 = v122;
        v129 = v127;
        *(v127 + 2) = v113;
        *(v127 + 3) = v114;
        v130 = v202;
        v131 = v222;
        *(v127 + 4) = v202;
        *(v127 + 5) = v131;
        sub_100027904(v128, &v127[OBJC_IVAR____TtC7NewsTag21EngagementURLProvider_sharedDirectoryFileUrl], &unk_1000E5DD0);

        v132 = [v213 debugInspection];
        v133 = v208;
        if (v132)
        {
          if (qword_1000E4708 != -1)
          {
            v193 = v132;
            swift_once();
            v132 = v193;
          }

          v134 = v132;
          sub_10006D490(v132);

          v130 = v202;
        }

        v239 = v225;
        v240 = &off_1000D9C60;
        v238 = v129;
        v135 = *(v130 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType);
        v207 = v129;

        v136 = v224;
        sub_1000803EC(v224, v228, v135, v209);
        sub_100028B94(v216, v133, &qword_1000E8810);
        v137 = v227;
        if ((v226)(v133, 1, v227) == 1)
        {
          sub_10001FE6C(v133, &qword_1000E8810);
          v206 = 0;
          v197 = 0;
        }

        else
        {
          v138 = v133[1];
          v206 = *v133;
          v197 = v138;
          (*(v119 + 8))(v133 + *(v137 + 48), v110);
        }

        v139 = v233;
        v140 = v210;
        v208 = sub_100086704();
        v196 = v141;
        v195 = v136;
        v142 = [v213 banner];
        if (v142)
        {
          v143 = v200;
          v144 = v142;
          sub_100050A98(v142, &v238, v200);
          v145 = sub_100050D64(v144, v232);
          v146 = v201;
          sub_100028B94(v143, v201, &unk_1000E5DD0);
          sub_100093990(v144, v146, v145, v140);
          sub_10001FE6C(v143, &unk_1000E5DD0);
          v147 = 0;
        }

        else
        {
          v147 = 1;
        }

        v148 = type metadata accessor for Banner();
        v149 = 1;
        (*(*(v148 - 8) + 56))(v140, v147, 1, v148);
        LODWORD(v228) = sub_100061F4C(v213);
        v150 = NewsCoreUserDefaults();
        v151 = sub_1000A2D10();
        v152 = [v150 BOOLForKey:v151];

        if (v152)
        {
          sub_1000A1800();
          v149 = 0;
        }

        v153 = v220 + 7;
        v214 = v220[7];
        (v214)(v221, v149, 1, v218);
        v154 = *sub_100018688(&v238, v239);
        v237[3] = v225;
        v237[4] = &off_1000D9C60;
        v237[0] = v154;

        v155 = [v213 sections];
        v156 = [v155 array];

        v157 = sub_1000A2F10();
        v158 = sub_1000509C0(v157);

        if (v158 >> 62)
        {
          goto LABEL_56;
        }

        v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v159)
        {
LABEL_57:
          v161 = &_swiftEmptyArrayStorage;
LABEL_58:

          sub_100018720(v237);
          sub_10001FE6C(v221, &qword_1000E52B0);
          v177 = v203;
          v178 = v209;
          sub_100062038(v209, &v238, v203 + v139[9]);
          sub_10001FE6C(v178, &unk_1000E5DD0);
          sub_100018720(&v238);
          v179 = v213;
          *v177 = v213;
          sub_100027904(v210, v177 + v139[5], &unk_1000E8800);
          *(v177 + v139[6]) = v161;
          v180 = v177;
          *(v177 + v139[7]) = v195;
          *(v177 + v139[8]) = 0;
          *(v177 + v139[10]) = v202;
          v181 = (v177 + v139[11]);
          v182 = v197;
          *v181 = v206;
          v181[1] = v182;
          v183 = (v177 + v139[12]);
          v184 = v196;
          *v183 = v208;
          v183[1] = v184;
          v185 = v215;
          sub_100018688((v215 + 96), *(v215 + 120));
          v186 = v179;
          v187 = sub_10001BA08();
          [v187 tickle];

          sub_100017A54(&unk_1000E5270);
          v188 = swift_allocObject();
          *(v188 + 16) = xmmword_1000AA7C0;
          *(v188 + 56) = &type metadata for String;
          *(v188 + 64) = sub_10001A97C();
          v189 = v205;
          *(v188 + 32) = v204;
          *(v188 + 40) = v189;
          sub_100028E34(0, &qword_1000E76B0);

          v190 = sub_1000A3190();
          sub_1000A3090();
          sub_1000A1DB0();

          v191 = *(v185 + 16);
          if (v191)
          {
            v192 = v199;
            sub_1000872D0(v180, v199, type metadata accessor for TodayContent);
            (*(v198 + 56))(v192, 0, 1, v139);

            v191(v192, 0);
            sub_1000862F8(v191);
            sub_10001FE6C(v192, &qword_1000E87E8);
          }

          a9(v180);

          sub_1000871D0(v180, type metadata accessor for TodayContent);
          sub_10001FE6C(v216, &qword_1000E8810);
          return sub_1000871D0(v212, type metadata accessor for LayoutContext);
        }

LABEL_31:
        v220 = v153;
        v160 = 0;
        v227 = v158 & 0xC000000000000001;
        v226 = v158 & 0xFFFFFFFFFFFFFF8;
        v223 = (v219 + 56);
        v161 = &_swiftEmptyArrayStorage;
        v222 = (v219 + 48);
        v225 = v158;
        v224 = v159;
        while (1)
        {
          if (v227)
          {
            v162 = sub_1000A32D0();
          }

          else
          {
            if (v160 >= *(v226 + 16))
            {
              goto LABEL_55;
            }

            v162 = *(v158 + 8 * v160 + 32);
          }

          v153 = v162;
          v163 = (v160 + 1);
          if (__OFADD__(v160, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            v159 = sub_1000A33D0();
            if (!v159)
            {
              goto LABEL_57;
            }

            goto LABEL_31;
          }

          sub_10002F244(v237, &v236);
          if (!((v160 != 0) | v228 & 1))
          {
            break;
          }

          if (!v160)
          {
            v164 = 1;
            goto LABEL_43;
          }

          (v214)(v235, 1, 1, v218);
          v164 = 0;
LABEL_44:
          v165 = [v153 items];
          __chkstk_darwin(v165);
          *(&v194 - 4) = v232;
          *(&v194 - 3) = &v236;
          *(&v194 - 2) = v229;
          v166 = v234;
          v167 = sub_10007C2A0(sub_1000871B0, (&v194 - 6));
          v234 = v166;

          v168 = [v153 backingTagID];
          if (v168)
          {
            v169 = v168;
            v170 = [objc_opt_self() nu_safeColorForIdentifier:v168];
          }

          else
          {
            v170 = 0;
          }

          v171 = v231;
          sub_10003366C(v153, &v236, &v17[*(v231 + 32)]);
          *v17 = v170;
          *(v17 + 1) = v153;
          *(v17 + 2) = v167;
          v17[24] = v164;
          sub_100027904(v235, &v17[*(v171 + 36)], &qword_1000E52B0);
          v172 = v153;
          sub_100018720(&v236);
          (*v223)(v17, 0, 1, v171);

          if ((*v222)(v17, 1, v171) == 1)
          {
            sub_10001FE6C(v17, &unk_1000E87F0);
            v139 = v233;
            v153 = v224;
          }

          else
          {
            v173 = v217;
            sub_100087268(v17, v217, type metadata accessor for Section);
            sub_100087268(v173, v230, type metadata accessor for Section);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v139 = v233;
            v153 = v224;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v161 = sub_100084E9C(0, *(v161 + 2) + 1, 1, v161, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
            }

            v176 = *(v161 + 2);
            v175 = *(v161 + 3);
            if (v176 >= v175 >> 1)
            {
              v161 = sub_100084E9C(v175 > 1, v176 + 1, 1, v161, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
            }

            *(v161 + 2) = v176 + 1;
            sub_100087268(v230, &v161[((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v176], type metadata accessor for Section);
          }

          ++v160;
          v158 = v225;
          if (v163 == v153)
          {
            goto LABEL_58;
          }
        }

        v164 = FCIsWidgetDebugInspectionEnabled();
LABEL_43:
        sub_100028B94(v221, v235, &qword_1000E52B0);
        goto LABEL_44;
      }

      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F280(void *a1, void *a2, uint64_t a3)
{
  v49 = a2;
  v5 = sub_100017A54(&unk_1000E5DD0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_1000A1700();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = [a1 banner];
  if (v24)
  {
    v48 = v21;
    v25 = v24;
    v26 = [v24 imageURL];

    v27 = v23;
    if (v26)
    {
      sub_1000A16C0();

      v28 = v18[7];
      v28(v14, 0, 1, v17);
    }

    else
    {
      v28 = v18[7];
      v28(v14, 1, 1, v17);
    }

    sub_100027904(v14, v16, &unk_1000E5DD0);
    v29 = v18[6];
    if (v29(v16, 1, v17) != 1)
    {
      v47 = a3;
      v30 = v16;
      v31 = v18[4];
      v31(v27, v30, v17);
      if (v49)
      {
        v46 = v27;
        v32 = [v49 fileURL];
        if (v32)
        {
          v33 = v32;
          sub_1000A16C0();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = v48;
        v28(v8, v34, 1, v17);
        sub_100027904(v8, v11, &unk_1000E5DD0);
        if (v29(v11, 1, v17) != 1)
        {
          v31(v35, v11, v17);
          sub_100017A54(&unk_1000E8888);
          v37 = v35;
          v38 = (sub_100017A54(&qword_1000E7E80) - 8);
          v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1000AA7C0;
          v41 = v40 + v39;
          v42 = v38[14];
          v43 = v18[2];
          v44 = v46;
          v43(v41, v46, v17);
          v43(v41 + v42, v37, v17);
          sub_10006C880(v40);
          swift_setDeallocating();
          sub_10001FE6C(v41, &qword_1000E7E80);
          swift_deallocClassInstance();
          sub_100087338(&qword_1000E8870, &type metadata accessor for URL);
          a3 = sub_1000A1AB0();

          v45 = v18[1];
          v45(v37, v17);
          v45(v44, v17);
          return a3;
        }

        (v18[1])(v46, v17);
      }

      else
      {
        (v18[1])(v27, v17);
        v28(v11, 1, 1, v17);
      }

      v16 = v11;
      a3 = v47;
    }
  }

  else
  {
    (v18[7])(v16, 1, 1, v17);
  }

  sub_10001FE6C(v16, &unk_1000E5DD0);

  return a3;
}

uint64_t sub_10007F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1000A1840();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentServiceRequest();
  v12 = a1 + *(v11 + 20);
  if (*(v12 + *(type metadata accessor for LayoutContext() + 48)))
  {
    v13 = sub_100017A54(&qword_1000E8818);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    sub_1000A1830();
    v15 = sub_1000A1820();
    v26 = v3;
    v16 = v15;
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = sub_100017A54(&qword_1000E8818);
    v20 = *(v19 + 48);
    *a3 = v16;
    a3[1] = v18;
    sub_100018688((a2 + 96), *(a2 + 120));
    v21 = a1 + *(v11 + 24);
    v25 = *(v21 + 32);
    v22 = *(v21 + 16);
    v24[0] = *v21;
    v24[1] = v22;

    v23 = v26;
    sub_10001BE0C(v16, v18, a3 + v20);
    if (v23)
    {
      return swift_bridgeObjectRelease_n();
    }

    else
    {

      return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    }
  }
}

void sub_10007FA40(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A1700();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000A1610();
  v59 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ContentServiceRequest() + 20) + 16) != 1)
  {

    goto LABEL_37;
  }

  v58 = v9;
  v51 = v13;
  v52 = v10;
  v17 = [a2 sections];
  v18 = [v17 array];

  v19 = sub_1000A2F10();
  v20 = sub_1000509C0(v19);

  if (v20 >> 62)
  {
    if (sub_1000A33D0())
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

LABEL_37:
    sub_10006C4CC(&_swiftEmptyArrayStorage);
    return;
  }

LABEL_4:
  v56 = v3;
  v55 = a3;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

  for (i = *(v20 + 4); ; i = sub_1000A32D0())
  {
    v18 = i;

    v20 = [v18 items];
    v22 = [v20 count];
    v65 = &_swiftEmptyArrayStorage;
    sub_1000A3340();
    sub_1000A3050();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
    }

    else
    {
      v53 = v20;
      v54 = v18;
      v57 = v11;
      if (v22)
      {
        sub_100087338(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
        do
        {
          sub_1000A31C0();
          if (!v64)
          {
            goto LABEL_65;
          }

          sub_10001B390(&v63, &v61);
          sub_100017A54(&unk_1000E6020);
          swift_dynamicCast();
          sub_100018720(&v63);
          sub_1000A3320();
          sub_1000A3350();
          sub_1000A3360();
          sub_1000A3330();
        }

        while (--v22);
      }

      sub_100087338(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
      sub_1000A31C0();
      while (v62)
      {
        sub_10005150C(&v61, &v63);
        sub_10001B390(&v63, &v61);
        sub_100017A54(&unk_1000E6020);
        swift_dynamicCast();
        sub_100018720(&v63);
        sub_1000A3320();
        sub_1000A3350();
        sub_1000A3360();
        sub_1000A3330();
        sub_1000A31C0();
      }

      (*(v59 + 8))(v16, v14);
      sub_10001FE6C(&v61, &unk_1000E5AD0);

      v20 = v65;
      v18 = v57;
      if ((v65 & 0x8000000000000000) == 0 && (v65 & 0x4000000000000000) == 0)
      {
        v23 = *(v65 + 2);
        goto LABEL_17;
      }
    }

    v23 = sub_1000A33D0();
LABEL_17:
    v24 = v56;
    v11 = v55;
    v25 = v58;
    if (!v23)
    {

      goto LABEL_37;
    }

    if ((v20 & 0xC000000000000001) == 0)
    {
      break;
    }

    v26 = sub_1000A32D0();
LABEL_21:

    v60 = &OBJC_PROTOCOL___NTHeadlineProviding;
    v27 = swift_dynamicCastObjCProtocolConditional();
    if (!v27)
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v58 = v27;
    v28 = [v27 thumbnailRemoteURL];
    if (!v28)
    {
      goto LABEL_41;
    }

    v29 = v51;
    v30 = v28;
    sub_1000A16C0();

    v31 = v52;
    (*(v18 + 2))(v25, v29, v52);
    (*(v18 + 7))(v25, 0, 1, v31);
    v32 = sub_1000758B8(v25, v11);
    sub_1000871D0(v25, type metadata accessor for ImageStore.Key);
    if (!v32)
    {
      (*(v18 + 1))(v29, v31);
LABEL_41:
      sub_10006C4CC(&_swiftEmptyArrayStorage);
      swift_unknownObjectRelease();
      return;
    }

    v33 = v24[10];
    v56 = v32;
    v34 = [v33 colorsForImage:v32];
    v59 = sub_100028E34(0, &unk_1000E5F20);
    v11 = sub_1000A2F10();

    v54 = v26;
    if (v11 >> 62)
    {
      goto LABEL_52;
    }

    v35 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_53;
    }

LABEL_26:
    v16 = 0;
    v14 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v36 = sub_1000A32D0();
      }

      else
      {
        if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v36 = *(v11 + 8 * v16 + 32);
      }

      v37 = v36;
      v38 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v39 = sub_1000A3140();
      v40 = [objc_opt_self() whiteColor];
      v41 = sub_1000A3180();

      if (v41)
      {
        goto LABEL_56;
      }

      ++v16;
      if (v38 == v35)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  if (*(v20 + 2))
  {
    v26 = *(v20 + 4);
    swift_unknownObjectRetain();
    goto LABEL_21;
  }

  __break(1u);
LABEL_52:
  v35 = sub_1000A33D0();
  if (v35)
  {
    goto LABEL_26;
  }

LABEL_53:
  if (qword_1000E4710 != -1)
  {
    swift_once();
  }

  v37 = qword_1000F1C30;
LABEL_56:
  if (!v35)
  {

    v43 = 0;
    goto LABEL_62;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v42 = sub_1000A32D0();
LABEL_60:
    v43 = v42;

LABEL_62:
    sub_100017A54(&qword_1000E8858);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AA7C0;
    v45 = v37;
    v46 = [v58 identifier];
    v47 = sub_1000A2D40();
    v49 = v48;

    *(inited + 32) = v47;
    *(inited + 40) = v49;
    *(inited + 48) = v43;
    *(inited + 56) = v45;
    sub_10006C4CC(inited);
    swift_setDeallocating();
    sub_10001FE6C(inited + 32, &qword_1000E8860);
    swift_unknownObjectRelease();

    (v57)[1](v51, v52);
    return;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v11 + 32);
    goto LABEL_60;
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1000803EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_1000A1700();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 widgetConfig];
  if ((a3 - 1) < 4)
  {

    goto LABEL_3;
  }

  if (a3)
  {

LABEL_25:
    sub_100017A54(&unk_1000E5270);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000AA7C0;
    v55 = 0;
    v56 = 0xE000000000000000;
    type metadata accessor for ContentServiceRequest();
    sub_1000A3370();
    v46 = v55;
    v47 = v56;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_10001A97C();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    sub_100028E34(0, &qword_1000E76B0);
    v48 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    if (qword_1000E4718 != -1)
    {
      swift_once();
    }

    v49 = sub_10002FDC4(v11, qword_1000F1C38);
    (*(v12 + 16))(a4, v49, v11);
    goto LABEL_28;
  }

  if (v15)
  {
    v38 = v15;
    v39 = [v15 widgetBackgroundInteractionEnabled];

    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  v16 = (a2 + *(type metadata accessor for ContentServiceRequest() + 24));
  if (*v16)
  {
    v54 = a4;
    v17 = v16[1];
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    v20 = v17;
    a4 = v54;
    v19(ObjectType, v20);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v52 = *(v12 + 32);
      v53 = v12 + 32;
      v52(v14, v10, v11);
      sub_100017A54(&unk_1000E5270);
      v21 = swift_allocObject();
      v22 = 0xE700000000000000;
      *(v21 + 16) = xmmword_1000AA7D0;
      v23 = 0x736569726F7473;
      v55 = 0;
      v56 = 0xE000000000000000;
      v24 = 0xE500000000000000;
      v25 = 0x726F727265;
      v26 = 0xE700000000000000;
      v27 = 0x656E696C66666FLL;
      if (a3 != 3)
      {
        v27 = 0x6C6F686563616C70;
        v26 = 0xEB00000000726564;
      }

      if (a3 != 2)
      {
        v25 = v27;
        v24 = v26;
      }

      if (a3)
      {
        v23 = 0x69726F7473206F6ELL;
        v22 = 0xEA00000000007365;
      }

      if (a3 <= 1)
      {
        v28._countAndFlagsBits = v23;
      }

      else
      {
        v28._countAndFlagsBits = v25;
      }

      if (a3 <= 1)
      {
        v29 = v22;
      }

      else
      {
        v29 = v24;
      }

      v28._object = v29;
      sub_1000A2E10(v28);

      v31 = v55;
      v30 = v56;
      *(v21 + 56) = &type metadata for String;
      v32 = sub_10001A97C();
      *(v21 + 64) = v32;
      *(v21 + 32) = v31;
      *(v21 + 40) = v30;
      sub_100087338(qword_1000E8840, &type metadata accessor for URL);
      v33 = sub_1000A3550();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v32;
      *(v21 + 72) = v33;
      *(v21 + 80) = v34;
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1000A3370();
      v35 = v55;
      v36 = v56;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v32;
      *(v21 + 112) = v35;
      *(v21 + 120) = v36;
      sub_100028E34(0, &qword_1000E76B0);
      v37 = sub_1000A3190();
      sub_1000A3090();
      sub_1000A1DB0();

      a4 = v54;
      v52(v54, v14, v11);
LABEL_28:
      v44 = 0;
      return (*(v12 + 56))(a4, v44, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_10001FE6C(v10, &unk_1000E5DD0);
  sub_100017A54(&unk_1000E5270);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000AA7C0;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1000A3370();
  v41 = v55;
  v42 = v56;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10001A97C();
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_100028E34(0, &qword_1000E76B0);
  v43 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

  v44 = 1;
  return (*(v12 + 56))(a4, v44, 1, v11);
}

uint64_t sub_100080A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_100017A54(&qword_1000E87E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = type metadata accessor for TodayContent();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);

    v9(v8, a1);
    sub_1000862F8(v9);
    sub_10001FE6C(v8, &qword_1000E87E8);
  }

  return a3(a1);
}

id sub_100080B88@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v255 = a2;
  v251 = a3;
  v5 = sub_100017A54(&unk_1000E87F0);
  v6 = __chkstk_darwin(v5 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v242 - v8;
  __chkstk_darwin(v7);
  v11 = &v242 - v10;
  v284 = type metadata accessor for Section();
  v280 = *(v284 - 8);
  v12 = __chkstk_darwin(v284);
  v276 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v266 = &v242 - v15;
  v16 = __chkstk_darwin(v14);
  v279 = &v242 - v17;
  v18 = __chkstk_darwin(v16);
  v267 = (&v242 - v19);
  v20 = __chkstk_darwin(v18);
  v274 = &v242 - v21;
  __chkstk_darwin(v20);
  v263 = &v242 - v22;
  v23 = sub_100017A54(&qword_1000E52B0);
  v24 = __chkstk_darwin(v23 - 8);
  v281 = &v242 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v268 = (&v242 - v27);
  v28 = __chkstk_darwin(v26);
  v283 = &v242 - v29;
  v30 = __chkstk_darwin(v28);
  v269 = &v242 - v31;
  v32 = __chkstk_darwin(v30);
  v278 = &v242 - v33;
  __chkstk_darwin(v32);
  v273 = &v242 - v34;
  v35 = sub_100017A54(&unk_1000E8800);
  v36 = __chkstk_darwin(v35 - 8);
  v253 = (&v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v243 = (&v242 - v39);
  __chkstk_darwin(v38);
  v248 = &v242 - v40;
  v41 = sub_100017A54(&unk_1000E5DD0);
  v42 = __chkstk_darwin(v41 - 8);
  v252 = &v242 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v249 = &v242 - v45;
  v46 = __chkstk_darwin(v44);
  v242 = &v242 - v47;
  v48 = __chkstk_darwin(v46);
  v247 = &v242 - v49;
  __chkstk_darwin(v48);
  v256 = &v242 - v50;
  v275 = sub_1000A1700();
  v262 = *(v275 - 8);
  __chkstk_darwin(v275);
  v250 = &v242 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_1000A1810();
  v277 = *(v270 - 8);
  __chkstk_darwin(v270);
  v254 = &v242 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_1000A1840();
  v272 = *(v261 - 1);
  v53 = __chkstk_darwin(v261);
  v246 = &v242 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v258 = &v242 - v55;
  v56 = type metadata accessor for LayoutContext();
  v57 = __chkstk_darwin(v56);
  v265 = &v242 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v264 = (&v242 - v59);
  v285 = type metadata accessor for ImageStore.Image(0);
  v60 = __chkstk_darwin(v285);
  v62 = &v242 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v64 = (&v242 - v63);
  v65 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v65 - 8);
  v67 = &v242 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v3[7];
  v259 = v3;
  v69 = *(*sub_100018688(v3 + 4, v68) + 32);
  v257 = *a1;
  v70 = [v69 placeholderResultsWithOperationInfo:?];
  v245 = type metadata accessor for ContentServiceRequest();
  v71 = *(v245 + 20);
  v260 = a1;
  v72 = a1 + v71;
  v271 = v70;
  [v70 headlineScale];
  sub_1000480FC();
  v74 = v73;
  v282 = objc_opt_self();
  v75 = [v282 blackColor];
  v76 = sub_100072D24(v74, v74);

  v77 = &_swiftEmptyDictionarySingleton;
  if (v76)
  {
    (*(v262 + 56))(v67, 1, 1, v275);
    *v64 = v76;
    swift_storeEnumTagMultiPayload();
    sub_100087268(v64, v62, type metadata accessor for ImageStore.Image);
    v78 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v293 = &_swiftEmptyDictionarySingleton;
    sub_10006B0C8(v62, v67, isUniquelyReferenced_nonNull_native);

    sub_1000871D0(v67, type metadata accessor for ImageStore.Key);
    v77 = v293;
  }

  v285 = v77;
  result = [objc_allocWithZone(NTPBTodayResultOperationFetchInfo) init];
  v81 = v271;
  if (result)
  {
    v82 = result;
    v83 = [v271 sourceIdentifier];
    if (!v83)
    {
      sub_1000A2D40();
      v83 = sub_1000A2D10();
      v81 = v271;
    }

    [v82 setTodaySourceIdentifier:v83];

    [v81 headlineScale];
    v85 = v84;
    v86 = *v72;
    v87 = *(v72 + 1);
    v88 = *(v72 + 2);
    v89 = *(v72 + 3);
    v90 = *(v72 + 4);
    v91 = v56[8];
    v92 = sub_1000A2250();
    v93 = v264;
    (*(*(v92 - 8) + 16))(v264 + v91, &v72[v91], v92);
    v94 = *&v72[v56[9]];
    v95 = v72[v56[12]];
    *v93 = v86;
    v93[1] = v87;
    v93[2] = v88;
    v93[3] = v89;
    v93[4] = v90;
    *(v93 + v56[9]) = v94;
    *(v93 + v56[10]) = v85;
    *(v93 + v56[11]) = 1;
    *(v93 + v56[12]) = v95;
    v96 = v258;
    sub_1000A1830();
    v97 = sub_1000A1820();
    v99 = v98;
    v100 = *(v272 + 8);
    v272 += 8;
    v100(v96, v261);
    sub_1000872D0(v93, v265, type metadata accessor for LayoutContext);
    result = [v257 request];
    if (result)
    {
      v101 = result;
      v102 = v82;
      v103 = [result tagID];

      v244 = v100;
      if (v103)
      {
        v104 = sub_1000A2D40();
        v106 = v105;
      }

      else
      {
        v104 = 0;
        v106 = 0;
      }

      v107 = v254;
      sub_1000A1800();
      type metadata accessor for TrackableWidgetState();
      v108 = swift_allocObject();
      (*(v277 + 32))(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate, v107, v270);
      v109 = (v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID);
      *v109 = v97;
      v109[1] = v99;
      v110 = v271;
      *(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) = v271;
      *(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo) = v102;
      sub_100087268(v265, v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
      v111 = (v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
      *v111 = v104;
      v111[1] = v106;
      v112 = v255;
      *(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType) = v255;
      v113 = v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect;
      *v113 = 0u;
      *(v113 + 16) = 0u;
      *(v113 + 32) = 1;
      *(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackKind) = 0;
      *(v108 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackLocation) = 0;
      v265 = v108;
      if (v112 == 4)
      {
        v114 = v259[9];
        v115 = v259[17];
        v116 = v102;
        v266 = v110;
        v117 = v114;
        v118 = v115;
        v119 = sub_10006C2E4(&_swiftEmptyArrayStorage);
        v120 = v256;
        (*(v262 + 56))(v256, 1, 1, v275);
        v121 = type metadata accessor for EngagementURLProvider();
        v122 = swift_allocObject();
        v122[2] = v117;
        v122[3] = v118;
        v122[4] = v108;
        v122[5] = v119;
        sub_100027904(v120, v122 + OBJC_IVAR____TtC7NewsTag21EngagementURLProvider_sharedDirectoryFileUrl, &unk_1000E5DD0);
        *(&v294 + 1) = v121;
        v295 = &off_1000D9C60;
        v123 = v121;
        *&v293 = v122;
        v124 = v266;

        v281 = sub_10006C4CC(&_swiftEmptyArrayStorage);
        sub_1000803EC(v116, v260, 4, v252);
        v263 = sub_100086704();
        v262 = v125;
        v261 = v116;
        v126 = [v124 banner];
        if (v126)
        {
          v127 = v126;
          sub_100050A98(v126, &v293, v120);
          v128 = sub_100050D64(v127, v285);
          v129 = v249;
          sub_100028B94(v120, v249, &unk_1000E5DD0);
          v130 = v253;
          sub_100093990(v127, v129, v128, v253);
          sub_10001FE6C(v120, &unk_1000E5DD0);
          v131 = 0;
        }

        else
        {
          v130 = v253;
          v131 = 1;
        }

        v142 = type metadata accessor for Banner();
        v143 = 1;
        (*(*(v142 - 8) + 56))(v130, v131, 1, v142);
        LODWORD(v278) = sub_100061F4C(v124);
        v144 = NewsCoreUserDefaults();
        v145 = sub_1000A2D10();
        v146 = [v144 BOOLForKey:v145];

        if (v146)
        {
          sub_1000A1800();
          v143 = 0;
        }

        v147 = *(v277 + 56);
        v277 += 56;
        v268 = v147;
        v147(v269, v143, 1, v270);
        v148 = *sub_100018688(&v293, *(&v294 + 1));
        v291 = v123;
        v292 = &off_1000D9C60;
        v290 = v148;

        v149 = [v124 sections];
        v150 = [v149 array];

        v151 = sub_1000A2F10();
        v11 = sub_1000509C0(v151);

        if (v11 >> 62)
        {
          goto LABEL_76;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000A33D0())
        {
          v153 = 0;
          v276 = (v11 & 0xC000000000000001);
          v275 = v11 & 0xFFFFFFFFFFFFFF8;
          v272 = v280 + 56;
          v271 = (v280 + 48);
          v154 = &_swiftEmptyArrayStorage;
          v274 = v11;
          v273 = i;
          while (1)
          {
            if (v276)
            {
              v156 = sub_1000A32D0();
            }

            else
            {
              if (v153 >= *(v275 + 16))
              {
                goto LABEL_73;
              }

              v156 = *(v11 + 8 * v153 + 32);
            }

            v157 = v156;
            v158 = v153 + 1;
            if (__OFADD__(v153, 1))
            {
              break;
            }

            sub_10002F244(&v290, &v288);
            if (!((v153 != 0) | v278 & 1))
            {
              v159 = FCIsWidgetDebugInspectionEnabled();
LABEL_31:
              sub_100028B94(v269, v283, &qword_1000E52B0);
              goto LABEL_32;
            }

            if (!v153)
            {
              v159 = 1;
              goto LABEL_31;
            }

            v268(v283, 1, 1, v270);
            v159 = 0;
LABEL_32:
            v160 = [v157 items];
            __chkstk_darwin(v160);
            *(&v242 - 4) = v285;
            *(&v242 - 3) = &v288;
            *(&v242 - 2) = v281;
            v161 = sub_10007C2A0(sub_1000876AC, (&v242 - 6));

            v162 = [v157 backingTagID];
            if (v162)
            {
              v163 = v162;
              v164 = [v282 nu_safeColorForIdentifier:v162];
            }

            else
            {
              v164 = 0;
            }

            v165 = v284;
            sub_10003366C(v157, &v288, &v9[*(v284 + 32)]);
            *v9 = v164;
            *(v9 + 1) = v157;
            *(v9 + 2) = v161;
            v9[24] = v159;
            sub_100027904(v283, &v9[*(v165 + 36)], &qword_1000E52B0);
            v166 = v157;
            sub_100018720(&v288);
            (*v272)(v9, 0, 1, v165);

            if ((*v271)(v9, 1, v165) == 1)
            {
              sub_10001FE6C(v9, &unk_1000E87F0);
              v11 = v274;
              v155 = v273;
            }

            else
            {
              v167 = v267;
              sub_100087268(v9, v267, type metadata accessor for Section);
              sub_100087268(v167, v279, type metadata accessor for Section);
              v168 = swift_isUniquelyReferenced_nonNull_native();
              v11 = v274;
              v155 = v273;
              if ((v168 & 1) == 0)
              {
                v154 = sub_100084E9C(0, v154[2] + 1, 1, v154, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
              }

              v170 = v154[2];
              v169 = v154[3];
              if (v170 >= v169 >> 1)
              {
                v154 = sub_100084E9C(v169 > 1, v170 + 1, 1, v154, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
              }

              v154[2] = v170 + 1;
              sub_100087268(v279, v154 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v170, type metadata accessor for Section);
            }

            ++v153;
            if (v158 == v155)
            {
              goto LABEL_78;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          ;
        }

        v154 = &_swiftEmptyArrayStorage;
LABEL_78:

        sub_100018720(&v290);
        sub_10001FE6C(v269, &qword_1000E52B0);
        v229 = type metadata accessor for TodayContent();
        v230 = v251;
        v231 = v252;
        sub_100062038(v252, &v293, v251 + v229[9]);
        v232 = v261;

        sub_10001FE6C(v231, &unk_1000E5DD0);
        sub_1000871D0(v264, type metadata accessor for LayoutContext);

        sub_100018720(&v293);
        *v230 = v266;
        result = sub_100027904(v253, v230 + v229[5], &unk_1000E8800);
        *(v230 + v229[6]) = v154;
        *(v230 + v229[7]) = v232;
        *(v230 + v229[8]) = 1;
        *(v230 + v229[10]) = v265;
        v233 = (v230 + v229[11]);
        *v233 = 0;
        v233[1] = 0;
        v234 = (v230 + v229[12]);
        *v234 = v263;
        v235 = v289;
        goto LABEL_79;
      }

      v269 = v102;
      v132 = v110;
      v133 = v246;
      sub_1000A1830();
      v134 = sub_1000A1820();
      v136 = v135;
      v244(v133, v261);
      v137 = v259;
      sub_100018688(v259 + 12, v259[15]);
      v138 = v260 + *(v245 + 24);
      v295 = *(v138 + 4);
      v139 = *(v138 + 1);
      v293 = *v138;
      v294 = v139;
      v140 = v250;
      sub_10001BE0C(v134, v136, v250);
      v258 = v132;
      v141 = v262;
      v283 = 0;
      v257 = v134;
      v261 = v136;
      v171 = v137[9];
      v172 = v137[17];
      v173 = v265;

      v174 = v171;
      v175 = v140;
      v176 = v174;
      v177 = v141;
      v178 = v172;
      v179 = sub_10006C2E4(&_swiftEmptyArrayStorage);
      v180 = v256;
      v181 = v175;
      v182 = v275;
      (*(v177 + 16))(v256, v181, v275);
      v183 = *(v177 + 56);
      v184 = 1;
      v183(v180, 0, 1, v182);
      v185 = type metadata accessor for EngagementURLProvider();
      v186 = swift_allocObject();
      v186[2] = v176;
      v186[3] = v178;
      v186[4] = v173;
      v186[5] = v179;
      v187 = v180;
      sub_100027904(v180, v186 + OBJC_IVAR____TtC7NewsTag21EngagementURLProvider_sharedDirectoryFileUrl, &unk_1000E5DD0);
      v291 = v185;
      v292 = &off_1000D9C60;
      v290 = v186;
      v188 = v269;
      v281 = sub_10006C4CC(&_swiftEmptyArrayStorage);
      v189 = *(v173 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType);
      v9 = v258;
      v190 = v188;
      sub_1000803EC(v190, v260, v189, v242);
      v260 = v190;

      v259 = sub_100086704();
      v255 = v191;
      v192 = [v9 banner];
      if (v192)
      {
        v193 = v192;
        sub_100050A98(v192, &v290, v187);
        v194 = sub_100050D64(v193, v285);
        v195 = v249;
        sub_100028B94(v187, v249, &unk_1000E5DD0);
        v196 = v187;
        v197 = v243;
        sub_100093990(v193, v195, v194, v243);
        sub_10001FE6C(v196, &unk_1000E5DD0);
        v184 = 0;
      }

      else
      {
        v197 = v243;
      }

      v198 = type metadata accessor for Banner();
      v199 = 1;
      (*(*(v198 - 8) + 56))(v197, v184, 1, v198);
      LODWORD(v279) = sub_100061F4C(v9);
      v200 = NewsCoreUserDefaults();
      v201 = sub_1000A2D10();
      v202 = [v200 BOOLForKey:v201];

      if (v202)
      {
        sub_1000A1800();
        v199 = 0;
      }

      v203 = *(v277 + 56);
      v277 += 56;
      v266 = v203;
      (v203)(v273, v199, 1, v270);
      v204 = *sub_100018688(&v290, v291);
      v289[0] = v185;
      v289[1] = &off_1000D9C60;
      v288 = v204;

      v205 = [v9 sections];
      v206 = [v205 array];

      v207 = sub_1000A2F10();
      v208 = sub_1000509C0(v207);

      v209 = v275;
      if (v208 >> 62)
      {
        v210 = sub_1000A33D0();
        if (v210)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v210 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v210)
        {
LABEL_49:
          v211 = 0;
          v276 = (v208 & 0xC000000000000001);
          v272 = v208 & 0xFFFFFFFFFFFFFF8;
          v268 = (v280 + 56);
          v267 = (v280 + 48);
          v212 = &_swiftEmptyArrayStorage;
          v271 = v208;
          v269 = v210;
          while (1)
          {
            if (v276)
            {
              v214 = sub_1000A32D0();
            }

            else
            {
              if (v211 >= *(v272 + 16))
              {
                goto LABEL_75;
              }

              v214 = *(v208 + 8 * v211 + 32);
            }

            v215 = v214;
            v9 = (v211 + 1);
            if (__OFADD__(v211, 1))
            {
              goto LABEL_74;
            }

            sub_10002F244(&v288, &v286);
            if (!((v211 != 0) | v279 & 1))
            {
              break;
            }

            if (!v211)
            {
              v216 = 1;
              goto LABEL_61;
            }

            (v266)(v278, 1, 1, v270);
            v216 = 0;
LABEL_62:
            v217 = [v215 items];
            __chkstk_darwin(v217);
            *(&v242 - 4) = v285;
            *(&v242 - 3) = &v286;
            *(&v242 - 2) = v281;
            v218 = v283;
            v219 = sub_10007C2A0(sub_1000876AC, (&v242 - 6));
            v283 = v218;

            v220 = [v215 backingTagID];
            if (v220)
            {
              v221 = v220;
              v222 = [v282 nu_safeColorForIdentifier:v220];
            }

            else
            {
              v222 = 0;
            }

            v209 = v275;
            v223 = v284;
            sub_10003366C(v215, &v286, v11 + *(v284 + 32));
            *v11 = v222;
            *(v11 + 8) = v215;
            *(v11 + 16) = v219;
            *(v11 + 24) = v216;
            sub_100027904(v278, v11 + *(v223 + 36), &qword_1000E52B0);
            v224 = v215;
            sub_100018720(&v286);
            (*v268)(v11, 0, 1, v223);

            if ((*v267)(v11, 1, v223) == 1)
            {
              sub_10001FE6C(v11, &unk_1000E87F0);
              v208 = v271;
              v213 = v269;
            }

            else
            {
              v225 = v263;
              sub_100087268(v11, v263, type metadata accessor for Section);
              sub_100087268(v225, v274, type metadata accessor for Section);
              v226 = swift_isUniquelyReferenced_nonNull_native();
              v208 = v271;
              v213 = v269;
              if ((v226 & 1) == 0)
              {
                v212 = sub_100084E9C(0, *(v212 + 2) + 1, 1, v212, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
              }

              v228 = *(v212 + 2);
              v227 = *(v212 + 3);
              if (v228 >= v227 >> 1)
              {
                v212 = sub_100084E9C(v227 > 1, v228 + 1, 1, v212, &qword_1000E8830, &unk_1000AED08, type metadata accessor for Section);
              }

              *(v212 + 2) = v228 + 1;
              sub_100087268(v274, &v212[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v228], type metadata accessor for Section);
            }

            ++v211;
            if (v9 == v213)
            {
              goto LABEL_82;
            }
          }

          v216 = FCIsWidgetDebugInspectionEnabled();
LABEL_61:
          sub_100028B94(v273, v278, &qword_1000E52B0);
          goto LABEL_62;
        }
      }

      v212 = &_swiftEmptyArrayStorage;
LABEL_82:

      sub_100018720(&v288);
      sub_10001FE6C(v273, &qword_1000E52B0);
      v236 = type metadata accessor for TodayContent();
      v237 = v251;
      v238 = v242;
      sub_100062038(v242, &v290, v251 + v236[9]);
      v239 = v260;

      sub_10001FE6C(v238, &unk_1000E5DD0);
      (*(v262 + 8))(v250, v209);
      sub_1000871D0(v264, type metadata accessor for LayoutContext);

      sub_100018720(&v290);
      *v237 = v258;
      result = sub_100027904(v243, v237 + v236[5], &unk_1000E8800);
      *(v237 + v236[6]) = v212;
      *(v237 + v236[7]) = v239;
      *(v237 + v236[8]) = 1;
      *(v237 + v236[10]) = v265;
      v240 = (v237 + v236[11]);
      v241 = v261;
      *v240 = v257;
      v240[1] = v241;
      v234 = (v237 + v236[12]);
      *v234 = v259;
      v235 = &v287;
LABEL_79:
      v234[1] = *(v235 - 32);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000834F4(void *a1)
{
  v2 = sub_1000A1880();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000A2D00();
  __chkstk_darwin(v3 - 8);
  [a1 fc_isOfflineError];
  sub_1000A2CF0();
  sub_1000A1850();
  return sub_1000A2D80();
}

unint64_t sub_100083670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v75 = a3;
  v6 = sub_100017A54(&qword_1000E8868);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v9 - 8);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100017A54(&unk_1000E5DD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_1000A1700();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v69 - v23;
  result = __chkstk_darwin(v22);
  v27 = &v69 - v26;
  if (*(a2 + 16))
  {
    result = sub_100031994(a1);
    if (v28)
    {
      v69 = v21;
      v70 = v8;
      v72 = a1;
      v29 = v18;
      v30 = v18[2];
      v30(v24, *(a2 + 56) + v18[9] * result, v17);
      v31 = v18[4];
      v31(v27, v24, v17);
      v71 = v27;
      sub_100083F00(v75, v16);
      v75 = v16;
      v32 = v16;
      v33 = v29;
      sub_100028B94(v32, v14, &unk_1000E5DD0);
      if ((v29[6])(v14, 1, v17) == 1)
      {
        v34 = v30;
        sub_10001FE6C(v14, &unk_1000E5DD0);
        v35 = v71;
        sub_1000A16D0();
        v36 = objc_allocWithZone(UIImage);
        v37 = sub_1000A2D10();

        v38 = [v36 initWithContentsOfFile:v37];

        v39 = v35;
        if (v38)
        {
          v40 = v73;
          v34(v73, v72, v17);
          (v33[7])(v40, 0, 1, v17);
          v41 = v70;
          *v70 = v38;
          v42 = type metadata accessor for ImageStore.Image(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
          swift_beginAccess();
          v43 = v38;
          sub_10007C0B8(v41, v40);
          swift_endAccess();
          sub_100017A54(&unk_1000E5270);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1000AA450;
          sub_100087338(qword_1000E8840, &type metadata accessor for URL);
          v45 = sub_1000A3550();
          v47 = v46;
          *(v44 + 56) = &type metadata for String;
          v48 = sub_10001A97C();
          *(v44 + 64) = v48;
          *(v44 + 32) = v45;
          *(v44 + 40) = v47;
          v49 = sub_1000A16D0();
          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v48;
          *(v44 + 72) = v49;
          *(v44 + 80) = v50;
          sub_100028E34(0, &qword_1000E76B0);
          v51 = sub_1000A3190();
          sub_1000A3090();
          sub_1000A1DB0();
        }

        else
        {
          sub_1000A3070();
          sub_100017A54(&unk_1000E5270);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1000AA7C0;
          sub_100087338(qword_1000E8840, &type metadata accessor for URL);
          v66 = sub_1000A3550();
          v68 = v67;
          *(v65 + 56) = &type metadata for String;
          *(v65 + 64) = sub_10001A97C();
          *(v65 + 32) = v66;
          *(v65 + 40) = v68;
          sub_100028E34(0, &qword_1000E76B0);
          v51 = sub_1000A3190();
          sub_1000A1DB0();
        }

        sub_10001FE6C(v75, &unk_1000E5DD0);
        return (v33[1])(v39, v17);
      }

      else
      {
        v52 = v69;
        v31(v69, v14, v17);
        v53 = v73;
        v30(v73, v72, v17);
        (v33[7])(v53, 0, 1, v17);
        v54 = v70;
        v30(v70, v52, v17);
        v55 = type metadata accessor for ImageStore.Image(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
        swift_beginAccess();
        sub_10007C0B8(v54, v53);
        swift_endAccess();
        sub_100017A54(&unk_1000E5270);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1000AA450;
        sub_100087338(qword_1000E8840, &type metadata accessor for URL);
        v57 = sub_1000A3550();
        v59 = v58;
        *(v56 + 56) = &type metadata for String;
        v60 = sub_10001A97C();
        *(v56 + 64) = v60;
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        v61 = sub_1000A16D0();
        *(v56 + 96) = &type metadata for String;
        *(v56 + 104) = v60;
        *(v56 + 72) = v61;
        *(v56 + 80) = v62;
        sub_100028E34(0, &qword_1000E76B0);
        v63 = sub_1000A3190();
        sub_1000A3090();
        sub_1000A1DB0();

        v64 = v33[1];
        v64(v52, v17);
        sub_10001FE6C(v75, &unk_1000E5DD0);
        return (v64)(v71, v17);
      }
    }
  }

  return result;
}

uint64_t sub_100083F00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000A14A0();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v6 - 8);
  v8 = v38 - v7;
  v9 = sub_1000A1700();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  sub_100028B94(a1, v8, &unk_1000E5DD0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1000A1660();
    sub_1000A16A0();

    v38[0] = *(v10 + 8);
    v38[1] = v10 + 8;
    (v38[0])(v8, v9);
    v18 = v13;
    v19 = *(v10 + 32);
    v19(v15, v18, v9);
    v20 = [objc_opt_self() defaultManager];
    sub_1000A1670(v21);
    v23 = v22;
    sub_1000A1670(v24);
    v26 = v25;
    v43 = 0;
    v27 = [v20 copyItemAtURL:v23 toURL:v25 error:&v43];

    if (v27)
    {
      v28 = v43;
    }

    else
    {
      v29 = v43;
      v30 = sub_1000A1600();

      swift_willThrow();
      swift_errorRetain();
      sub_1000A1490();
      sub_100087338(&unk_1000E8878, &type metadata accessor for CocoaError.Code);
      v31 = v40;
      LOBYTE(v29) = sub_1000A15E0();

      (*(v39 + 8))(v5, v31);
      if ((v29 & 1) == 0)
      {
        sub_1000A3070();
        sub_100017A54(&unk_1000E5270);
        v33 = v15;
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1000AA7C0;
        v43 = 0;
        v44 = 0xE000000000000000;
        v42 = v30;
        sub_100017A54(&unk_1000E52C0);
        sub_1000A3370();
        v35 = v43;
        v36 = v44;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_10001A97C();
        *(v34 + 32) = v35;
        *(v34 + 40) = v36;
        sub_100028E34(0, &qword_1000E76B0);
        v37 = sub_1000A3190();
        sub_1000A1DB0();

        (v38[0])(v33, v9);
        goto LABEL_3;
      }
    }

    v17 = v41;
    v19(v41, v15, v9);
    v16 = 0;
    return (*(v10 + 56))(v17, v16, 1, v9);
  }

  sub_10001FE6C(v8, &unk_1000E5DD0);
LABEL_3:
  v16 = 1;
  v17 = v41;
  return (*(v10 + 56))(v17, v16, 1, v9);
}

uint64_t FTEventTrackingWidgetAppearanceType.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x736569726F7473;
    }

    if (a1 == 1)
    {
      return 0x69726F7473206F6ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x726F727265;
      case 3:
        return 0x656E696C66666FLL;
      case 4:
        return 0x6C6F686563616C70;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1000844E0()
{
  sub_1000862F8(*(v0 + 16));
  sub_100018720(v0 + 32);

  swift_unknownObjectRelease();
  sub_100018720(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_100084548()
{
  sub_100017A54(&unk_1000E87B0);
  swift_allocObject();
  return sub_1000A1BD0();
}

uint64_t sub_1000845B4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x736569726F7473;
    }

    if (v1 == 1)
    {
      return 0x69726F7473206F6ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x726F727265;
      case 3:
        return 0x656E696C66666FLL;
      case 4:
        return 0x6C6F686563616C70;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t type metadata accessor for ContentServiceRequest()
{
  result = qword_1000E8950;
  if (!qword_1000E8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000846F4()
{
  v1 = (type metadata accessor for ContentServiceRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v1[7];
  v7 = v6 + *(type metadata accessor for LayoutContext() + 32);
  v8 = sub_1000A2250();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

void sub_100084848(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ContentServiceRequest() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10007CA28(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10008492C()
{
  v0 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000A1700();
  sub_10004F3E4(v3, qword_1000F1C38);
  v4 = sub_10002FDC4(v3, qword_1000F1C38);
  sub_1000A16E0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

char *sub_100084A64(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(&qword_1000E5290);
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

void *sub_100084BE4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100017A54(&unk_1000E88C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017A54(&qword_1000E5800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100084D40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(qword_1000E89A0);
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

size_t sub_100084E9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_100017A54(a5);
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

void *sub_10008509C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100017A54(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017A54(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1000851E4(uint64_t a1, uint64_t a2)
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

  sub_100017A54(&qword_1000E5290);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100085268(uint64_t a1, uint64_t a2)
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

  sub_100017A54(&qword_1000E88F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_1000852F0(uint64_t a1, uint64_t a2)
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

  sub_100017A54(&unk_1000E8820);
  v4 = *(sub_1000A1700() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1000853EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100031620(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006B724();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1000A3390();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10005150C((*(v9 + 56) + 32 * v7), a2);
    sub_100085660(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000854C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100031684(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006B9A8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ImageStore.Key(0);
    sub_1000871D0(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ImageStore.Key);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ImageStore.Image(0);
    v20 = *(v13 - 8);
    sub_100087268(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ImageStore.Image);
    sub_100085914(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ImageStore.Image(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_100085660(int64_t a1, uint64_t a2)
{
  v4 = sub_1000A3390();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1000A3240();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1000A2C70();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100085914(int64_t a1, uint64_t a2)
{
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ImageStore.Key(0);
  v7 = __chkstk_darwin(v42);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v13 = &v42 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v49 = v4;
    v17 = ~v15;
    v18 = v11;
    v19 = sub_1000A3240();
    v20 = *(v18 + 72);
    v47 = (v5 + 48);
    v48 = (v19 + 1) & v17;
    v43 = (v5 + 8);
    v44 = (v5 + 32);
    v21 = v20;
    v50 = v20;
    do
    {
      v22 = v21 * v16;
      sub_1000872D0(*(a2 + 48) + v21 * v16, v13, type metadata accessor for ImageStore.Key);
      sub_1000A35F0();
      sub_1000872D0(v13, v9, type metadata accessor for ImageStore.Key);
      v23 = v49;
      if ((*v47)(v9, 1, v49) == 1)
      {
        sub_1000A3600(1uLL);
      }

      else
      {
        v24 = *v44;
        v46 = a1;
        v25 = v13;
        v26 = a2;
        v27 = v17;
        v28 = v14;
        v29 = v45;
        v24(v45, v9, v23);
        sub_1000A3600(0);
        sub_100087338(&qword_1000E8870, &type metadata accessor for URL);
        sub_1000A2C80();
        v30 = v29;
        v14 = v28;
        v17 = v27;
        a2 = v26;
        v13 = v25;
        a1 = v46;
        (*v43)(v30, v23);
      }

      v31 = sub_1000A3620();
      result = sub_1000871D0(v13, type metadata accessor for ImageStore.Key);
      v32 = v31 & v17;
      if (a1 >= v48)
      {
        v21 = v50;
        if (v32 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v50;
        if (v32 >= v48)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v21 * a1 < v22 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v22 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for ImageStore.Image(0) - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        v36 = v34 * v16;
        v37 = v33 + v34 * v16 + v34;
        if (v35 < v36 || result >= v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v21 = v50;
        }

        else
        {
          a1 = v16;
          v21 = v50;
          if (v35 != v36)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100085DA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000A3240() + 1) & ~v5;
    do
    {
      sub_1000A35F0();

      sub_1000A2DD0();
      v9 = sub_1000A3620();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100085F50()
{
  result = qword_1000E87C0;
  if (!qword_1000E87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E87C0);
  }

  return result;
}

uint64_t sub_100085FE8()
{
  v1 = (type metadata accessor for ContentServiceRequest() - 8);
  v10 = *(*v1 + 80);
  v2 = (v10 + 16) & ~v10;
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;

  v6 = v1[7];
  v7 = v6 + *(type metadata accessor for LayoutContext() + 32);
  v8 = sub_1000A2250();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, ((((((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v10 | 7);
}

id sub_1000861A0(unsigned int (***a1)(char *, uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for ContentServiceRequest() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10007D850(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000862AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000862F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100086308(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100086460(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1000A1700();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100086704()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 stringForKey:FCAudioPlaybackArticleIDSharedPreferenceKey];

  if (v1)
  {
    v2 = sub_1000A2D40();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = NewsCoreUserDefaults();
  v6 = [v5 integerForKey:FCAudioPlaybackStateSharedPreferenceKey];

  sub_100017A54(&unk_1000E5270);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000AA450;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_10001A97C();
  *(v7 + 64) = v8;
  v9 = 0x3E6C696E3CLL;
  if (v4)
  {
    v9 = v2;
  }

  v10 = 0xE500000000000000;
  if (v4)
  {
    v10 = v4;
  }

  *(v7 + 32) = v9;
  *(v7 + 40) = v10;

  v11 = sub_1000A3550();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  sub_100028E34(0, &qword_1000E76B0);
  v13 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

  if (!v4)
  {
    v15 = sub_1000A3190();
    sub_1000A3090();
LABEL_13:
    sub_1000A1DB0();
    v2 = 0;
    goto LABEL_14;
  }

  if (v6 != 1)
  {

    v15 = sub_1000A3190();
    sub_1000A3090();
    goto LABEL_13;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AA7C0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v8;
  *(v14 + 32) = v2;
  *(v14 + 40) = v4;

  v15 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

LABEL_14:

  return v2;
}

uint64_t sub_1000869C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v55 = sub_1000A1610();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000A1700();
  v8 = *(v62 - 8);
  v9 = __chkstk_darwin(v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v58 = &v48 - v12;
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  v65 = v15;
  *(v15 + 16) = &_swiftEmptyDictionarySingleton;
  v16 = [a2 banner];
  if (v16)
  {
    v17 = v16;
    if ([v16 imageMethod] == 2 && (v18 = objc_msgSend(v17, "imageURL")) != 0)
    {
      v19 = v18;
      sub_1000A16C0();

      sub_100083670(v14, v63, v64, v65);
      (*(v8 + 8))(v14, v62);
    }

    else
    {
    }
  }

  v20 = [a2 sections];
  v21 = [v20 array];

  v22 = &type metadata for Any;
  v23 = sub_1000A2F10();

  v24 = sub_1000509C0(v23);

  if (v24 >> 62)
  {
LABEL_44:
    v25 = sub_1000A33D0();
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_45:

    swift_beginAccess();
    v47 = *(v65 + 16);

    return v47;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_45;
  }

LABEL_8:
  v54 = v24 & 0xC000000000000001;
  v50 = v24 & 0xFFFFFFFFFFFFFF8;
  v49 = v24 + 32;
  v53 = (v5 + 8);
  v61 = (v8 + 8);
  v8 = 0;
  p_length = &@"compact".length;
  v52 = v24;
  v51 = v25;
  while (1)
  {
    if (v54)
    {
      v27 = sub_1000A32D0();
    }

    else
    {
      if (v8 >= *(v50 + 16))
      {
        goto LABEL_43;
      }

      v27 = *(v49 + 8 * v8);
    }

    v57 = v27;
    v28 = __OFADD__(v8++, 1);
    v5 = v55;
    if (v28)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v56 = v8;
    v29 = [v57 items];
    v24 = [v29 count];
    v71 = &_swiftEmptyArrayStorage;
    sub_1000A3340();
    v8 = v29;
    sub_1000A3050();
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v24)
    {
      break;
    }

LABEL_20:
    v60 = v29;
    v24 = sub_100087338(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    sub_1000A31C0();
    while (v68)
    {
      sub_10005150C(&v67, &v69);
      sub_10005150C(&v69, &v67);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
      sub_1000A31C0();
    }

    (*v53)(v7, v5);
    sub_10001FE6C(&v67, &unk_1000E5AD0);
    v8 = v71;
    if ((v71 & 0x8000000000000000) != 0 || (v71 & 0x4000000000000000) != 0)
    {
      v31 = sub_1000A33D0();
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v31 = *(v71 + 16);
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    if (v31 < 1)
    {
      goto LABEL_42;
    }

    v32 = 0;
    v5 = v8 & 0xC000000000000001;
    v60 = v8;
    do
    {
      if (v5)
      {
        sub_1000A32D0();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v66 = p_length[350];
      v33 = swift_dynamicCastObjCProtocolConditional();
      if (!v33)
      {
        goto LABEL_27;
      }

      v34 = v33;
      v35 = [v33 thumbnailRemoteURL];
      if (v35)
      {
        v36 = v35;
        v37 = v31;
        v38 = v5;
        v39 = p_length;
        v40 = v7;
        v41 = v22;
        v42 = v58;
        sub_1000A16C0();

        sub_100083670(v42, v63, v64, v65);
        v43 = v42;
        v22 = v41;
        v7 = v40;
        p_length = v39;
        v5 = v38;
        v31 = v37;
        (*v61)(v43, v62);
      }

      v44 = [v34 sourceNameImageRemoteURL];
      if (v44)
      {
        v45 = v59;
        v46 = v44;
        sub_1000A16C0();

        sub_100083670(v45, v63, v64, v65);
        swift_unknownObjectRelease();
        (*v61)(v45, v62);
      }

      else
      {
LABEL_27:
        swift_unknownObjectRelease();
      }

      ++v32;
    }

    while (v31 != v32);
LABEL_9:

    v8 = v56;
    v24 = v52;
    if (v56 == v51)
    {
      goto LABEL_45;
    }
  }

  sub_100087338(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000A31C0();
    if (!v70)
    {
      break;
    }

    sub_10001B390(&v69, &v67);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    sub_100018720(&v69);
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
    if (!--v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000871D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100087230()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000872D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100087338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100087380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000873E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100087444(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100087504(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000875A8()
{
  result = sub_100028E34(319, &unk_1000E8960);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100087648()
{
  result = qword_1000E8998;
  if (!qword_1000E8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8998);
  }

  return result;
}

uint64_t sub_100087728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *v2;
  v29 = a2;
  v4 = type metadata accessor for ContentServiceRequest();
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TodayContent();
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for EntryRequest();
  __chkstk_darwin(v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100017A54(&qword_1000E8A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  sub_100087AAC(a1, &v28 - v14);
  v16 = type metadata accessor for NewsTimelineEntry();
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
  {
    return sub_10008CE68(v15, v29, type metadata accessor for NewsTimelineEntry);
  }

  sub_10001FE6C(v15, &qword_1000E8A40);
  v17 = (*(*(v28 + 88) + 24))();
  sub_100087D20(v17, v18, a1, v12);

  v19 = sub_100018688(v2 + 4, v2[7]);
  sub_100018688((*v19 + 16), *(*v19 + 40));
  v20 = sub_100044848();
  sub_10008CED0(v12 + *(v10 + 20), v6 + *(v4 + 20), type metadata accessor for LayoutContext);
  v21 = v12 + *(v10 + 24);
  v22 = *(v21 + 4);
  *v6 = v20;
  v23 = v6 + *(v4 + 24);
  v24 = *v21;
  v25 = *(v21 + 1);
  *v23 = *v21;
  *(v23 + 1) = v25;
  *(v23 + 4) = v22;
  v26 = v24;

  sub_100080B88(v6, 4, v9);
  sub_10008CFFC(v6, type metadata accessor for ContentServiceRequest);
  sub_10008CED0(v9, v29 + *(v16 + 20), type metadata accessor for TodayContent);
  sub_1000A1800();
  sub_10008CFFC(v9, type metadata accessor for TodayContent);
  return sub_10008CFFC(v12, type metadata accessor for EntryRequest);
}

uint64_t sub_100087AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for EntryRequest();
  __chkstk_darwin(v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    sub_100028E34(0, &qword_1000E76B0);
    v10 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    v11 = (*(*(v6 + 88) + 24))();
    sub_100087D20(v11, v12, a1, v9);

    sub_100018688(v3 + 4, v3[7]);
    sub_10004419C(v9, a2);
    sub_10008CFFC(v9, type metadata accessor for EntryRequest);
    v13 = type metadata accessor for NewsTimelineEntry();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  else
  {
    sub_100028E34(0, &qword_1000E76B0);
    v15 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    v16 = type metadata accessor for NewsTimelineEntry();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

id sub_100087D20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a2;
  v60 = a1;
  v56 = a4;
  v5 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E6C08);
  __chkstk_darwin(v8 - 8);
  v54 = &v53 - v9;
  v10 = sub_1000A2250();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000A2BE0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v59 = a3;
  sub_1000A2C00();
  swift_getKeyPath();
  v20 = sub_1000A2BF0();

  v21 = *(v14 + 8);
  v21(v19, v13);
  if (v20)
  {
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = (v20 + 32);
      v24 = 2.0;
      do
      {
        v25 = *v23++;
        v26 = v25;
        if (v24 <= v25)
        {
          v24 = v26;
        }

        --v22;
      }

      while (v22);
    }

    else
    {
      v24 = 2.0;
    }
  }

  else
  {
    v24 = 3.0;
  }

  sub_1000A2C00();
  swift_getKeyPath();
  v27 = sub_1000A2BF0();

  v21(v17, v13);
  if (v27)
  {
    v28 = v54;
    v29 = v55;
    if (*(v27 + 16))
    {
      (*(v11 + 16))(v54, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    (*(v11 + 56))(v28, v30, 1, v10);
    if ((*(v11 + 48))(v28, 1, v10) != 1)
    {
      (*(v11 + 32))(v29, v28, v10);
      goto LABEL_20;
    }
  }

  else
  {
    v28 = v54;
    (*(v11 + 56))(v54, 1, 1, v10);
    v29 = v55;
  }

  (*(v11 + 104))(v29, enum case for ContentSizeCategory.large(_:), v10);
  if ((*(v11 + 48))(v28, 1, v10) != 1)
  {
    sub_10001FE6C(v28, &qword_1000E6C08);
  }

LABEL_20:
  v31 = sub_1000A2BC0();
  sub_1000A2BD0();
  v33 = v32;
  v35 = v34;
  (*(v11 + 16))(&v7[v5[8]], v29, v10);
  v36 = sub_1000A2C10();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  *(v7 + 2) = v31;
  *(v7 + 3) = v33;
  *(v7 + 4) = v35;
  *&v7[v5[9]] = v24;
  *&v7[v5[10]] = 0x3FF0000000000000;
  v7[v5[11]] = 0;
  v7[v5[12]] = v36 & 1;
  ObjectType = swift_getObjectType();
  v43 = v58;
  v44 = (*(v58 + 8))(ObjectType, v58);
  v45 = type metadata accessor for EntryRequest();
  v46 = v56;
  sub_10008CED0(v7, v56 + *(v45 + 20), type metadata accessor for LayoutContext);
  v47 = sub_1000A2BC0();
  sub_10008CFFC(v7, type metadata accessor for LayoutContext);
  (*(v11 + 8))(v29, v10);
  v49 = *(v57 + 16);
  v48 = *(v57 + 24);
  *v46 = v44;
  v50 = (v46 + *(v45 + 24));
  *v50 = v60;
  v50[1] = v43;
  v50[2] = v47;
  v50[3] = v49;
  v50[4] = v48;

  v51 = v60;

  return v51;
}

uint64_t sub_1000882B0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100017A54(&qword_1000E8A40);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  v14 = *(v10 + 88);
  v15 = sub_1000A2BC0();
  v16 = v5[2];
  v17 = v5[3];
  v20[1] = a1;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  sub_100018688(v5 + 9, v5[12]);

  v18 = a1;
  sub_100019910(v13);
  sub_100088440(v18, a2, v13, a3, a4);

  return sub_10001FE6C(v13, &qword_1000E8A40);
}

uint64_t sub_100088440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v68 = a1;
  v10 = *v6;
  v71 = a3;
  v72 = v10;
  v11 = sub_1000A2C20();
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v75 = v12;
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntryRequest();
  v73 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v15;
  __chkstk_darwin(v14);
  v82 = (&v67 - v16);
  v17 = sub_100017A54(&qword_1000E8A40);
  v69 = *(v17 - 8);
  v18 = v69[8];
  v19 = __chkstk_darwin(v17 - 8);
  v20 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = type metadata accessor for NewsTimelineEntry();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = a2;
  sub_100087AAC(a2, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v70 = a4;
    v80 = a5;
    sub_10001FE6C(v22, &qword_1000E8A40);
    sub_100028E34(0, &qword_1000E76B0);
    v27 = v68;
    v28 = sub_1000A3190();
    v29 = sub_1000A3090();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "fetching news entry for configuration %@", v30, 0xCu);
      sub_10001FE6C(v31, &unk_1000E8A80);
    }

    v33 = v72;
    v34 = *(v72 + 88);
    v35 = v82;
    v36 = sub_100087D20(v27, v34, v81, v82);
    __chkstk_darwin(v36);
    *(&v67 - 2) = v6;
    *(&v67 - 1) = v35;
    sub_1000A1BF0();
    sub_100028B94(v71, v20, &qword_1000E8A40);
    v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v38 = swift_allocObject();
    v39 = *(v33 + 80);
    *(v38 + 16) = v39;
    *(v38 + 24) = v34;
    v40 = v39;
    v67 = v39;
    v68 = v34;
    sub_10008C2E0(v20, v38 + v37);
    *(v38 + ((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v41 = v27;
    v42 = sub_1000A1B60();
    sub_1000A1BC0();

    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v34;
    v71 = v6;
    v44 = v70;
    v43[4] = v41;
    v43[5] = v44;
    v43[6] = v80;
    v69 = v41;

    v45 = sub_1000A1B60();
    v72 = sub_1000A1B80();

    v46 = v77;
    v47 = v78;
    v48 = v79;
    (*(v78 + 16))(v77, v81, v79);
    v49 = v35;
    v50 = v76;
    sub_10008CED0(v49, v76, type metadata accessor for EntryRequest);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = (v75 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v73 + 80) + v54 + 8) & ~*(v73 + 80);
    v56 = swift_allocObject();
    v57 = v68;
    *(v56 + 16) = v67;
    *(v56 + 24) = v57;
    (*(v47 + 32))(v56 + v51, v46, v48);
    v59 = v69;
    v58 = v70;
    *(v56 + v52) = v69;
    v60 = (v56 + v53);
    v61 = v80;
    *v60 = v58;
    v60[1] = v61;
    *(v56 + v54) = v71;
    sub_10008CE68(v50, v56 + v55, type metadata accessor for EntryRequest);
    v62 = v59;

    v63 = sub_1000A1B60();
    sub_1000A1B90();

    v64 = type metadata accessor for EntryRequest;
    v65 = v82;
  }

  else
  {
    sub_10008CE68(v22, v26, type metadata accessor for NewsTimelineEntry);
    a4(v26);
    v64 = type metadata accessor for NewsTimelineEntry;
    v65 = v26;
  }

  return sub_10008CFFC(v65, v64);
}

uint64_t sub_100088BA4(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v56 = a4;
  v55 = a3;
  v7 = *v4;
  v8 = sub_1000A2C20();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v60 = v9;
  v64 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TaskContext();
  v10 = __chkstk_darwin(v54);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_100017A54(&qword_1000E8A40);
  v57 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v17;
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  sub_100018688(v4 + 14, v4[17]);
  type metadata accessor for TelemetryManager();
  result = sub_1000A1A00();
  if (result)
  {
    v53 = result;
    v51 = v7;
    v21 = v7[11];
    v63 = a2;
    v22 = sub_1000A2BC0();
    v23 = v4[2];
    v24 = v4[3];
    *&v68 = a1;
    *(&v68 + 1) = v21;
    v61 = v21;
    v62 = v4;
    *&v69 = v22;
    *(&v69 + 1) = v23;
    v70 = v24;
    sub_100018688(v4 + 9, v4[12]);
    v52 = v24;

    v25 = a1;
    sub_100019910(v19);
    v26 = *(v65 + 16);
    v26(v14, v63, v66);
    sub_100028B94(v19, &v14[*(v54 + 5)], &qword_1000E8A40);
    sub_100017A9C(&qword_1000E8A48);
    v50 = v51[10];
    type metadata accessor for TaskManager();
    sub_1000A2AC0();
    v28 = v27;
    v54 = v14;
    sub_10008CED0(v14, v12, type metadata accessor for TaskContext);
    v51 = v25;
    v29 = sub_10007343C(v51, v12, v28);
    sub_1000736D0(v55, v56);
    v30 = v62;
    if (sub_10008927C(v19))
    {
      sub_100018688((v30 + 112), *(v30 + 136));
      v31 = type metadata accessor for EventProcessingSidecarTask();
      v32 = sub_1000A1A00();
      if (v32)
      {
        v67[3] = v31;
        v67[4] = &off_1000D7F98;
        v67[0] = v32;

        sub_100074960(v67);

        sub_100018720(v67);
      }
    }

    v49 = v19;
    v56 = sub_100089450(v30);
    v55 = sub_1000A1BF0();
    v48 = v29;
    v26(v64, v63, v66);
    v33 = v59;
    sub_100028B94(v19, v59, &qword_1000E8A40);
    v34 = v65;
    v35 = (*(v65 + 80) + 48) & ~*(v65 + 80);
    v36 = (v60 + *(v57 + 80) + v35) & ~*(v57 + 80);
    v37 = (v58 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = v61;
    *(v39 + 2) = v50;
    *(v39 + 3) = v40;
    v41 = v51;
    *(v39 + 4) = v30;
    *(v39 + 5) = v41;
    (*(v34 + 32))(&v39[v35], v64, v66);
    sub_10008C2E0(v33, &v39[v36]);
    v42 = &v39[v37];
    v43 = v69;
    *v42 = v68;
    *(v42 + 1) = v43;
    *(v42 + 4) = v70;
    *&v39[v38] = v48;
    *&v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8] = v53;
    v44 = v41;

    v45 = v44;

    v46 = sub_1000A1B60();
    sub_1000A1BB0();

    sub_100089D90();

    sub_10008CFFC(v54, type metadata accessor for TaskContext);
    return sub_10001FE6C(v49, &qword_1000E8A40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10008927C(uint64_t a1)
{
  sub_100018688((v1 + 112), *(v1 + 136));
  sub_100017A54(&qword_1000E5A20);
  result = sub_1000A1A00();
  if (result)
  {
    v4 = [result possiblyUnfetchedAppConfiguration];
    if (([v4 respondsToSelector:"widgetAnalyticsEnabled"] & 1) != 0 && objc_msgSend(v4, "widgetAnalyticsEnabled"))
    {
      v5 = sub_10008B108(a1);
      if (v6)
      {
        v7 = 0;
LABEL_9:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v7;
      }

      v9 = v5;
      sub_100028E34(0, &qword_1000E76B0);
      v8 = sub_1000A3190();
      sub_1000A3090();
      if (v9 >= 2)
      {
        sub_1000A1DB0();
        v7 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      sub_100028E34(0, &qword_1000E76B0);
      v8 = sub_1000A3190();
      sub_1000A3090();
    }

    sub_1000A1DB0();
    v7 = 0;
LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100089450(uint64_t a1)
{
  sub_100018688((a1 + 112), *(a1 + 136));
  sub_100017A54(&unk_1000E5C10);
  result = sub_1000A19E0();
  if (result)
  {
    v3 = result;
    sub_100018688((a1 + 112), *(a1 + 136));
    v4 = type metadata accessor for EventProcessingSidecarTask();
    *(swift_allocObject() + 16) = v3;
    swift_unknownObjectRetain();
    v5 = sub_1000A19F0();

    if (v5)
    {
      v7[3] = v4;
      v7[4] = &off_1000D7F98;
      v7[0] = v5;

      v6 = sub_100074960(v7);

      swift_unknownObjectRelease();
      sub_100018720(v7);
    }

    else
    {
      sub_100017A54(&unk_1000E5DC0);
      swift_allocObject();
      v6 = sub_1000A1BA0();
      swift_unknownObjectRelease();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000895F0(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E5C10);
  return sub_1000A19B0();
}

uint64_t sub_100089654(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v27 = a2;
  v28 = a4;
  v24 = a3;
  v10 = *a1;
  v11 = sub_1000A2C20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v30 = *(a5 + 24);
  v31 = v15;
  (*(v12 + 16))(v14, a3, v11);
  v16 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = a5[1];
  *(v18 + 40) = *a5;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  *(v18 + 56) = v20;
  *(v18 + 72) = *(a5 + 4);
  (*(v12 + 32))(v18 + v16, v14, v11);
  v21 = v26;
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_100028B94(&v31, v29, &unk_1000E8A70);
  sub_10001FE10(&v30, v29);

  sub_100088440(v27, v24, v28, sub_10008C5DC, v18);
}

uint64_t sub_100089868(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v31 = a4;
  v38 = sub_100017A54(&qword_1000E8A48);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v31 - v8;
  v35 = sub_1000A2B60();
  v9 = *(v35 - 8);
  v10 = __chkstk_darwin(v35);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v34 = sub_1000A1810();
  v32 = *(v34 - 8);
  v15 = __chkstk_darwin(v34);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  sub_1000A1800();
  sub_100018688((a2 + 72), *(a2 + 96));
  sub_1000190D8(a1);
  v20 = type metadata accessor for NewsTimelineEntry();
  v21 = [*&a1[*(v20 + 20) + *(type metadata accessor for TodayContent() + 28)] widgetConfig];
  if (!v21)
  {
    v22 = sub_1000A2BC0();
    v21 = sub_100089CE4(v22);
  }

  [v21 widgetSystemReloadInterval];
  [v21 widgetSystemReloadJitterMax];
  sub_1000A17A0();
  sub_1000A2B50();
  sub_100017A54(&qword_1000E8AA0);
  v23 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000AA7C0;
  sub_10008CED0(a1, v24 + v23, type metadata accessor for NewsTimelineEntry);
  v25 = v35;
  (*(v9 + 16))(v12, v14, v35);
  sub_10008CF38(&qword_1000E8A30, type metadata accessor for NewsTimelineEntry);
  v26 = v33;
  sub_1000A2C30();
  sub_100074610();
  TelemetryManager.flush()();

  (*(v36 + 8))(v26, v38);
  (*(v9 + 8))(v14, v25);
  v27 = *(v32 + 8);
  v28 = v17;
  v29 = v34;
  v27(v28, v34);
  return (v27)(v19, v29);
}

id sub_100089CE4(uint64_t a1)
{
  if (a1 == 11 || a1 == 1)
  {
    result = [objc_allocWithZone(NTPBTodayWidgetConfig) init];
    if (result)
    {
      v2 = result;
      [result setWidgetSystemReloadInterval:7200];
LABEL_7:
      [v2 setWidgetSystemReloadJitterMax:600];
      return v2;
    }

    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(NTPBTodayWidgetConfig) init];
    if (result)
    {
      v2 = result;
      [result setWidgetSystemReloadInterval:300];
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100089D90()
{
  v1 = sub_1000A2900();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A2930();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 152);
  aBlock[4] = sub_10008AB38;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000311D0;
  aBlock[3] = &unk_1000D9FA0;
  v8 = _Block_copy(aBlock);
  sub_1000A2910();
  v12 = &_swiftEmptyArrayStorage;
  sub_10008CF38(&qword_1000E8A50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100017A54(&qword_1000E82E0);
  sub_10008C488(&qword_1000E8A60, &qword_1000E82E0);
  sub_1000A3230();
  sub_1000A3110();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_10008A020@<X0>(void *a1@<X8>)
{
  result = sub_1000A1FA0();
  *a1 = v3;
  return result;
}

uint64_t sub_10008A074(uint64_t a1)
{
  v2 = sub_1000A2250();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000A1FD0();
}

void sub_10008A13C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v7 = type metadata accessor for NewsTimelineEntry();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100017A54(&qword_1000E8A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  sub_100028B94(a2, &v30 - v12, &qword_1000E8A40);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_10001FE6C(v13, &qword_1000E8A40);
    sub_100028E34(0, &qword_1000E76B0);
    v14 = a3;
    v15 = sub_1000A3190();
    v16 = sub_1000A3090();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "no previous entry for configuration %@", v17, 0xCu);
      sub_10001FE6C(v18, &unk_1000E8A80);
    }

    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
    sub_10008CE68(v13, a4, type metadata accessor for NewsTimelineEntry);
    sub_10008CED0(a4, v10, type metadata accessor for NewsTimelineEntry);
    sub_100028E34(0, &qword_1000E76B0);
    v20 = a3;
    v21 = sub_1000A3190();
    v22 = sub_1000A3090();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      sub_1000A1810();
      sub_10008CF38(&qword_1000E5810, &type metadata accessor for Date);
      v25 = v20;
      v26 = sub_1000A3550();
      v28 = v27;
      sub_10008CFFC(v10, type metadata accessor for NewsTimelineEntry);
      v29 = sub_10008B5B0(v26, v28, &v31);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "falling back to previous entry for configuration %@ from %s", v23, 0x16u);
      sub_10001FE6C(v24, &unk_1000E8A80);

      sub_100018720(v30);
    }

    else
    {

      sub_10008CFFC(v10, type metadata accessor for NewsTimelineEntry);
    }
  }
}

uint64_t sub_10008A5C8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  sub_100028E34(0, &qword_1000E76B0);
  v6 = a2;
  v7 = sub_1000A3190();
  v8 = sub_1000A3090();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "returning content entry for configuration %@", v9, 0xCu);
    sub_10001FE6C(v10, &unk_1000E8A80);
  }

  return a3(a1);
}

uint64_t sub_10008A710(void (*a1)(void), uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a5;
  v41 = a1;
  v10 = type metadata accessor for ContentServiceRequest();
  __chkstk_darwin(v10);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TodayContent();
  __chkstk_darwin(v13 - 8);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for NewsTimelineEntry();
  __chkstk_darwin(v42);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000A2C10();
  sub_100028E34(0, &qword_1000E76B0);
  v19 = a3;
  v20 = sub_1000A3190();
  v21 = sub_1000A3090();

  v22 = os_log_type_enabled(v20, v21);
  if (v18)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = a4;
      v25 = v24;
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "returning placeholder for configuration %@", v23, 0xCu);
      sub_10001FE6C(v25, &unk_1000E8A80);
      a4 = v41;
    }

    v27 = sub_100018688((a6 + 32), *(a6 + 56));
    sub_100018688((*v27 + 16), *(*v27 + 40));
    v28 = v43;
    v29 = sub_100044848();
    v30 = type metadata accessor for EntryRequest();
    sub_10008CED0(v28 + *(v30 + 20), v12 + *(v10 + 20), type metadata accessor for LayoutContext);
    v31 = v28 + *(v30 + 24);
    v32 = *(v31 + 32);
    *v12 = v29;
    v33 = v12 + *(v10 + 24);
    v34 = *v31;
    v35 = *(v31 + 16);
    *v33 = *v31;
    *(v33 + 1) = v35;
    *(v33 + 4) = v32;
    v36 = v34;

    sub_100080B88(v12, 4, v15);
    sub_10008CFFC(v12, type metadata accessor for ContentServiceRequest);
    sub_10008CED0(v15, &v17[*(v42 + 20)], type metadata accessor for TodayContent);
    sub_1000A1800();
    sub_10008CFFC(v15, type metadata accessor for TodayContent);
  }

  else
  {
    if (v22)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v19;
      *v38 = v19;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "returning error within preview for configuration %@", v37, 0xCu);
      sub_10001FE6C(v38, &unk_1000E8A80);
    }

    sub_100018688((a6 + 32), *(a6 + 56));
    sub_1000444A8(v43, v17);
  }

  a4(v17);
  return sub_10008CFFC(v17, type metadata accessor for NewsTimelineEntry);
}

void sub_10008AB38()
{
  v0 = sub_1000A1810();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - v6;
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_100017A54(&qword_1000E52B0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = NewsCoreUserDefaults();
  v17 = [v16 BOOLForKey:NDDownloadServiceHasUnfinishedWorkKey];

  if (v17)
  {
    v35 = v4;
    v18 = objc_opt_self();
    v19 = [v18 standardUserDefaults];
    v34 = "idget.sidecarTasks";
    v20 = sub_1000A2D10();
    v21 = [v19 objectForKey:v20];

    if (v21)
    {
      sub_1000A3210();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    aBlock = v40;
    v37 = v41;
    if (*(&v41 + 1))
    {
      v22 = swift_dynamicCast();
      (*(v1 + 56))(v15, v22 ^ 1u, 1, v0);
    }

    else
    {
      sub_10001FE6C(&aBlock, &unk_1000E5AD0);
      (*(v1 + 56))(v15, 1, 1, v0);
    }

    sub_1000A1800();
    sub_100028B94(v15, v13, &qword_1000E52B0);
    v23 = *(v1 + 48);
    if (v23(v13, 1, v0) == 1)
    {
      _s7NewsTag16TelemetryManagerC13lastFlushDate33_4E4017AC2BCC1D1AC48C0D84A0E547E910Foundation0G0Vvpfi_0();
      if (v23(v13, 1, v0) != 1)
      {
        sub_10001FE6C(v13, &qword_1000E52B0);
      }
    }

    else
    {
      (*(v1 + 32))(v7, v13, v0);
    }

    sub_1000A1760();
    v25 = v24;
    v26 = *(v1 + 8);
    v26(v7, v0);
    v26(v9, v0);
    if (v25 > 3600.0)
    {
      v27 = NDDownloadServiceXPCConnection();
      [v27 resume];
      v38 = TodayIntentResponseCode.rawValue.getter;
      v39 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v37 = sub_10008B0A0;
      *(&v37 + 1) = &unk_1000D9FC8;
      v28 = _Block_copy(&aBlock);
      v29 = [v27 remoteObjectProxyWithErrorHandler:v28];
      _Block_release(v28);
      sub_1000A3210();
      swift_unknownObjectRelease();
      sub_100017A54(&qword_1000E8A68);
      if (swift_dynamicCast())
      {
        [v40 ping];
        v30 = [v18 standardUserDefaults];
        v31 = v35;
        sub_1000A1800();
        isa = sub_1000A1770().super.isa;
        v26(v31, v0);
        v33 = sub_1000A2D10();
        [v30 setObject:isa forKey:v33];
        swift_unknownObjectRelease();
      }
    }

    sub_10001FE6C(v15, &qword_1000E52B0);
  }
}

void sub_10008B0A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10008B108(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E8A40);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = NewsCoreUserDefaults();
  v6 = [v5 objectForKey:FCWidgetOnboardingVersionSharedPreferenceKey];

  if (v6)
  {
    sub_1000A3210();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_100028E34(0, &qword_1000E7EB0);
    if (swift_dynamicCast())
    {
      v7 = v15[1];
      sub_100028E34(0, &qword_1000E76B0);
      v8 = sub_1000A3190();
      sub_1000A3090();
      sub_1000A1DB0();

      v9 = [v7 integerValue];
      goto LABEL_11;
    }
  }

  else
  {
    sub_10001FE6C(v18, &unk_1000E5AD0);
  }

  sub_100028B94(a1, v4, &qword_1000E8A40);
  v10 = type metadata accessor for NewsTimelineEntry();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_10001FE6C(v4, &qword_1000E8A40);
    sub_100028E34(0, &qword_1000E76B0);
    v7 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();
    v9 = 0;
  }

  else
  {
    v11 = &v4[*(v10 + 20)];
    v12 = *&v11[*(type metadata accessor for TodayContent() + 40)];

    sub_10008CFFC(v4, type metadata accessor for NewsTimelineEntry);
    v13 = *(v12 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo);

    v9 = [v13 onboardingVersion];

    sub_100028E34(0, &qword_1000E76B0);
    v7 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();
  }

LABEL_11:

  return v9;
}

uint64_t sub_10008B46C()
{

  sub_100018720(v0 + 32);
  sub_100018720(v0 + 72);
  sub_100018720(v0 + 112);

  return v0;
}

uint64_t sub_10008B4AC()
{
  sub_10008B46C();

  return swift_deallocClassInstance();
}

unint64_t sub_10008B5B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008B67C(v11, 0, 0, 1, a1, a2);
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
    sub_10001B390(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100018720(v11);
  return v7;
}

unint64_t sub_10008B67C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10008B788(a5, a6);
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
    result = sub_1000A3310();
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

char *sub_10008B788(uint64_t a1, unint64_t a2)
{
  v3 = sub_10008B7D4(a1, a2);
  sub_10008B904(&off_1000D75C0);
  return v3;
}

char *sub_10008B7D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10008B9F0(v5, 0);
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

  result = sub_1000A3310();
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
        v10 = sub_1000A2E20();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10008B9F0(v10, 0);
        result = sub_1000A32A0();
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

uint64_t sub_10008B904(uint64_t result)
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

  result = sub_10008BA64(result, v11, 1, v3);
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

void *sub_10008B9F0(uint64_t a1, uint64_t a2)
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

  sub_100017A54(&unk_1000E8A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10008BA64(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(&unk_1000E8A90);
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

uint64_t sub_10008BB58(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v18 = a4;
  v19 = a1;
  v16 = a3;
  v20 = a2;
  v17 = sub_1000A30E0();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000A30D0();
  __chkstk_darwin(v8);
  v9 = sub_1000A2930();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100028E34(0, &qword_1000E87E0);
  v15[0] = "sidecarTaskQueue";
  v15[1] = v10;
  sub_1000A2910();
  *&v21 = &_swiftEmptyArrayStorage;
  sub_10008CF38(&qword_1000E5AE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100017A54(&qword_1000E5AE8);
  v11 = v16;
  sub_10008C488(&qword_1000E5AF0, &qword_1000E5AE8);
  sub_1000A3230();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v12 = v18;
  v4[19] = sub_1000A3120();
  v13 = v20;
  v4[2] = v19;
  v4[3] = v13;
  sub_10002F244(v11, (v4 + 4));
  sub_100018688(v12, *(v12 + 3));
  sub_100017A54(&qword_1000E8A38);

  result = sub_1000A1A10();
  if (v22)
  {
    sub_100018720(v11);
    sub_100059ABC(&v21, (v4 + 9));
    sub_100059ABC(v12, (v4 + 14));
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008BEDC()
{
  v1 = sub_1000A2C20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100017A54(&qword_1000E8A40) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for NewsTimelineEntry();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    v11 = sub_1000A1810();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
    v12 = (v0 + v8 + *(v10 + 20));

    v13 = type metadata accessor for TodayContent();
    v14 = v12 + *(v13 + 20);
    v15 = type metadata accessor for Banner();
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v29 = v9;

      v16 = v15[7];
      v17 = sub_1000A1700();
      v18 = *(v17 - 8);
      v28 = v16;
      v19 = &v14[v16];
      v20 = v17;
      if (!(*(v18 + 48))(v19, 1, v17))
      {
        (*(v18 + 8))(&v14[v28], v20);
      }

      v21 = *&v14[v15[9]];
      if (v21 != 1)
      {
      }

      sub_10002C2D8(*&v14[v15[10]], *&v14[v15[10] + 8]);
      v9 = v29;
    }

    swift_unknownObjectRelease();
    v22 = *(v13 + 36);
    v23 = sub_1000A1700();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v12 + v22, 1, v23))
    {
      (*(v24 + 8))(v12 + v22, v23);
    }
  }

  v25 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (((v25 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v26 + 8, v3 | v7 | 7);
}

uint64_t sub_10008C2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E8A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C350()
{
  v1 = *(sub_1000A2C20() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100017A54(&qword_1000E8A40) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100089654(v8, v9, v0 + v2, v0 + v5, (v0 + v6), v10, v11);
}

uint64_t sub_10008C470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C488(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008C4DC()
{
  v1 = sub_1000A2C20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008C5DC(char *a1)
{
  v3 = *(sub_1000A2C20() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 32);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100089868(a1, v6, v1 + 40, v1 + v4, v7, v8);
}

uint64_t sub_10008C68C()
{
  sub_100018688((*(v0 + 16) + 32), *(*(v0 + 16) + 56));
  type metadata accessor for EntryService();
  return sub_100044710();
}

uint64_t sub_10008C708()
{
  v1 = *(sub_100017A54(&qword_1000E8A40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for NewsTimelineEntry();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1000A1810();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = (v0 + v3 + *(v5 + 20));

    v8 = type metadata accessor for TodayContent();
    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for Banner();
    if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
    {
      v20 = v4;

      v11 = v10[7];
      v12 = sub_1000A1700();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(&v9[v11], 1, v12))
      {
        (*(v13 + 8))(&v9[v11], v12);
      }

      v14 = *&v9[v10[9]];
      if (v14 != 1)
      {
      }

      sub_10002C2D8(*&v9[v10[10]], *&v9[v10[10] + 8]);
      v4 = v20;
    }

    swift_unknownObjectRelease();
    v15 = *(v8 + 36);
    v16 = sub_1000A1700();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v7 + v15, 1, v16))
    {
      (*(v17 + 8))(v7 + v15, v16);
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v18 + 8, v2 | 7);
}

void sub_10008CA50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100017A54(&qword_1000E8A40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_10008A13C(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10008CB18()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008CB7C()
{
  v1 = sub_1000A2C20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for EntryRequest() - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  v14 = *(*v6 + 64);
  v9 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[7];
  v11 = v10 + *(type metadata accessor for LayoutContext() + 32);
  v12 = sub_1000A2250();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v14, v9 | 7);
}

uint64_t sub_10008CD60(void (*a1)(void))
{
  v3 = *(sub_1000A2C20() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for EntryRequest() - 8);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80));

  return sub_10008A710(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_10008CE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008CF80@<X0>(void *a1@<X8>)
{
  result = sub_1000A1FA0();
  *a1 = v3;
  return result;
}

uint64_t sub_10008CFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008D05C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v22 = a1;
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  sub_1000A1800();
  v21 = *(v3 + 32);
  (*(v7 + 16))(v10, v12, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v13, v10, v6);
  *(v15 + v14) = v4;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v20;
  v16[1] = a3;
  aBlock[4] = sub_10008D664;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008D474;
  aBlock[3] = &unk_1000DA100;
  v17 = _Block_copy(aBlock);

  [v21 fetchLatestResultsWithOperationInfo:v22 completion:v17];
  _Block_release(v17);
  return (*(v7 + 8))(v12, v6);
}

void sub_10008D2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *, uint64_t))
{
  v20 = a7;
  v11 = sub_1000A1810();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1800();
  sub_1000A1760();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    swift_unknownObjectRetain();
  }

  v18 = *(a6 + 16);
  if (v18)
  {

    v18(a1, v17, a4, v16);
    sub_1000862F8(v18);
  }

  v20(a1, a2, v17, a4);
}

uint64_t sub_10008D474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1000A1700();
    sub_10007BF44();
    v7 = sub_1000A2C60();
  }

  v10 = a2;
  swift_unknownObjectRetain();
  v11 = a5;
  v9(a2, v7, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_10008D550()
{
  sub_1000862F8(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10008D5B4()
{
  v1 = sub_1000A1810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10008D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000A1810() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10008D2DC(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t sub_10008D738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10008D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v32 = a5;
  v13 = type metadata accessor for TaskContext();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100017A54(&qword_1000E57F0);
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1000731F4;
  v20[4] = v19;
  v20[5] = a3;
  v20[6] = a4;
  v37 = sub_10008ED40;
  v38 = v20;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10008F420;
  v36 = &unk_1000DA1B0;
  v21 = _Block_copy(&aBlock);

  sub_10008EC0C(v30, v18);
  sub_10008ED68(v31, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = (v16 + *(v29 + 80) + v22) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_100027904(v18, v24 + v22, &qword_1000E57F0);
  sub_1000757D8(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  *(v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v37 = sub_10008F1F8;
  v38 = v24;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10008F420;
  v36 = &unk_1000DA200;
  v25 = _Block_copy(&aBlock);

  v26 = [v32 sinkWithCompletion:v21 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v21);
}

uint64_t sub_10008DAD0(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(id))
{
  v9 = [a1 state];
  if (v9 == 1)
  {
    v10 = [a1 error];
    if (!v10)
    {
      sub_10008F35C();
      v10 = swift_allocError();
    }

    sub_1000A3070();
    sub_100017A54(&unk_1000E5270);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000AA7C0;
    sub_100017A54(&unk_1000E52C0);
    sub_1000A3370();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10001A97C();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_10001A9D0();
    v12 = sub_1000A3190();
    sub_1000A1DB0();

    a5(v10);
  }

  else if (v9)
  {
    result = sub_1000A33B0();
    __break(1u);
  }

  else
  {
    sub_100017A54(&unk_1000E5270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000AA7C0;
    swift_beginAccess();
    v15 = *(*(a2 + 16) + 16);
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v15;
    sub_10001A9D0();
    v16 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    swift_beginAccess();

    a3(v17);
  }

  return result;
}

void sub_10008DDAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventBody];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [v10 homeScreenEvent];

  if (!v12)
  {
    return;
  }

  v13 = [v12 date];
  sub_1000A17F0();

  sub_10008F304();
  if ((sub_1000A2CC0() & 1) == 0)
  {

    (*(v7 + 8))(v9, v6);
    return;
  }

  sub_100017A54(&qword_1000E57F0);
  v14 = sub_1000A2CD0();
  (*(v7 + 8))(v9, v6);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = [v12 widgetSize];
  if (v15 >= 4)
  {
    goto LABEL_28;
  }

  v16 = qword_1000AF180[v15];
  if (v16 != sub_1000A2BC0())
  {
    goto LABEL_28;
  }

  v17 = [v12 widgetBundleId];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000A2D40();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (!v23)
  {
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v24 = sub_1000A2D40();
  v26 = v25;

  if (!v21)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

LABEL_28:

    return;
  }

  if (!v26)
  {
LABEL_18:

    return;
  }

  if (v19 == v24 && v21 == v26)
  {

    goto LABEL_22;
  }

  v27 = sub_1000A3560();

  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  sub_10008E1AC(&v33);
  if (v34)
  {
    sub_100059ABC(&v33, v35);
    sub_10002F244(v35, &v33);
    swift_beginAccess();
    v28 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_100084BC0(0, v28[2] + 1, 1, v28);
      *(a4 + 16) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_100084BC0((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_100059ABC(&v33, &v28[5 * v31 + 4]);
    *(a4 + 16) = v28;
    swift_endAccess();

    sub_100018720(v35);
  }

  else
  {

    sub_10001FE6C(&v33, &qword_1000E8BF0);
  }
}

void sub_10008E1AC(uint64_t a1@<X8>)
{
  v3 = sub_100017A54(&unk_1000E5DD0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  v9 = sub_1000A1810();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 eventTypeString];
  if (!v13)
  {
    sub_1000A2D40();
    v14 = sub_1000A2D10();

    v13 = v14;
  }

  v15 = v13;
  if ([v15 isEqualToString:@"Unknown"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"HomeScreenPageShown") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"HomeScreenDisappeared") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"StackChanged"))
  {
    goto LABEL_7;
  }

  if ([v15 isEqualToString:@"WidgetTapped"])
  {

    v16 = [v1 metadata];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 engagedUrl];

      if (v18)
      {
        sub_1000A16C0();

        v19 = sub_1000A1700();
        (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
      }

      else
      {
        v28 = sub_1000A1700();
        (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      }

      sub_100027904(v6, v8, &unk_1000E5DD0);
    }

    else
    {
      v27 = sub_1000A1700();
      (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    }

    v29 = [v1 date];
    v30 = type metadata accessor for EngagementEvent(0);
    *(a1 + 24) = v30;
    *(a1 + 32) = &off_1000D84C0;
    v31 = sub_10001AB48(a1);
    sub_1000A17F0();

    sub_100027904(v8, v31 + *(v30 + 20), &unk_1000E5DD0);
    return;
  }

  if ([v15 isEqualToString:@"WidgetLongLook"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetUserFeedback") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"UserStackConfigChanged") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"DeviceLocked") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"DeviceUnlocked") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PinnedWidgetAdded") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PinnedWidgetDeleted") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"SpecialPageAppeared") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"SpecialPageDisappeared"))
  {
    goto LABEL_7;
  }

  if ([v15 isEqualToString:@"StackShown"])
  {

    v20 = [v1 date];
    sub_1000A17F0();

    v21 = [v1 stackKind];
    if (v21 >= 4)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v1 stackLocation];
    if (v23 >= 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v25 = type metadata accessor for AppearanceEvent(0);
    *(a1 + 24) = v25;
    *(a1 + 32) = &off_1000D8490;
    v26 = sub_10001AB48(a1);
    (*(v10 + 32))(v26, v12, v9);
    *(v26 + v25[5]) = v22;
    *(v26 + v25[6]) = v24;
    *(v26 + v25[7]) = 0;
    return;
  }

  if ([v15 isEqualToString:@"StackDisappeared"])
  {

    v32 = [v1 date];
    v33 = type metadata accessor for DisappearanceEvent(0);
    *(a1 + 24) = v33;
    *(a1 + 32) = &off_1000D84A8;
    v34 = sub_10001AB48(a1);
    sub_1000A17F0();

    *(v34 + *(v33 + 20)) = 2;
    return;
  }

  if ([v15 isEqualToString:@"StackCreated"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"StackDeleted") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetAddedToStack") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetRemovedFromStack"))
  {
LABEL_7:

LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (([v15 isEqualToString:@"StackVisibilityChanged"] & 1) == 0)
  {
    if (([v15 isEqualToString:@"AppAdded"] & 1) == 0)
    {
      [v15 isEqualToString:@"AppRemoved"];
    }

    goto LABEL_7;
  }

  v35 = [v1 metadata];
  if (!v35 || (v36 = v35, v37 = [v35 visibleRect], v36, !v37))
  {
    sub_1000A3070();
    sub_10001A9D0();
    v50 = sub_1000A3190();
    sub_1000A1DB0();

    goto LABEL_8;
  }

  [v37 rect];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [v1 date];
  v47 = type metadata accessor for VisibleRectChangedEvent(0);
  *(a1 + 24) = v47;
  *(a1 + 32) = &off_1000D84D8;
  v48 = sub_10001AB48(a1);
  sub_1000A17F0();

  v49 = (v48 + *(v47 + 20));
  *v49 = v39;
  v49[1] = v41;
  v49[2] = v43;
  v49[3] = v45;
}